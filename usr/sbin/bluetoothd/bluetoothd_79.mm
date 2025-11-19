void sub_1005A0250(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying stack listeners that the stack will start", v3, 2u);
  }

  sub_1005AA6AC(a1 + 64, &stru_100AFECB0);
}

uint64_t sub_1005A02CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100848048();
  }

  sub_1006FCA38(off_100B54078, v1 + 48);
  if (qword_100B54080 != -1)
  {
    sub_100848048();
  }

  result = sub_1006FCEA4(off_100B54078);
  if (!result)
  {
    return (*(*v1 + 128))(v1, 0);
  }

  return result;
}

double sub_1005A0378(double a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:a1];
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:60 fromDate:v3];
  [v5 setHour:5];
  [v5 setDay:{objc_msgSend(v5, "day") + 1}];
  v6 = [v4 dateFromComponents:v5];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  objc_autoreleasePoolPop(v2);
  return v8;
}

void sub_1005A0484(uint64_t a1, int a2)
{
  if (*(a1 + 235) == a2)
  {
    v3 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v4 = "disabled";
    if (a2)
    {
      v4 = "enabled";
    }

    LODWORD(v19) = 136315138;
    *(&v19 + 4) = v4;
    v5 = "Denylist already %s";
    v6 = v3;
    v7 = 12;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v19, v7);
    return;
  }

  v9 = *(a1 + 56);
  v10 = qword_100BCE8D8;
  v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v9 != 1)
  {
    if (!v11)
    {
      return;
    }

    LOWORD(v19) = 0;
    v5 = "Ignore set denylist mode due to stack not ready";
    v6 = v10;
    v7 = 2;
    goto LABEL_28;
  }

  if (v11)
  {
    v12 = "disabled";
    if (a2)
    {
      v12 = "enabled";
    }

    LODWORD(v19) = 136315138;
    *(&v19 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "denylist mode %s", &v19, 0xCu);
  }

  *(a1 + 235) = a2;
  if (qword_100B512C8 != -1)
  {
    sub_1008478F4();
  }

  if (sub_10057A798(off_100B512C0))
  {
    if (a2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    sub_1005A2094(a1, v13);
  }

  if (*(a1 + 235) == 1)
  {
    v19 = 0uLL;
    v20 = 0;
    if (qword_100B50F68 != -1)
    {
      sub_10084805C();
    }

    sub_1000ADA24(off_100B50F60, &v19);
    v14 = v19;
    if (v19 != *(&v19 + 1))
    {
      do
      {
        v15 = *v14;
        if (qword_100B50AC0 != -1)
        {
          sub_100848084();
        }

        sub_1005922D4(off_100B50AB8, v15, 1);
        ++v14;
      }

      while (v14 != *(&v19 + 1));
      v14 = v19;
    }

    if (v14)
    {
      *(&v19 + 1) = v14;
      operator delete(v14);
    }
  }

  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  sub_1000971F4(off_100B50898, 10, 0);
  LOBYTE(v19) = 0;
  sub_1000216B4(&v19);
  if (*(a1 + 235) == 1)
  {
    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    sub_1005BC7F8(v16);
    +[NSDate timeIntervalSinceReferenceDate];
    v18 = sub_1005A0378(v17);
    sub_1005A0830(1, v18);
  }

  else
  {
    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    sub_1005BC7F8(0.0);
    sub_10023E7B4();
  }

  sub_100022214(&v19);
  if (qword_100B512F8 != -1)
  {
    sub_100847E68();
  }

  sub_1003B4134(off_100B512F0, *(a1 + 235));
  if (qword_100B508D0 != -1)
  {
    sub_1008480D4();
  }

  sub_100789A50(off_100B508C8, *(a1 + 235));
  sub_1005A221C(a1);
  sub_10002249C(&v19);
}

void sub_1005A07F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A0830(int a1, double a2)
{
  if (a1)
  {
    sub_10023E764();
    v4 = xpc_dictionary_create(0, 0, 0);
    +[NSDate timeIntervalSinceReferenceDate];
    xpc_dictionary_set_double(v4, XPC_ACTIVITY_DELAY, a2 - v5);
    xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
    xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_activity_register("com.apple.bluetooth.denylist.autoExpire", v4, &stru_100AFEDA8);

    xpc_release(v4);
  }

  else
  {

    sub_10023E7B4();
  }
}

void sub_1005A0914(id a1)
{
  v1 = sub_10009BD9C();
  if (!(*(*v1 + 136))(v1))
  {
    if (sub_10009B9DC() == 7 || sub_10009B9DC() == 8)
    {
      if (qword_100B50AA0 != -1)
      {
        sub_10084760C();
      }

      sub_1005A0B4C();
      if (qword_100B50AA0 != -1)
      {
        sub_10084760C();
      }

      sub_1005A0DF4();
    }

    if (sub_10009B9DC() == 7)
    {
      v2 = sub_10000C7D0();
      if ((*(*v2 + 528))(v2, 1))
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
        {
          sub_1008480FC();
        }
      }
    }

    if (sub_10009B9DC() == 9)
    {
      v7 = 0;
      v8 = 0;
      v3 = sub_10000C7D0();
      (*(*v3 + 1416))(v3, &v7);
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "MAC FW Version: %d.%d.%d.%d, PHY FW Version: %d.%d.%d.%d", v7, WORD1(v7), WORD2(v7), HIWORD(v7), v8, WORD2(v8), WORD1(v8), HIWORD(v8));
      __p[0] = 0;
      __p[1] = 0;
      v6 = 0;
      sub_100007E30(__p, __str);
      v4 = sub_10009BD9C();
      (*(*v4 + 72))(v4, __p);
      if (SHIBYTE(v6) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1005A0B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A0B4C()
{
  v7 = 0;
  v6 = 0;
  bzero(__str, 0x400uLL);
  v5 = 1024;
  if (sysctlbyname("kern.bootargs", __str, &v5, 0, 0) || (v2 = strtok(__str, " ")) == 0)
  {
LABEL_2:
    if (sub_10009B9DC() == 9)
    {
      return;
    }

    v0 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Load and send calibration data to host controller", v4, 2u);
    }

    if ((*(sub_10000C7D0() + 800) - 5000) > 0x3E7)
    {
      if (sub_1005A5348(@"bluetooth-taurus-calibration-bf", &v7, &v6) && sub_1005A5348(@"bluetooth-taurus-calibration", &v7, &v6) && sub_1005A5540(&v7, &v6))
      {
        if (sub_1000271F0() != 264 && sub_1000271F0() != 287 && sub_1000271F0() != 288)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
          {
            sub_100848130();
          }

          return;
        }

        sub_1005A5774(&v7, &v6);
      }

      if (!sub_1005A5928(v7, v6, 0xE6u))
      {
LABEL_27:
        if (v7)
        {
          free(v7);
        }

        return;
      }
    }

    else
    {
      if (sub_1005A5348(@"sunrise-bt-bcal", &v7, &v6))
      {
        v1 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
        {
          sub_100848164(v1);
        }

        return;
      }

      if (!sub_1005A5B44(1, v7, v6, 0xF0u))
      {
        goto LABEL_27;
      }
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008481E8();
    }

    goto LABEL_27;
  }

  while (!strstr(v2, "wifibt-external"))
  {
    v2 = strtok(0, " ");
    if (!v2)
    {
      goto LABEL_2;
    }
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Thunderbolt to PCIe expansion chassis, so skip loading calibration data", v4, 2u);
  }
}

void sub_1005A0DF4()
{
  v12 = 0;
  v11 = 0;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  memset(&v8, 0, sizeof(v8));
  sub_100007E30(&v8, ".ptb");
  if (sub_10009B9DC() == 9)
  {
    goto LABEL_26;
  }

  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u)
  {
    std::string::assign(&v8, ".ptx");
  }

  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Load and send regulatory data to host controller", buf, 2u);
  }

  v1 = sub_100017E6C();
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  v2 = (*(*v1 + 448))(v1, &__p, &v12, &v11, v9, 0);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
LABEL_12:
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_10084821C();
      }

      goto LABEL_26;
    }
  }

  else if (v2)
  {
    goto LABEL_12;
  }

  if (*(sub_10000C7D0() + 800) >> 3 < 0x271u || *(sub_10000C7D0() + 800) >> 4 > 0x176u)
  {
    if (v11 < 251)
    {
      v5 = sub_10000C7D0();
      v4 = (*(*v5 + 4288))(v5, v12, v11, 1);
    }

    else
    {
      v4 = sub_1005A5928(v12, v11, 0xCFu);
    }

    if (v4 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100848250();
    }
  }

  else
  {
    sub_1005A5B44(0, v12, v11, 0xF0u);
  }

  if (v12)
  {
    free(v12);
  }

LABEL_26:
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1005A1064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A10B0(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 240);
  *(a1 + 572) = a2;
  return sub_1000088CC(v5);
}

void sub_1005A10F8(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying stack listeners that the stack did start", v3, 2u);
  }

  sub_1005AA6AC(a1 + 64, &stru_100AFECD0);
}

uint64_t sub_1005A1174(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 160);
  if (*(a1 + 56) == 1)
  {
    *(a1 + 232) = sub_1005A40F8();
    sub_100017F4C();
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848284();
  }

  sub_1000088CC(v3);
  return 111;
}

uint64_t sub_1005A1268(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "StackManager halting stack", buf, 2u);
  }

  *buf = 0;
  v22 = 0;
  sub_100007F88(buf, a1 + 160);
  v3 = *(a1 + 56);
  if (v3)
  {
    if (v3 == 2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10084830C();
      }

      v4 = 111;
      goto LABEL_39;
    }

    sub_10059ACE4(a1, 2u, 0);
    sub_10000801C(buf);
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting event un-registerations", v20, 2u);
    }

    v7 = sub_10000C798();
    if ((*(*v7 + 120))(v7))
    {
      v8 = sub_1000D999C();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1005A16C0;
      v19[3] = &unk_100ADF8F8;
      v19[4] = a1;
      sub_10000D334(v8, v19);
    }

    v9 = sub_10000C798();
    if ((*(*v9 + 112))(v9))
    {
      v10 = sub_100017E6C();
      sub_1005AB97C(v10 + 584, a1 + 32);
    }

    v11 = sub_100017E6C();
    sub_10036F1AC(v11 + 384, a1 + 16);
    v18 = 0;
    sub_1000216B4(&v18);
    if (sub_10009B9DC() == 7)
    {
      v12 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Hard reset transport...", v20, 2u);
      }

      if (sub_10022DE08())
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    else if (sub_10009B9DC() == 8)
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Hard reset transport...", v20, 2u);
      }

      if (sub_10022DE08())
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
LABEL_27:
          sub_100848348();
        }

LABEL_28:
        v4 = 1;
LABEL_38:
        sub_10002249C(&v18);
        goto LABEL_39;
      }
    }

    else if (sub_10009B9DC() == 9)
    {
      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Do not execute FLR due to FLR limit-fatal check...neither hci reset", v20, 2u);
      }
    }

    else
    {
      sub_100022214(&v18);
      sub_1005A1714();
      sub_1000618AC(&v18);
    }

    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Configuring stack to halt", v20, 2u);
    }

    sub_10023B69C();
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Halting core stack", v20, 2u);
    }

    sub_10022DD58();
    sub_10022DD48();
    sub_100007FB8(buf);
    sub_1002D3624();
    sub_10059ACE4(a1, 3u, 0);
    v4 = 0;
    goto LABEL_38;
  }

  v5 = qword_100BCE8D8;
  v4 = 0;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "StackManager is already stopped", v20, 2u);
    v4 = 0;
  }

LABEL_39:
  sub_1000088CC(buf);
  return v4;
}

void sub_1005A16C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100848048();
  }

  v2 = off_100B54078;

  sub_1006FCB0C(v2, v1 + 48);
}

_BYTE *sub_1005A1714()
{
  v13 = 0;
  sub_1000216B4(&v13);
  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Sending HCI reset", buf, 2u);
  }

  byte_100BCE820 = 1;
  sub_100018960(55, sub_1005A470C, v1, v2, v3, v4, v5, v6, v10);
  sub_100022214(&v13);
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Waiting for controller reset complete", buf, 2u);
  }

  *buf = 0;
  v12 = 0;
  sub_100007F88(buf, &unk_100BCE7E0);
  if (byte_100BCE820 == 1)
  {
    sub_1003645F8(&stru_100BCE7B0, buf);
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reset complete", &v10, 2u);
  }

  sub_1000088CC(buf);
  return sub_10002249C(&v13);
}

void sub_1005A1874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  sub_10002249C((v3 - 33));
  _Unwind_Resume(a1);
}

uint64_t sub_1005A189C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "StackManager shutting down", buf, 2u);
  }

  *buf = 0;
  v27 = 0;
  sub_100007F88(buf, a1 + 160);
  v3 = *(a1 + 56);
  if (!v3)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "StackManager is already stopped", v25, 2u);
    }

    goto LABEL_41;
  }

  if (v3 == 3)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848384();
    }

    goto LABEL_41;
  }

  if (v3 != 2)
  {
    sub_10059ACE4(a1, 2u, 0);
    sub_10000801C(buf);
    if (*(a1 + 234) == 1 && *(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) <= 0x7CFu)
    {
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "StackManager preparing for chip power down", v25, 2u);
      }

      if (*(sub_10000C7D0() + 800) <= 0x12u)
      {
        v7 = sub_10000C7D0();
        if ((*(*v7 + 1304))(v7, 0))
        {
          v25[0] = 0;
          sub_1000216B4(v25);
          sub_10024E230();
          sub_100022214(v25);
          sub_10002249C(v25);
        }
      }
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting event un-registerations", v25, 2u);
    }

    v9 = sub_10000C798();
    if ((*(*v9 + 120))(v9))
    {
      v10 = sub_1000D999C();
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1005A1D98;
      v24[3] = &unk_100ADF8F8;
      v24[4] = a1;
      sub_10000D334(v10, v24);
    }

    v11 = sub_10000C798();
    if ((*(*v11 + 112))(v11))
    {
      v12 = sub_100017E6C();
      sub_1005AB97C(v12 + 584, a1 + 32);
    }

    v13 = sub_100017E6C();
    sub_10036F1AC(v13 + 384, a1 + 16);
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Configuring stack to stop", v25, 2u);
    }

    v25[0] = 0;
    sub_1000216B4(v25);
    sub_10023B680();
    sub_100022214(v25);
    sub_1005A1DEC(a1);
    sub_1000618AC(v25);
    byte_100BCE7AD = 1;
    v22 = sub_10024DFC8(sub_1005A1E68, v15, v16, v17, v18, v19, v20, v21);
    sub_100022214(v25);
    if (v22)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008483C0();
      }

      byte_100BCE7AD = 0;
    }

    else if (sub_1005A1F18(a1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848430();
    }

    sub_10059D2E4(a1);
    sub_10023B3B4(0);
    sub_100007FB8(buf);
    sub_10059ACE4(a1, 0, 0);
    *(a1 + 224) = 0;
    *(a1 + 226) = 0;
    *(a1 + 228) = 0;
    *(a1 + 231) = 0;
    *(a1 + 235) = 0;
    sub_10000801C(buf);
    if (qword_100B512F8 != -1)
    {
      sub_100847E68();
    }

    sub_1003B4134(off_100B512F0, *(a1 + 235));
    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    sub_1005BC7F8(0.0);
    sub_1001C4F3C();
    sub_1005A2018(a1);
    sub_10002249C(v25);
LABEL_41:
    v4 = 0;
    goto LABEL_42;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10084800C();
  }

  v4 = 111;
LABEL_42:
  sub_1000088CC(buf);
  return v4;
}

void sub_1005A1D98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100848048();
  }

  v2 = off_100B54078;

  sub_1006FCB0C(v2, v1 + 48);
}

void sub_1005A1DEC(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying stack listeners that the stack will stop", v3, 2u);
  }

  sub_1005AA6AC(a1 + 64, &stru_100AFECF0);
}

uint64_t sub_1005A1E68(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "shutdownStackResetCommandCompleteCb status %{bluetooth:OI_STATUS}u", v4, 8u);
  }

  sub_100255224();
  return sub_1005A4698(a1);
}

uint64_t sub_1005A1F18(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, &unk_100BCE708);
  if (byte_100BCE7AD == 1 && !sub_10002220C(&stru_100BCE748, v6, 0x3A98uLL))
  {
    sub_100007E30(&v5, "");
    sub_100007E30(v4, "");
    sub_1005A24D4(a1, 9500, &v5, 1, 4, 0, v4);
  }

  v2 = dword_100BCE7A8;
  sub_1000088CC(v6);
  return v2;
}

void sub_1005A1FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1000088CC(v20 - 32);
  _Unwind_Resume(a1);
}

void sub_1005A2018(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying stack listeners that the stack did stop", v3, 2u);
  }

  sub_1005AA6AC(a1 + 64, &stru_100AFED10);
}

uint64_t sub_1005A2094(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 504);
  if (*(a1 + 568) == a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = a2;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not writing default airplane mode grant list state. As current state (%d) == new state (%d)", buf, 0xEu);
    }
  }

  else
  {
    if (a2 == 2)
    {
      v5 = @"on";
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 568) = a2;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Write default airplane mode grant list state: %d to CFPrefs", buf, 8u);
    }

    CFPreferencesSetAppValue(@"defaultAirplaneModeDenylistState", v5, @"com.apple.BTServer");
    CFPreferencesAppSynchronize(@"com.apple.BTServer");
  }

  return sub_1000088CC(v8);
}

uint64_t sub_1005A221C(_BYTE *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, (a1 + 160));
  if (a1[60])
  {
    if (qword_100B508A0 != -1)
    {
      sub_1008480AC();
    }

    a1[229] = (a1[235] ^ 1) & sub_100575554(off_100B50898);
    sub_100017F4C();
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008484A0();
  }

  sub_1000088CC(v3);
  return 111;
}

uint64_t sub_1005A2338(const std::string *a1, std::string *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, &a1[6].__r_.__value_.__r.__words[2]);
  if (a1[2].__r_.__value_.__s.__data_[12])
  {
    sub_10000801C(v7);
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, &a1[10]);
    std::string::operator=(a2, a1 + 13);
    sub_1000088CC(v6);
    v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v4 = 111;
  }

  sub_1000088CC(v7);
  return v4;
}

void sub_1005A23E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1000088CC(&a9);
  sub_1000088CC(&a11);
  _Unwind_Resume(a1);
}

void sub_1005A2410(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    dispatch_once(&qword_100B50AA0, &stru_100AFEE40);
  }

  v2 = off_100B50A98;
  v3 = *(a1 + 40);
  sub_100007E30(&v5, *(a1 + 32));
  sub_100007E30(v4, "");
  sub_1005A24D4(v2, v3, &v5, 0, 0, 0, v4);
}

void sub_1005A24A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A24D4(uint64_t a1, int a2, __int128 *a3, char a4, int a5, int a6, uint64_t a7)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1005A70E8;
  block[3] = &unk_100AFEC60;
  block[4] = a1;
  v18 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(&v15, *a3, *(a3 + 1));
  }

  else
  {
    v15 = *a3;
    v16 = *(a3 + 2);
  }

  v21 = a4;
  v19 = a5;
  v20 = a6;
  v17 = a7;
  if (qword_100B6F608 != -1)
  {
    dispatch_once(&qword_100B6F608, block);
  }

  sleep(0x384u);
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v23 = 15;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "We've been sleeping for %d minutes during a coredump, restarting", buf, 8u);
  }

  v12 = sub_10000E92C();
  sub_100007E30(v13, "");
  sub_100693260(v12, 3706, v13, 1);
}

void sub_1005A263C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A2678(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005A26F4;
  v5[3] = &unk_100AF3580;
  v6 = a3;
  sub_10000CA94(v4, v5);
}

void sub_1005A26F4(uint64_t a1)
{
  if (sub_10000F034())
  {
    v2 = sub_10000F034();
    v3 = *(a1 + 32);
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
    (*(*v2 + 112))(v2, 2, v3, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1005A2770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A278C(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    if (qword_100B53FE8 != -1)
    {
      sub_100848568();
    }

    v3 = qword_100B53FE0;
    sub_100007E30(v6, "TransportError");
    sub_100007E30(__p, "TransportErrorDeviceOfflineError");
    sub_1005780BC(v3, v6, __p, 60.0);
  }

  else
  {
    if (a2)
    {
      return;
    }

    if (qword_100B53FE8 != -1)
    {
      sub_100848568();
    }

    v2 = qword_100B53FE0;
    sub_100007E30(v6, "TransportError");
    sub_100007E30(__p, "TransportErrorNoMemError");
    sub_1005780BC(v2, v6, __p, 60.0);
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1005A2890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A28CC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  snprintf(byte_100B6F100, 0x200uLL, "AppleBT Device Error (Recovery)\n Code: %llu\n Reason: %s\n", a3, a4);
  snprintf(byte_100B6F300, 0x200uLL, "AppleBT Device Error (Recovery) Code: %llu Reason: %s", a3, a4);
  qword_100B55118 = byte_100B6F100;
  qword_100B55148 = a3;
  if (sub_10000F034())
  {
    v7 = sub_10000F034();
    sub_100007E30(__p, a4);
    (*(*v7 + 112))(v7, a2, a3, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B53FE8 != -1)
  {
    sub_10084857C();
  }

  v8 = qword_100B53FE0;
  sub_100007E30(__p, "FWErrorDeviceError");
  sub_100007E30(v9, a4);
  sub_1005780BC(v8, __p, v9, 60.0);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005A2A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A2A5C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005A2AE8;
  v4[3] = &unk_100AE0860;
  v5 = a2;
  v6 = a3;
  v4[4] = a4;
  if (qword_100B6F500 != -1)
  {
    dispatch_once(&qword_100B6F500, v4);
  }
}

void sub_1005A2AE8(uint64_t a1)
{
  if (sub_10000F034())
  {
    v2 = sub_10000F034();
    v3 = *(a1 + 40);
    v4 = *(a1 + 44);
    sub_100007E30(__p, *(a1 + 32));
    (*(*v2 + 112))(v2, v3, v4, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1005A2B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A2B98(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  result = sub_1005A2C14(off_100B50A98);
  if (result)
  {
    *(a1 + 8) = 1;
  }

  else
  {
    *(a1 + 16) = 100;
    v3 = sub_100017F4C();

    return sub_100070A6C(v3, a1);
  }

  return result;
}

uint64_t sub_1005A2C14(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 160);
  v2 = *(a1 + 56);
  if (v2 != 2)
  {
    if (!v2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008485A4();
      }

      sub_10000801C(v19);
      if (qword_100B508A0 != -1)
      {
        sub_1008480AC();
      }

      v3 = 111;
      goto LABEL_23;
    }

    if (*(a1 + 224) != 1)
    {
      v7 = *(a1 + 228);
      if (v7 != *(a1 + 229))
      {
        buf[0] = 0;
        sub_1000216B4(buf);
        if (*(a1 + 229))
        {
          v17 = 2;
        }

        else
        {
          v17 = 0;
        }

        v18 = sub_10024401C(sub_1005A3088, v17, v11, v12, v13, v14, v15, v16);
        sub_100022214(buf);
        if (v18)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_1008485E0();
          }

          sub_10000801C(v19);
          if (qword_100B508A0 != -1)
          {
            sub_1008480AC();
          }

          sub_1000971F4(off_100B50898, 2, 1);
        }

        else
        {
          *(a1 + 224) = 1;
          *(a1 + 230) = *(a1 + 229);
        }

        sub_10002249C(buf);
        goto LABEL_24;
      }

      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "not discoverable";
        if (v7)
        {
          v9 = "discoverable";
        }

        *buf = 136446210;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Local device state is already %{public}s", buf, 0xCu);
      }

      sub_10000801C(v19);
      if (qword_100B508A0 != -1)
      {
        sub_1008480AC();
      }

      if (*(a1 + 228))
      {
        v3 = 122;
      }

      else
      {
        v3 = 123;
      }

LABEL_23:
      sub_1000971F4(off_100B50898, 2, v3);
LABEL_24:
      v5 = 1;
      goto LABEL_25;
    }
  }

  v4 = qword_100BCE8D8;
  v5 = 0;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "busy";
    if (v2 == 2)
    {
      v6 = "in flux";
    }

    *buf = 136446210;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delaying discoverability change event as stack is %{public}s", buf, 0xCu);
    v5 = 0;
  }

LABEL_25:
  sub_1000088CC(v19);
  return v5;
}

uint64_t sub_1005A2F18(_BYTE *a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, (a1 + 160));
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848678();
    }
  }

  else
  {
    v4 = a1[230];
    a1[228] = v4;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "not discoverable";
      if (v4)
      {
        v6 = "discoverable";
      }

      *buf = 136446210;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Local device is now %{public}s", buf, 0xCu);
    }
  }

  a1[224] = 0;
  sub_10000801C(v8);
  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  sub_1000971F4(off_100B50898, 2, a2 != 0);
  return sub_1000088CC(v8);
}

void sub_1005A3088(int a1)
{
  v2 = sub_100017F4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005AC0B0;
  v3[3] = &unk_100AE0900;
  v4 = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_1005A3104(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 160);
  if ((*(a1 + 60) & 1) != 0 && sub_100243344() >= 4)
  {
    sub_1005A31F4();
    sub_10000801C(v9);
    v8 = 0;
    sub_1000216B4(&v8);
    if (sub_10024E040(sub_1005A401C, 1, byte_100B6F508, v2, v3, v4, v5, v6) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848704();
    }

    sub_10002249C(&v8);
  }

  return sub_1000088CC(v9);
}

void sub_1005A31CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

void sub_1005A31F4()
{
  bzero(byte_100B6F508, dword_100B6F640);
  v0 = strlen("iOS");
  byte_100B6F508[0] = v0 + 1;
  byte_100B6F509 = 9;
  v1 = (v0 + 1);
  memcpy(&unk_100B6F50A, "iOS", v1 - 1);
  v2 = v1 + 1;
  dword_100B6F640 = v2;
  LOBYTE(v76) = 0;
  v75 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "WiAP");
  sub_100007E30(&__p, "enableSink");
  (*(*v3 + 72))(v3, buf, &__p, &v76);
  if (SBYTE1(v83) < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v85) < 0)
  {
    operator delete(*buf);
  }

  if (v76 == 1)
  {
    v4 = sub_10000E92C();
    sub_100007E30(buf, "CarPlay");
    sub_100007E30(&__p, "enableLeCarPlay");
    (*(*v4 + 72))(v4, buf, &__p, &v75);
    if (SBYTE1(v83) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v85) < 0)
    {
      operator delete(*buf);
    }
  }

  v5 = dword_100B6F640;
  *&byte_100B6F508[dword_100B6F640] = 301990656;
  dword_100B6F640 = v5 + 4;
  v6 = sub_10000C798();
  if ((*(*v6 + 56))(v6, 1))
  {
    v7 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4383;
    dword_100B6F640 = v7 + 2;
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Advertising HFP AG", buf, 2u);
    }
  }

  v9 = sub_10000C798();
  if ((*(*v9 + 56))(v9, 2))
  {
    v10 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4399;
    dword_100B6F640 = v10 + 2;
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Advertising PBAP Server", buf, 2u);
    }
  }

  v12 = sub_10000C798();
  if ((*(*v12 + 56))(v12, 16))
  {
    v13 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4362;
    dword_100B6F640 = v13 + 2;
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Advertising A2DP Source", buf, 2u);
    }
  }

  v15 = sub_10000C798();
  if ((*(*v15 + 56))(v15, 8))
  {
    v16 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4364;
    dword_100B6F640 = v16 + 2;
    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Advertising AVRCP Target", buf, 2u);
    }
  }

  v18 = sub_10000C798();
  if ((*(*v18 + 56))(v18, 256))
  {
    LOBYTE(__p) = 0;
    v74 = 0;
    v73 = 0;
    v19 = sub_100017E6C();
    (*(*v19 + 32))(v19, &__p, &v74, &v73);
    if (__p == 1)
    {
      v20 = dword_100B6F640;
      *&byte_100B6F508[dword_100B6F640] = 4374;
      dword_100B6F640 = v20 + 2;
      v21 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Advertising PAN-NAP", buf, 2u);
      }
    }
  }

  v22 = sub_10000C798();
  if ((*(*v22 + 56))(v22, 2048))
  {
    if (qword_100B508A0 != -1)
    {
      sub_1008480AC();
    }

    if (sub_100573910(off_100B50898))
    {
      v23 = dword_100B6F640;
      *&byte_100B6F508[dword_100B6F640] = 4373;
      dword_100B6F640 = v23 + 2;
      v24 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Advertising PAN-U", buf, 2u);
      }
    }
  }

  v25 = sub_10000C798();
  if ((*(*v25 + 56))(v25, 512))
  {
    v26 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4402;
    dword_100B6F640 = v26 + 2;
    v27 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Advertising MAP Server", buf, 2u);
    }
  }

  v74 = 0;
  v28 = sub_10000E92C();
  if ((*(*v28 + 8))(v28))
  {
    v29 = sub_10000E92C();
    sub_100007E30(buf, "CATT");
    sub_100007E30(&__p, "DisableSdp");
    (*(*v29 + 72))(v29, buf, &__p, &v74);
    if (SBYTE1(v83) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v85) < 0)
    {
      operator delete(*buf);
    }
  }

  if ((v74 & 1) == 0)
  {
    v30 = sub_10000C798();
    if ((*(*v30 + 56))(v30, 0x100000))
    {
      v31 = dword_100B6F640;
      *&byte_100B6F508[dword_100B6F640] = 6145;
      dword_100B6F640 = v31 + 2;
      v32 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Advertising GATT Source", buf, 2u);
      }
    }
  }

  v33 = sub_10000C798();
  if ((*(*v33 + 56))(v33, 0x20000))
  {
    if (v76 == 1 && v75 == 1)
    {
      v34 = dword_100B6F640;
      *&byte_100B6F508[dword_100B6F640] = -876;
      dword_100B6F640 = v34 + 2;
      v35 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Advertising LE CarPlay", buf, 2u);
      }
    }
  }

  v36 = dword_100B6F640;
  byte_100B6F508[v2] = dword_100B6F640 - v0 - 3;
  *&byte_100B6F508[v36] = 117441793;
  dword_100B6F640 = v36 + 4;
  v37 = sub_10000C798();
  if ((*(*v37 + 56))(v37, 128) && (v76 & 1) == 0)
  {
    v73 = 0;
    v38 = sub_10000E92C();
    sub_100007E30(buf, "IAP");
    sub_100007E30(&__p, "enableIAP");
    (*(*v38 + 72))(v38, buf, &__p, &v73);
    if (SBYTE1(v83) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v85) < 0)
    {
      operator delete(*buf);
    }

    if ((v73 & 1) != 0 || (v39 = sub_10000C798(), ((*(*v39 + 416))(v39) & 1) == 0))
    {
      v40 = dword_100B6F640;
      v41 = &dword_10000000C + 3;
      v42 = dword_100B6F640;
      do
      {
        byte_100B6F508[v42++] = byte_1008AA57E[v41--];
      }

      while (v41 != -1);
      v43 = v40 + 16;
      dword_100B6F640 = v40 + 16;
      for (i = &dword_10000000C + 3; i != -1; --i)
      {
        byte_100B6F508[v43++] = byte_1008AA58E[i];
      }

      dword_100B6F640 = v40 + 32;
      v45 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Advertising WiAP", buf, 2u);
      }
    }
  }

  v46 = sub_10000C798();
  if ((*(*v46 + 56))(v46, 0x20000))
  {
    if (v76 == 1)
    {
      v47 = dword_100B6F640;
      v48 = &dword_10000000C + 3;
      v49 = dword_100B6F640;
      do
      {
        byte_100B6F508[v49++] = byte_1008AA59E[v48--];
      }

      while (v48 != -1);
      v50 = v47 + 16;
      dword_100B6F640 = v47 + 16;
      for (j = &dword_10000000C + 3; j != -1; --j)
      {
        byte_100B6F508[v50++] = byte_1008AA5AE[j];
      }

      dword_100B6F640 = v47 + 32;
      v52 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Advertising WiAP Sink and Classic CarPlay", buf, 2u);
      }
    }
  }

  v53 = sub_10000C798();
  if ((*(*v53 + 56))(v53, 0x40000))
  {
    LOBYTE(__p) = 0;
    v54 = sub_100017E6C();
    if (!(*(*v54 + 152))(v54, &__p) && __p == 1)
    {
      v55 = dword_100B6F640;
      v56 = &dword_10000000C + 3;
      v57 = dword_100B6F640;
      do
      {
        byte_100B6F508[v57++] = byte_1008AA5BE[v56--];
      }

      while (v56 != -1);
      dword_100B6F640 = v55 + 16;
      v58 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Advertising  CarPlay Gateway", buf, 2u);
      }
    }
  }

  v59 = dword_100B6F640;
  byte_100B6F508[v36 + 2] = dword_100B6F640 - v36 - 3;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  *buf = 0u;
  v85 = 0u;
  v76 = 0;
  *&byte_100B6F508[v59] = 1275133696;
  dword_100B6F640 = v59 + 4;
  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  v60 = sub_10057384C(off_100B50898, buf, &v76);
  v61 = v76;
  if (v76)
  {
    v62 = v60;
  }

  else
  {
    v62 = 0;
  }

  if (v62 == 1)
  {
    v63 = dword_100B6F640;
    v64 = dword_100B6F640 + v76;
    if (v64 > 240)
    {
      v65 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        __p = __PAIR64__(v61, 67109888);
        v78 = 1024;
        v79 = v63;
        v80 = 1024;
        v81 = v64;
        v82 = 1024;
        v83 = 240;
        _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "EIR data length: %d + constEirLen: %d = %d > %d", &__p, 0x1Au);
      }
    }

    else
    {
      memcpy(&byte_100B6F508[dword_100B6F640], buf, v76);
      dword_100B6F640 = v64;
    }
  }

  if (qword_100B50AC0 != -1)
  {
    sub_100848084();
  }

  v66 = sub_100598120(off_100B50AB8, buf, &v76);
  v67 = v76;
  if (v76)
  {
    v68 = v66;
  }

  else
  {
    v68 = 0;
  }

  v69 = dword_100B6F640;
  if (v68 != 1)
  {
    goto LABEL_97;
  }

  v70 = dword_100B6F640 + v76;
  if (v70 <= 240)
  {
    memcpy(&byte_100B6F508[dword_100B6F640], buf, v76);
    dword_100B6F640 = v70;
    goto LABEL_98;
  }

  v71 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    __p = __PAIR64__(v67, 67109888);
    v78 = 1024;
    v79 = v69;
    v80 = 1024;
    v81 = v70;
    v82 = 1024;
    v83 = 240;
    _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Service specific EIR data length: %d + constEirLen: %d = %d > %d", &__p, 0x1Au);
    v70 = dword_100B6F640;
  }

  else
  {
LABEL_97:
    v70 = v69;
  }

LABEL_98:
  byte_100B6F508[v59] = v70 + ~v59;
  if (v70 >= 240)
  {
    v72 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100848774(v72);
    }
  }
}

void sub_1005A3FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A401C(int a1)
{
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008487F8();
    }
  }
}

uint64_t sub_1005A4070(uint64_t a1)
{
  v2 = sub_100017F4C();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005A40F0;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v2, v4);
  return 0;
}

uint64_t sub_1005A40F8()
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_100848868();
  }

  sub_10009DB3C(off_100B50F80, &v4);
  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  v0 = sub_100574E7C(off_100B50898);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v1 != v2 || v0;
}

void sub_1005A4198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A41B4(uint64_t a1, int a2, int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 160);
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084887C();
    }
  }

  else
  {
    *(a1 + 231) = a3;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "not connectable";
      if (a3)
      {
        v7 = "connectable";
      }

      *buf = 136446210;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Local device is now %{public}s", buf, 0xCu);
    }
  }

  *(a1 + 224) = 0;
  sub_10000801C(v9);
  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  sub_1000971F4(off_100B50898, 3, a2 != 0);
  return sub_1000088CC(v9);
}

uint64_t sub_1005A4324(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 160);
  v2 = *(a1 + 56);
  if (v2 != 2)
  {
    if (!v2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848908();
      }

      sub_10000801C(v18);
      if (qword_100B508A0 != -1)
      {
        sub_1008480AC();
      }

      v3 = 111;
      goto LABEL_23;
    }

    if (*(a1 + 224) != 1)
    {
      v7 = *(a1 + 231);
      if (v7 != *(a1 + 232))
      {
        buf[0] = 0;
        sub_1000216B4(buf);
        v17 = sub_1002443FC(sub_1005A4614, *(a1 + 232), v11, v12, v13, v14, v15, v16);
        sub_100022214(buf);
        if (v17)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100848944();
          }

          sub_10000801C(v18);
          if (qword_100B508A0 != -1)
          {
            sub_1008480AC();
          }

          sub_1000971F4(off_100B50898, 3, 1);
        }

        else
        {
          *(a1 + 224) = 1;
        }

        sub_10002249C(buf);
        goto LABEL_24;
      }

      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "not connectable";
        if (v7)
        {
          v9 = "connectable";
        }

        *buf = 136446210;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Local device state is already %{public}s", buf, 0xCu);
      }

      sub_10000801C(v18);
      if (qword_100B508A0 != -1)
      {
        sub_1008480AC();
      }

      if (*(a1 + 231))
      {
        v3 = 120;
      }

      else
      {
        v3 = 121;
      }

LABEL_23:
      sub_1000971F4(off_100B50898, 3, v3);
LABEL_24:
      v5 = 1;
      goto LABEL_25;
    }
  }

  v4 = qword_100BCE8D8;
  v5 = 0;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "busy";
    if (v2 == 2)
    {
      v6 = "in flux";
    }

    *buf = 136446210;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delaying connectability change event as stack is %{public}s", buf, 0xCu);
    v5 = 0;
  }

LABEL_25:
  sub_1000088CC(v18);
  return v5;
}

void sub_1005A4614(int a1, char a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005AC198;
  v5[3] = &unk_100AF5990;
  v6 = a1;
  v7 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1005A4698(int a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, &unk_100BCE708);
  byte_100BCE7AD = 0;
  dword_100BCE7A8 = a1;
  sub_10002286C(&stru_100BCE748);
  return sub_1000088CC(v3);
}

uint64_t sub_1005A470C()
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100007F88(v1, &unk_100BCE7E0);
  byte_100BCE820 = 0;
  sub_10002286C(&stru_100BCE7B0);
  return sub_1000088CC(v1);
}

void sub_1005A4774(uint64_t a1, int a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 160);
  v18 = 0uLL;
  sub_1000D38CC(&v18, 17);
  *(&v18 + 4) = 0xE220000003ALL;
  HIDWORD(v18) = a2;
  if ((a2 - 240) <= 0xFFFFFF10)
  {
    sub_1001BBC00();
  }

  if (a2 > 241)
  {
    if (a2 > 243)
    {
      if (a2 == 244)
      {
        v4 = 647;
        v5 = "Invalid packet length received from BT Chip";
        goto LABEL_21;
      }

      if (a2 == 245)
      {
        v4 = 3703;
        v5 = "Core dump";
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (a2 == 242)
    {
      v4 = 645;
      v5 = "Invalid receive state from BT Chip";
    }

    else
    {
      v4 = 646;
      v5 = "Timed out in invalid receive state from BT Chip";
    }
  }

  else
  {
    if (a2 <= 239)
    {
      if (!a2)
      {
        v4 = 642;
        v5 = "BT chip received invalid data from iOS";
        goto LABEL_21;
      }

      if (a2 == 8)
      {
        v4 = 652;
        v5 = "Bt chip timed out while trying to transfer data to SPMI master";
        goto LABEL_21;
      }

LABEL_20:
      v4 = 648;
      v5 = "unknown";
      goto LABEL_21;
    }

    if (a2 == 240)
    {
      v4 = 643;
      v5 = "received invalid data from BT chip";
    }

    else
    {
      v4 = 644;
      v5 = "Timed out while waiting for data from BT Chip";
    }
  }

LABEL_21:
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = v5;
    v21 = 1024;
    v22 = a2;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Hardware error - %{public}s (%u)", buf, 0x12u);
  }

  v7 = *(a1 + 226);
  if ((v7 & 1) != 0 || *(a1 + 227) == 1)
  {
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      v9 = "LE Test";
      if (v7)
      {
        v9 = "DUT";
      }

      *buf = 136446210;
      *&buf[4] = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Can not restore state while in %{public}s mode", buf, 0xCu);
    }
  }

  if (a2 == 245)
  {
    if (sub_10000F034())
    {
      v14 = sub_10000F034();
      sub_100007E30(buf, v5);
      (*(*v14 + 112))(v14, 1, 0, buf);
      if (v23 < 0)
      {
        operator delete(*buf);
      }
    }

    v10 = sub_10000E92C();
    (*(*v10 + 504))(v10, "UART core dump");
    v11 = sub_10000E92C();
    v12 = *(a1 + 384);
    if (*(a1 + 415) < 0)
    {
      sub_100008904(&__dst, *(a1 + 392), *(a1 + 400));
    }

    else
    {
      __dst = *(a1 + 392);
      v17 = *(a1 + 408);
    }

    sub_100693260(v11, v12, &__dst, 1);
  }

  v13 = sub_10000F034();
  (*(*v13 + 40))(v13, &v18);
  sub_10000801C(v19);
  sub_100007E30(&v15, "");
  sub_100007E30(buf, v5);
  sub_1005A24D4(a1, v4, &v15, 1, 0, a2, buf);
}

void sub_1005A4B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a25);
  _Unwind_Resume(a1);
}

float sub_1005A4B80(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v2 = off_100B50A98;
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 38);

  return sub_1005A4BDC(v2, v3, v4, v5);
}

float sub_1005A4BDC(uint64_t a1, int a2, int a3, int a4)
{
  v6 = *(a1 + 56);
  if (v6 == 1)
  {
    if (sub_10000EFCC())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      *buf = 0u;
      v21 = 0u;
      v19 = 0;
      sub_1000216B4(&v19);
      v10 = sub_10028A99C(a3);
      sub_100304ACC(buf, 256, "HCI stall detected, %s (0x%x)", v11, v12, v13, v14, v15, v10);
      sub_1001C4B04(buf);
      sub_100022214(&v19);
      sub_10002249C(&v19);
    }

    v16 = sub_10028A99C(a3);
    sub_100007E30(&v18, v16);
    sub_100007E30(buf, "");
    sub_1005A24D4(a1, 621, &v18, 1, 5, a3 | (a4 << 16), buf);
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109888;
    *&buf[4] = v6;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    *&buf[14] = 1024;
    LODWORD(v21) = a4;
    WORD2(v21) = 1024;
    *(&v21 + 6) = a2;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "HCI event timeout occured during state %d on opcode 0x%x with subopcode 0x%x due to %{bluetooth:OI_STATUS}u, ignoring", buf, 0x1Au);
  }

  return result;
}

void sub_1005A4D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A4DC8(uint64_t a1)
{
  if (!sub_10000EFCC())
  {
LABEL_11:
    if (*(a1 + 32) == 635)
    {
      if (qword_100B50AA0 != -1)
      {
        dispatch_once(&qword_100B50AA0, &stru_100AFEE40);
      }

      v15 = off_100B50A98;
      v16 = *(a1 + 32);
      v17 = sub_10028A99C(*(a1 + 36));
      sub_100007E30(&v21, v17);
      sub_100007E30(v23, "");
      sub_1005A24D4(v15, v16, &v21, 0, 0, 0, v23);
    }

    if (qword_100B50AA0 != -1)
    {
      dispatch_once(&qword_100B50AA0, &stru_100AFEE40);
    }

    v18 = off_100B50A98;
    v19 = *(a1 + 32);
    sub_100007E30(&v20, "");
    sub_100007E30(v23, "");
    sub_1005A24D4(v18, v19, &v20, 0, 0, 0, v23);
  }

  memset(v23, 0, sizeof(v23));
  v22 = 0;
  sub_1000216B4(&v22);
  v7 = *(a1 + 32);
  if (v7 == 607)
  {
    v14 = "Unknown event received, eventId (0x%x)";
  }

  else
  {
    if (v7 != 651)
    {
      if (v7 == 635)
      {
        v8 = sub_10028A99C(*(a1 + 36));
        sub_100304ACC(v23, 256, "Orphaned event detected, cmdOpcode %s (0x%x)", v9, v10, v11, v12, v13, v8);
      }

      else
      {
        sub_100304ACC(v23, 256, "Unexpected HCI Event Error callback, status (0x%x), cmdOpcode %s (0x%x)", v2, v3, v4, v5, v6, *(a1 + 32));
      }

      goto LABEL_10;
    }

    v14 = "HCI Event Data Underrun, eventId (0x%x)";
  }

  sub_100304ACC(v23, 256, v14, v2, v3, v4, v5, v6, *(a1 + 36));
LABEL_10:
  sub_1001C4B04(v23);
  sub_100022214(&v22);
  sub_10002249C(&v22);
  goto LABEL_11;
}

void sub_1005A4FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A5040(uint64_t a1, int a2)
{
  if (a2 > 2403)
  {
    if (a2 > 2409)
    {
      switch(a2)
      {
        case 2410:
          return 24;
        case 2411:
          return 22;
        case 2414:
          return 21;
      }
    }

    else
    {
      switch(a2)
      {
        case 2404:
          return 18;
        case 2405:
          return 19;
        case 2408:
          return 23;
      }
    }

    return 11;
  }

  if (a2 <= 2400)
  {
    if (a2 == 11)
    {
      return 14;
    }

    if (a2 == 2400)
    {
      return 15;
    }

    return 11;
  }

  if (a2 == 2401)
  {
    return 16;
  }

  if (a2 == 2402)
  {
    return 20;
  }

  return 17;
}

void sub_1005A5110(uint64_t a1, int a2, int a3, char *a4)
{
  if (sub_10009B9DC() == 7)
  {
    if ((a3 & 1) == 0)
    {
      v8 = sub_10009B9DC();
      goto LABEL_8;
    }

LABEL_13:
    sub_100007E30(&v16, "chip boot failure");
    if (a4[23] < 0)
    {
      a4 = *a4;
    }

    sub_100007E30(v15, a4);
    sub_1005A24D4(a1, 1214, &v16, 1, 11, 0, v15);
  }

  if (sub_10009B9DC() == 9 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  v8 = sub_10009B9DC();
  if (v8 == 8 && a3)
  {
    v9 = sub_1005A5040(v8, a2);
    v10 = a4;
    if (a4[23] < 0)
    {
      v10 = *a4;
    }

    sub_1005A2A5C(v9, v9, 0, v10);
    if (a2 == 2411)
    {
      if (a4[23] < 0)
      {
        a4 = *a4;
      }

      sub_1005A2A5C(v11, 11, 0, a4);
      sub_10022DE3C();
      v12 = sub_10000E92C();
      sub_100007E30(v14, "chip boot failure - device fatal error");
      sub_100693260(v12, 1220, v14, 1);
    }

    sub_100007E30(&v13, "chip boot failure");
    if (a4[23] < 0)
    {
      a4 = *a4;
    }

    sub_100007E30(v15, a4);
    sub_1005A24D4(a1, 1214, &v13, 1, 11, 0, v15);
  }

LABEL_8:
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  sub_1005A2A5C(v8, 12, 0, a4);
}

void sub_1005A52C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A5348(const __CFString *a1, UInt8 **a2, _WORD *a3)
{
  if ((*(sub_10000C7D0() + 800) - 5000) > 0x3E7)
  {
    v7 = "bluetooth";
  }

  else
  {
    v6 = IOServiceNameMatching("AppleSunriseHALDevice");
    if (v6)
    {
      goto LABEL_6;
    }

    v7 = "AppleSunriseWLAN";
  }

  v6 = IOServiceNameMatching(v7);
  if (!v6)
  {
    return 131;
  }

LABEL_6:
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
  if (!MatchingService)
  {
    return 131;
  }

  v9 = MatchingService;
  v10 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", a1, kCFAllocatorDefault, 1u);
  if (v10)
  {
    v11 = v10;
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v11))
    {
      Length = CFDataGetLength(v11);
      v14 = Length;
      if (Length)
      {
        v15 = malloc_type_malloc(Length, 0x100004077774924uLL);
        *a2 = v15;
        v18.location = 0;
        v18.length = v14;
        CFDataGetBytes(v11, v18, v15);
      }

      *a3 = v14;
    }

    CFRelease(v11);
    v16 = 0;
  }

  else
  {
    v16 = 131;
  }

  IOObjectRelease(v9);
  return v16;
}

uint64_t sub_1005A548C(const void **a1)
{
  v2 = AMFDRSealingMapCopyLocalDictForClass();
  v3 = v2;
  if (!a1 || !v2)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    Value = *a1;
    if (!*a1)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFRetain(Value);
    v5 = 0;
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v2, @"BTBF");
  *a1 = Value;
  if (Value)
  {
    goto LABEL_7;
  }

LABEL_8:
  v5 = 131;
LABEL_9:
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

uint64_t sub_1005A5540(UInt8 **a1, _WORD *a2)
{
  theData = 0;
  cf = 0;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Loading calibration of FATP stage", buf, 2u);
  }

  if (!sub_1005A548C(&theData))
  {
    goto LABEL_12;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FATP stage calibration not found, looking for Golden calibration from SMT", buf, 2u);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v6 = sub_1005A548C(&theData);
  if (v6)
  {
    v7 = v6;
    v8 = cf;
    if (cf)
    {
      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        Code = CFErrorGetCode(v8);
        *buf = 134217984;
        v19 = Code;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loading FDR data got error %ld", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_12:
    Length = CFDataGetLength(theData);
    v12 = Length;
    if (Length)
    {
      v13 = malloc_type_malloc(Length, 0x100004077774924uLL);
      *a1 = v13;
      v20.location = 0;
      v20.length = v12;
      CFDataGetBytes(theData, v20, v13);
      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "btbf length %ld", buf, 0xCu);
      }
    }

    v7 = 0;
    *a2 = v12;
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t sub_1005A5774(uint64_t a1, _WORD *a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v13 = 0;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Looking for fail safe calibration file", buf, 2u);
  }

  v5 = sub_100017E6C();
  sub_100007E30(__p, ".msf");
  v6 = (*(*v5 + 448))(v5, __p, a1, &v13, v14, 0);
  v7 = v6;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v6)
  {
LABEL_5:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848B08();
    }

    v7 = 131;
    goto LABEL_11;
  }

  *a2 = v13;
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found fail safe calibration file", buf, 2u);
    v7 = 0;
  }

LABEL_11:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v7;
}

void sub_1005A58F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A5928(char *a1, unsigned int a2, unsigned int a3)
{
  v6 = a3;
  __chkstk_darwin();
  v8 = &buf[-v7];
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calibration/Regulatory data size %d", buf, 8u);
  }

  if ((((a2 / a3) - ((a2 % a3) == 0)) & 0x80) != 0)
  {
    return 1;
  }

  v10 = a2 / a3 - ((a2 % a3) == 0);
  v11 = (a2 % a3);
  while (1)
  {
    v12 = v6;
    if (!v10)
    {
      bzero(v8, v6);
      v12 = v11;
    }

    memcpy(v8, a1, v12);
    v13 = *sub_10000C7D0();
    v14 = a3 == 230 ? (*(v13 + 4280))() : (*(v13 + 4296))();
    v15 = v14;
    if (v14)
    {
      break;
    }

    v16 = v10--;
    a1 += v6;
    if (v16 < 1)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848B44();
  }

  return v15;
}

uint64_t sub_1005A5B44(int a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "Unknow";
    if (a1 == 1)
    {
      v9 = "BTCAL";
    }

    if (!a1)
    {
      v9 = "MCC";
    }

    v15 = 136315138;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Load (%s) Calibration to host controller", &v15, 0xCu);
  }

  if (!a3)
  {
    return 1;
  }

  while (1)
  {
    v10 = a3 >= a4 ? a4 : a3;
    LOWORD(a3) = a3 - v10;
    v11 = sub_10000C7D0();
    v12 = (*(*v11 + 4280))(v11, a1, a3, a2, v10, 1);
    if (v12)
    {
      break;
    }

    a2 += v10;
    if (!a3)
    {
      return 0;
    }
  }

  v13 = v12;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848BB4();
  }

  return v13;
}

uint64_t sub_1005A5CD8(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"GlobalAllowSoundProfile", @"com.apple.BTServer");
  v3 = 1;
  *(a1 + 488) = 1;
  if (v2)
  {
    if ([@"on" isEqualToString:v2])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    *(a1 + 488) = v3;
  }

  return v3;
}

uint64_t sub_1005A5D5C(uint64_t a1, int a2)
{
  *(a1 + 488) = a2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Spatial Spatial Profile Global Allowed Written:  %d", v6, 8u);
  }

  if (a2 == 1)
  {
    v4 = @"on";
  }

  else
  {
    v4 = @"off";
  }

  CFPreferencesSetAppValue(@"GlobalAllowSoundProfile", v4, @"com.apple.BTServer");
  return CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

uint64_t sub_1005A5E40(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 424);
  if (*(a1 + 488) != a2)
  {
    sub_1005A5D5C(a1, a2);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1005A5EB0(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"GlobalAllowSpatial", @"com.apple.BTServer");
  if (v2)
  {
    if ([@"on" isEqualToString:v2])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    *(a1 + 416) = v3;
  }

  else
  {
    v3 = *(a1 + 416);
  }

  return v3;
}

uint64_t sub_1005A5F38(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 424);
  if (*(a1 + 416) != a2)
  {
    sub_1005A5FA8(a1, a2);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1005A5FA8(uint64_t a1, int a2)
{
  *(a1 + 416) = a2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Spatial Audio Global Allowed Written:  %d", v6, 8u);
  }

  if (a2 == 1)
  {
    v4 = @"on";
  }

  else
  {
    v4 = @"off";
  }

  CFPreferencesSetAppValue(@"GlobalAllowSpatial", v4, @"com.apple.BTServer");
  return CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

void sub_1005A608C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = qword_100BCE8D8;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = v7;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "StackManager setSpatialModeWithBundleID：%@, mode:%u, headtrack:%u", buf, 0x18u);
    }

    if (!*(a1 + 496))
    {
      v9 = sub_1005A6278(a1);
      v10 = *(a1 + 496);
      *(a1 + 496) = v9;
    }

    v11 = [NSNumber numberWithBool:a4, @"kCBMsgArgParamSpatialHeadTracking"];
    v14[1] = @"kCBMsgArgParamSpatialMode";
    v15[0] = v11;
    v12 = [NSNumber numberWithUnsignedInt:a3];
    v15[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

    [*(a1 + 496) setObject:v13 forKey:v7];
    sub_1005A68E8(a1, *(a1 + 496));
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848C3C();
  }
}

id sub_1005A6278(uint64_t a1)
{
  v46[0] = 0;
  v46[1] = 0;
  sub_100007F88(v46, a1 + 424);
  v1 = *(a1 + 496);
  if (v1)
  {
    v2 = v1;
    goto LABEL_35;
  }

  v33 = CFPreferencesCopyAppValue(@"SpatialModeDict", @"com.apple.BTServer");
  v32 = [v33 mutableCopy];
  if (v32)
  {
    v36 = objc_alloc_init(NSMutableDictionary);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v3 = v32;
    v4 = [v3 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (!v4)
    {
      v35 = 0;
      goto LABEL_24;
    }

    v35 = 0;
    v37 = *v43;
    while (1)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v42 + 1) + 8 * i);
        v7 = [v3 objectForKeyedSubscript:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

LABEL_12:
          v10 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v3 objectForKeyedSubscript:v6];
            v12 = [v11 objectForKeyedSubscript:@"kCBMsgArgParamSpatialMode"];
            v13 = [v12 unsignedIntValue];
            v14 = [v3 objectForKeyedSubscript:v6];
            v15 = [v14 objectForKeyedSubscript:@"kCBMsgArgParamSpatialHeadTracking"];
            v16 = [v15 BOOLValue];
            *buf = 138412802;
            v49 = v6;
            v50 = 1024;
            v51 = v13;
            v52 = 1024;
            v53 = v16;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "StackManager Get Spatial Mode Bundle ID Dict, key: %@, value: %u headtrack: %u", buf, 0x18u);
          }

          continue;
        }

        v8 = [v3 objectForKeyedSubscript:v6];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_12;
        }

        v17 = objc_alloc_init(NSMutableDictionary);
        v18 = [v3 objectForKeyedSubscript:v6];
        v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v18 unsignedIntValue]);

        [v17 setObject:v19 forKey:@"kCBMsgArgParamSpatialMode"];
        v20 = [NSNumber numberWithBool:1];
        [v17 setObject:v20 forKey:@"kCBMsgArgParamSpatialHeadTracking"];
        [v36 setObject:v17 forKey:v6];
        v21 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v3 objectForKeyedSubscript:v6];
          v23 = [v22 unsignedIntValue];
          *buf = 138412546;
          v49 = v6;
          v50 = 1024;
          v51 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "StackManager Converting Bundle ID Dict, key: %@, value: %u", buf, 0x12u);
        }

        v35 = 1;
      }

      v4 = [v3 countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (!v4)
      {
LABEL_24:

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v25 = v36;
        v26 = [v25 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v26)
        {
          v27 = *v39;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v39 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v38 + 1) + 8 * j);
              [v3 removeObjectForKey:v29];
              v30 = [v25 objectForKeyedSubscript:v29];
              [v3 setObject:v30 forKey:v29];
            }

            v26 = [v25 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v26);
        }

        if (v35)
        {
          sub_1005A68E8(a1, v3);
        }

        v2 = v3;

        goto LABEL_34;
      }
    }
  }

  v24 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "StackManager create a new dict", buf, 2u);
  }

  v2 = objc_alloc_init(NSMutableDictionary);
LABEL_34:

LABEL_35:
  sub_1000088CC(v46);

  return v2;
}

void sub_1005A68E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 424);
  CFPreferencesSetAppValue(@"SpatialModeDict", v3, @"com.apple.BTServer");
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  sub_1000088CC(v4);
}

uint64_t sub_1005A6978(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 504);
  v2 = *(a1 + 568);
  if (v2)
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Default airplane mode denylist state is %d", buf, 8u);
      v2 = *(a1 + 568);
    }

    goto LABEL_13;
  }

  v4 = CFPreferencesCopyAppValue(@"defaultAirplaneModeDenylistState", @"com.apple.BTServer");
  if (v4)
  {
    if ([@"on" isEqualToString:v4])
    {
      v5 = 2;
LABEL_9:
      *(a1 + 568) = v5;
      goto LABEL_10;
    }

    if ([@"off" isEqualToString:v4])
    {
      v5 = 1;
      goto LABEL_9;
    }
  }

LABEL_10:
  v6 = qword_100BCE8D8;
  v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  v2 = *(a1 + 568);
  if (v7)
  {
    *buf = 67109120;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Read from CFPRefs. Default airplane mode grant list state is %d", buf, 8u);
    v2 = *(a1 + 568);
  }

LABEL_13:
  sub_1000088CC(v9);
  return v2;
}

void sub_1005A6B28(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "BT");
  sub_100007E30(__p, "LogTimesyncReference");
  (*(*v1 + 72))(v1, buf, __p, &byte_100B6F600);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(*buf);
  }

  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6F600)
    {
      v3 = "not ";
    }

    else
    {
      v3 = "";
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TimesyncReference is %slogged", buf, 0xCu);
  }
}

void sub_1005A6C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1005A6CA4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005A70B4;
  v2[3] = &unk_100AFEC40;
  sub_1005A6FA0(off_100B50A98 + 96, v2);
}

void sub_1005A6D4C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005A6EC0;
  v2[3] = &unk_100AFEC20;
  sub_1005A6DF4(off_100B50A98 + 128, v2);
}

void sub_1005A6DF4(uint64_t a1, void *a2)
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

uint64_t sub_1005A6EC0(void *a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    *v8 = 134218240;
    *&v8[4] = v5;
    *&v8[12] = 2048;
    *&v8[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling PCIE Timesync Event listener with PCIe Timesync event: Host Timestamp = %llu, FW Timestamp = %llu", v8, 0x16u);
  }

  *v8 = *(a1 + 2);
  *&v8[16] = a1[6];
  return (*a2)(*(a2 + 8), *(a2 + 16), v8);
}

void sub_1005A6FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_1005ACA74(&v10, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 4);
  os_unfair_lock_unlock(a1);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    while (1)
    {
      v8 = 0;
      v9 = 0;
      v6 = *(v4 + 8);
      if (v6)
      {
        break;
      }

LABEL_10:
      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    v7 = std::__shared_weak_count::lock(v6);
    v9 = v7;
    if (v7)
    {
      v8 = *v4;
      if (!v8)
      {
LABEL_8:
        if (v7)
        {
          sub_100117644(v7);
        }

        goto LABEL_10;
      }
    }

    else if (!v8)
    {
      goto LABEL_8;
    }

    v3[2](v3, &v8);
    v7 = v9;
    goto LABEL_8;
  }

LABEL_11:
  v8 = &v10;
  sub_1005AAD6C(&v8);
}

void sub_1005A70E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 72) == 3703)
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_1001C4B04("Host Initiated Core Dump");
    sub_100022214(__p);
    sub_10002249C(__p);
  }

  __s = 0;
  memset(&v52, 0, sizeof(v52));
  sub_100007E30(&v52, "");
  v3 = sub_10000E92C();
  v4 = *(a1 + 72);
  v5 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    if (*(a1 + 48))
    {
      v6 = v5->__r_.__value_.__r.__words[0];
      goto LABEL_8;
    }
  }

  else
  {
    v6 = a1 + 40;
    if (*(a1 + 63))
    {
      goto LABEL_8;
    }
  }

  sub_1000CDD74(*(a1 + 72));
  v6 = v7;
LABEL_8:
  v8 = (*(*v3 + 520))(v3, v4, v6, &__s);
  std::string::operator=(&v52, (a1 + 40));
  if (__s)
  {
    sub_100007E30(&v51, __s);
    v13 = std::string::insert(&v51, 0, " ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v55 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v55 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v55 >= 0)
    {
      v16 = HIBYTE(v55);
    }

    else
    {
      v16 = __p[1];
    }

    std::string::append(&v52, v15, v16);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    free(__s);
    __s = 0;
  }

  v9 = sub_10000E92C();
  if (!(*(*v9 + 8))(v9))
  {
LABEL_60:
    if (*(a1 + 84) == 1 && sub_10000F034())
    {
      v26 = sub_10000F034();
      v44 = v2;
      v27 = *(a1 + 76);
      v28 = *(a1 + 80);
      sub_1004EE4EC("-", *(a1 + 64), &v51);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v52;
      }

      else
      {
        v29 = v52.__r_.__value_.__r.__words[0];
      }

      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v52.__r_.__value_.__l.__size_;
      }

      v31 = std::string::append(&v51, v29, size);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v55 = v31->__r_.__value_.__r.__words[2];
      *__p = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      (*(*v26 + 112))(v26, v27, v28, __p);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      v2 = v44;
      if (v8)
      {
LABEL_63:
        v23 = sub_10000E92C();
        v24 = *(a1 + 72);
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v52;
        }

        else
        {
          v25 = v52.__r_.__value_.__r.__words[0];
        }

        sub_100007E30(v48, v25);
        sub_100693260(v23, v24, v48, 1);
      }
    }

    else if (v8)
    {
      goto LABEL_63;
    }

    if ((sub_1001BBF38() & 1) == 0)
    {
      v36 = sub_10000E92C();
      if (*(a1 + 63) < 0)
      {
        v5 = v5->__r_.__value_.__r.__words[0];
      }

      v37 = *(a1 + 72);
      sub_100007E30(v47, v5);
      sub_100693260(v36, v37, v47, 1);
    }

    *(v2 + 384) = *(a1 + 72);
    std::string::operator=((v2 + 392), v5);
    v33 = sub_10000C7D0();
    if ((*(*v33 + 1248))(v33))
    {
      v38 = sub_10000E92C();
      if (*(a1 + 63) < 0)
      {
        v5 = v5->__r_.__value_.__r.__words[0];
      }

      v39 = *(a1 + 72);
      sub_100007E30(v46, v5);
      sub_100693260(v38, v39, v46, 1);
    }

    v34 = 0;
    while (1)
    {
      v35 = v34;
      sleep(0xAu);
      v34 = sub_1001BBF94();
      if (v34 == v35)
      {
        break;
      }

      if ((sub_100018C6C() & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    v34 = v35;
LABEL_91:
    v40 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 67109632;
      HIDWORD(__p[0]) = v34;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v35;
      HIWORD(__p[1]) = 1024;
      LODWORD(v55) = 10;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "coreDumpPacketCounter:%d coreDumpLastPacketCounter:%d no change detected for %d seconds, aborting", __p, 0x14u);
    }

    v41 = sub_10000E92C();
    v42 = *(a1 + 72);
    sub_1004EE4EC(" BD_COREDUMP_TOO_LONG", &v5->__r_.__value_.__l.__data_, __p);
    if (v55 >= 0)
    {
      v43 = __p;
    }

    else
    {
      v43 = __p[0];
    }

    sub_100007E30(v45, v43);
    sub_100693260(v41, v42, v45, 1);
  }

  memset(&v51, 0, sizeof(v51));
  sub_100007E30(__p, "Firmware crash detected :(pc = 0xc6dce, lr = 0xc6de5, bcsReason = 0x0, trapReason = 0x5)");
  sub_100007E30(v56, "Firmware crash detected :(pc = 0x82c, lr = 0x7bf, bcsReason = 0x0, trapReason = 0x25)");
  sub_100007E30(v57, "pci error: kACIPCEnterLowPowerFailed: (0x2, 0x0)");
  sub_100007E30(v58, "chip boot failure");
  sub_100007E30(v59, "BD_VSC_LE_META_ADD_IRK_TO_LIST");
  sub_1000C1030(&v51, __p, 5);
  for (i = 0; i != -120; i -= 24)
  {
    if (v59[i + 23] < 0)
    {
      operator delete(*&v59[i]);
    }
  }

  if (&v51.__r_.__value_.__r.__words[1] == sub_1000463C8(&v51, (a1 + 40)))
  {
    v11 = *(a1 + 72);
    if (v11 == 133)
    {
      if (qword_100B53FE8 != -1)
      {
        dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
      }

      v20 = qword_100B53FE0;
      sub_100007E30(__p, "FW Crash");
      sub_100007E30(v49, "OI_STATUS_ALREADY_CONNECTED");
      sub_1005780BC(v20, __p, v49, 60.0);
    }

    else
    {
      if (v11 != 652)
      {
        goto LABEL_39;
      }

      if (qword_100B53FE8 != -1)
      {
        dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
      }

      v12 = qword_100B53FE0;
      sub_100007E30(__p, "FW Crash");
      sub_100007E30(v49, "OI_HCI_HW_ERROR_SPMI_TIMEOUT");
      sub_1005780BC(v12, __p, v49, 60.0);
    }

    if (v50 < 0)
    {
      operator delete(v49[0]);
    }
  }

  else
  {
    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Targeted FW Crash signature found, filing ABC Snapshot", __p, 2u);
    }

    if (qword_100B53FE8 != -1)
    {
      dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
    }

    v18 = qword_100B53FE0;
    sub_100007E30(__p, "FW Crash");
    sub_1005780BC(v18, __p, &v5->__r_.__value_.__l.__data_, 60.0);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(a1 + 72);
LABEL_39:
  if (v11 == 621)
  {
    if (qword_100B53FE8 != -1)
    {
      dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
    }

    v21 = qword_100B53FE0;
    sub_100007E30(__p, "FW Crash");
    sub_100007E30(v49, "OI_HCI_EXPECTED_EVENT_TIMEOUT");
    sub_1005780BC(v21, __p, v49, 60.0);
  }

  else
  {
    if (v11 != 653)
    {
      if (qword_100B53FE8 != -1)
      {
        dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
      }

      v22 = qword_100B53FE0;
      sub_100007E30(__p, "FW Crash");
      sub_1005780BC(v22, __p, &v52.__r_.__value_.__l.__data_, 60.0);
      goto LABEL_57;
    }

    if (qword_100B53FE8 != -1)
    {
      dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
    }

    v19 = qword_100B53FE0;
    sub_100007E30(__p, "FW Crash");
    sub_100007E30(v49, "OI_HCI_HW_ERROR_DID_NOT_SLEEP");
    sub_1005780BC(v19, __p, v49, 60.0);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

LABEL_57:
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10004B61C(&v51, v51.__r_.__value_.__l.__size_);
  goto LABEL_60;
}

void sub_1005A7948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char *a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  sub_10004B61C(&a41, a42);
  if (a52 < 0)
  {
    operator delete(a47);
  }

  _Unwind_Resume(a1);
}

char *sub_1005A7B10(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100008904(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1005A7B3C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_1005A7B50(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    dispatch_once(&qword_100B50AA0, &stru_100AFEE40);
  }

  sub_1005A4774(off_100B50A98, *(a1 + 32));
}

void sub_1005A7B9C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 54);
  v4 = *(a1 + 55);

  sub_1005A7BF4(a1, v2, v3, 0, v4);
}

void sub_1005A7BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_1008477A0();
    }

    v8 = sub_1000504C8(off_100B508E8, a2, 1);
    if (v8)
    {
      if (a3 == 240)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      if (a3 == 2)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }

      if (a3 == 1)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      if (a3)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1;
      }

      if (a3 <= 1)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      sub_1005501A8(v8, v13, a5);
    }
  }
}

uint64_t sub_1005A7CB4(uint64_t a1, const char *a2)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 160);
  if (*(a1 + 60))
  {
    sub_10000801C(v24);
    v23[0] = 0;
    v23[1] = 0;
    sub_100007F88(v23, a1 + 240);
    v4 = (a1 + 312);
    v5 = a2[23];
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 1);
    }

    v7 = *(a1 + 335);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a1 + 320);
    }

    if (v6 != v7 || (v5 >= 0 ? (v9 = a2) : (v9 = *a2), v8 >= 0 ? (v10 = (a1 + 312)) : (v10 = *v4), memcmp(v9, v10, v6)))
    {
      sub_10000801C(v23);
      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      strlcpy("iOS", a2, 0x82uLL);
      v22 = 0;
      sub_1000216B4(&v22);
      byte_100BCE7AD = 1;
      v17 = sub_10024DDD0(sub_1005A4698, "iOS", v11, v12, v13, v14, v15, v16);
      sub_100022214(&v22);
      if (v17)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100848D2C();
        }
      }

      else if (!sub_1005A1F18(a1))
      {
        v18 = sub_100017F4C();
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1005A7F98;
        v21[3] = &unk_100ADF8F8;
        v21[4] = a1;
        sub_10000CA94(v18, v21);
        sub_100007FB8(v23);
        std::string::assign((a1 + 312), "iOS");
        v19 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 335) < 0)
          {
            v4 = *v4;
          }

          *buf = 136446210;
          v26 = v4;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Local device name changed to %{public}s", buf, 0xCu);
        }

        sub_10000801C(v23);
      }

      sub_10002249C(&v22);
    }

    sub_1000088CC(v23);
  }

  else
  {
    *(a1 + 225) = 1;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }
  }

  return sub_1000088CC(v24);
}

void sub_1005A7F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A7FA8(int a1, uint64_t a2, char a3)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, &unk_100BCE708);
  dword_100BCE7A8 = a1;
  byte_100BCE7AC = a3;
  byte_100BCE7AD = 0;
  sub_10002286C(&stru_100BCE748);
  return sub_1000088CC(v6);
}

uint64_t sub_1005A8028(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v10 = 0;
  sub_1000216B4(&v10);
  if (!a2)
  {
    goto LABEL_12;
  }

  if (sub_1000B8B5C(a2) || sub_1000C0E08(a2) || sub_1000ABD24(a2))
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  v9 = sub_1000B7994(a2);
  v7 = 1;
  if (a3 && v9)
  {
LABEL_6:
    byte_100BCE7AD = 1;
    v6 = sub_10024DE3C(sub_1005A7FA8);
    sub_100022214(&v10);
    if (v6)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848D9C();
      }
    }

    else
    {
      if (!sub_1005A1F18(a1))
      {
        v7 = 0;
        *a3 = byte_100BCE7AC;
        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848E0C();
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  sub_10002249C(&v10);
  return v7;
}

uint64_t sub_1005A8184(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  *v24 = 0u;
  v21 = 0u;
  *v22 = 0u;
  v19 = 0u;
  *v20 = 0u;
  sub_1000DE474(&v19 + 1);
  BYTE2(v20[0]) = 0;
  BYTE4(v20[0]) = 0;
  BYTE2(v22[0]) = 0;
  BYTE4(v22[0]) = 0;
  DWORD1(v25[1]) = 0;
  v21 = 0uLL;
  v20[1] = 0;
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
  v15 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100847FA8();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v3 = sub_1000E6554(off_100B508E8, buf, 1);
  if (sub_100536A18(v3, &v19))
  {
    if (BYTE5(v26) == 1)
    {
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        *&buf[4] = 6;
        *&buf[8] = 2096;
        *&buf[10] = a2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invoking roleswitch disable for %{bluetooth:BD_ADDR}.6P", buf, 0x12u);
      }

      if (sub_100246BB4(v3 + 128, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848E7C();
      }
    }

    if (BYTE6(v26) == 1)
    {
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558531;
        *&buf[4] = 1752392040;
        *&buf[12] = 1041;
        *&buf[14] = 6;
        v17 = 2097;
        v18 = a2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting extended LSTO for %{private,bluetooth:BD_ADDR,mask.hash}.6P to 10000ms", buf, 0x1Cu);
      }

      if (sub_100246B50(v3 + 128, 10000) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848EEC();
      }
    }

    if (BYTE1(v27) == 1)
    {
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        *&buf[4] = 6;
        *&buf[8] = 2096;
        *&buf[10] = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invoking reduced QoS Latency for %{bluetooth:BD_ADDR}.6P", buf, 0x12u);
      }

      if (sub_100246C04(v3 + 128, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848F5C();
      }
    }
  }

  sub_1000DEEA4(v3, buf);
  v7 = BYTE3(v18);
  if ((v18 & 0x80000000) != 0)
  {
    v7 = *&buf[8];
  }

  if (v7)
  {
    sub_1000DEEA4(v3, &__p);
    v8 = std::string::compare(&__p, "INTEGRATED HANDSFREE") == 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v18 & 0x80000000) == 0)
    {
LABEL_28:
      if (!v8)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v8 = 0;
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  operator delete(*buf);
  if (!v8)
  {
    goto LABEL_37;
  }

LABEL_32:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    *&buf[4] = 6;
    *&buf[8] = 2096;
    *&buf[10] = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Name matched, invoking roleswitch disable for %{bluetooth:BD_ADDR}.6P", buf, 0x12u);
  }

  if (sub_100246BB4(v3 + 128, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848E7C();
  }

LABEL_37:
  if (qword_100B50AC0 != -1)
  {
    sub_100848084();
  }

  v10 = sub_1000DFA00(off_100B50AB8, v3);
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68158210;
    *&buf[4] = 6;
    *&buf[8] = 2096;
    *&buf[10] = a2;
    v17 = 1024;
    LODWORD(v18) = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device %{bluetooth:BD_ADDR}.6P services are %x", buf, 0x18u);
  }

  if ((v10 & 0x20080) != 0 && sub_10023E098(a2, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848FCC();
  }

  if (sub_100539FE8(v3))
  {
    sub_1005379CC(v3, &v15);
    v12 = v15 & 0x1F00;
    if ((v12 == 512 || v12 == 256) && sub_10023E2B0(a2, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084903C();
    }
  }

  if (sub_1000DEB14(v3) == 26 && sub_100538D24(v3) && sub_10023E3C8(a2, 2) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008490AC();
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
    operator delete(v20[1]);
  }

  return nullsub_21(&v19 + 1);
}

void sub_1005A8788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100320BE8(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A87C8()
{
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_100242E9C();
  sub_10002249C(&v2);
  return v0;
}

_BYTE *sub_1005A8824(uint64_t a1)
{
  if (*(a1 + 234) == 1)
  {
    if (*(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) <= 0x7CFu && *(sub_10000C7D0() + 800) < 0x13u || *(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 < 0x177u || (v1 = sub_10000C7D0(), sub_1004106D0(v1, 0xBB8u)))
    {
      v2 = sub_10000C7D0();
      if ((*(*v2 + 1304))(v2, 0))
      {
        v9 = 0;
        sub_1000216B4(&v9);
        sub_10024E230();
        sub_100022214(&v9);
        sub_10002249C(&v9);
      }
    }
  }

  if (qword_100B50DB8 != -1)
  {
    sub_10084911C();
  }

  sub_1000DAE4C(off_100B50DB0, 3, 1u);
  v8 = 0;
  sub_1000216B4(&v8);
  v3 = sub_1001B3100();
  sub_100022214(&v8);
  v4 = sub_10000C7D0();
  (*(*v4 + 552))(v4, 0, 1);
  if (v3 == 118)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for 'YOU MAY SLEEP'", v7, 2u);
    }

    sub_1001BAECC(500);
  }

  return sub_10002249C(&v8);
}

_BYTE *sub_1005A8A18(uint64_t a1)
{
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *__big = 0u;
  v25 = 0u;
  v18 = 256;
  sysctlbyname("kern.wakereason", __big, &v18, 0, 0);
  v2 = strnstr(__big, "bluetooth", 0x100uLL) || strnstr(__big, "BT.Ou", 0x100uLL) || strnstr(__big, "centauri-beta", 0x100uLL) != 0;
  HIBYTE(v39) = 0;
  if (*(a1 + 234) == 1)
  {
    if (*(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) <= 0x7CFu && *(sub_10000C7D0() + 800) < 0x13u || *(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 < 0x177u || (v3 = sub_10000C7D0(), sub_1004106D0(v3, 0xBB8u)))
    {
      v4 = sub_10000C7D0();
      if ((*(*v4 + 1304))(v4, 1))
      {
        buf[0] = 0;
        sub_1000216B4(buf);
        sub_10024E230();
        sub_100022214(buf);
        sub_10002249C(buf);
      }
    }
  }

  v17 = 0;
  sub_1000216B4(&v17);
  sub_1001B3128(v2);
  sub_100022214(&v17);
  v5 = sub_10000C7D0();
  (*(*v5 + 552))(v5, 1, 1);
  if (v2)
  {
    v6 = *sub_100256ED8(0);
    if ((v6 - 2) > 2)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = *(&off_100AFF060 + (v6 - 2));
    }

    IOPMClaimSystemWakeEvent();
    sub_100007E30(&__p, [(__CFString *)v7 UTF8String]);
    sub_1005A8F3C(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (sub_1005A8FB0(a1))
    {
      if (qword_100B53FE8 != -1)
      {
        sub_10084857C();
      }

      v8 = qword_100B53FE0;
      sub_100007E30(buf, "Power Anomaly");
      sub_100007E30(v14, "Bluetooth Wake Limit Reached");
      sub_1005780BC(v8, buf, v14, 0.0);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(*buf);
      }

      sub_1005AC6F0(a1 + 576, *(a1 + 584));
      *(a1 + 576) = a1 + 584;
      *(a1 + 584) = 0u;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = __big;
    v20 = 1024;
    v21 = v2;
    v22 = 1024;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "wakeReason:%s reasonWasBluetooth:%d controllerPacketType:%d", buf, 0x18u);
  }

  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) >= 0xBB8u)
  {
    v10 = sub_10000C798();
    if ((*(*v10 + 704))(v10))
    {
      v11 = sub_10000C798();
      if ((*(*v11 + 416))(v11))
      {
        v12 = sub_10000C7D0();
        if ((*(*v12 + 712))(v12, 1))
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100849144();
          }
        }
      }
    }
  }

  return sub_10002249C(&v17);
}

uint64_t sub_1005A8F3C(void *a1, const std::string *a2)
{
  sub_1005AA818(a1);
  v6[0] = CFAbsoluteTimeGetCurrent();
  *&v6[2] = v6;
  v4 = sub_1005ACFE8((a1 + 72), v6);
  std::string::operator=((v4 + 5), a2);
  sub_1005AA9E0(a1);
  return 1;
}

BOOL sub_1005A8FB0(uint64_t a1)
{
  sub_1005AA818(a1);
  v2 = *(a1 + 592);
  if (qword_100B6F610 != -1)
  {
    sub_1008491B4();
  }

  v3 = dword_100B54A7C;
  if (dword_100B54A7C < v2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109376;
      v6[1] = v3;
      v7 = 1024;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ABC Trigger: We're over the Wake Limit of %d, current wake count: %d", v6, 0xEu);
    }
  }

  return v3 < v2;
}

uint64_t sub_1005A90A8(uint64_t a1, unsigned int a2, int a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 160);
  if (*(a1 + 60))
  {
    sub_10000801C(v11);
    v6 = sub_100017F4C();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005A91D8;
    v10[3] = &unk_100ADF8F8;
    v10[4] = a1;
    sub_10000CA94(v6, v10);
    v9 = 0;
    sub_1000216B4(&v9);
    if (a3)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    sub_100247BB4(v7);
    sub_10002249C(&v9);
  }

  else
  {
    *(a1 + 225) = 1;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }
  }

  return sub_1000088CC(v11);
}

void sub_1005A91B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A91EC()
{
  v0 = *(*sub_10000C7D0() + 1184);

  return v0();
}

uint64_t sub_1005A924C(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = sub_100007F88(v8, a1 + 160);
  if (*(a1 + 60))
  {
    sub_10000801C(v2);
    v3 = sub_100017F4C();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005A9348;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000CA94(v3, v6);
  }

  else
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring CarPlay state change notification as stack is not ready", buf, 2u);
    }
  }

  return sub_1000088CC(v8);
}

uint64_t sub_1005A935C(uint64_t a1, char a2)
{
  if (qword_100B50910 != -1)
  {
    sub_1008475E4();
  }

  sub_1005BC718(off_100B50908, a2);
  v3 = *(*sub_10000C7D0() + 560);

  return v3();
}

uint64_t sub_1005A93F8(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 160);
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v5 = sub_10000C7D0();
  if (*(a1 + 56) == 1)
  {
    v6 = *(v5 + 800);
    sub_10000801C(v25);
    if ((v6 - 2000) < 0x7D0 || (v7 = 1, v6 != 6) && (v6 - 1) <= 0x7CE)
    {
      v26 = *a3;
      v27 = *(a3 + 1);
      v28 = *(a3 + 6);
      v8 = v28;
      if (v28)
      {
        v9 = a3 + 4;
        v10 = 7;
        v11 = v28;
        do
        {
          v12 = *v9++;
          *(&v26 + v10) = v12;
          v10 += 2;
          --v11;
        }

        while (v11);
        v13 = 2 * v8 + 7;
        v14 = (a3 + 36);
        v15 = v8;
        do
        {
          v16 = *v14++;
          *(&v26 + v13++) = v16;
          --v15;
        }

        while (v15);
      }

      v24 = 0;
      sub_1000216B4(&v24);
      v22 = sub_10024E0A0(0, (3 * v8 + 7), &v26, v17, v18, v19, v20, v21);
      sub_100022214(&v24);
      sub_10002249C(&v24);
      v7 = v22 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v7 = 111;
  }

  sub_1000088CC(v25);
  return v7;
}

void sub_1005A95AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A95DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 160);
  v5 = sub_10000C7D0();
  if (*(a1 + 56) == 1)
  {
    v6 = *(v5 + 800);
    sub_10000801C(v24);
    if ((v6 - 2000) < 0x7D0 || (v7 = 0, v6 != 6) && (v6 - 1) <= 0x7CE)
    {
      *__p = 0u;
      v23 = 0u;
      sub_10057C6A8(__p, 0);
      sub_10057C6D0(__p, *a3);
      sub_10057C70C(__p, *(a3 + 2));
      sub_10057C70C(__p, *(a3 + 4));
      sub_10057C70C(__p, *(a3 + 6));
      sub_10057C70C(__p, *(a3 + 8));
      sub_10057C6D0(__p, *(a3 + 10));
      v21 = 0;
      sub_1000216B4(&v21);
      sub_10000C704(&v19, __p[1], v23 - __p[1]);
      v8 = sub_10000C5E0(&v19);
      sub_10000C704(&v17, __p[1], v23 - __p[1]);
      v9 = sub_10000C5F8(&v17);
      v15 = sub_10024E070(0, v8, v9, v10, v11, v12, v13, v14);
      v17 = &off_100AE0A78;
      if (v18)
      {
        sub_10000C808(v18);
      }

      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }

      sub_100022214(&v21);
      sub_10002249C(&v21);
      if (__p[1])
      {
        *&v23 = __p[1];
        operator delete(__p[1]);
      }

      v7 = v15 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v7 = 111;
  }

  sub_1000088CC(v24);
  return v7;
}

void sub_1005A97D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_10002249C(&a17);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_1000088CC(v20 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A9880(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 160);
  v5 = sub_10000C7D0();
  if (*(a1 + 56) == 1)
  {
    v6 = *(v5 + 800);
    sub_10000801C(v24);
    if ((v6 - 1) > 0xF9E)
    {
      v15 = 1;
    }

    else
    {
      *__p = 0u;
      v23 = 0u;
      sub_10057C6A8(__p, 0);
      sub_10057C70C(__p, *a3);
      sub_10057C70C(__p, a3[1]);
      sub_10057C70C(__p, a3[2]);
      sub_10057C70C(__p, a3[3]);
      sub_10057C70C(__p, a3[4]);
      sub_10057C70C(__p, a3[5]);
      sub_10057C70C(__p, a3[6]);
      sub_10057C70C(__p, a3[7]);
      sub_10057C70C(__p, a3[8]);
      sub_10057C70C(__p, a3[9]);
      sub_10057C70C(__p, a3[10]);
      sub_10057C70C(__p, a3[11]);
      sub_10057C70C(__p, a3[12]);
      sub_10057C70C(__p, a3[13]);
      sub_10057C70C(__p, a3[14]);
      v21 = 0;
      sub_1000216B4(&v21);
      sub_10000C704(&v19, __p[1], v23 - __p[1]);
      v7 = sub_10000C5E0(&v19);
      sub_10000C704(&v17, __p[1], v23 - __p[1]);
      v8 = sub_10000C5F8(&v17);
      v14 = sub_10024E0D0(0, v7, v8, v9, v10, v11, v12, v13);
      v17 = &off_100AE0A78;
      if (v18)
      {
        sub_10000C808(v18);
      }

      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }

      sub_100022214(&v21);
      sub_10002249C(&v21);
      if (__p[1])
      {
        *&v23 = __p[1];
        operator delete(__p[1]);
      }

      v15 = v14 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v15 = 111;
  }

  sub_1000088CC(v24);
  return v15;
}

void sub_1005A9AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_10002249C(&a17);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_1000088CC(v20 - 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A9B78(uint64_t a1, uint64_t a2, char *a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 160);
  v5 = *a3;
  v6 = sub_10000C7D0();
  if (*(a1 + 56) == 1)
  {
    v7 = *(v6 + 800);
    sub_10000801C(v15);
    if ((v7 - 1) > 0xF9E)
    {
      v12 = 1;
    }

    else
    {
      v14 = 0;
      sub_1000216B4(&v14);
      v11 = sub_10024E100(0, (4 * v5) | 1u, *a3, (a3 + 2), (a3 + 34), v8, v9, v10);
      sub_100022214(&v14);
      sub_10002249C(&v14);
      v12 = v11 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v12 = 111;
  }

  sub_1000088CC(v15);
  return v12;
}

void sub_1005A9C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005A9C9C(uint64_t a1)
{
  v34 = 2;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Putting device into test mode", buf, 2u);
  }

  *buf = 0;
  v33 = 0;
  sub_100007F88(buf, a1 + 160);
  if ((*(a1 + 56) & 0xFFFFFFFD) != 1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    goto LABEL_15;
  }

  sub_10000801C(buf);
  v31 = 0;
  sub_1000216B4(&v31);
  byte_100BCE7AD = 1;
  v10 = sub_10024DFC8(sub_1005A4698, v3, v4, v5, v6, v7, v8, v9);
  sub_100022214(&v31);
  if (v10)
  {
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (!sub_1005A1F18(a1))
  {
    sub_1000618AC(&v31);
    sub_1002D35C4(1);
    sub_100022214(&v31);
    sub_1000618AC(&v31);
    byte_100BCE7AD = 1;
    v17 = sub_100018960(71, sub_1005A4698, v11, v12, v13, v14, v15, v16, 3);
    sub_100022214(&v31);
    if (v17)
    {
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (sub_1005A1F18(a1))
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100849318();
        }

        goto LABEL_32;
      }

      sub_1000618AC(&v31);
      byte_100BCE7AD = 1;
      v21 = sub_10024DD9C(sub_1005A4698, 2, 0, 1, &v34, v18, v19, v20);
      sub_100022214(&v31);
      if (!v21)
      {
        if (sub_1005A1F18(a1))
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100849388();
          }

          goto LABEL_32;
        }

        sub_1000618AC(&v31);
        byte_100BCE7AD = 1;
        v29 = sub_10024E3F0(sub_1005A4698, v22, v23, v24, v25, v26, v27, v28, v30);
        sub_100022214(&v31);
        if (!v29)
        {
          if (!sub_1005A1F18(a1))
          {
            sub_1000618AC(&v31);
            sub_10023B3B4(1);
            sub_100022214(&v31);
            sub_100007FB8(buf);
            *(a1 + 226) = 1;
            sub_10002249C(&v31);
LABEL_15:
            sub_1000088CC(buf);
            return;
          }

          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }

        if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

LABEL_17:
        sub_1008491C8();
        goto LABEL_32;
      }

      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    sub_1008492A8();
    goto LABEL_32;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
LABEL_31:
    sub_100849238();
  }

LABEL_32:
  sub_1000C52F4(408);
  __break(1u);
}

void sub_1005AA01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AA044(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 160);
  *a2 = *(a1 + 226);
  sub_1000088CC(v5);
  return 0;
}

uint64_t sub_1005AA094(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Putting device into LE TX test mode", buf, 2u);
  }

  *buf = 0;
  v18 = 0;
  sub_100007F88(buf, a1 + 160);
  if ((*(a1 + 56) & 0xFFFFFFFD) == 1)
  {
    if (*(a1 + 227) == 1)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100849468();
      }

      v9 = 1;
    }

    else
    {
      sub_10000801C(buf);
      v16 = 0;
      sub_1000216B4(&v16);
      v9 = sub_1002E8C54(((a2 - 2402) / 2), a3, a4, v10, v11, v12, v13, v14);
      sub_100022214(&v16);
      if (v9)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008493F8();
        }

        v9 = 111;
      }

      else
      {
        *(a1 + 227) = 1;
      }

      sub_10002249C(&v16);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v9 = 111;
  }

  sub_1000088CC(buf);
  return v9;
}

void sub_1005AA21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AA244(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Putting device into LE RX test mode", buf, 2u);
  }

  *buf = 0;
  v16 = 0;
  sub_100007F88(buf, a1 + 160);
  if ((*(a1 + 56) & 0xFFFFFFFD) == 1)
  {
    if (*(a1 + 227) == 1)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100849468();
      }

      v5 = 1;
    }

    else
    {
      sub_10000801C(buf);
      v14 = 0;
      sub_1000216B4(&v14);
      v5 = sub_1002E8AA4(((a2 - 2402) / 2), v6, v7, v8, v9, v10, v11, v12);
      sub_100022214(&v14);
      if (v5)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008493F8();
        }

        v5 = 111;
      }

      else
      {
        *(a1 + 227) = 1;
      }

      sub_10002249C(&v14);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v5 = 111;
  }

  sub_1000088CC(buf);
  return v5;
}

void sub_1005AA3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AA3DC(int a1, int a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v4 = off_100B50A98;

  return sub_1005AA438(v4, a1, a2);
}

uint64_t sub_1005AA438(uint64_t a1, int a2, int a3)
{
  *(a1 + 227) = 0;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = a2;
    v8 = 1024;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LE test mode stopped : %{bluetooth:OI_STATUS}u, packets = %d", v7, 0xEu);
  }

  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  return sub_100575B64(off_100B50898);
}

uint64_t sub_1005AA524(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping LE test mode", buf, 2u);
  }

  *buf = 0;
  v14 = 0;
  sub_100007F88(buf, a1 + 160);
  if ((*(a1 + 56) & 0xFFFFFFFD) == 1)
  {
    if (*(a1 + 227))
    {
      sub_10000801C(buf);
      v12 = 0;
      sub_1000216B4(&v12);
      v10 = sub_1002E8EC0(sub_1005AA3DC, v3, v4, v5, v6, v7, v8, v9);
      sub_100022214(&v12);
      if (v10)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008494E0();
        }

        v10 = 111;
      }

      sub_10002249C(&v12);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008494A4();
      }

      v10 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v10 = 111;
  }

  sub_1000088CC(buf);
  return v10;
}

void sub_1005AA684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005AA6AC(uint64_t a1, void *a2)
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

void sub_1005AA818(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current <= 3600.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = Current + -3600.0;
  }

  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  sub_1005AA958(&v9, *(a1 + 576), (a1 + 584));
  sub_1005AC6F0(a1 + 576, *(a1 + 584));
  *(a1 + 576) = a1 + 584;
  *(a1 + 584) = 0u;
  v4 = v9;
  if (v9 != v10)
  {
    do
    {
      if (*(v4 + 4) > v3)
      {
        v10[3] = (v4 + 4);
        v5 = sub_1005ACFE8(a1 + 576, v4 + 4);
        std::string::operator=((v5 + 5), (v4 + 5));
      }

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

    while (v7 != v10);
  }

  sub_1005AC6F0(&v9, v10[0]);
}

uint64_t sub_1005AA958(uint64_t result, double *a2, double *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005ACCA0(v5, (v5 + 8), v4 + 4);
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

void sub_1005AA9E0(void *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = a1[74];
    *buf = 134218240;
    v14 = Current;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:        fWakeHistoryMap: %f, current size: %lu", buf, 0x16u);
  }

  v5 = a1[72];
  v6 = a1 + 73;
  if (v5 != a1 + 73)
  {
    v7 = qword_100BCE8D8;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v5 + 5;
        if (*(v5 + 63) < 0)
        {
          v8 = *v8;
        }

        v9 = *(v5 + 4);
        *buf = 134218242;
        v14 = v9;
        v15 = 2082;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:        %f: %{public}s", buf, 0x16u);
        v7 = qword_100BCE8D8;
      }

      v10 = v5[1];
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
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != v6);
  }
}

void sub_1005AAB74(id a1)
{
  v8 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "BluetoothTTR");
  sub_100007E30(__p, "WakeLimitPerHour");
  v2 = (*(*v1 + 88))(v1, buf, __p, &v8);
  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = v8;
  dword_100B54A7C = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ABC Trigger: Wake Limit over-riden to: %d", buf, 8u);
  }
}

void sub_1005AACB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AAD14(uint64_t a1)
{
  sub_1005AC1F0(a1);

  operator delete();
}

void sub_1005AAD6C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005AADC0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1005AADC0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void sub_1005AAE0C(uint64_t a1, uint64_t a2)
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
    sub_1005AAED8((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005AAED8(void *a1, char *__src, char *a3)
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

void sub_1005AB074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AB0AC(uint64_t a1, uint64_t a2)
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
    sub_1005AB178((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005AB178(void *a1, char *__src, char *a3)
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

void sub_1005AB314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AB34C(uint64_t a1, uint64_t a2)
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

void sub_1005AB424(uint64_t a1, uint64_t a2)
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

void sub_1005AB4FC(uint64_t a1, uint64_t a2)
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

void sub_1005AB5D4(uint64_t a1, uint64_t a2)
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
    sub_1005AB6A0((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005AB6A0(void *a1, char *__src, char *a3)
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

void sub_1005AB83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AB874(id a1, _xpc_activity_s *a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100847620();
  }

  v2 = sub_10057A798(off_100B512C0);
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timeout passed. Not Resetting the denylist since Airplane mode is enabled", buf, 2u);
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v6 = sub_1005A0378(v5);
    sub_1005A0830(1, v6);
  }

  else
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timeout passed. Resetting the denylist", v7, 2u);
    }

    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    sub_1005BC7F8(0.0);
    sub_10023E7B4();
  }
}

void sub_1005AB97C(uint64_t a1, uint64_t a2)
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

void sub_1005ABA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if ((a1 - 701) > 0x44)
  {
    if (a1)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100849550();
      }

      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008495C0();
  }

  v9 = sub_10024DDD0(sub_1005ABB44, "iOS", a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    return;
  }

  v8 = v9;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848D2C();
  }

LABEL_10:
  v10 = off_100B6F618;
  if (off_100B6F618)
  {
    off_100B6F618 = 0;
    v10(v8);
  }
}

void sub_1005ABB44(uint64_t a1)
{
  if (sub_100243344() < 4)
  {

    sub_1005ABC00(a1);
  }

  else
  {
    sub_1005A31F4();
    v7 = sub_10024E040(sub_1005ABC00, 1, byte_100B6F508, v2, v3, v4, v5, v6);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100849630();
      }

      v9 = off_100B6F618;
      if (off_100B6F618)
      {
        off_100B6F618 = 0;
        v9(v8);
      }
    }
  }
}

void sub_1005ABC00(uint64_t a1)
{
  v2 = sub_10000C798();
  v3 = (*(*v2 + 80))(v2);
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008496A0();
    }

    v4 = off_100B6F618;
    if (off_100B6F618)
    {
      off_100B6F618 = 0;
      v5 = a1;
LABEL_43:
      v4(v5);
      return;
    }

    return;
  }

  v6 = v3;
  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) >= 0xBB8u)
  {
    if (qword_100B6F638 != -1)
    {
      sub_100849710();
    }

    if (byte_100B6F636 == 1)
    {
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v15[0] = 67109120;
        v15[1] = 42;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Override deviceType = %d", v15, 8u);
      }

LABEL_22:
      v8 = 1792;
LABEL_24:
      v9 = 4;
      goto LABEL_28;
    }
  }

  if (v6 <= 20)
  {
    if (v6 != 7)
    {
      if (v6 == 8)
      {
        v8 = 256;
        v9 = 16;
      }

      else
      {
        if (v6 != 12)
        {
          goto LABEL_31;
        }

        v8 = 512;
        v9 = 12;
      }

      goto LABEL_28;
    }

    v8 = 256;
    goto LABEL_24;
  }

  switch(v6)
  {
    case 21:
      v8 = 1024;
      v9 = 28;
      break;
    case 40:
      v8 = 1024;
      v9 = 72;
      break;
    case 42:
      goto LABEL_22;
    default:
      goto LABEL_31;
  }

LABEL_28:
  v10 = sub_1002448D0(v8, v9);
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100849724();
    }

LABEL_41:
    v4 = off_100B6F618;
    if (!off_100B6F618)
    {
      return;
    }

    off_100B6F618 = 0;
    v5 = v10;
    goto LABEL_43;
  }

LABEL_31:
  if (qword_100B512E8 != -1)
  {
    sub_100849794();
  }

  v11 = sub_1006EA7EC();
  v12 = sub_1002FD254(v11);
  if (v12)
  {
    v10 = v12;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008497BC();
    }

    goto LABEL_41;
  }

  if (qword_100B512E8 != -1)
  {
    sub_100849794();
  }

  v13 = sub_1006EA7F8();
  v14 = sub_1002FD4B8(v13);
  if (v14)
  {
    v10 = v14;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084982C();
    }

    goto LABEL_41;
  }

  v4 = off_100B6F618;
  if (off_100B6F618)
  {
    off_100B6F618 = 0;
    v5 = 0;
    goto LABEL_43;
  }
}

void sub_1005ABF10(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskCODandNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6F636);
  v3 = byte_100B6F636;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch", buf, 2u);
  }
}

void sub_1005AC014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1005AC0B0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v2 = off_100B50A98;
  v3 = *(a1 + 32);

  return sub_1005A2F18(v2, v3);
}

uint64_t sub_1005AC11C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  result = sub_1005A4324(off_100B50A98);
  if (result)
  {
    *(a1 + 8) = 1;
  }

  else
  {
    *(a1 + 16) = 100;
    v3 = sub_100017F4C();

    return sub_100070A6C(v3, a1);
  }

  return result;
}

uint64_t sub_1005AC198(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v2 = off_100B50A98;
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);

  return sub_1005A41B4(v2, v3, v4);
}

uint64_t sub_1005AC1F0(uint64_t a1)
{
  *a1 = off_100AFEA48;
  *(a1 + 8) = &off_100AFEAE0;
  *(a1 + 16) = off_100AFEAF8;
  *(a1 + 24) = &off_100AFEB28;
  *(a1 + 32) = &off_100AFEB40;
  *(a1 + 40) = &off_100AFEB58;
  *(a1 + 48) = off_100AFEB70;
  sub_1005AC6F0(a1 + 576, *(a1 + 584));
  sub_10007A068(a1 + 504);

  sub_10007A068(a1 + 424);
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_10007A068(a1 + 240);
  sub_10007A068(a1 + 160);
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 104);
  sub_1005AAD6C(&v5);
  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1005AC6F0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1005AC6F0(a1, *a2);
    sub_1005AC6F0(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_1005ACA74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10042A5D4(result, a4);
  }

  return result;
}

void sub_1005ACB90()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 48) = v3;
    operator delete(v3);
  }

  sub_1003C95E8(v1, *(v0 + 16));

  operator delete();
}

uint64_t sub_1005ACCA0(void *a1, double *a2, double *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_1005ACD30(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1005ACECC();
  }

  return result;
}

double *sub_1005ACD30(void *a1, double *a2, double **a3, double *a4, double *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v16 + 1;
        v16 = *(v16 + 1);
      }

      while (v16);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[4];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 1;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1005ACF68(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1005ACF84(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1005ACF84(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_1005ACFE8(uint64_t a1, double *a2)
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
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1005AD0C0()
{
  v0 = objc_autoreleasePoolPush();
  sub_100044BBC(&unk_100BCE708);
  __cxa_atexit(sub_10007A068, &unk_100BCE708, &_mh_execute_header);
  sub_100364534(&stru_100BCE748);
  __cxa_atexit(sub_1003645A0, &stru_100BCE748, &_mh_execute_header);
  sub_100364534(&stru_100BCE778);
  __cxa_atexit(sub_1003645A0, &stru_100BCE778, &_mh_execute_header);
  sub_100364534(&stru_100BCE7B0);
  __cxa_atexit(sub_1003645A0, &stru_100BCE7B0, &_mh_execute_header);
  sub_100044BBC(&unk_100BCE7E0);
  __cxa_atexit(sub_10007A068, &unk_100BCE7E0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1005AD1DC(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  if (qword_100B50DB8 != -1)
  {
    sub_10084989C();
  }

  v10 = 0;
  v11 = 0;
  sub_1005C635C(off_100B50DB0, a1, a4, &v10);
  if (v10)
  {
    sub_1005C1D20(v10, *a4, a2, a3);
    v8 = 0;
  }

  else
  {
    v8 = 7;
  }

  if (v11)
  {
    sub_100117644(v11);
  }

  return v8;
}

void sub_1005AD280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AD298(unint64_t *a1)
{
  if (qword_100B50DB8 != -1)
  {
    sub_10084989C();
  }

  sub_1005C6734(off_100B50DB0, *a1);
  *a1 = 0;
  return 0;
}

uint64_t sub_1005AD2E8(unint64_t a1, unsigned int a2, int a3)
{
  if (qword_100B50DB8 != -1)
  {
    sub_10084989C();
  }

  v16 = 0;
  v17 = 0;
  sub_1005C6590(off_100B50DB0, a1, &v16);
  if (v16)
  {
    if (qword_100B50B88 != -1)
    {
      sub_1008498B0();
    }

    v6 = sub_1000117DC(qword_100B50B80, a1);
    if (v6)
    {
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v6, __p);
        v8 = v15 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to start classic scan", buf, 0xCu);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (qword_100B50DB8 != -1)
    {
      sub_1008498D8();
    }

    v9 = off_100B50DB0;
    v12 = v16;
    v13 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = sub_1005C6EBC(v9, &v12, a2, a3);
    if (v13)
    {
      sub_100117644(v13);
    }
  }

  else
  {
    v10 = 7;
  }

  if (v17)
  {
    sub_100117644(v17);
  }

  return v10;
}

void sub_1005AD4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100117644(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AD4E4(unint64_t a1)
{
  if (qword_100B50DB8 != -1)
  {
    sub_10084989C();
  }

  v7 = 0;
  v8 = 0;
  sub_1005C6590(off_100B50DB0, a1, &v7);
  if (v7)
  {
    if (qword_100B50DB8 != -1)
    {
      sub_1008498D8();
    }

    v2 = off_100B50DB0;
    v5 = v7;
    v6 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = sub_1005C6EBC(v2, &v5, 2u, 2048);
    if (v6)
    {
      sub_100117644(v6);
    }
  }

  else
  {
    v3 = 7;
  }

  if (v8)
  {
    sub_100117644(v8);
  }

  return v3;
}

void sub_1005AD5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  if (a12)
  {
    sub_100117644(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AD5D8(unint64_t a1)
{
  if (qword_100B50DB8 != -1)
  {
    sub_10084989C();
  }

  v7 = 0;
  v8 = 0;
  sub_1005C6590(off_100B50DB0, a1, &v7);
  if (v7)
  {
    if (qword_100B50DB8 != -1)
    {
      sub_1008498D8();
    }

    v2 = off_100B50DB0;
    v5 = v7;
    v6 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = sub_1005C6B78(v2, &v5);
    if (v6)
    {
      sub_100117644(v6);
    }
  }

  else
  {
    v3 = 7;
  }

  if (v8)
  {
    sub_100117644(v8);
  }

  return v3;
}

void sub_1005AD6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  if (a12)
  {
    sub_100117644(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AD6C4(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (qword_100B50DB8 != -1)
  {
    sub_10084989C();
  }

  v17 = 0;
  v18 = 0;
  sub_1005C6590(off_100B50DB0, a1, &v17);
  if (v17)
  {
    __p = 0;
    v15 = 0;
    v16 = 0;
    if ((v17 + 256) == &__p)
    {
      v8 = 0;
    }

    else
    {
      sub_10051AE40(&__p, *(v17 + 256), *(v17 + 264), (*(v17 + 264) - *(v17 + 256)) >> 3);
      v8 = __p;
    }

    v10 = 0;
    if (a4)
    {
      while (v8 != v15)
      {
        v11 = *v8;
        if (qword_100B508F0 != -1)
        {
          sub_100849900();
        }

        v12 = sub_10056A4C4(off_100B508E8, a1, v11);
        if (!v12)
        {
          v9 = 7;
          goto LABEL_17;
        }

        *(a2 + 8 * v10++) = v12;
        ++v8;
        if (a4 == v10)
        {
          v10 = a4;
          break;
        }
      }
    }

    v9 = 0;
    *a3 = v10;
LABEL_17:
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v9 = 7;
  }

  if (v18)
  {
    sub_100117644(v18);
  }

  return v9;
}

void sub_1005AD824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_100117644(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AD850(unint64_t a1, const void *a2, size_t a3)
{
  if (qword_100B50DB8 != -1)
  {
    sub_10084989C();
  }

  v8 = 0;
  v9 = 0;
  sub_1005C6590(off_100B50DB0, a1, &v8);
  if (v8)
  {
    v6 = sub_1005C29C0(v8, a2, a3);
  }

  else
  {
    v6 = 7;
  }

  if (v9)
  {
    sub_100117644(v9);
  }

  return v6;
}

void sub_1005AD8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AD900(unint64_t a1, const void *a2, size_t a3)
{
  if (qword_100B50DB8 != -1)
  {
    sub_10084989C();
  }

  v8 = 0;
  v9 = 0;
  sub_1005C6590(off_100B50DB0, a1, &v8);
  if (v8)
  {
    v6 = sub_1005C2C20(v8, a2, a3);
  }

  else
  {
    v6 = 7;
  }

  if (v9)
  {
    sub_100117644(v9);
  }

  return v6;
}

void sub_1005AD998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005ADAE8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = sub_100321BCC(a1, a2, a3);
  *v4 = off_100AFF0E8;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 1065353216;
  sub_100044BBC(v4 + 232);
  *(a1 + 296) = 0;
  v5 = [NSMutableData dataWithLength:0];
  v6 = *(a1 + 296);
  *(a1 + 296) = v5;

  return a1;
}

void sub_1005ADB78(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 232);
  sub_1001392B8(v2);
  sub_100321CA8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005ADBAC(uint64_t a1)
{
  *a1 = off_100AFF0E8;
  for (i = *(a1 + 208); i; i = *i)
  {
    if (!i[3])
    {
      v3 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
      {
        sub_100849928(v5, &v6, v3);
      }
    }
  }

  sub_10007A068(a1 + 232);
  sub_1001392B8(a1 + 192);
  sub_100321CA8(a1);
  return a1;
}

void sub_1005ADCA8(uint64_t a1)
{
  sub_1005ADBAC(a1);

  operator delete();
}

void sub_1005ADCE0(uint64_t a1)
{
  if (*(a1 + 42))
  {
    v1 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Keyholed input device is already scheduled", v3, 2u);
    }
  }

  else
  {
    *(a1 + 42) = 1;
    for (i = *(a1 + 208); i; i = *i)
    {
      IOHIDUserDeviceScheduleWithDispatchQueue();
    }
  }
}

void sub_1005ADD7C(uint64_t a1)
{
  if (*(a1 + 42) == 1)
  {
    *(a1 + 42) = 0;
    for (i = *(a1 + 208); i; i = sub_1005AE9FC((a1 + 192), i))
    {
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
      CFRelease(*(i + 24));
    }

    v3 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Keyholed input device is releasing IOHIDUserDevice", buf, 2u);
    }

    sub_1003226AC(a1, 0, -536870212, 0);
  }

  else
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Keyholed input device is not scheduled", v5, 2u);
    }
  }
}

uint64_t sub_1005ADE88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a2 mutableCopy];
  v12 = [NSData dataWithBytes:a3 length:a4];
  [v11 setObject:v12 forKeyedSubscript:@"ReportDescriptor"];
  v13 = [NSNumber numberWithUnsignedChar:a5];
  [v11 setObject:v13 forKeyedSubscript:@"KeyholeReportID"];

  v14 = [NSNumber numberWithUnsignedChar:a6];
  [v11 setObject:v14 forKeyedSubscript:@"bInterfaceNumber"];

  v15 = IOHIDUserDeviceCreateWithOptions();
  v16 = v15;
  if (v15)
  {
    v18[0] = a5;
    v19 = v15;
    sub_1005AEA40((a1 + 192), v18);
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100849978();
  }

  return v16;
}

uint64_t sub_1005AE020(uint64_t a1, void *a2)
{
  *v10 = xmmword_1008AA5CE;
  *&v10[14] = 0xC002810125001503;
  v3 = [a2 mutableCopy];
  v4 = [NSData dataWithBytes:v10 length:22];
  [v3 setObject:v4 forKeyedSubscript:@"ReportDescriptor"];
  [v3 setObject:&off_100B34588 forKeyedSubscript:@"ExtendedData"];
  v5 = IOHIDUserDeviceCreateWithOptions();
  v6 = v5;
  if (v5)
  {
    v8[0] = 0;
    v9 = v5;
    sub_1005AEA40((a1 + 192), v8);
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_1008499EC();
  }

  return v6;
}

void sub_1005AE1BC(id *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *a2;
  switch(v6)
  {
    case 254:
      if (![a1[37] length] && os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100849A60();
      }

      [a1[37] appendBytes:a2 + 1 length:a3 - 1];
      (*(*a1 + 8))(a1, [a1[37] mutableBytes], objc_msgSend(a1[37], "length"));
      [a1[37] setLength:0];
      break;
    case 253:
      if (![a1[37] length] && os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100849AA0();
      }

      goto LABEL_11;
    case 252:
      if ([a1[37] length])
      {
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
        {
          sub_100849AE0();
        }

        [a1[37] setLength:0];
      }

LABEL_11:
      [a1[37] appendBytes:a2 + 1 length:a3 - 1];
      return;
    default:
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100849B20();
      }

      break;
  }
}

uint64_t sub_1005AE358(uint64_t a1, int a2, int a3, void *a4, uint64_t *a5, int a6)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 232);
  v12 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a5;
    *buf = 67109888;
    v28 = a2;
    v29 = 1024;
    v30 = a3;
    v31 = 2048;
    v32 = v13;
    v33 = 1024;
    v34 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "getReportWithKeyhole type = %u, reportID = 0x%x, max reportLength = %lu, keyholeID = 0x%x", buf, 0x1Eu);
  }

  if (a4 && a5)
  {
    v14 = *a5;
    *a5 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1005AE6AC;
    v24[3] = &unk_100AFF168;
    v24[4] = a1;
    v25 = a3;
    v15 = sub_100322C30(a1, v24);
    if (v15)
    {
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100849C00();
      }
    }

    else
    {
      v16 = v14 + 1;
      v23 = v16;
      *(a1 + 32) = &v23;
      *(a1 + 24) = malloc_type_malloc(v16, 0x100004077774924uLL);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1005AE714;
      v20[3] = &unk_100AFF188;
      v20[4] = a1;
      v21 = a2;
      v22 = a6;
      v15 = sub_100322C30(a1, v20);
      if (v15)
      {
        v17 = qword_100BCEAA0;
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v28 = a3;
          v29 = 1024;
          v30 = a6;
          v31 = 1024;
          LODWORD(v32) = v15;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "getReportWithKeyhole 0x%x with keyholeID 0x%x failed: 0x%x", buf, 0x14u);
        }
      }

      else
      {
        v18 = v23;
        if (v23 < 2 || v23 > v16)
        {
          if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
          {
            sub_100849C84();
          }
        }

        else
        {
          memcpy(a4, (*(a1 + 24) + 1), v23 - 1);
          *a5 = v18 - 1;
        }
      }

      *(a1 + 32) = 0;
      free(*(a1 + 24));
      *(a1 + 24) = 0;
    }
  }

  else
  {
    v15 = 3758097090;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100849B90();
    }
  }

  sub_1000088CC(v26);
  return v15;
}

void sub_1005AE68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AE6AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 255;
  HIBYTE(v3) = *(a1 + 40);
  return (*(**(v1 + 8) + 8))(*(v1 + 8), v1, 3, 255, &v3, 2);
}

uint64_t sub_1005AE754(uint64_t a1, int a2, int a3, const void *a4, size_t a5, int a6)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 232);
  v12 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v22 = a2;
    v23 = 1024;
    v24 = a3;
    v25 = 2048;
    v26 = a5;
    v27 = 1024;
    v28 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setReportWithKeyhole type = %u, reportID = 0x%x, reportLength = %lu, keyholeID = 0x%x", buf, 0x1Eu);
  }

  if (a4 && a5)
  {
    v13 = malloc_type_malloc(a5 + 1, 0x100004077774924uLL);
    *v13 = a6;
    memcpy(v13 + 1, a4, a5);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1005AE9B8;
    v17[3] = &unk_100AFF1A8;
    v18 = a2;
    v19 = a6;
    v17[4] = a1;
    v17[5] = v13;
    v17[6] = a5 + 1;
    v14 = sub_100322C30(a1, v17);
    if (v14)
    {
      v15 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        v22 = a3;
        v23 = 1024;
        v24 = a6;
        v25 = 1024;
        LODWORD(v26) = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "setReportWithKeyhole 0x%x with keyholeID 0x%x failed: 0x%x", buf, 0x14u);
      }
    }

    free(v13);
  }

  else
  {
    v14 = 3758097090;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100849D08();
    }
  }

  sub_1000088CC(v20);
  return v14;
}

void sub_1005AE998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AE9FC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1003619C0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t **sub_1005AEA40(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_1005AEC78(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = off_100AFF238;
  sub_100044BBC(a1 + 8);
  *(a1 + 72) = 0;
  *(a1 + 76) = a4;
  *a1 = off_100AFF1D8;
  *(a1 + 80) = a2;
  *(a1 + 88) = off_100AFF210;
  sub_100044BBC(a1 + 96);
  *(a1 + 160) = 0;
  *(a1 + 164) = a3;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_1005AED34(_Unwind_Exception *a1)
{
  *v1 = v2;
  sub_10007A068(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_1005AED50(void *a1)
{
  *a1 = off_100AFF1D8;
  a1[11] = off_100AFF210;
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 12);
  *a1 = off_100AFF238;
  sub_10007A068(a1 + 1);
  return a1;
}

void sub_1005AEDF8(void *a1)
{
  sub_1005AED50(a1);

  operator delete();
}

void sub_1005AEE30(uint64_t a1)
{
  sub_1005AED50((a1 - 88));

  operator delete();
}

uint64_t sub_1005AEE6C(uint64_t a1, uint64_t a2, int a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  sub_10056923C((a1 + 168), a2);
  sub_10000801C(v8);
  if (!a3)
  {
    v7 = 0;
    sub_1000D42DC(&v7, 0);
    v7 += 120;
    sub_10054D528(a2, &v7);
    (*(**(a1 + 80) + 24))(*(a1 + 80), a2);
  }

  sub_1005AEF48(a1);
  return sub_1000088CC(v8);
}

void sub_1005AEF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AEF48(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 160);
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Stepping scan with mode %u", buf, 8u);
  }

  v4 = *(a1 + 160);
  if (v4 == 16)
  {
LABEL_11:
    if (sub_1005AF620(a1))
    {
      return sub_1000088CC(v18);
    }

    goto LABEL_12;
  }

  if (!v4)
  {
    if (sub_1005AF3C0(a1) && sub_1005AF620(a1))
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      if (sub_10024DE0C(sub_1005AF6A8, 2160, v5, v6, v7, v8, v9, v10) && os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
      {
        sub_100849D80();
      }

      sub_10002249C(buf);
      return sub_1000088CC(v18);
    }

    goto LABEL_11;
  }

LABEL_12:
  buf[0] = 0;
  sub_1000216B4(buf);
  if (sub_10024DE0C(sub_1005AF6A8, 0x2000, v11, v12, v13, v14, v15, v16) && os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
  {
    sub_100849DB4();
  }

  sub_10002249C(buf);
  sub_10000801C(v18);
  *buf = 0;
  v20 = 0;
  sub_100007F88(buf, a1 + 8);
  *(a1 + 72) = 0;
  sub_1000088CC(buf);
  (*(**(a1 + 80) + 40))(*(a1 + 80), 0);
  return sub_1000088CC(v18);
}

void sub_1005AF130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002249C(&a11);
  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

void sub_1005AF170(uint64_t a1)
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
    sub_1005AEF48(a1);
  }
}

uint64_t sub_1005AF1D0(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 8);
  *(a1 + 72) = 1;
  sub_1000088CC(v3);
  return (***(a1 + 80))();
}

uint64_t sub_1005AF258(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 96);
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 160);
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping scan with mode %u", buf, 8u);
  }

  v4 = *(a1 + 160);
  if (v4 != 128)
  {
    if (v4 == 16)
    {
      *(a1 + 176) = *(a1 + 168);
      *(a1 + 160) = 128;
      sub_10000801C(v6);
      if (qword_100B54670 != -1)
      {
        sub_100849DE8();
      }

      sub_100587EFC();
    }

    if (v4)
    {
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
      {
        sub_100849E10();
      }
    }

    else
    {
      *(a1 + 160) = 128;
    }
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1005AF3C0(uint64_t a1)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_100849E44();
  }

  v2 = sub_10009E064(off_100B50898, &__p);
  v3 = __p;
  if (v2 || v17 == __p)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v14[0] = sub_1005AF6F4;
  sub_1005AF8D4(__p, v17, v14, 126 - 2 * __clz((v17 - __p) >> 3), 1);
  v3 = __p;
  if (__p != v17)
  {
    while (1)
    {
      v6 = *(a1 + 164);
      if (!v6)
      {
        goto LABEL_23;
      }

      v7 = *v3;
      v8 = 1;
      while ((v6 & v8) == 0)
      {
LABEL_15:
        v8 *= 2;
        if (v8 > v6)
        {
          goto LABEL_23;
        }
      }

      if (sub_1000DFB74(v7, v6 & v8))
      {
        break;
      }

      v9 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v7, v14);
        v10 = v15;
        v11 = v14[0];
        v12 = sub_10054D4E0(v7);
        *buf = 136446466;
        v13 = v14;
        if (v10 < 0)
        {
          v13 = v11;
        }

        v20 = v13;
        v21 = 1024;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Checking device %{public}s with last seen time %u", buf, 0x12u);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }
      }

      sub_1005AF72C(a1, v7);
LABEL_23:
      if (++v3 == v17)
      {
        v4 = 1;
        v3 = __p;
        goto LABEL_5;
      }
    }

    v6 = *(a1 + 164);
    goto LABEL_15;
  }

  v4 = 1;
LABEL_5:
  if (v3)
  {
    v17 = v3;
    operator delete(v3);
  }

  return v4;
}

BOOL sub_1005AF620(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = *(a1 + 176);
  if (v1 != v2)
  {
    v3 = *v1;
    *(a1 + 160) = 16;
    if (qword_100B54670 != -1)
    {
      sub_100849E58();
    }

    sub_100587D6C(qword_100B54668, v3);
  }

  *(a1 + 160) = 128;
  return v1 != v2;
}

void sub_1005AF6A8(int a1)
{
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
    {
      sub_100849E6C();
    }
  }
}

void sub_1005AF72C(void *a1, uint64_t a2)
{
  if (!sub_1000E69B8((a1 + 21), a2))
  {
    v5 = a1[22];
    v4 = a1[23];
    if (v5 >= v4)
    {
      v7 = a1[21];
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
        sub_100008108((a1 + 21), v11);
      }

      v12 = (8 * v8);
      *v12 = a2;
      v6 = 8 * v8 + 8;
      v13 = a1[21];
      v14 = a1[22] - v13;
      v15 = v12 - v14;
      memcpy(v12 - v14, v13, v14);
      v16 = a1[21];
      a1[21] = v15;
      a1[22] = v6;
      a1[23] = 0;
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

    a1[22] = v6;
  }
}

uint64_t sub_1005AF8D4(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_1005B0118(v9, a2, a3);
      }

      else
      {

        return sub_1005B01E0(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_1005B07A4(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = sub_1005B027C(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = sub_1005B038C(v8, a2, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = sub_1005B04A8(v8, v49, a3);
    v9 = (v49 + 1);
    result = sub_1005B04A8(v49 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = sub_1005AF8D4(v8, v49, a3, -v11, a5 & 1);
      v9 = (v49 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return sub_1005AFFC4(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      sub_1005AFFC4(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_1005AFFC4(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_1005B0118(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_1005B01E0(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *sub_1005B027C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *sub_1005B038C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_1005B04A8(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_1005AFFC4(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_1005AFFC4(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_1005B07A4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_1005B08F0(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_1005B08F0(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = sub_1005B0A18(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          sub_1005B0AC4(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1005B08F0(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}