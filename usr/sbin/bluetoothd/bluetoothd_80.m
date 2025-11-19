void *sub_1005B0A18(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_1005B0AC4(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

std::string *sub_1005B0B68(std::string *a1, const std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = &off_100AFF2A8;
  a1->__r_.__value_.__l.__size_ = 30000;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_100007E30(&a1[1], "");
  a1[2].__r_.__value_.__r.__words[0] = a1->__r_.__value_.__l.__size_;
  std::string::operator=(a1 + 1, a2);
  v12 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "ManagerStateWatchdog");
  sub_100007E30(__p, "WatchdogDuration");
  v5 = (*(*v4 + 144))(v4, buf, __p, &v12);
  if (v12)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
    if (!v6)
    {
      return a1;
    }
  }

  else if (!v6)
  {
    return a1;
  }

  v7 = v12;
  a1[2].__r_.__value_.__r.__words[0] = v12;
  v8 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding fWatchdogDuration %llu.", buf, 0xCu);
  }

  return a1;
}

void sub_1005B0D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 + 47) < 0)
  {
    operator delete(*(v21 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005B0D58(uint64_t a1)
{
  *a1 = &off_100AFF2A8;
  sub_1005B0DAC(a1);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1005B0DAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v4 = *v4;
      }

      v5 = 136315138;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ManagerStateWatchdog %s destroyed!", &v5, 0xCu);
      v1 = *(a1 + 16);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void sub_1005B0E88(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 24);
      if (*(a1 + 47) < 0)
      {
        v3 = *v3;
      }

      v4 = *(a1 + 48);
      *buf = 136315394;
      v11 = v3;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ManagerStateWatchdog %s %llu ms Armed!", buf, 0x16u);
    }

    v5 = sub_100007EE8();
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 8));
    *(a1 + 16) = v6;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1005B0FFC;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    v7 = *(a1 + 16);
    v8 = dispatch_time(0x8000000000000000, 1000000 * *(a1 + 48));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 16));
  }
}

void sub_1005B1010(uint64_t a1)
{
  v1 = a1;
  sub_1005B0DAC(a1);
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    v3 = (v1 + 24);
    if (*(v1 + 47) < 0)
    {
      v3 = *v3;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v3;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "ManagerStateWatchdog %s timer expired", &buf, 0xCu);
    v2 = qword_100BCE900;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf) = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Bad state watchdog", &buf, 2u);
  }

  if (qword_100B53FE8 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v4 = qword_100B53FE0;
    sub_100007E30(&buf, "ManagerStateWatchdog");
    sub_1005780BC(v4, &buf, (v1 + 24), 0.0);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(buf);
    }

    buf = 0uLL;
    v8 = 0;
    (**v1)(&buf, v1);
    v1 = _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v5 = _os_log_pack_fill();
    p_buf = &buf;
    if (v8 < 0)
    {
      p_buf = buf;
    }

    *v5 = 136446210;
    *(v5 + 4) = p_buf;
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
    __break(1u);
LABEL_13:
    dispatch_once(&qword_100B53FE8, &stru_100AFF2B0);
  }
}

void sub_1005B1250(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005B12C4(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = off_100AFF238;
  sub_100044BBC(a1 + 8);
  *(a1 + 72) = 0;
  *(a1 + 76) = a3;
  *a1 = off_100AFF2E0;
  *(a1 + 80) = a2;
  *(a1 + 88) = off_100AFF320;
  *(a1 + 96) = 0;
  sub_100044BBC(a1 + 104);
  *(a1 + 176) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 96) = sub_10057104C();
  return a1;
}

void sub_1005B138C(_Unwind_Exception *a1)
{
  v5 = v1[25];
  if (v5)
  {
    v1[26] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v1[23] = v6;
    operator delete(v6);
  }

  sub_10007A068(v1 + 13);
  *v1 = v2;
  sub_10007A068(v1 + 1);
  _Unwind_Resume(a1);
}

__n128 *sub_1005B13D8(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v12 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100849EA0();
  }

  v4 = off_100B508E8;
  v14 = 0;
  sub_100016250(&v14);
  *&v11 = v14;
  *(&v11 + 1) = SWORD2(v14);
  result = sub_10056B370(v4, a2, &v11, &v12 + 1, &v12);
  if (result)
  {
    v6 = result;
    v7 = (*(**(a1 + 80) + 48))(*(a1 + 80), result, &v13, HIBYTE(v12));
    v11 = 0uLL;
    sub_100007F88(&v11, a1 + 104);
    v8 = v13;
    if ((v13 & 4) != 0 && !v12)
    {
      sub_1005B1558(a1, v6);
      v8 = v13;
    }

    if ((v8 & 0x10) != 0)
    {
      sub_1005B159C(a1, v6);
    }

    sub_10000801C(&v11);
    v9 = **(a1 + 80);
    if (v7)
    {
      v10 = (v9 + 24);
    }

    else
    {
      v10 = (v9 + 32);
    }

    (*v10)();
    return sub_1000088CC(&v11);
  }

  return result;
}

void sub_1005B1558(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!sub_1000E69B8(a1 + 200, a2))
  {
    sub_1000C2484(a1 + 200, &v3);
  }
}

void sub_1005B159C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!sub_1000E69B8(a1 + 176, a2))
  {
    sub_1000C2484(a1 + 176, &v3);
  }
}

uint64_t sub_1005B15E0(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  *(a1 + 72) = 0;
  sub_1000088CC(v5);
  return (*(**(a1 + 80) + 40))(*(a1 + 80), a2);
}

uint64_t sub_1005B1654(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 104);
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 168);
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Stepping scan with mode %u", buf, 8u);
  }

  v4 = *(a1 + 168);
  if (v4 > 3)
  {
    if (v4 != 4)
    {
      if (v4 != 16)
      {
LABEL_12:
        if (*(a1 + 172))
        {
          *(a1 + 172) = 0;
        }

        else
        {
          sub_10000801C(v8);
          v6 = qword_100BCE8F0;
          if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v10 = 250;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sleeping %u ms before ending scan", buf, 8u);
          }

          j__usleep(0x3D090u);
          sub_1005B15E0(a1, 0);
        }

        return sub_1000088CC(v8);
      }

LABEL_11:
      if (sub_1005B1FD8(a1))
      {
        return sub_1000088CC(v8);
      }

      goto LABEL_12;
    }

LABEL_10:
    if (sub_1005B1828(a1))
    {
      return sub_1000088CC(v8);
    }

    goto LABEL_11;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v5 = sub_1005B1EA8(a1);
  if (v5)
  {
    sub_10000801C(v8);
    sub_1005B15E0(a1, v5);
  }

  return sub_1000088CC(v8);
}

BOOL sub_1005B1828(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(a1 + 208);
  if (v1 != v2)
  {
    v4 = *v1;
    v7 = 0;
    sub_1000216B4(&v7);
    v5 = sub_10023D470(sub_1005B211C, v4 + 128, 4, a1);
    sub_100022214(&v7);
    if (v5)
    {
      *(a1 + 168) = 128;
      sub_1005B15E0(a1, v5);
    }

    else
    {
      *(a1 + 168) = 4;
    }

    sub_10002249C(&v7);
  }

  return v1 != v2;
}

uint64_t sub_1005B18E8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100849EA0();
  }

  WORD2(v10) = WORD2(a3);
  LODWORD(v10) = a3;
  v8 = sub_1000E6554(off_100B508E8, &v10, 1);
  if (!a2)
  {
    v12 = 0;
    sub_100016250(&v12);
    *&v10 = v12;
    *(&v10 + 1) = SWORD2(v12);
    sub_100538494(v8, a4, &v10);
    (*(**(a1 + 80) + 16))(*(a1 + 80), v8);
  }

  (*(**(a1 + 80) + 48))(*(a1 + 80), v8, &v11, 0);
  v10 = 0uLL;
  sub_100007F88(&v10, a1 + 104);
  sub_10056923C((a1 + 200), v8);
  if ((v11 & 0x10) != 0)
  {
    sub_1005B159C(a1, v8);
  }

  sub_10000801C(&v10);
  sub_1005B1654(a1);
  return sub_1000088CC(&v10);
}

uint64_t sub_1005B1B04(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 104);
  sub_10056923C((a1 + 176), a2);
  sub_10000801C(v5);
  (*(**(a1 + 80) + 24))(*(a1 + 80), a2);
  sub_1005B1654(a1);
  return sub_1000088CC(v5);
}

void sub_1005B1BA4(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 8);
  v2 = *(a1 + 72);
  sub_1000088CC(v3);
  if (v2)
  {
    sub_1000D660C();
  }

  else
  {
    sub_1005AF1D0(a1);
    sub_1005B1654(a1);
  }
}

uint64_t sub_1005B1C04(uint64_t a1)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 104);
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 168);
    *buf = 67109120;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping scan with mode %u", buf, 8u);
  }

  v4 = *(a1 + 168);
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v11 = *(a1 + 200);
      if (v11 != *(a1 + 208))
      {
        v12 = *v11;
        *(a1 + 208) = v11;
        *(a1 + 168) = 128;
        sub_10000801C(v21);
        buf[0] = 0;
        sub_1000216B4(buf);
        sub_10023D538(v12 + 128, v13, v14, v15, v16, v17, v18, v19);
        sub_100022214(buf);
        goto LABEL_15;
      }
    }

    else if (v4 == 16)
    {
      *(a1 + 184) = *(a1 + 176);
      *(a1 + 168) = 128;
      sub_10000801C(v21);
      if (qword_100B54670 != -1)
      {
        sub_100849EB4();
      }

      sub_100587EFC();
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      *(a1 + 168) = 128;
      sub_10000801C(v21);
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_100242444(sub_1005B1E00, a1, v5, v6, v7, v8, v9, v10);
      sub_100022214(buf);
LABEL_15:
      sub_10002249C(buf);
    }
  }

  else
  {
    *(a1 + 168) = 128;
  }

  return sub_1000088CC(v21);
}

void sub_1005B1E00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }
}

uint64_t sub_1005B1EA8(uint64_t a1)
{
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109376;
    v7[1] = 4;
    v8 = 1024;
    v9 = 4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Scanning for %u scan periods (%u x 1.28s)", v7, 0xEu);
  }

  LOBYTE(v7[0]) = 0;
  sub_1000216B4(v7);
  v5 = sub_1002423A8(10390323, 4, 64, sub_1005B2060, sub_1005B1E00, a1, v3, v4);
  if (!v5)
  {
    *(a1 + 168) = 1;
  }

  sub_10002249C(v7);
  return v5;
}

BOOL sub_1005B1FD8(uint64_t a1)
{
  v1 = *(a1 + 176);
  v2 = *(a1 + 184);
  if (v1 != v2)
  {
    v3 = *v1;
    *(a1 + 168) = 16;
    if (qword_100B54670 != -1)
    {
      sub_100849EDC();
    }

    sub_100587D6C(qword_100B54668, v3);
  }

  *(a1 + 168) = 128;
  return v1 != v2;
}

uint64_t sub_1005B2060(uint64_t result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1005B211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

uint64_t sub_1005B21F4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFF348;
  *(a1 + 16) = a2;
  v4 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v4;
  if (*(a3 + 2))
  {
    v6 = malloc_type_malloc(0xF0uLL, 0x100004077774924uLL);
    *(a1 + 40) = v6;
    v7 = *(a3 + 2);
    v8 = *v7;
    v9 = v7[2];
    v6[1] = v7[1];
    v6[2] = v9;
    *v6 = v8;
    v10 = v7[3];
    v11 = v7[4];
    v12 = v7[6];
    v6[5] = v7[5];
    v6[6] = v12;
    v6[3] = v10;
    v6[4] = v11;
    v13 = v7[7];
    v14 = v7[8];
    v15 = v7[10];
    v6[9] = v7[9];
    v6[10] = v15;
    v6[7] = v13;
    v6[8] = v14;
    v16 = v7[11];
    v17 = v7[12];
    v18 = v7[14];
    v6[13] = v7[13];
    v6[14] = v18;
    v6[11] = v16;
    v6[12] = v17;
  }

  else
  {
    *(a1 + 40) = 0;
  }

  return a1;
}

__n128 *sub_1005B22C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  return sub_1005B13D8(v1, &v3);
}

uint64_t sub_1005B2310(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    return sub_1005B15E0(v2, v3);
  }

  else
  {
    return sub_1005B1654(v2);
  }
}

uint64_t sub_1005B2328(uint64_t a1, uint64_t a2, int a3, int *a4, std::string::value_type *__s)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFF380;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (a4)
  {
    v6 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 28) = v6;
  }

  if (__s)
  {
    std::string::assign((a1 + 40), __s);
  }

  return a1;
}

void sub_1005B23B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B23CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 28) | (*(a1 + 32) << 32);
  if (*(a1 + 63) < 0)
  {
    sub_100008904(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v5 = *(a1 + 56);
  }

  sub_1005B18E8(v1, v2, v3 & 0xFFFFFFFFFFFFLL, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005B2454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005B2470(void *a1)
{
  *a1 = off_100AFF348;
  v2 = a1[5];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1005B24BC(void *a1)
{
  *a1 = off_100AFF348;
  v1 = a1[5];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1005B2558(uint64_t a1)
{
  *a1 = off_100AFF380;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_1005B25A8(uint64_t a1)
{
  *a1 = off_100AFF380;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  operator delete();
}

void *sub_1005B2618(void *a1)
{
  *a1 = off_100AFF2E0;
  a1[11] = off_100AFF320;
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  v3 = a1[22];
  if (v3)
  {
    a1[23] = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 13);
  *a1 = off_100AFF238;
  sub_10007A068(a1 + 1);
  return a1;
}

void sub_1005B26C4(void *a1)
{
  *a1 = off_100AFF2E0;
  a1[11] = off_100AFF320;
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  v3 = a1[22];
  if (v3)
  {
    a1[23] = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 13);
  *a1 = off_100AFF238;
  sub_10007A068(a1 + 1);

  operator delete();
}

uint64_t sub_1005B2798(void *a1)
{
  *(a1 - 11) = off_100AFF2E0;
  *a1 = off_100AFF320;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 2);
  *(a1 - 11) = off_100AFF238;

  return sub_10007A068(a1 - 10);
}

void sub_1005B284C(void *a1)
{
  *(a1 - 11) = off_100AFF2E0;
  *a1 = off_100AFF320;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 2);
  *(a1 - 11) = off_100AFF238;
  sub_10007A068(a1 - 10);

  operator delete();
}

const char *sub_1005B29E8(uint64_t a1, int a2)
{
  if ((a2 - 1) > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_100AFF570[a2 - 1];
  }
}

id sub_1005B2A18(void *a1)
{
  count = xpc_array_get_count(a1);
  v3 = 8 * count;
  __chkstk_darwin(count, v4);
  bzero(applier - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1005B3434;
  applier[3] = &unk_100AEE500;
  applier[4] = applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  xpc_array_apply(a1, applier);
  v5 = [[NSArray alloc] initWithObjects:applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  if (count)
  {
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  return v5;
}

void sub_1005B2B60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    do
    {

      v1 -= 8;
    }

    while (v1);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sub_1005B2B90(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  __chkstk_darwin();
  v4 = (v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v4, v3);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005B3478;
  v7[3] = &unk_100AFF510;
  v7[4] = v4;
  [v1 enumerateObjectsUsingBlock:v7];
  for (i = xpc_array_create(v4, v2); v2; --v2)
  {
    xpc_release(*v4++);
  }

  return i;
}

void sub_1005B2CE4(uint64_t a1, int64_t a2, xpc_object_t xdict, int a4)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v8 = value;
    xpc_dictionary_set_int64(value, "kCBMsgArgResult", a4);

    sub_10004DFB8(a1, a2, v8, 0);
  }
}

void sub_1005B2D6C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (*(a1 + 140) != a3)
  {
    v11 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v12 = *v12;
      }

      v17 = 67109378;
      *v18 = a2;
      *&v18[4] = 2082;
      *&v18[6] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending 'power updated' event with state %d to session %{public}s", &v17, 0x12u);
    }

    *(a1 + 140) = a3;
    xpc_dictionary_set_int64(v7, "kCBMsgArgBTPowerState", a3);
    v9 = (a1 + 136);
    v13 = *(a1 + 136);
    if (v13 == 2 || v13 == a2)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v9 = (a1 + 136);
  v8 = *(a1 + 136);
  if (v8 != 2 && v8 != a2)
  {
LABEL_16:
    v14 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 - 1 > 9)
      {
        v15 = "Unknown";
      }

      else
      {
        v15 = off_100AFF570[a2 - 1];
      }

      v16 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v16 = *v16;
      }

      v17 = 136446466;
      *v18 = v15;
      *&v18[8] = 2082;
      *&v18[10] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending 'state updated' event with state %{public}s to session %{public}s", &v17, 0x16u);
    }

    *v9 = a2;
    xpc_dictionary_set_int64(v7, "kCBMsgArgState", a2);
LABEL_24:
    sub_10004DFB8(a1, 6, v7, 1);
    return;
  }

  xpc_release(v6);
}

void sub_1005B2FA8(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 5;
  }

  sub_100063710(a1, v2);
}

void sub_1005B2FB8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  *uuid = 0;
  v7 = 0;
  [v4 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(a2, "kCBMsgArgDeviceUUID", uuid);
  if (qword_100B541E8 != -1)
  {
    sub_10084A16C();
  }

  v5 = sub_1000503B8(qword_100B541E0, v4);
  xpc_dictionary_set_int64(a2, "kCBMsgArgATTMTU", v5);
}

xpc_object_t sub_1005B308C(unsigned __int8 **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  __chkstk_darwin();
  v6 = (&bytes[-1] - v5);
  bzero(&bytes[-1] - v5, v7);
  if (v4 == v3)
  {
    return xpc_array_create(v6, 0);
  }

  v8 = 0;
  do
  {
    if (sub_1005B35B0(a2, v3) != 1)
    {
      bytes[0] = 0;
      bytes[1] = 0;
      v9 = sub_10007A930(v3, bytes);
      v6[v8++] = xpc_data_create(bytes, v9);
    }

    v3 += 20;
  }

  while (v3 != v4);
  v10 = xpc_array_create(v6, v8);
  if (v8)
  {
    v11 = v6 - 1;
    do
    {
      xpc_release(v11[v8--]);
    }

    while (v8);
  }

  return v10;
}

xpc_object_t sub_1005B31CC(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  __chkstk_darwin(v2, 8 * v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, v3);
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v17 = 0u;
  v5 = v1;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v16[1] = v16;
  v7 = 0;
  if (v6)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 length];
        v13 = v16 - ((__chkstk_darwin(v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v13, v11);
        [v10 getBytes:v13 length:v11];
        *&v4[8 * v7] = xpc_data_create(v13, v11);

        ++v7;
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = xpc_array_create(v4, [v5 count]);
  while (v7)
  {
    xpc_release(*&v4[8 * v7-- - 8]);
  }

  return v14;
}

uint64_t sub_1005B3434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000527A8(a3);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = v5;

  return 1;
}

void sub_1005B3478(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(*(a1 + 32) + 8 * a3) = sub_1000531D4();
}

uint64_t sub_1005B35B0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if (!sub_10007C3A8(a2, v2 + 28))
      {
        if (!sub_10007C3A8(v2 + 28, a2))
        {
          return v4;
        }

        v2 += 8;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_1005B3618(uint64_t a1)
{
  *a1 = off_100AFF5D0;
  v3 = *(a1 + 72);
  v2 = *(a1 + 80);
  while (v3 != v2)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
      v2 = *(a1 + 80);
    }

    ++v3;
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  sub_10000CEDC(a1 + 96, *(a1 + 104));
  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  sub_10007A068(a1 + 8);
  return a1;
}

void sub_1005B36D4(uint64_t a1)
{
  sub_1005B3618(a1);

  operator delete();
}

uint64_t sub_1005B370C(uint64_t a1, unsigned __int8 **a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 8);
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v5 == v4)
  {
LABEL_8:
    v9 = 0;
  }

  else
  {
    v6 = a2[1];
    while (1)
    {
      v7 = *a2;
      if (*a2 != v6)
      {
        break;
      }

LABEL_7:
      if (++v5 == v4)
      {
        goto LABEL_8;
      }
    }

    while (1)
    {
      v8 = *v5;
      v13 = *(*v5 + 72);
      v14 = *(v8 + 88);
      sub_10000D03C(&v12, &v13);
      if (sub_10004E15C(&v12, v7))
      {
        break;
      }

      v7 += 20;
      v6 = a2[1];
      if (v7 == v6)
      {
        v4 = *(a1 + 80);
        goto LABEL_7;
      }
    }

    v9 = 1;
  }

  sub_1000088CC(v11);
  return v9;
}

uint64_t sub_1005B381C(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 8);
  for (i = *(a1 + 72); i != *(a1 + 80); i += 8)
  {
    v6 = (*(**i + 16))();
    sub_1000C2484(a2, &v6);
  }

  return sub_1000088CC(v7);
}

void sub_1005B38B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B38CC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 8);
  v22 = 0;
  sub_1000216B4(&v22);
  v6 = sub_1001C4500();
  if ((v6 & 1) == 0)
  {
    sub_100022214(&v22);
  }

  if (*(a1 + 144))
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  if (v7 != v8)
  {
    while (!sub_10004E15C(v7, a2))
    {
      v7 += 20;
      if (v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v8 = *(a1 + 128);
  }

  if (v7 != v8)
  {
LABEL_11:
    for (i = *(a1 + 72); i != *(a1 + 80); ++i)
    {
      if (a2)
      {
        v10 = *i;
        *buf = *(*i + 72);
        LODWORD(v27) = *(v10 + 88);
        sub_10000D03C(&v41, buf);
        if (!sub_10004E15C(v11, a2))
        {
          continue;
        }
      }

      *buf = (*(**i + 16))();
      sub_1000C2484(a3, buf);
      if (v6)
      {
        v39 = 0u;
        memset(v40, 0, sizeof(v40));
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        *buf = 0u;
        *&buf[1] = *(a1 + 146);
        v12 = *i;
        v13 = *(*i + 8);
        buf[3] = *v13;
        buf[4] = *(v13 + 1);
        *&buf[5] = *(v12 + 48);
        v14 = *(v13 + 4);
        v42 = *(v13 + 20);
        v41 = v14;
        sub_10000D03C(&v25, &v41);
        buf[7] = v25.n128_u8[4];
        v15 = *(*i + 8);
        v16 = *(v15 + 20);
        v41 = *(v15 + 4);
        v42 = v16;
        sub_10000D03C(&v25, &v41);
        buf[8] = v25.n128_u8[5];
        __src[0] = 0;
        __src[1] = 0;
        v17 = *i;
        v41 = *(*i + 72);
        v42 = *(v17 + 88);
        sub_10000D03C(&v25, &v41);
        v18 = sub_10007A930(&v25, __src);
        buf[9] = v18;
        memcpy(&buf[10], __src, v18);
        sub_1001C4D74(buf, v18 + 10, 5);
      }
    }

    v19 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Cached service hit!", buf, 2u);
    }

    v20 = 0;
  }

  else
  {
LABEL_20:
    v20 = 1;
  }

  sub_10002249C(&v22);
  sub_1000088CC(v23);
  return v20;
}

void sub_1005B3BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B3BF0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 8);
  for (i = *(a1 + 72); ; ++i)
  {
    if (i == *(a1 + 80))
    {
      goto LABEL_10;
    }

    v9 = *i;
    if (**(*i + 8) == a2 && *(v9 + 48) == a3)
    {
      break;
    }
  }

  if (*(v9 + 128) != 1)
  {
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_100007F20(&__p, (v9 + 104));
  for (j = __p; j != v16; j += 8)
  {
    v14 = (*(**j + 16))();
    sub_1000C2484(a4, &v14);
  }

  v13 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Cached service hit!", &v14, 2u);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  v11 = 0;
LABEL_11:
  sub_1000088CC(v18);
  return v11;
}

uint64_t sub_1005B3D78(uint64_t a1, unsigned __int8 *a2, int a3, int a4, void *a5)
{
  v37[0] = 0;
  v37[1] = 0;
  sub_100007F88(v37, a1 + 8);
  v36 = 0;
  sub_1000216B4(&v36);
  v10 = sub_1001C4500();
  if ((v10 & 1) == 0)
  {
    sub_100022214(&v36);
  }

  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  if (v11 == v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v13 = *v11;
    if (**(*v11 + 8) == a3 && *(v13 + 48) == a4)
    {
      break;
    }

    if (++v11 == v12)
    {
      goto LABEL_7;
    }
  }

  v16 = *(v13 + 160);
  if (a2)
  {
    v17 = *(v13 + 168);
    v18 = *(v13 + 176);
    if (v17 != v18)
    {
      while (!sub_10004E15C(v17, a2))
      {
        v17 += 20;
        if (v17 == v18)
        {
          v17 = v18;
          break;
        }
      }

      v18 = *(v13 + 176);
    }

    if (v17 != v18 || (v16 & 1) != 0)
    {
      goto LABEL_19;
    }

LABEL_7:
    v14 = 1;
    goto LABEL_8;
  }

  if (!*(v13 + 160))
  {
    goto LABEL_7;
  }

LABEL_19:
  v19 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Cached characteristics hit!", buf, 2u);
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  sub_100007F20(&__p, (v13 + 136));
  v20 = __p;
  if (__p == v34)
  {
LABEL_29:
    v30 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Cached service hit!", buf, 2u);
    }

    v14 = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v21 = *v20;
    if (!a2)
    {
      break;
    }

    *buf = *(v21 + 76);
    LODWORD(v41) = *(v21 + 92);
    sub_10000D03C(&v55, buf);
    if (sub_10004E15C(v22, a2))
    {
      break;
    }

LABEL_28:
    v20 += 8;
    if (v20 == v34)
    {
      goto LABEL_29;
    }
  }

  v23 = *(v21 + 96);
  if (!v23 || !sub_10000D26C(v23 + 72))
  {
    *buf = (*(**v20 + 16))();
    sub_1000C2484(a5, buf);
    if (v10)
    {
      v53 = 0u;
      memset(v54, 0, sizeof(v54));
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      *buf = 0u;
      *&buf[1] = *(a1 + 146);
      buf[3] = **(*v20 + 8);
      buf[4] = *(*(*v20 + 8) + 1);
      buf[5] = *(*v20 + 74);
      buf[6] = *(*v20 + 75);
      v24 = *(*v20 + 8);
      v25 = *(v24 + 20);
      v55 = *(v24 + 4);
      v56 = v25;
      sub_10000D03C(&v39, &v55);
      buf[7] = v39.n128_u8[4];
      v26 = *(*v20 + 8);
      v27 = *(v26 + 20);
      v55 = *(v26 + 4);
      v56 = v27;
      sub_10000D03C(&v39, &v55);
      buf[8] = v39.n128_u8[5];
      __src[0] = 0;
      __src[1] = 0;
      v28 = *v20;
      v55 = *(*v20 + 76);
      v56 = *(v28 + 92);
      sub_10000D03C(&v39, &v55);
      v29 = sub_10007A930(&v39, __src);
      buf[9] = v29;
      memcpy(&buf[10], __src, v29);
      sub_1001C4D74(buf, v29 + 10, 6);
    }

    goto LABEL_28;
  }

  v31 = *a5;
  v32 = a5[1];
  if (*a5 != v32)
  {
    do
    {
      if (*v31)
      {
        (*(**v31 + 8))(*v31);
      }

      ++v31;
    }

    while (v31 != v32);
    v31 = *a5;
  }

  a5[1] = v31;
  v14 = 910;
LABEL_32:
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

LABEL_8:
  sub_10002249C(&v36);
  sub_1000088CC(v37);
  return v14;
}

void sub_1005B4184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_10002249C(&a16);
  sub_1000088CC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B41E8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 8);
  v9 = *(a1 + 104);
  v8 = a1 + 104;
  v7 = v9;
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = a2 - 2;
  v11 = v8;
  do
  {
    v12 = *(v7 + 32);
    v13 = v12 >= v10;
    v14 = v12 < v10;
    if (v13)
    {
      v11 = v7;
    }

    v7 = *(v7 + 8 * v14);
  }

  while (v7);
  if (v11 != v8 && *(v11 + 32) <= v10 && (v15 = *(*(v11 + 40) + 8), v16 = *(v15 + 20), *buf = *(v15 + 4), LODWORD(v24) = v16, sub_10000D03C(&v25, buf), *buf = xmmword_1008AA5E4, LODWORD(v24) = 0, sub_10004E15C(&v25, buf)) && (v17 = *(v11 + 40), *(v17 + 128) == 1))
  {
    v18 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Cached descriptors hit!", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    v24 = 0;
    sub_100007F20(buf, (v17 + 104));
    v19 = *buf;
    if (*buf != *&buf[8])
    {
      do
      {
        v25.n128_u64[0] = (*(**v19 + 16))();
        sub_1000C2484(a4, &v25);
        v19 += 8;
      }

      while (v19 != *&buf[8]);
      v19 = *buf;
    }

    if (v19)
    {
      *&buf[8] = v19;
      operator delete(v19);
    }

    v20 = 0;
  }

  else
  {
LABEL_19:
    v20 = 1;
  }

  sub_1000088CC(v22);
  return v20;
}

uint64_t sub_1005B4400(uint64_t a1, __int128 *a2, uint64_t **a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 8);
  for (i = *a3; i != a3[1]; ++i)
  {
    v14 = 0uLL;
    v15 = 0;
    v7 = *(*i + 8);
    v8 = *(v7 + 20);
    v16 = *(v7 + 4);
    v17 = v8;
    sub_10000D03C(&v14, &v16);
    v16 = xmmword_1008AA5F8;
    v17 = 0;
    if (!sub_10004E15C(&v14, &v16))
    {
      v9 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
      {
        sub_10084A194(v12, &v13, v9);
      }
    }

    v17 = 0;
    v16 = xmmword_1008AA5F8;
    if (sub_10004E15C(&v14, &v16))
    {
      sub_1005B4598(a1, *i);
    }
  }

  if (a2 && (*(a1 + 144) & 1) == 0)
  {
    sub_10000CDB8((a1 + 120), a2);
  }

  else
  {
    *(a1 + 144) = 1;
  }

  return sub_1000088CC(v11);
}

void sub_1005B4578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B4598(void *a1, uint64_t a2)
{
  v40[0] = 0;
  v40[1] = 0;
  sub_100007F88(v40, (a1 + 1));
  v5 = a1 + 13;
  v4 = a1[13];
  v6 = (a2 + 8);
  v7 = **(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v8 = a1 + 13;
  do
  {
    v9 = *(v4 + 32);
    v10 = v9 >= v7;
    v11 = v9 < v7;
    if (v10)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * v11);
  }

  while (v4);
  if (v8 == v5 || v7 < *(v8 + 16))
  {
LABEL_9:
    v8 = a1 + 13;
  }

  v14 = a1[9];
  v12 = a1[10];
  v13 = a1 + 9;
  if (v14 == v12)
  {
LABEL_14:
    v17 = 0;
  }

  else
  {
    v15 = a1[9];
    while (1)
    {
      v16 = *v15;
      if (**(*v15 + 8) == v7)
      {
        break;
      }

      v15 += 8;
      v14 += 8;
      if (v15 == v12)
      {
        goto LABEL_14;
      }
    }

    if (*(v16 + 48) == *(a2 + 48))
    {
      *&v42.__r_.__value_.__l.__data_ = *(v16 + 72);
      LODWORD(v42.__r_.__value_.__r.__words[2]) = *(v16 + 88);
      sub_10000D03C(&__p, &v42);
      *&v42.__r_.__value_.__l.__data_ = *(a2 + 72);
      LODWORD(v42.__r_.__value_.__r.__words[2]) = *(a2 + 88);
      sub_10000D03C(buf, &v42);
      if (sub_10004E15C(&__p, buf))
      {
        v17 = 1;
LABEL_36:
        if (v17 && v8 == v5 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
        {
          sub_1006E3698(a2, &v42);
          sub_10084A258();
        }

        return sub_1000088CC(v40);
      }
    }

    v18 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1006E3698(*v15, &v42);
      v36 = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
      v37 = v42.__r_.__value_.__r.__words[0];
      sub_1006E3698(a2, &__p);
      v38 = &v42;
      if (v36 < 0)
      {
        v38 = v37;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      v44 = v38;
      v45 = 2082;
      v46 = p_p;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Service changed while cached (was: %{public}s, now: %{public}s) - removing it", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    sub_1005B6FFC(a1, v14);
    v17 = 1;
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = v19;
  v22 = a1[10];
  v21 = a1[11];
  if (v22 >= v21)
  {
    v24 = (v22 - *v13) >> 3;
    if ((v24 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v25 = v21 - *v13;
    v26 = v25 >> 2;
    if (v25 >> 2 <= (v24 + 1))
    {
      v26 = v24 + 1;
    }

    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      v27 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v26;
    }

    if (v27)
    {
      sub_100008108((a1 + 9), v27);
    }

    v28 = (8 * v24);
    *v28 = v19;
    v23 = 8 * v24 + 8;
    v29 = a1[9];
    v30 = a1[10] - v29;
    v31 = v28 - v30;
    memcpy(v28 - v30, v29, v30);
    v32 = a1[9];
    a1[9] = v31;
    a1[10] = v23;
    a1[11] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v22 = v19;
    v23 = (v22 + 1);
  }

  a1[10] = v23;
  LOWORD(__p.__r_.__value_.__l.__data_) = **v6;
  v42.__r_.__value_.__r.__words[0] = &__p;
  sub_1003750BC((a1 + 12), &__p)[5] = v20;
  if (v8 == v5)
  {
    v33 = 1;
  }

  else
  {
    v33 = v17;
  }

  if (v33)
  {
    goto LABEL_36;
  }

  v34 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
  {
    sub_10084A1D8(v6, v34);
  }

  LOWORD(v42.__r_.__value_.__l.__data_) = **v6;
  sub_100480E04((a1 + 12), &v42);
  return sub_1000088CC(v40);
}

uint64_t sub_1005B49CC(void *a1, uint64_t **a2, unsigned int a3, unsigned int a4)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, (a1 + 1));
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      v10 = *v8;
      v25 = 0uLL;
      v26 = 0;
      v11 = *(v10 + 8);
      v12 = *(v11 + 20);
      *buf = *(v11 + 4);
      v28 = v12;
      sub_10000D03C(&v25, buf);
      *buf = xmmword_1008AA60C;
      v28 = 0;
      if (!sub_10004E15C(&v25, buf))
      {
        v13 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
        {
          sub_10084A2AC(v23, &v24, v13);
        }
      }

      v28 = 0;
      *buf = xmmword_1008AA60C;
      if (sub_10004E15C(&v25, buf))
      {
        sub_1005B4CFC(a1, v10);
        for (i = a1[9]; ; i += 8)
        {
          if (i == a1[10])
          {
            v15 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Adding New Service Declaration For An Recently Discovered Included Service", buf, 2u);
            }

            v21 = 0uLL;
            v22 = 0;
            *buf = *(v10 + 76);
            v28 = *(v10 + 92);
            sub_10000D03C(&v21, buf);
            operator new();
          }

          if (**(*i + 8) == *(v10 + 72))
          {
            break;
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }

  v16 = a1[9];
  for (j = a1[10]; v16 != j; ++v16)
  {
    v18 = *v16;
    if (**(*v16 + 8) >= a3 && *(v18 + 48) <= a4)
    {
      *(v18 + 128) = 1;
    }
  }

  return sub_1000088CC(v20);
}

uint64_t sub_1005B4CFC(void *a1, uint64_t a2)
{
  v49[0] = 0;
  v49[1] = 0;
  sub_100007F88(v49, (a1 + 1));
  v5 = a1 + 13;
  v4 = a1[13];
  v6 = **(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v7 = a1 + 13;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v6 < *(v7 + 16))
  {
LABEL_9:
    v7 = a1 + 13;
  }

  v11 = (a1 + 12);
  v13 = a1[9];
  v12 = a1[10];
  while (v13 != v12 && (v6 <= *(*v13)[1] || v6 > *(*v13 + 24)))
  {
    ++v13;
  }

  v14 = qword_100BCE910;
  if (v13 != v12)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      sub_1006E3698(*v13, &v48);
      v15 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
      v16 = v48.__r_.__value_.__r.__words[0];
      sub_1006E3698(a2, &__p);
      v17 = &v48;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
      *(buf.__r_.__value_.__r.__words + 4) = v17;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found service %{public}s for included service %{public}s", &buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }
    }

    memset(&v48, 0, sizeof(v48));
    sub_100007F20(&v48, *v13 + 13);
    v19 = v48.__r_.__value_.__r.__words[0];
    if (v48.__r_.__value_.__r.__words[0] == v48.__r_.__value_.__l.__size_)
    {
LABEL_29:
      v21 = 0;
    }

    else
    {
      while (1)
      {
        v20 = *v19;
        if (**(*v19 + 8) == **(a2 + 8))
        {
          break;
        }

        if (++v19 == v48.__r_.__value_.__l.__size_)
        {
          goto LABEL_29;
        }
      }

      if (*(v20 + 72) == *(a2 + 72) && *(v20 + 74) == *(a2 + 74))
      {
        *&__p.__r_.__value_.__l.__data_ = *(v20 + 76);
        LODWORD(__p.__r_.__value_.__r.__words[2]) = *(v20 + 92);
        sub_10000D03C(&buf, &__p);
        *&__p.__r_.__value_.__l.__data_ = *(a2 + 76);
        LODWORD(__p.__r_.__value_.__r.__words[2]) = *(a2 + 92);
        sub_10000D03C(v51, &__p);
        if (sub_10004E15C(&buf, v51))
        {
          v21 = 1;
LABEL_53:
          if (v48.__r_.__value_.__r.__words[0])
          {
            v48.__r_.__value_.__l.__size_ = v48.__r_.__value_.__r.__words[0];
            operator delete(v48.__r_.__value_.__l.__data_);
          }

          goto LABEL_55;
        }
      }

      v22 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_1006E3698(*v19, &__p);
        v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v45 = __p.__r_.__value_.__r.__words[0];
        sub_1006E3698(a2, &buf);
        v46 = &__p;
        if (v44 < 0)
        {
          v46 = v45;
        }

        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v51 = 136446466;
        v52 = v46;
        v53 = 2082;
        v54 = p_buf;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Included service changed while cached (was: %{public}s, now: %{public}s) - removing it", v51, 0x16u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      LOWORD(__p.__r_.__value_.__l.__data_) = **(a2 + 8);
      sub_100480E04((v5 - 1), &__p);
      sub_1003B3424(*v13, *v19);
      v21 = 1;
    }

    v23 = (*(*a2 + 16))(a2);
    v24 = v23;
    v25 = *v13;
    v27 = (*v13)[14];
    v26 = (*v13)[15];
    if (v27 >= v26)
    {
      v29 = v25[13];
      v30 = (v27 - v29) >> 3;
      if ((v30 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v31 = v26 - v29;
      v32 = v31 >> 2;
      if (v31 >> 2 <= (v30 + 1))
      {
        v32 = v30 + 1;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        sub_100008108((v25 + 13), v33);
      }

      *(8 * v30) = v23;
      v28 = 8 * v30 + 8;
      v34 = v25[13];
      v35 = v25[14] - v34;
      v36 = (8 * v30 - v35);
      memcpy(v36, v34, v35);
      v37 = v25[13];
      v25[13] = v36;
      v25[14] = v28;
      v25[15] = 0;
      if (v37)
      {
        operator delete(v37);
      }

      v11 = (v5 - 1);
    }

    else
    {
      *v27 = v23;
      v28 = (v27 + 1);
    }

    v25[14] = v28;
    LOWORD(buf.__r_.__value_.__l.__data_) = **(a2 + 8);
    __p.__r_.__value_.__r.__words[0] = &buf;
    sub_1003750BC(v11, &buf)[5] = v24;
    goto LABEL_53;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1006E3698(a2, &v48);
    sub_10084A2F0();
  }

  v21 = 0;
LABEL_55:
  if ((v21 & 1) != 0 || v7 == v5)
  {
    if (v7 == v5)
    {
      v41 = v21;
    }

    else
    {
      v41 = 0;
    }

    if (v41 == 1 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_1006E3698(a2, &__p);
      sub_10084A344();
    }
  }

  else
  {
    v38 = qword_100BCE910;
    v39 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT);
    v40 = *(a2 + 8);
    if (v39)
    {
      v43 = *v40;
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v43;
      _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "Found orphaned handle 0x%04x in handle map", &__p, 8u);
      v40 = *(a2 + 8);
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = *v40;
    sub_100480E04(v11, &__p);
  }

  return sub_1000088CC(v49);
}

void sub_1005B528C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B5314(void *a1, __int128 *a2, uint64_t **a3, unsigned int a4, unsigned int a5)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, (a1 + 1));
  for (i = *a3; i != a3[1]; ++i)
  {
    v21 = 0uLL;
    v22 = 0;
    v11 = *(*i + 8);
    v12 = *(v11 + 20);
    v23 = *(v11 + 4);
    v24 = v12;
    sub_10000D03C(&v21, &v23);
    v23 = xmmword_1008AA5E4;
    v24 = 0;
    if (!sub_10004E15C(&v21, &v23))
    {
      v13 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
      {
        sub_10084A398(v19, &v20, v13);
      }
    }

    v24 = 0;
    v23 = xmmword_1008AA5E4;
    if (sub_10004E15C(&v21, &v23))
    {
      sub_1005B54F0(a1, *i);
    }
  }

  v15 = a1[9];
  for (j = a1[10]; v15 != j; ++v15)
  {
    v16 = *v15;
    if (**(*v15 + 8) >= a4 && *(v16 + 48) <= a5)
    {
      if (a2)
      {
        sub_10000CDB8((v16 + 168), a2);
        j = a1[10];
      }

      else
      {
        *(v16 + 160) = 1;
      }
    }
  }

  return sub_1000088CC(v18);
}

void sub_1005B54D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B54F0(void *a1, uint64_t a2)
{
  v49[0] = 0;
  v49[1] = 0;
  sub_100007F88(v49, (a1 + 1));
  v5 = a1 + 13;
  v4 = a1[13];
  v6 = **(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v7 = a1 + 13;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v6 < *(v7 + 16))
  {
LABEL_9:
    v7 = a1 + 13;
  }

  v11 = (a1 + 12);
  v13 = a1[9];
  v12 = a1[10];
  while (v13 != v12 && (v6 <= *(*v13)[1] || v6 > *(*v13 + 24)))
  {
    ++v13;
  }

  v14 = qword_100BCE910;
  if (v13 != v12)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      sub_1006E3698(*v13, &v48);
      v15 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
      v16 = v48.__r_.__value_.__r.__words[0];
      sub_1006E3698(a2, &__p);
      v17 = &v48;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
      *(buf.__r_.__value_.__r.__words + 4) = v17;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found service %{public}s for characteristic %{public}s", &buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }
    }

    memset(&v48, 0, sizeof(v48));
    sub_100007F20(&v48, *v13 + 17);
    v19 = v48.__r_.__value_.__r.__words[0];
    if (v48.__r_.__value_.__r.__words[0] == v48.__r_.__value_.__l.__size_)
    {
LABEL_29:
      v21 = 0;
    }

    else
    {
      while (1)
      {
        v20 = *v19;
        if (**(*v19 + 8) == **(a2 + 8))
        {
          break;
        }

        if (++v19 == v48.__r_.__value_.__l.__size_)
        {
          goto LABEL_29;
        }
      }

      if (*(v20 + 74) == *(a2 + 74))
      {
        *&__p.__r_.__value_.__l.__data_ = *(v20 + 76);
        LODWORD(__p.__r_.__value_.__r.__words[2]) = *(v20 + 92);
        sub_10000D03C(&buf, &__p);
        *&__p.__r_.__value_.__l.__data_ = *(a2 + 76);
        LODWORD(__p.__r_.__value_.__r.__words[2]) = *(a2 + 92);
        sub_10000D03C(v51, &__p);
        if (sub_10004E15C(&buf, v51) && *(*v19 + 72) == *(a2 + 72))
        {
          v21 = 1;
LABEL_53:
          if (v48.__r_.__value_.__r.__words[0])
          {
            v48.__r_.__value_.__l.__size_ = v48.__r_.__value_.__r.__words[0];
            operator delete(v48.__r_.__value_.__l.__data_);
          }

          goto LABEL_55;
        }
      }

      v22 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_1006E3698(*v19, &__p);
        v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v47 = __p.__r_.__value_.__r.__words[0];
        sub_1006E3698(a2, &buf);
        v45 = &__p;
        if (v44 < 0)
        {
          v45 = v47;
        }

        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v51 = 136446466;
        v52 = v45;
        v53 = 2082;
        v54 = p_buf;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Characteristic changed while cached (was: %{public}s, now: %{public}s) - removing it", v51, 0x16u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      sub_1005B71C0(a1, *v13, *v19);
      v21 = 1;
    }

    v23 = (*(*a2 + 16))(a2);
    v24 = v23;
    v25 = *v13;
    v27 = v25[18];
    v26 = v25[19];
    if (v27 >= v26)
    {
      v29 = v25[17];
      v30 = (v27 - v29) >> 3;
      if ((v30 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v31 = v26 - v29;
      v32 = v31 >> 2;
      if (v31 >> 2 <= (v30 + 1))
      {
        v32 = v30 + 1;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        sub_100008108((v25 + 17), v33);
      }

      *(8 * v30) = v23;
      v28 = 8 * v30 + 8;
      v34 = v25[17];
      v35 = v25[18] - v34;
      v36 = (8 * v30 - v35);
      memcpy(v36, v34, v35);
      v37 = v25[17];
      v25[17] = v36;
      v25[18] = v28;
      v25[19] = 0;
      if (v37)
      {
        operator delete(v37);
      }

      v11 = (v5 - 1);
    }

    else
    {
      *v27 = v23;
      v28 = (v27 + 1);
    }

    v25[18] = v28;
    LOWORD(buf.__r_.__value_.__l.__data_) = **(a2 + 8);
    __p.__r_.__value_.__r.__words[0] = &buf;
    sub_1003750BC(v11, &buf)[5] = v24;
    goto LABEL_53;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1006E3698(a2, &v48);
    sub_10084A3DC();
  }

  v21 = 0;
LABEL_55:
  if ((v21 & 1) != 0 || v7 == v5)
  {
    if (v7 == v5)
    {
      v41 = v21;
    }

    else
    {
      v41 = 0;
    }

    if (v41 == 1 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_1006E3698(a2, &__p);
      sub_10084A344();
    }
  }

  else
  {
    v38 = qword_100BCE910;
    v39 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT);
    v40 = *(a2 + 8);
    if (v39)
    {
      v43 = *v40;
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v43;
      _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "Found orphaned handle 0x%04x in handle map", &__p, 8u);
      v40 = *(a2 + 8);
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = *v40;
    sub_100480E04(v11, &__p);
  }

  return sub_1000088CC(v49);
}

void sub_1005B5A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B5B00(uint64_t a1, uint64_t a2, int a3)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 8);
  sub_1005B5B74(a1, a2, a3);
  return sub_1000088CC(v7);
}

uint64_t sub_1005B5B74(uint64_t a1, uint64_t a2, int a3)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  if (v7 != v6)
  {
    v8 = **(a2 + 8);
    do
    {
      if (v8 > *(*v7)[1] && v8 <= *(*v7 + 24))
      {
        break;
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v9 = qword_100BCE910;
  if (v7 == v6)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1006E3698(a2, &v19);
      sub_10084A484();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      sub_1006E3698(*v7, &v19);
      v10 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
      v11 = v19.__r_.__value_.__r.__words[0];
      sub_1006E3698(a2, &__p);
      v12 = &v19;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      v23 = v12;
      v24 = 2082;
      v25 = p_p;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Found service %{public}s for value %{public}s", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }

    memset(&v19, 0, sizeof(v19));
    sub_100007F20(&v19, *v7 + 17);
    v14 = v19.__r_.__value_.__r.__words[0];
    if (v19.__r_.__value_.__r.__words[0] == v19.__r_.__value_.__l.__size_)
    {
LABEL_20:
      if (a3 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_1006E3698(a2, &__p);
        sub_10084A430();
      }
    }

    else
    {
      while (**(a2 + 8) - 1 != **(*v14 + 8))
      {
        v14 += 8;
        if (v14 == v19.__r_.__value_.__l.__size_)
        {
          goto LABEL_20;
        }
      }

      v15 = (*(*a2 + 16))(a2);
      v16 = *v14;
      v17 = *(v16 + 96);
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      *(v16 + 96) = v15;
      *buf = **(a2 + 8);
      __p.__r_.__value_.__r.__words[0] = buf;
      sub_1003750BC(a1 + 96, buf)[5] = v15;
    }

    if (v19.__r_.__value_.__r.__words[0])
    {
      v19.__r_.__value_.__l.__size_ = v19.__r_.__value_.__r.__words[0];
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  return sub_1000088CC(v20);
}

void sub_1005B5E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B5EBC(void *a1, uint64_t **a2, __int16 a3)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, (a1 + 1));
  for (i = *a2; i != a2[1]; ++i)
  {
    sub_1005B600C(a1, *i);
  }

  v9 = a1[13];
  v8 = a1 + 13;
  v7 = v9;
  if (v9)
  {
    v10 = a3 - 2;
    v11 = v8;
    do
    {
      v12 = *(v7 + 32);
      v13 = v12 >= v10;
      v14 = v12 < v10;
      if (v13)
      {
        v11 = v7;
      }

      v7 = *(v7 + 8 * v14);
    }

    while (v7);
    if (v11 != v8 && *(v11 + 16) <= v10)
    {
      v15 = *(v11[5] + 8);
      v16 = *(v15 + 20);
      v20 = *(v15 + 4);
      v21 = v16;
      sub_10000D03C(&v19, &v20);
      v20 = xmmword_1008AA5E4;
      v21 = 0;
      if (sub_10004E15C(&v19, &v20))
      {
        *(v11[5] + 128) = 1;
      }
    }
  }

  return sub_1000088CC(v18);
}

void sub_1005B5FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B600C(void *a1, uint64_t a2)
{
  v53[0] = 0;
  v53[1] = 0;
  sub_100007F88(v53, (a1 + 1));
  v5 = a1 + 13;
  v4 = a1[13];
  v6 = **(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v7 = a1 + 13;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v5 || v6 < *(v7 + 16))
  {
LABEL_9:
    v7 = a1 + 13;
  }

  v12 = a1[9];
  v11 = a1[10];
  while (v12 != v11 && (v6 <= *(*v12)[1] || v6 > *(*v12 + 24)))
  {
    ++v12;
  }

  v13 = qword_100BCE910;
  if (v12 == v11)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1006E3698(a2, &__p);
      sub_10084A52C();
    }

    v44 = 0;
    goto LABEL_83;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    sub_1006E3698(*v12, &__p);
    v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v15 = __p.__r_.__value_.__r.__words[0];
    sub_1006E3698(a2, &v60);
    p_p = &__p;
    if (v14 < 0)
    {
      p_p = v15;
    }

    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v60;
    }

    else
    {
      v17 = v60.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
    *(buf.__r_.__value_.__r.__words + 4) = p_p;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Found service %{public}s for descriptor %{public}s", &buf, 0x16u);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  memset(&__p, 0, sizeof(__p));
  sub_100007F20(&__p, *v12 + 17);
  v18 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
  {
    while (1)
    {
      memset(&v60, 0, sizeof(v60));
      sub_100007F20(&v60, *v18 + 13);
      v19 = v60.__r_.__value_.__r.__words[0];
      if (v60.__r_.__value_.__r.__words[0] != v60.__r_.__value_.__l.__size_)
      {
        break;
      }

LABEL_31:
      v22 = 1;
      if (v60.__r_.__value_.__r.__words[0])
      {
        goto LABEL_32;
      }

LABEL_33:
      if ((v22 & 1) == 0)
      {
        v44 = 1;
        goto LABEL_81;
      }

      if (++v18 == __p.__r_.__value_.__l.__size_)
      {
        goto LABEL_49;
      }
    }

    v20 = v60.__r_.__value_.__r.__words[0];
    while (1)
    {
      v21 = *(*v20 + 8);
      if (*v21 == **(a2 + 8))
      {
        break;
      }

      if (++v20 == v60.__r_.__value_.__l.__size_)
      {
        goto LABEL_31;
      }
    }

    v23 = *(v21 + 2);
    LODWORD(buf.__r_.__value_.__r.__words[2]) = *(v21 + 5);
    *&buf.__r_.__value_.__l.__data_ = v23;
    sub_10000D03C(&v54, &buf);
    v24 = *(a2 + 8);
    v25 = *(v24 + 20);
    *&buf.__r_.__value_.__l.__data_ = *(v24 + 4);
    LODWORD(buf.__r_.__value_.__r.__words[2]) = v25;
    sub_10000D03C(v56, &buf);
    if (!sub_10004E15C(&v54, v56))
    {
      v26 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_1006E3698(*v20, &buf);
        v28 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v29 = buf.__r_.__value_.__r.__words[0];
        sub_1006E3698(a2, &v54);
        p_buf = &buf;
        if (v28 < 0)
        {
          p_buf = v29;
        }

        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v54;
        }

        else
        {
          v31 = v54.__r_.__value_.__r.__words[0];
        }

        *v56 = 136446466;
        v57 = p_buf;
        v58 = 2082;
        v59 = v31;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Replacing cached descriptor %{public}s with descriptor of different type %{public}s", v56, 0x16u);
        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_1003B3424(*v18, *v20);
    v27 = (*(*a2 + 16))(a2);
    sub_1005B72E0(*v18, v27);
    LOWORD(v54.__r_.__value_.__l.__data_) = **(a2 + 8);
    buf.__r_.__value_.__r.__words[0] = &v54;
    v22 = 0;
    sub_1003750BC((v5 - 1), &v54)[5] = v27;
    v19 = v60.__r_.__value_.__r.__words[0];
    if (!v60.__r_.__value_.__r.__words[0])
    {
      goto LABEL_33;
    }

LABEL_32:
    v60.__r_.__value_.__l.__size_ = v19;
    operator delete(v19);
    goto LABEL_33;
  }

LABEL_49:
  v32 = **(a2 + 8);
  v33 = *(*v12)[1];
  if (v33 >= (v32 - 1))
  {
    goto LABEL_80;
  }

  v34 = (v32 - 1);
  while (1)
  {
    v35 = *v5;
    if (*v5)
    {
      break;
    }

    if (v33 + 1 < v34)
    {
      goto LABEL_78;
    }

LABEL_72:
    v32 = v34--;
    if (v33 >= v34)
    {
      v44 = 0;
      goto LABEL_81;
    }
  }

  v36 = v5;
  v37 = *v5;
  do
  {
    if (v34 <= *(v37 + 32))
    {
      v36 = v37;
    }

    v37 = *(v37 + 8 * (v34 > *(v37 + 32)));
  }

  while (v37);
  if (v36 != v5 && v34 >= *(v36 + 16))
  {
    v42 = *(v36[5] + 8);
    v43 = *(v42 + 20);
    *&v60.__r_.__value_.__l.__data_ = *(v42 + 4);
    LODWORD(v60.__r_.__value_.__r.__words[2]) = v43;
    sub_10000D03C(&buf, &v60);
    *&v60.__r_.__value_.__l.__data_ = xmmword_1008AA5E4;
    LODWORD(v60.__r_.__value_.__r.__words[2]) = 0;
    if (sub_10004E15C(&buf, &v60))
    {
      v51 = (*(*a2 + 16))(a2);
      sub_1005B72E0(v36[5], v51);
      LOWORD(buf.__r_.__value_.__l.__data_) = **(a2 + 8);
      v60.__r_.__value_.__r.__words[0] = &buf;
      v44 = 0;
      sub_1003750BC((v5 - 1), &buf)[5] = v51;
      goto LABEL_81;
    }

    LOWORD(v33) = *(*v12)[1];
    goto LABEL_72;
  }

  if (v33 + 1 >= v34)
  {
    goto LABEL_72;
  }

  if (v35)
  {
    v38 = v32 - 2;
    v39 = v5;
    do
    {
      v40 = *(v35 + 32);
      v9 = v40 >= v38;
      v41 = v40 < v38;
      if (v9)
      {
        v39 = v35;
      }

      v35 = *(v35 + 8 * v41);
    }

    while (v35);
    if (v39 != v5 && *(v39 + 16) <= v38)
    {
      goto LABEL_72;
    }
  }

LABEL_78:
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1006E3698(a2, &v60);
    sub_10084A4D8();
  }

LABEL_80:
  v44 = 0;
LABEL_81:
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_83:
  if ((v44 & 1) != 0 || v7 == v5)
  {
    if (v7 == v5)
    {
      v48 = v44;
    }

    else
    {
      v48 = 0;
    }

    if (v48 == 1 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_1006E3698(a2, &buf);
      sub_10084A580();
    }
  }

  else
  {
    v45 = qword_100BCE910;
    v46 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT);
    v47 = *(a2 + 8);
    if (v46)
    {
      v50 = *v47;
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v50;
      _os_log_fault_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "Found orphaned handle 0x%04x in handle map", &buf, 8u);
      v47 = *(a2 + 8);
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = *v47;
    sub_100480E04((v5 - 1), &buf);
  }

  return sub_1000088CC(v53);
}

void sub_1005B6710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B67BC(void *a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, (a1 + 1));
  sub_1005B600C(a1, a2);
  return sub_1000088CC(v5);
}

uint64_t sub_1005B6820(uint64_t a1, unsigned int a2)
{
  v14 = a2;
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 8);
  v6 = *(a1 + 104);
  v5 = a1 + 104;
  v4 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v5;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v5 && *(v7 + 32) <= a2)
  {
    v15 = &v14;
    v11 = sub_1003750BC(v5 - 8, &v14)[5];
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  sub_1000088CC(v13);
  return v11;
}

uint64_t sub_1005B68E8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 8);
  v7 = *(a1 + 72);
  if (v7 != *(a1 + 80))
  {
    while (1)
    {
      v8 = *v7;
      v16 = *(*v7 + 72);
      LODWORD(v17) = *(v8 + 88);
      sub_10000D03C(&v18, &v16);
      if (sub_10004E15C(&v18, a2))
      {
        break;
      }

LABEL_14:
      if (++v7 == *(a1 + 80))
      {
        goto LABEL_15;
      }
    }

    if (!*a3)
    {
      v3 = *v7;
      goto LABEL_16;
    }

    v16 = 0uLL;
    v17 = 0;
    sub_100007F20(&v16, (*v7 + 136));
    v9 = v16.n128_u64[0];
    if (v16.n128_u64[0] == v16.n128_u64[1])
    {
      v12 = 1;
      if (v16.n128_u64[0])
      {
LABEL_12:
        v16.n128_u64[1] = v9;
        operator delete(v9);
      }
    }

    else
    {
      while (1)
      {
        v10 = *v9;
        v18 = *(*v9 + 76);
        v19 = *(v10 + 92);
        sub_10000D03C(&v15, &v18);
        v11 = sub_10004E15C(&v15, a3);
        if (v11)
        {
          break;
        }

        v9 += 8;
        if (v9 == v16.n128_u64[1])
        {
          goto LABEL_11;
        }
      }

      v3 = *v9;
LABEL_11:
      v12 = !v11;
      v9 = v16.n128_u64[0];
      if (v16.n128_u64[0])
      {
        goto LABEL_12;
      }
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_15:
  v3 = 0;
LABEL_16:
  sub_1000088CC(v14);
  return v3;
}

uint64_t sub_1005B6AA4(uint64_t a1, unsigned int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 8);
  v4 = sub_1005B6820(a1, a2);
  v5 = v4;
  if (v4)
  {
    v10 = 0uLL;
    v11 = 0;
    v6 = *(v4 + 8);
    v7 = *(v6 + 20);
    v12 = *(v6 + 4);
    v13 = v7;
    sub_10000D03C(&v10, &v12);
    v12 = xmmword_1008AA5F8;
    v13 = 0;
    if (sub_10004E15C(&v10, &v12) || (v13 = 0, v12 = xmmword_1008AA620, sub_10004E15C(&v10, &v12)) || (v13 = 0, v12 = xmmword_1008AA60C, sub_10004E15C(&v10, &v12)) || (v13 = 0, v12 = xmmword_1008AA5E4, sub_10004E15C(&v10, &v12)))
    {
      v5 = 0;
    }

    else
    {
      v5 = (*(*v5 + 16))(v5);
    }
  }

  sub_1000088CC(v9);
  return v5;
}

void sub_1005B6C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B6C38(uint64_t a1, unsigned int a2)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  while (v4 != v5 && (**(*v4 + 8) >= a2 || *(*v4 + 48) < a2))
  {
    v4 += 8;
  }

  if (v4 == v5)
  {
    v12 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10084A5D4(a2, v12);
    }

    v6 = 0;
  }

  else
  {
    v6 = *(*v4 + 48);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_100007F20(&v14, (*v4 + 136));
    if (v14 != v15)
    {
      v7 = v14;
      do
      {
        v8 = *v7++;
        v9 = **(v8 + 8);
        v10 = **(v8 + 8) - 1;
        if (v9 <= v6 && v9 > a2)
        {
          v6 = v10;
        }
      }

      while (v7 != v15);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  sub_1000088CC(v17);
  return v6;
}

void sub_1005B6D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B6D68@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 8);
  for (i = *(a1 + 72); ; ++i)
  {
    if (i == *(a1 + 80))
    {
      sub_10003A364(a3);
      return sub_1000088CC(v9);
    }

    v7 = *i;
    if (**(*i + 8) <= a2 && *(v7 + 48) >= a2)
    {
      break;
    }
  }

  v10 = *(v7 + 72);
  v11 = *(v7 + 88);
  sub_10000D03C(a3, &v10);
  return sub_1000088CC(v9);
}

uint64_t sub_1005B6E60(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 8);
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  while (v7 != v6)
  {
    v8 = *v7;
    if (*(*v7 + 48) >= a2 && **(v8 + 8) <= a3)
    {
      v9 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
      {
        sub_1006E3698(v8, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136446210;
        v15 = p_p;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Invalidating service %{public}s", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      sub_1005B6FFC(a1, v7);
      v7 = *(a1 + 72);
      v6 = *(a1 + 80);
    }

    else
    {
      v7 += 8;
    }
  }

  *(a1 + 128) = *(a1 + 120);
  *(a1 + 144) = 0;
  return sub_1000088CC(v13);
}

uint64_t sub_1005B6FFC(uint64_t a1, char *a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  for (i = *a2; ; sub_1003B3424(i, v7))
  {
    sub_100007F20(&__p, (i + 104));
    v5 = __p;
    v6 = v14;
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    if (v6 == v5)
    {
      break;
    }

    sub_100007F20(&__p, (i + 104));
    v7 = *__p;
    v14 = __p;
    operator delete(__p);
    LOWORD(__p) = **(v7 + 8);
    sub_100480E04(a1 + 96, &__p);
  }

  while (1)
  {
    sub_100007F20(&__p, (i + 136));
    v8 = __p;
    v9 = v14;
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    if (v9 == v8)
    {
      break;
    }

    sub_100007F20(&__p, (i + 136));
    sub_1005B71C0(a1, i, *__p);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  LOWORD(__p) = **(i + 8);
  sub_100480E04(a1 + 96, &__p);
  (*(*i + 8))(i);
  v10 = *(a1 + 80);
  v11 = v10 - (a2 + 8);
  if (v10 != a2 + 8)
  {
    memmove(a2, a2 + 8, v10 - (a2 + 8));
  }

  *(a1 + 80) = &a2[v11];
  return sub_1000088CC(v15);
}

uint64_t sub_1005B71C0(uint64_t a1, void *a2, uint64_t a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 8);
  if (*(a3 + 96))
  {
    LOWORD(__p) = *(a3 + 74);
    sub_100480E04(a1 + 96, &__p);
  }

  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_100007F20(&__p, (a3 + 104));
  for (i = __p; i != v10; i += 8)
  {
    v8 = **(*i + 8);
    sub_100480E04(a1 + 96, &v8);
  }

  v8 = **(a3 + 8);
  sub_100480E04(a1 + 96, &v8);
  sub_1005B73AC(a2, a3);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return sub_1000088CC(v12);
}

void sub_1005B72E0(void *a1, uint64_t a2)
{
  v5 = a1[14];
  v4 = a1[15];
  if (v5 >= v4)
  {
    v7 = a1[13];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100008108((a1 + 13), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[13];
    v14 = a1[14] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[13];
    a1[13] = v15;
    a1[14] = v6;
    a1[15] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[14] = v6;
}

void *sub_1005B73AC(void *result, uint64_t a2)
{
  v3 = result;
  v5 = result[17];
  v4 = result[18];
  if (v5 != v4)
  {
    v6 = result[17];
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = result[18];
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      result = memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    v3[18] = &v7[v5];
    if (a2)
    {
      v8 = *(*a2 + 8);

      return v8(a2);
    }
  }

  return result;
}

uint64_t sub_1005B7478(uint64_t a1, unsigned __int8 *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 8);
  for (i = *(a1 + 72); i != *(a1 + 80); ++i)
  {
    v5 = *i;
    v10 = *(*i + 72);
    LODWORD(v11) = *(v5 + 88);
    sub_10000D03C(&v12, &v10);
    if (sub_10004E15C(&v12, a2))
    {
      v10 = 0uLL;
      v11 = 0;
      sub_100007F20(&v10, (v5 + 136));
      v6 = v10.n128_u64[0];
      if (v10.n128_u64[0] != v10.n128_u64[1])
      {
        do
        {
          v7 = *(*v6 + 96);
          if (v7)
          {
            if (!sub_10000D26C(v7 + 72))
            {
              v12.n128_u64[0] = &off_100AE0A78;
              v12.n128_u64[1] = 0;
              sub_10000AE20(v7 + 72, &v12);
              v12.n128_u64[0] = &off_100AE0A78;
              if (v12.n128_u64[1])
              {
                sub_10000C808(v12.n128_u64[1]);
              }
            }
          }

          v6 += 8;
        }

        while (v6 != v10.n128_u64[1]);
        v6 = v10.n128_u64[0];
      }

      if (v6)
      {
        v10.n128_u64[1] = v6;
        operator delete(v6);
      }
    }
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1005B7638(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 8);
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 96);
    if (v4 != (a1 + 104))
    {
      do
      {
        v5 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          sub_1006E3698(v4[5], &__p);
          v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136446466;
          v14 = a2;
          v15 = 2082;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s%{public}s", buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v7 = v4[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != (a1 + 104));
    }
  }

  return sub_1000088CC(v12);
}

void sub_1005B7B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  objc_destroyWeak((v22 + 48));
  _Block_object_dispose(&a17, 8);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1005B7B88(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained connection];
    v10 = nw_connection_copy_endpoint(v9);

    if (v6)
    {
      error_code = nw_error_get_error_code(v6);
    }

    else
    {
      error_code = 0;
    }

    *__error() = error_code;
    v12 = qword_100BCEA70;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      hostname = nw_endpoint_get_hostname(v10);
      port = nw_endpoint_get_port(v10);
      v15 = *__error();
      v39 = 67109890;
      *v40 = a2;
      *&v40[4] = 2080;
      *&v40[6] = hostname;
      *&v40[14] = 1024;
      *&v40[16] = port;
      LOWORD(v41[0]) = 1024;
      *(v41 + 2) = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourEndpoint] Connection state changed to %d (host %s port %u error %d)", &v39, 0x1Eu);
    }

    if (a2 == 5)
    {
      v27 = qword_100BCEA70;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(v8 + 6);
        v29 = nw_endpoint_get_hostname(v10);
        v30 = nw_endpoint_get_port(v10);
        v39 = 138412802;
        *v40 = v28;
        *&v40[8] = 2080;
        *&v40[10] = v29;
        *&v40[18] = 1024;
        v41[0] = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourEndpoint] Connection (%@) to %s port %u cancelled", &v39, 0x1Cu);
      }

      v31 = [v8 didDisconnectHandler];
      v32 = v31 == 0;

      if (!v32)
      {
        v33 = *(*(*(a1 + 40) + 8) + 40);
        if (v33)
        {
          v34 = nw_error_copy_cf_error(v33);
        }

        else
        {
          v34 = 0;
        }

        v35 = [v8 didDisconnectHandler];
        (v35)[2](v35, v34);
      }

      v36 = *(v8 + 6);
      *(v8 + 6) = 0;

      v37 = *(v8 + 5);
      *(v8 + 5) = 0;

      v38 = *(*(a1 + 40) + 8);
      v26 = *(v38 + 40);
      *(v38 + 40) = 0;
    }

    else
    {
      if (a2 != 4)
      {
        if (a2 == 3)
        {
          v16 = qword_100BCEA70;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(v8 + 6);
            v18 = nw_endpoint_get_hostname(v10);
            v19 = nw_endpoint_get_port(v10);
            v39 = 138412802;
            *v40 = v17;
            *&v40[8] = 2080;
            *&v40[10] = v18;
            *&v40[18] = 1024;
            v41[0] = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourEndpoint] Connection (%@) to %s port %u succeeded! begin receiving messages", &v39, 0x1Cu);
          }

          if (([v8 connectionType] & 2) != 0)
          {
            v20 = [v8 _getServerRemoteUUIDFromConnectionMetadata:*(*(a1 + 32) + 48) connectionType:{objc_msgSend(v8, "connectionType")}];
            [v8 setRemoteUniqueIDString:v20];
          }

          v21 = [v8 remoteUniqueIDString];
          v22 = v21 == 0;

          if (v22)
          {
            if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
            {
              sub_10084A650();
            }

            nw_connection_cancel(*(v8 + 6));
          }

          else
          {
            v23 = [v8 didConnectHandler];
            v24 = v23 == 0;

            if (!v24)
            {
              v25 = [v8 didConnectHandler];
              v25[2]();
            }

            [v8 receiveNextMessage];
          }
        }

        goto LABEL_31;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      v26 = [v8 connection];
      nw_connection_cancel(v26);
    }

LABEL_31:
  }
}

void sub_1005B81C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1005B8210(uint64_t a1, char *__s1, uint64_t a3)
{
  if (!strcmp(__s1, "BTVCBonjourEndpointServerUUIDHeader"))
  {
    v5 = [NSString stringWithUTF8String:a3];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return 1;
}

void sub_1005B8450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1005B8498(uint64_t a1, void *a2)
{
  options = a2;
  v4 = nw_protocol_copy_ws_definition();
  v5 = nw_protocol_options_copy_definition(options);
  is_equal = nw_protocol_definition_is_equal(v4, v5);

  if (is_equal)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

NSObject *sub_1005B8560(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    enumerator[0] = _NSConcreteStackBlock;
    enumerator[1] = 3221225472;
    enumerator[2] = sub_1005B8680;
    enumerator[3] = &unk_100AFF660;
    enumerator[4] = WeakRetained;
    nw_ws_request_enumerate_additional_headers(v3, enumerator);
    v6 = nw_ws_response_create(nw_ws_response_status_accept, 0);
    nw_ws_response_add_additional_header(v6, "BTVCBonjourEndpointServerUUIDHeader", [v5[7] UTF8String]);
  }

  else
  {
    v6 = nw_ws_response_create(nw_ws_response_status_reject, 0);
  }

  return v6;
}

uint64_t sub_1005B8680(uint64_t a1, char *__s1, uint64_t a3)
{
  if (!strcmp(__s1, "BTVCBonjourEndpointClientUUIDHeader"))
  {
    v5 = [NSString stringWithUTF8String:a3];
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = v5;
  }

  return 1;
}

void sub_1005B8838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1005B8854(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourEndpoint] receiveNextMessage data %@ error:%@", &v20, 0x16u);
    }

    v13 = v8;
    if (v9 && nw_content_context_get_is_final(v9))
    {
      v14 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v15 = WeakRetained[6];
        v20 = 138412290;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourEndpoint] receiveNextMessage got connection closed %@", &v20, 0xCu);
      }

      nw_connection_cancel(WeakRetained[6]);
    }

    else if (!v10)
    {
      v16 = [(nw_connection_t *)WeakRetained didReceiveDataHandler];
      if (v13)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      v18 = !v17;

      if (v18)
      {
        v19 = [(nw_connection_t *)WeakRetained didReceiveDataHandler];
        (v19)[2](v19, v13);
      }

      [(nw_connection_t *)WeakRetained receiveNextMessage];
    }
  }
}

void sub_1005B8CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) length];
    v9 = 138412546;
    v10 = v3;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourEndpoint] nw_connection_send completed with error: %@, bytes :%lu", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v3)
    {
      v7 = nw_error_copy_cf_error(v3);
      v6 = *(a1 + 40);
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    (*(v6 + 16))(v6, v8);
  }
}

void sub_1005B8EB8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1005B8EF4(id a1, OS_nw_protocol_options *a2)
{
  options = a2;
  nw_tcp_options_set_enable_keepalive(options, 1);
  nw_tcp_options_set_keepalive_idle_time(options, 2u);
  nw_tcp_options_set_no_delay(options, 1);
  nw_tcp_options_set_enable_fast_open(options, 1);
}

uint64_t sub_1005B90EC(uint64_t a1, uint64_t a2, char a3, int a4)
{
  *a1 = off_100AFF238;
  sub_100044BBC(a1 + 8);
  *(a1 + 72) = 0;
  *(a1 + 76) = a4;
  *a1 = off_100AFF748;
  *(a1 + 80) = a2;
  *(a1 + 88) = off_100AFF788;
  *(a1 + 96) = a3;
  *(a1 + 97) = 0;
  *(a1 + 100) = xmmword_1008AA640;
  *(a1 + 116) = 1000;
  *(a1 + 120) = 0;
  sub_100044BBC(a1 + 128);
  *(a1 + 200) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 120) = sub_10057104C();
  return a1;
}

void sub_1005B91D8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[26] = v5;
    operator delete(v5);
  }

  sub_10007A068(v1 + 16);
  *v1 = v2;
  sub_10007A068(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B9214(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v22 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_10084A754();
  }

  v4 = off_100B508E8;
  v24 = 0;
  sub_100016250(&v24);
  *&v21 = v24;
  *(&v21 + 1) = SWORD2(v24);
  v5 = sub_10056B370(v4, a2, &v21, &v22 + 1, &v22);
  if ((*(**(a1 + 80) + 48))(*(a1 + 80), v5, &v23, HIBYTE(v22)))
  {
    (*(**(a1 + 80) + 24))(*(a1 + 80), v5);
  }

  v21 = 0uLL;
  sub_100007F88(&v21, a1 + 128);
  if (*(a1 + 192) != 128 && (v23 & 0x10) != 0)
  {
    v5[49].n128_u8[8] = 1;
    if (!sub_1000E69B8(a1 + 200, v5))
    {
      v7 = *(a1 + 208);
      v6 = *(a1 + 216);
      if (v7 >= v6)
      {
        v9 = *(a1 + 200);
        v10 = (v7 - v9) >> 3;
        if ((v10 + 1) >> 61)
        {
          sub_1000C7698();
        }

        v11 = v6 - v9;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          sub_100008108(a1 + 200, v13);
        }

        v14 = (8 * v10);
        *v14 = v5;
        v8 = 8 * v10 + 8;
        v15 = *(a1 + 200);
        v16 = *(a1 + 208) - v15;
        v17 = v14 - v16;
        memcpy(v14 - v16, v15, v16);
        v18 = *(a1 + 200);
        *(a1 + 200) = v17;
        *(a1 + 208) = v8;
        *(a1 + 216) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 1);
      }

      *(a1 + 208) = v8;
    }

    v19 = *(a1 + 224);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 16) = 500;
  }

  return sub_1000088CC(&v21);
}

uint64_t sub_1005B9488(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 128);
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 192);
    *buf = 67109120;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Stepping scan with mode %u", buf, 8u);
  }

  v4 = *(a1 + 192);
  if (v4 == 16 || v4 == 1)
  {
    if (sub_1005B98C0(a1))
    {
      return sub_1000088CC(v13);
    }
  }

  else if (!v4)
  {
    sub_10000801C(v13);
    if (*(a1 + 96) == 1)
    {
      v6 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 100);
        *buf = 67109120;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sleeping %u ms before starting first scan", buf, 8u);
      }

      j__usleep(1000 * *(a1 + 100));
    }

    sub_100007FB8(v13);
    sub_1005B9D98(a1);
    return sub_1000088CC(v13);
  }

  if (*(a1 + 97))
  {
    *(a1 + 97) = 0;
  }

  else
  {
    sub_10000801C(v13);
    v8 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 116;
      if (*(a1 + 96))
      {
        v9 = 108;
      }

      v10 = *(a1 + v9);
      *buf = 67109120;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sleeping %u ms before ending scan", buf, 8u);
    }

    v11 = 116;
    if (*(a1 + 96))
    {
      v11 = 108;
    }

    j__usleep(1000 * *(a1 + v11));
    sub_1005B15E0(a1, 0);
  }

  return sub_1000088CC(v13);
}

uint64_t sub_1005B96BC(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 128);
  if (*(a1 + 192) == 1)
  {
    *(a1 + 97) = 1;
    v9 = 0;
    sub_1000216B4(&v9);
    if (sub_100242444(sub_1005B976C, a1, v2, v3, v4, v5, v6, v7))
    {
      *(a1 + 97) = 0;
    }

    sub_100022214(&v9);
    sub_10002249C(&v9);
  }

  return sub_1000088CC(v10);
}

void sub_1005B9748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B980C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 128);
  v2 = *(a1 + 224);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 224) = 0;
  }

  if (*(a1 + 97) == 1)
  {
    *(a1 + 97) = 0;
    sub_1005B98C0(a1);
  }

  else
  {
    sub_10000801C(v4);
    sub_1005B15E0(a1, 0);
  }

  return sub_1000088CC(v4);
}

BOOL sub_1005B98C0(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(a1 + 208);
  if (v1 != v2)
  {
    v3 = *v1;
    *(a1 + 192) = 16;
    if (qword_100B54670 != -1)
    {
      sub_10084A768();
    }

    sub_100587D6C(qword_100B54668, v3);
  }

  *(a1 + 192) = 128;
  return v1 != v2;
}

uint64_t sub_1005B9A00(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 128);
  sub_10056923C((a1 + 200), a2);
  sub_10000801C(v7);
  v4 = (*(**(a1 + 80) + 48))(*(a1 + 80), a2, &v8, 0);
  if (v8)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == 1)
  {
    (*(**(a1 + 80) + 8))(*(a1 + 80), a2);
  }

  sub_1005B9488(a1);
  return sub_1000088CC(v7);
}

void sub_1005B9AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005B9AEC(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 8);
  v2 = *(a1 + 72);
  sub_1000088CC(v3);
  if (v2)
  {
    sub_1000D660C();
  }

  else
  {
    sub_1005AF1D0(a1);
    sub_1005B9488(a1);
  }
}

uint64_t sub_1005B9B4C(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 128);
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 192);
    *buf = 67109120;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping scan with mode %u", buf, 8u);
  }

  v4 = *(a1 + 200);
  v5 = *(a1 + 208);
  while (v4 != v5)
  {
    v6 = *v4++;
    *(v6 + 792) = 0;
  }

  v7 = *(a1 + 192);
  if (v7)
  {
    if (v7 == 1)
    {
      *(a1 + 192) = 128;
      sub_10000801C(v15);
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_100242444(sub_1005B9CF8, a1, v8, v9, v10, v11, v12, v13);
      sub_100022214(buf);
      sub_10002249C(buf);
    }

    else if (v7 == 16)
    {
      *(a1 + 192) = 128;
      sub_10000801C(v15);
      if (qword_100B54670 != -1)
      {
        sub_10084A77C();
      }

      sub_100587EFC();
    }
  }

  else
  {
    *(a1 + 192) = 128;
  }

  return sub_1000088CC(v15);
}

_BYTE *sub_1005B9D98(uint64_t a1)
{
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 112;
    if (*(a1 + 96))
    {
      v3 = 104;
    }

    v4 = *(a1 + v3);
    v11[0] = 67109376;
    v11[1] = v4;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Scanning for %u scan periods (%u x 1.28s)", v11, 0xEu);
  }

  LOBYTE(v11[0]) = 0;
  sub_1000216B4(v11);
  v7 = 112;
  if (*(a1 + 96))
  {
    v7 = 104;
  }

  v8 = sub_1002423A8(10390323, *(a1 + v7), 64, sub_1005B9F2C, sub_1005B9CF8, a1, v5, v6);
  sub_100022214(v11);
  if (v8)
  {
    v9 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
    {
      sub_10084A7A4(v8, v9);
    }

    sub_1005B15E0(a1, v8);
  }

  else
  {
    *(a1 + 192) = 1;
  }

  return sub_10002249C(v11);
}

uint64_t sub_1005B9F2C(uint64_t result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1005B9FE8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFF7B0;
  *(a1 + 16) = a2;
  v4 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v4;
  if (*(a3 + 2))
  {
    v6 = malloc_type_malloc(0xF0uLL, 0x100004077774924uLL);
    *(a1 + 40) = v6;
    v7 = *(a3 + 2);
    v8 = *v7;
    v9 = v7[2];
    v6[1] = v7[1];
    v6[2] = v9;
    *v6 = v8;
    v10 = v7[3];
    v11 = v7[4];
    v12 = v7[6];
    v6[5] = v7[5];
    v6[6] = v12;
    v6[3] = v10;
    v6[4] = v11;
    v13 = v7[7];
    v14 = v7[8];
    v15 = v7[10];
    v6[9] = v7[9];
    v6[10] = v15;
    v6[7] = v13;
    v6[8] = v14;
    v16 = v7[11];
    v17 = v7[12];
    v18 = v7[14];
    v6[13] = v7[13];
    v6[14] = v18;
    v6[11] = v16;
    v6[12] = v17;
  }

  return a1;
}

void *sub_1005BA0B0(void *a1)
{
  *a1 = off_100AFF7B0;
  v2 = a1[5];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1005BA0FC(void *a1)
{
  *a1 = off_100AFF7B0;
  v1 = a1[5];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

void *sub_1005BA168(void *a1)
{
  *a1 = off_100AFF748;
  a1[11] = off_100AFF788;
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 16);
  *a1 = off_100AFF238;
  sub_10007A068(a1 + 1);
  return a1;
}

void sub_1005BA204(void *a1)
{
  *a1 = off_100AFF748;
  a1[11] = off_100AFF788;
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 16);
  *a1 = off_100AFF238;
  sub_10007A068(a1 + 1);

  operator delete();
}

uint64_t sub_1005BA2C8(void *a1)
{
  *(a1 - 11) = off_100AFF748;
  *a1 = off_100AFF788;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 5);
  *(a1 - 11) = off_100AFF238;

  return sub_10007A068(a1 - 10);
}

void sub_1005BA36C(void *a1)
{
  *(a1 - 11) = off_100AFF748;
  *a1 = off_100AFF788;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 5);
  *(a1 - 11) = off_100AFF238;
  sub_10007A068(a1 - 10);

  operator delete();
}

uint64_t sub_1005BA428(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  return sub_1005B9214(v1, &v3);
}

uint64_t sub_1005BA4E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    return sub_1005B15E0(v2, v3);
  }

  else
  {
    return sub_1005B9488(v2);
  }
}

uint64_t sub_1005BA5CC(uint64_t a1)
{
  if (notify_register_check("com.apple.bluetooth.power", (a1 + 176)) && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10084A81C();
  }

  if (notify_register_check("com.apple.bluetooth.connection", (a1 + 180)) && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10084A850();
  }

  if (notify_register_check("com.apple.bluetooth.pairing", (a1 + 184)) && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10084A884();
  }

  if (notify_register_check("com.apple.bluetooth.pairingWithReason", (a1 + 188)) && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10084A8B8();
  }

  if (notify_register_check("com.apple.bluetooth.audio-stream", (a1 + 192)) && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10084A8EC();
  }

  if (notify_register_check("com.apple.bluetooth.outgoing-le-fast-scan-level", (a1 + 196)) && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10084A920();
  }

  if (notify_register_check("com.apple.bluetooth.outgoing-classic-connection-state", (a1 + 200)) && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10084A954();
  }

  sub_1005BA830(a1);
  notify_set_state(*(a1 + 176), *(a1 + 163));
  notify_post("com.apple.bluetooth.power");
  sub_1005BA8C8(a1);
  sub_1005BA9E4(a1);
  sub_1005BAAC4(a1);
  sub_1005BAB84(a1);
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"Unknown";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Bluetooth server started (%@)", &v4, 0xCu);
  }

  return 1;
}

void sub_1005BA830(int *a1)
{
  notify_set_state(a1[45], a1[41] + a1[42]);
  notify_post("com.apple.bluetooth.connection");
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005BBC98;
  v2[3] = &unk_100AFF8F8;
  v2[4] = a1;
  sub_100015514((a1 + 32), v2);
}

_BYTE *sub_1005BA8C8(_BYTE *result)
{
  v1 = result;
  if (result[205] & 1) != 0 || (result[206] & 1) != 0 || (result[207])
  {
    v2 = 1;
  }

  else
  {
    v2 = result[212];
  }

  v3 = v2 & 1;
  if (result[208] != v3)
  {
    v4 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "off";
      if (v3)
      {
        v5 = "on";
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Bluetooth Daemon: BT streaming: %s", &v6, 0xCu);
    }

    *(v1 + 208) = v3;
    notify_set_state(*(v1 + 192), v3);
    notify_post("com.apple.bluetooth.audio-stream");
    return sub_100014FF0(v1);
  }

  return result;
}

uint64_t sub_1005BA9E4(uint64_t a1)
{
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 172);
    if (v3 > 2)
    {
      v4 = "NA";
    }

    else
    {
      v4 = off_100AFFD40[v3];
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Bluetooth Daemon: LE Connection scan state: %s", &v6, 0xCu);
  }

  notify_set_state(*(a1 + 196), *(a1 + 172));
  return notify_post("com.apple.bluetooth.outgoing-le-fast-scan-level");
}

uint64_t sub_1005BAAC4(uint64_t a1)
{
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 224);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notify outgoing classic connection state isConnecting: %d", v5, 8u);
  }

  notify_set_state(*(a1 + 200), *(a1 + 224));
  return notify_post("com.apple.bluetooth.outgoing-classic-connection-state");
}

void sub_1005BAB84(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 componentsSeparatedByString:@"."];
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [NSString stringWithFormat:@"%@", v5];

    v7 = CFPreferencesCopyAppValue(@"MajorOSVersion", @"com.apple.BTServer");
    if (([v7 isEqualToString:v6] & 1) == 0)
    {
      v8 = +[MCProfileConnection sharedConnection];
      v9 = [v8 isBluetoothModificationAllowed];

      v10 = qword_100BCEAD0;
      v11 = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Major version update, setting default power state to ON", buf, 2u);
        }

        v12 = sub_10009BD9C();
        (*(*v12 + 96))(v12, 1);
        v13 = sub_10009BD9C();
        (*(*v13 + 112))(v13, 1);
      }

      else if (v11)
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Major version update but bluetooth modification is not allowed", v15, 2u);
      }

      CFPreferencesSetAppValue(@"MajorOSVersion", v6, @"com.apple.BTServer");
      CFPreferencesSynchronize(@"com.apple.BTServer", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      *(a1 + 160) = 1;
    }
  }
}

BOOL sub_1005BADE4()
{
  v9 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(v7, "BT");
  sub_100007E30(__p, "EraseAllPairedAndCachedDevice");
  v1 = (*(*v0 + 72))(v0, v7, __p, &v9);
  v2 = v9;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v1 & v2;
  if ((v8 & 0x80000000) == 0)
  {
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (qword_100B54110 != -1)
    {
      sub_10084A988();
    }

    result = sub_1006E60A0(qword_100B54108);
    if (result)
    {
      sub_100110118();
      return 1;
    }

    return result;
  }

  operator delete(v7[0]);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (MKBDeviceUnlockedSinceBoot())
  {
    sub_1003CDE04();
    if (qword_100B508D0 != -1)
    {
      sub_10084A9B0();
    }

    sub_10078E278(off_100B508C8);
    result = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084A9D8();
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084AA0C();
      return 0;
    }
  }

  return result;
}

void sub_1005BAF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BAF88(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_10084AA40();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  v2 = *sub_10000C798();
  *(a1 + 328) = (*(v2 + 888))();
  sub_1005BB138(a1);
  *(a1 + 280) = 0;
  *(a1 + 284) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  v3 = sub_100017E6C();
  sub_100312B50(v3 + 304, a1 + 8);
  v4 = sub_1000154A8();
  (*(*v4 + 128))(v4, a1 + 16);
  if (qword_100B54398 != -1)
  {
    sub_10084AA54();
  }

  sub_100603290(off_100B54390, a1 + 32);
  if (qword_100B50920 != -1)
  {
    sub_10084AA68();
  }

  sub_1000F14BC(qword_100B50918 + 392, a1 + 40);
  *(a1 + 496) = 0;
  *(a1 + 394) = 0;
  *(a1 + 402) = 0;
  *(a1 + 386) = 0;
  *(a1 + 407) = 0;
  v5 = sub_100017F4C();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005BB50C;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  sub_10000CA94(v5, v6);
}

void sub_1005BB138(uint64_t a1)
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = CFPreferencesCopyAppValue(@"OSBuildVersion", @"com.apple.BTServer");
    v4 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v3;
      v27 = 2112;
      v28 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Identification - OS build last %@, current %@", buf, 0x16u);
    }

    if (([v3 isEqualToString:v2] & 1) == 0)
    {
      v5 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Identification - OS build updated", buf, 2u);
      }

      CFPreferencesSetAppValue(@"OSBuildVersion", v2, @"com.apple.BTServer");
      CFPreferencesSynchronize(@"com.apple.BTServer", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      *(a1 + 161) = 1;
      if (v3 && [v3 hasPrefix:@"22A"])
      {
        v23 = 0;
        v18 = [NSRegularExpression regularExpressionWithPattern:@"([0-9]+)[A-Z]([0-9]+)([a-z]*)" options:1 error:&v23];
        v17 = v23;
        [v18 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v6 = v20 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v7)
        {
          v8 = 0;
          v9 = *v20;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v19 + 1) + 8 * i);
              if ([v11 numberOfRanges] >= 3)
              {
                v12 = [v11 rangeAtIndex:2];
                v14 = [v3 substringWithRange:{v12, v13}];
                v8 = [v14 intValue];
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
          }

          while (v7);

          v15 = v8 % 0x3E8u;
          if (v8 <= 1000)
          {
            v15 = v8;
          }

          if (v15 - 238 < 0x53)
          {
            v16 = qword_100BCEAD0;
            if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v3;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LE deivce name origin reset - OS build updated from %@", buf, 0xCu);
            }

            *(a1 + 162) = 1;
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1005BB50C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v2 = sub_100017E6C();
  result = (*(*v2 + 56))(v2, &v8 + 1, &v8, &v7 + 1, &v7, &v6, &v5);
  if (!result)
  {
    *(v1 + 280) = v7;
    v4 = HIBYTE(v8);
    if (HIBYTE(v8) != 1)
    {
      if (v8 == 1)
      {
        v4 = 2;
      }

      else
      {
        if (HIBYTE(v7) != 1)
        {
          *(v1 + 284) = 0;
          goto LABEL_8;
        }

        v4 = 3;
      }
    }

    *(v1 + 284) = v4;
LABEL_8:
    *(v1 + 288) = v6;
  }

  return result;
}

void sub_1005BB5DC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1005C0C58((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

uint64_t sub_1005BB670(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 48);
  *(a1 + 112) = 1;
  *(a1 + 396) = 0;
  *(a1 + 404) = 0;
  *(a1 + 388) = 0;
  *(a1 + 411) = 0;
  sub_10000801C(v4);
  v3 = 0;
  sub_1000216B4(&v3);
  sub_1002F6D5C(sub_1005BB720);
  sub_10002249C(&v3);
  return sub_1000088CC(v4);
}

void sub_1005BB6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

void sub_1005BB720(char a1)
{
  v2 = sub_100017F4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005BFA64;
  v3[3] = &unk_100AF3580;
  v4 = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_1005BB79C(uint64_t a1)
{
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BluetoothDaemon::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v10 = 0;
  sub_100007F88(buf, a1 + 48);
  *(a1 + 112) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  sub_10000801C(buf);
  sub_1005BB918(a1);
  v4 = *(a1 + 240);
  v3 = a1 + 240;
  sub_1005C0E2C(v3 - 8, v4);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 - 8) = v3;
  sub_1005C0EE4(v3 + 16, *(v3 + 24));
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = v3 + 24;
  sub_10000CEDC(v3 + 200, *(v3 + 208));
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 200) = v3 + 208;
  v8 = 0;
  sub_1000216B4(&v8);
  sub_1002F6D88(sub_1005BB720);
  sub_100022214(&v8);
  v5 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BluetoothDaemon::stackWillStop exit", v7, 2u);
  }

  sub_10002249C(&v8);
  return sub_1000088CC(buf);
}

void sub_1005BB8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005BB918(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 48);
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "cancelSoftwareScanRxTimer", v6, 2u);
  }

  if ((*(a1 + 328) & 1) == 0)
  {
    v3 = *(a1 + 336);
    if (v3)
    {
      v4 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "fSoftwareScanRxTimer destroyed!", v6, 2u);
        v3 = *(a1 + 336);
      }

      dispatch_source_cancel(v3);
      dispatch_release(*(a1 + 336));
      *(a1 + 336) = 0;
    }
  }

  return sub_1000088CC(v7);
}

void sub_1005BBA18(uint64_t a1, uint64_t state64)
{
  if (*(a1 + 163) != state64)
  {
    v2 = state64;
    *(a1 + 163) = state64;
    notify_set_state(*(a1 + 176), state64);
    notify_post("com.apple.bluetooth.power");
    if (sub_1005FCC28())
    {
      v4 = *(a1 + 120);
      if (v4)
      {
        v5 = v4;
      }

      else
      {
        v6 = BiomeLibrary();
        v7 = [v6 Device];
        v8 = [v7 Wireless];
        v9 = [v8 BluetoothPowerEnabled];
        v10 = *(a1 + 120);
        *(a1 + 120) = v9;

        v5 = *(a1 + 120);
        if (!v5)
        {
          return;
        }
      }

      v11 = sub_100066098();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1005BBBA4;
      v13[3] = &unk_100AE1750;
      v15 = v2;
      v12 = v5;
      v14 = v12;
      sub_10000CA94(v11, v13);
    }
  }
}

void sub_1005BBBA4(uint64_t a1)
{
  v2 = [BMDeviceBluetoothPowerEnabled alloc];
  v3 = [NSNumber numberWithBool:*(a1 + 40)];
  v5 = [v2 initWithStarting:v3];

  v4 = [*(a1 + 32) source];
  [v4 sendEvent:v5];
}

void sub_1005BBC68(int *a1, int a2)
{
  if (a1[41] != a2)
  {
    a1[41] = a2;
    sub_1005BA830(a1);
  }
}

void sub_1005BBC80(int *a1, int a2)
{
  if (a1[42] != a2)
  {
    a1[42] = a2;
    sub_1005BA830(a1);
  }
}

uint64_t sub_1005BBCD4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 0x1000000000000;
  if (!a2)
  {
    v7 = 0;
  }

  notify_set_state(*(a1 + 184), v7 | a3);
  notify_post("com.apple.bluetooth.pairing");
  notify_set_state(*(a1 + 188), a3 | (a4 << 56));
  v8 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 200)
    {
      switch(a4)
      {
        case 0xC9:
          v9 = "CBPairingReasonUnpairUserSwitch";
          goto LABEL_18;
        case 0xCA:
          v9 = "CBPairingReasonUnpairCloud";
          goto LABEL_18;
        case 0xCB:
          v9 = "CBPairingReasonUnpairMagnet";
          goto LABEL_18;
      }
    }

    else
    {
      switch(a4)
      {
        case 0:
          v9 = "CBPairingReasonUnknown";
          goto LABEL_18;
        case 1:
          v9 = "CBPairingReasonPairingDefault";
          goto LABEL_18;
        case 0xC8:
          v9 = "CBPairingReasonUnpairDefault";
LABEL_18:
          v10 = sub_1007774DC();
          v12 = 136315394;
          v13 = v9;
          v14 = 2080;
          v15 = [v10 UTF8String];
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bluetooth Daemon: pairingReason %s, addr %s", &v12, 0x16u);

          return notify_post("com.apple.bluetooth.pairingWithReason");
      }
    }

    v9 = "?";
    goto LABEL_18;
  }

  return notify_post("com.apple.bluetooth.pairingWithReason");
}

uint64_t sub_1005BBE88(uint64_t a1, char a2)
{
  *(a1 + 204) = a2;
  v2 = *(*sub_10000F034() + 648);

  return v2();
}

uint64_t sub_1005BBEEC(uint64_t a1, int a2)
{
  if (*(a1 + 224) != a2)
  {
    *(a1 + 224) = a2;
    return sub_1005BAAC4(a1);
  }

  return a1;
}

_BYTE *sub_1005BBF04(_BYTE *result, int a2, uint64_t a3, int a4)
{
  if (result[205] != a2)
  {
    v7 = result;
    v8 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1007774DC();
      v10 = "off";
      *buf = 138543874;
      v15 = v9;
      if (a2)
      {
        v10 = "on";
      }

      v16 = 2080;
      v17 = v10;
      v18 = 1024;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bluetooth Daemon: A2DP streaming to device %{public}@: %s, isPeerCentral:%d", buf, 0x1Cu);
    }

    v7[205] = a2;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1005BC07C;
    v11[3] = &unk_100AFF918;
    v11[4] = a3;
    v12 = a2;
    v13 = a4;
    sub_100015514((v7 + 128), v11);
    return sub_1005BA8C8(v7);
  }

  return result;
}

void sub_1005BC0B8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth Daemon: Country code changed: %@", buf, 0xCu);
  }

  objc_storeStrong((a1 + 488), a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005BC204;
  v7[3] = &unk_100AFF940;
  v8 = v4;
  v6 = v4;
  sub_100015514(a1 + 128, v7);
}

_BYTE *sub_1005BC234(_BYTE *result, int a2, uint64_t a3, int a4)
{
  if (result[206] != a2)
  {
    v7 = result;
    v8 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1007774DC();
      v10 = "off";
      *buf = 138543874;
      v15 = v9;
      if (a2)
      {
        v10 = "on";
      }

      v16 = 2080;
      v17 = v10;
      v18 = 1024;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bluetooth Daemon: HFP streaming to device %{public}@: %s, isPeerCentral:%d", buf, 0x1Cu);
    }

    v7[206] = a2;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1005BC3AC;
    v11[3] = &unk_100AFF918;
    v11[4] = a3;
    v12 = a2;
    v13 = a4;
    sub_100015514((v7 + 128), v11);
    return sub_1005BA8C8(v7);
  }

  return result;
}

_BYTE *sub_1005BC3E8(_BYTE *result, int a2, uint64_t a3)
{
  if (result[207] != a2)
  {
    v5 = result;
    v6 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100063D0C();
      v8 = v7;
      v9 = "off";
      if (a2)
      {
        v9 = "on";
      }

      *buf = 138543618;
      v13 = v7;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bluetooth Daemon: LEA streaming to device: %{public}@  %s", buf, 0x16u);
    }

    v5[207] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005BC54C;
    v10[3] = &unk_100AFF960;
    v10[4] = a3;
    v11 = a2;
    sub_100015514((v5 + 128), v10);
    return sub_1005BA8C8(v5);
  }

  return result;
}

void sub_1005BC588(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 209) != a2)
  {
    v6 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1007774DC();
      v8 = v7;
      v9 = "off";
      if (a2)
      {
        v9 = "on";
      }

      *buf = 138543618;
      v13 = v7;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BT ACL protect mode to device %{public}@: %s", buf, 0x16u);
    }

    *(a1 + 209) = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005BC6E4;
    v10[3] = &unk_100AFF960;
    v10[4] = a3;
    v11 = a2;
    sub_100015514(a1 + 128, v10);
  }
}

_BYTE *sub_1005BC728(_BYTE *result, int a2)
{
  if (result[212] != a2)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    result[212] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005BC7C0;
    v5[3] = &unk_100AFF980;
    v6 = a2;
    sub_100015514((result + 128), v5);
    return sub_1005BA8C8(v4);
  }

  return result;
}

void sub_1005BC7F8(double a1)
{
  if (a1 <= 0.0)
  {
    v1 = 0;
  }

  else
  {
    v1 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  v2 = v1;
  CFPreferencesSetAppValue(@"DenylistEnabledTime", v1, @"com.apple.BTServer");
}

double sub_1005BC880()
{
  v0 = CFPreferencesCopyAppValue(@"DenylistEnabledTime", @"com.apple.BTServer");
  v1 = 0.0;
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v0 timeIntervalSinceReferenceDate];
      v1 = v2;
    }
  }

  return v1;
}

uint64_t sub_1005BC904(uint64_t a1, int a2)
{
  if (*(a1 + 172) != a2)
  {
    *(a1 + 172) = a2;
    return sub_1005BA9E4(a1);
  }

  return a1;
}

uint64_t sub_1005BC91C(_BYTE *a1)
{
  if (!IsAppleInternalBuild())
  {
    goto LABEL_6;
  }

  if (qword_100B6F650 != -1)
  {
    sub_10084AA7C();
  }

  if (byte_100B6F648)
  {
    v2 = 1;
  }

  else
  {
LABEL_6:
    v3 = sub_10000C7D0();
    if (!sub_100413F2C(v3) && ((a1[205] & 1) != 0 || (a1[206] & 1) != 0) || (a1[207] & 1) != 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = a1[212] ^ 1;
    }
  }

  return v2 & 1;
}

void sub_1005BC9A8(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AllowConnScanPrioritizationAlways");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6F648);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v3 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6F648)
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: AllowConnScanPrioritizationAlways: %s", buf, 0xCu);
  }
}

void sub_1005BCAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1005BCB34(uint64_t a1)
{
  if (*(a1 + 205) & 1) != 0 || (*(a1 + 206) & 1) != 0 || (*(a1 + 208) & 1) != 0 || (*(a1 + 212) & 1) != 0 || *(a1 + 168) || (*(a1 + 204))
  {
    return 0;
  }

  if (*(a1 + 288) == 1 && *(a1 + 280) == 1)
  {
    return *(a1 + 284) != 1;
  }

  return 1;
}

void sub_1005BCB9C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (*a2 == 1)
  {
    v9 = *(a2 + 20) + a4;
    *(a2 + 16) += a3;
    *(a2 + 20) = v9;
    *(a2 + 28) += a5;
  }

  *a2 = 1;
  v10 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEBUG))
  {
    sub_1005BCCE0(a2);
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 67109890;
    v15 = a3;
    v16 = 1024;
    v17 = a4;
    v18 = 1024;
    v19 = a5;
    v20 = 2080;
    v21 = p_p;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "updateActualRxForRequest totalRx:%d btMCRx:%d duration:%d rxThreshold:%s", buf, 0x1Eu);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }
}

uint64_t sub_1005BCCE0(uint64_t a1)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  sub_100008760(&v14);
  v2 = sub_100007774(&v14);
  v3 = sub_100007774(v2);
  v4 = sub_10002BC74(*(a1 + 4));
  strlen(v4);
  v5 = sub_100007774(v3);
  sub_100007774(v5);
  v6 = std::ostream::operator<<();
  sub_100007774(v6);
  sub_100007774(&v14);
  v7 = std::ostream::operator<<();
  sub_100007774(v7);
  sub_100007774(&v14);
  v8 = std::ostream::operator<<();
  sub_100007774(v8);
  sub_100007774(&v14);
  v9 = std::ostream::operator<<();
  sub_100007774(v9);
  sub_100007774(&v14);
  v10 = std::ostream::operator<<();
  sub_100007774(v10);
  sub_100007774(&v14);
  v11 = std::ostream::operator<<();
  sub_100007774(v11);
  sub_100007774(&v14);
  v12 = std::ostream::operator<<();
  sub_100007774(v12);
  std::stringbuf::str();
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1005BCFF4(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 48);
  v2 = qword_100BCEAD0;
  v3 = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v4 = *(a1 + 352);
    v5 = *(a1 + 356);
    v6 = *(a1 + 364);
    v7 = *(a1 + 368);
    *buf = 67109888;
    v18 = v4;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "updateActualRx fLastScan: TotalRx=%u BtMCRx=%u fLastConnectionScan: TotalRx=%u BtMCRx=%u", buf, 0x1Au);
  }

  v8 = *(a1 + 232);
  if (v8 != (a1 + 240))
  {
    do
    {
      sub_1005BCB9C(v3, (v8 + 5), *(a1 + 352), *(a1 + 356), *(a1 + 360));
      v9 = v8[1];
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
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != (a1 + 240));
  }

  v12 = *(a1 + 256);
  if (v12 != (a1 + 264))
  {
    do
    {
      sub_1005BCB9C(v3, (v12 + 7), *(a1 + 364), *(a1 + 368), *(a1 + 372));
      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v12 = v14;
    }

    while (v14 != (a1 + 264));
  }

  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  return sub_1000088CC(v16);
}

uint64_t sub_1005BD1C0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*(a4 + 1) == 1)
  {
    v7 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
    {
      sub_1005BCCE0(a4);
      v8 = v25 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s was cancelled , notifying", buf, 0xCu);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = *(a4 + 64);
    if (v9)
    {
      (*(v9 + 16))(v9, a2, *(a4 + 16), *(a4 + 20), *(a4 + 28), 2);
    }

    v10 = *(a4 + 72);
    if (!v10)
    {
      return 1;
    }

    if (*(a3 + 23) < 0)
    {
      sub_100008904(&__dst, *a3, *(a3 + 1));
    }

    else
    {
      __dst = *a3;
      v23 = *(a3 + 2);
    }

    (*(v10 + 16))(v10, &__dst, *(a4 + 16), *(a4 + 20), *(a4 + 28), 2);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      return 1;
    }

    p_dst = &__dst;
    goto LABEL_37;
  }

  v11 = *(a4 + 8);
  if (!v11 || v11 > *(a4 + 16))
  {
    v12 = *(a4 + 12);
    if (!v12 || v12 > *(a4 + 20))
    {
      v13 = *(a4 + 24);
      if (!v13 || v13 > *(a4 + 28))
      {
        return 0;
      }
    }
  }

  v15 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    sub_1005BCCE0(a4);
    v16 = v25 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s has completed, notifying", buf, 0xCu);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = *(a4 + 64);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, *(a4 + 16), *(a4 + 20), *(a4 + 28), 1);
  }

  v18 = *(a4 + 72);
  if (v18)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100008904(&v20, *a3, *(a3 + 1));
    }

    else
    {
      v20 = *a3;
      v21 = *(a3 + 2);
    }

    (*(v18 + 16))(v18, &v20, *(a4 + 16), *(a4 + 20), *(a4 + 28), 1);
    if (SHIBYTE(v21) < 0)
    {
      p_dst = &v20;
LABEL_37:
      operator delete(*p_dst);
    }
  }

  return 1;
}

void sub_1005BD48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005BD4C8(uint64_t a1)
{
  v49[0] = 0;
  v49[1] = 0;
  sub_100007F88(v49, a1 + 48);
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 248);
    v4 = *(a1 + 272);
    v5 = *(a1 + 112);
    *buf = 134218496;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    *&buf[22] = 1024;
    v52 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "checkForExpired fSessionThresholds:%lu fConnectScanThresholds:%lu fStackStarted:%d", buf, 0x1Cu);
  }

  if (*(a1 + 112) != 1)
  {
    return sub_1000088CC(v49);
  }

  memset(buf, 0, sizeof(buf));
  v6 = *(a1 + 232);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if (v6 == (a1 + 240))
  {
    goto LABEL_36;
  }

  do
  {
    v7 = v6[4];
    sub_100007E30(v44, "");
    v8 = *(v6 + 7);
    v38[0] = *(v6 + 5);
    v38[1] = v8;
    if (*(v6 + 95) < 0)
    {
      sub_100008904(&__p, v6[9], v6[10]);
    }

    else
    {
      __p = *(v6 + 9);
      v40 = v6[11];
    }

    v41 = *(v6 + 24);
    v42 = objc_retainBlock(v6[13]);
    v43 = objc_retainBlock(v6[14]);
    v9 = sub_1005BD1C0(v43, v7, v44, v38);

    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    else if (!v9)
    {
      goto LABEL_27;
    }

    v10 = *&buf[8];
    if (*&buf[8] >= *&buf[16])
    {
      v12 = (*&buf[8] - *buf) >> 3;
      if ((v12 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v13 = (*&buf[16] - *buf) >> 2;
      if (v13 <= v12 + 1)
      {
        v13 = v12 + 1;
      }

      if (*&buf[16] - *buf >= 0x7FFFFFFFFFFFFFF8uLL)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        sub_100008108(buf, v14);
      }

      *(8 * v12) = v6[4];
      v11 = 8 * v12 + 8;
      v15 = (8 * v12 - (*&buf[8] - *buf));
      memcpy(v15, *buf, *&buf[8] - *buf);
      v16 = *buf;
      *buf = v15;
      *&buf[8] = v11;
      *&buf[16] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      **&buf[8] = v6[4];
      v11 = v10 + 8;
    }

    *&buf[8] = v11;
LABEL_27:
    v17 = v6[1];
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
        v18 = v6[2];
        v19 = *v18 == v6;
        v6 = v18;
      }

      while (!v19);
    }

    v6 = v18;
  }

  while (v18 != (a1 + 240));
  v20 = *buf;
  v21 = *&buf[8];
  while (v20 != v21)
  {
    sub_1005C107C((a1 + 232), v20++);
  }

LABEL_36:
  v22 = *(a1 + 256);
  if (v22 != (a1 + 264))
  {
    while (2)
    {
      if (*(v22 + 55) < 0)
      {
        sub_100008904(__dst, v22[4], v22[5]);
      }

      else
      {
        *__dst = *(v22 + 2);
        v37 = v22[6];
      }

      v23 = *(v22 + 9);
      v30[0] = *(v22 + 7);
      v30[1] = v23;
      if (*(v22 + 111) < 0)
      {
        sub_100008904(&v31, v22[11], v22[12]);
      }

      else
      {
        v31 = *(v22 + 11);
        v32 = v22[13];
      }

      v33 = *(v22 + 28);
      v34 = objc_retainBlock(v22[15]);
      v35 = objc_retainBlock(v22[16]);
      v24 = sub_1005BD1C0(v35, 0, __dst, v30);

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(__dst[0]);
        if (!v24)
        {
          goto LABEL_50;
        }
      }

      else if (!v24)
      {
LABEL_50:
        v25 = v22[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v22[2];
            v19 = *v26 == v22;
            v22 = v26;
          }

          while (!v19);
        }

        v22 = v26;
        if (v26 == (a1 + 264))
        {
          goto LABEL_56;
        }

        continue;
      }

      break;
    }

    sub_100338878(&v46, v22 + 2);
    goto LABEL_50;
  }

LABEL_56:
  v27 = v46;
  v28 = v47;
  while (v27 != v28)
  {
    sub_1005C1138((a1 + 256), v27);
    v27 += 3;
  }

  v50 = &v46;
  sub_1000161FC(&v50);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return sub_1000088CC(v49);
}

void sub_1005BD920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  *(v42 - 152) = v42 - 192;
  sub_1000161FC((v42 - 152));
  v44 = *(v42 - 144);
  if (v44)
  {
    *(v42 - 136) = v44;
    operator delete(v44);
  }

  sub_1000088CC(v42 - 168);
  _Unwind_Resume(a1);
}

uint64_t sub_1005BD9B4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_1005BD9F8(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v6 = *(a2 + 24);
  v8 = *(a2 + 8);
  v7 = *(a2 + 12);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (v9 && v7 == 0)
  {
    v32 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
    {
      v35 = *(a2 + 32);
      v34 = a2 + 32;
      v33 = v35;
      if (*(v34 + 23) >= 0)
      {
        v33 = v34;
      }

      *buf = 136315138;
      v40 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s ignoring invalid threshold request for minimum calculation", buf, 0xCu);
    }

    return 0;
  }

  else
  {
    if (v8)
    {
      v14 = v8 - *(a2 + 16);
    }

    else
    {
      v14 = 0;
    }

    if (v7)
    {
      v15 = v7 - *(a2 + 20);
    }

    else
    {
      v15 = 0;
    }

    if (v6)
    {
      v16 = v6 - *(a2 + 28);
    }

    else
    {
      v16 = 0;
    }

    v17 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
    {
      sub_1005BCCE0(a2);
      if (v38 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v19 = *a3;
      v20 = *a4;
      *buf = 136316418;
      v40 = p_p;
      v41 = 1024;
      v42 = v14;
      v43 = 1024;
      v44 = v15;
      v45 = 1024;
      v46 = v19;
      v47 = 1024;
      v48 = v20;
      v49 = 1024;
      v50 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s sessionTotalRxDelta=%u sessionBtMCRxDelta=%u totalRxDeltaMs=%u btMCRxDelta=%u sessionTimeoutDelta=%u", buf, 0x2Au);
      if (v38 < 0)
      {
        operator delete(__p);
      }

      v6 = *(a2 + 24);
    }

    if (v6)
    {
      v21 = v16 == 0;
    }

    else
    {
      v21 = 1;
    }

    v23 = !v21 && v16 < *a5;
    if (v23 == 1)
    {
      *a5 = v16;
      v24 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
      {
        v25 = a2 + 32;
        if (*(a2 + 55) < 0)
        {
          v25 = *(a2 + 32);
        }

        *buf = 136315394;
        v40 = v25;
        v41 = 1024;
        v42 = v16;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s set new minimal timeout=%u", buf, 0x12u);
      }
    }

    if (*(a2 + 8))
    {
      if (v14)
      {
        if (*a3 > v14)
        {
          *a3 = v14;
          v26 = qword_100BCEAD0;
          v23 = 1;
          if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
          {
            v27 = a2 + 32;
            if (*(a2 + 55) < 0)
            {
              v27 = *(a2 + 32);
            }

            *buf = 136315394;
            v40 = v27;
            v41 = 1024;
            v42 = v14;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s set new minimal totalRxDeltaMs=%u", buf, 0x12u);
          }
        }
      }
    }

    if (*(a2 + 12))
    {
      if (v15)
      {
        if (*a4 > v15)
        {
          *a4 = v15;
          v28 = qword_100BCEAD0;
          v23 = 1;
          if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
          {
            v31 = *(a2 + 32);
            v30 = a2 + 32;
            v29 = v31;
            if (*(v30 + 23) >= 0)
            {
              v29 = v30;
            }

            *buf = 136315394;
            v40 = v29;
            v41 = 1024;
            v42 = v15;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s set new minimal btMCRxDeltaMs=%u", buf, 0x12u);
          }
        }
      }
    }
  }

  return v23;
}

uint64_t sub_1005BDD74(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 384))
  {
    goto LABEL_2;
  }

  if (*(a2 + 4))
  {
    v6 = *(a2 + 64) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_13;
  }

  v17 = 0;
  v16 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v12 = 0u;
  *__p = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  if (qword_100B51078 != -1)
  {
    sub_10084AACC();
  }

  sub_1000368D8(off_100B51070, *(a2 + 4), 0, v10);
  v7 = BYTE8(v10[0]);
  v2 = BYTE7(v10[0]);
  v18 = &v16;
  sub_10000CF30(&v18);
  sub_10000CEDC(v15, *(&v15[0] + 1));
  if (__p[1])
  {
    *&v14 = __p[1];
    operator delete(__p[1]);
  }

  v18 = &v12;
  sub_10000CFB0(&v18);

  if ((v7 & 1) == 0)
  {
LABEL_13:
    v2 = 0;
    v8 = *(a2 + 56);
    if (v8 <= 3)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          if (v8 != 3)
          {
            return v2 & 1;
          }

          if ((*(a1 + 205) & 1) == 0 && (*(a1 + 206) & 1) == 0 && (*(a1 + 208) & 1) == 0)
          {
            v2 = *(a1 + 212);
            return v2 & 1;
          }

          goto LABEL_2;
        }

        goto LABEL_34;
      }
    }

    else if (v8 > 5)
    {
      if (v8 != 6)
      {
        if (v8 != 7)
        {
          return v2 & 1;
        }

        if (*(a1 + 205) & 1) != 0 || (*(a1 + 206) & 1) != 0 || (*(a1 + 208) & 1) != 0 || (*(a1 + 212))
        {
          goto LABEL_2;
        }

        goto LABEL_34;
      }

      if (*(a1 + 205) & 1) != 0 || (*(a1 + 206) & 1) != 0 || (*(a1 + 208) & 1) != 0 || (*(a1 + 212))
      {
LABEL_2:
        v2 = 1;
        return v2 & 1;
      }
    }

    else
    {
      if (v8 != 4)
      {
        if ((*(a1 + 205) & 1) == 0 && (*(a1 + 206) & 1) == 0 && (*(a1 + 208) & 1) == 0 && *(a1 + 212) != 1)
        {
LABEL_39:
          v2 = 0;
          return v2 & 1;
        }

LABEL_34:
        v9 = sub_1000154A8();
        v2 = (*(*v9 + 96))(v9);
        return v2 & 1;
      }

      if ((*(a1 + 205) & 1) == 0 && (*(a1 + 206) & 1) == 0 && (*(a1 + 208) & 1) == 0 && *(a1 + 212) != 1)
      {
        goto LABEL_39;
      }
    }

    v2 = *(a1 + 284) == 1;
  }

  return v2 & 1;
}

uint64_t sub_1005BDFB8(uint64_t a1)
{
  v47[0] = 0;
  v47[1] = 0;
  sub_100007F88(v47, a1 + 48);
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 248);
    v4 = *(a1 + 272);
    v5 = *(a1 + 112);
    *buf = 134218496;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    v49 = v4;
    *v50 = 1024;
    *&v50[2] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "configureNextThreshold fDiscoveryScanThresholds:%lu fConnectScanThresholds:%lu fStackStarted:%d", buf, 0x1Cu);
  }

  if (*(a1 + 112) == 1)
  {
    v45 = -1;
    v46 = -1;
    v43 = -1;
    v44 = -1;
    v42 = -1;
    v6 = *(a1 + 232);
    if (v6 == (a1 + 240))
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = sub_1005BDD74(a1, (v6 + 5));
        if (v8)
        {
          if ((*(a1 + 328) & 1) == 0 && (*(v6 + 41) & 1) == 0)
          {
            v9 = *(v6 + 16);
            if (v9)
            {
              v10 = *(v6 + 13);
              if (v10 != v9)
              {
                if (v10)
                {
                  *(v6 + 12) = v9;
                  *(v6 + 13) = v9;
                  v11 = qword_100BCEAD0;
                  v7 = 1;
                  v8 = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO);
                  if (v8)
                  {
                    sub_1005BCCE0((v6 + 5));
                    v12 = v50[1] >= 0 ? buf : *buf;
                    *v62 = 136315138;
                    v63 = v12;
                    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "New coex actuals for scanRequest %s", v62, 0xCu);
                    if ((v50[1] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }
                }
              }
            }
          }
        }

        v13 = sub_1005BD9F8(v8, (v6 + 5), &v46, &v45, &v42);
        v14 = v6[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v6[2];
            v16 = *v15 == v6;
            v6 = v15;
          }

          while (!v16);
        }

        v7 |= v13;
        v6 = v15;
      }

      while (v15 != (a1 + 240));
    }

    v17 = *(a1 + 256);
    if (v17 != (a1 + 264))
    {
      do
      {
        v18 = sub_1005BDD74(a1, (v17 + 7));
        if (v18)
        {
          if ((*(a1 + 328) & 1) == 0 && (*(v17 + 57) & 1) == 0)
          {
            v19 = *(v17 + 20);
            if (v19)
            {
              v20 = *(v17 + 17);
              if (v20 != v19)
              {
                if (v20)
                {
                  *(v17 + 16) = v19;
                  *(v17 + 17) = v19;
                  v21 = qword_100BCEAD0;
                  v7 = 1;
                  v18 = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO);
                  if (v18)
                  {
                    sub_1005BCCE0((v17 + 7));
                    v22 = v50[1] >= 0 ? buf : *buf;
                    *v62 = 136315138;
                    v63 = v22;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "New coex actuals for connection %s", v62, 0xCu);
                    if ((v50[1] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }
                }
              }
            }
          }
        }

        v23 = sub_1005BD9F8(v18, (v17 + 7), &v44, &v43, &v42);
        v24 = v17[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v17[2];
            v16 = *v25 == v17;
            v17 = v25;
          }

          while (!v16);
        }

        v7 |= v23;
        v17 = v25;
      }

      while (v25 != (a1 + 264));
    }

    if (*(a1 + 328))
    {
      if (v46 == -1)
      {
        v26 = 0;
      }

      else
      {
        v26 = v46;
      }

      v27 = v45;
      if (v45 == -1)
      {
        v27 = 0;
      }

      v45 = v27;
      v46 = v26;
      if (v44 == -1)
      {
        v28 = 0;
      }

      else
      {
        v28 = v44;
      }

      v29 = v43;
      if (v43 == -1)
      {
        v29 = 0;
      }

      v43 = v29;
      v44 = v28;
      v30 = v42;
      if (v42 == -1)
      {
        v30 = 0;
      }

      v42 = v30;
    }

    v31 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7 & 1;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "configChanged=%d deltas:", buf, 8u);
      v31 = qword_100BCEAD0;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v46;
      *&buf[8] = 1024;
      *&buf[10] = v45;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "scanTotalRxDeltaMs=%u scanBtMCRxDeltaMs=%u", buf, 0xEu);
      v31 = qword_100BCEAD0;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v44;
      *&buf[8] = 1024;
      *&buf[10] = v43;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "connectTotalRxDeltaMs=%u connectBtMCRxDeltaMs=%u", buf, 0xEu);
    }

    if (*(a1 + 248) || *(a1 + 272))
    {
      if ((v7 & 1) == 0)
      {
        return sub_1000088CC(v47);
      }
    }

    else
    {
      *(a1 + 296) = 0;
      *(a1 + 304) = 0;
      if ((v7 & 1) == 0)
      {
        return sub_1000088CC(v47);
      }
    }

    *buf = 0;
    sub_100016250(buf);
    v32 = *buf;
    v33 = *&buf[4];
    *(a1 + 296) = *buf;
    *(a1 + 304) = v33;
    if (*(a1 + 328) == 1)
    {
      v34 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v33 + 1000 * v32;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "configChanged! Configuring controller at time %llu", buf, 0xCu);
        v34 = qword_100BCEAD0;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67111424;
        *&buf[4] = 1;
        *&buf[8] = 1024;
        *&buf[10] = 0;
        LOWORD(v49) = 1024;
        *(&v49 + 2) = v42;
        HIWORD(v49) = 1024;
        *v50 = v46;
        *&v50[4] = 1024;
        v51 = v45;
        v52 = 1024;
        v53 = v44;
        v54 = 1024;
        v55 = v43;
        v56 = 1024;
        v57 = 0;
        v58 = 1024;
        v59 = 0;
        v60 = 1024;
        v61 = 1;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "getScanStatsWithThreshold reset %u ver %u duration %u discovery %u %u conn %u %u numAdvs %u %u canWakeupAP %u", buf, 0x3Eu);
      }

      v35 = sub_10000C7D0();
      v36 = (*(*v35 + 4176))(v35, 1, 0, v42, v46, v45, v44, v43, 0, 1);
      if (v36)
      {
        v37 = qword_100BCEAD0;
        if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
        {
          sub_10084AAE0(v36, v37);
        }
      }
    }

    else
    {
      v38 = v43;
      if (v43 >= v45)
      {
        v38 = v45;
      }

      if (v42 >= v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = v42;
      }

      v40 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "configChanged! Setting soft timer", buf, 2u);
      }

      sub_1005BE6DC(a1, v39);
    }

    sub_100015514(a1 + 128, &stru_100AFF9E0);
  }

  return sub_1000088CC(v47);
}

void sub_1005BE6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005BE6DC(uint64_t a1, unsigned int a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 48);
  v4 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "armSoftwareScanRxTimer duration=%u", buf, 8u);
  }

  if ((*(a1 + 328) & 1) == 0 && !*(a1 + 336))
  {
    v5 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fSoftwareScanRxTimer %u ms Armed!", buf, 8u);
    }

    v6 = sub_100017F4C();
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v6 + 8));
    *(a1 + 336) = v7;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1005BF5D4;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v7, handler);
    v8 = *(a1 + 336);
    v9 = dispatch_time(0x8000000000000000, 1000000 * a2);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 336));
  }

  return sub_1000088CC(v12);
}

void sub_1005BE8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005BE8E4(uint64_t a1)
{
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 248);
    v4 = *(a1 + 272);
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "evaluateScanRxThresholds fDiscoveryScanThresholds:%lu fConnectScanThresholds:%lu", &v6, 0x16u);
  }

  sub_1005BCFF4(a1);
  sub_1005BD4C8(a1);
  return sub_1005BDFB8(a1);
}

uint64_t sub_1005BE9B4(uint64_t a1, uint64_t *a2)
{
  v46[0] = 0;
  v46[1] = 0;
  sub_100007F88(v46, a1 + 48);
  if (*(a1 + 248))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 272) != 0;
  }

  v39 = v4;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v44 = 0u;
      v45[0] = 0;
      *__p = 0u;
      memset(v42, 0, sizeof(v42));
      v45[1] = 0;

      BYTE1(v42[0]) = 0;
      DWORD1(v42[0]) = 0;
      v7 = sub_10004DFB4(buf, *v6);
      memset(out, 0, sizeof(out));
      uuid_unparse_upper(v7, out);
      sub_100007E30(v40, out);
      if (SBYTE7(v44) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v40;
      *&v44 = v41;
      std::string::append(__p, "-connectionScan");
      v8 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
      {
        if ((SBYTE7(v44) & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        v10 = *(v6 + 8);
        v11 = *(v6 + 12);
        v12 = *(v6 + 16);
        *out = 136315906;
        *&out[4] = v9;
        *&out[12] = 1024;
        *&out[14] = v10;
        *&out[18] = 1024;
        *&out[20] = v11;
        *&out[24] = 1024;
        *&out[26] = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "requestConnectionScanRxThreshold device=%s totalRx=%u btMCRx=%u timeout=%u", out, 0x1Eu);
      }

      memset(out, 0, 24);
      v13 = [*v6 UUIDString];
      v14 = v13;
      sub_100007E30(out, [v13 UTF8String]);

      v15 = sub_1000463C8(a1 + 256, out);
      v16 = *(v6 + 8);
      v17 = *(v6 + 16);
      if (!v16 && !v17)
      {
        v18 = v15;
        if (a1 + 264 != v15)
        {
          LOBYTE(v42[0]) = 0;
          memset(v42 + 8, 0, 24);
          v19 = v45[0];
          v45[0] = 0;

          v20 = v45[1];
          v45[1] = 0;

          *(v42 + 8) = *(v18 + 64);
          LOWORD(v42[0]) = *(v18 + 56);
          DWORD2(v44) = *(v18 + 112);
          DWORD1(v42[0]) = *(v18 + 60);
          v21 = *(v18 + 84);
          DWORD2(v42[1]) = *(v18 + 80);
          HIDWORD(v42[1]) = v21;
          v22 = *(v18 + 120);
          if (v22)
          {
            v23 = objc_retainBlock(v22);
            v24 = v45[0];
            v45[0] = v23;
          }

          v25 = *(v18 + 128);
          if (v25)
          {
            v26 = objc_retainBlock(v25);
            v27 = v45[1];
            v45[1] = v26;
          }

          BYTE1(v42[0]) = 1;
          v16 = *(v6 + 8);
          v17 = *(v6 + 16);
        }
      }

      *(&v42[0] + 1) = v16;
      DWORD2(v42[1]) = v17;
      v28 = objc_retainBlock(*(v6 + 32));
      v29 = v45[1];
      v45[1] = v28;

      DWORD2(v44) = *(v6 + 20);
      v40[0] = out;
      v30 = sub_1005C1234(a1 + 256, out);
      v31 = v42[1];
      *(v30 + 56) = v42[0];
      *(v30 + 72) = v31;
      std::string::operator=((v30 + 88), __p);
      *(v30 + 112) = DWORD2(v44);
      v32 = objc_retainBlock(v45[0]);
      v33 = *(v30 + 120);
      *(v30 + 120) = v32;

      v34 = objc_retainBlock(v45[1]);
      v35 = *(v30 + 128);
      *(v30 + 128) = v34;

      if (BYTE1(v42[0]) == 1)
      {
        v36 = qword_100BCEAD0;
        if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
        {
          sub_1005BCCE0(v42);
          v37 = v40;
          if (v41 < 0)
          {
            v37 = v40[0];
          }

          *buf = 136315138;
          v48 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Session %s cancelled", buf, 0xCu);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[0]);
          }
        }
      }

      if (out[23] < 0)
      {
        operator delete(*out);
      }

      if (SBYTE7(v44) < 0)
      {
        operator delete(__p[0]);
      }

      v6 += 40;
    }

    while (v6 != v5);
  }

  sub_100025308(a1, v39);
  return sub_1000088CC(v46);
}

uint64_t sub_1005BEE4C(uint64_t a1, uint64_t *a2)
{
  v50[0] = 0;
  v50[1] = 0;
  sub_100007F88(v50, a1 + 48);
  if (*(a1 + 248))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 272) != 0;
  }

  v43 = v4;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = (a1 + 240);
    do
    {
      v48 = 0u;
      v49[0] = 0;
      *__p = 0u;
      memset(v46, 0, sizeof(v46));
      v49[1] = 0;

      BYTE1(v46[0]) = 0;
      DWORD1(v46[0]) = 0;
      if (qword_100B50B88 != -1)
      {
        sub_10084ABD0();
      }

      if (sub_100618524(qword_100B50B80, *v5))
      {
        sub_100018384(*v5, buf);
        if (SBYTE7(v48) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *&buf[0].__locale_;
        *&v48 = buf[2];
      }

      else
      {
        v68 = 0;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        *v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100008760(buf);
        std::ostream::operator<<();
        std::stringbuf::str();
        if (SBYTE7(v48) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *v51;
        *&v48 = v52;
        buf[0].__locale_ = v45;
        *(&buf[0].__locale_ + *(v45 - 3)) = v44;
        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56[1]);
        }

        std::locale::~locale(&buf[2]);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      std::string::append(__p, "-scan");
      v8 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
      {
        if ((SBYTE7(v48) & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        v10 = *(v5 + 8);
        v11 = *(v5 + 12);
        v12 = *(v5 + 16);
        LODWORD(buf[0].__locale_) = 136315906;
        *(&buf[0].__locale_ + 4) = v9;
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = v10;
        WORD1(buf[2].__locale_) = 1024;
        HIDWORD(buf[2].__locale_) = v11;
        LOWORD(buf[3].__locale_) = 1024;
        *(&buf[3].__locale_ + 2) = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "requestScanRxThreshold session=%s totalRx=%u btMCRx=%u timeout=%u", buf, 0x1Eu);
      }

      v13 = *v7;
      if (!*v7)
      {
        goto LABEL_30;
      }

      v14 = *v5;
      v15 = (a1 + 240);
      do
      {
        v16 = v13[4];
        v17 = v16 >= v14;
        v18 = v16 < v14;
        if (v17)
        {
          v15 = v13;
        }

        v13 = v13[v18];
      }

      while (v13);
      if (v15 == v7 || v14 < v15[4])
      {
LABEL_30:
        v15 = (a1 + 240);
      }

      v19 = *(v5 + 8);
      v20 = *(v5 + 16);
      if (!v19)
      {
        v21 = !HIDWORD(v19) && v20 == 0;
        if (v21 && v15 != v7)
        {
          LOBYTE(v46[0]) = 0;
          memset(v46 + 8, 0, 24);
          v23 = v49[0];
          v49[0] = 0;

          v24 = v49[1];
          v49[1] = 0;

          *(v46 + 8) = *(v15 + 3);
          LOWORD(v46[0]) = *(v15 + 20);
          DWORD2(v48) = *(v15 + 24);
          DWORD1(v46[0]) = *(v15 + 11);
          v25 = *(v15 + 17);
          DWORD2(v46[1]) = *(v15 + 16);
          HIDWORD(v46[1]) = v25;
          v26 = v15[13];
          if (v26)
          {
            v27 = objc_retainBlock(v26);
            v28 = v49[0];
            v49[0] = v27;
          }

          v29 = v15[14];
          if (v29)
          {
            v30 = objc_retainBlock(v29);
            v31 = v49[1];
            v49[1] = v30;
          }

          BYTE1(v46[0]) = 1;
          v19 = *(v5 + 8);
          v20 = *(v5 + 16);
        }
      }

      *(&v46[0] + 1) = v19;
      DWORD2(v46[1]) = v20;
      v32 = objc_retainBlock(*(v5 + 32));
      v33 = v49[0];
      v49[0] = v32;

      DWORD2(v48) = *(v5 + 20);
      DWORD1(v46[0]) = *(v5 + 24);
      buf[0].__locale_ = v5;
      v34 = sub_1005C1468(a1 + 232, v5);
      v35 = v46[1];
      *(v34 + 5) = v46[0];
      *(v34 + 7) = v35;
      std::string::operator=(v34 + 3, __p);
      *(v34 + 24) = DWORD2(v48);
      v36 = objc_retainBlock(v49[0]);
      v37 = v34[13];
      v34[13] = v36;

      v38 = objc_retainBlock(v49[1]);
      v39 = v34[14];
      v34[14] = v38;

      if (BYTE1(v46[0]) == 1)
      {
        v40 = qword_100BCEAD0;
        if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
        {
          sub_1005BCCE0(v46);
          v41 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
          *v51 = 136315138;
          *&v51[4] = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Session %s cancelled", v51, 0xCu);
          if (SHIBYTE(buf[2].__locale_) < 0)
          {
            operator delete(buf[0].__locale_);
          }
        }
      }

      if (SBYTE7(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 40;
    }

    while (v5 != v6);
  }

  sub_100025308(a1, v43);
  return sub_1000088CC(v50);
}

uint64_t sub_1005BF47C(_DWORD *a1, int a2, int a3, int a4, int a5, int a6)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, (a1 + 12));
  v12 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    v23 = 1024;
    v24 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "scanRxThresholdVSE totalRx=%u totalBTMCRx=%u, totalConnRx=%u, totalConnBTMCRx=%u totalTime=%u", buf, 0x20u);
  }

  a1[88] = a2;
  a1[89] = a3;
  a1[90] = a6;
  a1[91] = a4;
  a1[92] = a5;
  a1[93] = a6;
  sub_1005BE8E4(a1);
  return sub_1000088CC(v14);
}

__n128 sub_1005BF5C4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1005BF5D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "fSoftwareScanRxTimer Timer expired!", buf, 2u);
  }

  sub_1005BB918(v1);
  *buf = 0;
  sub_100016250(buf);
  v3 = *buf;
  v4 = *&buf[4];
  v5 = *(v1 + 296);
  v6 = *(v1 + 304);
  *&buf[6] = 0;
  v13[0] = v5;
  v13[1] = v6;
  if ((sub_100306C80(buf, v13) & 0x80000000) != 0 || (v7 = v4 - v6 + 1000 * (v3 - v5), HIDWORD(v7)))
  {
    v8 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v1 + 304) + 1000 * *(v1 + 296);
      *buf = 134218240;
      *&buf[4] = v4 + 1000 * v3;
      v15 = 2048;
      v16 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "armSoftwareScanRxTimer: currentTime %llu fSetRxThresholdVSCTime %llu", buf, 0x16u);
    }

    LODWORD(v9) = 0;
    LODWORD(v10) = 0;
  }

  else
  {
    v9 = v7 / 0x3E8;
    v10 = v7 % 0x3E8;
  }

  return sub_1005BF47C(v1, v10 + 1000 * v9, v10 + 1000 * v9, v10 + 1000 * v9, v10 + 1000 * v9, v10 + 1000 * v9);
}

void sub_1005BF790(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v5 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000151C0(a1 + 280);
    sub_1000151C0(&v14);
    v6 = &v12;
    if (v13 < 0)
    {
      v6 = v12;
    }

    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    v16 = v6;
    v17 = 2080;
    v18 = p_p;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "wifiStateChanged: from %s to %s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    LODWORD(v8) = DWORD1(v14);
  }

  else
  {
    v8 = HIDWORD(a2);
  }

  v9 = (a1 + 280);
  if (*(a1 + 284) != v8 || *v9 != v14 || *(a1 + 288) != BYTE8(v14))
  {
    *v9 = v14;
    sub_100014FF0(a1);
  }
}

void sub_1005BF904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BF930(uint64_t a1, int a2)
{
  v4 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SDP in progress changed to %d", buf, 8u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005BFA34;
  v5[3] = &unk_100AFF980;
  v6 = a2;
  sub_100015514(a1 + 128, v5);
}

void sub_1005BFA64(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10084ABF8();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);

  sub_1005BF930(v2, v3);
}

void sub_1005BFAB8(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v24 = *a2;
  v25 = v3;
  v4 = *(a2 + 32);
  v22 = *(a2 + 33);
  v23 = *(a2 + 35);
  *buf = 0;
  sub_100016250(buf);
  v5 = *buf;
  v6 = *&buf[4];
  v7 = *(a1 + 296);
  v8 = *(a1 + 304);
  *&buf[6] = 0;
  v26[0] = v7;
  v26[1] = v8;
  if ((sub_100306C80(buf, v26) & 0x80000000) != 0 || (v9 = v6 - v8 + 1000 * (v5 - v7), HIDWORD(v9)))
  {
    v10 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 304) + 1000 * *(a1 + 296);
      *buf = 134218240;
      *&buf[4] = v6 + 1000 * v5;
      v28 = 2048;
      v29 = v14;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "handleCriticalBLEStats: currentTime %llu fSetRxThresholdVSCTime %llu", buf, 0x16u);
    }

    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = v9 / 0x3E8;
    v12 = v9 % 0x3E8;
  }

  v13 = sub_100007EE8();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3321888768;
  v16 = v24;
  v17 = v25;
  v15[2] = sub_1005BFCA8;
  v15[3] = &unk_100AFFA50;
  v18 = v4;
  v19 = v22;
  v20 = v23;
  v21 = v4;
  v15[4] = a1;
  v15[5] = v11;
  v15[6] = v12;
  sub_10000CA94(v13, v15);
}

uint64_t sub_1005BFCA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 60);
    v6 = *(a1 + 64);
    v7 = *(a1 + 68);
    v8 = *(a1 + 72);
    v9 = *(a1 + 76);
    v10 = *(a1 + 80);
    v11 = *(a1 + 84);
    v12 = *(a1 + 92);
    v13 = *(a1 + 48) + 1000 * *(a1 + 40);
    v15[0] = 67111424;
    v15[1] = v4;
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    v26 = 1024;
    v27 = v10;
    v28 = 1024;
    v29 = v11;
    v30 = 1024;
    v31 = v12;
    v32 = 1024;
    v33 = v13;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "handleCriticalBLEStats: scan time %u MC %u numADVs %u MC %u conn scan time %u MC %u numPassUpAdvs %u MC %u reportReason %u sinceLastVSC %u", v15, 0x3Eu);
  }

  return sub_1005BF47C(v2, *(a1 + 56), *(a1 + 60), *(a1 + 72), *(a1 + 76), *(a1 + 48) + 1000 * *(a1 + 40));
}

uint64_t sub_1005BFDE8(uint64_t a1, int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 48);
  *(a1 + 496) = a2;
  v4 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    if (a2)
    {
      v5 = "yes";
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Game mode enabled: '%s'", buf, 0xCu);
  }

  return sub_1000088CC(v7);
}

void sub_1005BFECC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = a2;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 48);
  if (!v8 || (*(a1 + 112) & 1) == 0)
  {
    goto LABEL_24;
  }

  v9 = [v8 UUIDString];
  sub_100007E30(&v21, [v9 UTF8String]);
  v10 = std::string::append(&v21, "_");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
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

  v14 = std::string::append(&v22, p_p, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v24 = v14->__r_.__value_.__r.__words[2];
  *v23 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (!a4)
  {
    v22.__r_.__value_.__r.__words[0] = v23;
    if (!*(sub_1005C1724(a1 + 464, v23) + 56))
    {
      goto LABEL_22;
    }

    sub_1005C1914((a1 + 464), v23);
    v19 = gCBDaemonServer;
    v18 = [v8 UUIDString];
    [v19 recordEventWithDeviceIdentifier:v18 initiator:1 starting:0 useCase:a3];
    goto LABEL_21;
  }

  v22.__r_.__value_.__r.__words[0] = v23;
  if (!*(sub_1005C1724(a1 + 464, v23) + 56) && (*(a1 + 496) & 1) == 0)
  {
    v22.__r_.__value_.__r.__words[0] = v23;
    v16 = sub_1005C1724(a1 + 464, v23);
    objc_storeStrong((v16 + 56), a2);
    v17 = gCBDaemonServer;
    v18 = [v8 UUIDString];
    [v17 recordEventWithDeviceIdentifier:v18 initiator:1 starting:1 useCase:a3];
LABEL_21:
  }

LABEL_22:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

LABEL_24:
  sub_1000088CC(v25);
}

void sub_1005C012C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v35 - 80);

  _Unwind_Resume(a1);
}

void sub_1005C01C8(_BYTE *a1, char a2, char a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  a1[226] = a5 != 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_10084AC0C();
  }

  v10 = sub_100029630(off_100B508A8);
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        if (qword_100B508D0 != -1)
        {
          sub_10084A9B0();
        }

        if (sub_10078D580(off_100B508C8, v14))
        {
          v15 = qword_100BCEAD0;
          if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
          {
            v16 = "not connected";
            if (a1[226])
            {
              v16 = "connected";
            }

            *buf = 136315138;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "MIDI: Low latency HID devices %s.", buf, 0xCu);
          }

          if (a5 || a1[227] == 1)
          {
            if (qword_100B508B0 != -1)
            {
              sub_10084AC20();
            }

            v17 = -1;
          }

          else
          {
            if (qword_100B508B0 != -1)
            {
              sub_10084AC20();
            }

            v17 = -12;
          }

          sub_1007489DC(off_100B508A8, v14, v17, 0);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v18 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
      v11 = v18;
    }

    while (v18);
  }

  if ((a3 + a2) < 4u)
  {
    v19 = a8;
  }

  else
  {
    v19 = 0;
  }

  if (a1[225] != v19)
  {
    v20 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
    {
      v21 = "False";
      if (v19)
      {
        v21 = "True";
      }

      *buf = 136315138;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Bluetooth Daemon: AoSStateChanged, isAoSAllowed: %s", buf, 0xCu);
    }

    a1[225] = v19;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1005C0504;
    v25[3] = &unk_100AFF980;
    v26 = v19;
    sub_100015514((a1 + 128), v25);
  }
}

void sub_1005C0548(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1005C0608;
  v5[3] = &unk_100AFFA80;
  v5[4] = a1;
  sub_1005C19D8(v6, a2);
  sub_10000CA94(v4, v5);
  sub_10000CEDC(v6, v6[1]);
}

void sub_1005C0608(uint64_t a1)
{
  v3 = *(a1 + 48);
  v1 = a1 + 48;
  v2 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v1;
  v5 = v2;
  do
  {
    if (*(v5 + 28) >= 1)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 28) < 1));
  }

  while (v5);
  if (v4 == v1 || *(v4 + 28) >= 2)
  {
LABEL_8:
    v4 = v1;
  }

  v6 = *(v1 - 16);
  if (!v2)
  {
    goto LABEL_16;
  }

  v7 = v1;
  do
  {
    if (*(v2 + 28) >= 2)
    {
      v7 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < 2));
  }

  while (v2);
  if (v7 == v1 || *(v7 + 28) >= 3)
  {
LABEL_16:
    v7 = v1;
  }

  if (v4 != v1 && *(v4 + 32) >= 1)
  {
    *(v6 + 227) = 1;
    v20 = (v6 + 227);
LABEL_25:
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    if (qword_100B508B0 != -1)
    {
      sub_10084AC0C();
    }

    v9 = sub_100029630(off_100B508A8);
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v10)
    {
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v25 + 1) + 8 * v12);
          if (qword_100B508D0 != -1)
          {
            sub_10084A9B0();
          }

          if (sub_10078D580(off_100B508C8, v13))
          {
            v14 = qword_100BCEAD0;
            if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
            {
              v15 = "not connected";
              if (*v20)
              {
                v15 = "connected";
              }

              *buf = 136315138;
              v31 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "MIDI: LEA device %s.", buf, 0xCu);
            }

            if (qword_100B508B0 != -1)
            {
              sub_10084AC20();
            }

            sub_1007489DC(off_100B508A8, v13, -1, 0);
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v10);
    }

    goto LABEL_44;
  }

  if (v7 == v1)
  {
    *(v6 + 227) = 0;
    v20 = (v6 + 227);
  }

  else
  {
    v8 = *(v7 + 32);
    *(v6 + 227) = v8 > 0;
    v20 = (v6 + 227);
    if (v8 > 0)
    {
      goto LABEL_25;
    }
  }

  if (*(v6 + 226) == 1)
  {
    goto LABEL_25;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_10084AC0C();
  }

  v9 = sub_100029630(off_100B508A8);
  v16 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        if (qword_100B508D0 != -1)
        {
          sub_10084A9B0();
        }

        if (sub_10078D580(off_100B508C8, v19))
        {
          if (qword_100B508B0 != -1)
          {
            sub_10084AC20();
          }

          sub_1007489DC(off_100B508A8, v19, -12, 0);
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

LABEL_44:
}

char *sub_1005C0C58(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1005C0DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C0E2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1005C0E2C(a1, *a2);
    sub_1005C0E2C(a1, a2[1]);
    sub_1005C0E8C(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_1005C0E8C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    v3 = *(a2 + 40);

    operator delete(v3);
  }
}

void sub_1005C0EE4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1005C0EE4(a1, *a2);
    sub_1005C0EE4(a1, a2[1]);
    sub_1005C0F44(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_1005C0F44(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_1005C107C(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_1005C10EC(a1, v4);
  return 1;
}

uint64_t *sub_1005C10EC(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_1005C0E8C(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t sub_1005C1138(uint64_t **a1, const void **a2)
{
  v3 = sub_1000463C8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1005C1180(a1, v3);
  return 1;
}

uint64_t *sub_1005C1180(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_1005C0F44(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t sub_1005C1234(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_1000867EC(a1, &v3, a2);
  if (!result)
  {
    sub_1005C12D8();
  }

  return result;
}

void sub_1005C1388(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1005C13A4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1005C13A4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_1005C0F44(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_1005C1468(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t sub_1005C1724(uint64_t a1, const void **a2)
{
  v7 = 0;
  v2 = *sub_1000867EC(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1005C17D8();
  }

  return v2;
}

uint64_t sub_1005C1878(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1005C18C4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1005C18C4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1005C1914(uint64_t **a1, const void **a2)
{
  v3 = sub_1000463C8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  sub_1005C18C4((v4 + 4));
  operator delete(v4);
  return 1;
}

void *sub_1005C19D8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1005C1A30(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1005C1A30(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005C1AB8(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_1005C1AB8(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100588944(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_1005C1B54(uint64_t a1)
{
  *a1 = off_100AFFD68;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  sub_100044BBC(a1 + 16);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_100044BBC(a1 + 104);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_100044BBC(a1 + 192);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a1 + 288;
  *(a1 + 304) = 0;
  return a1;
}

void sub_1005C1BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v11;
  a10 = v13;
  sub_1005C3FA4(&a10);
  sub_10007A068(v12 + 3);
  v15 = *v12;
  if (*v12)
  {
    *(v10 + 88) = v15;
    operator delete(v15);
  }

  sub_10007A068(v10 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C1C3C(uint64_t a1)
{
  *a1 = off_100AFFD68;
  v2 = (a1 + 168);
  sub_1005C3FF8(a1 + 168, *(a1 + 168));
  sub_10000CEDC(a1 + 280, *(a1 + 288));
  v3 = *(a1 + 256);
  if (v3)
  {
    *(a1 + 264) = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 192);
  v6 = v2;
  sub_1005C3FA4(&v6);
  sub_10007A068(a1 + 104);
  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  sub_10007A068(a1 + 16);
  return a1;
}

void sub_1005C1CE8(uint64_t a1)
{
  sub_1005C1C3C(a1);

  operator delete();
}

uint64_t sub_1005C1D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 16);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = (a1 + 80);
  v11 = *a3;
  v12 = a3[1];
  v17 = *a3;
  v18 = v12;
  if (v8 != v9)
  {
    while (*v8 != a2 || v17 != v8[1] || v18 != v8[2])
    {
      v8 += 5;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_10:
    v16 = a2;
    v17 = v11;
    v18 = v12;
    v19 = -1;
    v20 = a4;
    sub_1005C406C(v10, &v16);
  }

  sub_1000088CC(v15);
  return 0;
}

void sub_1005C1DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C1DF8(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  v6 = *(a1 + 12);
  if (v6 != 2048)
  {
    if (v6 == -1)
    {
      sub_1000DEEA4(a2, &v42);
      if (SHIBYTE(v44) < 0)
      {
        v24 = v43;
        operator delete(v42);
        if (v24)
        {
          return 1;
        }
      }

      else if (HIBYTE(v44))
      {
        return 1;
      }

      *a3 |= 4u;
      return 1;
    }

    return 0;
  }

  if (!sub_10053C3E8(a2))
  {
    if ((sub_1005C27C8(a1, a2) & 1) == 0 && *(a2 + 793) != 1)
    {
      return 0;
    }

    v19 = sub_1005C27C8(a1, a2);
    v20 = qword_100BCE8F0;
    v21 = os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        sub_1000E5A58(a2, &v42);
        if (v44 >= 0)
        {
          v22 = &v42;
        }

        else
        {
          v22 = v42;
        }

        *__p = 136446210;
        *&__p[4] = v22;
        v23 = "EIR matched for device %{public}s, requesting SDP";
        goto LABEL_52;
      }
    }

    else if (v21)
    {
      sub_1000E5A58(a2, &v42);
      if (v44 >= 0)
      {
        v27 = &v42;
      }

      else
      {
        v27 = v42;
      }

      *__p = 136446210;
      *&__p[4] = v27;
      v23 = "EIR previously matched for device %{public}s, requesting SDP for deadvertised service(s)";
LABEL_52:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v23, __p, 0xCu);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(v42);
      }
    }

    v7 = 0;
    *a3 |= 0x10u;
    return v7;
  }

  v41 = xmmword_1008A9EC0;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (sub_10053BFB4(a2, &v41, 0xF000u, &v42) && v43 - v42 == 16)
  {
    v10 = *v42;
    v11 = *(v42 + 1);
    v12 = qword_100BCE8F0;
    if (v10 == 1 && v11 == 1)
    {
      v30 = *(v42 + 4);
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
      {
        sub_1000E5A58(a2, __p);
        v31 = v46 >= 0 ? __p : *__p;
        *buf = 136446210;
        v48 = v31;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Device %{public}s supports SDP dirty byte caching", buf, 0xCu);
        if (v46 < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10054BEC0(a2, &v40))
      {
        v32 = qword_100BCE8F0;
        if (v30 != v40)
        {
          if (a4)
          {
            if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a2, __p);
              v38 = v46 >= 0 ? __p : *__p;
              *buf = 136446210;
              v48 = v38;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "EIR is newer than SDP for device %{public}s, re-requesting SDP", buf, 0xCu);
              if (v46 < 0)
              {
                operator delete(*__p);
              }
            }

            goto LABEL_30;
          }

          if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
          {
            sub_1000E5A58(a2, __p);
            v39 = v46 >= 0 ? __p : *__p;
            *buf = 136446210;
            v48 = v39;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "SDP is newer than EIR for device %{public}s, clearing EIR", buf, 0xCu);
            if (v46 < 0)
            {
              operator delete(*__p);
            }
          }

          sub_10054B440(a2);
          goto LABEL_62;
        }

        if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
        {
          goto LABEL_62;
        }

        sub_1000E5A58(a2, __p);
        if (v46 >= 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = *__p;
        }

        *buf = 136446210;
        v48 = v33;
        v34 = "Both EIR and SDP are up-to-date for device %{public}s";
        v35 = v32;
      }

      else
      {
        v36 = qword_100BCE8F0;
        if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
        {
          goto LABEL_62;
        }

        sub_1000E5A58(a2, __p);
        if (v46 >= 0)
        {
          v37 = __p;
        }

        else
        {
          v37 = *__p;
        }

        *buf = 136446210;
        v48 = v37;
        v34 = "We have SDP but not EIR for device %{public}s";
        v35 = v36;
      }

      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, v34, buf, 0xCu);
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
    {
      sub_10084AC48(v10, v11, v12);
    }
  }

  v14 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v15 = v46 >= 0 ? __p : *__p;
    *buf = 136446210;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Device %{public}s does not support SDP dirty byte caching", buf, 0xCu);
    if (v46 < 0)
    {
      operator delete(*__p);
    }
  }

  v16 = sub_10054BEC0(a2, &v40);
  v17 = qword_100BCE8F0;
  if (v16)
  {
    if (a4)
    {
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v18 = v46 >= 0 ? __p : *__p;
        *buf = 136446210;
        v48 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "EIR is newer than SDP for device %{public}s, re-requesting SDP", buf, 0xCu);
        if (v46 < 0)
        {
          operator delete(*__p);
        }
      }

LABEL_30:
      sub_100536730(a2);
      v7 = 0;
      *a3 |= 0x10u;
      goto LABEL_63;
    }

    if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_62;
    }

    sub_1000E5A58(a2, __p);
    if (v46 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = *__p;
    }

    *buf = 136446210;
    v48 = v28;
    v26 = "Both EIR and SDP are up-to-date for device %{public}s";
  }

  else
  {
    if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_62;
    }

    sub_1000E5A58(a2, __p);
    if (v46 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = *__p;
    }

    *buf = 136446210;
    v48 = v25;
    v26 = "We have SDP but not EIR for device %{public}s";
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
  if (v46 < 0)
  {
LABEL_61:
    operator delete(*__p);
  }

LABEL_62:
  v7 = sub_1005C2538(a1, a2);
LABEL_63:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v7;
}

void sub_1005C24EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C2538(uint64_t a1, uint64_t a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 104);
  v4 = *(a1 + 168);
  v5 = *(a1 + 176);
  if (v4 == v5)
  {
LABEL_8:
    if (*(a2 + 793) == 1)
    {
      v10 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, &__p);
        if (v19 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136446210;
        v22 = p_p;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SDP previously matched for device %{public}s, but no longer does", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(__p);
        }
      }

      *(a2 + 793) = 0;
      v12 = 1;
      goto LABEL_26;
    }

    v12 = 0;
  }

  else
  {
    while (1)
    {
      v6 = *(v4 + 8);
      __p = &off_100AE0A78;
      v18 = v6;
      if (v6)
      {
        sub_10000C69C(v6);
      }

      v7 = sub_10000C5F8(&__p);
      v8 = sub_10000C5E0(&__p);
      v9 = sub_10054D4D0(a2, v7, v8);
      __p = &off_100AE0A78;
      if (v18)
      {
        sub_10000C808(v18);
      }

      if (v9)
      {
        break;
      }

      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    v12 = 1;
    *(a2 + 793) = 1;
  }

  v13 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v14 = "did not match";
    if (v12)
    {
      v14 = "matched";
    }

    if (v19 >= 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    *buf = 136446466;
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SDP %{public}s for device %{public}s", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_26:
  sub_1000088CC(v20);
  return v12;
}