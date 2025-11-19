void sub_10052FB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10052FB80(unsigned int *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 1), __p);
    if ((SBYTE7(v20) & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Device %{public}s", &buf, 0xCu);
    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }

    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1;
    if (v4 > 3)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_100AFC310[v4];
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    State: %{public}s", __p, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 16))
    {
      v6 = "Incoming";
    }

    else
    {
      v6 = "Outgoing";
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Direction: %{public}s", __p, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005977A0(a1 + 6);
    if ((SBYTE7(v20) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Connected services: %{public}s", &buf, 0xCu);
    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }

    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005977A0(a1 + 5);
    v8 = (SBYTE7(v20) & 0x80u) == 0 ? __p : __p[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Pending services: %{public}s", &buf, 0xCu);
    if (SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v27 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  *v24 = 0u;
  v21 = 0u;
  *v22 = 0u;
  *__p = 0u;
  v20 = 0u;
  sub_1000DE474(__p + 1);
  BYTE2(v20) = 0;
  BYTE4(v20) = 0;
  BYTE2(v22[0]) = 0;
  BYTE4(v22[0]) = 0;
  DWORD1(v25[1]) = 0;
  v21 = 0uLL;
  *(&v20 + 1) = 0;
  LOBYTE(v22[0]) = 0;
  v23 = 0uLL;
  v22[1] = 0;
  LOBYTE(v24[0]) = 0;
  memset(v25, 0, 19);
  v24[1] = 0;
  BYTE8(v25[1]) = 1;
  *(&v25[1] + 14) = 0;
  *(&v25[1] + 9) = 0;
  v26 = 0uLL;
  *(&v25[2] + 1) = 0;
  LOBYTE(v27) = 0;
  *(&v27 + 2) = 0;
  memset(&buf, 0, sizeof(buf));
  if (sub_100536A18(*(a1 + 1), __p) && LOBYTE(v24[0]) == 1 && (std::string::operator=(&buf, &v24[1]), (v24[0] & 1) != 0))
  {
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    p_buf = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v16 = 136446210;
    v17 = p_buf;
    v11 = "statedump:    Make of device is: %{public}s";
    v12 = v9;
    v13 = 12;
  }

  else
  {
    v14 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    LOWORD(v16) = 0;
    v11 = "statedump:    Make of device is unknown";
    v12 = v14;
    v13 = 2;
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
LABEL_41:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25[0]) < 0)
  {
    operator delete(v24[1]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(*(&v20 + 1));
  }

  return nullsub_21(__p + 1);
}

void sub_10052FFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100320BE8(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10052FFEC(uint64_t a1)
{
  *a1 = off_100AFC038;
  *(a1 + 8) = off_100AFC088;
  *(a1 + 16) = &off_100AFC0B8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_100044BBC(a1 + 56);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_100530090(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005300B4(void *a1)
{
  *a1 = off_100AFC038;
  a1[1] = off_100AFC088;
  a1[2] = &off_100AFC0B8;
  sub_100530184(a1);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 7);
  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100530160(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    *(v1 + 128) = v3;
    operator delete(v3);
  }

  sub_100840450(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100530184(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 56);
  v3 = *(a1 + 120);
  v2 = *(a1 + 128);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        operator delete();
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 120);
  }

  *(a1 + 128) = v3;
  *(a1 + 144) = 0;
  return sub_1000088CC(v5);
}

void sub_100530218(void *a1)
{
  sub_1005300B4(a1);

  operator delete();
}

void sub_100530250(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_1008404A0();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  v2 = *sub_10000C798();
  if ((*(v2 + 456))())
  {
    v5 = 0;
    v3 = sub_100017E6C();
    (*(*v3 + 160))(v3, &v5);
    (*(*a1 + 56))(a1, v5);
    v4 = sub_100017E6C();
    sub_100532818(v4 + 744, a1 + 16);
  }
}

void sub_100530354(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 456))(v2))
  {
    v3 = sub_100017E6C() + 744;

    sub_100532AB8(v3, a1 + 16);
  }
}

uint64_t sub_1005303D0(uint64_t a1)
{
  sub_100530184(a1);
  v1 = sub_10000C798();
  result = (*(*v1 + 440))(v1);
  if (result)
  {
    v3 = *(*sub_10000C7D0() + 1072);

    return v3();
  }

  return result;
}

BOOL sub_100530480(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v5 = 1;
      goto LABEL_7;
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v5 = **i == 0;
LABEL_7:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_100530500(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 56);
  for (i = *(a1 + 120); ; ++i)
  {
    if (i == *(a1 + 128))
    {
      v3 = 0;
      goto LABEL_7;
    }

    if ((**i | 2) == 3)
    {
      break;
    }
  }

  v3 = 1;
LABEL_7:
  sub_1000088CC(v5);
  return v3;
}

uint64_t sub_100530578(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 56);
  v5 = *(a1 + 120);
  v4 = *(a1 + 128);
  while (v5 != v4)
  {
    if ((**v5 | 2) == 3)
    {
      v7 = *(*v5 + 8);
      sub_1000C2484(a2, &v7);
      v4 = *(a1 + 128);
    }

    v5 += 8;
  }

  if (qword_100B540E0 != -1)
  {
    sub_1008404B4();
  }

  sub_1007391B4(off_100B540D8, a2);
  if (qword_100B54380 != -1)
  {
    sub_1008404DC();
  }

  sub_10069095C(off_100B54378, a2);
  return sub_1000088CC(v8);
}

void sub_100530654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053066C(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 56);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  while (v4 != v5)
  {
    v6 = *v4;
    if (*(*v4 + 8) == a2)
    {
      goto LABEL_6;
    }

    ++v4;
  }

  v6 = 0;
LABEL_6:
  sub_1000088CC(v8);
  return v6;
}

BOOL sub_1005306DC(uint64_t a1, uint64_t a2, int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v7 = (*(*i + 24) & a3) != 0;
LABEL_7:
  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_100530768(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v5 = *(*i + 20);
LABEL_7:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_1005307E0(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v5 = *(*i + 24);
LABEL_7:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_100530858(uint64_t a1)
{
  v2 = sub_100530500(a1);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 56);
  if (*(a1 + 145) == 1)
  {
    if ((v2 & 1) == 0 && (*(a1 + 144) & 1) == 0)
    {
      *(a1 + 145) = 0;
      sub_10000801C(v6);
      v3 = sub_100017F4C();
      v4 = &stru_100AFC0C0;
LABEL_8:
      sub_10000CA94(v3, v4);
    }
  }

  else if ((v2 & 1) != 0 || *(a1 + 144) == 1)
  {
    *(a1 + 145) = 1;
    sub_10000801C(v6);
    v3 = sub_100017F4C();
    v4 = &stru_100AFC0E0;
    goto LABEL_8;
  }

  return sub_1000088CC(v6);
}

void sub_100530918(id a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840504();
  }

  v2 = off_100B50F60;

  sub_100530960(v2, 0);
}

void sub_100530960(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not in progress";
    if (a2)
    {
      v5 = "in progress";
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'connection %s' notification", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100532160;
  v6[3] = &unk_100AFC160;
  v7 = a2;
  sub_100532094(a1 + 24, v6);
}

void sub_100530A7C(id a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840504();
  }

  v2 = off_100B50F60;

  sub_100530960(v2, 1);
}

uint64_t sub_100530AC4(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 56);
  *(a1 + 144) = 1;
  sub_10000801C(v3);
  sub_100530858(a1);
  return sub_1000088CC(v3);
}

uint64_t sub_100530B30(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 56);
  *(a1 + 144) = 0;
  sub_10000801C(v3);
  sub_100530858(a1);
  return sub_1000088CC(v3);
}

uint64_t sub_100530B98(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 56);
  for (i = *(a1 + 120); ; ++i)
  {
    if (i == *(a1 + 128))
    {
      operator new();
    }

    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v6 = *i;
  sub_10000801C(v7);
  sub_100530858(a1);
  return sub_1000088CC(v7);
}

void sub_100530C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100530C74(uint64_t a1, uint64_t a2, int a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 56);
  v7 = *(a1 + 120);
  v6 = *(a1 + 128);
  if (v7 != v6)
  {
    v8 = v6 - v7 - 8;
    while (1)
    {
      v9 = *v7;
      if (*(*v7 + 8) == a2)
      {
        break;
      }

      ++v7;
      v8 -= 8;
      if (v7 == v6)
      {
        goto LABEL_16;
      }
    }

    if (!*(v9 + 17) && !*(v9 + 24))
    {
      if (v7 + 1 != v6)
      {
        memmove(v7, v7 + 1, v8);
      }

      *(a1 + 128) = v7 + v8;
      operator delete();
    }

    if (a3 && (*(a1 + 144) & 1) != 0)
    {
      sub_10000801C(v11);
      if (qword_100B50F88 != -1)
      {
        sub_100840518();
      }

      sub_1000E5328(off_100B50F80, a2, a3);
      sub_100007FB8(v11);
    }
  }

LABEL_16:
  sub_10000801C(v11);
  sub_100530858(a1);
  return sub_1000088CC(v11);
}

uint64_t sub_100530DB8(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5)
{
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v11 = "incoming";
    }

    else
    {
      v11 = "outgoing";
    }

    v12 = sub_10057CC18(a4);
    sub_1000E5A58(a2, __p);
    if (v35 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136446722;
    v37 = v11;
    v38 = 2082;
    v39 = v12;
    v40 = 2082;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received %{public}s connection attempt for %{public}s profile on device %{public}s", buf, 0x20u);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = qword_100BCE8D8;
  }

  if (os_signpost_enabled(v10))
  {
    v14 = a5 ? "incoming" : "outgoing";
    v15 = sub_10057CC18(a4);
    sub_1000E5A58(a2, __p);
    v16 = v35 >= 0 ? __p : __p[0];
    *buf = 136446722;
    v37 = v14;
    v38 = 2082;
    v39 = v15;
    v40 = 2082;
    v41 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "Received %{public}s connection attempt for %{public}s profile on device %{public}s", buf, 0x20u);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = sub_10000C798();
  v18 = (*(*v17 + 384))(v17) ^ 1;
  if (a4 != 14)
  {
    LOBYTE(v18) = 1;
  }

  if ((v18 & 1) == 0)
  {
    v19 = objc_alloc_init(CARConnectionTimeStore);
    v20 = +[NSDate date];
    v21 = [CARConnectionEvent eventWithName:CARBluetoothWirelessIAPProfileConnectionAttempt type:1 date:v20 payload:0];

    [v19 syncSendConnectionEvent:v21 completion:&stru_100AFC120];
  }

  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, a1 + 56);
  for (i = *(a1 + 120); ; ++i)
  {
    if (i == *(a1 + 128))
    {
      operator new();
    }

    v23 = *i;
    if (*(*i + 8) == a2)
    {
      break;
    }
  }

  v32 = *i;
  v25 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(v23 + 16);
    sub_1000E5A58(a2, __p);
    v27 = "outgoing";
    if (v26)
    {
      v27 = "incoming";
    }

    v28 = __p[0];
    v29 = *(v23 + 17);
    if (v35 >= 0)
    {
      v28 = __p;
    }

    *buf = 136446722;
    v37 = v27;
    v38 = 2082;
    v39 = v28;
    v40 = 1024;
    LODWORD(v41) = v29;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Already tracking an %{public}s connection for device %{public}s with %d pending attempt(s)", buf, 0x1Cu);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v30 = *(v23 + 20);
  if ((v30 & a3) != 0)
  {
    v31 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v37) = a3;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate connection attempt for service 0x%x", buf, 8u);
    }
  }

  else
  {
    *(v23 + 20) = v30 | a3;
    *(v23 + 16) = a5;
    *v23 = 1;
    ++*(v23 + 17);
    sub_10054D5C0(a2);
    sub_10000801C(v33);
    sub_100530858(a1);
  }

  return sub_1000088CC(v33);
}

void sub_100531230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100531278(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_10057CC18(a4);
    sub_1000E5A58(a2, __p);
    if (v51 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = *__p;
    }

    *buf = 136446722;
    *&buf[4] = v11;
    v53 = 2082;
    v54 = v12;
    v55 = 1024;
    v56 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received connection result for %{public}s profile on device %{public}s - result was %d", buf, 0x1Cu);
    if (v51 < 0)
    {
      operator delete(*__p);
    }

    v10 = qword_100BCE8D8;
  }

  if (os_signpost_enabled(v10))
  {
    v13 = sub_10057CC18(a4);
    sub_1000E5A58(a2, __p);
    v14 = v51 >= 0 ? __p : *__p;
    *buf = 136446722;
    *&buf[4] = v13;
    v53 = 2082;
    v54 = v14;
    v55 = 1024;
    v56 = a5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "Received connection result for %{public}s profile on device %{public}s - result was %d", buf, 0x1Cu);
    if (v51 < 0)
    {
      operator delete(*__p);
    }
  }

  v15 = sub_10000C798();
  v16 = (*(*v15 + 384))(v15) ^ 1;
  if (a4 != 14)
  {
    LOBYTE(v16) = 1;
  }

  if ((v16 & 1) == 0)
  {
    v17 = objc_alloc_init(CARConnectionTimeStore);
    v18 = +[NSDate date];
    v19 = CARBluetoothWirelessIAPProfileConnectionSuccess;
    v46 = CARBluetoothWirelessIAPProfileConnectionSuccess;
    v20 = [NSNumber numberWithInt:a5];
    v47 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v22 = [CARConnectionEvent eventWithName:v19 type:1 date:v18 payload:v21];

    [v17 syncSendConnectionEvent:v22 completion:&stru_100AFC140];
  }

  v45[0] = 0;
  v45[1] = 0;
  sub_100007F88(v45, a1 + 56);
  v44 = 0;
  v23 = *(a1 + 120);
  v24 = *(a1 + 128);
  if (v23 == v24)
  {
LABEL_22:
    if (!a5)
    {
      operator new();
    }

LABEL_47:
    sub_100017F4C();
    operator new();
  }

  v25 = v23 + 8;
  while (1)
  {
    v26 = *v23;
    if (*(*v23 + 8) == a2)
    {
      break;
    }

    v23 += 8;
    v25 += 8;
    if (v23 == v24)
    {
      goto LABEL_22;
    }
  }

  v44 = *v23;
  v27 = *(v26 + 20);
  if ((v27 & a3) != 0)
  {
    *(v26 + 20) = v27 & ~a3;
    v28 = *(v26 + 17);
    if (v28)
    {
      goto LABEL_26;
    }

    v30 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10052F7CC(v26);
      if (v55 >= 0)
      {
        v38 = buf;
      }

      else
      {
        v38 = *buf;
      }

      *__p = 136446210;
      *&__p[4] = v38;
      _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "Found mismatch between connection attempts and connection results - dumping connection state:\n%{public}s", __p, 0xCu);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(*buf);
      }

      v28 = *(v26 + 17);
      if (v28)
      {
LABEL_26:
        *(v26 + 17) = v28 - 1;
      }
    }

    if (!a5)
    {
      v32 = *(v26 + 20);
      *(v26 + 24) |= a3;
      if (v32)
      {
        if (*(v26 + 17))
        {
          goto LABEL_47;
        }
      }

      else if (!*(v26 + 17))
      {
LABEL_46:
        *v26 = 2;
        goto LABEL_47;
      }

      v36 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        v43 = v32;
        sub_1005977A0(&v43);
        v41 = v55 >= 0 ? buf : *buf;
        v42 = *(v26 + 17);
        *__p = 136446466;
        *&__p[4] = v41;
        v49 = 1024;
        v50 = v42;
        _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "Found mismatch between pending services(%{public}s) and pending attempts (%d)", __p, 0x12u);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_46;
    }

    v31 = *(v26 + 20);
    if (v31)
    {
      if (*(v26 + 17))
      {
        goto LABEL_47;
      }
    }

    else if (!*(v26 + 17))
    {
LABEL_40:
      if (!*(v26 + 24))
      {
        v34 = *(a1 + 128);
        v35 = v34 - v25;
        if (v34 != v25)
        {
          memmove(v25 - 8, v25, v34 - v25);
        }

        *(a1 + 128) = &v25[v35 - 8];
        operator delete();
      }

      goto LABEL_46;
    }

    v33 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      v43 = v31;
      sub_1005977A0(&v43);
      v39 = v55 >= 0 ? buf : *buf;
      v40 = *(v26 + 17);
      *__p = 136446466;
      *&__p[4] = v39;
      v49 = 1024;
      v50 = v40;
      _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Found mismatch between pending services(%{public}s) and pending attempts (%d)", __p, 0x12u);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_40;
  }

  v29 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_100840540(a3, v29);
  }

  sub_1000088CC(v45);
  return 0;
}

void sub_100531954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1005319BC(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, int a6)
{
  v29 = a3;
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_10057CC18(a4);
    sub_1000E5A58(a2, __p);
    if (v28 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *buf = 136446978;
    *v32 = v13;
    *&v32[8] = 2082;
    v33 = v14;
    v34 = 1024;
    v35 = a5;
    v36 = 1024;
    v37 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received disconnection result for %{public}s profile on device %{public}s - result was %d - reason was %d", buf, 0x22u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = qword_100BCE8D8;
  }

  if (os_signpost_enabled(v12))
  {
    v15 = sub_10057CC18(a4);
    sub_1000E5A58(a2, __p);
    v16 = v28 >= 0 ? __p : __p[0];
    *buf = 136446978;
    *v32 = v15;
    *&v32[8] = 2082;
    v33 = v16;
    v34 = 1024;
    v35 = a5;
    v36 = 1024;
    v37 = a6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "Received disconnection result for %{public}s profile on device %{public}s - result was %d - reason was %d", buf, 0x22u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 56);
  v18 = *(a1 + 120);
  v17 = *(a1 + 128);
  if (v18 == v17)
  {
LABEL_18:
    if (!a5)
    {
      v21 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_1005977A0(&v29);
        sub_1008405B8(buf, v30, v21);
      }

      sub_10000801C(__p);
      sub_100017F4C();
      operator new();
    }

    v20 = 0;
LABEL_24:
    v22 = v20 == 0;
    goto LABEL_25;
  }

  v19 = v17 - v18 - 8;
  while (1)
  {
    v20 = *v18;
    if (*(*v18 + 8) == a2)
    {
      break;
    }

    ++v18;
    v19 -= 8;
    if (v18 == v17)
    {
      goto LABEL_18;
    }
  }

  if (a5)
  {
    goto LABEL_24;
  }

  v24 = *(v20 + 24) & ~a3;
  *(v20 + 24) = v24;
  if (!v24 && !*(v20 + 20))
  {
    if (v18 + 1 != v17)
    {
      memmove(v18, v18 + 1, v19);
    }

    *(a1 + 128) = v18 + v19;
    operator delete();
  }

  v25 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v26 = *(v20 + 20);
    *buf = 67109376;
    *v32 = v24;
    *&v32[4] = 1024;
    *&v32[6] = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "There is at least one connected (0x%08x) or pending (0x%08x) service left", buf, 0xEu);
  }

  v22 = 0;
LABEL_25:
  sub_1000088CC(__p);
  return v22;
}

void sub_100531D74(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- Connection Manager ----------------", &buf, 2u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 144))
    {
      v3 = "Yes";
    }

    else
    {
      v3 = "No";
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Pairing in progress: %{public}s", &buf, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 145))
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Connection in progress: %{public}s", &buf, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Connections:", &buf, 2u);
  }

  buf = 0uLL;
  v27 = 0;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 56);
  v6 = *(a1 + 120);
  v5 = *(a1 + 128);
  if (v6 != v5)
  {
    v7 = 0;
    do
    {
      v8 = *v6;
      if (v7 >= v27)
      {
        v10 = buf;
        v11 = (v7 - buf) >> 5;
        v12 = v11 + 1;
        if ((v11 + 1) >> 59)
        {
          sub_1000C7698();
        }

        v13 = v27 - buf;
        if ((v27 - buf) >> 4 > v12)
        {
          v12 = v13 >> 4;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFE0)
        {
          v14 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_100532D98(&buf, v14);
        }

        v15 = (v7 - buf) >> 5;
        v16 = (32 * v11);
        v17 = v8[1];
        *v16 = *v8;
        v16[1] = v17;
        v18 = 32 * v11 - 32 * v15;
        if (v10 != v7)
        {
          v19 = v10;
          v20 = v18;
          do
          {
            v21 = *v19;
            v22 = v19[1];
            v19 += 2;
            *v20 = v21;
            v20[1] = v22;
            v20 += 2;
          }

          while (v19 != v7);
        }

        v7 = v16 + 2;
        *&buf = v18;
        *(&buf + 1) = v16 + 2;
        v27 = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        v9 = v8[1];
        *v7 = *v8;
        v7[1] = v9;
        v7 += 2;
      }

      *(&buf + 1) = v7;
      ++v6;
    }

    while (v6 != v5);
  }

  sub_1000088CC(v25);
  v24 = *(&buf + 1);
  v23 = buf;
  if (buf != *(&buf + 1))
  {
    do
    {
      sub_10052FB80(v23);
      v23 += 8;
    }

    while (v23 != v24);
    v23 = buf;
  }

  if (v23)
  {
    *(&buf + 1) = v23;
    operator delete(v23);
  }
}

void sub_100532064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100532094(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_100532190(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v7 = v18 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'device connected' notification for device %{public}s with result %d", buf, 0x12u);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100532418;
  v14[3] = &unk_100AFC180;
  v14[4] = a2;
  v15 = a3;
  sub_100532094(a1 + 24, v14);
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_1000ADA24(a1, &__p);
  v9 = __p;
  v8 = v17;
  v10 = sub_100017F4C();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10053244C;
  v12[3] = &unk_100AE0900;
  v13 = (v8 - v9) >> 3;
  sub_10000CA94(v10, v12);
  if (qword_100B50AA0 != -1)
  {
    sub_10084062C();
  }

  sub_1005A0484(off_100B50A98, 0);
  if (!a3)
  {
    sub_1000DEEA4(a2, buf);
    if (v20 >= 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = *&buf[8];
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      operator delete(*buf);
      if (v11)
      {
        goto LABEL_20;
      }
    }

    else if (v11)
    {
      goto LABEL_20;
    }

    if (qword_100B50DB8 != -1)
    {
      sub_100840654();
    }

    sub_1005C76B8(off_100B50DB0);
  }

LABEL_20:
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

void sub_1005323EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10053244C(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10084067C();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);

  sub_1005BBC68(v2, v3);
}

void sub_1005324A0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v9 = v20 >= 0 ? &__p : __p;
    *buf = 136446466;
    v22 = v9;
    v23 = 1024;
    v24 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'device disconnected' notification for device %{public}s with result %d", buf, 0x12u);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005326A0;
  v15[3] = &unk_100AFC1A0;
  v15[4] = a2;
  v16 = a3;
  v17 = a4;
  sub_100532094(a1 + 24, v15);
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_1000ADA24(a1, &__p);
  v11 = __p;
  v10 = v19;
  v12 = sub_100017F4C();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1005326D4;
  v13[3] = &unk_100AE0900;
  v14 = (v10 - v11) >> 3;
  sub_10000CA94(v12, v13);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_100532678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005326D4(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10084067C();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);

  sub_1005BBC68(v2, v3);
}

void sub_100532748(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840504();
  }

  v2 = off_100B50F60;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  sub_100532190(v2, v3, v4);
}

void sub_1005327B8(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840504();
  }

  v2 = off_100B50F60;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);

  sub_1005324A0(v2, v3, v4, v5);
}

void sub_100532818(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1005328E4((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005328E4(void *a1, char *__src, char *a3)
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

void sub_100532A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100532AB8(uint64_t a1, uint64_t a2)
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
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_100532D98(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_10053301C(uint64_t a1, int *a2)
{
  v4 = sub_100044BBC(a1);
  sub_100044BBC(v4 + 64);
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 184) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 132) = v6;
  *(a1 + 128) = v5;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 328) = a1 + 336;
  *(a1 + 420) = 0;
  *(a1 + 368) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  sub_100044BBC(a1 + 432);
  *(a1 + 496) = &off_100AE0A78;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 560) = 0;
  *(a1 + 564) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 582) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 592) = a1 + 600;
  *(a1 + 616) = 0;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 648) = 256;
  *(a1 + 658) = 0;
  *(a1 + 650) = 0;
  *(a1 + 653) = 0;
  *(a1 + 660) = 1;
  *(a1 + 724) = 0;
  *(a1 + 708) = 0u;
  *(a1 + 678) = 0;
  *(a1 + 662) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 700) = 0;
  *(a1 + 748) = 0u;
  *(a1 + 772) = 0;
  *(a1 + 764) = 0;
  *(a1 + 776) = 4;
  *(a1 + 796) = 0xFFFF00000000;
  *(a1 + 784) = 0;
  *(a1 + 791) = 0;
  *(a1 + 804) = 1;
  *(a1 + 808) = 0;
  *(a1 + 824) = 0;
  *(a1 + 849) = 0;
  *(a1 + 860) = 0;
  *(a1 + 1047) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 1049) = 1;
  *(a1 + 1051) = -65536;
  *(a1 + 1056) = 0;
  *(a1 + 1060) = 0;
  *(a1 + 1064) = &off_100AE0A78;
  *(a1 + 1072) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1290) = 0;
  *(a1 + 1282) = 0;
  *(a1 + 1148) = 0;
  *(a1 + 1124) = 0u;
  *(a1 + 1140) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1212) = 0u;
  *(a1 + 1280) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  sub_100007E30((a1 + 1312), "");
  *(a1 + 1368) = 0;
  *(a1 + 1380) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1388) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  *(a1 + 1420) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1344) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1415) = 0;
  *(a1 + 1436) = 0x10000;
  *(a1 + 1428) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1484) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 512;
  *(a1 + 1500) = 0;
  *(a1 + 1528) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1504) = 0u;
  *(a1 + 1536) = 0xFFFFFFFFLL;
  sub_100007E30((a1 + 1544), "");
  *(a1 + 1568) = 0;
  *(a1 + 1570) = 0;
  *(a1 + 1572) = 0;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 536) = 0;
  *(a1 + 552) = 0;
  *(a1 + 528) = 0;
  *(a1 + 560) = 0;
  *(a1 + 816) = 0x600000003;
  *(a1 + 828) = xmmword_1008A9E80;
  *(a1 + 844) = 0;
  *(a1 + 848) = 2;
  *(a1 + 850) = 0;
  *(a1 + 852) = 80;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 880) = 0;
  *(a1 + 876) = 0;
  *(a1 + 868) = 0;
  *(a1 + 888) = 1;
  *(a1 + 892) = 0;
  *(a1 + 900) = 0u;
  *(a1 + 916) = 0u;
  *(a1 + 932) = 0;
  *(a1 + 940) = xmmword_1008A49A0;
  *(a1 + 956) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1020) = 0;
  *(a1 + 1028) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1050) = 0;
  *(a1 + 740) = 0;
  *(a1 + 708) = 0u;
  *(a1 + 724) = 0u;
  *(a1 + 1043) = 0;
  *(a1 + 1036) = 0;
  v7 = sub_10000E92C();
  sub_100007E30(v13, "Device");
  sub_100007E30(__p, "enableSDPPrint");
  (*(*v7 + 72))(v7, v13, __p, a1 + 1048);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v8 = sub_10000E92C();
  sub_100007E30(v13, "Device");
  sub_100007E30(__p, "wipeIDCache");
  (*(*v8 + 72))(v8, v13, __p, a1 + 1050);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  *(a1 + 1360) = 0;
  *(a1 + 1336) = -1;
  v9 = *(a1 + 1344);
  *(a1 + 1344) = 0;

  *(a1 + 1452) = 0u;
  *(a1 + 1468) = 0u;
  sub_100533704(a1);
  *(a1 + 1512) = *(a1 + 1504);
  *(a1 + 1576) = 0;
  return a1;
}

void sub_10053353C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1003617DC((v20 + 1584));
  if (*(v20 + 1567) < 0)
  {
    operator delete(*v24);
  }

  v28 = *(v20 + 1504);
  if (v28)
  {
    *(v20 + 1512) = v28;
    operator delete(v28);
  }

  if (*(v20 + 1335) < 0)
  {
    operator delete(*v23);
  }

  v29 = (v20 + 1184);
  if (*(v20 + 1279) < 0)
  {
    operator delete(*(v20 + 1256));
  }

  a15 = (v20 + 1232);
  sub_1000161FC(&a15);
  v30 = *v29;
  if (*v29)
  {
    *(v20 + 1192) = v30;
    operator delete(v30);
  }

  *(v20 + 1064) = v22;
  v31 = *(v20 + 1072);
  if (v31)
  {
    sub_10000C808(v31);
  }

  v32 = *(v20 + 992);
  if (v32)
  {
    *(v20 + 1000) = v32;
    operator delete(v32);
  }

  v33 = *v26;
  if (*v26)
  {
    *(v20 + 976) = v33;
    operator delete(v33);
  }

  v34 = *(v20 + 752);
  if (v34)
  {
    *(v20 + 760) = v34;
    operator delete(v34);
  }

  a15 = (v20 + 624);
  sub_1005503DC(&a15);
  sub_10037505C(v20 + 592, *(v20 + 600));
  *(v20 + 496) = v21;
  v35 = *(v20 + 504);
  if (v35)
  {
    sub_10000C808(v35);
  }

  sub_10007A068(v25 + 96);
  if (*(v20 + 415) < 0)
  {
    operator delete(*(v20 + 392));
  }

  sub_10000CEDC(v25 - 8, *(v20 + 336));
  if (*(v20 + 303) < 0)
  {
    operator delete(*(v20 + 280));
  }

  if (*(v20 + 263) < 0)
  {
    operator delete(*(v20 + 240));
  }

  if (*(v20 + 223) < 0)
  {
    operator delete(*(v20 + 200));
  }

  sub_10007A068(v20 + 64);
  sub_10007A068(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_100533704(uint64_t a1)
{
  v304[0] = 0;
  v304[1] = 0;
  sub_100007F88(v304, a1);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (qword_100B50910 != -1)
    {
      sub_1008406F4();
    }

    v2 = sub_1005BBA08(off_100B50908);
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT) && ((sub_1000E5A58(a1, __p), (SBYTE7(__p[1]) & 0x80u) == 0) ? (v4 = __p) : (v4 = *&__p[0]), LODWORD(buf.__r_.__value_.__l.__data_) = 136446210, *(buf.__r_.__value_.__r.__words + 4) = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Read device %{public}s settings", &buf, 0xCu), SBYTE7(__p[1]) < 0))
    {
      operator delete(*&__p[0]);
      if ((v2 & 1) == 0)
      {
LABEL_12:
        if (*(a1 + 1050) != 1)
        {
          goto LABEL_25;
        }
      }
    }

    else if ((v2 & 1) == 0)
    {
      goto LABEL_12;
    }

    *(a1 + 748) = 0;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 1050);
      LODWORD(__p[0]) = 67109376;
      DWORD1(__p[0]) = v2;
      WORD4(__p[0]) = 1024;
      *(__p + 10) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Identification - wiping ID cache due to build version update %d, override %d", __p, 0xEu);
    }

    v7 = sub_1000BE4B4();
    if ((*(*v7 + 56))(v7, a1, 0) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084071C();
    }

    v8 = sub_1000BE4B4();
    if ((*(*v8 + 72))(v8, a1, 0) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100840758();
    }

LABEL_25:
    *&__p[0] = 0;
    sub_100016250(__p);
    v9 = SLODWORD(__p[0]);
    v10 = SWORD2(__p[0]);
    memset(&buf, 0, sizeof(buf));
    v11 = sub_1000BE4B4();
    v12 = (*(*v11 + 32))(v11, a1, &buf);
    if (v12)
    {
      if (sub_1000295DC(a1))
      {
        v13 = IsAppleInternalBuild();
        v14 = v13 != 0;
        if (v13)
        {
          v329 = 0;
          v327 = 0u;
          v328 = 0u;
          v325 = 0u;
          v326 = 0u;
          v323 = 0u;
          v324 = 0u;
          v321 = 0u;
          v322 = 0u;
          *v319 = 0u;
          memset(v320, 0, sizeof(v320));
          *v317 = 0u;
          v318 = 0u;
          memset(__p, 0, sizeof(__p));
          sub_100007AD0(__p);
          v15 = sub_100007774(&__p[1]);
          std::to_string(&__str, v12);
          v16 = sub_100007774(v15);
          v17 = sub_100007774(v16);
          v18 = v301;
          sub_1000BE6F8((a1 + 128), v301);
          if (v302 < 0)
          {
            v18 = v301[0];
          }

          strlen(v18);
          v19 = sub_100007774(v17);
          v20 = sub_100007774(v19);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          strlen(p_buf);
          sub_100007774(v20);
          if (v302 < 0)
          {
            operator delete(v301[0]);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          std::stringbuf::str();
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          sub_1001C4B04(p_str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *&__p[1] = v23;
          if (SHIBYTE(v320[0]) < 0)
          {
            operator delete(v319[1]);
          }

          std::locale::~locale(&__p[2]);
          std::iostream::~basic_iostream();
          std::ios::~ios();
        }

        else
        {
          v28 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
          {
            sub_1000BE6F8((a1 + 128), &__str);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v225 = &__str;
            }

            else
            {
              v225 = __str.__r_.__value_.__r.__words[0];
            }

            v226 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v226 = buf.__r_.__value_.__r.__words[0];
            }

            LODWORD(__p[0]) = 67109891;
            DWORD1(__p[0]) = v12;
            WORD4(__p[0]) = 2082;
            *(__p + 10) = v225;
            WORD1(__p[1]) = 2160;
            *(&__p[1] + 4) = 1752392040;
            WORD6(__p[1]) = 2081;
            *(&__p[1] + 14) = v226;
            _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Read name result failure = %d, device address = %{public}s, value = %{private, mask.hash}s", __p, 0x26u);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }

        v29 = sub_10000F034();
        (*(*v29 + 456))(v29, 0);
LABEL_57:
        memset(&__str, 0, sizeof(__str));
        v30 = sub_1000BE4B4();
        if ((*(*v30 + 208))(v30, a1, &__str))
        {
          if (v14)
          {
            if (qword_100B53FE8 != -1)
            {
              sub_100840794();
            }

            sub_100578CA8(qword_100B53FE0, 4);
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(a1, v301);
              sub_1008407BC();
            }
          }
        }

        else
        {
          std::string::operator=((a1 + 280), &__str);
        }

        v31 = sub_1000BE4B4();
        if (!(*(*v31 + 224))(v31, a1, &buf))
        {
          std::string::operator=((a1 + 200), &buf);
          *(a1 + 224) = v9;
          *(a1 + 232) = v10;
        }

        v300 = 0;
        v32 = sub_1000BE4B4();
        v33 = (*(*v32 + 256))(v32, a1, &v300);
        if (!v33)
        {
          *(a1 + 304) = v300;
          *(a1 + 312) = v9;
          *(a1 + 320) = v10;
          if (qword_100B508F0 != -1)
          {
            sub_100840690();
          }

          *(a1 + 176) = sub_10056BEAC(off_100B508E8, (a1 + 304), a1);
          *(a1 + 184) = v9;
          *(a1 + 192) = v10;
        }

        v34 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p[0]) = 67109376;
          DWORD1(__p[0]) = v33;
          WORD4(__p[0]) = 1024;
          *(__p + 10) = v300;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Read classOfDevice result %d, value = 0x%x", __p, 0xEu);
        }

        v299[0] = 0;
        v299[1] = 0;
        v298 = v299;
        v35 = sub_1000BE4B4();
        if (!(*(*v35 + 240))(v35, a1, &v298))
        {
          if ((a1 + 328) != &v298)
          {
            sub_1005506E8((a1 + 328), v298, v299);
          }

          *(a1 + 352) = v9;
          *(a1 + 360) = v10;
        }

        *(a1 + 1124) = 0;
        *(a1 + 1127) = 0;
        *(a1 + 1144) = 0;
        *(a1 + 1152) = 0;
        v36 = sub_1000BE4B4();
        (*(*v36 + 1496))(v36, a1);
        v297 = 0;
        v37 = sub_1000BE4B4();
        v38 = (*(*v37 + 1528))(v37, a1, &v297);
        v39 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v297;
          sub_1000E5A58(a1, &v314);
          v41 = v315 >= 0 ? &v314 : v314;
          LODWORD(__p[0]) = 67109634;
          DWORD1(__p[0]) = v38;
          WORD4(__p[0]) = 1024;
          *(__p + 10) = v40;
          HIWORD(__p[0]) = 2082;
          *&__p[1] = v41;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "readGAPA result %d, value = 0x%x for %{public}s", __p, 0x18u);
          if (SHIBYTE(v315) < 0)
          {
            operator delete(v314);
          }
        }

        v42 = v297;
        if (v38)
        {
          v42 = 0;
        }

        *(a1 + 576) = v42;
        v43 = sub_1000BE4B4();
        if (!(*(*v43 + 288))(v43, a1, a1 + 592))
        {
          if (qword_100B547A0 != -1)
          {
            sub_100840818();
          }

          sub_1006137F4(off_100B54798, a1);
          sub_10000801C(v304);
          if (qword_100B508F0 != -1)
          {
            sub_100840690();
          }

          sub_10056B15C(off_100B508E8, a1, 4);
          sub_100007FB8(v304);
        }

        v296 = 0;
        v44 = sub_1000BE4B4();
        v45 = (*(*v44 + 304))(v44, a1, &v296);
        if (v45)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0x100010000;
        }

        else
        {
          v47 = v296;
          v46 = v296 & 1;
          v48 = *&vshl_u16((*&vdup_n_s16(v296) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
        }

        *(a1 + 650) = v46;
        *(a1 + 651) = vuzp1_s8(v48, v48).u32[0];
        *(a1 + 1392) = v47;
        v49 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p[0]) = 67109376;
          DWORD1(__p[0]) = v45;
          WORD4(__p[0]) = 1024;
          *(__p + 10) = v296;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Read PhonebookSyncSettings result %d, settings 0x%x", __p, 0xEu);
        }

        v295 = 0;
        v50 = sub_1000BE4B4();
        v51 = (*(*v50 + 416))(v50, a1, &v295);
        v52 = v295;
        if (v51)
        {
          v52 = 0;
        }

        *(a1 + 655) = v52;
        v294 = 0;
        v53 = sub_1000BE4B4();
        v54 = (*(*v53 + 432))(v53, a1, &v294);
        if (v54)
        {
          v55 = 0;
        }

        else
        {
          v55 = v294;
        }

        *(a1 + 662) = v55;
        v56 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p[0]) = 67109376;
          DWORD1(__p[0]) = v54;
          WORD4(__p[0]) = 1024;
          *(__p + 10) = v55;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Read lastAVRCPVersion result %d, version %d", __p, 0xEu);
        }

        v293 = 0;
        v57 = sub_1000BE4B4();
        v58 = (*(*v57 + 448))(v57, a1, &v293);
        v59 = v293;
        if (v58)
        {
          v59 = 0;
        }

        *(a1 + 664) = v59;
        v292 = 0;
        v60 = sub_1000BE4B4();
        v61 = (*(*v60 + 464))(v60, a1, &v292);
        v62 = v292;
        if (v61)
        {
          v62 = 0;
        }

        *(a1 + 666) = v62;
        v291 = 0;
        v63 = sub_1000BE4B4();
        v64 = (*(*v63 + 480))(v63, a1, &v291);
        v65 = v291;
        if (v64)
        {
          v65 = 0;
        }

        *(a1 + 668) = v65;
        v290 = 0;
        v66 = sub_1000BE4B4();
        v67 = (*(*v66 + 496))(v66, a1, &v290);
        v68 = v290;
        if (v67)
        {
          v68 = 0;
        }

        *(a1 + 670) = v68;
        v289 = 0;
        v69 = sub_1000BE4B4();
        v70 = (*(*v69 + 512))(v69, a1, &v289);
        v71 = v289;
        if (v70)
        {
          v71 = 0;
        }

        *(a1 + 672) = v71;
        v288 = 0;
        v72 = sub_1000BE4B4();
        v73 = (*(*v72 + 528))(v72, a1, &v288);
        v74 = v288;
        if (v73)
        {
          v74 = 0;
        }

        *(a1 + 674) = v74;
        v287 = 0;
        v75 = sub_1000BE4B4();
        v76 = (*(*v75 + 544))(v75, a1, &v287);
        v77 = v287;
        if (v76)
        {
          v77 = 0;
        }

        *(a1 + 676) = v77;
        v286 = 0;
        v78 = sub_1000BE4B4();
        v79 = (*(*v78 + 560))(v78, a1, &v286);
        v80 = v286;
        if (v79)
        {
          v80 = 0;
        }

        *(a1 + 678) = v80;
        v285 = 0;
        v81 = sub_1000BE4B4();
        v82 = (*(*v81 + 576))(v81, a1, &v285);
        v83 = v285;
        if (v82)
        {
          v83 = 0;
        }

        *(a1 + 680) = v83;
        v284 = 0;
        v84 = sub_1000BE4B4();
        v85 = (*(*v84 + 592))(v84, a1, &v284);
        v86 = v284;
        if (v85)
        {
          v86 = 0;
        }

        *(a1 + 682) = v86;
        v283 = 0;
        v87 = sub_1000BE4B4();
        v88 = (*(*v87 + 608))(v87, a1, &v283);
        v89 = v283;
        if (v88)
        {
          v89 = 0;
        }

        *(a1 + 684) = v89;
        v282 = 0;
        v90 = sub_1000BE4B4();
        v91 = (*(*v90 + 624))(v90, a1, &v282);
        v92 = v282;
        if (v91)
        {
          v92 = 0;
        }

        *(a1 + 686) = v92;
        v281 = 0;
        v93 = sub_1000BE4B4();
        v94 = (*(*v93 + 640))(v93, a1, &v281);
        v95 = v281;
        if (v94)
        {
          v95 = 0;
        }

        *(a1 + 688) = v95;
        v280 = 0;
        v96 = sub_1000BE4B4();
        v97 = (*(*v96 + 656))(v96, a1, &v280);
        v98 = v280;
        if (v97)
        {
          v98 = 0;
        }

        *(a1 + 690) = v98;
        v279 = 0;
        v99 = sub_1000BE4B4();
        v100 = (*(*v99 + 672))(v99, a1, &v279);
        v101 = v279;
        if (v100)
        {
          v101 = 0;
        }

        *(a1 + 692) = v101;
        v278 = 0;
        v102 = sub_1000BE4B4();
        v103 = (*(*v102 + 688))(v102, a1, &v278);
        v104 = v278;
        if (v103)
        {
          v104 = 0;
        }

        *(a1 + 694) = v104;
        v277 = 0;
        v105 = sub_1000BE4B4();
        v106 = (*(*v105 + 704))(v105, a1, &v277);
        v107 = v277;
        if (v106)
        {
          v107 = 0;
        }

        *(a1 + 696) = v107;
        v276 = 0;
        v108 = sub_1000BE4B4();
        v109 = (*(*v108 + 720))(v108, a1, &v276);
        v110 = v276;
        if (v109)
        {
          v110 = 0;
        }

        *(a1 + 698) = v110;
        v275 = 0;
        v111 = sub_1000BE4B4();
        v112 = (*(*v111 + 736))(v111, a1, &v275);
        v113 = v275;
        if (v112)
        {
          v113 = 0;
        }

        *(a1 + 700) = v113;
        *(a1 + 704) = 0;
        v114 = sub_1000BE4B4();
        if ((*(*v114 + 48))(v114, a1, a1 + 708))
        {
          *(a1 + 748) = 0;
        }

        else
        {
          *(a1 + 748) = 1;
          v115 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a1, &v314);
            v116 = v315 >= 0 ? &v314 : v314;
            LODWORD(__p[0]) = 136446722;
            *(__p + 4) = v116;
            WORD6(__p[0]) = 1042;
            *(__p + 14) = 20;
            WORD1(__p[1]) = 2098;
            *(&__p[1] + 4) = a1 + 708;
            _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "Primary Identification - persisted {device %{public}s, %{public}.20P}", __p, 0x1Cu);
            if (SHIBYTE(v315) < 0)
            {
              operator delete(v314);
            }
          }
        }

        v117 = sub_1000BE4B4();
        if ((*(*v117 + 64))(v117, a1, a1 + 728))
        {
          *(a1 + 749) = 0;
        }

        else
        {
          *(a1 + 749) = 1;
          v118 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a1, &v314);
            v119 = v315 >= 0 ? &v314 : v314;
            LODWORD(__p[0]) = 136446722;
            *(__p + 4) = v119;
            WORD6(__p[0]) = 1042;
            *(__p + 14) = 20;
            WORD1(__p[1]) = 2098;
            *(&__p[1] + 4) = a1 + 728;
            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Secondary Identification  - persisted {device %{public}s, %{public}.20P}", __p, 0x1Cu);
            if (SHIBYTE(v315) < 0)
            {
              operator delete(v314);
            }
          }
        }

        v120 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a1, __p);
          v121 = (SBYTE7(__p[1]) & 0x80u) == 0 ? __p : *&__p[0];
          LODWORD(v314) = 136446210;
          *(&v314 + 4) = v121;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Read SDP mirroring state for device %{public}s", &v314, 0xCu);
          if (SBYTE7(__p[1]) < 0)
          {
            operator delete(*&__p[0]);
          }
        }

        v274 = 0;
        v122 = sub_1000BE4B4();
        if ((*(*v122 + 752))(v122, a1, &v274))
        {
          *(a1 + 660) = 1;
          goto LABEL_188;
        }

        *&v322 = 0;
        v321 = 0u;
        memset(v320, 0, sizeof(v320));
        v318 = 0u;
        *v319 = 0u;
        *v317 = 0u;
        memset(__p, 0, sizeof(__p));
        sub_1000DE474(__p + 1);
        BYTE2(__p[1]) = 0;
        BYTE4(__p[1]) = 0;
        BYTE2(v317[0]) = 0;
        BYTE4(v317[0]) = 0;
        DWORD1(v320[1]) = 0;
        memset(&__p[1] + 8, 0, 24);
        LOBYTE(v317[0]) = 0;
        v317[1] = 0;
        v318 = 0uLL;
        LOBYTE(v319[0]) = 0;
        v319[1] = 0;
        memset(v320, 0, 19);
        BYTE8(v320[1]) = 1;
        *(&v320[1] + 14) = 0;
        *(&v320[1] + 9) = 0;
        *(&v320[2] + 1) = 0;
        v321 = 0uLL;
        LOBYTE(v322) = 0;
        *(&v322 + 2) = 0;
        sub_100536A18(a1, __p);
        v123 = sub_10000C7D0();
        if (sub_1004106D0(v123, 0xBB8u) && BYTE4(v322) == 1)
        {
          if (v274)
          {
LABEL_181:
            if (SHIBYTE(v320[0]) < 0)
            {
              operator delete(v319[1]);
            }

            if (SHIBYTE(v318) < 0)
            {
              operator delete(v317[1]);
            }

            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(*(&__p[1] + 1));
            }

            nullsub_21(__p + 1);
LABEL_188:
            *(a1 + 760) = *(a1 + 752);
            v130 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a1, __p);
              v131 = (SBYTE7(__p[1]) & 0x80u) == 0 ? __p : *&__p[0];
              LODWORD(v314) = 136446210;
              *(&v314 + 4) = v131;
              _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "Read group list for %{public}s", &v314, 0xCu);
              if (SBYTE7(__p[1]) < 0)
              {
                operator delete(*&__p[0]);
              }
            }

            v132 = sub_1000BE4B4();
            if ((*(*v132 + 320))(v132, a1, a1 + 752))
            {
              LODWORD(__p[0]) = -1;
              sub_10036F480((a1 + 752), __p);
            }

            v273 = 0;
            v133 = sub_1000BE4B4();
            if (!(*(*v133 + 384))(v133, a1, &v273))
            {
              v134 = v273;
              *(a1 + 751) = v273;
              v135 = v134 ? 32 : 0;
              *(a1 + 1392) = *(a1 + 1392) & 0xFFFFFFDF | v135;
              if ((sub_1000295DC(a1) & 1) == 0 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_100840840();
              }
            }

            v272 = 0;
            v136 = sub_1000BE4B4();
            if (!(*(*v136 + 400))(v136, a1, &v272))
            {
              *(a1 + 794) = v272 != 0;
            }

            v137 = sub_1000BE4B4();
            (*(*v137 + 360))(v137, a1);
            v271 = 0;
            v138 = sub_1000BE4B4();
            if (!(*(*v138 + 368))(v138, a1, &v271))
            {
              *(a1 + 368) = v271;
            }

            v270 = 0;
            v139 = sub_1000BE4B4();
            (*(*v139 + 1248))(v139, a1, &v270);
            *(a1 + 1016) = v270;
            v269 = 0;
            v140 = sub_1000BE4B4();
            (*(*v140 + 1248))(v140, a1, &v269);
            v141 = v269;
            *(a1 + 1032) = v269;
            if (*(a1 + 1016) == 1)
            {
              v142 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v143 = "is not";
                if (v141)
                {
                  v143 = "is";
                }

                LODWORD(__p[0]) = 136315138;
                *(__p + 4) = v143;
                _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "Wireless Splitter this is a guest device that %s in contacts", __p, 0xCu);
              }

              LODWORD(__p[0]) = 0;
              v144 = sub_1000BE4B4();
              if (!(*(*v144 + 1272))(v144, a1, __p))
              {
                *(a1 + 1020) = __p[0];
              }
            }

            v268 = 0;
            v145 = sub_1000BE4B4();
            (*(*v145 + 1296))(v145, a1, &v268);
            *(a1 + 1041) = v268;
            v267 = 0;
            v146 = sub_1000BE4B4();
            (*(*v146 + 1312))(v146, a1, &v267);
            *(a1 + 1044) = v267;
            v266 = 0;
            v147 = sub_1000BE4B4();
            v148 = (*(*v147 + 1328))(v147, a1, &v266);
            if (!v148)
            {
              *(a1 + 1045) = v266;
            }

            v149 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__p[0]) = 67109376;
              DWORD1(__p[0]) = v148;
              WORD4(__p[0]) = 1024;
              *(__p + 10) = v266;
              _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "Read Temporary Managed Pairing Mode result %d, value = %d", __p, 0xEu);
            }

            v265 = 0;
            v150 = sub_1000BE4B4();
            (*(*v150 + 1344))(v150, a1, &v265);
            *(a1 + 1046) = v265;
            v264 = 0;
            v151 = sub_1000BE4B4();
            if (!(*(*v151 + 832))(v151, a1, &v264))
            {
              *(a1 + 796) = v264;
            }

            v263 = 0;
            v152 = sub_1000BE4B4();
            v153 = (*(*v152 + 848))(v152, a1, &v263);
            if (!v153)
            {
              *(a1 + 800) = v263;
            }

            v154 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__p[0]) = 67109376;
              DWORD1(__p[0]) = v153;
              WORD4(__p[0]) = 1024;
              *(__p + 10) = v263;
              _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "Read doubleTapAction result %d, value = %d", __p, 0xEu);
            }

            v262 = 0;
            v155 = sub_1000BE4B4();
            v156 = (*(*v155 + 864))(v155, a1, &v262);
            if (!v156)
            {
              *(a1 + 804) = v262;
            }

            v157 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__p[0]) = 67109376;
              DWORD1(__p[0]) = v156;
              WORD4(__p[0]) = 1024;
              *(__p + 10) = v262;
              _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "Read InEarDetectionEnabled result %d, value = %d", __p, 0xEu);
            }

            v261 = 0;
            v158 = sub_1000BE4B4();
            v159 = (*(*v158 + 880))(v158, a1, &v261);
            if (!v159)
            {
              *(a1 + 808) = v261;
            }

            v160 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a1, &v314);
              v161 = v315 >= 0 ? &v314 : v314;
              LODWORD(__p[0]) = 136446722;
              *(__p + 4) = v161;
              WORD6(__p[0]) = 1024;
              *(__p + 14) = v159;
              WORD1(__p[1]) = 1024;
              DWORD1(__p[1]) = v261;
              _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "[%{public}s] Read smart route result %d, mode = %d", __p, 0x18u);
              if (SHIBYTE(v315) < 0)
              {
                operator delete(v314);
              }
            }

            v260 = 0;
            v162 = sub_1000BE4B4();
            if (!(*(*v162 + 920))(v162, a1, &v260))
            {
              *(a1 + 816) = v260;
            }

            v314 = 0uLL;
            v315 = 0;
            v163 = sub_1000BE4B4();
            if (!(*(*v163 + 936))(v163, a1, &v314))
            {
              v164 = a1 + 1232;
              if ((a1 + 1232) != &v314)
              {
                sub_1000DFCBC((a1 + 1232), v314, *(&v314 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v314 + 1) - v314) >> 3));
              }

              v165 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v166 = *v164;
                v167 = (*v164 + 72);
                if (*(*v164 + 95) < 0)
                {
                  v167 = *v167;
                }

                v168 = (v166 + 240);
                if (*(v166 + 263) < 0)
                {
                  v168 = *v168;
                }

                LODWORD(__p[0]) = 141558531;
                *(__p + 4) = 1752392040;
                WORD6(__p[0]) = 2081;
                *(__p + 14) = v167;
                WORD3(__p[1]) = 2082;
                *(&__p[1] + 1) = v168;
                _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "AACPVersionInfo initialized: serial number %{private, mask.hash}s firmware version %{public}s", __p, 0x20u);
              }
            }

            memset(&v313, 0, sizeof(v313));
            v169 = sub_1000BE4B4();
            if (!(*(*v169 + 952))(v169, a1, &v313))
            {
              std::string::operator=((a1 + 1256), &v313);
            }

            v317[0] = 0;
            memset(__p, 0, sizeof(__p));
            sub_100007E30(&__p[2], "");
            v170 = sub_1000BE4B4();
            if (!(*(*v170 + 968))(v170, a1, __p))
            {
              *(a1 + 1280) = __p[0];
              *(a1 + 1292) = *(__p + 12);
              std::string::operator=((a1 + 1312), &__p[2]);
            }

            v259 = 0;
            v171 = sub_1000BE4B4();
            if (!(*(*v171 + 984))(v171, a1, &v259))
            {
              *(a1 + 820) = v259;
            }

            v258 = 0;
            v172 = sub_1000BE4B4();
            if (!(*(*v172 + 1000))(v172, a1, &v258))
            {
              *(a1 + 828) = v258;
            }

            v257 = 0;
            v173 = sub_1000BE4B4();
            if (!(*(*v173 + 1016))(v173, a1, &v257))
            {
              *(a1 + 832) = v257;
            }

            v256 = 0;
            v174 = sub_1000BE4B4();
            if (!(*(*v174 + 1032))(v174, a1, &v256))
            {
              *(a1 + 836) = v256;
            }

            v255 = 0;
            v175 = sub_1000BE4B4();
            if (!(*(*v175 + 1048))(v175, a1, &v255))
            {
              *(a1 + 840) = v255;
            }

            v254 = 0;
            v176 = sub_1000BE4B4();
            if (!(*(*v176 + 1064))(v176, a1, &v254))
            {
              *(a1 + 844) = v254;
            }

            v253 = 0;
            v177 = sub_1000BE4B4();
            if (!(*(*v177 + 1096))(v177, a1, &v253))
            {
              *(a1 + 864) = v253;
            }

            v252 = 0;
            v178 = sub_1000BE4B4();
            if (!(*(*v178 + 1112))(v178, a1, &v252))
            {
              *(a1 + 868) = v252;
            }

            v251 = 0;
            v179 = sub_1000BE4B4();
            if (!(*(*v179 + 1160))(v179, a1, &v251))
            {
              *(a1 + 876) = v251;
            }

            v250 = 0;
            v180 = sub_1000BE4B4();
            if (!(*(*v180 + 1144))(v180, a1, &v250))
            {
              *(a1 + 1536) = v250;
            }

            v249 = 0;
            v181 = sub_1000BE4B4();
            if (!(*(*v181 + 1128))(v181, a1, &v249))
            {
              *(a1 + 872) = v249;
            }

            v248 = 0;
            v182 = sub_1000BE4B4();
            if (!(*(*v182 + 1080))(v182, a1, &v248))
            {
              *(a1 + 848) = v248;
            }

            v247 = 0;
            v183 = sub_1000BE4B4();
            if (!(*(*v183 + 1176))(v183, a1, &v247))
            {
              *(a1 + 944) = v247;
            }

            v244 = 0;
            v245 = 0;
            v246 = 0;
            v184 = sub_1000BE4B4();
            if (!(*(*v184 + 1192))(v184, a1, &v244) && (a1 + 968) != &v244)
            {
              sub_100550954((a1 + 968), v244, v245, v245 - v244);
            }

            v241 = 0;
            v242 = 0;
            v243 = 0;
            v185 = sub_1000BE4B4();
            if (!(*(*v185 + 1208))(v185, a1, &v241) && (a1 + 992) != &v241)
            {
              sub_1003A5C5C((a1 + 992), v241, v242, (v242 - v241) >> 2);
            }

            v240 = 0;
            v186 = sub_1000BE4B4();
            if (!(*(*v186 + 1352))(v186, a1, &v240))
            {
              *(a1 + 424) = v240;
            }

            v239 = 0;
            v187 = sub_1000BE4B4();
            if (!(*(*v187 + 1368))(v187, a1, &v239))
            {
              *(a1 + 428) = v239;
            }

            v238 = 0.0;
            v188 = sub_1000BE4B4();
            v189 = (*(*v188 + 1384))(v188, a1, &v238);
            v190 = v238;
            if (v189)
            {
              v190 = -1.0;
            }

            *(a1 + 1180) = v190;
            v191 = sub_1000BE4B4();
            v235 = 0;
            v236 = 0;
            v237 = 0;
            (*(*v191 + 1400))(v191, a1, &v235);
            if (v235)
            {
              v236 = v235;
              operator delete(v235);
            }

            sub_1003A5C5C((a1 + 1184), 0, 0, 0);
            *(a1 + 376) = 0;
            *(a1 + 384) = 0;
            v234 = -1;
            v192 = sub_1000BE4B4();
            v193 = (*(*v192 + 1416))(v192, a1, &v234);
            v194 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *v305 = 67109376;
              *&v305[4] = v234;
              v306 = 1024;
              v307 = v193;
              _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "readEncryptionKeySize: %d, result: %d", v305, 0xEu);
            }

            if (!v193)
            {
              *(a1 + 1053) = v234;
            }

            v233 = -1;
            v195 = sub_1000BE4B4();
            v196 = (*(*v195 + 1432))(v195, a1, &v233);
            v197 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *v305 = 67109376;
              *&v305[4] = v233;
              v306 = 1024;
              v307 = v196;
              _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "readEncryptionMode: %d, result: %d", v305, 0xEu);
            }

            if (!v196)
            {
              *(a1 + 1054) = v233;
            }

            v232 = 0;
            v198 = sub_1000BE4B4();
            if (!(*(*v198 + 1448))(v198, a1, &v232))
            {
              *(a1 + 1056) = v232;
            }

            v199 = sub_10000C798();
            if ((*(*v199 + 416))(v199))
            {
              v200 = sub_100536B0C(a1);
              v201 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *v305 = 67109120;
                *&v305[4] = v200;
                _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "Number of services %d supporting PSM/RFCOMM", v305, 8u);
              }
            }

            v231 = 0;
            v202 = sub_1000BE4B4();
            v203 = (*(*v202 + 1464))(v202, a1, &v231);
            v204 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              v205 = *(a1 + 1428);
              *v305 = 67109120;
              *&v305[4] = v205;
              _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "Read hidDeviceBehavior : %d", v305, 8u);
            }

            if (v203)
            {
              v206 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v207 = *(a1 + 1428);
                *v305 = 67109120;
                *&v305[4] = v207;
                _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "Failed to read hidDeviceBehavior : %d", v305, 8u);
              }
            }

            else
            {
              *(a1 + 1428) = v231;
            }

            v230 = 0;
            v208 = sub_1000BE4B4();
            v209 = (*(*v208 + 1480))(v208, a1, &v230);
            v210 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              *v305 = 67109120;
              *&v305[4] = v230;
              _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_DEFAULT, "Read userSelectedDeviceType : %d", v305, 8u);
            }

            if (v209)
            {
              v211 = qword_100BCE8D8;
              v212 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
              v213 = 0;
              if (v212)
              {
                *v305 = 67109120;
                *&v305[4] = v209;
                _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "Failed to read userSelectedDeviceType due to error: %d", v305, 8u);
                v213 = 0;
              }
            }

            else
            {
              v213 = v230;
            }

            *(a1 + 1484) = v213;
            v229 = 0;
            v214 = sub_1000BE4B4();
            v215 = (*(*v214 + 1512))(v214, a1, &v229);
            v216 = qword_100BCE8D8;
            if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_325;
            }

            sub_100007E30(v305, off_100AFC518[v229]);
            v217 = v308;
            v218 = *v305;
            sub_1000E5A58(a1, v227);
            v219 = v305;
            if (v217 < 0)
            {
              v219 = v218;
            }

            if (v228 >= 0)
            {
              v220 = v227;
            }

            else
            {
              v220 = v227[0];
            }

            *v309 = 136315394;
            v310 = v219;
            v311 = 2082;
            v312 = v220;
            _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, "Read CarPlayType : %s for %{public}s", v309, 0x16u);
            if (v228 < 0)
            {
              operator delete(v227[0]);
            }

            if (v308 < 0)
            {
              operator delete(*v305);
              if (v215)
              {
                goto LABEL_326;
              }
            }

            else
            {
LABEL_325:
              if (v215)
              {
LABEL_326:
                v221 = qword_100BCE8D8;
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                {
                  *v305 = 67109120;
                  *&v305[4] = v215;
                  _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "Failed to read CarPlayType due to error: %d", v305, 8u);
                }

                if (sub_1000DFB74(a1, 0x40000u) != 4)
                {
                  *(a1 + 1572) = 0;
LABEL_334:
                  if (v241)
                  {
                    v242 = v241;
                    operator delete(v241);
                  }

                  if (v244)
                  {
                    v245 = v244;
                    operator delete(v244);
                  }

                  if (SHIBYTE(v317[0]) < 0)
                  {
                    operator delete(*&__p[2]);
                  }

                  if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v313.__r_.__value_.__l.__data_);
                  }

                  *&__p[0] = &v314;
                  sub_1000161FC(__p);
                  sub_10000CEDC(&v298, v299[0]);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }

                  return sub_1000088CC(v304);
                }

                v222 = 1;
LABEL_333:
                *(a1 + 1572) = v222;
                goto LABEL_334;
              }
            }

            v222 = v229;
            goto LABEL_333;
          }

          LOBYTE(v244) = 0;
          v124 = sub_10000E92C();
          sub_100007E30(&v314, "SDPMirroring");
          sub_100007E30(&v313, "DisableSDPMirroring");
          v125 = (*(*v124 + 72))(v124, &v314, &v313, &v244);
          if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v313.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v315) < 0)
          {
            operator delete(v314);
          }

          v126 = qword_100BCE8D8;
          v127 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
          if (v125)
          {
            if (v127)
            {
              sub_1000E5A58(a1, &v314);
              v128 = v315 >= 0 ? &v314 : v314;
              LODWORD(v313.__r_.__value_.__l.__data_) = 136446210;
              *(v313.__r_.__value_.__r.__words + 4) = v128;
              _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "SDP mirroring state for device %{public}s is correct as key is present. Updating.", &v313, 0xCu);
              if (SHIBYTE(v315) < 0)
              {
                operator delete(v314);
              }
            }

            v129 = v244 ^ 1;
          }

          else
          {
            if (v127)
            {
              sub_1000E5A58(a1, &v314);
              v224 = v315 >= 0 ? &v314 : v314;
              LODWORD(v313.__r_.__value_.__l.__data_) = 136446210;
              *(v313.__r_.__value_.__r.__words + 4) = v224;
              _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "SDP mirroring state for device %{public}s is incorrect as key isn't present. Resetting.", &v313, 0xCu);
              if (SHIBYTE(v315) < 0)
              {
                operator delete(v314);
              }
            }

            v129 = 1;
          }
        }

        else
        {
          v129 = v274;
        }

        *(a1 + 660) = v129;
        goto LABEL_181;
      }
    }

    else
    {
      v24 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8((a1 + 128), &__str);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &__str;
        }

        else
        {
          v25 = __str.__r_.__value_.__r.__words[0];
        }

        v26 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v26 = buf.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0]) = 136446723;
        *(__p + 4) = v25;
        WORD6(__p[0]) = 2160;
        *(__p + 14) = 1752392040;
        WORD3(__p[1]) = 2081;
        *(&__p[1] + 1) = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Read name result success, device address = %{public}s, value = %{private, mask.hash}s", __p, 0x20u);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      std::string::operator=((a1 + 240), &buf);
      *(a1 + 264) = v9;
      *(a1 + 272) = v10;
      *(a1 + 1433) = 1;
      v27 = sub_10000F034();
      (*(*v27 + 456))(v27, 1);
    }

    v14 = 0;
    goto LABEL_57;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008406B8();
  }

  return sub_1000088CC(v304);
}

void sub_100536438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58)
{
  sub_100320BE8(&STACK[0x210]);
  sub_10000CEDC(&a45, a46);
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (*(v58 - 105) < 0)
  {
    operator delete(*(v58 - 128));
  }

  sub_1000088CC(&a58);
  _Unwind_Resume(a1);
}

uint64_t sub_100536730(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing SDP local memory database", buf, 2u);
  }

  v3 = *(a1 + 592);
  v4 = (a1 + 600);
  if (v3 != (a1 + 600))
  {
    do
    {
      *buf = 0;
      v14 = 0;
      v15 = 0;
      sub_10041F568(buf, (v3 + 5));
      v5 = *buf;
      if (*buf != &v14)
      {
        do
        {
          v12 = *(v5 + 5);
          sub_10037D4F4(&v12);
          v6 = v5[1];
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
              v7 = v5[2];
              v8 = *v7 == v5;
              v5 = v7;
            }

            while (!v8);
          }

          v5 = v7;
        }

        while (v7 != &v14);
      }

      sub_10000CEDC(buf, v14);
      v14 = 0;
      v15 = 0;
      *buf = &v14;
      sub_10037D4F4(v3[4]);
      free(v3[4]);
      sub_10000CEDC(buf, v14);
      v9 = v3[1];
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
          v10 = v3[2];
          v8 = *v10 == v3;
          v3 = v10;
        }

        while (!v8);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  sub_10037505C(a1 + 592, *(a1 + 600));
  *(a1 + 592) = v4;
  *v4 = 0u;
  if ([*(a1 + 1368) count])
  {
    [*(a1 + 1368) removeAllObjects];
  }

  return sub_1000088CC(v16);
}

void sub_1005368D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100536908(unsigned __int8 *a1)
{
  result = sub_1000295DC(a1);
  if ((result & 1) == 0)
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing device %{public}s from disk", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = sub_1000BE4B4();
    return (*(*v5 + 24))(v5, a1);
  }

  return result;
}

BOOL sub_100536A18(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  v4 = *(a1 + 632);
  v5 = *(a1 + 624);
  if (v4 != v5)
  {
    *a2 = *v5;
    sub_1006E5F04((a2 + 1), (v5 + 1));
    v6 = *(v5 + 18);
    *(a2 + 20) = *(v5 + 20);
    *(a2 + 18) = v6;
    std::string::operator=((a2 + 24), (v5 + 24));
    v7 = *(v5 + 48);
    *(a2 + 52) = *(v5 + 52);
    *(a2 + 48) = v7;
    std::string::operator=((a2 + 56), (v5 + 56));
    *(a2 + 80) = *(v5 + 80);
    std::string::operator=((a2 + 88), (v5 + 88));
    v8 = *(v5 + 112);
    v9 = *(v5 + 128);
    v10 = *(v5 + 144);
    *(a2 + 159) = *(v5 + 159);
    *(a2 + 128) = v9;
    *(a2 + 144) = v10;
    *(a2 + 112) = v8;
  }

  sub_1000088CC(v12);
  return v4 != v5;
}

uint64_t sub_100536B0C(uint64_t a1)
{
  v73[0] = 0;
  v73[1] = 0;
  sub_100007F88(v73, a1);
  if ([*(a1 + 1368) count])
  {
    [*(a1 + 1368) removeAllObjects];
  }

  else
  {
    v1 = +[NSMutableArray array];
    v2 = *(a1 + 1368);
    *(a1 + 1368) = v1;
  }

  v3 = *(a1 + 592);
  v4 = (a1 + 600);
  if (v3 != (a1 + 600))
  {
    v5 = 0;
    v66 = a1 + 600;
    while (1)
    {
      v72 = 0uLL;
      v72 = *v3[4];
      v90 = 0uLL;
      v91 = 0;
      v6 = sub_10053BFB4(a1, &v72, 4u, &v90);
      v7 = v90;
      if (v6)
      {
        v67 = v3;
        v8 = *(&v90 + 1);
        if (v90 != *(&v90 + 1))
        {
          while (1)
          {
            v9 = v7[1];
            if ((v9 & 1) == 0)
            {
              if (v7[1])
              {
                break;
              }
            }

LABEL_77:
            v7 += 8;
            if (v7 == v8)
            {
              v7 = v90;
              goto LABEL_79;
            }
          }

          v10 = 0;
          v11 = (*(v7 + 1) + 24);
          while (2)
          {
            v12 = *(v11 - 4);
            if (v12 == 3)
            {
              v19 = *v11;
              v20 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *v88 = 67109120;
                *&v88[4] = v19;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "RFCOMM CID: %d", v88, 8u);
              }

              memset(v88, 0, sizeof(v88));
              v89 = 0;
              sub_100007E30(v88, "RFCOMM ServiceClass: ");
              memset(&v71, 0, sizeof(v71));
              if (v72 == 3)
              {
                if (WORD1(v72) > 4u)
                {
                  v32 = [NSData dataWithBytes:*(&v72 + 1) length:?];
                  v33 = qword_100BCE8D8;
                  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v32;
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "service long UUID: %@", buf, 0xCu);
                  }

                  v34 = *(a1 + 1368);
                  v74[0] = @"kCBMsgArgServiceUUID";
                  v74[1] = @"kCBMsgArgRFCOMMChannelID";
                  v75[0] = v32;
                  v35 = [NSNumber numberWithUnsignedChar:v19, v66];
                  v75[1] = v35;
                  v36 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
                  [v34 addObject:v36];

                  v37 = sub_100302240(*(&v72 + 1));
                  std::string::assign(&v71, v37);
                }

                else
                {
                  if (WORD1(v72) == 2)
                  {
                    LOWORD(__p[0]) = bswap32(WORD4(v72)) >> 16;
                    v21 = [NSData dataWithBytes:__p length:2];
                    v22 = qword_100BCE8D8;
                    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109378;
                      *&buf[4] = DWORD2(v72);
                      *&buf[8] = 2112;
                      *&buf[10] = v21;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "service short UUID: (0x%x) %@", buf, 0x12u);
                    }

                    v23 = *(a1 + 1368);
                    v78[0] = @"kCBMsgArgServiceUUID";
                    v78[1] = @"kCBMsgArgRFCOMMChannelID";
                    v79[0] = v21;
                    v24 = [NSNumber numberWithUnsignedChar:v19, v66];
                    v79[1] = v24;
                    v25 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];
                    [v23 addObject:v25];
                  }

                  else
                  {
                    LODWORD(__p[0]) = bswap32(DWORD2(v72));
                    v50 = [NSData dataWithBytes:__p length:?];
                    v51 = qword_100BCE8D8;
                    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109378;
                      *&buf[4] = DWORD2(v72);
                      *&buf[8] = 2112;
                      *&buf[10] = v50;
                      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "service short UUID: (0x%x) %@", buf, 0x12u);
                    }

                    v52 = *(a1 + 1368);
                    v76[0] = @"kCBMsgArgServiceUUID";
                    v76[1] = @"kCBMsgArgRFCOMMChannelID";
                    v77[0] = v50;
                    v53 = [NSNumber numberWithUnsignedChar:v19, v66];
                    v77[1] = v53;
                    v54 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
                    [v52 addObject:v54];
                  }

                  v55 = sub_10030253C(DWORD2(v72));
                  std::string::assign(&v71, v55);
                }

                v5 = (v5 + 1);
              }

              memset(buf, 0, 24);
              sub_100007E30(buf, "\n");
              __p[0] = 0;
              __p[1] = 0;
              v70 = 0;
              sub_10053B318(v88, &v71.__r_.__value_.__l.__data_, &v80);
              if ((buf[23] & 0x80u) == 0)
              {
                v56 = buf;
              }

              else
              {
                v56 = *buf;
              }

              if ((buf[23] & 0x80u) == 0)
              {
                v57 = buf[23];
              }

              else
              {
                v57 = *&buf[8];
              }

              v58 = std::string::append(&v80, v56, v57);
              v59 = *&v58->__r_.__value_.__l.__data_;
              v70 = v58->__r_.__value_.__r.__words[2];
              *__p = v59;
              v58->__r_.__value_.__l.__size_ = 0;
              v58->__r_.__value_.__r.__words[2] = 0;
              v58->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v80.__r_.__value_.__l.__data_);
              }

              v48 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v49 = __p;
                if (v70 < 0)
                {
                  v49 = __p[0];
                }

LABEL_66:
                LODWORD(v80.__r_.__value_.__l.__data_) = 136315138;
                *(v80.__r_.__value_.__r.__words + 4) = v49;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s", &v80, 0xCu);
              }

LABEL_67:
              if (SHIBYTE(v70) < 0)
              {
                operator delete(__p[0]);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v71.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v89) < 0)
              {
                operator delete(*v88);
              }
            }

            else if (v12 == 256)
            {
              v13 = *v11;
              memset(v88, 0, sizeof(v88));
              v89 = 0;
              sub_100007E30(v88, "L2CAP ServiceClass: ");
              memset(&v71, 0, sizeof(v71));
              if (v72 == 3)
              {
                if (WORD1(v72) > 4u)
                {
                  v26 = [NSData dataWithBytes:*(&v72 + 1) length:?];
                  v27 = qword_100BCE8D8;
                  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v26;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "service long UUID: %@", buf, 0xCu);
                  }

                  v28 = *(a1 + 1368);
                  v82[0] = @"kCBMsgArgServiceUUID";
                  v82[1] = @"kCBMsgArgPSM";
                  v83[0] = v26;
                  v29 = [NSNumber numberWithUnsignedShort:v13, v66];
                  v83[1] = v29;
                  v30 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
                  [v28 addObject:v30];

                  v31 = sub_100302240(*(&v72 + 1));
                  std::string::assign(&v71, v31);
                }

                else
                {
                  if (WORD1(v72) == 2)
                  {
                    LOWORD(__p[0]) = bswap32(WORD4(v72)) >> 16;
                    v14 = [NSData dataWithBytes:__p length:2];
                    v15 = qword_100BCE8D8;
                    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109378;
                      *&buf[4] = DWORD2(v72);
                      *&buf[8] = 2112;
                      *&buf[10] = v14;
                      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "service short UUID: (0x%x) %@", buf, 0x12u);
                    }

                    v16 = *(a1 + 1368);
                    v86[0] = @"kCBMsgArgServiceUUID";
                    v86[1] = @"kCBMsgArgPSM";
                    v87[0] = v14;
                    v17 = [NSNumber numberWithUnsignedShort:v13, v66];
                    v87[1] = v17;
                    v18 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:2];
                    [v16 addObject:v18];
                  }

                  else
                  {
                    LODWORD(__p[0]) = bswap32(DWORD2(v72));
                    v38 = [NSData dataWithBytes:__p length:?];
                    v39 = qword_100BCE8D8;
                    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109378;
                      *&buf[4] = DWORD2(v72);
                      *&buf[8] = 2112;
                      *&buf[10] = v38;
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "service short UUID: (0x%x) %@", buf, 0x12u);
                    }

                    v40 = *(a1 + 1368);
                    v84[0] = @"kCBMsgArgServiceUUID";
                    v84[1] = @"kCBMsgArgPSM";
                    v85[0] = v38;
                    v41 = [NSNumber numberWithUnsignedShort:v13, v66];
                    v85[1] = v41;
                    v42 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
                    [v40 addObject:v42];
                  }

                  v43 = sub_10030253C(DWORD2(v72));
                  std::string::assign(&v71, v43);
                }

                v5 = (v5 + 1);
              }

              memset(buf, 0, 24);
              sub_100007E30(buf, "\n");
              __p[0] = 0;
              __p[1] = 0;
              v70 = 0;
              sub_10053B318(v88, &v71.__r_.__value_.__l.__data_, &v80);
              if ((buf[23] & 0x80u) == 0)
              {
                v44 = buf;
              }

              else
              {
                v44 = *buf;
              }

              if ((buf[23] & 0x80u) == 0)
              {
                v45 = buf[23];
              }

              else
              {
                v45 = *&buf[8];
              }

              v46 = std::string::append(&v80, v44, v45);
              v47 = *&v46->__r_.__value_.__l.__data_;
              v70 = v46->__r_.__value_.__r.__words[2];
              *__p = v47;
              v46->__r_.__value_.__l.__size_ = 0;
              v46->__r_.__value_.__r.__words[2] = 0;
              v46->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v80.__r_.__value_.__l.__data_);
              }

              v48 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                v49 = __p;
                if (v70 < 0)
                {
                  v49 = __p[0];
                }

                goto LABEL_66;
              }

              goto LABEL_67;
            }

            v11 += 32;
            v10 += 2;
            if (v10 >= v9)
            {
              v8 = *(&v90 + 1);
              goto LABEL_77;
            }

            continue;
          }
        }

LABEL_79:
        v4 = v66;
        v3 = v67;
        if (v7 != v8)
        {
          do
          {
            memset(v88, 0, sizeof(v88));
            *v88 = *v7;
            sub_10037D4F4(v88);
            v7 += 8;
          }

          while (v7 != *(&v90 + 1));
          v7 = v90;
        }
      }

      if (v7)
      {
        *(&v90 + 1) = v7;
        operator delete(v7);
      }

      v60 = v3[1];
      if (v60)
      {
        do
        {
          v61 = v60;
          v60 = *v60;
        }

        while (v60);
      }

      else
      {
        do
        {
          v61 = v3[2];
          v62 = *v61 == v3;
          v3 = v61;
        }

        while (!v62);
      }

      v3 = v61;
      if (v61 == v4)
      {
        goto LABEL_92;
      }
    }
  }

  v5 = 0;
LABEL_92:
  v63 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v64 = *(a1 + 1368);
    LODWORD(v90) = 138412290;
    *(&v90 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Services dictionary: %@", &v90, 0xCu);
  }

  sub_1000088CC(v73);
  return v5;
}

uint64_t sub_1005377D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *a2 = *(a1 + 136);
  return sub_1000088CC(v5);
}

uint64_t sub_10053781C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 303) < 0)
  {
    sub_100008904(a2, *(a1 + 280), *(a1 + 288));
  }

  else
  {
    *a2 = *(a1 + 280);
    *(a2 + 16) = *(a1 + 296);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1005378A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 223) < 0)
  {
    sub_100008904(a2, *(a1 + 200), *(a1 + 208));
  }

  else
  {
    *a2 = *(a1 + 200);
    *(a2 + 16) = *(a1 + 216);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100537920(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1);
  v2 = *(a1 + 328);
  v3 = (a1 + 336);
  if (v2 == (a1 + 336))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (*(v2 + 8) == 4)
      {
        v4 = *(v2 + 7) | v4;
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  sub_1000088CC(v9);
  return v4;
}

uint64_t sub_1005379CC(uint64_t a1, _DWORD *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  if (*(a1 + 312) || *(a1 + 320))
  {
    *a2 = *(a1 + 304);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100537A38(void *a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (a1[23])
  {
    v2 = 1;
  }

  else
  {
    v2 = a1[24] != 0;
  }

  if (a1[28])
  {
    v2 |= 2u;
  }

  else if (a1[29])
  {
    v2 |= 2u;
  }

  if (a1[33])
  {
    v2 |= 8u;
  }

  else if (a1[34])
  {
    v2 |= 8u;
  }

  if (a1[44])
  {
    v3 = v2 | 4;
  }

  else if (a1[45])
  {
    v3 = v2 | 4;
  }

  else
  {
    v3 = v2;
  }

  sub_1000088CC(v5);
  return v3;
}

uint64_t sub_100537AF8(uint64_t a1, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 1484) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1488))(v4, a1, *(a1 + 1484));
  return sub_1000088CC(v6);
}

uint64_t sub_100537B8C(uint64_t a1)
{
  v6 = 0;
  sub_1000216B4(&v6);
  v5 = 0;
  if (sub_10023DB58(a1 + 128, &v5))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v5 + 278);
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HDR link is connected %d", buf, 8u);
    }
  }

  sub_10002249C(&v6);
  return v2;
}

BOOL sub_100537C88(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  v2 = off_100B50F60;

  return sub_100530480(v2, a1);
}

unsigned int *sub_100537CDC(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_100840890();
  }

  result = sub_10053066C(off_100B50F60, a1);
  if (result)
  {
    return *result;
  }

  return result;
}

BOOL sub_100537D2C(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v2 = *(a1 + 176);
  v4 = v2 == 17 || v2 == 22;
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100537D80(uint64_t a1, int a2)
{
  if (qword_100B54220 != -1)
  {
    sub_1008408A4();
  }

  v4 = sub_1003C62F8(qword_100B54218, 2);
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  sub_100703E38(v4, &v32);
  v5 = v32;
  if (v32 != v33)
  {
    v29 = a2;
    while (1)
    {
      v6 = (v5 + 4);
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000DEEA4(a1, __p);
        v21 = __p;
        if (v31 < 0)
        {
          v21 = __p[0];
        }

        if (*(v5 + 55) < 0)
        {
          v22 = *v6;
        }

        else
        {
          v22 = v5 + 4;
        }

        v26 = *(v5 + 28);
        *buf = 136446978;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        v35 = 1024;
        v36 = a2;
        v37 = 1024;
        v38 = v26;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Identification - isAutomationDongle comparing Friendly Names: %{public}s and %s, and Chipset Manufacturer IDs: %d and %d", buf, 0x22u);
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((*(v5 + 55) & 0x8000000000000000) != 0)
      {
        if (!v5[5])
        {
          goto LABEL_37;
        }
      }

      else if (!*(v5 + 55))
      {
        goto LABEL_37;
      }

      sub_1000DEEA4(a1, buf);
      v8 = HIBYTE(v35);
      v9 = SHIBYTE(v35);
      v10 = *buf;
      if (v35 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      if (v35 < 0)
      {
        v8 = *&buf[8];
      }

      if (*(v5 + 55) >= 0)
      {
        v12 = *(v5 + 55);
      }

      else
      {
        v6 = v5[4];
        v12 = v5[5];
      }

      if (!v12)
      {
        goto LABEL_33;
      }

      if (v8 < v12)
      {
        v13 = 0;
        goto LABEL_34;
      }

      v14 = a1;
      v15 = &v11[v8];
      v16 = *v6;
      v17 = v11;
      while (1)
      {
        v18 = v8 - v12;
        if (v18 == -1 || (v19 = memchr(v17, v16, v18 + 1)) == 0)
        {
LABEL_26:
          v13 = 0;
          a2 = v29;
          a1 = v14;
          goto LABEL_34;
        }

        v20 = v19;
        if (!memcmp(v19, v6, v12))
        {
          break;
        }

        v17 = v20 + 1;
        v8 = v15 - (v20 + 1);
        if (v8 < v12)
        {
          goto LABEL_26;
        }
      }

      v13 = 0;
      a1 = v14;
      if (v20 != v15)
      {
        break;
      }

      a2 = v29;
LABEL_34:
      if (v9 < 0)
      {
        operator delete(v10);
      }

      if (v13)
      {
        v27 = 1;
        goto LABEL_50;
      }

LABEL_37:
      v23 = v5[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v5[2];
          v25 = *v24 == v5;
          v5 = v24;
        }

        while (!v25);
      }

      v5 = v24;
      if (v24 == v33)
      {
        goto LABEL_48;
      }
    }

    a2 = v29;
    if (v20 - v11 == -1)
    {
      goto LABEL_34;
    }

LABEL_33:
    v13 = *(v5 + 28) == a2;
    goto LABEL_34;
  }

LABEL_48:
  v27 = 0;
LABEL_50:
  sub_10004B61C(&v32, v33[0]);
  return v27;
}

BOOL sub_1005380B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 176) == 25;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100538104(uint64_t a1, _OWORD *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if ((a1 + 136) != a2)
  {
    *(a1 + 136) = *a2;
  }

  return sub_1000088CC(v5);
}

uint64_t sub_10053815C(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1040) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005381A4(uint64_t a1, __int16 a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1042) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1005381EC(uint64_t a1, char a2, _OWORD *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 152) = a2;
  if ((a1 + 160) != a3)
  {
    *(a1 + 160) = *a3;
  }

  return sub_1000088CC(v7);
}

uint64_t sub_100538254(uint64_t a1, int a2, _OWORD *a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v6 = *(a1 + 176);
  *(a1 + 176) = a2;
  if ((a1 + 184) != a3)
  {
    *(a1 + 184) = *a3;
  }

  if (*(a1 + 520))
  {
    if (_os_feature_enabled_impl())
    {
      if (v6 != a2)
      {
        if (qword_100B508F0 != -1)
        {
          sub_100840690();
        }

        sub_10056B15C(off_100B508E8, a1, 26);
      }
    }

    else
    {
      (*(**(a1 + 520) + 16))(*(a1 + 520));
    }
  }

  return sub_1000088CC(v8);
}

uint64_t sub_100538354(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1);
  v6 = (a1 + 224);
  if (!*(a1 + 224) && !*(a1 + 232))
  {
    goto LABEL_16;
  }

  v7 = *(a1 + 223);
  if (v7 >= 0)
  {
    v8 = *(a1 + 223);
  }

  else
  {
    v8 = *(a1 + 208);
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v8 == v9 && (v7 >= 0 ? (v11 = (a1 + 200)) : (v11 = *(a1 + 200)), v10 >= 0 ? (v12 = a2) : (v12 = *a2), !memcmp(v11, v12, v8)))
  {
    if (v6 != a3)
    {
      *v6 = *a3;
    }
  }

  else
  {
LABEL_16:
    std::string::operator=((a1 + 200), a2);
    if (v6 != a3)
    {
      *v6 = *a3;
    }

    sub_10000801C(v15);
    if (sub_1000295DC(a1))
    {
      v13 = sub_1000BE4B4();
      (*(*v13 + 232))(v13, a1, a2);
    }
  }

  return sub_1000088CC(v15);
}

uint64_t sub_100538494(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v34[0] = 0;
  v34[1] = 0;
  sub_100007F88(v34, a1);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_1000D8E68(a2, &v31);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_1005388CC(a1, &v28);
  memset(&__str, 0, sizeof(__str));
  v6 = HIBYTE(v30);
  if (v30 >= 0)
  {
    v7 = HIBYTE(v30);
  }

  else
  {
    v7 = v29;
  }

  v8 = &v31;
  if (v7)
  {
    v8 = &v28;
  }

  else
  {
    v6 = HIBYTE(v33);
  }

  if (v6 < 0)
  {
    if (v7)
    {
      v9 = v29;
    }

    else
    {
      v9 = v32;
    }

    sub_100008904(&__str, v8->__r_.__value_.__l.__data_, v9);
  }

  else
  {
    __str = *v8;
  }

  v10 = (a1 + 264);
  if (!*(a1 + 264) && !*(a1 + 272))
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 263);
  if (v11 >= 0)
  {
    v12 = *(a1 + 263);
  }

  else
  {
    v12 = *(a1 + 248);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (v12 == size && (v11 >= 0 ? (v14 = (a1 + 240)) : (v14 = *(a1 + 240)), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v15 = &__str) : (v15 = __str.__r_.__value_.__r.__words[0]), !memcmp(v14, v15, v12)))
  {
    if (v10 != a3)
    {
      *v10 = *a3;
    }
  }

  else
  {
LABEL_28:
    std::string::operator=((a1 + 240), &__str);
    if (v10 != a3)
    {
      *v10 = *a3;
    }

    *(a1 + 1433) = 1;
    sub_10000801C(v34);
    if (sub_1000295DC(a1))
    {
      v16 = sub_1000BE4B4();
      v17 = (*(*v16 + 40))(v16, a1, &__str);
      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8((a1 + 128), __p);
        if (v26 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *buf = 67109891;
        v36 = v17;
        v37 = 2082;
        v38 = v19;
        v39 = 2160;
        v40 = 1752392040;
        v41 = 2081;
        v42 = p_str;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "setName result = %d, device address = %{public}s, value = %{private, mask.hash}s", buf, 0x26u);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100538900(a1);
    }

    v21 = sub_1000E36A0();
    sub_1000BE6F8((a1 + 128), v23);
    (*(*v21 + 40))(v21, v23);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 1);
    if (*(a1 + 520) && (_os_feature_enabled_impl() & 1) == 0)
    {
      (*(**(a1 + 520) + 16))(*(a1 + 520));
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31);
  }

  return sub_1000088CC(v34);
}

void sub_100538848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_1000088CC(v36 - 96);
  _Unwind_Resume(a1);
}

_BYTE *sub_1005388CC@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 98);
  if ((v2 & 0x800) != 0)
  {
    v3 = "DUALSHOCK 4 Wireless Controller";
  }

  else
  {
    if ((v2 & 0x2000) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }

    v3 = "DualSense Wireless Controller";
  }

  return sub_100007E30(a2, v3);
}

void sub_100538900(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    if (*(a1 + 748) == 1)
    {
      v42 = *(a1 + 724);
      v41 = *(a1 + 708);
      if (*(a1 + 1132) != 76 || (v2 = *(a1 + 1136) - 8194, v2 > 0x2D) || ((1 << v2) & 0x200020037F9BLL) == 0)
      {
        if (*(a1 + 1125) != 1 || (*(a1 + 1145) & 0x10) == 0)
        {
          goto LABEL_25;
        }
      }

      __p[0] = 0;
      __p[1] = 0;
      sub_100007F88(__p, a1);
      v3 = *(a1 + 704);
      sub_1000088CC(__p);
      if (!v3)
      {
        goto LABEL_25;
      }

      v39 = 0u;
      v40 = 0u;
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
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      memset(__p, 0, sizeof(__p));
      v4 = sub_1000BE4B4();
      if ((*(*v4 + 80))(v4, a1, __p, 80))
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008408F4();
        }

        goto LABEL_24;
      }

      v7 = DWORD2(v24);
      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1);
      v8 = *(a1 + 704);
      sub_1000088CC(buf);
      if (v7 == v8)
      {
LABEL_24:
        sub_1000E3D14(__p);
LABEL_25:
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a1, buf);
          if (v21 >= 0)
          {
            v10 = buf;
          }

          else
          {
            v10 = *buf;
          }

          LODWORD(__p[0]) = 136446722;
          *(__p + 4) = v10;
          WORD2(__p[1]) = 1042;
          *(&__p[1] + 6) = 20;
          WORD1(__p[2]) = 2098;
          *(&__p[2] + 4) = &v41;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Identification - Identification hash exists for device %{public}s, primary hash %{public}.20P", __p, 0x1Cu);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(*buf);
          }
        }

        return;
      }

      v11 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, v17);
        v12 = v18;
        v13 = v17[0];
        v14 = DWORD2(v24);
        v15 = sub_100543C38(a1);
        v16 = v17;
        *buf = 136446722;
        if (v12 < 0)
        {
          v16 = v13;
        }

        *&buf[4] = v16;
        *&buf[12] = 1026;
        *&buf[14] = v14;
        v20 = 1026;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Identification - Apple Audio Device - firmware version has changed for device %{public}s (old firmware version %{public}d, new firmware version %{public}d)- regenerating primary hash.", buf, 0x18u);
        if (v18 < 0)
        {
          operator delete(v17[0]);
        }
      }

      *(a1 + 750) = 0;
      sub_100543DA4(a1);
      sub_1000E3D14(__p);
    }

    else
    {
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, __p);
        v6 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Identification - Identification hash does not exist for device %{public}s - generating.", buf, 0xCu);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100543DA4(a1);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008408B8();
  }
}

void sub_100538CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000E3D14(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100538D30(uint64_t a1, uint64_t a2, int a3)
{
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, a1);
  memset(&__str, 0, sizeof(__str));
  sub_1000D8E68(a2, &__str);
  v6 = *(a1 + 263);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    v9 = *(a1 + 263);
  }

  else
  {
    v9 = *(a1 + 248);
  }

  if (v6 >= 0)
  {
    v10 = (a1 + 240);
  }

  else
  {
    v10 = *(a1 + 240);
  }

  if (v9 >= size)
  {
    v11 = size;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_str, v10, v11);
  if (v9 == size && v12 == 0 && v9 != 0)
  {
    std::string::assign((a1 + 280), "");
    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a1, __p);
      if (v40 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = *__p;
      }

      *buf = 136315138;
      v34 = v27;
      v21 = "Same username and name, empty out nickname for: %s";
      v22 = v25;
      v23 = OS_LOG_TYPE_INFO;
      v24 = 12;
LABEL_43:
      _os_log_impl(&_mh_execute_header, v22, v23, v21, buf, v24);
      if (v40 < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_45;
    }

    goto LABEL_45;
  }

  v15 = *(a1 + 303);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a1 + 288);
  }

  if (v15 != size || (v16 >= 0 ? (v17 = (a1 + 280)) : (v17 = *(a1 + 280)), memcmp(v17, p_str, size)))
  {
    std::string::operator=((a1 + 280), &__str);
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v40 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = *__p;
      }

      v20 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v34 = v19;
      v35 = 2080;
      v36 = v20;
      v21 = "User defined name for %s updated to %s";
      v22 = v18;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 22;
      goto LABEL_43;
    }

LABEL_45:
    sub_10000801C(v32);
    if (sub_1000295DC(a1))
    {
      v28 = sub_1000BE4B4();
      (*(*v28 + 216))(v28, a1, &__str);
      if (*(a1 + 520))
      {
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          (*(**(a1 + 520) + 16))(*(a1 + 520));
        }
      }
    }

    if (a3)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 4098);
    }

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 2);
    if (qword_100B508E0 != -1)
    {
      sub_100840930();
    }

    sub_100518C8C(off_100B508D8, a1);
    goto LABEL_58;
  }

  v30 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *__p = 136315394;
    *&__p[4] = v10;
    v38 = 2080;
    v39 = p_str;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Did not change user defined name from %s updated to %s", __p, 0x16u);
  }

LABEL_58:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return sub_1000088CC(v32);
}

void sub_100539110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10053914C(__n128 *a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v4 = a1[93].n128_u8[12];
  a1[93].n128_u8[12] = a2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v6 = v9 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v12 = v6;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User routed changed: Device %{public}s, value %d", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 != a2)
  {
    sub_10000801C(v10);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 15);
  }

  return sub_1000088CC(v10);
}

void sub_10053929C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005392BC(uint64_t a1, char **a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if ((a1 + 1504) != a2)
  {
    sub_100550954((a1 + 1504), *a2, a2[1], a2[1] - *a2);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_10053932C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 1504);
  v5 = *(a1 + 1512);
  if (v5 != v4)
  {
    sub_1000C9104(a2, v5 - v4);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005393CC(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 1536) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1152))(v4, a1, *(a1 + 1536));
  return sub_1000088CC(v6);
}

uint64_t sub_100539460(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1536);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005394A8(__n128 *a1, unsigned __int32 a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  v4 = a1[26].n128_u32[1];
  if (v4 != a2)
  {
    a1[26].n128_u32[1] = a2;
  }

  sub_10000801C(v6);
  if (v4 != a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 3);
  }

  return sub_1000088CC(v6);
}

uint64_t sub_100539554(uint64_t a1, unsigned int a2, int a3, _OWORD *a4, int a5)
{
  v25 = a2;
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1);
  v10 = *(a1 + 336);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = a1 + 336;
  do
  {
    v12 = *(v10 + 28);
    v13 = v12 >= a2;
    v14 = v12 < a2;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == a1 + 336 || *(v11 + 28) > a2 || *(v11 + 32) != a3 && (a3 || a2 != 0x40000))
  {
LABEL_9:
    v21 = &v25;
    *(sub_100023DF0(a1 + 328, &v25) + 8) = a3;
    a5 = 1;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_100550C98(&v21, a1 + 328);
  if ((a1 + 352) != a4)
  {
    *(a1 + 352) = *a4;
  }

  sub_10000801C(v24);
  if ((a5 & sub_1000295DC(a1)) == 1)
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v20 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136446210;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Writing capabilities map to disk for device %{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v17 = sub_1000BE4B4();
    (*(*v17 + 248))(v17, a1, &v21);
  }

  *(a1 + 649) = 0;
  sub_10000CEDC(&v21, v22);
  return sub_1000088CC(v24);
}

void sub_10053976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  sub_10000CEDC(va, v8);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005397A4(uint64_t a1, uint64_t *a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update magic paired device name to %s", &v7, 0xCu);
  }

  if (qword_100B508E0 != -1)
  {
    sub_100840930();
  }

  return sub_100518C8C(off_100B508D8, a1);
}

uint64_t sub_10053988C(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  v2 = *(a1 + 632);
  v3 = *(a1 + 624);
  while (v2 != v3)
  {
    v2 -= 168;
    sub_100550FBC(a1 + 624, v2);
  }

  *(a1 + 632) = v3;
  return sub_1000088CC(v5);
}

uint64_t sub_1005398FC(__n128 *a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = a1[39].n128_u64[1];
  if (v4 >= a1[40].n128_u64[0])
  {
    v5 = sub_100551020(a1 + 39, a2);
  }

  else
  {
    sub_100551168(a1[39].n128_i64[1], a2);
    v5 = v4 + 168;
    a1[39].n128_u64[1] = v4 + 168;
  }

  a1[39].n128_u64[1] = v5;
  return sub_1000088CC(v7);
}

uint64_t sub_1005399A0(uint64_t a1)
{
  v2 = sub_10000E92C();
  if (!(*(*v2 + 8))(v2))
  {
    goto LABEL_21;
  }

  LOBYTE(v35) = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "CATT");
  sub_100007E30(__p, "ForceDisableAll");
  (*(*v3 + 72))(v3, buf, __p, &v35);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v35 == 1)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Classic GATT service ForceDisableAll override, disabling classic att support", buf, 2u);
    }

    v5 = 0;
    return v5 & 1;
  }

  v38[0] = 0;
  v6 = *(a1 + 1128);
  if (v6 == 2)
  {
    v7 = 1452;
    goto LABEL_14;
  }

  if (v6 == 1)
  {
    v7 = 76;
LABEL_14:
    v8 = *(a1 + 1132) != v7;
    goto LABEL_16;
  }

  v8 = 1;
LABEL_16:
  v9 = sub_10000E92C();
  sub_100007E30(buf, "CATT");
  sub_100007E30(__p, "AllowAppleDevices");
  (*(*v9 + 72))(v9, buf, __p, v38);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v8 || (v38[0] & 1) == 0)
  {
LABEL_21:
    v10 = *(a1 + 1132);
    if (v10 != 76 || ((v11 = *(a1 + 1136) - 8202, v12 = v11 > 0x25, v13 = (1 << v11) & 0x200020033FLL, !v12) ? (v14 = v13 == 0) : (v14 = 1), v14))
    {
      if (*(a1 + 1125) != 1 || (*(a1 + 1146) & 0x80) == 0)
      {
        v15 = 0;
        goto LABEL_40;
      }
    }

    v16 = *(a1 + 1128);
    if (v16 == 2)
    {
      v17 = 1452;
    }

    else
    {
      if (v16 != 1)
      {
        v19 = 0;
        goto LABEL_39;
      }

      v17 = 76;
    }

    v19 = v10 == v17;
LABEL_39:
    v15 = (*(a1 + 176) < 0x30uLL) & (0x8000001B0000uLL >> *(a1 + 176)) & v19;
LABEL_40:
    v35 = xmmword_1008A9EA0;
    v20 = *(a1 + 1128);
    if (v20 == 2)
    {
      v21 = 1452;
    }

    else
    {
      if (v20 != 1)
      {
        goto LABEL_46;
      }

      v21 = 76;
    }

    if (v10 == v21)
    {
      v22 = 0;
      goto LABEL_47;
    }

LABEL_46:
    v22 = sub_10053A020(a1, &v35, 4u);
LABEL_47:
    v5 = v15 | v22;
    v23 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = ((v15 | v22) & 1) != 0 ? "" : "not ";
      sub_1000E5A58(a1, __p);
      v25 = v37 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = v24;
      *&buf[12] = 2082;
      *&buf[14] = v25;
      *&buf[22] = 1024;
      *&buf[24] = v15;
      *&buf[28] = 1024;
      *&buf[30] = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Classic GATT service is %ssupported for device %{public}s. appleDeviceAllowedForCatt %d, nonAppleWithSdpAttribute %d", buf, 0x22u);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v46 = 0;
    v45 = 0u;
    memset(v44, 0, sizeof(v44));
    v42 = 0u;
    *v43 = 0u;
    *v41 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_1000DE474(&buf[1]);
    buf[18] = 0;
    buf[20] = 0;
    BYTE2(v41[0]) = 0;
    BYTE4(v41[0]) = 0;
    DWORD1(v44[1]) = 0;
    memset(&buf[24], 0, 24);
    LOBYTE(v41[0]) = 0;
    v42 = 0uLL;
    v41[1] = 0;
    LOBYTE(v43[0]) = 0;
    memset(v44, 0, 19);
    v43[1] = 0;
    BYTE8(v44[1]) = 1;
    *(&v44[1] + 14) = 0;
    *(&v44[1] + 9) = 0;
    v45 = 0uLL;
    *(&v44[2] + 1) = 0;
    LOBYTE(v46) = 0;
    *(&v46 + 2) = 0;
    v26 = sub_100536A18(a1, buf);
    v27 = BYTE12(v45);
    v28 = sub_10053A224(a1);
    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, a1);
    v29 = v26 & v27;
    v30 = *(a1 + 176);
    sub_1000088CC(__p);
    if (v30 == 22 || v30 == 17)
    {
      v31 = *(a1 + 1124) ^ 1;
    }

    else
    {
      v31 = 0;
    }

    if ((v28 | v29) & 1) != 0 || (v31)
    {
      v32 = qword_100BCE8D8;
      v5 = 0;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, __p);
        if (v37 >= 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = __p[0];
        }

        *v38 = 136446210;
        v39 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Override CATT feature to disable for %{public}s", v38, 0xCu);
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        v5 = 0;
      }
    }

    if (SHIBYTE(v44[0]) < 0)
    {
      operator delete(v43[1]);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41[1]);
    }

    if (buf[47] < 0)
    {
      operator delete(*&buf[24]);
    }

    nullsub_21(&buf[1]);
    return v5 & 1;
  }

  v18 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Classic GATT service AllowAppleDevices override, forcing classic att support", buf, 2u);
  }

  v5 = 1;
  return v5 & 1;
}

BOOL sub_100539FE8(uint64_t a1)
{
  v1 = *(a1 + 1128);
  if (v1 == 2)
  {
    v2 = 1452;
    return *(a1 + 1132) == v2;
  }

  if (v1 == 1)
  {
    v2 = 76;
    return *(a1 + 1132) == v2;
  }

  return 0;
}

BOOL sub_10053A020(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if (*a2 != 3)
  {
    return 0;
  }

  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1);
  v6 = *(a1 + 592);
  v7 = (a1 + 600);
  if (v6 == v7)
  {
LABEL_10:
    v11 = 0;
  }

  else
  {
    while (!sub_10037E730(v6[4], a2))
    {
      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
      if (v9 == v7)
      {
        goto LABEL_10;
      }
    }

    v21 = 0;
    v22[0] = 0;
    v22[1] = 0;
    sub_10041F568(&v21, (v6 + 5));
    v12 = v22[0];
    if (!v22[0])
    {
      goto LABEL_20;
    }

    v13 = v22;
    v14 = v22[0];
    do
    {
      v15 = *(v14 + 32);
      v16 = v15 >= a3;
      v17 = v15 < a3;
      if (v16)
      {
        v13 = v14;
      }

      v14 = *(v14 + 8 * v17);
    }

    while (v14);
    if (v13 == v22 || *(v13 + 8) > a3)
    {
LABEL_20:
      v13 = v22;
    }

    v11 = v22 != v13;
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v19 = "has not";
      if (v22 != v13)
      {
        v19 = "has";
      }

      *buf = 67109378;
      v25 = a3;
      v26 = 2082;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "SDP attribute 0x%04x %{public}s been found", buf, 0x12u);
      v12 = v22[0];
    }

    sub_10000CEDC(&v21, v12);
  }

  sub_1000088CC(v23);
  return v11;
}

void sub_10053A204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053A224(uint64_t a1)
{
  __p = 0;
  v25 = 0;
  v26 = 0;
  p_p = &__p;
  sub_1000DEEA4(a1, &__p);
  if (v26 >= 0)
  {
    v2 = &__p + HIBYTE(v26);
  }

  else
  {
    v2 = __p + v25;
  }

  if (v26 < 0)
  {
    p_p = __p;
  }

  while (p_p != v2)
  {
    *p_p = __tolower(*p_p);
    ++p_p;
  }

  if (qword_100B54220 != -1)
  {
    sub_100840958();
  }

  v3 = sub_1003C62F8(qword_100B54218, 2);
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_100703D28(v3, &v22);
  v4 = v22;
  if (v22 == v23)
  {
LABEL_42:
    v20 = 0;
  }

  else
  {
    if (v26 >= 0)
    {
      v5 = &__p;
    }

    else
    {
      v5 = __p;
    }

    if (v26 >= 0)
    {
      v6 = HIBYTE(v26);
    }

    else
    {
      v6 = v25;
    }

    v7 = &v5[v6];
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? v4 + 4 : v4[4];
      v10 = v8 >= 0 ? *(v4 + 55) : v4[5];
      if (!v10)
      {
        break;
      }

      if (v6 >= v10)
      {
        v14 = *v9;
        v15 = v6;
        v16 = v5;
        do
        {
          v17 = v15 - v10;
          if (v17 == -1)
          {
            break;
          }

          v18 = memchr(v16, v14, v17 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v9, v10))
          {
            if (v19 == v7 || v19 - v5 == -1)
            {
              break;
            }

            goto LABEL_41;
          }

          v16 = v19 + 1;
          v15 = v7 - (v19 + 1);
        }

        while (v15 >= v10);
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
      if (v12 == v23)
      {
        goto LABEL_42;
      }
    }

LABEL_41:
    v20 = 1;
  }

  sub_10004B61C(&v22, v23[0]);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return v20;
}

void sub_10053A414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053A440(uint64_t a1)
{
  if (*(a1 + 1125) == 1)
  {
    v1 = (*(a1 + 1158) >> 3) & 1;
  }

  else
  {
    v1 = 0;
  }

  v2 = _os_feature_enabled_impl();
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109376;
    v5[1] = v2;
    v6 = 1024;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device::supportsUARPOverAACP: feature flag: %u, DID bit: %u", v5, 0xEu);
  }

  return v1 & v2;
}

uint64_t sub_10053A52C(uint64_t a1)
{
  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  *__p = 0u;
  v7 = 0u;
  *v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  sub_1000DE474(&v5 + 1);
  BYTE2(v6[0]) = 0;
  BYTE4(v6[0]) = 0;
  BYTE2(v8[0]) = 0;
  BYTE4(v8[0]) = 0;
  DWORD1(v11[1]) = 0;
  v7 = 0uLL;
  v6[1] = 0;
  LOBYTE(v8[0]) = 0;
  v9 = 0uLL;
  v8[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v11, 0, 19);
  __p[1] = 0;
  BYTE8(v11[1]) = 1;
  *(&v11[1] + 14) = 0;
  *(&v11[1] + 9) = 0;
  v12 = 0uLL;
  *(&v11[2] + 1) = 0;
  LOBYTE(v13) = 0;
  *(&v13 + 2) = 0;
  v2 = sub_100536A18(a1, &v5);
  v3 = BYTE14(v12);
  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[1]);
  }

  nullsub_21(&v5 + 1);
  return v2 & v3;
}

uint64_t sub_10053A674(uint64_t a1)
{
  __p = 0;
  v25 = 0;
  v26 = 0;
  p_p = &__p;
  sub_1000DEEA4(a1, &__p);
  if (v26 >= 0)
  {
    v2 = &__p + HIBYTE(v26);
  }

  else
  {
    v2 = __p + v25;
  }

  if (v26 < 0)
  {
    p_p = __p;
  }

  while (p_p != v2)
  {
    *p_p = __tolower(*p_p);
    ++p_p;
  }

  if (qword_100B54220 != -1)
  {
    sub_100840958();
  }

  v3 = sub_1003C62F8(qword_100B54218, 2);
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_100703C60(v3, &v22);
  v4 = v22;
  if (v22 == v23)
  {
LABEL_42:
    v20 = 0;
  }

  else
  {
    if (v26 >= 0)
    {
      v5 = &__p;
    }

    else
    {
      v5 = __p;
    }

    if (v26 >= 0)
    {
      v6 = HIBYTE(v26);
    }

    else
    {
      v6 = v25;
    }

    v7 = &v5[v6];
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? v4 + 4 : v4[4];
      v10 = v8 >= 0 ? *(v4 + 55) : v4[5];
      if (!v10)
      {
        break;
      }

      if (v6 >= v10)
      {
        v14 = *v9;
        v15 = v6;
        v16 = v5;
        do
        {
          v17 = v15 - v10;
          if (v17 == -1)
          {
            break;
          }

          v18 = memchr(v16, v14, v17 + 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (!memcmp(v18, v9, v10))
          {
            if (v19 == v7 || v19 - v5 == -1)
            {
              break;
            }

            goto LABEL_41;
          }

          v16 = v19 + 1;
          v15 = v7 - (v19 + 1);
        }

        while (v15 >= v10);
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
      if (v12 == v23)
      {
        goto LABEL_42;
      }
    }

LABEL_41:
    v20 = 1;
  }

  sub_10004B61C(&v22, v23[0]);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  return v20;
}

void sub_10053A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053A888(uint64_t a1)
{
  v36 = 0;
  v35 = 0u;
  memset(v34, 0, sizeof(v34));
  v32 = 0u;
  *v33 = 0u;
  v30 = 0u;
  *v31 = 0u;
  v28 = 0u;
  *v29 = 0u;
  sub_1000DE474(&v28 + 1);
  BYTE2(v29[0]) = 0;
  BYTE4(v29[0]) = 0;
  BYTE2(v31[0]) = 0;
  BYTE4(v31[0]) = 0;
  DWORD1(v34[1]) = 0;
  v30 = 0uLL;
  v29[1] = 0;
  LOBYTE(v31[0]) = 0;
  v32 = 0uLL;
  v31[1] = 0;
  LOBYTE(v33[0]) = 0;
  memset(v34, 0, 19);
  v33[1] = 0;
  BYTE8(v34[1]) = 1;
  *(&v34[1] + 14) = 0;
  *(&v34[1] + 9) = 0;
  v35 = 0uLL;
  *(&v34[2] + 1) = 0;
  LOBYTE(v36) = 0;
  *(&v36 + 2) = 0;
  if (sub_100536A18(a1, &v28) && (v36 & 0x1000000) != 0)
  {
    v2 = 1;
  }

  else
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    p_p = &__p;
    sub_1000DEEA4(a1, &__p);
    if (v27 >= 0)
    {
      v4 = &__p + HIBYTE(v27);
    }

    else
    {
      v4 = __p + v26;
    }

    if (v27 < 0)
    {
      p_p = __p;
    }

    while (p_p != v4)
    {
      *p_p = __tolower(*p_p);
      ++p_p;
    }

    if (qword_100B54220 != -1)
    {
      sub_100840958();
    }

    v5 = sub_1003C62F8(qword_100B54218, 2);
    v23 = 0;
    v24[0] = 0;
    v24[1] = 0;
    sub_100703CC4(v5, &v23);
    v6 = v23;
    if (v23 == v24)
    {
LABEL_45:
      v2 = 0;
    }

    else
    {
      if (v27 >= 0)
      {
        v7 = &__p;
      }

      else
      {
        v7 = __p;
      }

      if (v27 >= 0)
      {
        v8 = HIBYTE(v27);
      }

      else
      {
        v8 = v26;
      }

      v9 = &v7[v8];
      while (1)
      {
        v10 = *(v6 + 55);
        v11 = v10 >= 0 ? v6 + 4 : v6[4];
        v12 = v10 >= 0 ? *(v6 + 55) : v6[5];
        if (!v12)
        {
          break;
        }

        if (v8 >= v12)
        {
          v16 = *v11;
          v17 = v8;
          v18 = v7;
          do
          {
            v19 = v17 - v12;
            if (v19 == -1)
            {
              break;
            }

            v20 = memchr(v18, v16, v19 + 1);
            if (!v20)
            {
              break;
            }

            v21 = v20;
            if (!memcmp(v20, v11, v12))
            {
              if (v21 == v9 || v21 - v7 == -1)
              {
                break;
              }

              goto LABEL_44;
            }

            v18 = v21 + 1;
            v17 = v9 - (v21 + 1);
          }

          while (v17 >= v12);
        }

        v13 = v6[1];
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
            v14 = v6[2];
            v15 = *v14 == v6;
            v6 = v14;
          }

          while (!v15);
        }

        v6 = v14;
        if (v14 == v24)
        {
          goto LABEL_45;
        }
      }

LABEL_44:
      v2 = 1;
    }

    sub_10004B61C(&v23, v24[0]);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  if (SHIBYTE(v34[0]) < 0)
  {
    operator delete(v33[1]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  nullsub_21(&v28 + 1);
  return v2;
}

void sub_10053AB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100320BE8(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10053ABC4(uint64_t a1)
{
  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  *__p = 0u;
  v7 = 0u;
  *v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  sub_1000DE474(&v5 + 1);
  BYTE2(v6[0]) = 0;
  BYTE4(v6[0]) = 0;
  BYTE2(v8[0]) = 0;
  BYTE4(v8[0]) = 0;
  DWORD1(v11[1]) = 0;
  v7 = 0uLL;
  v6[1] = 0;
  LOBYTE(v8[0]) = 0;
  v9 = 0uLL;
  v8[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v11, 0, 19);
  __p[1] = 0;
  BYTE8(v11[1]) = 1;
  *(&v11[1] + 14) = 0;
  *(&v11[1] + 9) = 0;
  v12 = 0uLL;
  *(&v11[2] + 1) = 0;
  LOBYTE(v13) = 0;
  *(&v13 + 2) = 0;
  v2 = sub_100536A18(a1, &v5);
  v3 = HIBYTE(v12);
  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[1]);
  }

  nullsub_21(&v5 + 1);
  return v2 & v3;
}

uint64_t sub_10053AD0C(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 416) = a2;
  return sub_1000088CC(v5);
}

void sub_10053AD54(uint64_t a1)
{
  v44[0] = 0;
  v44[1] = 0;
  sub_100007F88(v44, a1);
  v2 = *(a1 + 592);
  v3 = sub_1000BE4B4();
  (*(*v3 + 344))(v3, a1);
  v4 = sub_1001BBBC4();
  if (v4 && (v5 = sub_1001BBB30(0), v5))
  {
    v26 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "Memory Manager initialization failed\n";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
    }

    sub_1000C52F4(v5);
    __break(1u);
  }

  else
  {
    if (v2 != (a1 + 600))
    {
      do
      {
        v6 = v2[4];
        buf = 0uLL;
        v47 = 0;
        sub_100007E30(&buf, "\n|>> ServiceClass: ");
        memset(&v43, 0, sizeof(v43));
        if (*v6 == 3)
        {
          if (*(v6 + 2) > 4u)
          {
            v7 = sub_100302240(*(v6 + 8));
          }

          else
          {
            v7 = sub_10030253C(*(v6 + 8));
          }

          std::string::assign(&v43, v7);
        }

        v40 = 0;
        v41 = 0;
        v42 = 0;
        sub_100007E30(&v40, "\n");
        v38 = 0uLL;
        v39 = 0;
        sub_10053B318(&buf, &v43.__r_.__value_.__l.__data_, &v45);
        if (v42 >= 0)
        {
          v8 = &v40;
        }

        else
        {
          v8 = v40;
        }

        if (v42 >= 0)
        {
          v9 = HIBYTE(v42);
        }

        else
        {
          v9 = v41;
        }

        v10 = std::string::append(&v45, v8, v9);
        v11 = *&v10->__r_.__value_.__l.__data_;
        v39 = v10->__r_.__value_.__r.__words[2];
        v38 = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        v12 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = &v38;
          if (v39 < 0)
          {
            v13 = v38;
          }

          LODWORD(v45.__r_.__value_.__l.__data_) = 136315138;
          *(v45.__r_.__value_.__r.__words + 4) = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s", &v45, 0xCu);
        }

        memset(&v45, 0, sizeof(v45));
        sub_10041F568(&v45, (v2 + 5));
        v14 = v45.__r_.__value_.__r.__words[0];
        if (v45.__r_.__value_.__l.__data_ != &v45.__r_.__value_.__r.__words[1])
        {
          do
          {
            v37 = *(v14 + 40);
            v35[0] = 0;
            v35[1] = 0;
            v36 = 0;
            sub_100007E30(v35, "|Attribute Key: ");
            v33[0] = 0;
            v33[1] = 0;
            v34 = 0;
            v15 = sub_1003021E8(*(v14 + 32));
            sub_100007E30(v33, v15);
            v30 = 0;
            v31 = 0;
            v32 = 0;
            sub_100007E30(&v30, "\n");
            __p[0] = 0;
            __p[1] = 0;
            v29 = 0;
            sub_10053B318(v35, v33, &v27);
            if (v32 >= 0)
            {
              v16 = &v30;
            }

            else
            {
              v16 = v30;
            }

            if (v32 >= 0)
            {
              v17 = HIBYTE(v32);
            }

            else
            {
              v17 = v31;
            }

            v18 = std::string::append(&v27, v16, v17);
            v19 = *&v18->__r_.__value_.__l.__data_;
            v29 = v18->__r_.__value_.__r.__words[2];
            *__p = v19;
            v18->__r_.__value_.__l.__size_ = 0;
            v18->__r_.__value_.__r.__words[2] = 0;
            v18->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }

            if (v29 >= 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = __p[0];
            }

            sub_100238CA8(&v37, v20);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v32) < 0)
            {
              operator delete(v30);
            }

            if (SHIBYTE(v34) < 0)
            {
              operator delete(v33[0]);
            }

            if (SHIBYTE(v36) < 0)
            {
              operator delete(v35[0]);
            }

            v21 = *(v14 + 8);
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = v21->__r_.__value_.__r.__words[0];
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = *(v14 + 16);
                v23 = v22->__r_.__value_.__r.__words[0] == v14;
                v14 = v22;
              }

              while (!v23);
            }

            v14 = v22;
          }

          while (v22 != &v45.__r_.__value_.__r.__words[1]);
        }

        sub_10000CEDC(&v45, v45.__r_.__value_.__l.__size_);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(v38);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(v40);
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(buf);
        }

        v24 = v2[1];
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
            v25 = v2[2];
            v23 = *v25 == v2;
            v2 = v25;
          }

          while (!v23);
        }

        v2 = v25;
      }

      while (v25 != (a1 + 600));
    }

    if (v4)
    {
      sub_1001BBB94();
    }

    sub_1000088CC(v44);
  }
}

uint64_t sub_10053B318@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_1003A5170(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_10053B3EC(uint64_t a1, uint64_t a2, void *a3)
{
  v41[0] = 0;
  v41[1] = 0;
  sub_100007F88(v41, a1);
  v6 = *(a1 + 592);
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, &__p);
    v8 = v40 >= 0 ? &__p : __p;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting SDP Attributes for %{public}s", &buf, 0xCu);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }
  }

  if (v6 != (a1 + 600))
  {
    while (!sub_10037E730(v6[4], a2))
    {
      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
      if (v10 == (a1 + 600))
      {
        goto LABEL_24;
      }
    }

    __p = 0;
    v39 = 0;
    v40 = 0;
    sub_10041F568(&__p, (v6 + 5));
    v12 = __p;
    if (__p != &v39)
    {
      do
      {
        *&buf.__r_.__value_.__l.__data_ = *(v12 + 40);
        sub_10037D4F4(&buf);
        v13 = *(v12 + 1);
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
            v14 = *(v12 + 2);
            v11 = *v14 == v12;
            v12 = v14;
          }

          while (!v11);
        }

        v12 = v14;
      }

      while (v14 != &v39);
    }

    sub_10000CEDC(&__p, v39);
    v39 = 0;
    v40 = 0;
    __p = &v39;
    sub_10037D4F4(v6[4]);
    free(v6[4]);
    sub_100480394((a1 + 592), v6);
    sub_10000CEDC(&__p, v39);
  }

LABEL_24:
  __p = 0;
  v39 = 0;
  v40 = 0;
  sub_100007E30(&__p, "\n|>> ServiceClass: ");
  memset(&buf, 0, sizeof(buf));
  if (*a2 == 3)
  {
    if (*(a2 + 2) > 4u)
    {
      v15 = sub_100302240(*(a2 + 8));
    }

    else
    {
      v15 = sub_10030253C(*(a2 + 8));
    }

    std::string::assign(&buf, v15);
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  sub_100007E30(&v35, "\n");
  sub_10053B318(&__p, &buf.__r_.__value_.__l.__data_, &v34);
  if (v37 >= 0)
  {
    v16 = &v35;
  }

  else
  {
    v16 = v35;
  }

  if (v37 >= 0)
  {
    v17 = HIBYTE(v37);
  }

  else
  {
    v17 = v36;
  }

  v18 = std::string::append(&v34, v16, v17);
  v19 = v18->__r_.__value_.__r.__words[0];
  v20 = SHIBYTE(v18->__r_.__value_.__r.__words[2]);
  v18->__r_.__value_.__r.__words[0] = 0;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  *&v34.__r_.__value_.__r.__words[1] = 0uLL;
  v34.__r_.__value_.__r.__words[0] = &v34.__r_.__value_.__l.__size_;
  v23 = *a3;
  v21 = a3 + 1;
  v22 = v23;
  if (v23 != v21)
  {
    do
    {
      v33 = *(v22 + 8);
      v32 = *(v22 + 5);
      v31 = 0uLL;
      if (sub_10037E830(&v31, &v32))
      {
        v41[3] = &v33;
        v24 = sub_10041F130(&v34, &v33);
        *(v24 + 5) = v31;
      }

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
          v11 = *v26 == v22;
          v22 = v26;
        }

        while (!v11);
      }

      v22 = v26;
    }

    while (v26 != v21);
  }

  *&v31 = malloc_type_calloc(1uLL, 0x10uLL, 0x10F2040C8FBA5E1uLL);
  sub_10037E830(v31, a2);
  *&v32 = &v31;
  v27 = (sub_10041F204(a1 + 592, &v31) + 5);
  if (v27 != &v34)
  {
    sub_10041F2E0(v27, v34.__r_.__value_.__l.__data_, &v34.__r_.__value_.__l.__size_);
  }

  sub_10000801C(v41);
  sub_10053B94C(a1);
  v28 = sub_100017F4C();
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10053BF5C;
  v30[3] = &unk_100ADF8F8;
  v30[4] = a1;
  sub_10000CA94(v28, v30);
  sub_10000CEDC(&v34, v34.__r_.__value_.__l.__size_);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  return sub_1000088CC(v41);
}

BOOL sub_10053B94C(__n128 *a1)
{
  v43 = xmmword_1008A9EB0;
  v2 = sub_10053A020(a1, &v43, 0);
  if (v2)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    if (sub_10053BFB4(a1, &v43, 0x205u, &v40) && sub_10053BFB4(a1, &v43, 0x201u, &v37))
    {
      v3 = v40;
      if (v41 - v40 == 16)
      {
        v4 = *(v40 + 2);
      }

      else
      {
        v4 = 0;
      }

      v19 = v37;
      v18 = v38;
      if (v38 - v37 == 16)
      {
        v5 = *(v37 + 2);
      }

      else
      {
        v5 = 0;
      }

      if (v40 != v41)
      {
        do
        {
          *buf = 0;
          *&buf[8] = 0;
          *buf = *v3;
          sub_10037D4F4(buf);
          ++v3;
        }

        while (v3 != v41);
        v19 = v37;
        v18 = v38;
      }

      if (v19 != v18)
      {
        do
        {
          *buf = 0;
          *&buf[8] = 0;
          *buf = *v19;
          sub_10037D4F4(buf);
          ++v19;
        }

        while (v19 != v38);
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    if (sub_10053BFB4(a1, &v43, 0x202u, &v34))
    {
      v7 = v34;
      v6 = v35;
      if (v35 - v34 == 16)
      {
        v8 = *(v34 + 2);
      }

      else
      {
        v8 = 0;
      }

      while (v7 != v6)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *v7;
        sub_10037D4F4(buf);
        ++v7;
        v6 = v35;
      }
    }

    else
    {
      v8 = 0;
    }

    if (sub_10053BFB4(a1, &v43, 0x203u, &v31))
    {
      v10 = v31;
      v9 = v32;
      if (v32 - v31 == 16)
      {
        v11 = *(v31 + 2);
      }

      else
      {
        v11 = 0;
      }

      while (v10 != v9)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *v10;
        sub_10037D4F4(buf);
        ++v10;
        v9 = v32;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      v13 = v21 >= 0 ? __p : __p[0];
      *buf = 136447234;
      *&buf[4] = v13;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      v45 = 1024;
      v46 = v5;
      v47 = 1024;
      v48 = v8;
      v49 = 1024;
      v50 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "storeSdpDid “%{public}s deviceId information: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x", buf, 0x24u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10053D890(a1, v4, v5, v8, v11);
    if (sub_10053BFB4(a1, &v43, 0xA000u, &v28))
    {
      if (v29 != v28)
      {
        if (*(v28 + 1) == 4)
        {
          sub_10053DCEC(a1, *(v28 + 2), 0);
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100840980();
          }

          a1[70].n128_u8[5] = 0;
        }
      }

      for (i = v28; i != v29; ++i)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *i;
        sub_10037D4F4(buf);
      }
    }

    else
    {
      a1[70].n128_u8[5] = 0;
    }

    if (sub_10053BFB4(a1, &v43, 0xA001u, &v22))
    {
      if (v23 != v22)
      {
        if (*(v22 + 1) == 8)
        {
          sub_10053DFDC(a1, **(v22 + 1), 0);
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_1008409F8();
          }

          a1[70].n128_u8[6] = 0;
        }
      }

      for (j = v22; j != v23; ++j)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *j;
        sub_10037D4F4(buf);
      }
    }

    else
    {
      a1[70].n128_u8[6] = 0;
    }

    if (sub_10053BFB4(a1, &v43, 0xAFFFu, &v25))
    {
      if (v26 != v25)
      {
        if (*(v25 + 1) == 2)
        {
          sub_10053E160(a1, *(v25 + 4));
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100840A70();
          }

          a1[70].n128_u8[7] = 0;
        }
      }

      for (k = v25; k != v26; ++k)
      {
        *buf = 0;
        *&buf[8] = 0;
        *buf = *k;
        sub_10037D4F4(buf);
      }
    }

    else
    {
      a1[70].n128_u8[7] = 0;
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }
  }

  return v2;
}

void sub_10053BEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10053BF5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  v2 = off_100B508E8;

  return sub_10056B15C(v2, v1, 4);
}

uint64_t sub_10053BFB4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, a1);
  v8 = *(a1 + 592);
  v9 = (a1 + 600);
  if (v8 == v9)
  {
LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  while (!sub_10037E730(v8[4], a2))
  {
    v10 = v8[1];
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
        v11 = v8[2];
        v12 = *v11 == v8;
        v8 = v11;
      }

      while (!v12);
    }

    v8 = v11;
    if (v11 == v9)
    {
      goto LABEL_21;
    }
  }

  v27 = 0;
  v28[0] = 0;
  v28[1] = 0;
  sub_10041F568(&v27, (v8 + 5));
  v13 = v28[0];
  if (!v28[0])
  {
    goto LABEL_18;
  }

  v14 = v28;
  v15 = v28[0];
  do
  {
    v16 = *(v15 + 32);
    v17 = v16 >= a3;
    v18 = v16 < a3;
    if (v17)
    {
      v14 = v15;
    }

    v15 = *(v15 + 8 * v18);
  }

  while (v15);
  if (v14 == v28 || *(v14 + 8) > a3)
  {
LABEL_18:
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Couldn't find SDP attribute 0x%04x", buf, 8u);
      v13 = v28[0];
    }

    sub_10000CEDC(&v27, v13);
    goto LABEL_21;
  }

  *buf = *(v14 + 5);
  v26 = 0uLL;
  if (buf[0] - 6 >= 2)
  {
    if (buf[0] && sub_10037E830(&v26, buf))
    {
      sub_10053C22C(a4, &v26);
    }

    v25 = v28[0];
  }

  else
  {
    v22 = *&buf[2];
    if (*&buf[2])
    {
      v23 = 0;
      v24 = *&buf[8];
      do
      {
        if (sub_10037E830(&v26, v24))
        {
          sub_10053C22C(a4, &v26);
        }

        ++v23;
        v24 += 16;
      }

      while (v23 < v22);
      v13 = v28[0];
    }

    v25 = v13;
  }

  sub_10000CEDC(&v27, v25);
  v20 = 1;
LABEL_22:
  sub_1000088CC(v29);
  return v20;
}

void sub_10053C1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  sub_10000CEDC(va, v7);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

void sub_10053C22C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1000C7698();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_100551490(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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
}

BOOL sub_10053C304(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 3)
  {
    return 0;
  }

  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1);
  v4 = *(a1 + 592);
  v5 = (a1 + 600);
  if (v4 == (a1 + 600))
  {
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v6 = sub_10037E730(v4[4], a2);
      if (v6)
      {
        break;
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
      if (v8 == v5)
      {
        goto LABEL_14;
      }
    }

    v6 = 1;
  }

LABEL_14:
  sub_1000088CC(v11);
  return v6;
}

BOOL sub_10053C3E8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 608) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053C438(__n128 *a1, uint64_t a2, __int8 *a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1);
  v6 = &a1[19].n128_i8[8];
  if ((a1[19].n128_u64[1] || a1[20].n128_u64[0]) && a1[19].n128_u32[0] == a2)
  {
    if (v6 != a3)
    {
      *v6 = *a3;
    }
  }

  else
  {
    a1[19].n128_u32[0] = a2;
    if (v6 != a3)
    {
      *v6 = *a3;
    }

    sub_10000801C(v10);
    if (sub_1000295DC(a1))
    {
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = a2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set class of device to %u", buf, 8u);
      }

      v8 = sub_1000BE4B4();
      (*(*v8 + 264))(v8, a1, a2);
    }

    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 5);
  }

  return sub_1000088CC(v10);
}

unsigned __int16 *sub_10053C5E0(_WORD *a1, uint64_t a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  sub_10000AE20((a1 + 532), a2);
  a1[540] = a3;
  a1[541] = a4;
  a1[542] = a5;
  a1[543] = a6;

  return sub_10053C64C(a1);
}

unsigned __int16 *sub_10053C64C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Updating HID Device Types", v12, 2u);
  }

  result = sub_10000C5F8(a1 + 1064);
  if (result)
  {
    v4 = *(a1 + 1082);
    v5 = *(a1 + 1080);
    v6 = *(a1 + 1084);
  }

  else
  {
    if (*(a1 + 1124) != 1)
    {
      return result;
    }

    v4 = *(a1 + 1128);
    v5 = *(a1 + 1132);
    v6 = *(a1 + 1136);
  }

  v7 = qword_100BCE6B0;
  for (i = qword_100BCE6B8; v7 != i; v7 += 40)
  {
    result = sub_1003141CC(&unk_100BCE668, v7);
    if (v4 == *result)
    {
      result = sub_1003141CC(&unk_100BCE680, (v7 + 4));
      if (v5 == *result)
      {
        v10 = *(v7 + 8);
        v9 = *(v7 + 16);
        if (v9 != v10)
        {
          while (1)
          {
            result = sub_1003141CC(&unk_100BCE698, v10);
            if (v6 == *result)
            {
              break;
            }

            if (++v10 == v9)
            {
              goto LABEL_16;
            }
          }
        }

        v11 = *(v7 + 32);
        if (v11 >= 0x20)
        {
          abort();
        }

        *(a1 + 784) |= 1 << v11;
      }
    }

LABEL_16:
    ;
  }

  return result;
}

BOOL sub_10053C7C8(_WORD *a1, uint64_t a2, _WORD *a3, _WORD *a4, _WORD *a5, _WORD *a6)
{
  if (sub_10000C5F8((a1 + 532)))
  {
    sub_10000AE20(a2, (a1 + 532));
    *a3 = a1[540];
    *a4 = a1[541];
    *a5 = a1[542];
    *a6 = a1[543];
  }

  return sub_10000C5F8((a1 + 532)) != 0;
}

uint64_t sub_10053C86C(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v2 = *(a1 + 176);
  sub_1000088CC(v7);
  if (v2 != 26)
  {
    return 0;
  }

  v3 = *(a1 + 784);
  v4 = (v3 & 0x2E800) == 0;
  v5 = (v3 >> 18) & 1;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10053C8DC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 176);
  sub_1000088CC(v4);
  if (v2 != 26)
  {
    return 0;
  }

  if ((*(a1 + 784) & 0x3000) != 0)
  {
    return 1;
  }

  return (*(a1 + 784) >> 14) & 1;
}

uint64_t sub_10053C990(uint64_t a1)
{
  result = sub_10000C5F8(a1 + 1064);
  if (result)
  {
    return *(a1 + 1086) > 0x100u;
  }

  return result;
}

uint64_t sub_10053C9C8(uint64_t a1)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v10 = 0;
    v2 = sub_10000E92C();
    sub_100007E30(buf, "HID");
    sub_100007E30(__p, "EnableGamepads");
    (*(*v2 + 72))(v2, buf, __p, &v10);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9 < 0)
    {
      operator delete(*buf);
    }

    if ((*(a1 + 785) & 0x2E8) == 0)
    {
      v3 = v10;
      if ((v10 & 1) == 0)
      {
        return v3 & 1;
      }

      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bypassing MFi gamepad authentication", buf, 2u);
        v3 = v10;
        return v3 & 1;
      }
    }
  }

  v3 = 1;
  return v3 & 1;
}

void sub_10053CAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10053CB68(uint64_t a1)
{
  v2 = &off_100AE0A78;
  v3 = 0;
  sub_10000AE20(a1 + 1064, &v2);
  v2 = &off_100AE0A78;
  if (v3)
  {
    sub_10000C808(v3);
  }

  *(a1 + 1080) = 0;
}

void sub_10053CBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10053CBF0(_BYTE *result, char a2, char a3)
{
  result[1051] = 1;
  result[1052] = a2;
  result[1060] = a3;
  return result;
}

uint64_t sub_10053CC04(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  if (a1[1051] == 1)
  {
    *a2 = a1[1052];
    *a3 = a1[1060];
    v3 = a1[1051];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

int32x2_t sub_10053CC34(uint64_t a1, __int32 a2)
{
  v2.i32[0] = 1;
  v2.i32[1] = a2;
  result = vadd_s32(*(a1 + 1220), v2);
  *(a1 + 1220) = result;
  return result;
}

int32x2_t sub_10053CC50(uint64_t a1, __int32 a2)
{
  v2.i32[0] = 1;
  v2.i32[1] = a2;
  result = vadd_s32(*(a1 + 1212), v2);
  *(a1 + 1212) = result;
  return result;
}

BOOL sub_10053CC6C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1053) != 255;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053CCBC(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  *(a1 + 1053) = a2;
  v4 = sub_1000BE4B4();
  v5 = (*(*v4 + 1424))(v4, a1, a2);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v10 = a2;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setEncryptionKeySize to %d with result %d", buf, 0xEu);
  }

  return sub_1000088CC(v8);
}

uint64_t sub_10053CDEC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1053);
  sub_1000088CC(v4);
  return v2;
}

BOOL sub_10053CE34(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1054) != 255;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053CE84(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  *(a1 + 1054) = a2;
  v4 = sub_1000BE4B4();
  v5 = (*(*v4 + 1440))(v4, a1, a2);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v10 = a2;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setEncryptionMode to %d with result %d", buf, 0xEu);
  }

  return sub_1000088CC(v8);
}

uint64_t sub_10053CFB4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1054);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053CFFC(uint64_t a1, int a2)
{
  *(a1 + 1056) = a2;
  v2 = *(*sub_1000BE4B4() + 1456);

  return v2();
}

void sub_10053D06C(uint64_t a1, int a2)
{
  if (sub_10000C5F8(a1 + 1064))
  {
    *(a1 + 1428) = a2;
    v4 = *(*sub_1000BE4B4() + 1472);

    v4();
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840AE8(a1);
  }
}

uint64_t sub_10053D124(uint64_t a1)
{
  v2 = *(a1 + 1124);
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      sub_1000C23E0(a1, __p);
      if (v15 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446466;
      v19 = "BOOL BT::Device::isDeviceSupported()";
      v20 = 2082;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s - “%{public}s” has deviceID - calling CBUtil isDeviceSupported:", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v16[0] = @"DeviceType";
    v6 = [NSNumber numberWithUnsignedInt:*(a1 + 176)];
    v17[0] = v6;
    v16[1] = @"VendorIDSrc";
    v7 = [NSNumber numberWithUnsignedInt:*(a1 + 1128)];
    v17[1] = v7;
    v16[2] = @"VendorID";
    v8 = [NSNumber numberWithUnsignedInt:*(a1 + 1132)];
    v17[2] = v8;
    v16[3] = @"ProductID";
    v9 = [NSNumber numberWithUnsignedInt:*(a1 + 1136)];
    v17[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
    v11 = [CBUtil isDeviceSupported:v10];
  }

  else
  {
    if (v4)
    {
      sub_1000C23E0(a1, __p);
      v12 = v15 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v19 = "BOOL BT::Device::isDeviceSupported()";
      v20 = 2082;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s - “%{public}s” no deviceID - returning true", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 1;
  }

  return v11;
}

uint64_t sub_10053D3E0(uint64_t a1)
{
  if (qword_100B54220 != -1)
  {
    sub_1008408A4();
  }

  v2 = sub_1003C62F8(qword_100B54218, 2);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_100703DD4(v2, &v16);
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 1128);
    v12 = *(a1 + 1132);
    sub_1000E5A58(a1, __p);
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 67109634;
    v20 = v11;
    v21 = 1024;
    v22 = v12;
    v23 = 2082;
    v24 = v13;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Identification - isVendorWithInvalidOUIs looking for vidSrc: %d and vendorID: %d for device %{public}s", buf, 0x18u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v17)
  {
    v4 = *(a1 + 1128);
    v5 = *(a1 + 1132);
    v6 = v17;
    while (1)
    {
      v7 = *(v6 + 7);
      if (v4 >= v7)
      {
        if (v7 < v4)
        {
          goto LABEL_10;
        }

        v8 = *(v6 + 8);
        if (v5 >= v8)
        {
          break;
        }
      }

LABEL_11:
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    if (v8 >= v5)
    {
      v9 = 1;
      goto LABEL_13;
    }

LABEL_10:
    ++v6;
    goto LABEL_11;
  }

LABEL_12:
  v9 = 0;
LABEL_13:
  sub_10000CEDC(&v16, v17);
  return v9;
}

uint64_t sub_10053D5A0(uint64_t result, __int16 a2, int a3)
{
  if (a3 == 8194)
  {
    v3 = result;
    if (*(result + 1125) == 1 && (a2 & 0x4000) != 0 && (*(result + 1144) & 0x4000) == 0)
    {
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v3, &__p);
        if (v10 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136446210;
        v12 = p_p;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Upgrading Device %{public}s to enhanced double tap", buf, 0xCu);
        if (v10 < 0)
        {
          operator delete(__p);
        }
      }

      __p = 0;
      v9 = 0;
      sub_100007F88(&__p, v3);
      v6 = v3[50].n128_u32[0];
      sub_1000088CC(&__p);
      __p = 0;
      v9 = 0;
      sub_100007F88(&__p, v3);
      v7 = v3[50].n128_u32[0];
      sub_1000088CC(&__p);
      return sub_10053D6E4(v3, v6 | (v7 << 8));
    }
  }

  return result;
}

uint64_t sub_10053D6E4(__n128 *a1, unsigned __int32 a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  v4 = a1[50].n128_u32[0];
  a1[50].n128_u32[0] = a2;
  v5 = sub_1000BE4B4();
  (*(*v5 + 856))(v5, a1, a1[50].n128_u32[0]);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[50].n128_u32[0];
    sub_1000E5A58(a1, __p);
    v8 = v11 >= 0 ? __p : __p[0];
    *buf = 67109378;
    v14 = v7;
    v15 = 2082;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Double tap settings is set to %d for Device %{public}s", buf, 0x12u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 != a2)
  {
    sub_10000801C(v12);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 10);
  }

  return sub_1000088CC(v12);
}

void sub_10053D870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10053D890(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if ((*(a1 + 576) & 2) == 0)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, a1);
    v10 = *(a1 + 176);
    v12 = v10 == 17 || v10 == 22;
    sub_1000088CC(buf);
    if (a3 == 76 && v12)
    {
      if (qword_100B53FE8 != -1)
      {
        sub_100840794();
      }

      v13 = qword_100B53FE0;
      sub_100007E30(buf, "DID Corruption");
      sub_1000E5A58(a1, __p);
      sub_1005780BC(v13, buf, __p, 0.0);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(*buf);
      }

      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a1, __p);
        v15 = v24 >= 0 ? __p : __p[0];
        v16 = *(a1 + 1132);
        *buf = 136446722;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = v16;
        v26 = 1024;
        v27 = 76;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: DID Corruption. Setting DID for %{public}s from 0x%x to 0x%x", buf, 0x18u);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    *(a1 + 1124) = 1;
    if (a2 && *(a1 + 1128) != a2)
    {
      *(a1 + 1128) = a2;
      v17 = 1;
      if (!a3)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v17 = 0;
      if (!a3)
      {
LABEL_35:
        if (a4 && *(a1 + 1136) != a4)
        {
          *(a1 + 1136) = a4;
          v17 = 1;
        }

        if (a5 && *(a1 + 1140) != a5)
        {
          *(a1 + 1140) = a5;
          v17 = 1;
        }

        v21 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a1, __p);
          v22 = v24 >= 0 ? __p : __p[0];
          *buf = 136447234;
          *&buf[4] = v22;
          *&buf[12] = 1024;
          *&buf[14] = a2;
          v26 = 1024;
          v27 = a3;
          v28 = 1024;
          v29 = a4;
          v30 = 1024;
          v31 = a5;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Setting device ID info for device %{public}s: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x", buf, 0x24u);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (*(a1 + 520) && (_os_feature_enabled_impl() & 1) == 0)
        {
          (*(**(a1 + 520) + 16))(*(a1 + 520));
        }

        if (v17)
        {
          if (qword_100B508F0 != -1)
          {
            sub_100840690();
          }

          sub_10056B15C(off_100B508E8, a1, 27);
        }

        if (sub_100537920(a1) == 32)
        {
          sub_10053C64C(a1);
        }

        return;
      }
    }

    if (*(a1 + 1132) != a3)
    {
      *(a1 + 1132) = a3;
      v17 = 1;
    }

    goto LABEL_35;
  }

  v18 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v19 = v24 >= 0 ? __p : __p[0];
    v20 = *(a1 + 576);
    *buf = 136447490;
    *&buf[4] = v19;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    v26 = 1024;
    v27 = a3;
    v28 = 1024;
    v29 = a4;
    v30 = 1024;
    v31 = a5;
    v32 = 1024;
    v33 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skip device ID for device %{public}s: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x GAPA 0x%x", buf, 0x2Au);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10053DCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10053DCEC(__n128 *a1, unsigned __int32 a2, char a3)
{
  v4 = a1[36].n128_u32[0];
  if ((v4 & 2) != 0)
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v17) = 67109376;
      DWORD1(v17) = a2;
      WORD4(v17) = 1024;
      *(&v17 + 10) = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skip supportedFeatures 0x%x GAPA 0x%x", &v17, 0xEu);
    }
  }

  else
  {
    v7 = a1[71].n128_u32[2];
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v17) = 67109120;
      DWORD1(v17) = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "supportedFeatures 0x%x", &v17, 8u);
    }

    sub_10053D5A0(a1, a2, a1[71].n128_i32[0]);
    a1[70].n128_u8[5] = 1;
    a1[71].n128_u32[2] = a2;
    if (a1[70].n128_u32[3] == 76 && ((v9 = a1[71].n128_u32[0] - 8194, v10 = v9 > 0x2D, v11 = (1 << v9) & 0x200020037F9BLL, !v10) ? (v12 = v11 == 0) : (v12 = 1), !v12) || (a2 & 0x1000) != 0 || (a1[72].n128_u8[5] & 2) != 0)
    {
      *buf = 0;
      sub_100016250(buf);
      *&v17 = *buf;
      *(&v17 + 1) = *&buf[4];
      if (!a1[11].n128_u32[0])
      {
        v14 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Applying workaround for Apple Audio Device: BT_DEVICE_TYPE_GENERIC->BT_DEVICE_TYPE_HEADPHONES", buf, 2u);
        }

        sub_100538254(a1, 20, &v17);
      }

      if (!a1[19].n128_u32[0])
      {
        v15 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 2098200;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Applying workaround for Apple Audio Device, CoD: 0->%u", buf, 8u);
        }

        sub_10053C438(a1, 2098200, &v17);
      }

      v16 = sub_10000C798();
      if (((*(*v16 + 360))(v16) & 1) == 0)
      {
        sub_10053E56C(a1, 0);
      }
    }

    else
    {
      sub_10053E56C(a1, 1);
    }

    if ((a3 & 1) == 0 && v7 != a2)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 4099);
    }
  }
}

void sub_10053DFDC(__n128 *a1, unint64_t a2, char a3)
{
  v4 = a1[36].n128_u32[0];
  v5 = HIDWORD(a2);
  if ((v4 & 2) != 0)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109632;
      v12 = a2;
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skip supportedExtendedFeatures I1: 0x%x, I2: 0x%x GAPA 0x%x", &v11, 0x14u);
    }
  }

  else
  {
    v8 = a1[72].n128_u64[0];
    a1[70].n128_u8[6] = 1;
    a1[72].n128_u64[0] = a2;
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109376;
      v12 = a2;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "supportedExtendedFeatures I1: 0x%x, I2: 0x%x", &v11, 0xEu);
    }

    if ((a3 & 1) == 0 && v8 != a2)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      sub_10056B15C(off_100B508E8, a1, 4099);
    }
  }
}

void sub_10053E160(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supportedFeaturesVersion 0x%x", v5, 8u);
  }

  *(a1 + 1127) = 1;
  *(a1 + 1148) = a2;
}

uint64_t sub_10053E21C(unsigned __int8 *a1)
{
  v18 = 0;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  v14 = 0u;
  *v15 = 0u;
  v12 = 0u;
  *v13 = 0u;
  v10 = 0u;
  *v11 = 0u;
  sub_1000DE474(&v10 + 1);
  BYTE2(v11[0]) = 0;
  BYTE4(v11[0]) = 0;
  BYTE2(v13[0]) = 0;
  BYTE4(v13[0]) = 0;
  HIDWORD(v16[2]) = 0;
  v12 = 0uLL;
  v11[1] = 0;
  LOBYTE(v13[0]) = 0;
  v14 = 0uLL;
  v13[1] = 0;
  LOBYTE(v15[0]) = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15[1] = 0;
  *(&v16[1] + 7) = 0;
  LOBYTE(v16[3]) = 1;
  *(&v16[3] + 6) = 0;
  *(&v16[3] + 1) = 0;
  v17 = 0uLL;
  v16[5] = 0;
  LOBYTE(v18) = 0;
  *(&v18 + 2) = 0;
  if (sub_100536A18(a1, &v10) && BYTE13(v17) == 1)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a1, __p);
      v3 = v7 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Invoking Single Shot Role Switch WAR for %{public}s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v4 = sub_10000C7D0();
    if ((*(*v4 + 3968))(v4, 1, (a1[128] << 40) | (a1[129] << 32) | (a1[130] << 24) | (a1[131] << 16) | (a1[132] << 8) | a1[133]) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a1, __p);
      sub_100840B8C();
    }
  }

  if (SHIBYTE(v16[1]) < 0)
  {
    operator delete(v15[1]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  return nullsub_21(&v10 + 1);
}

void sub_10053E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100320BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10053E4A8(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 1125);
  if (result == 1)
  {
    *a2 = *(a1 + 1144);
  }

  return result;
}

uint64_t sub_10053E4C4(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 1127);
  if (result == 1)
  {
    *a2 = *(a1 + 1148);
  }

  return result;
}

uint64_t sub_10053E4E0(uint64_t a1, void *a2)
{
  result = *(a1 + 1126);
  if (result == 1)
  {
    *a2 = *(a1 + 1152);
  }

  return result;
}

uint64_t sub_10053E4FC(__n128 *a1, int a2, int a3)
{
  if (a2 == 32)
  {
    v3 = 0;
    a1[72].n128_u32[1] |= a3;
  }

  else
  {
    v3 = 2;
    if (a2 == 14 && (a1[70].n128_u8[5] & 1) != 0)
    {
      if (a3)
      {
        v4 = 0x4000;
      }

      else
      {
        v4 = 0;
      }

      sub_10053DCEC(a1, a1[71].n128_u32[2] & 0xFFFFBFFF | v4, 0);
      return 0;
    }
  }

  return v3;
}

uint64_t sub_10053E56C(uint64_t a1, char a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1);
  *(a1 + 1044) = a2;
  v4 = sub_1000BE4B4();
  (*(*v4 + 1304))(v4, a1, *(a1 + 1044));
  return sub_1000088CC(v6);
}

void sub_10053E630(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  v2 = sub_1000BE6E8(off_100B508E8);
  v3 = qword_100BCE8D8;
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, &__dst);
      v4 = v56 >= 0 ? &__dst : __dst;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Flushing settings to disk for device %{public}s", &buf, 0xCu);
      if (SHIBYTE(v56) < 0)
      {
        operator delete(__dst);
      }
    }

    v54[0] = 0;
    v54[1] = 0;
    sub_100007F88(v54, a1);
    __dst = 0uLL;
    v56 = 0;
    if (*(a1 + 223) < 0)
    {
      sub_100008904(&__dst, *(a1 + 200), *(a1 + 208));
    }

    else
    {
      __dst = *(a1 + 200);
      v56 = *(a1 + 216);
    }

    v5 = *(a1 + 224);
    v6 = *(a1 + 232);
    buf = 0uLL;
    v61 = 0;
    if (*(a1 + 263) < 0)
    {
      sub_100008904(&buf, *(a1 + 240), *(a1 + 248));
    }

    else
    {
      buf = *(a1 + 240);
      v61 = *(a1 + 256);
    }

    v7 = *(a1 + 264);
    v8 = *(a1 + 272);
    __p[0] = 0;
    __p[1] = 0;
    v53 = 0;
    if (*(a1 + 303) < 0)
    {
      sub_100008904(__p, *(a1 + 280), *(a1 + 288));
    }

    else
    {
      *__p = *(a1 + 280);
      v53 = *(a1 + 296);
    }

    *&v41 = v6;
    *(&v41 + 1) = v5;
    *&v40 = v8;
    *(&v40 + 1) = v7;
    v37 = *(a1 + 304);
    *&v39 = *(a1 + 320);
    *(&v39 + 1) = *(a1 + 312);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    sub_100550C98(&v49, a1 + 328);
    *&v38 = *(a1 + 360);
    *(&v38 + 1) = *(a1 + 352);
    if (*(a1 + 651))
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 1392) & 0xFFFFFFE0 | *(a1 + 650) | v9;
    if (*(a1 + 652))
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    if (*(a1 + 653))
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = v10 | v11 | v12;
    if (*(a1 + 654))
    {
      v14 = 16;
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 1392) = v13 | v14;
    v47 = 0;
    v48 = 0;
    v42 = a1;
    v46 = &v47;
    v15 = *(a1 + 592);
    if (v15 != (a1 + 600))
    {
      do
      {
        v45[0] = 0;
        v45[1] = 0;
        *v44 = v45;
        v16 = v15[5];
        if (v16 != v15 + 6)
        {
          do
          {
            v43 = *(v16 + 8);
            v58 = *(v16 + 5);
            v59 = 0uLL;
            if (sub_10037E830(&v59, &v58))
            {
              v57 = &v43;
              v17 = sub_10041F130(v44, &v43);
              *(v17 + 5) = v59;
            }

            v18 = v16[1];
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
                v19 = v16[2];
                v20 = *v19 == v16;
                v16 = v19;
              }

              while (!v20);
            }

            v16 = v19;
          }

          while (v19 != v15 + 6);
        }

        *&v59 = malloc_type_calloc(1uLL, 0x10uLL, 0x10F2040C8FBA5E1uLL);
        sub_10037E830(v59, v15[4]);
        *&v58 = &v59;
        v21 = (sub_10041F204(&v46, &v59) + 5);
        if (v21 != v44)
        {
          sub_10041F2E0(v21, *v44, v45);
        }

        sub_10000CEDC(v44, v45[0]);
        v22 = v15[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v15[2];
            v20 = *v23 == v15;
            v15 = v23;
          }

          while (!v20);
        }

        v15 = v23;
      }

      while (v23 != (a1 + 600));
    }

    sub_10000801C(v54);
    if (sub_1000295DC(a1))
    {
      v24 = sub_1000BE4B4();
      v25 = v24;
      if (v41 != 0)
      {
        goto LABEL_56;
      }

      v26 = HIBYTE(v56);
      if (v56 < 0)
      {
        v26 = *(&__dst + 1);
      }

      if (v26)
      {
LABEL_56:
        (*(*v24 + 232))(v24, v42, &__dst);
      }

      if (v40 != 0)
      {
        goto LABEL_61;
      }

      v27 = HIBYTE(v61);
      if (v61 < 0)
      {
        v27 = *(&buf + 1);
      }

      if (v27)
      {
LABEL_61:
        (*(*v25 + 40))(v25, v42, &buf);
      }

      v28 = HIBYTE(v53);
      if (v53 < 0)
      {
        v28 = __p[1];
      }

      if (v28)
      {
        (*(*v25 + 216))(v25, v42, __p);
      }

      if (v39 != 0)
      {
        (*(*v25 + 264))(v25, v42, v37);
      }

      if (v38 == 0 || !(*(*v25 + 248))(v25, v42, &v49))
      {
        if (sub_10000C5F8(v42 + 1064))
        {
          (*(*v25 + 352))(v25, v42);
        }

        (*(*v25 + 1504))(v25, v42);
        if (qword_100B54670 != -1)
        {
          sub_100840C24();
        }

        sub_100588028();
      }

      v29 = v47;
    }

    else
    {
      v30 = v46;
      if (v46 != &v47)
      {
        do
        {
          v31 = v30[5];
          v32 = v30 + 6;
          if (v31 != v30 + 6)
          {
            do
            {
              v58 = *(v31 + 5);
              sub_10037D4F4(&v58);
              v33 = v31[1];
              if (v33)
              {
                do
                {
                  v34 = v33;
                  v33 = *v33;
                }

                while (v33);
              }

              else
              {
                do
                {
                  v34 = v31[2];
                  v20 = *v34 == v31;
                  v31 = v34;
                }

                while (!v20);
              }

              v31 = v34;
            }

            while (v34 != v32);
          }

          sub_10000CEDC((v30 + 5), v30[6]);
          v30[6] = 0;
          v30[7] = 0;
          v30[5] = v32;
          sub_10037D4F4(v30[4]);
          free(v30[4]);
          v35 = v30[1];
          if (v35)
          {
            do
            {
              v36 = v35;
              v35 = *v35;
            }

            while (v35);
          }

          else
          {
            do
            {
              v36 = v30[2];
              v20 = *v36 == v30;
              v30 = v36;
            }

            while (!v20);
          }

          v30 = v36;
        }

        while (v36 != &v47);
      }

      sub_10037505C(&v46, v47);
      v29 = 0;
      v47 = 0;
      v48 = 0;
      v46 = &v47;
    }

    sub_10037505C(&v46, v29);
    sub_10000CEDC(&v49, v50);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v61) < 0)
    {
      operator delete(buf);
    }

    if (SHIBYTE(v56) < 0)
    {
      operator delete(__dst);
    }

    sub_1000088CC(v54);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100840BE8();
  }
}

void sub_10053EFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26, uint64_t a27, char a28, void *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_10037505C(&a25, a26);
  sub_10000CEDC(&a28, a29);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 105) < 0)
  {
    operator delete(v38[10]);
  }

  if (*(v39 - 185) < 0)
  {
    operator delete(*v38);
  }

  sub_1000088CC(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_10053F074(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 650);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10053F0BC(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 520);
  if (v4 && ((*(*v4 + 56))(v4, a2) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 602;
  }

  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_10053F158(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 520);
  if (!v4)
  {
    sub_1004328AC();
  }

  v6 = 0;
  (*(*v4 + 56))(v4, &v6);
  (*(**(a1 + 520) + 48))(*(a1 + 520), a2);
  if (*(a1 + 520) && (_os_feature_enabled_impl() & 1) == 0)
  {
    (*(**(a1 + 520) + 16))(*(a1 + 520));
  }

  if (v6 != a2)
  {
    sub_10053F27C(a1);
  }

  return sub_1000088CC(v7);
}