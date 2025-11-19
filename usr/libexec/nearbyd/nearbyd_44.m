void sub_1003417D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (v39)
  {
    sub_10000AD84(v39);
  }

  sub_100024BF8(&a18);
  sub_100024C78(&a22);
  sub_100024CF8(&a26);
  sub_100024D78(&a30);
  sub_100024DF8(&a34);
  sub_100024E78(&a38);
  sub_100024EF8(v40 - 216);
  sub_100024F78(v40 - 184);
  sub_100024E78(v40 - 152);
  sub_100024FF8(v40 - 120);

  _Unwind_Resume(a1);
}

void *sub_100341878(void *a1, uint64_t a2)
{
  sub_100343D84(v4, a2);
  sub_100343E1C(v4, a1);
  sub_1001FD9EC(v4);
  return a1;
}

void *sub_1003418EC(void *a1, uint64_t a2)
{
  sub_100344080(v4, a2);
  sub_100344118(v4, a1);
  sub_1001FD96C(v4);
  return a1;
}

void *sub_100341960(void *a1, uint64_t a2)
{
  sub_100231844(v4, a2);
  sub_10034437C(v4, a1);
  sub_1001FD8EC(v4);
  return a1;
}

uint64_t sub_1003419E8(uint64_t a1)
{
  if ((*(a1 + 332) & 1) == 0)
  {
    sub_1004C1E48();
  }

  return *(a1 + 328);
}

uint64_t sub_100341A08(uint64_t a1)
{
  if ((*(a1 + 324) & 1) == 0)
  {
    sub_1004C1E48();
  }

  return *(a1 + 320);
}

void sub_100341A28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = qword_1009F9820;
  if ((*(a1 + 754) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1E74();
    }

    v17 = 0;
    *a3 = -1000;
LABEL_41:
    *(a3 + 8) = 0;
    goto LABEL_44;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#rose-ses,Alisha range enable. Preferred start time offset usec: %llu", buf, 0xCu);
  }

  v7 = *(a1 + 632);
  if (v7)
  {
    v8 = (*(*a1 + 152))(a1);
    (*(*v7 + 64))(v7, v8, a2);
  }

  v9 = 0;
  v10 = 1000 * a2;
  if (a2 >= 9.22337204e15)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v19 = v10;
  v11 = -1000;
  while (v9 <= 8)
  {
    if (v9 >= 1)
    {
      v12 = qword_1009F9820;
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11 == 6)
      {
        if (v13)
        {
          sub_1003A03C4(6, __p);
          v14 = __p;
          if (v21 < 0)
          {
            v14 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = v14;
          v25 = 2048;
          *v26 = a2;
          *&v26[8] = 1024;
          v27 = v9;
          v28 = 1024;
          v29 = 8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#rose-ses,Alisha range enable retry. Last status code %s. Sleeping for %llu usec. %d of %d retries.", buf, 0x22u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (a2 > 0)
        {
          *buf = v19;
          std::this_thread::sleep_for (buf);
        }
      }

      else
      {
        if (v13)
        {
          sub_1003A03C4(v11, __p);
          v15 = __p;
          if (v21 < 0)
          {
            v15 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = v15;
          v25 = 1024;
          *v26 = v9;
          *&v26[4] = 1024;
          *&v26[6] = 8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#rose-ses,Alisha range enable retry. Last status code %s. Not sleeping. %d of %d retries.", buf, 0x18u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    if (sub_10033BF24(a1, 1000))
    {
      buf[0] = 0;
      v30 = 0;
      v31 = a2;
      v32 = 1;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
      sub_100341E10(a1, buf, __p);
      v11 = __p[0];
      if (LODWORD(__p[0]) == -1022 || LODWORD(__p[0]) == 6)
      {
        v16 = 0;
      }

      else
      {
        if (!LODWORD(__p[0]))
        {
          if ((v23 & 1) == 0)
          {
            sub_1004C1EA8();
          }

          v18 = v22;
          goto LABEL_43;
        }

        v16 = 3;
      }

      if (LODWORD(__p[0]) != 6 && LODWORD(__p[0]) != -1022)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = -1025;
    }

    v16 = 0;
    ++v9;
LABEL_35:
    if (v16)
    {
      break;
    }
  }

  if (v11)
  {
    v17 = 0;
    *a3 = v11;
    goto LABEL_41;
  }

  v18 = 0;
LABEL_43:
  *a3 = 0;
  *(a3 + 8) = v18;
  v17 = 1;
LABEL_44:
  *(a3 + 16) = v17;
}

void sub_100341E10(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a1 + 754) & 1) == 0)
  {
    sub_1004C1ED4();
  }

  __lk.__m_ = (a1 + 960);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 960));
  v6 = (a1 + 1128);
  sub_100342800((a1 + 1128), 0);
  if (*(a1 + 1056) == 1)
  {
    if (*(a1 + 1055) < 0)
    {
      operator delete(*(a1 + 1032));
    }

    *(a1 + 1056) = 0;
  }

  if (!sub_10034024C(a1, a2))
  {
    v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000;
    while (1)
    {
      if (*v6 || (*(a1 + 1056) & 1) != 0)
      {
LABEL_29:
        sub_100191634(v16, a1 + 1024);
        if (*(a1 + 1056) == 1)
        {
          if (*(a1 + 1055) < 0)
          {
            operator delete(*(a1 + 1032));
          }

          *(a1 + 1056) = 0;
        }

        if (*v6)
        {
          sub_1003428D8(*v6, v15);
        }

        if ((v18 & 1) == 0)
        {
          __assert_rtn("_alishaSendRangeEnableCommand", "NIServerRoseSession.mm", 1301, "roseServiceErrorCopy.has_value()");
        }

        if (v16[0] == 2002)
        {
          v13 = -1022;
        }

        else
        {
          v13 = -1023;
        }

        *a3 = v13;
        *(a3 + 4) = 0;
        *(a3 + 38) = 0;
        if (v17 < 0)
        {
          operator delete(v16[1]);
        }

        goto LABEL_41;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= v8.__d_.__rep_)
      {
        goto LABEL_27;
      }

      v9.__d_.__rep_ = v8.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_26:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v8.__d_.__rep_)
      {
LABEL_27:
        if (!*v6 && (*(a1 + 1056) & 1) == 0)
        {
          sub_100342800((a1 + 1128), 0);
          v14 = sub_1002BD51C();
          sub_1002BD590(v14, 2);
          v7 = -1001;
          goto LABEL_8;
        }

        goto LABEL_29;
      }
    }

    std::chrono::steady_clock::now();
    v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v10.__d_.__rep_)
    {
      v11 = 0;
      goto LABEL_24;
    }

    if (v10.__d_.__rep_ < 1)
    {
      if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v11 = 0x8000000000000000;
        goto LABEL_24;
      }
    }

    else if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_22;
    }

    v11 = 1000 * v10.__d_.__rep_;
LABEL_22:
    if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_25:
      std::condition_variable::__do_timed_wait((a1 + 912), &__lk, v12);
      std::chrono::steady_clock::now();
      goto LABEL_26;
    }

LABEL_24:
    v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
    goto LABEL_25;
  }

  v7 = -1000;
LABEL_8:
  *a3 = v7;
  *(a3 + 4) = 0;
  *(a3 + 38) = 0;
LABEL_41:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_1003421AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (*(v23 - 72) == 1)
  {
    std::mutex::unlock(*(v23 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_100342218(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = atomic_load((a1 + 908));
  if (v3)
  {
    v5 = *(a1 + 632);
    if (v5)
    {
      v6 = (*(*a1 + 152))(a1);
      (*(*v5 + 72))(v5, v6);
    }

    sub_1003423FC(a1, v11);
    if (sub_10033B864(a1))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C1F60();
      }

      v7[0] = 0;
      v10 = 0;
      *a2 = 0;
      sub_1003433A0((a2 + 2), v7);
      if (v10 == 1 && __p)
      {
        v9 = __p;
        operator delete(__p);
      }
    }

    else
    {
      *a2 = 0;
      sub_1003433A0((a2 + 2), v11);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1F00();
    }

    v11[0] = 0;
    v14 = 0;
    *a2 = 0;
    sub_1003433A0((a2 + 2), v11);
  }

  if (v14 == 1)
  {
    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }
  }
}

void sub_10034239C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a16 == 1)
  {
    sub_1004C1F34(&a9);
  }

  if (a27 == 1)
  {
    if (__p)
    {
      a22 = __p;
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1003423FC(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  __lk.__m_ = (a1 + 960);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 960));
  v4 = (a1 + 1120);
  if (*(a1 + 1120) == 1)
  {
    v5 = *(a1 + 1072);
    if (v5)
    {
      *(a1 + 1080) = v5;
      operator delete(v5);
    }

    *v4 = 0;
  }

  v6 = sub_10035D02C();
  v7 = (*(*a1 + 152))(a1);
  v8 = sub_10035D288(v6, v7);
  if (!v8)
  {
    v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000;
    while (1)
    {
      if (*v4)
      {
LABEL_36:
        sub_1003433A0(a2, a1 + 1064);
        if (*v4 != 1)
        {
          goto LABEL_15;
        }

        v16 = *(a1 + 1072);
        if (v16)
        {
          *(a1 + 1080) = v16;
          operator delete(v16);
        }

        goto LABEL_14;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= v11.__d_.__rep_)
      {
        goto LABEL_35;
      }

      v12.__d_.__rep_ = v11.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v12.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_34:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v11.__d_.__rep_)
      {
LABEL_35:
        if ((*v4 & 1) == 0)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004C1FF8();
          }

          goto LABEL_9;
        }

        goto LABEL_36;
      }
    }

    std::chrono::steady_clock::now();
    v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v13.__d_.__rep_)
    {
      v14 = 0;
      goto LABEL_32;
    }

    if (v13.__d_.__rep_ < 1)
    {
      if (v13.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v14 = 0x8000000000000000;
        goto LABEL_32;
      }
    }

    else if (v13.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_30;
    }

    v14 = 1000 * v13.__d_.__rep_;
LABEL_30:
    if (v14 > (v12.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v15.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_33:
      std::condition_variable::__do_timed_wait((a1 + 912), &__lk, v15);
      std::chrono::steady_clock::now();
      goto LABEL_34;
    }

LABEL_32:
    v15.__d_.__rep_ = v14 + v12.__d_.__rep_;
    goto LABEL_33;
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1003A03C4(v8, v17);
    sub_1004C1F94(v17);
  }

LABEL_9:
  if (*v4 == 1)
  {
    v10 = *(a1 + 1072);
    if (v10)
    {
      *(a1 + 1080) = v10;
      operator delete(v10);
    }

    *v4 = 0;
  }

  *a2 = 0;
  v4 = a2 + 56;
LABEL_14:
  *v4 = 0;
LABEL_15:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_100342690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14)
{
  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003426D0(uint64_t a1, uint64_t a2)
{
  v2 = qword_1009F9820;
  if (*(a1 + 754))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#rose-ses,Alisha range enable. Start time bt clk usec: %llu", buf, 0xCu);
    }

    if (sub_10033BF24(a1, 1000))
    {
      buf[0] = 0;
      buf[40] = 0;
      v8 = a2;
      v9 = 3;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
      sub_100341E10(a1, buf, v6);
      return v6[0];
    }

    else
    {
      return 4294966271;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C1E74();
    }

    return 4294966296;
  }
}

void *sub_100342800(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[5];
    v2[5] = 0;
    if (v3)
    {
      operator delete();
    }

    v4 = v2[4];
    v2[4] = 0;
    if (v4)
    {
      operator delete();
    }

    v5 = v2[3];
    v2[3] = 0;
    if (v5)
    {
      operator delete();
    }

    v6 = v2[2];
    v2[2] = 0;
    if (v6)
    {
      operator delete();
    }

    operator delete();
  }

  return result;
}

void sub_1003428D8(double *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 1);
    *a2 = *v2;
    *(a2 + 8) = v3;
    operator new();
  }

  v4 = *(a1 + 3);
  if (v4)
  {
    v5 = a1[1];

    sub_1001E96E4(a2, v4, v5);
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    v7 = a1[1];

    sub_1001E9790(a2, v6, v7);
  }

  if (*(a1 + 5))
  {
    v8 = a1[1];

    sub_1001E962C(a2, v8);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Ill formed AlishaUpdate has no data (range_response, block_complete_event, session_stats, or key_expired_event)");
}

void *sub_100342A2C(void *a1, __int128 *a2, const void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = a6;
  sub_100343450(v35, a4);
  sub_1003434E8(v34, a7);
  v33 = 0;
  sub_100343618(v31, a5);
  v30 = 0;
  v28 = 0;
  sub_100343748(v26, a8);
  sub_1003437E0(v25, a9);
  v24 = 0;
  v22 = 0;
  v18 = a10[1];
  v20[0] = *a10;
  v20[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10033B240(a1, a2, a3, v35, v34, v32, v31, v17, v29, v27, v26, v25, v23, v21, v20);
  if (v18)
  {
    sub_10000AD84(v18);
  }

  sub_100024BF8(v21);
  sub_100024C78(v23);
  sub_100024CF8(v25);
  sub_100024D78(v26);
  sub_100024DF8(v27);
  sub_100024E78(v29);
  sub_100024EF8(v31);
  sub_100024F78(v32);
  sub_100024E78(v34);
  sub_100024FF8(v35);
  *a1 = &off_1009A5E58;
  a1[1] = off_1009A5F28;

  return a1;
}

void sub_100342C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (v39)
  {
    sub_10000AD84(v39);
  }

  sub_100024BF8(&a18);
  sub_100024C78(&a22);
  sub_100024CF8(&a26);
  sub_100024D78(&a30);
  sub_100024DF8(&a34);
  sub_100024E78(&a38);
  sub_100024EF8(v40 - 216);
  sub_100024F78(v40 - 184);
  sub_100024E78(v40 - 152);
  sub_100024FF8(v40 - 120);

  _Unwind_Resume(a1);
}

uint64_t sub_100342CC4(uint64_t a1)
{
  if ((*(a1 + 392) & 1) == 0)
  {
    sub_1004C202C();
  }

  return *(a1 + 388);
}

uint64_t sub_100342CE4(uint64_t a1)
{
  if ((*(a1 + 384) & 1) == 0)
  {
    sub_1004C202C();
  }

  return *(a1 + 380);
}

void *sub_100342D04(void *a1, __int128 *a2, const void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = a6;
  sub_100343450(v35, a4);
  sub_1003434E8(v34, a7);
  v33 = 0;
  sub_100343618(v31, a5);
  sub_1003434E8(v30, a8);
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v17 = a9[1];
  v19[0] = *a9;
  v19[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10033B240(a1, a2, a3, v35, v34, v32, v31, v16, v30, v28, v26, v24, v22, v20, v19);
  if (v17)
  {
    sub_10000AD84(v17);
  }

  sub_100024BF8(v20);
  sub_100024C78(v22);
  sub_100024CF8(v24);
  sub_100024D78(v26);
  sub_100024DF8(v28);
  sub_100024E78(v30);
  sub_100024EF8(v31);
  sub_100024F78(v32);
  sub_100024E78(v34);
  sub_100024FF8(v35);
  *a1 = &off_1009A5F60;
  a1[1] = off_1009A6030;

  return a1;
}

void sub_100342EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (v39)
  {
    sub_10000AD84(v39);
  }

  sub_100024BF8(&a18);
  sub_100024C78(&a22);
  sub_100024CF8(&a26);
  sub_100024D78(&a30);
  sub_100024DF8(&a34);
  sub_100024E78(&a38);
  sub_100024EF8(v40 - 216);
  sub_100024F78(v40 - 184);
  sub_100024E78(v40 - 152);
  sub_100024FF8(v40 - 120);

  _Unwind_Resume(a1);
}

_BYTE *sub_100342F8C@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 + 2) >= 3)
  {
    sub_1004C2058();
  }

  v3 = (&off_1009A63C8)[a1 + 2];

  return sub_100004A08(a2, v3);
}

_BYTE *sub_100342FC8@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 == -1)
  {
    v3 = "UNDEFINED";
  }

  else
  {
    if (a1 != -2)
    {
      sub_1004C2084();
    }

    v3 = "SERVICE_ERROR";
  }

  return sub_100004A08(a2, v3);
}

void sub_10034302C(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_10034306C(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

void sub_1003430AC(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_1003430EC(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

void sub_10034312C(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_10034316C(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

uint64_t sub_1003431A8(uint64_t a1, int a2, char a3, __int16 a4, __int16 *a5, uint64_t a6, __int16 a7, unsigned int a8, __int16 a9)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 6) = a4;
  sub_10034323C((a1 + 8), a6 + 1);
  *(a1 + 32) = a7;
  *(a1 + 40) = vcvtd_n_f64_s32(a8, 2uLL);
  *(a1 + 48) = vcvtd_n_f64_s32(a9, 2uLL);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16) - v13;
  if (v14)
  {
    v15 = v14 >> 1;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v16 = *a5++;
      *v13++ = v16;
      --v15;
    }

    while (v15);
  }

  return a1;
}

void *sub_10034323C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1001F470C(result, a2);
  }

  return result;
}

void sub_100343298(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003432B4(uint64_t a1, uint64_t *a2, char a3, int a4, char a5, char a6, uint64_t *a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1001FBC68(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
  *(a1 + 40) = 0;
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 33) = a6;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_100009A48(a1 + 40, *a7, a7[1], a7[1] - *a7);
  return a1;
}

void sub_100343340(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10034335C(uint64_t a1)
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

uint64_t sub_1003433A0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_1001FBC68(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 1);
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_100343428(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100343450(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003434E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343580(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343618(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003436B0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343748(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003437E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343878(uint64_t a1, uint64_t a2)
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

uint64_t sub_100343910(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003439A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343A2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343AB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343B34(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343BB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343C3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100343CC0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1001FBC68(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *(a1 + 40) = 0;
    *(a1 + 32) = v5;
    *(a1 + 24) = v4;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    sub_100009A48(a1 + 40, *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_100343D4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  if (*(v1 + 64) == 1)
  {
    sub_10034335C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100343D84(uint64_t a1, uint64_t a2)
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

void *sub_100343E1C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100344074(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

uint64_t sub_100344080(uint64_t a1, uint64_t a2)
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

void *sub_100344118(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100344370(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void *sub_10034437C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1003445D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

BOOL sub_1003445E0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_1003445F8()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_1003446A8()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100344758()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100344808()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_1003448B8()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100344968()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100344A18()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100344AC8()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100344B78()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_10056C328;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100344C6C()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F5530 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F5520 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5520, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F5548 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F5538 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5538, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F5560 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F5550 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5550, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F5578 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F5568 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5568, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F5590 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F5580 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5580, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F55A8 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F5598 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F5598, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F55C0 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F55B0 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F55B0, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F55D8 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F55C8 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F55C8, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F55F0 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F55E0 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F55E0, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1003452AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100345BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    sub_1004C20B0(v31 - 112);
  }

  _Unwind_Resume(exception_object);
}

void sub_100345D48(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 stringForKey:@"FindingDiscoveryFlowOverride"];

  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (![v2 isEqualToString:@"NearbyActionNoWake_SpatialInteraction"])
    {
      if ([v2 isEqualToString:@"SpatialInteraction_BothSides"])
      {
        byte_1009F5600 = 1;
        v3 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        if (byte_1009F5600)
        {
          v7 = "SpatialInteraction_BothSides";
        }

        else
        {
          v7 = "NearbyActionNoWake_SpatialInteraction";
        }

        v9 = 136315138;
        v10 = v7;
        v5 = "#find-common,Discovery flow override: %s";
      }

      else
      {
        v3 = qword_1009F9820;
        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        if (byte_1009F5600)
        {
          v8 = "SpatialInteraction_BothSides";
        }

        else
        {
          v8 = "NearbyActionNoWake_SpatialInteraction";
        }

        v9 = 136315138;
        v10 = v8;
        v5 = "#find-common,Invalid discovery flow override. Returning discovery flow: %s";
      }

      goto LABEL_14;
    }

    byte_1009F5600 = 0;
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_1009F5600)
      {
        v4 = "SpatialInteraction_BothSides";
      }

      else
      {
        v4 = "NearbyActionNoWake_SpatialInteraction";
      }

      v9 = 136315138;
      v10 = v4;
      v5 = "#find-common,Discovery flow override: %s";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, &v9, 0xCu);
    }
  }

  else
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_1009F5600)
      {
        v6 = "SpatialInteraction_BothSides";
      }

      else
      {
        v6 = "NearbyActionNoWake_SpatialInteraction";
      }

      v9 = 136315138;
      v10 = v6;
      v5 = "#find-common,No discovery flow override. Returning discovery flow: %s";
      goto LABEL_14;
    }
  }

LABEL_15:
}

void sub_100345FB4(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

double sub_100345FD4(int a1, int a2)
{
  if (a1 == 1)
  {
    v3 = 30.0;
    v4 = @"DeviceFindingOOBRefreshPeriodSecondsOverride";
  }

  else
  {
    if (a1)
    {
      sub_1004C20F0();
    }

    v3 = 30.0;
    if (a2)
    {
      v3 = 2.0;
    }

    v4 = @"PeopleFindingOOBRefreshPeriodSecondsOverride";
  }

  return sub_100346034(v4, v3);
}

double sub_100346034(void *a1, double a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      a2 = v6;
    }
  }

  return a2;
}

double sub_1003460F4(int a1, int a2, double a3)
{
  if (a2)
  {
    v4 = 0.0;
    if (a1)
    {
      if (a1 == 1)
      {
        v5 = @"DeviceFindingFindableDeviceKeepAliveBluetoothTimeoutSecondsOverride";

        return sub_100346034(v5, v4);
      }

LABEL_20:
      sub_1004C211C();
    }

    v5 = @"PeopleFindingFindableDeviceKeepAliveBluetoothTimeoutSecondsOverride";
  }

  else if (a1 == 1)
  {
    v4 = 0.0;
    v5 = @"DeviceFindingFindableDeviceKeepAliveOOBTimeoutSecondsOverride";
  }

  else
  {
    if (a1)
    {
      goto LABEL_20;
    }

    v7 = a3 * 2.5;
    v8 = a3 == 0.0;
    v4 = 5.0;
    if (!v8)
    {
      v4 = v7;
    }

    v5 = @"PeopleFindingFindableDeviceKeepAliveOOBTimeoutSecondsOverride";
  }

  return sub_100346034(v5, v4);
}

uint64_t sub_10034619C(int a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      sub_1004C2148();
    }

    v2 = @"DeviceFindingUWBDiscoveryTimeoutSecondsOverride";
  }

  else
  {
    v2 = @"PeopleFindingUWBDiscoveryTimeoutSecondsOverride";
  }

  return sub_1003461E0(v2, 0x78u);
}

uint64_t sub_1003461E0(void *a1, unsigned __int16 a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 intValue];
      if (v6 >= 0xFFFF)
      {
        a2 = -1;
      }

      else
      {
        a2 = v6;
      }
    }
  }

  return a2;
}

uint64_t sub_1003462A4(int a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      sub_1004C2174();
    }

    v2 = @"DeviceFindingUWBReacquisitionTimeoutSecondsOverride";
  }

  else
  {
    v2 = @"PeopleFindingUWBReacquisitionTimeoutSecondsOverride";
  }

  return sub_1003461E0(v2, 0x3Cu);
}

BOOL sub_1003462E8(double a1, double a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 doubleForKey:@"UsageAnalyticsThreshold_PeopleFinding_DistanceAtPressFind"];
  v6 = v5;

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 doubleForKey:@"UsageAnalyticsThreshold_PeopleFinding_SessionDuration"];
  v9 = v8;

  v10 = 8.0;
  if (v6 > 0.0)
  {
    v10 = v6;
  }

  return fmax(v9, 0.0) <= a2 && v10 <= a1;
}

uint64_t sub_1003463A0(unsigned int a1, double a2, double a3)
{
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 doubleForKey:@"UsageAnalyticsThreshold_DeviceFinding_FirstDistance_ShortRange"];
  v8 = v7;

  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 doubleForKey:@"UsageAnalyticsThreshold_DeviceFinding_FirstDistance_LongRange"];
  v11 = v10;

  v12 = +[NSUserDefaults standardUserDefaults];
  [v12 doubleForKey:@"UsageAnalyticsThreshold_DeviceFinding_SessionDuration"];
  v14 = v13;

  v15 = 6.0;
  if (v11 > 0.0)
  {
    v15 = v11;
  }

  if (a1 && v15 > a2)
  {
    return 0;
  }

  v17 = 8.0;
  if (v14 > 0.0)
  {
    v17 = v14;
  }

  v18 = 2.0;
  if (v8 > 0.0)
  {
    v18 = v8;
  }

  if (v18 <= a2)
  {
    v19 = 1;
  }

  else
  {
    v19 = a1;
  }

  if (v17 <= a3)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

const char *sub_1003464B8(int a1)
{
  if (a1)
  {
    return "Device";
  }

  else
  {
    return "People";
  }
}

id sub_1003464D4(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = "Findee";
  if (a2)
  {
    v9 = "Finder";
  }

  v10 = [NSMutableString stringWithFormat:@"#event %-*s | Role: %-*s", 16, a1, 14, v9];
  if (v7)
  {
    v11 = [v7 descriptionInternal];
    [v10 appendFormat:@" | Token: %@", v11];
  }

  if (v8)
  {
    [v10 appendFormat:@" | %@", v8];
  }

  return v10;
}

void sub_1003465C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_1003465F0(void *a1)
{
  v1 = a1;
  if (qword_1009F5608 != -1)
  {
    sub_1004C21A0();
  }

  v2 = [qword_1009F5610 stringFromDate:v1];

  return v2;
}

void sub_10034666C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1009F5610;
  qword_1009F5610 = v1;

  v3 = qword_1009F5610;

  [v3 setDateFormat:@"yyyy-MM-dd' 'HH:mm:ss'.'SSS"];
}

void sub_1003466C0(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[NSDate now];
  v5 = sub_1003465F0(v4);
  v6 = [NSString stringWithFormat:@"%@ : %@", v5, v3];

  v7 = [v6 UTF8String];
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100013AEC();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  *(&__dst + v9) = 0;
  if (SHIBYTE(v15) < 0)
  {
    v13 = *(&__dst + 1) | 7;
    if ((*(&__dst + 1) | 7) == 0x17)
    {
      v13 = 24;
    }

    if (*(&__dst + 1) <= 0x16uLL)
    {
      v12 = 22;
    }

    else
    {
      v12 = v13;
    }

    v11 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v10 = HIBYTE(v15) | 7;
    if (v10 == 23)
    {
      v10 = 24;
    }

    v11 = 22;
    if (HIBYTE(v15) <= 0x16u)
    {
      v12 = 22;
    }

    else
    {
      v12 = v10;
    }
  }

  if (v12 != v11)
  {
    sub_100347564(&__dst, v12);
  }

  sub_1003468C4(a2);
  sub_10034694C(a2, &__dst);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst);
  }
}

uint64_t sub_1003468C4(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_1003476F0(a1, 1);
}

void *sub_10034694C(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_100347750(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    result = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    result = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  if (*(a2 + 23) < 0)
  {
    result = sub_1000056BC(result, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    result[2] = *(a2 + 2);
    *result = v9;
  }

  ++a1[5];
  return result;
}

id sub_100346A18(void *a1, int a2, int a3)
{
  v5 = a1;
  if (a2 < 1)
  {
    v12 = "tokensPerLine > 0";
    v13 = 502;
    goto LABEL_11;
  }

  if (a3 < 0)
  {
    v12 = "indentLevel >= 0";
    v13 = 503;
LABEL_11:
    __assert_rtn("printableStringsForTokens", "NIServerFindingCommon.mm", v13, v12);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100346CB4;
  v26 = sub_100346CC4;
  v27 = objc_opt_new();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100346CB4;
  v20[4] = sub_100346CC4;
  v21 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = a3 + 1;
  while (--v7)
  {
    [v6 appendString:@"    "];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100346CCC;
  v14[3] = &unk_1009A6450;
  v17 = v20;
  v19 = a2;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v18 = &v22;
  [v8 enumerateObjectsUsingBlock:v14];
  v10 = v23[5];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void sub_100346C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100346CB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100346CCC(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  [*(*(*(a1 + 48) + 8) + 40) addObject:v5];
  if ([*(*(*(a1 + 48) + 8) + 40) count] >= *(a1 + 64) || objc_msgSend(*(a1 + 32), "count") - 1 <= a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100346CB4;
    v12 = sub_100346CC4;
    v13 = [*(a1 + 40) mutableCopy];
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100346E60;
    v7[3] = &unk_1009A6428;
    v7[4] = &v8;
    [v6 enumerateObjectsUsingBlock:v7];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v9[5]];
    [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
    _Block_object_dispose(&v8, 8);
  }
}

void sub_100346E60(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 descriptionInternal];
  [v2 appendFormat:@"%@ ", v3];
}

const char *sub_100346ED8(int a1)
{
  if (a1 == 19)
  {
    return "SpatialInteraction";
  }

  else
  {
    return "NearbyActionNoWake";
  }
}

const char *sub_100346EF4(int a1)
{
  v1 = "Unspecified";
  if (a1 == 2)
  {
    v1 = "UWB";
  }

  if (a1 == 1)
  {
    return "NB-UWB";
  }

  else
  {
    return v1;
  }
}

BOOL sub_100346F20(void *a1, int a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = *a1 + 4;
  do
  {
    v4 = *(v3 - 4);
    result = v4 == a2;
    v6 = v4 == a2 || v3 == v2;
    v3 += 4;
  }

  while (!v6);
  return result;
}

id sub_100346F54(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    __assert_rtn("getCBOOBKeyAddressFromDiscoveryToken", "NIServerFindingCommon.mm", 625, "token");
  }

  v3 = [v1 getIRK];
  v4 = v3;
  if (v3)
  {
    [v3 bytes];
    v7 = SipHash();
    v5 = [NSData dataWithBytes:&v7 length:6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100347044(unsigned int a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"FindingNapChannel"];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    LOBYTE(v8) = [v7 intValue];
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-common,Using NAP channel %d from defaults writes", v11, 8u);
    }
  }

  else
  {
    [v5 bytes];
    v8 = SipHash() % (a2 - a1 + 1) + a1;
  }

  return v8;
}

uint64_t sub_1003471DC()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  if ([v0 BOOLForKey:@"FindingBypassDiscovery"])
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 BOOLForKey:@"FindingGateObjectUpdatesOnDiscovery"];

    if (v2)
    {
      v3 = qword_1009F9820;
      v4 = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-common,Cannot set both FindingBypassDiscovery and FindingGateObjectUpdatesOnDiscovery defaults writes, remove one.", v8, 2u);
        return 0;
      }

      return v4;
    }
  }

  else
  {
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  if ([v5 BOOLForKey:@"FindingBypassDiscovery"])
  {
    v4 = 1;
  }

  else
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v4 = [v6 BOOLForKey:@"FindingGateObjectUpdatesOnDiscovery"];
  }

  return v4;
}

void sub_100347330(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"FindableDeviceFilterSingleTokenHash"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#find-common,Findable device: override to use only %{private}@", buf, 0xCu);
      }

      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100347510;
      v6[3] = &unk_1009A6478;
      v7 = v3;
      v5 = [NSPredicate predicateWithBlock:v6];
      [v1 filterUsingPredicate:v5];
    }
  }
}

void sub_1003474B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

id sub_100347510(uint64_t a1, void *a2)
{
  v3 = [a2 descriptionInternal];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100347564(void *__dst, unint64_t a2)
{
  v3 = *(__dst + 23);
  if (v3 < 0)
  {
    v3 = __dst[1];
    v6 = __dst[2];
    v4 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v5 = HIBYTE(v6);
  }

  else
  {
    v4 = 22;
    LOBYTE(v5) = *(__dst + 23);
  }

  v7 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v8 = *__dst;
  if ((v5 & 0x80) != 0)
  {
    v5 = __dst[1];
    v7 = 1;
  }

  else
  {
    v5 = v5;
  }

  if (v5 != -1)
  {
    memmove(__dst, v8, v5 + 1);
  }

  if (v7)
  {
    operator delete(v8);
  }

  *(__dst + 23) = v3 & 0x7F;
}

void sub_1003476C8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_1003476F0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

void *sub_100347750(void *a1)
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
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_1003478D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10034806C(uint64_t a1)
{
  v2 = [*(a1 + 32) remote];
  [v2 didUpdateNearbyObjects:*(a1 + 40)];
}

void sub_100348774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1003487DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverConnectionInterrupted];
}

void sub_100348838(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverConnectionInvalidated];
}

void sub_100348894(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _handleActivationError:v5];
  }

  else
  {
    [v6 _handleActivationSuccess:v7];
  }
}

void sub_100348AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100348B08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100348B20(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100348E0C(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 distance];
  v4 = v3;
  [v14 horizontalAngle];
  ++*(*(a1 + 32) + 204);
  v6 = NINearbyObjectDistanceNotAvailable;
  if (v4 != NINearbyObjectDistanceNotAvailable)
  {
    ++*(*(a1 + 32) + 208);
    *(*(a1 + 32) + 220) = v4;
    v7 = *(a1 + 32);
    if (v7[54] == v6)
    {
      v7[54] = v4;
      v7 = *(a1 + 32);
    }

    v8 = v7[56];
    if (v8 == v6 || v8 > v4)
    {
      v7[56] = v4;
      v7 = *(a1 + 32);
    }

    v10 = v7[57];
    if (v10 == v6 || v10 < v4)
    {
      v7[57] = v4;
    }
  }

  v12 = NINearbyObjectAngleNotAvailable;
  if (v5 != NINearbyObjectAngleNotAvailable)
  {
    ++*(*(a1 + 32) + 212);
    *(*(a1 + 32) + 236) = v5;
    v13 = *(a1 + 32);
    if (*(v13 + 232) == v12)
    {
      *(v13 + 232) = v5;
    }
  }
}

id sub_100348FFC(uint64_t a1)
{
  v4 = @"duration";
  v1 = [NSNumber numberWithDouble:*(*(a1 + 32) + 104)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100349184(uint64_t a1)
{
  v4 = @"duration";
  v1 = [NSNumber numberWithDouble:*(*(a1 + 32) + 104)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100349404(uint64_t a1)
{
  v8[0] = @"domain";
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) domain];
  v9[0] = v3;
  v8[1] = @"code";
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*v2 code]);
  v8[2] = @"string";
  v5 = *(a1 + 40);
  v9[1] = v4;
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

id sub_1003495C0(uint64_t a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 134283521;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Set delegate: %{private}p", &v5, 0xCu);
    }
  }

  return objc_storeWeak((*(a1 + 32) + 248), *(a1 + 40));
}

void sub_100349784(uint64_t a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = 134283521;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Set delegate queue: %{private}p", &v4, 0xCu);
    }
  }

  objc_storeStrong((*(a1 + 32) + 256), *(a1 + 40));
}

void sub_100349A5C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100349CAC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_100349CCC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100349D18(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteObject];
  [v1 generateDiscoveryToken];
}

void sub_100349D78(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100349F74(uint64_t a1)
{
  v2 = [*(a1 + 32) internalState];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 16);
      v5 = v3;
      v6 = sub_10034A49C(v2);
      v7 = *(a1 + 40);
      *buf = 138412802;
      v30 = v4;
      v31 = 2112;
      v32 = v6;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client: runWithConfiguration [%@]. State: %@. Config: %@.", buf, 0x20u);
    }
  }

  atomic_store(1u, (*(a1 + 32) + 80));
  v27[1] = _NSConcreteStackBlock;
  v27[2] = 3221225472;
  v27[3] = sub_10034A4C4;
  v27[4] = &unk_10099F490;
  v28 = v2;
  AnalyticsSendEventLazy();
  if (v2 <= 3)
  {
    if (v2 >= 2 && ((v2 - 2) >= 2 || [*(*(a1 + 32) + 40) isEqual:*(a1 + 40)]))
    {
LABEL_19:
      if (+[NIPlatformInfo isInternalBuild])
      {
        v19 = *(*(a1 + 32) + 88);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Not runnable", buf, 2u);
        }
      }

      return;
    }

LABEL_15:
    v16 = (a1 + 32);
    [*(a1 + 32) setInternalState:2];
    v17 = [*(a1 + 40) copy];
    v18 = *(*(a1 + 32) + 40);
    *(*v16 + 5) = v17;

    [*(a1 + 32) _logTime];
    [*v16 _internalRunWithConfiguration:*(*v16 + 5)];
    return;
  }

  if ((v2 - 4) < 2)
  {
    goto LABEL_15;
  }

  if ((v2 - 7) >= 2)
  {
    if (v2 == 6)
    {
      [*(a1 + 32) _reinterruptSessionWithCachedInterruption];
      return;
    }

    goto LABEL_19;
  }

  v8 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      v9 = *(*(a1 + 32) + 88);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 16);
        *buf = 138412290;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client: enact ranging-auth mitigation (147495615) [%@].", buf, 0xCu);
      }
    }

    v11 = [[NIServerConnection alloc] initWithSessionID:*(*(a1 + 32) + 16) queue:*(*(a1 + 32) + 8) exportedObject:*(*(a1 + 32) + 32) options:*(*(a1 + 32) + 144)];
    v12 = *(*(a1 + 32) + 24);
    *(*(a1 + 32) + 24) = v11;

    objc_initWeak(buf, *(a1 + 32));
    v13 = *(*(a1 + 32) + 24);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10034A584;
    v26[3] = &unk_10098AB18;
    objc_copyWeak(v27, buf);
    [v13 setInterruptionHandler:v26];
    v14 = *(*(a1 + 32) + 24);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10034A5E0;
    v24[3] = &unk_10098AB18;
    objc_copyWeak(&v25, buf);
    [v14 setInvalidationHandler:v24];
    [*(*(a1 + 32) + 24) resume];
    v15 = [*(a1 + 32) _remoteObject];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10034A63C;
    v23[3] = &unk_1009A66B0;
    v23[4] = *(a1 + 32);
    [v15 activate:v23];

    [*(a1 + 32) setInternalState:0];
    [*(a1 + 32) setInvalidationError:0];
    objc_destroyWeak(&v25);
    objc_destroyWeak(v27);
    objc_destroyWeak(buf);
    goto LABEL_15;
  }

  v20 = [*(a1 + 32) invalidationError];
  v21 = *(a1 + 32);
  if (v20)
  {
    [v21 invalidationError];
  }

  else
  {
    [v21 _getSessionFailureError];
  }
  v22 = ;

  [*(a1 + 32) _notifyDidInvalidateWithError:v22];
}

const __CFString *sub_10034A49C(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Activating";
  }

  else
  {
    return off_1009A6B40[a1 - 1];
  }
}

id sub_10034A4C4(uint64_t a1)
{
  v4 = @"state";
  v1 = sub_10034A49C(*(a1 + 32));
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_10034A584(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverConnectionInterrupted];
}

void sub_10034A5E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverConnectionInvalidated];
}

void sub_10034A63C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _handleActivationError:v5];
  }

  else
  {
    [v6 _handleActivationSuccess:v7];
  }
}

void sub_10034A738(uint64_t a1)
{
  v2 = [*(a1 + 32) internalState];
  if (+[NIPlatformInfo isInternalBuild])
  {
    v3 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 16);
      v5 = v3;
      v6 = sub_10034A49C(v2);
      *buf = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client: pause [%@]. State: %@.", buf, 0x16u);
    }
  }

  if ((v2 - 2) < 2)
  {
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    [v10 setInternalState:4];
    [*v9 _pauseInternalARSessionIfNeeded];
    v11 = [*v9 _remoteObject];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10034A958;
    v13[3] = &unk_1009A6728;
    v13[4] = *v9;
    [v11 pause:v13];
  }

  else if ((v2 - 7) >= 2)
  {
    if (v2 == 6)
    {
      [*(a1 + 32) _reinterruptSessionWithCachedInterruption];
    }
  }

  else
  {
    v7 = [*(a1 + 32) invalidationError];
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 invalidationError];
    }

    else
    {
      [v8 _getSessionFailureError];
    }
    v12 = ;

    [*(a1 + 32) _notifyDidInvalidateWithError:v12];
  }
}

void sub_10034A958(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v3)
  {
    [v4 _handlePauseSessionError:v3];
  }

  else
  {
    [v4 _handlePauseSessionSuccess];
  }
}

id sub_10034AA40(uint64_t a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v3[2];
      v5 = sub_10034A49C([v3 internalState]);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client: invalidate [%@]. State: %@.", &v7, 0x16u);
    }
  }

  return [*(a1 + 32) _invalidateInternal];
}

__n128 sub_10034B000(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint32x4_t sub_10034B018(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  if (v2)
  {
    v3 = [v2 latestARFrame];

    if (v3)
    {
      v5 = [*(*(a1 + 32) + 184) latestARFrame];
      v6 = [v5 camera];
      v7 = [v6 trackingState];

      if (v7 == 2)
      {
        [*(a1 + 40) worldPosition];
        result = vceqq_f32(v8, NINearbyObjectWorldPositionNotAvailable);
        result.i32[3] = result.i32[2];
        result.i32[0] = vminvq_u32(result);
        if ((result.i32[0] & 0x80000000) == 0)
        {
          [*(a1 + 40) worldPosition];
          result.i32[3] = 1.0;
          v9 = *(*(a1 + 48) + 8);
          *(v9 + 48) = xmmword_100549A40;
          *(v9 + 64) = xmmword_100549A50;
          *(v9 + 80) = xmmword_10056C4A0;
          *(v9 + 96) = result;
        }
      }
    }
  }

  return result;
}

void sub_10034B3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_10034B3D8(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [*(*(a1 + 32) + 128) descriptionInternal];
  [v2 appendFormat:@", Token: %@", v5];

  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [*(v3 + 40) descriptionInternal];
  [v4 appendFormat:@", Config: %@", v6];
}

void sub_10034B9B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained uwbSessionInterruptedWithReason:7 timestamp:sub_100005288()];
    if (+[NIPlatformInfo isInternalBuild])
    {
      v2 = WeakRetained[11];
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = WeakRetained[2];
        *buf = 138412290;
        v7 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NISession trying to re-activate nearbyd [%@]", buf, 0xCu);
      }
    }

    v4 = [WeakRetained _remoteObject];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10034BB14;
    v5[3] = &unk_1009A66B0;
    v5[4] = WeakRetained;
    [v4 activate:v5];
  }
}

void sub_10034BB14(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 _handleActivationError:v5];
  }

  else
  {
    [v6 _handleActivationSuccess:v7];
  }
}

void sub_10034BB9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) relayDCKMessage:*(a1 + 40)];
}

void sub_10034BF50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didRemoveNearbyObjects:*(a1 + 40) withReason:0];
}

void sub_10034BFBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didRemoveNearbyObjects:*(a1 + 40) withReason:1];
}

id sub_10034C028(uint64_t a1)
{
  v4 = @"reason";
  v1 = sub_10036B310(*(a1 + 32));
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_10034C380(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateNearbyObjects:*(a1 + 40)];
}

id sub_10034C834(uint64_t a1)
{
  v7[0] = @"reason";
  v2 = sub_10036B2EC(*(a1 + 40));
  v8[0] = v2;
  v7[1] = @"reinterrupted";
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  v7[2] = @"previousReason";
  v4 = *(a1 + 32);
  v8[1] = v3;
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_10034CDA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_10034CDFC(uint64_t a1)
{
  v6[0] = @"reason";
  v2 = sub_10036B2EC(*(a1 + 32));
  v6[1] = @"duration";
  v7[0] = v2;
  v3 = [NSNumber numberWithDouble:*(a1 + 40) - *(a1 + 48)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_10034CF00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained sessionSuspensionEnded:*(a1 + 32)];
}

uint64_t sub_10034CF68(uint64_t result)
{
  if ((result - 1) >= 9)
  {
    return 0;
  }

  return result;
}

void sub_10034CF78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) suspensionReasonEnded:*(a1 + 40) isNoLongerSuspended:*(a1 + 48)];
}

void sub_10034D13C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained sessionDidUpdateDiscoveryToken:*(a1 + 32)];
}

void sub_10034D280(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didReceiveRangingAuthRecommendation:*(a1 + 48) forObject:*(a1 + 40)];
}

void sub_10034D44C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didDiscoverNearbyObject:*(a1 + 40)];
}

void sub_10034D698(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] object:a1[5] didUpdateRegion:a1[6] previousRegion:a1[7]];
}

void sub_10034D79C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateLocalMotionState:*(a1 + 40)];
}

void sub_10034D89C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateHomeDeviceUWBRangingAvailability:*(a1 + 40)];
}

void sub_10034D9C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) relayDCKMessage:*(a1 + 40)];
}

void sub_10034DAA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateHealthStatus:*(a1 + 40)];
}

void sub_10034DC08(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didProcessAcwgM1MsgWithResponse:a1[5] error:a1[6]];
}

void sub_10034DD6C(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didProcessAcwgM3MsgWithResponse:a1[5] error:a1[6]];
}

void sub_10034DED0(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didProcessAcwgRangingSessionResumeRequestMsgWithResponse:a1[5] error:a1[6]];
}

void sub_10034DFB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) requestAcwgRangingSessionSuspend:*(a1 + 48) withSuspendTriggerReason:*(a1 + 40)];
}

void sub_10034E09C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didStartAcwgRanging:*(a1 + 40)];
}

void sub_10034E17C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didSuspendAcwgRanging:*(a1 + 40)];
}

void sub_10034E2AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didPrefetchAcwgUrsk:*(a1 + 48) error:*(a1 + 40)];
}

void sub_10034E3D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didReceiveAopSFZoneUpdate:*(a1 + 40)];
}

void sub_10034E5DC(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didGenerateShareableConfigurationData:a1[5] forObject:a1[6]];
}

void sub_10034E7A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained systemConfigurator:*(a1 + 32) didUpdateState:*(a1 + 40)];
}

void sub_10034E964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained systemConfigurator:*(a1 + 32) didUpdateResourceUsageLimitExceeded:*(a1 + 48) forSessionConfigurationType:*(a1 + 40)];
}

void sub_10034ECEC(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  v2 = a1[4];
  v3 = [[NIAlgorithmConvergence alloc] initWithStatus:a1[7] andReasons:a1[5]];
  [WeakRetained session:v2 didUpdateAlgorithmConvergence:v3 forObject:a1[6]];
}

void sub_10034ED98(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didUpdateAlgorithmState:a1[5] forObject:a1[6]];
}

void sub_10034F148(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateNICoordinates:*(a1 + 40)];
}

void sub_10034F284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didUpdateDLTDOAMeasurements:*(a1 + 40)];
}

uint64_t sub_10034F788(uint64_t a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Called with sessionShouldAttemptRelocalization", v4, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10034FD94(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100350098(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_1003500C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = NSLocalizedDescriptionKey;
  v5 = @"Invalid camera assistance configuration.";
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v2];
  [v1 _invalidateSessionAndNotifyError:v3];
}

void sub_100350690(uint64_t a1, int a2)
{
  if (a2)
  {
    if (+[NIPlatformInfo isInternalBuild])
    {
      v3 = *(*(a1 + 32) + 88);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_isValidARSession invalidating session: attempting relocalization is not disabled in internal session", v5, 2u);
      }
    }

    v4 = [*(a1 + 32) _remoteObject];
    [v4 arSessionWillRunWithInvalidConfiguration];
  }
}

void sub_100350B1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained sessionWasSuspended:*(a1 + 32)];
}

void sub_100350B84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) suspendedWithReason:*(a1 + 40)];
}

void sub_1003513FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained sessionDidStartRunning:*(a1 + 32)];
}

void sub_100351A84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didInvalidateWithError:*(a1 + 40)];
}

void sub_100351E00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v3)
  {
    [v4 _handleRunSessionError:v3];
  }

  else
  {
    [v4 _handleRunSessionSuccess];
  }
}

void sub_1003521A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _internalRunWithConfiguration:WeakRetained[5]];
  }
}

void sub_100352C6C(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100352D0C;
  v4[3] = &unk_1009A6728;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 _addObject:v3 reply:v4];
}

void sub_100352D0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100352DD8;
    v6[3] = &unk_10098A2E8;
    v6[4] = v5;
    v7 = v3;
    [v5 _performBlockOnDelegateQueue:v6 ifRespondsToSelector:"session:didFailWithError:"];
  }
}

void sub_100352DD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

void sub_100352F44(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100352FE4;
  v4[3] = &unk_1009A6728;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 _removeObject:v3 reply:v4];
}

void sub_100352FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003530B0;
    v6[3] = &unk_10098A2E8;
    v6[4] = v5;
    v7 = v3;
    [v5 _performBlockOnDelegateQueue:v6 ifRespondsToSelector:"session:didFailWithError:"];
  }
}

void sub_1003530B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  [WeakRetained session:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

void sub_10035330C(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003533AC;
  v3[3] = &unk_1009A6818;
  v4 = *(a1 + 32);
  [v2 isPreciseRangingAllowed:v3];
}

void sub_1003533AC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) _invalidateSessionAndNotifyError:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void sub_1003534D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100353578;
  v3[3] = &unk_1009A6818;
  v4 = *(a1 + 32);
  [v2 isExtendedDistanceMeasurementAllowed:v3];
}

void sub_100353578(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) _invalidateSessionAndNotifyError:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void sub_100353670(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100353718;
  v6[3] = &unk_1009A6868;
  v6[4] = *(a1 + 32);
  [v2 processBluetoothHostTimeSyncWithType:v3 btcClockTicks:v4 eventCounter:v5 reply:v6];
}

void sub_100353718(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 _invalidateSessionAndNotifyError:v6];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10035381C;
    v8[3] = &unk_10099BB28;
    v8[4] = v7;
    v9 = v5;
    v10 = 0;
    [v7 _performBlockOnDelegateQueue:v8 ifRespondsToSelector:"session:didProcessBluetoothHostTimeSyncWithResponse:error:"];
  }
}

void sub_10035381C(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  [WeakRetained session:a1[4] didProcessBluetoothHostTimeSyncWithResponse:a1[5] error:a1[6]];
}

void sub_100353AE0(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&stru_1009A68B0];
}

void sub_100353D34(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&stru_1009A68D0];
}

void sub_100353F88(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&stru_1009A68F0];
}

void sub_1003541DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&stru_1009A6910];
}

void sub_1003543F4(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&stru_1009A6930];
}

void sub_10035460C(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&stru_1009A6950];
}

void sub_100354880(uint64_t a1)
{
  v4 = NSLocalizedDescriptionKey;
  v5 = @"Received a nil or 0 length DCK message.";
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19889 userInfo:v2];

  (*(*(a1 + 32) + 16))();
}

void sub_100354984(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100354A50;
  v4[3] = &unk_1009A69A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 processDCKMessage:v3 reply:v4];
}

void sub_100354A50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100354B2C;
  block[3] = &unk_1009A6978;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_100354C44(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100354CE4;
  v3[3] = &unk_1009A4800;
  v3[4] = *(a1 + 40);
  [v2 deleteURSKs:v3];
}

void sub_100354ED0(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100354F74;
  v5[3] = &unk_1009A4800;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 48);
  [v2 _setDebugURSK:v4 transactionIdentifier:v3 reply:v5];
}

void sub_100355030(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003550D0;
  v3[3] = &unk_1009A6818;
  v4 = *(a1 + 32);
  [v2 isRangingLimitExceeded:v3];
}

void sub_1003550D0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) _invalidateSessionAndNotifyError:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

void sub_1003552A0(uint64_t a1)
{
  v2 = [*(a1 + 32) _synchronousRemoteObject];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100355340;
  v4[3] = &unk_1009A4800;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  [v2 _setURSKTTL:v3 reply:v4];
}

void sub_1003556C0(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processAcwgM1Msg:*(a1 + 40) withSessionTriggerReason:*(a1 + 48)];
}

void sub_10035582C(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processAcwgM3Msg:*(a1 + 40)];
}

void sub_10035590C(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 suspendAcwgRanging:*(a1 + 48) withSuspendTriggerReason:*(a1 + 40)];
}

void sub_1003559F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processAcwgRangingSessionResumeRequestMsg:*(a1 + 48) withResumeTriggerReason:*(a1 + 40)];
}

void sub_100355AD4(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 prefetchAcwgUrsk:*(a1 + 40)];
}

void sub_100355BB4(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processUpdatedLockState:*(a1 + 40)];
}

void sub_100355DF0(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 processVisionInput:*(a1 + 40)];
}

void sub_10035600C(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processBluetoothSample:*(a1 + 40)];
}

void sub_1003567E0(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&stru_1009A6A60];
}

void sub_100356C14(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&stru_1009A6A80];
}

void sub_100356EAC(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&stru_1009A6AA0];
}

void sub_100357144(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&stru_1009A6AC0];
}

void sub_100357450(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&stru_1009A6AE0];
}

void sub_100357710(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _provideTruthTag:*(a1 + 40)];
}

void sub_1003579D0(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processSystemEvent:*(a1 + 40) reply:&stru_1009A6B00];
}

void sub_100357C10(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100357C64(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processSystemEvent:*(a1 + 40) reply:&stru_1009A6B20];
}

void *sub_100357D3C(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_10004EF2C(v6, v10);
    }

    sub_100019B38();
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

uint64_t sub_100357F74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  *(a1 + 8) = objc_alloc_init(CTClientDelegate);
  *(a1 + 16) = [[CoreTelephonyClient alloc] initWithQueue:v5];
  v6 = _CTServerConnectionCreateOnTargetQueue();
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 24) = v6;
  *(a1 + 48) = 0;
  sub_1003594E8(v12, a3);
  sub_100359580(a1 + 56, v12);
  sub_10022F074(v12);
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = *(sub_1000054A8() + 144);
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002EC4;
  v10[3] = &unk_1009A6B80;
  v10[4] = a1;
  [*(a1 + 8) setFOnCellMonitorUpdateCb:v10];
  [*(a1 + 16) setDelegate:*(a1 + 8)];
  if (!*(a1 + 24))
  {
    v7 = qword_1009F5620;
    if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,geo,mcc,Failed to create CT connection", buf, 2u);
    }
  }

  v9 = 0;
  *buf = &v9;
  *(sub_100003B7C(a1 + 120, &v9) + 40) = 0;
  v9 = 1;
  *buf = &v9;
  *(sub_100003B7C(a1 + 120, &v9) + 40) = 0;
  v9 = 2;
  *buf = &v9;
  *(sub_100003B7C(a1 + 120, &v9) + 40) = 0;
  v9 = 3;
  *buf = &v9;
  *(sub_100003B7C(a1 + 120, &v9) + 40) = 0;

  return a1;
}

void sub_100358214(_Unwind_Exception *a1)
{
  sub_10022E7BC(v5, *v8);
  sub_10022E820(v4, *v7);
  sub_10022E8D4(v3 + 24);
  sub_10022E954(v3, *v6);

  _Unwind_Resume(a1);
}

void sub_1003582BC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F5620;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100357E68(a2 != 1, __p);
    if (v13 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,geo,mcc,queryCT,slot:%s", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:a2];
  v7 = *(a1 + 16);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100358450;
  v9[3] = &unk_1009A6BA8;
  v10 = v6;
  v11 = a1;
  v8 = v6;
  [v7 copyCellInfo:v8 completion:v9];
}

void sub_100358450(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = qword_1009F5620;
    if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2630(v6, v8);
      if (!v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if (v5)
  {
LABEL_4:
    v9 = [*(v7 + 8) fOnCellMonitorUpdateCb];
    (v9)[2](v9, *(a1 + 32), v5);
  }

LABEL_5:
}

void sub_10035851C(uint64_t a1)
{
  if (sub_100003AA8(*(a1 + 116)))
  {
    sub_1003582BC(a1, 1);
    v2 = 2;
  }

  else
  {
    if (!sub_10041C77C(*(a1 + 116)))
    {
      return;
    }

    v2 = 1;
  }

  sub_1003582BC(a1, v2);
}

void sub_10035858C(uint64_t a1, int a2)
{
  if (!a2)
  {
    sub_1004C26EC();
  }

  if (*(a1 + 112) == a2)
  {
    v3 = qword_1009F5620;
    if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 112);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,geo,mcc,noChangeInAirplaneModeStatus:%d", v6, 8u);
    }
  }

  else
  {
    *(a1 + 112) = a2;
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (sub_100003AA8(*(a1 + 116)) || sub_10041C77C(*(a1 + 116)))
        {

          sub_10035851C(a1);
        }
      }

      else
      {
        v5 = qword_1009F5620;
        if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_ERROR))
        {
          sub_1004C26A8(v5);
        }
      }
    }
  }
}

void sub_1003586D4(void *a1, uint64_t a2)
{
  v4 = a2 != 1;
  v25 = v4;
  v5 = qword_1009F5620;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_100357E68(v4, __p);
    v6 = v24 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,geo,mcc,queryCT,slot:%s", buf, 0xCu);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:a2];
  v8 = a1[2];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1003589C4;
  v20[3] = &unk_1009A6BA8;
  v22 = a1;
  v9 = v7;
  v21 = v9;
  [v8 copyCellInfo:v9 completion:v20];
  __p[0] = &v25;
  __p[1] = a1;
  v10 = a1[2];
  v19 = 0;
  v11 = [v10 copyMobileCountryCode:v9 error:&v19];
  v12 = v19;
  if (sub_100358A58(__p, v11, v12, 0))
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v15 = qword_1009F5620;
    if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,CurrentMcc,cantObtain,error:%@", buf, 0xCu);
    }

    v16 = a1[2];
    v18 = v12;
    v13 = [v16 copyLastKnownMobileCountryCode:v9 error:&v18];
    v14 = v18;

    if ((sub_100358A58(__p, v13, v14, 1) & 1) == 0)
    {
      v17 = qword_1009F5620;
      if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,LastKnownMcc,cantObtain,error:%@", buf, 0xCu);
      }
    }
  }
}

void sub_1003589C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v4 = [*(*(a1 + 40) + 8) fOnCellMonitorUpdateCb];
    (v4)[2](v4, *(a1 + 32), v5);

    v3 = v5;
  }
}

uint64_t sub_100358A58(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 8);
  v10 = **a1;
  v11 = qword_1009F5620;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_100357E68(v10, __p);
    v12 = "Current";
    if (a4)
    {
      v12 = "lastKnown";
    }

    *buf = 136315906;
    if (v25 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,%sMcc,slot:%s,mcc:%@,error:%@", buf, 0x2Au);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v7)
  {
    v14 = v8 == 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v14)
  {
    [v7 intValue];
    v16 = v7;
    sub_100004A08(buf, [v7 UTF8String]);
    v17 = *v9;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3321888768;
    v19[2] = sub_100359438;
    v19[3] = &unk_1009A6BC8;
    v19[4] = v9;
    v22 = v10;
    if ((buf[23] & 0x80000000) != 0)
    {
      sub_1000056BC(v20, *buf, *&buf[8]);
    }

    else
    {
      *v20 = *buf;
      v21 = *&buf[16];
    }

    v23 = a4;
    dispatch_async(v17, v19);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  return v15;
}

void sub_100358C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100358CCC(uint64_t a1)
{
  atomic_store(1u, (a1 + 144));
  if (sub_100003AA8(*(a1 + 116)))
  {
    sub_1003586D4(a1, 1);
    v2 = 2;
LABEL_5:
    sub_1003586D4(a1, v2);
    return 1;
  }

  if (sub_10041C77C(*(a1 + 116)))
  {
    v2 = 1;
    goto LABEL_5;
  }

  return 1;
}

void sub_100358D34(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_100003AE0();
  if ((atomic_load_explicit(&qword_1009F5640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F5640))
  {
    sub_10045C344(&qword_1009F5628);
    __cxa_atexit(&std::string::~string, &qword_1009F5628, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F5640);
  }

  v6 = *(a2 + 23);
  if (v6 < 0)
  {
    if (*(a2 + 1) != 3)
    {
      goto LABEL_11;
    }

    v7 = *a2;
  }

  else
  {
    v7 = a2;
    if (v6 != 3)
    {
      goto LABEL_11;
    }
  }

  v8 = *v7;
  v9 = *(v7 + 2);
  if (v8 == 12345 && v9 == 49)
  {
    v16 = off_1009EC3F0;
    goto LABEL_34;
  }

LABEL_11:
  if (byte_1009F563F >= 0)
  {
    v11 = byte_1009F563F;
  }

  else
  {
    v11 = qword_1009F5630;
  }

  if (v11)
  {
    v13 = *a2;
    v12 = *(a2 + 1);
    if (v6 >= 0)
    {
      v12 = *(a2 + 23);
    }

    if (v12 == v11)
    {
      v14 = v6 >= 0 ? a2 : *a2;
      v15 = byte_1009F563F >= 0 ? &qword_1009F5628 : qword_1009F5628;
      if (!memcmp(v14, v15, v11))
      {
        v16 = off_1009EC3F8;
LABEL_34:
        v20 = *v16;

        sub_100004A08(a3, v20);
        return;
      }
    }
  }

  else
  {
    v13 = *a2;
  }

  if (v6 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = v13;
  }

  v18 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v17, +[NSString defaultCStringEncoding]);
  v23 = 0;
  v19 = *(a1 + 24);
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  _CTServerConnectionCopyISOForMCC();
  sub_100359000(a1, a2, a3);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100359000(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100004A08(a3, "");
  v17 = 0;
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      return;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    return;
  }

  v6 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", a2, +[NSString defaultCStringEncoding]);
  v7 = *(a1 + 24);
  v8 = v17;
  if (_CTServerConnectionCopyISOForMCC())
  {
    v9 = 1;
  }

  else
  {
    v9 = v17 == 0;
  }

  if (!v9)
  {
    sub_100004A08(&v15, [v17 UTF8String]);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v15;
    v10 = v16;
    *(a3 + 16) = v16;
    v10 >>= 56;
    v11 = v10;
    v12 = (a3 + v10);
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = (*a3 + *(a3 + 8));
    }

    if (v11 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    while (v14 != v13)
    {
      *v14 = __toupper(*v14);
      ++v14;
    }
  }
}

void sub_100359130(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100359168(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v7 = a2;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100037B10();
  }

  return (*(*v4 + 48))(v4, &v7, a3, &v6);
}

void sub_1003591C4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v20 = a2;
  v8 = qword_1009F5620;
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_20;
  }

  sub_100357E68(a2, __p);
  if (v19 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 8))
    {
      v10 = *a3;
    }

    else
    {
      v10 = "__";
    }
  }

  else if (*(a3 + 23))
  {
    v10 = a3;
  }

  else
  {
    v10 = "__";
  }

  v21 = &v20;
  v11 = sub_100003FF0(a1 + 32, &v20);
  if ((*(v11 + 63) & 0x8000000000000000) != 0)
  {
    if (v11[6])
    {
LABEL_14:
      v21 = &v20;
      v12 = sub_100003FF0(a1 + 32, &v20);
      v13 = (v12 + 5);
      if (*(v12 + 63) < 0)
      {
        v13 = *v13;
      }

      goto LABEL_18;
    }
  }

  else if (*(v11 + 63))
  {
    goto LABEL_14;
  }

  v13 = "__";
LABEL_18:
  *buf = 136315650;
  *&buf[4] = v9;
  v23 = 2080;
  v24 = v10;
  v25 = 2080;
  v26 = v13;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,geo,mcc,processIsoCountry,slot:%s,isoCountryCode(new):%s,fCurrentIsoFromMcc(old):%s", buf, 0x20u);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:

  *buf = &v20;
  v14 = sub_100003FF0(a1 + 32, &v20);
  std::string::operator=((v14 + 5), a3);
  v15 = v20;
  if (*(a3 + 23) < 0)
  {
    sub_1000056BC(v16, *a3, *(a3 + 8));
  }

  else
  {
    *v16 = *a3;
    v17 = *(a3 + 16);
  }

  sub_1000040C8(a1, v15, v16, a4);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

char *sub_100359450(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000056BC(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_1003594CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003594E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100359580(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

void *sub_100359600(void *a1)
{
  *a1 = off_1009A6C08;
  sub_10022F074((a1 + 1));
  return a1;
}

void sub_100359644(void *a1)
{
  *a1 = off_1009A6C08;
  sub_10022F074((a1 + 1));

  operator delete();
}

void sub_100359754(void *a1)
{
  sub_10022F074(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1003597A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003597EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10035986C(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v7 = a2;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100037B10();
  }

  return (*(*v4 + 48))(v4, &v7, a3, &v6);
}

uint64_t sub_1003598C8(uint64_t a1, const void **a2)
{
  v2 = *sub_100036E2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10035999C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10022E87C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1003599E8()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F5620 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100359A3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 1)
  {
    v3 = (&unk_10056C750 + 28 * result);
    *a2 = *v3;
    *(a2 + 12) = *(v3 + 12);
    v2 = 1;
  }

  else
  {
    v2 = 0;
    *a2 = 0;
  }

  *(a2 + 28) = v2;
  return result;
}

void *sub_100359ACC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = off_1009A6D08;
  *(a1 + 1) = off_1009A6D80;
  v6 = v5;
  *(a1 + 2) = v6;
  *(a1 + 3) = a3;
  *(a1 + 8) = 2;
  v7 = [CBPeripheralManager alloc];
  v16 = CBManagerNeedsRestrictedStateOperation;
  v17 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  *(a1 + 5) = [v7 initWithDelegate:0 queue:0 options:v8];

  *(a1 + 6) = [[PRWirelessProximityAdapter alloc] initWithQueue:*(a1 + 2)];
  *(a1 + 7) = [[PRSettingsObserver alloc] initWithSettings:*(a1 + 5) queue:*(a1 + 2)];
  if (!*(a1 + 2))
  {
    v11 = "fDispatchQueue";
    v12 = 35;
    goto LABEL_6;
  }

  if (!*(a1 + 3))
  {
    v11 = "fBtProxyObject";
    v12 = 36;
LABEL_6:
    __assert_rtn("PRBluetoothProvider", "PRBluetoothProvider.mm", v12, v11);
  }

  objc_initWeak(&location, *(a1 + 6));
  v9 = *(a1 + 6);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100359D60;
  v13[3] = &unk_1009A6DB0;
  v14[1] = a1;
  objc_copyWeak(v14, &location);
  [v9 setWiproxStateHandler:v13];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

  return a1;
}

void sub_100359CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100359D60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100359DD0(v3, WeakRetained, a2);
}

void sub_100359DD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_100004A08(&v10, "");
  if (a3 <= 1)
  {
    if (!a3)
    {
      std::string::append(&v10, "WPStateUnknown");
      v7 = 2;
LABEL_11:
      atomic_store(v7, (a1 + 32));
      goto LABEL_12;
    }

    if (a3 != 1)
    {
      goto LABEL_12;
    }

    v6 = "WPStateResetting";
LABEL_10:
    std::string::append(&v10, v6);
    v7 = 1;
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v6 = "WPStateOff";
    goto LABEL_10;
  }

  if (a3 == 3)
  {
    std::string::append(&v10, "WPStateOn");
    atomic_store(0, (a1 + 32));
    [v5 enableSPMIMessagingWithHandler:&stru_1009A6DF0];
  }

LABEL_12:
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v9 = &v10;
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v10.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WiProx changed state: %s", buf, 0xCu);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_100359F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100359F84(uint64_t a1)
{
  *a1 = off_1009A6D08;
  *(a1 + 8) = off_1009A6D80;
  [*(a1 + 56) stopObserving:@"advertisingAddress"];
  [*(a1 + 48) setWiproxStateHandler:0];

  return a1;
}

void sub_10035A030(uint64_t a1)
{
  sub_100359F84(a1);

  operator delete();
}

void sub_10035A068(uint64_t a1)
{
  sub_100359F84(a1 - 8);

  operator delete();
}

id sub_10035A0A4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start observing BT address roll events.", buf, 2u);
  }

  v3 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10035A170;
  v5[3] = &unk_10099D2D8;
  v5[4] = a1;
  return [v3 startObserving:@"advertisingAddress" observeImmediately:0 callback:v5];
}

void sub_10035A170(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BT address roll event.", v3, 2u);
  }

  sub_10035A1E4(v1);
}

void sub_10035A1E4(uint64_t a1)
{
  v2 = (*(*a1 + 96))(a1);
  if ((v2 & 0x1000000000000) != 0)
  {
    v3 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035A320;
    block[3] = &unk_1009A6DD0;
    block[4] = a1;
    v5 = v2;
    v6 = WORD2(v2);
    v7 = BYTE6(v2);
    dispatch_async(v3, block);
  }

  else
  {
    sub_10035A2F0([*(a1 + 40) state], v8);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C275C(v8);
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

_BYTE *sub_10035A2F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 4)
  {
    v2 = "CBManagerStateUnknown";
  }

  else
  {
    v2 = off_1009A6F58[a1 - 1];
  }

  return sub_100004A08(a2, v2);
}

void sub_10035A320(uint64_t a1)
{
  if ((*(a1 + 46) & 1) == 0)
  {
    sub_1000195BC();
  }

  v1 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *(v1 + 24);
  v4 = rep;
  v5 = 1;
  v8 = 1;
  sub_10019EED0(v3, &v4);
}

uint64_t sub_10035A388(uint64_t a1)
{
  if ([*(a1 + 40) state] == 5 || objc_msgSend(*(a1 + 40), "state") == 10)
  {
    v3 = [*(a1 + 40) advertisingAddress];
    v4 = [v3 copy];

    v5 = [v4 length];
    v6 = qword_1009F9820;
    if (v5 == 6)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 138477827;
        *&v16[4] = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRBluetoothProvider: BT Adv Address = %{private}@", v16, 0xCu);
      }

      v7 = [*(a1 + 40) nonConnectableAdvertisingAddress];
      v8 = [v7 copy];

      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 138477827;
        *&v16[4] = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRBluetoothProvider: NonConnectable BT Adv Address = %{private}@", v16, 0xCu);
      }

      [v4 getBytes:v16 length:6];
      v10 = 0;
      for (i = 5; i != 2; --i)
      {
        v12 = v16[v10];
        v16[v10] = v16[i];
        v16[i] = v12;
        ++v10;
      }

      v13 = v16[0];
      v1 = *&v16[1] | (v16[5] << 32);
      v14 = 1;
    }

    else
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1004C2820(v16, [v4 length], v8);
      }

      v14 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C27E0();
    }

    v14 = 0;
    v13 = 0;
  }

  return ((v1 & 0xFFFFFFFFFFLL) << 8) | (v14 << 48) | v13;
}

void sub_10035A61C(id a1, NSError *a2)
{
  v2 = a2;
  if (!v2)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C2878();
  }

  if (sub_100255FEC())
  {
    [(NSError *)v2 description];
    [objc_claimAutoreleasedReturnValue() UTF8String];
    abort_report_np();
    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_10035A6D4()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "PRBluetoothProvider: Probe", v2, 2u);
  }

  return 1;
}

uint64_t sub_10035A740(uint64_t a1)
{
  [*(a1 + 48) enableSPMIMessagingWithHandler:&stru_1009A6DF0];
  sub_10035A0A4(a1);
  return 1;
}

uint64_t sub_10035A77C(uint64_t a1)
{
  v1 = a1 - 8;
  [*(a1 + 40) enableSPMIMessagingWithHandler:&stru_1009A6DF0];
  sub_10035A0A4(v1);
  return 1;
}

uint64_t sub_10035A808(uint64_t a1, _DWORD *a2)
{
  if (*a2)
  {
    if (*a2 == 1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C292C();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C28EC();
  }

  return 0;
}

void sub_10035ABAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v4 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004C29E8(v3, v4);
    }
  }
}

void sub_10035AC98(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[NIPlatformInfo isInternalBuild])
  {
    v4 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2A60(v3, v4);
    }
  }
}

void sub_10035B1CC(uint64_t a1)
{
  *a1 = off_1009A6FB8;
  *(a1 + 8) = off_1009A7078;
  *(a1 + 16) = off_1009A70A0;
  *(a1 + 24) = off_1009A70C8;
  *(a1 + 32) = off_1009A70F8;
  *(a1 + 40) = off_1009A7120;
  *(a1 + 48) = off_1009A7148;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 56) = dispatch_queue_create("com.apple.nearbyd.SensorQueue", v2);

  std::recursive_mutex::recursive_mutex((a1 + 64));
  *(a1 + 152) = 0;
  operator new();
}

void sub_10035BC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_guard_abort(&qword_1009F70E8);
  sub_10005280C(v14 + 128);
  std::recursive_mutex::~recursive_mutex((a14 + 8));

  _Unwind_Resume(a1);
}

void sub_10035BFB4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 localizedDescription];
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "PRRangingManager::defaultErrorHandler %@", &v6, 0xCu);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "PRRangingManager::defaultErrorHandler");
}

char *sub_10035C0C8(uint64_t a1)
{
  v1 = sub_10035C120(*(a1 + 32));
  v2 = sub_10003F7DC(@"PRRangingManager", v1);

  return v2;
}

id sub_10035C120(uint64_t a1)
{
  v65 = objc_opt_new();
  std::recursive_mutex::lock((a1 + 64));
  v64 = objc_autoreleasePoolPush();
  v2 = [NSString stringWithFormat:@"Total ranging manager clients: %zu", *(a1 + 224)];
  [v65 addObject:v2];

  v3 = *(a1 + 208);
  if (v3 != (a1 + 216))
  {
    do
    {
      v4 = v3[4];
      v5 = [NSString stringWithFormat:@"    Client: H<%04x>", CUObfuscatedPtr()];
      [v65 addObject:v5];

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != (a1 + 216));
  }

  v9 = [NSString stringWithFormat:@"Total service requests: %zu", *(a1 + 256)];
  [v65 addObject:v9];

  for (i = *(a1 + 248); i; i = *i)
  {
    v11 = *(i + 8);
    v12 = i[3];
    v13 = i[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = [NSString stringWithFormat:@"    Ticket: %d. Client: H<%04x>", v11, CUObfuscatedPtr()];
    [v65 addObject:v14];

    if (v13)
    {
      sub_10000AD84(v13);
    }
  }

  v15 = [NSString stringWithFormat:@"Clients holding service requests: %zu", *(a1 + 296)];
  [v65 addObject:v15];

  for (j = *(a1 + 288); j; j = *j)
  {
    sub_100363374(&v66, j + 2);
    v17 = [NSMutableString stringWithFormat:@"    Client: H<%04x> with %zu tickets: [", CUObfuscatedPtr(), v69[1]];
    v18 = v68;
    if (v68 != v69)
    {
      do
      {
        if (v18 == v68)
        {
          v19 = @"%d";
        }

        else
        {
          v19 = @", %d";
        }

        [v17 appendFormat:v19, *(v18 + 13)];
        v20 = v18[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v18[2];
            v8 = *v21 == v18;
            v18 = v21;
          }

          while (!v8);
        }

        v18 = v21;
      }

      while (v21 != v69);
    }

    [v17 appendString:@"]"];
    [v65 addObject:v17];

    sub_10002074C(&v68, v69[0]);
    if (v67)
    {
      sub_10000AD84(v67);
    }
  }

  objc_autoreleasePoolPop(v64);
  std::recursive_mutex::unlock((a1 + 64));
  v22 = objc_opt_new();
  sub_1001E47D8(a1 + 3264, &v66);
  if (v89 == 1)
  {
    v23 = [NSString stringWithFormat:@"AOP timestamp: %llu us", v66];
    [v22 addObject:v23];

    v24 = [NSString stringWithFormat:@"DRAM assertion: %d", v70];
    [v22 addObject:v24];

    v25 = v67;
    v26 = [NSString stringWithFormat:@"Total AOP jobs: %d", v67];
    [v22 addObject:v26];

    if (v25)
    {
      v27 = &v67 + 4;
      do
      {
        v28 = *(v27 - 1);
        if (v28 > 0x63)
        {
          v29 = "Alisha_ACWG";
          if (v28 != 106)
          {
            v29 = "Alisha_CCC";
          }

          if (v28 == 107)
          {
            v29 = "Localization";
          }

          if (v28 == 105)
          {
            v29 = "NMI";
          }

          if (v28 == 104)
          {
            v30 = "TestNMI";
          }

          else
          {
            v30 = "Alisha_CCC";
          }

          if (v28 == 103)
          {
            v30 = "FiRa";
          }

          if (v28 == 100)
          {
            v30 = "P2P";
          }

          v31 = *(v27 - 1) <= 0x68u;
        }

        else
        {
          v29 = "GRNoDataSymmetricalSinglePeer";
          if (v28 != 5)
          {
            v29 = "Alisha_CCC";
          }

          if (v28 == 4)
          {
            v29 = "GRSymmetricalMultiPeer";
          }

          if (v28 == 3)
          {
            v29 = "GRDoubleResponseSurvey";
          }

          v30 = "GRTranspondingBeacon";
          if (v28 != 2)
          {
            v30 = "Alisha_CCC";
          }

          if (v28 == 1)
          {
            v30 = "GRSingleResponseSurvey";
          }

          if (!*(v27 - 1))
          {
            v30 = "GRBroadcastingBeacon";
          }

          v31 = *(v27 - 1) <= 2u;
        }

        if (v31)
        {
          v32 = v30;
        }

        else
        {
          v32 = v29;
        }

        v33 = [NSString stringWithFormat:@"    Ticket: [%d]. Is ranging: [%u]. Type: [%s]", *(v27 - 3), *v27, v32];
        [v22 addObject:v33];

        v27 += 4;
        --v25;
      }

      while (v25);
    }

    v34 = [NSString stringWithFormat:@"Scheduler: has service handle %d", v71 & 1];
    [v22 addObject:v34];

    v35 = [NSString stringWithFormat:@"    Task array: %d total, %d runnable, %d suspended, %d waiting trigger, %d waiting FW rsp", v72, v73, v74, v75, v76];
    [v22 addObject:v35];

    v36 = [NSString stringWithFormat:@"    Task lists: %d runnable, %d suspended, %d waiting trigger, %d waiting FW rsp", v77, v78, v79, v80];
    [v22 addObject:v36];

    if (v82 > 3uLL)
    {
      v37 = "<Error: OutOfBounds>";
    }

    else
    {
      v37 = off_1009A79A8[v82];
    }

    v38 = [NSString stringWithFormat:@"SF manager: has PDR %d, IO activated %d, stationary timer %d, displacing state %s", v81 & 1, (v81 >> 1) & 1, (v81 >> 2) & 1, v37];
    [v22 addObject:v38];

    v39 = v83 - v66;
    if (!v83)
    {
      v39 = 0;
    }

    v40 = [NSString stringWithFormat:@"    Last IO data received: %llu us (dT: %lld us)", v83, v39];
    [v22 addObject:v40];

    v41 = v84 - v66;
    if (!v84)
    {
      v41 = 0;
    }

    v42 = [NSString stringWithFormat:@"    Last IO data processed: %llu us (dT: %lld us)", v84, v41];
    [v22 addObject:v42];

    v43 = v85 - v66;
    if (!v85)
    {
      v43 = 0;
    }

    v44 = [NSString stringWithFormat:@"    Last BT RSSI: received %llu us (dT: %lld us), conn handle 0x%04x, value %d dBm", v85, v43, v86, v87];
    [v22 addObject:v44];

    v45.i16[0] = v88[0];
    v45.i16[1] = *(&v88[7] + 1);
    v45.i16[2] = v88[15];
    v45.i16[3] = *(&v88[22] + 1);
    v45.i16[4] = v88[30];
    v45.i16[5] = *(&v88[37] + 1);
    v45.i16[6] = v88[45];
    v45.i16[7] = *(&v88[52] + 1);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v47 = vbicq_s8(xmmword_10056C7B0, vceqq_s16(v45, v46));
    v47.i32[0] = vaddvq_s16(v47);
    *v47.i8 = vcnt_s8(*v47.i8);
    v47.i16[0] = vaddlv_u8(*v47.i8);
    v48 = [NSString stringWithFormat:@"    Num valid BT connections: %d", v47.u32[0]];
    [v22 addObject:v48];

    for (k = 0; k != 120; k += 15)
    {
      v50 = &v66 + k;
      v51 = *(v88 + k);
      if (v51 != 0xFFFF)
      {
        v52 = *(v50 + 164);
        v53 = v52 - v66;
        if (!v52)
        {
          v53 = 0;
        }

        v54 = v50[173];
        v55 = "OutOfBounds";
        if (v54 <= 2)
        {
          v55 = off_1009A79E8[v54];
        }

        v56 = *(&v88[6] + k);
        v57 = "<Error: OutOfBounds>";
        if (v56 <= 3)
        {
          v57 = off_1009A79C8[v56];
        }

        v58 = *(&v88[6] + k + 1);
        v59 = "OutOfBounds";
        if (v58 <= 2)
        {
          v59 = off_1009A79E8[v58];
        }

        v60 = [NSString stringWithFormat:@"        [0x%04x] Job: %d. CfgEnbl: %d. RSSI: %d dBm @ %llu us (dT: %lld us). State: bubble %d, zone: %s. Dispatched: NI %s, BT %s", v51, v50[161] & 1, (v50[161] >> 1) & 1, v50[172], v52, v53, (v50[161] >> 2) & 1, v55, v57, v59];
        [v22 addObject:v60];
      }
    }
  }

  else
  {
    [v22 addObject:@"Could not get AOP activity report"];
  }

  v61 = sub_10036E5F4(a1 + 1072);
  v90[0] = @"Ranging Manager";
  v90[1] = @"AOP Activity Summary";
  v91[0] = v65;
  v91[1] = v22;
  v90[2] = @"Regulatory";
  v91[2] = v61;
  v62 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:3];

  return v62;
}

uint64_t sub_10035CC04(uint64_t a1)
{
  *a1 = off_1009A6FB8;
  *(a1 + 8) = off_1009A7078;
  *(a1 + 16) = off_1009A70A0;
  *(a1 + 24) = off_1009A70C8;
  *(a1 + 32) = off_1009A70F8;
  *(a1 + 40) = off_1009A7120;
  *(a1 + 48) = off_1009A7148;
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "~PRRangingManager", v8, 2u);
  }

  sub_10030D97C((a1 + 6528));
  v3 = *(a1 + 6520);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  sub_1001E3EFC(a1 + 3264);
  v4 = *(a1 + 3256);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  sub_10036BBEC(a1 + 1072);
  sub_10035A024(a1 + 1008);
  sub_1003011CC((a1 + 912));

  sub_1001A4528(a1 + 768);
  sub_1001A86C8(a1 + 680);
  *(a1 + 592) = off_100998DA8;
  std::mutex::~mutex((a1 + 616));
  sub_100182CCC(a1 + 504);
  sub_1001A46E0(a1 + 408);
  sub_1001A53B0(a1 + 312);
  sub_1003623D4(a1 + 272);
  sub_10002523C(a1 + 232);
  sub_100362374(a1 + 208, *(a1 + 216));

  v5 = *(a1 + 184);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    sub_10000AD84(v6);
  }

  sub_10005280C(a1 + 128);
  std::recursive_mutex::~recursive_mutex((a1 + 64));

  return a1;
}

void sub_10035CE8C(uint64_t a1)
{
  sub_10035CC04(a1);

  operator delete();
}

void sub_10035CEC4(uint64_t a1)
{
  sub_10035CC04(a1 - 8);

  operator delete();
}

void sub_10035CF00(uint64_t a1)
{
  sub_10035CC04(a1 - 16);

  operator delete();
}

void sub_10035CF3C(uint64_t a1)
{
  sub_10035CC04(a1 - 24);

  operator delete();
}

void sub_10035CF78(uint64_t a1)
{
  sub_10035CC04(a1 - 32);

  operator delete();
}

void sub_10035CFB4(uint64_t a1)
{
  sub_10035CC04(a1 - 40);

  operator delete();
}

void sub_10035CFF0(uint64_t a1)
{
  sub_10035CC04(a1 - 48);

  operator delete();
}

void *sub_10035D02C()
{
  if ((atomic_load_explicit(&qword_1009F70A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F70A8))
  {
    sub_10035B1CC(&unk_1009F5720);
  }

  return &unk_1009F5720;
}

void *sub_10035D0C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    sub_1004C2C08();
  }

  v3 = (a1 + 128);

  return sub_10035D0F4(v3, a2);
}

void *sub_10035D0F4(void *a1, uint64_t a2)
{
  sub_1003629EC(v4, a2);
  sub_100362A84(v4, a1);
  sub_10005280C(v4);
  return a1;
}

void sub_10035D168(std::recursive_mutex *a1, void *a2)
{
  v3 = a2;
  std::recursive_mutex::lock(a1 + 1);
  sig = a1[3].__m_.__sig;
  a1[3].__m_.__sig = v3;

  std::recursive_mutex::unlock(a1 + 1);
}

id sub_10035D1C8(uint64_t a1)
{
  std::recursive_mutex::lock((a1 + 64));
  v2 = *(a1 + 192);
  std::recursive_mutex::unlock((a1 + 64));

  return v2;
}

uint64_t sub_10035D2A4(uint64_t a1)
{
  v3 = 8;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v12 = 0;
  v13 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v1 = sub_1001E72E0(a1 + 3264, &v3);
  if (v16 == 1 && __p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v12 == 1 && v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v1;
}

void sub_10035D38C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A0B88(va);
  _Unwind_Resume(a1);
}

void sub_10035D3A0(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = qword_1009F9820;
  v4 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRangingManager::configureSubsystemsOnFirstUnlock - unlock notification previously received. Ignore action.", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRangingManager::configureSubsystemsOnFirstUnlock - this is the first notification received. Execute action.", buf, 2u);
    }

    *(a1 + 200) = 1;
    if (sub_100255FEC())
    {
      sub_1001E3A74(a1 + 3264);
    }

    sub_10036C5BC(a1 + 1072);
    v5 = *(a1 + 160);
    if (v5 && !sub_1002E4904(v5))
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fPbLogger protobuf exists but it's not open.", buf, 2u);
      }

      if ((sub_1002D9444(*(a1 + 160)) & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C2C34();
      }

      v7 = *(a1 + 168);
      v11[0] = *(a1 + 160);
      v11[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = sub_10035D584(v11);
      if (v7)
      {
        sub_10000AD84(v7);
      }

      if ((v8 & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004C2C70();
      }
    }

    v9 = *(a1 + 6512);
    if (v9)
    {
      (*(*v9 + 88))(v9);
    }

    v10 = sub_1002BD51C();
    sub_1002BE638(v10);
  }
}

void sub_10035D56C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035D584(uint64_t *a1)
{
  if (*a1)
  {
    v2 = sub_100255D80();
    v3 = sub_100255DC4();
    if (v2)
    {
      sub_100004A08(&v7, [v2 UTF8String]);
    }

    else
    {
      sub_100004A08(&v7, "UNKNOWN");
    }

    if (v3)
    {
      sub_100004A08(&__p, [v3 UTF8String]);
    }

    else
    {
      sub_100004A08(&__p, "UNKNOWN");
    }

    v4 = sub_1002D94FC(*a1, &v7, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2CAC();
    }

    return 0;
  }

  return v4;
}

void sub_10035D6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_10035D6F0(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *a2;
      if (v6)
      {
        v7 = (*(**(a1 + 6512) + 72))(*(a1 + 6512));
        v8 = *(a1 + 56);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_10035D82C;
        block[3] = &unk_1009A71A0;
        block[4] = v6;
        v10 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = v7;
        dispatch_async(v8, block);
        if (v10)
        {
          sub_10000AD84(v10);
        }

LABEL_10:
        sub_10000AD84(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C2CE8();
  }

  if (v5)
  {
    goto LABEL_10;
  }
}

uint64_t sub_10035D85C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10035D878(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_10000AD84(v1);
  }
}

uint64_t sub_10035D888(uint64_t a1, uint64_t **a2)
{
  v19 = 0;
  v20 = 0;
  v3 = a2[1];
  if (v3 && (v20 = std::__shared_weak_count::lock(v3)) != 0 && (v19 = *a2) != 0)
  {
    std::recursive_mutex::lock((a1 + 64));
    (*(**(a1 + 6512) + 40))(__src);
    if (LODWORD(__src[90]) != 1)
    {
      sub_100362CE8();
    }

    if (__src[89])
    {
      *v29 = __src[1];
      *buf = &v19;
      v5 = sub_100362D38((a1 + 272), &v19);
      sub_10027D03C((v5 + 4), v29);
      if (sub_1000222CC((a1 + 232), v29))
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C2D98(v29);
        }

        for (i = *(a1 + 248); i; i = *i)
        {
          v17 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            v18 = *(i + 8);
            *buf = 67109120;
            *&buf[4] = v18;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "fRequestToClientMap contains ticket Id: %d", buf, 8u);
          }
        }

        __assert_rtn("registerForService", "PRRangingManager.mm", 347, "false");
      }

      *buf = v29;
      v6 = sub_100363030((a1 + 232), v29);
      v8 = v19;
      v7 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v6[4];
      v6[3] = v8;
      v6[4] = v7;
      if (v9)
      {
        sub_10000AD84(v9);
      }

      sub_1001E4788(a1 + 3264);
      v10 = *v29 & 0xFF00;
      v11 = v29[0];
      v12 = 0x10000;
    }

    else
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10035DCD4(__src, buf);
        sub_1004C2D24(buf, v29, v13);
      }

      v14 = *(a1 + 56);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_10035DD20;
      block[3] = &unk_1009A71D0;
      block[4] = v19;
      v22 = v20;
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      memcpy(v23, __src, sizeof(v23));
      sub_100191634(v24, &v31);
      dispatch_async(v14, block);
      if (v27 == 1 && v26 < 0)
      {
        operator delete(__p);
      }

      if (v22)
      {
        sub_10000AD84(v22);
      }

      v12 = 0;
      v11 = 0;
      v10 = 0;
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    std::recursive_mutex::unlock((a1 + 64));
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2E08();
    }

    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  if (v20)
  {
    sub_10000AD84(v20);
  }

  return v11 | v12 | v10;
}

void sub_10035DC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  v15 = v14;

  if (LOBYTE(STACK[0x690]) == 1 && SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(STACK[0x678]);
  }

  std::recursive_mutex::unlock(v13 + 1);
  if (a13)
  {
    sub_10000AD84(a13);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10035DCD4@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result[760] != 1)
  {
    return sub_100004A08(a2, "");
  }

  if (result[759] < 0)
  {
    return sub_1000056BC(a2, *(result + 92), *(result + 93));
  }

  *a2 = *(result + 46);
  *(a2 + 16) = *(result + 94);
  return result;
}

void sub_10035DD20(uint64_t a1)
{
  if (*(a1 + 808) == 1)
  {
    v1 = *(a1 + 776);
  }

  else
  {
    v1 = 1000;
  }

  v2 = *(a1 + 32);
  sub_10035DCD4((a1 + 48), v3);
  v5 = v1;
  if (SHIBYTE(v4) < 0)
  {
    sub_1000056BC(&__p, v3[0], v3[1]);
  }

  else
  {
    __p = *v3;
    v7 = v4;
  }

  (*(*v2 + 112))(v2, &v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_10035DDE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10035DE1C(uint64_t a1, void *a2)
{
  v4 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 48), a2 + 6, 0x2D8uLL);
  return sub_100191634((a1 + 776), (a2 + 97));
}

void sub_10035DE74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035DE8C(uint64_t a1)
{
  if (*(a1 + 808) == 1 && *(a1 + 807) < 0)
  {
    operator delete(*(a1 + 784));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    sub_10000AD84(v2);
  }
}

uint64_t sub_10035DEEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "unregisterForService with ticket id: %d", buf, 8u);
  }

  v23 = 0;
  v24 = 0;
  v7 = a2[1];
  if (!v7 || (v24 = std::__shared_weak_count::lock(v7)) == 0 || (v23 = *a2) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2F0C();
    }

    v13 = 0;
    goto LABEL_23;
  }

  std::recursive_mutex::lock((a1 + 64));
  v8 = sub_100363288((a1 + 272), &v23);
  if (!v8)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2ED0();
    }

    v15 = *(a1 + 56);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3321888768;
    v21[2] = sub_10035E340;
    v21[3] = &unk_1009A7200;
    v21[4] = v23;
    v22 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v15, v21);
    v12 = v22;
    if (!v22)
    {
      goto LABEL_18;
    }

LABEL_17:
    sub_10000AD84(v12);
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v9 = v8[5];
  if (!v9)
  {
LABEL_12:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2E94();
    }

    v11 = *(a1 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10035E42C;
    block[3] = &unk_1009A7200;
    block[4] = v23;
    v20 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v11, block);
    v12 = v20;
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v10 = *(v9 + 13);
    if (v10 <= a3)
    {
      break;
    }

LABEL_11:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (v10 < a3)
  {
    ++v9;
    goto LABEL_11;
  }

  (*(**(a1 + 6512) + 48))(buf);
  if (*&buf[720])
  {
    sub_100362CE8();
  }

  v13 = buf[8];
  if ((buf[8] & 1) == 0)
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10035DCD4(buf, v18);
      sub_1004C2E44(a3, v18);
    }

    v17 = *(a1 + 56);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3321888768;
    v25[2] = sub_10035E518;
    v25[3] = &unk_1009A71D0;
    v25[4] = v23;
    v26 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memcpy(v27, buf, sizeof(v27));
    sub_100191634(v28, &v33);
    dispatch_async(v17, v25);
    if (v31 == 1 && v30 < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      sub_10000AD84(v26);
    }
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

LABEL_19:
  std::recursive_mutex::unlock((a1 + 64));
LABEL_23:
  if (v24)
  {
    sub_10000AD84(v24);
  }

  return v13;
}

void sub_10035E2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (LOBYTE(STACK[0x6D8]) == 1 && SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  std::recursive_mutex::unlock(v26 + 1);
  if (a26)
  {
    sub_10000AD84(a26);
  }

  _Unwind_Resume(a1);
}

void sub_10035E340(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(v2, "Client asked to cancel service, but has no registered requests.");
  v4 = 113;
  if (SHIBYTE(v3) < 0)
  {
    sub_1000056BC(&__p, v2[0], v2[1]);
  }

  else
  {
    __p = *v2;
    v6 = v3;
  }

  (*(*v1 + 112))(v1, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_10035E3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035E42C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(v2, "Client asked to cancel service with invalid ticket id.");
  v4 = 108;
  if (SHIBYTE(v3) < 0)
  {
    sub_1000056BC(&__p, v2[0], v2[1]);
  }

  else
  {
    __p = *v2;
    v6 = v3;
  }

  (*(*v1 + 112))(v1, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_10035E4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035E518(uint64_t a1)
{
  if (*(a1 + 808) == 1)
  {
    v1 = *(a1 + 776);
  }

  else
  {
    v1 = 1000;
  }

  v2 = *(a1 + 32);
  sub_10035DCD4((a1 + 48), v3);
  v5 = v1;
  if (SHIBYTE(v4) < 0)
  {
    sub_1000056BC(&__p, v3[0], v3[1]);
  }

  else
  {
    __p = *v3;
    v7 = v4;
  }

  (*(*v2 + 112))(v2, &v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_10035E5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035E614(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  v4 = a2[1];
  if (!v4 || (v23 = std::__shared_weak_count::lock(v4)) == 0 || (v22 = *a2) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C3048();
    }

    v12 = 0;
    goto LABEL_21;
  }

  std::recursive_mutex::lock((a1 + 64));
  v7 = sub_100363288((a1 + 272), &v22);
  if (!v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C300C();
    }

    v14 = *(a1 + 56);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3321888768;
    v20[2] = sub_10035EA3C;
    v20[3] = &unk_1009A7200;
    v20[4] = v22;
    v21 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v14, v20);
    v11 = v21;
    if (!v21)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_10000AD84(v11);
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v8 = v7[5];
  if (!v8)
  {
LABEL_10:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C2F98();
    }

    v10 = *(a1 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10035EB28;
    block[3] = &unk_1009A7200;
    block[4] = v22;
    v19 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v10, block);
    v11 = v19;
    if (!v19)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v9 = *(v8 + 13);
    if (v9 <= a3)
    {
      break;
    }

LABEL_9:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v9 < a3)
  {
    ++v8;
    goto LABEL_9;
  }

  (*(**(a1 + 6512) + 56))(__src);
  if (LODWORD(__src[90]))
  {
    sub_100362CE8();
  }

  v12 = LOBYTE(__src[1]);
  if ((__src[1] & 1) == 0)
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10035DCD4(__src, v17);
      sub_1004C2F48(a3, v17);
    }

    v16 = *(a1 + 56);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3321888768;
    v24[2] = sub_10035EC14;
    v24[3] = &unk_1009A71D0;
    v24[4] = v22;
    v25 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    memcpy(v26, __src, sizeof(v26));
    sub_100191634(v27, &v32);
    dispatch_async(v16, v24);
    if (v30 == 1 && v29 < 0)
    {
      operator delete(__p);
    }

    if (v25)
    {
      sub_10000AD84(v25);
    }
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

LABEL_17:
  std::recursive_mutex::unlock((a1 + 64));
LABEL_21:
  if (v23)
  {
    sub_10000AD84(v23);
  }

  return v12;
}

void sub_10035E9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (LOBYTE(STACK[0x6D0]) == 1 && SLOBYTE(STACK[0x6CF]) < 0)
  {
    operator delete(STACK[0x6B8]);
  }

  std::recursive_mutex::unlock(v26 + 1);
  if (a26)
  {
    sub_10000AD84(a26);
  }

  _Unwind_Resume(a1);
}

void sub_10035EA3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(v2, "Client asked to trigger service, but has no registered requests.");
  v4 = 113;
  if (SHIBYTE(v3) < 0)
  {
    sub_1000056BC(&__p, v2[0], v2[1]);
  }

  else
  {
    __p = *v2;
    v6 = v3;
  }

  (*(*v1 + 112))(v1, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_10035EAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035EB28(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(v2, "Client asked to trigger service with invalid ticket id.");
  v4 = 108;
  if (SHIBYTE(v3) < 0)
  {
    sub_1000056BC(&__p, v2[0], v2[1]);
  }

  else
  {
    __p = *v2;
    v6 = v3;
  }

  (*(*v1 + 112))(v1, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_10035EBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035EC14(uint64_t a1)
{
  if (*(a1 + 808) == 1)
  {
    v1 = *(a1 + 776);
  }

  else
  {
    v1 = 1000;
  }

  v2 = *(a1 + 32);
  sub_10035DCD4((a1 + 48), v3);
  v5 = v1;
  if (SHIBYTE(v4) < 0)
  {
    sub_1000056BC(&__p, v3[0], v3[1]);
  }

  else
  {
    __p = *v3;
    v7 = v4;
  }

  (*(*v2 + 112))(v2, &v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_10035ECDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035ED10(uint64_t a1, uint64_t *a2, unsigned __int16 *a3)
{
  v21 = 0;
  v22 = 0;
  v4 = a2[1];
  if (!v4 || (v22 = std::__shared_weak_count::lock(v4)) == 0 || (v21 = *a2) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C3130();
    }

    v13 = 0;
    goto LABEL_22;
  }

  std::recursive_mutex::lock((a1 + 64));
  v7 = sub_100363288((a1 + 272), &v21);
  if (!v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C30F4();
    }

    v15 = *(a1 + 56);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3321888768;
    v19[2] = sub_10035F03C;
    v19[3] = &unk_1009A7200;
    v19[4] = v21;
    v20 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v15, v19);
    v12 = v20;
    if (!v20)
    {
      goto LABEL_17;
    }

LABEL_16:
    sub_10000AD84(v12);
LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v8 = v7[5];
  if (!v8)
  {
LABEL_11:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C3084(a3);
    }

    v11 = *(a1 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10035F128;
    block[3] = &unk_1009A7200;
    block[4] = v21;
    v18 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v11, block);
    v12 = v18;
    if (!v18)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v9 = *a3;
  while (1)
  {
    v10 = *(v8 + 13);
    if (v9 >= v10)
    {
      break;
    }

LABEL_10:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (v10 < v9)
  {
    ++v8;
    goto LABEL_10;
  }

  v16 = *(a3 + 2);
  v23 = 7;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v32 = 0;
  v33 = 0;
  v36 = 0;
  v37 = 0;
  v38 = v9;
  v39 = v16;
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v13 = sub_1001E72E0(a1 + 3264, &v23);
  if (v36 == 1 && __p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v32 == 1 && v30)
  {
    v31 = v30;
    operator delete(v30);
  }

LABEL_18:
  std::recursive_mutex::unlock((a1 + 64));
LABEL_22:
  if (v22)
  {
    sub_10000AD84(v22);
  }

  return v13;
}

void sub_10035EFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  sub_1001A0B88(va);
  std::recursive_mutex::unlock(v16 + 1);
  if (a16)
  {
    sub_10000AD84(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10035F03C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(v2, "Client asked to trigger service, but has no registered requests.");
  v4 = 113;
  if (SHIBYTE(v3) < 0)
  {
    sub_1000056BC(&__p, v2[0], v2[1]);
  }

  else
  {
    __p = *v2;
    v6 = v3;
  }

  (*(*v1 + 112))(v1, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_10035F0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035F128(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(v2, "Client asked to trigger service with invalid ticket id.");
  v4 = 108;
  if (SHIBYTE(v3) < 0)
  {
    sub_1000056BC(&__p, v2[0], v2[1]);
  }

  else
  {
    __p = *v2;
    v6 = v3;
  }

  (*(*v1 + 112))(v1, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_10035F1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035F214(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  v4 = a2[1];
  if (v4 && (v21 = std::__shared_weak_count::lock(v4)) != 0 && (v20 = *a2) != 0)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "stopUserTriggeredRanging! Ticket: %d", buf, 8u);
    }

    std::recursive_mutex::lock((a1 + 64));
    v8 = sub_100363288((a1 + 272), &v20);
    if (v8)
    {
      v9 = v8[5];
      if (!v9)
      {
LABEL_12:
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004C31BC();
        }

        v11 = *(a1 + 56);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_10035F614;
        block[3] = &unk_1009A7200;
        block[4] = v20;
        v19 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        dispatch_async(v11, block);
        if (v19)
        {
          sub_10000AD84(v19);
        }

        v12 = 0;
        goto LABEL_25;
      }

      while (1)
      {
        v10 = *(v9 + 13);
        if (v10 <= a3)
        {
          if (v10 >= a3)
          {
            (*(**(a1 + 6512) + 64))(buf);
            if (*&buf[720])
            {
              sub_100362CE8();
            }

            v12 = buf[8];
            if ((buf[8] & 1) == 0)
            {
              v15 = qword_1009F9820;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_10035DCD4(buf, v17);
                sub_1004C316C(a3, v17);
              }

              v16 = *(a1 + 56);
              v22[0] = _NSConcreteStackBlock;
              v22[1] = 3321888768;
              v22[2] = sub_10035F700;
              v22[3] = &unk_1009A71D0;
              v22[4] = v20;
              v23 = v21;
              if (v21)
              {
                atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              memcpy(v24, buf, sizeof(v24));
              sub_100191634(v25, &v30);
              dispatch_async(v16, v22);
              if (v28 == 1 && v27 < 0)
              {
                operator delete(__p);
              }

              if (v23)
              {
                sub_10000AD84(v23);
              }
            }

            if (v33 == 1 && v32 < 0)
            {
              operator delete(v31);
            }

            goto LABEL_25;
          }

          ++v9;
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_12;
        }
      }
    }

    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Client asked to stop service, but has no registered requests. Ignoring.", buf, 2u);
    }

    v12 = 1;
LABEL_25:
    std::recursive_mutex::unlock((a1 + 64));
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C31F8();
    }

    v12 = 0;
  }

  if (v21)
  {
    sub_10000AD84(v21);
  }

  return v12;
}

void sub_10035F59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (LOBYTE(STACK[0x6A8]) == 1 && SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  std::recursive_mutex::unlock(v20 + 1);
  if (a20)
  {
    sub_10000AD84(a20);
  }

  _Unwind_Resume(a1);
}

void sub_10035F614(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(v2, "Client asked to stop service with invalid ticket id.");
  v4 = 108;
  if (SHIBYTE(v3) < 0)
  {
    sub_1000056BC(&__p, v2[0], v2[1]);
  }

  else
  {
    __p = *v2;
    v6 = v3;
  }

  (*(*v1 + 112))(v1, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_10035F6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035F700(uint64_t a1)
{
  if (*(a1 + 808) == 1)
  {
    v1 = *(a1 + 776);
  }

  else
  {
    v1 = 1000;
  }

  v2 = *(a1 + 32);
  sub_10035DCD4((a1 + 48), v3);
  v5 = v1;
  if (SHIBYTE(v4) < 0)
  {
    sub_1000056BC(&__p, v3[0], v3[1]);
  }

  else
  {
    __p = *v3;
    v7 = v4;
  }

  (*(*v2 + 112))(v2, &v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_10035F7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035F80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 24))
  {
    sub_1004C3270();
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRangingManager::pushBeaconAllowlist ++", buf, 2u);
  }

  if (*(a2 + 8) == *a2)
  {
    v14[0] = NSLocalizedDescriptionKey;
    v14[1] = NSLocalizedFailureReasonErrorKey;
    v15[0] = @"Failed to push beacon allowlist.";
    v15[1] = @"To allowlist, must specify at least one beacon.";
    v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = PRErrorWithCodeAndUserInfo(107, v10);

    sub_10035F9DC(a3, v8);
  }

  else
  {
    v12 = 0;
    v7 = sub_1001E8530(a1 + 3264, a2, &v12);
    v8 = v12;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v11 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
      v9 = v8;
      if (v11)
      {
        sub_1004C3234();
        v9 = v8;
      }
    }

    sub_10035F9DC(a3, v9);
  }
}

void sub_10035F9DC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100037B10();
  }

  (*(*v3 + 48))(v3, &v4);
}

void sub_10035FA60(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v3 = sub_1001E8530(a1 + 3264, &__p, &v7);
  v4 = v7;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v6 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    v5 = v4;
    if (v6)
    {
      sub_1004C329C();
      v5 = v4;
    }
  }

  sub_10035F9DC(a2, v5);
}

uint64_t sub_10035FB3C(std::recursive_mutex *a1, uint64_t *a2)
{
  std::recursive_mutex::lock(a1 + 1);
  v4 = sub_10036E4A0(&a1[16].__m_.__opaque[40], a2);
  std::recursive_mutex::unlock(a1 + 1);
  return v4;
}

id sub_10035FBA0(std::recursive_mutex *a1, uint64_t a2)
{
  std::recursive_mutex::lock(a1 + 1);
  v4 = sub_10036E57C(&a1[16].__m_.__opaque[40], a2);
  std::recursive_mutex::unlock(a1 + 1);
  return v4;
}

id sub_10035FC04(std::recursive_mutex *a1)
{
  std::recursive_mutex::lock(a1 + 1);
  v2 = sub_10036E5E4(&a1[16].__m_.__opaque[40]);
  std::recursive_mutex::unlock(a1 + 1);
  return v2;
}

uint64_t sub_10035FC60(std::recursive_mutex *a1)
{
  std::recursive_mutex::lock(a1 + 1);
  v2 = sub_10036D864(&a1[16].__m_.__opaque[40]);
  std::recursive_mutex::unlock(a1 + 1);
  return v2;
}

uint64_t sub_10035FCBC(std::recursive_mutex *a1)
{
  std::recursive_mutex::lock(a1 + 1);
  v2 = sub_10036D958(&a1[16].__m_.__opaque[40]);
  std::recursive_mutex::unlock(a1 + 1);
  return v2;
}

uint64_t sub_10035FD38(uint64_t a1, uint64_t a2, std::string::size_type a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10046BD18(a2, __p);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    *buf = 136315394;
    v13 = v7;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Diagnostics] Client triggered log collection. Type: %s, Reason: %s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_1001E3C80(a1 + 3264, a2, a3);
}

uint64_t sub_10035FE98(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#deep-slp PRRangingManager getDeepSleepState", v4, 2u);
  }

  return sub_1001E6878(a1 + 3264);
}

void sub_10035FF18(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  kdebug_trace();
  sub_100360238(a1, *(a2 + 36), &v4);
  if (v4)
  {
    (*(*v4 + 16))(v4, a2);
    kdebug_trace();
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C32D8();
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_10036000C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100360028(uint64_t a1, __int128 *a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  v11 = a2[8];
  v12 = a2[9];
  v13 = a2[10];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  operator new();
}

void sub_100360164(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  sub_100360238(a1, *(a2 + 4), &v4);
  if (v4)
  {
    (*(*v4 + 32))(v4, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C334C();
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100360220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100360238(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, void *a3@<X8>)
{
  v7 = a2;
  std::recursive_mutex::lock((a1 + 64));
  v5 = sub_1000222CC((a1 + 232), &v7);
  if (v5)
  {
    v6 = v5[4];
    *a3 = v5[3];
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  std::recursive_mutex::unlock((a1 + 64));
}

void sub_1003602BC(uint64_t a1, unsigned __int16 *a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  sub_100360238(a1, *a2, &v4);
  if (v4)
  {
    (*(*v4 + 48))(v4, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C33C0(a2);
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_10036036C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100360384(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  sub_100360238(a1, *(a2 + 24), &v4);
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C3430((a2 + 24));
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_100360440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100360458(uint64_t a1, int *a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  v4 = *a2;
  v6 = off_1009A7630;
  v7 = v4;
  v8 = &v6;
  sub_10036050C(a1, &v6);
  return sub_100363590(&v6);
}

void sub_1003604F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100363590(va);
  _Unwind_Resume(a1);
}

void sub_10036050C(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 64));
  if (!*(a1 + 224))
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "forEachClientWithFunction but no registered clients.", v6, 2u);
    }
  }

  v5 = *(a1 + 208);
  sub_100363F1C(v7, a2);
  sub_10036168C(v5, (a1 + 216), v7, v8);
  sub_100363590(v8);
  sub_100363590(v7);
  std::recursive_mutex::unlock((a1 + 64));
}

void sub_1003605FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100363590(va);
  std::recursive_mutex::unlock(v2 + 1);
  _Unwind_Resume(a1);
}

void sub_100360620(uint64_t a1, unsigned __int16 *a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  sub_100360238(a1, *a2, &v4);
  if (v4)
  {
    (*(*v4 + 56))(v4, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C34A0(a2);
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1003606D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003606F0(uint64_t a1, unsigned __int16 *a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  sub_100360238(a1, *a2, &v4);
  if (v4)
  {
    (*(*v4 + 64))(v4, a2);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C3510(a2);
  }

  if (v5)
  {
    sub_10000AD84(v5);
  }
}

void sub_1003607A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003607C0(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  v5[0] = off_1009A76C0;
  v5[1] = a2;
  v5[3] = v5;
  sub_10036050C(a1, v5);
  return sub_100363590(v5);
}

void sub_100360858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100363590(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100360874(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  v5[0] = off_1009A7740;
  v5[1] = a2;
  v5[3] = v5;
  sub_10036050C(a1, v5);
  return sub_100363590(v5);
}

void sub_10036090C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100363590(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100360928(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  v5[0] = off_1009A77C0;
  v5[1] = a2;
  v5[3] = v5;
  sub_10036050C(a1, v5);
  return sub_100363590(v5);
}

void sub_1003609C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100363590(va);
  _Unwind_Resume(a1);
}

void sub_1003609D4(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  v4 = *(a2 + 4);
  switch(v4)
  {
    case 1:
      if ((*(a2 + 20) & 1) == 0)
      {
        sub_1004C35AC();
      }

      sub_100360AE0(a1, (a2 + 8));
      if ((*(a2 + 20) & 1) == 0)
      {
        sub_1000195BC();
      }

      sub_100360B94(a1, a2 + 8);
      break;
    case 2:
      if ((*(a2 + 56) & 1) == 0)
      {
        sub_1004C3580();
      }

      v5 = *a2;

      sub_100360CCC(a1, v5, a2 + 24);
      break;
    case 0:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "PRRangingService got unspecified service response");
  }
}

void sub_100360AE0(uint64_t a1, unsigned __int16 *a2)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  sub_100360238(a1, *a2, &v5);
  if (v5)
  {
    (*(*v5 + 88))(v5, a2);
  }

  v4 = v6;
  if (v6)
  {

    sub_10000AD84(v4);
  }
}

void sub_100360B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100360B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = v2 > 9;
  v4 = (1 << v2) & 0x390;
  if (!v3 && v4 != 0)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100004A08(__p, off_1009A7A00[*(a2 + 4)]);
      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRRangingManager::handlePossibleRequestInvalidation - %s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100360DA4(a1, *a2);
  }
}

void sub_100360CCC(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(a1 + 56));
  sub_100360238(a1, a2, &v6);
  if (v6)
  {
    (*(*v6 + 112))(v6, a3);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C35D8();
  }

  if (v7)
  {
    sub_10000AD84(v7);
  }
}

void sub_100360D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100360DA4(uint64_t a1, unsigned __int16 a2)
{
  v18 = a2;
  std::recursive_mutex::lock((a1 + 64));
  v3 = sub_1000222CC((a1 + 232), &v18);
  v4 = v3;
  if (v3)
  {
    v5 = v3[3];
    v6 = v3[4];
    *buf = v5;
    v22 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      v7 = sub_100363288((a1 + 272), buf);
      if (v7)
      {
        v10 = v7[5];
        v8 = (v7 + 5);
        v9 = v10;
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = v8;
        do
        {
          v12 = *(v9 + 26);
          v13 = v12 >= v18;
          v14 = v12 < v18;
          if (v13)
          {
            v11 = v9;
          }

          v9 = *(v9 + 8 * v14);
        }

        while (v9);
        if (v11 != v8 && v18 >= *(v11 + 13))
        {
          sub_100037488(v8 - 1, v11);
          operator delete(v11);
        }

        else
        {
LABEL_14:
          sub_100363C30((a1 + 272), buf);
        }
      }

      else
      {
        v16 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004C364C(buf, v16);
        }
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C36C8(&v18);
    }

    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 67109120;
      v20 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PRRangingManager: Speculative Cleanup - erasing ticketId (%d) from fRequestToClientMap", v19, 8u);
    }

    sub_1000237C4((a1 + 232), v4);
    sub_1001E4788(a1 + 3264);
    if (v22)
    {
      sub_10000AD84(v22);
    }
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Speculative Cleanup: no request found with ticket: %d", buf, 8u);
    }
  }

  std::recursive_mutex::unlock((a1 + 64));
}

void sub_100361004(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enumerating registered service requests", v6, 2u);
  }

  std::recursive_mutex::lock((a1 + 64));
  v5 = *(a1 + 6512);
  sub_100363A7C(v7, a2);
  (*(*v5 + 80))(v5, v7);
  sub_1001FE750(v7);
  std::recursive_mutex::unlock((a1 + 64));
}

void sub_1003610FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001FE750(va);
  std::recursive_mutex::unlock(v2 + 1);
  _Unwind_Resume(a1);
}

void sub_100361128(std::recursive_mutex *a1, unint64_t *a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client connecting.", v5, 2u);
  }

  if (*a2)
  {
    std::recursive_mutex::lock(a1 + 1);
    sub_100363B14(&a1[3].__m_.__opaque[8], a2);
    std::recursive_mutex::unlock(a1 + 1);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C3738();
  }
}

void sub_100361200(uint64_t a1, unint64_t *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C3774();
  }

  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1003612D0(a1, &v5);
    if (v6)
    {
      sub_10000AD84(v6);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C37B4();
  }
}

void sub_1003612B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003612D0(uint64_t a1, unint64_t *a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004C37F0();
  }

  if (*a2)
  {
    std::recursive_mutex::lock((a1 + 64));
    v4 = *(a1 + 216);
    if (v4)
    {
      v5 = *a2;
      v6 = (a1 + 216);
      do
      {
        v7 = v4[4];
        v8 = v7 >= v5;
        v9 = v7 < v5;
        if (v8)
        {
          v6 = v4;
        }

        v4 = v4[v9];
      }

      while (v4);
      if (v6 != (a1 + 216) && v5 >= v6[4])
      {
        sub_100363BF0((a1 + 208), v6);
        v10 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cleanup: removed from client record", buf, 2u);
        }
      }
    }

    v11 = sub_100363288((a1 + 272), a2);
    if (v11)
    {
      sub_10018AF1C(&v23, (v11 + 4));
      v12 = v23;
      if (v23 != v24)
      {
        do
        {
          v13 = *(v12 + 13);
          (*(**(a1 + 6512) + 48))(buf);
          if (v31)
          {
            sub_100362CE8();
          }

          if ((v30 & 0x100000000) == 0)
          {
            v14 = qword_1009F9820;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10035DCD4(buf, v21);
              v18 = v21;
              if (v22 < 0)
              {
                v18 = v21[0];
              }

              *v25 = 67109378;
              v26 = v13;
              v27 = 2080;
              v28 = v18;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Cleanup: Failed to unregister for service with ticket: %d. Error: %s", v25, 0x12u);
              if (v22 < 0)
              {
                operator delete(v21[0]);
              }
            }

            sub_100360DA4(a1, v13);
          }

          if (v34 == 1 && v33 < 0)
          {
            operator delete(__p);
          }

          v15 = v12[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v12[2];
              v17 = *v16 == v12;
              v12 = v16;
            }

            while (!v17);
          }

          v12 = v16;
        }

        while (v16 != v24);
      }

      sub_100021AE0((a1 + 272), v11, buf);
      sub_100362FE4(buf);
      sub_10002074C(&v23, v24[0]);
    }

    else
    {
      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *a2;
        *buf = 134217984;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cleanup: no requests found for client %p", buf, 0xCu);
      }
    }

    std::recursive_mutex::unlock((a1 + 64));
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004C3830();
  }
}

uint64_t sub_10036168C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v8 = v7[5];
      v14 = v7[4];
      v15 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(a3 + 24);
      if (!v9)
      {
        sub_100037B10();
      }

      (*(*v9 + 48))(v9, &v14);
      if (v15)
      {
        sub_10000AD84(v15);
      }

      v10 = v7[1];
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
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != a2);
  }

  return sub_100363E9C(a4, a3);
}

void sub_100361778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100361794(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_100361818(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100361818(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_10029F9AC(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10036189C();
  }

  return result;
}

void sub_100361930(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10022FCD8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10036194C(uint64_t a1, __int128 *a2, __int128 *a3, const void ***a4)
{
  *a1 = off_10099BD48;
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000056BC((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v8;
  }

  sub_100361A34((a1 + 56), a4);
  return a1;
}

void sub_100361A00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100361A34(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100361A8C(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_100361A8C(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100361818(v5, (v5 + 1), v4 + 4);
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

void *sub_100361B88(void *a1, void *a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A7340;
  sub_1000F59C8(a1 + 3, *a2, *a3);
  return a1;
}

void sub_100361C0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A7340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100361D14(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A7390;
  sub_100361E2C(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_100361DB0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A7390;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100361E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = *a4;
  *a4 = 0;
  v16 = v9;
  sub_100361F50(&v14, a5);
  v10 = a6[1];
  v12 = *a6;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002D9310(a2, a3, &v16, &v14, &v12);
  if (v13)
  {
    sub_10000AD84(v13);
  }

  if (v15)
  {
    sub_10000AD84(v15);
  }

  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_100361EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14)
{
  if (a11)
  {
    sub_10000AD84(a11);
  }

  if (a13)
  {
    sub_10000AD84(a13);
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100361F50(uint64_t *result, uint64_t *a2)
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

void sub_100361FD4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10036200C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10036203C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100362144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A7440;
  sub_100329544(a1 + 3, a2 + 8, a3 + 8, a4 + 8);
  return a1;
}

void sub_1003621CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A7440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_1003622A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A7490;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003622DC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_100362328(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100362374(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100362374(a1, *a2);
    sub_100362374(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      sub_10000AD84(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1003623D4(uint64_t a1)
{
  sub_100362410(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100362410(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100362454((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_100362454(uint64_t a1)
{
  sub_10002074C(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_10000AD84(v2);
  }
}

void *sub_100362540(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A7540;
  sub_10036265C(&v8, (a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void sub_1003625E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A7540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10036265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v8 = *a5;
  v9 = *a6;
  v10 = a7[1];
  v11 = *a7;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10018C69C(a2, a3, a4, v8, v9, &v11);
  if (v12)
  {
    sub_10000AD84(v12);
  }
}

void sub_1003626C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100362750(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009A7590;
  sub_100190E44(a1 + 3, *a2, *a3);
  return a1;
}

void sub_1003627D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A7590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}