void sub_1004986FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100498738(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) == 0 && ((*(*v1 + 432))(v1) & 1) == 0 && !(*(*v1 + 416))(v1))
  {
    goto LABEL_40;
  }

  v2 = sub_10000C7D0();
  byte_100B6E480 = (*(*v2 + 2536))(v2);
  if (sub_1000271F0() == 100 || sub_1000271F0() == 101)
  {
    v3 = sub_10000C7D0();
    (*(*v3 + 16))(&buf);
    if (v18 < 0)
    {
      if (*(&buf + 1) != 2)
      {
        operator delete(buf);
        goto LABEL_14;
      }

      v4 = *buf;
      operator delete(buf);
      if (v4 == 12355)
      {
        goto LABEL_12;
      }
    }

    else if (v18 == 2 && buf == 12355)
    {
LABEL_12:
      byte_100B6E480 = 0;
    }
  }

LABEL_14:
  if ((*(*v1 + 416))(v1) && *(sub_10000C7D0() + 800) == 21)
  {
    byte_100B6E480 = 0;
  }

  if (!(*(*v1 + 456))(v1))
  {
    goto LABEL_26;
  }

  v5 = sub_10000C7D0();
  (*(*v5 + 16))(&buf);
  if ((v18 & 0x80000000) == 0)
  {
    if (v18 != 2 || buf != 12355)
    {
      goto LABEL_26;
    }

LABEL_24:
    byte_100B6E480 = 0;
    goto LABEL_26;
  }

  if (*(&buf + 1) != 2)
  {
    operator delete(buf);
    goto LABEL_26;
  }

  v6 = *buf;
  operator delete(buf);
  if (v6 == 12355)
  {
    goto LABEL_24;
  }

LABEL_26:
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E480)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BT chip support for LowPowerCore Scan : %s", &buf, 0xCu);
  }

  v16 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(&buf, "LowPowerCoreScan");
  sub_100007E30(__p, "DisableLowPowerCoreScan");
  v10 = (*(*v9 + 72))(v9, &buf, __p, &v16);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18 < 0)
  {
    operator delete(buf);
    if (!v10)
    {
      goto LABEL_40;
    }
  }

  else if (!v10)
  {
    goto LABEL_40;
  }

  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Overriding Disabling LowPowerCore Scan=%d", &buf, 8u);
  }

  byte_100B6E480 &= v16 ^ 1;
LABEL_40:
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E480)
    {
      v13 = "enabled";
    }

    else
    {
      v13 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "support for new LowPowerCore scan is %s", &buf, 0xCu);
  }
}

void sub_100498BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100498BF0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100498C80;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E498 != -1)
  {
    dispatch_once(&qword_100B6E498, block);
  }

  return byte_100B6E490;
}

void sub_100498C80(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 432))(v1) & 1) != 0 || (*(*v1 + 416))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2552))(v2);
    byte_100B6E490 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Low Power Scan with Limited RSSI Reading: %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LowPowerCoreScan");
    sub_100007E30(__p, "DisableLowPowerCoreScanWithLimitedRSSIReading");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else if (!v7)
    {
      goto LABEL_17;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Disabling LowPowerCore with limited RSSI Reading %d", buf, 8u);
    }

    byte_100B6E490 &= v13 ^ 1;
  }

LABEL_17:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E490)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Low Power Scan with Limited RSSI Reading %s", buf, 0xCu);
  }
}

void sub_100498F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100498FAC()
{
  if (qword_100B6E4A8 != -1)
  {
    sub_1008313C8();
  }

  return byte_100B6E4A0;
}

void sub_100498FE4(id a1)
{
  v1 = sub_10000C7D0();
  byte_100B6E4A0 = (*(*v1 + 2560))(v1);
  v8 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "VSCScanParams");
  sub_100007E30(__p, "DisableVSCScanParams");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
  }

  v4 = qword_100BCE8D8;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding Disabling VSScanParams Scan=%d", buf, 8u);
      v4 = qword_100BCE8D8;
    }

    byte_100B6E4A0 &= v8 ^ 1;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4A0)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "support for new VSScanParams scan is %s", buf, 0xCu);
  }
}

void sub_1004991C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100499204(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) == 0 && ((*(*v1 + 432))(v1) & 1) == 0 && !(*(*v1 + 416))(v1))
  {
    goto LABEL_39;
  }

  v2 = sub_10000C7D0();
  v3 = (*(*v2 + 2568))(v2);
  byte_100B6E4B0 = v3;
  if (sub_1000271F0() == 100 || sub_1000271F0() == 101)
  {
    v4 = sub_10000C7D0();
    (*(*v4 + 16))(&buf);
    if (v20 < 0)
    {
      if (*(&buf + 1) == 2)
      {
        v5 = *buf;
        operator delete(buf);
        if (v5 != 12355)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      operator delete(buf);
    }

    else if (v20 == 2 && buf == 12355)
    {
LABEL_12:
      byte_100B6E4B0 = 0;
    }
  }

LABEL_14:
  if ((*(*v1 + 456))(v1))
  {
    v6 = sub_10000C7D0();
    (*(*v6 + 16))(&buf);
    if ((v20 & 0x80000000) == 0)
    {
      if (v20 != 2 || buf != 12355)
      {
        goto LABEL_23;
      }

LABEL_21:
      byte_100B6E4B0 = 0;
      goto LABEL_23;
    }

    if (*(&buf + 1) != 2)
    {
      operator delete(buf);
      goto LABEL_23;
    }

    v7 = *buf;
    operator delete(buf);
    if (v7 == 12355)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "disabled";
    if (v3)
    {
      v9 = "enabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BT chip support for Scan Core : %s", &buf, 0xCu);
  }

  v18 = 0;
  v10 = sub_10000E92C();
  sub_100007E30(&buf, "ScanCore");
  sub_100007E30(__p, "EnableScanCore");
  v11 = (*(*v10 + 72))(v10, &buf, __p, &v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(buf);
    if (!v11)
    {
      goto LABEL_39;
    }
  }

  else if (!v11)
  {
    goto LABEL_39;
  }

  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v18)
    {
      v13 = "Enabled";
    }

    else
    {
      v13 = "Disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Overriding EnableScanCore with %s", &buf, 0xCu);
  }

  byte_100B6E4B0 = v3 & v18;
LABEL_39:
  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4B0)
    {
      v15 = "enabled";
    }

    else
    {
      v15 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Support for Scan Core is %s", &buf, 0xCu);
  }
}

void sub_100499650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049968C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049971C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E4C8 != -1)
  {
    dispatch_once(&qword_100B6E4C8, block);
  }

  return byte_100B6E4C0;
}

void sub_10049971C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 432))(v1) & 1) != 0 || (*(*v1 + 416))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2568))(v2);
    byte_100B6E4C0 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for LE non-Connection Stats : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LowPowerCoreScan");
    sub_100007E30(__p, "DisableLEConnectionStatsV1");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else if (!v7)
    {
      goto LABEL_17;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Disabling LE non-Connection stats V1 (going back to V0)=%d", buf, 8u);
    }

    byte_100B6E4C0 &= v13 ^ 1;
  }

LABEL_17:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4C0)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for new LE non-Connection Stats V1 scan is %s", buf, 0xCu);
  }
}

void sub_100499A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100499A48(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 416))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2600))(v2);
    byte_100B6E4D0 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      v8 = 136315138;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Get Scan Stats : %s", &v8, 0xCu);
    }
  }

  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4D0)
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "support for Get Scan Stats is %s", &v8, 0xCu);
  }
}

void sub_100499C14(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2616))(v1);
  byte_100B6E4E0 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (v2)
    {
      v4 = "enabled";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for scan core compensation : %s", &v5, 0xCu);
  }
}

uint64_t sub_100499D08(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100499D98;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E4F8 != -1)
  {
    dispatch_once(&qword_100B6E4F8, block);
  }

  return byte_100B6E4F0;
}

void sub_100499D98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 368))(v1) & 1) != 0 || (*(*v1 + 432))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2664))(v2);
    byte_100B6E4F0 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Low Energy Long Range : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LowEnergyLongRange");
    sub_100007E30(__p, "LowEnergyLongRangeDisable");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
LABEL_16:
        byte_100B6E4F0 &= v13 ^ 1;
        goto LABEL_17;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Disabling Low Energy Long Range=%d", buf, 8u);
    }

    goto LABEL_16;
  }

LABEL_17:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E4F0)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for new Low Energy Long Range is %s", buf, 0xCu);
  }
}

void sub_10049A088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049A0C4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049A154;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E500 != -1)
  {
    dispatch_once(&qword_100B6E500, block);
  }

  return byte_100B543B8;
}

void sub_10049A154(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2680))(v2);
    byte_100B543B8 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for LE 2M PHy  : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "LE2MPhyDisabled");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
LABEL_15:
        byte_100B543B8 &= v13 ^ 1;
        goto LABEL_16;
      }
    }

    else if (!v7)
    {
      goto LABEL_15;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Force LE PHY 2M =%d", buf, 8u);
    }

    goto LABEL_15;
  }

LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B543B8)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Support for LE2MPhy  is %s", buf, 0xCu);
  }
}

void sub_10049A410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049A44C(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2512))(v1);
  byte_100B6E508 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (v2)
    {
      v4 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for Scan With New Vsc : %s", buf, 0xCu);
  }

  v11 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "ScanEnhancements");
  sub_100007E30(__p, "DisableScanEnhancements");
  v6 = (*(*v5 + 72))(v5, buf, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding Disabling ScanEnhancements=%d", buf, 8u);
      v7 = qword_100BCE8D8;
    }

    byte_100B6E508 &= v11 ^ 1;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E508)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "support for new Scan Enhancement VSC is %s", buf, 0xCu);
  }
}

void sub_10049A694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049A6D0(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2520))(v1);
  byte_100B6E518 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (v2)
    {
      v4 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for removeMultipleDuplicateEntries VSC is %s", buf, 0xCu);
  }

  v11 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "ScanEnhancements");
  sub_100007E30(__p, "DisableRemoveMultipleDupliateEntries");
  v6 = (*(*v5 + 72))(v5, buf, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding Disabling removeMultipleDuplicateEntries=%d", buf, 8u);
      v7 = qword_100BCE8D8;
    }

    byte_100B6E518 &= v11 ^ 1;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E518)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "support for removeMultipleDuplicateEntries VSC is %s", buf, 0xCu);
  }
}

void sub_10049A918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049A954()
{
  if (qword_100B6E530 != -1)
  {
    sub_100831418();
  }

  return byte_100B6E528;
}

void sub_10049A98C(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2528))(v1);
  byte_100B6E528 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (v2)
    {
      v4 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "support keeping Duplicate filter when Scan Enable VSC is: %s", buf, 0xCu);
  }

  v11 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "ScanEnhancements");
  sub_100007E30(__p, "KeepDupFilterWhenScanEnable");
  v6 = (*(*v5 + 72))(v5, buf, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding Disabling KeepDupFilterWhenScanEnable=%d", buf, 8u);
      v7 = qword_100BCE8D8;
    }

    byte_100B6E528 &= v11 ^ 1;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E528)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "support for KeepDupFilterWhenScanEnable VSC is %s", buf, 0xCu);
  }
}

void sub_10049ABD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049AC10(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049ACA0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E540 != -1)
  {
    dispatch_once(&qword_100B6E540, block);
  }

  return byte_100B6E538;
}

void sub_10049ACA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 360))(v1) & 1) != 0 || ((*(*v1 + 416))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2496))(v2);
    byte_100B6E538 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for BT Spec advertisingsets : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableSpecSets");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else if (!v7)
    {
      goto LABEL_18;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisableSpecSets=%d", buf, 8u);
    }

    byte_100B6E538 &= v13 ^ 1;
  }

LABEL_18:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E538)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for BT 5.0 advertising sets is %s", buf, 0xCu);
  }
}

void sub_10049AFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049B000(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 360))(v1) & 1) != 0 || ((*(*v1 + 416))(v1) & 1) != 0 || (*(*v1 + 408))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2480))(v2);
    byte_100B6E548 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Enhanced Connections : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableEnhancedConnections");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else if (!v7)
    {
      goto LABEL_18;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisableEnhancedConnections=%d", buf, 8u);
    }

    byte_100B6E548 &= v13 ^ 1;
  }

LABEL_18:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E548)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Enhanced Connections is %s", buf, 0xCu);
  }
}

void sub_10049B324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049B360(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049B3F0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E560 != -1)
  {
    dispatch_once(&qword_100B6E560, block);
  }

  return byte_100B6E558;
}

void sub_10049B3F0(uint64_t a1)
{
  if ((*(**(a1 + 32) + 352))(*(a1 + 32)))
  {
    v1 = sub_10000C7D0();
    v2 = (*(*v1 + 2488))(v1);
    byte_100B6E558 = v2;
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "disabled";
      if (v2)
      {
        v4 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for Enhanced Connections V2 : %s", buf, 0xCu);
    }

    v12 = 0;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableEnhancedConnectionsV2");
    v6 = (*(*v5 + 72))(v5, buf, __p, &v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14 < 0)
    {
      operator delete(*buf);
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    else if (!v6)
    {
      goto LABEL_15;
    }

    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding DisableEnhancedConnectionsV2=%d", buf, 8u);
    }

    byte_100B6E558 &= v12 ^ 1;
  }

LABEL_15:
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E558)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for Enhanced Connections V2 is %s", buf, 0xCu);
  }
}

void sub_10049B678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049B6B4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049B744;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E570 != -1)
  {
    dispatch_once(&qword_100B6E570, block);
  }

  return byte_100B6E568;
}

void sub_10049B744(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2624))(v2);
    byte_100B6E568 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Controller BT clock capture : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowControllerBTClockConfigure");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Controller BT clock capture =%d", buf, 8u);
    }

    byte_100B6E568 &= v13 ^ 1;
  }

LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E568)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for new Controller BT clock capture is %s", buf, 0xCu);
  }
}

void sub_10049BA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049BA3C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049BACC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E580 != -1)
  {
    dispatch_once(&qword_100B6E580, block);
  }

  return byte_100B6E578;
}

void sub_10049BACC(uint64_t a1)
{
  if ((*(**(a1 + 32) + 376))(*(a1 + 32)))
  {
    v1 = sub_10000C7D0();
    v2 = (*(*v1 + 2632))(v1);
    byte_100B6E578 = v2;
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "disabled";
      if (v2)
      {
        v4 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for Configure Synchronize Event : %s", buf, 0xCu);
    }

    v12 = 0;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowConfigureSynchronizeEvent");
    v6 = (*(*v5 + 72))(v5, buf, __p, &v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14 < 0)
    {
      operator delete(*buf);
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    else if (!v6)
    {
      goto LABEL_15;
    }

    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding Configure Synchronize Event  =%d", buf, 8u);
    }

    byte_100B6E578 &= v12 ^ 1;
  }

LABEL_15:
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E578)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for Configure Synchronize Event is %s", buf, 0xCu);
  }
}

void sub_10049BD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049BD90(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2640))(v2);
    byte_100B6E588 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for RSSI Connection statistics and detection : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowRSSIConnectionStatisticAndInterval");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding RSSI Connection statistics and detection =%d", buf, 8u);
    }

    byte_100B6E588 &= v13 ^ 1;
  }

LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E588)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for new RSSI Connection statistics and detection is %s", buf, 0xCu);
  }
}

void sub_10049C04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049C088(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049C118;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5A0 != -1)
  {
    dispatch_once(&qword_100B6E5A0, block);
  }

  return byte_100B6E598;
}

void sub_10049C118(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    byte_100B6E598 = 1;
    v9 = 0;
    v2 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "MagnetTimeoutABCLog");
    v3 = (*(*v2 + 72))(v2, buf, __p, &v9);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(*buf);
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    else if (!v3)
    {
      goto LABEL_12;
    }

    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding MagnetTimeoutABCLog =%d", buf, 8u);
    }

    byte_100B6E598 = v9;
  }

LABEL_12:
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E598)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "support for Magnet Timeout ABC Log is %s", buf, 0xCu);
  }
}

void sub_10049C338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049C374(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2832))(v1);
  byte_100B6E5A8 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for LE Manufacturer Scan Filter : %s", &v7, 0xCu);
    if ((byte_100B6E5A8 & 1) == 0)
    {
      v2 = 0;
      goto LABEL_9;
    }
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  v2 = _os_feature_enabled_impl();
LABEL_9:
  byte_100B6E5A8 = v2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "support for LE Manufacturer Scan Filter %s", &v7, 0xCu);
  }
}

uint64_t sub_10049C4FC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049C58C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5C0 != -1)
  {
    dispatch_once(&qword_100B6E5C0, block);
  }

  return byte_100B6E5B8;
}

void sub_10049C58C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2648))(v2);
    byte_100B6E5B8 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Bluetooth Usage  : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowBluetoothUsageNotification");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Bluetooth usage notification =%d", buf, 8u);
    }

    byte_100B6E5B8 &= v13 ^ 1;
  }

LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E5B8)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Bluetooth usage notification is %s", buf, 0xCu);
  }
}

void sub_10049C848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049C884(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049C914;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5D0 != -1)
  {
    dispatch_once(&qword_100B6E5D0, block);
  }

  return byte_100B6E5C8;
}

void sub_10049C914(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2656))(v2);
    byte_100B6E5C8 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Phy Statistics Usage : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisallowPhyStatisticsUsageNotification");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding Phy Statistics Bluetooth usage notification =%d", buf, 8u);
    }

    byte_100B6E5C8 &= v13 ^ 1;
  }

LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E5C8)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Phy Statistics Bluetooth notification is %s", buf, 0xCu);
  }
}

void sub_10049CBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049CC0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 408))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2688))(v2);
    byte_100B6E5D8 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "YES";
      if (!v3)
      {
        v5 = "NO";
      }

      *buf = 136315394;
      *&buf[4] = v5;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for ADV Buffers is : %s (%d buffers)", buf, 0x12u);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisableADVBuffers");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisableADVBuffers=%d", buf, 8u);
    }

    byte_100B6E5D8 = 0;
  }

LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "YES";
    if (!byte_100B6E5D8)
    {
      v10 = "NO";
    }

    *buf = 136315394;
    *&buf[4] = v10;
    v15 = 1024;
    v16 = byte_100B6E5D8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for ADV Buffering is %s (%d buffers)", buf, 0x12u);
  }
}

void sub_10049CED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049CF0C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049CF9C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E5F0 != -1)
  {
    dispatch_once(&qword_100B6E5F0, block);
  }

  return byte_100B6E5E8;
}

void sub_10049CF9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 408))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2864))(v2);
    byte_100B6E5E8 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Match Buffers is  : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisableMatchBuffers");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisableMatchBuffers=%d", buf, 8u);
    }

    byte_100B6E5E8 &= v13 ^ 1;
  }

LABEL_16:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E5E8)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Match Buffering is %s", buf, 0xCu);
  }
}

void sub_10049D258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049D294()
{
  if (qword_100B6E600 != -1)
  {
    sub_100831440();
  }

  v7 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "WirelessSplitter");
  (*(*v0 + 72))(v0, buf, __p, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(*buf);
  }

  v1 = byte_100B6E5F8 | v7;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "not supported";
    if (v1)
    {
      v3 = "supported";
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wireless Splitter is %s on this hardware platform", buf, 0xCu);
  }

  return v1 & 1;
}

void sub_10049D3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049D4F0()
{
  if (qword_100B6E608 != -1)
  {
    sub_100831454();
  }

  return word_100B543BA;
}

void sub_10049D528(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 3136))(v1);
  word_100B543BA = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Minimum advertising interval supported by HW : %d", buf, 8u);
  }

  v9 = 32;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "MinAdvertisingInterval");
  v5 = (*(*v4 + 88))(v4, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
  }

  v6 = qword_100BCE8D8;
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Overriding MinAdvertisingInterval=%d", buf, 8u);
      v6 = qword_100BCE8D8;
    }

    word_100B543BA = v9;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = word_100B543BA;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Minimum advertising interval is %d", buf, 8u);
  }
}

void sub_10049D738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049D794(id a1)
{
  v7 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Scan");
  sub_100007E30(__p, "DisableMatchTableConfigV2");
  (*(*v1 + 72))(v1, buf, __p, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(*buf);
  }

  v2 = sub_10000C7D0();
  if ((v7 & 1) == 0 && (*(v2 + 800) - 4000) >= 0xFFFFF831)
  {
    byte_100B6E610 = 1;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E610)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "support for MatchTableV2 usage notification is %s", buf, 0xCu);
  }
}

void sub_10049D8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049D938(id a1)
{
  v7 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Scan");
  sub_100007E30(__p, "DisableMatchTableConfigV3");
  (*(*v1 + 72))(v1, buf, __p, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(*buf);
  }

  v2 = sub_10000C7D0();
  if ((v7 & 1) == 0 && (*(v2 + 800) - 4000) >= 0xFFFFF831)
  {
    byte_100B6E620 = 1;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E620)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "support for MatchTableV3 usage notification is %s", buf, 0xCu);
  }
}

void sub_10049DAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049DADC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049DB6C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E638 != -1)
  {
    dispatch_once(&qword_100B6E638, block);
  }

  return byte_100B6E630;
}

void sub_10049DB6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000C7D0();
  v3 = (*(*v2 + 3104))(v2);
  byte_100B6E630 = v3;
  if ((*(*v1 + 360))(v1) && *(sub_10000C7D0() + 800) && *(sub_10000C7D0() + 800) <= 0x7CFu)
  {
    byte_100B6E630 = 0;
  }

  v12 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "FeatureVendorList");
  v5 = (*(*v4 + 72))(v4, buf, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(*buf);
  }

  v6 = qword_100BCE8D8;
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        v7 = "Enabled";
      }

      else
      {
        v7 = "Disabled";
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Overriding isLEFeatureVendorListEnabled with %s", buf, 0xCu);
      v6 = qword_100BCE8D8;
    }

    byte_100B6E630 = v3 & v12;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "disabled";
    v9 = "N";
    if (byte_100B6E630)
    {
      v8 = "enabled";
    }

    if (v3)
    {
      v9 = "Y";
    }

    *buf = 136315394;
    *&buf[4] = v8;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LE Feature Vendor List is %s (hw %s)", buf, 0x16u);
  }
}

void sub_10049DDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049DE30()
{
  if (qword_100B6E648 != -1)
  {
    sub_100831490();
  }

  return byte_100B6E640;
}

void sub_10049DE68(id a1)
{
  v10 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "IncludeHiddenLEFeatureVendors");
  v2 = (*(*v1 + 72))(v1, buf, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(*buf);
  }

  v3 = sub_10000C7D0();
  v4 = (*(*v3 + 3104))(v3);
  v5 = v4;
  if (v2)
  {
    v5 = (v4 & v10);
  }

  byte_100B6E640 = v5;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "not include";
    if (v5)
    {
      v7 = "include";
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "support for Include Hidden LE Feature Vendor List Vendors is %s", buf, 0xCu);
  }
}

void sub_10049DFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049E028()
{
  if (qword_100B6E658 != -1)
  {
    sub_1008314A4();
  }

  return byte_100B6E650;
}

void sub_10049E060(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 3080))(v1);
  byte_100B6E650 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (v2)
    {
      v4 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for Set Extended Advertising Parameters V2 : %s", buf, 0xCu);
  }

  v11 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "SetExtendedAdvertisingParametersV2");
  v6 = (*(*v5 + 72))(v5, buf, __p, &v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
  }

  v7 = qword_100BCE8D8;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding SetExtendedAdvertisingParametersV2=%d", buf, 8u);
      v7 = qword_100BCE8D8;
    }

    byte_100B6E650 &= v11 ^ 1;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E650)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "support for Set Extended Advertising Parameters V2 is %s", buf, 0xCu);
  }
}

void sub_10049E2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049E2E4()
{
  v0 = sub_10000E92C();
  if (!(*(*v0 + 8))(v0))
  {
    goto LABEL_10;
  }

  v8 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "HFP");
  sub_100007E30(__p, "DisableUWBS");
  (*(*v1 + 72))(v1, buf, __p, &v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(*buf);
  }

  if (v8 == 1)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UWBS for HFP disabled by defaults write", buf, 2u);
    }

    return 0;
  }

  else
  {
LABEL_10:
    sub_10000C7D0();
    return sub_100410138();
  }
}

void sub_10049E414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049E448()
{
  v0 = sub_10000C798();
  if (!(*(*v0 + 352))(v0) || (result = _os_feature_enabled_impl(), result))
  {
    v2 = sub_10000C7D0();

    return sub_100410430(v2);
  }

  return result;
}

uint64_t sub_10049E4C4()
{
  v0 = sub_10000C798();
  if ((*(*v0 + 416))(v0))
  {
    v1 = sub_10000E92C();
    if ((*(*v1 + 8))(v1))
    {
      v12 = 0;
      v2 = sub_10000E92C();
      sub_100007E30(v10, "HFP");
      sub_100007E30(__p, "DisableUWBSStereo");
      (*(*v2 + 72))(v2, v10, __p, &v12);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      if (v11 < 0)
      {
        operator delete(v10[0]);
      }

      if (v12)
      {
        return 0;
      }
    }
  }

  v3 = sub_10000C798();
  if ((*(*v3 + 352))(v3))
  {
    v4 = sub_10000E92C();
    if ((*(*v4 + 8))(v4))
    {
      v12 = 0;
      v5 = sub_10000E92C();
      sub_100007E30(v10, "HFP");
      sub_100007E30(__p, "DisableUWBSStereo");
      (*(*v5 + 72))(v5, v10, __p, &v12);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      if (v11 < 0)
      {
        operator delete(v10[0]);
      }

      if (v12)
      {
        return 0;
      }
    }
  }

  v7 = sub_10000C798();
  if (!(*(*v7 + 360))(v7) || (result = _os_feature_enabled_impl(), result))
  {
    sub_10000C7D0();
    return sub_1004102C4();
  }

  return result;
}

void sub_10049E714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049E750()
{
  v0 = sub_10000C798();
  if (!(*(*v0 + 352))(v0) || (result = _os_feature_enabled_impl(), result))
  {
    v2 = sub_10000C798();
    if ((*(*v2 + 416))(v2))
    {
      result = _os_feature_enabled_impl();
      if (!result)
      {
        return result;
      }

      v11 = 0;
      v3 = sub_10000E92C();
      if (!(*(*v3 + 8))(v3))
      {
        goto LABEL_11;
      }

      v4 = sub_10000E92C();
      sub_100007E30(v9, "HFP");
      sub_100007E30(__p, "DisableUWBSStereo");
      (*(*v4 + 72))(v4, v9, __p, &v11);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }

      if ((v11 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = sub_10000C798();
      if (((*(*v6 + 360))(v6) & 1) == 0)
      {
LABEL_11:
        v5 = sub_10000C7D0();
        return sub_1004104DC(v5);
      }
    }

    return 0;
  }

  return result;
}

void sub_10049E904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049E938()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = *(*sub_10000C7D0() + 2880);

    return v1();
  }

  return result;
}

uint64_t sub_10049E9A8()
{
  v0 = sub_10000C798();
  if (((*(*v0 + 416))(v0) & 1) != 0 || (v1 = sub_10000C798(), result = (*(*v1 + 352))(v1), result))
  {
    sub_10000C7D0();

    return sub_1004102C4();
  }

  return result;
}

uint64_t sub_10049EA40()
{
  v0 = sub_10000E92C();
  if (!(*(*v0 + 8))(v0))
  {
    goto LABEL_10;
  }

  v8 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "HFP");
  sub_100007E30(__p, "DisableWBS");
  (*(*v1 + 72))(v1, buf, __p, &v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(*buf);
  }

  if (v8 == 1)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WBS for HFP disabled by defaults write", buf, 2u);
    }

    return 0;
  }

  else
  {
LABEL_10:
    sub_10000C7D0();
    return sub_1004100E0();
  }
}

void sub_10049EB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049EBA4(uint64_t a1, int a2)
{
  if (a2 > 8)
  {
    if (a2 <= 10)
    {
      if (a2 == 9)
      {
        v4 = *(*a1 + 224);
      }

      else
      {
        v4 = *(*a1 + 232);
      }

      return v4();
    }

    if (a2 == 11)
    {
      v4 = *(*a1 + 240);

      return v4();
    }

    if (a2 == 12)
    {
      v4 = *(*a1 + 248);

      return v4();
    }

LABEL_33:
    v5 = 0;
    v7 = *(sub_10000C7D0() + 800);
    if (a2 <= 3)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            return v5;
          }

          v8 = sub_10000C798();
          if ((*(*v8 + 352))(v8))
          {
            v9 = sub_10000C798();
            if ((*(*v9 + 840))(v9, 0))
            {
              v10 = sub_10000E92C();
              if (!(*(*v10 + 8))(v10))
              {
                return 1;
              }

              v11 = sub_10000E92C();
              if ((*(*v11 + 600))(v11))
              {
                return 1;
              }
            }
          }

          return 0;
        }

        if ((*(*a1 + 384))(a1) && v7 - 12 < 0x7C4)
        {
          return 1;
        }

        v19 = (*(*a1 + 392))(a1);
        if (v7 > 0xC)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v5 = 1;
        if ((v20 & 1) != 0 || v7 - 5000 < 0x3E8)
        {
          return v5;
        }

        v21 = v7 - 3000 >= 0x3E8;
      }

      else
      {
        v5 = 1;
        v15 = sub_1000271F0();
        if (v15 <= 73)
        {
          if ((v15 - 6) <= 0x3F && ((1 << (v15 - 6)) & 0xCC00000007C3FFFFLL) != 0)
          {
            return v5;
          }
        }

        else if ((v15 - 74) <= 0x39 && ((1 << (v15 - 74)) & 0x21E0C3FFFDFFFFFLL) != 0 || (v15 - 154) <= 0x33 && ((1 << (v15 + 102)) & 0xFC0000000004FLL) != 0 || v15 == 296)
        {
          return v5;
        }

        if (v7 - 20 < 0x7BC)
        {
          return v5;
        }

        v21 = v7 - 12 >= 0x7C4 && v7 - 5000 >= 0x3E8 && v7 - 3000 >= 0x3E8;
      }

      return !v21;
    }

    if (a2 == 4)
    {
      if ((*(*a1 + 384))(a1))
      {
        v16 = v7 > 0xB;
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        v17 = (*(*a1 + 392))(a1);
        if (v7 > 0xC)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }

      return 1;
    }

    if (a2 != 5)
    {
      if (a2 != 13)
      {
        return v5;
      }

      if ((*(*a1 + 352))(a1) & 1) != 0 || ((*(*a1 + 368))(a1))
      {
        return 1;
      }

      v13 = *(*a1 + 456);
      v14 = a1;
      goto LABEL_71;
    }

    v18 = sub_10000C798();
    if ((*(*v18 + 840))(v18, 0))
    {
      v14 = sub_10000C798();
      v13 = *(*v14 + 456);
LABEL_71:

      return v13(v14);
    }

    return 0;
  }

  if (a2 > 6)
  {
    if (a2 == 7)
    {
      v4 = *(*a1 + 208);
    }

    else
    {
      v4 = *(*a1 + 216);
    }

    return v4();
  }

  if (a2 != 3)
  {
    if (a2 == 6)
    {
      v4 = *(*a1 + 200);

      return v4();
    }

    goto LABEL_33;
  }

  if ((*(*a1 + 368))(a1))
  {
    return 0;
  }

  v12 = *(*a1 + 840);

  return v12(a1, 1);
}

uint64_t sub_10049F294()
{
  v0 = sub_1000271F0();
  if (v0 > 0x16)
  {
    return 0;
  }

  else
  {
    return byte_1008A87CC[v0];
  }
}

uint64_t sub_10049F3C8()
{
  if (qword_100B6E668 != -1)
  {
    sub_1008314B8();
  }

  return byte_100B6E660;
}

void sub_10049F400(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2424))(v1);
  byte_100B6E660 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Support power Tag feature =%d", v4, 8u);
  }
}

uint64_t sub_10049F4DC()
{
  if (qword_100B6E678 != -1)
  {
    sub_1008314CC();
  }

  return byte_100B6E670;
}

void sub_10049F514(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2432))(v1);
  byte_100B6E670 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Support power Tag feature =%d", v4, 8u);
  }
}

uint64_t sub_10049F5F8(uint64_t a1, char a2)
{
  result = _os_feature_enabled_impl();
  *(a1 + 12) = result & a2;
  return result;
}

uint64_t sub_10049F638()
{
  if (qword_100B6E688 != -1)
  {
    sub_1008314E0();
  }

  return byte_100B6E680;
}

void sub_10049F670(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2448))(v1);
  v14 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableAdjustLEInstantFactor");
  v4 = (*(*v3 + 72))(v3, buf, __p, &v14);
  v5 = v14;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v4 & v5;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(*buf);
  }

  v7 = v6 | v2;
  byte_100B6E680 = (v6 | v2) & 1;
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "No";
    if (v7)
    {
      v10 = "Yes";
    }

    else
    {
      v10 = "No";
    }

    if (v2)
    {
      v11 = "Yes";
    }

    else
    {
      v11 = "No";
    }

    *buf = 136315650;
    *&buf[4] = v10;
    v16 = 2080;
    v17 = v11;
    if (v14)
    {
      v9 = "Yes";
    }

    v18 = 2080;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Support for Adjusting LE Instant Factor is enabled: %s (hw %s override %s)", buf, 0x20u);
  }
}

void sub_10049F828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049F864(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 416))(v1) & 1) != 0 || ((*(*v1 + 360))(v1) & 1) != 0 || ((*(*v1 + 368))(v1) & 1) != 0 || ((*(*v1 + 456))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 3168))(v2);
    byte_100B6E690 = v3;
    if (!v3)
    {
      goto LABEL_21;
    }
  }

  else if ((byte_100B6E690 & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = *(sub_10000C7D0() + 800);
  if ((*(*v1 + 416))(v1))
  {
    v5 = v4 == 20;
  }

  else
  {
    v5 = 0;
  }

  if (v5 || (*(*v1 + 360))(v1) && (v4 - 1) <= 0x7CE)
  {
    v18 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "EnforcePrioritization");
    v7 = (*(*v6 + 72))(v6, buf, __p, &v18);
    v8 = v18;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = v7 & v8;
    if (v22 < 0)
    {
      operator delete(*buf);
      if (v9)
      {
LABEL_17:
        v10 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Support for Discovery Scan Prioritization is enforced.", buf, 2u);
        }

        goto LABEL_21;
      }
    }

    else if (v9)
    {
      goto LABEL_17;
    }

    byte_100B6E690 = 0;
  }

LABEL_21:
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E690)
    {
      v12 = "enabled";
    }

    else
    {
      v12 = "disabled";
    }

    v13 = sub_10000C7D0();
    v14 = (*(*v13 + 3168))(v13);
    v15 = "N";
    if (v14)
    {
      v15 = "Y";
    }

    *buf = 136315394;
    *&buf[4] = v12;
    v20 = 2080;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Support for Discovery Scan Prioritization is %s (hw capability %s)", buf, 0x16u);
  }
}

void sub_10049FC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049FC70()
{
  if (qword_100B6E6A8 != -1)
  {
    sub_1008314F4();
  }

  return byte_100B6E6A0;
}

void sub_10049FCA8(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 3200))(v1);
  byte_100B6E6A0 = v2;
  if (v2)
  {
    v14 = 0;
    v3 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisableLEConnectionPrioritization");
    v4 = (*(*v3 + 72))(v3, buf, __p, &v14);
    v5 = v14;
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v4 & v5;
    if (v18 < 0)
    {
      operator delete(*buf);
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else if (!v6)
    {
      goto LABEL_10;
    }

    byte_100B6E6A0 = 0;
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disable LE Connection Prioritization.", buf, 2u);
    }
  }

LABEL_10:
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E6A0)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    v10 = sub_10000C7D0();
    v11 = (*(*v10 + 3200))(v10);
    *buf = 136315394;
    *&buf[4] = v9;
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Support for LE Connection Prioritization is %s (hw capability %{BOOL}d)", buf, 0x12u);
  }
}

void sub_10049FEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049FEF8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049FF88;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E6B8 != -1)
  {
    dispatch_once(&qword_100B6E6B8, block);
  }

  return byte_100B6E6B0;
}

void sub_10049FF88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 368))(v1) & 1) != 0 || ((*(*v1 + 352))(v1) & 1) != 0 || (*(*v1 + 416))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 4168))(v2);
    byte_100B6E6B0 = v3;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (v3)
      {
        v5 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for Controller Scan Rx Stats : %s", buf, 0xCu);
    }
  }

  if (byte_100B6E6B0 != 1)
  {
    goto LABEL_18;
  }

  v6 = _os_feature_enabled_impl();
  byte_100B6E6B0 = v6;
  if (!v6 || !(*(*v1 + 368))(v1))
  {
    goto LABEL_19;
  }

  v16 = 0;
  v7 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "FWStatsScan");
  v8 = (*(*v7 + 72))(v7, buf, __p, &v16);
  v9 = v16;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v8 & v9;
  if ((v18 & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_18:
    byte_100B6E6B0 = 0;
    goto LABEL_19;
  }

  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_15:
  byte_100B6E6B0 = 1;
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Controller Scan Rx Stats is enabled with override.", buf, 2u);
  }

LABEL_19:
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E6B0)
    {
      v13 = "enabled";
    }

    else
    {
      v13 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "support for Get Scan Stats is %s", buf, 0xCu);
  }
}

void sub_1004A02CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1004A0308(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (sub_10000C60C(v1))
  {
    v2 = sub_10000C7D0();
    if ((*(*v2 + 2576))(v2))
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    if (!sub_100032658(v1))
    {
      goto LABEL_8;
    }

    v3 = 1;
  }

  dword_100B6E6C0 = v3;
LABEL_8:
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (dword_100B6E6C0 > 3)
    {
      v5 = "Unknown ScanCoreHWType";
    }

    else
    {
      v5 = off_100AF8828[dword_100B6E6C0];
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ScanCore HW Type : %s", &v6, 0xCu);
  }
}

void sub_1004A0434(uint64_t a1)
{
  if (sub_10000C60C(*(a1 + 32)))
  {
    v1 = sub_10000C7D0();
    if ((*(*v1 + 2584))(v1))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  dword_100B6E6D0 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = off_100AF8848[v2];
    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ScanCore Compensation Type : %s", &v5, 0xCu);
  }
}

void sub_1004A0538(id a1)
{
  v7 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(v5, "LE");
  sub_100007E30(__p, "ScanCoreSupporteLNAandeLNABypassInSingleWindow");
  v2 = (*(*v1 + 72))(v1, v5, __p, &v7);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  byte_100B6E6E0 &= v7;
}

void sub_1004A0600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004A0634()
{
  if (qword_100B6E700 != -1)
  {
    sub_10083151C();
  }

  return byte_100B6E6F8;
}

void sub_1004A066C(id a1)
{
  v1 = sub_10000C7D0();
  v2 = sub_10008215C(v1, 5);
  byte_100B6E6F8 = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for LE Connection Scan Prioritization : %s", &v7, 0xCu);
    if ((byte_100B6E6F8 & 1) == 0)
    {
      v2 = 0;
      goto LABEL_9;
    }
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  v2 = _os_feature_enabled_impl();
LABEL_9:
  byte_100B6E6F8 = v2;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "support for LE Connection Scan Prioritization is %s", &v7, 0xCu);
  }
}

uint64_t sub_1004A07D0()
{
  if (qword_100B6E710 != -1)
  {
    sub_100831530();
  }

  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u)
  {
    byte_100B6E708 = 1;
  }

  return byte_100B6E708;
}

void sub_1004A083C(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AllowFindMyActionConnScanPrioritization");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E709);
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

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E709)
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: FindMyConnScanPrioritization: %s", buf, 0xCu);
  }

  byte_100B6E708 = byte_100B6E709;
}

void sub_1004A0998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004A09D4()
{
  if ((atomic_load_explicit(&qword_100B6E720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6E720))
  {
    v1 = sub_10000C7D0();
    byte_100B6E718 = (*(*v1 + 3040))(v1);
    __cxa_guard_release(&qword_100B6E720);
  }

  if (qword_100B6E730 != -1)
  {
    sub_100831544();
  }

  return byte_100B6E718;
}

void sub_1004A0A8C(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AllowFindMyActionTxPowerIncreaseLEConnecting");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E728);
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

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E728)
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: AllowFindMyActionTxPowerIncreaseLEConnecting: %s", buf, 0xCu);
  }

  byte_100B6E718 = byte_100B6E728;
}

void sub_1004A0BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004A0C24(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A0CB4;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E740 != -1)
  {
    dispatch_once(&qword_100B6E740, block);
  }

  return byte_100B6E738;
}

void sub_1004A0CB4(uint64_t a1)
{
  if ((*(**(a1 + 32) + 352))(*(a1 + 32)))
  {
    v1 = sub_10000C7D0();
    v2 = (*(*v1 + 3048))(v1);
    byte_100B6E738 = v2;
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "disabled";
      if (v2)
      {
        v4 = "enabled";
      }

      *buf = 136315138;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for Controller LE Connection Tx Power Increase HPLink : %s", buf, 0xCu);
    }
  }

  if (byte_100B6E738 == 1)
  {
    v5 = _os_feature_enabled_impl();
  }

  else
  {
    v5 = 0;
  }

  byte_100B6E738 = v5;
  v14 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "forceLEConnectionTxPowerEPA");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v14);
  v8 = v14;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v7 & v8;
  if (v16 < 0)
  {
    operator delete(*buf);
  }

  v10 = qword_100BCE8D8;
  if (v9)
  {
    byte_100B6E738 = v14;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "forceLEConnectionTxPowerEPA is enabled with override.", buf, 2u);
      v10 = qword_100BCE8D8;
    }
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E738)
    {
      v11 = "enabled";
    }

    else
    {
      v11 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "support for LE connection enable EPA is %s", buf, 0xCu);
  }
}

void sub_1004A0F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004A0F84()
{
  if (qword_100B6E750 != -1)
  {
    sub_100831558();
  }

  return byte_100B6E748;
}

void sub_1004A0FBC(id a1)
{
  if (IsAppleInternalBuild())
  {
    v1 = sub_10000E92C();
    sub_100007E30(v4, "LE");
    sub_100007E30(__p, "supportsNCSecondaryAdvInstance");
    (*(*v1 + 72))(v1, v4, __p, &byte_100B6E748);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    if (v5 < 0)
    {
      operator delete(v4[0]);
    }
  }
}

void sub_1004A1068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_1004A109C()
{
  if (qword_100B6E760 != -1)
  {
    sub_10083156C();
  }

  return byte_100B6E758;
}

void sub_1004A10D4(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "BBFC");
  sub_100007E30(__p, "EnforceBBFCScanPrioritization");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E758);
  v3 = byte_100B6E758;
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: BBFC: enforceBBFCScanPrioritization=true", buf, 2u);
  }
}

void sub_1004A11D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004A120C(uint64_t a1)
{
  if (((*(*a1 + 368))(a1) & 1) != 0 || (result = (*(*a1 + 352))(a1), result))
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

void sub_1004A12BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000C7D0();
  byte_100B6E769 = (*(*v2 + 3312))(v2);
  v3 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "forceEnableMRC");
  v4 = (*(*v3 + 72))(v3, buf, __p, &byte_100B543BC);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(*buf);
  }

  if (v4)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_100B543BC)
      {
        v6 = "enabled";
      }

      else
      {
        v6 = "disabled";
      }

      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "forceEnableMRC: %s", buf, 0xCu);
    }
  }

  if ((*(*v1 + 352))(v1))
  {
    byte_100B6E768 = byte_100B6E769 & byte_100B543BC;
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E768)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    v9 = "N";
    if (byte_100B6E769)
    {
      v9 = "Y";
    }

    *buf = 136315394;
    *&buf[4] = v8;
    v13 = 2080;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Support for Discovery Scan MRC is %s (hw capability %s)", buf, 0x16u);
  }
}

void sub_1004A1524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1004A1560(id a1)
{
  v1 = *(sub_10000C7D0() + 800);
  v9 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "WillSleep");
  sub_100007E30(__p, "requiresWillSleepWorkaround");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
  }

  v4 = qword_100BCE8D8;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding requiresWillSleepWorkaround=%c", buf, 8u);
      v4 = qword_100BCE8D8;
    }

    byte_100B6E778 = v9;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E778)
    {
      v6 = 89;
    }

    else
    {
      v6 = 78;
    }

    *buf = 67109376;
    *&buf[4] = v6;
    v11 = 1024;
    v12 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "requiresWillSleepWorkaround %c chipset %d", buf, 0xEu);
  }
}

void sub_1004A1724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004A1760()
{
  if (qword_100B6E790 != -1)
  {
    sub_100831594();
  }

  return byte_100B6E788;
}

void sub_1004A1798(id a1)
{
  if ((*(sub_10000C7D0() + 800) - 3000) <= 0x3E7)
  {
    byte_100B6E788 = 1;
    v1 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connection Scan on ScanCore is allowed under WiFi Critical Condition.", v2, 2u);
    }
  }
}

void sub_1004A19DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AppProtectionObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1004A1AB8(uint64_t a1)
{
  v2 = sub_100017E6C();
  if (v2)
  {
    v3 = v2;
    (*(*v2 + 288))(v2, *(a1 + 32));
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(*v3 + 296))(v3);
      v6 = off_100AF8860[(*(*v3 + 296))(v3)];
      v7[0] = 67109378;
      v7[1] = v5;
      v8 = 2080;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "smartCoverStateDidChange -- getSmartCoverState() returned %d (%s)", v7, 0x12u);
    }
  }
}

void sub_1004A1DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1004A1EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SystemScreenObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1004A204C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 72));

  _Unwind_Resume(a1);
}

void sub_1004A2084(uint64_t a1)
{
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_1008315DC();
  }

  v2 = +[BLSBacklight sharedBacklight];
  v3 = [v2 isAlwaysOnEnabled];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained screenStateChanged:1];
  }
}

id sub_1004A2334(uint64_t a1)
{
  [*(a1 + 32) _managedSettingsSubcribeForChangesAndEvents];
  v2 = *(a1 + 32);

  return [v2 _fetchManagedSettings];
}

void sub_1004A23BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ManagedSettingsObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1004A27CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100017F4C();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004A28D4;
  v10[3] = &unk_100AE2550;
  v10[4] = *(a1 + 32);
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  sub_10000CA94(v7, v10);
}

void sub_1004A28F4(uint64_t a1)
{
  sub_10038ADE8(a1);
  *v2 = off_100AF88E0;
  *(v2 + 8) = off_100AF8CC0;
  *(v2 + 16) = off_100AF8CE0;
  *(v2 + 24) = off_100AF8D00;
  *(v2 + 32) = off_100AF8D20;
  *(v2 + 40) = off_100AF8D40;
  *(v2 + 48) = off_100AF8D60;
  *(v2 + 56) = off_100AF8D80;
  *(v2 + 64) = off_100AF8DA0;
  *(v2 + 72) = off_100AF8DC0;
  *(v2 + 80) = off_100AF8DE0;
  *(v2 + 88) = off_100AF8E00;
  *(v2 + 96) = off_100AF8E20;
  *(v2 + 104) = off_100AF8E40;
  *(v2 + 112) = off_100AF8E60;
  *(v2 + 120) = off_100AF8E80;
  *(v2 + 128) = off_100AF8EA0;
  *(v2 + 136) = off_100AF8EC0;
  *(v2 + 144) = off_100AF8EE0;
  *(v2 + 152) = off_100AF8F00;
  *(v2 + 160) = off_100AF8F20;
  *(v2 + 168) = off_100AF8F40;
  *(v2 + 176) = off_100AF8F60;
  *(v2 + 184) = off_100AF8F80;
  *(v2 + 192) = off_100AF8FA0;
  *(v2 + 200) = off_100AF8FC0;
  *(v2 + 208) = off_100AF8FE0;
  *(v2 + 216) = off_100AF9000;
  *(v2 + 1352) = off_100AF9020;
  *(v2 + 1360) = &off_100AF9080;
  *(v2 + 1432) = 0;
  *(v2 + 1393) = 0u;
  *(v2 + 1368) = 0u;
  *(v2 + 1384) = 0u;
  *(v2 + 1412) = 0u;
  *(v2 + 1428) = 0;
  *(v2 + 1452) = -1;
  *(v2 + 1456) = -1;
  *(v2 + 1464) = 0;
  *(v2 + 1472) = -1;
  *(v2 + 1476) = 0;
  *(v2 + 1484) = -1;
  *(v2 + 1492) = 1;
  *(v2 + 1552) = 0;
  *(v2 + 1560) = 0;
  *(v2 + 1568) = 0;
  *(v2 + 1496) = 0u;
  *(v2 + 1576) = 257;
  *(v2 + 1584) = 0;
  sub_100044BBC(v2 + 1592);
  *(a1 + 1656) = 256;
  *(a1 + 1664) = 0u;
  *(a1 + 1680) = 0u;
  *(a1 + 1689) = 0u;
  *(a1 + 1712) = @"XZ";
  *(a1 + 1720) = 0;
  v3 = *(a1 + 1552);
  *(a1 + 1552) = 0;

  *(a1 + 1512) = -1;
  *(a1 + 1516) = 0;
  operator new();
}

void sub_1004A3004(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 1592);

  sub_1004A3290(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004A3068(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, v1 + 1592);
  *(v1 + 1656) = 1;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 1656);
    v4 = *(v1 + 1657);
    *buf = 67109376;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SystemSettingsModel::systemMonitor fDeviceFirstUnlocked:%d fDeviceLocked:%d", buf, 0xEu);
  }

  sub_10000801C(v6);
  sub_10038E054(v1);
  return sub_1000088CC(v6);
}

uint64_t sub_1004A316C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, v1 + 1592);
  v2 = [*(v1 + 1584) systemLockStateSync] == 3 || objc_msgSend(*(v1 + 1584), "systemLockStateSync") == 2;
  *(v1 + 1657) = v2;
  *(v1 + 1656) = [*(v1 + 1584) firstUnlockedSync];
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 1656);
    v5 = *(v1 + 1657);
    *buf = 67109376;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SystemSettings::SystemMonitor activated fDeviceFirstUnlocked:%d fDeviceLocked:%d", buf, 0xEu);
  }

  return sub_1000088CC(v7);
}

void *sub_1004A3290(void *a1)
{
  *a1 = &off_100AEE9B8;
  a1[1] = &off_100AEEBB8;
  a1[2] = &off_100AEEBD8;
  a1[3] = &off_100AEEBF8;
  a1[4] = &off_100AEEC18;
  a1[5] = &off_100AEEC38;
  a1[6] = &off_100AEEC58;
  a1[7] = &off_100AEEC78;
  a1[8] = &off_100AEEC98;
  a1[9] = &off_100AEECB8;
  a1[10] = &off_100AEECD8;
  a1[11] = &off_100AEECF8;
  a1[12] = &off_100AEED18;
  a1[13] = &off_100AEED38;
  a1[14] = &off_100AEED58;
  a1[15] = &off_100AEED78;
  a1[16] = &off_100AEED98;
  a1[17] = &off_100AEEDB8;
  a1[18] = &off_100AEEDD8;
  a1[19] = &off_100AEEDF8;
  a1[20] = &off_100AEEE18;
  a1[21] = &off_100AEEE38;
  a1[22] = &off_100AEEE58;
  a1[23] = &off_100AEEE78;
  a1[24] = &off_100AEEE98;
  a1[25] = &off_100AEEEB8;
  a1[26] = &off_100AEEED8;
  a1[27] = &off_100AEEEF8;
  v2 = a1[164];
  if (v2)
  {
    a1[165] = v2;
    operator delete(v2);
  }

  v3 = a1[159];
  if (v3)
  {
    a1[160] = v3;
    operator delete(v3);
  }

  v4 = a1[154];
  if (v4)
  {
    a1[155] = v4;
    operator delete(v4);
  }

  v5 = a1[149];
  if (v5)
  {
    a1[150] = v5;
    operator delete(v5);
  }

  v6 = a1[144];
  if (v6)
  {
    a1[145] = v6;
    operator delete(v6);
  }

  v7 = a1[139];
  if (v7)
  {
    a1[140] = v7;
    operator delete(v7);
  }

  v8 = a1[134];
  if (v8)
  {
    a1[135] = v8;
    operator delete(v8);
  }

  v9 = a1[129];
  if (v9)
  {
    a1[130] = v9;
    operator delete(v9);
  }

  v10 = a1[124];
  if (v10)
  {
    a1[125] = v10;
    operator delete(v10);
  }

  v11 = a1[119];
  if (v11)
  {
    a1[120] = v11;
    operator delete(v11);
  }

  v12 = a1[114];
  if (v12)
  {
    a1[115] = v12;
    operator delete(v12);
  }

  v13 = a1[109];
  if (v13)
  {
    a1[110] = v13;
    operator delete(v13);
  }

  v14 = a1[104];
  if (v14)
  {
    a1[105] = v14;
    operator delete(v14);
  }

  v15 = a1[99];
  if (v15)
  {
    a1[100] = v15;
    operator delete(v15);
  }

  v16 = a1[94];
  if (v16)
  {
    a1[95] = v16;
    operator delete(v16);
  }

  v17 = a1[89];
  if (v17)
  {
    a1[90] = v17;
    operator delete(v17);
  }

  v18 = a1[84];
  if (v18)
  {
    a1[85] = v18;
    operator delete(v18);
  }

  v19 = a1[79];
  if (v19)
  {
    a1[80] = v19;
    operator delete(v19);
  }

  v20 = a1[74];
  if (v20)
  {
    a1[75] = v20;
    operator delete(v20);
  }

  v21 = a1[69];
  if (v21)
  {
    a1[70] = v21;
    operator delete(v21);
  }

  v22 = a1[64];
  if (v22)
  {
    a1[65] = v22;
    operator delete(v22);
  }

  v23 = a1[59];
  if (v23)
  {
    a1[60] = v23;
    operator delete(v23);
  }

  v24 = a1[54];
  if (v24)
  {
    a1[55] = v24;
    operator delete(v24);
  }

  v25 = a1[49];
  if (v25)
  {
    a1[50] = v25;
    operator delete(v25);
  }

  v26 = a1[44];
  if (v26)
  {
    a1[45] = v26;
    operator delete(v26);
  }

  v27 = a1[39];
  if (v27)
  {
    a1[40] = v27;
    operator delete(v27);
  }

  v28 = a1[34];
  if (v28)
  {
    a1[35] = v28;
    operator delete(v28);
  }

  v29 = a1[29];
  if (v29)
  {
    a1[30] = v29;
    operator delete(v29);
  }

  return a1;
}

uint64_t sub_1004A37F4(int a1, std::string *this)
{
  if ((atomic_load_explicit(&qword_100B6E7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6E7B8))
  {
    sub_100007E30(&stru_100B6E7A0, "");
    __cxa_atexit(&std::string::~string, &stru_100B6E7A0, &_mh_execute_header);
    __cxa_guard_release(&qword_100B6E7B8);
  }

  if (qword_100B6E7C0 != -1)
  {
    sub_100831644();
  }

  std::string::operator=(this, &stru_100B6E7A0);
  return 0;
}

void sub_1004A38C0(id a1)
{
  __val = 1;
  v1 = container_system_group_path_for_identifier();
  if (v1)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Using containerized path %s", buf, 0xCu);
    }

    std::string::assign(&stru_100B6E7A0, v1);
    free(v1);
  }

  else if (IsAppleInternalBuild())
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    memset(v11, 0, sizeof(v11));
    *buf = 0u;
    sub_100007AD0(buf);
    v3 = sub_100007774(&v10);
    std::to_string(&__p, __val);
    sub_100007774(v3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::stringbuf::str();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    sub_1001C4B04(p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *&v10 = v5;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[1]);
    }

    std::locale::~locale(v11);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  else
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100831658(&__val, v6);
    }
  }
}

void sub_1004A3BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

id sub_1004A3C2C(uint64_t a1)
{
  if (!_os_feature_enabled_impl() || !sub_1005FCECC())
  {
    return 0;
  }

  v2 = *(a1 + 1688);

  return [v2 allowTemporaryPairingOfAppleAudioAccessories];
}

void sub_1004A3C90(uint64_t a1)
{
  *(a1 + 1376) = SCDynamicStoreKeyCreateComputerName(kCFAllocatorDefault);

  sub_1004A3CD8(a1);
}

void sub_1004A3CD8(uint64_t a1)
{
  if (*(a1 + 1376) || *(a1 + 1384))
  {
    if (*(a1 + 1368))
    {
      goto LABEL_6;
    }

    v10.version = 0;
    memset(&v10.retain, 0, 24);
    v10.info = a1;
    v2 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.MobileBluetooth.SystemSettings", sub_1004A3EF8, &v10);
    *(a1 + 1368) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = sub_100017F4C();
      SCDynamicStoreSetDispatchQueue(v3, *(v4 + 8));
LABEL_6:
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v6 = Mutable;
        v7 = *(a1 + 1376);
        if (v7)
        {
          CFArrayAppendValue(Mutable, v7);
        }

        v8 = *(a1 + 1384);
        if (v8)
        {
          CFArrayAppendValue(v6, v8);
        }

        SCDynamicStoreSetNotificationKeys(*(a1 + 1368), v6, 0);
        CFRelease(v6);
      }

      return;
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008316D4();
    }
  }

  else
  {
    v9 = *(a1 + 1368);
    if (v9)
    {
      SCDynamicStoreSetDispatchQueue(v9, 0);
      CFRelease(*(a1 + 1368));
      *(a1 + 1368) = 0;
    }
  }
}

void sub_1004A3E18(uint64_t a1)
{
  v2 = *(a1 + 1376);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 1376) = 0;
  }

  sub_1004A3CD8(a1);
}

void sub_1004A3E5C(uint64_t a1)
{
  if (sub_1005FCA54())
  {
    *(a1 + 1384) = @"com.apple.MobileInternetSharing";

    sub_1004A3CD8(a1);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831708();
  }
}

uint64_t sub_1004A3F00(uint64_t a1, std::string *a2)
{
  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u && qword_100B6E7D0 != -1)
  {
    sub_10083173C();
  }

  HostName = SCDynamicStoreCopyComputerName(*(a1 + 1368), 0);
  if (HostName)
  {
    v5 = HostName;
  }

  else
  {
    v10 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.MobileBluetooth.SystemSettings", 0);
    if (!v10)
    {
      v6 = 1;
      goto LABEL_9;
    }

    v5 = v10;
    HostName = SCPreferencesGetHostName();
    if (!HostName)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  std::string::assign(a2, [(__SCPreferences *)HostName UTF8String]);
  v6 = 0;
LABEL_8:
  CFRelease(v5);
LABEL_9:
  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) >= 0xBB8u)
  {
    if (qword_100B6E7E0 != -1)
    {
      sub_100831750();
    }

    if (byte_100B6E7D8 == 1)
    {
      std::string::assign(a2, "Apple Watch");
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = a2->__r_.__value_.__r.__words[0];
        }

        v11 = 136315138;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Override Name to %s", &v11, 0xCu);
      }
    }
  }

  if (byte_100B6E7C8 == 1)
  {
    std::string::assign(a2, "Apple Watch");
  }

  return v6;
}

void sub_1004A40FC(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskLocalNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E7C8);
  v3 = byte_100B6E7C8;
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch in readHostname", buf, 2u);
  }
}

void sub_1004A4200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1004A4234(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskCODandNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E7D8);
  v3 = byte_100B6E7D8;
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

void sub_1004A4338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004A436C(uint64_t a1, BOOL *a2, _BYTE *a3, _BYTE *a4)
{
  *a2 = 0;
  *a4 = 0;
  *a3 = 0;
  if (!sub_1005FCA54())
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831708();
    }

    return 1;
  }

  v8 = *(a1 + 1368);
  if (!v8)
  {
    return 1;
  }

  v9 = *(a1 + 1384);
  if (!v9)
  {
    return 1;
  }

  v10 = SCDynamicStoreCopyValue(v8, v9);
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 == CFDictionaryGetTypeID())
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(v11, @"State");
    if (Value && (v14 = Value, v15 = CFGetTypeID(Value), v15 == CFNumberGetTypeID()) && CFNumberGetValue(v14, kCFNumberIntType, &valuePtr))
    {
      v16 = 0;
      *a2 = valuePtr == 1023;
    }

    else
    {
      v16 = 1;
    }

    v18 = CFDictionaryGetValue(v11, @"Hosts");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFDictionaryGetTypeID())
      {
        v21 = CFDictionaryGetValue(v19, @"Current");
        if (v21)
        {
          v22 = v21;
          v23 = CFGetTypeID(v21);
          if (v23 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v22, kCFNumberIntType, &valuePtr);
            *a3 = valuePtr;
          }
        }

        v24 = CFDictionaryGetValue(v19, @"Max");
        if (v24)
        {
          v25 = v24;
          v26 = CFGetTypeID(v24);
          if (v26 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v25, kCFNumberIntType, &valuePtr);
            *a4 = valuePtr;
          }
        }
      }
    }
  }

  else
  {
    v16 = 1;
  }

  CFRelease(v11);
  return v16;
}

void sub_1004A4554(void *a1, const __CFArray *a2)
{
  if (sub_1005FCA54())
  {
    if (CFArrayGetCount(a2) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v4);
        v6 = ValueAtIndex;
        v7 = a1[172];
        if (v7 && CFStringCompare(ValueAtIndex, v7, 0) == kCFCompareEqualTo)
        {
          memset(&v11, 0, sizeof(v11));
          if (!(*(*a1 + 24))(a1, &v11))
          {
            if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100008904(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v11;
            }

            sub_10038B3A8(a1, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v11.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v8 = a1[173];
          if (v8 && CFStringCompare(v6, v8, 0) == kCFCompareEqualTo)
          {
            v11.__r_.__value_.__s.__data_[0] = 0;
            v9 = 0;
            if (!(*(*a1 + 32))(a1, &v11, &v9 + 1, &v9))
            {
              sub_10038BA58(a1, v11.__r_.__value_.__s.__data_[0], HIBYTE(v9), v9);
            }
          }
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(a2));
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831708();
  }
}

void sub_1004A4708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004A473C()
{
  if (!sub_1005FCA40() && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831764();
  }
}

uint64_t sub_1004A478C(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _DWORD *a7)
{
  if (sub_1005FCA40())
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
    v14 = sub_1007265D4(*(a1 + 1504));
    *a5 = v14;
    if (v14 && sub_1007265F4(*(a1 + 1504)))
    {
      if (sub_1007265E4(*(a1 + 1504)) == 1)
      {
        *a2 = 1;
      }

      if (sub_1007265E4(*(a1 + 1504)) == 2)
      {
        *a3 = 1;
      }

      if (sub_1007265E4(*(a1 + 1504)) == 3)
      {
        *a4 = 1;
      }
    }

    *a6 = sub_100726604(*(a1 + 1504));
    v15 = sub_1007265C8(*(a1 + 1504));
    result = 0;
    *a7 = v15;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831764();
    }

    return 1;
  }

  return result;
}

void sub_1004A48A4(uint64_t a1)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (!(*(*a1 + 56))(a1, &v14 + 1, &v14, &v13 + 1, &v13, &v12, &v11))
  {
    if (v13)
    {
      v1 = "On";
    }

    else
    {
      v1 = "Off";
    }

    sub_100007E30(&v8, v1);
    v2 = std::string::insert(&v8, 0, "WiFi State: ");
    v3 = *&v2->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = v3;
    v2->__r_.__value_.__l.__size_ = 0;
    v2->__r_.__value_.__r.__words[2] = 0;
    v2->__r_.__value_.__r.__words[0] = 0;
    v4 = std::string::append(&v9, ", Band: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v14)
    {
      v6 = "5 GHz";
    }

    else if ((v14 & 0x100) != 0)
    {
      v6 = "2.4 GHz";
    }

    else if (HIBYTE(v13))
    {
      v6 = "6 GHz";
    }

    else
    {
      v6 = "Unknown";
    }

    std::string::append(&v10, v6);
    if (v12 == 1)
    {
      std::string::append(&v10, ". [WARNING] 2.4 GHz critical state!");
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v10;
    }

    else
    {
      v7 = v10.__r_.__value_.__r.__words[0];
    }

    sub_1001C429C(v7);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1004A4A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t sub_1004A4A88(uint64_t a1, _BYTE *a2)
{
  if (sub_1005FCA40())
  {
    v4 = sub_1007265F4(*(a1 + 1504));
    result = 0;
    *a2 = v4;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831764();
    }

    return 1;
  }

  return result;
}

void sub_1004A4B00(uint64_t a1)
{
  if (sub_1005FCA40())
  {
    v2 = sub_100017F4C();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1004A4BB0;
    v3[3] = &unk_100ADF8F8;
    v3[4] = a1;
    sub_10000CA94(v2, v3);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831764();
  }
}

void sub_1004A4BB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1007265D4(*(v1 + 1504));
  v3 = sub_1007265E4(*(v1 + 1504)) - 1;
  if (v3 >= 3)
  {
    sub_1007265F4(*(v1 + 1504));
    v4 = 0;
  }

  else
  {
    v4 = &_mh_execute_header + (v3 << 32);
  }

  v5 = sub_100726604(*(v1 + 1504));
  v6 = v5 | (sub_1007265C8(*(v1 + 1504)) << 32);
  sub_1004A48A4(v1);

  sub_10038BCA4(v1, v4 | v2, v6);
}

void sub_1004A4C54(uint64_t a1)
{
  v2 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.MobileBluetooth.SystemSettings", @"com.apple.radios.plist");
  *(a1 + 1400) = v2;
  if (v2)
  {
    v6.version = 0;
    memset(&v6.retain, 0, 24);
    v6.info = a1;
    SCPreferencesSetCallback(v2, sub_1004A4D20, &v6);
    v3 = *(a1 + 1400);
    v4 = sub_100017F4C();
    SCPreferencesSetDispatchQueue(v3, *(v4 + 8));
  }

  if ((*(a1 + 1408) & 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, a1, sub_1004A4D28, NSProcessInfoPowerStateDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    *(a1 + 1408) = 1;
  }
}

void sub_1004A4D28(uint64_t a1, uint64_t a2)
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 isLowPowerModeEnabled];

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Low Power Mode Enabled: %d", v6, 8u);
  }

  sub_10038C0F8(a2, v4);
}

void sub_1004A4E20(uint64_t a1)
{
  v2 = *(a1 + 1400);
  if (v2)
  {
    SCPreferencesSetDispatchQueue(v2, 0);
    CFRelease(*(a1 + 1400));
    *(a1 + 1400) = 0;
  }

  if (*(a1 + 1408) == 1)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, a1, NSProcessInfoPowerStateDidChangeNotification, 0);
    *(a1 + 1408) = 0;
  }
}

BOOL sub_1004A4EB8(uint64_t a1, const __CFString *a2, BOOL *a3)
{
  Value = SCPreferencesGetValue(*(a1 + 1400), a2);
  v5 = Value != 0;
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 != CFBooleanGetTypeID())
    {
      return 0;
    }

    v8 = CFBooleanGetValue(v6) != 0;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  return v5;
}

uint64_t sub_1004A4F34(uint64_t a1, _BYTE *a2)
{
  v3 = +[NSProcessInfo processInfo];
  *a2 = [v3 isLowPowerModeEnabled];

  return 0;
}

void sub_1004A4F88(SCPreferencesRef *a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    v3 = 0;
    SCPreferencesSynchronize(a1[175]);
    if (!(*(*a1 + 10))(a1, &v3))
    {
      sub_10038BEF8(a1, v3);
    }
  }
}

void sub_1004A5000(uint64_t a1)
{
  v2 = IORegisterForSystemPower(a1, (a1 + 1416), sub_1000A11B0, (a1 + 1424));
  *(a1 + 1412) = v2;
  if (v2)
  {
    *(a1 + 1428) = 0;
    v3 = *(a1 + 1416);
    v4 = *(sub_100017F4C() + 8);

    IONotificationPortSetDispatchQueue(v3, v4);
  }
}

uint64_t sub_1004A507C(uint64_t result)
{
  if (*(result + 1412))
  {
    v1 = result;
    IODeregisterForSystemPower((result + 1424));
    IONotificationPortDestroy(*(v1 + 1416));
    result = IOServiceClose(*(v1 + 1412));
    *(v1 + 1412) = 0;
  }

  return result;
}

uint64_t sub_1004A50CC(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notifying system is shutting down with reason %d", v6, 8u);
  }

  return sub_1000A2CA4(a1, 4u, a2);
}

void sub_1004A519C(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A5294;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  v3 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", (a1 + 1448), v2, handler);
  v4 = qword_100BCE8D8;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831AB4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully registered for MKB first unlock notification", v5, 2u);
  }
}

void sub_1004A5294(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = MKBDeviceUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received MKB first unlock notification. MKBDeviceUnlockedSinceBoot returns : %d", v4, 8u);
  }

  if (MKBDeviceUnlockedSinceBoot() != 1 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_10081ADB8();
  }

  v3 = MKBDeviceUnlockedSinceBoot() == 1;
  sub_10038C22C(v1, v3);
}

uint64_t sub_1004A53A8(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1448));
  *(a1 + 1448) = -1;
  return result;
}

uint64_t sub_1004A53D8(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1400));
  *(a1 + 1400) = -1;
  return result;
}

void sub_1004A543C(const void *a1)
{
  if (sub_1005FCA7C() && BYSetupAssistantNeedsToRun())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = BYSetupAssistantFinishedDarwinNotification;

    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1004A54B4, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void sub_1004A54C4(const void *a1)
{
  if (sub_1005FCA7C())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = BYSetupAssistantFinishedDarwinNotification;

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, v3, 0);
  }
}

uint64_t sub_1004A5528(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1005FCA7C();
  if (v3)
  {
    LOBYTE(v3) = BYSetupAssistantNeedsToRun();
  }

  *a2 = v3;
  return 0;
}

void sub_1004A555C(uint64_t a1)
{
  if (sub_1005FCA7C())
  {
    v2 = *(sub_100017F4C() + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004A55E4;
    block[3] = &unk_100ADF8F8;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

void sub_1004A55E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = BYSetupAssistantNeedsToRun();

  sub_10038C42C(v1, v2);
}

uint64_t sub_1004A5620(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A56AC;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.system.powersources.percent", (a1 + 1452), v2, handler);
}

void sub_1004A56AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*v1 + 104))(v1, &v2 + 1, &v2))
  {
    sub_10038C598(v1, HIBYTE(v2), v2);
  }
}

uint64_t sub_1004A5724(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1452));
  *(a1 + 1452) = -1;
  return result;
}

uint64_t sub_1004A5754(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1412));
  *(a1 + 1412) = -1;
  return result;
}

uint64_t sub_1004A5784(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v5 = sub_10000C798();
  if ((*(*v5 + 424))(v5))
  {
    result = IOPSGetPercentRemaining();
    if (result)
    {
      return 1;
    }

    else
    {
      *a3 = 0;
      *a2 = 0;
    }
  }

  else
  {
    result = 0;
    *a2 = 1;
    *a3 = 100;
  }

  return result;
}

uint64_t sub_1004A5830(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A58BC;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.system.powersources.source", (a1 + 1456), v2, handler);
}

void sub_1004A58BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*v1 + 128))(v1, &v2))
  {
    sub_10038C7C8(v1, v2);
  }
}

uint64_t sub_1004A592C(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1456));
  *(a1 + 1456) = -1;
  return result;
}

uint64_t sub_1004A595C(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1392));
  *(a1 + 1392) = -1;
  return result;
}

void sub_1004A598C(uint64_t a1)
{
  if (sub_10000C240())
  {
    v2 = *(sub_100017F4C() + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10009AB88;
    handler[3] = &unk_100AF0BA0;
    handler[4] = a1;
    notify_register_dispatch("com.apple.coreaudio.ActivePorts", (a1 + 1460), v2, handler);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B28();
  }
}

uint64_t sub_1004A5A54(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1460));
  *(a1 + 1460) = -1;
  return result;
}

uint64_t sub_1004A5A84(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1388));
  *(a1 + 1388) = -1;
  return result;
}

void sub_1004A5AB4(CFBundleRef *a1)
{
  v2 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/PrivateFrameworks/AssistantServices.framework", kCFURLPOSIXPathStyle, 1u);
  a1[183] = CFBundleCreate(kCFAllocatorDefault, v2);
  CFRelease(v2);
  if (a1[183] && MGGetBoolAnswer())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = *CFBundleGetDataPointerForName(a1[183], @"kAFPreferencesDidChangeDarwinNotification");

    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1004A5B90, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void sub_1004A5BA0(CFBundleRef *a1)
{
  if (MGGetBoolAnswer())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    DataPointerForName = CFBundleGetDataPointerForName(a1[183], @"kAFPreferencesDidChangeDarwinNotification");
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, *DataPointerForName, 0);
  }

  CFRelease(a1[183]);
  a1[183] = 0;
}

uint64_t sub_1004A5C10(uint64_t a1, BOOL *a2)
{
  v4 = sub_10000C798();
  if (!(*(*v4 + 64))(v4) || !*(a1 + 1464) || !MGGetBoolAnswer())
  {
    return 1;
  }

  FunctionPointerForName = CFBundleGetFunctionPointerForName(*(a1 + 1464), @"AFSupportPreferencesSynchronize");
  FunctionPointerForName();
  v6 = CFBundleGetFunctionPointerForName(*(a1 + 1464), @"AFPreferencesAssistantEnabled");
  v7 = v6();
  result = 0;
  *a2 = v7 != 0;
  return result;
}

void sub_1004A5CBC(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A5D3C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v2, block);
}

void sub_1004A5D3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*v1 + 144))(v1, &v2))
  {
    sub_10038C9E8(v1, v2);
  }
}

uint64_t sub_1004A5DA4(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A5E30;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.coreaudio.BorealisToggled", (a1 + 1472), v2, handler);
}

uint64_t sub_1004A5E40(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1472));
  *(a1 + 1472) = -1;
  return result;
}

uint64_t sub_1004A5E70(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1384));
  *(a1 + 1384) = -1;
  return result;
}

void sub_1004A5EA0(_BYTE *a1)
{
  if (sub_1005FC8E0())
  {
    a1[1476] = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1004A5F40, @"com.apple.carplay.allowed-changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    sub_1004A5F48();
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B5C();
  }
}

void sub_1004A5F48()
{
  if (sub_1005FC8E0())
  {
    v0 = objc_autoreleasePoolPush();
    CRIsCarPlayAllowed();
    objc_autoreleasePoolPop(v0);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B5C();
  }
}

void sub_1004A600C(_BYTE *a1)
{
  if (sub_1005FC8E0())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.carplay.allowed-changed", 0);
    a1[1476] = 0;
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B5C();
  }
}

void sub_1004A6094(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = *(sub_100017F4C() + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004A611C;
  v5[3] = &unk_100AE15D8;
  v5[4] = v3;
  v6 = a2;
  dispatch_async(v4, v5);
}

void sub_1004A611C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 1476) != v3)
  {
    *(v2 + 1476) = v3;
    sub_10038CD70(v2, v3);
  }
}

void *sub_1004A6140(void *result)
{
  if (!result[209])
  {
    v1 = result;
    v2 = objc_alloc_init(SystemScreenObserver);
    result = [(SystemScreenObserver *)v2 activateWithSystemMonitor:v1[198]];
    v1[209] = v2;
  }

  return result;
}

uint64_t sub_1004A61AC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_10000C798();
  if ((*(*v4 + 440))(v4) & 1) != 0 || (v5 = sub_10000C798(), ((*(*v5 + 416))(v5)))
  {
    v6 = 1;
  }

  else
  {
    v6 = [*(a1 + 1672) screenOn];
  }

  *a2 = v6;
  return 0;
}

uint64_t sub_1004A6268(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A62F4;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.keyboard.isOnScreen", (a1 + 1484), v2, handler);
}

void sub_1004A62F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*v1 + 216))(v1, &v2, 0))
  {
    sub_10038DC18(v1, v2);
  }
}

uint64_t sub_1004A6368(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1484));
  *(a1 + 1484) = -1;
  return result;
}

uint64_t sub_1004A6398(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1364));
  *(a1 + 1364) = -1;
  return result;
}

uint64_t sub_1004A63C8(uint64_t a1, BOOL *a2, int a3)
{
  state64 = 0;
  if (a3)
  {
    notify_register_check("com.apple.keyboard.isOnScreen", (a1 + 1484));
  }

  result = notify_get_state(*(a1 + 1484), &state64);
  if (result)
  {
    return 1;
  }

  *a2 = state64 == 1;
  return result;
}

uint64_t sub_1004A6434(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A64C0;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 1540), v2, handler);
}

void sub_1004A64C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CFPreferencesCopyValue(@"enableGameControllerAutoSwitchMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<GameControllerAutoSwitchListener> &)_block_invoke";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Using Pref Setting for game controller auto switch: %d", &v7, 0x12u);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 1544) != v3)
  {
    *(v1 + 1544) = v3;
    sub_10038CF88(v1, v3);
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 1544);
    v7 = 136315394;
    v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<GameControllerAutoSwitchListener> &)_block_invoke";
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: game controller auto switch is currently set to %d", &v7, 0x12u);
  }
}

uint64_t sub_1004A6688(uint64_t a1)
{
  *(a1 + 1544) = 0;
  result = notify_cancel(*(a1 + 1540));
  *(a1 + 1540) = -1;
  return result;
}

uint64_t sub_1004A66BC(uint64_t a1)
{
  *(a1 + 1408) = 0;
  result = notify_cancel(*(a1 + 1404));
  *(a1 + 1404) = -1;
  return result;
}

uint64_t sub_1004A66F0(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A677C;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 1532), v2, handler);
}

void sub_1004A677C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CFPreferencesCopyValue(@"enableGameControllerUSBBluetoothPairing", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<GameControllerUSBBTPairingListener> &)_block_invoke";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Using Pref Setting for GC's USB BT Pairing: %d", &v7, 0x12u);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 1536) != v3)
  {
    *(v1 + 1536) = v3;
    sub_10038D1A0(v1, v3);
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 1536);
    v7 = 136315394;
    v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<GameControllerUSBBTPairingListener> &)_block_invoke";
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: game controller USB BT Pairing is currently set to %d", &v7, 0x12u);
  }
}

uint64_t sub_1004A6944(uint64_t a1)
{
  *(a1 + 1536) = 0;
  result = notify_cancel(*(a1 + 1532));
  *(a1 + 1532) = -1;
  return result;
}

uint64_t sub_1004A6978(uint64_t a1)
{
  *(a1 + 1392) = 0;
  result = notify_cancel(*(a1 + 1388));
  *(a1 + 1388) = -1;
  return result;
}

uint64_t sub_1004A69AC(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A6A38;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.mobilegarageband.appAndSessionState", (a1 + 1488), v2, handler);
}

void sub_1004A6A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*v1 + 224))(v1, &v2))
  {
    sub_10038D3B8(v1, v2);
  }
}

uint64_t sub_1004A6AA8(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1488));
  *(a1 + 1488) = -1;
  return result;
}

uint64_t sub_1004A6AD8(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1336));
  *(a1 + 1336) = -1;
  return result;
}

uint64_t sub_1004A6B08(uint64_t a1, BOOL *a2)
{
  state64 = 0;
  result = notify_get_state(*(a1 + 1488), &state64);
  if (result)
  {
    return 1;
  }

  *a2 = state64 != 0;
  return result;
}

void sub_1004A6B6C(uint64_t a1)
{
  v6 = 1;
  v2 = sub_1000E36A0();
  (*(*v2 + 64))(v2, &v6);
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 1492);
    *buf = 67109376;
    v8 = v6;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SystemSettings Accessibility setting newHT:%u, currHT:%u", buf, 0xEu);
  }

  v5 = v6;
  if (*(a1 + 1492) != v6)
  {
    *(a1 + 1492) = v6;
    sub_10038D5D0(a1, v5);
  }
}

void sub_1004A6C84(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = (a1 + 1712);
  objc_storeStrong(v5, a2);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v7 = *v5;
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Country code changed %@", &v8, 0xCu);
  }
}

void sub_1004A6D6C(uint64_t a1)
{
  v2 = sub_100017F4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004A6DE8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_1004A6E00(uint64_t a1)
{
  v2 = sub_100017F4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004A6E7C;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_1004A6E90(uint64_t a1)
{
  result = sub_1005FCCC4();
  if (result)
  {
    *(a1 + 1516) = 0;
    result = notify_cancel(*(a1 + 1512));
    *(a1 + 1512) = -1;
  }

  return result;
}

uint64_t sub_1004A6ECC(uint64_t a1)
{
  result = sub_1005FCCC4();
  if (result)
  {
    *(a1 + 1340) = 0;
    result = notify_cancel(*(a1 + 1336));
    *(a1 + 1336) = -1;
  }

  return result;
}

uint64_t sub_1004A6F08(uint64_t a1)
{
  result = sub_1005FCCC4();
  if (result)
  {
    if (*(a1 + 1512) == -1)
    {
      v3 = *(sub_100017F4C() + 8);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1004A6FA8;
      handler[3] = &unk_100AF0BA0;
      handler[4] = a1;
      return notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 1512), v3, handler);
    }
  }

  return result;
}

void sub_1004A6FA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = CFPreferencesCopyValue(@"SpatialSoundProfileAllowed", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v3 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  if (*(v1 + 1516) != v2)
  {
    *(v1 + 1516) = v2;
    sub_10038D7E8(v1, v2);
  }
}

uint64_t sub_1004A707C(uint64_t a1, _BYTE *a2)
{
  if (sub_1005FCCC4())
  {
    v4 = CFPreferencesCopyValue(@"SpatialSoundProfileAllowed", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [v4 BOOLValue];
    }

    else
    {
      v5 = 1;
    }

    *a2 = v5;
    if (*(a1 + 1516) != v5)
    {
      *(a1 + 1516) = v5;
    }
  }

  return 0;
}

uint64_t sub_1004A713C(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A71C8;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.bluetooth.prefsChanged", (a1 + 1520), v2, handler);
}

void sub_1004A71C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CFPreferencesCopyValue(@"move3PPLEMSToLegacyMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<HID3ppLELegacyModeListener> &)_block_invoke";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Using Pref Setting for LE Mouse at 7.5ms: %d", &v7, 0x12u);
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 1524) != v3)
  {
    *(v1 + 1524) = v3;
    sub_10038DA00(v1, v3);
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 1524);
    v7 = 136315394;
    v8 = "virtual void BT::SystemSettings::listenersWillBecomeNonEmpty(const ObservedListeners<HID3ppLELegacyModeListener> &)_block_invoke";
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: LE Mouse at 7.5ms is currently set to %d", &v7, 0x12u);
  }
}

uint64_t sub_1004A7390(uint64_t a1)
{
  *(a1 + 1524) = 0;
  result = notify_cancel(*(a1 + 1520));
  *(a1 + 1520) = -1;
  return result;
}

uint64_t sub_1004A73C4(uint64_t a1)
{
  *(a1 + 1340) = 0;
  result = notify_cancel(*(a1 + 1336));
  *(a1 + 1336) = -1;
  return result;
}

uint64_t sub_1004A73F8(uint64_t a1)
{
  v2 = *(sub_100017F4C() + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004A7484;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("com.apple.system.console_mode_changed", (a1 + 1528), v2, handler);
}

void sub_1004A7484(uint64_t a1)
{
  v1 = *(a1 + 32);
  state64 = 0;
  state = notify_get_state(*(v1 + 1528), &state64);
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (state)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fGameConsoleModeNotifyToken is invalid", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 134217984;
      v7 = state64;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "com.apple.system.console_mode_changed: %llu", buf, 0xCu);
    }

    sub_10038E1C4(v1, state64 == 1);
  }
}

uint64_t sub_1004A75A4(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1528));
  *(a1 + 1528) = -1;
  return result;
}

uint64_t sub_1004A75D4(uint64_t a1)
{
  result = notify_cancel(*(a1 + 1320));
  *(a1 + 1320) = -1;
  return result;
}

uint64_t sub_1004A7604(uint64_t a1, BOOL *a2)
{
  v3 = sub_10000C798();
  if (((*(*v3 + 416))(v3) & 1) == 0)
  {
    v4 = sub_10000C798();
    if (!(*(*v4 + 352))(v4))
    {
      return 1;
    }
  }

  v6 = 8;
  v7 = 0;
  if (sysctlbyname("kern.console_mode", &v7, &v6, 0, 0) == -1)
  {
    return 1;
  }

  result = 0;
  *a2 = v7 == 1;
  return result;
}

void sub_1004A76DC(uint64_t a1)
{
  if (sub_1005FC95C())
  {
    v2 = *(a1 + 1552);
    if (!v2)
    {
      v3 = objc_alloc_init(CMDeviceOrientationManager);
      v4 = *(a1 + 1552);
      *(a1 + 1552) = v3;

      v2 = *(a1 + 1552);
    }

    v5 = +[NSOperationQueue mainQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004A77E4;
    v6[3] = &unk_100AF9120;
    v6[4] = a1;
    [v2 startDeviceOrientationUpdatesToQueue:v5 withHandler:v6];
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B90();
  }
}

void sub_1004A77E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Receiving device orientation update", buf, 2u);
  }

  v10 = 0;
  v9 = [v5 orientation];
  if (!sub_1004A78B4(v9, v9, &v10))
  {
    sub_10038DE30(v7, v10);
  }
}

uint64_t sub_1004A78B4(uint64_t a1, int a2, int *a3)
{
  if ((sub_1005FC95C() & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831B90();
    }

    return 1;
  }

  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      result = 0;
      if (a2 == 4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 4;
      }

      goto LABEL_21;
    }

    if (a2 == 6)
    {
      result = 0;
      v6 = 5;
      goto LABEL_21;
    }

    if (a2 != 7)
    {
      goto LABEL_22;
    }

LABEL_17:
    result = 0;
    v6 = 1;
    goto LABEL_21;
  }

  if (a2 > 1)
  {
    result = 0;
    if (a2 == 2)
    {
      v6 = 6;
    }

    else
    {
      v6 = 7;
    }

    goto LABEL_21;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  if (a2 != 1)
  {
LABEL_22:
    *a3 = 0;
    return 1;
  }

  result = 0;
  v6 = 2;
LABEL_21:
  *a3 = v6;
  return result;
}

uint64_t sub_1004A79D8(uint64_t a1)
{
  if (sub_1005FC95C())
  {
    v11 = 0;
    v2 = [*(a1 + 1552) deviceOrientationBlocking];
    v3 = v2;
    if (!v2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831BC4();
      }

      v9 = 0;
      goto LABEL_16;
    }

    v4 = [v2 orientation];
    v5 = sub_1004A78B4(v4, v4, &v11);
    v6 = qword_100BCE8D8;
    v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 67109120;
        v13 = v11;
        v8 = "Unexpected device orientation received - %u";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 8u);
      }
    }

    else if (v7)
    {
      *buf = 67109120;
      v13 = v11;
      v8 = "Successfully queried device orientation - %u";
      goto LABEL_14;
    }

    v9 = v11;
LABEL_16:

    return v9;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831B90();
  }

  return 0;
}

BOOL sub_1004A7B6C()
{
  v3 = 8;
  v4 = 0;
  if (sysctlbyname("security.mac.amfi.developer_mode_status", &v4, &v3, 0, 0))
  {
    return 0;
  }

  v1 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Developer Mode enabled", v2, 2u);
  }

  return v4 == 1;
}

uint64_t sub_1004A7C10()
{
  if (qword_100B6E7F0 != -1)
  {
    sub_100831BF8();
  }

  return byte_100B6E7E8;
}

void sub_1004A7C48(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_100B6E7E8 = v2 != 0;
  }
}

id sub_1004A7CA4(uint64_t a1)
{
  result = sub_1005FCE30();
  if (result)
  {
    v3 = *(a1 + 1680);

    return [v3 messagesAppLockState];
  }

  return result;
}

uint64_t sub_1004A7CEC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A7DBC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E7F8 != -1)
  {
    dispatch_once(&qword_100B6E7F8, block);
  }

  if (*(a1 + 1696))
  {
    return 0;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831C0C();
  }

  return 1;
}

void sub_1004A7DBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSDate dateWithTimeIntervalSinceNow:10.0];
  for (i = 10000; ; i *= 2)
  {
    [v2 timeIntervalSinceNow];
    if (v4 <= 0.0)
    {
      break;
    }

    v5 = IOServiceNameMatching("AppleOLYHAL");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    v7 = MatchingService;
    if (MatchingService)
    {
      v8 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"HWIdentifiers", kCFAllocatorDefault, 1u);
      v9 = v8;
      if (v8)
      {
        v10 = CFGetTypeID(v8);
        if (v10 == CFDictionaryGetTypeID())
        {
          v11 = *(v1 + 1696);
          if (v11)
          {
            CFRelease(v11);
            *(v1 + 1696) = 0;
          }

          CFRetain(v9);
          *(v1 + 1696) = v9;
        }

        CFRelease(v9);
      }

      IOObjectRelease(v7);
      v12 = qword_100BCE8D8;
      if (*(v1 + 1696))
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(v1 + 1696);
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "HWIdentifiers property is set: %@", &v15, 0xCu);
        }

        break;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No HWIdentifiers property. Retrying...\n", &v15, 2u);
      }
    }

    else
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "No AppleOLYHAL service. Retrying...\n", &v15, 2u);
      }
    }

    usleep(i);
  }
}

uint64_t sub_1004A8010(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A80FC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E800 != -1)
  {
    dispatch_once(&qword_100B6E800, block);
  }

  if (*(a1 + 1704))
  {
    return 0;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WiFi has not booted", v4, 2u);
  }

  return 1;
}

void sub_1004A80FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSDate dateWithTimeIntervalSinceNow:10.0];
  for (i = 10000; ; i *= 2)
  {
    [v2 timeIntervalSinceNow];
    if (v4 <= 0.0)
    {
      break;
    }

    v5 = IOServiceNameMatching("AppleOLYHAL");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    v7 = MatchingService;
    if (MatchingService)
    {
      v8 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"WiFiBootState", kCFAllocatorDefault, 1u);
      v9 = v8;
      if (v8)
      {
        v10 = CFGetTypeID(v8);
        if (v10 == CFBooleanGetTypeID())
        {
          *(v1 + 1704) = CFBooleanGetValue(v9) != 0;
        }

        CFRelease(v9);
      }

      IOObjectRelease(v7);
      v11 = *(v1 + 1704);
      v12 = qword_100BCE8D8;
      v13 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v11 == 1)
      {
        if (v13)
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WiFi has booted", v17, 2u);
        }

        break;
      }

      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WiFi has not booted", buf, 2u);
      }
    }

    else
    {
      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No AppleOLYHAL service. Retrying...\n", v15, 2u);
      }
    }

    usleep(i);
  }
}

uint64_t sub_1004A8300(void *a1)
{
  result = a1[212];
  if (!result)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831C40();
    }

    if ((*(*a1 + 304))(a1))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831C74();
      }

      return 0;
    }

    else
    {
      return a1[212];
    }
  }

  return result;
}

uint64_t sub_1004A83B8(CFDictionaryRef *a1)
{
  if (!(*(*a1 + 39))(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831CDC();
    }

    return 0;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(a1[212], @"C");
  if (!Value)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831CA8();
    }

    return 0;
  }

  CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
  if (valuePtr == 276347)
  {
    return 4377;
  }

  else
  {
    return valuePtr;
  }
}

_BYTE *sub_1004A84A0@<X0>(CFDictionaryRef *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if ((*(*a1 + 39))(a1))
  {
    *buffer = 0u;
    v15 = 0u;
    cStr[0] = a2;
    cStr[1] = 0;
    v6 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    v7 = CFAutorelease(v6);
    Value = CFDictionaryGetValue(a1[212], v7);
    if (Value)
    {
      v9 = buffer;
      CFStringGetCString(Value, buffer, 32, 0x8000100u);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831D10();
      }

      v9 = "";
    }

    v11 = a3;
    v10 = v9;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100831D88();
    }

    v10 = "";
    v11 = a3;
  }

  return sub_100007E30(v11, v10);
}

void sub_1004A86FC(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = a2;
  sub_1004A89EC(a2, 0, buf);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *buf;
  v5[2] = *&buf[16];
  v8 = v5;
  if (*(v5 + 23) < 0)
  {
    v8 = *v5;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = [NSString stringWithFormat:@".*(%@)", v9];
  v11 = (*(*a1 + 424))(a1, @"/etc/bluetool/", v10, a3, 0);
  v12 = MGCopyAnswer();
  v13 = qword_100BCE8D8;
  if (v12 && v11)
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [@"/etc/bluetool/" stringByAppendingString:v11];
      v18 = v17;
      v19 = [v17 UTF8String];
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v5;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Found file from override directory: %s with extension: %s", buf, 0x16u);
    }

    v15 = [@"/etc/bluetool/" stringByAppendingString:v11];
    v16 = v15;
    sub_100007E30(a4, [v15 UTF8String]);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = @"/etc/bluetool/";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No override %s file in %@", buf, 0x16u);
    }

    sub_100007E30(a4, "");
  }
}

uint64_t sub_1004A89EC@<X0>(const void **a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  v7 = a1[1];
  a3[1] = 0;
  a3[2] = 0;
  if ((v6 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *a3 = 0;
  result = sub_1003A5170(a3, v8 + 1);
  if (*(result + 23) >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  if (v8)
  {
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    result = memmove(v10, v11, v8);
  }

  v12 = &v10[v8];
  *v12 = a2;
  v12[1] = 0;
  return result;
}

void sub_1004A8A88(uint64_t a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  sub_1004A89EC(a2, 0, __p);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  *v3 = *__p;
  v3[2] = *&__p[16];
  v5 = v3;
  if (*(v3 + 23) < 0)
  {
    v5 = *v3;
  }

  v26 = [NSString stringWithUTF8String:v5];
  (*(*a1 + 352))(__p, a1);
  if (__p[23] >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = *__p;
  }

  v28 = [NSString stringWithUTF8String:v6];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  (*(*a1 + 360))(__p, a1);
  if (__p[23] >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = *__p;
  }

  v27 = [NSString stringWithUTF8String:v7];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  (*(*a1 + 336))(__p, a1);
  if (__p[23] >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = *__p;
  }

  v9 = [NSString stringWithUTF8String:v8];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  (*(*a1 + 464))(__p, a1);
  if (__p[23] >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = *__p;
  }

  v11 = [NSString stringWithUTF8String:v10];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if ([v28 length] && objc_msgSend(v27, "length") && objc_msgSend(v9, "length"))
  {
    v12 = [v9 uppercaseString];
    if ([v12 characterAtIndex:0] == 71)
    {
      v13 = [NSString stringWithUTF8String:"S"];

      v9 = v13;
    }

    if ([v26 containsString:@"ptb"])
    {
      if ([(__CFString *)v11 length])
      {
        v14 = [NSString stringWithFormat:@"K_%@", v11];

        v11 = v14;
      }

      else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831E00();
      }
    }

    else
    {

      v11 = &stru_100B0F9E0;
    }

    if (-[__CFString length](v11, "length") || ([v26 containsString:@"ptb"] & 1) == 0)
    {
      v16 = [NSString stringWithFormat:@".*(%@).*(%@).*._(%@).*(%@)_.*(%@)", v28, v27, v9, v11, v26];
      v17 = (*(*a1 + 424))(a1, @"/usr/share/firmware/bluetooth/", v16, 0, 0);
      v15 = v16;
      if (v17)
      {
        v18 = v17;
        goto LABEL_44;
      }
    }

    else
    {
      v15 = 0;
    }

    if (![v26 containsString:@"ptb"] || (v11, v11 = @"K_R", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @".*(%@).*(%@).*._(%@).*(%@)_.*(%@)", v28, v27, v9, @"K_R", v26), v16 = objc_claimAutoreleasedReturnValue(), v15, (*(*a1 + 424))(a1, @"/usr/share/firmware/bluetooth/", v16, 0, 0), v18 = objc_claimAutoreleasedReturnValue(), v15 = v16, !v18))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831E34();
      }

      sub_100007E30(a3, "");
      goto LABEL_52;
    }

LABEL_44:
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [@"/usr/share/firmware/bluetooth/" stringByAppendingString:v18];
      v21 = v20;
      v22 = [v20 UTF8String];
      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      *__p = 136315394;
      *&__p[4] = v22;
      *&__p[12] = 2080;
      *&__p[14] = v3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found file from HWIdentifiers: %s with extension: %s", __p, 0x16u);
    }

    v23 = [@"/usr/share/firmware/bluetooth/" stringByAppendingString:v18];
    v24 = v23;
    sub_100007E30(a3, [v23 UTF8String]);

    v15 = v16;
LABEL_52:

    goto LABEL_53;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100831EAC();
  }

  sub_100007E30(a3, "");
LABEL_53:
}

void sub_1004A9204(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = a2;
  sub_1004A89EC(a2, 0, buffer);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *buffer;
  v5[2] = v45;
  v8 = v5;
  if (*(v5 + 23) < 0)
  {
    v8 = *v5;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = IOServiceNameMatching("bluetooth-pcie");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v10);
  v12 = MatchingService;
  if (MatchingService)
  {
    v13 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"IOName", kCFAllocatorDefault, 1u);
    v14 = v13;
    if (v13)
    {
      *buffer = 0u;
      v45 = 0u;
      if (CFStringGetCString(v13, buffer, 32, 0x8000100u))
      {
        CFRelease(v14);
        IOObjectRelease(v12);
        v15 = strtok(buffer, ",");
        v16 = strtok(0, ",");
        v17 = v16;
        v18 = qword_100BCE8D8;
        if (v15 && v16)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v39 = v15;
            v40 = 2080;
            v41 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Got IOName with vendorId %s, deviceId %s", buf, 0x16u);
          }

          v19 = [NSString stringWithUTF8String:v15];
          if (strcmp(v17, "792b"))
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100831F24();
            }

LABEL_15:
            sub_100007E30(a4, "");
LABEL_61:

            goto LABEL_62;
          }

          if (strcmp(v15, "pci14c3"))
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100831F94();
            }

            goto LABEL_31;
          }

          if ([v9 containsString:@"ptx"])
          {
            v20 = (*(*a1 + 392))(a1);
            v21 = [@"MT7923A0" substringToIndex:{objc_msgSend(@"MT7923A0", "length") - 2}];
            if (v20)
            {
              [NSString stringWithFormat:@".*(%@)_PTB_(%@)_.*(%@)", v21, v20, v9];
            }

            else
            {
              [NSString stringWithFormat:@".*(%@).*(%@)", @"MT7923A0", v9];
            }
            v37 = ;
          }

          else
          {
            v22 = sub_1000271F0();
            v23 = strcmp(v17, "793b");
            v24 = &stru_100B0F9E0;
            if (!v23)
            {
              if ((v22 - 173) >= 4)
              {
                v25 = @"TypeC";
                if (v22 != 131)
                {
                  v25 = &stru_100B0F9E0;
                }

                if (v22 == 296)
                {
                  v24 = @"TypeB";
                }

                else
                {
                  v24 = v25;
                }
              }

              else
              {
                v24 = @"TypeA";
              }
            }

            v37 = [NSString stringWithFormat:@".*(%@)_.*(%@).*(%@)", @"MT7923A0", v24, v9];
            if ([v9 containsString:@"bin"] && sub_10037D384())
            {
              v26 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Loading Bluetooth firmware signed with the development secure boot key", buf, 2u);
              }

              v27 = [NSString stringWithFormat:@".*(%@).*dev_sign.*(%@).*(%@)", @"MT7923A0", v24, v9];

              v37 = v27;
            }
          }

          v28 = (*(*a1 + 424))(a1, @"/usr/share/firmware/bluetooth/", v37, a3, 0);
          if (v28)
          {
            v29 = "no";
          }

          else
          {
            sub_1000271F0();
            v30 = [NSString stringWithFormat:@".*(%@)_PTB_.*(%@)", @"MT7923A0", v9];
            v28 = (*(*a1 + 424))(a1, @"/usr/share/firmware/bluetooth/", v30, a3, 0);

            if (!v28)
            {

LABEL_31:
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_100832004();
              }

              goto LABEL_15;
            }

            v29 = "yes";
          }

          v31 = qword_100BCE8D8;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [@"/usr/share/firmware/bluetooth/" stringByAppendingString:v28];
            v33 = v32;
            v34 = [v32 UTF8String];
            if (*(v5 + 23) < 0)
            {
              v5 = *v5;
            }

            *buf = 136315650;
            v39 = v34;
            v40 = 2080;
            v41 = v5;
            v42 = 2080;
            v43 = v29;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Found file from IOName: %s with extension: %s 2Chance: %s", buf, 0x20u);
          }

          v35 = [@"/usr/share/firmware/bluetooth/" stringByAppendingString:v28];
          v36 = v35;
          sub_100007E30(a4, [v35 UTF8String]);

          goto LABEL_61;
        }

        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v39 = v15;
          v40 = 2080;
          v41 = v17;
          v42 = 2080;
          v43 = buffer;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing vendorId (%s) or deviceId (%s) from IOName %s", buf, 0x20u);
        }

        sub_100007E30(a4, "");
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10083207C();
        }

        CFRelease(v14);
        IOObjectRelease(v12);
        sub_100007E30(a4, "");
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008320B0();
      }

      IOObjectRelease(v12);
      sub_100007E30(a4, "");
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008320E4();
    }

    sub_100007E30(a4, "");
  }

LABEL_62:
}

NSObject *sub_1004A9A84(uint64_t a1, void *a2, void *a3, unsigned int a4, void *a5)
{
  v9 = a2;
  v30 = a3;
  v29 = a5;
  v10 = +[NSFileManager defaultManager];
  v11 = [NSURL fileURLWithPath:v9];
  v12 = [NSArray arrayWithObject:NSURLNameKey];
  v28 = a4;
  v35 = 0;
  v13 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v12 options:4 error:&v35];
  v14 = v35;

  if (v14)
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v14 debugDescription];
      sub_100832118(v9, v16, v37);
    }

    v17 = 0;
  }

  else
  {
    v18 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          if (v23)
          {
            v24 = [v23 lastPathComponent];
            [v18 addObject:v24];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v20);
    }

    v25 = [v18 count];
    v26 = 0;
    if (v30 && v25)
    {
      v26 = (*(*a1 + 456))(a1, v18, v30, v28, v29);
    }

    v15 = v26;

    v17 = v15;
  }

  return v17;
}

id sub_1004A9DE0(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v37 = a2;
  v9 = a3;
  v10 = a5;
  v38 = v9;
  v41 = v10;
  if ([v9 containsString:@"aladdink"])
  {
    v11 = @"aladdin";
    v12 = @"aladdink";
LABEL_5:
    v13 = [v9 stringByReplacingOccurrencesOfString:v12 withString:v11];

    v38 = v13;
    goto LABEL_6;
  }

  if ([v9 containsString:@"geniek"])
  {
    v11 = @"genie";
    v12 = @"geniek";
    goto LABEL_5;
  }

LABEL_6:
  v36 = a1;
  v39 = objc_alloc_init(NSMutableArray);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v37;
  v14 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = *v47;
  v16 = @"LPM";
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v47 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v46 + 1) + 8 * i);
      if (v10)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v19 = v10;
        v20 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v20)
        {
          v21 = v16;
          v22 = *v43;
          while (2)
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(v19);
              }

              if ([v18 containsString:*(*(&v42 + 1) + 8 * j)])
              {
                LODWORD(v20) = 1;
                goto LABEL_22;
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }

LABEL_22:
          v16 = v21;
        }

        v10 = v41;
        if (a4)
        {
LABEL_27:
          if ((v20 | [v18 containsString:v16] ^ 1))
          {
            continue;
          }

LABEL_28:
          [v39 addObject:v18];
          continue;
        }
      }

      else
      {
        LODWORD(v20) = 0;
        if (a4)
        {
          goto LABEL_27;
        }
      }

      if (((v20 | [v18 containsString:v16]) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  }

  while (v14);
LABEL_31:

  v24 = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", v38];
  v25 = [v39 filteredArrayUsingPredicate:v24];
  v26 = [v25 mutableCopy];

  if (![v26 count])
  {
    goto LABEL_36;
  }

  v27 = [v26 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];
  v28 = [v27 mutableCopy];

  v26 = v28;
  v29 = [v28 lastObject];
  v30 = [v29 length] > 0xFF;

  if (v30)
  {
    v31 = qword_100BCE8D8;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [v28 lastObject];
      sub_1008321E0(v32, v38, v50);
    }

LABEL_36:
    v33 = 0;
  }

  else
  {
    if ([v28 count] < 2)
    {
      goto LABEL_41;
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100832170();
    }

    if (sub_10009B9DC() == 8)
    {
LABEL_41:
      v34 = [v28 lastObject];
    }

    else
    {
      v34 = (*(*v36 + 432))(v36, v28);
    }

    v33 = v34;
  }

  return v33;
}

id sub_1004AA2EC(uint64_t a1, void *a2)
{
  v27 = a2;
  v47 = 0;
  v31 = [NSRegularExpression regularExpressionWithPattern:@".*_([0-9]*)[.]([0-9]*)[.]([0-9]*)[.].*" options:1 error:&v47];
  v26 = v47;
  if (v26)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [v27 lastObject];
      v4 = [v26 debugDescription];
      sub_100832248(v3, v4, v50);
    }

    v5 = [v27 lastObject];
  }

  else
  {
    v37 = objc_alloc_init(NSNumberFormatter);
    v35 = [v27 lastObject];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v27;
    v6 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v6)
    {
      v33 = 0;
      v34 = 0;
      v36 = 0;
      v29 = *v44;
      v30 = v6;
      v7 = &stru_100B0F9E0;
      v8 = &stru_100B0F9E0;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * i);
          v10 = [v31 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v33 = v10;
          v11 = [v33 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v11)
          {
            v38 = *v40;
            v7 = &stru_100B0F9E0;
            v8 = &stru_100B0F9E0;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v40 != v38)
                {
                  objc_enumerationMutation(v33);
                }

                v13 = *(*(&v39 + 1) + 8 * j);
                if ([v13 numberOfRanges] >= 4)
                {
                  v14 = [v13 rangeAtIndex:1];
                  v16 = [v9 substringWithRange:{v14, v15}];

                  v17 = [v13 rangeAtIndex:3];
                  v19 = [v9 substringWithRange:{v17, v18}];

                  v20 = [v37 numberFromString:v16];
                  v21 = [v20 longValue];

                  v22 = [v37 numberFromString:v19];
                  v23 = [v22 longValue];

                  if (v36 < v21 || v36 == v21 && v34 < v23)
                  {
                    v24 = v9;

                    v35 = v24;
                    v36 = v21;
                    v8 = v16;
                    v7 = v19;
                    v34 = v23;
                  }

                  else
                  {
                    v8 = v16;
                    v7 = v19;
                  }
                }
              }

              v11 = [v33 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v11);
          }

          else
          {
            v7 = &stru_100B0F9E0;
            v8 = &stru_100B0F9E0;
          }
        }

        v30 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v30);
    }

    else
    {
      v33 = 0;
      v8 = &stru_100B0F9E0;
      v7 = &stru_100B0F9E0;
    }

    v5 = v35;
  }

  return v5;
}

uint64_t sub_1004AA810(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  bzero(v11, 0x240uLL);
  sub_1004AAC10(v11);
  if ((*(&v11[4] + *(v11[0] - 3)) & 5) != 0)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008322A8();
    }

    v6 = 2402;
  }

  else
  {
    *a4 = 0;
    std::istream::seekg();
    std::istream::tellg();
    *a4 = v10;
    std::istream::seekg();
    v8 = *a4;
    if (v8 <= 0)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100832420();
      }

      if (v12 && !std::filebuf::close())
      {
        std::ios_base::clear((v11 + *(v11[0] - 3)), *(&v11[4] + *(v11[0] - 3)) | 4);
      }

      v6 = 2403;
    }

    else
    {
      v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
      *a3 = v9;
      if (v9)
      {
        std::istream::read();
        if ((*(&v11[4] + *(v11[0] - 3)) & 5) != 0)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100832320();
          }

          if (v12 && !std::filebuf::close())
          {
            std::ios_base::clear((v11 + *(v11[0] - 3)), *(&v11[4] + *(v11[0] - 3)) | 4);
          }

          v6 = 2405;
        }

        else
        {
          if (v12 && !std::filebuf::close())
          {
            std::ios_base::clear((v11 + *(v11[0] - 3)), *(&v11[4] + *(v11[0] - 3)) | 4);
          }

          v6 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008323A8();
        }

        if (v12 && !std::filebuf::close())
        {
          std::ios_base::clear((v11 + *(v11[0] - 3)), *(&v11[4] + *(v11[0] - 3)) | 4);
        }

        v6 = 2404;
      }
    }
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v6;
}

void sub_1004AABDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1004AAC10(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1004AADA8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1004AADE0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v13 = a2 + 23;
  v12 = *(a2 + 23);
  if ((v12 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_3;
    }

LABEL_7:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100832544();
    }

    return 2400;
  }

  if (!*(a2 + 1))
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!a4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008324A8();
    }

    return 2401;
  }

  if ((v12 & 0x80000000) != 0)
  {
    sub_100008904(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v29 = *(a2 + 2);
  }

  (*(*a1 + 400))(&v30, a1, &__dst, a6);
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = v30;
  *(a5 + 2) = v31;
  HIBYTE(v31) = 0;
  LOBYTE(v30) = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst);
  }

  if (*(a5 + 23) < 0)
  {
    v15 = *(a5 + 1);
    if (v15)
    {
      sub_100008904(&v26, *a5, v15);
LABEL_23:
      v14 = (*(*a1 + 440))(a1, &v26, a3, a4);
      if (SHIBYTE(v27) < 0)
      {
        v16 = v26;
LABEL_50:
        operator delete(v16);
        return v14;
      }

      return v14;
    }
  }

  else if (*(a5 + 23))
  {
    v26 = *a5;
    v27 = *(a5 + 2);
    goto LABEL_23;
  }

  if (sub_10009B9DC() == 8)
  {
    if (*v13 < 0)
    {
      sub_100008904(__p, *a2, *(a2 + 1));
    }

    else
    {
      *__p = *a2;
      v25 = *(a2 + 2);
    }

    (*(*a1 + 416))(&v30, a1, __p, a6);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = v30;
    *(a5 + 2) = v31;
    HIBYTE(v31) = 0;
    LOBYTE(v30) = 0;
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a5 + 23) < 0)
    {
      sub_100008904(&v22, *a5, *(a5 + 1));
    }

    else
    {
      v22 = *a5;
      v23 = *(a5 + 2);
    }

    v14 = (*(*a1 + 440))(a1, &v22, a3, a4);
    if (SHIBYTE(v23) < 0)
    {
      v16 = v22;
      goto LABEL_50;
    }
  }

  else
  {
    if (*v13 < 0)
    {
      sub_100008904(v20, *a2, *(a2 + 1));
    }

    else
    {
      *v20 = *a2;
      v21 = *(a2 + 2);
    }

    (*(*a1 + 408))(&v30, a1, v20);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = v30;
    *(a5 + 2) = v31;
    HIBYTE(v31) = 0;
    LOBYTE(v30) = 0;
    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }

    if (*(a5 + 23) < 0)
    {
      sub_100008904(v18, *a5, *(a5 + 1));
    }

    else
    {
      *v18 = *a5;
      v19 = *(a5 + 2);
    }

    v14 = (*(*a1 + 440))(a1, v18, a3, a4);
    if (SHIBYTE(v19) < 0)
    {
      v16 = v18[0];
      goto LABEL_50;
    }
  }

  return v14;
}

void sub_1004AB218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004AB298(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  sub_100007E30(a1, "");
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "System Settings MGCopyAnswer WSKU", &v10, 2u);
  }

  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    if (CFDataGetLength(v3) == 16)
    {
      v5 = 0;
      v6 = CFDataGetBytePtr(v4) + 8;
      do
      {
        v7 = v6[v5];
        if (v7 >= 0x21)
        {
          std::string::push_back(a1, v7);
        }

        ++v5;
      }

      while (v5 != 4);
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = a1;
        }

        else
        {
          v9 = a1->__r_.__value_.__r.__words[0];
        }

        v10 = 136315138;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Obtained sku from system is: %s", &v10, 0xCu);
      }
    }

    CFRelease(v4);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008325C4();
  }
}

uint64_t sub_1004AB45C()
{
  values = @"AppleSunriseBluetooth";
  keys = @"IOUserClass";
  v0 = sub_10022EB48(&keys, &values, 1);
  v1 = CFAutorelease(v0);
  notification = 0;
  v2 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v2);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 2, v1);
  v6 = IOServiceAddMatchingNotification(v2, "IOServiceFirstMatch", MutableCopy, sub_1004AB64C, Current, &notification);
  if (v6)
  {
    sub_100304AF8("IOServiceAddMatchingNotification returned 0x%08x", v6);
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    return 1;
  }

  if (IOIteratorNext(notification))
  {
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    IOObjectRelease(notification);
  }

  else
  {
    do
    {
      sub_100304AF8("AppleSunriseBluetooth not found, waiting for it to appear");
      v8 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 5.0, 0);
      v9 = IOIteratorNext(notification);
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 == kCFRunLoopRunTimedOut;
      }
    }

    while (!v10);
    v11 = v9;
    CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
    IONotificationPortDestroy(v2);
    IOObjectRelease(notification);
    if (!v11)
    {
      sub_100304AF8("PCIe could not find AppleSunriseBluetooth service");
      return 1;
    }
  }

  return 0;
}

void sub_1004AB64C(__CFRunLoop *a1)
{
  sub_100304AF8("AppleSunriseBluetooth found, releasing waiting thread");

  CFRunLoopStop(a1);
}

void sub_1004AB690(uint64_t a1)
{
  sub_1004AB944(a1);

  operator delete();
}

Class sub_1004AB708(uint64_t a1)
{
  if (!qword_100B6E810)
  {
    qword_100B6E810 = _sl_dlopen();
  }

  result = objc_getClass("SBSSmartCoverService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100B6E808 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1004AB808()
{
  result = _sl_dlopen();
  qword_100B6E810 = result;
  return result;
}

uint64_t sub_1004AB87C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void *sub_1004AB944(uint64_t a1)
{
  *a1 = off_100AF88E0;
  *(a1 + 8) = off_100AF8CC0;
  *(a1 + 16) = off_100AF8CE0;
  *(a1 + 24) = off_100AF8D00;
  *(a1 + 32) = off_100AF8D20;
  *(a1 + 40) = off_100AF8D40;
  *(a1 + 48) = off_100AF8D60;
  *(a1 + 56) = off_100AF8D80;
  *(a1 + 64) = off_100AF8DA0;
  *(a1 + 72) = off_100AF8DC0;
  *(a1 + 80) = off_100AF8DE0;
  *(a1 + 88) = off_100AF8E00;
  *(a1 + 96) = off_100AF8E20;
  *(a1 + 104) = off_100AF8E40;
  *(a1 + 112) = off_100AF8E60;
  *(a1 + 120) = off_100AF8E80;
  *(a1 + 128) = off_100AF8EA0;
  *(a1 + 136) = off_100AF8EC0;
  *(a1 + 144) = off_100AF8EE0;
  *(a1 + 152) = off_100AF8F00;
  *(a1 + 160) = off_100AF8F20;
  *(a1 + 168) = off_100AF8F40;
  *(a1 + 176) = off_100AF8F60;
  *(a1 + 184) = off_100AF8F80;
  *(a1 + 192) = off_100AF8FA0;
  *(a1 + 200) = off_100AF8FC0;
  *(a1 + 208) = off_100AF8FE0;
  *(a1 + 216) = off_100AF9000;
  *(a1 + 1352) = off_100AF9020;
  *(a1 + 1360) = &off_100AF9080;

  sub_10007A068(a1 + 1592);

  return sub_1004A3290(a1);
}

uint64_t sub_1004AC0D8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 8);
  v8 = *(a1 + 80);
  if (v8 != (a1 + 88))
  {
    while (1)
    {
      v9 = v8[4];
      v10 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
      {
        break;
      }

      if (v9)
      {
        goto LABEL_4;
      }

LABEL_7:
      v13 = v8[1];
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
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
      if (v14 == (a1 + 88))
      {
        return sub_1000088CC(v22);
      }
    }

    v16 = *(v9 + 8);
    *buf = 134219264;
    v24 = a2;
    v25 = 1024;
    v26 = a3;
    v27 = 1024;
    v28 = a4;
    v29 = 1024;
    v30 = a5;
    v31 = 1024;
    v32 = a6;
    v33 = 2048;
    v34 = v16;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "BTDeviceMsgHandler::BTServiceEventCallback device:%llx services:%x eventType:%x ServiceSpecificEvent:%x result:%d cbid:%llx", buf, 0x2Eu);
LABEL_4:
    if (*(*(v9 + 24) + 160) == 1)
    {
      v11 = xpc_dictionary_create(0, 0, 0);
      v12 = v11;
      if (v11)
      {
        xpc_dictionary_set_uint64(v11, "kCBMsgArgID", *(v9 + 8));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgSessionID", *(v9 + 16));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgBTDevice", a2);
        xpc_dictionary_set_uint64(v12, "kCBMsgArgServiceMask", a3);
        xpc_dictionary_set_uint64(v12, "kCBMsgArgEventType", a4);
        xpc_dictionary_set_uint64(v12, "kCBMsgArgEvent", a5);
        xpc_dictionary_set_uint64(v12, "kCBMsgArgResult", a6);
        sub_100383144(*(v9 + 24), "kCBMsgIdServiceEvent", v12, 1);
      }
    }

    goto LABEL_7;
  }

  return sub_1000088CC(v22);
}

uint64_t sub_1004AC368(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a6)
  {
    return sub_1004AC0D8(a6, result, a2, a3, a4, a5);
  }

  return result;
}

void sub_1004AC390(id a1)
{
  v55 = "kCBMsgIdDeviceAddressToStringMsg";
  v56 = 32;
  v57 = &v55;
  v1 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v1[4] = sub_1004AD100;
  v1[5] = 0;
  v55 = "kCBMsgIdDeviceAddressFromStringMsg";
  v56 = 34;
  v57 = &v55;
  v2 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v2[4] = sub_10009CE78;
  v2[5] = 0;
  v55 = "kCBMsgIdDeviceFromAddressMsg";
  v56 = 28;
  v57 = &v55;
  v3 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v3[4] = sub_10009C96C;
  v3[5] = 0;
  v55 = "kCBMsgIdDeviceFromIdentifierMsg";
  v56 = 31;
  v57 = &v55;
  v4 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v4[4] = sub_1000D6828;
  v4[5] = 0;
  v55 = "kCBMsgIdDeviceGetAddressStringMsg";
  v56 = 33;
  v57 = &v55;
  v5 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v5[4] = sub_1000E405C;
  v5[5] = 0;
  v55 = "kCBMsgIdDeviceGetDeviceTypeMsg";
  v56 = 30;
  v57 = &v55;
  v6 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v6[4] = sub_1000E6FF8;
  v6[5] = 0;
  v55 = "kCBMsgIdDeviceGetDeviceClassMsg";
  v56 = 31;
  v57 = &v55;
  v7 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v7[4] = sub_1004AD2F4;
  v7[5] = 0;
  v55 = "kCBMsgIdDeviceGetDefaultNameMsg";
  v56 = 31;
  v57 = &v55;
  v8 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v8[4] = sub_1004AD3E0;
  v8[5] = 0;
  v55 = "kCBMsgIdDeviceGetNameMsg";
  v56 = 24;
  v57 = &v55;
  v9 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v9[4] = sub_1004AD544;
  v9[5] = 0;
  v55 = "kCBMsgIdDeviceGetProductNameMsg";
  v56 = 31;
  v57 = &v55;
  v10 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v10[4] = sub_1004AD6A8;
  v10[5] = 0;
  v55 = "kCBMsgIdDeviceSetUserNameMsg";
  v56 = 28;
  v57 = &v55;
  v11 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v11[4] = sub_1004AD80C;
  v11[5] = 0;
  v55 = "kCBMsgIdDeviceGetSyncSettingsMsg";
  v56 = 32;
  v57 = &v55;
  v12 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v12[4] = sub_1004AD8F8;
  v12[5] = 0;
  v55 = "kCBMsgIdDeviceSetSyncSettingsMsg";
  v56 = 32;
  v57 = &v55;
  v13 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v13[4] = sub_1004AD9E4;
  v13[5] = 0;
  v55 = "kCBMsgIdDeviceGetGroupsMsg";
  v56 = 26;
  v57 = &v55;
  v14 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v14[4] = sub_1004ADAD0;
  v14[5] = 0;
  v55 = "kCBMsgIdDeviceSetGroupMsg";
  v56 = 25;
  v57 = &v55;
  v15 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v15[4] = sub_1004ADC8C;
  v15[5] = 0;
  v55 = "kCBMsgIdDeviceGetPairingStatusMsg";
  v56 = 33;
  v57 = &v55;
  v16 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v16[4] = sub_1004ADD90;
  v16[5] = 0;
  v55 = "kCBMsgIdDeviceGetCloudPairingStatusMsg";
  v56 = 38;
  v57 = &v55;
  v17 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v17[4] = sub_1004ADE7C;
  v17[5] = 0;
  v55 = "kCBMsgIdDeviceGetMagicPairingStatusMsg";
  v56 = 38;
  v57 = &v55;
  v18 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v18[4] = sub_1004ADF68;
  v18[5] = 0;
  v55 = "kCBMsgIdDeviceGetConnectionStatusMsg";
  v56 = 36;
  v57 = &v55;
  v19 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v19[4] = sub_1004AE054;
  v19[5] = 0;
  v55 = "kCBMsgIdDeviceIsAppleAudioDeviceMsg";
  v56 = 35;
  v57 = &v55;
  v20 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v20[4] = sub_1004AE140;
  v20[5] = 0;
  v55 = "kCBMsgIdDeviceSupportsHSMsg";
  v56 = 27;
  v57 = &v55;
  v21 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v21[4] = sub_1004AE22C;
  v21[5] = 0;
  v55 = "kCBMsgIdDeviceIsProControllerMsg";
  v56 = 32;
  v57 = &v55;
  v22 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v22[4] = sub_1004AE318;
  v22[5] = 0;
  v55 = "kCBMsgIdDeviceServiceAddCallbacksMsg";
  v56 = 36;
  v57 = &v55;
  v23 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v23[4] = sub_1004AE404;
  v23[5] = 0;
  v55 = "kCBMsgIdDeviceServiceRemoveCallbacksMsg";
  v56 = 39;
  v57 = &v55;
  v24 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v24[4] = sub_1004AE638;
  v24[5] = 0;
  v55 = "kCBMsgIdDeviceConnectMsg";
  v56 = 24;
  v57 = &v55;
  v25 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v25[4] = sub_1004AE820;
  v25[5] = 0;
  v55 = "kCBMsgIdDeviceConnectServicesMsg";
  v56 = 32;
  v57 = &v55;
  v26 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v26[4] = sub_1004AE8EC;
  v26[5] = 0;
  v55 = "kCBMsgIdDeviceConnectServicesWithParametersMsg";
  v56 = 46;
  v57 = &v55;
  v27 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v27[4] = sub_1004AE9D8;
  v27[5] = 0;
  v55 = "kCBMsgIdDeviceDisconnectMsg";
  v56 = 27;
  v57 = &v55;
  v28 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v28[4] = sub_1004AEB3C;
  v28[5] = 0;
  v55 = "kCBMsgIdDeviceDisconnectServicesMsg";
  v56 = 35;
  v57 = &v55;
  v29 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v29[4] = sub_1004AEC08;
  v29[5] = 0;
  v55 = "kCBMsgIdDeviceGetConnectedServicesMsg";
  v56 = 37;
  v57 = &v55;
  v30 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v30[4] = sub_1004AECF4;
  v30[5] = 0;
  v55 = "kCBMsgIdDeviceGetSupportedServicesMsg";
  v56 = 37;
  v57 = &v55;
  v31 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v31[4] = sub_1004AEDE0;
  v31[5] = 0;
  v55 = "kCBMsgIdDeviceSetServiceSettingsMsg";
  v56 = 35;
  v57 = &v55;
  v32 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v32[4] = sub_1004AEECC;
  v32[5] = 0;
  v55 = "kCBMsgIdDeviceGetServiceSettingsMsg";
  v56 = 35;
  v57 = &v55;
  v33 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v33[4] = sub_1004AEFF0;
  v33[5] = 0;
  v55 = "kCBMsgIdDeviceSetVirtualTypeMsg";
  v56 = 31;
  v57 = &v55;
  v34 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v34[4] = sub_1004AF16C;
  v34[5] = 0;
  v55 = "kCBMsgIdDeviceGetVirtualTypeMsg";
  v56 = 31;
  v57 = &v55;
  v35 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v35[4] = sub_1004AF258;
  v35[5] = 0;
  v55 = "kCBMsgIdDeviceGetComPortForServiceMsg";
  v56 = 37;
  v57 = &v55;
  v36 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v36[4] = sub_1004AF344;
  v36[5] = 0;
  v55 = "kCBMsgIdDeviceGetComPortForServiceWithSandboxExtensionMsg";
  v56 = 57;
  v57 = &v55;
  v37 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v37[4] = sub_1004AF4E0;
  v37[5] = 0;
  v55 = "kCBMsgIdDeviceMatchesAdvertisedKeyMsg";
  v56 = 37;
  v57 = &v55;
  v38 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v38[4] = sub_1004AF72C;
  v38[5] = 0;
  v55 = "kCBMsgIdDeviceGetAdvertisedValueForKeyMsg";
  v56 = 41;
  v57 = &v55;
  v39 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v39[4] = sub_1004AF848;
  v39[5] = 0;
  v55 = "kCBMsgIdDeviceGetDeviceIdMsg";
  v56 = 28;
  v57 = &v55;
  v40 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v40[4] = sub_1004AFA00;
  v40[5] = 0;
  v55 = "kCBMsgIdDeviceSetHIDPropertiesMsg";
  v56 = 33;
  v57 = &v55;
  v41 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v41[4] = sub_1004AFB34;
  v41[5] = 0;
  v55 = "kCBMsgIdDevicePhysicalLinkDisconnectMsg";
  v56 = 39;
  v57 = &v55;
  v42 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v42[4] = sub_1004AFC38;
  v42[5] = 0;
  v55 = "kCBMsgIdDeviceConfigureLinkKeyMsg";
  v56 = 33;
  v57 = &v55;
  v43 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v43[4] = sub_1004AFD00;
  v43[5] = 0;
  v55 = "kCBMsgIdDeviceIsTemporaryPairedMsg";
  v56 = 34;
  v57 = &v55;
  v44 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v44[4] = sub_1004AFE8C;
  v44[5] = 0;
  v55 = "kCBMsgIdDeviceIsWirelessSplitterSupportedMsg";
  v56 = 44;
  v57 = &v55;
  v45 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v45[4] = sub_1004AFF78;
  v45[5] = 0;
  v55 = "kCBMsgIdDeviceIsTemporaryPairedNotInContactsMsg";
  v56 = 47;
  v57 = &v55;
  v46 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v46[4] = sub_1004B0064;
  v46[5] = 0;
  v55 = "kCBMsgIdDeviceGetLowSecurityStatusMsg";
  v56 = 37;
  v57 = &v55;
  v47 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v47[4] = sub_1004B0150;
  v47[5] = 0;
  v55 = "kCBMsgIdDeviceGetHIDDeviceBehaviorMsg";
  v56 = 37;
  v57 = &v55;
  v48 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v48[4] = sub_1004B023C;
  v48[5] = 0;
  v55 = "kCBMsgIdDeviceSetHijackAudioRouteMsg";
  v56 = 36;
  v57 = &v55;
  v49 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v49[4] = sub_1004B032C;
  v49[5] = 0;
  v55 = "kCBMsgIdDeviceSetACLHighPriorityMsg";
  v56 = 35;
  v57 = &v55;
  v50 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v50[4] = sub_1004B0418;
  v50[5] = 0;
  v55 = "kCBMsgIdDeviceIsCentralMsg";
  v56 = 26;
  v57 = &v55;
  v51 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v51[4] = sub_1004B051C;
  v51[5] = 0;
  v55 = "kCBMsgIdDeviceGetUserSelectedDeviceTypeMsg";
  v56 = 42;
  v57 = &v55;
  v52 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v52[4] = sub_1004B0608;
  v52[5] = 0;
  v55 = "kCBMsgIdDeviceSetUserSelectedDeviceTypeMsg";
  v56 = 42;
  v57 = &v55;
  v53 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v53[4] = sub_1004B06F4;
  v53[5] = 0;
  v55 = "kCBMsgIdDeviceIsGenuineAirPodsMsg";
  v56 = 33;
  v57 = &v55;
  v54 = sub_10009C6F0(&xmmword_100BCE580, &v55);
  v54[4] = sub_1004B07E0;
  v54[5] = 0;
}

void sub_1004AD100(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgAddressBytes", &length);
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAddressStringBuffSize");
  if (length != 6 || uint64 == 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_10083264C();
    }

    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v10 = reply;
      xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", 3uLL);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
      xpc_release(v10);
    }
  }

  else
  {
    if (uint64 >= 0x200)
    {
      v11 = 512;
    }

    else
    {
      v11 = uint64;
    }

    __chkstk_darwin(uint64, v7);
    v13 = &length - v12;
    bzero(&length - v12, v11);
    *v13 = 0;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10083260C();
    }

    v14 = sub_100528FD0(data, v13, v11);
    v15 = xpc_dictionary_create_reply(xdict);
    if (v15)
    {
      v16 = v15;
      xpc_dictionary_set_uint64(v15, "kCBMsgArgResult", v14);
      xpc_dictionary_set_string(v16, "kCBMsgArgAddressString", v13);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v16);
      xpc_release(v16);
    }
  }
}

void sub_1004AD2F4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008328BC();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1005290A8(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgDeviceClass", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004AD3E0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  memset(v11, 0, sizeof(v11));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832924();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (!uint64)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 >= 0x100)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_100529174(uint64, v11, v7);
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_string(v10, "kCBMsgArgName", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004AD544(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  memset(v11, 0, sizeof(v11));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10083298C();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (!uint64)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 >= 0x100)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_100529378(uint64, v11, v7);
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_string(v10, "kCBMsgArgName", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004AD6A8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  memset(v11, 0, sizeof(v11));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008329F4();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  if (!uint64)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 >= 0x100)
  {
    v7 = 256;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_1005295D4(uint64, v11, v7);
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_dictionary_set_string(v10, "kCBMsgArgName", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_1004AD80C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  string = xpc_dictionary_get_string(value, "kCBMsgArgName");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832A5C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100529830(uint64, string);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004AD8F8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTDevice");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832AC4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1005299A8(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgSyncSettings", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}