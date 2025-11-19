void sub_1005D4184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D41BC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 760);
  sub_10000C7D0();
  if (!sub_1004134D8())
  {
LABEL_5:
    sub_1005D43B4(a1, a2);
    return sub_1000088CC(v9);
  }

  if (a3 <= 9)
  {
    v8 = 0;
    sub_1000216B4(&v8);
    v6 = sub_100258284();
    if (!v6)
    {
      sub_1005D4298(v6, a2, 10);
    }

    sub_100022214(&v8);
    sub_10002249C(&v8);
    goto LABEL_5;
  }

  return sub_1000088CC(v9);
}

void sub_1005D4270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005D4298(uint64_t a1, uint64_t a2, int a3)
{
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delaying SCO connection by %d milliseconds", v5, 8u);
  }

  operator new();
}

uint64_t sub_1005D43B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D0048(a1, a2);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CBFC();
    }

    return 0;
  }

  v5 = v4;
  v6 = sub_1005D492C(a1, a2);
  v7 = sub_100320DC4(v5 + 400);
  v8 = qword_100BCE8F8;
  v9 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v7 != 3)
  {
    if (v9)
    {
      sub_1000E5A58(v6, __p);
      v14 = v24 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Making outgoing audio connection to device %{public}s", buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100364274(11);
    v15 = mach_absolute_time();
    if (qword_100B50940 != -1)
    {
      sub_10084C8A4();
    }

    *(off_100B50938 + 23) = v15;
    if (sub_100320F5C(v5 + 400))
    {
      if (sub_100320DC4(v5 + 400) == 1)
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084CB50();
        }

        goto LABEL_41;
      }

      v16 = sub_1005E0750(a1, v6);
      if (!v16)
      {
LABEL_41:
        sub_100320DCC(v5 + 400, 1);
        return 1;
      }
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v16 = sub_10021194C(a2);
      if (!v16)
      {
        v17 = sub_100320D9C(v5 + 400);
        v16 = sub_10024DEFC(sub_1005E06A8, v17 + 128);
      }

      sub_100022214(__p);
      sub_10002249C(__p);
      if (!v16)
      {
        goto LABEL_41;
      }
    }

    if (v16 == 1806)
    {
      v18 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v6, __p);
        v19 = v24 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Audio is already connected to device %{public}s", buf, 0xCu);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10069BC6C(v5, 1, 1806);
      sub_1005DC3F8(a1, a2);
      return 1;
    }

    v20 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v6, __p);
      v22 = v24 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v26 = v22;
      v27 = 1024;
      v28 = v16;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Audio connection to device %{public}s failed with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  if (v9)
  {
    sub_1000E5A58(v6, __p);
    v10 = v24 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Accepting incoming audio connection from device %{public}s", buf, 0xCu);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v11 = sub_1002119F0(a2, 1);
  v12 = sub_100320D9C(v5 + 400);
  sub_10024DEFC(sub_1005E06A8, v12 + 128);
  sub_100022214(__p);
  v13 = v11 == 0;
  if (v11)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CB8C();
    }

    sub_100320DCC(v5 + 400, 0);
    sub_1005DCA18(a1, a2, 0, v11);
  }

  else
  {
    sub_100320DCC(v5 + 400, 0);
  }

  sub_10002249C(__p);
  return v13;
}

void sub_1005D4830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D4850(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 760);
  v4 = *(a1 + 824);
  v5 = (a1 + 832);
  if (v4 == v5)
  {
LABEL_9:
    v9 = 0;
  }

  else
  {
    while (sub_100320D9C(v4[5] + 400) != a2)
    {
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
      if (v7 == v5)
      {
        goto LABEL_9;
      }
    }

    v9 = sub_100320D94(v4[5] + 400);
  }

  sub_1000088CC(v11);
  return v9;
}

uint64_t sub_1005D492C(uint64_t a1, unsigned int a2)
{
  v13 = a2;
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 760);
  v4 = *(a1 + 832);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 832;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 832 && *(v5 + 32) <= a2)
  {
    v14 = &v13;
    v11 = sub_1003750BC(a1 + 824, &v13);
    v9 = sub_100320D9C(v11[5] + 400);
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  sub_1000088CC(v12);
  return v9;
}

uint64_t sub_1005D4A04(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 760);
  v4 = *(a1 + 824);
  v5 = (a1 + 832);
  if (v4 == v5)
  {
LABEL_12:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v6 = sub_100320DB4(v4[5] + 400);
      v7 = v6 == *a2 && WORD2(v6) == *(a2 + 4);
      if (v7)
      {
        break;
      }

      v8 = v4[1];
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
          v9 = v4[2];
          v7 = *v9 == v4;
          v4 = v9;
        }

        while (!v7);
      }

      v4 = v9;
      if (v9 == v5)
      {
        goto LABEL_12;
      }
    }

    v10 = sub_100320D94(v4[5] + 400);
  }

  sub_1000088CC(v12);
  return v10;
}

void sub_1005D4AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D4AFC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 760);
  v6 = *(a1 + 832);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 832;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 != a1 + 832 && *(v7 + 32) <= a2)
  {
    v12 = sub_1005D492C(a1, a2);
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    sub_1000BE6F8((v12 + 128), a3);
    std::string::append(a3, "-tsco");
  }

  else
  {
LABEL_9:
    sub_100007E30(a3, "null");
  }

  return sub_1000088CC(v13);
}

void sub_1005D4BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

void sub_1005D4BFC(uint64_t a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    if (a2 > 7)
    {
      switch(a2)
      {
        case 8:
          operator new();
        case 16:
          operator new();
        case 32:
          operator new();
      }
    }

    else
    {
      switch(a2)
      {
        case 1:
          goto LABEL_8;
        case 2:
          operator new();
        case 4:
LABEL_8:
          operator new();
      }
    }

    sub_10039BE10(0, a1, &v5);
    *a3 = v5;
  }
}

void sub_1005D4DE0(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *(a2 + 776);
  if (v6 == 32)
  {
    v15 = 0;
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    v11 = 0u;
    *__p = 0u;
    v9 = 0u;
    *v10 = 0u;
    v7 = 0u;
    *v8 = 0u;
    sub_1000DE474(&v7 + 1);
    BYTE2(v8[0]) = 0;
    BYTE4(v8[0]) = 0;
    BYTE2(v10[0]) = 0;
    BYTE4(v10[0]) = 0;
    DWORD1(v13[1]) = 0;
    v9 = 0uLL;
    v8[1] = 0;
    LOBYTE(v10[0]) = 0;
    v11 = 0uLL;
    v10[1] = 0;
    LOBYTE(__p[0]) = 0;
    memset(v13, 0, 19);
    __p[1] = 0;
    BYTE8(v13[1]) = 1;
    *(&v13[1] + 14) = 0;
    *(&v13[1] + 9) = 0;
    v14 = 0uLL;
    *(&v13[2] + 1) = 0;
    LOBYTE(v15) = 0;
    *(&v15 + 2) = 0;
    sub_100536A18(a2, &v7);
    if (SHIBYTE(v13[0]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[1]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[1]);
    }

    nullsub_21(&v7 + 1);
    v6 = *(a2 + 776);
  }

  sub_1005D4BFC(a1, v6, a3);
}

uint64_t sub_1005D4F60(uint64_t a1, int a2)
{
  if ((a2 - 129) >= 2 && a2 != 255)
  {
    return 0;
  }

  v4 = 0;
  sub_1000216B4(&v4);
  v2 = sub_10023DEAC();
  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1005D4FD4(uint64_t a1, uint64_t a2)
{
  if (!a2 || !sub_10054FD60(a2))
  {
    return 0;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10084CC6C();
  }

  v2 = off_100B508E8;

  return sub_10056E240(v2);
}

uint64_t sub_1005D5034(uint64_t a1)
{
  sub_10032F49C(a1, 2);
  *a1 = off_100B007D8;
  *(a1 + 256) = off_100B00970;
  *(a1 + 264) = off_100B009B0;
  *(a1 + 272) = &off_100B009E0;
  *(a1 + 280) = off_100B009F8;
  *(a1 + 288) = &off_100B00A98;
  *(a1 + 296) = off_100B00AC0;
  *(a1 + 304) = off_100B00B30;
  *(a1 + 312) = off_100B00B70;
  *(a1 + 320) = &off_100B00BA0;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  sub_10031FEF8(a1 + 360);
  *(a1 + 752) = 0;
  sub_100044BBC(a1 + 760);
  *(a1 + 832) = 0u;
  *(a1 + 824) = a1 + 832;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "PTS");
  sub_100007E30(__p, "PhoneNumberHack");
  (*(*v2 + 72))(v2, buf, __p, a1 + 752);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
  }

  if (*(a1 + 752) == 1)
  {
    v3 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PTS phone number hack enabled", buf, 2u);
    }
  }

  return a1;
}

void sub_1005D52A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_10000CEDC(v21 + 824, *v22);
  sub_10007A068(v21 + 760);
  sub_100320110(v21 + 360);
  v24 = *(v21 + 336);
  if (v24)
  {
    *(v21 + 344) = v24;
    operator delete(v24);
  }

  sub_10032F580(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D5330(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(v10, "Handsfree");
  sub_100007E30(__p, "VVMSleep");
  (*(*v2 + 88))(v2, v10, __p, &dword_100B54AA0);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10084CC80();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 264);
  v3 = sub_100017E6C();
  sub_1005E8648(v3 + 424, a1 + 272);
  v4 = sub_1000D999C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005D5554;
  v7[3] = &unk_100ADF8F8;
  v7[4] = a1;
  sub_10000D334(v4, v7);
  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  sub_1000F0D9C(off_100B508E8 + 240, a1 + 312);
  if (qword_100B508D0 != -1)
  {
    sub_10084C854();
  }

  sub_1007986D0(off_100B508C8, a1 + 320);
  if (qword_100B50F68 != -1)
  {
    sub_10084CCA8();
  }

  sub_10012E3B0(off_100B50F60 + 24, a1 + 288);
  if (qword_100B50F88 != -1)
  {
    sub_10084CCD0();
  }

  sub_1006DC960(off_100B50F80, a1 + 304);
  v5 = sub_10000C7D0();
  sub_1004132C4(v5, a1 + 296);
  return 0;
}

void sub_1005D5520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 17) < 0)
  {
    operator delete(*(v20 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1005D5554(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_10084CCF8();
  }

  sub_1006FCA38(off_100B54078, v1 + 256);
  sub_1005D55C0(v1);
  sub_1005D56E0(v1);

  sub_1005D5948(v1);
}

uint64_t sub_1005D55C0(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 72))(v2))
  {
    v3 = 3947;
  }

  else
  {
    v3 = 3939;
  }

  v4 = sub_10000C798();
  if ((*(*v4 + 64))(v4))
  {
    v3 |= 4u;
  }

  v5 = *sub_10000C798();
  if (((*(v5 + 416))() & 1) == 0)
  {
    if (qword_100B54080 != -1)
    {
      sub_10084CCF8();
    }

    if (sub_1006FD3C4(off_100B54078))
    {
      v3 |= 0x80u;
    }
  }

  sub_10032013C(a1 + 360, v3);

  return sub_10032014C(a1 + 360, 15);
}

void sub_1005D56E0(uint64_t a1)
{
  memset(v10, 0, sizeof(v10));
  sub_100007E30(&v10[1], "");
  v9 = 0;
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCDB4(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CD34();
    }
  }

  else
  {
    v6 = v10[0];
    if (SHIBYTE(v10[3]) < 0)
    {
      sub_100008904(&__p, v10[1], v10[2]);
    }

    else
    {
      __p = *&v10[1];
      v8 = v10[3];
    }

    sub_10032018C(a1 + 360, &v6);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p);
    }
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v2 = sub_1006FCDDC(off_100B54078);
  if (v2)
  {
    sub_1003201D4(a1 + 360, v2);
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084CD70();
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCE04(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CDAC();
    }
  }

  else
  {
    sub_1003203C8(a1 + 360, v9);
  }

  v5 = 0;
  v3 = sub_100017E6C();
  (*(*v3 + 104))(v3, &v5 + 1, &v5);
  if (v5 == 100)
  {
    LOBYTE(v4) = 5;
  }

  else
  {
    v4 = v5 / 0x14u + 1;
  }

  sub_1003203D8(a1 + 360, v4);

  if (SHIBYTE(v10[3]) < 0)
  {
    operator delete(v10[1]);
  }
}

void sub_1005D5900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005D5948(uint64_t a1)
{
  memset(v3, 0, sizeof(v3));
  sub_1000DA2A8(v3);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1000D895C(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CDE8();
    }
  }

  else
  {
    sub_1000DA9C4(v2);
    sub_1000DAD0C(a1 + 360, v2);
    v4 = v2;
    sub_1000D6BD4(&v4);
  }

  v4 = v3;
  sub_1000D6BD4(&v4);
}

void sub_1005D5A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_1000D6BD4((v14 - 24));
  *(v14 - 24) = &a13;
  sub_1000D6BD4((v14 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1005D5A3C(uint64_t a1)
{
  v2 = sub_10000E92C();
  if ((*(*v2 + 8))(v2))
  {
    LOBYTE(v33[0]) = 0;
    v3 = sub_10000E92C();
    sub_100007E30(buf, "CATT");
    sub_100007E30(__p, "AudioSinkSdp");
    (*(*v3 + 72))(v3, buf, __p, v33);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(*buf);
    }

    if (LOBYTE(v33[0]) == 1)
    {
      v4 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding HF role into SDP", buf, 2u);
      }

      *buf = xmmword_100B00BB0;
      v35 = "Handsfree";
      __p[0] = buf;
      __p[1] = 1;
      LOBYTE(v32) = 0;
      sub_1000216B4(&v32);
      if (sub_1001AF904(__p, 0, 511, 387, sub_1005D6184) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084CE24();
      }

      sub_10002249C(&v32);
    }
  }

  *__p = off_100B00BE0;
  v5 = sub_10000C798();
  if ((*(*v5 + 840))(v5, 6))
  {
    v6 = 3;
  }

  else
  {
    v7 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WBS / mSBC for HFP disabled by defaults write", buf, 2u);
    }

    v6 = 1;
  }

  v8 = sub_10000C798();
  if ((*(*v8 + 840))(v8, 7))
  {
    v6 |= 0x100u;
    v9 = qword_100BCE8F8;
    if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v10 = "UWBS / AAC-ELD for HFP enabled";
  }

  else
  {
    v9 = qword_100BCE8F8;
    if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v10 = "UWBS / AAC-ELD for HFP disabled by defaults write";
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
LABEL_24:
  v11 = sub_10000C798();
  if ((*(*v11 + 840))(v11, 8))
  {
    v6 |= 0x80u;
    v12 = qword_100BCE8F8;
    if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v13 = "UWBSStereo for HFP enabled";
  }

  else
  {
    v12 = qword_100BCE8F8;
    if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v13 = "UWBSStereo for HFP disabled by defaults write";
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
LABEL_30:
  v14 = sub_10000C798();
  if ((*(*v14 + 840))(v14, 9))
  {
    v15 = v6 | 4;
  }

  else
  {
    v15 = v6;
  }

  sub_10000C7D0();
  if (sub_10002223C())
  {
    v15 |= 0x10u;
  }

  v16 = sub_10000C798();
  if ((*(*v16 + 840))(v16, 10))
  {
    v15 |= 0x200u;
  }

  v17 = sub_10000C7D0();
  if (sub_100410510(v17))
  {
    v15 |= 0x400u;
  }

  v18 = sub_10000C7D0();
  v19 = (*(*v18 + 2888))(v18);
  v29 = 0;
  sub_1000216B4(&v29);
  v20 = sub_100320144(a1 + 360);
  v21 = sub_10020EF6C(__p, 0, v20, v15, sub_1005D61EC, 0);
  if (!v21)
  {
    goto LABEL_43;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084CE94();
  }

  if (v21 == 140)
  {
LABEL_43:
    if (v19)
    {
      v22 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Registering Handsfree AoS", buf, 2u);
      }

      sub_1003084A0(sub_1005D6274);
    }

    v23 = sub_100320154(a1 + 360);
    sub_10020F408(v23);
    if (!sub_10020F430(sub_1005D6508, 0))
    {
      v24 = sub_1003201C4(a1 + 360);
      v25 = sub_1003201CC(a1 + 360);
      v26 = sub_1003203D0(a1 + 360);
      v27 = sub_1003203E0(a1 + 360);
      sub_100211490(v24, v25, v26, v27);
      v33[0] = 0;
      v33[1] = 0;
      [[NSUUID alloc] initWithUUIDBytes:v33];
      sub_1003209C0(a1 + 360, v15);
      sub_1003209D0(a1 + 360, v19);
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CF04();
    }

    sub_10020F38C();
  }

  sub_10002249C(&v29);
  return 1;
}

void sub_1005D6184()
{
  v0 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Received hf event", v1, 2u);
  }
}

void sub_1005D6274(uint64_t a1, const void *a2, unsigned int a3, char a4)
{
  v7 = sub_1000E1FE8(a1);
  v8 = sub_100216D00(v7);
  v19 = &off_100AE0A78;
  v20 = 0;
  if (a3)
  {
    sub_10000C704(v21, a2, a3);
    sub_10000AE20(&v19, v21);
    *&v21[0] = &off_100AE0A78;
    if (*(&v21[0] + 1))
    {
      sub_10000C808(*(&v21[0] + 1));
    }

    v9 = 0;
  }

  else
  {
    memset(v21, 0, 60);
    sub_10000C704(&v17, v21, 0x3CuLL);
    sub_10000AE20(&v19, &v17);
    v17 = &off_100AE0A78;
    if (v18)
    {
      sub_10000C808(v18);
    }

    v9 = 2;
  }

  v10 = sub_1000D999C();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_1005E8B68;
  v11[3] = &unk_100B00CD0;
  v15 = a4;
  v14 = v8;
  v16 = v9;
  v12 = &off_100AE0A78;
  v13 = v20;
  if (v20)
  {
    sub_10000C69C(v20);
  }

  sub_10000CA94(v10, v11);
  v12 = &off_100AE0A78;
  if (v13)
  {
    sub_10000C808(v13);
  }

  v19 = &off_100AE0A78;
  if (v20)
  {
    sub_10000C808(v20);
  }
}

void sub_1005D6474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18, uint64_t a19, atomic_uint *a20, uint64_t a21, uint64_t a22)
{
  if (a18)
  {
    sub_10000C808(a18);
  }

  if (a20)
  {
    sub_10000C808(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005D65A0()
{
  v3 = 0;
  sub_1000216B4(&v3);
  if (sub_10020F38C())
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CF74();
    }

LABEL_4:
    v0 = 1;
    goto LABEL_10;
  }

  v1 = sub_10000C7D0();
  if (!(*(*v1 + 2888))(v1))
  {
    v0 = 0;
    goto LABEL_10;
  }

  v0 = sub_100308D7C();
  if (v0)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084CFE4();
    }

    goto LABEL_4;
  }

LABEL_10:
  sub_10002249C(&v3);
  return v0;
}

uint64_t sub_1005D66A4(uint64_t a1)
{
  v2 = sub_1000D999C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D67E0;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  sub_10000D334(v2, v5);
  v3 = sub_100017E6C();
  sub_1005E8A90(v3 + 424, a1 + 272);
  if (qword_100B50AA0 != -1)
  {
    sub_10084CC80();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 264);
  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  sub_10007A3F0(off_100B508E8 + 240, a1 + 312);
  if (qword_100B50F68 != -1)
  {
    sub_10084CCA8();
  }

  sub_10007A3F0(off_100B50F60 + 24, a1 + 288);
  if (qword_100B50F88 != -1)
  {
    sub_10084CCD0();
  }

  sub_1006DCA90(off_100B50F80, a1 + 304);
  return 0;
}

void sub_1005D67E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_10084CCF8();
  }

  v2 = off_100B54078;

  sub_1006FCB0C(v2, v1 + 256);
}

uint64_t sub_1005D6860(uint64_t a1)
{
  v14 = xmmword_1008AA7C0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (!sub_10053BFB4(a1, &v14, 4u, &__p))
  {
    goto LABEL_29;
  }

  v3 = __p;
  v2 = v12;
  if (__p == v12)
  {
    goto LABEL_29;
  }

  v4 = __p;
  while (1)
  {
    if (*v4 == 6 && *(v4 + 1) == 2)
    {
      v6 = *(v4 + 1);
      v7 = *v6 == 3 && *(v6 + 8) == 3;
      if (v7 && *(v6 + 16) == 1)
      {
        break;
      }
    }

    if (++v4 == v12)
    {
      v8 = 0xFFFFFFFFLL;
      goto LABEL_19;
    }
  }

  v8 = *(v6 + 24);
LABEL_19:
  while (v3 != v2)
  {
    v10 = *v3;
    sub_10037D4F4(&v10);
    ++v3;
    v2 = v12;
  }

  if (v8 == -1)
  {
LABEL_29:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a1, &v10);
      sub_10084D054();
    }

    v8 = 0xFFFFFFFFLL;
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

uint64_t sub_1005D69F0(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v10 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to connect handsfree to device %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_1005D6860(a2);
  if (v5 == -1)
  {
    v6 = 1;
  }

  else
  {
    if (sub_1002163F8(a2 + 128, v5))
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D0B0();
      }

      v6 = 305;
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_10000C7D0();
    if ((*(*v7 + 2888))(v7) && sub_10054F920(a2) && sub_100308588(a2 + 128) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084D124();
    }
  }

  sub_10002249C(__p);
  return v6;
}

void sub_1005D6BBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D6BE0(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 760);
  v4 = sub_1005D4A04(a1, a2 + 128);
  v5 = sub_10000C7D0();
  if ((*(*v5 + 2888))(v5) && sub_10054F920(a2))
  {
    v6 = sub_1005D0048(a1, v4);
    if (v6)
    {
      v7 = sub_1003211B8(v6 + 400);
      if (v7)
      {
        sub_1005D6D94(v7, a2 + 128);
      }
    }

    v10 = 0;
    sub_1000216B4(&v10);
    if (sub_100308C54(a2 + 128) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084D194();
    }

    sub_10002249C(&v10);
  }

  v10 = 0;
  sub_1000216B4(&v10);
  if (sub_1002165D4(v4, 1818))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084D208();
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  sub_10002249C(&v10);
  sub_1000088CC(v11);
  return v8;
}

void sub_1005D6D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

_BYTE *sub_1005D6D94(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  sub_1000216B4(&v7);
  v3 = sub_1000E1FE8(a2);
  sub_100022214(&v7);
  v4 = *v3;
  v5 = sub_10000C7D0();
  (*(*v5 + 1880))(v5, v4, 0, 1);
  return sub_10002249C(&v7);
}

uint64_t sub_1005D6E3C(void *a1, unsigned int a2, int a3)
{
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10) = 67109376;
    DWORD1(v10) = a2;
    WORD4(v10) = 1024;
    *(&v10 + 10) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handsfree device handle %d disconnected with status %{bluetooth:OI_STATUS}u", &v10, 0xEu);
  }

  v7 = sub_1005D492C(a1, a2);
  sub_1005D3DD0(a1, v7, a2);
  if (qword_100B54090 != -1)
  {
    sub_10084D27C();
  }

  sub_10038A1A4(qword_100B54088, v7);
  if (v7)
  {
    v18 = 0;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    v14 = 0u;
    *__p = 0u;
    v12 = 0u;
    *v13 = 0u;
    v10 = 0u;
    *v11 = 0u;
    sub_1000DE474(&v10 + 1);
    BYTE2(v11[0]) = 0;
    BYTE4(v11[0]) = 0;
    BYTE2(v13[0]) = 0;
    BYTE4(v13[0]) = 0;
    DWORD1(v16[1]) = 0;
    v12 = 0uLL;
    v11[1] = 0;
    LOBYTE(v13[0]) = 0;
    v14 = 0uLL;
    v13[1] = 0;
    LOBYTE(__p[0]) = 0;
    memset(v16, 0, 19);
    __p[1] = 0;
    BYTE8(v16[1]) = 1;
    *(&v16[1] + 14) = 0;
    *(&v16[1] + 9) = 0;
    v17 = 0uLL;
    *(&v16[2] + 1) = 0;
    LOBYTE(v18) = 0;
    *(&v18 + 2) = 0;
    if (sub_100536A18(v7, &v10) && BYTE5(v16[2]) == 1)
    {
      v8 = sub_10000C7D0();
      (*(*v8 + 200))(v8, 0, 1);
    }

    sub_10057E710(a1, v7, 0);
    if (SHIBYTE(v16[0]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[1]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
    }

    nullsub_21(&v10 + 1);
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084D2A4();
  }

  result = sub_10057DDF0(a1);
  if ((result & 1) == 0)
  {
    sub_100320288((a1 + 45));
    if (sub_1000DB468((a1 + 45)))
    {
      sub_1005D70EC(a1);
    }

    result = sub_1003203E8((a1 + 45));
    if (result)
    {
      return sub_1003203F0((a1 + 45), 0);
    }
  }

  return result;
}

uint64_t sub_1005D70EC(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  sub_1000DA2A8(v5);
  v2 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up virtual call", buf, 2u);
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  sub_1006FD39C(off_100B54078);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  sub_1000D895C(off_100B54078);
  sub_1000D9854(a1 + 360, v5);
  sub_100320260(a1 + 360, 1);
  *buf = 0;
  v7 = 0;
  v3 = [[NSUUID alloc] initWithUUIDBytes:buf];
  sub_1000D7348(a1, v5, v3);

  *buf = v5;
  sub_1000D6BD4(buf);
  return 0;
}

void sub_1005D723C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000D6BD4(&a13);
  _Unwind_Resume(a1);
}

void sub_1005D7270(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1000D999C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005D7300;
  v7[3] = &unk_100AE0880;
  v8 = a3;
  v7[4] = a1;
  v7[5] = a2;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1005D7300(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 48) == 18)
  {
    v2 = *(a1 + 32);

    return sub_1005D7444(v2);
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, v1 + 760);
    v5 = sub_1005D09A8(v1, *(a1 + 40));
    if (v5)
    {
      sub_1000C23E0(*(a1 + 40), v9);
      if (v10 >= 0)
      {
        v6 = v9;
      }

      else
      {
        v6 = v9[0];
      }

      sub_100007E30(__p, v6);
      sub_1003A2AF0(v5, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }

      v8 = sub_1005D2A98(v7, *(a1 + 40));
      sub_10069BD7C(v5, v8);
    }

    return sub_1000088CC(v13);
  }
}

void sub_1005D73FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D7444(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 760);
  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  v2 = sub_10056C908(off_100B508E8);
  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device info change for incompatible classic hid %u", buf, 8u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10084C854();
  }

  v4 = sub_10078759C(off_100B508C8);
  v5 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device info change for incompatible LE hid %u", buf, 8u);
  }

  v6 = *(a1 + 824);
  if (v6 != (a1 + 832))
  {
    do
    {
      v7 = v6[5];
      if (v7)
      {
        sub_1003A32F8(v7, "kBTAudioMsgPropertyIncompatibleHidConnected", v2 | v4);
      }

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
    }

    while (v9 != (a1 + 832));
  }

  return sub_1000088CC(v12);
}

void sub_1005D7638(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    v7[7] = v3;
    v7[8] = v4;
    v6 = sub_1000D999C();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005D76C0;
    v7[3] = &unk_100ADF8F8;
    v7[4] = a1;
    sub_10000CA94(v6, v7);
  }
}

void sub_1005D76D0(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3 && sub_1000E2140(a2, 12))
  {
    if (qword_100B50DB8 != -1)
    {
      sub_10084D314();
    }

    v3 = off_100B50DB0;

    sub_1000DAE4C(v3, 3, 3u);
  }
}

uint64_t sub_1005D773C(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v3 = result;
    result = sub_1000E2140(a2, 12);
    if (result)
    {
      if ((sub_1000DB470(v3 + 360) & 1) == 0 && (sub_1003203B8(v3 + 360, 2) || sub_1003203B8(v3 + 360, 1)))
      {
        if (qword_100B50DB8 != -1)
        {
          sub_10084D314();
        }

        v4 = 5;
      }

      else
      {
        result = sub_1000DB470(v3 + 360);
        if (!result)
        {
          return result;
        }

        result = sub_1003203B8(v3 + 360, 0);
        if (!result)
        {
          return result;
        }

        if (qword_100B50DB8 != -1)
        {
          sub_10084D314();
        }

        v4 = 4;
      }

      v5 = off_100B50DB0;

      return sub_1000DAE4C(v5, v4, 3u);
    }
  }

  return result;
}

void sub_1005D7824(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3 && sub_1000E2140(a2, 12))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10084CC6C();
    }

    if (!sub_1000D6C38(off_100B508E8))
    {
      if (qword_100B50DB8 != -1)
      {
        sub_10084D314();
      }

      v3 = off_100B50DB0;

      sub_1000DAE4C(v3, 3, 3u);
    }
  }
}

uint64_t sub_1005D78B8(uint64_t a1)
{
  memset(v14, 0, sizeof(v14));
  sub_1000DA2A8(v14);
  if (sub_1003203E8(a1 + 360))
  {
    v2 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "Could not set up virtual call, voice session is already active.";
      v4 = v2;
      v5 = 2;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
    }
  }

  else if ((sub_1000DB470(a1 + 360) & 1) != 0 || !sub_1003203B8(a1 + 360, 0))
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000DB470(a1 + 360);
      v10 = sub_1003203B8(a1 + 360, 0);
      v11 = "";
      v12 = "a call is present";
      if (!v9)
      {
        v12 = "";
      }

      if (!v10)
      {
        v11 = "a call is being set up";
      }

      *buf = 136446466;
      *&buf[4] = v12;
      *&buf[12] = 2082;
      *&buf[14] = v11;
      v3 = "Could not set up virtual call because: %{public}s, %{public}s";
      v4 = v8;
      v5 = 22;
      goto LABEL_19;
    }
  }

  else
  {
    v6 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting up virtual call", buf, 2u);
    }

    sub_100320260(a1 + 360, 0);
    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    sub_1006FD374(off_100B54078);
    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    sub_1000D895C(off_100B54078);
    sub_1000D9854(a1 + 360, v14);
    *buf = 0;
    *&buf[8] = 0;
    v7 = [[NSUUID alloc] initWithUUIDBytes:buf];
    sub_1000D7348(a1, v14, v7);
  }

  *buf = v14;
  sub_1000D6BD4(buf);
  return 0;
}

void sub_1005D7B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000D6BD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D7B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136446466;
    v11 = v6;
    v12 = 2082;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received set voice command external event for device %{public}s with value %{public}s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_1005D7C3C(void *a1, uint64_t a2)
{
  v84[0] = 0;
  v84[1] = 0;
  sub_100007F88(v84, (a1 + 95));
  v4 = (a2 + 4);
  v5 = sub_1005D492C(a1, *(a2 + 4));
  if (!v5)
  {
    if (*a2 >= 2u)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D378();
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_10020F948(*v4, 2701);
LABEL_28:
      v17 = __p;
      goto LABEL_29;
    }

    v6 = *(a2 + 8);
    LODWORD(__p[0]) = *v6;
    WORD2(__p[0]) = *(v6 + 4);
    if (!LOBYTE(__p[0]))
    {
      v7 = 1;
      while (v7 != 6)
      {
        if (*(__p + v7++))
        {
          if ((v7 - 2) < 5)
          {
            goto LABEL_10;
          }

          break;
        }
      }

      v9 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_10084D3EC(v9);
      }

LABEL_10:
      v19 = 1;
      do
      {
        if (v19 == 6)
        {
          goto LABEL_34;
        }
      }

      while (!*(__p + v19++));
      if ((v19 - 2) >= 5)
      {
LABEL_34:
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084D878();
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        sub_10020F948(*v4, 2701);
        v17 = buf;
LABEL_29:
        sub_10002249C(v17);
        return sub_1000088CC(v84);
      }
    }

    if (qword_100B508F0 != -1)
    {
      sub_10084C82C();
    }

    v10 = *(a2 + 8);
    v11 = *(v10 + 4);
    *buf = *v10;
    *v95 = v11;
    v5 = sub_1000E6554(off_100B508E8, buf, 1);
  }

  v12 = *a2;
  switch(*a2)
  {
    case 0:
      v42 = sub_10057DFAC(a1, v5);
      v43 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          v44 = __p[0];
          v45 = "denying";
          if ((SBYTE7(v88) & 0x80u) == 0)
          {
            v44 = __p;
          }

          if (v42)
          {
            v45 = "accepting";
          }

          *buf = 136446466;
          *v95 = v44;
          *&v95[8] = 2082;
          *&v95[10] = v45;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Received incoming handsfree connection request for device %{public}s - %{public}s request", buf, 0x16u);
          if (SBYTE7(v88) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v77 = "denying";
          if (v42)
          {
            v77 = "accepting";
          }

          *buf = 136446466;
          *v95 = "NULL";
          *&v95[8] = 2082;
          *&v95[10] = v77;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Received incoming handsfree connection request for device %{public}s - %{public}s request", buf, 0x16u);
        }
      }

      v78 = sub_10000C7D0();
      if ((*(*v78 + 2888))(v78))
      {
        v79 = sub_10054F920(v5);
      }

      else
      {
        v79 = 0;
      }

      LOBYTE(v81[0]) = 0;
      sub_1000216B4(v81);
      v80 = sub_100215EFC(*v4, v42);
      if (((v80 == 0) & v79) == 1 && sub_100308588(v5 + 128) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v5, __p);
        sub_10084D71C();
      }

      sub_100022214(v81);
      if (v80 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D770();
      }

      if (v42)
      {
        sub_10057D9B0(a1, v5);
      }

      v17 = v81;
      goto LABEL_29;
    case 1:
      if (*(a2 + 8))
      {
        v46 = *(a2 + 16);
        v47 = qword_100BCE8F8;
        if (v46)
        {
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(v5, buf);
            sub_10084D68C();
          }

          v48 = sub_100320144((a1 + 45));
          v83 = 0;
          sub_1000216B4(&v83);
          v49 = sub_10020F7D0(*v4);
          sub_100022214(&v83);
          if (v46 == 1814 && (v48 & 0x400) != 0 && (v49 & 0x100) != 0)
          {
            v93 = 0;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            *__p = 0u;
            v88 = 0u;
            if (sub_1005423B4(v5, 1, 413, 1814, __p))
            {
              v50 = qword_100BCE8F8;
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(v5, v81);
                v51 = v82 >= 0 ? v81 : v81[0];
                *v85 = 136315138;
                v86 = v51;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Submitting contextual metric for event 'BT_HANDSFREE_TIMEOUT_SLC_BIND_RED_FLAG' for %s", v85, 0xCu);
                if (v82 < 0)
                {
                  operator delete(v81[0]);
                }
              }

              v52 = sub_10000F034();
              (*(*v52 + 256))(v52, __p, *(v5 + 1380));
            }
          }

          sub_10002249C(&v83);
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v5, __p);
            v70 = (SBYTE7(v88) & 0x80u) == 0 ? __p : __p[0];
            *buf = 136446210;
            *v95 = v70;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Received SLC connection complete event for device %{public}s", buf, 0xCu);
            if (SBYTE7(v88) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_1005D0CA0(a1, v5, *v4);
        }

        if (qword_100B50AA0 != -1)
        {
          sub_10084CC80();
        }

        v71 = sub_1000DD584(off_100B50A98, v46, 20000);
        sub_10057DA84(a1, v5, v71);
      }

      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D6E0();
      }

      return sub_1000088CC(v84);
    case 2:
      v35 = *(a2 + 8);
      v36 = qword_100BCE8F8;
      if ((v35 & 0xFFFFFFFE) == 0x39E)
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            sub_1000E5A58(v5, __p);
            if ((SBYTE7(v88) & 0x80u) == 0)
            {
              v37 = __p;
            }

            else
            {
              v37 = __p[0];
            }

            *buf = 136446210;
            *v95 = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Received handsfree disconnection event for device %{public}s", buf, 0xCu);
            if (SBYTE7(v88) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446210;
            *v95 = "NULL";
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Received handsfree disconnection event for device %{public}s", buf, 0xCu);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          sub_10084D5EC();
        }

        else
        {
          sub_10084D640(buf, v35);
        }
      }

      sub_1005D6E3C(a1, *v4, v35);
      return sub_1000088CC(v84);
    case 3:
    case 4:
    case 5:
    case 6:
    case 0x11:
    case 0x12:
    case 0x1B:
    case 0x1C:
    case 0x1F:
      sub_1005D9064(a1, a2);
      return sub_1000088CC(v84);
    case 8:
    case 9:
    case 0xF:
    case 0x16:
      v13 = sub_1005DB4F8(a1, a2);
      goto LABEL_21;
    case 0xA:
    case 0xB:
    case 0xC:
    case 0x13:
      v13 = sub_1005DAFD0(a1, a2);
      goto LABEL_21;
    case 0xD:
      v58 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v88) & 0x80u) == 0)
          {
            v59 = __p;
          }

          else
          {
            v59 = __p[0];
          }

          *buf = 136446210;
          *v95 = v59;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Received voice recognition event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v88) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v95 = "NULL";
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Received voice recognition event from device %{public}s", buf, 0xCu);
        }
      }

      sub_100364158(3);
      v13 = sub_1005DBFDC(a1, *(a2 + 4), *(a2 + 8));
      goto LABEL_21;
    case 0xE:
      v21 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v88) & 0x80u) == 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          *buf = 136446210;
          *v95 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received unsupported handsfree event (voice tag retrieval) from device %{public}s", buf, 0xCu);
          if (SBYTE7(v88) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v95 = "NULL";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received unsupported handsfree event (voice tag retrieval) from device %{public}s", buf, 0xCu);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      if (sub_1002109E0(*v4, 0))
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084D57C();
        }

        v14 = 0;
      }

      else
      {
        v14 = 255;
      }

      sub_10002249C(__p);
      goto LABEL_22;
    case 0x10:
      v31 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v88) & 0x80u) == 0)
          {
            v32 = __p;
          }

          else
          {
            v32 = __p[0];
          }

          *buf = 136446210;
          *v95 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received EC/NR disable event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v88) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v95 = "NULL";
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received EC/NR disable event from device %{public}s", buf, 0xCu);
        }
      }

      v13 = sub_1005DBF98(a1, *v4);
      goto LABEL_21;
    case 0x14:
      v25 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v26 = "enable";
        }

        else
        {
          v26 = "disable";
        }

        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v88) & 0x80u) == 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          *buf = 136446466;
          *v95 = v26;
          *&v95[8] = 2082;
          *&v95[10] = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received call waiting %{public}s event from device %{public}s", buf, 0x16u);
          if (SBYTE7(v88) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          *v95 = v26;
          *&v95[8] = 2082;
          *&v95[10] = "NULL";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received call waiting %{public}s event from device %{public}s", buf, 0x16u);
        }
      }

      v72 = *(a2 + 8);
      v73 = sub_1005D0048(a1, *(a2 + 4));
      if (v73)
      {
        sub_100320E0C(v73 + 400, v72);
        v14 = 255;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_22;
    case 0x15:
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D504();
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1002165D4(*(a2 + 4), *(a2 + 12));
      goto LABEL_28;
    case 0x17:
      v23 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v88) & 0x80u) == 0)
          {
            v24 = __p;
          }

          else
          {
            v24 = __p[0];
          }

          *buf = 136446210;
          *v95 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received network operator request event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v88) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v95 = "NULL";
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received network operator request event from device %{public}s", buf, 0xCu);
        }
      }

      v13 = sub_1005DBD3C(a1, *v4);
      goto LABEL_21;
    case 0x18:
      v61 = qword_100BCE8F8;
      v62 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v62)
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v88) & 0x80u) == 0)
          {
            v63 = __p;
          }

          else
          {
            v63 = __p[0];
          }

          *buf = 136446210;
          *v95 = v63;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Received subscriber number request event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v88) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v95 = "NULL";
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Received subscriber number request event from device %{public}s", buf, 0xCu);
        }
      }

      v13 = sub_1005DBAD4(v62, *v4);
      goto LABEL_21;
    case 0x19:
      v28 = qword_100BCE8F8;
      if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_199;
      }

      if (!v5)
      {
        *buf = 136446210;
        *v95 = "NULL";
        v74 = "Received unsupported handsfree event (response and hold query) from device %{public}s";
        goto LABEL_197;
      }

      sub_1000E5A58(v5, __p);
      if ((SBYTE7(v88) & 0x80u) == 0)
      {
        v60 = __p;
      }

      else
      {
        v60 = __p[0];
      }

      *buf = 136446210;
      *v95 = v60;
      v30 = "Received unsupported handsfree event (response and hold query) from device %{public}s";
      goto LABEL_145;
    case 0x1A:
      v28 = qword_100BCE8F8;
      if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_199;
      }

      if (!v5)
      {
        *buf = 136446210;
        *v95 = "NULL";
        v74 = "Received unsupported handsfree event (response and hold) from device %{public}s";
LABEL_197:
        v75 = v28;
        v76 = 12;
        goto LABEL_198;
      }

      sub_1000E5A58(v5, __p);
      if ((SBYTE7(v88) & 0x80u) == 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      *buf = 136446210;
      *v95 = v29;
      v30 = "Received unsupported handsfree event (response and hold) from device %{public}s";
LABEL_145:
      v40 = v28;
      v41 = 12;
      goto LABEL_146;
    case 0x1D:
      v33 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if ((SBYTE7(v88) & 0x80u) == 0)
          {
            v34 = __p;
          }

          else
          {
            v34 = __p[0];
          }

          *buf = 136446210;
          *v95 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received HF indicator event from device %{public}s", buf, 0xCu);
          if (SBYTE7(v88) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *v95 = "NULL";
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received HF indicator event from device %{public}s", buf, 0xCu);
        }
      }

      v13 = sub_1005DC224(a1, a2);
LABEL_21:
      v14 = v13;
      goto LABEL_22;
    case 0x1E:
      v53 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v5, __p);
        v54 = (SBYTE7(v88) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446210;
        *v95 = v54;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Received AOS Setup Complete from device %{public}s", buf, 0xCu);
        if (SBYTE7(v88) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v55 = sub_1000E1FE8(v5 + 128);
      v56 = sub_1005D0A74(a1, v5);
      switch(v56)
      {
        case 0x7F:
          v64 = 0;
          v66 = 60;
          v67 = 4;
          v68 = 12;
          v65 = 60;
          goto LABEL_162;
        case 0x81:
          v64 = 3;
          v65 = 360;
          v66 = 240;
          v67 = 6;
          v68 = 24;
LABEL_162:
          sub_1005D060C(a1, 0, *v4, v55, v68, v67, v66, v65, v64);
          return sub_1000088CC(v84);
        case 0x82:
          v57 = sub_1005D0048(a1, *v4);
          *(v57 + 580) = 0;
          *(v57 + 584) = 0;
          sub_1005D060C(a1, 0, *v4, v55, 24, 6, 240, 360, 3u);
          break;
        default:
          v69 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
          {
            sub_10084D470(v56, v69);
          }

          break;
      }

      return sub_1000088CC(v84);
    default:
      v38 = qword_100BCE8F8;
      if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_199;
      }

      if (v5)
      {
        sub_1000E5A58(v5, __p);
        if ((SBYTE7(v88) & 0x80u) == 0)
        {
          v39 = __p;
        }

        else
        {
          v39 = __p[0];
        }

        *buf = 67109378;
        *v95 = v12;
        *&v95[4] = 2082;
        *&v95[6] = v39;
        v30 = "Received unsupported handsfree event (%d) from device %{public}s";
        v40 = v38;
        v41 = 18;
LABEL_146:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v30, buf, v41);
        if (SBYTE7(v88) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 67109378;
        *v95 = v12;
        *&v95[4] = 2082;
        *&v95[6] = "NULL";
        v74 = "Received unsupported handsfree event (%d) from device %{public}s";
        v75 = v38;
        v76 = 18;
LABEL_198:
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, v74, buf, v76);
      }

LABEL_199:
      v14 = 4;
LABEL_22:
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v15 = *v4;
      if (v14 == 255)
      {
        v16 = sub_10020F948(v15, 0);
      }

      else
      {
        v16 = sub_10020F9D8(v15, 2707, v14);
      }

      if (v16 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D808();
      }

      goto LABEL_28;
  }
}

void sub_1005D8F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_10002249C(&a17);
  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

void sub_1005D9064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D0048(a1, *(a2 + 4));
  v5 = sub_100320D9C(&v4[25]);
  v6 = v5;
  v7 = *a2;
  if (*a2 > 16)
  {
    if (v7 <= 26)
    {
      if (v7 == 17)
      {
        v23 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v6)
          {
            sub_1000E5A58(v6, __p);
            if (SHIBYTE(v107[0]) >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = __p[0];
            }

            v25 = *(a2 + 8);
            *buf = 136446466;
            *&buf[4] = v24;
            *&buf[12] = 1024;
            *&buf[14] = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received mic gain event from device %{public}s - new gain is %d", buf, 0x12u);
            if (SHIBYTE(v107[0]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v90 = *(a2 + 8);
            *buf = 136446466;
            *&buf[4] = "NULL";
            *&buf[12] = 1024;
            *&buf[14] = v90;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received mic gain event from device %{public}s - new gain is %d", buf, 0x12u);
          }
        }

        sub_100320DDC(&v4[25], *(a2 + 8));
        if (v4)
        {
          LOBYTE(v91) = *(a2 + 8);
          sub_1003A33BC(v4, v91 / 15.0);
        }
      }

      else
      {
        if (v7 != 18)
        {
          goto LABEL_64;
        }

        sub_100320DEC(&v4[25], *(a2 + 8));
        v12 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v6)
          {
            sub_1000E5A58(v6, __p);
            if (SHIBYTE(v107[0]) >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            v15 = *(a2 + 8);
            *buf = 136446466;
            *&buf[4] = v14;
            *&buf[12] = 1024;
            *&buf[14] = v15;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received speaker gain event from device %{public}s - new gain is %d", buf, 0x12u);
            if (SHIBYTE(v107[0]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v70 = *(a2 + 8);
            *buf = 136446466;
            *&buf[4] = "NULL";
            *&buf[12] = 1024;
            *&buf[14] = v70;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received speaker gain event from device %{public}s - new gain is %d", buf, 0x12u);
          }
        }

        if (v4)
        {
          LOBYTE(v13) = *(a2 + 8);
          sub_1003A2788(v4, v13 / 15.0);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v71 = sub_10020F948(*(a2 + 4), 0);
      sub_100022214(__p);
      goto LABEL_212;
    }

    if (v7 == 27)
    {
      if (*(a2 + 8) == 2)
      {
        v5 = sub_100320E7C(&v4[25]);
        if (v5)
        {
          v20 = sub_10000C798();
          v5 = (*(*v20 + 840))(v20, 6);
          if (v5)
          {
            v21 = sub_10000C7D0();
            v5 = (*(*v21 + 288))(v21, v6, 1, 1);
          }
        }
      }

      v22 = *(a2 + 4);

      sub_1005D4298(v5, v22, 0);
    }

    if (v7 != 28)
    {
      if (v7 == 31)
      {
        v8 = sub_100320F4C(&v4[25]);

        sub_1005DD01C(v8, v4, 0, 0, v8);
        return;
      }

LABEL_64:
      v37 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (!v6)
        {
          *buf = 67109378;
          *&buf[4] = v7;
          *&buf[8] = 2082;
          *&buf[10] = "NULL";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree audio event from stack (%d) for device %{public}s", buf, 0x12u);
          goto LABEL_211;
        }

        sub_1000E5A58(v6, __p);
        if (SHIBYTE(v107[0]) >= 0)
        {
          v38 = __p;
        }

        else
        {
          v38 = __p[0];
        }

        *buf = 67109378;
        *&buf[4] = v7;
        *&buf[8] = 2082;
        *&buf[10] = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree audio event from stack (%d) for device %{public}s", buf, 0x12u);
        if ((SHIBYTE(v107[0]) & 0x80000000) == 0)
        {
          goto LABEL_211;
        }

        goto LABEL_70;
      }

      goto LABEL_211;
    }

    LOBYTE(v100) = 0;
    sub_1000216B4(&v100);
    *buf = *(a2 + 4);
    v26 = *buf;
    v27 = sub_10020F8DC(*buf);
    sub_100022214(&v100);
    v28 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a2 + 8);
      LODWORD(__p[0]) = 67109632;
      HIDWORD(__p[0]) = v29;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v26;
      HIWORD(__p[1]) = 1024;
      LODWORD(v107[0]) = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Got new list of available codecs 0x%x for handle %d, customCodecMask 0x%x", __p, 0x14u);
    }

    __p[0] = buf;
    v30 = sub_1003750BC(a1 + 824, buf);
    sub_100320EB4(v30[5] + 400, (v27 & 4) != 0);
    sub_10069BE3C(v4, (v27 >> 2) & 1);
    __p[0] = buf;
    v31 = sub_1003750BC(a1 + 824, buf);
    sub_100320EE4(v31[5] + 400, (v27 & 8) != 0);
    sub_10069BDAC(v4, (v27 >> 3) & 1);
    __p[0] = buf;
    v32 = sub_1003750BC(a1 + 824, buf);
    sub_100320EF4(v32[5] + 400, (v27 & 0x10) != 0);
    sub_10069BDBC(v4, (v27 >> 4) & 1);
    __p[0] = buf;
    v33 = sub_1003750BC(a1 + 824, buf);
    sub_100320EC4(v33[5] + 400, (v27 & 0x20) != 0);
    sub_10069BDCC(v4, (v27 >> 5) & 1);
    __p[0] = buf;
    v34 = sub_1003750BC(a1 + 824, buf);
    sub_100320ED4(v34[5] + 400, (v27 & 0x40) != 0);
    sub_10069BDDC(v4, (v27 >> 6) & 1);
    __p[0] = buf;
    v35 = sub_1003750BC(a1 + 824, buf);
    sub_100320EA4(v35[5] + 400, v27 & 1);
    sub_10069BE2C(v4, v27 & 1);
    __p[0] = buf;
    v36 = sub_1003750BC(a1 + 824, buf);
    sub_100320E84(v36[5] + 400, (v27 & 2) != 0);
    sub_10069BE0C(v4, (v27 >> 1) & 1);
    v19 = &v100;
LABEL_63:
    sub_10002249C(v19);
    return;
  }

  if (v7 > 4)
  {
    if (v7 == 5)
    {
      if (!sub_100320F8C(&v4[25]))
      {
        v97 = *(a2 + 8);
        v41 = sub_1003205C4(a1 + 360);
        if (v41)
        {
          v42 = sub_1003205C4(a1 + 360);
          v43 = sub_100320400(v42);
        }

        else
        {
          v43 = 0;
        }

        v82 = *(a2 + 4);
        v83 = qword_100BCE8F8;
        if (v4 && !v97 && v6)
        {
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v6, __p);
            v84 = SHIBYTE(v107[0]) >= 0 ? __p : __p[0];
            *buf = 136446210;
            *&buf[4] = v84;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Received voice audio connected event for device %{public}s", buf, 0xCu);
            if (SHIBYTE(v107[0]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_100320DCC(&v4[25], 5);
          if (v41)
          {
            v85 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__p[0]) = 67109376;
              HIDWORD(__p[0]) = v43;
              LOWORD(__p[1]) = 1024;
              *(&__p[1] + 2) = v82;
              _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "A route change was pending on hfpHandle %d and we got an audio connected event on hfpHandle %d, clearing pending route change", __p, 0xEu);
            }

            sub_10031FFFC(a1 + 360);
          }

          sub_100320F44(&v4[25], 1);
          v86 = *(v6 + 132);
          v87 = *(v6 + 128);
          v88 = sub_10000C7D0();
          v89 = sub_1000DEB14(v6);
          (*(*v88 + 56))(v88, (v87 | (v86 << 32)) & 0xFFFFFFFFFFFFLL, v89, 1, 1, 1, 1, 0);
          *(v6 + 1384) |= 1u;
          *(v6 + 1424) = 0;
          __p[0] = 0;
          sub_100016250(__p);
          v101.n128_u64[0] = SLODWORD(__p[0]);
          v101.n128_u64[1] = SWORD2(__p[0]);
          sub_10032118C(v4 + 25, &v101);
          sub_100320D9C(&v4[25]);
          sub_10057E984();
        }

        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          if (v6)
          {
            sub_1000E5A58(v6, __p);
            if (SHIBYTE(v107[0]) >= 0)
            {
              v96 = __p;
            }

            else
            {
              v96 = __p[0];
            }

            *buf = 136446466;
            *&buf[4] = v96;
            *&buf[12] = 1024;
            *&buf[14] = v97;
            _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "Received audio connection failure event for device %{public}s with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
            if (SHIBYTE(v107[0]) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            sub_10084D950(buf, v97);
          }
        }

        sub_1005DC848();
        sub_100320DCC(&v4[25], 0);
        ++*(v6 + 1424);
        sub_100320D9C(&v4[25]);
        if (qword_100B50AA0 != -1)
        {
          sub_10084CC80();
        }

        sub_1000DD584(off_100B50A98, *(a2 + 8), 10000);
        sub_10057E984();
      }

      j__usleep(0x4E20u);
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v18 = sub_100216924(*(a2 + 4));
      sub_100022214(__p);
      if (v18 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084D99C();
      }

      v19 = __p;
      goto LABEL_63;
    }

    if (v7 != 6)
    {
      goto LABEL_64;
    }

    sub_100320DA4(&v4[25], 0);
    sub_100320FDC(&v4[25], 0);
    sub_100320FEC(&v4[25], 0);
    if (sub_100320F8C(&v4[25]))
    {
      v11 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Hack for Mercedes finished", __p, 2u);
      }

      sub_100320F84(&v4[25], 0);
      return;
    }

    if (sub_100320F2C(&v4[25]) && sub_100320A98(&v4[25]))
    {
      v39 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          sub_1000E5A58(v6, __p);
          if (SHIBYTE(v107[0]) >= 0)
          {
            v40 = __p;
          }

          else
          {
            v40 = __p[0];
          }

          *buf = 136446210;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Device %{public}s routed away audio after ending call. Ignore route away and allowing audio layer to close session on its own.", buf, 0xCu);
          if (SHIBYTE(v107[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *&buf[4] = "NULL";
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Device %{public}s routed away audio after ending call. Ignore route away and allowing audio layer to close session on its own.", buf, 0xCu);
        }
      }

      sub_100320F34(&v4[25], 0);
      return;
    }

    sub_100320DCC(&v4[25], 0);
    v44 = qword_100BCE8F8;
    if (v6)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v6, __p);
        v45 = SHIBYTE(v107[0]) >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Received voice disconnection event for device %{public}s", buf, 0xCu);
        if (SHIBYTE(v107[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v46 = *(v6 + 128);
      v47 = *(v6 + 129);
      v48 = *(v6 + 130);
      v49 = *(v6 + 131);
      v50 = *(v6 + 132);
      v98 = *(v6 + 133);
      v51 = sub_10000C7D0();
      v52 = sub_1000DEB14(v6);
      v53 = (*(*v51 + 56))(v51, (v47 << 8) | (v48 << 16) | (v49 << 24) | (v50 << 32) | (v98 << 40) | v46, v52, 1, 0, 1, 1, 0);
      sub_1005DC8C0(v53, (v46 << 40) | (v47 << 32) | (v48 << 24) | (v49 << 16) | (v50 << 8) | v98, 0);
      v54 = sub_10000C798();
      if ((*(*v54 + 352))(v54) && sub_1000E2140(v6, 0) && sub_1000E2140(v6, 1) && sub_1000E2140(v6, 3))
      {
        v55 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v6, __p);
          v56 = SHIBYTE(v107[0]) >= 0 ? __p : __p[0];
          *buf = 136446210;
          *&buf[4] = v56;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Notify gizmo to reform triangle for device %{public}s if warranted", buf, 0xCu);
          if (SHIBYTE(v107[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (qword_100B50950 != -1)
        {
          sub_10084C87C();
        }

        sub_10033E80C(off_100B50948, v6);
      }

      v57 = sub_10000C7D0();
      (*(*v57 + 1272))(v57);
      *v104 = 0;
      v100 = 0;
      v58 = sub_10000E92C();
      sub_100007E30(__p, "HFP");
      sub_100007E30(buf, "DisableWBS");
      (*(*v58 + 88))(v58, __p, buf, v104);
      if (v103 < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v107[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v59 = sub_10000E92C();
      sub_100007E30(__p, "HFP");
      sub_100007E30(buf, "DisableUWBS");
      (*(*v59 + 88))(v59, __p, buf, &v100);
      if (v103 < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v107[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (!*v104 || !v100)
      {
        if (sub_100320E7C(&v4[25]))
        {
          sub_10000C7D0();
          if (sub_1004100E0())
          {
            v60 = sub_10000C7D0();
            (*(*v60 + 288))(v60, v6, 0, 1);
          }
        }
      }

      sub_1005DC848();
      *(v6 + 1384) &= ~1u;
      if (sub_100321184(&v4[25]) == 1919115628)
      {
        __p[0] = 0;
        sub_100016250(__p);
        v61 = SLODWORD(__p[0]);
        sub_1003211A4(v4 + 25, __p);
        if (v61 - __p[0] > 0x3C)
        {
          v4[36].n128_u8[0] = 0;
        }

        else
        {
          v62 = ++v4[36].n128_u8[0];
          if (v62 >= 5)
          {
            sub_100320D9C(&v4[25]);
            if (qword_100B50AA0 != -1)
            {
              sub_10084CC80();
            }

            sub_1000DD584(off_100B50A98, *(a2 + 8), 10000);
            sub_10057E984();
          }
        }
      }

      v99 = 0uLL;
      sub_10032118C(v4 + 25, &v99);
      sub_100320D9C(&v4[25]);
      if (qword_100B50AA0 != -1)
      {
        sub_10084CC80();
      }

      sub_1000DD584(off_100B50A98, *(a2 + 8), 10000);
      sub_10057E984();
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084D914();
    }

LABEL_247:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DA0C();
    }

    return;
  }

  if (v7 == 3)
  {
    v16 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        sub_1000E5A58(v6, __p);
        if (SHIBYTE(v107[0]) >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received audio connection request event from device %{public}s", buf, 0xCu);
        if (SHIBYTE(v107[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        *&buf[4] = "NULL";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received audio connection request event from device %{public}s", buf, 0xCu);
      }
    }

    sub_100320DCC(&v4[25], 3);
    v114 = 0;
    v113 = 0u;
    memset(v112, 0, sizeof(v112));
    v110 = 0u;
    v111 = 0u;
    v109 = 0u;
    *v107 = 0u;
    v108 = 0u;
    *__p = 0u;
    sub_1000DE474(__p + 1);
    BYTE2(v107[0]) = 0;
    BYTE4(v107[0]) = 0;
    BYTE2(v109) = 0;
    BYTE4(v109) = 0;
    HIDWORD(v112[2]) = 0;
    v108 = 0uLL;
    v107[1] = 0;
    LOBYTE(v109) = 0;
    v110 = 0uLL;
    *(&v109 + 1) = 0;
    LOBYTE(v111) = 0;
    v112[0] = 0;
    v112[1] = 0;
    *(&v111 + 1) = 0;
    *(&v112[1] + 7) = 0;
    LOBYTE(v112[3]) = 1;
    *(&v112[3] + 6) = 0;
    *(&v112[3] + 1) = 0;
    v113 = 0uLL;
    v112[5] = 0;
    LOBYTE(v114) = 0;
    *(&v114 + 2) = 0;
    if (sub_100536A18(v6, __p) && BYTE1(v112[3]) == 1 && sub_100320370(a1 + 360))
    {
      v72 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Hack for Mercedes kicking in... auto-accepting then pulling back audio", buf, 2u);
      }

      sub_100320F84(&v4[25], 1);
      j__usleep(0x2710u);
      buf[0] = 0;
      sub_1000216B4(buf);
      v73 = sub_1002119F0(*(a2 + 4), 1);
      sub_100022214(buf);
LABEL_164:
      sub_10002249C(buf);
      goto LABEL_240;
    }

    if (sub_1000DB468(a1 + 360))
    {
      v74 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Denying audio request as we are in a virtual call", buf, 2u);
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v73 = sub_1002119F0(*(a2 + 4), 0);
      sub_100022214(buf);
      goto LABEL_164;
    }

    v75 = sub_1000DB470(a1 + 360);
    if (v75 & 1) != 0 || (v75 = sub_1003201EC(a1 + 360), (v75) || (v75 = sub_1003201F4(a1 + 360), (v75) || (v75 = sub_1003201DC(a1 + 360), v75))
    {
      v76 = sub_1005D4FD4(v75, v6);
      v77 = qword_100BCE8F8;
      v78 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (!v76)
      {
        if (v78)
        {
          if (v6)
          {
            sub_1000E5A58(v6, buf);
            if (v103 >= 0)
            {
              v81 = buf;
            }

            else
            {
              v81 = *buf;
            }

            *v104 = 136446210;
            v105 = v81;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Call is present, notify CoreAudio to accept audio request from device %{public}s", v104, 0xCu);
            if (v103 < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            *v104 = 136446210;
            v105 = "NULL";
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Call is present, notify CoreAudio to accept audio request from device %{public}s", v104, 0xCu);
          }
        }

        sub_10069BC6C(v4, 1, 0);
        goto LABEL_239;
      }

      if (!v78)
      {
LABEL_238:
        sub_1005DC6A4(a1, v6);
        sub_100320DCC(&v4[25], 0);
LABEL_239:
        v73 = 0;
LABEL_240:
        if (SHIBYTE(v112[1]) < 0)
        {
          operator delete(*(&v111 + 1));
        }

        if (SHIBYTE(v110) < 0)
        {
          operator delete(*(&v109 + 1));
        }

        if (SHIBYTE(v108) < 0)
        {
          operator delete(v107[1]);
        }

        nullsub_21(__p + 1);
        if (!v73)
        {
          return;
        }

        goto LABEL_247;
      }

      if (v6)
      {
        sub_1000E5A58(v6, buf);
        if (v103 >= 0)
        {
          v79 = buf;
        }

        else
        {
          v79 = *buf;
        }

        *v104 = 136446210;
        v105 = v79;
        v80 = "Conditions met for KeepAudioInHeadphones mitigation. Rejecting SCO from device %{public}s";
        goto LABEL_176;
      }

      *v104 = 136446210;
      v105 = "NULL";
      v92 = "Conditions met for KeepAudioInHeadphones mitigation. Rejecting SCO from device %{public}s";
    }

    else
    {
      v77 = qword_100BCE8F8;
      if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_238;
      }

      if (v6)
      {
        sub_1000E5A58(v6, buf);
        if (v103 >= 0)
        {
          v95 = buf;
        }

        else
        {
          v95 = *buf;
        }

        *v104 = 136446210;
        v105 = v95;
        v80 = "We're not in a call, rejecting audio request from device %{public}s";
LABEL_176:
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, v80, v104, 0xCu);
        if (v103 < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_238;
      }

      *v104 = 136446210;
      v105 = "NULL";
      v92 = "We're not in a call, rejecting audio request from device %{public}s";
    }

    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, v92, v104, 0xCu);
    goto LABEL_238;
  }

  if (v7 != 4)
  {
    goto LABEL_64;
  }

  v9 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      sub_1000E5A58(v6, __p);
      if (SHIBYTE(v107[0]) >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received audio codec connection request event from device %{public}s", buf, 0xCu);
      if (SHIBYTE(v107[0]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      *&buf[4] = "NULL";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received audio codec connection request event from device %{public}s", buf, 0xCu);
    }
  }

  sub_100320DCC(&v4[25], 4);
  if (sub_1000DB468(a1 + 360))
  {
    v63 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Denying audio request as we are in a virtual call", __p, 2u);
    }

    goto LABEL_211;
  }

  v64 = sub_1000DB470(a1 + 360);
  if (v64 & 1) != 0 || (v64 = sub_1003201EC(a1 + 360), (v64) || (v64 = sub_1003201F4(a1 + 360), (v64) || (v64 = sub_1003201DC(a1 + 360), v64))
  {
    v65 = sub_1005D4FD4(v64, v6);
    v66 = qword_100BCE8F8;
    v67 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (!v65)
    {
      if (v67)
      {
        if (v6)
        {
          sub_1000E5A58(v6, __p);
          if (SHIBYTE(v107[0]) >= 0)
          {
            v69 = __p;
          }

          else
          {
            v69 = __p[0];
          }

          *buf = 136446210;
          *&buf[4] = v69;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Call is present, notify CoreAudio to accept audio request from device %{public}s", buf, 0xCu);
          if (SHIBYTE(v107[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          *&buf[4] = "NULL";
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Call is present, notify CoreAudio to accept audio request from device %{public}s", buf, 0xCu);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v71 = sub_10020F948(*(a2 + 4), 0);
      sub_100022214(__p);
      sub_10069BC6C(v4, 1, v71);
LABEL_212:
      sub_10002249C(__p);
      if (!v71)
      {
        return;
      }

      goto LABEL_247;
    }

    if (v67)
    {
      if (!v6)
      {
        *buf = 136446210;
        *&buf[4] = "NULL";
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Conditions met for KeepAudioInHeadphones mitigation. Rejecting AT+BCC from device %{public}s", buf, 0xCu);
        goto LABEL_211;
      }

      sub_1000E5A58(v6, __p);
      if (SHIBYTE(v107[0]) >= 0)
      {
        v68 = __p;
      }

      else
      {
        v68 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v68;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Conditions met for KeepAudioInHeadphones mitigation. Rejecting AT+BCC from device %{public}s", buf, 0xCu);
      if ((SHIBYTE(v107[0]) & 0x80000000) == 0)
      {
        goto LABEL_211;
      }

LABEL_70:
      operator delete(__p[0]);
    }

LABEL_211:
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v71 = sub_10020F948(*(a2 + 4), 2701);
    sub_100022214(__p);
    goto LABEL_212;
  }

  v93 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      sub_1000E5A58(v6, __p);
      if (SHIBYTE(v107[0]) >= 0)
      {
        v94 = __p;
      }

      else
      {
        v94 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v94;
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "We're not in a call, rejecting audio request from device %{public}s", buf, 0xCu);
      if (SHIBYTE(v107[0]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      *&buf[4] = "NULL";
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "We're not in a call, rejecting audio request from device %{public}s", buf, 0xCu);
    }
  }

  sub_1005DC6A4(a1, v6);
  sub_100320DCC(&v4[25], 0);
}

uint64_t sub_1005DAFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D492C(a1, *(a2 + 4));
  v5 = *a2;
  v6 = qword_100BCE8F8;
  v7 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v5 > 11)
  {
    if (v5 == 12)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v12;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received redial event from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received redial event from device %{public}s", buf, 0xCu);
        }
      }

      v14 = sub_1005DD848(a1, *(a2 + 4));
      goto LABEL_55;
    }

    if (v5 == 19)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received DTMF generation event from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received DTMF generation event from device %{public}s", buf, 0xCu);
        }
      }

      v14 = sub_1005DDBAC(v7, 0, *(a2 + 8));
      goto LABEL_55;
    }

    goto LABEL_20;
  }

  if (v5 != 10)
  {
    if (v5 == 11)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received memory dial event from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received memory dial event from device %{public}s", buf, 0xCu);
        }
      }

      v14 = sub_1005DD9A0(a1, *(a2 + 4), *(a2 + 8));
LABEL_55:
      v13 = v14;
      goto LABEL_56;
    }

LABEL_20:
    if (v7)
    {
      if (v4)
      {
        sub_1000E5A58(v4, __p);
        if (v19 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 67109378;
        LODWORD(v21[0]) = v5;
        WORD2(v21[0]) = 2082;
        *(v21 + 6) = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree dialing event from stack (%d) for device %{public}s", buf, 0x12u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 67109378;
        LODWORD(v21[0]) = v5;
        WORD2(v21[0]) = 2082;
        *(v21 + 6) = "NULL";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree dialing event from stack (%d) for device %{public}s", buf, 0x12u);
      }
    }

    return 4;
  }

  if (v7)
  {
    if (v4)
    {
      sub_1000E5A58(v4, __p);
      if (v19 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446210;
      v21[0] = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received dial event from device %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v21[0] = "NULL";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received dial event from device %{public}s", buf, 0xCu);
    }
  }

  v15 = *(a2 + 8);
  if (*v15)
  {
    v16 = *(a2 + 4);
    sub_1000DA180(__p, v15);
    v13 = sub_1005DD6C4(a1, v16, __p);
    sub_1000D8E64(__p);
LABEL_56:
    if (v13 == 255 && (*a2 - 13) >= 0xFFFFFFFD)
    {
      if (qword_100B541D0 != -1)
      {
        sub_10084D328();
      }

      sub_1000D9244(off_100B541C8, 1);
      return 255;
    }

    return v13;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084DA84();
  }

  return 27;
}

void sub_1005DB4DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D8E64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DB4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D492C(a1, *(a2 + 4));
  v5 = *a2;
  v6 = qword_100BCE8F8;
  v7 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v5 > 14)
  {
    if (v5 == 15)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v12;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call hold event (AT+CHLD) from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call hold event (AT+CHLD) from device %{public}s", buf, 0xCu);
        }
      }

      return sub_1005DE5EC(a1, a2);
    }

    if (v5 == 22)
    {
      if (v7)
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v9;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received list calls request (AT+CLCC) from device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received list calls request (AT+CLCC) from device %{public}s", buf, 0xCu);
        }
      }

      sub_1005DED04(a1, *(a2 + 4));
      return 255;
    }

LABEL_20:
    if (v7)
    {
      if (v4)
      {
        sub_1000E5A58(v4, __p);
        if (v19 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 67109378;
        LODWORD(v21[0]) = v5;
        WORD2(v21[0]) = 2082;
        *(v21 + 6) = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree call control event from stack (%d) for device %{public}s", buf, 0x12u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 67109378;
        LODWORD(v21[0]) = v5;
        WORD2(v21[0]) = 2082;
        *(v21 + 6) = "NULL";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unhandled handsfree call control event from stack (%d) for device %{public}s", buf, 0x12u);
      }
    }

    return 4;
  }

  if (v5 == 8)
  {
    if (v7)
    {
      if (v4)
      {
        sub_1000E5A58(v4, __p);
        if (v19 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136446210;
        v21[0] = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call answer event from device %{public}s", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v21[0] = "NULL";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call answer event from device %{public}s", buf, 0xCu);
      }
    }

    return sub_1005DDD4C(a1, *(a2 + 4));
  }

  if (v5 != 9)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    if (v4)
    {
      sub_1000E5A58(v4, __p);
      if (v19 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136446210;
      v21[0] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call hangup event (AT+CHUP) from device %{public}s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v21[0] = "NULL";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call hangup event (AT+CHUP) from device %{public}s", buf, 0xCu);
    }
  }

  if (sub_100320280(a1 + 360))
  {
    v14 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring call hangup event as we are transitioning from Virtual Call", __p, 2u);
    }

    return 255;
  }

  result = sub_1005DE160(a1, *(a2 + 4));
  if (result == 255)
  {
    v15 = sub_1005D0048(a1, *(a2 + 4));
    if (sub_100320A98(v15 + 400))
    {
      v16 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v4)
        {
          sub_1000E5A58(v4, __p);
          if (v19 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *buf = 136446210;
          v21[0] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Disconnecting sco early w/o notifying audio layer as device %{public}s is a noisy carkit", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v21[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Disconnecting sco early w/o notifying audio layer as device %{public}s is a noisy carkit", buf, 0xCu);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_100216924(*(a2 + 4));
      sub_100022214(__p);
      sub_10002249C(__p);
    }

    return 255;
  }

  return result;
}

uint64_t sub_1005DBAD4(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  sub_1000D6A54(&v11);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCD3C(off_100B54078) || sub_1006FC7C4(&v11))
  {
    goto LABEL_26;
  }

  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (SBYTE7(v12) < 0)
    {
      sub_100008904(__p, v11, *(&v11 + 1));
    }

    else
    {
      *__p = v11;
      v10 = v12;
    }

    v4 = __p;
    if (v10 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315394;
    v16 = v4;
    v17 = 1024;
    v18 = BYTE8(v12);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Subscriber number is %s and type of address is %d", buf, 0x12u);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (SBYTE7(v12) < 0)
  {
    sub_100008904(__p, v11, *(&v11 + 1));
  }

  else
  {
    *__p = v11;
    v10 = v12;
  }

  if (v10 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = sub_100210D50(a2, v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100022214(buf);
  if (!v6)
  {
    sub_10002249C(buf);
LABEL_26:
    v7 = 255;
    goto LABEL_27;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084DAC0();
  }

  sub_10002249C(buf);
  v7 = 0;
LABEL_27:
  sub_1000D8E64(&v11);
  return v7;
}

uint64_t sub_1005DBD3C(uint64_t a1, uint64_t a2)
{
  memset(&v15, 0, sizeof(v15));
  v4 = sub_100320184(a1 + 360);
  v5 = v4;
  if (v4 >= 5)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v6 = off_100B01078[v4];
  }

  sub_10032015C((a1 + 360), __p);
  sub_1005D4BFC(__p, 4, &buf);
  v15 = buf;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  size = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
    if (v15.__r_.__value_.__l.__size_ <= 0x10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) >= 0x11)
  {
LABEL_10:
    std::string::erase(&v15, 0x10uLL, size - 16);
  }

LABEL_11:
  v8 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = &v15;
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v15.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v9;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Network operator is %s and mode is %s", &buf, 0x16u);
  }

  buf.__r_.__value_.__s.__data_[0] = 0;
  sub_1000216B4(&buf);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v15.__r_.__value_.__l.__size_)
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    else
    {
      v10 = 0;
    }
  }

  else if (*(&v15.__r_.__value_.__s + 23))
  {
    v10 = &v15;
  }

  else
  {
    v10 = 0;
  }

  if (sub_100210FF4(a2, v5, v10))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DB30();
    }

    v11 = 0;
  }

  else
  {
    v11 = 255;
  }

  sub_10002249C(&buf);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v11;
}

uint64_t sub_1005DBF98(uint64_t a1, unsigned int a2)
{
  result = sub_1005D0048(a1, a2);
  if (result)
  {
    v3 = result;
    sub_100320DFC(result + 400, 1);
    sub_1003A5960(v3, 1);
    return 255;
  }

  return result;
}

BOOL sub_1005DBFDC(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_1005D492C(a1, a2);
  sub_1005D0048(a1, a2);
  v7 = qword_100BCE8F8;
  if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v8 = "start";
  }

  else
  {
    v8 = "end";
  }

  if (v6)
  {
    sub_1000E5A58(v6, __p);
    if (v13 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446466;
    v15 = v8;
    v16 = 2082;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received '%{public}s voice command' event for device %{public}s", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_11:
    if (a3)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  *buf = 136446466;
  v15 = v8;
  v16 = 2082;
  v17 = "NULL";
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received '%{public}s voice command' event for device %{public}s", buf, 0x16u);
  if (a3)
  {
LABEL_12:
    if (sub_1000DB470(a1 + 360))
    {
      goto LABEL_16;
    }
  }

LABEL_15:
  if (!sub_100320370(a1 + 360))
  {
    sub_10057E984();
  }

LABEL_16:
  v10 = qword_100BCE8F8;
  result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Call in progress, denying voice rec session.", __p, 2u);
    return 0;
  }

  return result;
}

uint64_t sub_1005DC224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D492C(a1, *(a2 + 4));
  v6 = *(a2 + 8);
  v5 = *(a2 + 12);
  v7 = qword_100BCE8F8;
  if (v6 == 2)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received battery level HF indicator with value: %d", &v9, 8u);
    }

    *(sub_1005D0048(a1, *(a2 + 4)) + 628) = v5;
    if (!_os_feature_enabled_impl() || (sub_100540848(v4) & 1) == 0)
    {
      sub_10053F158(v4, v5);
    }

    if (qword_100B508E0 != -1)
    {
      sub_10084DC2C();
    }

    if (sub_100518C44(off_100B508D8, v4))
    {
      return 0;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    if (v6 == 1)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received enhanced safety HF indicator with value: %d", &v9, 8u);
      }

      sub_10057E984();
    }

    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084DC54();
      return 0;
    }
  }

  return result;
}

void sub_1005DC3F8(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = sub_1005D0048(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = sub_100320D9C(v4 + 400);
    v7 = sub_1005D2A98(v6, v6) == 2 && sub_100321184(v5 + 400) == 1918989668;
    v8 = sub_1000DB468(a1 + 360);
    if (v6 && (v9 = v8, (v10 = sub_1005D2720(a1, v6)) != 0) && ((v11 = v10, sub_100321184(v5 + 400) == 1920364387) || (v7 & v9) != 0))
    {
      v12 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = "NO";
        *buf = 67109634;
        v18 = v11;
        if (v7)
        {
          v13 = "YES";
        }

        v19 = 2082;
        v20 = v13;
        v21 = 1024;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notify HFP Transport Ready in %dMsec Carkit Doing IO = %{public}s, isInVirtualCall:%d", buf, 0x18u);
      }

      v14 = sub_1000D999C();
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1005DC610;
      v15[3] = &unk_100AEB940;
      v15[4] = a1;
      v16 = v2;
      sub_10008E008(v14, v11, v15);
    }

    else
    {

      sub_1003A3254(v5);
    }
  }
}

void sub_1005DC610(uint64_t a1)
{
  v1 = sub_1005D0048(*(a1 + 32), *(a1 + 40));
  if (v1)
  {
    v2 = v1;
    if (sub_100320DC4(v1 + 400))
    {
      v3 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notify HFP Transport Ready", v4, 2u);
      }

      sub_1003A3254(v2);
    }
  }
}

void sub_1005DC6A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005D09A8(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = sub_100320DC4(v2 + 400);
    if (v4 == 4)
    {
      v8 = 0;
      sub_1000216B4(&v8);
      v7 = sub_100320D94(v3 + 400);
      sub_10020F948(v7, 2701);
      sub_100022214(&v8);
      v6 = &v8;
      goto LABEL_6;
    }

    if (v4 == 3)
    {
      v9 = 0;
      sub_1000216B4(&v9);
      v5 = sub_100320D94(v3 + 400);
      sub_1002119F0(v5, 0);
      sub_100022214(&v9);
      v6 = &v9;
LABEL_6:
      sub_10002249C(v6);
      return;
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DCC4();
    }
  }
}

void sub_1005DC790(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  v8 = sub_1005D09A8(a1, a2);
  v9 = v8;
  if (v8)
  {
    sub_1003A3604(v8, a4);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005E741C;
  v10[3] = &unk_100B00C78;
  v11 = a3;
  v12 = a4;
  v10[4] = a2;
  v10[5] = v9;
  sub_1005E72E4(a1 + 328, v10);
}

void sub_1005DC848()
{
  sub_10000C7D0();
  if (sub_1004134D8())
  {
    v0 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Free Voice Buf", v1, 2u);
    }

    sub_10025825C();
  }
}

_BYTE *sub_1005DC8C0(uint64_t a1, unint64_t a2, int a3)
{
  v17 = 0;
  v4 = sub_1002D3618(a2);
  v15 = v4;
  v16 = WORD2(v4);
  v14 = 0;
  sub_1000216B4(&v14);
  sub_10023DB58(&v15, &v17);
  v5 = sub_100255698(v17);
  sub_100022214(&v14);
  if (v17 && *(v17 + 278) == 1)
  {
    v6 = *(v17 + 70);
    v7 = qword_100BCE8F8;
    v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      v9 = v6 | 0x3F0000u;
      if (v8)
      {
        *v13 = 0;
        v10 = "Update connection packet types with HDR packets removed";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, v13, 2u);
      }
    }

    else
    {
      v9 = v6 & 0xFFC0FFFF;
      if (v8)
      {
        *v13 = 0;
        v10 = "Update connection packet types with HDR packets included";
        goto LABEL_8;
      }
    }

    v11 = sub_10000C7D0();
    (*(*v11 + 1384))(v11, v5, v9, 1);
  }

  return sub_10002249C(&v14);
}

uint64_t sub_1005DCA18(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 760);
  v8 = sub_1005D492C(a1, a2);
  v9 = sub_1005D09A8(a1, v8);
  v10 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      sub_1000E5A58(v8, __p);
      if (v25 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446466;
      v28 = v11;
      v29 = 1024;
      v30 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting audio from device %{public}s status %d", buf, 0x12u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446466;
      v28 = "NULL";
      v29 = 1024;
      v30 = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting audio from device %{public}s status %d", buf, 0x12u);
    }
  }

  v12 = a1 + 360;
  if (sub_1000DB468(v12))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084DD00();
    }

    sub_1005D70EC(off_100B50AC8);
  }

  if (v9 && sub_100320E3C(v9 + 400))
  {
    v13 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Voice command was active, sco will be closed", __p, 2u);
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_100210908(a2, 0);
    sub_100022214(__p);
    sub_100320E44(v9 + 400, 0);
    sub_10002249C(__p);
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (sub_1003203E8(v12))
  {
    sub_1003203F0(v12, 0);
  }

  if (v9)
  {
    sub_10000C7D0();
    if (sub_1004105CC() && sub_100320F94(v9 + 400) && sub_1000DB470(v12) && sub_100321184(v9 + 400) == 1918989668 && sub_100320F4C(v9 + 400) != 127 && sub_100320F4C(v9 + 400) != 256 && sub_100320F4C(v9 + 400) != 128 && sub_100320F4C(v9 + 400) != 129 && sub_100320F4C(v9 + 400) != 130)
    {
      v20 = sub_100320F4C(v9 + 400) == 255 ? 1 : v14;
      if ((v20 & 1) == 0 && (a3 & 1) == 0)
      {
        v21 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Faking SCO disconnection here, but actually letting it stay open since we're answering an incoming call", __p, 2u);
        }

        sub_10069BC6C(v9, 0, a4);
        sub_100318EE4(v9 + 400, 0);
        sub_10032117C(v9 + 400, 0);
        v18 = 0;
        goto LABEL_59;
      }
    }
  }

  v23 = 0;
  sub_1000216B4(&v23);
  v15 = sub_100216924(a2);
  sub_100022214(&v23);
  v16 = sub_1000D999C();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005E06A0;
  v22[3] = &unk_100ADF8F8;
  v22[4] = v12;
  sub_10000CA94(v16, v22);
  if (v9)
  {
    sub_100320FDC(v9 + 400, 0);
    sub_100320FEC(v9 + 400, 0);
    if (!a4)
    {
LABEL_46:
      sub_10069BC6C(v9, 0, a4);
      goto LABEL_47;
    }

    if (a4 != 116)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        if (v8)
        {
          sub_1000E5A58(v8, __p);
          sub_10084DD28();
        }

        else
        {
          sub_10084DD7C(buf, a4);
        }
      }

      if ((a3 & 1) == 0)
      {
        if (qword_100B50940 != -1)
        {
          sub_10084C8A4();
        }

        sub_10062F9E8(off_100B50938, v8, a4);
      }

      goto LABEL_46;
    }

    if ((sub_100217070() & 1) == 0)
    {
      a4 = 0;
      goto LABEL_46;
    }

    if (sub_1000E2140(v8, 12))
    {
      a4 = 116;
      goto LABEL_46;
    }
  }

LABEL_47:
  if (v15)
  {
    if (v15 == 1807)
    {
      v17 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Audio was already disconnected", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        if (v8)
        {
          sub_1000E5A58(v8, buf);
          sub_10084DDC8();
        }

        else
        {
          sub_10084DE1C(v31, v15);
        }
      }

      sub_1000618AC(&v23);
      sub_1002165D4(a2, v15);
      sub_100022214(&v23);
    }
  }

  if (v9)
  {
    sub_100318EE4(v9 + 400, 0);
  }

  sub_10002249C(&v23);
  v18 = 1;
LABEL_59:
  sub_1000088CC(v26);
  return v18;
}

void sub_1005DCFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_10002249C(&a17);
  sub_1000088CC(&a22);
  _Unwind_Resume(a1);
}

_BYTE *sub_1005DD01C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v34 = 0;
  sub_1000216B4(&v34);
  v6 = sub_100320D94(a2 + 400);
  v7 = sub_10020F7D0(v6);
  sub_100022214(&v34);
  v8 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100320FD4(a2 + 400);
    *buf = 67109632;
    v36 = a3;
    v37 = 1024;
    v38 = a5;
    v39 = 1024;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initiating SCO connection with delay of %d milliseconds, codec %d, lastCodec %d", buf, 0x14u);
  }

  if (sub_100320FD4(a2 + 400) == a5)
  {
    v10 = 0;
    if ((v7 & 0x80) == 0)
    {
LABEL_5:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_100320FD4(a2 + 400) != 0;
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  v11 = sub_100320DC4(a2 + 400) != 5 || v10;
LABEL_8:
  v12 = sub_100320D9C(a2 + 400);
  v13 = v12[128];
  v14 = v12[129];
  v15 = v12[130];
  v16 = v12[131];
  v17 = v12[132];
  v18 = v12[133];
  v19 = sub_10000C7D0();
  v20 = sub_1000DEB14(v12);
  v31 = (v15 << 16) | (v14 << 8) | (v16 << 24) | (v17 << 32) | (v18 << 40);
  v21 = (*(*v19 + 56))(v19, v31 | v13, v20, 1, 1, 1, 1, 0);
  v22 = sub_1005D4F60(v21, a5);
  v23 = (v13 << 40) | (v14 << 32) | (v15 << 24) | (v16 << 16) | (v17 << 8);
  sub_1005DC8C0(v22, v23 | v18, v22 ^ 1);
  if (!v11)
  {
    v29 = sub_100320D94(a2 + 400);
    sub_1005D4298(v29, v29, a3);
  }

  sub_1000618AC(&v34);
  v24 = sub_100320D94(a2 + 400);
  v25 = sub_1002110E8(v24, a5);
  sub_100022214(&v34);
  if (v25)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DE68();
    }

    v26 = sub_10000C7D0();
    v27 = sub_1000DEB14(v12);
    v28 = (*(*v26 + 56))(v26, v31 | v13, v27, 1, 0, 0, 1, 0);
    sub_1005DC8C0(v28, v23 | v18, 0);
  }

  if (sub_100320FD4(a2 + 400) != a5)
  {
    sub_100320FCC(a2 + 400, a5);
  }

  return sub_10002249C(&v34);
}

_BYTE *sub_1005DD358(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  sub_1000216B4(&v11);
  v4 = sub_100211504(a2);
  sub_100022214(&v11);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DED8();
    }

    goto LABEL_9;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10084C82C();
  }

  v5 = *(v4 + 4);
  LODWORD(v9[0]) = *v4;
  WORD2(v9[0]) = v5;
  v6 = sub_1000E6554(off_100B508E8, v9, 1);
  if (!v6)
  {
LABEL_9:
    sub_1000618AC(&v11);
    sub_10020F948(a2, 2701);
    sub_100022214(&v11);
    return sub_10002249C(&v11);
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (sub_1005D09A8(a1, v6))
  {
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_1000C23E0(v6, __p);
    sub_10084C6E8();
  }

  return sub_10002249C(&v11);
}

void sub_1005DD654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD6C4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 760);
  memset(&v12, 0, sizeof(v12));
  sub_1005D4AFC(a1, a2, &v12);
  if (sub_1003203E8(a1 + 360))
  {
    sub_1003203F0(a1 + 360, 0);
    sub_1005E0998(*(a1 + 824), (a1 + 832), sub_1005E0A24);
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v6 = off_100B54078;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v12;
  }

  v7 = sub_1006FD1E0(v6, a3, &__p);
  v8 = v7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else if (v7)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_13;
  }

  sub_1000D6C30(a1 + 360, 1);
  v9 = 255;
LABEL_13:
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  sub_1000088CC(v13);
  return v9;
}

void sub_1005DD800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD848(uint64_t a1, unsigned int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 760);
  memset(&v10, 0, sizeof(v10));
  sub_1005D4AFC(a1, a2, &v10);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v4 = off_100B54078;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  v5 = sub_1006FD298(v4, &__p);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_12:
    v7 = 255;
    goto LABEL_13;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084DF48();
  }

  v7 = 23;
LABEL_13:
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  sub_1000088CC(v11);
  return v7;
}

void sub_1005DD95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v20 - 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD9A0(uint64_t a1, unsigned int a2, int a3)
{
  v6 = sub_1005D492C(a1, a2);
  v22[0] = 0;
  v22[1] = 0;
  v7 = sub_1006A5878(v22, v6);
  v21 = 0;
  v19 = 0u;
  *v20 = 0u;
  *__p = 0u;
  if (!a3)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DFC0();
    }

    goto LABEL_11;
  }

  v8 = sub_1006A5FF8(v7);
  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084DF84();
    }

LABEL_11:
    v10 = 21;
    goto LABEL_18;
  }

  sub_10042A6A4(v8, 0, v13);
  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *v13;
  *&v19 = v14;
  HIBYTE(v14) = 0;
  LOBYTE(v13[0]) = 0;
  DWORD2(v19) = v15;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
    *v20 = v16;
    v21 = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16) = 0;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    *v20 = v16;
    v21 = v17;
  }

  (*(*v9 + 8))(v9);
  if ((SBYTE7(v19) & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  sub_1000DA180(v13, v11);
  v10 = sub_1005DD6C4(a1, a2, v13);
  sub_1000D8E64(v13);
LABEL_18:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1005DDB80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1000D8E64(va);
  sub_1000DA6C8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DDBAC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 - 35) < 0x17 && ((0x7FE081u >> (a3 - 35)))
  {
    v4 = dword_1008AA730[(a3 - 35)];
    v5 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Playing DTMF tone %c", v10, 8u);
    }

    v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/Frameworks/AudioToolbox.framework", kCFURLPOSIXPathStyle, 1u);
    v7 = CFBundleCreate(kCFAllocatorDefault, v6);
    FunctionPointerForName = CFBundleGetFunctionPointerForName(v7, @"AudioServicesPlaySystemSound");
    FunctionPointerForName(v4);
    CFRelease(v7);
    CFRelease(v6);
    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    if (sub_1006FD34C(off_100B54078))
    {
      return 0;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084DFFC();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005DDD4C(uint64_t a1, uint64_t a2)
{
  memset(&v30, 0, sizeof(v30));
  sub_1005D4AFC(a1, a2, &v30);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_1000D72E4(a1 + 360, &v27);
  if (sub_10057DF5C(a1) == 1)
  {
    v4 = sub_1005D0048(a1, a2);
    if (v4)
    {
      sub_100318EE4(v4 + 400, 1);
    }
  }

  sub_100320288(a1 + 360);
  if (!sub_1006EF030(&v27) && !sub_1006EEFFC(&v27))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E06C();
    }

    goto LABEL_28;
  }

  if (!sub_1003203B8(a1 + 360, 1))
  {
    v5 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_100320370(a1 + 360);
      sub_1000DAB24(&v24, buf);
      v16 = v26;
      v17 = *buf;
      v21 = 1;
      sub_1000DAB24(&v21, v22);
      v18 = buf;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if (v23 >= 0)
      {
        v19 = v22;
      }

      else
      {
        v19 = v22[0];
      }

      *v31 = 136446466;
      v32 = v18;
      v33 = 2082;
      v34 = v19;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unexpected answer event as our call setup state is %{public}s, not %{public}s", v31, 0x16u);
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (v26 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (v27 == v28)
  {
LABEL_21:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E0A8();
    }

    goto LABEL_28;
  }

  v6 = v27 + 104;
  while (1)
  {
    v7 = *(v6 - 88);
    if (v7 == 5)
    {
      break;
    }

    v8 = v7 == 6 || v6 == v28;
    v6 += 104;
    if (v8)
    {
      if (v7 != 6)
      {
        goto LABEL_21;
      }

      break;
    }
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v9 = off_100B54078;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v30;
  }

  v10 = sub_1006FCED4(v9, &__p);
  v11 = v10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_28;
    }
  }

  else if (v10)
  {
LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  v14 = sub_1005D0048(a1, a2);
  if (sub_10032102C(v14 + 400))
  {
    LOBYTE(v22[0]) = 0;
    v31[0] = 0;
    LOBYTE(v24) = 0;
    v15 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "This kit requires a hack to answer incoming calls.", buf, 2u);
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100211424(v22, v31, &v24);
    sub_10020FE14(a2, 1);
    sub_10020FF34(a2, 0);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  v12 = 255;
LABEL_29:
  *buf = &v27;
  sub_1000D6BD4(buf);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_1005DE0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  __p = &a27;
  sub_1000D6BD4(&__p);
  if (*(v27 - 81) < 0)
  {
    operator delete(*(v27 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005DE160(uint64_t a1, unsigned int a2)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 760);
  v4 = sub_1005D0048(a1, a2);
  sub_1005D492C(a1, a2);
  if (v4)
  {
    sub_100318EE4(v4 + 400, 0);
  }

  if (sub_1003201DC(a1 + 360) || sub_1003201E4(a1 + 360))
  {
    v5 = sub_1003201FC(a1 + 360);
    v6 = qword_100BCE8F8;
    v7 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found incoming call to reject", buf, 2u);
      }

      v10 = sub_1005E0AD4(a1, a2);
      goto LABEL_23;
    }

    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "We have both an incoming and active call, hanging up the active call.", buf, 2u);
    }
  }

  if (sub_1003201FC(a1 + 360) || sub_100320204(a1 + 360))
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found active call to hang up", buf, 2u);
    }

    if (v4)
    {
      sub_100320F34(v4 + 400, 1);
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    v9 = sub_1006FCFB0(off_100B54078);
LABEL_17:
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 255;
    }

    goto LABEL_23;
  }

  if (sub_1000DB468(a1 + 360))
  {
    v12 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found ongoing virtual call - Acking device and notifying upper layers.", buf, 2u);
    }

    sub_10057E984();
  }

  v13 = sub_10032020C(a1 + 360);
  v14 = qword_100BCE8F8;
  if (v13)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Hanging up held call.", buf, 2u);
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    v9 = sub_1006FCFD8(off_100B54078);
    goto LABEL_17;
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Hangup event was unexpected - dumping state and call list...", buf, 2u);
    v14 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v21 = sub_100320370(a1 + 360);
    v15 = v22;
    sub_1000DAB24(&v21, v22);
    if (v23 < 0)
    {
      v15 = v22[0];
    }

    v16 = "no";
    if (sub_1003201DC(a1 + 360))
    {
      v17 = "yes";
    }

    else
    {
      v17 = "no";
    }

    if (sub_1003201E4(a1 + 360))
    {
      v16 = "yes";
    }

    sub_1000D72E4(a1 + 360, v19);
    sub_1000D6D88(v19, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446978;
    v27 = v15;
    v28 = 2082;
    v29 = v17;
    v30 = 2082;
    v31 = v16;
    v32 = 2082;
    v33 = p_p;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "callSetup: %{public}s, callRinging: %{public}s, callWaiting: %{public}s, calls: %{public}s", buf, 0x2Au);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v25 = v19;
    sub_1000D6BD4(&v25);
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  v10 = 0;
LABEL_23:
  sub_1000088CC(v24);
  return v10;
}

void sub_1005DE598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  sub_1000D6BD4(&a25);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DE5EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = sub_1005D492C(a1, *(a2 + 4));
  if (v4 <= 1)
  {
    if (!v4)
    {
      v14 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if (v26 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          *buf = 136446210;
          v28[0] = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received release held calls event from device %{public}s", buf, 0xCu);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v28[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received release held calls event from device %{public}s", buf, 0xCu);
        }
      }

      return sub_1005DF160(a1, *(a2 + 4));
    }

    if (v4 == 1)
    {
      v8 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if (v26 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v28[0] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received release active calls and answer incoming call event from device %{public}s", buf, 0xCu);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v28[0] = "NULL";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received release active calls and answer incoming call event from device %{public}s", buf, 0xCu);
        }
      }

      return sub_1005DF35C(a1, *(a2 + 4));
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v10 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            sub_1000E5A58(v5, __p);
            if (v26 >= 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            *buf = 136446210;
            v28[0] = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received hold active calls event from device %{public}s", buf, 0xCu);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446210;
            v28[0] = "NULL";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received hold active calls event from device %{public}s", buf, 0xCu);
          }
        }

        return sub_1005DF6D4(a1, *(a2 + 4));
      case 3:
        v12 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            sub_1000E5A58(v5, __p);
            if (v26 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136446210;
            v28[0] = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received add held call event from device %{public}s", buf, 0xCu);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446210;
            v28[0] = "NULL";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received add held call event from device %{public}s", buf, 0xCu);
          }
        }

        return sub_1005DFA10(a1);
      case 4:
        v6 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v5)
          {
            sub_1000E5A58(v5, __p);
            if (v26 >= 0)
            {
              v7 = __p;
            }

            else
            {
              v7 = __p[0];
            }

            *buf = 136446210;
            v28[0] = v7;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call transfer event from device %{public}s", buf, 0xCu);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446210;
            v28[0] = "NULL";
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received call transfer event from device %{public}s", buf, 0xCu);
          }
        }

        sub_1005DFA98();
        return 4;
    }
  }

  if (v4 < 10)
  {
    goto LABEL_54;
  }

  v16 = 1;
  v17 = v4;
  do
  {
    v18 = v17;
    v17 /= 0xAu;
    v16 *= 10;
  }

  while (v18 > 0x63);
  v19 = v4 - v16 * v17;
  if (v17 != 2)
  {
    if (v17 == 1)
    {
      v20 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if (v26 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          *buf = 67109378;
          LODWORD(v28[0]) = v19;
          WORD2(v28[0]) = 2082;
          *(v28 + 6) = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received release active call event for call index %d from device %{public}s", buf, 0x12u);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 67109378;
          LODWORD(v28[0]) = v19;
          WORD2(v28[0]) = 2082;
          *(v28 + 6) = "NULL";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received release active call event for call index %d from device %{public}s", buf, 0x12u);
        }
      }

      return sub_1005DFAE0(a1, 0, v19);
    }

LABEL_54:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E0E4();
    }

    return 4;
  }

  v23 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      sub_1000E5A58(v5, __p);
      if (v26 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      *buf = 67109378;
      LODWORD(v28[0]) = v19;
      WORD2(v28[0]) = 2082;
      *(v28 + 6) = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received private conference event for call index %d from device %{public}s", buf, 0x12u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 67109378;
      LODWORD(v28[0]) = v19;
      WORD2(v28[0]) = 2082;
      *(v28 + 6) = "NULL";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received private conference event for call index %d from device %{public}s", buf, 0x12u);
    }
  }

  return sub_1005E007C(a1, 0, v19);
}

uint64_t sub_1005DED04(uint64_t a1, uint64_t a2)
{
  memset(v28, 0, sizeof(v28));
  sub_1000DA2A8(v28);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_1000DA2A8(&v25);
  memset(&__p, 0, sizeof(__p));
  v23 = 0;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_1000D6A54(v21);
  v4 = sub_1005D492C(a1, a2);
  if (sub_100320268(a1 + 360) & 1) != 0 || (sub_100320280(a1 + 360))
  {
    goto LABEL_35;
  }

  sub_1000D72E4(a1 + 360, &v20);
  sub_1000D8984(&v25, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_, 0x4EC4EC4EC4EC4EC5 * ((v20.__r_.__value_.__l.__size_ - v20.__r_.__value_.__r.__words[0]) >> 3));
  v19.__r_.__value_.__r.__words[0] = &v20;
  sub_1000D6BD4(&v19);
  v5 = v25;
  if (v25 == v26)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v6 = *(v5 + 16) - 1;
    if (v6 >= 7)
    {
      v13 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_1000DA754(v5, &v20);
        v14 = &v20;
        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = v20.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v30 = v14;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Found invalid call status - skipping call: %s", buf, 0xCu);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_29;
    }

    v7 = dword_1008AA78C[v6];
    sub_1000DA184(v21, v5 + 24);
    v8 = *(v5 + 8);
    v9 = *(v5 + 12);
    v10 = *(v5 + 13);
    sub_1005D4DE0(v5 + 80, v4, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v20;
    v20.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&v20);
    v11 = sub_1006FC7C4(v21);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      sub_1006FC7DC(v21, &v19);
      v12 = (v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v19 : v19.__r_.__value_.__r.__words[0];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      p_p = __p.__r_.__value_.__l.__size_ ? __p.__r_.__value_.__r.__words[0] : 0;
    }

    else
    {
      p_p = &__p;
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        p_p = 0;
      }
    }

    v16 = sub_100210E30(a2, v8, (v9 ^ 1) & 1, v7, 0, v10, v12, v21[24], p_p);
    if (!v11 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    sub_100022214(&v20);
    if (v16)
    {
      break;
    }

    sub_1000D90A8(v28, v5);
    sub_10002249C(&v20);
LABEL_29:
    v5 += 104;
    if (v5 == v26)
    {
      goto LABEL_34;
    }
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E154();
  }

  sub_10002249C(&v20);
LABEL_34:
  sub_1000DA9C4(v18);
  sub_100320228(a1 + 360, v18);
  v20.__r_.__value_.__r.__words[0] = v18;
  sub_1000D6BD4(&v20);
LABEL_35:
  sub_1000D8E64(v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *v21 = &v25;
  sub_1000D6BD4(v21);
  *v21 = v28;
  sub_1000D6BD4(v21);
  return 255;
}

void sub_1005DF098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_1000D6BD4(&a23);
  sub_1000D8E64(&a26);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  a26 = v39 - 176;
  sub_1000D6BD4(&a26);
  a26 = v39 - 152;
  sub_1000D6BD4(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DF160(uint64_t a1, unsigned int a2)
{
  memset(v10, 0, sizeof(v10));
  sub_1000DA2A8(v10);
  sub_1000D72E4(a1 + 360, &v8);
  sub_1000D8984(v10, v8, v9, 0x4EC4EC4EC4EC4EC5 * ((v9 - v8) >> 3));
  v12 = &v8;
  sub_1000D6BD4(&v12);
  v4 = sub_100320370(a1 + 360);
  if (sub_1006EF030(v10) || sub_1006EEFFC(v10))
  {
    v5 = sub_1005E0AD4(a1, a2);
    goto LABEL_14;
  }

  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_100320370(a1 + 360);
      sub_1000DAB24(&v7, &v8);
      sub_10084E1C4();
    }

LABEL_7:
    v5 = 0;
    goto LABEL_14;
  }

  if (!sub_1006EEF5C(v10))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E220();
    }

    goto LABEL_7;
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCFD8(off_100B54078))
  {
    v5 = 0;
  }

  else
  {
    v5 = 255;
  }

LABEL_14:
  v11 = v10;
  sub_1000D6BD4(&v11);
  return v5;
}

void sub_1005DF318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_1000D6BD4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DF35C(uint64_t a1, unsigned int a2)
{
  memset(&v21, 0, sizeof(v21));
  sub_1005D4AFC(a1, a2, &v21);
  if (sub_1003201E4(a1 + 360))
  {
    if (!sub_1003203B8(a1 + 360, 1))
    {
      v3 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_100320370(a1 + 360);
        sub_1000DAB24(&v18, v19);
        v9 = v20;
        v10 = v19[0];
        v15 = 1;
        sub_1000DAB24(&v15, v16);
        v11 = v19;
        if (v9 < 0)
        {
          v11 = v10;
        }

        if (v17 >= 0)
        {
          v12 = v16;
        }

        else
        {
          v12 = v16[0];
        }

        *buf = 136446466;
        v23 = v11;
        v24 = 2082;
        v25 = v12;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unexpected release active calls event as our call setup state is %{public}s, not %{public}s", buf, 0x16u);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    v4 = off_100B54078;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100008904(&__dst, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v21;
    }

    if (sub_1006FD000(v4, &__dst))
    {
      v6 = 0;
    }

    else
    {
      v6 = 255;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = __dst.__r_.__value_.__r.__words[0];
LABEL_35:
      operator delete(v7);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (!sub_1003203B8(a1 + 360, 0))
  {
    if (sub_100320204(a1 + 360))
    {
      if (qword_100B54080 != -1)
      {
        sub_10084CD0C();
      }

      if (sub_1006FCFB0(off_100B54078))
      {
        v6 = 0;
      }

      else
      {
        v6 = 255;
      }

      goto LABEL_39;
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E25C();
    }

LABEL_38:
    v6 = 0;
    goto LABEL_39;
  }

  if (!sub_1003201FC(a1 + 360) && !sub_10032020C(a1 + 360))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E298();
    }

    goto LABEL_38;
  }

  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  v5 = off_100B54078;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v21;
  }

  if (sub_1006FD000(v5, &__p))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_35;
  }

LABEL_39:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1005DF66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005DF6D4(uint64_t a1, unsigned int a2)
{
  memset(&v21, 0, sizeof(v21));
  sub_1005D4AFC(a1, a2, &v21);
  if (sub_1003201E4(a1 + 360))
  {
    if (!sub_1003203B8(a1 + 360, 1))
    {
      v3 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_100320370(a1 + 360);
        sub_1000DAB24(&v18, v19);
        v9 = v20;
        v10 = v19[0];
        v15 = 1;
        sub_1000DAB24(&v15, v16);
        v11 = v19;
        if (v9 < 0)
        {
          v11 = v10;
        }

        if (v17 >= 0)
        {
          v12 = v16;
        }

        else
        {
          v12 = v16[0];
        }

        *buf = 136446466;
        v23 = v11;
        v24 = 2082;
        v25 = v12;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unexpected hold active calls event as our call setup state is %{public}s, not %{public}s", buf, 0x16u);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    v4 = off_100B54078;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100008904(&__dst, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v21;
    }

    if (sub_1006FD0B4(v4, &__dst))
    {
      v6 = 0;
    }

    else
    {
      v6 = 255;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = __dst.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v7);
    }
  }

  else if (sub_1003203B8(a1 + 360, 0))
  {
    if (sub_1003201FC(a1 + 360) || sub_10032020C(a1 + 360))
    {
      if (qword_100B54080 != -1)
      {
        sub_10084CD0C();
      }

      v5 = off_100B54078;
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100008904(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v21;
      }

      if (sub_1006FD0B4(v5, &__p))
      {
        v6 = 0;
      }

      else
      {
        v6 = 255;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_30;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E310();
      }

      v6 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E2D4();
    }

    v6 = 3;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1005DF9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 65) < 0)
  {
    operator delete(*(v32 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005DFA10(uint64_t a1)
{
  if (sub_10032020C(a1 + 360))
  {
    if (qword_100B54080 != -1)
    {
      sub_10084CCF8();
    }

    if (sub_1006FD168(off_100B54078))
    {
      return 0;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084E34C();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005DFA98()
{
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E388();
  }

  return 4;
}

uint64_t sub_1005DFAE0(uint64_t a1, uint64_t a2, int a3)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_10032021C(&v31);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_1000D72E4(a1 + 360, &v28);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FD3C4(off_100B54078))
  {
    if (a3)
    {
      v5 = sub_1006EEF34(&v31, a3);
      v6 = v5;
      if (v32 == v5)
      {
        v16 = sub_1006EEF34(&v28, a3);
        v17 = v16;
        if (v29 != v16)
        {
          v18 = *v16;
          sub_10004DFB4(src, v18);
          uuid_copy(uu, src);

          if (uuid_is_null(uu))
          {
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_1000DA754(v17, src);
              sub_10084E418();
            }
          }
        }
      }

      else
      {
        v7 = *v5;
        sub_10004DFB4(src, v7);
        uuid_copy(uu, src);

        if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_1000DA754(v6, src);
          sub_10084E3C4();
        }
      }
    }

    else
    {
      v9 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *src = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Allowing zero index release active call command - finding index of oldest call", src, 2u);
      }

      v10 = v31;
      if (v31 == v32)
      {
        goto LABEL_30;
      }

      v11 = 0;
      do
      {
        v12 = *(v10 + 8);
        if (!v11 || v12 < v11)
        {
          v13 = *v10;
          sub_10004DFB4(src, v13);
          uuid_copy(uu, src);

          if (uuid_is_null(uu))
          {
            v14 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_1000DA754(v10, src);
              v15 = src;
              if (v35 < 0)
              {
                v15 = *src;
              }

              *buf = 67109378;
              v37 = v12;
              v38 = 2080;
              v39 = v15;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Found invalid call in sent calls at index %d (call: %s)", buf, 0x12u);
              if (v35 < 0)
              {
                operator delete(*src);
              }
            }
          }

          v11 = v12;
        }

        v10 += 104;
      }

      while (v10 != v32);
      if (!v11)
      {
LABEL_30:
        v19 = v28;
        if (v28 != v29)
        {
          v20 = 0;
          do
          {
            v21 = *(v19 + 2);
            if (!v20 || v21 < v20)
            {
              v22 = *v19;
              sub_10004DFB4(src, v22);
              uuid_copy(uu, src);

              if (uuid_is_null(uu))
              {
                v23 = qword_100BCE8F8;
                if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
                {
                  sub_1000DA754(v19, src);
                  v24 = v35 >= 0 ? src : *src;
                  *buf = 67109378;
                  v37 = v21;
                  v38 = 2080;
                  v39 = v24;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Found invalid call in current calls at index %d (call: %s)", buf, 0x12u);
                  if (v35 < 0)
                  {
                    operator delete(*src);
                  }
                }
              }

              v20 = v21;
            }

            v19 += 13;
          }

          while (v19 != v29);
        }
      }
    }

    if (uuid_is_null(uu))
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E46C();
      }

      v8 = 21;
    }

    else
    {
      if (qword_100B54080 != -1)
      {
        sub_10084CD0C();
      }

      v25 = off_100B54078;
      v26 = sub_10004DF60(uu);
      if (sub_1006FD190(v25))
      {
        v8 = 0;
      }

      else
      {
        v8 = 255;
      }
    }
  }

  else
  {
    v8 = 4;
  }

  *uu = &v28;
  sub_1000D6BD4(uu);
  v28 = &v31;
  sub_1000D6BD4(&v28);
  return v8;
}

void sub_1005DFFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v14 - 104) = &a11;
  sub_1000D6BD4((v14 - 104));
  a11 = &a14;
  sub_1000D6BD4(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E007C(uint64_t a1, uint64_t a2, int a3)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_10032021C(&v31);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_1000D72E4(a1 + 360, &v28);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FD3C4(off_100B54078))
  {
    if (a3)
    {
      v5 = sub_1006EEF34(&v31, a3);
      v6 = v5;
      if (v32 == v5)
      {
        v16 = sub_1006EEF34(&v28, a3);
        v17 = v16;
        if (v29 != v16)
        {
          v18 = *v16;
          sub_10004DFB4(src, v18);
          uuid_copy(uu, src);

          if (uuid_is_null(uu))
          {
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_1000DA754(v17, src);
              sub_10084E418();
            }
          }
        }
      }

      else
      {
        v7 = *v5;
        sub_10004DFB4(src, v7);
        uuid_copy(uu, src);

        if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_1000DA754(v6, src);
          sub_10084E3C4();
        }
      }
    }

    else
    {
      v9 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *src = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Allowing zero index private conference command - finding index of oldest call", src, 2u);
      }

      v10 = v31;
      if (v31 == v32)
      {
        goto LABEL_30;
      }

      v11 = 0;
      do
      {
        v12 = *(v10 + 8);
        if (!v11 || v12 < v11)
        {
          v13 = *v10;
          sub_10004DFB4(src, v13);
          uuid_copy(uu, src);

          if (uuid_is_null(uu))
          {
            v14 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_1000DA754(v10, src);
              v15 = src;
              if (v35 < 0)
              {
                v15 = *src;
              }

              *buf = 67109378;
              v37 = v12;
              v38 = 2080;
              v39 = v15;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Found invalid call in sent calls at index %d (call: %s)", buf, 0x12u);
              if (v35 < 0)
              {
                operator delete(*src);
              }
            }
          }

          v11 = v12;
        }

        v10 += 104;
      }

      while (v10 != v32);
      if (!v11)
      {
LABEL_30:
        v19 = v28;
        if (v28 != v29)
        {
          v20 = 0;
          do
          {
            v21 = *(v19 + 2);
            if (!v20 || v21 < v20)
            {
              v22 = *v19;
              sub_10004DFB4(src, v22);
              uuid_copy(uu, src);

              if (uuid_is_null(uu))
              {
                v23 = qword_100BCE8F8;
                if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
                {
                  sub_1000DA754(v19, src);
                  v24 = v35 >= 0 ? src : *src;
                  *buf = 67109378;
                  v37 = v21;
                  v38 = 2080;
                  v39 = v24;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Found invalid call in current calls at index %d (call: %s)", buf, 0x12u);
                  if (v35 < 0)
                  {
                    operator delete(*src);
                  }
                }
              }

              v20 = v21;
            }

            v19 += 13;
          }

          while (v19 != v29);
        }
      }
    }

    if (uuid_is_null(uu))
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E4DC();
      }

      v8 = 21;
    }

    else
    {
      if (qword_100B54080 != -1)
      {
        sub_10084CD0C();
      }

      v25 = off_100B54078;
      v26 = sub_10004DF60(uu);
      if (sub_1006FD1B8(v25))
      {
        v8 = 0;
      }

      else
      {
        v8 = 255;
      }
    }
  }

  else
  {
    v8 = 4;
  }

  *uu = &v28;
  sub_1000D6BD4(uu);
  v28 = &v31;
  sub_1000D6BD4(&v28);
  return v8;
}

void sub_1005E0570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v14 - 104) = &a11;
  sub_1000D6BD4((v14 - 104));
  a11 = &a14;
  sub_1000D6BD4(&a11);
  _Unwind_Resume(a1);
}

void sub_1005E0618(uint64_t a1, int a2, unsigned int a3, int a4)
{
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E54C();
    }
  }

  else if (a3)
  {
    v5 = sub_1005D0048(a1, a3);
    if (v5)
    {
      v6 = v5 + 400;

      sub_1000DAD04(v6, a4);
    }
  }
}

void sub_1005E06A8(int a1, uint64_t a2, int a3, __int16 a4)
{
  if (a2)
  {
    v7 = sub_100216D00(a2);
    v8 = sub_1000D999C();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005E93E8;
    v9[3] = &unk_100ADF940;
    v12 = v7;
    v10 = a1;
    v11 = a3;
    v13 = a4;
    sub_10000CA94(v8, v9);
  }
}

uint64_t sub_1005E0750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D09A8(a1, a2);
  v5 = sub_1003211B8(v4 + 400);
  v6 = sub_100320184(v4 + 400);
  v7 = sub_1003211F8(v4 + 400);
  v8 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT) && ((sub_1000E5A58(a2, __p), v18 >= 0) ? (v9 = __p) : (v9 = __p[0]), *buf = 136446722, v20 = v9, v21 = 1024, v22 = v5, v23 = 1024, v24 = v7, _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transitioning to HandsfreeAoS - device:%{public}s isInAdvancedSniff:%d pendingAoSExit:%d", buf, 0x18u), v18 < 0))
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else if (v7)
  {
LABEL_7:
    sub_1003211E0(v4 + 400, 1);
    return 0;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  v11 = sub_1000E1FE8(a2 + 128);
  sub_100022214(buf);
  if (v5)
  {
    v12 = sub_1005D4A04(a1, a2 + 128);
    sub_1000618AC(buf);
    v10 = sub_100211538(v12, v6);
  }

  else
  {
    v13 = sub_100308C38(a2 + 128);
    v14 = sub_10000C7D0();
    BYTE2(v16) = 1;
    LOWORD(v16) = 2;
    (*(*v14 + 1840))(v14, *v11, 24, 20, 8, 1, 0, v13, 0x2D000000001, v16);
    v10 = 0;
  }

  sub_10002249C(buf);
  return v10;
}

void sub_1005E0970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void (*sub_1005E0998(void *a1, void *a2, void (*a3)(unint64_t, void)))(unint64_t, void)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v6 + 16);
      a3(v3, v6[5]);
      v7 = v6[1];
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
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != a2);
  }

  return a3;
}

_BYTE *sub_1005E0A24(unsigned __int16 a1, uint64_t a2)
{
  result = sub_100320E3C(a2 + 400);
  if (result)
  {
    sub_100320E44(a2 + 400, 0);
    v6 = 0;
    sub_1000216B4(&v6);
    v5 = sub_100210908(a1, 0);
    sub_100022214(&v6);
    if (v5)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E5BC();
      }
    }

    return sub_10002249C(&v6);
  }

  return result;
}

uint64_t sub_1005E0AD4(uint64_t a1, unsigned int a2)
{
  sub_100320288(a1 + 360);
  v4 = sub_1005D0048(a1, a2);
  if (v4)
  {
    sub_100318EE4(v4 + 400, 0);
  }

  if (sub_1003201DC(a1 + 360) || sub_1003201E4(a1 + 360))
  {
    if (!sub_1003203B8(a1 + 360, 1))
    {
      v5 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_100320370(a1 + 360);
        sub_1000DAB24(&v14, v15);
        v7 = v16;
        v8 = v15[0];
        v11 = 1;
        sub_1000DAB24(&v11, __p);
        v9 = v15;
        if (v7 < 0)
        {
          v9 = v8;
        }

        if (v13 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136446466;
        v18 = v9;
        v19 = 2082;
        v20 = v10;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Attempting to reject incoming call but call setup is %{public}s instead of %{public}s", buf, 0x16u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v16 < 0)
        {
          operator delete(v15[0]);
        }
      }
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    if (sub_1006FCF88(off_100B54078))
    {
      return 0;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084E5F8();
      return 0;
    }
  }

  return result;
}

void sub_1005E0CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E0CD4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_1005D09A8(a1, a2);
  v6 = qword_100BCE8F8;
  if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_8;
  }

  v7 = a3;
  if (a3[23] < 0)
  {
    v7 = *a3;
  }

  sub_1000E5A58(a2, __p);
  v8 = v13 >= 0 ? __p : __p[0];
  *buf = 136446466;
  v15 = v7;
  v16 = 2082;
  v17 = v8;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending '%{public}s' Siri status event for device %{public}s", buf, 0x16u);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }
  }

  else
  {
LABEL_8:
    if (!v5)
    {
      return;
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v9 = sub_100320D94(v5 + 400);
  v10 = a3[23];
  if (v10 < 0)
  {
    v11 = a3;
    a3 = *a3;
    v10 = *(v11 + 1);
  }

  sub_10020F488(v9, a3, v10);
  sub_100022214(__p);
  sub_10002249C(__p);
}

void sub_1005E0E44(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  sub_100007E30(&v5[1], "");
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCDB4(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E670();
    }
  }

  else
  {
    v2 = v5[0];
    if (SHIBYTE(v5[3]) < 0)
    {
      sub_100008904(__p, v5[1], v5[2]);
    }

    else
    {
      *__p = *&v5[1];
      v4 = v5[3];
    }

    sub_10032018C(a1 + 360, &v2);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v5[3]) < 0)
  {
    operator delete(v5[1]);
  }
}

void sub_1005E0F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

_BYTE *sub_1005E0F7C(uint64_t a1)
{
  sub_1005D55C0(a1);
  v5 = 0;
  sub_1000216B4(&v5);
  v2 = sub_100320144(a1 + 360);
  sub_10020F3E4(v2);
  v3 = sub_100320154(a1 + 360);
  sub_10020F408(v3);
  return sub_10002249C(&v5);
}

void sub_1005E0FF0(void *a1)
{
  if (qword_100B54080 != -1)
  {
    sub_10084CCF8();
  }

  v2 = sub_1006FCDDC(off_100B54078);
  if (v2)
  {
    sub_1005E1094(a1, 0, 0, v2);
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E6AC();
  }
}

void sub_1005E1094(void *a1, char *a2, _BYTE *a3, void *a4)
{
  v7 = a4;
  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, (a1 + 95));
  if (a2)
  {
    v8 = *a2;
    v9 = v8 != sub_1003203D0((a1 + 45));
    sub_1003203C8((a1 + 45), *a2);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if (a3)
    {
LABEL_3:
      if (*a3 == 100)
      {
        v10 = 5;
      }

      else
      {
        v10 = *a3 / 0x14u + 1;
      }

      v11 = sub_1003203E0((a1 + 45));
      sub_1003203D8((a1 + 45), v10);
      v12 = v10 != v11;
      if (v7)
      {
        goto LABEL_7;
      }

LABEL_10:
      v17 = 0;
      v18 = 0;
      goto LABEL_11;
    }
  }

  v12 = 0;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_7:
  v13 = [v7 service];
  v14 = sub_1003201C4((a1 + 45));
  v15 = [v7 roaming];
  v16 = sub_1003201CC((a1 + 45));
  sub_1003201D4((a1 + 45), v7);
  v17 = v13 ^ v14;
  v18 = v15 ^ v16;
LABEL_11:
  if (v9 || v12 || (v17 & 1) != 0 || v18)
  {
    v35 = 0;
    sub_1000216B4(&v35);
    if (a1[105])
    {
      v19 = a1[103];
      if (v19 != a1 + 104)
      {
        do
        {
          if (v9)
          {
            v20 = *(v19 + 16);
            v21 = sub_1003203D0((a1 + 45));
            sub_10021038C(v20, v21);
          }

          if (v12)
          {
            v22 = *(v19 + 16);
            v23 = sub_1003203E0((a1 + 45));
            sub_100210250(v22, v23);
          }

          if (v17)
          {
            v24 = *(v19 + 16);
            v25 = sub_1003201C4((a1 + 45));
            sub_10020FCF8(v24, v25);
          }

          if (v18)
          {
            v26 = *(v19 + 16);
            v27 = sub_1003201CC((a1 + 45));
            sub_100210500(v26, v27);
          }

          v28 = v19[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v19[2];
              v30 = *v29 == v19;
              v19 = v29;
            }

            while (!v30);
          }

          v19 = v29;
        }

        while (v29 != a1 + 104);
      }
    }

    else
    {
      if (v9)
      {
        v31 = sub_1003203D0((a1 + 45));
        sub_10021038C(0, v31);
      }

      if (v12)
      {
        v32 = sub_1003203E0((a1 + 45));
        sub_100210250(0, v32);
      }

      if (v17)
      {
        v33 = sub_1003201C4((a1 + 45));
        sub_10020FCF8(0, v33);
      }

      if (v18)
      {
        v34 = sub_1003201CC((a1 + 45));
        sub_100210500(0, v34);
      }
    }

    sub_10002249C(&v35);
  }

  sub_1000088CC(v36);
}

void sub_1005E1318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1005E13C0(uint64_t a1, uint64_t a2, char a3)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = a3;
  v4 = sub_1000D999C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005E1478;
  v5[3] = &unk_100AE25F0;
  v5[4] = v6;
  v5[5] = a1;
  sub_10000CA94(v4, v5);
  _Block_object_dispose(v6, 8);
}

void sub_1005E1460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005E14A0(uint64_t a1, void *a2, char a3)
{
  v17 = a3;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = sub_100320D9C(v5[5] + 400);
      if (sub_1000DAD9C(a1 + 360, 1) && v7)
      {
        if (*(v7 + 128))
        {
LABEL_5:
          if (*(v7 + 1040) == 1)
          {
            v8 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000C23E0(v7, __p);
              v9 = __p;
              if (v16 < 0)
              {
                v9 = __p[0];
              }

              *buf = 141558275;
              v19 = 1752392040;
              v20 = 2081;
              v21 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Wireless Splitter suppressing UpdateCallStatus for device %{private, mask.hash}s due to WS being enabled", buf, 0x16u);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_16;
          }
        }

        else
        {
          v10 = 0;
          while (v10 != 5)
          {
            if (*(v7 + 129 + v10++))
            {
              if ((v10 - 1) <= 4)
              {
                goto LABEL_5;
              }

              break;
            }
          }
        }
      }

      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v5 + 16);
      sub_1005EA138(&v17, v3, v5[5]);
LABEL_16:
      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }
}

void sub_1005E1684(uint64_t a1, void *a2, void (*a3)(unint64_t, void))
{
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v8 = sub_100320D9C(v5[5] + 400);
      if (sub_1000DAD9C(a1 + 360, 1) && v8)
      {
        if (*(v8 + 128))
        {
LABEL_5:
          if (*(v8 + 1040) == 1)
          {
            v9 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000C23E0(v8, __p);
              v10 = __p;
              if (v17 < 0)
              {
                v10 = __p[0];
              }

              *buf = 141558275;
              v19 = 1752392040;
              v20 = 2081;
              v21 = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter suppressing UpdateCallStatus for device %{private, mask.hash}s due to WS being enabled", buf, 0x16u);
              if (v17 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_16;
          }
        }

        else
        {
          v11 = 0;
          while (v11 != 5)
          {
            if (*(v8 + 129 + v11++))
            {
              if ((v11 - 1) <= 4)
              {
                goto LABEL_5;
              }

              break;
            }
          }
        }
      }

      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v5 + 16);
      a3(v3, v5[5]);
LABEL_16:
      v13 = v5[1];
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
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1005E1864(unsigned __int16 a1, uint64_t a2)
{
  if (sub_100320E64(a2 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v3 = sub_1005D492C(off_100B50AC8, a1);
    v4 = *sub_10000C798();
    if (((*(v4 + 416))() & 1) == 0)
    {
      v5 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 2;
        v6 = v13;
        sub_1000DAB24(&v12, v13);
        if (v14 < 0)
        {
          v6 = v13[0];
        }

        if (v3)
        {
          sub_1000E5A58(v3, __p);
          if (v16 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = *__p;
          }

          *buf = 136446466;
          v18 = v6;
          v19 = 2082;
          v20 = v7;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          if (v16 < 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          *buf = 136446466;
          v18 = v6;
          v19 = 2082;
          v20 = "NULL";
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      LOBYTE(v13[0]) = 0;
      sub_1000216B4(v13);
      v8 = sub_10020FF34(a1, 2u);
      sub_10002249C(v13);
      if (v8)
      {
        goto LABEL_31;
      }
    }

    v9 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        sub_1000E5A58(v3, v13);
        if (v14 >= 0)
        {
          v10 = v13;
        }

        else
        {
          v10 = v13[0];
        }

        *__p = 136446210;
        *&__p[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending call status call active to device %{public}s", __p, 0xCu);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      else
      {
        *__p = 136446210;
        *&__p[4] = "NULL";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending call status call active to device %{public}s", __p, 0xCu);
      }
    }

    LOBYTE(v13[0]) = 0;
    sub_1000216B4(v13);
    v11 = sub_10020FE14(a1, 1);
    sub_10002249C(v13);
    if (v11)
    {
LABEL_31:
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E6FC();
      }
    }
  }
}

void sub_1005E1B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E1BB8(uint64_t a1, void *a2, int a3)
{
  v17 = a3;
  v18 = BYTE2(a3);
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = sub_100320D9C(v5[5] + 400);
      if (sub_1000DAD9C(a1 + 360, 1) && v7)
      {
        if (*(v7 + 128))
        {
LABEL_5:
          if (*(v7 + 1040) == 1)
          {
            v8 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000C23E0(v7, __p);
              v9 = __p;
              if (v16 < 0)
              {
                v9 = __p[0];
              }

              *buf = 141558275;
              v20 = 1752392040;
              v21 = 2081;
              v22 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Wireless Splitter suppressing UpdateCallStatus for device %{private, mask.hash}s due to WS being enabled", buf, 0x16u);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_16;
          }
        }

        else
        {
          v10 = 0;
          while (v10 != 5)
          {
            if (*(v7 + 129 + v10++))
            {
              if ((v10 - 1) <= 4)
              {
                goto LABEL_5;
              }

              break;
            }
          }
        }
      }

      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v5 + 16);
      sub_1005EA588(&v17, v3, v5[5]);
LABEL_16:
      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }
}

uint64_t sub_1005E1DA4(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 760);
  if (sub_1000DAD9C(a1 + 360, 0))
  {
    v2 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Cannot send ring because ring status is not ringing";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, buf, 2u);
    }
  }

  else if (sub_1003203B8(a1 + 360, 1))
  {
    if (sub_10057DDF0(a1))
    {
      if (sub_1000DAD9C(a1 + 360, 1))
      {
        sub_1000D88F8(v5, a1 + 824);
        sub_1005E1684(a1, v5, sub_1005E2518);
        sub_10000CEDC(v5, v5[1]);
      }

      sub_100320320(a1 + 360);
      operator new();
    }

    v2 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Cannot send ring because we are not connected";
      goto LABEL_13;
    }
  }

  else
  {
    v2 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Cannot send ring because is not incoming";
      goto LABEL_13;
    }
  }

  return sub_1000088CC(v7);
}

void sub_1005E1F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_10000CEDC(&a10, a11);
  sub_1000088CC(v11 - 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E1F90(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 760);
  v2 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending call waiting notification to all connected devices", buf, 2u);
  }

  sub_1000D88F8(v4, a1 + 824);
  sub_1005E1684(a1, v4, sub_1005E2078);
  sub_10000CEDC(v4, v4[1]);
  sub_100320320(a1 + 360);
  return sub_1000088CC(v6);
}

void sub_1005E2050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_10000CEDC(&a10, a11);
  sub_1000088CC(v11 - 32);
  _Unwind_Resume(a1);
}

void sub_1005E2078(unsigned __int16 a1, uint64_t a2)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v4 = off_100B50AC8;
  if (sub_100320E64(a2 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v5 = sub_1005D492C(off_100B50AC8, a1);
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v6 = sub_1005D0048(off_100B50AC8, a1);
    if (sub_100320E04(v6 + 400))
    {
      goto LABEL_12;
    }

    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v7 = sub_1005D0048(off_100B50AC8, a1);
    if (sub_100320E24(v7 + 400))
    {
LABEL_12:
      v8 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = &v26;
        sub_100320338((v4 + 360), &v26);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = v26.__r_.__value_.__r.__words[0];
        }

        v10 = v23;
        sub_100320340(v4 + 360, v23);
        if (v24 < 0)
        {
          v10 = v23[0];
        }

        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if (v22 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = v9;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call waiting notification for call %s %s to device %{public}s", &buf, 0x20u);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = v9;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call waiting notification for call %s %s to device %{public}s", &buf, 0x20u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }
      }

      sub_100320340(v4 + 360, &v26);
      sub_1005D4DE0(&v26, v5, &buf);
      v25 = buf;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v26.__r_.__value_.__s.__data_[0] = 0;
      sub_1000216B4(&v26);
      sub_100320338((v4 + 360), &buf);
      v15 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      v16 = buf.__r_.__value_.__r.__words[0];
      v17 = sub_100320368((v4 + 360));
      if (v15 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = v16;
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v25;
      }

      else
      {
        v19 = v25.__r_.__value_.__r.__words[0];
      }

      v20 = sub_100210AD0(a1, p_buf, v17, v19);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100022214(&v26);
      if (v20)
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084E76C();
        }
      }

      sub_10002249C(&v26);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        v14 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_50;
      }
    }

    else
    {
      v12 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (!v5)
        {
          LODWORD(v26.__r_.__value_.__l.__data_) = 136446210;
          *(v26.__r_.__value_.__r.__words + 4) = "NULL";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}s does not support call waiting!", &v26, 0xCu);
          return;
        }

        sub_1000E5A58(v5, &buf);
        v13 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        LODWORD(v26.__r_.__value_.__l.__data_) = 136446210;
        *(v26.__r_.__value_.__r.__words + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}s does not support call waiting!", &v26, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          v14 = buf.__r_.__value_.__r.__words[0];
LABEL_50:
          operator delete(v14);
        }
      }
    }
  }
}

void sub_1005E2490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E2518(unsigned __int16 a1, uint64_t a2)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v4 = off_100B50AC8;
  if (sub_100320E64(a2 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v5 = sub_1005D492C(off_100B50AC8, a1);
    v6 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = &v21;
      sub_100320338((v4 + 360), &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v21.__r_.__value_.__r.__words[0];
      }

      v8 = v19;
      sub_100320340(v4 + 360, v19);
      if (v20 < 0)
      {
        v8 = v19[0];
      }

      if (v5)
      {
        sub_1000E5A58(v5, __p);
        if (v18 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v7;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending ring notification for call %s %s to device %{public}s", &buf, 0x20u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v7;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
        v24 = "NULL";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending ring notification for call %s %s to device %{public}s", &buf, 0x20u);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    sub_100320340(v4 + 360, &v21);
    sub_1005D4DE0(&v21, v5, &buf);
    v22 = buf;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v21.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&v21);
    p_buf = &buf;
    sub_100320338((v4 + 360), &buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v11 = sub_100320368((v4 + 360));
    v12 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
    v13 = v22.__r_.__value_.__r.__words[0];
    v14 = sub_100320E8C(a2 + 400);
    if (v12 >= 0)
    {
      v15 = &v22;
    }

    else
    {
      v15 = v13;
    }

    v16 = sub_1002106A4(a1, p_buf, v11, v15, v14);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_100022214(&v21);
    if (v16 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E7DC();
    }

    sub_10002249C(&v21);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1005E2830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E28B8()
{
  sub_10000C7D0();
  if (sub_1004134D8())
  {
    v0 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Reserve Voice Buf", v1, 2u);
    }

    sub_10025822C();
  }
}

_BYTE *sub_1005E2930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100320A98(a3 + 400))
  {
    v8 = 0;
    sub_1000216B4(&v8);
    sub_1002429D4(a2 + 128);
    sub_10002249C(&v8);
    v5 = 2000;
  }

  else
  {
    v5 = 0;
  }

  if (sub_100320DC4(a3 + 400) == 5)
  {
    v5 = 0;
  }

  v6 = sub_100320F4C(a3 + 400);
  return sub_1005DD01C(v6, a3, v5, 0, v6);
}

_BYTE *sub_1005E29D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100320E3C(a3 + 400);
    v8 = "ringtones";
    if (v7)
    {
      v8 = "voice-command";
    }

    *__p = 136446210;
    *&__p[4] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Making sco connection for playing %{public}s", __p, 0xCu);
  }

  if (sub_100320370(a1 + 360) != 1 && (sub_1003203E8(a1 + 360) & 1) == 0 && (sub_100320E3C(a3 + 400) & 1) == 0)
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084DD00();
    }

    sub_1005D78B8(off_100B50AC8);
  }

  if (*(a2 + 582) == 1 && sub_100320184(a3 + 400))
  {
    v9 = sub_1005D4850(a1, a2);
    v10 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_100320184(a3 + 400);
      sub_1000E5A58(a2, __p);
      if (v17 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = *__p;
      }

      *buf = 67109378;
      v19 = v11;
      v20 = 2082;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending Audio Input Config:%d for device %{public}s", buf, 0x12u);
      if (v17 < 0)
      {
        operator delete(*__p);
      }
    }

    __p[0] = 0;
    sub_1000216B4(__p);
    v13 = sub_100320184(a3 + 400);
    sub_1002112CC(v9, v13);
    sub_100022214(__p);
    return sub_10002249C(__p);
  }

  else
  {
    v15 = sub_100320F4C(a3 + 400);
    return sub_1005DD01C(v15, a3, 0, 0, v15);
  }
}

_BYTE *sub_1005E2C1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1005D4850(a1, a2);
  if (qword_100B54090 != -1)
  {
    sub_10084E84C();
  }

  v8 = !sub_10038A118(qword_100B54088, a2) && (v7 = sub_100320E5C(a3 + 400), (v7 & 1) == 0) && sub_1005D2A98(v7, a2) == 2;
  if (!sub_100320EFC(a3 + 400) || v8)
  {
    sub_1005D78B8(a1);
  }

  else
  {
    v9 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v10 = v14 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting voice command session for device %{public}s", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((sub_100320E3C(a3 + 400) & 1) == 0)
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_100210908(v6, 1);
      sub_100022214(__p);
      sub_100320E44(a3 + 400, 1);
      sub_10002249C(__p);
    }
  }

  sub_100364158(6);
  v11 = sub_100320F4C(a3 + 400);
  return sub_1005DD01C(v11, a3, 0, 0, v11);
}

void sub_1005E2DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E2DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 760);
  v7 = qword_100BCE8F8;
  v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v9 = sub_1005D264C(v8, a3);
    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RegisterScoChannel codecID: %s\n", buf, 0xCu);
  }

  if (a3 <= 128)
  {
    switch(a3)
    {
      case 2:
        v10 = &unk_100B54BB0;
        v11 = &off_100B54B98;
LABEL_31:
        if (sub_100320FB4(a4 + 400) == 2)
        {
          v10[4] = 28;
          v16 = 1;
        }

        else
        {
          v10[4] = -1;
          v16 = -1;
        }

        *(v10 + 12) = v16;
        goto LABEL_36;
      case 127:
        v10 = &unk_100B54AC0;
        v11 = &off_100B54AA8;
        goto LABEL_36;
      case 128:
        v10 = &unk_100B54B38;
        v11 = &unk_100B54B20;
        goto LABEL_36;
    }

    goto LABEL_16;
  }

  if (a3 > 254)
  {
    if (a3 == 255)
    {
      v10 = &unk_100B54AE8;
      v11 = &unk_100B54AD0;
      goto LABEL_19;
    }

    if (a3 == 256)
    {
      v10 = &unk_100B54B10;
      v11 = &unk_100B54AF8;
      goto LABEL_36;
    }

LABEL_16:
    v10 = &unk_100B54BD8;
    v11 = &unk_100B54BC0;
    goto LABEL_31;
  }

  if (a3 != 129)
  {
    if (a3 == 130)
    {
      v10 = &unk_100B54B88;
      v11 = &unk_100B54B70;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = &unk_100B54B60;
  v11 = &unk_100B54B48;
LABEL_19:
  memset(buf, 0, sizeof(buf));
  v23[0] = 0;
  sub_100007E30(buf, "4-EV5");
  v12 = sub_100320FA4(a4 + 400);
  if ((v12 & 1) == 0)
  {
    *(v11 + 11) = 16064;
    std::string::assign(buf, "2-EV5");
  }

  v13 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = buf;
    if (SHIBYTE(v23[0]) < 0)
    {
      v14 = *buf;
    }

    v15 = "";
    if (!v12)
    {
      v15 = " not";
    }

    *v31 = 136315394;
    v32 = v14;
    v33 = 2080;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting up call using %s packets as HDR eSCO is%s supported", v31, 0x16u);
  }

  if (SHIBYTE(v23[0]) < 0)
  {
    operator delete(*buf);
  }

  if ((a3 - 129) >= 2 && a3 != 255)
  {
    goto LABEL_31;
  }

LABEL_36:
  v17 = sub_10000C7D0();
  if (sub_1004106D0(v17, 0xBB8u))
  {
    v30 = 0;
    v29 = 0u;
    memset(v28, 0, sizeof(v28));
    v26 = 0u;
    *__p = 0u;
    v24 = 0u;
    *v25 = 0u;
    *buf = 0u;
    *v23 = 0u;
    sub_1000DE474(&buf[1]);
    BYTE2(v23[0]) = 0;
    BYTE4(v23[0]) = 0;
    BYTE2(v25[0]) = 0;
    BYTE4(v25[0]) = 0;
    DWORD1(v28[1]) = 0;
    v24 = 0uLL;
    v23[1] = 0;
    LOBYTE(v25[0]) = 0;
    v26 = 0uLL;
    v25[1] = 0;
    LOBYTE(__p[0]) = 0;
    memset(v28, 0, 19);
    __p[1] = 0;
    BYTE8(v28[1]) = 1;
    *(&v28[1] + 14) = 0;
    *(&v28[1] + 9) = 0;
    v29 = 0uLL;
    *(&v28[2] + 1) = 0;
    LOBYTE(v30) = 0;
    *(&v30 + 2) = 0;
    if (a2 && a3 == 1 && sub_100536A18(a2, buf) && BYTE5(v30) == 1)
    {
      v18 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Use S1 Config(EV3 packet) for CVSD", v31, 2u);
      }

      *(v11 + 11) |= 0x40u;
      v10[7] |= 0x40u;
    }

    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
    }

    nullsub_21(&buf[1]);
  }

  sub_100320FBC(a4 + 400, a3);
  buf[0] = 0;
  sub_1000216B4(buf);
  v19 = sub_100248400(off_100B00BF0, a2 + 128, a4);
  if (v19 && v19 != 1327 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E860();
  }

  if (sub_100248498(v11, v10, a2 + 128))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E8D0();
    }

    if (sub_100248514(a2 + 128) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E940();
    }
  }

  sub_100022214(buf);
  sub_10002249C(buf);
  return sub_1000088CC(v21);
}

void sub_1005E3300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100320BE8(&__p);
  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E3360(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 760);
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E9B0();
  }

  sub_100320278(a1 + 360, a2);
  return sub_1000088CC(v5);
}

uint64_t sub_1005E33F8(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 760);
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HFP stream will start", v7, 2u);
  }

  if (sub_1003A42E4(a2))
  {
    sub_10032100C(a2 + 400, 1);
    sub_1005D36A4(a1, a2);
    sub_10069C2E8(a2);
  }

  else
  {
    v5 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamWillStart", v7, 2u);
    }
  }

  return sub_1000088CC(v8);
}

void sub_1005E34F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E3510(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 760);
  v3 = sub_1003A42E4(a2);
  v4 = qword_100BCE8F8;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
    {
      sub_10084EA24();
      if (a2)
      {
        goto LABEL_4;
      }
    }

    else if (a2)
    {
LABEL_4:
      sub_10069C510(a2);
      return sub_1000088CC(v7);
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EA64();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamAudioAvailable", v6, 2u);
  }

  return sub_1000088CC(v7);
}

void sub_1005E35FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E3618(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 760);
  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stream did stop!", v6, 2u);
  }

  if (sub_1003A42E4(a2))
  {
    if (a2)
    {
      sub_10069B0E8(a2);
      sub_10032100C(a2 + 400, 0);
    }
  }

  else
  {
    v4 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamDidStop", v6, 2u);
    }
  }

  return sub_1000088CC(v7);
}

void sub_1005E370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005E3728(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D999C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005E37A8;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1005E37A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, v2 + 760);
  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stream reset, closing SCO if it wasn't closed", v8, 2u);
  }

  if (sub_1003A42E4(*(a1 + 40)))
  {
    v4 = *(a1 + 40);
    if (v4 && sub_100320D9C(v4 + 400) && sub_100320DC4(*(a1 + 40) + 400))
    {
      v5 = sub_100320D94(*(a1 + 40) + 400);
      sub_1005DCA18(v2, v5, 0, 0);
    }
  }

  else
  {
    v6 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamDidReset", v8, 2u);
    }
  }

  return sub_1000088CC(v9);
}

void sub_1005E38C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E38E8(uint64_t a1, uint64_t a2, float a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 760);
  if (sub_1003A42E4(a2))
  {
    if (a2)
    {
      v5 = sub_100320D94(a2 + 400);
      v6 = sub_100320D9C(a2 + 400);
      if (v6 && sub_1000E00E4(v6) == 1)
      {
        v7 = roundf(a3 * 15.0);
      }

      else
      {
        v7 = a3 * 15.0;
      }

      v12 = sub_100320DE4(a2 + 400);
      v13 = qword_100BCE8F8;
      v14 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v12 == v7)
      {
        if (v14)
        {
          *buf = 67109120;
          v18 = v7;
          v9 = "Speaker volume is a duplicate value %d, not sending to external device";
          v10 = v13;
          v11 = 8;
          goto LABEL_12;
        }
      }

      else
      {
        if (v14)
        {
          *buf = 67109120;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Volume did update to %d", buf, 8u);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        sub_10020FC20(v5, v7);
        sub_100022214(buf);
        sub_100320DEC(a2 + 400, v7);
        sub_10002249C(buf);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EAA0();
    }
  }

  else
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Audio device is not valid, not handling volumeDidUpdate";
      v10 = v8;
      v11 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  return sub_1000088CC(v16);
}

uint64_t sub_1005E3B48(uint64_t a1, uint64_t a2, float a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 760);
  if (sub_1003A42E4(a2))
  {
    if (a2)
    {
      v5 = sub_100320D94(a2 + 400);
      v6 = sub_100320D9C(a2 + 400);
      if (v6 && sub_1000E00E4(v6) == 1)
      {
        v7 = roundf(a3 * 15.0);
      }

      else
      {
        v7 = a3 * 15.0;
      }

      v12 = sub_100320DD4(a2 + 400);
      v13 = qword_100BCE8F8;
      v14 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v12 == v7)
      {
        if (v14)
        {
          *buf = 67109120;
          v18 = v7;
          v9 = "Input volume is a duplicate value %d, not sending to external device";
          v10 = v13;
          v11 = 8;
          goto LABEL_12;
        }
      }

      else
      {
        if (v14)
        {
          *buf = 67109120;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Input volume did update to %d", buf, 8u);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        sub_10020FB48(v5, v7);
        sub_100022214(buf);
        sub_100320DDC(a2 + 400, v7);
        sub_10002249C(buf);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EAA0();
    }
  }

  else
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Audio device is not valid, not handling inputVolumeDidUpdate";
      v10 = v8;
      v11 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  return sub_1000088CC(v16);
}

void sub_1005E3DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SCO sample Rate updated to %d ", v8, 8u);
  }

  if (sub_1003A42E4(a2))
  {
    (*(*a1 + 264))(a1, a2, a3, 0, 0);
  }

  else
  {
    v7 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling scoSampleRateDidUpdate", v8, 2u);
    }
  }
}

void sub_1005E3EF8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1000D999C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005E3F88;
  v7[3] = &unk_100AEAF08;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1005E3F88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, v2 + 760);
  if (sub_1003A42E4(*(a1 + 40)))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = sub_100320D9C(v3 + 400);
      if (v4)
      {
        v5 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 48);
          sub_1000E5A58(v4, __p);
          if (v11 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          *buf = 67109378;
          v14 = v6;
          v15 = 2082;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting allowScoForTBT to %d for device %{public}s", buf, 0x12u);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10054288C(v4, *(a1 + 48));
      }
    }
  }

  else
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling allowSCOForTBTDidUpdate", __p, 2u);
    }
  }

  return sub_1000088CC(v12);
}

void sub_1005E4110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005E413C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100320D94(a2 + 400);
  v6 = sub_1000D999C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005E41D8;
  v7[3] = &unk_100AF5948;
  v7[4] = a1;
  v8 = v5;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1005E41D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, v2 + 760);
  v3 = sub_1005D0048(v2, *(a1 + 40));
  v4 = v3;
  if (v3)
  {
    v5 = sub_100320D9C(v3 + 400);
    if (sub_1000E2140(v5, 12))
    {
      v6 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v5, v38);
        if (v40 >= 0)
        {
          v7 = v38;
        }

        else
        {
          v7 = *v38;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
        *(buf.__r_.__value_.__r.__words + 4) = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received expanseInA2DP for Apple audio device %{public}s", &buf, 0xCu);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(*v38);
        }
      }
    }

    else
    {
      v8 = sub_1003208E8(v2 + 360);
      sub_1003208A0(v2 + 360, *(a1 + 42));
      v9 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 42);
        *v38 = 67109376;
        *&v38[4] = v8;
        LOWORD(v39) = 1024;
        *(&v39 + 2) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Expanse in A2DP state changed from %d to %d", v38, 0xEu);
      }

      v11 = *(a1 + 42);
      v12 = qword_100BCE8F8;
      v13 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v11 == 1)
      {
        if (v13)
        {
          sub_1000E5A58(v5, v38);
          v14 = v40 >= 0 ? v38 : *v38;
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
          *(buf.__r_.__value_.__r.__words + 4) = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting IsInExpanseOverA2DP to true for device %{public}s", &buf, 0xCu);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*v38);
          }
        }

        sub_1000D6C30(v4 + 400, 1);
        *v38 = 0;
        v39 = 0;
        v40 = 0;
        sub_1000DA2A8(v38);
        if (qword_100B54080 != -1)
        {
          sub_10084CD0C();
        }

        sub_1006FCE2C(off_100B54078);
        v15 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D6D88(v38, &buf);
          v16 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v34.__r_.__value_.__l.__data_) = 136315138;
          *(v34.__r_.__value_.__r.__words + 4) = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Current Call(s) in expanse: %s", &v34, 0xCu);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        sub_1000DA9C4(v32);
        sub_100320930(v2 + 360, v32);
        buf.__r_.__value_.__r.__words[0] = v32;
        sub_1000D6BD4(&buf);
        for (i = *v38; i != v39; i += 104)
        {
          if (*(i + 4) == 1)
          {
            v28 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Update overall call(s) status after a current active call has entered expanse", &buf, 2u);
            }

            memset(&buf, 0, sizeof(buf));
            sub_1000DA2A8(&buf);
            if (qword_100B54080 != -1)
            {
              sub_10084CD0C();
            }

            sub_1000D895C(off_100B54078);
            *&v34.__r_.__value_.__l.__data_ = 0uLL;
            v29 = [[NSUUID alloc] initWithUUIDBytes:&v34];
            sub_1000D7348(v2, &buf, v29);

            goto LABEL_67;
          }
        }
      }

      else
      {
        if (v13)
        {
          sub_1000E5A58(v5, v38);
          v18 = v40 >= 0 ? v38 : *v38;
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
          *(buf.__r_.__value_.__r.__words + 4) = v18;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting IsInExpanseOverA2DP to false for device %{public}s", &buf, 0xCu);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*v38);
          }
        }

        sub_1000D6C30(v4 + 400, 0);
        *v38 = 0;
        v39 = 0;
        v40 = 0;
        sub_1000DA2A8(v38);
        if (qword_100B54080 != -1)
        {
          sub_10084CD0C();
        }

        sub_1000D895C(off_100B54078);
        memset(&buf, 0, sizeof(buf));
        sub_1000DAA8C(v2 + 360, &buf);
        v19 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D6D88(&buf, &v34);
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v34;
          }

          else
          {
            v20 = v34.__r_.__value_.__r.__words[0];
          }

          *v35 = 136315138;
          v36 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Call(s) in A2DP expanse: %s", v35, 0xCu);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          v19 = qword_100BCE8F8;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D6D88(v38, &v34);
          v21 = (v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v34 : v34.__r_.__value_.__r.__words[0];
          *v35 = 136315138;
          v36 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Current Call(s): %s", v35, 0xCu);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }
        }

        v22 = buf.__r_.__value_.__r.__words[0];
        if (buf.__r_.__value_.__r.__words[0] == buf.__r_.__value_.__l.__size_)
        {
          v25 = 1;
        }

        else
        {
          do
          {
            v23 = *v22;
            v24 = sub_1000D8B24(v38, v23);

            v25 = v39 == v24;
            if (v39 != v24)
            {
              break;
            }

            v22 += 13;
          }

          while (v22 != buf.__r_.__value_.__l.__size_);
        }

        sub_1006EEE70(&buf);
        sub_1000DA9C4(v31);
        sub_100320930(v2 + 360, v31);
        v34.__r_.__value_.__r.__words[0] = v31;
        sub_1000D6BD4(&v34);
        if (!v25)
        {
          v26 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v34.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Update overall call(s) status since a current active call has exited expanse", &v34, 2u);
          }

          *&v34.__r_.__value_.__l.__data_ = 0uLL;
          v27 = [[NSUUID alloc] initWithUUIDBytes:&v34];
          sub_1000D7348(v2, v38, v27);
        }

LABEL_67:
        v34.__r_.__value_.__r.__words[0] = &buf;
        sub_1000D6BD4(&v34);
      }

      buf.__r_.__value_.__r.__words[0] = v38;
      sub_1000D6BD4(&buf);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EADC();
  }

  return sub_1000088CC(v33);
}