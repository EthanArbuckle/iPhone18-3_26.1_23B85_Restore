void sub_10058CB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10058CC10(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) <= 30.0)
  {
    v4 = *(result + 896);
    *(result + 896) = v4 + 1;
    v5 = *(result + 900) + *(a2 + 20);
    *(result + 900) = v5;
    if (v4 >= 70 && v5 >= 181)
    {
      *&v6[1] = v2;
      v7 = v3;
      return sub_1000CE87C(result + 8, 1, v6);
    }
  }

  else
  {
    *(result + 896) = 0;
  }

  return result;
}

uint64_t sub_10058CC88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 5 || (v3 = *(a2 + 40), v3 == -999.0))
  {
    v5 = 0;
  }

  else
  {
    v4 = *(a2 + 48);
    v5 = v4 == -999.0;
    v6 = v4 - v3;
    if (v6 < -10.0)
    {
      v5 = 1;
    }

    if (v4 == -999.0)
    {
      v5 = 0;
    }

    if (v6 == -999.0)
    {
      v5 = 0;
    }
  }

  return *(a2 + 88) > 0 && v2 > 0 || v5;
}

uint64_t sub_10058CCF0(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 904);
  v4 = *(a1 + 916);
  if (*(a1 + 46))
  {
    v5 = *sub_100457AE8((a1 + 44), *(a1 + 46) - 1);
  }

  else
  {
    v5 = 0.0;
  }

  v6 = vabds_f32(v4, v5);
  if (*(a1 + 920) >= v6)
  {
    v6 = *(a1 + 920);
  }

  *(a1 + 920) = v6;
  v7 = *(a2 + 8) > 30.0 && *a2 > 5.0;
  if (*(a2 + 32) <= -1.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a2 + 56);
  }

  if (*(a2 + 20))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a2 + 80) ^ 1;
  }

  if ((v7 | v8) & 1) != 0 || *(a2 + 24) < 1.5 || (v9)
  {
    ++*(a1 + 896);
  }

  if (v6 <= 0.0)
  {
    v10 = 40.0;
  }

  else
  {
    v10 = fmaxf(180.0 / v6, 1.0) * 40.0;
  }

  result = sub_10058CE78(a1, a2);
  if (result)
  {
    v12 = a1 + 8;
    v13 = &v16;
    v14 = 2;
  }

  else
  {
    if ((fminf(v10, 70.0) / 2.56) >= *(a1 + 896))
    {
      return result;
    }

    v12 = a1 + 8;
    v13 = &v15;
    v14 = 3;
  }

  return sub_1000CE87C(v12, v14, v13);
}

uint64_t sub_10058CE78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = -999.0;
  if (v2 == -999.0 || (v4 = *(a2 + 48), v3 = -999.0, v4 == -999.0))
  {
    v5 = 0;
  }

  else
  {
    v3 = v4 - v2;
    v5 = v4 - v2 != -999.0;
  }

  if (*a2 >= 10.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 20) + *(a1 + 900);
  }

  *(a1 + 900) = v6;
  v8 = v3 > -40.0 && *(a1 + 904) > 70 && v5;
  v9 = v8 && *(a1 + 920) < 180.0 && *(a1 + 24) != 3;
  v10 = v3 < 0.0;
  v11 = v3 * v3 * 0.05 + 60.0;
  if (v11 <= 60.0)
  {
    v10 = 0;
  }

  if (!v5 || !v10)
  {
    v11 = 60.0;
  }

  return (v11 < v6) | v9;
}

uint64_t sub_10058CF70(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 904);
  result = sub_10058CE78(a1, a2);
  if (result)
  {
    v5 = a1 + 8;
    v6 = &v10;
    v7 = 2;
    return sub_1000CE87C(v5, v7, v6);
  }

  v8 = *(a2 + 20) >= 1 && *a2 > 10.0;
  if (*(a1 + 904) >= 59 && (*(a2 + 84) > 0 || v8))
  {
    v5 = a1 + 8;
    v6 = &v9;
    v7 = 5;
    return sub_1000CE87C(v5, v7, v6);
  }

  return result;
}

void *sub_10058D014(void *a1)
{
  *a1 = off_1024609D8;
  a1[56] = off_10247E150;
  v2 = a1[61];
  if (v2)
  {
    a1[62] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10058D084(void *a1)
{
  *a1 = off_1024609D8;
  a1[56] = off_10247E150;
  v2 = a1[61];
  if (v2)
  {
    a1[62] = v2;
    operator delete(v2);
  }

  operator delete();
}

BOOL sub_10058D5A0(uint64_t a1)
{
  v2 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v3 = *(a1 + 312);
  (*(*(a1 + 832) + 24))(v2);
  return v3 != 0;
}

void sub_10058D708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  sub_1000B96B4((v14 - 40));
  a10 = &a13;
  sub_1000B96B4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10058D738(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1 + 832;
  v15[3] = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v16 = 256;
  if (*(a1 + 246) == 1)
  {
    sub_100597514(a1, 0);
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = 0x2E8BA2E8BA2E8BA3 * ((v8 - *a2) >> 3);
  memset(v15, 0, 24);
  sub_1005A43FC(v15, v7, v8, v9);
  v10 = *a3;
  v11 = a3[1];
  v12 = 0x2E8BA2E8BA2E8BA3 * ((v11 - *a3) >> 3);
  memset(v14, 0, sizeof(v14));
  sub_1005A43FC(v14, v10, v11, v12);
  sub_1005980EC(a1, v15, v14);
  *(a1 + 248) = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3) + 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
  if (*(a1 + 244) == 1)
  {
    sub_100597514(a1, 1);
  }

  v17 = v14;
  sub_1000B96B4(&v17);
  v14[0] = v15;
  sub_1000B96B4(v14);
  return (*(*v6 + 24))(v6);
}

void sub_10058D8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10058D9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058D9D0(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v5 = *(a1 + 544);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 544) = 0;
  }

  if (sub_1005A1FBC(a1, a2, (a1 + 544), 0))
  {
    sub_10059EA50(a1);
  }

  return (*(*v4 + 24))(v4);
}

void sub_10058DA9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058DAB0(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v5 = *(a1 + 536);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 536) = 0;
  }

  if (sub_1005A1FBC(a1, a2, (a1 + 536), 1))
  {
    sub_10059EA50(a1);
  }

  return (*(*v4 + 24))(v4);
}

void sub_10058DB7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10058DBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

void sub_10058DC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058DD28(uint64_t a1, _OWORD *a2, int a3)
{
  v6 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v7 = *(a1 + 764);
  v8 = *(a1 + 780);
  v9 = *(a1 + 812);
  a2[2] = *(a1 + 796);
  a2[3] = v9;
  *a2 = v7;
  a2[1] = v8;
  if (a3)
  {
    *(a1 + 796) = 0u;
    *(a1 + 812) = 0u;
    *(a1 + 764) = 0u;
    *(a1 + 780) = 0u;
  }

  return (*(*v6 + 24))(v6);
}

void sub_10058DEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 - 40) = v14;
  sub_1000B96B4((v15 - 40));
  *(v15 - 40) = &a14;
  sub_1000B96B4((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_10058DFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 - 40) = v14;
  sub_1000B96B4((v15 - 40));
  *(v15 - 40) = &a14;
  sub_1000B96B4((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_10058E08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058E128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10058E150@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 104;
  v16 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v17 = 256;
  v9 = qword_102637AD0;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&__p, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    __p = *byte_102637AD8;
    v11 = *&byte_102637AD8[16];
  }

  v12 = xmmword_102637AF0;
  v13 = xmmword_102637B00;
  v14 = xmmword_102637B10;
  v15 = qword_102637B20;
  if (sub_1005A0E68(a1, &v9))
  {
    sub_100C5D538(&v9, &v6);
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 40) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 40) = 0;
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  return (*(*v4 + 24))(v4);
}

uint64_t sub_10058E2FC(uint64_t a1, int a2)
{
  v4 = a1 + 832;
  v7[3] = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v8 = 256;
  memset(v7, 0, 24);
  memset(v6, 0, sizeof(v6));
  sub_1005980EC(a1, v7, v6);
  if (a2)
  {
    *(a1 + 248) = 0;
  }

  v9 = v6;
  sub_1000B96B4(&v9);
  v6[0] = v7;
  sub_1000B96B4(v6);
  return (*(*v4 + 24))(v4);
}

void sub_10058E3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v16 - 56) = v15;
  sub_1000B96B4((v16 - 56));
  sub_1000B96B4(&a9);
  sub_1017EC98C(&a15);
  _Unwind_Resume(a1);
}

void sub_10058E500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13 == 1)
  {
    sub_1018CD5F8(&a10);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058E618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13 == 1)
  {
    sub_1018CD5F8(&a10);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058E71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10058E7FC(void *a1, int a2)
{
  v4 = a1 + 104;
  v13 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v14 = 256;
  if (a1[37] && a1[93])
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v18 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "IMD: quiesceWifi, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v15 = 67109120;
      v16 = a2;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::quiesceWifi(BOOL)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v6 = a1[93];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005A2FE0;
    block[3] = &unk_102460CC8;
    block[4] = a1;
    v12 = a2;
    dispatch_async(v6, block);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning IMD: ignore quiesceWifi configuration, shutdown", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      LOWORD(v15) = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::quiesceWifi(BOOL)", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_10058EB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058EBB4(uint64_t a1, const void **a2, int a3, int a4)
{
  valuePtr = 27;
  v6 = a1 + 832;
  v45 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v46 = 256;
  cf = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v7 = WiFiDeviceClientCopyProperty();
  Count = CFArrayGetCount(v7);
  if (Count >= 1)
  {
    v9 = 0;
    v41 = a4;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
      if (CFDictionaryGetTypeID() == ValueAtIndex)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v11 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "WifiMgr, WiFiDeviceClientCopyProperty, invalid object in APPLE80211_IOC_SUPPORTED_CHANNELS", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018CD5B4(buf);
          LOWORD(v48) = 0;
          v36 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::getSupportedChannels(std::vector<int> &, BOOL, BOOL)", "%s\n", v36);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        CFShow(ValueAtIndex);
      }

      else
      {
        sub_100005548(v44, ValueAtIndex);
        v43 = -1;
        if (sub_1000052CC(v44, @"SUP_CHANNEL", &v43))
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018CD638();
          }

          v12 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v55 = v9;
            v56 = 2048;
            v57 = Count;
            v58 = 1024;
            v59 = v43;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WIFI: index, %ld, %ld, channel, %d", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018CD660(buf);
            v48 = 134218496;
            v49 = v9;
            v50 = 2048;
            v51 = Count;
            v52 = 1024;
            v53 = v43;
            v37 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::getSupportedChannels(std::vector<int> &, BOOL, BOOL)", "%s\n", v37);
            if (v37 != buf)
            {
              free(v37);
            }
          }

          v13 = v43;
          if (a3 && v43 <= 14)
          {
            v15 = a2[1];
            v14 = a2[2];
            if (v15 >= v14)
            {
              v18 = *a2;
              v19 = v15 - *a2;
              v20 = v19 >> 2;
              v21 = (v19 >> 2) + 1;
              if (v21 >> 62)
              {
                goto LABEL_66;
              }

              v22 = v14 - v18;
              if (v22 >> 1 > v21)
              {
                v21 = v22 >> 1;
              }

              v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
              v24 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v23)
              {
                v24 = v21;
              }

              if (v24)
              {
                sub_1000B85D0(a2, v24);
              }

              *(4 * v20) = v43;
              v16 = 4 * v20 + 4;
              memcpy(0, v18, v19);
              v25 = *a2;
              *a2 = 0;
              a2[1] = v16;
              a2[2] = 0;
              if (v25)
              {
                operator delete(v25);
              }

              a4 = v41;
            }

            else
            {
              *v15 = v43;
              v16 = (v15 + 1);
            }

            a2[1] = v16;
            v13 = v43;
          }

          if (a4 && v13 >= 15)
          {
            v27 = a2[1];
            v26 = a2[2];
            if (v27 >= v26)
            {
              v29 = *a2;
              v30 = v27 - *a2;
              v31 = v30 >> 2;
              v32 = (v30 >> 2) + 1;
              if (v32 >> 62)
              {
LABEL_66:
                sub_10028C64C();
              }

              v33 = v26 - v29;
              if (v33 >> 1 > v32)
              {
                v32 = v33 >> 1;
              }

              v23 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
              v34 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v23)
              {
                v34 = v32;
              }

              if (v34)
              {
                sub_1000B85D0(a2, v34);
              }

              *(4 * v31) = v13;
              v28 = 4 * v31 + 4;
              memcpy(0, v29, v30);
              v35 = *a2;
              *a2 = 0;
              a2[1] = v28;
              a2[2] = 0;
              if (v35)
              {
                operator delete(v35);
              }

              a4 = v41;
            }

            else
            {
              *v27 = v13;
              v28 = (v27 + 1);
            }

            a2[1] = v28;
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v17 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "WifiManager, WiFiDeviceClientCopyProperty, invalid APPLE80211KEY_SUP_CHANNEL", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018CD5B4(buf);
            LOWORD(v48) = 0;
            v38 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::getSupportedChannels(std::vector<int> &, BOOL, BOOL)", "%s\n", v38);
            if (v38 != buf)
            {
              free(v38);
            }
          }

          CFShow(ValueAtIndex);
        }

        sub_100005DA4(v44);
      }

      ++v9;
    }

    while (Count != v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return (*(*v6 + 24))(v6);
}

void sub_10058F238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_100005DA4(va);
  sub_1017EC98C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10058F2CC(uint64_t a1, int a2)
{
  v4 = a1 + 832;
  v13 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v14 = 256;
  v12 = 0;
  WiFiManagerClientSetPower();
  if (sub_100599BF8(a1, &v12))
  {
    v5 = v12;
    if (v12 == a2)
    {
      v6 = 1;
      goto LABEL_10;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      v20 = a2;
      v21 = 1026;
      v22 = v5;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "WifiMgr, WiFiManagerClientSetPower, fail, request, %{public}d, query, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      v15 = 67240448;
      v16 = a2;
      v17 = 1026;
      v18 = v5;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::setPower(BOOL)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v6 = 0;
LABEL_10:
  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    v20 = a2;
    v21 = 1026;
    v22 = v6;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "WifiMgr, WiFiManagerClientSetPower, request, %{public}d, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v15 = 67240448;
    v16 = a2;
    v17 = 1026;
    v18 = v6;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::setPower(BOOL)", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  (*(*v4 + 24))(v4);
  return 1;
}

void sub_10058F620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058F690(uint64_t a1, int a2)
{
  v8[0] = a2;
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v10 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "setBackgroundExitScanCount, %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    v8[1] = 67109120;
    v8[2] = a2;
    v7 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::setBackgroundExitScanCount(int)", "%s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (*(a1 + 312))
  {
    sub_10004FD18(buf);
    sub_1000F2D48(buf, @"IO80211InterfaceBGScanLostNetTO", v8);
    sub_10007005C(buf);
    WiFiDeviceClientSetProperty();
    sub_100005DA4(buf);
  }

  return (*(*v4 + 24))(v4);
}

void sub_10058F8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_10058F934(uint64_t a1, int a2)
{
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v5 = *(a1 + 304);
  if (v5)
  {
    if (a2)
    {
      WiFiManagerClientEnable();
    }

    else
    {
      WiFiManagerClientDisable();
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning no wifi interface available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::setAutoJoin(BOOL)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  (*(*v4 + 24))(v4);
  return v5 != 0;
}

void sub_10058FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058FB4C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_100F678AC(a1, "CLWifiService", a2);
  *v5 = off_102460AA0;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 217) = 0u;
  *(v5 + 233) = 255;
  *(v5 + 236) = 0xE1000000000;
  *(v5 + 122) = 0;
  *(v5 + 246) = 0;
  v5[31] = 0;
  sub_10000EC00(&buf, "60:c5:47:4f:51:1d");
  *(a1 + 256) = sub_100196E8C(&buf);
  sub_10000EC00(&context, "60:c5:47:4d:cd:6f");
  *(a1 + 264) = sub_100196E8C(&context);
  sub_10000EC00(__p, "60:c5:47:4f:51:1c");
  *(a1 + 272) = sub_100196E8C(__p);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(context.retain) < 0)
  {
    operator delete(context.version);
  }

  if (v46 < 0)
  {
    operator delete(buf);
  }

  *(a1 + 280) = 0;
  *(a1 + 288) = 0xBFF0000000000000;
  v6 = (a1 + 296);
  *(a1 + 336) = 0;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 400) = xmmword_101C7F570;
  *(a1 + 416) = xmmword_101C75BF0;
  *(a1 + 432) = -1;
  *(a1 + 560) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
  *(a1 + 552) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 664) = 1;
  *(a1 + 712) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = a1 + 712;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = -kCFAbsoluteTimeIntervalSince1970;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0;
  sub_100536F74(a1 + 832, "CLWifiService internal state", 1, 1);
  v7 = *a3;
  *a3 = 0;
  *(a1 + 848) = v7;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiService, init", &buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(&buf);
    LOWORD(context.version) = 0;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v30);
    if (v30 != &buf)
    {
      free(v30);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001A3E8();
    v10 = sub_10071A480();
    v11 = "No";
    if (v10)
    {
      v11 = "Yes";
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v11;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@Wsb, init, WSB support, %{public}s", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(&buf);
    sub_10001A3E8();
    v31 = sub_10071A480();
    v32 = "No";
    if (v31)
    {
      v32 = "Yes";
    }

    LODWORD(context.version) = 136446210;
    *(&context.version + 4) = v32;
    v33 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v33);
    if (v33 != &buf)
    {
      free(v33);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v41 = 0;
  sub_10001CAF4(&buf);
  v12 = sub_100175094(buf, "WifiExcludedAp", __p);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v12)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v14 = __p;
      if (v41 < 0)
      {
        v14 = __p[0];
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiService, gExcludedAP, %{public}s", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(&buf);
      v35 = __p;
      if (v41 < 0)
      {
        v35 = __p[0];
      }

      LODWORD(context.version) = 136446210;
      *(&context.version + 4) = v35;
      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v36);
      if (v36 != &buf)
      {
        free(v36);
      }
    }

    v15 = sub_100196E8C(__p);
    if ((byte_102656F88 & 1) == 0)
    {
      byte_102656F88 = 1;
    }

    qword_102656F80 = v15;
  }

  v16 = dispatch_queue_create("CLWifiService scanning", 0);
  *(a1 + 744) = v16;
  if (!v16)
  {
    sub_1018CD724();
    abort_report_np();
    __break(1u);
LABEL_76:
    sub_1018CD6B8();
    goto LABEL_56;
  }

  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 56);
  context.perform = sub_1002DC604;
  v17 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &context);
  *v6 = v17;
  if (!v17)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "WifiService, ctor, fDpcSource is NULL", &buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(&buf);
      LOWORD(v42) = 0;
      v38 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v38);
      if (v38 != &buf)
      {
        free(v38);
      }
    }
  }

  v19 = sub_100107858();
  CFRunLoopAddSource(v19, *v6, kCFRunLoopCommonModes);
  sub_10001CAF4(&buf);
  v20 = sub_1000B9370(buf, "WifiMaxAge", (a1 + 400));
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if ((v20 & 1) == 0)
  {
    *(a1 + 400) = 0x4014000000000000;
  }

  sub_10001CAF4(&buf);
  v21 = sub_10001CB4C(buf, "WifiPassiveScansOnly", (a1 + 232));
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v21)
  {
    if (*(a1 + 232))
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v22 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "WifiService, passive scans only", &buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD5B4(&buf);
        LOWORD(v42) = 0;
        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v23);
        if (v23 != &buf)
        {
          free(v23);
        }
      }
    }
  }

  else
  {
    *(a1 + 232) = 0;
  }

  sub_1005909E0(a1);
  sub_1005915A8(a1);
  v24 = [*(a1 + 40) newTimer];
  *(a1 + 656) = v24;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100592130;
  v39[3] = &unk_102449A78;
  v39[4] = a1;
  [v24 setHandler:v39];
  [*(a1 + 656) setNextFireDelay:90.0];
  if (qword_1025D4630 != -1)
  {
    goto LABEL_76;
  }

LABEL_56:
  v25 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = 0x4056800000000000;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "WsbClients, timer, %{public}0.f", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(&buf);
    v42 = 134349056;
    v43 = 0x4056800000000000;
    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v34);
    if (v34 != &buf)
    {
      free(v34);
    }
  }

  v26 = [[CLMetricEventBins alloc] initWithInternalName:@"scanW" binPeriod:5 aggregationPeriod:3600 atCurrentTime:1 andSubmit:CFAbsoluteTimeGetCurrent()];
  *(a1 + 672) = v26;
  sub_10001A3E8();
  [(CLMetricEventBins *)v26 setDimensionInt:sub_100316E74()];
  v27 = [[CLMetricEventBins alloc] initWithInternalName:@"scanA" binPeriod:5 aggregationPeriod:3600 atCurrentTime:1 andSubmit:CFAbsoluteTimeGetCurrent()];
  *(a1 + 680) = v27;
  sub_10001A3E8();
  [(CLMetricEventBins *)v27 setDimensionInt:sub_100316E74()];
  if (sub_100F96FF8())
  {
    sub_1005925C0(a1);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v28 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "AONSense, not registering for aonsensed scans as it is not enabled", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(&buf);
      LOWORD(v42) = 0;
      v37 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiService::CLWifiService(id<CLIntersiloUniverse>, std::unique_ptr<IExternal>)", "%s\n", v37);
      if (v37 != &buf)
      {
        free(v37);
      }
    }
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1005907A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v47 = *(v44 + 848);
  *(v44 + 848) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  sub_10053700C(v44 + 832);
  sub_1003C93BC(v44 + 704, *(v44 + 712));
  if (*(v44 + 648) == 1 && *(v44 + 591) < 0)
  {
    operator delete(*(v44 + 568));
  }

  a39 = (v44 + 512);
  sub_1000B96B4(&a39);
  a39 = (v44 + 480);
  sub_1000B96B4(&a39);
  a39 = (v44 + 448);
  sub_1000B96B4(&a39);
  sub_1005A45E0(v45);
  sub_100F67A20(v44);
  _Unwind_Resume(a1);
}

void sub_1005909C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1018CD8B8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005909E0(uint64_t a1)
{
  v2 = sub_1005A10F4();
  v3 = sub_1005A1170();
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  valuePtr = 0;
  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = v2;
    *&buf[8] = 2048;
    *&buf[10] = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "wifi scan iterations %d dwell time is %lldms", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD8F0(v2, v3);
  }

  valuePtr = 2;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  *(a1 + 112) = v5;
  if (!v5)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "failed to initialize fScanTypePassive", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD9FC();
    }
  }

  valuePtr = 1;
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  *(a1 + 120) = v7;
  if (!v7)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "failed to initialize fScanTypeActive", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDAE0();
    }
  }

  v76[0] = xmmword_101C7F580;
  v76[1] = unk_101C7F590;
  *buf = v76;
  *v48 = &v77;
  v9 = sub_1005A11F0(a1, v2, 1, 30, buf, v48, 50, 2, 1);
  *(a1 + 152) = v9;
  if (!v9)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest5GhzSet1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDBC4();
    }
  }

  *v74 = xmmword_101C7F5A0;
  *&v74[12] = *(&xmmword_101C7F5A0 + 12);
  *buf = v74;
  *v48 = &v75;
  v11 = sub_1005A11F0(a1, v2, 1, 30, buf, v48, 50, 2, 1);
  *(a1 + 160) = v11;
  if (!v11)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest5GhzSet2", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDCA8();
    }
  }

  v72 = 165;
  v71[0] = xmmword_101C7F5BC;
  v71[1] = unk_101C7F5CC;
  *buf = v71;
  *v48 = &v73;
  v13 = sub_1005A11F0(a1, v2, 1, 30, buf, v48, 50, 2, 1);
  *(a1 + 168) = v13;
  if (!v13)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest5GhzSet3", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDD8C();
    }
  }

  v69 = 11;
  v68 = 0x600000001;
  *buf = &v68;
  *v48 = &v70;
  v15 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, v3, 0, 0);
  *(a1 + 136) = v15;
  if (!v15)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest2GhzSet1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDE70();
    }
  }

  v66 = 0xD0000000CLL;
  v65[0] = xmmword_101C7F5E0;
  v65[1] = unk_101C7F5F0;
  *buf = v65;
  *v48 = &v67;
  v17 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, v3, 0, 0);
  *(a1 + 144) = v17;
  if (!v17)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsHarvest2GhzSet2", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CDF54();
    }
  }

  v63 = 11;
  v62 = 0x600000001;
  *buf = &v62;
  *v48 = &v64;
  v19 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, 50, 0, 0);
  *(a1 + 128) = v19;
  if (!v19)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsFast", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE038();
    }
  }

  v60 = 11;
  v59 = 0x600000001;
  *buf = &v59;
  *v48 = &v61;
  v21 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, v3, 0, 0);
  *(a1 + 176) = v21;
  if (!v21)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsStage1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE11C();
    }
  }

  v57 = 0xD0000000CLL;
  v56[0] = xmmword_101C7F5E0;
  v56[1] = unk_101C7F5F0;
  *buf = v56;
  *v48 = &v58;
  v23 = sub_1005A11F0(a1, v2, 1, 14, buf, v48, v3, 0, 0);
  *(a1 + 184) = v23;
  if (!v23)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v24 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsStage2", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE200();
    }
  }

  v54 = 0xA10000009DLL;
  v53[0] = xmmword_101C7F608;
  v53[1] = unk_101C7F618;
  *buf = v53;
  *v48 = &v55;
  v25 = sub_1005A11F0(a1, v2, 1, 30, buf, v48, v3, 0, 0);
  *(a1 + 192) = v25;
  if (!v25)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v26 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptions5GhzStage1", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE2E4();
    }
  }

  v81 = 13;
  *buf = xmmword_101C7F630;
  *&buf[16] = unk_101C7F640;
  v80 = xmmword_101C7F650;
  *v48 = buf;
  *v42 = &v82;
  v27 = sub_1005A11F0(a1, v2, 1, 14, v48, v42, v3, 0, 0);
  v29 = xmmword_101C7F650;
  v28 = unk_101C7F640;
  v30 = xmmword_101C7F630;
  *(a1 + 200) = v27;
  if (!v27)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v31 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *v48 = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsNormal", v48, 2u);
    }

    v32 = sub_10000A100(121, 0);
    v28 = unk_101C7F640;
    v30 = xmmword_101C7F630;
    v29 = xmmword_101C7F650;
    if (v32)
    {
      sub_1018CE3C8();
      v29 = xmmword_101C7F650;
      v28 = unk_101C7F640;
      v30 = xmmword_101C7F630;
    }
  }

  v51 = 13;
  *v48 = v30;
  v49 = v28;
  v50 = v29;
  *v42 = v48;
  *v47 = &v52;
  v33 = sub_1005A11F0(a1, 3, 1, 14, v42, v47, v3, 0, 0);
  v35 = xmmword_101C7F650;
  v34 = unk_101C7F640;
  v36 = xmmword_101C7F630;
  *(a1 + 208) = v33;
  if (!v33)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v37 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *v42 = 0;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsThorough", v42, 2u);
    }

    v38 = sub_10000A100(121, 0);
    v34 = unk_101C7F640;
    v36 = xmmword_101C7F630;
    v35 = xmmword_101C7F650;
    if (v38)
    {
      sub_1018CE4AC();
      v35 = xmmword_101C7F650;
      v34 = unk_101C7F640;
      v36 = xmmword_101C7F630;
    }
  }

  v45 = 13;
  *v42 = v36;
  v43 = v34;
  v44 = v35;
  *v47 = v42;
  v41 = &v46;
  v39 = sub_1005A11F0(a1, v2, 1, 14, v47, &v41, v3, *(a1 + 400), 0);
  *(a1 + 216) = v39;
  if (!v39)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v40 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *v47 = 0;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_ERROR, "failed to initialize fScanOptionsCached", v47, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CE590();
    }
  }

  *(a1 + 224) = 0;
}

uint64_t sub_1005915A8(uint64_t a1)
{
  v2 = a1 + 832;
  v36 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v37 = 256;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    *v50 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:WifiMgr, allocateWifiArtifacts}", buf, 0x12u);
  }

  *(a1 + 246) = 0;
  v4 = *(a1 + 320);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 320) = 0;
  }

  if (*(a1 + 312))
  {
    WiFiDeviceClientRegisterPowerCallback();
    WiFiDeviceClientRegisterResumeScanCallback();
    WiFiDeviceClientRegisterExtendedLinkCallback();
    WiFiDeviceClientRegisterBssidChangeCallback();
    WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
    WiFiDeviceClientRegisterScanUpdateCallback();
    WiFiDeviceClientRegisterLQMCallback();
    WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
    CFRelease(*(a1 + 312));
    *(a1 + 312) = 0;
  }

  if (*(a1 + 304))
  {
    goto LABEL_12;
  }

  v5 = WiFiManagerClientCreate();
  *(a1 + 304) = v5;
  if (v5)
  {
    sub_100107858();
    WiFiManagerClientScheduleWithRunLoop();
    WiFiManagerClientRegisterServerRestartCallback();
    WiFiManagerClientRegisterWowStateChangedCallback();
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    WiFiManagerClientRegisterBackgroundScanCallback();
LABEL_12:
    v6 = WiFiManagerClientCopyDevices();
    v7 = v6;
    if (v6)
    {
      if (*(a1 + 336) == 1)
      {
        *(a1 + 336) = 0;
      }

      if (CFArrayGetCount(v6))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        *(a1 + 312) = ValueAtIndex;
        if (ValueAtIndex && (v9 = CFGetTypeID(ValueAtIndex), v9 == WiFiDeviceClientGetTypeID()))
        {
          CFRetain(*(a1 + 312));
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v10 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            InterfaceName = WiFiDeviceClientGetInterfaceName();
            sub_1000238CC(InterfaceName, &__p);
            v12 = v30 >= 0 ? &__p : __p;
            *buf = 68289282;
            v48 = 0;
            v49 = 2082;
            *v50 = "";
            *&v50[8] = 2082;
            *&v50[10] = v12;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:WifiMgr, allocation , wifi interface:%{public, location:escape_only}s}", buf, 0x1Cu);
            if (SHIBYTE(v30) < 0)
            {
              operator delete(__p);
            }
          }

          WiFiDeviceClientRegisterPowerCallback();
          WiFiDeviceClientRegisterResumeScanCallback();
          WiFiDeviceClientRegisterExtendedLinkCallback();
          WiFiDeviceClientRegisterBssidChangeCallback();
          WiFiDeviceClientRegisterBgScanSuspendResumeCallback();
          WiFiDeviceClientRegisterScanUpdateCallback();
          WiFiDeviceClientRegisterLQMCallback();
          WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
          *(a1 + 320) = WiFiDeviceClientCopyCurrentNetwork();
          __p = qword_102637AD0;
          if (byte_102637AD8[23] < 0)
          {
            sub_100007244(&v30, *byte_102637AD8, *&byte_102637AD8[8]);
          }

          else
          {
            v30 = *byte_102637AD8;
            v31 = *&byte_102637AD8[16];
          }

          v32 = xmmword_102637AF0;
          v33 = xmmword_102637B00;
          v34 = xmmword_102637B10;
          v35 = qword_102637B20;
          sub_1005954EC(a1, &__p);
          *buf = -256;
          LOBYTE(v49) = 0;
          v53 = 0;
          memset(v54, 0, sizeof(v54));
          v55 = 0;
          sub_1002DEB0C(&v49, &__p);
          BYTE2(v55) = 0;
          v21 = v52;
          *v38 = 6;
          (*(*a1 + 152))(a1, v38, buf, 1, 0xFFFFFFFFLL, 0);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v22 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v53;
            v24 = v52;
            sub_1000ECD9C(&v28);
            v25 = v24 > 0 ? v23 : 0;
            v26 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
            *v38 = 68289795;
            *&v38[4] = 0;
            v39 = 2082;
            v40 = "";
            v41 = 1026;
            v42 = v25;
            v43 = 2081;
            v44 = v26;
            v45 = 2049;
            v46 = v21;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@ClxLink, associate , isAssociated:%{public}hhd, mac:%{private, location:escape_only}s, channel:%{private}ld}", v38, 0x2Cu);
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }
          }

          WiFiManagerClientGetWoWState();
          sub_100595C08(a1);
          sub_100595FAC(a1);
          *(a1 + 752) = -kCFAbsoluteTimeIntervalSince1970;
          *(a1 + 760) = 0;
          CFRelease(v7);
          sub_1005961D0(a1);
          *v38 = &v54[8];
          sub_1000B96B4(v38);
          if (v53 == 1 && v51 < 0)
          {
            operator delete(*&v50[6]);
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30);
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v15 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
          {
            *buf = 68289026;
            v48 = 0;
            v49 = 2082;
            *v50 = "";
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WifiMgr, wifi device failure}", buf, 0x12u);
            if (qword_1025D4620 != -1)
            {
              sub_1018CD58C();
            }
          }

          v16 = qword_1025D4628;
          if (os_signpost_enabled(qword_1025D4628))
          {
            *buf = 68289026;
            v48 = 0;
            v49 = 2082;
            *v50 = "";
            _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WifiMgr, wifi device failure", "{msg%{public}.0s:WifiMgr, wifi device failure}", buf, 0x12u);
          }

          sub_100592810(a1, "DeviceFail");
          *(a1 + 312) = 0;
          CFRelease(v7);
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v17 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          v48 = 0;
          v49 = 2082;
          *v50 = "";
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WifiMgr, wifi zero devices}", buf, 0x12u);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }
        }

        v18 = qword_1025D4628;
        if (os_signpost_enabled(qword_1025D4628))
        {
          *buf = 68289026;
          v48 = 0;
          v49 = 2082;
          *v50 = "";
          _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WifiMgr, wifi zero devices", "{msg%{public}.0s:WifiMgr, wifi zero devices}", buf, 0x12u);
        }

        sub_100592810(a1, "DevicesZero");
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v48 = 0;
        v49 = 2082;
        *v50 = "";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WifiMgr, wifi devices failure}", buf, 0x12u);
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }
      }

      v14 = qword_1025D4628;
      if (os_signpost_enabled(qword_1025D4628))
      {
        *buf = 68289026;
        v48 = 0;
        v49 = 2082;
        *v50 = "";
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WifiMgr, wifi devices failure", "{msg%{public}.0s:WifiMgr, wifi devices failure}", buf, 0x12u);
      }

      sub_100592810(a1, "DevicesNull");
      sub_100593E4C(a1);
      if ((*(a1 + 336) & 1) == 0)
      {
        *(a1 + 328) = sub_1000081AC();
        *(a1 + 336) = 1;
      }
    }

    return (*(*v2 + 24))(v2);
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v19 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    *v50 = "";
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WifiMgr, WiFiManagerClientCreate failed}", buf, 0x12u);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }
  }

  v20 = qword_1025D4628;
  if (os_signpost_enabled(qword_1025D4628))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    *v50 = "";
    _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WifiMgr, WiFiManagerClientCreate failed", "{msg%{public}.0s:WifiMgr, WiFiManagerClientCreate failed}", buf, 0x12u);
  }

  sub_100592810(a1, "ManagerNull");
  return (*(*v2 + 24))(v2);
}

uint64_t sub_100592138(uint64_t a1)
{
  v2 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 664);
    *buf = 67240192;
    LODWORD(v13) = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "WsbTimer, first, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWsbAnalyticsTimer()", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  [*(a1 + 656) setNextFireDelay:14400.0];
  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v13 = 0x40CC200000000000;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WsbClients, timer, %{public}0.f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWsbAnalyticsTimer()", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (*(a1 + 664))
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "WsbClients, status, start", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWsbAnalyticsTimer()", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    *(a1 + 688) = Current;
    *(a1 + 696) = Current;
  }

  else
  {
    sub_10059F6DC(a1, 0, 0, 1);
  }

  *(a1 + 664) = 0;
  sub_10004E764(a1, "timer");
  return (*(*v2 + 24))(v2);
}

void sub_100592588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1005925C0(uint64_t a1)
{
  if ([+[_TtC10CLAONSense21CLAONSenseWiFiService isAvailable] shared]
  {
    v2 = +[_TtC10CLAONSense21CLAONSenseWiFiService shared];
    v11 = 0;
    v3 = [*(a1 + 40) queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003147B4;
    v10[3] = &unk_102460CA8;
    v10[4] = a1;
    v4 = [(CLAONSenseWiFiService *)v2 registerForWifiScanResultsWithQueue:v3 error:&v11 callback:v10];
    if (v4)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "AONSense, successfully registered for aonsensed scans", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CE870();
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v7 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v8 = [objc_msgSend(v11 "localizedDescription")];
        *buf = 136446210;
        v13 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Error registering for AON scan results: %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CE758(&v11);
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "AONSense is unavailable, unable to register for scans", buf, 2u);
    }

    v4 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018CE674();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_100592810(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 832;
  block[5] = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v9 = 256;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiService, re-schedule allocate, %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v10 = 136446210;
    v11 = a2;
    v7 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::scheduleWifiArtifactsAllocation(const char *)", "%s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100592A84;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_102656F60 != -1)
  {
    dispatch_once(&qword_102656F60, block);
  }

  return (*(*v4 + 24))(v4);
}

void sub_100592A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_100592A84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100592AFC;
  v4[3] = &unk_102449A78;
  v4[4] = v1;
  return [v2 afterInterval:v4 async:5.0];
}

void sub_100592AFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 312))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "WifiService, device, previously retrieved", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CE954();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WifiService, device, timer retrieve", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CEA38();
    }

    sub_1005915A8(v1);
    sub_100592C18(v1);
  }
}

void sub_100592C18(uint64_t a1)
{
  v2[2] = a1 + 832;
  (*(*(a1 + 832) + 16))();
  v3 = 256;
  v2[0] = 0;
  v2[1] = 0;
  v1 = v2;
  operator new();
}

void sub_100593DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100140738(a11);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100593E4C(uint64_t a1)
{
  if (*(a1 + 336) == 1)
  {
    v2 = sub_1000081AC();
    if ((*(a1 + 336) & 1) == 0)
    {
      sub_100173BA0();
    }

    v3 = v2 - *(a1 + 328);
    if (v3 >= 10.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v4 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        v5 = 134349056;
        v6 = v3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "WifiMgr, wifi devices failure, WiFiManagerClientCopyDevices return NULL for %{public}.1f seconds", &v5, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CEB1C(v3);
      }
    }
  }
}

void sub_100593F58(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiManagerRestartCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiManagerRestartCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  v6 = [*(a2 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005A3F14;
  v7[3] = &unk_10245D2A8;
  v7[4] = a2;
  v7[5] = a1;
  [v6 sync:v7];
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594168(uint64_t a1, char a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiManagerClientWowStateChangedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiManagerClientWowStateChangedCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F1C;
  v9[3] = &unk_10245D288;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a2;
  [v8 sync:v9];
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_100594380(const void *a1, const void *a2, uint64_t a3)
{
  CFRetain(a1);
  CFRetain(a2);
  v6 = *(a3 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005991F8;
  v8[3] = &unk_10245D2F0;
  v8[4] = a3;
  v8[5] = a1;
  v8[6] = a2;
  return [v6 async:v8];
}

void sub_10059441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiManagerBackgroundScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiManagerBackgroundScanCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  v10 = [*(a4 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005A3F28;
  v11[3] = &unk_1024605D8;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  [v10 sync:v11];
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594640(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientPowerCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientPowerCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  v6 = [*(a2 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005A3F38;
  v7[3] = &unk_10245D2A8;
  v7[4] = a2;
  v7[5] = a1;
  [v6 sync:v7];
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594850(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientResumeScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientResumeScanCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  v6 = [*(a2 + 32) silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005A3F40;
  v7[3] = &unk_10245D2A8;
  v7[4] = a2;
  v7[5] = a1;
  [v6 sync:v7];
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientLinkExtendedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientLinkExtendedCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F48;
  v9[3] = &unk_10245D2F0;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a2;
  [v8 sync:v9];
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientBssidChangeCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientBssidChangeCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F58;
  v9[3] = &unk_10245D2F0;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a2;
  [v8 sync:v9];
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100594E90(uint64_t a1, char a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientBgScanSuspendResumeCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientBgScanSuspendResumeCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F68;
  v9[3] = &unk_10245D288;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a2;
  [v8 sync:v9];
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005950A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v16 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClientScanCacheCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "activity";
      v23 = 2050;
      v24 = a5;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClientScanCacheCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v16 = 0;
  }

  v12 = [*(a5 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1005A3F78;
  v13[3] = &unk_102460E08;
  v13[4] = a5;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v14 = a4;
  [v12 sync:v13];
  if (v16 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005952D4(uint64_t a1, char a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiDeviceClient24GHzNetworkInCriticalStateCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiDeviceClient24GHzNetworkInCriticalStateCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = [*(a3 + 32) silo];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005A3F8C;
  v9[3] = &unk_10245D288;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a2;
  [v8 sync:v9];
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

BOOL sub_1005954EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 832;
  v35 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v36 = 256;
  *a2 = qword_102637AD0;
  std::string::operator=((a2 + 8), byte_102637AD8);
  v5 = xmmword_102637AF0;
  v6 = xmmword_102637B00;
  v7 = xmmword_102637B10;
  *(a2 + 80) = qword_102637B20;
  *(a2 + 48) = v6;
  *(a2 + 64) = v7;
  *(a2 + 32) = v5;
  sub_1000F8F80(a1 + 560, &byte_102637A70);
  if (*(a1 + 312))
  {
    v9 = *(a1 + 320);
    if (v9)
    {
      v10 = sub_1002DEC54(v8, v9, a2, 0);
      if (v10)
      {
        sub_1002DEB0C(a1 + 560, a2);
        *(a1 + 608) = 0;
        v11 = WiFiDeviceClientCopyCurrentNetwork();
        if (v11)
        {
          Property = WiFiNetworkGetProperty();
          if (Property)
          {
            v13 = CFEqual(Property, kCFBooleanTrue) != 0;
          }

          else
          {
            v13 = 1;
          }

          *(a1 + 625) = v13;
          CFRelease(v11);
LABEL_29:
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v20 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
          {
            v34.__r_.__value_.__r.__words[0] = *a2;
            sub_1000ECD9C(&__p);
            v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v22 = *(a2 + 40);
            v23 = *(a2 + 32);
            v24 = *(a2 + 65);
            *buf = 67241219;
            v43 = v10;
            v44 = 2081;
            v45 = v21;
            v46 = 1026;
            v47 = v22;
            v48 = 1026;
            v49 = v23;
            v50 = 1026;
            v51 = v24;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "WifiMgr, queryAssoc, %{public}d, mac, %{private}s, channel, %{public}d, rssi, %{public}d, isMoving, %{public}d", buf, 0x24u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018CD5B4(buf);
            sub_1000ECD9C(&v34);
            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v34;
            }

            else
            {
              v29 = v34.__r_.__value_.__r.__words[0];
            }

            v30 = *(a2 + 40);
            v31 = *(a2 + 32);
            v32 = *(a2 + 65);
            LODWORD(__p.__r_.__value_.__l.__data_) = 67241219;
            HIDWORD(__p.__r_.__value_.__r.__words[0]) = v10;
            LOWORD(__p.__r_.__value_.__r.__words[1]) = 2081;
            *(&__p.__r_.__value_.__r.__words[1] + 2) = v29;
            WORD1(__p.__r_.__value_.__r.__words[2]) = 1026;
            HIDWORD(__p.__r_.__value_.__r.__words[2]) = v30;
            v38 = 1026;
            v39 = v31;
            v40 = 1026;
            v41 = v32;
            v33 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryAssociatedNetwork(CLWifiService_Type::AccessPoint &)", "%s\n", v33);
            if (v33 != buf)
            {
              free(v33);
            }
          }

          goto LABEL_38;
        }

        if (qword_1025D4620 != -1)
        {
          sub_1018CD624();
        }

        v19 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "WifiMgr, queryAssoc, Unable to copy current network", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_29;
        }

        sub_1018CD5B4(buf);
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiService::queryAssociatedNetwork(CLWifiService_Type::AccessPoint &)", "%s\n", v18);
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD624();
        }

        v17 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          v43 = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "WifiMgr, queryAssoc, fail, ap, %{public}d", buf, 8u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_29;
        }

        sub_1018CD5B4(buf);
        __p.__r_.__value_.__r.__words[0] = 67240192;
        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryAssociatedNetwork(CLWifiService_Type::AccessPoint &)", "%s\n", v18);
      }

      if (v18 != buf)
      {
        free(v18);
      }

      goto LABEL_29;
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v14 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 312) == 0;
    v16 = *(a1 + 320) == 0;
    *buf = 67240448;
    v43 = v15;
    v44 = 1026;
    LODWORD(v45) = v16;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "WifiMgr, queryAssoc, fail, device, %{public}d, network, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v26 = *(a1 + 312) == 0;
    v27 = *(a1 + 320) == 0;
    LODWORD(__p.__r_.__value_.__l.__data_) = 67240448;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v26;
    LOWORD(__p.__r_.__value_.__r.__words[1]) = 1026;
    *(&__p.__r_.__value_.__r.__words[1] + 2) = v27;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryAssociatedNetwork(CLWifiService_Type::AccessPoint &)", "%s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  v10 = 0;
LABEL_38:
  (*(*v4 + 24))(v4);
  return v10;
}

void sub_100595BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100595C08(void *a1)
{
  v2 = a1 + 104;
  v10 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v11 = 256;
  v3 = _os_activity_create(dword_100000000, "CL: onWiFiManagerClientWowStateChangedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v16 = 0;
    v17 = 2082;
    *__p = "";
    *&__p[8] = 2082;
    *&__p[10] = "activity";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiManagerClientWowStateChangedCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  WoWState = WiFiManagerClientGetWoWState();
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD638();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v16 = WoWState;
    v17 = 2048;
    *__p = a1;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Got onWiFiManagerClientWowStateChangedCallback callback, isEnabled, %d, refcon, %p", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    LODWORD(v12) = 67109376;
    HIDWORD(v12) = WoWState;
    v13 = 2048;
    v14 = a1;
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerClientWowStateChangedCallback(WiFiManagerClientRef, Boolean)", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  *buf = -256;
  LOBYTE(v17) = 0;
  v20 = 0;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  *(&v22 + 1) = WoWState != 0;
  LODWORD(v12) = 11;
  (*(*a1 + 152))(a1, &v12, buf, 1, 0xFFFFFFFFLL, 0);
  v12 = &v21[8];
  sub_1000B96B4(&v12);
  if (v20 == 1 && v19 < 0)
  {
    operator delete(*&__p[6]);
  }

  os_activity_scope_leave(&state);
  return (*(*v2 + 24))(v2);
}

void sub_100595F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_100595FAC(uint64_t a1)
{
  v2 = a1 + 832;
  v17 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v18 = 256;
  v10 = qword_102637AD0;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&v11, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    v11 = *byte_102637AD8;
    v12 = *&byte_102637AD8[16];
  }

  v13 = xmmword_102637AF0;
  v14 = xmmword_102637B00;
  v15 = xmmword_102637B10;
  v16 = qword_102637B20;
  sub_1005954EC(a1, &v10);
  v3 = *(a1 + 224);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 224) = 0;
  }

  if (sub_1002DFF48(a1, &v10))
  {
    if (DWORD2(v13) == -1)
    {
      sub_1018CEC34();
      result = abort_report_np();
      __break(1u);
      return result;
    }

    v9 = DWORD2(v13);
    v5[0] = &v9;
    v8 = &v10;
    *(a1 + 224) = sub_1005A171C(a1, 1, 1, 14, v5, &v8, 110, 0, 0);
    sub_1002DEB0C(a1 + 560, &v10);
  }

  else
  {
    sub_1002E80E0(v5, &qword_102637AD0);
    sub_1000F8A78(a1 + 560, v5);
    if (v7 == 1 && v6 < 0)
    {
      operator delete(v5[1]);
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  return (*(*v2 + 24))(v2);
}

uint64_t sub_1005961D0(uint64_t a1)
{
  v2 = a1 + 832;
  v18 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v19 = 256;
  v3 = byte_102656F78;
  if ((byte_102656F78 & 1) == 0)
  {
    sub_10001A3E8();
    byte_102656F79 = (sub_10003A088() & 0x8000) != 0;
    byte_102656F78 = 1;
  }

  v17 = 0;
  sub_100599BF8(a1, &v17);
  v4 = *(a1 + 392);
  *(a1 + 392) = byte_102656F79;
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 392);
    v7 = *(a1 + 552);
    *buf = 67109888;
    *v26 = v6;
    *&v26[4] = 1024;
    *&v26[6] = v4;
    v27 = 1024;
    LODWORD(__p[0]) = byte_102656F79;
    WORD2(__p[0]) = 1024;
    *(__p + 6) = v7;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WiFi tracking available now %d (was %d) (%d %d)", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    v12 = *(a1 + 392);
    v13 = *(a1 + 552);
    *v20 = 67109888;
    *&v20[4] = v12;
    *&v20[8] = 1024;
    *&v20[10] = v4;
    v21 = 1024;
    v22 = byte_102656F79;
    v23 = 1024;
    v24 = v13;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::processTrackingAndPower()", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (v3)
  {
    v8 = *(a1 + 392);
    if (v4 != v8)
    {
      *buf = -256;
      v26[4] = 0;
      v30 = 0;
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      BYTE1(v33) = v8;
      *v20 = 10;
      (*(*a1 + 152))(a1, v20, buf, 0, 0xFFFFFFFFLL, 0);
      *v20 = &v31 + 8;
      sub_1000B96B4(v20);
      if (v30 == 1 && v29 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 552))
    {
      v10 = "On";
    }

    else
    {
      v10 = "Off";
    }

    *buf = 136315138;
    *v26 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WifiNotify, Power, %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    v15 = *(a1 + 552) ? "On" : "Off";
    *v20 = 136315138;
    *&v20[4] = v15;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::processTrackingAndPower()", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  buf[1] = -1;
  v26[4] = 0;
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  buf[0] = *(a1 + 552);
  *v20 = 1;
  (*(*a1 + 152))(a1, v20, buf, 1, 0xFFFFFFFFLL, 0);
  *v20 = &v31 + 8;
  sub_1000B96B4(v20);
  if (v30 == 1 && v29 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*v2 + 24))(v2);
}

void sub_1005966C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100596718(uint64_t a1)
{
  *a1 = off_102460AA0;
  sub_100596840(a1);
  v2 = *(a1 + 848);
  *(a1 + 848) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10053700C(a1 + 832);
  sub_1003C93BC(a1 + 704, *(a1 + 712));
  if (*(a1 + 648) == 1 && *(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  v4 = (a1 + 512);
  sub_1000B96B4(&v4);
  v4 = (a1 + 480);
  sub_1000B96B4(&v4);
  v4 = (a1 + 448);
  sub_1000B96B4(&v4);
  sub_1005A45E0((a1 + 344));
  return sub_100F67A20(a1);
}

void sub_100596808(uint64_t a1)
{
  sub_100596718(a1);

  operator delete();
}

uint64_t sub_100596840(uint64_t a1)
{
  v2 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  *(a1 + 108) = 1;
  v3 = *(a1 + 296);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    v4 = *(a1 + 296);
    *(a1 + 296) = 0;
    CFRelease(v4);
  }

  v5 = *(a1 + 320);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 320) = 0;
  }

  if (*(a1 + 312))
  {
    WiFiDeviceClientSetRangeable();
    WiFiDeviceClientRegisterRangingReportCallback();
    CFRelease(*(a1 + 312));
    *(a1 + 312) = 0;
  }

  if (*(a1 + 304))
  {
    sub_100107858();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(*(a1 + 304));
    *(a1 + 304) = 0;
  }

  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  v6 = *(a1 + 536);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 536) = 0;
  }

  v7 = *(a1 + 544);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 544) = 0;
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 112) = 0;
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 128) = 0;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 176) = 0;
  }

  v12 = *(a1 + 184);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 184) = 0;
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 192) = 0;
  }

  v14 = *(a1 + 200);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 200) = 0;
  }

  v15 = *(a1 + 208);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 208) = 0;
  }

  v16 = *(a1 + 216);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 216) = 0;
  }

  v17 = *(a1 + 224);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 224) = 0;
  }

  v18 = *(a1 + 136);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 136) = 0;
  }

  v19 = *(a1 + 144);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 144) = 0;
  }

  v20 = *(a1 + 152);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 152) = 0;
  }

  v21 = *(a1 + 160);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 160) = 0;
  }

  v22 = *(a1 + 168);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 168) = 0;
  }

  v23 = *(a1 + 744);
  if (v23)
  {
    dispatch_release(v23);
    *(a1 + 744) = 0;
  }

  return (*(*v2 + 24))(v2);
}

void sub_100596A98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100596B08(uint64_t a1)
{
  v2 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  if (*(a1 + 304) && *(a1 + 312))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"BGSCAN_CACHE", kCFBooleanFalse);
    CFDictionaryAddValue(Mutable, @"BGSCAN_CACHE_WSB_ROLLOVER", kCFBooleanFalse);
    v4 = +[NSMutableArray array];
    v5 = [NSNumber numberWithInteger:1];
    v6 = +[NSMutableDictionary dictionary];
    [v6 setObject:v5 forKey:@"CHANNEL"];
    [v4 addObject:v6];
    CFDictionarySetValue(Mutable, @"SCAN_CHANNELS", v4);
    WiFiManagerClientSetBGScanCacheState();
    CFRelease(Mutable);
    *(a1 + 236) = 0xE1000000000;
    *(a1 + 244) = 0;
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@WsbReg, disabled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
LABEL_15:
      sub_1018CD6E0(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::turnOffWsb()", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@Wsb, No wifi interface available, WARNING", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      goto LABEL_15;
    }
  }

  return (*(*v2 + 24))(v2);
}

void sub_100596E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100596EE0(uint64_t a1)
{
  v2 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  if (*(a1 + 304) && *(a1 + 312))
  {
    if (*(a1 + 236) != 2 || *(a1 + 284) <= 0)
    {
      WiFiManagerClientRegisterBackgroundScanCacheCallback();
      sub_100597120(a1, 0, 1);
      *(a1 + 236) = 2;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "@WsbWarn, No wifi interface available, #CloneMe", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v5 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::turnOnWsb()", "%s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  return (*(*v2 + 24))(v2);
}

void sub_1005970F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100597120(uint64_t a1, int a2, int a3)
{
  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(theDict, @"BGSCAN_CACHE", kCFBooleanTrue);
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 13;
  }

  Mutable = CFArrayCreateMutable(0, v4, &kCFTypeArrayCallBacks);
  v6 = 0;
  valuePtr[0] = 1;
  v7 = 1;
  do
  {
    if (!a3 || v7 <= 0xB && ((1 << v7) & 0x842) != 0)
    {
      v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
      v10 = v9;
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240704;
          v25 = valuePtr[0];
          v26 = 2050;
          v27 = v8;
          v28 = 2050;
          v29 = v10;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "@WsbWarn, channel fail, %{public}d channelDict, %{public}p, channelNumber, %{public}p, #CloneMe", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          valuePtr[1] = 67240704;
          valuePtr[2] = valuePtr[0];
          v20 = 2050;
          v21 = v8;
          v22 = 2050;
          v23 = v10;
          v13 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::enableDefaultWsbProfile(BOOL, BOOL)", "%s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }

      else
      {
        CFDictionaryAddValue(v8, @"CHANNEL", v9);
        CFArrayAppendValue(Mutable, v8);
      }

      CFRelease(v8);
      CFRelease(v10);
      v6 = (v6 + 1);
      v7 = valuePtr[0];
    }

    valuePtr[0] = v7 + 1;
  }

  while (v7++ < 13);
  CFDictionarySetValue(theDict, @"SCAN_CHANNELS", Mutable);
  if (a2)
  {
    v15 = kCFBooleanTrue;
  }

  else
  {
    v15 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(theDict, @"BGSCAN_CACHE_WSB_ROLLOVER", v15);
  WiFiManagerClientSetBGScanCacheState();
  CFRelease(Mutable);
  CFRelease(theDict);
  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v16 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v25 = v6;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "@WsbReg, enable, chs, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CEDB4(v6);
  }
}

void sub_100597514(uint64_t a1, int a2)
{
  if (!sub_100038FB4(a1 + 832))
  {
    sub_1018CEEB4();
  }

  if (*(a1 + 248) || *(a1 + 246) == a2)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v4 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 248);
      v6 = *(a1 + 246);
      LODWORD(buf.__r_.__value_.__l.__data_) = 134349568;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = a2;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@WsbActive, Skip, networks, %{public}lu, turnOn, %{public}d, isSampleScan, %{public}d", &buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v53 = *(a1 + 248);
      v54 = *(a1 + 246);
      LODWORD(__dst.__r_.__value_.__l.__data_) = 134349568;
      *(__dst.__r_.__value_.__r.__words + 4) = v53;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 1026;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = a2;
      WORD1(__dst.__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(__dst.__r_.__value_.__r.__words[2]) = v54;
      v55 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::programSampleNetworks(BOOL)", "%s\n", v55);
      if (v55 != &buf)
      {
        free(v55);
      }
    }
  }

  else
  {
    *(a1 + 246) = a2;
    if (*(a1 + 688) != 0.0 && *(a1 + 720))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = (Current - *(a1 + 696)) / 60.0;
      if (v8 >= 1.0)
      {
        v9 = "active:off";
        v10 = *(a1 + 728);
        if (v10 == 1)
        {
          v9 = "active:fences";
        }

        if (v10 == 2)
        {
          v11 = "active:fake";
        }

        else
        {
          v11 = v9;
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CEDA0();
        }

        v12 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
          *(buf.__r_.__value_.__r.__words + 4) = v11;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", &buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CF03C(v8);
        }

        v74 = _NSConcreteStackBlock;
        v75 = 3221225472;
        v76 = sub_10059802C;
        v77 = &unk_102451C38;
        v78 = v11;
        v79 = v8;
        AnalyticsSendEventLazy();
      }

      if (a2)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      *(a1 + 728) = v13;
      *(a1 + 696) = Current;
    }

    if (a2)
    {
      v71 = 0;
      v72 = 0;
      v73 = 0;
      memset(v70, 0, sizeof(v70));
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v14 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        p_dst = &__dst;
        sub_1000ECD9C(&__dst);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        sub_1000ECD9C(&v69);
        v16 = SHIBYTE(v69.__r_.__value_.__r.__words[2]);
        v17 = v69.__r_.__value_.__r.__words[0];
        sub_1000ECD9C(&__p);
        v18 = &v69;
        if (v16 < 0)
        {
          v18 = v17;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
        *(buf.__r_.__value_.__r.__words + 4) = p_dst;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v18;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2081;
        v83 = p_p;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "@WsbActive, Create, %{private}s, %{private}s, %{private}s", &buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD6E0(&buf);
        v56 = &v69;
        sub_1000ECD9C(&v69);
        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v56 = v69.__r_.__value_.__r.__words[0];
        }

        sub_1000ECD9C(&__p);
        v57 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v58 = __p.__r_.__value_.__r.__words[0];
        sub_1000ECD9C(&v67);
        v59 = &__p;
        if (v57 < 0)
        {
          v59 = v58;
        }

        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &v67;
        }

        else
        {
          v60 = v67.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136381187;
        *(__dst.__r_.__value_.__r.__words + 4) = v56;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2081;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v59;
        HIWORD(__dst.__r_.__value_.__r.__words[2]) = 2081;
        v81 = v60;
        v61 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::programSampleNetworks(BOOL)", "%s\n", v61);
        if (v61 != &buf)
        {
          free(v61);
        }
      }

      if (byte_102637AD8[23] < 0)
      {
        sub_100007244(&__dst, *byte_102637AD8, *&byte_102637AD8[8]);
      }

      else
      {
        __dst = *byte_102637AD8;
      }

      data = xmmword_102637AF0;
      v22 = DWORD1(xmmword_102637AF0);
      v66 = DWORD1(xmmword_102637AF0);
      LODWORD(v67.__r_.__value_.__l.__data_) = xmmword_102637AF0;
      v23 = *(&xmmword_102637B00 + 1);
      v25 = xmmword_102637B00;
      __p.__r_.__value_.__r.__words[0] = v25 >> 64;
      v24 = v25;
      v69.__r_.__value_.__r.__words[0] = xmmword_102637B00;
      v26 = xmmword_102637B10;
      v65 = xmmword_102637B10;
      v27 = BYTE1(xmmword_102637B10);
      v64 = BYTE1(xmmword_102637B10);
      v28 = DWORD1(xmmword_102637B10);
      v62 = 1;
      v63 = DWORD1(xmmword_102637B10);
      v29 = v72;
      if (v72 >= v73)
      {
        v31 = sub_1005A3F9C(&v71, (a1 + 256), &__dst, &v67, &v66, &v62, &v69, &__p, &v65, &v64, &v63);
      }

      else
      {
        v30 = *(a1 + 256);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          v22 = v66;
          data = v67.__r_.__value_.__l.__data_;
          v24 = v69.__r_.__value_.__r.__words[0];
          v23 = __p.__r_.__value_.__r.__words[0];
          v26 = v65;
          v27 = v64;
          v28 = v63;
        }

        else
        {
          buf = __dst;
        }

        *v29 = v30;
        v32 = *&buf.__r_.__value_.__l.__data_;
        *(v29 + 24) = *(&buf.__r_.__value_.__l + 2);
        *(v29 + 8) = v32;
        *(v29 + 32) = data;
        *(v29 + 36) = v22;
        *(v29 + 40) = 1;
        *(v29 + 48) = v24;
        *(v29 + 56) = v23;
        *(v29 + 64) = v26;
        *(v29 + 65) = v27;
        *(v29 + 68) = v28;
        *(v29 + 72) = 0;
        v31 = v29 + 88;
        *(v29 + 80) = 0;
      }

      v72 = v31;
      v62 = 6;
      if (v31 >= v73)
      {
        v34 = sub_1005A3F9C(&v71, (a1 + 264), &__dst, &v67, &v66, &v62, &v69, &__p, &v65, &v64, &v63);
      }

      else
      {
        v33 = *(a1 + 264);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = __dst;
        }

        v36 = v66;
        v35 = v67.__r_.__value_.__l.__data_;
        v37 = v69.__r_.__value_.__r.__words[0];
        v38 = __p.__r_.__value_.__r.__words[0];
        v39 = v65;
        v40 = v64;
        v41 = v63;
        *v31 = v33;
        v42 = buf.__r_.__value_.__r.__words[2];
        *(v31 + 8) = *&buf.__r_.__value_.__l.__data_;
        *(v31 + 24) = v42;
        *(v31 + 32) = v35;
        *(v31 + 36) = v36;
        *(v31 + 40) = 6;
        *(v31 + 48) = v37;
        *(v31 + 56) = v38;
        *(v31 + 64) = v39;
        *(v31 + 65) = v40;
        *(v31 + 68) = v41;
        *(v31 + 72) = 0;
        v34 = v31 + 88;
        *(v31 + 80) = 0;
      }

      v72 = v34;
      v62 = 11;
      if (v34 >= v73)
      {
        v44 = sub_1005A3F9C(&v71, (a1 + 272), &__dst, &v67, &v66, &v62, &v69, &__p, &v65, &v64, &v63);
      }

      else
      {
        v43 = *(a1 + 272);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = __dst;
        }

        v46 = v66;
        v45 = v67.__r_.__value_.__l.__data_;
        v47 = v69.__r_.__value_.__r.__words[0];
        v48 = __p.__r_.__value_.__r.__words[0];
        v49 = v65;
        v50 = v64;
        v51 = v63;
        *v34 = v43;
        v52 = buf.__r_.__value_.__r.__words[2];
        *(v34 + 8) = *&buf.__r_.__value_.__l.__data_;
        *(v34 + 24) = v52;
        *(v34 + 32) = v45;
        *(v34 + 36) = v46;
        *(v34 + 40) = 11;
        *(v34 + 48) = v47;
        *(v34 + 56) = v48;
        *(v34 + 64) = v49;
        *(v34 + 65) = v50;
        *(v34 + 68) = v51;
        *(v34 + 72) = 0;
        v44 = v34 + 88;
        *(v34 + 80) = 0;
      }

      v72 = v44;
      sub_1005980EC(a1, &v71, v70);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      buf.__r_.__value_.__r.__words[0] = v70;
      sub_1000B96B4(&buf);
      buf.__r_.__value_.__r.__words[0] = &v71;
      sub_1000B96B4(&buf);
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v20 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "@WsbActive, Clear", &buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CF168();
      }

      sub_10058E2FC(a1, 0);
    }
  }
}

void sub_100597E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char **a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  a23 = &a29;
  sub_1000B96B4(&a23);
  a29 = &a32;
  sub_1000B96B4(&a29);
  _Unwind_Resume(a1);
}

uint64_t *sub_100597F68(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

NSDictionary *sub_10059802C(uint64_t a1)
{
  v4[0] = @"active";
  v3[0] = @"mode";
  v3[1] = @"submode";
  v4[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[2] = @"duration";
  v4[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

uint64_t sub_1005980EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD6A4();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3);
    v9 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
    *buf = 134218240;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "setExitAndEntryScanNetworks, entry, %lu, exit, %lu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::setExitAndEntryScanNetworks(const std::vector<CLWifiService_Type::AccessPoint> &, const std::vector<CLWifiService_Type::AccessPoint> &)", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v10 = *(a1 + 544);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 544) = 0;
  }

  v11 = *(a1 + 536);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 536) = 0;
  }

  if (sub_1005A1FBC(a1, a2, (a1 + 536), 1) && sub_1005A1FBC(a1, a3, (a1 + 544), 0))
  {
    sub_10059EA50(a1);
  }

  return (*(*v6 + 24))(v6);
}

void sub_1005983A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1005983D8(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    v5 = 0;
    __p = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_132;
  }

  __p = 0;
  v64 = 0;
  v65 = 0;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v5 = 0;
    goto LABEL_132;
  }

  v4 = 0;
  v5 = 0;
  theArraya = theArray;
  while (1)
  {
    CFArrayGetValueAtIndex(theArraya, v4);
    if (SHIBYTE(v65) < 0)
    {
      *__p = 0;
      v64 = 0;
    }

    else
    {
      LOBYTE(__p) = 0;
      HIBYTE(v65) = 0;
    }

    Property = WiFiNetworkGetProperty();
    if (!Property || !sub_100005A24(Property, &__p))
    {
      break;
    }

    v7 = HIBYTE(v65);
    if (v65 < 0)
    {
      v7 = v64;
    }

    if (!v7)
    {
      break;
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      p_p = &__p;
      if (v65 < 0)
      {
        p_p = __p;
      }

      *buf = 136381187;
      *&buf[4] = p_p;
      *&buf[12] = 1026;
      *&buf[14] = v4;
      *&buf[18] = 2050;
      *&buf[20] = Count;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "@WsbActive, network, %{private}s, %{public}d, %{public}ld", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      v46 = &__p;
      if (v65 < 0)
      {
        v46 = __p;
      }

      *v67 = 136381187;
      *&v67[4] = v46;
      *&v67[12] = 1026;
      *&v67[14] = v4;
      *&v67[18] = 2050;
      *&v67[20] = Count;
      v47 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::replaceMatchingNetworks(CFArrayRef)", "%s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    v10 = 0;
    v11 = (a1 + 256);
    do
    {
      sub_1000ECD9C(buf);
      v12 = buf[23];
      v14 = *buf;
      v13 = *&buf[8];
      v15 = HIBYTE(v65);
      if (v65 >= 0)
      {
        v16 = &__p;
      }

      else
      {
        v15 = v64;
        v16 = __p;
      }

      if (buf[23] < 0)
      {
        v17 = *buf;
      }

      else
      {
        v13 = buf[23];
        v17 = buf;
      }

      if (v13 >= v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = v13;
      }

      v19 = v13 == v15;
      if (memcmp(v16, v17, v18))
      {
        v19 = 0;
      }

      if (v12 < 0)
      {
        operator delete(v14);
        if (!v19)
        {
          goto LABEL_101;
        }
      }

      else if (!v19)
      {
        goto LABEL_101;
      }

      v20 = rand();
      if (v20 == -1)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      v22 = *(a1 + 280);
      *(a1 + 280) = v22 + 1;
      if (v22)
      {
        v23 = "56:78";
      }

      else
      {
        v23 = "12:34";
      }

      sub_10000EC00(v67, v23);
      std::to_string(&v57, (v21 >> 6) % 99);
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24.__i_ = &v57;
      }

      else
      {
        v24.__i_ = v57.__r_.__value_.__r.__words[0];
      }

      std::string::insert(&v57, v24, 58);
      v58 = v57;
      memset(&v57, 0, sizeof(v57));
      std::string::push_back(&v58, 58);
      v59 = v58;
      memset(&v58, 0, sizeof(v58));
      std::to_string(&v56, (v21 >> 4) % 99);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v56;
      }

      else
      {
        v25 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v56.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v59, v25, size);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v60.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v60.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      std::string::push_back(&v60, 58);
      v61 = v60;
      memset(&v60, 0, sizeof(v60));
      std::to_string(&v55, (v21 >> 2) % 99);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v55;
      }

      else
      {
        v29 = v55.__r_.__value_.__r.__words[0];
      }

      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v55.__r_.__value_.__l.__size_;
      }

      v31 = std::string::append(&v61, v29, v30);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::string::push_back(&v62, 58);
      v66 = v62;
      memset(&v62, 0, sizeof(v62));
      std::to_string(&v54, v21 % 99);
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v54;
      }

      else
      {
        v33 = v54.__r_.__value_.__r.__words[0];
      }

      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v54.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v66, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v35->__r_.__value_.__l + 2);
      *buf = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (buf[23] >= 0)
      {
        v37 = buf;
      }

      else
      {
        v37 = *buf;
      }

      if (buf[23] >= 0)
      {
        v38 = buf[23];
      }

      else
      {
        v38 = *&buf[8];
      }

      std::string::append(v67, v37, v38);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      *v11 = sub_100196E8C(v67);
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v39 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000ECD9C(&v66);
        v40 = &v66;
        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = v66.__r_.__value_.__r.__words[0];
        }

        v41 = *(a1 + 280);
        *buf = 67175171;
        *&buf[4] = v10;
        *&buf[8] = 2081;
        *&buf[10] = v40;
        *&buf[18] = 1026;
        *&buf[20] = v41;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "@WsbActive, Match, %{private}d, newmac, %{private}s, matches, %{public}d, #CloneMe", buf, 0x18u);
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD6E0(buf);
        sub_1000ECD9C(&v62);
        v42 = &v62;
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v62.__r_.__value_.__r.__words[0];
        }

        v43 = *(a1 + 280);
        LODWORD(v66.__r_.__value_.__l.__data_) = 67175171;
        HIDWORD(v66.__r_.__value_.__r.__words[0]) = v10;
        LOWORD(v66.__r_.__value_.__r.__words[1]) = 2081;
        *(&v66.__r_.__value_.__r.__words[1] + 2) = v42;
        WORD1(v66.__r_.__value_.__r.__words[2]) = 1026;
        HIDWORD(v66.__r_.__value_.__r.__words[2]) = v43;
        v44 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::replaceMatchingNetworks(CFArrayRef)", "%s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }
      }

      if ((v67[23] & 0x80000000) != 0)
      {
        operator delete(*v67);
      }

      ++v5;
LABEL_101:
      ++v10;
      ++v11;
    }

    while (v10 != 3);
    if (v5)
    {
      if (qword_1025D4630 != -1)
      {
        sub_1018CD6B8();
      }

      v45 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *&buf[4] = v5;
        _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "WsbClients, status, samplematch, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD6E0(buf);
        *v67 = 67240192;
        *&v67[4] = v5;
        v48 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::replaceMatchingNetworks(CFArrayRef)", "%s\n", v48);
        if (v48 != buf)
        {
          free(v48);
        }
      }
    }

    if (++v4 == Count)
    {
      goto LABEL_132;
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v49 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    *&buf[4] = v4;
    *&buf[8] = 2050;
    *&buf[10] = Count;
    _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_INFO, "@WsbActive, network, invalid, %{public}d, %{public}ld", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    *v67 = 67240448;
    *&v67[4] = v4;
    *&v67[8] = 2050;
    *&v67[10] = Count;
    v50 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::replaceMatchingNetworks(CFArrayRef)", "%s\n", v50);
    if (v50 != buf)
    {
      free(v50);
    }
  }

LABEL_132:
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p);
  }

  return v5 != 0;
}

void sub_100598E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100598FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiService::onWiFiManagerBackgroundScanCacheCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1002E9770();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiService::onWiFiManagerBackgroundScanCacheCallback, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  v10 = [*(a4 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005A422C;
  v11[3] = &unk_1024605D8;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  [v10 sync:v11];
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005991F8(uint64_t a1, uint64_t a2)
{
  sub_100599240(*(a1 + 32), a2, *(a1 + 48));
  CFRelease(*(a1 + 40));
  v3 = *(a1 + 48);

  CFRelease(v3);
}

uint64_t sub_100599240(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 104;
  v23 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v24 = 256;
  v6 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientAttachedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2082;
    v37 = "activity";
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientAttachedCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (a3)
  {
    if (a1[39])
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        InterfaceName = WiFiDeviceClientGetInterfaceName();
        v10 = buf;
        sub_1000238CC(InterfaceName, buf);
        if (SBYTE3(v37) < 0)
        {
          v10 = *buf;
        }

        v11 = WiFiDeviceClientGetInterfaceName();
        sub_1000238CC(v11, __p);
        if (v21 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *v25 = 136315394;
        *&v25[4] = v10;
        v26 = 2080;
        v27 = v12;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiMgr, prefer existing device, %s, ignoring %s", v25, 0x16u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE3(v37) < 0)
        {
          operator delete(*buf);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_36;
      }

      sub_1018CD5B4(buf);
      v13 = WiFiDeviceClientGetInterfaceName();
      v14 = __p;
      sub_1000238CC(v13, __p);
      if (v21 < 0)
      {
        v14 = __p[0];
      }

      v15 = WiFiDeviceClientGetInterfaceName();
      sub_1000238CC(v15, v25);
      if (v28 >= 0)
      {
        v16 = v25;
      }

      else
      {
        v16 = *v25;
      }

      v29 = 136315394;
      v30 = v14;
      v31 = 2080;
      v32 = v16;
      v17 = _os_log_send_and_compose_impl();
      if (v28 < 0)
      {
        operator delete(*v25);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientAttachedCallback(WiFiManagerClientRef, WiFiDeviceClientRef)", "%s\n", v17);
      if (v17 == buf)
      {
        goto LABEL_36;
      }

LABEL_41:
      free(v17);
      goto LABEL_36;
    }

    sub_1005915A8(a1);
    if (a1[39] && a1[38])
    {
      sub_100592C18(a1);
      *buf = 0;
      (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "WifiMgr, onWifiDeviceClientAttachedCallback, NULL device", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      LOWORD(__p[0]) = 0;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientAttachedCallback(WiFiManagerClientRef, WiFiDeviceClientRef)", "%s\n", v17);
      if (v17 != buf)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_36:
  os_activity_scope_leave(&state);
  return (*(*v5 + 24))(v5);
}

void sub_100599720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, os_activity_scope_state_s state, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_100599794(uint64_t a1)
{
  v2 = a1 + 832;
  v20 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v21 = 256;
  v3 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientPowerCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = "activity";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientPowerCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_1000F8F80(a1 + 560, &byte_102637A70);
  v13 = 0;
  v16 = 0;
  v12 = -256;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  if (sub_100599BF8(a1, &v12))
  {
    *(a1 + 552) = v12;
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 552);
      *buf = 67240192;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiMgr, onWiFiDeviceClientPowerCallback, fIsWifiPowered, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v9 = *(a1 + 552);
      v22 = 67240192;
      v23 = v9;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientPowerCallback(WiFiDeviceClientRef)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    sub_1005961D0(a1);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "WifiService, could not retrieve power state", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      LOWORD(v22) = 0;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientPowerCallback(WiFiDeviceClientRef)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    *(a1 + 552) = v12;
  }

  *buf = v17 + 8;
  sub_1000B96B4(buf);
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  return (*(*v2 + 24))(v2);
}

void sub_100599BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, os_activity_scope_state_s state, char a31)
{
  sub_100318B88(&a12);
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_100599BF8(uint64_t a1, BOOL *a2)
{
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  if (*(a1 + 296))
  {
    if (*(a1 + 312))
    {
      v5 = WiFiDeviceClientGetPower() != 0;
      *a2 = v5;
      *(a1 + 552) = v5;
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 552);
        *buf = 67240192;
        v16 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "WifiMgr, WiFiDeviceClientGetPower, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD5B4(buf);
        v12 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryPowerState(BOOL &)", "%s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      v8 = 1;
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WifiService, queryPowerState, fWifiDevice is NULL", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018CD5B4(buf);
        v14 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryPowerState(BOOL &)", "%s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      v8 = 0;
      *(a1 + 552) = 0;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WifiService, queryPowerState, fDpcSource is NULL", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::queryPowerState(BOOL &)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v8 = 0;
  }

  (*(*v4 + 24))(v4);
  return v8;
}

void sub_10059A008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10059A040(double *a1)
{
  v2 = a1 + 104;
  v7 = a1 + 104;
  (*(*(a1 + 104) + 16))(a1 + 104);
  v8 = 256;
  v3 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientResumeScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientResumeScanCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  if (a1[51] >= 0.0)
  {
    a1[51] = -1.0;
  }

  *buf = 2;
  (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
  os_activity_scope_leave(&state);
  return (*(*v2 + 24))(v2);
}

uint64_t sub_10059A24C(void *a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = a1 + 104;
  v40 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v41 = 256;
  v6 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientLinkExtendedCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientLinkExtendedCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  v8 = a1[40];
  if (v8)
  {
    CFRelease(v8);
    a1[40] = 0;
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"LINK_CHANGED_NETWORK");
    a1[40] = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  sub_100595FAC(a1);
  v32 = -256;
  LOBYTE(v33[0]) = 0;
  v36 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  if (sub_1000ECA98(a1))
  {
    __p.__r_.__value_.__r.__words[0] = qword_102637AD0;
    if (byte_102637AD8[23] < 0)
    {
      sub_100007244(&__p.__r_.__value_.__s.__data_[8], *byte_102637AD8, *&byte_102637AD8[8]);
    }

    else
    {
      *&__p.__r_.__value_.__r.__words[1] = *byte_102637AD8;
      v27 = *&byte_102637AD8[16];
    }

    v28 = xmmword_102637AF0;
    v29 = xmmword_102637B00;
    v30 = xmmword_102637B10;
    v31 = qword_102637B20;
    if ((sub_1002DFF48(a1, &__p) & 1) == 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "WifiService, linkextend1 failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CD5B4(buf);
        LOWORD(v42) = 0;
        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientLinkExtendedCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    sub_1002DEB0C(v33, &__p);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__size_);
    }
  }

  BYTE2(v38) = 0;
  if (a3)
  {
    sub_100005548(&__p, a3);
    sub_10001CBC0(&__p, @"LINKDOWN_IS_INVOL", &v38 + 2);
    v11 = v36;
    if (v35 <= 0)
    {
      v11 = 0;
    }

    v25 = v11;
    sub_10001CBC0(&__p, @"LINK_CHANGED_IS_LINKDOWN", &v25);
    if (v25)
    {
      sub_1000F8F80(v33, &byte_102637A70);
    }

    else if (!v36 || v35 <= 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v14 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "WifiService, linkextend2 failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018CD5B4(buf);
        LOWORD(v42) = 0;
        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientLinkExtendedCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }

    sub_1004FFDC0(&__p, "linkChangedEventDataDict");
    sub_100005DA4(&__p);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "WifiMgr, onWiFiDeviceClientLinkExtendedCallback, linkChangedEventDataDict null", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientLinkExtendedCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  memset(&__p, 0, sizeof(__p));
  if (v36 && v35 >= 1)
  {
    v42 = v33[0];
    sub_1000ECD9C(buf);
    v15 = v35;
    __p = *buf;
  }

  else
  {
    v15 = DWORD2(xmmword_102637AF0);
    *(&__p.__r_.__value_.__s + 23) = 3;
    qmemcpy(&__p, "N/A", 3);
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v36;
    if (v35 <= 0)
    {
      v17 = 0;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 67240707;
    *&buf[4] = v17;
    *&buf[8] = 2081;
    *&buf[10] = p_p;
    *&buf[18] = 1025;
    *&buf[20] = v15;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "@ClxLink, associate, %{public}d, %{private}s, %{private}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v20 = v36;
    if (v35 <= 0)
    {
      v20 = 0;
    }

    v21 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v42) = 67240707;
    HIDWORD(v42) = v20;
    v43 = 2081;
    v44 = v21;
    v45 = 1025;
    v46 = v15;
    v22 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientLinkExtendedCallback(WiFiDeviceClientRef, CFDictionaryRef)", "%s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  *buf = 6;
  (*(*a1 + 152))(a1, buf, &v32, 1, 0xFFFFFFFFLL, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *buf = &v37[8];
  sub_1000B96B4(buf);
  if (v36 && v34 < 0)
  {
    operator delete(v33[1]);
  }

  os_activity_scope_leave(&state);
  return (*(*v5 + 24))(v5);
}

void sub_10059AAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, os_activity_scope_state_s state, char a47)
{
  sub_100005DA4(&a11);
  sub_100318B88(&a28);
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_10059AB64(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 104;
  v46 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v47 = 256;
  v8 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientBssidChangeCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientBssidChangeCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  sub_100595FAC(a1);
  v36 = -256;
  v37[0] = 0;
  v41 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v29 = qword_102637AD0;
  v10 = &v29;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&v30, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    v30 = *byte_102637AD8;
    v31 = *&byte_102637AD8[16];
  }

  v32 = xmmword_102637AF0;
  v33 = xmmword_102637B00;
  v34 = xmmword_102637B10;
  v35 = qword_102637B20;
  v11 = sub_1002DFF48(a1, &v29);
  v12 = sub_1000ECA98(a1);
  if (v11 != v12)
  {
    sub_1018CF338();
    abort_report_np();
    __break(1u);
LABEL_62:
    sub_1018CD58C();
    goto LABEL_44;
  }

  v3 = &v36;
  if (v11)
  {
    v12 = sub_1002DEB0C(v37, &v29);
  }

  if (sub_1002DEC54(v12, a3, &v29, 0))
  {
    sub_1002DEB0C(v37, &v29);
    if (v11)
    {
      Property = WiFiNetworkGetProperty();
      if (Property)
      {
        v14 = CFEqual(Property, kCFBooleanTrue) != 0;
      }

      else
      {
        v14 = 1;
      }

      v40 = v14;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_100C5CFB0(v37, buf);
      v18 = buf[23] >= 0 ? buf : *buf;
      *v48 = 136380675;
      *&v48[4] = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "WifiMgr, associated state changed to %{private}s", v48, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      sub_100C5CFB0(v37, v48);
      if (SBYTE3(v50) >= 0)
      {
        v26 = v48;
      }

      else
      {
        v26 = *v48;
      }

      LODWORD(__p[0]) = 136380675;
      *(__p + 4) = v26;
      v16 = _os_log_send_and_compose_impl();
      if (SBYTE3(v50) < 0)
      {
        operator delete(*v48);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientBssidChangeCallback(WiFiDeviceClientRef, WiFiNetworkRef)", "%s\n", v16);
      if (v16 != buf)
      {
LABEL_75:
        free(v16);
      }
    }
  }

  else
  {
    sub_1000F8F80(v37, &byte_102637A70);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "WifiMgr, onWiFiDeviceClientBssidChangeCallback, invalid roam network", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      *v48 = 0;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientBssidChangeCallback(WiFiDeviceClientRef, WiFiNetworkRef)", "%s\n", v16);
      if (v16 != buf)
      {
        goto LABEL_75;
      }
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v56 = 0;
  sub_10000EC00(v27, "");
  if (v11)
  {
    *v48 = v29;
    sub_10018F0D0(buf);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v56 = *&buf[16];
    v4 = DWORD2(v32);
    if (SHIBYTE(v31) < 0)
    {
      sub_100007244(buf, v30, *(&v30 + 1));
    }

    else
    {
      *buf = v30;
      *&buf[16] = v31;
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    *v27 = *buf;
    v28 = *&buf[16];
    LODWORD(v10) = v32;
  }

  else
  {
    LODWORD(v10) = 0;
    v4 = 0;
  }

  if (qword_1025D4620 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v19 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v20 = __p;
    if (v56 < 0)
    {
      v20 = __p[0];
    }

    v21 = v27;
    if (v28 < 0)
    {
      v21 = v27[0];
    }

    *buf = 67110147;
    *&buf[4] = v11;
    *&buf[8] = 2081;
    *&buf[10] = v20;
    *&buf[18] = 2081;
    *&buf[20] = v21;
    v58 = 1024;
    v59 = v4;
    v60 = 1024;
    v61 = v10;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "WifiMgr, roaming, associated, %d, ap, %{private}s, ssid, %{private}s, %d, %d", buf, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v23 = __p;
    if (v56 < 0)
    {
      v23 = __p[0];
    }

    v24 = v27;
    if (v28 < 0)
    {
      v24 = v27[0];
    }

    *v48 = 67110147;
    *&v48[4] = v11;
    *&v48[8] = 2081;
    *&v48[10] = v23;
    v49 = 2081;
    v50 = v24;
    v51 = 1024;
    v52 = v4;
    v53 = 1024;
    v54 = v10;
    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientBssidChangeCallback(WiFiDeviceClientRef, WiFiNetworkRef)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  *buf = 7;
  (*(*a1 + 152))(a1, buf, &v36, 0, 0xFFFFFFFFLL, 0);
  sub_1000F8F80((a1 + 70), (v3 + 4));
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  *buf = v3 + 56;
  sub_1000B96B4(buf);
  if (v41 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  os_activity_scope_leave(&state);
  return (*(*v7 + 24))(v7);
}

void sub_10059B3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, os_activity_scope_state_s state, char a50)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100318B88(&a31);
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_10059B46C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1 + 832;
  v16 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v17 = 256;
  v6 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientBgScanSuspendResumeCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientBgScanSuspendResumeCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 416);
    *buf = 67240448;
    v23 = a3;
    v24 = 2050;
    v25 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiMgr, resume, %{public}d, timestamp, %{public}.1f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v13 = *(a1 + 416);
    v18 = 67240448;
    v19 = a3;
    v20 = 2050;
    v21 = v13;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientBgScanSuspendResumeCallback(WiFiDeviceClientRef, Boolean)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v10 = *(a1 + 416);
  if (a3)
  {
    if (v10 < 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
LABEL_13:
      *(a1 + 416) = Current;
    }
  }

  else
  {
    Current = -1.0;
    if (v10 >= 0.0)
    {
      goto LABEL_13;
    }
  }

  os_activity_scope_leave(&state);
  return (*(*v5 + 24))(v5);
}

void sub_10059B74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a13);
  _Unwind_Resume(a1);
}

void sub_10059B784(uint64_t a1, uint64_t a2, int a3)
{
  v7 = -256;
  v8 = 0;
  v11 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  sub_100063E40(a1);
  BYTE3(v13) = a3;
  if (qword_1025D4620 != -1)
  {
    sub_1018CD624();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiMgr, network critical, %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v14 = 67109120;
    v15 = a3;
    v6 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClient24GHzNetworkInCriticalStateCallback(WiFiDeviceClientRef, BOOL)", "%s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  *buf = 13;
  (*(*a1 + 152))(a1, buf, &v7, 1, 0xFFFFFFFFLL, 0);
  *buf = v12 + 8;
  sub_1000B96B4(buf);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_10059B998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100318B88(va);
  _Unwind_Resume(a1);
}

void sub_10059B9BC(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const __CFArray *a4, int a5)
{
  v9 = _os_activity_create(dword_100000000, "CL: onWiFiDeviceClientScanCacheCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiDeviceClientScanCacheCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (!a4 || a5)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      *&buf[4] = a5;
      *&buf[8] = 2050;
      *&buf[10] = a4;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "WifiMgr, error, cache callback, %{public}d, %{public}p", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD5B4(buf);
      *v25 = 67240448;
      *&v25[4] = a5;
      *&v25[8] = 2050;
      *&v25[10] = a4;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiDeviceClientScanCacheCallback(WiFiDeviceClientRef, CFDictionaryRef, CFArrayRef, WiFiError)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    sub_100063E40(a1);
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      Count = CFArrayGetCount(a4);
      *buf = 134349056;
      *&buf[4] = Count;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "WifiMgr, onWiFiDeviceClientScanCacheCallback, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v15 = CFArrayGetCount(a4);
      *v25 = 134349056;
      *&v25[4] = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiDeviceClientScanCacheCallback(WiFiDeviceClientRef, CFDictionaryRef, CFArrayRef, WiFiError)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v21 = a1 + 832;
    (*(*(a1 + 832) + 16))();
    v23 = 256;
    sub_100005548(v20, a3);
    if ((atomic_load_explicit(&qword_102656F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656F70))
    {
      sub_10001CAF4(buf);
      v25[0] = 0;
      v17 = sub_10001CB4C(*buf, "printScanResultsCSV", v25);
      v18 = v17 & v25[0];
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      byte_102656F68 = v18;
      __cxa_guard_release(&qword_102656F70);
    }

    if (byte_102656F68 == 1)
    {
      sub_1004FFDC0(v20, "scanResults");
    }

    buf[0] = 5;
    sub_1002DC1B0(a1 + 764, buf);
    ++*(a1 + 764);
    *(a1 + 432) = 5;
    *(a1 + 440) = CFAbsoluteTimeGetCurrent();
    sub_10014E54C((a1 + 448));
    sub_1002E0A48(a1, a4, (a1 + 400), (a1 + 448), "cache");
    sub_1002E2588(a1, (a1 + 448), *(a1 + 432));
    if (*(a1 + 456) != *(a1 + 448))
    {
      buf[0] = 0;
      buf[8] = 0;
      v29 = 0;
      memset(v30, 0, sizeof(v30));
      v31 = 0;
      buf[1] = *(a1 + 432);
      (*(*a1 + 224))(a1, &v30[8], v30);
      sub_1002E1CB0(a1, v25);
      if (v27 == 1)
      {
        sub_1002DEB0C(&buf[8], v25);
      }

      v19 = 3;
      (*(*a1 + 152))(a1, &v19, buf, 1, 0xFFFFFFFFLL, 0);
      [*(a1 + 672) processEventTime:CFAbsoluteTimeGetCurrent()];
      if (v27 == 1 && v26 < 0)
      {
        operator delete(*&v25[8]);
      }

      *v25 = &v30[8];
      sub_1000B96B4(v25);
      if (v29 == 1 && buf[39] < 0)
      {
        operator delete(*&buf[16]);
      }
    }

    sub_100005DA4(v20);
    if (HIBYTE(v23) == 1)
    {
      if (v23)
      {
        pthread_mutex_unlock(v22);
      }

      else
      {
        (*(*v21 + 24))(v21);
      }
    }
  }

  os_activity_scope_leave(&state);
}

void sub_10059BFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 + 8);
  if (v38)
  {
    sub_100008080(v38);
  }

  __cxa_guard_abort(&qword_102656F70);
  sub_100005DA4(&a12);
  sub_1017EC98C(&a14);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_10059C0B4(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4)
{
  v104 = a1 + 832;
  (*(*(a1 + 832) + 16))();
  v106 = 256;
  v5 = _os_activity_create(dword_100000000, "CL: onWiFiManagerBackgroundScanCacheCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiManagerBackgroundScanCacheCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v7 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 284);
    v9 = *(a1 + 244);
    v10 = *(a1 + 245);
    v11 = *(a1 + 246);
    v13 = *(a1 + 236);
    v12 = *(a1 + 240);
    *buf = 67241472;
    *&buf[4] = v8;
    *&buf[8] = 1026;
    *&buf[10] = v12;
    *&buf[14] = 1026;
    *&buf[16] = v9;
    *&buf[20] = 1026;
    *&buf[22] = v10;
    *&buf[26] = 1026;
    *&buf[28] = v11;
    *&buf[32] = 1026;
    v115 = v13;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WsbReg, snap, clients, %{public}d, interval, %{public}d, active, %{public}d, rollover, %{public}d, sample, %{public}d, state, %{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    v73 = *(a1 + 284);
    v74 = *(a1 + 244);
    v75 = *(a1 + 245);
    v76 = *(a1 + 246);
    v78 = *(a1 + 236);
    v77 = *(a1 + 240);
    *v109 = 67241472;
    *&v109[4] = v73;
    *&v109[8] = 1026;
    *&v109[10] = v77;
    *&v109[14] = 1026;
    *&v109[16] = v74;
    *&v109[20] = 1026;
    *&v109[22] = v75;
    *&v109[26] = 1026;
    *&v109[28] = v76;
    LOWORD(v110) = 1026;
    *(&v110 + 2) = v78;
    v79 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v79);
    if (v79 != buf)
    {
      free(v79);
    }
  }

  if (!sub_100596AC4(a1))
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v14 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "@WsbCb, error, got WSB scans but not ready for WSB scans? Please audit the logic", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD6E0(buf);
      *v109 = 0;
      v81 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v81);
      if (v81 != buf)
      {
        free(v81);
      }
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (!a4)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v26 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "@WsbCb, count, 0", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      *v109 = 0;
      v84 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v84);
      if (v84 != buf)
      {
        free(v84);
      }
    }

    v86 = 0;
    goto LABEL_142;
  }

  Count = CFArrayGetCount(a4);
  [(__CFArray *)a4 objectAtIndexedSubscript:((Count << 32) - 0x100000000) >> 32];
  IntProperty = WiFiNetworkGetIntProperty();
  WiFiNetworkGetProperty();
  v86 = Count;
  if (Current - IntProperty > *(a1 + 504) || 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 520) - *(a1 + 512)) >> 3) != Count)
  {
    v22 = sub_10001A3E8();
    v23 = sub_10071A7C4(v22);
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v24 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      *&buf[4] = Count;
      *&buf[8] = 2050;
      *&buf[10] = Current;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "@WsbCb, count, %{public}d, currtime, %{public}.1f", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      *v109 = 67240448;
      *&v109[4] = Count;
      *&v109[8] = 2050;
      *&v109[10] = Current;
      v82 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v82);
      if (v82 != buf)
      {
        free(v82);
      }

      if ((Count & 0x80000000) == 0)
      {
LABEL_33:
        if (v23 >= Count)
        {
          goto LABEL_39;
        }
      }
    }

    else if ((Count & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v25 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      *&buf[4] = Count;
      *&buf[8] = 1026;
      *&buf[10] = v23;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "@WsbCb, out of range, %{public}d, max, %{public}d, #CloneMe", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018CD6E0(buf);
      *v109 = 67240448;
      *&v109[4] = Count;
      *&v109[8] = 1026;
      *&v109[10] = v23;
      v85 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v85);
      if (v85 != buf)
      {
        free(v85);
      }
    }

LABEL_39:
    *(a1 + 504) = Current;
    sub_10014E54C((a1 + 512));
    v100 = 0;
    v101 = 0;
    v102 = 0;
    if (byte_102637AD8[23] < 0)
    {
      sub_100007244(&__dst, *byte_102637AD8, *&byte_102637AD8[8]);
      *v109 = qword_102637AD0;
      if (byte_102637AD8[23] < 0)
      {
        sub_100007244(&v109[8], *byte_102637AD8, *&byte_102637AD8[8]);
LABEL_49:
        v110 = xmmword_102637AF0;
        v111 = xmmword_102637B00;
        v112 = xmmword_102637B10;
        v113 = qword_102637B20;
        if (Count < 1)
        {
          v65 = 0;
        }

        else
        {
          v27 = 0;
          v88 = 0;
          do
          {
            if (SHIBYTE(v102) < 0)
            {
              *v100 = 0;
              v101 = 0;
            }

            else
            {
              LOBYTE(v100) = 0;
              HIBYTE(v102) = 0;
            }

            v28 = a4;
            v29 = [(__CFArray *)a4 objectAtIndexedSubscript:v27];
            Property = WiFiNetworkGetProperty();
            sub_100005A24(Property, &v100);
            v31 = WiFiNetworkGetIntProperty();
            v32 = WiFiNetworkGetIntProperty();
            if (v29 && WiFiNetworkGetChannel())
            {
              v33 = off_102460F98[WiFiNetworkGetOperatingBand()];
            }

            else
            {
              v33 = "NA";
            }

            sub_10000EC00(v97, v33);
            v34 = WiFiNetworkGetIntProperty();
            v35 = WiFiNetworkGetIntProperty();
            IsApplePersonalHotspot = WiFiNetworkIsApplePersonalHotspot();
            v96 = 0;
            v37 = WiFiNetworkGetProperty();
            if (!v37 || (sub_1002DEACC(v37, &v96) & 1) == 0)
            {
              v96 = 0;
            }

            v38 = sub_100196E8C(&v100);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100007244(&v89, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              v89 = __dst;
            }

            __p = v89;
            memset(&v89, 0, sizeof(v89));
            v90 = v38;
            LODWORD(v92) = v31;
            *(&v92 + 4) = __PAIR64__(v32, v35);
            *&v93 = v34;
            *(&v93 + 1) = Current - v34;
            LOBYTE(v94) = IsApplePersonalHotspot != 0;
            BYTE1(v94) = 1;
            DWORD1(v94) = v96;
            BYTE8(v94) = 0;
            v95 = 0;
            a4 = v28;
            if (WiFiNetworkGetIntProperty())
            {
              BYTE8(v94) = 1;
              *v109 = v90;
              std::string::operator=(&v109[8], &__p);
              v110 = v92;
              v111 = v93;
              v112 = v94;
              v113 = v95;
              if (qword_1025D4630 != -1)
              {
                sub_1018CD6B8();
              }

              v39 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
              {
                sub_100C5CA98(&v90, buf);
                v40 = buf;
                if (buf[23] < 0)
                {
                  v40 = *buf;
                }

                *v108 = 136380675;
                *&v108[4] = v40;
                _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "@WsbCb, associated AP, %{private}s", v108, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018CD6E0(buf);
                sub_100C5CA98(&v90, v108);
                v41 = v108;
                if (v108[23] < 0)
                {
                  v41 = *v108;
                }

                LODWORD(v107.__r_.__value_.__l.__data_) = 136380675;
                *(v107.__r_.__value_.__r.__words + 4) = v41;
                v42 = _os_log_send_and_compose_impl();
                if ((v108[23] & 0x80000000) != 0)
                {
                  operator delete(*v108);
                }

                sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v42);
                if (v42 != buf)
                {
                  free(v42);
                }
              }
            }

            else
            {
              BYTE8(v94) = 0;
            }

            v95 = *&Current;
            if ((DWORD2(v92) - 257) >= 0xFFFFFF00 && *&v93 >= 0.0 && *&v93 <= 86400.0 && (*buf = v90, sub_10018D3FC(buf)))
            {
              v50 = *(a1 + 520);
              if (v50 >= *(a1 + 528))
              {
                v53 = sub_10014E208((a1 + 512), &v90);
                v54 = a1;
              }

              else
              {
                *v50 = v90;
                v51 = (v50 + 8);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100007244(v51, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                }

                else
                {
                  v52 = *&__p.__r_.__value_.__l.__data_;
                  *(v50 + 24) = *(&__p.__r_.__value_.__l + 2);
                  *v51 = v52;
                }

                v55 = v92;
                v56 = v93;
                v57 = v94;
                *(v50 + 80) = v95;
                *(v50 + 48) = v56;
                *(v50 + 64) = v57;
                *(v50 + 32) = v55;
                v53 = v50 + 88;
                v54 = a1;
                *(a1 + 520) = v50 + 88;
              }

              *(v54 + 520) = v53;
              [*(v54 + 672) processEventTime:Current - v34];
            }

            else
            {
              if (qword_1025D4630 != -1)
              {
                sub_1018CD6B8();
              }

              v43 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
              {
                v44 = DWORD2(v92);
                v45 = v93;
                v107.__r_.__value_.__r.__words[0] = v90;
                sub_1000ECD9C(v108);
                v46 = v108;
                if (v108[23] < 0)
                {
                  v46 = *v108;
                }

                *buf = 67240963;
                *&buf[4] = 1;
                *&buf[8] = 1026;
                *&buf[10] = v44;
                *&buf[14] = 2050;
                *&buf[16] = v45;
                *&buf[24] = 2081;
                *&buf[26] = v46;
                _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_ERROR, "@WsbCb, bad, %{public}d, channel, %{public}d, age, %{public}.0f, mac, %{private}s", buf, 0x22u);
                if ((v108[23] & 0x80000000) != 0)
                {
                  operator delete(*v108);
                }
              }

              ++v88;
              if (sub_10000A100(121, 0))
              {
                sub_1018CD6E0(buf);
                v61 = DWORD2(v92);
                v62 = v93;
                sub_1000ECD9C(&v107);
                v63 = &v107;
                if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v63 = v107.__r_.__value_.__r.__words[0];
                }

                *v108 = 67240963;
                *&v108[4] = 1;
                *&v108[8] = 1026;
                *&v108[10] = v61;
                *&v108[14] = 2050;
                *&v108[16] = v62;
                *&v108[24] = 2081;
                *&v108[26] = v63;
                v64 = _os_log_send_and_compose_impl();
                if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v107.__r_.__value_.__l.__data_);
                }

                sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v64);
                if (v64 != buf)
                {
                  free(v64);
                }
              }
            }

            if (qword_1025D4630 != -1)
            {
              sub_1018CD6B8();
            }

            v47 = qword_1025D4638;
            if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
            {
              sub_100C5CA98(&v90, v108);
              v48 = v108;
              if (v108[23] < 0)
              {
                v48 = *v108;
              }

              v49 = v97;
              if (v98 < 0)
              {
                v49 = v97[0];
              }

              *buf = 67240707;
              *&buf[4] = v27 + 1;
              *&buf[8] = 2081;
              *&buf[10] = v48;
              *&buf[18] = 2082;
              *&buf[20] = v49;
              _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "@WsbCb, AP, %{public}d, %{private}s, band, %{public}s", buf, 0x1Cu);
              if ((v108[23] & 0x80000000) != 0)
              {
                operator delete(*v108);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018CD6E0(buf);
              sub_100C5CA98(&v90, &v107);
              v58 = &v107;
              if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v58 = v107.__r_.__value_.__r.__words[0];
              }

              v59 = v97;
              if (v98 < 0)
              {
                v59 = v97[0];
              }

              *v108 = 67240707;
              *&v108[4] = v27 + 1;
              *&v108[8] = 2081;
              *&v108[10] = v58;
              *&v108[18] = 2082;
              *&v108[20] = v59;
              v60 = _os_log_send_and_compose_impl();
              if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v107.__r_.__value_.__l.__data_);
              }

              sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v60);
              if (v60 != buf)
              {
                free(v60);
              }
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v98 < 0)
            {
              operator delete(v97[0]);
            }

            ++v27;
          }

          while ((v86 & 0x7FFFFFFF) != v27);
          v65 = 4 * v88;
        }

        if (v65 < v86)
        {
          *buf = -256;
          buf[8] = 0;
          v117 = 0;
          memset(v118, 0, sizeof(v118));
          v119 = 0;
          sub_1002DEB0C(&buf[8], v109);
          HIDWORD(v119) = 1;
          (*(*a1 + 240))(a1, &v118[8], v118);
          LODWORD(v90) = 12;
          (*(*a1 + 152))(a1, &v90, buf, 0, 0xFFFFFFFFLL, 0);
          v90 = &v118[8];
          sub_1000B96B4(&v90);
          if (v117 == 1 && v116 < 0)
          {
            operator delete(*&buf[16]);
          }
        }

        if ((v109[31] & 0x80000000) != 0)
        {
          operator delete(*&v109[8]);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v102) < 0)
        {
          operator delete(v100);
        }

        v66 = v65 < v86;
        LODWORD(Count) = v86;
        if (!v66)
        {
          goto LABEL_143;
        }

LABEL_142:
        v67 = a1;
        goto LABEL_149;
      }
    }

    else
    {
      __dst = *byte_102637AD8;
      *v109 = qword_102637AD0;
    }

    *&v109[8] = *byte_102637AD8;
    *&v109[24] = *&byte_102637AD8[16];
    goto LABEL_49;
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v18 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 504);
    *buf = 134349568;
    *&buf[4] = Current - IntProperty;
    *&buf[12] = 2050;
    *&buf[14] = v19;
    *&buf[22] = 1026;
    *&buf[24] = Count;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "@WsbCb, duplicate, times, %{public}.1f, %{public}.1f, count, %{public}d, #CloneMe", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018CD6E0(buf);
    v20 = *(a1 + 504);
    *v109 = 134349568;
    *&v109[4] = Current - IntProperty;
    *&v109[12] = 2050;
    *&v109[14] = v20;
    *&v109[22] = 1026;
    *&v109[24] = Count;
    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

LABEL_143:
  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
    LODWORD(Count) = v86;
  }

  v68 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *&buf[4] = Count;
    _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "WsbMetric, groupresult, discard, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    *v109 = 67240192;
    *&v109[4] = v86;
    v83 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v83);
    if (v83 != buf)
    {
      free(v83);
    }
  }

  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
  v67 = a1;
  sub_10014E54C((a1 + 512));
  v86 = 0;
LABEL_149:
  v69 = *(v67 + 288);
  if (v69 <= 0.0)
  {
    v70 = -1;
  }

  else
  {
    v70 = (Current - v69);
  }

  if (*(v67 + 246))
  {
    v71 = "fake";
  }

  else if (*(v67 + 248))
  {
    v71 = "fences";
  }

  else
  {
    v71 = "off";
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v72 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240706;
    *&buf[4] = v86;
    *&buf[8] = 1026;
    *&buf[10] = v70;
    *&buf[14] = 2082;
    *&buf[16] = v71;
    _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "WsbMetric, callback, aps, %{public}d, delta, %{public}d, active, %{public}s", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    *v109 = 67240706;
    *&v109[4] = v86;
    *&v109[8] = 1026;
    *&v109[10] = v70;
    *&v109[14] = 2082;
    *&v109[16] = v71;
    v80 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCacheCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v80);
    if (v80 != buf)
    {
      free(v80);
    }
  }

  AnalyticsSendEventLazy();
  *(a1 + 288) = Current;
  os_activity_scope_leave(&state);
  if (HIBYTE(v106) == 1)
  {
    if (v106)
    {
      pthread_mutex_unlock(v105);
    }

    else
    {
      (*(*v104 + 24))(v104);
    }
  }
}

void sub_10059D914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a67);
  _Unwind_Resume(a1);
}

NSDictionary *sub_10059DA64(uint64_t a1)
{
  v2[1] = @"numInGroup";
  v3[0] = @"discard";
  v2[0] = @"groupResult";
  v3[1] = [NSNumber numberWithInt:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

NSDictionary *sub_10059DAFC(uint64_t a1)
{
  v2[1] = @"numInGroup";
  v3[0] = @"discard:badcb";
  v2[0] = @"groupResult";
  v3[1] = [NSNumber numberWithInt:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

NSDictionary *sub_10059DB94(uint64_t a1)
{
  v4[0] = @"aps";
  v5[0] = [NSNumber numberWithInt:*(a1 + 40)];
  v4[1] = @"delta";
  v5[1] = [NSNumber numberWithInt:*(a1 + 44)];
  v4[2] = @"active";
  v2 = [NSString stringWithUTF8String:*(a1 + 32)];
  v4[3] = @"daily";
  v5[2] = v2;
  v5[3] = &off_10254EB70;
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];
}

uint64_t sub_10059DC70(_BYTE *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = a1 + 832;
  v23 = a1 + 832;
  (*(*(a1 + 104) + 16))(a1 + 832);
  v24 = 256;
  v7 = _os_activity_create(dword_100000000, "CL: onWiFiManagerBackgroundScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiManagerBackgroundScanCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD638();
  }

  v9 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 31);
    *buf = 134218240;
    *&buf[4] = a4;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Got background scan callback, networks, %p, Exit / Entry notification, gfNetworks, %ld", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    v16 = *(a1 + 31);
    *v25 = 134218240;
    *&v25[4] = a4;
    v26 = 2048;
    v27 = v16;
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  CFShow(a4);
  sub_10014E54C(a1 + 60);
  *(a1 + 59) = CFAbsoluteTimeGetCurrent();
  if (a4)
  {
    *buf = 0xBFF0000000000000;
    sub_10014E54C(a1 + 60);
    sub_1002E0A48(a1, a4, buf, a1 + 60, "get");
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 61) - *(a1 + 60)) >> 3);
      *buf = 134217984;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%ld background scan entry results", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v18 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 61) - *(a1 + 60)) >> 3);
      *v25 = 134217984;
      *&v25[4] = v18;
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v13 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "issue kNotificationBackgroundEntry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      *v25 = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    *buf = -256;
    buf[8] = 0;
    v30 = 0;
    memset(v31, 0, sizeof(v31));
    v32 = 0;
    (*(*a1 + 232))(a1, &v31[8], v31);
    *v25 = 8;
    (*(*a1 + 152))(a1, v25, buf, 0, 0xFFFFFFFFLL, 0);
    *v25 = &v31[8];
    sub_1000B96B4(v25);
    if (v30 == 1 && v29 < 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "issue kNotificationBackgroundExit", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      *v25 = 0;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    *buf = 9;
    (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
  }

  if (sub_1005983D8(a1, a4))
  {
    a1[246] = 0;
    sub_100597514(a1, 1);
  }

  if (sub_100071CA0())
  {
    sub_10004FD18(buf);
    v25[0] = a4 != 0;
    sub_100043360(buf, "ePNOEnter", v25);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4(buf);
  }

  os_activity_scope_leave(&state);
  return (*(*v6 + 24))(v6);
}

void sub_10059E418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10059E490(uint64_t a1)
{
  v2 = a1 + 832;
  v25 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v26 = 256;
  v3 = _os_activity_create(dword_100000000, "CL: onWiFiManagerRestartCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v32 = 0;
    v33 = 2082;
    v34 = "";
    v35 = 2082;
    v36 = "activity";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiManagerRestartCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiNotify, WifiManagerRestart", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    LOWORD(v16) = 0;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerRestartCallback(WiFiManagerClientRef)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  sub_100599BF8(a1, &v23);
  v16 = qword_102637AD0;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&__p, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    __p = *byte_102637AD8;
    v18 = *&byte_102637AD8[16];
  }

  v19 = xmmword_102637AF0;
  v20 = xmmword_102637B00;
  v21 = xmmword_102637B10;
  v22 = qword_102637B20;
  if (!sub_1005954EC(a1, &v16))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Failed to query associated network", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      LOWORD(v27) = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerRestartCallback(WiFiManagerClientRef)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  sub_1005915A8(a1);
  sub_10059EA50(a1);
  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 284);
    v9 = *(a1 + 720);
    *buf = 67240448;
    v32 = v8;
    v33 = 2050;
    v34 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WsbReg, wifirestart, clients, %{public}d, %{public}ld", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v12 = *(a1 + 284);
    v13 = *(a1 + 720);
    v27 = 67240448;
    v28 = v12;
    v29 = 2050;
    v30 = v13;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerRestartCallback(WiFiManagerClientRef)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (*(a1 + 284) >= 1)
  {
    *(a1 + 236) = 0;
    sub_100592C18(a1);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  return (*(*v2 + 24))(v2);
}

void sub_10059E9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state, char a28)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  sub_1017EC98C(&a28);
  _Unwind_Resume(a1);
}

void sub_10059EA50(uint64_t a1)
{
  if (*(a1 + 296) && *(a1 + 304))
  {
    v2 = *(a1 + 536);
    if (v2)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v2);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    }

    v7 = MutableCopy;
    v8 = *(a1 + 544);
    if (v8)
    {
      v24.length = CFArrayGetCount(*(a1 + 544));
      v24.location = 0;
      CFArrayAppendArray(v7, v8, v24);
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      Count = CFArrayGetCount(v7);
      v12 = *(a1 + 296);
      v11 = *(a1 + 304);
      *buf = 134218496;
      v19 = Count;
      v20 = 2048;
      v21 = v11;
      v22 = 2048;
      v23 = v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Setting %ld background scan networks, fWifiManager, %p, fDpcSource, %p", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      CFArrayGetCount(v7);
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::setBackgroundScanNetworksInternal()", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    if (*(a1 + 304))
    {
      v13 = (*(**(a1 + 848) + 16))(*(a1 + 848), v7);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v14 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 296);
        v15 = *(a1 + 304);
        *buf = 134349312;
        v19 = v15;
        v20 = 2050;
        v21 = v16;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "WifiService, fWifiManager is NULL, %{public}p, fDpcSource, %{public}p", buf, 0x16u);
      }

      v13 = sub_10000A100(121, 0);
      if (v13)
      {
        sub_1018CFA50();
      }
    }

    sub_1005A2114(v13, v7);
    CFRelease(v7);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 296);
      v5 = *(a1 + 304);
      *buf = 134218240;
      v19 = v5;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning avoid setBackgroundScanNetworksInternal, fWifiManager is NULL, %p, fDpcSource, %p, shutdown?", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CFB60();
    }
  }
}

uint64_t sub_10059EE74(uint64_t a1, int a2, int *a3, int *a4)
{
  sub_10059F2B4(a1, a2, a3, a4);
  if (*a3 == 12)
  {
    sub_10001A3E8();
    if (sub_10071A480())
    {
      *buf = *a3;
      v8 = sub_10000608C(a1, buf, 1);
      if (v8 == *(a1 + 284))
      {
        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v9 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a4 + 1);
          v11 = *a4;
          v12 = *(a4 + 4);
          v13 = *(a4 + 5);
          *buf = 67241474;
          v23 = v8;
          v24 = 1026;
          v25 = a2;
          v26 = 2082;
          v27 = v10;
          v28 = 1026;
          v29 = v11;
          v30 = 1026;
          v31 = v12;
          v32 = 1026;
          v33 = v13;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@WsbReg, clients, %{public}d, same, idname, %{public}d, %{public}s, rate, %{public}d, active, %{public}d, rollover, %{public}d", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4630 != -1)
          {
            sub_1018CD6B8();
          }

          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiService::registerForNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::RegInfo &)", "%s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v15 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a4 + 1);
          v17 = *a4;
          v18 = *(a4 + 4);
          v19 = *(a4 + 5);
          *buf = 67241474;
          v23 = v8;
          v24 = 1026;
          v25 = a2;
          v26 = 2082;
          v27 = v16;
          v28 = 1026;
          v29 = v17;
          v30 = 1026;
          v31 = v18;
          v32 = 1026;
          v33 = v19;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@WsbReg, clients, %{public}d, plus, idname, %{public}d, %{public}s, rate, %{public}d, active, %{public}d, rollover, %{public}d", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4630 != -1)
          {
            sub_1018CD6B8();
          }

          v21 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiService::registerForNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::RegInfo &)", "%s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        sub_10059F6DC(a1, *(a4 + 1), a2, 0);
        sub_100592C18(a1);
        *(a1 + 284) = v8;
      }

      sub_10004E764(a1, "reg");
    }
  }

  return 1;
}

uint64_t sub_10059F2B4(uint64_t a1, int a2, int *a3, _OWORD *a4)
{
  v27 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v26 = v10;
      v13 = *a3;
      v16 = *(v10 + 48);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 28) >= v13)
        {
          v17 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v13));
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 28))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 64);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 32) >= v13)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < v13));
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 32))
      {
        v25 = *(v19 + 56);
        *buf = &v27;
        *(sub_1002E3414(v19 + 40, &v27) + 5) = *a4;
        *buf = -256;
        buf[8] = 0;
        v33 = 0;
        memset(v34, 0, sizeof(v34));
        v35 = 0;
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1005A4B64();
        }

        v28 = &v34[8];
        sub_1000B96B4(&v28);
        if (v33 == 1 && v32 < 0)
        {
          operator delete(*(__p + 2));
        }

        if (v25)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = a1 + 56;
        v21 = byte_1025D70C0;
        LODWORD(v28) = *a3;
        *buf = &v28;
        *(sub_100024014(a1 + 56, &v28) + 80) = v21;
        LODWORD(v28) = *a3;
        *buf = &v28;
        v22 = sub_100024014(a1 + 56, &v28);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        LODWORD(v28) = *a3;
        *buf = &v28;
        v24 = sub_100024014(v20, &v28);
        *buf = &v27;
        *(sub_1002E3414((v24 + 5), &v27) + 5) = *a4;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410(v26 + 40, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v30 = 1026;
    __p[0] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018CFC70();
    return 0;
  }

  return result;
}

void sub_10059F6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100318B88(va);
  _Unwind_Resume(a1);
}

void sub_10059F6DC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a1;
  v104[0] = a3;
  if (*(a1 + 688) == 0.0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v12 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v4 + 284);
      v14 = *(v4 + 246);
      *buf = 67240448;
      *&buf[4] = v13;
      *&buf[8] = 1026;
      *&buf[10] = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "WsbClients, status, holdoff, clients, %{public}d, samplescan, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CFD7C(v4);
    }
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(v4 + 688);
    v7 = *(v4 + 696);
    v8 = *(v4 + 720);
    sub_1004C01C8(&v100);
    std::ostream::operator<<();
    sub_10003DD04(&v101, &v98);
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v9 = qword_1025D4638;
    v10 = (Current - v6) / 60.0;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v11 = &v98;
      if (v99 < 0)
      {
        v11 = v98;
      }

      *buf = 136446466;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      v112 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WsbMetric, clients, %{public}s, delta, %{public}.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      v59 = &v98;
      if (v99 < 0)
      {
        v59 = v98;
      }

      *v108 = 136446466;
      *&v108[4] = v59;
      *&v108[12] = 2050;
      *&v108[14] = v10;
      v60 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

    v91 = _NSConcreteStackBlock;
    v92 = 3321888768;
    v93 = sub_1005A09C4;
    v94 = &unk_102460C48;
    if (SHIBYTE(v99) < 0)
    {
      sub_100007244(&v95, v98, *(&v98 + 1));
    }

    else
    {
      v95 = v98;
      v96 = v99;
    }

    v97 = v10;
    AnalyticsSendEventLazy();
    if (v8 >= 1)
    {
      v67 = v4;
      if ((Current - v7) / 60.0 >= 1.0)
      {
        v15 = *(v4 + 728);
        v16 = "active:off";
        if (v15 == 1)
        {
          v16 = "active:fences";
        }

        if (v15 == 2)
        {
          v17 = "active:fake";
        }

        else
        {
          v17 = v16;
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v18 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = v17;
          *&buf[12] = 2050;
          v112 = (Current - v7) / 60.0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v108 = 136446466;
          *&v108[4] = v17;
          *&v108[12] = 2050;
          *&v108[14] = (Current - v7) / 60.0;
          v61 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v61);
          if (v61 != buf)
          {
            free(v61);
          }
        }

        v85 = _NSConcreteStackBlock;
        v86 = 3221225472;
        v87 = sub_1005A0AB8;
        v88 = &unk_102451C38;
        v89 = v17;
        v90 = (Current - v7) / 60.0;
        AnalyticsSendEventLazy();
      }

      if (v10 >= 1.0)
      {
        v21 = *(v4 + 732);
        v22 = "rollover:off";
        if (v21 == 1)
        {
          v22 = "rollover:partial";
        }

        if (v21 == 2)
        {
          v23 = "rollover:all";
        }

        else
        {
          v23 = v22;
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v24 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = v23;
          *&buf[12] = 2050;
          v112 = v10;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v108 = 136446466;
          *&v108[4] = v23;
          *&v108[12] = 2050;
          *&v108[14] = v10;
          v62 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v62);
          if (v62 != buf)
          {
            free(v62);
          }
        }

        v79 = _NSConcreteStackBlock;
        v80 = 3221225472;
        v81 = sub_1005A0B78;
        v82 = &unk_102451C38;
        v83 = v23;
        v84 = v10;
        AnalyticsSendEventLazy();
        if (*(v4 + 736))
        {
          v25 = "profile:dynamic";
        }

        else
        {
          v25 = "profile:standard";
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v26 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = v25;
          *&buf[12] = 2050;
          v112 = v10;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v108 = 136446466;
          *&v108[4] = v25;
          *&v108[12] = 2050;
          *&v108[14] = v10;
          v63 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v63);
          if (v63 != buf)
          {
            free(v63);
          }
        }

        v73 = _NSConcreteStackBlock;
        v74 = 3221225472;
        v75 = sub_1005A0C38;
        v76 = &unk_102451C38;
        v77 = v25;
        v78 = v10;
        AnalyticsSendEventLazy();
        v27 = *(v4 + 704);
        v28 = (v4 + 712);
        if (v27 != (v4 + 712))
        {
          do
          {
            sub_1004C01C8(v108);
            v31 = sub_100038730(v108, "client:", 7);
            v32 = strlen(v27[5]);
            sub_100038730(v31, v27[5], v32);
            sub_10003DD04(&v108[8], v71);
            v4 = v67;
            if (qword_1025D4630 != -1)
            {
              sub_1018CD6B8();
            }

            v33 = qword_1025D4638;
            if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
            {
              v34 = v71;
              if (v72 < 0)
              {
                v34 = v71[0];
              }

              *buf = 136446466;
              *&buf[4] = v34;
              *&buf[12] = 2050;
              v112 = v10;
              _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018CD6E0(buf);
              v38 = v71;
              if (v72 < 0)
              {
                v38 = v71[0];
              }

              v104[1] = 136446466;
              v105 = v38;
              v106 = 2050;
              v107 = v10;
              v39 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v39);
              if (v39 != buf)
              {
                free(v39);
              }
            }

            if (SHIBYTE(v72) < 0)
            {
              sub_100007244(&__p, v71[0], v71[1]);
            }

            else
            {
              __p = *v71;
              v69 = v72;
            }

            v70 = v10;
            AnalyticsSendEventLazy();
            if (SHIBYTE(v69) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v72) < 0)
            {
              operator delete(v71[0]);
            }

            *v108 = v29;
            *&v108[*(v29 - 24)] = v30;
            if (v110 < 0)
            {
              operator delete(v109);
            }

            std::locale::~locale(&v108[16]);
            std::ostream::~ostream();
            std::ios::~ios();
            v35 = v27[1];
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
                v36 = v27[2];
                v37 = *v36 == v27;
                v27 = v36;
              }

              while (!v37);
            }

            v27 = v36;
          }

          while (v36 != v28);
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v40 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v10;
          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, total, duration, %{public}.1f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v108 = 134349056;
          *&v108[4] = v10;
          v64 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v64);
          if (v64 != buf)
          {
            free(v64);
          }

          v4 = v67;
        }

        AnalyticsSendEventLazy();
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v19 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, subminute", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v108 = 0;
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }
      }
    }

    *(v4 + 688) = Current;
    *(v4 + 696) = Current;
    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95);
    }

    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98);
    }

    if (v103 < 0)
    {
      operator delete(v102[7].__locale_);
    }

    std::locale::~locale(v102);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (a4)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v41 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(v4 + 284);
      v43 = *(v4 + 246);
      *buf = 67240448;
      *&buf[4] = v42;
      *&buf[8] = 1026;
      *&buf[10] = v43;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "WsbClients, status, reportonly, clients, %{public}d, dummyscan, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CFE98(v4);
    }
  }

  else
  {
    v44 = *(v4 + 64);
    if (!v44)
    {
      goto LABEL_133;
    }

    v45 = v4 + 64;
    do
    {
      if (*(v44 + 32) >= 12)
      {
        v45 = v44;
      }

      v44 = *(v44 + 8 * (*(v44 + 32) < 12));
    }

    while (v44);
    if (v45 != v4 + 64 && *(v45 + 32) <= 12 && (v46 = *(v45 + 56)) != 0)
    {
      v47 = *(v45 + 40);
      v48 = (v45 + 48);
      if (v47 == (v45 + 48))
      {
        v58 = 0;
        *(v4 + 732) = 0;
      }

      else
      {
        v49 = 0;
        v50 = 0;
        v51 = *(v4 + 736);
        do
        {
          v52 = v47[1];
          v53 = v47;
          if (v52)
          {
            do
            {
              v54 = v52;
              v52 = *v52;
            }

            while (v52);
          }

          else
          {
            do
            {
              v54 = v53[2];
              v37 = *v54 == v53;
              v53 = v54;
            }

            while (!v37);
          }

          v49 += *(v47 + 45);
          v55 = *(v47 + 44) | v50 & 1;
          v50 = *(v47 + 44) & 1 | v50 & 1;
          v51 |= *(v47 + 10) < 3600;
          v47 = v54;
        }

        while (v54 != v48);
        *(v4 + 736) = v51;
        if (v46 == v49)
        {
          v56 = 2;
        }

        else
        {
          v56 = 1;
        }

        if (v49)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        *(v4 + 732) = v57;
        if (v55)
        {
          if (*(v4 + 246))
          {
            v58 = 2;
          }

          else
          {
            v58 = 1;
          }
        }

        else
        {
          v58 = 0;
        }
      }

      *(v4 + 728) = v58;
    }

    else
    {
LABEL_133:
      sub_1003C93BC(v4 + 704, *(v4 + 712));
      *(v4 + 704) = v4 + 712;
      *(v4 + 712) = 0u;
      *(v4 + 728) = 0;
      *(v4 + 736) = 0;
    }

    if (a2)
    {
      *buf = v104;
      sub_1005A4D14(v4 + 704, v104)[5] = a2;
    }

    else
    {
      sub_10011753C(v4 + 704, v104);
    }
  }
}

void sub_1005A08D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

NSDictionary *sub_1005A09C4(uint64_t a1)
{
  v4[0] = @"clients";
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  v4[1] = @"duration";
  v5[0] = [NSString stringWithUTF8String:v2];
  v5[1] = [NSNumber numberWithDouble:*(a1 + 56)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

_BYTE *sub_1005A0A78(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100007244(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_1005A0AA4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

NSDictionary *sub_1005A0AB8(uint64_t a1)
{
  v4[0] = @"active";
  v3[0] = @"mode";
  v3[1] = @"submode";
  v4[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[2] = @"duration";
  v4[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_1005A0B78(uint64_t a1)
{
  v4[0] = @"rollover";
  v3[0] = @"mode";
  v3[1] = @"submode";
  v4[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[2] = @"duration";
  v4[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_1005A0C38(uint64_t a1)
{
  v4[0] = @"profile";
  v3[0] = @"mode";
  v3[1] = @"submode";
  v4[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[2] = @"duration";
  v4[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_1005A0CF8(uint64_t a1)
{
  v5[0] = @"client";
  v4[0] = @"mode";
  v4[1] = @"submode";
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  v5[1] = [NSString stringWithUTF8String:v2];
  v4[2] = @"duration";
  v5[2] = [NSNumber numberWithDouble:*(a1 + 56)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
}

NSDictionary *sub_1005A0DC4(uint64_t a1)
{
  v2[0] = @"mode";
  v2[1] = @"submode";
  v3[0] = @"total";
  v3[1] = @"total";
  v2[2] = @"duration";
  v3[2] = [NSNumber numberWithDouble:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:3];
}

BOOL sub_1005A0E68(void *a1, uint64_t a2)
{
  v4 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  if (!a1[39] || !a1[38])
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(theArray[0]) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning no device / manager", theArray, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(theArray);
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getHostedNetwork(CLWifiService_Type::AccessPoint &) const", "%s\n", v12);
      if (v12 != theArray)
      {
        free(v12);
      }
    }

    goto LABEL_15;
  }

  theArray[0] = 0;
  if (WiFiDeviceClientCopyHostedNetworks())
  {
    v5 = 1;
  }

  else
  {
    v5 = theArray[0] == 0;
  }

  if (v5)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = CFArrayGetCount(0) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 0), v7 = CFGetTypeID(ValueAtIndex), TypeID = WiFiNetworkGetTypeID(), v7 == TypeID) && sub_1002DEC54(TypeID, ValueAtIndex, a2, 1);
  CFRelease(theArray[0]);
LABEL_16:
  (*(*v4 + 24))(v4);
  return v9;
}

void sub_1005A10B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A10F4()
{
  v4 = 0;
  sub_10001CAF4(&v2);
  v0 = sub_10005BBE4(v2, "WifiScanIterations", &v4);
  if (v3)
  {
    sub_100008080(v3);
  }

  if (v0)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

void sub_1005A1158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A1170()
{
  v4 = 0;
  sub_10001CAF4(&v2);
  v0 = sub_10005BBE4(v2, "WifiScanDwellTime", &v4);
  if (v3)
  {
    sub_100008080(v3);
  }

  if (v0)
  {
    return v4;
  }

  else
  {
    return 110;
  }
}

void sub_1005A11D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *sub_1005A11F0(uint64_t a1, int a2, int a3, int a4, _DWORD **a5, void *a6, uint64_t a7, int a8, char a9)
{
  v37 = a3;
  v38 = a2;
  v35 = a7;
  valuePtr = a4;
  v34 = a8;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v37);
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v35);
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v38);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &unk_101C7F784);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v34);
  v17 = v16;
  if (v11)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v13 == 0 || v14 == 0 || v15 == 0 || v16 == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 134350336;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      *&buf[14] = v12;
      *&buf[22] = 2050;
      *&buf[24] = v13;
      *v50 = 2050;
      *&v50[2] = v14;
      *&v50[10] = 2050;
      *&v50[12] = v15;
      *&v50[20] = 2050;
      *&v50[22] = v17;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "could not create scan params mode %{public}p type %{public}p dwell %{public}p scans %{public}p flag %{public}p age %{public}p", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v39 = 134350336;
      *v40 = v11;
      *&v40[8] = 2050;
      v41 = v12;
      *v42 = 2050;
      *&v42[2] = v13;
      v43 = 2050;
      v44 = v14;
      v45 = 2050;
      v46 = v15;
      v47 = 2050;
      v48 = v17;
      v29 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = const int *]", "%s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    Mutable = 0;
  }

  else
  {
    v31 = a6;
    *buf = kCFBooleanFalse;
    *&buf[8] = kCFBooleanTrue;
    *&buf[16] = v11;
    *&buf[24] = v12;
    *v50 = v13;
    *&v50[8] = v14;
    if (a9)
    {
      v25 = kCFBooleanTrue;
    }

    else
    {
      v25 = kCFBooleanFalse;
    }

    *&v50[16] = v16;
    *&v50[24] = v25;
    v51 = kCFBooleanFalse;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    for (i = 0; i != 9; ++i)
    {
      CFDictionarySetValue(Mutable, off_102460F28[i], *&buf[i * 8]);
    }

    if (*a5 != *v31)
    {
      sub_1005A4DE8(a1, a5, v31, v15, Mutable);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!Mutable)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v27 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v38;
      *&buf[8] = 1024;
      *&buf[10] = v37;
      *&buf[14] = 1024;
      *&buf[16] = valuePtr;
      *&buf[20] = 2048;
      *&buf[22] = a7;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "#Warning failed to create scan options (numScans=%d, scan_type=%d, scanModes=%d, dwellTime=%lld)", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v39 = 67109888;
      *v40 = v38;
      *&v40[4] = 1024;
      *&v40[6] = v37;
      LOWORD(v41) = 1024;
      *(&v41 + 2) = valuePtr;
      HIWORD(v41) = 2048;
      *v42 = a7;
      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = const int *]", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  return Mutable;
}

__CFDictionary *sub_1005A171C(uint64_t a1, int a2, int a3, int a4, _DWORD **a5, void *a6, uint64_t a7, int a8, char a9)
{
  v37 = a3;
  v38 = a2;
  v35 = a7;
  valuePtr = a4;
  v34 = a8;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v37);
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v35);
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v38);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &unk_101C7F788);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v34);
  v17 = v16;
  if (v11)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v13 == 0 || v14 == 0 || v15 == 0 || v16 == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 134350336;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      *&buf[14] = v12;
      *&buf[22] = 2050;
      *&buf[24] = v13;
      *v50 = 2050;
      *&v50[2] = v14;
      *&v50[10] = 2050;
      *&v50[12] = v15;
      *&v50[20] = 2050;
      *&v50[22] = v17;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "could not create scan params mode %{public}p type %{public}p dwell %{public}p scans %{public}p flag %{public}p age %{public}p", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v39 = 134350336;
      *v40 = v11;
      *&v40[8] = 2050;
      v41 = v12;
      *v42 = 2050;
      *&v42[2] = v13;
      v43 = 2050;
      v44 = v14;
      v45 = 2050;
      v46 = v15;
      v47 = 2050;
      v48 = v17;
      v29 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = int *]", "%s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    Mutable = 0;
  }

  else
  {
    v31 = a6;
    *buf = kCFBooleanFalse;
    *&buf[8] = kCFBooleanTrue;
    *&buf[16] = v11;
    *&buf[24] = v12;
    *v50 = v13;
    *&v50[8] = v14;
    if (a9)
    {
      v25 = kCFBooleanTrue;
    }

    else
    {
      v25 = kCFBooleanFalse;
    }

    *&v50[16] = v16;
    *&v50[24] = v25;
    v51 = kCFBooleanFalse;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    for (i = 0; i != 9; ++i)
    {
      CFDictionarySetValue(Mutable, off_102460F28[i], *&buf[i * 8]);
    }

    if (*a5 != *v31)
    {
      sub_1005A50CC(a1, a5, v31, v15, Mutable);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!Mutable)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v27 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v38;
      *&buf[8] = 1024;
      *&buf[10] = v37;
      *&buf[14] = 1024;
      *&buf[16] = valuePtr;
      *&buf[20] = 2048;
      *&buf[22] = a7;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "#Warning failed to create scan options (numScans=%d, scan_type=%d, scanModes=%d, dwellTime=%lld)", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v39 = 67109888;
      *v40 = v38;
      *&v40[4] = 1024;
      *&v40[6] = v37;
      LOWORD(v41) = 1024;
      *(&v41 + 2) = valuePtr;
      HIWORD(v41) = 2048;
      *v42 = a7;
      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = int *]", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  return Mutable;
}

uint64_t sub_1005A1C48(void *a1, uint64_t *a2, void *a3)
{
  v6 = a1 + 104;
  v23 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v24 = 256;
  v7 = a1[60];
  v8 = a1[61];
  if (v7 != v8)
  {
    v9 = (v7 + 8);
    do
    {
      v10 = v9 - 8;
      v16 = *(v9 - 1);
      if (*(v9 + 23) < 0)
      {
        sub_100007244(&__p, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        v18 = *(v9 + 2);
        __p = v11;
      }

      v12 = *(v9 + 24);
      v13 = *(v9 + 40);
      v14 = *(v9 + 56);
      v22 = *(v9 + 9);
      v20 = v13;
      v21 = v14;
      v19 = v12;
      sub_1002E1AB4(a2, &v16);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p);
      }

      v9 = (v9 + 88);
    }

    while (v10 + 88 != v8);
  }

  *a3 = a1[59];
  return (*(a1[104] + 24))(v6);
}

uint64_t sub_1005A1DB4(void *a1, uint64_t *a2, void *a3)
{
  v6 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  if (a1 + 64 != a2)
  {
    sub_100288978(a2, a1[64], a1[65], 0x2E8BA2E8BA2E8BA3 * ((a1[65] - a1[64]) >> 3));
  }

  *a3 = a1[63];
  return (*(a1[104] + 24))(v6);
}

void sub_1005A1E8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A1EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    sub_100007244(__dst, *a5, *(a5 + 8));
  }

  else
  {
    *__dst = *a5;
    v14 = *(a5 + 16);
  }

  LOBYTE(__p[0]) = 0;
  v12 = 0;
  v9 = (*(*a1 + 256))(a1, a2, a3, 0, a4, __dst, __p);
  if (v12 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  return v9;
}

void sub_1005A1F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12 == 1)
  {
    sub_1018CD5F8(&a9);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A1FBC(uint64_t a1, uint64_t *a2, CFTypeRef *a3, int a4)
{
  result = CFArrayCreateMutable(kCFAllocatorDefault, 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3), &kCFTypeArrayCallBacks);
  *a3 = result;
  if (result)
  {
    v8 = *a2;
    v9 = a2[1];
    if (*a2 == v9)
    {
      return 1;
    }

    else
    {
      v10 = result;
      while (1)
      {
        value = 0;
        if (!sub_1005A2518(result, v8, &value, a4))
        {
          break;
        }

        v11 = value;
        if (!value)
        {
          break;
        }

        CFArrayAppendValue(v10, value);
        CFRelease(v11);
        v8 += 88;
        if (v8 == v9)
        {
          return 1;
        }
      }

      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v12 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v13 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "WifiService, create background network failed", &v13, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D01AC();
      }

      CFRelease(*a3);
      result = 0;
      *a3 = 0;
    }
  }

  return result;
}

void sub_1005A2114(uint64_t a1, void *a2)
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:14];
  if ([a2 count])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      [a2 objectAtIndexedSubscript:v4];
      IntProperty = WiFiNetworkGetIntProperty();
      v7 = IntProperty;
      if ((IntProperty - 1) > 0xC)
      {
        v5 |= IntProperty > 14;
      }

      else
      {
        [(NSMutableDictionary *)v3 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], [NSNumber numberWithInt:IntProperty]];
      }

      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v14 = v7;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "gfmetrics, channel, %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D0290(&v21, v7, v22);
      }

      ++v4;
    }

    while ([a2 count] > v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = [-[NSMutableDictionary allKeys](v3 "allKeys")];
  v10 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:&off_10254EB70]&& [(NSMutableDictionary *)v3 objectForKeyedSubscript:&off_10254EB88]&& [(NSMutableDictionary *)v3 objectForKeyedSubscript:&off_10254EBA0]!= 0;
  if ((v9 > 0) | v5 & 1)
  {
    v19[0] = @"Channels";
    v20[0] = [NSNumber numberWithInt:v9];
    v19[1] = @"1_6_11";
    v20[1] = [NSNumber numberWithBool:v10];
    v19[2] = @"Non24GHz";
    v20[2] = [NSNumber numberWithBool:v5 & 1];
    [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
    AnalyticsSendEvent();
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v14 = v9;
      v15 = 1024;
      v16 = v10;
      v17 = 1024;
      v18 = v5 & 1;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "gfmetrics, Channels, %d, 1_6_11, %d, Non24GHz, %d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::collectChannelMetrics(NSArray *)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }
}