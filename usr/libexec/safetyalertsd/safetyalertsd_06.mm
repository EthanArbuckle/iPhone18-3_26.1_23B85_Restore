void sub_10006DEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_10006E900(&a40);

  _Unwind_Resume(a1);
}

void sub_10006E00C(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0xAF8AF8AF8AF8AF8BLL * ((v5 - *a1) >> 3);
    if (v7 + 1 > 0xEA0EA0EA0EA0EALL)
    {
      sub_10000509C();
    }

    v8 = 0xAF8AF8AF8AF8AF8BLL * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x75075075075075)
    {
      v10 = 0xEA0EA0EA0EA0EALL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10006EAA8(a1, v10);
    }

    v11 = 8 * ((v5 - *a1) >> 3);
    sub_10006E99C(v11, a2);
    v12 = *a1;
    v13 = a1[1];
    v14 = *a1 - v13;
    v15 = v11 + v14;
    if (v13 != *a1)
    {
      v16 = *a1;
      v17 = v11 + v14;
      do
      {
        sub_10006E99C(v17, v16);
        v16 += 280;
        v17 += 280;
      }

      while (v16 != v13);
      do
      {
        sub_10006E900(v12);
        v12 += 280;
      }

      while (v12 != v13);
      v12 = *a1;
    }

    v6 = v11 + 280;
    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    sub_10006E99C(a1[1], a2);
    v6 = v5 + 280;
  }

  a1[1] = v6;
}

void sub_10006E188(uint64_t *a1)
{
  v15 = 0;
  __p = 0;
  v29 = 0;
  *v16 = 0u;
  *v17 = 0u;
  v18 = 0u;
  *v19 = 0u;
  *v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v30 = 0;
  v31 = 0x4059000000000000;
  memset(v32, 0, sizeof(v32));
  v33 = 0x4059000000000000;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT) && (*buf = 68289026, LOWORD(v38) = 2082, *(&v38 + 2) = "", _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#apns,setDefaultConfigurationValueIfMAFails}", buf, 0x12u), SHIBYTE(v17[0]) < 0))
  {
    v16[1] = 3;
    v3 = v16[0];
  }

  else
  {
    v3 = v16;
    HIBYTE(v17[0]) = 3;
  }

  *v3 = 4281173;
  sub_10001D06C(v19, "com.apple.aps.mantis.safetyalert", 0x20uLL);
  if (SHIBYTE(v18) < 0)
  {
    *&v18 = 3;
    v4 = v17[1];
  }

  else
  {
    v4 = &v17[1];
    HIBYTE(v18) = 3;
  }

  *v4 = 4281173;
  if (SHIBYTE(v21) < 0)
  {
    *&v21 = 7;
    v5 = v20[1];
  }

  else
  {
    v5 = &v20[1];
    HIBYTE(v21) = 7;
  }

  strcpy(v5, "LivEwus");
  v23 = 0uLL;
  v22 = xmmword_1000E2F70;
  v24 = xmmword_1000E2F80;
  v25 = xmmword_1000E2F90;
  v26 = xmmword_1000E2FA0;
  v6 = v35;
  if (v35 >= v36)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000509C();
    }

    if (0x5555555555555556 * ((v36 - v34) >> 3) > v9)
    {
      v9 = 0x5555555555555556 * ((v36 - v34) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v40 = &v34;
    if (v10)
    {
      sub_1000050B4(&v34, v10);
    }

    v11 = 8 * ((v35 - v34) >> 3);
    *v11 = 1937078117;
    *(v11 + 23) = 4;
    v7 = 24 * v8 + 24;
    v12 = (24 * v8 - (v35 - v34));
    memcpy((v11 - (v35 - v34)), v34, v35 - v34);
    v13 = v34;
    v14 = v36;
    v34 = v12;
    v35 = v7;
    v36 = 0;
    *(&v38 + 1) = v13;
    v39 = v14;
    *buf = v13;
    *&v38 = v13;
    sub_10000510C(buf);
  }

  else
  {
    *v35 = 1937078117;
    v6[23] = 4;
    v7 = (v6 + 24);
  }

  v35 = v7;
  v33 = 0x4059000000000000;
  sub_10006E00C(a1 + 1, &v15);
  (*(*a1 + 16))(a1);
  *buf = &v34;
  sub_100005208(buf);
  *buf = v32;
  sub_100005208(buf);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[1]);
  }

  if (SHIBYTE(v17[0]) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_10006E534(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006E900(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006E54C(uint64_t a1)
{
  *a1 = off_10013CA20;
  v3 = (a1 + 8);
  sub_10006EB04(&v3);
  return a1;
}

void sub_10006E5A4(uint64_t a1)
{
  *a1 = off_10013CA20;
  v1 = (a1 + 8);
  sub_10006EB04(&v1);
  operator delete();
}

uint64_t sub_10006E610(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 8);
  while (result != v3)
  {
    result = sub_10006E900(result - 280);
  }

  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006E650(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100004CEC((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100004CEC((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100004CEC((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100004CEC((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  v8 = *(a2 + 136);
  v9 = *(a2 + 152);
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 104);
  v13 = *(a2 + 120);
  *(a1 + 192) = 0;
  *(a1 + 120) = v13;
  *(a1 + 104) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  *(a1 + 152) = v9;
  *(a1 + 136) = v8;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_10001CEA8(a1 + 192, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 2);
  v14 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v14;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_10006E878(a1 + 224, *(a2 + 224), *(a2 + 232), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 232) - *(a2 + 224)) >> 3));
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  sub_10006E878(a1 + 256, *(a2 + 256), *(a2 + 264), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 264) - *(a2 + 256)) >> 3));
  return a1;
}

void sub_10006E7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v11 + 79) < 0)
  {
    operator delete(*(v11 + 56));
  }

  if (*(v11 + 55) < 0)
  {
    operator delete(*(v11 + 32));
  }

  if (*(v11 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006E878(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100040B80(result, a4);
  }

  return result;
}

void sub_10006E8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100005208(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10006E900(uint64_t a1)
{
  v4 = (a1 + 256);
  sub_100005208(&v4);
  v4 = (a1 + 224);
  sub_100005208(&v4);
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

__n128 sub_10006E99C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v4 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v5;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v6 = *(a2 + 184);
  v7 = *(a2 + 168);
  v8 = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = v8;
  *(a1 + 168) = v7;
  *(a1 + 184) = v6;
  v9 = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v9;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 192) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 224) = 0;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  result = *(a2 + 256);
  *(a1 + 256) = result;
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  return result;
}

void sub_10006EAA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    operator new();
  }

  sub_100004E38();
}

void sub_10006EB04(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10006E900(v4 - 280);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10006EB88(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    v5 = *(a1 + 12);
    v4 = *(a1 + 16);
    v6 = *(a1 + 20);
    v7 = *(a1 + 24);
    v8 = *(a1 + 28);
    v9 = *(a1 + 32);
    v10 = *(a1 + 36);
    v11 = *(a1 + 40);
    v13 = *(a1 + 44);
    v12 = *(a1 + 48);
    v14 = *(a1 + 9);
    v15[0] = 68292099;
    v15[1] = 0;
    v16 = 2082;
    v17 = "";
    v18 = 1025;
    v19 = v3;
    v20 = 1025;
    v21 = v4;
    v22 = 1025;
    v23 = v6;
    v24 = 1025;
    v25 = v5;
    v26 = 1025;
    v27 = v8;
    v28 = 1025;
    v29 = v7;
    v30 = 1025;
    v31 = v9;
    v32 = 1025;
    v33 = v10;
    v34 = 1025;
    v35 = v11;
    v36 = 1025;
    v37 = v13;
    v38 = 1025;
    v39 = v12;
    v40 = 1025;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#ble,log, isBLERelaySupported:%{private}hhd, advertiseEvaluationIntervalSeconds:%{private}d, discoveryEvaluationIntervalSeconds:%{private}d, advertiseDurationSeconds:%{private}d, minBatteryLevelForBLEActivity:%{private}d, minDeviceDensityCount:%{private}d, bleCBScanRate:%{private}d, CBScanRateBackground:%{private}d, bleCBAdvertiseRate:%{private}d, bleDataVersion:%{private}d, bleAdvertisementTimePrecisionInMSec:%{private}d, isBLEDiscoveryDefaultOnSupported:%{private}hhd}", v15, 0x5Au);
  }
}

uint64_t sub_10006ECC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"SAEWBLEConfig_v2"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 68289026;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#ble,SAEWBLEConfig}", &v40, 0x12u);
    }

    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = *(a1 + 160);
      if (!v8)
      {
        operator new();
      }

      sub_10006F5C0(v8, v6);
      v9 = *(a1 + 160);
      if (a1 + 56 != v9 + 8)
      {
        *(a1 + 88) = *(v9 + 40);
        sub_10006F704((a1 + 56), *(v9 + 24), 0);
        *(a1 + 128) = *(v9 + 80);
        sub_10006F704((a1 + 96), *(v9 + 64), 0);
      }

      v10 = *(v9 + 88);
      *(a1 + 152) = *(v9 + 104);
      *(a1 + 136) = v10;
      *(a1 + 8) = 0;
      v11 = [v6 objectForKey:@"isBLERelaySupported_v2"];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 8) = [v11 intValue] != 0;
        }
      }

      *(a1 + 9) = 0;
      v12 = [v6 objectForKey:@"isBLEDiscoveryDefaultOnSupported"];
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 9) = [v12 intValue] != 0;
        }
      }

      *(a1 + 12) = 0;
      v13 = [v6 objectForKey:@"advertiseDurationSeconds"];
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 12) = [v13 intValue];
        }
      }

      *(a1 + 16) = 0;
      v14 = [v6 objectForKey:@"advertiseEvaluationIntervalSeconds"];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 16) = [v14 intValue];
        }
      }

      *(a1 + 20) = 0;
      v15 = [v6 objectForKey:@"discoveryEvaluationIntervalSeconds"];
      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 20) = [v15 intValue];
        }
      }

      *(a1 + 28) = 0;
      v16 = [v6 objectForKey:@"minBatteryLevelForBLEActivity"];
      if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 28) = [v16 intValue];
        }
      }

      *(a1 + 24) = 0;
      v17 = [v6 objectForKey:@"minDeviceDensityCount"];
      if (v17)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 24) = [v17 intValue];
        }
      }

      *(a1 + 32) = 0;
      v18 = [v6 objectForKey:@"bleCBScanRate"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 32) = [v18 intValue];
        }
      }

      *(a1 + 36) = 0;
      v19 = [v6 objectForKey:@"bleCBScanRateScreenOff"];
      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 36) = [v19 intValue];
        }
      }

      *(a1 + 40) = 0;
      v20 = [v6 objectForKey:@"bleCBAdvertiseRate"];
      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 40) = [v20 intValue];
        }
      }

      *(a1 + 44) = 1;
      v21 = [v6 objectForKey:@"bleDataVersion"];
      if (v21)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 44) = [v21 intValue];
        }
      }

      *(a1 + 48) = 0;
      v22 = [v6 objectForKey:@"bleAdvertisementTimePrecisionInMSec"];
      if (v22)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(a1 + 48) = [v22 intValue];
        }
      }

      v23 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 8);
        v26 = *(a1 + 12);
        v25 = *(a1 + 16);
        v27 = *(a1 + 20);
        v28 = *(a1 + 24);
        v29 = *(a1 + 28);
        v30 = *(a1 + 32);
        v31 = *(a1 + 36);
        v32 = *(a1 + 40);
        v34 = *(a1 + 44);
        v33 = *(a1 + 48);
        v35 = *(a1 + 9);
        v40 = 68292099;
        v41 = 0;
        v42 = 2082;
        v43 = "";
        v44 = 1025;
        v45 = v24;
        v46 = 1025;
        v47 = v25;
        v48 = 1025;
        v49 = v27;
        v50 = 1025;
        v51 = v26;
        v52 = 1025;
        v53 = v29;
        v54 = 1025;
        v55 = v28;
        v56 = 1025;
        v57 = v30;
        v58 = 1025;
        v59 = v31;
        v60 = 1025;
        v61 = v32;
        v62 = 1025;
        v63 = v34;
        v64 = 1025;
        v65 = v33;
        v66 = 1025;
        v67 = v35;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#ble,readBleConfigFromFile, isBLERelaySupported:%{private}hhd, advertiseEvaluationIntervalSeconds:%{private}d, discoveryEvaluationIntervalSeconds:%{private}d, advertiseDurationSeconds:%{private}d, minBatteryLevelForBLEActivity:%{private}d, minDeviceDensityCount:%{private}d, bleCBScanRate:%{private}d, bleCBScanRateScreenOff:%{private}d, bleCBAdvertiseRate:%{private}d, bleDataVersion:%{private}d, bleAdvertisementTimePrecisionInMSec:%{private}d, isBLEDiscoveryDefaultOnSupported:%{private}hhd}", &v40, 0x5Au);
      }

      v36 = 1;
    }

    else
    {
      v37 = SALogObjectGeneral;
      v36 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 68289026;
        v41 = 0;
        v42 = 2082;
        v43 = "";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#ble,bleConf dictionary Invalid}", &v40, 0x12u);
        v36 = 0;
      }
    }
  }

  else
  {
    v38 = SALogObjectGeneral;
    v36 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 68289026;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#ble,readBleConfigFromFile dictionary Invalid}", &v40, 0x12u);
      v36 = 0;
    }
  }

  return v36;
}

void sub_10006F5C0(uint64_t *a1, void *a2)
{
  v4 = a2;
  (*(*a1 + 40))(a1);
  v3 = *a1;
  if (v4)
  {
    (*(v3 + 24))(a1);
  }

  else
  {
    (*(v3 + 32))(a1);
  }
}

void sub_10006F6C4(void *a1)
{
  sub_10006FC78(a1);

  operator delete();
}

void sub_10006F704(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v10 = *(a2 + 3);
        *(v8 + 10) = *(a2 + 10);
        *(v8 + 3) = v10;
        v11 = *v8;
        v8[1] = v9;
        v12 = sub_10006F820(a1, v9, v8 + 4);
        sub_10006A728(a1, v8, v12);
        a2 = *a2;
        v8 = v11;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v13 = *v8;
        operator delete(v8);
        v8 = v13;
      }

      while (v13);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_10006FBEC();
  }
}

void sub_10006F7EC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_10006F820(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_10006F980(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_10006F980(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_10006FA70(a1, prime);
    }
  }
}

void sub_10006FA70(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100004E38();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_10006FC78(void *a1)
{
  *a1 = off_10013CA78;
  v2 = a1[20];
  a1[20] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100017590((a1 + 12));
  sub_100017590((a1 + 7));
  return a1;
}

uint64_t sub_10006FCF8(uint64_t a1)
{
  sub_100017378(&v4);
  v2 = v5[0];
  *a1 = v4;
  *(a1 + 16) = v2;
  *(a1 + 28) = *(v5 + 12);
  sub_100017480(a1 + 48, v6);
  sub_100017480(a1 + 88, v7);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  sub_100017590(v7);
  return sub_100017590(v6);
}

void sub_10006FD78(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 90) = 1;
  sub_10006FD88(v1);
}

void sub_10006FD88(uint64_t *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v58 = 0;
    v59 = 2082;
    v60 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,postToAnalytics}", buf, 0x12u);
  }

  if (*(a1 + 89))
  {
    if (*(a1 + 88) == 1)
    {
      v3 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v58 = 0;
        v59 = 2082;
        v60 = "";
        v4 = "{msg%{public}.0s:#uimetrics,#warning,SAUiDisplayMetricsEntry,postToAnalytics,alreadyPosted}";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 0x12u);
      }
    }

    else if ((*(a1 + 90) & 1) != 0 || *(a1 + 4) > 0.0 || *(a1 + 3) > 0.0)
    {
      *(a1 + 88) = 1;
      v5 = *(a1 + 3);
      v6 = -1.0;
      v7 = -1.0;
      if (v5 > 0.0)
      {
        v8 = *(a1 + 4);
        v9 = v8 < 0.0;
        v10 = v8 - v5;
        if (v9)
        {
          v7 = -1.0;
        }

        else
        {
          v7 = v10;
        }
      }

      v11 = *(a1 + 5);
      v12 = -1.0;
      v13 = -1.0;
      if (v11 > 0.0)
      {
        v6 = v11 - *(a1 + 4);
        v14 = *(a1 + 6);
        v15 = v14 <= 0.0;
        v16 = v14 - v11;
        v17 = v11 - v5;
        if (v15)
        {
          v12 = -1.0;
        }

        else
        {
          v12 = v17;
        }

        if (v15)
        {
          v13 = -1.0;
        }

        else
        {
          v13 = v16;
        }
      }

      v18 = sub_100002DB0();
      v19 = *(v18 + 149);
      v20 = *(v18 + 148);
      v21 = sub_100002DB0();
      v22 = v19 & v20;
      v23 = *(v21 + 143) & *(v21 + 142);
      v45 = _NSConcreteStackBlock;
      v46 = 3221225472;
      v47 = sub_100070850;
      v48 = &unk_10013CAC0;
      v49 = a1;
      v54 = v22 & 1;
      v55 = v11 > 0.0;
      v50 = v6;
      v51 = v7;
      v52 = v13;
      v53 = v12;
      v56 = v23;
      AnalyticsSendEventLazy();
      v24 = SALogObjectGeneral;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a1;
        if (*(a1 + 23) < 0)
        {
          v25 = *a1;
        }

        v39 = [NSString stringWithUTF8String:v25];
        v42 = [NSNumber numberWithBool:*(a1 + 57)];
        v38 = [NSNumber numberWithBool:v22 & 1];
        v41 = [NSNumber numberWithBool:*(a1 + 56)];
        v37 = [NSNumber numberWithInt:*(a1 + 15)];
        v40 = [NSNumber numberWithBool:v11 > 0.0];
        v26 = [NSNumber numberWithDouble:v6];
        v27 = [NSNumber numberWithDouble:v7];
        v28 = [NSNumber numberWithDouble:v13];
        v29 = [NSNumber numberWithDouble:v12];
        v30 = [NSNumber numberWithBool:*(a1 + 56)];
        v31 = [NSNumber numberWithBool:v23 & 1];
        v32 = [NSNumber numberWithBool:*(a1 + 64)];
        v33 = [NSNumber numberWithInt:*(a1 + 17)];
        v34 = sub_100042820();
        if (*(v34 + 71) < 0)
        {
          sub_100004CEC(__p, v34[6], v34[7]);
        }

        else
        {
          *__p = *(v34 + 3);
          v44 = v34[8];
        }

        v35 = __p;
        if (v44 < 0)
        {
          v35 = __p[0];
        }

        *buf = 68292867;
        v58 = 0;
        v59 = 2082;
        v60 = "";
        v61 = 2113;
        v62 = v39;
        v63 = 2113;
        v64 = v42;
        v65 = 2117;
        v66 = v38;
        v67 = 2113;
        v68 = v41;
        v69 = 2113;
        v70 = v37;
        v71 = 2113;
        v72 = v40;
        v73 = 2113;
        v74 = v26;
        v75 = 2113;
        v76 = v27;
        v77 = 2113;
        v78 = v28;
        v79 = 2113;
        v80 = v29;
        v81 = 2113;
        v82 = v30;
        v83 = 2113;
        v84 = v31;
        v85 = 2113;
        v86 = v32;
        v87 = 2113;
        v88 = v33;
        v89 = 2081;
        v90 = v35;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,SAUiDisplayMetricsEntry,postToAnalytics,values, bleAlertID:%{private, location:escape_only}@, isFirstUnlocked:%{private, location:escape_only}@, isInLOI:%{sensitive, location:escape_only}@, isLocked:%{private, location:escape_only}@, transport:%{private, location:escape_only}@, userTapped:%{private, location:escape_only}@, postToTapLatency:%{private, location:escape_only}@, serverToPostingLatency:%{private, location:escape_only}@, tapToDisplayLatency:%{private, location:escape_only}@, serverToTapLatency:%{private, location:escape_only}@, isLockedDuringPosting:%{private, location:escape_only}@, isLockedDuringSubmission:%{private, location:escape_only}@, isRelayedAlert:%{private, location:escape_only}@, level:%{private, location:escape_only}@, environmentId:%{private, location:escape_only}s}", buf, 0xA8u);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v36 = a1[15];
      if (v36)
      {
        (*(*v36 + 48))(v36);
      }
    }

    else
    {
      v3 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v58 = 0;
        v59 = 2082;
        v60 = "";
        v4 = "{msg%{public}.0s:#uimetrics,#warning,SAUiDisplayMetricsEntry,postToAnalytics,notReadyToSubmit}";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v4 = "{msg%{public}.0s:#uimetrics,#warning,postToAnalytics,invokedOnUninitializedObject}";
      goto LABEL_9;
    }
  }
}

void sub_10007047C(uint64_t a1, double a2)
{
  if (*(a1 + 89))
  {
    *(a1 + 24) = a2;
  }

  else
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,setServerSendTsSeconds,invokedOnUninitializedObject}", v3, 0x12u);
    }
  }
}

void sub_100070540(uint64_t a1, double a2)
{
  if (*(a1 + 89))
  {
    *(a1 + 32) = a2;
  }

  else
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,setNotifPostTsSeconds,invokedOnUninitializedObject}", v3, 0x12u);
    }
  }
}

void sub_100070604(uint64_t a1, double a2)
{
  if (*(a1 + 89))
  {
    *(a1 + 40) = a2;
  }

  else
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,setUserTappedTsSeconds,invokedOnUninitializedObject}", v3, 0x12u);
    }
  }
}

void sub_1000706C8(uint64_t a1, double a2)
{
  if (*(a1 + 89))
  {
    *(a1 + 48) = a2;
  }

  else
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,setSnapshotCompleteTsSeconds,invokedOnUninitializedObject}", v3, 0x12u);
    }
  }
}

void sub_10007078C(uint64_t a1, int a2)
{
  if (*(a1 + 89))
  {
    *(a1 + 60) = a2;
  }

  else
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 68289026;
      v3[1] = 0;
      v4 = 2082;
      v5 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,setTransportInterface,invokedOnUninitializedObject}", v3, 0x12u);
    }
  }
}

id sub_100070850(uint64_t a1)
{
  v2 = *(a1 + 32);
  v25[0] = @"bleAlertID";
  v3 = v2;
  if (*(v2 + 23) < 0)
  {
    v3 = *v2;
  }

  v22 = [NSString stringWithUTF8String:v3];
  v26[0] = v22;
  v25[1] = @"isFirstUnlocked";
  v21 = [NSNumber numberWithBool:*(v2 + 57)];
  v26[1] = v21;
  v25[2] = @"isInLOI";
  v20 = [NSNumber numberWithBool:*(a1 + 72)];
  v26[2] = v20;
  v25[3] = @"isLocked";
  v19 = [NSNumber numberWithBool:*(v2 + 56)];
  v26[3] = v19;
  v25[4] = @"transport";
  v18 = [NSNumber numberWithInt:*(v2 + 15)];
  v26[4] = v18;
  v25[5] = @"userTapped";
  v17 = [NSNumber numberWithBool:*(a1 + 73)];
  v26[5] = v17;
  v25[6] = @"postToTapLatency";
  v4 = [NSNumber numberWithDouble:*(a1 + 40)];
  v26[6] = v4;
  v25[7] = @"serverToPostingLatency";
  v5 = [NSNumber numberWithDouble:*(a1 + 48)];
  v26[7] = v5;
  v25[8] = @"tapToDisplayLatency";
  v6 = [NSNumber numberWithDouble:*(a1 + 56)];
  v26[8] = v6;
  v25[9] = @"serverToTapLatency";
  v7 = [NSNumber numberWithDouble:*(a1 + 64)];
  v26[9] = v7;
  v25[10] = @"isLockedDuringPosting";
  v8 = [NSNumber numberWithBool:*(v2 + 56)];
  v26[10] = v8;
  v25[11] = @"isLockedDuringSubmission";
  v9 = [NSNumber numberWithBool:*(a1 + 74)];
  v26[11] = v9;
  v25[12] = @"isRelayedAlert";
  v10 = [NSNumber numberWithBool:*(v2 + 64)];
  v26[12] = v10;
  v25[13] = @"level";
  v11 = [NSNumber numberWithInt:*(v2 + 17)];
  v26[13] = v11;
  v25[14] = @"environmentId";
  v12 = sub_100042820();
  if (*(v12 + 71) < 0)
  {
    sub_100004CEC(__p, v12[6], v12[7]);
  }

  else
  {
    *__p = *(v12 + 3);
    v24 = v12[8];
  }

  if (v24 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = [NSString stringWithUTF8String:v13];
  v26[14] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:15];

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_100070BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100070CC4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v6 = sub_10005B888(a1, a2);
    if (!v6 || !v6[5])
    {
      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        *buf = 68289283;
        *&buf[4] = 0;
        v18[0] = 2082;
        *&v18[1] = "";
        v19 = 2081;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,createEntry, uid:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100004CEC(v15, *a2, *(a2 + 8));
      }

      else
      {
        *v15 = *a2;
        v16 = *(a2 + 16);
      }

      operator new();
    }

    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      v18[0] = 2082;
      *&v18[1] = "";
      v19 = 2081;
      v20 = v8;
      v9 = "{msg%{public}.0s:#uimetrics,#warning,createEntry,uidAlreadyFound, uid:%{private, location:escape_only}s}";
      v10 = v7;
      v11 = 28;
      goto LABEL_20;
    }
  }

  else
  {
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v18[0] = 2082;
      *&v18[1] = "";
      v9 = "{msg%{public}.0s:#uimetrics,#warning,createEntry,emptyUid}";
      v10 = v14;
      v11 = 18;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_100071354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_10000F274(v35 + 120);

  v39 = *(v35 + 96);
  *(v35 + 96) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  if (*(v35 + 47) < 0)
  {
    operator delete(*v36);
  }

  sub_10000F274(&a35);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__shared_weak_count::~__shared_weak_count(v35);
  operator delete(v40);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100071480(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v4 = a2[1];
  }

  if (!v4)
  {
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 68289026;
      v16 = 2082;
      v17 = "";
      v10 = "{msg%{public}.0s:#uimetrics,#warning,getEntry,emptyUid}";
      v11 = v9;
      v12 = 18;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    }

LABEL_15:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  if (!sub_10005B888(a1, a2))
  {
    v13 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      v15 = 68289283;
      v16 = 2082;
      v17 = "";
      v18 = 2081;
      v19 = v14;
      v10 = "{msg%{public}.0s:#uimetrics,#warning,getEntry,uidNotFound, uid:%{private, location:escape_only}s}";
      v11 = v13;
      v12 = 28;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v15 = a2;
  v7 = sub_100071938(a1, a2);
  v8 = v7[6];
  *a3 = v7[5];
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }
}

void sub_10007161C(void *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    v13 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v24 = 68289026;
    *v25 = 2082;
    *&v25[2] = "";
    v14 = "{msg%{public}.0s:#uimetrics,#warning,removeEntry,emptyUid}";
    v15 = v13;
    v16 = 18;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v24, v16);
    return;
  }

  v5 = sub_10005B888(a1, a2);
  v6 = SALogObjectGeneral;
  v7 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (!v7)
    {
      return;
    }

    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    v24 = 68289283;
    *v25 = 2082;
    *&v25[2] = "";
    *&v25[10] = 2081;
    *&v25[12] = v17;
    v14 = "{msg%{public}.0s:#uimetrics,#warning,removeEntry,uidNotFound, uid:%{private, location:escape_only}s}";
    v15 = v6;
    v16 = 28;
    goto LABEL_20;
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v24 = 68289283;
    *v25 = 2082;
    *&v25[2] = "";
    *&v25[10] = 2081;
    *&v25[12] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#uimetrics,removeEntry, uid:%{private, location:escape_only}s}", &v24, 0x1Cu);
  }

  v9 = sub_10005B888(a1, a2);
  if (v9)
  {
    v10 = a1[1];
    v11 = v9[1];
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      if (v11 >= *&v10)
      {
        v11 %= *&v10;
      }
    }

    else
    {
      v11 &= *&v10 - 1;
    }

    v18 = *(*a1 + 8 * v11);
    do
    {
      v19 = v18;
      v18 = *v18;
    }

    while (v18 != v9);
    if (v19 == a1 + 2)
    {
      goto LABEL_36;
    }

    v20 = v19[1];
    if (v12.u32[0] > 1uLL)
    {
      if (v20 >= *&v10)
      {
        v20 %= *&v10;
      }
    }

    else
    {
      v20 &= *&v10 - 1;
    }

    if (v20 != v11)
    {
LABEL_36:
      if (!*v9)
      {
        goto LABEL_37;
      }

      v21 = *(*v9 + 1);
      if (v12.u32[0] > 1uLL)
      {
        if (v21 >= *&v10)
        {
          v21 %= *&v10;
        }
      }

      else
      {
        v21 &= *&v10 - 1;
      }

      if (v21 != v11)
      {
LABEL_37:
        *(*a1 + 8 * v11) = 0;
      }
    }

    v22 = *v9;
    if (*v9)
    {
      v23 = v22[1];
      if (v12.u32[0] > 1uLL)
      {
        if (v23 >= *&v10)
        {
          v23 %= *&v10;
        }
      }

      else
      {
        v23 &= *&v10 - 1;
      }

      if (v23 != v11)
      {
        *(*a1 + 8 * v23) = v19;
        v22 = *v9;
      }
    }

    *v19 = v22;
    *v9 = 0;
    --a1[3];
    v24 = v9;
    *v25 = a1;
    v25[8] = 1;
    *&v25[9] = 0;
    *&v25[12] = 0;
    sub_100071DBC(&v24);
  }
}

const void **sub_100071938(void *a1, const void **a2)
{
  v4 = sub_100039B6C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10004E530(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100071DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100071DBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071DBC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10004190C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100071E28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013CAF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100071E7C(uint64_t a1)
{
  if (*(a1 + 113) == 1)
  {
    (*(**(a1 + 96) + 40))(*(a1 + 96));
    sub_10006FD88((a1 + 24));
  }

  sub_10000F274(a1 + 120);

  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

uint64_t sub_100071F48(uint64_t a1)
{
  *a1 = off_10013CB40;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100071F98(uint64_t a1)
{
  *a1 = off_10013CB40;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_1000720A4(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_10013CB40;
  *(a2 + 8) = v2;
  if (result[39] < 0)
  {
    return sub_100004CEC((a2 + 16), *(result + 2), *(result + 3));
  }

  v3 = *(result + 1);
  *(a2 + 32) = *(result + 4);
  *(a2 + 16) = v3;
  return result;
}

void sub_1000720F0(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_100072104(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_100072148(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10007224C;
  v3[3] = &unk_10013CBA0;
  v3[4] = v1;
  if (*(a1 + 39) < 0)
  {
    sub_100004CEC(__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *__p = *(a1 + 16);
    v5 = *(a1 + 32);
  }

  dispatch_async(v2, v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100072200(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *sub_10007225C(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100004CEC(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_10007228C(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_10013CBF0;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  operator new();
}

uint64_t sub_100072408(uint64_t a1)
{
  *a1 = off_10013CBF0;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,deinit}", v5, 0x12u);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    operator delete();
  }

  sub_100073364((a1 + 24), 0);

  return a1;
}

void sub_10007251C(uint64_t a1)
{
  sub_100072408(a1);

  operator delete();
}

void sub_100072554(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 68289283;
    v23 = 2082;
    v24 = "";
    v25 = 2081;
    v26 = string;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,xpcEventHandler, eventName:%{private, location:escape_only}s}", &v22, 0x1Cu);
  }

  if (strcmp(string, "SafetyAlertsBLERelay"))
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 68289026;
      v23 = 2082;
      v24 = "";
      v7 = "{msg%{public}.0s:#bleti,xpcEventHandler,invalid name}";
      v8 = v6;
      v9 = 18;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v22, v9);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v10 = xpc_dictionary_get_string(v3, "eventType");
  if (!strcmp(v10, "deviceFound"))
  {
    v12 = xpc_dictionary_get_dictionary(v3, "device");
    if (!v12)
    {
      v20 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 68289026;
        v23 = 2082;
        v24 = "";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,xpcEventHandler,deviceObj nil}", &v22, 0x12u);
      }

      goto LABEL_25;
    }

    v13 = [[CBDevice alloc] initWithXPCObject:v12 error:0];
    v14 = [v13 safetyAlertsSignature];
    if ([v14 length])
    {
      v15 = [v13 safetyAlertsAlertData];
      if ([v15 length])
      {
        v16 = [v13 safetyAlertsAlertID];
        v17 = [v16 length] == 0;

        if (!v17)
        {
          v18 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 68289283;
            v23 = 2082;
            v24 = "";
            v25 = 2113;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,xpcEventHandler, cbDevice:%{private, location:escape_only}@}", &v22, 0x1Cu);
          }

          v22 = v13;
          v19 = *(a1 + 64);
          if (!v19)
          {
            sub_1000053C4();
          }

          (*(*v19 + 48))(v19, &v22);

LABEL_24:
LABEL_25:

          goto LABEL_26;
        }

LABEL_22:
        v21 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 68289026;
          v23 = 2082;
          v24 = "";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,xpcEventHandler,invalid cbDevice}", &v22, 0x12u);
        }

        goto LABEL_24;
      }
    }

    goto LABEL_22;
  }

  v11 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 68289283;
    v23 = 2082;
    v24 = "";
    v25 = 2081;
    v26 = v10;
    v7 = "{msg%{public}.0s:#bleti,xpcEventHandler,invalid device type, deviceType:%{private, location:escape_only}s}";
    v8 = v11;
    v9 = 28;
    goto LABEL_9;
  }

LABEL_26:
}

void sub_1000729FC(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v12) = 2082;
    *(&v12 + 2) = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,startDiscovery}", buf, 0x12u);
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = xpc_array_create(0, 0);
  xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, "ScreenOff");
  xpc_dictionary_set_value(v5, "discoveryFlags", v6);
  v7 = xpc_array_create(0, 0);
  xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, "SafetyAlerts");
  xpc_dictionary_set_value(v5, "discoveryTypes", v7);
  xpc_dictionary_set_string(v5, "bleScanRate", "Low");
  xpc_dictionary_set_string(v5, "bleScanRateScreenOff", "Background");
  xpc_dictionary_set_BOOL(v5, "xpcReportCompleteDevice", 1);
  xpc_dictionary_set_string(v5, "label", "SafetyAlertsBLERelay");
  xpc_set_event();
  sub_100073430(v10, a2);
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v12) = 2082;
    *(&v12 + 2) = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,setupXPCEventHandler}", buf, 0x12u);
  }

  v9 = *(a1 + 8);
  *buf = _NSConcreteStackBlock;
  *&v12 = 3321888768;
  *(&v12 + 1) = sub_100072554;
  v13 = &unk_10013CC20;
  v14 = a1;
  sub_100073430(v15, v10);
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v9, buf);
  sub_1000733B0(v15);
  sub_1000733B0(v10);
}

void sub_100072CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000733B0(v12 + 40);
  sub_1000733B0(&a9);

  _Unwind_Resume(a1);
}

void sub_100072CFC()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 68289026;
    v2[1] = 0;
    v3 = 2082;
    v4 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,stopDiscovery}", v2, 0x12u);
  }

  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_set_event();
}

BOOL sub_100072DF8(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289026;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,startAdvertising}", &v5, 0x12u);
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 32))
    {
      sub_100034854();
    }

    operator new();
  }

  v3 = SALogObjectGeneral;
  result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v5 = 68289026;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,startAdvertising,fDispatchQueue invalid}", &v5, 0x12u);
    return 0;
  }

  return result;
}

void sub_1000730E4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289026;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,startAdvertisingCb}", &v5, 0x12u);
  }

  if (v2)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 68289283;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2113;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,startAdvertisingCb, Error:%{private, location:escape_only}@}", &v5, 0x1Cu);
    }
  }
}

uint64_t sub_100073218(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,stopAdvertisingOverBLE}", &v9, 0x12u);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;

    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bleti,stopAdvertisingOverBLE,advertiser released}", &v9, 0x12u);
    }
  }

  v8 = *(a1 + 24);
  v7 = (a1 + 24);
  result = v8;
  if (v8)
  {
    sub_10002AE20(result);
    return sub_100073364(v7, 0);
  }

  return result;
}

uint64_t sub_100073364(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10002AD34(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1000733B0(uint64_t a1)
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

uint64_t sub_100073430(uint64_t a1, uint64_t a2)
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

void sub_1000734C8(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = 0;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,init}", v4, 0x12u);
  }

  operator new();
}

uint64_t sub_100073628(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,release}", v4, 0x12u);
  }

  sub_1000741EC((a1 + 8), 0);

  return a1;
}

uint64_t sub_1000736F8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v80 = 68289026;
    v81 = 0;
    v82 = 2082;
    v83 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,process}", &v80, 0x12u);
    v6 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 152);
    if (*(a2 + 175) >= 0)
    {
      v7 = a2 + 152;
    }

    v8 = *(a2 + 352);
    v9 = *(a2 + 384);
    v10 = *(a2 + 184);
    v11 = *(a2 + 192);
    v12 = *(a2 + 200);
    v13 = *(a2 + 208);
    v14 = *(a2 + 216);
    v15 = *(a2 + 320);
    v80 = 68292355;
    v81 = 0;
    v82 = 2082;
    v83 = "";
    v84 = 2081;
    v85 = "info";
    v86 = 2081;
    v87 = "igAlertFlow";
    v88 = 2081;
    v89 = "igpm";
    v90 = 2081;
    v91 = "process";
    v92 = 2081;
    v93 = v7;
    v94 = 1025;
    v95 = v8;
    v96 = 1025;
    v97 = v9;
    v98 = 2049;
    v99 = v10;
    v100 = 2049;
    v101 = v11;
    v102 = 2049;
    v103 = v12;
    v104 = 2049;
    v105 = v13;
    v106 = 2049;
    v107 = v14;
    v108 = 2049;
    v109 = v15;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:entering protocol layer, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v80, 0x8Cu);
  }

  if (*(a2 + 384) == 2)
  {
    if ((sub_10005FFE0() & 1) == 0)
    {
      v16 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v80 = 68289026;
        v81 = 0;
        v82 = 2082;
        v83 = "";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,process,invalid}", &v80, 0x12u);
        v16 = SALogObjectGeneral;
      }

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      v19 = *(a2 + 152);
      v18 = a2 + 152;
      v17 = v19;
      if (*(v18 + 23) >= 0)
      {
        v17 = v18;
      }

      v20 = *(v18 + 200);
      v21 = *(v18 + 232);
      v22 = *(v18 + 32);
      v23 = *(v18 + 40);
      v24 = *(v18 + 48);
      v25 = *(v18 + 56);
      v26 = *(v18 + 64);
      v27 = *(v18 + 168);
      v80 = 68292355;
      v81 = 0;
      v82 = 2082;
      v83 = "";
      v84 = 2081;
      v85 = "warning";
      v86 = 2081;
      v87 = "igAlertFlow";
      v88 = 2081;
      v89 = "igpm";
      v90 = 2081;
      v91 = "process";
      v92 = 2081;
      v93 = v17;
      v94 = 1025;
      v95 = v20;
      v96 = 1025;
      v97 = v21;
      v98 = 2049;
      v99 = v22;
      v100 = 2049;
      v101 = v23;
      v102 = 2049;
      v103 = v24;
      v104 = 2049;
      v105 = v25;
      v106 = 2049;
      v107 = v26;
      v108 = 2049;
      v109 = v27;
      v28 = "{msg%{public}.0s:invalid ble alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
      goto LABEL_33;
    }
  }

  else if ((sub_100060098(a2) & 1) == 0)
  {
    v16 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v80 = 68289026;
      v81 = 0;
      v82 = 2082;
      v83 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,process,invalid}", &v80, 0x12u);
      v16 = SALogObjectGeneral;
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    v48 = *(a2 + 152);
    v47 = a2 + 152;
    v46 = v48;
    if (*(v47 + 23) >= 0)
    {
      v46 = v47;
    }

    v49 = *(v47 + 200);
    v50 = *(v47 + 232);
    v51 = *(v47 + 32);
    v52 = *(v47 + 40);
    v53 = *(v47 + 48);
    v54 = *(v47 + 56);
    v55 = *(v47 + 64);
    v56 = *(v47 + 168);
    v80 = 68292355;
    v81 = 0;
    v82 = 2082;
    v83 = "";
    v84 = 2081;
    v85 = "warning";
    v86 = 2081;
    v87 = "igAlertFlow";
    v88 = 2081;
    v89 = "igpm";
    v90 = 2081;
    v91 = "process";
    v92 = 2081;
    v93 = v46;
    v94 = 1025;
    v95 = v49;
    v96 = 1025;
    v97 = v50;
    v98 = 2049;
    v99 = v51;
    v100 = 2049;
    v101 = v52;
    v102 = 2049;
    v103 = v53;
    v104 = 2049;
    v105 = v54;
    v106 = 2049;
    v107 = v55;
    v108 = 2049;
    v109 = v56;
    v28 = "{msg%{public}.0s:invalid apns alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
LABEL_33:
    v57 = v16;
LABEL_40:
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, v28, &v80, 0x8Cu);
LABEL_41:
    result = 0;
    *a3 = 12;
    return result;
  }

  v29 = sub_10005E5FC(a2);
  v30 = SALogObjectGeneral;
  v31 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if ((v29 & 1) == 0)
  {
    if (v31)
    {
      v80 = 68289026;
      v81 = 0;
      v82 = 2082;
      v83 = "";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,process,invalid}", &v80, 0x12u);
      v30 = SALogObjectGeneral;
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    v60 = *(a2 + 152);
    v59 = a2 + 152;
    v58 = v60;
    if (*(v59 + 23) >= 0)
    {
      v58 = v59;
    }

    v61 = *(v59 + 200);
    v62 = *(v59 + 232);
    v63 = *(v59 + 32);
    v64 = *(v59 + 40);
    v65 = *(v59 + 48);
    v66 = *(v59 + 56);
    v67 = *(v59 + 64);
    v68 = *(v59 + 168);
    v80 = 68292355;
    v81 = 0;
    v82 = 2082;
    v83 = "";
    v84 = 2081;
    v85 = "warning";
    v86 = 2081;
    v87 = "igAlertFlow";
    v88 = 2081;
    v89 = "igpm";
    v90 = 2081;
    v91 = "process";
    v92 = 2081;
    v93 = v58;
    v94 = 1025;
    v95 = v61;
    v96 = 1025;
    v97 = v62;
    v98 = 2049;
    v99 = v63;
    v100 = 2049;
    v101 = v64;
    v102 = 2049;
    v103 = v65;
    v104 = 2049;
    v105 = v66;
    v106 = 2049;
    v107 = v67;
    v108 = 2049;
    v109 = v68;
    v28 = "{msg%{public}.0s:invalid alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    v57 = v30;
    goto LABEL_40;
  }

  if (v31)
  {
    v80 = 68289026;
    v81 = 0;
    v82 = 2082;
    v83 = "";
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,process,valid}", &v80, 0x12u);
  }

  v32 = sub_10002CCEC(*(a1 + 8), a2);
  *a2 = v32;
  v33 = SALogObjectGeneral;
  v34 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v32)
  {
    if (v34)
    {
      v80 = 68289026;
      v81 = 0;
      v82 = 2082;
      v83 = "";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,process,dupe alert}", &v80, 0x12u);
      v33 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a2 + 152);
      v36 = a2 + 152;
      v35 = v37;
      if (*(v36 + 23) >= 0)
      {
        v35 = v36;
      }

      v38 = *(v36 + 200);
      v39 = *(v36 + 232);
      v40 = *(v36 + 32);
      v41 = *(v36 + 40);
      v42 = *(v36 + 48);
      v43 = *(v36 + 56);
      v44 = *(v36 + 64);
      v45 = *(v36 + 168);
      v80 = 68292355;
      v81 = 0;
      v82 = 2082;
      v83 = "";
      v84 = 2081;
      v85 = "warning";
      v86 = 2081;
      v87 = "igAlertFlow";
      v88 = 2081;
      v89 = "igpm";
      v90 = 2081;
      v91 = "process";
      v92 = 2081;
      v93 = v35;
      v94 = 1025;
      v95 = v38;
      v96 = 1025;
      v97 = v39;
      v98 = 2049;
      v99 = v40;
      v100 = 2049;
      v101 = v41;
      v102 = 2049;
      v103 = v42;
      v104 = 2049;
      v105 = v43;
      v106 = 2049;
      v107 = v44;
      v108 = 2049;
      v109 = v45;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:duplicate alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v80, 0x8Cu);
    }

    *a3 = 15;
  }

  else
  {
    if (v34)
    {
      v80 = 68289026;
      v81 = 0;
      v82 = 2082;
      v83 = "";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,process,new alert}", &v80, 0x12u);
      v33 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v70 = *(a2 + 152);
      if (*(a2 + 175) >= 0)
      {
        v70 = a2 + 152;
      }

      v71 = *(a2 + 352);
      v72 = *(a2 + 384);
      v73 = *(a2 + 184);
      v74 = *(a2 + 192);
      v75 = *(a2 + 200);
      v76 = *(a2 + 208);
      v77 = *(a2 + 216);
      v78 = *(a2 + 320);
      v80 = 68292355;
      v81 = 0;
      v82 = 2082;
      v83 = "";
      v84 = 2081;
      v85 = "info";
      v86 = 2081;
      v87 = "igAlertFlow";
      v88 = 2081;
      v89 = "igpm";
      v90 = 2081;
      v91 = "process";
      v92 = 2081;
      v93 = v70;
      v94 = 1025;
      v95 = v71;
      v96 = 1025;
      v97 = v72;
      v98 = 2049;
      v99 = v73;
      v100 = 2049;
      v101 = v74;
      v102 = 2049;
      v103 = v75;
      v104 = 2049;
      v105 = v76;
      v106 = 2049;
      v107 = v77;
      v108 = 2049;
      v109 = v78;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:new alert, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", &v80, 0x8Cu);
    }

    sub_10002C12C(*(a1 + 8), a2);
  }

  v79 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v80 = 68289026;
    v81 = 0;
    v82 = 2082;
    v83 = "";
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,process,success}", &v80, 0x12u);
  }

  return 1;
}

void sub_10007412C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igpm,onFirstUnlock}", v3, 0x12u);
  }

  sub_10002D5A8(*(a1 + 8));
}

uint64_t sub_1000741EC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10002B8C4(result);

    operator delete();
  }

  return result;
}

BOOL sub_100074238(_BYTE *a1)
{
  bzero(v13, 0x400uLL);
  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v3 = 0;
  while (1)
  {
    v13[v3] = v2;
    if (v2 == 47)
    {
      if (stat(v13, &v7))
      {
        break;
      }
    }

LABEL_8:
    result = 1;
    if (v3 <= 0x3FD)
    {
      v2 = a1[++v3];
      if (v2)
      {
        continue;
      }
    }

    return result;
  }

  v4 = mkdir(v13, 0x1FFu);
  v5 = SALogObjectGeneral;
  result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (result)
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:createDirectoriesToPath dir created, path:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    goto LABEL_8;
  }

  if (result)
  {
    *buf = 68289282;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning,createDirectoriesToPath dir created failed, path:%{public, location:escape_only}s}", buf, 0x1Cu);
    return 0;
  }

  return result;
}

BOOL sub_1000743F8(const char *a1, uint64_t a2)
{
  if (!a1)
  {
    v7 = SALogObjectGeneral;
    result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:setFileProtectionClass,sFilename==nullptr}", buf, 0x12u);
    return 0;
  }

  v4 = open(a1, 2);
  if (v4 < 0)
  {
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *__error();
      *buf = 68289283;
      *&buf[4] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1025;
      LODWORD(v18) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setFileProtectionClass,open,, errno,:%{private}d}", buf, 0x18u);
    }

LABEL_13:

    return 0;
  }

  v5 = v4;
  v6 = fcntl(v4, 63);
  if (v6 != a2)
  {
    v11 = fcntl(v5, 64, a2);
    close(v5);
    if (!v11)
    {
      goto LABEL_15;
    }

    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *__error();
      *buf = 68290051;
      v15 = 2082;
      v16 = "";
      v17 = 2081;
      v18 = a1;
      v19 = 1025;
      v20 = v6;
      v21 = 1025;
      v22 = a2;
      v23 = 1025;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning,setFileProtectionClass, file,:%{private, location:escape_only}s, oldPc,:%{private}d, newPc,:%{private}d, errno,:%{private}d}", buf, 0x2Eu);
    }

    goto LABEL_13;
  }

  close(v5);
LABEL_15:
  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290051;
    v15 = 2082;
    v16 = "";
    v17 = 2081;
    v18 = a1;
    v19 = 1025;
    v20 = v6;
    v21 = 1025;
    v22 = a2;
    v23 = 1025;
    v24 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:setFileProtectionClass, file,:%{private, location:escape_only}s, oldPc,:%{private}d, newPc,:%{private}d, ret,:%{private}d}", buf, 0x2Eu);
  }

  return 1;
}

uint64_t sub_1000746E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      operator new[]();
    }

    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 68289026;
      v6 = 2082;
      v7 = "";
      v3 = "{msg%{public}.0s:#ps,#warning,invalidToPath}";
      goto LABEL_8;
    }
  }

  else
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 68289026;
      v6 = 2082;
      v7 = "";
      v3 = "{msg%{public}.0s:#ps,#warning,invalidFromPath}";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, &v5, 0x12u);
    }
  }

  return 0;
}

uint64_t sub_100074C14(FILE *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cu,Closing fp}", v4, 0x12u);
  }

  return fclose(a1);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  signal(14, sub_1000750A0);
  signal(2, sub_1000750A0);
  signal(3, sub_1000750A0);
  signal(15, sub_1000750A0);
  SALogInit();
  v2 = [*SAPlatformInfo::instance(v1) isEqualToString:@"iPhone"];
  if (v2 & 1) != 0 || ([*SAPlatformInfo::instance(v2) isEqualToString:@"Watch"])
  {
    v3 = SALogObjectGeneral;
    v4 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v12 = 68289283;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1025;
      v17 = 1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ff1, enabled:%{private}hhd}", &v12, 0x18u);
    }

    if (*(SAPlatformInfo::instance(v4) + 9) == 1)
    {
      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = _os_feature_enabled_impl();
        v12 = 68289283;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 1025;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ff2, enabled:%{private}hhd}", &v12, 0x18u);
      }
    }

    v7 = *(sub_100042820() + 72);
    v8 = SALogObjectGeneral;
    v9 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v12 = 68289026;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SafetyAlerts features enabled}", &v12, 0x12u);
      }

      sub_100075024();
    }

    if (v9)
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v10 = "{msg%{public}.0s:SafetyAlerts disabled}";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0x12u);
    }
  }

  else
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v10 = "{msg%{public}.0s:SafetyAlerts not supported in this platform}";
      goto LABEL_14;
    }
  }

  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t *sub_10007508C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  return sub_100075718(&qword_10014ACB8, v1);
}

void sub_100075328(_Unwind_Exception *a1)
{
  sub_10002A838(v1);
  sub_10002A838(v1);
  _Unwind_Resume(a1);
}

void (__cdecl *sub_1000753A0())(int)
{
  signal(14, 1);
  signal(2, 1);
  signal(3, 1);

  return signal(15, 1);
}

void sub_100075410(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013CCB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100075464(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2;
    if (*(a1 + 47) < 0)
    {
      v4 = *v2;
    }

    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sharedobj,release, id:%{private, location:escape_only}s}", v6, 0x1Cu);
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
    sub_1000053C4();
  }

  (*(*v5 + 48))(v5);
  sub_10000F274(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*v2);
  }
}

void sub_100075590(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000DB70(a1);
}

void sub_100075628()
{
  sub_100075718(&qword_10014ACB8, 0);
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SafetyAlerts shutdown complete}", v1, 0x12u);
  }

  sub_1000753A0();
  _Exit(0);
}

uint64_t sub_1000756CC(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013CD68))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100075718(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 1047) < 0)
    {
      operator delete(*(v2 + 1024));
    }

    if (*(v2 + 1023) < 0)
    {
      operator delete(*(v2 + 1000));
    }

    if (*(v2 + 999) < 0)
    {
      operator delete(*(v2 + 976));
    }

    v3 = *(v2 + 960);
    if (v3)
    {
      sub_10002A838(v3);
    }

    v4 = *(v2 + 944);
    if (v4)
    {
      sub_10002A838(v4);
    }

    v5 = *(v2 + 928);
    *(v2 + 928) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v2 + 920);
    *(v2 + 920) = 0;
    if (v6)
    {
      sub_100075C1C(v6);
      operator delete();
    }

    sub_10001CB38(v2 + 816);
    v7 = *(v2 + 808);
    *(v2 + 808) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v32 = (v2 + 784);
    sub_100005208(&v32);
    sub_100015A38(v2 + 760, *(v2 + 768));
    v32 = (v2 + 736);
    sub_100075C70(&v32);
    v32 = (v2 + 712);
    sub_100075CF8(&v32);
    v32 = (v2 + 656);
    sub_100075D80(&v32);
    v8 = *(v2 + 648);
    *(v2 + 648) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(v2 + 640);
    *(v2 + 640) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(v2 + 632);
    if (v10)
    {
      sub_10002A838(v10);
    }

    v11 = *(v2 + 616);
    *(v2 + 616) = 0;
    if (v11)
    {
      sub_10002F8D0(v11);
      operator delete();
    }

    v12 = *(v2 + 608);
    *(v2 + 608) = 0;
    if (v12)
    {
      sub_100073628(v12);
      operator delete();
    }

    v13 = *(v2 + 600);
    if (v13)
    {
      sub_10002A838(v13);
    }

    v14 = *(v2 + 584);
    *(v2 + 584) = 0;
    if (v14)
    {
      sub_1000955F4(v14);
      operator delete();
    }

    v15 = *(v2 + 576);
    if (v15)
    {
      sub_10002A838(v15);
    }

    v16 = *(v2 + 560);
    *(v2 + 560) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(v2 + 552);
    *(v2 + 552) = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = *(v2 + 544);
    *(v2 + 544) = 0;
    if (v18)
    {
      sub_1000A861C(v18);
      operator delete();
    }

    v19 = *(v2 + 536);
    *(v2 + 536) = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(v2 + 528);
    *(v2 + 528) = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = *(v2 + 520);
    *(v2 + 520) = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = *(v2 + 512);
    *(v2 + 512) = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = *(v2 + 504);
    *(v2 + 504) = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = *(v2 + 496);
    *(v2 + 496) = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = *(v2 + 488);
    *(v2 + 488) = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = *(v2 + 480);
    *(v2 + 480) = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = *(v2 + 472);
    *(v2 + 472) = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = *(v2 + 464);
    if (v28)
    {
      sub_10002A838(v28);
    }

    v29 = *(v2 + 448);
    *(v2 + 448) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = *(v2 + 440);
    if (v30)
    {
      sub_10002A838(v30);
    }

    v31 = *(v2 + 424);
    if (v31)
    {
      sub_10002A838(v31);
    }

    sub_10002D754(v2 + 24);

    operator delete();
  }

  return result;
}

void *sub_100075C1C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_10002A838(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_10002A838(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_10002A838(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    sub_10002A838(v5);
  }

  return a1;
}

void sub_100075C70(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 472;
        sub_10002D754((v4 - 392));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100075CF8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 11;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100075D80(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100075DD4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100075DD4(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      sub_100076CD4(result);
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_100075E40()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(sub_100074CD4, &qword_10014ACB8, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100075E9C(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 16) = 0;
  *a1 = &off_10013CD88;
  *(a1 + 8) = v3;
  v4 = SALogObjectGeneral;
  v5 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ar,init}", buf, 0x12u);
  }

  v6 = SASettings::instance(v5);
  v8[0] = off_10013CE40;
  v8[3] = v8;
  (*(*v6 + 16))(v6, v8);
  sub_10000F274(v8);

  return a1;
}

void sub_100075FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10000F274(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100076018(uint64_t a1)
{
  *a1 = &off_10013CD88;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ar,released}", v4, 0x12u);
  }

  return a1;
}

void sub_1000760FC(uint64_t a1)
{
  sub_100076018(a1);

  operator delete();
}

NSDictionary *__cdecl sub_100076134(id a1)
{
  v20[0] = @"isAmberAlertEnabled";
  v1 = SASettings::instance(a1);
  v19 = [NSNumber numberWithBool:(*(*v1 + 56))(v1)];
  v21[0] = v19;
  v20[1] = @"isEmergencyAlertEnabled";
  v2 = SASettings::instance(v19);
  v3 = [NSNumber numberWithBool:(*(*v2 + 48))(v2)];
  v21[1] = v3;
  v20[2] = @"isEnhancedDeliveryEnabled";
  v4 = sub_100002DB0();
  v5 = [NSNumber numberWithBool:*(v4 + 133) & *(v4 + 132) & 1];
  v21[2] = v5;
  v20[3] = @"isMagnetMode";
  v6 = sub_100002DB0();
  v7 = [NSNumber numberWithBool:*(v6 + 121) & *(v6 + 120) & 1];
  v21[3] = v7;
  v20[4] = @"isPublicSafetyEnabled";
  v8 = SASettings::instance(v7);
  v9 = [NSNumber numberWithBool:(*(*v8 + 64))(v8)];
  v21[4] = v9;
  v20[5] = @"isSubscribed";
  v10 = sub_100002DB0();
  v11 = [NSNumber numberWithBool:*(v10 + 127) & *(v10 + 126) & 1];
  v21[5] = v11;
  v20[6] = @"isTinkerWatch";
  v12 = [NSNumber numberWithBool:*(SAPlatformInfo::instance(v11) + 11)];
  v21[6] = v12;
  v20[7] = @"maContentVersion";
  v13 = [NSNumber numberWithInt:*(sub_100002DB0() + 17)];
  v21[7] = v13;
  v20[8] = @"maCompatibilityVersion";
  v14 = [NSNumber numberWithInt:*(sub_100002DB0() + 16)];
  v21[8] = v14;
  v20[9] = @"userInCoveredRegion";
  v15 = sub_100002DB0();
  v16 = [NSNumber numberWithBool:*(v15 + 105) & *(v15 + 104) & 1];
  v21[9] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:10];

  return v17;
}

NSDictionary *__cdecl sub_1000764E8(id a1)
{
  v5[0] = @"compatibilityVersion";
  v1 = [NSNumber numberWithUnsignedInt:*(*(sub_10001FA68() + 1) + 76)];
  v5[1] = @"contentVersion";
  v6[0] = v1;
  v2 = [NSNumber numberWithUnsignedInt:*(*(sub_10001FA68() + 1) + 72)];
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

void sub_100076604()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ar,run}", buf, 0x12u);
  }

  AnalyticsSendEventLazy();
  v1 = SALogObjectGeneral;
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    v3 = SASettings::instance(v2);
    v4 = (*(*v3 + 56))(v3);
    v23 = v4;
    v5 = SASettings::instance(v4);
    v6 = (*(*v5 + 48))(v5);
    v7 = sub_100002DB0();
    if (*(v7 + 133))
    {
      v8 = *(v7 + 132);
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_100002DB0();
    if (v9[121])
    {
      v10 = v9[120];
    }

    else
    {
      v10 = 0;
    }

    v11 = SASettings::instance(v9);
    v12 = (*(*v11 + 64))(v11);
    v13 = sub_100002DB0();
    if (v13[127])
    {
      v14 = v13[126];
    }

    else
    {
      v14 = 0;
    }

    v15 = *(SAPlatformInfo::instance(v13) + 11);
    v16 = sub_100002DB0();
    if (*(v16 + 105))
    {
      v17 = *(v16 + 104);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(sub_100002DB0() + 17);
    v19 = *(sub_100002DB0() + 16);
    *buf = 68291587;
    v26 = 2082;
    v25 = 0;
    v27 = "";
    v28 = 1026;
    v29 = v23;
    v30 = 1026;
    v31 = v6;
    v32 = 1026;
    v33 = v8;
    v34 = 1026;
    v35 = v10;
    v36 = 1026;
    v37 = v12;
    v38 = 1026;
    v39 = v14;
    v40 = 1026;
    v41 = v15;
    v42 = 1025;
    v43 = v17;
    v44 = 1026;
    v45 = v18;
    v46 = 1026;
    v47 = v19;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ar,submitAdoptionRateMetrics, isAmberAlertEnabled:%{public}hhd, isEmergencyAlertEnabled:%{public}hhd, isEnhancedDeliveryEnabled:%{public}hhd, isMagnetMode:%{public}hhd, isPublicSafetyEnabled:%{public}hhd, isSubscribed:%{public}hhd, isTinkerWatch:%{public}hhd, userInCoveredRegion:%{private}hhd, maContentVersion:%{public}d, maCompatibilityVersion:%{public}d}", buf, 0x4Eu);
  }

  AnalyticsSendEventLazy();
  v20 = SALogObjectGeneral;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(*(sub_10001FA68() + 1) + 76);
    v22 = *(*(sub_10001FA68() + 1) + 72);
    *buf = 68289539;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 1025;
    v29 = v21;
    v30 = 1025;
    v31 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ar,submitCodebookAdoptionMetrics, compatibilityVersion:%{private}d, contentVersion:%{private}d}", buf, 0x1Eu);
  }
}

void sub_1000769E0()
{
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 68289026;
    v1[1] = 0;
    v2 = 2082;
    v3 = "";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ar,onSettingsChanged}", v1, 0x12u);
  }
}

uint64_t sub_100076A94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100076AE0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  *a1 = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v5, 1uLL);
  *(a1 + 8) = a3;
  v6 = dword_10014AE10++;
  *(a1 + 16) = v6;
  sub_100076B88(a1, "#dbg,#pull,SAAlertObject()");

  return a1;
}

void sub_100076B88(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 8);
    SACommonUtils::getAnyCmam(*a1, __p);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 68290051;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = a2;
    v16 = 1026;
    v17 = v5;
    v18 = 2050;
    v19 = v6;
    v20 = 2081;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saAlertObject, context:%{public, location:escape_only}s, uid:%{public}d, fTime:%{public}0.1f, cmam:%{private, location:escape_only}s}", buf, 0x36u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_100076CD4(uint64_t a1)
{
  sub_100076B88(a1, "#dbg,#pull,~SAAlertObject()");
  *(a1 + 8) = 0xBFF0000000000000;

  return a1;
}

uint64_t sub_100076D18(void **a1, void *a2)
{
  v3 = a2;
  v4 = SALogObjectGeneral;
  if (v3)
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      SACommonUtils::getAnyCmam(v3, &__p);
      v6 = (v27 & 0x80u) == 0 ? &__p : __p;
      *buf = 68289283;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2081;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#saAlert,isSameSafetyAlert, otherAlert:%{private, location:escape_only}s}", buf, 0x1Cu);
      if (v27 < 0)
      {
        operator delete(__p);
      }
    }

    sub_1000770F0(&__p, v3);
    v7 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v7 = v26;
    }

    if (!v7)
    {
      v14 = SALogObjectGeneral;
      v13 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saAlert,isSameSafetyAlert,OtherAlertUidEmpty}", buf, 0x12u);
        v13 = 0;
      }

      goto LABEL_39;
    }

    sub_1000770F0(&__s1, *a1);
    v8 = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      v12 = v23;
      if (v23)
      {
        LODWORD(v9) = v27;
        v11 = v26;
        p_s1 = __s1;
        goto LABEL_20;
      }
    }

    else if (v24)
    {
      LODWORD(v9) = v27;
      p_s1 = &__s1;
      v11 = v26;
      v12 = v24;
LABEL_20:
      v15 = v9;
      v9 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v11;
      }

      if (v15 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v9 >= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 = v9;
      }

      LODWORD(v13) = v9 == v12;
      if (!memcmp(p_s1, p_p, v17))
      {
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      v18 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v19 = __s1;
        if (v8 >= 0)
        {
          v19 = &__s1;
        }

        *buf = 68289795;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2081;
        v33 = v19;
        v34 = 2081;
        v35 = p_p;
        v36 = 1025;
        v37 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saAlert,isSameSafetyAlert, self:%{private, location:escape_only}s, otherAlert:%{private, location:escape_only}s, compareResult:%{private}hhd}", buf, 0x2Cu);
      }

LABEL_37:
      if (v24 < 0)
      {
        operator delete(__s1);
      }

LABEL_39:
      if (v27 < 0)
      {
        operator delete(__p);
      }

      goto LABEL_41;
    }

    v20 = SALogObjectGeneral;
    v13 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saAlert,isSameSafetyAlert,SelfAlertUidEmpty}", buf, 0x12u);
      v13 = 0;
    }

    goto LABEL_37;
  }

  v13 = 0;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v29 = 0;
    v30 = 2082;
    v31 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saAlert,#warning,isSameSafetyAlert,failed,otherAlertIsNil}", buf, 0x12u);
    v13 = 0;
  }

LABEL_41:

  return v13;
}

void sub_1000770F0(_BYTE *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"uid"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v5;
      sub_1000060C4(a1, [v6 UTF8String]);
    }

    else
    {
      v7 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 68289026;
        v8[1] = 0;
        v9 = 2082;
        v10 = "";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saAlert,isSameSafetyAlert,infoError,noMatch}", v8, 0x12u);
      }

      sub_1000060C4(a1, "");
    }
  }

  else
  {
    sub_1000060C4(a1, "");
  }
}

BOOL sub_100077278(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (a1[1] != 5)
    {
      return 0;
    }

    a1 = *a1;
  }

  else if (v1 != 5)
  {
    return 0;
  }

  return *a1 == 1429042021 && *(a1 + 4) == 83;
}

uint64_t sub_1000772C8(void *__s)
{
  v1 = __s;
  v2 = *(__s + 23);
  if (v2 < 0)
  {
    v1 = *__s;
    v2 = __s[1];
  }

  v3 = v1 + v2;
  if (v2 >= 8)
  {
    v4 = v1;
    do
    {
      v5 = memchr(v4, 95, v2 - 7);
      if (!v5)
      {
        break;
      }

      if (*v5 == *"__ATTR__")
      {
        goto LABEL_9;
      }

      v4 = v5 + 1;
      v2 = v3 - v4;
    }

    while (v3 - v4 > 7);
  }

  v5 = v3;
LABEL_9:
  if (v5 == v3)
  {
    return -1;
  }

  else
  {
    return v5 - v1;
  }
}

void sub_100077350(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ignalert,getNotificationContent}", buf, 0x12u);
  }

  memset(v108, 0, 48);
  __asm { FMOV            V1.2D, #-1.0 }

  v108[3] = _Q1;
  v108[4] = _Q1;
  v109 = 0xBFF0000000000000;
  memset(v110, 0, sizeof(v110));
  v111 = 1065353216;
  memset(v112, 0, sizeof(v112));
  v113 = 1065353216;
  v8 = sub_10008E020();
  sub_10008F5B0(v8, v108);
  v10 = SASettings::instance(v9);
  v11 = (*(*v10 + 112))(&v107);
  v12 = SASettings::instance(v11);
  v13 = (*(*v12 + 120))(v12);
  v14 = sub_100002DB0();
  v15 = *v14;
  v16 = *(v14 + 1);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100004CEC(&v106, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v107;
  }

  v17 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ignalert,getNotificationContentInternal}", buf, 0x12u);
  }

  if (*(a1 + 180) == 4)
  {
    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100004CEC(&v118, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
      v36 = *(a1 + 180);
      if (v36 != 4)
      {
        v73 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1025;
          *&buf[20] = v36;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ignalert,getFollowUpAlertNotificationContent,not followUp, alertType:%{private}d}", buf, 0x18u);
        }

LABEL_120:
        if (SBYTE7(v119) < 0)
        {
          v81 = v118;
          goto LABEL_143;
        }

        goto LABEL_144;
      }
    }

    else
    {
      v118 = *&v106.__r_.__value_.__l.__data_;
      *&v119 = *(&v106.__r_.__value_.__l + 2);
    }

    *v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    *v136 = 0u;
    memset(buf, 0, sizeof(buf));
    v37 = BYTE7(v119);
    if ((BYTE7(v119) & 0x80) != 0)
    {
      sub_100004CEC(v123, v118, *(&v118 + 1));
      if (SBYTE7(v119) < 0)
      {
        if (*(&v118 + 1) != 5)
        {
          goto LABEL_51;
        }

        v43 = v118;
        goto LABEL_47;
      }

      v37 = BYTE7(v119);
    }

    else
    {
      *v123 = v118;
      *&v124 = v119;
    }

    if (v37 != 5)
    {
      goto LABEL_51;
    }

    v43 = &v118;
LABEL_47:
    v44 = *v43;
    v45 = *(v43 + 4);
    if (v44 == 1429042021 && v45 == 83)
    {
      v74 = *(a1 + 103);
      if ((v74 & 0x80u) != 0)
      {
        v74 = *(a1 + 88);
      }

      if (v74)
      {
        std::string::operator=(&buf[24], (a1 + 80));
        sub_10001D06C(buf, "Actualización de la alerta sísmica", 0x24uLL);
        if (SBYTE7(v124) < 0)
        {
          v123[1] = 5;
          v47 = v123[0];
        }

        else
        {
          BYTE7(v124) = 5;
          v47 = v123;
        }

        *(v47 + 4) = 83;
        v48 = 29541;
LABEL_55:
        *v47 = v48 | 0x552D0000;
        *(v47 + 5) = 0;
        v49 = HIBYTE(v135);
        if (v135 < 0)
        {
          v49 = v135;
        }

        if (v49)
        {
          v50 = sub_10005FF30(*&v112[0], *(&v112[0] + 1), *(a1 + 312));
          if (v50)
          {
            if (v50[3])
            {
              v51 = sub_100062E64(v50 + 7, v123);
              if (v51)
              {
                std::string::operator=(v136, (v51 + 5));
                v139 = 1;
                v52 = HIBYTE(v137[0]);
                if (SHIBYTE(v137[0]) < 0)
                {
                  v52 = v136[1];
                }

                if (v52)
                {
                  std::operator+<char>();
                  v53 = __p[23] >= 0 ? __p : *__p;
                  v54 = __p[23] >= 0 ? __p[23] : *&__p[8];
                  std::string::append(&buf[24], v53, v54);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }
                }

                std::string::operator=(a2, buf);
                std::string::operator=((a2 + 24), &buf[24]);
                std::string::operator=((a2 + 48), v136);
                std::string::operator=((a2 + 72), &v137[1]);
                v55 = v139;
                *(a2 + 96) = v139;
                v56 = SALogObjectGeneral;
                if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_110;
                }

                if (*(a2 + 47) >= 0)
                {
                  v57 = a2 + 24;
                }

                else
                {
                  v57 = *(a2 + 24);
                }

                if (*(a2 + 71) >= 0)
                {
                  v58 = a2 + 48;
                }

                else
                {
                  v58 = *(a2 + 48);
                }

                if (*(a2 + 95) >= 0)
                {
                  v59 = a2 + 72;
                }

                else
                {
                  v59 = *(a2 + 72);
                }

                *__p = 68290051;
                *&__p[8] = 2082;
                *&__p[10] = "";
                *&__p[18] = 2081;
                *&__p[20] = v57;
                v128 = 2081;
                v129 = v58;
                v130 = 2081;
                v131 = v59;
                v132 = 1025;
                v133 = v55;
                v60 = "{msg%{public}.0s:#ignalert,getFollowUpAlertNotificationContent, alert:%{private, location:escape_only}s, attribution:%{private, location:escape_only}s, tone:%{private, location:escape_only}s, level:%{private}d}";
                v61 = v56;
                v62 = 54;
                goto LABEL_109;
              }

              v72 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 68289026;
                *&__p[8] = 2082;
                *&__p[10] = "";
                v60 = "{msg%{public}.0s:#ignalert,getFollowUpAlertNotificationContent,attribution not found}";
                goto LABEL_108;
              }

LABEL_110:
              if (SBYTE7(v124) < 0)
              {
                operator delete(v123[0]);
              }

              if (SHIBYTE(v138) < 0)
              {
                operator delete(v137[1]);
              }

              if (SHIBYTE(v137[0]) < 0)
              {
                operator delete(v136[0]);
              }

              if (SHIBYTE(v135) < 0)
              {
                operator delete(*&buf[24]);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              goto LABEL_120;
            }

            v72 = SALogObjectGeneral;
            if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_110;
            }

            *__p = 68289026;
            *&__p[8] = 2082;
            *&__p[10] = "";
            v60 = "{msg%{public}.0s:#ignalert,getFollowUpAlertNotificationContent,source config not valid}";
          }

          else
          {
            v72 = SALogObjectGeneral;
            if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_110;
            }

            *__p = 68289026;
            *&__p[8] = 2082;
            *&__p[10] = "";
            v60 = "{msg%{public}.0s:#ignalert,getFollowUpAlertNotificationContent,source config not found}";
          }

LABEL_108:
          v61 = v72;
          v62 = 18;
LABEL_109:
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, v60, __p, v62);
          goto LABEL_110;
        }

        v63 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(a1 + 56);
          v65 = a1 + 56;
          v64 = v66;
          if (*(v65 + 23) >= 0)
          {
            v64 = v65;
          }

          v67 = *(v65 + 47);
          v70 = *(v65 + 24);
          v69 = v65 + 24;
          v68 = v70;
          if (v67 >= 0)
          {
            v71 = v69;
          }

          else
          {
            v71 = v68;
          }

          *__p = 68289539;
          *&__p[8] = 2082;
          *&__p[10] = "";
          *&__p[18] = 2081;
          *&__p[20] = v64;
          v128 = 2081;
          v129 = v71;
          v60 = "{msg%{public}.0s:#ignalert,getFollowUpAlertNotificationContent,followUp alert empty, englishTxt:%{private, location:escape_only}s, spanishTxt:%{private, location:escape_only}s}";
          v61 = v63;
          v62 = 38;
          goto LABEL_109;
        }

        goto LABEL_110;
      }
    }

LABEL_51:
    std::string::operator=(&buf[24], (a1 + 56));
    sub_10001D06C(buf, "Earthquake Alert Update", 0x17uLL);
    if (SBYTE7(v124) < 0)
    {
      v123[1] = 5;
      v47 = v123[0];
    }

    else
    {
      BYTE7(v124) = 5;
      v47 = v123;
    }

    *(v47 + 4) = 83;
    v48 = 28261;
    goto LABEL_55;
  }

  v18 = *(a1 + 312);
  v19 = sub_10005FF30(*&v112[0], *(&v112[0] + 1), *(a1 + 312));
  if (!v19)
  {
    v38 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_144;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1025;
    *&buf[20] = v18;
    v39 = "{msg%{public}.0s:#ignalert,getNotificationContentInternal,sourceNotFound, senderId:%{private}d}";
    v40 = v38;
    v41 = 24;
LABEL_42:
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
    goto LABEL_144;
  }

  v20 = v19;
  if ((v19[3] & 1) == 0)
  {
    v42 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_144;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v39 = "{msg%{public}.0s:#ignalert,getNotificationContentInternal,sourceNotValid}";
    v40 = v42;
    v41 = 18;
    goto LABEL_42;
  }

  v21 = *(a1 + 264);
  v22 = -1.0;
  if (v16 <= 180.0)
  {
    v23 = fabs(v15);
    if (v23 <= 90.0 && v16 >= -180.0 && (fabs(v23 + -0.0000001) > 0.0000001 || fabs(fabs(v16) + -0.0000001) > 0.0000001))
    {
      v24 = *(a1 + 240);
      v25 = *(a1 + 248);
      CLClientGetDistanceCoordinates();
      v22 = v26;
      if (v26 > *(a1 + 296) && v21 > *(v20 + 15))
      {
        v21 = *(v20 + 15);
      }
    }
  }

  *v123 = xmmword_1000E3350;
  v124 = xmmword_1000E3350;
  memset(&v125, 0, sizeof(v125));
  v126 = 0;
  v28 = v20[12];
  v27 = v20[13];
  if (v28 == v27)
  {
LABEL_33:
    v34 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_141;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v35 = "{msg%{public}.0s:#ignalert,getNotificationContentInternal,mmiBandNotFound}";
    goto LABEL_140;
  }

  v29 = *(a1 + 256);
  v30 = (v28 + 7);
  while (v21 < *(v30 - 7) || v21 >= *(v30 - 6) || v29 < *(v30 - 5) || v29 >= *(v30 - 4))
  {
    v33 = (v30 + 1);
    v30 += 8;
    if (v33 == v27)
    {
      goto LABEL_33;
    }
  }

  v75 = *(v30 - 5);
  *v123 = *(v30 - 7);
  v124 = v75;
  std::string::operator=(&v125, v30 - 1);
  v126 = *v30;
  v76 = sub_100039B6C(v110, &v125);
  v77 = v110[1];
  if (!v110[1])
  {
    goto LABEL_138;
  }

  v78 = v76;
  v79 = vcnt_s8(v110[1]);
  v79.i16[0] = vaddlv_u8(v79);
  v105 = v79.u32[0];
  if (v79.u32[0] > 1uLL)
  {
    v80 = v76;
    if (v76 >= v110[1])
    {
      v80 = v76 % v110[1];
    }
  }

  else
  {
    v80 = (v110[1] - 1) & v76;
  }

  v82 = *(v110[0] + 8 * v80);
  if (!v82 || (v83 = *v82) == 0)
  {
LABEL_138:
    v34 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_141;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v35 = "{msg%{public}.0s:#ignalert,getNotificationContentInternal,displayTemplateNotFound}";
    goto LABEL_140;
  }

  v104 = v110[1] - 1;
  while (1)
  {
    v84 = v83[1];
    if (v78 == v84)
    {
      break;
    }

    if (v105 > 1)
    {
      if (v84 >= v77)
      {
        v84 %= v77;
      }
    }

    else
    {
      v84 &= v104;
    }

    if (v84 != v80)
    {
      goto LABEL_138;
    }

LABEL_137:
    v83 = *v83;
    if (!v83)
    {
      goto LABEL_138;
    }
  }

  if (!sub_10004E530(v110, v83 + 2, &v125.__r_.__value_.__l.__data_))
  {
    goto LABEL_137;
  }

  size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v106.__r_.__value_.__l.__size_;
  }

  if (!size || !sub_100062E64(v83 + 5, &v106.__r_.__value_.__l.__data_))
  {
    v86 = *(v20 + 55);
    if ((v86 & 0x8000000000000000) != 0)
    {
      v86 = v20[5];
    }

    if (!v86 || (std::string::operator=(&v106, (v20 + 4)), !sub_100062E64(v83 + 5, &v106.__r_.__value_.__l.__data_)))
    {
      v34 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_141;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v35 = "{msg%{public}.0s:#ignalert,getNotificationContentInternal,languageNotFound}";
LABEL_140:
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x12u);
      goto LABEL_141;
    }
  }

  memset(&__str, 0, sizeof(__str));
  memset(&__dst, 0, sizeof(__dst));
  if (sub_100077278(&v106))
  {
    *(&__str.__r_.__value_.__s + 23) = 15;
    strcpy(&__str, "Alerta sísmica");
    __str.__r_.__value_.__s.__data_[15] = 0;
    *(&__dst.__r_.__value_.__s + 23) = 21;
    strcpy(&__dst, "Sismo detectado cerca");
  }

  else
  {
    *(&__str.__r_.__value_.__s + 23) = 16;
    strcpy(&__str, "Earthquake Alert");
    sub_10001D06C(&__dst, "Earthquake Detected Nearby", 0x1AuLL);
  }

  v87 = v126;
  if ((v126 + 1) < 3)
  {
    p_dst = &__dst;
    v87 = 1;
    goto LABEL_166;
  }

  if (v126 == 2)
  {
    p_dst = &__str;
LABEL_166:
    *(a2 + 96) = v87;
    std::string::operator=(a2, p_dst);
  }

  v89 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v90 = *(a2 + 96);
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1025;
    *&buf[20] = v90;
    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ignalert,getNotificationContentInternal,#richtext,setValue, level:%{private}d}", buf, 0x18u);
  }

  v118 = 0u;
  v119 = 0u;
  v120 = 1065353216;
  v91 = sub_100062E64(v83 + 5, &v106.__r_.__value_.__l.__data_);
  if (v91)
  {
    v92 = v91;
    if (*(v91 + 87) < 0)
    {
      sub_100004CEC(&__s, v91[8], v91[9]);
    }

    else
    {
      __s = *(v91 + 8);
    }

    if (v22 >= 0.0)
    {
      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100004CEC(&v116, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
      }

      else
      {
        v116 = v106;
      }

      SACommonUtils::getDistanceString(&v116, v13, buf, v22);
      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }

      *__p = "__ED__";
      v94 = sub_100078654(&v118, "__ED__");
      std::string::operator=((v94 + 5), buf);
      std::string::operator=(&__s, (v92 + 5));
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v95 = sub_100062E64(v20 + 7, &v106.__r_.__value_.__l.__data_);
    if (v95)
    {
      std::string::operator=((a2 + 48), (v95 + 5));
      sub_100039774(buf);
      v96 = *(a1 + 256);
      std::ostream::operator<<();
      sub_1000788F8(__p, &buf[24]);
      v114[0] = "__MAG__";
      v97 = sub_100078654(&v118, "__MAG__");
      v98 = v97;
      if (*(v97 + 63) < 0)
      {
        operator delete(v97[5]);
      }

      *(v98 + 5) = *__p;
      v98[7] = *&__p[16];
      *__p = "__ATTR__";
      v99 = sub_100078654(&v118, "__ATTR__");
      std::string::operator=((v99 + 5), (a2 + 48));
      sub_1000628F4(__p, &__s);
      sub_100062C84(__p, &v118, (a2 + 24));
      if (sub_1000772C8(&__s) == -1)
      {
        v101 = *(a2 + 71);
        if ((v101 & 0x80u) != 0)
        {
          v101 = *(a2 + 56);
        }

        if (v101)
        {
          std::operator+<char>();
          v102 = (v115 & 0x80u) == 0 ? v114 : v114[0];
          v103 = (v115 & 0x80u) == 0 ? v115 : v114[1];
          std::string::append((a2 + 24), v102, v103);
          if (v115 < 0)
          {
            operator delete(v114[0]);
          }
        }
      }

      std::string::operator=((a2 + 72), (v92 + 11));
      sub_1000785FC(__p);
      sub_100039A18(buf);
    }

    else
    {
      v100 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ignalert,getNotificationContentInternal,attributionNotFound}", buf, 0x12u);
      }
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v93 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ignalert,getNotificationContentInternal,notifConfigNotFound}", buf, 0x12u);
    }
  }

  sub_10002D950(&v118);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_141:
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    v81 = v125.__r_.__value_.__r.__words[0];
LABEL_143:
    operator delete(v81);
  }

LABEL_144:
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  sub_10002D804(v112);
  sub_10002DA28(v110);
  *buf = &v108[1] + 8;
  sub_100005208(buf);
  *buf = v108;
  sub_100005208(buf);
}

void sub_1000783F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  sub_1000785FC(&a77);
  sub_100039A18(&STACK[0x240]);
  if (a59 < 0)
  {
    operator delete(a54);
  }

  sub_10002D950(&a61);
  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_10002BE00(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_100078598(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000785FC(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_100005208(&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  sub_100005208(&v3);
  return a1;
}

const void **sub_100078654(void *a1, const void **a2)
{
  v4 = sub_100039B6C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10004E530(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1000788E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006ABB4(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000788F8(_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 96);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 88);
    v6 = *(a2 + 48);
    if (v5 < v6)
    {
      *(a2 + 88) = v6;
      v5 = v6;
    }

    v7 = (a2 + 40);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      __dst[23] = 0;
      goto LABEL_14;
    }

    v7 = (a2 + 16);
    v5 = *(a2 + 32);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100004D90();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v4;
  if (v4)
  {
    __dst = memmove(__dst, v8, v4);
  }

LABEL_14:
  v2[v4] = 0;
  return __dst;
}

BOOL sub_1000789DC(uint64_t a1, void *a2)
{
  v42 = a2;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v45 = 0;
    v46 = 2082;
    v47 = "";
    v48 = 2113;
    v49 = v42;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary, asset:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v5 = *(a1 + 8);
  for (i = *(a1 + 16); i != v5; sub_1000470C4(i))
  {
    i -= 40;
  }

  *(a1 + 16) = v5;
  if (v42)
  {
    v40 = [v42 objectForKey:@"features"];
    if (!v40 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v31 = SALogObjectGeneral;
      v41 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary,invalid_features}", buf, 0x12u);
        v41 = 0;
      }

      goto LABEL_55;
    }

    v6 = v40;
    v7 = [v6 count];
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2050;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary, featuresSize:%{public}lu}", buf, 0x1Cu);
    }

    v41 = v7 != 0;
    if (v7)
    {
      v37 = a1;
      for (j = 0; j != v7; ++j)
      {
        v10 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          v45 = 0;
          v46 = 2082;
          v47 = "";
          v48 = 1026;
          LODWORD(v49) = j;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary, index:%{public}d}", buf, 0x18u);
        }

        v11 = [v6 objectAtIndex:j];
        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v12 = v11;
          v13 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v45 = 0;
            v46 = 2082;
            v47 = "";
            v48 = 2114;
            v49 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary,feature, feature:%{public, location:escape_only}@}", buf, 0x1Cu);
          }

          v14 = [v12 objectForKey:@"properties"];
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v15 = v14;
            v16 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289282;
              v45 = 0;
              v46 = 2082;
              v47 = "";
              v48 = 2114;
              v49 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary, properties:%{public, location:escape_only}@}", buf, 0x1Cu);
            }

            v39 = v15;
            v17 = [v15 objectForKey:@"ch_config"];
            if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v38 = [v17 objectForKey:@"mp_channel"];
              if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v35 = v38;
                v36 = [v12 objectForKey:@"geometry"];
                if (v36)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v18 = v35;
                    v19 = [v35 UTF8String];
                    v20 = strlen(v19);
                    std::string::__init(&v43, v19, v20);
                    sub_100079570(buf, v36);
                  }
                }

                v25 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  v45 = 0;
                  v46 = 2082;
                  v47 = "";
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary,geometryFailed}", buf, 0x12u);
                }
              }

              else
              {
                v24 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  v45 = 0;
                  v46 = 2082;
                  v47 = "";
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary,channelIdObjectFailed}", buf, 0x12u);
                }
              }
            }

            else
            {
              v23 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289026;
                v45 = 0;
                v46 = 2082;
                v47 = "";
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary,channelConfigIdObjectFailed}", buf, 0x12u);
              }
            }
          }

          else
          {
            v22 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              v45 = 0;
              v46 = 2082;
              v47 = "";
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary,propertiesIdObjectFailed}", buf, 0x12u);
            }
          }
        }

        else
        {
          v21 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v45 = 0;
            v46 = 2082;
            v47 = "";
            v48 = 2050;
            v49 = j;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary,elementIsNotDictionary, index:%{public}lu}", buf, 0x1Cu);
          }
        }
      }

      v26 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      v27 = -858993459 * ((*(v37 + 16) - *(v37 + 8)) >> 3);
      *buf = 68289282;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v48 = 1026;
      LODWORD(v49) = v27;
      v28 = "{msg%{public}.0s:#gcma,loadFromDictionary, featuresSize:%{public}d}";
      v29 = v26;
      v30 = 24;
    }

    else
    {
      v33 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
LABEL_54:

LABEL_55:
        goto LABEL_56;
      }

      *buf = 68289026;
      v45 = 0;
      v46 = 2082;
      v47 = "";
      v28 = "{msg%{public}.0s:#gcma,loadFromDictionary,noFeatureInAsset}";
      v29 = v33;
      v30 = 18;
    }

    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
    goto LABEL_54;
  }

  v32 = SALogObjectGeneral;
  v41 = 0;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v45 = 0;
    v46 = 2082;
    v47 = "";
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFromDictionary,asset nil}", buf, 0x12u);
    v41 = 0;
  }

LABEL_56:

  return v41;
}

void sub_100079268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  sub_100079344(&a28);

  _Unwind_Resume(a1);
}

uint64_t sub_100079344(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10002A838(v2);
  }

  return a1;
}

uint64_t sub_100079384(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#gcma,loadFailSafe}", v4, 0x12u);
  }

  return (*(*a1 + 16))(a1);
}

uint64_t sub_100079464(uint64_t a1)
{
  *a1 = off_10013CEC0;
  v3 = (a1 + 8);
  sub_100047040(&v3);
  return a1;
}

void sub_1000794BC(uint64_t a1)
{
  *a1 = off_10013CEC0;
  v1 = (a1 + 8);
  sub_100047040(&v1);
  operator delete();
}

void sub_100079528(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; sub_1000470C4(i))
  {
    i -= 40;
  }

  *(a1 + 16) = v3;
}

void sub_1000795E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = *(v9 + 8);
  if (v11)
  {
    sub_10002A838(v11);
  }

  _Unwind_Resume(a1);
}

void *sub_10007967C(void *a1, NSDictionary **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10013CF18;
  SAGeometry::SAGeometry((a1 + 3), *a2);
  return a1;
}

void sub_1000796FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013CF18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100079750(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  v3 = *(a1 + 24);
}

uint64_t *sub_100079794(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (v8 + 1 > 0x666666666666666)
    {
      sub_10000509C();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v10;
    }

    v28 = result;
    if (v11)
    {
      sub_1000799C0(result, v11);
    }

    v13 = 40 * v8;
    v24 = 0;
    v25 = v13;
    v26 = v13;
    v27 = 0;
    v14 = *(a2 + 8);
    *v13 = *a2;
    *(v13 + 8) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 39) < 0)
    {
      sub_100004CEC((v13 + 16), *(a2 + 16), *(a2 + 24));
      v13 = v25;
      v16 = v26;
    }

    else
    {
      v15 = *(a2 + 16);
      *(v13 + 32) = *(a2 + 32);
      *(v13 + 16) = v15;
      v16 = v13;
    }

    v12 = v16 + 40;
    v26 = v16 + 40;
    v17 = *v3;
    v18 = v3[1];
    v19 = v13 + *v3 - v18;
    if (*v3 != v18)
    {
      v20 = *v3;
      v21 = v19;
      do
      {
        *v21 = *v20;
        *v20 = 0;
        *(v20 + 8) = 0;
        v22 = *(v20 + 16);
        *(v21 + 32) = *(v20 + 32);
        *(v21 + 16) = v22;
        *(v20 + 24) = 0;
        *(v20 + 32) = 0;
        *(v20 + 16) = 0;
        v20 += 40;
        v21 += 40;
      }

      while (v20 != v18);
      do
      {
        sub_1000470C4(v17);
        v17 += 40;
      }

      while (v17 != v18);
      v17 = *v3;
      v12 = v26;
    }

    *v3 = v19;
    v3[1] = v12;
    v23 = v3[2];
    v3[2] = v27;
    v26 = v17;
    v27 = v23;
    v24 = v17;
    v25 = v17;
    result = sub_100079A18(&v24);
  }

  else
  {
    v6 = *(a2 + 8);
    *v5 = *a2;
    *(v5 + 8) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 39) < 0)
    {
      result = sub_100004CEC((v5 + 16), *(a2 + 16), *(a2 + 24));
    }

    else
    {
      v7 = *(a2 + 16);
      *(v5 + 32) = *(a2 + 32);
      *(v5 + 16) = v7;
    }

    v12 = v5 + 40;
    v3[1] = v5 + 40;
  }

  v3[1] = v12;
  return result;
}

void sub_100079988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_10002A838(v4);
  }

  sub_100079A18(va);
  _Unwind_Resume(a1);
}

void sub_1000799C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100004E38();
}

uint64_t sub_100079A18(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_1000470C4(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100079A68(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10007A308(v21, a3);
  *a1 = off_10013CFE0;
  sub_10007A3A0(v21);
  *a1 = off_10013CF68;
  v6 = v5;
  a1[2] = 0;
  v7 = (a1 + 2);
  a1[1] = v6;
  a1[3] = 0;
  a1[4] = 0;
  sub_10007A308((a1 + 5), a3);
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#motion,init}", &v17, 0x12u);
  }

  v9 = objc_opt_new();
  v10 = a1[3];
  a1[3] = v9;

  v11 = a1[3];
  if (v11)
  {
    [v11 setUnderlyingQueue:a1[1]];
    v12 = objc_alloc_init(CMMotionActivityManager);
    v13 = *v7;
    *v7 = v12;

    if (*v7)
    {
      if (a1[3])
      {
        v14 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 68289026;
          v18 = 0;
          v19 = 2082;
          v20 = "";
          v15 = "{msg%{public}.0s:#motion,Activity manager created}";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v17, 0x12u);
        }
      }
    }
  }

  else
  {
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v15 = "{msg%{public}.0s:#motion,invalid motionOpQueue}";
      goto LABEL_10;
    }
  }

  return a1;
}

uint64_t sub_100079D00(uint64_t a1)
{
  *a1 = off_10013CF68;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#motion,deinit}", v7, 0x12u);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    [v3 stopActivityUpdates];
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 24) = 0;
  }

  sub_10007A3A0(a1 + 40);

  return a1;
}

void sub_100079E28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000DB70(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100079E38(uint64_t a1)
{
  sub_100079D00(a1);

  operator delete();
}

uint64_t sub_100079E70(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#motion,startMonitoring}", buf, 0x12u);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100079F8C;
      v6[3] = &unk_10013CF88;
      v6[4] = a1;
      [v3 startActivityUpdatesToQueue:v4 withHandler:v6];
    }
  }

  return 1;
}

void sub_100079F8C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = objc_autoreleasePoolPush();
  v15 = v4;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#motion,cb}", buf, 0x12u);
  }

  if (v15)
  {
    objc_storeStrong((v5 + 32), a2);
    if ([*(v5 + 32) stationary])
    {
      v8 = 0;
    }

    else if ([*(v5 + 32) walking])
    {
      v8 = 1;
    }

    else if ([*(v5 + 32) automotive])
    {
      v8 = 3;
    }

    else if ([*(v5 + 32) cycling])
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(v5 + 32) stationary];
      v11 = [*(v5 + 32) walking];
      v12 = [*(v5 + 32) automotive];
      v13 = [*(v5 + 32) cycling];
      *buf = 68290307;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 1025;
      v21 = v10;
      v22 = 1025;
      v23 = v11;
      v24 = 1025;
      v25 = v12;
      v26 = 1025;
      v27 = v13;
      v28 = 1025;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#motion,cb, isStationary:%{private}hhd, walking:%{private}hhd, automotive:%{private}hhd, cycling:%{private}hhd, fMotionState:%{private}d}", buf, 0x30u);
    }

    v14 = *(v5 + 64);
    *buf = v8;
    if (!v14)
    {
      sub_1000053C4();
    }

    (*(*v14 + 48))(v14, buf);
    *(sub_100002DB0() + 12) = v8;
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_10007A23C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#motion,stopMonitoring}", v4, 0x12u);
  }

  [*(a1 + 16) stopActivityUpdates];
  return 1;
}

uint64_t sub_10007A308(uint64_t a1, uint64_t a2)
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

uint64_t sub_10007A3A0(uint64_t a1)
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

__n128 sub_10007A43C()
{
  xmmword_10014ACD0 = vdupq_n_s64(0xC08F400000000000);
  unk_10014ACE0 = xmmword_10014ACD0;
  xmmword_10014ACF0 = xmmword_1000E3400;
  dword_10014AD00 = 5;
  unk_10014AD08 = 0u;
  unk_10014AD18 = 0u;
  unk_10014AD28 = 0u;
  unk_10014AD38 = 0u;
  unk_10014AD48 = 0u;
  unk_10014AD58 = 0u;
  dword_10014AD68 = 2;
  qword_10014AD70 = 0xBFF0000000000000;
  word_10014AD78 = 0;
  dword_10014AD7C = 0;
  byte_10014AD80 = 0;
  dword_10014AD84 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  unk_10014AD88 = result;
  dword_10014AD98 = 0;
  return result;
}

uint64_t sub_10007A4B4(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return a1;
}

uint64_t sub_10007A4E8(unsigned __int8 *a1)
{
  sub_100017378(v10);
  v2 = sub_10008E020();
  sub_10008FEA0(v2, v10);
  v3 = v10[1];
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (a1[131] == 1)
    {
      v5 = a1[130];
    }

    else
    {
      v5 = 0;
    }

    if (a1[133] == 1)
    {
      v6 = a1[132];
    }

    else
    {
      v6 = 0;
    }

    buf = 68289795;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v3;
    v18 = 1025;
    v19 = v5;
    v20 = 1025;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#System,isBleDiscoveryAllowed, isBLEDiscoveryDefaultOnSupported:%{private}hhd, isEmergencyAlertSwitchEnabled:%{private}hhd, isEnhancedDeliverySwitchEnabled:%{private}hhd}", &buf, 0x24u);
  }

  if (!v3)
  {
    if (a1[133] == 1)
    {
      v7 = 132;
      goto LABEL_14;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if ((a1[131] & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = 130;
LABEL_14:
  v8 = a1[v7];
LABEL_16:
  sub_100017590(&v12);
  sub_100017590(&v11);
  return v8 & 1;
}

void sub_10007A974(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289539;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = v3;
    v11 = 2113;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,requestAuthorizationWithOptionsCallback, granted:%{private}hhd, error:%{private, location:escape_only}@}", v6, 0x22u);
  }
}

void sub_10007B76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v52 - 137) < 0)
  {
    operator delete(*(v52 - 160));
  }

  _Unwind_Resume(a1);
}

void sub_10007BAA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) content];
      v6 = [v5 threadIdentifier];
      v7[0] = 68289539;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2113;
      v11 = v6;
      v12 = 2113;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,addNotificationRequest failed, threadId:%{private, location:escape_only}@, inUNError:%{private, location:escape_only}@}", v7, 0x26u);
    }
  }
}

void sub_10007D90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void *sub_10007DD18(void *a1, void *a2, void *a3)
{
  v5 = a2;
  *a1 = off_10013D0C8;
  v6 = v5;
  a1[2] = 0;
  v7 = (a1 + 2);
  a1[1] = v6;
  a1[3] = 0;
  v8 = a3[1];
  a1[4] = *a3;
  a1[5] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = [SAUnUserNotificationProxy alloc];
  v10 = a1[1];
  v11 = a1[5];
  v22 = a1[4];
  v23 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = [(SAUnUserNotificationProxy *)v9 initWithQueue:v10 bundleIdentifier:"com.apple.safetyalerts" authorizationOption:16 interruptionLevel:3 extension:"safetyAlertsUIExtension" categoryName:"safetyAlertsUIExtension" analyticsRef:&v22];
  v13 = *v7;
  *v7 = v12;

  if (v23)
  {
    sub_10002A838(v23);
  }

  v14 = [SAUnUserNotificationProxy alloc];
  v15 = a1[1];
  v16 = a1[5];
  v20 = a1[4];
  v21 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = [(SAUnUserNotificationProxy *)v14 initWithQueue:v15 bundleIdentifier:"com.apple.safetyalerts.aw" authorizationOption:4 interruptionLevel:1 extension:"safetyAlertsAwUIExtension" categoryName:"safetyAlertsAwUIExtension" analyticsRef:&v20];
  v18 = a1[3];
  a1[3] = v17;

  if (v21)
  {
    sub_10002A838(v21);
  }

  return a1;
}

void sub_10007DE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10002A838(a12);
  }

  v15 = *(v12 + 40);
  if (v15)
  {
    sub_10002A838(v15);
  }

  _Unwind_Resume(a1);
}

void sub_10007DEC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALogObjectGeneral;
  v5 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v26 = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,, d:%{private, location:escape_only}@}", &v26, 0x1Cu);
    }

    v6 = [NSString stringWithUTF8String:"type"];
    v7 = [v3 objectForKey:v6];

    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "igneous"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, (v9 & 1) == 0))
    {
      v20 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 68289026;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,warning,typeMissingOrInvalid}", &v26, 0x12u);
      }

      goto LABEL_23;
    }

    v10 = v3;
    v11 = [NSString stringWithUTF8String:"level"];
    v12 = [v10 objectForKey:v11];

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [v12 intValue] + 1;
      if (v13 < 4)
      {
        v14 = *(a1 + qword_1000E3448[v13]);
        if (v14)
        {
          v15 = v14;
          v16 = [NSString stringWithUTF8String:"subType"];
          v17 = [v10 objectForKey:v16];

          if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v18 = [NSString stringWithUTF8String:"rich"];
            v19 = [v17 isEqualToString:v18];

            if (v19)
            {
              [v15 postIgneousRichNotification:v10];
LABEL_28:

LABEL_22:
LABEL_23:

              goto LABEL_24;
            }

            v24 = [NSString stringWithUTF8String:"text"];
            v25 = [v17 isEqualToString:v24];

            if (v25)
            {
              [v15 postIgneousTextNotification:v10];
              goto LABEL_28;
            }

            v22 = SALogObjectGeneral;
            if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_28;
            }

            v26 = 68289026;
            v27 = 0;
            v28 = 2082;
            v29 = "";
            v23 = "{msg%{public}.0s:#notif,warning,subTypeInvalid}";
          }

          else
          {
            v22 = SALogObjectGeneral;
            if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_28;
            }

            v26 = 68289026;
            v27 = 0;
            v28 = 2082;
            v29 = "";
            v23 = "{msg%{public}.0s:#notif,warning,subTypeMissingOrInvalid}";
          }

          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, &v26, 0x12u);
          goto LABEL_28;
        }
      }
    }

    else
    {

      v12 = 0;
    }

    v21 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 68289026;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,warning,notifObjectInvalid}", &v26, 0x12u);
    }

    goto LABEL_22;
  }

  if (v5)
  {
    v26 = 68289026;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#notif,warning,emptyContent}", &v26, 0x12u);
  }

LABEL_24:
}

void sub_10007E364(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_10007E430(uint64_t a1)
{
  sub_10007E468(a1);

  operator delete();
}

uint64_t sub_10007E468(uint64_t a1)
{
  *a1 = off_10013D0C8;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10002A838(v2);
  }

  return a1;
}

void *sub_10007E4CC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_100062738(v16, a3);
  *a1 = off_10013C2C0;
  sub_1000627F8(v16);
  *a1 = off_10013D120;
  v6 = v5;
  a1[1] = v6;
  a1[2] = 0;
  sub_100062738((a1 + 3), a3);
  a1[7] = 0;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,init}", &v12, 0x12u);
  }

  v8 = objc_alloc_init(CWFInterface);
  v9 = a1[2];
  a1[2] = v8;

  if (!a1[2])
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#wifi,init,unable to create cwInterface}", &v12, 0x12u);
    }
  }

  return a1;
}

void sub_10007E690(_Unwind_Exception *a1)
{
  sub_1000627F8(v1 + 24);

  _Unwind_Resume(a1);
}

uint64_t sub_10007E6D0(uint64_t a1)
{
  *a1 = off_10013D120;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,deinit}", v6, 0x12u);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
  }

  sub_1000627F8(a1 + 24);

  return a1;
}

void sub_10007E7D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000DB70(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10007E7E8(uint64_t a1)
{
  sub_10007E6D0(a1);

  operator delete();
}

void sub_10007E820(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v13 = 2082;
    *&v13[2] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,startMonitoring}", buf, 0x12u);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    [v3 activate];
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v13 = 2082;
      *&v13[2] = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,setupMonitoringEvent}", buf, 0x12u);
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      *buf = _NSConcreteStackBlock;
      *v13 = 3221225472;
      *&v13[8] = sub_100001D80;
      *&v13[16] = &unk_10013D140;
      v14 = a1;
      [v5 setEventHandler:buf];
    }

    else
    {
      v7 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *v13 = 2082;
        *&v13[2] = "";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,setupMonitoringEvent,cwInterface nil}", buf, 0x12u);
      }
    }

    v8 = *(a1 + 16);
    v11 = 0;
    [v8 startMonitoringEventType:7 error:&v11];
    v9 = v11;
    if (v9)
    {
      v10 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *v13 = 2082;
        *&v13[2] = "";
        *&v13[10] = 2114;
        *&v13[12] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,registerForLinkQualityNotifications, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v13 = 2082;
      *&v13[2] = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,startMonitoring,cwInterface is nil}", buf, 0x12u);
    }
  }
}

id sub_10007EAF4(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,stopMonitoring}", v4, 0x12u);
  }

  result = *(a1 + 16);
  if (result)
  {
    return [result stopMonitoringEventType:7];
  }

  return result;
}

void sub_10007EBBC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) type] == 7)
  {
    v4 = [*(a1 + 32) info];
    v5 = [v4 objectForKeyedSubscript:CWFEventLinkQualityMetricKey];

    *(v2 + 56) = [v5 CCA];
    [v5 rxRate];
    if (v6 != 0.0)
    {
      [v5 rxRate];
      v8 = v7;
      *(v2 + 60) = v7;
      v9 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
      {
        v12 = 68289283;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 1025;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Wifi,cb, wifiRxPhyRate:%{private}d}", &v12, 0x18u);
      }

      v10 = *(v2 + 48);
      v12 = v8;
      if (!v10)
      {
        sub_1000053C4();
      }

      (*(*v10 + 48))(v10, &v12);
      *(sub_100002DB0() + 7) = v8;
    }
  }

  else
  {
    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Wifi,setupMonitoringEvent,unexpected type}", &v12, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_10007EDE4(unsigned int *a1)
{
  v2 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v3 = 5;
    if (*(a1 + 23) <= 5u)
    {
      if (v2 != 3)
      {
        v4 = a1;
        if (v2 != 4)
        {
          goto LABEL_59;
        }

        goto LABEL_10;
      }

      if (*a1 != 25966 || *(a1 + 2) != 119)
      {
        goto LABEL_59;
      }

LABEL_47:
      v3 = 1;
      goto LABEL_59;
    }

    if (v2 != 6)
    {
      if (v2 == 9 && *a1 == 0x755F776F6C6C6F66 && *(a1 + 8) == 112)
      {
        v3 = 4;
      }

      goto LABEL_59;
    }

    if (*a1 != 1633972341 || *(a1 + 2) != 25972)
    {
      if (*a1 ^ 0x636E6163 | *(a1 + 2) ^ 0x6C65)
      {
        v3 = 5;
      }

      else
      {
        v3 = 3;
      }

      goto LABEL_59;
    }

LABEL_58:
    v3 = 2;
    goto LABEL_59;
  }

  v5 = *(a1 + 1);
  v3 = 5;
  if (v5 > 5)
  {
    if (v5 != 6)
    {
      if (v5 == 9)
      {
        if (**a1 ^ 0x755F776F6C6C6F66 | *(*a1 + 8) ^ 0x70)
        {
          v3 = 5;
        }

        else
        {
          v3 = 4;
        }
      }

      goto LABEL_59;
    }

    v14 = *a1;
    if (**a1 != 1633972341 || *(*a1 + 4) != 25972)
    {
      v16 = *v14;
      v17 = *(v14 + 2);
      if (v16 == 1668178275 && v17 == 27749)
      {
        v3 = 3;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (v5 != 3)
  {
    if (v5 != 4)
    {
      goto LABEL_59;
    }

    v4 = *a1;
LABEL_10:
    v6 = bswap32(*v4);
    v7 = v6 >= 0x74657374;
    v8 = v6 > 0x74657374;
    v9 = !v7;
    if (v8 == v9)
    {
      v3 = 0;
    }

    else
    {
      v3 = 5;
    }

    goto LABEL_59;
  }

  if (**a1 == 25966 && *(*a1 + 2) == 119)
  {
    goto LABEL_47;
  }

LABEL_59:
  v19 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if ((v2 & 0x80u) == 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = *a1;
    }

    v22[0] = 68289539;
    v22[1] = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2081;
    v26 = v20;
    v27 = 1025;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,getAlertType, alertTypeStr:%{private, location:escape_only}s, alertType:%{private}d}", v22, 0x22u);
  }

  return v3;
}

BOOL sub_10007F0C4(void *a1, uint64_t a2)
{
  v27 = a1;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractAlertPolygon}", buf, 0x12u);
  }

  v3 = *(a2 + 344);
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  if (v3)
  {
    sub_10002A838(v3);
  }

  v4 = [v27 objectForKey:{@"mmi_polygons", v27}];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = SALogObjectGeneral;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 count];
        *buf = 68289283;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 1025;
        LODWORD(v40) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractAlertPolygon, polygonCounts:%{private}d}", buf, 0x18u);
      }

      *(a2 + 328) = 1;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (!v8)
      {
        v10 = -1.0;
        goto LABEL_41;
      }

      v9 = *v32;
      v10 = -1.0;
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          if (!v12)
          {
            v19 = SALogObjectGeneral;
            if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_28;
            }

            *buf = 68289026;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v17 = v19;
            v18 = "{msg%{public}.0s:#iap,extractAlertPolygon,mmi polygon nil}";
            goto LABEL_27;
          }

          v13 = [*(*(&v31 + 1) + 8 * v11) objectForKey:@"mmi"];
          if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {

            v16 = SALogObjectGeneral;
            if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_28;
            }

            *buf = 68289026;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v17 = v16;
            v18 = "{msg%{public}.0s:#iap,extractAlertPolygon,mmi missing}";
LABEL_27:
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x12u);
            goto LABEL_28;
          }

          [v13 doubleValue];
          if (v14 <= 0.0)
          {
            v20 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              v36 = 0;
              v37 = 2082;
              v38 = "";
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractAlertPolygon,invalid mmi}", buf, 0x12u);
            }
          }

          else
          {
            location = 0;
            v15 = [v12 objectForKey:@"geometry"];
            if (v15)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong(&location, v15);
              }
            }

            if (location)
            {
              sub_100079610();
            }

            v21 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              v36 = 0;
              v37 = 2082;
              v38 = "";
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractAlertPolygon,geometry missing}", buf, 0x12u);
            }
          }

LABEL_28:
          v11 = v11 + 1;
        }

        while (v8 != v11);
        v22 = [v7 countByEnumeratingWithState:&v31 objects:v41 count:16];
        v8 = v22;
        if (!v22)
        {
LABEL_41:

          v25 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v39 = 2049;
            v40 = v10;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractAlertPolygon, maxMMI:%{private}0.1f}", buf, 0x1Cu);
          }

          v24 = v10 >= 0.0;

          goto LABEL_44;
        }
      }
    }
  }

  v23 = SALogObjectGeneral;
  v24 = 0;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractAlertPolygon,mmi polygon array missing}", buf, 0x12u);
    v24 = 0;
  }

LABEL_44:

  return v24;
}

uint64_t sub_10007F75C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractBLEData}", buf, 0x12u);
  }

  v5 = (a2 + 152);
  if (*(a2 + 175) < 0)
  {
    operator delete(*v5);
  }

  *v5 = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v6 = (a2 + 104);
  if (*(a2 + 127) < 0)
  {
    operator delete(*v6);
  }

  *v6 = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v7 = (a2 + 128);
  if (*(a2 + 151) < 0)
  {
    operator delete(*v7);
  }

  *v7 = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  v8 = [v3 objectForKey:@"relayPduV1"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 objectForKey:@"signature"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v8 objectForKey:@"uid"];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = [v8 objectForKey:@"data"];
        v12 = v11;
        if (v11 && (v73 = v11, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12 = v73, (isKindOfClass & 1) != 0))
        {
          v14 = v73;
          v15 = v10;
          sub_1000060C4(buf, [v73 UTF8String]);
          if (*(a2 + 151) < 0)
          {
            operator delete(*v7);
          }

          *v7 = *buf;
          *(a2 + 144) = *&buf[16];
          v16 = v10;
          sub_1000060C4(buf, [v10 UTF8String]);
          if (*(a2 + 175) < 0)
          {
            operator delete(*v5);
          }

          *v5 = *buf;
          *(a2 + 168) = *&buf[16];
          v17 = v9;
          sub_1000060C4(buf, [v9 UTF8String]);
          if (*(a2 + 127) < 0)
          {
            operator delete(*v6);
          }

          *v6 = *buf;
          *(a2 + 120) = *&buf[16];
          v18 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
          {
            if (*(a2 + 175) >= 0)
            {
              v19 = a2 + 152;
            }

            else
            {
              v19 = *(a2 + 152);
            }

            if (*(a2 + 151) >= 0)
            {
              v20 = (a2 + 128);
            }

            else
            {
              v20 = *(a2 + 128);
            }

            if (*(a2 + 127) >= 0)
            {
              v21 = (a2 + 104);
            }

            else
            {
              v21 = *(a2 + 104);
            }

            *buf = 68289795;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = v19;
            v75 = 2081;
            v76 = v20;
            v77 = 2081;
            v78 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#iap,extractBLEData, bleAlertUID:%{private, location:escape_only}s, bleAlertData:%{private, location:escape_only}s, alertSignature:%{private, location:escape_only}s}", buf, 0x30u);
            v18 = SALogObjectGeneral;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 175) >= 0)
            {
              v63 = a2 + 152;
            }

            else
            {
              v63 = *(a2 + 152);
            }

            v64 = *(a2 + 352);
            v65 = *(a2 + 384);
            v66 = *(a2 + 184);
            v67 = *(a2 + 192);
            v68 = *(a2 + 200);
            v69 = *(a2 + 208);
            v70 = *(a2 + 216);
            v71 = *(a2 + 320);
            *buf = 68292355;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = "info";
            v75 = 2081;
            v76 = "igAlertFlow";
            v77 = 2081;
            v78 = "iap";
            v79 = 2081;
            v80 = "extractBLEData";
            v81 = 2081;
            v82 = v63;
            v83 = 1025;
            v84 = v64;
            v85 = 1025;
            v86 = v65;
            v87 = 2049;
            v88 = v66;
            v89 = 2049;
            v90 = v67;
            v91 = 2049;
            v92 = v68;
            v93 = 2049;
            v94 = v69;
            v95 = 2049;
            v96 = v70;
            v97 = 2049;
            v98 = v71;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:extractBLEData done, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
          }

          v23 = 1;
        }

        else
        {

          v15 = v10;
          v53 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractBLEData,bleAlertData nil}", buf, 0x12u);
            v53 = SALogObjectGeneral;
          }

          v23 = 0;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 175) >= 0)
            {
              v54 = a2 + 152;
            }

            else
            {
              v54 = *(a2 + 152);
            }

            v55 = *(a2 + 352);
            v56 = *(a2 + 384);
            v57 = *(a2 + 184);
            v58 = *(a2 + 192);
            v59 = *(a2 + 200);
            v60 = *(a2 + 208);
            v61 = *(a2 + 216);
            v62 = *(a2 + 320);
            *buf = 68292355;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = "warning";
            v75 = 2081;
            v76 = "igAlertFlow";
            v77 = 2081;
            v78 = "iap";
            v79 = 2081;
            v80 = "extractBLEData";
            v81 = 2081;
            v82 = v54;
            v83 = 1025;
            v84 = v55;
            v85 = 1025;
            v86 = v56;
            v87 = 2049;
            v88 = v57;
            v89 = 2049;
            v90 = v58;
            v91 = 2049;
            v92 = v59;
            v93 = 2049;
            v94 = v60;
            v95 = 2049;
            v96 = v61;
            v97 = 2049;
            v98 = v62;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:bleAlertData is nil, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
            v23 = 0;
          }
        }
      }

      else
      {

        v43 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractBLEData,bleAlertUid nil}", buf, 0x12u);
          v43 = SALogObjectGeneral;
        }

        v23 = 0;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 175) >= 0)
          {
            v44 = a2 + 152;
          }

          else
          {
            v44 = *(a2 + 152);
          }

          v45 = *(a2 + 352);
          v46 = *(a2 + 384);
          v47 = *(a2 + 184);
          v48 = *(a2 + 192);
          v49 = *(a2 + 200);
          v50 = *(a2 + 208);
          v51 = *(a2 + 216);
          v52 = *(a2 + 320);
          *buf = 68292355;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = "warning";
          v75 = 2081;
          v76 = "igAlertFlow";
          v77 = 2081;
          v78 = "iap";
          v79 = 2081;
          v80 = "extractBLEData";
          v81 = 2081;
          v82 = v44;
          v83 = 1025;
          v84 = v45;
          v85 = 1025;
          v86 = v46;
          v87 = 2049;
          v88 = v47;
          v89 = 2049;
          v90 = v48;
          v91 = 2049;
          v92 = v49;
          v93 = 2049;
          v94 = v50;
          v95 = 2049;
          v96 = v51;
          v97 = 2049;
          v98 = v52;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:bleAlertUid is nil, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
          v23 = 0;
        }
      }
    }

    else
    {

      v33 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractBLEData,alertSignature nil}", buf, 0x12u);
        v33 = SALogObjectGeneral;
      }

      v23 = 0;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 175) >= 0)
        {
          v34 = a2 + 152;
        }

        else
        {
          v34 = *(a2 + 152);
        }

        v35 = *(a2 + 352);
        v36 = *(a2 + 384);
        v37 = *(a2 + 184);
        v38 = *(a2 + 192);
        v39 = *(a2 + 200);
        v40 = *(a2 + 208);
        v41 = *(a2 + 216);
        v42 = *(a2 + 320);
        *buf = 68292355;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = "warning";
        v75 = 2081;
        v76 = "igAlertFlow";
        v77 = 2081;
        v78 = "iap";
        v79 = 2081;
        v80 = "extractBLEData";
        v81 = 2081;
        v82 = v34;
        v83 = 1025;
        v84 = v35;
        v85 = 1025;
        v86 = v36;
        v87 = 2049;
        v88 = v37;
        v89 = 2049;
        v90 = v38;
        v91 = 2049;
        v92 = v39;
        v93 = 2049;
        v94 = v40;
        v95 = 2049;
        v96 = v41;
        v97 = 2049;
        v98 = v42;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:alertSignature is nil, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
        v23 = 0;
      }
    }
  }

  else
  {

    v22 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,extractBLEData,relayPDU nil}", buf, 0x12u);
      v22 = SALogObjectGeneral;
    }

    v23 = 0;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 175) >= 0)
      {
        v24 = a2 + 152;
      }

      else
      {
        v24 = *(a2 + 152);
      }

      v25 = *(a2 + 352);
      v26 = *(a2 + 384);
      v27 = *(a2 + 184);
      v28 = *(a2 + 192);
      v29 = *(a2 + 200);
      v30 = *(a2 + 208);
      v31 = *(a2 + 216);
      v32 = *(a2 + 320);
      *buf = 68292355;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = "warning";
      v75 = 2081;
      v76 = "igAlertFlow";
      v77 = 2081;
      v78 = "iap";
      v79 = 2081;
      v80 = "extractBLEData";
      v81 = 2081;
      v82 = v24;
      v83 = 1025;
      v84 = v25;
      v85 = 1025;
      v86 = v26;
      v87 = 2049;
      v88 = v27;
      v89 = 2049;
      v90 = v28;
      v91 = 2049;
      v92 = v29;
      v93 = 2049;
      v94 = v30;
      v95 = 2049;
      v96 = v31;
      v97 = 2049;
      v98 = v32;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:relayPDU is nil, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
      v23 = 0;
    }
  }

  return v23;
}

uint64_t sub_1000802D4(void *a1, double *a2)
{
  v3 = a1;
  a2[34] = 0.0;
  a2[35] = 0.0;
  a2[33] = -1.0;
  v48 = v3;
  v4 = [v3 objectForKey:@"alert"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v46 = v4;
    v5 = [v4 objectForKey:@"mmi_grid"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = a2;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v49 objects:v63 count:16];
        if (!v7)
        {
          goto LABEL_50;
        }

        v8 = *v50;
LABEL_7:
        v9 = 0;
        while (1)
        {
          if (*v50 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = COERCE_DOUBLE(*(*(&v49 + 1) + 8 * v9));
          if (v10 == 0.0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v26 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              v54 = 0;
              v55 = 2082;
              v56 = "";
              v27 = v26;
              v28 = "{msg%{public}.0s:#iap,parseMMIGrid,invalid mmi grid}";
              v29 = 18;
LABEL_31:
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v29);
            }
          }

          else
          {
            v11 = [*&v10 count];
            if (v11 == 3)
            {
              v12 = [*&v10 objectAtIndex:0];
              if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v31 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  v54 = 0;
                  v55 = 2082;
                  v56 = "";
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parseMMIGrid,not NSNumber for lat}", buf, 0x12u);
                }

                goto LABEL_41;
              }

              [v12 doubleValue];
              v14 = v13;
              v15 = [*&v10 objectAtIndex:1];
              if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v15 doubleValue];
                v17 = v16;
                v18 = v14 != 0.0;
                if (v16 != 0.0)
                {
                  v18 = 1;
                }

                if (v16 <= 180.0 && v16 >= -180.0 && v14 <= 90.0 && v14 >= -90.0 && v18)
                {
                  v19 = [*&v10 objectAtIndex:2];
                  v47 = v19;
                  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    [v19 doubleValue];
                    v21 = v20;
                    if (v20 >= 0.0)
                    {
                      v45[34] = v14;
                      v45[35] = v17;
                      v45[33] = v20;
                      v44 = SALogObjectGeneral;
                      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 68289795;
                        v54 = 0;
                        v55 = 2082;
                        v56 = "";
                        v57 = 2049;
                        v58 = v14;
                        v59 = 2049;
                        v60 = v17;
                        v61 = 2049;
                        v62 = v21;
                        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parseMMIGrid,success, lat:%{private}0.5f, lon:%{private}0.5f, mmi:%{private}0.1f}", buf, 0x30u);
                      }

                      v41 = 1;
                      goto LABEL_58;
                    }

                    v22 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 68289283;
                      v54 = 0;
                      v55 = 2082;
                      v56 = "";
                      v57 = 2049;
                      v58 = v21;
                      v23 = v22;
                      v24 = "{msg%{public}.0s:#iap,parseMMIGrid,invalid mmi value, mmi:%{private}0.1f}";
                      v25 = 28;
                      goto LABEL_47;
                    }
                  }

                  else
                  {
                    v37 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 68289026;
                      v54 = 0;
                      v55 = 2082;
                      v56 = "";
                      v23 = v37;
                      v24 = "{msg%{public}.0s:#iap,parseMMIGrid,not NSNumber for mmi}";
                      v25 = 18;
LABEL_47:
                      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
                    }
                  }

                  goto LABEL_41;
                }

                v36 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289539;
                  v54 = 0;
                  v55 = 2082;
                  v56 = "";
                  v57 = 2049;
                  v58 = v14;
                  v59 = 2049;
                  v60 = v17;
                  v33 = v36;
                  v34 = "{msg%{public}.0s:#iap,parseMMIGrid,invalid coordinate, lat:%{private}.5f, lon:%{private}.5f}";
                  v35 = 38;
LABEL_39:
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v34, buf, v35);
                }
              }

              else
              {
                v32 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  v54 = 0;
                  v55 = 2082;
                  v56 = "";
                  v33 = v32;
                  v34 = "{msg%{public}.0s:#iap,parseMMIGrid,not NSNumber for lon}";
                  v35 = 18;
                  goto LABEL_39;
                }
              }

              goto LABEL_41;
            }

            v30 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289539;
              v54 = 0;
              v55 = 2082;
              v56 = "";
              v57 = 2113;
              v58 = v10;
              v59 = 2050;
              *&v60 = v11;
              v27 = v30;
              v28 = "{msg%{public}.0s:#iap,parseMMIGrid,invalid mmiGridarray length, mmiGrid:%{private, location:escape_only}@, arrayLen:%{public}lu}";
              v29 = 38;
              goto LABEL_31;
            }
          }

LABEL_41:

          if (v7 == ++v9)
          {
            v38 = [v6 countByEnumeratingWithState:&v49 objects:v63 count:16];
            v7 = v38;
            if (v38)
            {
              goto LABEL_7;
            }

LABEL_50:

            v39 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              v54 = 0;
              v55 = 2082;
              v56 = "";
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parseMMIGrid,fail}", buf, 0x12u);
            }

LABEL_57:
            v41 = 0;
            goto LABEL_58;
          }
        }
      }
    }

    v42 = SALogObjectGeneral;
    v41 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v54 = 0;
      v55 = 2082;
      v56 = "";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parseMMIGrid,mmiGrids nil}", buf, 0x12u);
      goto LABEL_57;
    }

LABEL_58:
  }

  else
  {

    v40 = SALogObjectGeneral;
    v41 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v54 = 0;
      v55 = 2082;
      v56 = "";
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parseMMIGrid,alert dict nil}", buf, 0x12u);
      v41 = 0;
    }
  }

  return v41;
}

uint64_t sub_100080B74(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v27 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse,input dict nil}", buf, 0x12u);
      v27 = SALogObjectGeneral;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v42 = *(a2 + 152);
    v41 = a2 + 152;
    v40 = v42;
    if (*(v41 + 23) >= 0)
    {
      v40 = v41;
    }

    v43 = *(v41 + 200);
    v44 = *(v41 + 232);
    v45 = *(v41 + 32);
    v46 = *(v41 + 40);
    v47 = *(v41 + 48);
    v48 = *(v41 + 56);
    v49 = *(v41 + 64);
    v50 = *(v41 + 168);
    *buf = 68292355;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = "warning";
    v226 = 2081;
    v227 = "igAlertFlow";
    v228 = 2081;
    v229 = "iap";
    v230 = 2081;
    *v231 = "parse";
    *&v231[8] = 2081;
    v232 = v40;
    v233 = 1025;
    *v234 = v43;
    *&v234[4] = 1025;
    *&v234[6] = v44;
    *v235 = 2049;
    *&v235[2] = v45;
    *v236 = 2049;
    *&v236[2] = v46;
    *v237 = 2049;
    *&v237[2] = v47;
    *v238 = 2049;
    *&v238[2] = v48;
    *v239 = 2049;
    *&v239[2] = v49;
    *v240 = 2049;
    *&v240[2] = v50;
    v39 = "{msg%{public}.0s:input is nil, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    goto LABEL_37;
  }

  v5 = [v3 objectForKey:@"alert"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;

      v7 = [v6 objectForKey:@"uid"];
      if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

        v52 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse,uid nil}", buf, 0x12u);
          v52 = SALogObjectGeneral;
        }

        v14 = 0;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v55 = *(a2 + 152);
          v54 = a2 + 152;
          v53 = v55;
          if (*(v54 + 23) >= 0)
          {
            v53 = v54;
          }

          v56 = *(v54 + 200);
          v57 = *(v54 + 232);
          v58 = *(v54 + 32);
          v59 = *(v54 + 40);
          v60 = *(v54 + 48);
          v61 = *(v54 + 56);
          v62 = *(v54 + 64);
          v63 = *(v54 + 168);
          *buf = 68292355;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = "warning";
          v226 = 2081;
          v227 = "igAlertFlow";
          v228 = 2081;
          v229 = "iap";
          v230 = 2081;
          *v231 = "parse";
          *&v231[8] = 2081;
          v232 = v53;
          v233 = 1025;
          *v234 = v56;
          *&v234[4] = 1025;
          *&v234[6] = v57;
          *v235 = 2049;
          *&v235[2] = v58;
          *v236 = 2049;
          *&v236[2] = v59;
          *v237 = 2049;
          *&v237[2] = v60;
          *v238 = 2049;
          *&v238[2] = v61;
          *v239 = 2049;
          *&v239[2] = v62;
          *v240 = 2049;
          *&v240[2] = v63;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:uid is nil, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
          v14 = 0;
        }

        goto LABEL_219;
      }

      v8 = v7;

      sub_1000060C4(&__str, [v8 UTF8String]);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        v64 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse,uid empty}", buf, 0x12u);
          v64 = SALogObjectGeneral;
        }

        v14 = 0;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v67 = *(a2 + 152);
          v66 = a2 + 152;
          v65 = v67;
          if (*(v66 + 23) >= 0)
          {
            v65 = v66;
          }

          v68 = *(v66 + 200);
          v69 = *(v66 + 232);
          v70 = *(v66 + 32);
          v71 = *(v66 + 40);
          v72 = *(v66 + 48);
          v73 = *(v66 + 56);
          v74 = *(v66 + 64);
          v75 = *(v66 + 168);
          *buf = 68292355;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = "warning";
          v226 = 2081;
          v227 = "igAlertFlow";
          v228 = 2081;
          v229 = "iap";
          v230 = 2081;
          *v231 = "parse";
          *&v231[8] = 2081;
          v232 = v65;
          v233 = 1025;
          *v234 = v68;
          *&v234[4] = 1025;
          *&v234[6] = v69;
          *v235 = 2049;
          *&v235[2] = v70;
          *v236 = 2049;
          *&v236[2] = v71;
          *v237 = 2049;
          *&v237[2] = v72;
          *v238 = 2049;
          *&v238[2] = v73;
          *v239 = 2049;
          *&v239[2] = v74;
          *v240 = 2049;
          *&v240[2] = v75;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:uid is empty, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
          v14 = 0;
        }

        goto LABEL_216;
      }

      v221 = v8;
      std::string::operator=((a2 + 8), &__str);
      __p[0] = 0;
      __p[1] = 0;
      v223 = 0;
      v10 = [v6 objectForKey:@"type"];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          SACommonUtils::getStringValue(v10, buf);
          if (SHIBYTE(v223) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *buf;
          v223 = *&buf[16];
        }
      }

      v11 = sub_10007EDE4(__p);
      *(a2 + 180) = v11;
      if (v11 == 5)
      {
        v12 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v13 = __p;
          if (v223 < 0)
          {
            v13 = __p[0];
          }

          *buf = 68289283;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse,invalid type, alertType:%{private, location:escape_only}s}", buf, 0x1Cu);
          v12 = SALogObjectGeneral;
        }

        v14 = 0;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a2 + 152);
          v16 = a2 + 152;
          v15 = v17;
          if (*(v16 + 23) >= 0)
          {
            v15 = v16;
          }

          v18 = *(v16 + 200);
          v19 = *(v16 + 232);
          v20 = *(v16 + 32);
          v21 = *(v16 + 40);
          v22 = *(v16 + 48);
          v23 = *(v16 + 56);
          v24 = *(v16 + 64);
          v25 = *(v16 + 168);
          v26 = __p;
          if (v223 < 0)
          {
            v26 = __p[0];
          }

          *buf = 68292611;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = "warning";
          v226 = 2081;
          v227 = "igAlertFlow";
          v228 = 2081;
          v229 = "iap";
          v230 = 2081;
          *v231 = "parse";
          *&v231[8] = 2081;
          v232 = v15;
          v233 = 1025;
          *v234 = v18;
          *&v234[4] = 1025;
          *&v234[6] = v19;
          *v235 = 2049;
          *&v235[2] = v20;
          *v236 = 2049;
          *&v236[2] = v21;
          *v237 = 2049;
          *&v237[2] = v22;
          *v238 = 2049;
          *&v238[2] = v23;
          *v239 = 2049;
          *&v239[2] = v24;
          *v240 = 2049;
          *&v240[2] = v25;
          *v241 = 2081;
          *&v241[2] = v26;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid type, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, alertType:%{private, location:escape_only}s}", buf, 0x96u);
          v14 = 0;
        }

        goto LABEL_214;
      }

      if (*(a2 + 79) < 0)
      {
        operator delete(*(a2 + 56));
      }

      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      v76 = [v6 objectForKey:@"English"];
      if (v76)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          SACommonUtils::getStringValue(v76, buf);
          if (*(a2 + 79) < 0)
          {
            operator delete(*(a2 + 56));
          }

          *(a2 + 56) = *buf;
          *(a2 + 72) = *&buf[16];
        }
      }

      if (*(a2 + 103) < 0)
      {
        operator delete(*(a2 + 80));
      }

      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      v77 = [v6 objectForKey:@"Spanish"];
      if (v77)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          SACommonUtils::getStringValue(v77, buf);
          if (*(a2 + 103) < 0)
          {
            operator delete(*(a2 + 80));
          }

          *(a2 + 80) = *buf;
          *(a2 + 96) = *&buf[16];
        }
      }

      v78 = [v6 objectForKey:@"ingress_to_server_timestamp"];
      if (v78 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v220 = v78;
      }

      else
      {
        v220 = 0;
      }

      v79 = [v6 objectForKey:@"egress_from_source_timestamp"];
      if (v79 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v218 = v79;
      }

      else
      {
        v218 = 0;
      }

      v80 = [v6 objectForKey:@"event_origin_timestamp"];
      if (v80 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v217 = v80;
      }

      else
      {
        v217 = 0;
      }

      v81 = [v6 objectForKey:@"effective"];
      if (v81 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v216 = v81;
      }

      else
      {
        v216 = 0;
      }

      v82 = [v6 objectForKey:@"expires"];
      if (v82 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v219 = v82;
      }

      else
      {
        v219 = 0;
      }

      [v220 doubleValue];
      *(a2 + 184) = v83 + -978307200.0;
      [v218 doubleValue];
      *(a2 + 192) = v84 + -978307200.0;
      [v219 doubleValue];
      *(a2 + 216) = v85 + -978307200.0;
      [v217 doubleValue];
      *(a2 + 200) = v86 + -978307200.0;
      [v216 doubleValue];
      *(a2 + 208) = v87 + -978307200.0;
      v88 = [v6 objectForKey:@"sender_id"];
      if (v88 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v89 = v88;
      }

      else
      {
        v89 = 0;
      }

      *(a2 + 312) = sub_10008BE20([v89 integerValue]);
      *(a2 + 240) = 0;
      v90 = [v6 objectForKey:@"epi_latitude"];
      if (v90)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v90 doubleValue];
          *(a2 + 240) = v91;
        }
      }

      *(a2 + 248) = 0;
      v92 = [v6 objectForKey:@"epi_longitude"];
      if (v92)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v92 doubleValue];
          *(a2 + 248) = v93;
        }
      }

      *(a2 + 224) = 0xBFF0000000000000;
      v94 = [v6 objectForKey:@"depth"];
      if (v94)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v94 doubleValue];
          *(a2 + 224) = v95;
        }
      }

      *(a2 + 256) = 0xBFF0000000000000;
      v96 = [v6 objectForKey:@"magnitude"];
      if (v96)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v96 doubleValue];
          *(a2 + 256) = v97;
        }
      }

      *(a2 + 232) = 0xBFF0000000000000;
      v98 = [v6 objectForKey:@"event_update_number"];
      if (v98)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v98 doubleValue];
          *(a2 + 232) = v99;
        }
      }

      v100 = (a2 + 360);
      if (*(a2 + 383) < 0)
      {
        operator delete(*v100);
      }

      *v100 = 0;
      *(a2 + 368) = 0;
      *(a2 + 376) = 0;
      v101 = [v6 objectForKey:@"productionId"];
      if (v101)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          SACommonUtils::getStringValue(v101, buf);
          if (*(a2 + 383) < 0)
          {
            operator delete(*v100);
          }

          *v100 = *buf;
          *(a2 + 376) = *&buf[16];
        }
      }

      if ((sub_1000802D4(v4, a2) & 1) == 0)
      {
        v102 = SALogObjectGeneral;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse,parseMMIGrid failed}", buf, 0x12u);
        }

        v103 = SALogObjectGeneral;
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
        {
          v104 = *(a2 + 152);
          if (*(a2 + 175) >= 0)
          {
            v104 = a2 + 152;
          }

          v105 = *(a2 + 352);
          v106 = *(a2 + 384);
          v107 = *(a2 + 184);
          v108 = *(a2 + 192);
          v109 = *(a2 + 200);
          v110 = *(a2 + 208);
          v111 = *(a2 + 216);
          v112 = *(a2 + 320);
          *buf = 68292355;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = "warning";
          v226 = 2081;
          v227 = "igAlertFlow";
          v228 = 2081;
          v229 = "iap";
          v230 = 2081;
          *v231 = "parse";
          *&v231[8] = 2081;
          v232 = v104;
          v233 = 1025;
          *v234 = v105;
          *&v234[4] = 1025;
          *&v234[6] = v106;
          *v235 = 2049;
          *&v235[2] = v107;
          *v236 = 2049;
          *&v236[2] = v108;
          *v237 = 2049;
          *&v237[2] = v109;
          *v238 = 2049;
          *&v238[2] = v110;
          *v239 = 2049;
          *&v239[2] = v111;
          *v240 = 2049;
          *&v240[2] = v112;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:parseMMIGrid failed, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
        }
      }

      if (!sub_10007F0C4(v6, a2))
      {
        v113 = SALogObjectGeneral;
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse,extractAlertPolygon failed}", buf, 0x12u);
        }

        v114 = SALogObjectGeneral;
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          v115 = *(a2 + 152);
          if (*(a2 + 175) >= 0)
          {
            v115 = a2 + 152;
          }

          v116 = *(a2 + 352);
          v117 = *(a2 + 384);
          v118 = *(a2 + 184);
          v119 = *(a2 + 192);
          v120 = *(a2 + 200);
          v121 = *(a2 + 208);
          v122 = *(a2 + 216);
          v123 = *(a2 + 320);
          *buf = 68292355;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = "warning";
          v226 = 2081;
          v227 = "igAlertFlow";
          v228 = 2081;
          v229 = "iap";
          v230 = 2081;
          *v231 = "parse";
          *&v231[8] = 2081;
          v232 = v115;
          v233 = 1025;
          *v234 = v116;
          *&v234[4] = 1025;
          *&v234[6] = v117;
          *v235 = 2049;
          *&v235[2] = v118;
          *v236 = 2049;
          *&v236[2] = v119;
          *v237 = 2049;
          *&v237[2] = v120;
          *v238 = 2049;
          *&v238[2] = v121;
          *v239 = 2049;
          *&v239[2] = v122;
          *v240 = 2049;
          *&v240[2] = v123;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:extractAlertPolygon failed, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
        }
      }

      if (*(a2 + 180) == 4)
      {
        goto LABEL_129;
      }

      if (sub_10007F75C(v4, a2))
      {
        memset(v267, 0, 29);
        sub_1000828A4(a2, v267);
        if (sub_100087F38(v267, 0x1C, a2, v127, v128, v129, v130))
        {
LABEL_129:
          v124 = SALogObjectGeneral;
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
          {
            v125 = *(a2 + 31);
            if (v125 < 0)
            {
              if (*(a2 + 16))
              {
                v126 = *(a2 + 8);
              }

              else
              {
                v126 = "";
              }
            }

            else
            {
              v158 = v125 == 0;
              v126 = (a2 + 8);
              if (v158)
              {
                v126 = "";
              }
            }

            v156 = *(a2 + 127);
            if (v156 < 0)
            {
              v157 = *(a2 + 104);
              v158 = *(a2 + 112) == 0;
            }

            else
            {
              v157 = (a2 + 104);
              v158 = v156 == 0;
            }

            if (v158)
            {
              v159 = "";
            }

            else
            {
              v159 = v157;
            }

            v160 = *(a2 + 151);
            if (v160 < 0)
            {
              v161 = *(a2 + 128);
              v162 = *(a2 + 136) == 0;
            }

            else
            {
              v161 = (a2 + 128);
              v162 = v160 == 0;
            }

            if (v162)
            {
              v163 = "";
            }

            else
            {
              v163 = v161;
            }

            v164 = *(a2 + 175);
            if (v164 < 0)
            {
              v165 = *(a2 + 152);
              v166 = *(a2 + 160) == 0;
            }

            else
            {
              v165 = (a2 + 152);
              v166 = v164 == 0;
            }

            if (v166)
            {
              v167 = "";
            }

            else
            {
              v167 = v165;
            }

            v168 = *(a2 + 184);
            v169 = *(a2 + 192);
            v170 = *(a2 + 200);
            v171 = *(a2 + 208);
            v172 = *(a2 + 232);
            v173 = *(a2 + 240);
            v174 = *(a2 + 248);
            v175 = *(a2 + 256);
            v176 = *(a2 + 216);
            v177 = *(a2 + 224);
            v179 = *(a2 + 272);
            v178 = *(a2 + 280);
            v180 = *(a2 + 264);
            v181 = *(a2 + 312);
            *buf = 68293635;
            *&buf[8] = 2082;
            *&buf[4] = 0;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = v126;
            v226 = 2081;
            v227 = v159;
            v228 = 2081;
            v229 = v163;
            v230 = 2081;
            *v231 = v167;
            *&v231[8] = 2049;
            v232 = v168;
            v233 = 2049;
            *v234 = v169;
            *&v234[8] = 2049;
            *v235 = v170;
            *&v235[8] = 2049;
            *v236 = v171;
            *&v236[8] = 2049;
            *v237 = v176;
            *&v237[8] = 2049;
            *v238 = v172;
            *&v238[8] = 2049;
            *v239 = v173;
            *&v239[8] = 2049;
            *v240 = v174;
            *&v240[8] = 2049;
            *v241 = v175;
            *&v241[8] = 2049;
            *v242 = v177;
            *&v242[8] = 2053;
            *v243 = v179;
            *&v243[8] = 2053;
            *v244 = v178;
            *&v244[8] = 2049;
            *v245 = v180;
            *&v245[8] = 1025;
            *v246 = v181;
            _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse, uid:%{private, location:escape_only}s, alertSignature:%{private, location:escape_only}s, bleAlertData:%{private, location:escape_only}s, bleAlertUID:%{private, location:escape_only}s, ingress_to_server_ts:%{private}0.3f, egress_from_source_ts:%{private}0.3f, event_origin_ts:%{private}0.3f, effective:%{private}0.3f, expires:%{private}0.3f, event_update_number:%{private}0.3f, epi_latitude:%{private}0.3f, epi_longitude:%{private}0.3f, magnitude:%{private}0.3f, depth:%{private}0.3f, mmiLat:%{sensitive}0.3f, mmiLon:%{sensitive}0.3f, mmiLevel:%{private}0.3f, SenderId:%{private}d}", buf, 0xC2u);
          }

          v182 = SALogObjectGeneral;
          if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
          {
            v183 = *(a2 + 127);
            if ((v183 & 0x80u) != 0)
            {
              v183 = *(a2 + 112);
            }

            v184 = *(a2 + 151);
            if (v184 < 0)
            {
              v184 = *(a2 + 136);
            }

            if (*(a2 + 383) >= 0)
            {
              v185 = (a2 + 360);
            }

            else
            {
              v185 = *(a2 + 360);
            }

            v186 = *(a2 + 180);
            v187 = *(a2 + 384);
            *buf = 68290307;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2049;
            *&buf[20] = v183;
            v226 = 2049;
            v227 = v184;
            v228 = 2081;
            v229 = v185;
            v230 = 1025;
            *v231 = v186;
            *&v231[4] = 1025;
            *&v231[6] = v187;
            _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse, alertSignatureLen:%{private}llu, bleAlertDataLen:%{private}llu, productionKey:%{private, location:escape_only}s, alertType:%{private}d, transport:%{private}d}", buf, 0x3Cu);
          }

          v188 = SALogObjectGeneral;
          if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 175) >= 0)
            {
              v189 = a2 + 152;
            }

            else
            {
              v189 = *(a2 + 152);
            }

            v190 = *(a2 + 31);
            if (v190 < 0)
            {
              if (*(a2 + 16))
              {
                v191 = *(a2 + 8);
              }

              else
              {
                v191 = "";
              }
            }

            else
            {
              v158 = v190 == 0;
              v191 = (a2 + 8);
              if (v158)
              {
                v191 = "";
              }
            }

            v215 = v191;
            v192 = *(a2 + 127);
            if (v192 < 0)
            {
              if (*(a2 + 112))
              {
                v193 = *(a2 + 104);
              }

              else
              {
                v193 = "";
              }
            }

            else
            {
              v193 = (a2 + 104);
              if (!*(a2 + 127))
              {
                v193 = "";
              }
            }

            v214 = v89;
            v194 = *(a2 + 352);
            v195 = *(a2 + 384);
            v196 = *(a2 + 184);
            v197 = *(a2 + 192);
            v199 = *(a2 + 200);
            v198 = *(a2 + 208);
            v200 = *(a2 + 216);
            v201 = *(a2 + 320);
            v202 = *(a2 + 151);
            if (v202 < 0)
            {
              v204 = *(a2 + 136);
              v203 = "";
              if (v204)
              {
                v203 = *(a2 + 128);
              }
            }

            else
            {
              v203 = "";
              if (*(a2 + 151))
              {
                v203 = (a2 + 128);
              }

              v204 = *(a2 + 136);
            }

            v206 = *(a2 + 240);
            v205 = *(a2 + 248);
            v208 = *(a2 + 224);
            v207 = *(a2 + 232);
            v210 = *(a2 + 272);
            v209 = *(a2 + 280);
            v212 = *(a2 + 256);
            v211 = *(a2 + 264);
            if (v192 < 0)
            {
              v192 = *(a2 + 112);
            }

            if (v202 >= 0)
            {
              v204 = *(a2 + 151);
            }

            if (*(a2 + 383) < 0)
            {
              v100 = *(a2 + 360);
            }

            v213 = *(a2 + 180);
            *buf = 68296451;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = "info";
            v226 = 2081;
            v227 = "igAlertFlow";
            v228 = 2081;
            v229 = "iap";
            v230 = 2081;
            *v231 = "parse";
            *&v231[8] = 2081;
            v232 = v189;
            v233 = 1025;
            *v234 = v194;
            *&v234[4] = 1025;
            *&v234[6] = v195;
            *v235 = 2049;
            *&v235[2] = v196;
            *v236 = 2049;
            *&v236[2] = v197;
            *v237 = 2049;
            *&v237[2] = v199;
            *v238 = 2049;
            *&v238[2] = v198;
            *v239 = 2049;
            *&v239[2] = v200;
            *v240 = 2049;
            *&v240[2] = v201;
            *v241 = 2081;
            *&v241[2] = v215;
            *v242 = 2081;
            *&v242[2] = v193;
            *v243 = 2081;
            *&v243[2] = v203;
            *v244 = 2049;
            *&v244[2] = v207;
            *v245 = 2049;
            *&v245[2] = v206;
            *v246 = 2049;
            *&v246[2] = v205;
            v247 = 2049;
            v248 = v212;
            v249 = 2049;
            v250 = v208;
            v251 = 2053;
            v252 = v210;
            v253 = 2053;
            v254 = v209;
            v255 = 2049;
            v256 = v211;
            v257 = 2049;
            v258 = v192;
            v259 = 2049;
            v260 = v204;
            v261 = 2081;
            v262 = v100;
            v263 = 1025;
            v264 = v213;
            v265 = 1025;
            v266 = v195;
            _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:parse APNS alert done, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, uid:%{private, location:escape_only}s, alertSignature:%{private, location:escape_only}s, bleAlertData:%{private, location:escape_only}s, event_update_number:%{private}0.3f, epi_latitude:%{private}0.3f, epi_longitude:%{private}0.3f, magnitude:%{private}0.3f, depth:%{private}0.3f, mmiLat:%{sensitive}0.3f, mmiLon:%{sensitive}0.3f, mmiLevel:%{private}0.3f, alertSignatureLen:%{private}llu, bleAlertDataLen:%{private}llu, productionKey:%{private, location:escape_only}s, alertType:%{private}d, transport:%{private}d}", buf, 0x124u);
            v89 = v214;
          }

          v14 = 1;
          goto LABEL_213;
        }

        v131 = SALogObjectGeneral;
        if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse,ble PDU decode failed}", buf, 0x12u);
        }

        v132 = SALogObjectGeneral;
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          v135 = *(a2 + 152);
          v134 = a2 + 152;
          v133 = v135;
          if (*(v134 + 23) >= 0)
          {
            v133 = v134;
          }

          v136 = *(v134 + 200);
          v137 = *(v134 + 232);
          v138 = *(v134 + 32);
          v139 = *(v134 + 40);
          v140 = *(v134 + 48);
          v141 = *(v134 + 56);
          v142 = *(v134 + 64);
          v143 = *(v134 + 168);
          *buf = 68292355;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = "warning";
          v226 = 2081;
          v227 = "igAlertFlow";
          v228 = 2081;
          v229 = "iap";
          v230 = 2081;
          *v231 = "parse";
          *&v231[8] = 2081;
          v232 = v133;
          v233 = 1025;
          *v234 = v136;
          *&v234[4] = 1025;
          *&v234[6] = v137;
          *v235 = 2049;
          *&v235[2] = v138;
          *v236 = 2049;
          *&v236[2] = v139;
          *v237 = 2049;
          *&v237[2] = v140;
          *v238 = 2049;
          *&v238[2] = v141;
          *v239 = 2049;
          *&v239[2] = v142;
          *v240 = 2049;
          *&v240[2] = v143;
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ble PDU decode failed, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
        }
      }

      else
      {
        v144 = SALogObjectGeneral;
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse,extractBLEData failed}", buf, 0x12u);
        }

        v132 = SALogObjectGeneral;
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          v147 = *(a2 + 152);
          v146 = a2 + 152;
          v145 = v147;
          if (*(v146 + 23) >= 0)
          {
            v145 = v146;
          }

          v148 = *(v146 + 200);
          v149 = *(v146 + 232);
          v150 = *(v146 + 32);
          v151 = *(v146 + 40);
          v152 = *(v146 + 48);
          v153 = *(v146 + 56);
          v154 = *(v146 + 64);
          v155 = *(v146 + 168);
          *buf = 68292355;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = "warning";
          v226 = 2081;
          v227 = "igAlertFlow";
          v228 = 2081;
          v229 = "iap";
          v230 = 2081;
          *v231 = "parse";
          *&v231[8] = 2081;
          v232 = v145;
          v233 = 1025;
          *v234 = v148;
          *&v234[4] = 1025;
          *&v234[6] = v149;
          *v235 = 2049;
          *&v235[2] = v150;
          *v236 = 2049;
          *&v236[2] = v151;
          *v237 = 2049;
          *&v237[2] = v152;
          *v238 = 2049;
          *&v238[2] = v153;
          *v239 = 2049;
          *&v239[2] = v154;
          *v240 = 2049;
          *&v240[2] = v155;
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:extractBLEData failed, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
        }
      }

      v14 = 0;
LABEL_213:

      v8 = v221;
LABEL_214:
      if (SHIBYTE(v223) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_216:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_219:
      goto LABEL_39;
    }
  }

  v27 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,parse,alert dict nil}", buf, 0x12u);
    v27 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a2 + 152);
    v29 = a2 + 152;
    v28 = v30;
    if (*(v29 + 23) >= 0)
    {
      v28 = v29;
    }

    v31 = *(v29 + 200);
    v32 = *(v29 + 232);
    v33 = *(v29 + 32);
    v34 = *(v29 + 40);
    v35 = *(v29 + 48);
    v36 = *(v29 + 56);
    v37 = *(v29 + 64);
    v38 = *(v29 + 168);
    *buf = 68292355;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = "warning";
    v226 = 2081;
    v227 = "igAlertFlow";
    v228 = 2081;
    v229 = "iap";
    v230 = 2081;
    *v231 = "parse";
    *&v231[8] = 2081;
    v232 = v28;
    v233 = 1025;
    *v234 = v31;
    *&v234[4] = 1025;
    *&v234[6] = v32;
    *v235 = 2049;
    *&v235[2] = v33;
    *v236 = 2049;
    *&v236[2] = v34;
    *v237 = 2049;
    *&v237[2] = v35;
    *v238 = 2049;
    *&v238[2] = v36;
    *v239 = 2049;
    *&v239[2] = v37;
    *v240 = 2049;
    *&v240[2] = v38;
    v39 = "{msg%{public}.0s:alert dict is nil, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v39, buf, 0x8Cu);
  }

LABEL_38:
  v14 = 0;
LABEL_39:

  return v14;
}

void sub_100082678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_1000828A4(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1 + 128;
    if (*(a1 + 151) < 0)
    {
      v5 = *(a1 + 128);
    }

    *buf = 68289283;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2081;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#iap,getBleRelayDataBin, alertData:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v6 = *(a1 + 151);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 136);
  }

  if (!v6)
  {
    v8 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v10 = "{msg%{public}.0s:#iap,getBleRelayDataBin,empty data string}";
    goto LABEL_16;
  }

  v13 = 0;
  if (!SACommonUtils::convertHexToChar((a1 + 128), a2, 0x1Cu, &v13))
  {
    v8 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v10 = "{msg%{public}.0s:#iap,getBleRelayData,can't convert data}";
    goto LABEL_16;
  }

  v7 = v13;
  v8 = SALogObjectGeneral;
  v9 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v7 == 28)
  {
    if (!v9)
    {
      return;
    }

    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v10 = "{msg%{public}.0s:#iap,getBleRelayDataBin,done}";
LABEL_16:
    v11 = v8;
    v12 = 18;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    return;
  }

  if (v9)
  {
    *buf = 68289283;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 1025;
    LODWORD(v19) = v7;
    v10 = "{msg%{public}.0s:#iap,getBleRelayData,invalid encoded dataLen, encodedDataLen:%{private}d}";
    v11 = v8;
    v12 = 24;
    goto LABEL_17;
  }
}

uint64_t sub_100082B18(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = objc_alloc_init(NSOperationQueue);
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;

  v7 = *(a1 + 24);
  if (v7)
  {
    [v7 setName:@"com.apple.safetyalerts.doq"];
    [*(a1 + 24) setUnderlyingQueue:*a1];
    v8 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    [v8 setAllowsCellularAccess:0];
    if (!v8)
    {
      v13 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v17 = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#safd,cannotInitConfig}", &v17, 0x12u);
      }

      goto LABEL_18;
    }

    if (qword_10014ADA0 != -1)
    {
      dispatch_once(&qword_10014ADA0, &stru_10013D208);
    }

    v9 = qword_10014ADA8;
    if (v9)
    {
      v10 = [NSURLSession sessionWithConfiguration:v8 delegate:v9 delegateQueue:*(a1 + 24)];
      v11 = *v4;
      *v4 = v10;

      if (*v4)
      {
        *(a1 + 32) = 1;
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v14 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v17 = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v15 = "{msg%{public}.0s:#safd,cannotInitUrlSession}";
    }

    else
    {
      v14 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v17 = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v15 = "{msg%{public}.0s:#safd,cannotInitDelegate}";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, &v17, 0x12u);
    goto LABEL_17;
  }

  v12 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v17 = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#safd,cannotInitOperationQueue}", &v17, 0x12u);
  }

LABEL_19:

  return a1;
}

uint64_t sub_100082E9C(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, double a6)
{
  if (!*(a5 + 24))
  {
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v48 = 0;
      v49 = 2082;
      v50 = "";
      v16 = "{msg%{public}.0s:#safd,#warning,invalidCallback}";
      goto LABEL_13;
    }

    return 0;
  }

  if (*(sub_100042820() + 442) != 1 || !*(a5 + 24))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      v19 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v48 = 0;
        v49 = 2082;
        v50 = "";
        v16 = "{msg%{public}.0s:#safd,notInitialized}";
        v17 = v19;
        v18 = OS_LOG_TYPE_ERROR;
        goto LABEL_16;
      }

      return 0;
    }

    if (*(a1 + 33) == 1)
    {
      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v48 = 0;
        v49 = 2082;
        v50 = "";
        v16 = "{msg%{public}.0s:#safd,#warning,concurrentDownloadsNotAllowed}";
LABEL_13:
        v17 = v15;
        v18 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, 0x12u);
        return 0;
      }

      return 0;
    }

    v21 = *(a2 + 23);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = a2[1];
    }

    if (!v21)
    {
      v15 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      *buf = 68289026;
      v48 = 0;
      v49 = 2082;
      v50 = "";
      v16 = "{msg%{public}.0s:#safd,#warning,srcIsEmpty}";
      goto LABEL_13;
    }

    v23 = *(a3 + 23);
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a3 + 8);
    }

    if (!v23)
    {
      v15 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      *buf = 68289026;
      v48 = 0;
      v49 = 2082;
      v50 = "";
      v16 = "{msg%{public}.0s:#safd,#warning,dstIsEmpty}";
      goto LABEL_13;
    }

    if ((a4 - 1) >= 7)
    {
      v15 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      *buf = 68289026;
      v48 = 0;
      v49 = 2082;
      v50 = "";
      v16 = "{msg%{public}.0s:#safd,#warning,invalidProtectionClass}";
      goto LABEL_13;
    }

    if (v22 >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    v25 = [NSString stringWithUTF8String:v24];
    v26 = [NSURL URLWithString:v25];

    if (!v26)
    {
      v29 = SALogObjectGeneral;
      v14 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v48 = 0;
        v49 = 2082;
        v50 = "";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#safd,#warning,cannotInitSrcUrl}", buf, 0x12u);
        v14 = 0;
      }

      goto LABEL_74;
    }

    v27 = [NSMutableURLRequest requestWithURL:v26];
    v28 = v27;
    if (!v27)
    {
      v30 = SALogObjectGeneral;
      v14 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v48 = 0;
        v49 = 2082;
        v50 = "";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#safd,#warning,cannotInitNewRequest}", buf, 0x12u);
        v14 = 0;
      }

      goto LABEL_73;
    }

    if (a6 <= 0.0)
    {
      a6 = 300.0;
    }

    [v27 setTimeoutInterval:a6];
    if (*(a3 + 23) < 0)
    {
      sub_100004CEC(v45, *a3, *(a3 + 8));
    }

    else
    {
      *v45 = *a3;
      v46 = *(a3 + 16);
    }

    [v28 setAllowsCellularAccess:{0, v45[0]}];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3321888768;
    v59[2] = sub_100083864;
    v59[3] = &unk_10013D1D8;
    v59[4] = a1;
    if (SHIBYTE(v46) < 0)
    {
      sub_100004CEC(&__p, v45[0], v45[1]);
    }

    else
    {
      __p = *v45;
      v61 = v46;
    }

    v62[8] = a4;
    sub_10001EF44(v62, a5);
    v31 = objc_retainBlock(v59);
    v32 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (*(a3 + 23) >= 0)
      {
        v34 = a3;
      }

      else
      {
        v34 = *a3;
      }

      *buf = 68290051;
      v48 = 0;
      v49 = 2082;
      v50 = "";
      v51 = 2081;
      v52 = v33;
      v53 = 2081;
      v54 = v34;
      v55 = 1025;
      v56 = a4;
      v57 = 2049;
      v58 = a6;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#safd,requestedDownload, src:%{private, location:escape_only}s, dst:%{private, location:escape_only}s, class:%{private}d, timeout:%{private}0.1f}", buf, 0x36u);
    }

    v35 = [*(a1 + 8) downloadTaskWithRequest:v28 completionHandler:v31];
    v36 = *(a1 + 16);
    *(a1 + 16) = v35;

    v37 = *(a1 + 16);
    v14 = v37 != 0;
    if (v37)
    {
      *(a1 + 33) = 1;
      [v37 resume];
      v38 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v48 = 0;
        v49 = 2082;
        v50 = "";
        v39 = "{msg%{public}.0s:#safd,initialized}";
        v40 = v38;
        v41 = 18;
LABEL_68:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
      }
    }

    else
    {
      v42 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v43 = a2;
        }

        else
        {
          v43 = *a2;
        }

        if (*(a3 + 23) >= 0)
        {
          v44 = a3;
        }

        else
        {
          v44 = *a3;
        }

        *buf = 68290051;
        v48 = 0;
        v49 = 2082;
        v50 = "";
        v51 = 2081;
        v52 = v43;
        v53 = 2081;
        v54 = v44;
        v55 = 1025;
        v56 = a4;
        v57 = 2049;
        v58 = a6;
        v39 = "{msg%{public}.0s:#safd,#warning,requestedDownloadFailed, src:%{private, location:escape_only}s, dst:%{private, location:escape_only}s, class:%{private}d, timeout:%{private}0.1f}";
        v40 = v42;
        v41 = 54;
        goto LABEL_68;
      }
    }

    sub_10001E0C0(v62);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }

LABEL_73:

LABEL_74:
    return v14;
  }

  v12 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100083758;
  block[3] = &unk_10013D178;
  sub_10001EF44(v64, a5);
  dispatch_async(v12, block);
  *(a1 + 33) = 0;
  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v48 = 0;
    v49 = 2082;
    v50 = "";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#safd,downloadRequest,bypass download}", buf, 0x12u);
  }

  sub_10001E0C0(v64);
  return 1;
}