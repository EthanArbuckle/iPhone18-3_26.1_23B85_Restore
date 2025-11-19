void sub_10079C4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079C5D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "IsScanParamsWitheLNAOnandeLNABypassScanCoreOverriden");
  if ((*(*v2 + 72))(v2, buf, __p, v1 + 2247))
  {
    v3 = *(v1 + 2247);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
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

    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scan offload on Scan Core", buf, 2u);
    }

    v5 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowScanCoreELNAOn");
    v6 = (*(*v5 + 88))(v5, buf, __p, &dword_100BC7CC0);
    if (dword_100BC7CC0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*buf);
    }

    if (v7)
    {
      v8 = dword_100BC7CC0;
      *(v1 + 2254) = dword_100BC7CC0;
      v9 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ELNAOn WindowScancore %d", buf, 8u);
      }
    }

    v10 = sub_10000E92C();
    sub_100007E30(buf, "BLESCAN");
    sub_100007E30(__p, "WindowScanCoreELNABypass");
    v11 = (*(*v10 + 88))(v10, buf, __p, &dword_100BC7CC0);
    if (dword_100BC7CC0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*buf);
    }

    if (v12)
    {
      v13 = dword_100BC7CC0;
      *(v1 + 2256) = dword_100BC7CC0;
      v14 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Overriding BLE Scan Parameters ELNA Bypass WindowScancore %d", buf, 8u);
      }
    }
  }

  else
  {
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10079C8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10079C940(id a1, void *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  xpc_set_event();
  v3 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSDate date];
    v5 = 138412546;
    v6 = v4;
    v7 = 2082;
    v8 = string;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "com.apple.alarm xpc event handler at %@ for %{public}s", &v5, 0x16u);
  }

  if (qword_100B54770 != -1)
  {
    sub_1008743D0();
  }

  ++*(off_100B54768 + 117);
}

void sub_10079CA64(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset BLE Scan Configuration Stat", v3, 2u);
  }

  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2680) = 0u;
  *(a1 + 2696) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2664) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0u;
  *(a1 + 2584) = 0u;
  *(a1 + 2600) = 0u;
  *(a1 + 2552) = 0u;
  *(a1 + 2568) = 0u;
  *(a1 + 2520) = 0u;
  *(a1 + 2536) = 0u;
  *(a1 + 2488) = 0u;
  *(a1 + 2504) = 0u;
  *(a1 + 2456) = 0u;
  *(a1 + 2472) = 0u;
  *(a1 + 2424) = 0u;
  *(a1 + 2440) = 0u;
  *(a1 + 2392) = 0u;
  *(a1 + 2408) = 0u;
  *(a1 + 2524) = -1;
  *(a1 + 2392) = CFAbsoluteTimeGetCurrent();
  *(a1 + 2568) = 0u;
  *(a1 + 2584) = 0u;
  *(a1 + 2600) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2664) = 0u;
  *(a1 + 2680) = 0u;
  *(a1 + 2696) = 0u;
  *(a1 + 2712) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2744) = 0u;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2792) = 0u;
  *(a1 + 2808) = 0u;
  *(a1 + 2824) = 0u;
  *(a1 + 2840) = 0u;
  *(a1 + 2856) = 0u;
  *(a1 + 2872) = 0u;
  *(a1 + 2888) = 0u;
  *(a1 + 2904) = 0u;
  *(a1 + 2700) = -1;
  *(a1 + 2568) = CFAbsoluteTimeGetCurrent();
}

void sub_10079CB54(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset BLE Scan Stat", v3, 2u);
  }

  *(a1 + 3208) = 0u;
  *(a1 + 3224) = 0u;
  *(a1 + 3176) = 0u;
  *(a1 + 3192) = 0u;
  *(a1 + 3144) = 0u;
  *(a1 + 3160) = 0u;
  *(a1 + 3112) = 0u;
  *(a1 + 3128) = 0u;
  *(a1 + 3080) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3016) = 0u;
  *(a1 + 3032) = 0u;
  *(a1 + 2984) = 0u;
  *(a1 + 3000) = 0u;
  *(a1 + 2952) = 0u;
  *(a1 + 2968) = 0u;
  *(a1 + 2920) = 0u;
  *(a1 + 2936) = 0u;
  *(a1 + 2888) = 0u;
  *(a1 + 2904) = 0u;
  *(a1 + 2856) = 0u;
  *(a1 + 2872) = 0u;
  *(a1 + 2824) = 0u;
  *(a1 + 2840) = 0u;
  *(a1 + 2792) = 0u;
  *(a1 + 2808) = 0u;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2760) = CFAbsoluteTimeGetCurrent();
}

void sub_10079CC0C(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset ScanCore BLE Connection Scan Stat", v3, 2u);
  }

  *(a1 + 3280) = 0;
  *(a1 + 3264) = 0u;
  *(a1 + 3264) = CFAbsoluteTimeGetCurrent();
}

double sub_10079CC8C(uint64_t a1)
{
  v2 = a1 + 710;
  bzero((a1 + 200), 0x638uLL);
  *(a1 + 160) = 5046046;
  v3 = *(a1 + 2128) == 0;
  if (*(a1 + 2128))
  {
    v4 = 16;
  }

  else
  {
    v4 = 18;
  }

  *(a1 + 164) = v4;
  if (v3)
  {
    v5 = 14;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 165) = v5;
  *(a1 + 172) = -1;
  *(a1 + 170) = 0;
  *(a1 + 166) = 100;
  *(a1 + 181) = 0;
  *(a1 + 173) = 0;
  *(a1 + 188) = 0xFCB2160600000000;
  *(a1 + 196) = 25690112;
  *(a1 + 200) = 2;
  *(a1 + 229) = 1;
  *(a1 + 202) = 0;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    *(a1 + 260) = 25690112;
    *(a1 + 256) = -22407674;
    *(a1 + 264) = 258;
    *(a1 + 292) = 1;
  }

  *(a1 + 704) = 5046158;
  v6 = *(a1 + 2128) == 0;
  if (*(a1 + 2128))
  {
    v7 = 16;
  }

  else
  {
    v7 = 18;
  }

  *(a1 + 708) = v7;
  if (v6)
  {
    v8 = 14;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 709) = v8;
  *(a1 + 716) = -1;
  *(a1 + 714) = 0;
  *v2 = 100;
  result = 0.0;
  *(a1 + 717) = 0u;
  *(a1 + 732) = 0xFCB2160600000000;
  *(a1 + 740) = 25690112;
  *(a1 + 744) = 2;
  *(a1 + 772) = 511;
  *(a1 + 745) = 257;
  *(a1 + 1248) = -43051482;
  *(a1 + 1260) = -1;
  *(v2 + 542) = 13107200;
  *(a1 + 1276) = 0;
  *(a1 + 1261) = 0u;
  return result;
}

uint64_t sub_10079CE3C(uint64_t a1)
{
  for (i = 0; i != 8; ++i)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = (a1 + 3304 + (i << 6) + 32 * v2);
      *(v4 + 3) = 0;
      *v4 = 0;
      v5 = (a1 + 3816 + (i << 6) + 32 * v2);
      *v5 = 0;
      *(v5 + 3) = 0;
      v6 = v3;
      v4[2] = 0;
      *(v4 + 11) = 0;
      v5[2] = 0;
      *(v5 + 11) = 0;
      v4[4] = 0;
      *(v4 + 19) = 0;
      v5[4] = 0;
      *(v5 + 19) = 0;
      v4[6] = 0;
      *(v4 + 27) = 0;
      *(v5 + 27) = 0;
      v2 = 1;
      v5[6] = 0;
      v3 = 0;
    }

    while ((v6 & 1) != 0);
  }

  v7 = 0;
  v49 = a1 + 3624;
  v50 = a1 + 3560;
  v48 = a1 + 3688;
  v8 = 1;
  do
  {
    v9 = 0;
    v51 = v8;
    v52 = v50 + 32 * v7;
    v53 = v48 + 32 * v7;
    v10 = 1;
    v11 = v49 + 32 * v7;
    do
    {
      v12 = 0;
      v13 = v53 + 16 * v9;
      v14 = v10;
      v15 = 1;
      v16 = v52 + 16 * v9;
      v17 = v11 + 16 * v9;
      do
      {
        v18 = v15;
        v19 = sub_10000C798();
        if (((*(*v19 + 672))(v19) & 1) == 0)
        {
          v20 = v16 + 8 * v12;
          *v20 = 43;
          *(v20 + 4) = 0;
          *(v20 + 6) = 0;
          v21 = v17 + 8 * v12;
          *v21 = 16;
          *(v21 + 4) = 0;
          *(v21 + 6) = 0;
        }

        v15 = 0;
        v22 = v13 + 8 * v12;
        *v22 = 48;
        *(v22 + 4) = 0;
        *(v22 + 6) = 0;
        v12 = 1;
      }

      while ((v18 & 1) != 0);
      v10 = 0;
      v9 = 1;
    }

    while ((v14 & 1) != 0);
    v8 = 0;
    v7 = 1;
  }

  while ((v51 & 1) != 0);
  v23 = 0;
  *(a1 + 3864) = 3145728;
  *(a1 + 3868) = 0;
  v24 = 1;
  *(a1 + 3870) = 1;
  *(a1 + 3872) = 3145728;
  *(a1 + 3876) = 0;
  *(a1 + 3878) = 1;
  do
  {
    v25 = a1 + 4104 + 16 * v23;
    *(v25 + 8) = 2818048;
    *(v25 + 12) = 0;
    v26 = v24;
    *(v25 + 14) = 0;
    *v25 = 0;
    *(v25 + 4) = 80;
    *(v25 + 6) = 0;
    v27 = a1 + 4072 + 16 * v23;
    *(v27 + 8) = 524331;
    *(v27 + 12) = 0;
    *(v27 + 14) = 0;
    *v27 = 43;
    *(v27 + 4) = 16;
    v23 = 1;
    *(v27 + 6) = 0;
    v24 = 0;
  }

  while ((v26 & 1) != 0);
  v28 = 0;
  v29 = 1;
  do
  {
    v30 = a1 + 4168 + 16 * v28;
    *(v30 + 8) = 0x100000;
    *(v30 + 12) = 0;
    v31 = v29;
    *(v30 + 14) = 0;
    *v30 = 0;
    *(v30 + 4) = 32;
    *(v30 + 6) = 0;
    v32 = a1 + 4136 + 16 * v28;
    *(v32 + 8) = 524304;
    *(v32 + 12) = 0;
    *(v32 + 14) = 0;
    *v32 = 16;
    *(v32 + 4) = 16;
    v28 = 1;
    *(v32 + 6) = 0;
    v29 = 0;
  }

  while ((v31 & 1) != 0);
  v33 = 0;
  v34 = 1;
  do
  {
    v35 = 0;
    v36 = v34;
    v37 = 1;
    v38 = a1 + 4200 + 32 * v33;
    v39 = a1 + 3880 + 32 * v33;
    do
    {
      result = 0;
      v41 = v37;
      v42 = 1;
      v43 = v38 + 16 * v35;
      v44 = v39 + 16 * v35;
      do
      {
        v45 = v43 + 8 * result;
        *v45 = 32;
        *(v45 + 4) = 32;
        *(v45 + 6) = 0;
        v46 = v44 + 8 * result;
        *v46 = 0;
        LOBYTE(v45) = v42;
        *(v46 + 4) = 16;
        *(v46 + 6) = 0;
        result = 1;
        v42 = 0;
      }

      while ((v45 & 1) != 0);
      v37 = 0;
      v35 = 1;
    }

    while ((v41 & 1) != 0);
    v34 = 0;
    v33 = 1;
  }

  while ((v36 & 1) != 0);
  return result;
}

void sub_10079D198(id a1)
{
  v9 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "ScanWindowSOSBeaconPrecisionFindRequest");
  v2 = (*(*v1 + 88))(v1, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  v3 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = 48;
    v11 = 1024;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Override ScanWindowSOSBeaconPrecisionFindRequest %d by %d", buf, 0xEu);
  }

  word_100B54F88 = v9;
LABEL_10:
  v4 = sub_10000E92C();
  sub_100007E30(buf, "BLESCAN");
  sub_100007E30(__p, "ScanWindowSOSBeaconActivateScan");
  v5 = (*(*v4 + 88))(v4, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  v6 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = 32;
    v11 = 1024;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Override ScanWindowSOSBeaconActivateScan %d by %d", buf, 0xEu);
  }

  word_100B54F8A = v9;
}

void sub_10079D3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

__n128 sub_10079D428(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = v2;
  v5 = *(a2 + 7);
  *(a2 + 7) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = a2[4];
  *(a1 + 80) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 11) = 0;
  *(a1 + 112) = *(a2 + 14);
  v6 = a2 + 15;
  v7 = *(a2 + 15);
  *(a1 + 120) = v7;
  v8 = a1 + 120;
  v9 = *(a2 + 16);
  *(a1 + 128) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 14) = v6;
    *v6 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *(a1 + 112) = v8;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  result = a2[9];
  *(a1 + 144) = result;
  *(a1 + 160) = *(a2 + 20);
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  return result;
}

BOOL sub_10079D4EC(id a1, unsigned int a2, const void *a3)
{
  v4 = *(a3 + 1);
  v12 = xmmword_1008A4F70;
  v13 = 0;
  sub_10000D03C(&v14, &v12);
  v5 = sub_100058794(v4 + 112, &v14);
  if (v4 + 120 != v5)
  {
    v14.n128_u16[0] = 22;
    if (a2 == 851969)
    {
      v6 = 2;
    }

    else
    {
      if (a2 != 851968)
      {
LABEL_8:
        v8 = [NSData dataWithBytes:&v14 length:2];
        v9 = sub_10000C5F8(v5 + 56);
        v10 = [NSData dataWithBytes:v9 length:sub_10000C5E0(v5 + 56)];
        v7 = [v10 rangeOfData:v8 options:0 range:{0, objc_msgSend(v10, "length")}] != 0x7FFFFFFFFFFFFFFFLL;

        return v7;
      }

      v6 = 1;
    }

    v14.n128_u8[1] = v6;
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_10079D668(uint64_t a1, void *a2)
{
  v2 = *(a1 + 2064);
  v3 = (a1 + 2072);
  if (v2 == (a1 + 2072))
  {
    return 0;
  }

  v4 = a2 + 1;
  while (1)
  {
    v5 = v2[5];
    if (sub_1000178BC(v5) && *(*(v5 + 8) + 88) != *(*(v5 + 8) + 96))
    {
      v6 = *(v5 + 81);
      v7 = v6 == 32 || v6 == 16;
      if (v7)
      {
        v8 = *a2;
        if (*a2 != v4)
        {
          break;
        }
      }
    }

LABEL_27:
    v16 = v2[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v2[2];
        v7 = *v17 == v2;
        v2 = v17;
      }

      while (!v7);
    }

    v2 = v17;
    if (v17 == v3)
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = *(v8 + 25);
    v10 = (1 << v9) & *(*(v5 + 8) + ((v9 >> 3) & 0x18) + 280);
    v11 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      if (*(v5 + 255) < 0)
      {
        sub_100008904(__p, *(v5 + 232), *(v5 + 240));
        LODWORD(v9) = *(v8 + 25);
      }

      else
      {
        *__p = *(v5 + 232);
        v21 = *(v5 + 248);
      }

      v12 = v21 >= 0 ? __p : __p[0];
      v13 = sub_10079D8BC(v9);
      *buf = 136315906;
      v23 = v12;
      v24 = 1024;
      v25 = v9;
      v26 = 2080;
      v27 = v13;
      v28 = 1024;
      v29 = v10 != 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "LeObserver::currentMatchRulesIncludeTypes checking %s type %d(%s) hasAppleType:%d", buf, 0x22u);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v10)
    {
      return 1;
    }

    v14 = v8[1];
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
        v15 = v8[2];
        v7 = *v15 == v8;
        v8 = v15;
      }

      while (!v7);
    }

    v8 = v15;
    if (v15 == v4)
    {
      goto LABEL_27;
    }
  }
}

const char *sub_10079D8BC(int a1)
{
  result = "Invalid";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "Hash";
      break;
    case 2:
      result = "iBeacon";
      break;
    case 3:
      result = "AirPrint";
      break;
    case 4:
      result = "LegacyATVSetup";
      break;
    case 5:
      result = "AirDrop";
      break;
    case 6:
      result = "HomeKitV1";
      break;
    case 7:
      result = "ProxPairing";
      break;
    case 8:
      result = "HeySiri";
      break;
    case 9:
      result = "AirPlayTarget";
      break;
    case 10:
      result = "AirPlaySource";
      break;
    case 11:
      result = "MagicSwitch";
      break;
    case 12:
      result = "Continuity";
      break;
    case 13:
      result = "TetheringTarget";
      break;
    case 14:
      result = "TetheringSource";
      break;
    case 15:
      result = "NearbyAction";
      break;
    case 16:
      result = "NearbyInfo";
      break;
    case 17:
      result = "HomeKitV2";
      break;
    case 18:
      result = "ObjectDiscovery";
      break;
    case 19:
      result = "SpatialInteraction";
      break;
    case 20:
      result = "DCKit";
      break;
    case 21:
      result = "NearbyActionV2";
      break;
    case 22:
      result = "NearbyInfoV2";
      break;
    case 23:
    case 25:
      goto LABEL_5;
    case 24:
      result = "DSInfo";
      break;
    case 26:
      result = "NearbyActionNoWake";
      break;
    case 27:
      result = "SoftwareUpdate";
      break;
    default:
      if (a1 == 100)
      {
        result = "FastLEConnection";
      }

      else
      {
LABEL_5:
        result = "?";
      }

      break;
  }

  return result;
}

void sub_10079DA40(uint64_t a1)
{
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100874448();
  }

  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10079DAE4;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
}

uint64_t sub_10079DAE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 4426) = 1;
  v2 = sub_10000C798();
  result = (*(*v2 + 1048))(v2);
  if (result)
  {

    return sub_100017DE0(v1, 1);
  }

  return result;
}

void sub_10079DB70(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 144))
    {
      v3 = "On";
    }

    else
    {
      v3 = "Off";
    }

    *buf = 136446210;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "LeObserver Power : system woke up, screen is %{public}s", buf, 0xCu);
  }

  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10079DC84;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  sub_10000D334(v4, v5);
}

void sub_10079DC84(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 4426) = 0;
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10079DD08;
  v3[3] = &unk_100ADF8F8;
  v3[4] = v1;
  sub_10000CA94(v2, v3);
}

_BYTE *sub_10079DD1C(uint64_t a1)
{
  v9 = 0;
  sub_1000216B4(&v9);
  if (sub_1002D359C())
  {
    sub_1002D0A4C(0x200000);
    sub_100022214(&v9);
    v2 = 0;
    v3 = 167;
    do
    {
      if (*(a1 + v3) == 1)
      {
        v4 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v5 = off_100B0D748[v2];
          *buf = 138412290;
          v11 = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Destroying stale ADVBUFF(%@):", buf, 0xCu);
        }

        sub_10079DECC(a1, v2);
      }

      ++v2;
      v3 += 544;
    }

    while (v2 != 3);
    *(a1 + 4424) = 0;
    v6 = sub_100007EE8();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10079E31C;
    v8[3] = &unk_100ADF8F8;
    v8[4] = a1;
    sub_10000D334(v6, v8);
  }

  return sub_10002249C(&v9);
}

uint64_t sub_10079DECC(uint64_t a1, uint64_t a2)
{
  if (qword_100BC7D48 != -1)
  {
    sub_100874484();
  }

  if (a2 < 3)
  {
    v6 = a1 + 544 * a2;
    *(v6 + 171) = 0;
    *(v6 + 169) = 0;
    if (*(v6 + 167))
    {
      if (a2 != 2 && (byte_100BC7D40 & 1) != 0)
      {
        v7 = sub_10000C7D0();
        v8 = (*(*v7 + 2696))(v7);
        v28 = 0;
        v27 = 0;
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = a1 + 544 * a2 + 228;
          do
          {
            if (*(v11 - 34))
            {
              v12 = sub_10000C7D0();
              BYTE2(v26) = *(v11 - 28);
              LOWORD(v26) = *(v11 - 30);
              v13 = (*(*v12 + 3360))(v12, a2, *(v11 - 36), &v27, *(v11 - 35), *(v11 - 34), *(v11 - 32), *(v11 - 31), v26, v11 - 27, v11);
              if (v13)
              {
                v14 = v13;
                v15 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
                {
                  v16 = off_100B0D748[a2];
                  *buf = 138543618;
                  v30 = v16;
                  v31 = 1024;
                  v32 = v14;
                  _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "ADVBUFF(%{public}@): Failed to remove ext buffer adv rule: %d", buf, 0x12u);
                }
              }

              else
              {
                --v9;
              }
            }

            if (v10 > 6)
            {
              break;
            }

            ++v10;
            v11 += 64;
          }

          while (v9);
        }

        v17 = sub_10000C7D0();
        (*(*v17 + 3368))(v17, a2);
      }

      v18 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v19 = off_100B0D748[a2];
        *buf = 138543362;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): Destroying ADV buffer", buf, 0xCu);
      }

      v20 = sub_10000C7D0();
      v5 = (*(*v20 + 3408))(v20, a2, 0, 0);
      v21 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v22 = off_100B0D748[a2];
        *buf = 138543618;
        v30 = v22;
        v31 = 1024;
        v32 = v5;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): advBufControl Disabled returned %d", buf, 0x12u);
      }

      if (v5)
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100874498();
        }
      }

      else
      {
        *(v6 + 167) = 0;
        *(v6 + 172) = -1;
      }
    }

    else
    {
      v23 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v24 = off_100B0D748[a2];
        *buf = 138543362;
        v30 = v24;
        v5 = 12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): destroyADVBuffer - not created", buf, 0xCu);
      }

      else
      {
        return 12;
      }
    }
  }

  else
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v30) = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HW ADV Buffer handle out of range (%d), ignoring agent request", buf, 8u);
    }

    return 7;
  }

  return v5;
}

void sub_10079E31C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10007C438(v1, 1u);
  *(v1 + 1863) = 0;
  *(v1 + 1856) = 0;
  v2 = sub_10000C7D0();
  sub_1004132C4(v2, v1 + 8);
  v3 = *sub_10000C7D0();
  (*(v3 + 624))();
  v4 = *sub_10000C7D0();
  (*(v4 + 976))();
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = sub_1000E2738();
  (**v5)(v5, &v15);
  v6 = v15;
  if (v15 != v16)
  {
    while (1)
    {
      v7 = *v6;
      v22[0] = 0;
      v22[1] = 0;
      v8 = sub_1000E2738();
      v9 = (*(*v8 + 96))(v8, v7, 3, v22);
      v10 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v7, __p);
        v11 = v14 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v19 = v11;
        v20 = 1024;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Read encryption key for device %{public}s : result %d", buf, 0x12u);
        if (v14 < 0)
        {
          break;
        }
      }

      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_10:
      if (++v6 == v16)
      {
        goto LABEL_11;
      }
    }

    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_8:
    LOBYTE(__p[0]) = 0;
    *(__p + 1) = *(v7 + 128);
    *(__p + 5) = *(v7 + 132);
    sub_10079E618(v1, __p, v22);
    goto LABEL_10;
  }

LABEL_11:
  v12 = sub_100017E6C();
  sub_1003128B0(v12 + 384, v1 + 40);
  if (qword_100B50AA0 != -1)
  {
    sub_100874520();
  }

  sub_10009BE34(off_100B50A98, v1 + 2240);
  sub_10007F460(v1);
  *(v1 + 4423) = 0;
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_10079E618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v5 = a2 + 1;
      v6 = sub_100063D0C();
      if (![v6 length])
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_10087455C();
        }

        goto LABEL_42;
      }

      v7 = [NSData dataWithBytes:a3 length:16];
      [*(a1 + 2112) setObject:v7 forKeyedSubscript:v6];

      if (qword_100B508F0 != -1)
      {
        sub_100874548();
      }

      LODWORD(v20) = *v5;
      WORD2(v20) = *(v5 + 4);
      v8 = sub_1000E6554(off_100B508E8, &v20, 1);
      if (!v8)
      {
LABEL_42:

        return;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      if (!sub_1000DFC04(v8, &v20))
      {
        goto LABEL_41;
      }

      v9 = v20;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
      if (v10 < 4)
      {
        goto LABEL_41;
      }

      v11 = v20 + 3;
      if (SHIBYTE(v20[3].__r_.__value_.__r.__words[2]) < 0)
      {
        if (v20[3].__r_.__value_.__l.__size_ <= 1)
        {
          goto LABEL_23;
        }

        v11 = v11->__r_.__value_.__r.__words[0];
      }

      else if (HIBYTE(v20[3].__r_.__value_.__r.__words[2]) <= 1u)
      {
        goto LABEL_23;
      }

      v12 = [NSString stringWithUTF8String:v11];
      if ([v12 length])
      {
        v13 = [NSData dataWithBytes:a3 length:16];
        [*(a1 + 2112) setObject:v13 forKeyedSubscript:v12];
      }

      v9 = v20;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
LABEL_23:
      if (v10 < 9)
      {
        goto LABEL_41;
      }

      v14 = &v9[8];
      if (SHIBYTE(v9[8].__r_.__value_.__r.__words[2]) < 0)
      {
        if (v9[8].__r_.__value_.__l.__size_ <= 1)
        {
          goto LABEL_32;
        }

        v14 = v14->__words[0];
      }

      else if (HIBYTE(v9[8].__r_.__value_.__r.__words[2]) <= 1u)
      {
        goto LABEL_32;
      }

      v15 = [NSString stringWithUTF8String:v14];
      if ([v15 length])
      {
        v16 = [NSData dataWithBytes:a3 length:16];
        [*(a1 + 2112) setObject:v16 forKeyedSubscript:v15];
      }

      v9 = v20;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
LABEL_32:
      if (v10 >= 0xA)
      {
        v17 = &v9[9];
        if ((SHIBYTE(v9[9].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (HIBYTE(v9[9].__r_.__value_.__r.__words[2]) <= 1u)
          {
            goto LABEL_41;
          }

LABEL_38:
          v18 = [NSString stringWithUTF8String:v17];
          if ([v18 length])
          {
            v19 = [NSData dataWithBytes:a3 length:16];
            [*(a1 + 2112) setObject:v19 forKeyedSubscript:v18];
          }

          goto LABEL_41;
        }

        if (v9[9].__r_.__value_.__l.__size_ > 1)
        {
          v17 = v17->__words[0];
          goto LABEL_38;
        }
      }

LABEL_41:
      v23 = &v20;
      sub_1000161FC(&v23);
      goto LABEL_42;
    }

    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874598();
    }
  }

  else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_1008745D4();
  }
}

void sub_10079E984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000161FC(&a12);

  _Unwind_Resume(a1);
}

void sub_10079EA00(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "POWER");
  sub_100007E30(__p, "ForceWakeScanForClient");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7CF0);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10079EAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_10079EAD8(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "POWER");
  sub_100007E30(__p, "ForceWakeScanConfig");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7D00);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10079EB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

_BYTE *sub_10079EBB0(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeObserver::stackWillStop enter", buf, 2u);
  }

  v7 = 0;
  sub_1000216B4(&v7);
  if (sub_1002D359C())
  {
    sub_1002D0A4C(0);
    sub_100022214(&v7);
    v3 = sub_100007EE8();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10079ECF4;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000D334(v3, v6);
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LeObserver::stackWillStop exit", buf, 2u);
    }
  }

  return sub_10002249C(&v7);
}

void sub_10079ECF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100017E6C();
  sub_10036F1AC(v2 + 384, v1 + 40);
  v3 = *sub_10000C7D0();
  (*(v3 + 624))();
  v4 = sub_10000C7D0();
  sub_10041332C(v4, v1 + 8);
  sub_10079EE84(v1);
  v5 = *(v1 + 2136);
  *(v1 + 2136) = 0;

  v6 = *(v1 + 2144);
  *(v1 + 2144) = 0;

  sub_10007C438(v1, 0);
  *(v1 + 1988) = 0;
  v7 = *(v1 + 2064);
  v8 = (v1 + 2072);
  if (v7 != (v1 + 2072))
  {
    do
    {
      v9 = v7[5];
      if (v9)
      {
        (*(*v9 + 8))(v9);
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

    while (v11 != v8);
  }

  sub_10000CEDC(v1 + 2064, *(v1 + 2072));
  *(v1 + 2064) = v8;
  *v8 = 0u;
  sub_1007B20B4(v1 + 2088, *(v1 + 2096));
  *(v1 + 2088) = v1 + 2096;
  *(v1 + 2096) = 0u;
  sub_1000367C8(v1);
  sub_10079F094(v1);
  sub_10079F1D0(v1);
  sub_10003C478(v1);

  sub_1005B0DAC(v1 + 56);
}

uint64_t sub_10079EE84(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Destroying match table for all registered types", buf, 2u);
  }

  v3 = *(a1 + 1832);
  if (v3 != (a1 + 1840))
  {
    do
    {
      v4 = *(v3 + 28);
      v5 = *(v3 + 29);
      v6 = *(v3 + 15);
      v7 = *(v3 + 18);
      v8 = *(v3 + 19);
      v9 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *&buf[4] = v6;
        v17 = 1024;
        v18 = v4;
        v19 = 1024;
        v20 = v7;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "handle:%d type:%d length:%d setCreated(false) setEnabled(false)", buf, 0x14u);
      }

      v15 = v6;
      *buf = &v15;
      v10 = sub_1000BED44(a1 + 1832, &v15);
      *(v10 + 28) = v4;
      *(v10 + 29) = v5;
      *(v10 + 15) = v6;
      *(v10 + 8) = 0;
      *(v10 + 18) = v7;
      *(v10 + 19) = v8;
      v11 = v3[1];
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
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != (a1 + 1840));
  }

  if (qword_100B51098 != -1)
  {
    sub_1008746E4();
  }

  sub_10048A1BC(qword_100B51090, &off_100B344A0);
  *(a1 + 1872) = 0;
  sub_1000C71BC(a1, 22, 0);
  return 0;
}

void sub_10079F094(uint64_t a1)
{
  v2 = sub_10000C7D0();
  if ((*(*v2 + 3008))(v2))
  {
    v3 = 0;
    v4 = a1 + 167;
    do
    {
      if (*v4 == 1)
      {
        v5 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          v6 = off_100B0D748[v3];
          *buf = 138412290;
          v8 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Clear stale ADVBUFF(%@):", buf, 0xCu);
        }

        *v4 = 0;
        *(v4 + 4) = -256;
      }

      ++v3;
      v4 += 544;
    }

    while (v3 != 3);
  }
}

uint64_t sub_10079F1D0(dispatch_object_t *a1)
{
  v2 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disarming contactTracing timers", v7, 2u);
  }

  if (qword_100B54770 != -1)
  {
    sub_1008743D0();
  }

  sub_100511FD0(off_100B54768);
  sub_1007A17DC(a1);
  sub_1007A93E8(a1);
  v3 = a1[288];
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(a1[288]);
    a1[288] = 0;
  }

  v4 = a1[286];
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(a1[286]);
    a1[286] = 0;
  }

  v5 = a1[287];
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(a1[287]);
    a1[287] = 0;
  }

  return xpc_set_event();
}

void sub_10079F2D8(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v7 = a2[2];
  v8 = *(a2 + 6);
  v3 = sub_100007EE8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10079F388;
  v4[3] = &unk_100B048E0;
  sub_10000CA94(v3, v4);
}

void sub_10079F388(uint64_t a1)
{
  v1 = *(a1 + 48);
  v30[0] = *(a1 + 32);
  v30[1] = v1;
  v31 = *(a1 + 64);
  v32 = *(a1 + 80);
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_10087470C();
  }

  v2 = BYTE7(v31);
  v3 = qword_100BCE918;
  v4 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
  if (BYTE7(v31))
  {
    if (v4)
    {
      v8 = CUPrintAddress();
      *buf = 138413570;
      v16 = v8;
      v17 = 1024;
      v18 = BYTE7(v31);
      v19 = 1040;
      v20 = 31;
      v21 = 2096;
      v22 = v30 + 8;
      v23 = 1024;
      v24 = SBYTE14(v31);
      v25 = 1024;
      v26 = HIBYTE(v31);
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "aopReceivedDeviceFoundEvent: Parsing entry, address:%@ len:%d payload:%.31P rssi:%d channel:%d", buf, 0x2Eu);

      v2 = BYTE7(v31);
    }

    if (v2 < 0x20)
    {
      bzero(buf, 0x1788uLL);
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      sub_1000075EC(&v10 + 2, &v31 + 8, 6uLL);
      v5 = (BYTE2(v10) << 40) | (BYTE3(v10) << 32) | (BYTE4(v10) << 24) | (BYTE5(v10) << 16) | (BYTE6(v10) << 8) | BYTE7(v10);
      if (v5 && (!HIWORD(v5) || HIWORD(v5) == 1 && (BYTE2(v10) & 0xC0) != 0x80))
      {
        LOWORD(v10) = 256;
        WORD4(v10) = BYTE7(v31);
        *&v11 = v30 + 8;
        BYTE11(v12) = 0;
        BYTE8(v11) = BYTE14(v31);
        v9 = 0;
        sub_1000216B4(&v9);
        sub_100008D54(&v10, buf, v7);
        sub_100022214(&v9);
        BYTE2(v18) = 0;
        v28 = 0;
        v29 = 1;
        v27 = 0;
        sub_100009B00();
      }

      v6 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100874790(v5, v6);
      }
    }

    else if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_10087482C();
    }
  }

  else if (v4)
  {
    sub_100874898();
  }
}

void sub_10079F688(uint64_t a1, void *a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AOPBTBUFF: Read Event with %lu advertisements", &buf, 0xCu);
  }

  buf = 0uLL;
  v12 = 0;
  sub_10048D004(&buf, a2);
  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_10079F860;
  v7[3] = &unk_100B0CE88;
  v7[4] = a1;
  __p = 0;
  __dst = 0;
  v10 = 0;
  if (*(&buf + 1) != buf)
  {
    sub_10048D080(&__p, 0x6DB6DB6DB6DB6DB7 * ((*(&buf + 1) - buf) >> 3));
  }

  sub_10000CA94(v6, v7);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }
}

void sub_10079F824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079F860(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v33 = v2[4];
  v3 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AOPBTBUFF: Read Event unpack devices", buf, 2u);
  }

  v4 = v2[5];
  if (v2[6] != v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 39;
    do
    {
      v8 = *(v4 + v7);
      if (v8 < 0x20)
      {
        bzero(buf, 0x1788uLL);
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        sub_1000075EC(&v35 + 2, v4 + v7 + 1, 6uLL);
        BYTE1(v35) = 1;
        v10 = BYTE2(v35);
        v11 = BYTE3(v35);
        v12 = BYTE4(v35);
        v13 = BYTE5(v35);
        v14 = BYTE6(v35);
        v15 = BYTE7(v35);
        if (qword_100B508C0 != -1)
        {
          sub_100874964();
        }

        v16 = (v11 << 32) | (v10 << 40) | (v12 << 24) | (v13 << 16) | (v14 << 8) | v15 | 0x1000000000000;
        if (!sub_1007CAE38(off_100B508B8, v16, &v35 + 1) && (v16 = (BYTE2(v35) << 40) | (BYTE3(v35) << 32) | (BYTE4(v35) << 24) | (BYTE5(v35) << 16) | (BYTE6(v35) << 8) | BYTE7(v35) | (BYTE1(v35) << 48)) == 0 || HIWORD(v16) && (HIWORD(v16) == 1 ? (v17 = (v16 & 0xC00000000000) == 0x800000000000) : (v17 = 1), v17))
        {
          v18 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
          {
            sub_10004D9B0();
            p_p = &__p;
            if (SBYTE3(v46) < 0)
            {
              p_p = __p;
            }

            *v40 = 136315138;
            *&v40[4] = p_p;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "AOPBTBUFF: Remote Bluetooth address %s is invalid!", v40, 0xCu);
            if (SBYTE3(v46) < 0)
            {
              operator delete(__p);
            }
          }
        }

        else
        {
          v20 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
          {
            v21 = *(v2[5] + v7 - 39);
            sub_10004D9B0();
            v22 = v41;
            v23 = *v40;
            v24 = *(v2[5] + v7);
            v25 = CUPrintHex();
            v26 = v25;
            v27 = v40;
            if (v22 < 0)
            {
              v27 = v23;
            }

            v28 = *(v2[5] + v7 + 7);
            LODWORD(__p) = 67110402;
            HIDWORD(__p) = v6;
            v43 = 2048;
            v44 = v21;
            v45 = 2080;
            v46 = v27;
            v47 = 1024;
            v48 = v24;
            v49 = 2112;
            v50 = v25;
            v51 = 1024;
            v52 = v28;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "AOPBTBUFF: Parsing entry %d, TIMESTAMP %f, ADDR %s, LEN %d, PAYLOAD %@, RSSI %3d", &__p, 0x32u);
            if (v41 < 0)
            {
              operator delete(*v40);
            }
          }
        }

        LOBYTE(v35) = 3;
        v29 = (v2[5] + v7);
        WORD4(v35) = *v29;
        BYTE8(v36) = v29[7];
        *&v36 = v29 - 31;
        BYTE11(v37) = 0;
        LOBYTE(__p) = 0;
        sub_1000216B4(&__p);
        sub_100008D54(&v35, buf, v30);
        sub_100022214(&__p);
        v55 = 0;
        v31 = v2[5];
        v57 = *(v31 + v7 - 39);
        if (*(v31 + v7 + 9))
        {
          v58 = *(v31 + v7 + 9);
        }

        v56 = *(v31 + v7 + 8);
        v59 = (v5 + 0x6DB6DB6DB6DB6DB7 * ((v2[6] - v31) >> 3)) > 1;
        v60 = 1;
        sub_100009B00();
      }

      v9 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v54 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Ignoring invalid data length %d", buf, 8u);
      }

      ++v6;
      v4 = v2[5];
      v7 += 56;
      --v5;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v2[6] - v4) >> 3) > v6);
  }

  v32 = sub_100007EE8();
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10079FDE8;
  v34[3] = &unk_100ADF8F8;
  v34[4] = v33;
  sub_10000CA94(v32, v34);
  v33[1870] = 0;
  v33[1888] = 0;
  sub_10007CD50(v33);
}

void sub_10079FDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079FDF0()
{
  v0 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "AOPBTBUFF Sending empty event", buf, 2u);
  }

  *buf = 0;
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_1007A0174(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1007A0194(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007A0218;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_1007A0218(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  if (sub_1000C76A8(v2, *(a1 + 40)))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874ACC();
    }
  }

  else if (sub_1000C6490(v2, *v1) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100874B48();
  }
}

void sub_1007A02D4(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ADVBUFF advBufferEvent length=%d", buf, 8u);
  }

  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = 5;
  if (a3 == 244)
  {
    v7 = 2;
    goto LABEL_7;
  }

  if (a3 == 219)
  {
    v7 = *(a1 + 1796);
LABEL_7:
    v15 = v7;
    v8 = malloc_type_malloc(a3, 0x2567FEAAuLL);
    memcpy(v8, a2, a3);
    v9 = sub_100007EE8();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1007A04A0;
    v10[3] = &unk_100B0CEC0;
    v10[4] = buf;
    v10[5] = a1;
    v11 = a3;
    v10[6] = v8;
    sub_10000CA94(v9, v10);
    goto LABEL_10;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100874E04();
  }

LABEL_10:
  _Block_object_dispose(buf, 8);
}

void sub_1007A04A0(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v3 = *(v2 + 40);
  v4 = &qword_100BCE918;
  v5 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(*(v2 + 32) + 8) + 24);
    if (v6 > 2)
    {
      v7 = @"UNKNOWN";
    }

    else
    {
      v7 = off_100B0D748[v6];
    }

    v8 = *(v3 + 1260);
    v9 = *(v3 + 172);
    v10 = *(v3 + 716);
    v11 = *(v3 + 544 * *(*(*(v2 + 32) + 8) + 24) + 169);
    v12 = *(v3 + 167);
    v13 = *(v3 + 711);
    v14 = *(v3 + 171);
    v15 = *(v3 + 715);
    *buf = 138414338;
    *v145 = v7;
    *&v145[8] = 1024;
    *&v145[10] = v8;
    *&v145[14] = 1024;
    *&v145[16] = v9;
    *&v145[20] = 1024;
    *&v145[22] = v10;
    *&v145[26] = 1024;
    *&v145[28] = v11;
    *v146 = 1024;
    *&v146[2] = v12;
    LOWORD(v147) = 1024;
    *(&v147 + 2) = v13;
    HIWORD(v147) = 1024;
    *v148 = v14;
    *&v148[4] = 1024;
    *v149 = v15;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ADVBUFF(%@): advBufferEvent expectedEntries EN:%d ObjDiscoveryWild:%d ObjectDiscoveryNO:%d pendingDraining:%d createdWild:%d createdNO:%d readInProgressWild:%d readInProgressNO:%d", buf, 0x3Cu);
  }

  v16 = v3 + 160;
  v17 = *(*(*(v2 + 32) + 8) + 24);
  v18 = v3 + 160 + 544 * *(*(*(v2 + 32) + 8) + 24);
  if (*(v18 + 7) == 1)
  {
    if (*(v18 + 12) == 255)
    {
      v19 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "We were not expecting to get anything right now", buf, 2u);
        v17 = *(*(*(v2 + 32) + 8) + 24);
      }
    }

    if (v17 <= 1)
    {
      v20 = v16 + 544 * v17;
      if (*(v20 + 12) && *(v20 + 12) != 255 && *(v2 + 56) == 219)
      {
        *(v20 + 9) = 0;
        v21 = *(v2 + 48);
        v176 = v21 + 1;
        v177 = v21 + 47;
        v178 = v21 + 90;
        v179 = v21 + 133;
        v126 = v21;
        v180 = v21 + 44;
        if (*(*(*(v2 + 32) + 8) + 24))
        {
          if (*(*(*(v2 + 32) + 8) + 24) == 1)
          {
            if (*(v3 + 716) >= 5u)
            {
              v22 = 5;
            }

            else
            {
              v22 = *(v3 + 716);
            }

            v23 = sub_10000F034();
            *buf = 0;
            *v145 = v22;
            memset(&v145[4], 0, 24);
            (*(*v23 + 616))(v23, buf);
          }
        }

        else
        {
          if (*(v3 + 172) >= 5u)
          {
            v70 = 5;
          }

          else
          {
            v70 = *(v3 + 172);
          }

          v71 = sub_10000F034();
          memset(v145, 0, 28);
          *buf = v70;
          (*(*v71 + 616))();
        }

        v72 = *(*(*(v2 + 32) + 8) + 24);
        v73 = v16 + 544 * *(*(*(v2 + 32) + 8) + 24);
        v76 = *(v73 + 12);
        v74 = (v73 + 12);
        v75 = v76;
        if (v76)
        {
          v77 = 0;
          v78 = 0;
          do
          {
            v79 = *v4;
            v80 = v4;
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
            {
              v81 = @"UNKNOWN";
              if (v72 <= 2)
              {
                v81 = off_100B0D748[v72];
              }

              v82 = (&v176)[v78];
              v83 = *(v82 + 6);
              v84 = *(v82 + 38);
              v85 = *(v82 + 42);
              *buf = 138414850;
              *v145 = v81;
              *&v145[8] = 1024;
              *&v145[10] = v78;
              *&v145[14] = 1040;
              *&v145[16] = 43;
              *&v145[20] = 2096;
              *&v145[22] = v82;
              *&v145[30] = 1040;
              *v146 = 6;
              *&v146[4] = 2096;
              v147 = v82;
              *v148 = 1024;
              *&v148[2] = v83;
              *v149 = 1040;
              *&v149[2] = 31;
              v150 = 2096;
              v151 = v82 + 7;
              v152 = 1024;
              v153 = v84;
              v154 = 1024;
              v155 = v85;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "ADVBUFF(%@): Parsing entry %d entry_buff:%.43P address:%.6P len:%d payload:%.31P timestamp:%d rssi:%d", buf, 0x54u);
            }

            else
            {
              v82 = (&v176)[v78];
            }

            v86 = *(v82 + 6);
            if (v86 < 0x20)
            {
              bzero(buf, 0x1788uLL);
              *v130 = 0u;
              memset(v129, 0, sizeof(v129));
              sub_1000075EC(&v129[2], v82, 6uLL);
              v88 = (v129[2] << 40) | (v129[3] << 32) | (v129[4] << 24) | (v129[5] << 16) | (v129[6] << 8) | v129[7];
              if (!v88 || HIWORD(v88) && (HIWORD(v88) != 1 || (v129[2] & 0xC0) == 0x80))
              {
                v89 = *v80;
                if (os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
                {
                  v104 = *(*(*(v2 + 32) + 8) + 24);
                  v105 = @"UNKNOWN";
                  if (v104 <= 2)
                  {
                    v105 = off_100B0D748[v104];
                  }

                  v106 = sub_100063D0C();
                  *v141 = 138412546;
                  *&v141[4] = v105;
                  *&v141[12] = 2112;
                  *&v141[14] = v106;
                  _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "ADVBUFF(%@): Remote Bluetooth address %@ is invalid!", v141, 0x16u);
                }
              }

              v90 = sub_10000AB54(v3, *(v82 + 42));
              *(v82 + 42) = v90;
              *v129 = 259;
              *&v129[8] = *(v82 + 6);
              v129[24] = v90;
              *&v129[16] = v82 + 7;
              v129[43] = 0;
              v128 = 0;
              sub_1000216B4(&v128);
              sub_100008D54(v129, buf, v91);
              sub_100022214(&v128);
              v145[12] = 0;
              v92 = *(v2 + 32);
              v166 = v77 + *(v16 + 544 * *(*(v92 + 8) + 24) + 12) > 1;
              LOBYTE(v167) = 1;
              v93 = *v126;
              v94 = *(v82 + 38);
              if (*v126 < v94)
              {
                v93 = *v126 + 0xFFFFFFF;
              }

              v165 = v93 - v94;
              v95 = *v80;
              if (os_log_type_enabled(*v80, OS_LOG_TYPE_INFO))
              {
                v96 = *(*(v92 + 8) + 24);
                v97 = @"UNKNOWN";
                if (v96 <= 2)
                {
                  v97 = off_100B0D748[v96];
                }

                v98 = *v126;
                v99 = *(v82 + 38);
                *v141 = 138413826;
                *&v141[4] = v97;
                *&v141[12] = 1040;
                *&v141[14] = 6;
                *&v141[18] = 2096;
                *&v141[20] = &v129[2];
                *&v141[28] = 1024;
                *&v141[30] = v98;
                *&v141[34] = 1024;
                *&v141[36] = v99;
                *&v141[40] = 1024;
                *&v141[42] = v165;
                *&v141[46] = 1024;
                LODWORD(v142) = *&v129[8];
                _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "ADVBUFF(%@): found %.6P now:%u event:%u delta:%u dataLen:%d", v141, 0x34u);
              }

              sub_100009B00();
            }

            v4 = v80;
            v87 = *v80;
            if (os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v145 = v86;
              _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Ignoring invalid data length %d", buf, 8u);
            }

            ++v78;
            v72 = *(*(*(v2 + 32) + 8) + 24);
            v100 = v16 + 544 * *(*(*(v2 + 32) + 8) + 24);
            v102 = *(v100 + 12);
            v74 = (v100 + 12);
            v101 = v102;
            if (v102 >= 5)
            {
              v103 = 5;
            }

            else
            {
              v103 = v101;
            }

            --v77;
          }

          while (v78 < v103);
          v75 = v101 - v78;
        }

        *v74 = v75;
        v107 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
        {
          v108 = *(*(*(v2 + 32) + 8) + 24);
          if (v108 > 2)
          {
            v109 = @"UNKNOWN";
          }

          else
          {
            v109 = off_100B0D748[v108];
          }

          v111 = *(v16 + 544 * *(*(*(v2 + 32) + 8) + 24) + 12);
          *buf = 138412546;
          *v145 = v109;
          *&v145[8] = 1024;
          *&v145[10] = v111;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "ADVBUFF(%@): after parsing, expectedEntries=%d ", buf, 0x12u);
        }

        v112 = *(*(*(v2 + 32) + 8) + 24);
        if (!*(v16 + 544 * v112 + 12))
        {
          v113 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
          {
            if (v112 > 2)
            {
              v114 = @"UNKNOWN";
            }

            else
            {
              v114 = off_100B0D748[v112];
            }

            v122 = *(v3 + 144);
            v123 = *(v16 + 544 * *(*(*(v2 + 32) + 8) + 24) + 12);
            *buf = 138412802;
            *v145 = v114;
            *&v145[8] = 1024;
            *&v145[10] = v122;
            *&v145[14] = 1024;
            *&v145[16] = v123;
            _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "ADVBUFF(%@): We're done screenstate=%d fADVBufferExpectedEntries=%d", buf, 0x18u);
            LODWORD(v112) = *(*(*(v2 + 32) + 8) + 24);
          }

          *(v16 + 544 * v112 + 12) = -1;
          *(v16 + 544 * *(*(*(v2 + 32) + 8) + 24) + 11) = 0;
          v124 = sub_100007EE8();
          v127[0] = _NSConcreteStackBlock;
          v127[1] = 3221225472;
          v127[2] = sub_1007A17D4;
          v127[3] = &unk_100ADF8F8;
          v127[4] = v3;
          sub_10000CA94(v124, v127);
        }

        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v17 != 2 || !*(v3 + 1260) || *(v3 + 1260) == 255)
    {
LABEL_26:
      v26 = qword_100BCEA18;
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        if (v17 > 2)
        {
          v27 = @"UNKNOWN";
        }

        else
        {
          v27 = off_100B0D748[v17];
        }

        v110 = *(v16 + 544 * *(*(*(v2 + 32) + 8) + 24) + 12);
        *buf = 138412546;
        *v145 = v27;
        *&v145[8] = 1024;
        *&v145[10] = v110;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "ADVBUFF(%@): invalid state expectedEntries=%d", buf, 0x12u);
      }

      goto LABEL_31;
    }

    v28 = 0;
    v29 = *(v2 + 48);
    v176 = (v29 + 4);
    v177 = (v29 + 52);
    v178 = (v29 + 100);
    v179 = (v29 + 148);
    v180 = (v29 + 196);
    do
    {
      v30 = sub_10000E92C();
      if ((*(*v30 + 176))(v30))
      {
        v31 = qword_100BCEA38;
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEBUG))
        {
          v54 = *(*(*(v2 + 32) + 8) + 24);
          v55 = @"UNKNOWN";
          if (v54 <= 2)
          {
            v55 = off_100B0D748[v54];
          }

          v56 = (&v176)[v28];
          v57 = *(v56 + 6);
          v58 = *(v56 + 38);
          v59 = *(v56 + 40);
          v60 = *(v56 + 46);
          v61 = *(v56 + 47);
          *buf = 138415874;
          *v145 = v55;
          *&v145[8] = 1024;
          *&v145[10] = v28;
          *&v145[14] = 1040;
          *&v145[16] = 48;
          *&v145[20] = 2096;
          *&v145[22] = v56;
          *&v145[30] = 1040;
          *v146 = 6;
          *&v146[4] = 2096;
          v147 = v56;
          *v148 = 1024;
          *&v148[2] = v57;
          *v149 = 1040;
          *&v149[2] = 31;
          v150 = 2096;
          v151 = v56 + 7;
          v152 = 1024;
          v153 = v58;
          v154 = 1024;
          v155 = v59;
          v156 = 1040;
          v157 = 4;
          v158 = 2096;
          v159 = v56 + 42;
          v160 = 1024;
          v161 = v60;
          v162 = 1024;
          v163 = v61;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "ADVBUFF(%@): Parsing entry %d entry_buff:%.48P address:%.6P len:%d payload:%.31P first:%d last:%d rssi:%.4P maxRSSI:%d avgRSSI:%d", buf, 0x70u);
        }
      }

      v32 = (&v176)[v28];
      v33 = *(v32 + 6);
      if (v33 < 0x20)
      {
        bzero(buf, 0x1788uLL);
        v142 = 0u;
        v143 = 0u;
        memset(v141, 0, sizeof(v141));
        sub_1000075EC(&v141[2], v32, 6uLL);
        v35 = (v141[2] << 40) | (v141[3] << 32) | (v141[4] << 24) | (v141[5] << 16) | (v141[6] << 8) | v141[7] | (v141[1] << 48);
        if (!v35 || HIWORD(v35) && (HIWORD(v35) != 1 || (v141[2] & 0xC0) == 0x80))
        {
          v36 = qword_100BCEA18;
          if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
          {
            v62 = *(*(*(v2 + 32) + 8) + 24);
            v63 = @"UNKNOWN";
            if (v62 <= 2)
            {
              v63 = off_100B0D748[v62];
            }

            v64 = sub_100063D0C();
            *v129 = 138412546;
            *&v129[4] = v63;
            *&v129[12] = 2112;
            *&v129[14] = v64;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "ADVBUFF(%@): Remote Bluetooth address %@ is invalid!", v129, 0x16u);
          }
        }

        *(v32 + 46) = sub_10000AB54(v3, *(v32 + 46));
        v37 = sub_10000AB54(v3, *(v32 + 47));
        v38 = v37;
        *(v32 + 47) = v37;
        v39 = *(v32 + 46);
        if (v39 <= 0 && v37 < 1)
        {
          *v141 = 259;
          *&v141[8] = *(v32 + 6);
          *&v141[16] = v32 + 7;
          v141[43] = 0;
          v128 = 0;
          sub_1000216B4(&v128);
          sub_100008D54(v141, buf, v40);
          sub_100022214(&v128);
          v41 = 0;
          v145[12] = 0;
          v166 = *(v16 + 544 * *(*(*(v2 + 32) + 8) + 24) + 12) - v28 > 1;
          v167 = 257;
          v172 = *(v32 + 46);
          v173 = *(v32 + 47);
          v164 = v172;
          do
          {
            *(&v168 + v41) = *(v32 + 42 + v41);
            ++v41;
          }

          while (v41 != 4);
          v174 = *(v32 + 38);
          v175 = *(v32 + 40);
          v42 = sub_10000E92C();
          if ((*(*v42 + 176))(v42))
          {
            v43 = qword_100BCEA38;
            if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
            {
              v46 = *(*(*(v2 + 32) + 8) + 24);
              v47 = @"UNKNOWN";
              if (v46 <= 2)
              {
                v47 = off_100B0D748[v46];
              }

              LODWORD(v44) = v174;
              LODWORD(v45) = v175;
              *v129 = 138415874;
              *&v129[4] = v47;
              *&v129[12] = 1040;
              *&v129[14] = 6;
              *&v129[18] = 2096;
              *&v129[20] = &v141[2];
              *&v129[28] = 1040;
              *&v129[30] = 31;
              *&v129[34] = 2096;
              *&v129[36] = *&v141[16];
              *&v129[44] = 2048;
              *&v129[46] = v44 * 0.02;
              *&v129[54] = 2048;
              *&v129[56] = v45 * 0.02;
              *v130 = 1024;
              *&v130[2] = *&v141[8];
              *&v130[6] = 1024;
              *&v130[8] = v172;
              *&v130[12] = 1024;
              *&v130[14] = v173;
              v131 = 1024;
              v132 = v168;
              v133 = 1024;
              v134 = v169;
              v135 = 1024;
              v136 = v170;
              v137 = 1024;
              v138 = v171;
              v139 = 1024;
              v140 = v169 + v168 + 2 * v170;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "ADVBUFF(%@): found %.6P payload:%.31P first:%fs last:%fs dataLen:%d maxRSSI:%d avgRSSI:%d bin0:%d bin1:%d bin2:%d bin3:%d total:%d", v129, 0x70u);
            }
          }

          ++*(v3 + 2344);
          sub_100009B00();
        }

        v48 = qword_100BCEA18;
        if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
        {
          v65 = sub_100063D0C();
          *v129 = 67109634;
          *&v129[4] = v38;
          *&v129[8] = 1024;
          *&v129[10] = v39;
          *&v129[14] = 2112;
          *&v129[16] = v65;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Ignoring invalid RSSI level (avg:%d/max:%d) received from device %@", v129, 0x18u);
        }
      }

      else
      {
        v34 = qword_100BCEA18;
        if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v145 = v33;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Ignoring invalid data length %d", buf, 8u);
        }
      }

      ++v28;
      v49 = v16 + 544 * *(*(*(v2 + 32) + 8) + 24);
      v52 = *(v49 + 12);
      v50 = (v49 + 12);
      v51 = v52;
      if (v52 >= 5)
      {
        v53 = 5;
      }

      else
      {
        v53 = v51;
      }
    }

    while (v28 < v53);
    *v50 = v51 - v28;
    v66 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
    {
      v68 = *(*(*(v2 + 32) + 8) + 24);
      if (v68 > 2)
      {
        v69 = @"UNKNOWN";
      }

      else
      {
        v69 = off_100B0D748[v68];
      }

      v115 = *(v16 + 544 * *(*(*(v2 + 32) + 8) + 24) + 12);
      *buf = 138412546;
      *v145 = v69;
      *&v145[8] = 1024;
      *&v145[10] = v115;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "ADVBUFF(%@): after parsing,expectedEntries=%d ", buf, 0x12u);
    }

    v116 = v16 + 544 * *(*(*(v2 + 32) + 8) + 24);
    v118 = *(v116 + 12);
    v117 = (v116 + 12);
    if (!v118)
    {
      *v117 = -1;
      v119 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v120 = *(*(*(v2 + 32) + 8) + 24);
        if (v120 > 2)
        {
          v121 = @"UNKNOWN";
        }

        else
        {
          v121 = off_100B0D748[v120];
        }

        v125 = *(v16 + 544 * *(*(*(v2 + 32) + 8) + 24) + 12);
        *buf = 138412546;
        *v145 = v121;
        *&v145[8] = 1024;
        *&v145[10] = v125;
        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_INFO, "ADVBUFF(%@): We're done expectedEntries=%d", buf, 0x12u);
      }

      sub_1007A17DC(v3);
      sub_1007A1858(v3, *(*(*(v2 + 32) + 8) + 24), 1);
      sub_1007A1D58(v3);
      *(v16 + 544 * *(*(*(v2 + 32) + 8) + 24) + 11) = 0;
    }
  }

  else
  {
    v24 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      if (v17 > 2)
      {
        v25 = @"UNKNOWN";
      }

      else
      {
        v25 = off_100B0D748[v17];
      }

      *buf = 138412290;
      *v145 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%@): Received AdvBufferEvent for a buffer that is not created, ignoring", buf, 0xCu);
    }
  }

LABEL_31:
  free(*(v2 + 48));
}

void sub_1007A17DC(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007A94F8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_1007A1858(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 >= 3)
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 67109120;
      LODWORD(v37) = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HW ADV Buffer handle out of range (%d), ignoring agent request", &v36, 8u);
    }

    return 7;
  }

  if (a3)
  {
    v8 = a1 + 544 * a2;
    if (*(v8 + 170) == 1 && *(v8 + 167) == 1)
    {
      v9 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v10 = off_100B0D748[a2];
        v36 = 138543362;
        v37 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): created and pending destroy", &v36, 0xCu);
      }

      sub_10079DECC(a1, a2);
    }
  }

  v11 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v12 = off_100B0D748[a2];
    v13 = a1 + 544 * a2;
    v14 = *(v13 + 167);
    LODWORD(v13) = *(v13 + 168);
    v15 = a2;
    v36 = 138544130;
    v37 = v12;
    v38 = 1024;
    *v39 = a3;
    *&v39[4] = 1024;
    *&v39[6] = v14;
    v40 = 1024;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): enableADVBuffering enable=%d created=%d enabled=%d", &v36, 0x1Eu);
  }

  else
  {
    v15 = a2;
  }

  v16 = a1 + 544 * v15;
  if ((*(v16 + 167) & 1) == 0)
  {
    v22 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v23 = off_100B0D748[a2];
      v36 = 138543362;
      v37 = v23;
      v5 = 12;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): not created", &v36, 0xCu);
      return v5;
    }

    return 12;
  }

  v17 = *(v16 + 168);
  v18 = qword_100BCE918;
  v19 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (v17 == a3)
  {
    if (v19)
    {
      v20 = off_100B0D748[a2];
      v21 = "paused";
      if (a3)
      {
        v21 = "active";
      }

      v36 = 138543618;
      v37 = v20;
      v38 = 2082;
      *v39 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): already %{public}s", &v36, 0x16u);
    }

    return 12;
  }

  if (v19)
  {
    v24 = off_100B0D748[a2];
    v25 = "pausing";
    if (a3)
    {
      v25 = "activating";
    }

    v36 = 138543618;
    v37 = v24;
    v38 = 2082;
    *v39 = v25;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): mode change -> %{public}s ", &v36, 0x16u);
  }

  v26 = sub_10000C7D0();
  v5 = (*(*v26 + 3408))(v26, a2, 1, a3 ^ 1u);
  v27 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v28 = off_100B0D748[a2];
    v36 = 138543618;
    v37 = v28;
    v38 = 1024;
    *v39 = v5;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): advBufMatchControl returned %d", &v36, 0x12u);
  }

  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874EBC();
    }
  }

  else
  {
    *(v16 + 168) = a3;
    *(v16 + 169) |= a3;
    v29 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v30 = off_100B0D748[a2];
      v31 = *(v16 + 169);
      v36 = 138543618;
      v37 = v30;
      v38 = 1024;
      *v39 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): pendingDraining:%d", &v36, 0x12u);
    }

    if (a3)
    {
      *(v16 + 176) = CFAbsoluteTimeGetCurrent();
      v32 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v33 = off_100B0D748[a2];
        v34 = *(v16 + 176);
        v36 = 138543618;
        v37 = v33;
        v38 = 2048;
        *v39 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): setting start time to %f", &v36, 0x16u);
      }
    }

    return 0;
  }

  return v5;
}

void sub_1007A1D58(uint64_t a1)
{
  if (!*(a1 + 2304))
  {
    v2 = sub_100007EE8();
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 8));
    *(a1 + 2304) = v3;
    v4 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "fContactTracingScanDeltaTimer Timer Armed!", buf, 2u);
      v3 = *(a1 + 2304);
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A9CFC;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    v5 = *(a1 + 2304);
    if (qword_100B54770 != -1)
    {
      sub_1008743D0();
    }

    v6 = sub_1005127E8(off_100B54768);
    v7 = dispatch_time(0x8000000000000000, 1000000 * v6);
    dispatch_source_set_timer(v5, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 2304));
    if (*(a1 + 1255) == 1)
    {
      if (qword_100B54770 != -1)
      {
        sub_1008743D0();
      }

      v8 = sub_1005126E8(off_100B54768);
    }

    else
    {
      if (qword_100B54770 != -1)
      {
        sub_1008743D0();
      }

      v8 = sub_100512C40(off_100B54768);
    }

    v9 = +[NSDate date];
    [v9 timeIntervalSince1970];
    v11 = v10;

    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_date(v12, "Date", ((v11 + v8) * 1000000000.0));
    v13 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "XPC event com.apple.alarm for %llu seconds armed!", buf, 0xCu);
    }

    xpc_set_event();
    xpc_release(v12);
  }
}

void sub_1007A2008(uint64_t a1, _OWORD *a2)
{
  v4 = malloc_type_malloc(0xEEuLL, 0x1000040AEA256DBuLL);
  v6 = a2[1];
  v5 = a2[2];
  *v4 = *a2;
  v4[1] = v6;
  v4[2] = v5;
  v7 = a2[6];
  v9 = a2[3];
  v8 = a2[4];
  v4[5] = a2[5];
  v4[6] = v7;
  v4[3] = v9;
  v4[4] = v8;
  v10 = a2[10];
  v12 = a2[7];
  v11 = a2[8];
  v4[9] = a2[9];
  v4[10] = v10;
  v4[7] = v12;
  v4[8] = v11;
  v14 = a2[12];
  v13 = a2[13];
  v15 = a2[11];
  *(v4 + 222) = *(a2 + 222);
  v4[12] = v14;
  v4[13] = v13;
  v4[11] = v15;
  v16 = sub_100007EE8();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1007A20F4;
  v17[3] = &unk_100AE0860;
  v17[4] = a1;
  v17[5] = v4;
  sub_10000CA94(v16, v17);
}

void sub_1007A20F4(uint64_t a1, uint64_t a2)
{
  v39 = __chkstk_darwin(a1, a2);
  v2 = *(v39 + 32);
  v3 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v4 = *(v2 + 1867);
    v5 = *(v2 + 1868);
    buf = 67109376;
    v59 = v4;
    v60 = 1024;
    v61 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Match Buffer matchBufferEvent fMatchBufferExpectedEntries:%d fMatchBufferEntriesReceived:%d", &buf, 0xEu);
  }

  if (*(v2 + 1867) == 255 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
  {
    sub_100874F44();
  }

  v6 = *(v2 + 1868);
  if (v6 <= 0x13 && *(v2 + 1867) != 255)
  {
    v7 = 0;
    v8 = *(v39 + 40);
    v69[0] = v8 + 4;
    v69[1] = v8 + 22;
    v69[2] = v8 + 40;
    v69[3] = v8 + 58;
    v9 = v8 + 112;
    v10 = v8 + 130;
    v11 = v8 + 148;
    v12 = v8 + 166;
    v69[4] = v8 + 76;
    v69[5] = v8 + 94;
    v13 = v8 + 184;
    v14 = v8 + 202;
    v15 = v8 + 220;
    v69[6] = v9;
    v69[7] = v10;
    if (v6 >= 7)
    {
      v16 = 20 - v6;
    }

    else
    {
      v16 = 13;
    }

    v69[8] = v11;
    v69[9] = v12;
    v69[10] = v13;
    v69[11] = v14;
    v69[12] = v15;
    do
    {
      v17 = *(v2 + 1868) + v7;
      v18 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        buf = 67109376;
        v59 = v7;
        v60 = 1024;
        v61 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Match Buffer Parsing i:%d tableIndex:%d", &buf, 0xEu);
      }

      v19 = v69[v7];
      v20 = v19[17];
      if (v19[17] && *(v19 + 13))
      {
        --*(v2 + 1867);
        bzero(&buf, 0x1788uLL);
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        [*(v2 + 2136) objectAtIndex:v17];
        v21 = [objc_claimAutoreleasedReturnValue() objectForKeyedSubscript:@"MatchActionRulePeerAddress"];
        [v21 getBytes:&v41 + 2 range:{0, 6}];

        LOWORD(v41) = 259;
        WORD4(v41) = *v19 + 1;
        BYTE8(v42) = sub_10000AB54(v2, v19[17]);
        *&v42 = v19;
        BYTE11(v43) = 0;
        v40 = 0;
        sub_1000216B4(&v40);
        sub_100008D54(&v41, &buf, v22);
        sub_100022214(&v40);
        v67 = *(v2 + 1867) != 0;
        v68 = 1;
        v23 = **(v39 + 40);
        v24 = *(v19 + 13);
        v25 = v23 + 0xFFFFFFF;
        if (v23 >= v24)
        {
          v25 = **(v39 + 40);
        }

        v26 = v25 - v24;
        v66 = v25 - v24;
        v27 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          *v46 = 68158978;
          v47 = 6;
          v48 = 2096;
          v49 = &v41 + 2;
          v50 = 1024;
          v51 = v23;
          v52 = 1024;
          v53 = v24;
          v54 = 1024;
          v55 = v26;
          v56 = 1024;
          v57 = WORD4(v41);
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "ADV Buffer found %.6P now:%u event:%u delta:%u dataLen:%d", v46, 0x2Au);
        }

        sub_100009B00();
      }

      v28 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(v19 + 13);
        buf = 67109888;
        v59 = v7;
        v60 = 1024;
        v61 = v17;
        v62 = 1024;
        v63 = v20;
        v64 = 1024;
        LODWORD(v65) = v29;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Skipping entry i:%d tableIndex:%d rssi:%d timeStamp:%d", &buf, 0x1Au);
      }

      ++v7;
    }

    while (v7 < v16);
    v30 = *(v2 + 1868) + 13;
    *(v2 + 1868) = v30;
    v31 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(v2 + 1867);
      buf = 67109376;
      v59 = v38;
      v60 = 1024;
      v61 = v30;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Match Buffer after parsing,fMatchBufferExpectedEntries:%d fMatchBufferEntriesReceived:%d", &buf, 0xEu);
      v30 = *(v2 + 1868);
    }

    if (v30 >= 0x14u)
    {
      *(v2 + 1867) = 255;
      v32 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v33 = *(v2 + 144);
        if (*(v2 + 2144))
        {
          v34 = "YES";
        }

        else
        {
          v34 = "NO";
        }

        buf = 67109890;
        v59 = v33;
        v60 = 1024;
        v61 = 255;
        v62 = 1024;
        v63 = 0;
        v64 = 2082;
        v65 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Match Buffer We're done screenstate=%d fMatchBufferExpectedEntries:%d fMatchBufferEntriesReceived:%d pendingRules:%{public}s", &buf, 0x1Eu);
      }

      *(v2 + 1869) = 0;
      v35 = *(v2 + 2144);
      v36 = qword_100BCE918;
      v37 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
      if (v35)
      {
        if (v37)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Match Buffer Reconfiguring the table", &buf, 2u);
        }

        sub_1007A2784(v2);
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
        {
          sub_100874F84();
        }
      }

      else
      {
        if (v37)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Match Buffer enabling the buffer again after reading", &buf, 2u);
        }

        sub_1007A2D08(v2, 1);
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
        {
          sub_100874FF4();
        }
      }
    }
  }

  free(*(v39 + 40));
}

uint64_t sub_1007A2784(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "configureMatchActionRulesTableInternal", buf, 2u);
  }

  v3 = (a1 + 2136);
  objc_storeStrong((a1 + 2136), *(a1 + 2144));
  v4 = *(a1 + 2144);
  *(a1 + 2144) = 0;

  if (*(a1 + 2136) && [*(a1 + 2136) count])
  {
    v31 = 256;
    v5 = sub_1007A8820(a1, &v31);
    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "createMatchActionRulesTable returned %d", buf, 8u);
    }

    if (v5 != 15 && v5)
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_1008751A4();
      }
    }

    else
    {
      if ([*v3 count] > 0x13)
      {
        v7 = 20;
      }

      else
      {
        v7 = [*v3 count];
      }

      v27 = v7;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        sub_100875064();
      }

      v26 = v31;
      v11 = v27;
      if (v27)
      {
        v12 = 0;
        v13 = 0;
        v14 = qword_100BCE918;
        *&v10 = 67109120;
        v25 = v10;
        while (1)
        {
          v28 = v13;
          v30 = v12;
          *(v47 + 14) = 0u;
          if ((v11 - v12) >= 14)
          {
            v15 = 14;
          }

          else
          {
            v15 = v11 - v12;
          }

          v46 = 0uLL;
          v47[0] = 0uLL;
          v44 = 0uLL;
          v45 = 0uLL;
          v42 = 0uLL;
          v43 = 0uLL;
          v41 = 0uLL;
          v39 = 0uLL;
          v40 = 0uLL;
          v37 = 0uLL;
          v38 = 0uLL;
          v35 = 0uLL;
          v36 = 0uLL;
          *buf = 0uLL;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *v32 = v25;
            LODWORD(v33) = v15;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "count=%d", v32, 8u);
          }

          v29 = v15;
          if (v15)
          {
            v16 = 0;
            v17 = v12;
            do
            {
              v18 = [*v3 objectAtIndex:{v17, v25}];
              v19 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
              {
                *v32 = 138412290;
                v33 = v18;
                _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "rule=%@", v32, 0xCu);
              }

              v20 = [v18 objectForKeyedSubscript:@"MatchActionRuleLocalToken"];
              v21 = &buf[17 * v16];
              [v20 getBytes:v21 + 7 range:{0, 6}];

              v22 = [v18 objectForKeyedSubscript:@"MatchActionRulePeerAddress"];
              [v22 getBytes:v21 range:{0, 6}];

              v21[6] = 1;
              v21[13] = 18;

              ++v16;
              ++v17;
            }

            while (v16 < v29);
          }

          v23 = sub_10000C7D0();
          v13 = v29 + v30;
          v5 = (*(*v23 + 3432))(v23, v26, v28, (v29 + v30 - 1), buf);
          v14 = qword_100BCE918;
          if (v5)
          {
            break;
          }

          v12 = (v29 + v30);
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
          {
            *v32 = v25;
            LODWORD(v33) = (v29 + v30);
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "entriesSent=%d", v32, 8u);
            v14 = qword_100BCE918;
          }

          v11 = v27;
          if (v27 <= v12)
          {
            v26 = v31;
            goto LABEL_39;
          }
        }

        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_1008750D4();
        }
      }

      else
      {
LABEL_39:
        v24 = sub_10000C7D0();
        v5 = (*(*v24 + 3408))(v24, v26, 1, 0);
        if (v5 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_10087513C();
        }
      }
    }
  }

  else
  {
    v8 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "new Match table rules are nil", buf, 2u);
    }

    return 0;
  }

  return v5;
}

uint64_t sub_1007A2D08(uint64_t a1, int a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v17 = 67109120;
    LODWORD(v18) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Match Buffer enableMatchBuffering enable=%d", &v17, 8u);
  }

  if (*(a1 + 1867) == 255)
  {
    v7 = *(a1 + 1832);
    if (v7 == (a1 + 1840))
    {
LABEL_15:
      v11 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No table is configured", &v17, 2u);
      }

      return 0;
    }

    else
    {
      while (*(v7 + 28) != 18)
      {
        v8 = v7[1];
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
            v9 = v7[2];
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
        if (v9 == (a1 + 1840))
        {
          goto LABEL_15;
        }
      }

      v12 = *(v7 + 15);
      v13 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v14 = "pausing";
        if (a2)
        {
          v14 = "activating";
        }

        v17 = 136446210;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Match Buffer mode change -> %{public}s ", &v17, 0xCu);
      }

      v15 = sub_10000C7D0();
      v6 = (*(*v15 + 3408))(v15, v12, 1, a2 ^ 1u);
      if (v6 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_10087520C();
      }
    }
  }

  else
  {
    v5 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We're in the middle of reading it, we cant pause now", &v17, 2u);
    }

    return 12;
  }

  return v6;
}

void sub_1007A2F70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [[NSData alloc] initWithBytes:a2 length:*(a2 + 1) + 4];
    [gCBDaemonServer aopMessageReceived:?];
  }
}

uint64_t sub_1007A300C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting up match rules with %@", &v17, 0xCu);
  }

  v5 = sub_10000C798();
  if ((*(*v5 + 744))(v5))
  {
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = +[NSArray array];
    }

    v9 = *(a1 + 2144);
    *(a1 + 2144) = v6;

    v8 = sub_1007A2D08(a1, 0);
    if (!v8)
    {
      v10 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "succesfully paused", &v17, 2u);
      }

      v11 = sub_1007A42B8(a1);
      v12 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v17 = 67109120;
        LODWORD(v18) = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "readMatchBuffers returned %d", &v17, 8u);
      }

      v13 = qword_100BCE918;
      v14 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
      if (v11 == 12)
      {
        if (v14)
        {
          LOWORD(v17) = 0;
          v15 = "Match buffer read already in progress";
          goto LABEL_21;
        }

LABEL_22:
        v8 = 0;
        goto LABEL_26;
      }

      if (!v11)
      {
        if (v14)
        {
          LOWORD(v17) = 0;
          v15 = "Match buffer read started";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v15, &v17, 2u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      if (v14)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "we need to reconfigure now", &v17, 2u);
      }

      v8 = sub_1007A2784(a1);
    }
  }

  else
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "This hardware does not support MatchActioRules", &v17, 2u);
    }

    v8 = 11;
  }

LABEL_26:

  return v8;
}

void *sub_1007A32D0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  a1[5] = &off_100AE0AB8;
  a1[6] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  return sub_10000CB74(a1 + 7, (a2 + 56));
}

void sub_1007A3338(_Unwind_Exception *exception_object)
{
  *(v1 + 40) = v2;
  v4 = *(v1 + 48);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A3354(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  a1[5] = &off_100AE0AB8;
  v3 = a1[6];
  if (v3)
  {

    sub_10000C808(v3);
  }
}

void sub_1007A33C8(uint64_t a1, void (***a2)(void, uint64_t, void, uint64_t, uint64_t, void, void ***, const __CFString *))
{
  v3 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  (**a2)(a2, v3, 0, a1 + 40, a1 + 56, 0, &v4, @"default");
  sub_10000CEDC(&v4, v5[0]);
}

void sub_1007A346C(uint64_t a1, void (***a2)(void, uint64_t, void, uint64_t, uint64_t, void, void ***, const __CFString *))
{
  v3 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  (**a2)(a2, v3, 0, a1 + 40, a1 + 56, 0, &v4, @"default");
  sub_10000CEDC(&v4, v5[0]);
}

void sub_1007A3510(uint64_t a1, void (***a2)(void, uint64_t, void, uint64_t, uint64_t, void, void ***, const __CFString *))
{
  v3 = *(a1 + 32);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  (**a2)(a2, v3, 0, a1 + 40, a1 + 56, 0, &v4, @"default");
  sub_10000CEDC(&v4, v5[0]);
}

uint64_t sub_1007A35C0(uint64_t a1)
{
  v1 = *(a1 + 1808);
  if (v1)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fADVBufferWatchdogTimer destroyed!", v5, 2u);
      v1 = *(a1 + 1808);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 1808));
    *(a1 + 1808) = 0;
  }

  return 0;
}

uint64_t sub_1007A3658(uint64_t a1)
{
  if (!*(a1 + 1800))
  {
    v2 = *(a1 + 2152);
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fADVBufferPeriodicDrainTimer %llu ms Armed!", buf, 0xCu);
    }

    v4 = sub_100007EE8();
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v4 + 8));
    *(a1 + 1800) = v5;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A8E4C;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v5, handler);
    v6 = *(a1 + 1800);
    v7 = dispatch_time(0x8000000000000000, 1000000 * v2);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 1800));
  }

  return 0;
}

uint64_t sub_1007A37B8(uint64_t a1, char a2)
{
  if (!*(a1 + 1808))
  {
    v4 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = 5000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "fADVBufferWatchdogTimer %llu ms Armed!", buf, 0xCu);
    }

    v5 = sub_100007EE8();
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 8));
    *(a1 + 1808) = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1007A8F1C;
    v10[3] = &unk_100AE15D8;
    v10[4] = a1;
    v11 = a2;
    dispatch_source_set_event_handler(v6, v10);
    v7 = *(a1 + 1808);
    v8 = dispatch_time(0x8000000000000000, 5000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 1808));
  }

  return 0;
}

uint64_t sub_1007A3920(uint64_t a1, unsigned int a2)
{
  if (a2 >= 3)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v25) = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HW ADV Buffer handle out of range (%d), ignoring agent request", buf, 8u);
    }

    return 7;
  }

  v6 = a1 + 544 * a2;
  if (*(v6 + 172) != 255)
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v8 = off_100B0D748[a2];
      *buf = 138543362;
      v25 = v8;
      v9 = "ADVBUFF(%{public}@): Cannot read ADV buffer since we're already in the process of reading it";
      v4 = 12;
      v10 = v7;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
      return v4;
    }

    return 12;
  }

  v11 = *(v6 + 167);
  v12 = qword_100BCE918;
  v13 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if ((v11 & 1) == 0)
  {
    if (v13)
    {
      v22 = off_100B0D748[a2];
      *buf = 138543362;
      v25 = v22;
      v9 = "ADVBUFF(%{public}@): Cannot read ADV buffer since its not created yet";
      v4 = 12;
      v10 = v12;
      goto LABEL_24;
    }

    return 12;
  }

  if (v13)
  {
    v14 = off_100B0D748[a2];
    *buf = 138543362;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): Reading ADV Buffer", buf, 0xCu);
  }

  v15 = *sub_10000C7D0();
  v4 = (*(v15 + 3376))();
  v16 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v17 = off_100B0D748[a2];
    *buf = 138543874;
    v25 = v17;
    v26 = 1024;
    v27 = v4;
    v28 = 1024;
    v29 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%{public}@): Read ADV buffer complete with status %d expectedEntries %d", buf, 0x18u);
    v16 = qword_100BCE918;
  }

  *(v6 + 172) = 0;
  *(v6 + 173) = 0;
  *(v6 + 174) = 0;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = off_100B0D748[a2];
    v19 = *(v6 + 172);
    *buf = 138543874;
    v25 = v18;
    v26 = 1024;
    v27 = v4;
    v28 = 1024;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): Read ADV buffer complete with status %d number of available entries %d", buf, 0x18u);
  }

  if (a2 == 2)
  {
    ++*(a1 + 2328);
  }

  if (!v4 && !*(v6 + 172))
  {
    v20 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v21 = off_100B0D748[a2];
      *buf = 138543362;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): Nothing in the ADV buffer, we're not expecing any events", buf, 0xCu);
    }

    *(v6 + 172) = -1;
    *(v6 + 169) = 0;
  }

  return v4;
}

uint64_t sub_1007A3CE4(_BYTE *a1)
{
  if (!sub_10002529C(a1))
  {
    if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v2 = sub_100007EE8();
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_1007A3E34;
      v4[3] = &unk_100ADF8F8;
      v4[4] = a1;
      sub_10000CA94(v2, v4);
      return 12;
    }

LABEL_9:
    sub_100875274();
    goto LABEL_10;
  }

  if ((a1[167] & 1) == 0 && (a1[711] & 1) == 0)
  {
    if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((a1[1869] & 1) != 0 || (a1[171] & a1[167] & 1) != 0 || a1[715] == 1 && a1[711] == 1)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008752B0();
    }

    return 12;
  }

  sub_1000677F8(a1, 4);
  return 0;
}

void sub_1007A3E3C(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1007A4098(a1);
    v4 = sub_10007D00C(a1);
    v5 = *(a1 + 1870);
    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "tryReadAOPBTADPDBuffers haveAnyHwAOPNearbyInfoBufferRequests:%d haveAnyHwAOPBTNearbyInfoV2BufferRequests:%d fAOPBTBufferReadInProgress:%d", v8, 0x14u);
  }

  if (*(a1 + 1870) == 1)
  {
    v6 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AOPBTADPDBuff Already being read, skipping", v8, 2u);
    }
  }

  else if ((!_os_feature_enabled_impl() || sub_1007A4098(a1)) && sub_10007D00C(a1))
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AOPBTADPDBuff read in progress", v8, 2u);
    }

    if (sub_1000C5CF0(a1, 22, 0))
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100875440();
      }
    }

    else if (_os_feature_enabled_impl() && sub_1000C5CF0(a1, 16, 0))
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_1008754A8();
      }
    }

    else
    {
      *(a1 + 1870) = 1;
      sub_1007A4100(a1);
      sub_1007A4198(a1);
      if (qword_100B51098 != -1)
      {
        sub_1008746E4();
      }

      sub_100488328(qword_100B51090);
    }
  }
}

uint64_t sub_1007A4098(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148);
    result = (v3 >> 4) & 1;
    if ((v3 & 0x10) != 0)
    {
      break;
    }

    v5 = v1[1];
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
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_1007A4100(uint64_t a1)
{
  v1 = *(a1 + 1824);
  if (v1)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fAOPBTBufferPeriodicDrainTimer destroyed!", v5, 2u);
      v1 = *(a1 + 1824);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(a1 + 1824));
    *(a1 + 1824) = 0;
  }

  return 0;
}

uint64_t sub_1007A4198(uint64_t a1)
{
  if (!*(a1 + 1824))
  {
    v2 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Arming fAOPBTBufferPeriodicDrainTimer", buf, 2u);
    }

    v3 = sub_100007EE8();
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 8));
    *(a1 + 1824) = v4;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A8D88;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v4, handler);
    v5 = *(a1 + 1824);
    v6 = dispatch_time(0x8000000000000000, 300000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 1824));
  }

  return 0;
}

uint64_t sub_1007A42B8(uint64_t a1)
{
  if (*(a1 + 1867) != 255)
  {
    v1 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Match Buffer Cannot read Match buffer since we're already in the process of reading it", &v19, 2u);
    }

    return 12;
  }

  v4 = [*(a1 + 2136) count];
  v5 = qword_100BCE918;
  v6 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
  if (!v4)
  {
    if (v6)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Match Buffer Cannot read Match buffer since we do not have any rules set up", &v19, 2u);
    }

    return 18;
  }

  if (v6)
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Match Buffer Reading Match Buffer", &v19, 2u);
  }

  v7 = *(a1 + 1832);
  if (v7 == (a1 + 1840))
  {
LABEL_16:
    v11 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No table is configured", &v19, 2u);
    }

    return 17;
  }

  else
  {
    while (*(v7 + 28) != 18)
    {
      v8 = v7[1];
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
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
      if (v9 == (a1 + 1840))
      {
        goto LABEL_16;
      }
    }

    v12 = *(v7 + 15);
    v13 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v19 = 67109120;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Match Buffer reading handle %d", &v19, 8u);
    }

    *(a1 + 1868) = 0;
    v14 = sub_10000C7D0();
    v2 = (*(*v14 + 3448))(v14, v12, a1 + 1867);
    v15 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 1867);
      v19 = 67109376;
      v20 = v2;
      v21 = 1024;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Match Buffer Read Match buffer complete with status %d number of available entries %d", &v19, 0xEu);
    }

    if (!v2)
    {
      if (*(a1 + 1867))
      {
        return 0;
      }

      v18 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Match Buffer Nothing in the ADV buffer, we're not expecing any events", &v19, 2u);
      }

      *(a1 + 1867) = -1;
      return 18;
    }
  }

  return v2;
}

void sub_1007A45CC(uint64_t a1, const void *a2)
{
  memcpy(v5, a2, sizeof(v5));
  v3 = sub_100007EE8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007A465C;
  v4[3] = &unk_100B0CF30;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

uint64_t sub_1007A465C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 68);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v103 = vaddq_s64(*(v2 + 2160), vextq_s8(v4, v4, 8uLL));
  *(v2 + 2160) = v103;
  v5 = *(a1 + 60);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  v102 = vaddq_s64(*(v2 + 2176), vextq_s8(v4, v4, 8uLL));
  *(v2 + 2176) = v102;
  v6 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 80);
    v8 = *(a1 + 84);
    v9 = *(a1 + 88);
    v10 = *(a1 + 92);
    v11 = *(a1 + 96);
    v12 = *(a1 + 100);
    v13 = *(a1 + 104);
    v14 = *(a1 + 108);
    v15 = *(a1 + 112);
    v16 = *(a1 + 116);
    v17 = *(a1 + 120);
    v18 = *(a1 + 124);
    v19 = *(a1 + 128);
    v20 = *(a1 + 132);
    v21 = *(a1 + 136);
    v22 = *(a1 + 140);
    v24 = *(a1 + 144);
    v23 = *(a1 + 148);
    v26 = *(a1 + 152);
    v25 = *(a1 + 156);
    v28 = *(a1 + 160);
    v27 = *(a1 + 164);
    v30 = *(a1 + 168);
    v29 = *(a1 + 172);
    *buf = 134224896;
    *&buf[4] = v103.i64[1];
    *&buf[12] = 2048;
    *&buf[14] = v103.i64[0];
    *&buf[22] = 2048;
    *&buf[24] = v102.i64[1];
    *v105 = 2048;
    *&v105[2] = v102.i64[0];
    *&v105[10] = 1024;
    *v106 = v7;
    *&v106[4] = 1024;
    *v107 = v8;
    *&v107[4] = 1024;
    *v108 = v9;
    *&v108[4] = 1024;
    *v109 = v10;
    *&v109[4] = 1024;
    *v110 = v11;
    *&v110[4] = 1024;
    *v111 = v12;
    *&v111[4] = 1024;
    *v112 = v13;
    *&v112[4] = 1024;
    *v113 = v14;
    *&v113[4] = 1024;
    *v114 = v15;
    *&v114[4] = 1024;
    *v115 = v16;
    *&v115[4] = 1024;
    *v116 = v17;
    *&v116[4] = 1024;
    *v117 = v18;
    *&v117[4] = 1024;
    *v118 = v19;
    *&v118[4] = 1024;
    *v119 = v20;
    *&v119[4] = 1024;
    *v120 = v21;
    *&v120[4] = 1024;
    *v121 = v22;
    *&v121[4] = 1024;
    v122 = v24;
    v123 = 1024;
    v124 = v23;
    v125 = 1024;
    v126 = v26;
    v127 = 1024;
    v128 = v25;
    v129 = 1024;
    v130 = v28;
    v131 = 1024;
    v132 = v27;
    v133 = 1024;
    v134 = v30;
    v135 = 1024;
    v136 = v29;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LEStats: BMC:%lld LP:%lld, MC: %lld  %lld  ]  RxL:%05d:%05d:%05d  EAdv:%04d:%04d:%04d LeLR:%04d:%04d:%04d Aux:%04d:%04d:%04d Arsp:%04d:%04d:%04d cd:%04d:%04d:%04d aCrc:%05d:%05d:%05d def:%04d:%04d:%04d", buf, 0xBAu);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 176);
    v32 = *(a1 + 180);
    v33 = *(a1 + 184);
    v34 = *(a1 + 188);
    v35 = *(a1 + 192);
    v36 = *(a1 + 196);
    v37 = *(a1 + 200);
    v38 = *(a1 + 204);
    v39 = *(a1 + 208);
    v40 = *(a1 + 212);
    v41 = *(a1 + 216);
    v42 = *(a1 + 220);
    v43 = *(a1 + 224);
    v44 = *(a1 + 228);
    v45 = *(a1 + 232);
    v46 = *(a1 + 236);
    v47 = *(a1 + 240);
    v48 = *(a1 + 244);
    v49 = *(a1 + 248);
    v50 = *(a1 + 252);
    v51 = *(a1 + 256);
    v52 = *(a1 + 260);
    v53 = *(a1 + 264);
    *buf = 67114752;
    *&buf[4] = v31;
    *&buf[8] = 1024;
    *&buf[10] = v32;
    *&buf[14] = 1024;
    *&buf[16] = v33;
    *&buf[20] = 1024;
    *&buf[22] = v34;
    *&buf[26] = 1024;
    *&buf[28] = v35;
    *v105 = 1024;
    *&v105[2] = v36;
    *&v105[6] = 1024;
    *&v105[8] = v37;
    *v106 = 1024;
    *&v106[2] = v38;
    *v107 = 1024;
    *&v107[2] = v39;
    *v108 = 1024;
    *&v108[2] = v40;
    *v109 = 1024;
    *&v109[2] = v41;
    *v110 = 1024;
    *&v110[2] = v42;
    *v111 = 1024;
    *&v111[2] = v43;
    *v112 = 1024;
    *&v112[2] = v44;
    *v113 = 1024;
    *&v113[2] = v45;
    *v114 = 1024;
    *&v114[2] = v46;
    *v115 = 1024;
    *&v115[2] = v47;
    *v116 = 1024;
    *&v116[2] = v48;
    *v117 = 1024;
    *&v117[2] = v49;
    *v118 = 1024;
    *&v118[2] = v50;
    *v119 = 1024;
    *&v119[2] = v51;
    *v120 = 1024;
    *&v120[2] = v52;
    *v121 = 1024;
    *&v121[2] = v53;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LEStats2: Rxa=%04d tSr=%04d tASr=%04d rSr=%04d tCi=%04d tCr=%04d rsRsp=%04d rsi=%04d rcr=%04d nba=%04d:%04d:%04d:%04d tot:%04d:%04d cden=%04d:%04d:%04d:%04d totAdv=%04d:%04d:%04d:%04d", buf, 0x8Cu);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v66 = *(v2 + 2780);
    v67 = *(v2 + 2784);
    v68 = *(v2 + 2788);
    v69 = *(a1 + 60) + v66;
    v70 = *(a1 + 68) + v67;
    v71 = *(a1 + 44) + v68;
    *buf = 67110400;
    *&buf[4] = v66;
    *&buf[8] = 1024;
    *&buf[10] = v67;
    *&buf[14] = 1024;
    *&buf[16] = v68;
    *&buf[20] = 1024;
    *&buf[22] = v69;
    *&buf[26] = 1024;
    *&buf[28] = v70;
    *v105 = 1024;
    *&v105[2] = v71;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: MainCoreELNAOn [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v72 = *(v2 + 2792);
    v73 = *(v2 + 2796);
    v74 = *(v2 + 2800);
    v75 = *(a1 + 64) + v72;
    v76 = *(a1 + 72) + v73;
    v77 = *(a1 + 48) + v74;
    *buf = 67110400;
    *&buf[4] = v72;
    *&buf[8] = 1024;
    *&buf[10] = v73;
    *&buf[14] = 1024;
    *&buf[16] = v74;
    *&buf[20] = 1024;
    *&buf[22] = v75;
    *&buf[26] = 1024;
    *&buf[28] = v76;
    *v105 = 1024;
    *&v105[2] = v77;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: MainCoreELNABypass [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v78 = *(v2 + 2804);
    v79 = *(v2 + 2808);
    v80 = *(v2 + 2812);
    v81 = *(a1 + 252) + v78;
    v82 = *(a1 + 260) + v79;
    v83 = *(a1 + 228) + v80;
    *buf = 67110400;
    *&buf[4] = v78;
    *&buf[8] = 1024;
    *&buf[10] = v79;
    *&buf[14] = 1024;
    *&buf[16] = v80;
    *&buf[20] = 1024;
    *&buf[22] = v81;
    *&buf[26] = 1024;
    *&buf[28] = v82;
    *v105 = 1024;
    *&v105[2] = v83;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: ScanCoreELNAOn [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
    v6 = qword_100BCE918;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v84 = *(v2 + 2816);
    v85 = *(v2 + 2820);
    v86 = *(v2 + 2824);
    v87 = *(a1 + 256) + v84;
    v88 = *(a1 + 264) + v85;
    v89 = *(a1 + 232) + v86;
    *buf = 67110400;
    *&buf[4] = v84;
    *&buf[8] = 1024;
    *&buf[10] = v85;
    *&buf[14] = 1024;
    *&buf[16] = v86;
    *&buf[20] = 1024;
    *&buf[22] = v87;
    *&buf[26] = 1024;
    *&buf[28] = v88;
    *v105 = 1024;
    *&v105[2] = v89;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: ScanCoreELNABypass [numAdvs, numAdvsBeforeFiltering, totalTime] [%d, %d, %d] -> [%d, %d, %d]", buf, 0x26u);
    v6 = qword_100BCE918;
  }

  v54.i32[0] = *(a1 + 60);
  v54.i32[1] = *(a1 + 68);
  v54.i32[2] = *(a1 + 44);
  v54.i32[3] = *(a1 + 64);
  v55 = *(v2 + 2796);
  *(v2 + 2780) = vaddq_s32(*(v2 + 2780), v54);
  v54.i32[0] = *(a1 + 72);
  v54.i32[1] = *(a1 + 48);
  v54.i32[2] = *(a1 + 252);
  v54.i32[3] = *(a1 + 260);
  *(v2 + 2796) = vaddq_s32(v55, v54);
  v56.i32[0] = *(a1 + 228);
  v56.i32[1] = *(a1 + 256);
  v56.i32[2] = *(a1 + 264);
  v56.i32[3] = *(a1 + 232);
  *(v2 + 2812) = vaddq_s32(*(v2 + 2812), v56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v90 = *(v2 + 3216);
    v91 = *(v2 + 3220);
    v92 = *(v2 + 3224);
    v93 = *(v2 + 3228);
    v94 = *(v2 + 3232);
    v95 = *(v2 + 3236);
    v96 = *(a1 + 284) + v90;
    v97 = *(a1 + 288) + v91;
    v98 = *(a1 + 292) + v92;
    v99 = *(a1 + 296) + v93;
    v100 = *(a1 + 276) + v94;
    v101 = *(a1 + 280) + v95;
    *buf = 67111936;
    *&buf[4] = v90;
    *&buf[8] = 1024;
    *&buf[10] = v91;
    *&buf[14] = 1024;
    *&buf[16] = v92;
    *&buf[20] = 1024;
    *&buf[22] = v93;
    *&buf[26] = 1024;
    *&buf[28] = v94;
    *v105 = 1024;
    *&v105[2] = v95;
    *&v105[6] = 1024;
    *&v105[8] = v96;
    *v106 = 1024;
    *&v106[2] = v97;
    *v107 = 1024;
    *&v107[2] = v98;
    *v108 = 1024;
    *&v108[2] = v99;
    *v109 = 1024;
    *&v109[2] = v100;
    *v110 = 1024;
    *&v110[2] = v101;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "BLEScanStat: ScanCoreCompensation [numAdvsELNAOn, numAdvsELNABypass, totalTimeELNAOn, totalTimeELNABypass, txBlankingBTMC, txBlankingWLAN] [%d, %d, %d, %d, %d, %d] -> [%d, %d, %d, %d, %d, %d]", buf, 0x4Au);
    v6 = qword_100BCE918;
  }

  *(v2 + 3216) = vaddq_s32(*(v2 + 3216), *(a1 + 284));
  *(v2 + 3232) = vadd_s32(*(v2 + 3232), *(a1 + 276));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100875638();
  }

  v57 = *(a1 + 84) + *(a1 + 80) + *(a1 + 88);
  v58 = *(a1 + 96) + *(a1 + 92) + *(a1 + 100);
  v59 = *(a1 + 108) + *(a1 + 104) + *(a1 + 112);
  v60 = *(a1 + 184);
  v61 = *(a1 + 192);
  v62 = *(a1 + 196);
  v63 = *(a1 + 176);
  v64 = sub_10000F034();
  *buf = 0;
  *&buf[8] = v57;
  *&buf[12] = v58;
  *&buf[16] = v59;
  *&buf[20] = v63;
  *&buf[28] = v61;
  *v105 = v60;
  *&v105[4] = v62;
  return (*(*v64 + 720))();
}

void sub_1007A4E78(uint64_t a1)
{
  v1 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: BLE Scan Stat:", buf, 2u);
    v1 = qword_100BCE918;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 2760);
    *buf = 134217984;
    v47 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: \tLast Stat Start Time: %f sec", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 2760);
    v6 = Current - v5;
    if (Current < v5)
    {
      v6 = 0.0;
    }

    *buf = 134217984;
    v47 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tStat Measurement Duration: %f sec", buf, 0xCu);
    v4 = qword_100BCE918;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 2768);
    *buf = 67109120;
    LODWORD(v47) = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Range Scan Requests: %u", buf, 8u);
    v4 = qword_100BCE918;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 2772);
    *buf = 67109120;
    LODWORD(v47) = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Priority Critical Scan Requests: %u", buf, 8u);
    v4 = qword_100BCE918;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 2776);
    *buf = 67109120;
    LODWORD(v47) = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Scan Requests: %u", buf, 8u);
  }

  v10 = sub_10000C798();
  if (((*(*v10 + 664))(v10) & 1) != 0 || (v11 = sub_10000C798(), (*(*v11 + 688))(v11)))
  {
    v12 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: \tMainCoreELNAOnStat:", buf, 2u);
      v12 = qword_100BCE918;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 2780);
      *buf = 67109120;
      LODWORD(v47) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsAfterFiltering: %u", buf, 8u);
      v12 = qword_100BCE918;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 2784);
      *buf = 67109120;
      LODWORD(v47) = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsBeforeFiltering: %u", buf, 8u);
      v12 = qword_100BCE918;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 2788);
      *buf = 67109120;
      LODWORD(v47) = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: \t\ttotalTime: %u msec", buf, 8u);
      v12 = qword_100BCE918;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: \tMainCoreELNABypassStat:", buf, 2u);
      v12 = qword_100BCE918;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 2792);
      *buf = 67109120;
      LODWORD(v47) = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsAfterFiltering: %u", buf, 8u);
      v12 = qword_100BCE918;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 2796);
      *buf = 67109120;
      LODWORD(v47) = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsBeforeFiltering: %u", buf, 8u);
      v12 = qword_100BCE918;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 2800);
      *buf = 67109120;
      LODWORD(v47) = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "statedump: \t\ttotalTime: %u msec", buf, 8u);
    }
  }

  v19 = sub_10000C798();
  v20 = (*(*v19 + 688))(v19);
  v21 = qword_100BCE918;
  if (v20)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \tScanCoreELNAOnStat:", buf, 2u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 2804);
      *buf = 67109120;
      LODWORD(v47) = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsAfterFiltering: %u", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 2808);
      *buf = 67109120;
      LODWORD(v47) = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsBeforeFiltering: %u", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 2812);
      *buf = 67109120;
      LODWORD(v47) = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\ttotalTime: %u msec", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \tScanCoreELNABypassStat:", buf, 2u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 2816);
      *buf = 67109120;
      LODWORD(v47) = v25;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsAfterFiltering: %u", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 2820);
      *buf = 67109120;
      LODWORD(v47) = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsBeforeFiltering: %u", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 2824);
      *buf = 67109120;
      LODWORD(v47) = v27;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\ttotalTime: %u msec", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \tScanCoreCompsensationStat:", buf, 2u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 3216);
      *buf = 67109120;
      LODWORD(v47) = v28;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\tnumAdvsELNAOn: %u", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 3220);
      *buf = 67109120;
      LODWORD(v47) = v29;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\numAdvsELNABypass: %u", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 3224);
      *buf = 67109120;
      LODWORD(v47) = v30;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\totalTimeELNAOn: %u", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 3228);
      *buf = 67109120;
      LODWORD(v47) = v31;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\totalTimeELNABypass: %u", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 3232);
      *buf = 67109120;
      LODWORD(v47) = v32;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\txBlankingTimeByBTMC: %u", buf, 8u);
      v21 = qword_100BCE918;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 3236);
      *buf = 67109120;
      LODWORD(v47) = v33;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\txBlankingTimeByWLAN: %u", buf, 8u);
      v21 = qword_100BCE918;
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \tTotal Scan Time per Type:", buf, 2u);
    v21 = qword_100BCE918;
  }

  v34 = 0;
  v43 = a1 + 2832;
  do
  {
    v35 = 0;
    v36 = 1;
    do
    {
      v37 = 0;
      v44 = v36;
      if (v36)
      {
        v38 = "Passive";
      }

      else
      {
        v38 = "Active ";
      }

      v39 = v43 + 24 * v35;
      do
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *&v40 = COERCE_DOUBLE("Unknown Scan Agent Type");
          if (v37 <= 2)
          {
            v40 = off_100B0D6B0[v37];
          }

          v41 = sub_1007AD6BC(a1, v34);
          v42 = *(v39 + 8 * v37);
          *buf = 136446978;
          v47 = *&v40;
          v48 = 2082;
          v49 = v38;
          v50 = 2080;
          v51 = v41;
          v52 = 2048;
          v53 = v42;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump: \t\t%{public}s %{public}s %-37s: %f sec", buf, 0x2Au);
          v21 = qword_100BCE918;
        }

        ++v37;
      }

      while (v37 != 3);
      v36 = 0;
      v35 = 1;
    }

    while ((v44 & 1) != 0);
    ++v34;
    v43 += 48;
  }

  while (v34 != 7);
}

void sub_1007A5954(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 688))(v2))
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: BLE Connection Scan Stat (ScanCore):", &v12, 2u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v5 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 3264);
      v7 = Current - v6;
      if (Current < v6)
      {
        v7 = 0.0;
      }

      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tLast Stat Start Time: %f sec", &v12, 0xCu);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CFAbsoluteTimeGetCurrent() - *(a1 + 3264);
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tStat Measurement Duration: %f sec", &v12, 0xCu);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 3272);
      v12 = 67109120;
      LODWORD(v13) = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Connections made with MainCore while ScanCore Enabled:%u", &v12, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 3276);
      v12 = 67109120;
      LODWORD(v13) = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tNum Connections made with ScanCore while ScanCore Enabled:%u", &v12, 8u);
      v5 = qword_100BCE918;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 3280);
      v12 = 67109120;
      LODWORD(v13) = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tNum ScanCore Enabled for Connection Scan:%u", &v12, 8u);
    }
  }
}

__n128 sub_1007A5BC0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = *(a1 + 2176);
  result = *(a1 + 2160);
  *a2 = result;
  return result;
}

void sub_1007A5BD4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10087436C();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 16);
  if (qword_100B512F8 != -1)
  {
    sub_100874358();
  }

  v2 = off_100B512F0 + 192;

  sub_10007A3F0(v2, a1);
}

uint64_t sub_1007A5C6C(uint64_t a1, uint64_t a2)
{
  if (a2 >= 3)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v37) = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HW ADV Buffer handle out of range (%d), ignoring agent request", buf, 8u);
    }

    return 7;
  }

  v6 = sub_10000C798();
  if (!(*(*v6 + 744))(v6))
  {
    v11 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v12 = off_100B0D748[a2];
      *buf = 138543362;
      v37 = v12;
      v13 = "HW ADV for %{public}@ not supported on this hardware, ignoring agent request";
      v14 = v11;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    }

    return 11;
  }

  if (a2 == 2)
  {
    v7 = sub_10000C7D0();
    if (((*(*v7 + 2704))(v7) & 1) == 0)
    {
      v20 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = @"EN";
        v13 = "HW ADV Buffers for %{public}@ not supported on this hardware, ignoring agent request";
        v14 = v20;
        goto LABEL_22;
      }

      return 11;
    }
  }

  v8 = a1 + 544 * a2;
  if (*(v8 + 167) == 1)
  {
    v9 = qword_100BCE918;
    if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      return 12;
    }

    v10 = off_100B0D748[a2];
    *buf = 138543362;
    v37 = v10;
    v4 = 12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): already created", buf, 0xCu);
    return v4;
  }

  v35 = 0;
  v34 = 0;
  v15 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v16 = off_100B0D748[a2];
    *buf = 138543362;
    v37 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): sending advBufConfig", buf, 0xCu);
  }

  v17 = sub_10000C7D0();
  v4 = (*(*v17 + 3344))(v17, a2, *(v8 + 160), &v34, *(v8 + 161), *(v8 + 162), *(v8 + 164), *(v8 + 165), *(v8 + 166));
  v18 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v19 = off_100B0D748[a2];
    *buf = 138543618;
    v37 = v19;
    v38 = 1024;
    v39 = v4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): ADVBufConfig returned %d", buf, 0x12u);
  }

  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008759EC();
    }

    return v4;
  }

  v22 = *sub_10000C7D0();
  if (a2 != 2)
  {
    v24 = (*(v22 + 2696))();
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v4 = 0;
      v27 = a1 + 544 * a2 + 228;
      do
      {
        if (*(v27 - 34))
        {
          v28 = sub_10000C7D0();
          BYTE2(v33) = *(v27 - 28);
          LOWORD(v33) = *(v27 - 30);
          v4 = (*(*v28 + 3352))(v28, a2, *(v27 - 36), &v34, *(v27 - 35), *(v27 - 34), *(v27 - 32), *(v27 - 31), v33, v27 - 27, v27);
          if (v4)
          {
            v29 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              v30 = off_100B0D748[a2];
              *buf = 138543618;
              v37 = v30;
              v38 = 1024;
              v39 = v4;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "ADVBUFF(%{public}@): Failed to configure ext buffer adv rule: %d", buf, 0x12u);
            }
          }

          else
          {
            --v25;
          }
        }

        if (v26 > 6)
        {
          break;
        }

        ++v26;
        v27 += 64;
      }

      while (v25);
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_48;
  }

  v4 = (*(v22 + 3416))();
  v23 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v37 = @"EN";
    v38 = 1024;
    v39 = v4;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): advBufRSSIBinsThreshold returned %d", buf, 0x12u);
  }

  if (!v4)
  {
    v31 = sub_10000C7D0();
    v4 = (*(*v31 + 3424))(v31, a2, 0);
    v32 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v37 = @"EN";
      v38 = 1024;
      v39 = v4;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "ADVBUFF(%{public}@): advBufConfigTimeSlice returned %d", buf, 0x12u);
    }

    if (v4)
    {
      goto LABEL_45;
    }

LABEL_48:
    *(v8 + 167) = 1;
    *(v8 + 170) = 0;
    return v4;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875A74();
  }

LABEL_45:
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875A74();
  }

  return v4;
}

void sub_1007A6318(uint64_t a1)
{
  if (!*(a1 + 2288))
  {
    *(a1 + 2320) = 0;
    if (qword_100B54770 != -1)
    {
      sub_100875AF4();
    }

    v2 = sub_1005128BC(off_100B54768);
    v3 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fContactTracingScanDurationTimer Timer %llu ms Armed!", buf, 0xCu);
    }

    sub_1007A92F4(a1);
    sub_1007A9610(a1);
    if (qword_100B54770 != -1)
    {
      sub_1008743D0();
    }

    sub_100511F18();
    v4 = sub_100007EE8();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1007A9B80;
    v10[3] = &unk_100AE0860;
    v10[4] = a1;
    v10[5] = v2;
    sub_10000CA94(v4, v10);
    v5 = sub_100007EE8();
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 8));
    *(a1 + 2288) = v6;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A9C1C;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    v7 = *(a1 + 2288);
    v8 = dispatch_time(0x8000000000000000, 1000000 * v2);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 2288));
  }
}

uint64_t *sub_1007A658C(uint64_t *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_1000C7698();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    v16[4] = result;
    if (v12)
    {
      sub_1007B2808(result, v12);
    }

    v13 = 40 * v9;
    v16[0] = 0;
    v16[1] = v13;
    v16[3] = 0;
    v14 = *a2;
    *(v13 + 12) = *(a2 + 12);
    *v13 = v14;
    v15 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v13 + 32) = v15;
    v16[2] = 40 * v9 + 40;
    sub_1007B273C(result, v16);
    v8 = v3[1];
    result = sub_1007B2860(v16);
  }

  else
  {
    v6 = *a2;
    *(v4 + 12) = *(a2 + 12);
    *v4 = v6;
    v7 = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v4 + 32) = v7;
    v8 = v4 + 40;
  }

  v3[1] = v8;
  return result;
}

void sub_1007A66B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007B2860(va);
  _Unwind_Resume(a1);
}

void sub_1007A66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_100007EE8();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007AD498;
  v13[3] = &unk_100B0BA60;
  v14 = a6;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  sub_10000CA94(v12, v13);
}

uint64_t sub_1007A6788(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000C7D0();
  if ((*(*v7 + 728))(v7, a2, a3, a4) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875C7C();
  }

  return 0;
}

uint64_t sub_1007A682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C7D0();
  if ((*(*v9 + 736))(v9, a2, a3, a4, a5) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875CE4();
  }

  return 0;
}

uint64_t sub_1007A68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned __int8 a9, uint64_t a10, __int16 a11, char a12, char a13, char a14)
{
  v20 = sub_10000C798();
  if (!(*(*v20 + 632))(v20) || (v21 = sub_10000C7D0(), BYTE4(v23) = a14, BYTE3(v23) = a13, BYTE2(v23) = a12, LOWORD(v23) = a11, (*(*v21 + 672))(v21, a3, a4, a5, a6, a7, a8, a9, a10, v23)))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875D4C();
    }
  }

  return 0;
}

uint64_t sub_1007A6A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, __int16 a11, char a12)
{
  v18 = sub_10000C798();
  if (!(*(*v18 + 632))(v18) || (v19 = sub_10000C7D0(), BYTE2(v21) = a12, LOWORD(v21) = a11, (*(*v19 + 688))(v19, a3, a4, a5, a6, a7, a8, a9, a10, v21)))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875DB4();
    }
  }

  return 0;
}

uint64_t sub_1007A6B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C798();
  if ((*(*v4 + 632))(v4))
  {
    v5 = sub_10000C7D0();
    v6 = (*(*v5 + 720))(v5, a3);
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = 11;
  }

  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    sub_100875E1C();
  }

  return v6;
}

uint64_t sub_1007A6C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C798();
  if (!(*(*v5 + 632))(v5) || (v6 = sub_10000C7D0(), (*(*v6 + 696))(v6, a2, a3)))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875E84();
    }
  }

  return 0;
}

uint64_t sub_1007A6D0C(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007A6DD0;
  v5[3] = &unk_100AE25F0;
  v5[4] = &v6;
  v5[5] = a1;
  sub_10000D334(v2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1007A6DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A6DEC(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 2072);
  if (v2)
  {
    v3 = a1 + 2072;
    do
    {
      v4 = *(v2 + 32);
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 != a1 + 2072 && *(v3 + 32) <= a2 && *(*(v3 + 40) + 8))
    {
      operator new();
    }
  }

  return 0;
}

void sub_1007A6EB0(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_10000C5E0(*(a2 + 8) + 48) >= 0x19)
  {
    v6 = sub_10000C5F8(*(a2 + 8) + 48);
    v7 = *v6 == 76 && *(v6 + 2) == 2;
    if (v7)
    {
      v8 = v6;
      if (*(v6 + 3) >= 0x15u)
      {
        v9 = sub_10000C7D0();
        if ((*(*v9 + 4112))(v9) <= a3)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v10 = *(a1 + 2024);
          if (v10 != (a1 + 2032))
          {
            v11 = (v8 + 4);
            do
            {
              v12 = sub_10000C5F8((v10 + 4));
              v13 = sub_10000C5E0((v10 + 4));
              v14 = sub_10000C5F8((v10 + 6));
              v15 = sub_10000C5E0((v10 + 6));
              if (v13 >= v15)
              {
                v16 = v15;
              }

              else
              {
                v16 = v13;
              }

              if (v16)
              {
                v17 = v11;
                while (1)
                {
                  v19 = *v17++;
                  v18 = v19;
                  v20 = *v14++;
                  v21 = v20 & v18;
                  v22 = *v12++;
                  if (v21 != v22)
                  {
                    break;
                  }

                  if (!--v16)
                  {
                    goto LABEL_18;
                  }
                }
              }

              else
              {
LABEL_18:
                sub_1007A7C70(&v27, (v10 + 4));
              }

              v23 = v10[1];
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
                  v24 = v10[2];
                  v7 = *v24 == v10;
                  v10 = v24;
                }

                while (!v7);
              }

              v10 = v24;
            }

            while (v24 != (a1 + 2032));
            v25 = v27;
            v26 = v28;
            if (v28 != v27)
            {
              do
              {
                sub_1007B3278((a1 + 2024), v25);
                v25 += 32;
              }

              while (v25 != v26);
              sub_1007A7980(a1);
            }
          }

          v30 = &v27;
          sub_1007B2EF4(&v30);
        }
      }
    }
  }
}

void sub_1007A706C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1007B2EF4(&a12);
  _Unwind_Resume(a1);
}

void *sub_1007A7118(void *a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  a1[7] = &off_100AE0AB8;
  a1[8] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  sub_10000CB74(a1 + 9, (a2 + 72));
  return sub_10004EE18(a1 + 12, a2 + 96);
}

void sub_1007A718C(_Unwind_Exception *exception_object)
{
  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v1[7] = v2;
  v5 = v1[8];
  if (v5)
  {
    sub_10000C808(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A71C0(uint64_t a1)
{
  sub_10000CEDC(a1 + 96, *(a1 + 104));
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  *(a1 + 56) = &off_100AE0AB8;
  v3 = *(a1 + 64);
  if (v3)
  {

    sub_10000C808(v3);
  }
}

id sub_1007A7284(uint64_t a1)
{
  if (*(a1 + 88) == *(a1 + 96) || !*(a1 + 184))
  {
    v1 = *(a1 + 176);
  }

  else
  {
    v1 = [NSSet setWithObject:?];
  }

  return v1;
}

id sub_1007A730C(uint64_t a1, uint64_t a2)
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = sub_10000C5E0(a2);
  v5 = sub_10000C5F8(a2);
  v6 = v5;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      LODWORD(v7) = 2;
      v8 = 3;
      do
      {
        v9 = *(v6 + v8);
        v10 = [NSString stringWithUTF8String:sub_10079D8BC(*(v6 + v7))];
        [v3 appendFormat:@"%@, ", v10];

        v7 = v7 + 2 + v9;
        v8 = v7 + 1;
      }

      while (v4 > v7 + 1);
    }
  }

  else if (*v5 != 76)
  {
    [v3 appendFormat:@"Others, "];
  }

  return v3;
}

uint64_t sub_1007A7444(uint64_t a1, int a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 1984);
    if (v5 > 4)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = off_100B0D700[v5];
    }

    v7 = *(a1 + 1988);
    if (v7 > 3)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = off_100B0D728[v7];
    }

    if (a2 > 3)
    {
      v9 = "UNKNOWN";
    }

    else
    {
      v9 = off_100B0D728[a2];
    }

    v12 = 136447234;
    v13 = v6;
    v14 = 2082;
    v15 = v8;
    v16 = 1024;
    v17 = v7;
    v18 = 2082;
    v19 = v9;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "scan state:%{public}s, changing ObserverState %{public}s(%d) --> %{public}s(%d)", &v12, 0x2Cu);
  }

  *(a1 + 1988) = a2;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return sub_100017DE0(a1, 0);
      }

      goto LABEL_19;
    }

    sub_1005B0DAC(a1 + 56);
    v10 = &stru_100B0D2E8;
LABEL_21:
    sub_10000D058(a1 + 1896, v10);
    return sub_100017DE0(a1, 0);
  }

  if (a2 == 3)
  {
LABEL_19:
    sub_1005B0E88(a1 + 56);
    return sub_100017DE0(a1, 0);
  }

  if (a2 == 2)
  {
    v10 = &stru_100B0D2C8;
    goto LABEL_21;
  }

  return sub_100017DE0(a1, 0);
}

void sub_1007A75E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C5E0(a2) <= 0x15 && (v6 = sub_10000C5E0(a2), v6 <= sub_10000C5E0(a3)))
  {
    v8 = dispatch_time(0x8000000000000000, 0);
    v9 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      sub_10000C250(a2, buf);
      v10 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *v16 = 136446466;
      *&v16[4] = v10;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received zone lost event for zone %{public}s at %lld", v16, 0x16u);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    v11 = *(a1 + 2048);
    if (v8 <= v11)
    {
      memset(buf, 0, sizeof(buf));
      sub_1007B1E34(buf, a2, a3);
      if ((a1 + 2032) == sub_1007B2B14(a1 + 2024, buf))
      {
        v13 = dispatch_time(0x8000000000000000, 30000000000);
        *v16 = buf;
        *(sub_1007B2BF0(a1 + 2024, buf) + 64) = v13;
        sub_1007A7980(a1);
      }

      *&buf[16] = &off_100AE0A78;
      if (*&buf[24])
      {
        sub_10000C808(*&buf[24]);
      }

      *buf = &off_100AE0A78;
      if (*&buf[8])
      {
        sub_10000C808(*&buf[8]);
      }
    }

    else
    {
      v12 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We are beyond the zone lost timeout (%lld).  Sending directly to clients.  Now %lld", buf, 0x16u);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1007A7950;
      v14[3] = &unk_100B0D078;
      v14[4] = a2;
      v14[5] = a3;
      sub_10000D058(a1 + 1896, v14);
      if (*(sub_10000C7D0() + 800) == 1)
      {
        sub_100017DE0(a1, 1);
      }
    }
  }

  else
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *&buf[4] = sub_10000C5E0(a2);
      *&buf[12] = 2048;
      *&buf[14] = sub_10000C5E0(a3);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Zone Lost event has invalid sizes.  zoneLength:%zu maskLength:%zu", buf, 0x16u);
    }
  }
}

void sub_1007A7930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1007B1ED8(va);
  _Unwind_Resume(a1);
}

void sub_1007A7980(uint64_t a1)
{
  v2 = *(a1 + 2040);
  v3 = *(a1 + 2056);
  if (v2)
  {
    if (v3)
    {
      dispatch_suspend(v3);
    }

    else
    {
      v4 = sub_100007EE8();
      v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v4 + 8));
      *(a1 + 2056) = v5;
      dispatch_source_set_event_handler(v5, &stru_100B0D098);
    }

    v6 = *(a1 + 2024);
    v7 = -1;
    if (v6 != (a1 + 2032))
    {
      do
      {
        if (v7 >= v6[8])
        {
          v7 = v6[8];
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

      while (v9 != (a1 + 2032));
    }

    dispatch_source_set_timer(*(a1 + 2056), v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v11 = *(a1 + 2056);

    dispatch_resume(v11);
  }

  else if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(a1 + 2056));
    *(a1 + 2056) = 0;
  }
}

void sub_1007A7A84(id a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;

  sub_1007A7AC8(v2);
}

void sub_1007A7AC8(uint64_t a1)
{
  v2 = dispatch_time(0x8000000000000000, 0);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v3 = *(a1 + 2024);
  if (v3 != (a1 + 2032))
  {
    v4 = v2;
    do
    {
      if (v3[8] <= v4)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1007A7C3C;
        v10[3] = &unk_100B0D0B8;
        v10[4] = v3 + 4;
        sub_10000D058(a1 + 1896, v10);
        sub_1007A7C70(&v11, (v3 + 4));
      }

      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (a1 + 2032));
    v8 = v11;
    v9 = v12;
    while (v8 != v9)
    {
      sub_1007B3278((a1 + 2024), v8);
      v8 += 32;
    }
  }

  sub_1007A7980(a1);
  v14 = &v11;
  sub_1007B2EF4(&v14);
}

void sub_1007A7C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a15;
  sub_1007B2EF4(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A7C70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1007B2F7C(a1, a2);
  }

  else
  {
    sub_1007B2DF4(*(a1 + 8), a2);
    result = v3 + 32;
    *(a1 + 8) = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1007A7CC4(int a1, const void *a2, size_t __n, uint64_t a4)
{
  result = 161;
  if (a2)
  {
    v6 = __n;
    if (__n)
    {
      result = 161;
      if (a1 == 18)
      {
        if (a4)
        {
          if (__n < 0x1E)
          {
            v8 = a4 + 5072 + 56 * *(a4 + 5632);
            *(v8 + 16) = 0;
            *v8 = xmmword_1008A4F0C;
            v9 = (a4 + 5072 + 56 * *(a4 + 5632));
            v9[20] = 1;
            v9[21] = __n < 4;
            memcpy(v9 + 22, a2, __n);
            result = 0;
            v10 = *(a4 + 5632);
            *(a4 + 5072 + 56 * v10 + 52) = v6 + 2;
            *(a4 + 5632) = v10 + 1;
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              sub_10087663C();
            }

            return 162;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1007A7DCC(int a1, uint64_t a2, unint64_t a3, BOOL *a4)
{
  result = 161;
  if (a2 && a3 && a1 == 18)
  {
    if (a4)
    {
      result = 0;
      *a4 = a3 < 3;
    }
  }

  return result;
}

uint64_t sub_1007A7E08(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 57);
  v6 = *(a1 + 58);

  return sub_100046E40(v2, v3, v4, a1 + 40, v5, v6);
}

void sub_1007A7E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v14 = &off_100AE0A78;
  v15 = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a3 + 8);
  v12 = &off_100AE0A78;
  v13 = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1007A8068;
  v7[3] = &unk_100B0D128;
  v8 = &off_100AE0A78;
  v9 = v15;
  if (v15)
  {
    sub_10000C69C(v15);
  }

  v10 = &off_100AE0A78;
  v11 = v13;
  if (v13)
  {
    sub_10000C69C(v13);
  }

  sub_10000CA94(v6, v7);
  v10 = &off_100AE0A78;
  if (v11)
  {
    sub_10000C808(v11);
  }

  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  v12 = &off_100AE0A78;
  if (v13)
  {
    sub_10000C808(v13);
  }

  v14 = &off_100AE0A78;
  if (v15)
  {
    sub_10000C808(v15);
  }
}

void sub_1007A8004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18)
{
  if (a14)
  {
    sub_10000C808(a14);
  }

  if (a18)
  {
    sub_10000C808(a18);
  }

  *(v19 - 64) = v18;
  v21 = *(v19 - 56);
  if (v21)
  {
    sub_10000C808(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A8068(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;

  sub_1007A75E4(v2, a1 + 32, a1 + 48);
}

void sub_1007A80C0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = &off_100AE0A78;
  a1[5] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a2 + 56);
  a1[6] = &off_100AE0A78;
  a1[7] = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }
}

void sub_1007A8148(_Unwind_Exception *exception_object)
{
  *(v1 + 32) = v2;
  v4 = *(v1 + 40);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A8164(void *a1)
{
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  a1[4] = &off_100AE0A78;
  v3 = a1[5];
  if (v3)
  {

    sub_10000C808(v3);
  }
}

void sub_1007A81F8()
{
  v0 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Stream state changed, re-evaluating scan params", v2, 2u);
  }

  v1 = sub_100007EE8();
  sub_10000CA94(v1, &stru_100B0D158);
}

void sub_1007A8270(id a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;

  sub_100017DE0(v2, 0);
}

void sub_1007A82C4(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "scanRxConfigured", buf, 2u);
  }

  v3 = sub_100007EE8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007A8384;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_1007A8398()
{
  v0 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "BT ACL protect mode changed, re-evaluating scan params", v2, 2u);
  }

  v1 = sub_100007EE8();
  sub_10000CA94(v1, &stru_100B0D178);
}

void sub_1007A8410(id a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;

  sub_100017DE0(v2, 0);
}

void sub_1007A8460(uint64_t a1, int a2)
{
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SDP Progress Changed inProgress=%d", buf, 8u);
  }

  v5 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007A8568;
  v6[3] = &unk_100AE15D8;
  v6[4] = a1;
  v7 = a2;
  sub_10000CA94(v5, v6);
}

uint64_t sub_1007A8568(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 4424) = *(a1 + 40);
  return sub_100017DE0(v1, 0);
}

void sub_1007A858C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  if (qword_100B508D0 != -1)
  {
    sub_1008743BC();
  }

  *(&v10 + 1) = a3;
  *&v10 = bswap64(a2);
  *uu = 0;
  v20 = 0;
  sub_1000498D4(off_100B508C8, v10 >> 16, 0, 1u, 0, 0, uu);
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008766CC();
    }
  }

  else
  {
    v11 = sub_10004DF60(uu);
    v12 = sub_100007EE8();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007A8734;
    v14[3] = &unk_100AF9820;
    v16 = a1;
    v13 = v11;
    v15 = v13;
    v17 = a4;
    v18 = a5;
    sub_10000CA94(v12, v14);
  }
}

void sub_1007A8734(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007A87DC;
  v3[3] = &unk_100B0D1A0;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_10000D058(v2 + 1896, v3);
}

uint64_t sub_1007A8820(uint64_t a1, unsigned __int16 *a2)
{
  v22 = 0;
  v4 = sub_1000C7D9C(a1, 18, 20, &v22);
  v5 = v22;
  *a2 = v22;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100875B08();
    }
  }

  else
  {
    v21 = v5;
    *buf = &v21;
    v7 = sub_1000BED44(a1 + 1832, &v21);
    v8 = *(v7 + 29);
    v9 = *(v7 + 15);
    v10 = *(v7 + 17);
    v11 = *(v7 + 19);
    v12 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v5;
      v24 = 1024;
      v25 = 18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating a match table with handle %d for type %d", buf, 0xEu);
    }

    v13 = sub_10000C7D0();
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v6 = (*(*v13 + 3384))(v13, v5, 23, 255, 76, 18, 0, 20, v17, 0, v19, 0, 0, v20);
    if (!v6)
    {
      v21 = v9;
      *buf = &v21;
      v14 = sub_1000BED44(a1 + 1832, &v21);
      *(v14 + 28) = 18;
      *(v14 + 29) = v8;
      *(v14 + 15) = v9;
      *(v14 + 16) = 1;
      *(v14 + 17) = v10;
      *(v14 + 18) = 20;
      *(v14 + 19) = v11;
      *a2 = v5;
      v15 = *sub_10000C7D0();
      v6 = (*(v15 + 3440))();
      if (v6)
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_1008767B4();
        }
      }
    }
  }

  return v6;
}

void sub_1007A8AC8(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v5, "MatchTable");
  sub_100007E30(__p, "ADPDBufferDupNumEntries");
  (*(*v1 + 128))(v1, v5, __p, &dword_100B54F8C);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  v2 = sub_10000E92C();
  sub_100007E30(v5, "MatchTable");
  sub_100007E30(__p, "ADPDBufferDupClearTimeoutSeconds");
  (*(*v2 + 128))(v2, v5, __p, &dword_100B54F90);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1007A8BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1007A8C28(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v5, "MatchTable");
  sub_100007E30(__p, "NearbyInfoBufferDupNumEntries");
  (*(*v1 + 128))(v1, v5, __p, &dword_100B54F94);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  v2 = sub_10000E92C();
  sub_100007E30(v5, "MatchTable");
  sub_100007E30(__p, "NearbyInfoBufferDupClearTimeoutSeconds");
  (*(*v2 + 128))(v2, v5, __p, &dword_100B54F98);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1007A8D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1007A8D88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 144);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fAOPBTBufferPeriodicDrainTimer Timer expired! screenState:%d", v4, 8u);
  }

  dispatch_source_cancel(*(v1 + 1824));
  dispatch_release(*(v1 + 1824));
  *(v1 + 1824) = 0;
  sub_1007A3E3C(v1);
}

void sub_1007A8E4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 144);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fADVBufferPeriodicDrainTimer Timer expired! screenState:%d", v4, 8u);
  }

  dispatch_source_cancel(*(v1 + 1800));
  dispatch_release(*(v1 + 1800));
  *(v1 + 1800) = 0;
  if ((*(v1 + 144) & 1) == 0)
  {
    sub_1000677F8(v1, 3);
  }
}

uint64_t sub_1007A8F1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v2 + 144);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fADVBufferWatchdogTimer Timer expired! screenState:%d", v6, 8u);
  }

  dispatch_source_cancel(*(v2 + 1808));
  dispatch_release(*(v2 + 1808));
  *(v2 + 1808) = 0;
  *(v2 + 160 + 544 * *(a1 + 40) + 12) = -1;
  *(v2 + 160 + 544 * *(a1 + 40) + 11) = 0;
  result = sub_100067D48(v2);
  if ((*(v2 + 144) & 1) == 0)
  {
    return sub_10007AB18(v2);
  }

  return result;
}

void sub_1007A9020(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "ADVBUFF");
  sub_100007E30(__p, "TestRemoevAndClearOnBufferDestroy");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7D40);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_1007A90C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_1007A90F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007A9110(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"uuid"];
  v9 = [v7 objectForKeyedSubscript:@"uuid"];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
    v11 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = *(*(*(a1 + 40) + 8) + 40);
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "addUniqueUUIDRulesToDictionary found existing rule [%@] with same uuid as new rule [%@]", &v14, 0x16u);
    }
  }
}

uint64_t sub_1007A9290(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    result = *(*(v1[5] + 8) + 3);
    if (result)
    {
      break;
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

uint64_t sub_1007A92F4(uint64_t result)
{
  if (!*(result + 2376))
  {
    sub_100088DD4();
  }

  return result;
}

void sub_1007A93E8(uint64_t a1)
{
  v1 = *(a1 + 2376);
  if (v1)
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v1 + 16))(v1), v5 = 136446210, v6 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v5, 0xCu), (v1 = *(a1 + 2376)) != 0))
    {
      (*(*v1 + 8))(v1);
    }

    *(a1 + 2376) = 0;
  }
}

void sub_1007A94F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100432718();
  (*(*v2 + 64))(v2, *(v1 + 2328), *(v1 + 2336), *(v1 + 2344), *(v1 + 2352), *(v1 + 2360));
  v3 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 2328);
    v5 = *(v1 + 2336);
    v6 = *(v1 + 2344);
    v7 = *(v1 + 2352);
    v8 = *(v1 + 2360);
    v9 = 134219008;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reportExposureNotificationStats numOfScans:%llu duration:%llu numOfENReports:%llu numOfOtherReports:%llu lastENScanTS:%f", &v9, 0x34u);
  }
}

void sub_1007A9610(uint64_t a1)
{
  if (*(a1 + 2376))
  {
    if (qword_100B54770 != -1)
    {
      sub_100875AF4();
    }

    v2 = sub_100512AD8(off_100B54768);
    v3 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12[0] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "armContactTracingScanWithDuplicatesDurationTimer Timer %llu ms Armed!", buf, 0xCu);
    }

    v4 = sub_100007EE8();
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v4 + 8));
    *(a1 + 2296) = v5;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A9800;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v5, handler);
    v6 = *(a1 + 2296);
    v7 = dispatch_time(0x8000000000000000, 1000000 * v2);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 2296));
    ++*(a1 + 2320);
  }

  else
  {
    v8 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 2320);
      *buf = 67109376;
      LODWORD(v12[0]) = v9;
      WORD2(v12[0]) = 1024;
      *(v12 + 6) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fContactTracingScanDupClearDeltaTimer fContactTracingScanDupfilterClearCounter=%d isPowerAssertForContactTracingScanCreated=%d", buf, 0xEu);
    }
  }
}

uint64_t sub_1007A9800(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fContactTracingScanWithDuplicatesDurationTimer Timer expired!", v4, 2u);
  }

  dispatch_source_cancel(*(v1 + 2296));
  dispatch_release(*(v1 + 2296));
  *(v1 + 2296) = 0;
  *(v1 + 2384) = 0;
  sub_1007A98A4(v1);
  sub_1007A9A0C(v1, 0);
  return sub_100017DE0(v1, 1);
}

void sub_1007A98A4(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 != (a1 + 2072))
  {
    do
    {
      v3 = v1[5];
      if (*(*(v3 + 8) + 172) == 1)
      {
        v4 = qword_100BCEA38;
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v1[4], __p);
          v5 = v12 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v14 = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing scan agent sw dup filter map for session %{public}s", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v7 = *(v3 + 112);
        v6 = (v3 + 112);
        sub_10002708C((v6 - 1), v7);
        *v6 = 0;
        v6[1] = 0;
        *(v6 - 1) = v6;
      }

      v8 = v1[1];
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
          v9 = v1[2];
          v10 = *v9 == v1;
          v1 = v9;
        }

        while (!v10);
      }

      v1 = v9;
    }

    while (v9 != v2);
  }
}

void sub_1007A9A0C(uint64_t a1, int a2)
{
  v2 = *(a1 + 2064);
  v3 = (a1 + 2072);
  if (v2 != (a1 + 2072))
  {
    do
    {
      v5 = v2[5];
      v6 = *(v5 + 8);
      if (v6[172] == 1)
      {
        v7 = qword_100BCEA38;
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v2[4], __p);
          v8 = __p;
          if (v13 < 0)
          {
            v8 = __p[0];
          }

          *buf = 136446466;
          v15 = v8;
          v16 = 1024;
          v17 = a2;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting scan agent for session:%{public}s allowdups:%d", buf, 0x12u);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }

          v6 = *(v5 + 8);
        }

        *v6 = a2;
      }

      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

double sub_1007A9B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  ++*(v2 + 2328);
  if (qword_100B54770 != -1)
  {
    sub_100875AF4();
  }

  result = *(v2 + 2336) + (*(a1 + 40) / 0x3E8uLL) * (48.0 / sub_100512BEC(off_100B54768));
  *(v2 + 2336) = result;
  return result;
}

void sub_1007A9C1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fContactTracingScanDurationTimer Timer expired!", v4, 2u);
  }

  dispatch_source_cancel(*(v1 + 2288));
  dispatch_release(*(v1 + 2288));
  *(v1 + 2288) = 0;
  *(v1 + 1856) = 1;
  *(v1 + 2384) = 1;
  sub_100017DE0(v1, 1);
  if (qword_100B54770 != -1)
  {
    sub_1008743D0();
  }

  sub_100511FD0(off_100B54768);
  sub_1007A17DC(v1);
  sub_1007A1D58(v1);
  Current = CFAbsoluteTimeGetCurrent();
  *(v1 + 2360) = Current;
  *(v1 + 2312) = Current;
  sub_1007A93E8(v1);
}

void sub_1007A9CFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEA38;
  if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fContactTracingScanDeltaTimer Timer expired!", &v15, 2u);
  }

  v3 = *(v1 + 2304);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v1 + 2304));
    *(v1 + 2304) = 0;
  }

  *(v1 + 1856) = 1;
  if ((*(v1 + 1255) & 1) == 0)
  {
    sub_1007A6318(v1);
    sub_1007A9A0C(v1, 1);
    sub_1007A98A4(v1);
    sub_100017DE0(v1, 1);
    return;
  }

  if (*(v1 + 2368) != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *(v1 + 2336) = (Current - *(v1 + 2368) + *(v1 + 2336));
    *(v1 + 2368) = Current;
  }

  if (sub_1000365D8(v1) && *(v1 + 1255) == 1)
  {
    v5 = qword_100BCEA38;
    if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = @"EN";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%{public}@): Pausing ADV Buffers", &v15, 0xCu);
    }

    if (*(v1 + 1260) != 255)
    {
      v6 = qword_100BCEA38;
      if (!os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v15 = 138543362;
      v16 = @"EN";
      v7 = "Already reading ADVBUFF(%{public}@):";
      goto LABEL_19;
    }

    v8 = sub_1007A1858(v1, 2, 0);
    v6 = qword_100BCEA38;
    v9 = os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (v9)
      {
        v10 = *(v1 + 1260);
        v15 = 138543618;
        v16 = @"EN";
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%{public}@): Trying to read, current expectedEntries=%d", &v15, 0x12u);
      }

      v11 = sub_1007A3920(v1, 2u);
      v12 = qword_100BCEA38;
      if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v1 + 1260);
        v15 = 138543874;
        v16 = @"EN";
        v17 = 1024;
        v18 = v11;
        v19 = 1024;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ADVBUFF(%{public}@): ReadADVBuffer returned %d, expectedEntries:%d", &v15, 0x18u);
      }

      if (v11)
      {
        v14 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
        {
          sub_1008770AC(v14);
        }
      }

      if (*(v1 + 1260) == 255)
      {
        sub_1007A1858(v1, 2, 1);
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEBUG))
        {
          sub_100877130();
        }

        sub_1007A1D58(v1);
      }

      goto LABEL_20;
    }

    if (v9)
    {
      v15 = 138543362;
      v16 = @"EN";
      v7 = "ADVBUFF(%{public}@): could not disable ADV buffering";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v15, 0xCu);
    }
  }

LABEL_20:
  if (*(v1 + 1260) == 255)
  {
    sub_1007A17DC(v1);
  }
}

uint64_t sub_1007AA094(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned __int8 *a5)
{
  v9 = sub_10000C798();
  result = (*(*v9 + 936))(v9);
  switch(a3)
  {
    case 5:
      if (result == 3)
      {
        v16 = *(a5 + 1);
        if (a5[1] == 1)
        {
          if (*(a2 + 2) < v16)
          {
            *(a2 + 2) = v16;
            goto LABEL_16;
          }
        }

        else if (*(a2 + 4) < v16)
        {
          *(a2 + 4) = v16;
          *(a2 + 2) = 0;
        }
      }

      break;
    case 3:
      if (!(*(a2 + 4) | *(a2 + 2)))
      {
        v15 = 1374389535 * (*(a4 + 4) - *(a4 + 6)) * *a5;
        *(a2 + 4) = (v15 >> 37) + (v15 >> 63);
      }

      if (result != 3)
      {
        goto LABEL_16;
      }

      break;
    case 2:
      v11 = *(a2 + 4);
      if (!*(a2 + 4) && !*(a2 + 2))
      {
        v12 = 1374389535 * (*(a4 + 4) - *(a4 + 6)) * *a5;
        v13 = (v12 >> 37) + (v12 >> 63);
        v11 = v13;
        *(a2 + 4) = v13;
      }

      if (result != 2 || v11 < 0x11)
      {
        if (result > 1)
        {
          return result;
        }

LABEL_16:
        *(a2 + 4) = 0;
        return result;
      }

      *(a2 + 4) = ((20976 * *a5) >> 16) >> 1;
      break;
  }

  return result;
}

uint64_t sub_1007AA218(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 8))
  {
    return 0;
  }

  if (sub_100028FA8(a2) == 22)
  {
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_100028FA8(a2);
      *buf = 136315138;
      v21 = sub_10002F16C(v4);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ScanCore offloading is allowed while throttling due to SDP for %s", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v6 = sub_100032B14(a2);
    v7 = v6;
    if (v6 && [v6 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = v7;
      v5 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v8);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            if ([v11 longLongValue] == 22)
            {
              v12 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v13 = sub_10002F16C([v11 longLongValue]);
                *buf = 136315138;
                v21 = v13;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ScanCore offloading is allowed while throttling due to SDP for %s", buf, 0xCu);
              }

              v5 = 1;
              goto LABEL_23;
            }
          }

          v5 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t sub_1007AA468(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_10000C798();
  v231 = (*(*v3 + 656))(v3);
  v4 = *sub_10000C798();
  v230 = (*(v4 + 688))();
  v5 = *sub_10000C798();
  v232 = (*(v5 + 872))();
  v6 = *sub_10000C7D0();
  v226 = (*(v6 + 3184))();
  *a2 = 1;
  a2[2] = 0;
  *(a2 + 4) = 0;
  a2[16] = 1;
  v246 = a2;
  *(a2 + 12) = 0;
  v245 = +[NSMutableArray array];
  v243 = +[NSMutableDictionary dictionary];
  v7 = *(a1 + 2064);
  v8 = &xpc_dictionary_set_uint64_ptr;
  if (v7 != (a1 + 2072))
  {
    v238 = 0;
    v240 = 0;
    v9 = 0;
    v227 = 0;
    v228 = 0;
    v233 = 0;
    v229 = 0;
    v242 = 0;
    v236 = 1;
    v237 = 0;
    v10 = 3;
    v11 = 30;
    v234 = 300;
    while (1)
    {
      v12 = *(*(v7[5] + 8) + 192);
      memset(v265, 0, 104);
      memset(v264, 0, sizeof(v264));
      sub_10000CBF0(v264, (*(v7[5] + 8) + 320));
      v247 = v10;
      v249 = v11;
      v251 = +[NSMutableDictionary dictionary];
      v13 = [NSNumber numberWithBool:*(*(v7[5] + 8) + 3)];
      [v251 setObject:v13 forKeyedSubscript:@"isAllowedInPaused"];

      v14 = [NSNumber numberWithBool:sub_10003C8E8(v7[5])];
      [v251 setObject:v14 forKeyedSubscript:@"allowDupes"];

      v15 = [NSNumber numberWithUnsignedInt:0];
      [v251 setObject:v15 forKeyedSubscript:@"window"];

      v16 = [NSNumber numberWithUnsignedInt:0];
      [v251 setObject:v16 forKeyedSubscript:@"interval"];

      v17 = [NSNumber numberWithBool:0];
      [v251 setObject:v17 forKeyedSubscript:@"active"];

      v18 = [NSNumber numberWithBool:sub_10003A26C(v7[5])];
      [v251 setObject:v18 forKeyedSubscript:@"requiresActiveScan"];

      v19 = [NSNumber numberWithBool:*(v7[5] + 81) == 32];
      [v251 setObject:v19 forKeyedSubscript:@"daemon"];

      v20 = [NSNumber numberWithBool:*(v7[5] + 81) == 16];
      [v251 setObject:v20 forKeyedSubscript:@"ForegroundApp"];

      v21 = [NSNumber numberWithBool:sub_100028FB4(v7[5])];
      [v251 setObject:v21 forKeyedSubscript:@"isAnyHWObjectDiscoveryEnabled"];

      [v251 setObject:&off_100B33D08 forKeyedSubscript:@"HWADVBufferWindowMs"];
      [v251 setObject:&off_100B33D08 forKeyedSubscript:@"HWADVBufferIntervalMs"];
      v22 = [NSNumber numberWithBool:sub_10003BC78(v7[5])];
      [v251 setObject:v22 forKeyedSubscript:@"isRangeScan"];

      v23 = [NSNumber numberWithBool:sub_10003BC84(v7[5])];
      [v251 setObject:v23 forKeyedSubscript:@"isPriorityCritical"];

      v24 = [NSNumber numberWithBool:*(*(v7[5] + 8) + 171)];
      [v251 setObject:v24 forKeyedSubscript:@"holdPowerAssert"];

      v25 = [NSNumber numberWithBool:*(*(v7[5] + 8) + 172)];
      [v251 setObject:v25 forKeyedSubscript:@"isContactTracing"];

      v26 = [NSNumber numberWithUnsignedInt:*(v7[5] + 208)];
      [v251 setObject:v26 forKeyedSubscript:@"scanAgentType"];

      v27 = [NSNumber numberWithInt:*(v7[5] + 96)];
      [v251 setObject:v27 forKeyedSubscript:@"agentScanLevel"];

      v28 = [NSString stringWithUTF8String:sub_10002F16C(v12)];
      [v251 setObject:v28 forKeyedSubscript:@"usecase"];

      if (v264[8] == 1)
      {
        sub_10003BC90(v264);
        v29 = __p[23] >= 0 ? __p : *__p;
        v30 = [NSString stringWithUTF8String:v29];
        [v251 setObject:v30 forKeyedSubscript:@"usecaseParams"];

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      sub_100018384(v7[4], __p);
      if (__p[23] >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = *__p;
      }

      v32 = [NSString stringWithUTF8String:v31];
      [v243 setObject:v251 forKeyedSubscript:v32];

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((sub_1000178BC(v7[5]) & 1) == 0)
      {
        goto LABEL_149;
      }

      ++v242;
      v33 = v7[5];
      if ((*(*(v33 + 8) + 3) & 1) == 0 && *(a1 + 1988) == 2)
      {
        goto LABEL_149;
      }

      v34 = sub_100028FB4(v33);
      v35 = qword_100BCE918;
      if (v34)
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_1008772D0(&v258, v259);
        }

        v36 = 0;
        v37 = 0;
        v244 = 0;
        v38 = &xpc_dictionary_set_uint64_ptr;
        goto LABEL_143;
      }

      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(v7[5] + 81);
        *__p = 67109120;
        *&__p[4] = v39;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "state %d", __p, 8u);
      }

      if (sub_100024BA4(v7[5]) || sub_100024BCC(v7[5]))
      {
        v244 = 0;
      }

      else
      {
        v40 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v7[5];
          if (*(v41 + 255) < 0)
          {
            sub_100008904(buf, *(v41 + 232), *(v41 + 240));
            v41 = v7[5];
          }

          else
          {
            *buf = *(v41 + 232);
            *&buf[16] = *(v41 + 248);
          }

          v42 = buf[23] >= 0 ? buf : *buf;
          v43 = sub_100024BA4(v41);
          v44 = sub_100024BCC(v7[5]);
          *__p = 136315650;
          *&__p[4] = v42;
          *&__p[12] = 1024;
          *&__p[14] = v43;
          *&__p[18] = 1024;
          *&__p[20] = v44;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Upgrading %s to active scan hasZoneScan:%d hasMatchingRulesScan:%d", __p, 0x18u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v9 |= sub_10003C8E8(v7[5]);
        v244 = 1;
      }

      if (sub_1007B363C(v7[5]))
      {
        v45 = sub_10008043C(v7[5], 0, (a1 + 4416));
        v262 = 0u;
        v263 = 0u;
        v260 = 0u;
        v261 = 0u;
        obj = v45;
        v46 = [obj countByEnumeratingWithState:&v260 objects:v271 count:16];
        if (v46)
        {
          v47 = *v261;
          v48 = v12 & 0xFFFF0000;
          do
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v261 != v47)
              {
                objc_enumerationMutation(obj);
              }

              v50 = [*(*(&v260 + 1) + 8 * i) objectForKeyedSubscript:@"puckType"];
              if (v50)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v50 integerValue] == 8)
                {
                  v51 = qword_100BCE918;
                  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                  {
                    v52 = sub_10003C8E8(v7[5]);
                    *__p = 67109120;
                    *&__p[4] = v52;
                    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "HS is asking for duplicates? %d", __p, 8u);
                  }

                  v9 |= sub_10003C8E8(v7[5]);
                }
              }

              if (v48 == 0x10000)
              {
                v53 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = v7[5];
                  v55 = *(*(v54 + 8) + 192);
                  v56 = sub_10003C8E8(v54);
                  v57 = sub_10002F16C(v55);
                  *__p = 136315394;
                  v58 = "No";
                  if (v56)
                  {
                    v58 = "Yes";
                  }

                  *&__p[4] = v57;
                  *&__p[12] = 2080;
                  *&__p[14] = v58;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Findmy usecase %s is asking for duplicates? %s", __p, 0x16u);
                }

                v9 |= sub_10003C8E8(v7[5]);
              }

              v59 = *(v7[5] + 8);
              v60 = *(v59 + 88);
              v61 = *(v59 + 96);
              while (v60 != v61)
              {
                if (*(v60 + 8) == 16 && *(v60 + 50) == 1)
                {
                  v62 = qword_100BCE918;
                  v9 = 1;
                  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 0x104000100;
                    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "NearbyInfo asking for duplicates? %d", __p, 8u);
                  }
                }

                v60 += 96;
              }
            }

            v46 = [obj countByEnumeratingWithState:&v260 objects:v271 count:16];
          }

          while (v46);
        }
      }

      v63 = qword_100BCE918;
      v38 = &xpc_dictionary_set_uint64_ptr;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v64 = v7[5];
        if (*(v64 + 255) < 0)
        {
          sub_100008904(buf, *(v64 + 232), *(v64 + 240));
          v64 = v7[5];
        }

        else
        {
          *buf = *(v64 + 232);
          *&buf[16] = *(v64 + 248);
        }

        v65 = buf[23];
        v66 = *buf;
        v67 = sub_10003C8E8(v64);
        *__p = 136315906;
        v68 = buf;
        if (v65 < 0)
        {
          v68 = v66;
        }

        *&__p[4] = v68;
        *&__p[12] = 1024;
        *&__p[14] = v9 & 1;
        *&__p[18] = 1024;
        *&__p[20] = v67;
        v269 = 1024;
        v270 = v244;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s allowDupes:%d, agentAllowDupes:%d, active:%d", __p, 0x1Eu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      v69 = v7[5];
      v70 = *(v69 + 8);
      v71 = *(v70 + 144);
      if (v71 == 1)
      {
        v36 = *(v70 + 152);
        v37 = *(v70 + 156);
        v244 = *(v70 + 160);
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v72 = qword_100BCE918;
      if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_82;
      }

      if (*(v69 + 255) < 0)
      {
        sub_100008904(__p, *(v69 + 232), *(v69 + 240));
      }

      else
      {
        *__p = *(v69 + 232);
        *&__p[16] = *(v69 + 248);
      }

      v73 = __p;
      if (__p[23] < 0)
      {
        v73 = *__p;
      }

      *buf = 136315394;
      *&buf[4] = v73;
      *&buf[12] = 1024;
      *&buf[14] = v244;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%s active %d", buf, 0x12u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if (!v71)
        {
LABEL_109:
          v81 = *(v7[5] + 96);
          v74 = v249;
          if (v247 >= v81)
          {
            v82 = v81;
          }

          else
          {
            v82 = v247;
          }

          v247 = v82;
          goto LABEL_113;
        }
      }

      else
      {
LABEL_82:
        if (!v71)
        {
          goto LABEL_109;
        }
      }

      v74 = v249;
      if (v244)
      {
        v75 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 67109634;
          *&__p[4] = v37;
          *&__p[8] = 1024;
          *&__p[10] = v36;
          *&__p[14] = 2082;
          *&__p[16] = "active";
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Daemon is requesting scan parameters %d/%d (%{public}s)", __p, 0x18u);
        }
      }

      if (sub_10003D460(v7[5]))
      {
        if (v37 >= v249)
        {
          v76 = v249;
        }

        else
        {
          v76 = v37;
        }

        if (v37)
        {
          v74 = v76;
        }

        else
        {
          v74 = v249;
        }

        if (v36 >= v234)
        {
          v77 = v234;
        }

        else
        {
          v77 = v36;
        }

        if (v36)
        {
          v78 = v77;
        }

        else
        {
          v78 = v234;
        }

        v234 = v78;
      }

      if (*(*(v7[5] + 8) + 313) == 1)
      {
        if (qword_100B50910 != -1)
        {
          sub_100874420();
        }

        if (sub_10003C888(off_100B50908))
        {
          v79 = v228;
          if (v228)
          {
            v80 = HIDWORD(v227);
            if ((v228 / HIDWORD(v227)) < (v234 / v74))
            {
              v80 = v74;
              v79 = v234;
            }

            HIDWORD(v227) = v80;
            LODWORD(v228) = v79;
            BYTE4(v228) = 1;
          }

          else
          {
            HIDWORD(v227) = v74;
            LODWORD(v228) = v234;
            BYTE4(v228) = 1;
          }
        }
      }

LABEL_113:
      v83 = v7[5];
      if (*(*(v83 + 8) + 3) == 1)
      {
        v233 |= *(a1 + 1988) == 2;
      }

      v84 = sub_10003BC84(v83);
      if (!v232 || (byte_100BC7CC6 & 1) != 0)
      {
        goto LABEL_140;
      }

      if ((sub_10002904C(a1, v7[5]) & 1) == 0)
      {
        if (*(*(v7[5] + 8) + 240) != 1)
        {
          goto LABEL_122;
        }

        v85 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization for double boost with allowed use cases.", __p, 2u);
        }
      }

      v240 = 1;
LABEL_122:
      if ((byte_100BC7CC7 & 1) != 0 || sub_1000292A4(a1, v7[5]))
      {
        v229 = v226 | v240;
      }

      if (qword_100B50910 != -1)
      {
        sub_100874420();
      }

      v86 = sub_100028FC8();
      if ((v240 & 1) == 0)
      {
        goto LABEL_135;
      }

      v87 = v86 & 0xFFFFFFFD;
      if (v86 == 2)
      {
        v88 = sub_10000C7D0();
        v86 = (*(*v88 + 3176))(v88);
        if (v87 == 1)
        {
          v89 = 0;
        }

        else
        {
          v89 = v86;
        }

        if ((v89 & 1) == 0)
        {
LABEL_133:
          v229 &= v226;
          v90 = qword_100BCE918;
          v86 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
          if (v86)
          {
            *__p = 0;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Scanning Prioritization is not enabled with HIDs connected.", __p, 2u);
          }

LABEL_135:
          v240 = 0;
          goto LABEL_138;
        }
      }

      else if (v87 == 1)
      {
        goto LABEL_133;
      }

      v240 = 1;
LABEL_138:
      if (*(a1 + 4424) == 1)
      {
        LODWORD(v227) = sub_1007AA218(v86, v7[5]) | v227;
      }

LABEL_140:
      v238 = v244 | v238 & 1;
      v237 |= v84;
      v249 = v74;
      if (v236)
      {
        v236 = sub_10003BC78(v7[5]);
      }

      else
      {
        v236 = 0;
      }

LABEL_143:
      v91 = v38[477];
      sub_100018384(v7[4], __p);
      v92 = __p[23];
      v93 = *__p;
      v94 = [v38[477] defaultCStringEncoding];
      if (v92 >= 0)
      {
        v95 = __p;
      }

      else
      {
        v95 = v93;
      }

      v96 = [v91 stringWithCString:v95 encoding:v94];
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v97 = v38[477];
      v98 = v7[5];
      v99 = *(*(v98 + 8) + 3);
      v100 = sub_10003C8E8(v98);
      v101 = sub_10003A26C(v7[5]);
      v102 = [v97 stringWithFormat:@"[%@] AP:%d AD:%d(%d/%d) AS:%d RAS:%d DMN:%d FG:%d ADVBF:%d pBT:%d", v96, v99, v100, v37, v36, v244, v101, *(v7[5] + 81) == 32, *(v7[5] + 81) == 16, sub_100028FB4(v7[5]), v240 & 1];
      [v245 addObject:v102];

LABEL_149:
      *__p = &v265[80];
      sub_10000CF30(__p);
      sub_10000CEDC(&v265[48], *&v265[56]);
      if (*&v265[24])
      {
        *&v265[32] = *&v265[24];
        operator delete(*&v265[24]);
      }

      *__p = v265;
      sub_10000CFB0(__p);

      v103 = v7[1];
      if (v103)
      {
        do
        {
          v104 = v103;
          v103 = *v103;
        }

        while (v103);
      }

      else
      {
        do
        {
          v104 = v7[2];
          v105 = *v104 == v7;
          v7 = v104;
        }

        while (!v105);
      }

      v7 = v104;
      v10 = v247;
      v11 = v249;
      if (v104 == (a1 + 2072))
      {
        obja = (v242 != 0) & v236;
        v106 = v234;
        v107 = v238;
        v8 = &xpc_dictionary_set_uint64_ptr;
        goto LABEL_160;
      }
    }
  }

  obja = 0;
  v227 = 0;
  v228 = 0;
  v229 = 0;
  v240 = 0;
  v237 = 0;
  v233 = 0;
  LOBYTE(v9) = 0;
  v107 = 0;
  v106 = 300;
  v11 = 30;
  v10 = 3;
LABEL_160:
  v235 = v106;
  v239 = v107;
  v252 = [v8[477] stringWithFormat:@"AD:%d AS:%d MSL:%d (%d/%d) PSV:%d", v9 & 1, v107 & 1, v10, v11, v106, *v246];
  v108 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v109 = *(a1 + 2080);
    *v264 = 134218242;
    *&v264[4] = v109;
    *&v264[12] = 2114;
    *&v264[14] = v252;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "ScanParams: numScanAgents %lu, combined params %{public}@", v264, 0x16u);
  }

  v248 = v10;
  v250 = v11;
  v110 = [v245 count];
  if (v110 >= -1)
  {
    v111 = 0;
    v112 = v110 - 1;
    v113 = ((v110 - 1) / 3 + 1);
    v114 = 2;
    v115 = 1;
    do
    {
      if (v114 >= v112)
      {
        v116 = v112;
      }

      else
      {
        v116 = v114;
      }

      v117 = [v245 subarrayWithRange:{v111, v116 + v115}];
      v118 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v119 = [v117 componentsJoinedByString:@"|"];
        *v264 = 138543362;
        *&v264[4] = v119;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "ScanParams: %{public}@", v264, 0xCu);
      }

      v114 += 3;
      v115 -= 3;
      v111 += 3;
      --v113;
    }

    while (v113);
  }

  if ((v248 - 1) < 3)
  {
    *(v246 + 2) = 0x1E000600040uLL >> (16 * (v248 - 1));
    *(v246 + 3) = 48;
  }

  if (v239)
  {
    *v246 = 0;
  }

  v120 = *(v246 + 2);
  v121 = *(v246 + 3);
  if ((v235 / v250) <= (v120 / v121))
  {
    v120 = (v235 / 0.625);
    *(v246 + 2) = v120;
    v121 = (v250 / 0.625);
    *(v246 + 3) = v121;
  }

  *__p = 100;
  v122 = (v228 & 0x100000000) != 0 && v228 / HIDWORD(v227) == v120 / v121;
  if (qword_100B50910 != -1)
  {
    sub_100874420();
  }

  if ((sub_10003CE34(off_100B50908) & 1) == 0)
  {
    v123 = 100 * v121 / v120;
    if (v123 < 0x32)
    {
      if (v123 < 0x21)
      {
        goto LABEL_192;
      }

      v129 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v127 = v246;
        LOWORD(v130) = *(v246 + 3);
        LOWORD(v131) = *(v246 + 2);
        *v264 = 134219264;
        *&v264[4] = v130 * 0.625;
        *&v264[12] = 2048;
        *&v264[14] = v131 * 0.625;
        *&v264[22] = 1024;
        *&v264[24] = v123;
        *&v264[28] = 2048;
        *&v264[30] = 0x403E000000000000;
        *&v264[38] = 2048;
        *&v264[40] = 0x4056800000000000;
        *&v264[48] = 1024;
        *&v264[50] = v248;
        _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_INFO, "Limiting scan duty cycle based on other activities from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", v264, 0x36u);
        v128 = 144;
        goto LABEL_191;
      }

      v128 = 144;
    }

    else
    {
      v124 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v127 = v246;
        LOWORD(v125) = *(v246 + 3);
        LOWORD(v126) = *(v246 + 2);
        *v264 = 134219264;
        *&v264[4] = v125 * 0.625;
        *&v264[12] = 2048;
        *&v264[14] = v126 * 0.625;
        *&v264[22] = 1024;
        *&v264[24] = v123;
        *&v264[28] = 2048;
        *&v264[30] = 0x403E000000000000;
        *&v264[38] = 2048;
        *&v264[40] = 0x404E000000000000;
        *&v264[48] = 1024;
        *&v264[50] = v248;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_INFO, "Limiting scan duty cycle based on other activities from %.2fms/%.2fms (scanPercentage %d)to %.2fms/%.2fms minScanLevel %d", v264, 0x36u);
        v128 = 96;
LABEL_191:
        *(v127 + 2) = v128;
        *(v127 + 3) = 48;
        goto LABEL_192;
      }

      v128 = 96;
    }

    v127 = v246;
    goto LABEL_191;
  }

LABEL_192:
  if (v239 & 1 | ((v9 & 1) == 0))
  {
    v132 = (v239 & 1) == 0;
    v133 = v246;
    *v246 = v132;
    v134 = a1;
  }

  else
  {
    v132 = 0;
    v134 = a1;
    v133 = v246;
  }

  v133[3] = v132;
  if (((v231 | v230) & 1) != 0 && (*(v133 + 3) == 0xFFFF || !*(v133 + 3)))
  {
    v135 = sub_10003663C(v134);
    v134 = a1;
    v133 = v246;
    if (v135)
    {
      *(v246 + 2) = 4800;
    }
  }

  v136 = *(v133 + 3);
  v137 = *(v133 + 2);
  if (*(v134 + 4424) == 1)
  {
    v138 = v136 * 100.0 / v137;
    v139 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v264 = 67110144;
      *&v264[4] = v136;
      *&v264[8] = 1024;
      *&v264[10] = v137;
      *&v264[14] = 2048;
      *&v264[16] = v136 * 100.0 / v137;
      *&v264[24] = 2048;
      *&v264[26] = 0x4008DAB7EC1DD343;
      *&v264[34] = 1024;
      *&v264[36] = v138 > 3.10679612;
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "Checking if throttling down our scan during SDP is needed window:%d interval:%d dutyCycle:%f throttledDutyCycle:%f needToThrottle:%d", v264, 0x28u);
    }

    if (v138 <= 3.10679612)
    {
      v136 = *(v246 + 3);
      v137 = *(v246 + 2);
    }

    else
    {
      v140 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *v264 = 0;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Throttling down our scan during SDP", v264, 2u);
      }

      *(v246 + 1) = 3147273;
      if (v227)
      {
        *__p = 72745216;
        v122 = 1;
      }

      v136 = 48;
      v137 = 1545;
    }
  }

  if (100 * v136 / v137 < 0x1E)
  {
    if ((v240 | v229))
    {
      v141 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        v142 = "No";
        if (v240)
        {
          v143 = "Yes";
        }

        else
        {
          v143 = "No";
        }

        *v264 = 136315650;
        *&v264[4] = v143;
        if (v229)
        {
          v142 = "Yes";
        }

        *&v264[12] = 2080;
        *&v264[14] = v142;
        *&v264[22] = 1024;
        *&v264[24] = 100 * v136 / v137;
        _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "Do not prioritize scanning over BT %s WiFi %s for scan duty cycle %u.", v264, 0x1Cu);
        v136 = *(v246 + 3);
        v137 = *(v246 + 2);
      }
    }
  }

  else
  {
    v246[24] = v240 & 1;
    v246[25] = v229 & 1;
  }

  v144 = a1;
  if (v137 != 48 && v137 && v136 && v136 == v137)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100877258(v137);
      v144 = a1;
    }

    *(v246 + 1) = 3145776;
  }

  if (!v122 || !*v246)
  {
    __p[0] = 0;
    *&__p[2] = 0;
  }

  sub_10003D8DC(v144, v246, v231, v230, v237 & 1, obja, __p, 0, 0);
  v145 = sub_10000C7D0();
  v146 = v246;
  if ((*(*v145 + 3192))(v145, *(v246 + 2), *(v246 + 3)))
  {
    v246[25] = 1;
  }

  v147 = a1;
  if (*(a1 + 2278) == 1)
  {
    *v246 = *(a1 + 2279);
  }

  v148 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v149 = *(v246 + 3);
    v150 = *(v246 + 2);
    v151 = *(v246 + 4);
    v152 = *(v246 + 6);
    v153 = *(v246 + 5);
    v154 = v246[14];
    if (qword_100B50910 != -1)
    {
      sub_100874420();
    }

    v155 = *(off_100B50908 + 212);
    v156 = sub_10003CE34(off_100B50908);
    v157 = v150;
    v158 = v149;
    if (v230)
    {
      v159 = "supported";
    }

    else
    {
      v159 = "unspported";
    }

    v147 = a1;
    v160 = *(a1 + 144);
    v146 = v246;
    v161 = *v246;
    v162 = "concurrent";
    *v264 = 134223106;
    if (!v154)
    {
      v162 = "non-concurrent";
    }

    v163 = v246[3];
    v164 = *(a1 + 2376);
    v165 = "unsupported";
    v166 = v246[24];
    if (v231)
    {
      v165 = "supported";
    }

    v167 = v246[25];
    *&v264[4] = v158 * 0.625;
    v168 = v157 * 0.625;
    *&v264[12] = 2048;
    v105 = !v161;
    *&v264[14] = v168;
    v169 = "passive";
    *&v264[22] = 2048;
    if (v105)
    {
      v169 = "active";
    }

    *&v264[24] = v151 * 0.625;
    v105 = !v163;
    *&v264[32] = 2048;
    v170 = "Enabled";
    *&v264[34] = v168;
    if (v105)
    {
      v170 = "Disabled";
    }

    *&v264[44] = v165;
    *&v264[42] = 2080;
    v105 = v164 == 0;
    *&v264[52] = 2048;
    v171 = "N";
    if (!v105)
    {
      v171 = "Y";
    }

    *&v264[54] = v152 * 0.625;
    *&v264[62] = 2048;
    *v265 = v153 * 0.625;
    *&v265[8] = 2080;
    *&v265[10] = v162;
    *&v265[18] = 2080;
    *&v265[20] = v159;
    *&v265[28] = 1024;
    *&v265[30] = v250;
    *&v265[34] = 1024;
    *&v265[36] = v235;
    *&v265[40] = 1024;
    *&v265[42] = v155;
    *&v265[46] = 1024;
    *&v265[48] = v156;
    *&v265[52] = 1024;
    *&v265[54] = v233 & 1;
    *&v265[58] = 1024;
    *&v265[60] = v160;
    *&v265[64] = 2082;
    *&v265[66] = v169;
    *&v265[74] = 2080;
    *&v265[76] = v170;
    *&v265[84] = 1024;
    *&v265[86] = v248;
    *&v265[90] = 2080;
    *&v265[92] = v171;
    *&v265[100] = 1024;
    *&v265[102] = v166;
    v266 = 1024;
    v267 = v167;
    _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "Returning scan parameters: Main:%.2fms/%.2fms LP:%.2fms/%.2fms(%s) SC:%.2fms/%.2fms/%s(%s) Dm:(m:%d/%d) Cond:%d:%d:%d Sc:%d (%{public}s) Dupfilter:%s minScanLevel:%d ENAssertion:%s Pri:%d/%d", v264, 0xB0u);
  }

  if (*(v147 + 2246) == 1)
  {
    v172 = *(a1 + 2248);
    *(v146 + 2) = v172;
    v173 = *(a1 + 2250);
    *(v146 + 3) = v173;
    v174 = *(a1 + 2252);
    *(v146 + 4) = v174;
    if (*(a1 + 2258))
    {
      v175 = *(a1 + 2260);
    }

    else
    {
      v175 = 0;
    }

    if (*(a1 + 2258))
    {
      v176 = 0;
    }

    else
    {
      v176 = *(a1 + 2260);
    }

    *(v146 + 6) = v175;
    *(v146 + 5) = v176;
    v177 = *(a1 + 2262);
    v146[14] = v177;
    if (*(a1 + 2263) == 1)
    {
      v246[15] = *(a1 + 2264);
    }

    if (*(a1 + 2266) == 1)
    {
      v246[16] = *(a1 + 2265);
    }

    if (*(a1 + 2267) == 1)
    {
      v178 = *(a1 + 2270);
    }

    else
    {
      v178 = 0;
    }

    v246[19] = v178 & 1;
    if (*(a1 + 2268) == 1)
    {
      v179 = *(a1 + 2272);
    }

    else
    {
      v179 = 0;
    }

    *(v246 + 10) = v179;
    v255 = v177;
    if (*(a1 + 2269) == 1)
    {
      v180 = *(a1 + 2274);
    }

    else
    {
      v180 = 0;
    }

    v146 = v246;
    *(v246 + 11) = v180;
    v181 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v264 = 67112962;
      v182 = "No";
      v183 = v246[15];
      *&v264[4] = v172;
      if (v255)
      {
        v184 = "Yes";
      }

      else
      {
        v184 = "No";
      }

      v185 = v246[16];
      *&v264[8] = 2048;
      if (v178)
      {
        v182 = "Yes";
      }

      *&v264[10] = v172 * 0.625;
      *&v264[18] = 1024;
      *&v264[20] = v173;
      *&v264[24] = 1024;
      *&v264[26] = v174;
      *&v264[30] = 1024;
      *&v264[32] = v175;
      *&v264[36] = 1024;
      *&v264[38] = v176;
      *&v264[42] = 2048;
      *&v264[44] = v173 * 0.625;
      *&v264[52] = 2048;
      *&v264[54] = v174 * 0.625;
      *&v264[62] = 2048;
      *v265 = v175 * 0.625;
      *&v265[8] = 2048;
      *&v265[10] = v176 * 0.625;
      *&v265[18] = 2080;
      *&v265[20] = v184;
      *&v265[28] = 2080;
      *&v265[30] = v182;
      *&v265[38] = 1024;
      *&v265[40] = v179;
      *&v265[44] = 1024;
      *&v265[46] = v180;
      *&v265[50] = 1024;
      *&v265[52] = v183;
      *&v265[56] = 1024;
      *&v265[58] = v185;
      _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "Returning scan parameters (overridden with ScanCore) Interval %d(%.2fms) Window %d/%d/%d/%d(%.2fms/%.2fms/%.2fms/%.2fms) Concurrent %s Compensation %s percent %d query %d MRC:%d scanPhys:%d", v264, 0x7Eu);
    }
  }

  v186 = *(v146 + 3);
  v187 = *(v146 + 2);
  v188 = +[NSMutableDictionary dictionary];
  v189 = [NSNumber numberWithBool:*v146];
  [v188 setObject:v189 forKeyedSubscript:@"scanParams.passive"];

  v190 = [NSNumber numberWithBool:v246[1]];
  [v188 setObject:v190 forKeyedSubscript:@"scanParams.limited"];

  v191 = [NSNumber numberWithBool:v246[3]];
  [v188 setObject:v191 forKeyedSubscript:@"scanParams.filterDups"];

  LOWORD(v192) = *(v246 + 2);
  v193 = [NSNumber numberWithDouble:v192 * 0.625];
  [v188 setObject:v193 forKeyedSubscript:@"scanParams.interval"];

  LOWORD(v194) = *(v246 + 3);
  v195 = [NSNumber numberWithDouble:v194 * 0.625];
  [v188 setObject:v195 forKeyedSubscript:@"scanParams.window"];

  LOWORD(v196) = *(v246 + 4);
  v197 = [NSNumber numberWithDouble:v196 * 0.625];
  [v188 setObject:v197 forKeyedSubscript:@"scanParams.windowLPCore"];

  LOWORD(v198) = *(v246 + 5);
  v199 = [NSNumber numberWithDouble:v198 * 0.625];
  [v188 setObject:v199 forKeyedSubscript:@"scanParams.windowScanCoreELNABypass"];

  LOWORD(v200) = *(v246 + 6);
  v201 = [NSNumber numberWithDouble:v200 * 0.625];
  [v188 setObject:v201 forKeyedSubscript:@"scanParams.windowScanCoreELNAOn"];

  v202 = [NSNumber numberWithBool:v246[14]];
  [v188 setObject:v202 forKeyedSubscript:@"scanParams.concurrencyMode"];

  v203 = [NSNumber numberWithUnsignedChar:v246[16]];
  [v188 setObject:v203 forKeyedSubscript:@"scanParams.scanningPhys"];

  v204 = [NSNumber numberWithBool:v246[17]];
  [v188 setObject:v204 forKeyedSubscript:@"scanParams.retainDuplicates"];

  v205 = [NSNumber numberWithUnsignedChar:v246[18]];
  [v188 setObject:v205 forKeyedSubscript:@"scanParams.priorityConfig"];

  v206 = [NSNumber numberWithBool:v246[19]];
  [v188 setObject:v206 forKeyedSubscript:@"scanParams.isScanCoreCompensated"];

  v207 = [NSNumber numberWithUnsignedShort:*(v246 + 10)];
  [v188 setObject:v207 forKeyedSubscript:@"scanParams.scanCoreCompensationPercent"];

  v208 = [NSNumber numberWithUnsignedShort:*(v246 + 11)];
  [v188 setObject:v208 forKeyedSubscript:@"scanParams.scanCoreCoexQueryPeriod"];

  v209 = [NSNumber numberWithBool:v246[24]];
  [v188 setObject:v209 forKeyedSubscript:@"scanParams.isPrioritizedOverBT"];

  v210 = [NSNumber numberWithBool:v246[25]];
  [v188 setObject:v210 forKeyedSubscript:@"scanParams.isPrioritizedOverWiFi"];

  v211 = [NSNumber numberWithBool:*(a1 + 144)];
  [v188 setObject:v211 forKeyedSubscript:@"fScreenState"];

  v212 = [NSNumber numberWithInt:v235];
  [v188 setObject:v212 forKeyedSubscript:@"daemonInterval"];

  v213 = [NSNumber numberWithInt:v250];
  [v188 setObject:v213 forKeyedSubscript:@"daemonWindow"];

  v214 = [NSNumber numberWithInt:v248];
  [v188 setObject:v214 forKeyedSubscript:@"minScanLevel"];

  v215 = [NSNumber numberWithUnsignedInt:100 * v186 / v187];
  [v188 setObject:v215 forKeyedSubscript:@"scanPercentage"];

  v216 = [NSNumber numberWithBool:v233 & 1];
  [v188 setObject:v216 forKeyedSubscript:@"allowInPause"];

  v217 = [NSNumber numberWithBool:v231];
  [v188 setObject:v217 forKeyedSubscript:@"scanLPCoreEnable"];

  v218 = [NSNumber numberWithBool:v230];
  [v188 setObject:v218 forKeyedSubscript:@"isScanCoreEnabled"];

  v219 = [NSNumber numberWithBool:obja];
  [v188 setObject:v219 forKeyedSubscript:@"isRangeScan"];

  v220 = [NSNumber numberWithBool:v237 & 1];
  [v188 setObject:v220 forKeyedSubscript:@"isPriorityCritical"];

  v221 = [NSNumber numberWithBool:v240 & 1];
  [v188 setObject:v221 forKeyedSubscript:@"isPrioritizedOverBT"];

  v222 = [NSNumber numberWithBool:v229 & 1];
  [v188 setObject:v222 forKeyedSubscript:@"isPrioritizedOverWiFi"];

  v223 = [NSNumber numberWithUnsignedInt:*(a1 + 1988)];
  [v188 setObject:v223 forKeyedSubscript:@"fObserverState"];

  [v243 setObject:v188 forKeyedSubscript:@"Controller"];
  v256[0] = _NSConcreteStackBlock;
  v256[1] = 3221225472;
  v256[2] = sub_1007ACDA8;
  v256[3] = &unk_100B0D250;
  v224 = v243;
  v257 = v224;
  sub_10000D058(a1 + 1896, v256);

  return 1;
}

void sub_1007ACA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100138880(&a71);

  _Unwind_Resume(a1);
}

void sub_1007ACDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = *(a2 + 8);
    if (*(v6 + 328) == 1)
    {
      v10 = +[NSMutableDictionary dictionary];
      [v10 setObject:@"Discovery" forKeyedSubscript:@"ScanType"];
      v11 = *(*(a2 + 8) + 192);
      v12 = [NSString stringWithUTF8String:sub_10002F16C(v11)];
      [v10 setObject:v12 forKeyedSubscript:@"CBUseCase"];

      v47 = *(*(a2 + 8) + 176);
      v13 = [v47 allObjects];
      v14 = [NSArray arrayWithArray:v13];

      v15 = [v14 sortedArrayUsingSelector:"compare:"];

      v16 = [v15 componentsJoinedByString:{@", "}];
      [v10 setObject:v16 forKeyedSubscript:@"BundleID"];

      v17 = sub_10000C798();
      v18 = [NSNumber numberWithBool:(*(*v17 + 888))(v17)];
      [v10 setObject:v18 forKeyedSubscript:@"IsFWBased"];

      [v10 setObject:@"NotApplicable" forKeyedSubscript:@"InitialConnScanParamsType"];
      v19 = [NSNumber numberWithBool:*(v6 + 330)];
      [v10 setObject:v19 forKeyedSubscript:@"IsWiFiCoexCriticalProtected"];

      v20 = [NSNumber numberWithBool:*(v6 + 331)];
      [v10 setObject:v20 forKeyedSubscript:@"IsBTAudioProtected"];

      v21 = [NSNumber numberWithBool:*(v6 + 332)];
      [v10 setObject:v21 forKeyedSubscript:@"IsWiFi2_4GHzProtected"];

      if ((v11 - 65548) < 2)
      {
        v22 = 63;
      }

      else if (v11 == 268)
      {
        v22 = -1;
      }

      else if (v11 == 265)
      {
        v22 = 111;
      }

      else
      {
        v22 = 0;
      }

      v23 = [NSNumber numberWithUnsignedLongLong:v22];
      [v10 setObject:v23 forKeyedSubscript:@"WiFiCriticalDefinition"];

      v24 = [NSNumber numberWithUnsignedLongLong:*(v6 + 352)];
      [v10 setObject:v24 forKeyedSubscript:@"ScanDurationReqMsec"];

      v25 = [NSNumber numberWithUnsignedLongLong:*(v6 + 344)];
      [v10 setObject:v25 forKeyedSubscript:@"ActualScanTimeReqMsec"];

      v26 = [NSNumber numberWithUnsignedLongLong:*(v6 + 344)];
      [v10 setObject:v26 forKeyedSubscript:@"ActualScanTimeMCReqMsec"];

      v27 = [NSNumber numberWithUnsignedLongLong:a5];
      [v10 setObject:v27 forKeyedSubscript:@"ScanDurationMsec"];

      v28 = [NSNumber numberWithUnsignedLongLong:a3];
      [v10 setObject:v28 forKeyedSubscript:@"ActualScanTimeMsec"];

      v29 = [NSNumber numberWithUnsignedLongLong:a4];
      [v10 setObject:v29 forKeyedSubscript:@"ActualScanTimeMCMsec"];

      v30 = *(v6 + 352);
      if (v30)
      {
        v31 = (100 * a5) / v30;
      }

      else
      {
        LODWORD(v31) = 0;
      }

      if (v31 <= 0x63)
      {
        v32 = v31;
      }

      else
      {
        v32 = 100;
      }

      v33 = *(v6 + 344);
      if (v33)
      {
        v34 = (100 * a3) / v33;
        v35 = v34 > 0x63;
        if (v34 <= 0x63)
        {
          v36 = v34;
        }

        else
        {
          v36 = 100;
        }

        v37 = (100 * a4) / v33;
      }

      else
      {
        v36 = 0;
        v35 = 0;
        LODWORD(v37) = 0;
      }

      if (v37 <= 0x63)
      {
        v38 = v37;
      }

      else
      {
        v38 = 100;
      }

      v39 = [NSNumber numberWithUnsignedInt:v32];
      [v10 setObject:v39 forKeyedSubscript:@"ScanDurationMsecPercentage"];

      v40 = [NSNumber numberWithUnsignedInt:v36];
      [v10 setObject:v40 forKeyedSubscript:@"ActualScanTimeMsecPercentage"];

      v41 = [NSNumber numberWithUnsignedInt:v38];
      [v10 setObject:v41 forKeyedSubscript:@"ActualScanTimeMCMsecPercentage"];

      v42 = [NSNumber numberWithBool:v31 > 0x63];
      [v10 setObject:v42 forKeyedSubscript:@"HasScanDurationReqMet"];

      v43 = [NSNumber numberWithBool:v35];
      [v10 setObject:v43 forKeyedSubscript:@"HasActualScanTimeReqMet"];

      v44 = [NSNumber numberWithBool:v37 > 0x63];
      [v10 setObject:v44 forKeyedSubscript:@"HasActualScanTimeMCReqMet"];

      v45 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = v10;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Sending CloseLoopScanningStats :%{public}@", buf, 0xCu);
      }

      v46 = sub_10000F034();
      (*(*v46 + 408))(v46, v10);
    }
  }
}

void sub_1007AD498(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 == 2)
  {
    v3 = 20;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 1)
  {
    v4 = 342;
  }

  else
  {
    v4 = v3;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1007AD684;
  v19[3] = &unk_100B0D270;
  v5 = *(a1 + 32);
  v19[4] = *(a1 + 40);
  v21 = v4;
  v20 = *(a1 + 48);
  sub_10000D058(v5 + 1896, v19);
  v7 = *(v5 + 2072);
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = v5 + 2072;
    do
    {
      v10 = *(v7 + 32);
      v11 = v10 >= v8;
      v12 = v10 < v8;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 != v5 + 2072 && v8 >= *(v9 + 32))
    {
      v13 = *(v9 + 40);
      if (*(a1 + 72) == 1)
      {
        sub_1007ACDD8(v6, v13, *(a1 + 48), *(a1 + 56), *(a1 + 64));
        v8 = *(a1 + 40);
      }

      v14 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v8, __p);
        if (v18 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        *buf = 136446210;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "stopping scan for %{public}s", buf, 0xCu);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        v8 = *(a1 + 40);
      }

      v16 = *(v13 + 8);
      *(v16 + 228) = 0;
      *(v16 + 232) = 0;
      sub_100023EC0(v5, v8, 1, 1, 0);
    }
  }
}

const char *sub_1007AD6BC(uint64_t a1, unsigned int a2)
{
  if (a2 > 6)
  {
    return "Unknown Duty Cycle Type";
  }

  else
  {
    return off_100B0D6C8[a2];
  }
}

void sub_1007AD6E8(uint64_t a1)
{
  if ((*(a1 + 3288) & 1) == 0)
  {
    v2 = *(a1 + 3280) + 1;
    *(a1 + 3280) = v2;
    v3 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 67109120;
      v4[1] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ScanCoreBLEConnectionScanStat: ScanCore is enabled for Connection Scan %d times", v4, 8u);
    }
  }

  *(a1 + 3288) = 1;
}

void sub_1007AD7B8(uint64_t a1)
{
  if (*(a1 + 3288) == 1)
  {
    v2 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ScanCore is disabled for Connection Scan", v3, 2u);
    }
  }

  *(a1 + 3288) = 0;
}

void sub_1007AD83C(uint64_t a1, char a2)
{
  *(a1 + 4360) = a2;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100877700();
  }
}

uint64_t sub_1007AD898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 1984);
    if (v5 > 4)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = off_100B0D700[v5];
    }

    v7 = *(a1 + 1988);
    if (v7 > 3)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = off_100B0D728[v7];
    }

    v22 = 136446466;
    v23 = v6;
    v24 = 2082;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pauseScans State: %{public}s, ObserverState: %{public}s", &v22, 0x16u);
  }

  v9 = *(a1 + 1988);
  if ((v9 - 1) < 2)
  {
    v12 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 1984);
      if (v13 > 4)
      {
        v14 = "UNKNOWN";
      }

      else
      {
        v14 = off_100B0D700[v13];
      }

      v15 = "Pausing";
      if (v9 == 2)
      {
        v15 = "Paused";
      }

      v22 = 136446466;
      v23 = v14;
      v24 = 2082;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Already Paused Scans State: %{public}s, ObserverState: %{public}s", &v22, 0x16u);
    }

    v11 = 401;
  }

  else
  {
    if (v9 == 3)
    {
      v11 = 1;
      goto LABEL_28;
    }

    if (!v9)
    {
      sub_1007A7444(a1, 1);
      v10 = *(a1 + 1984);
      if (v10 == 1 || v10 == 3 && sub_1007A9290(a1))
      {
        sub_1007A7444(a1, 2);
      }
    }

    v11 = 0;
  }

  [*(a1 + 3296) addObject:v3];
  v16 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v3;
    v18 = [v3 UTF8String];
    v19 = [*(a1 + 3296) count];
    v20 = *(a1 + 3296);
    v22 = 136315650;
    v23 = v18;
    v24 = 2048;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Added Paused Client: %s, Clients(Count: %lu): %@", &v22, 0x20u);
  }

LABEL_28:

  return v11;
}

uint64_t sub_1007ADB50(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 3296) removeObject:v3];
  if ([*(a1 + 3296) count])
  {
    v4 = qword_100BCE918;
    v5 = 0;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 3296) count];
      v7 = *(a1 + 1984);
      if (v7 > 4)
      {
        v8 = "UNKNOWN";
      }

      else
      {
        v8 = off_100B0D700[v7];
      }

      v12 = *(a1 + 1988);
      if (v12 > 3)
      {
        v13 = "UNKNOWN";
      }

      else
      {
        v13 = off_100B0D728[v12];
      }

      v14 = *(a1 + 3296);
      v19 = 134218754;
      v20 = v6;
      v21 = 2082;
      v22 = v8;
      v23 = 2082;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cannot Resume Scans we have %lu clients required to be paused, State: %{public}s, ObserverState: %{public}s, clients: %@", &v19, 0x2Au);
LABEL_13:
      v5 = 0;
    }
  }

  else
  {
    [*(a1 + 3296) removeAllObjects];
    v9 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 1984);
      if (v10 > 4)
      {
        v11 = "UNKNOWN";
      }

      else
      {
        v11 = off_100B0D700[v10];
      }

      v15 = *(a1 + 1988);
      if (v15 > 3)
      {
        v16 = "UNKNOWN";
      }

      else
      {
        v16 = off_100B0D728[v15];
      }

      v19 = 136446466;
      v20 = v11;
      v21 = 2082;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "resumeScans State: %{public}s, ObserverState: %{public}s", &v19, 0x16u);
    }

    v17 = *(a1 + 1988);
    v5 = 1;
    if (v17 >= 2 && v17 != 3)
    {
      if (v17 == 2)
      {
        sub_1007A7444(a1, 3);
        *(a1 + 1856) = 1;
        if ((*(a1 + 1984) | 2) == 3)
        {
          sub_1007A7444(a1, 0);
        }
      }

      goto LABEL_13;
    }
  }

  return v5;
}

uint64_t sub_1007ADE10(uint64_t a1)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_100008760(&v12);
  v2 = sub_100007774(&v12);
  sub_100007774(v2);
  v3 = sub_100007774(&v12);
  v4 = *(a1 + 1984);
  if (v4 > 4)
  {
    v5 = "UNKNOWN";
  }

  else
  {
    v5 = off_100B0D700[v4];
  }

  strlen(v5);
  v6 = sub_100007774(v3);
  sub_100007774(v6);
  v7 = sub_100007774(&v12);
  v8 = *(a1 + 1988);
  if (v8 > 3)
  {
    v9 = "UNKNOWN";
  }

  else
  {
    v9 = off_100B0D728[v8];
  }

  strlen(v9);
  v10 = sub_100007774(v7);
  sub_100007774(v10);
  std::stringbuf::str();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1007AE08C(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: -------------------- LE Observer ---------------------", buf, 2u);
    v2 = qword_100BCE918;
  }

  v3 = (a1 + 4096);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 1984);
    if (v4 > 4)
    {
      v5 = "UNKNOWN";
    }

    else
    {
      v5 = off_100B0D700[v4];
    }

    v6 = *(a1 + 1988);
    if (v6 > 3)
    {
      v7 = "UNKNOWN";
    }

    else
    {
      v7 = off_100B0D728[v6];
    }

    v8 = *(a1 + 4426);
    LODWORD(buf[0].__locale_) = 136446722;
    *(&buf[0].__locale_ + 4) = v5;
    WORD2(buf[1].__locale_) = 2082;
    *(&buf[1].__locale_ + 6) = v7;
    HIWORD(buf[2].__locale_) = 1024;
    LODWORD(buf[3].__locale_) = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: State: %{public}s, ObserverState: %{public}s fSystemWillSleep: %d", buf, 0x1Cu);
    v2 = qword_100BCE918;
  }

  v134 = a1;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100017CD0(a1);
    v10 = "NO";
    if (v9)
    {
      v10 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyValidScanRequests:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1000A5154(a1);
    v12 = "NO";
    if (v11)
    {
      v12 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyActiveScanRequests:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_1007A9290(a1);
    v14 = "NO";
    if (v13)
    {
      v14 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyValidScanRequestsInPaused:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_10002529C(a1);
    v16 = "NO";
    if (v15)
    {
      v16 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyValidHWObjectDiscovery:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_10003663C(a1);
    v18 = "NO";
    if (v17)
    {
      v18 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: objectDiscoveryHwAdvBufferOnly:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = sub_10007CF9C(a1);
    v20 = "NO";
    if (v19)
    {
      v20 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v20;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveAnyHwAOPBTBufferRequests:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = sub_100018014(a1);
    v22 = "NO";
    v23 = *(a1 + 2224);
    if (v21)
    {
      v22 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446466;
    *(&buf[0].__locale_ + 4) = v22;
    WORD2(buf[1].__locale_) = 2048;
    *(&buf[1].__locale_ + 6) = v23;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: haveClientPowerAssertion:%{public}s, fScanningPowerAssertion:%llx", buf, 0x16u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 2232))
    {
      v24 = "YES";
    }

    else
    {
      v24 = "NO";
    }

    v25 = sub_10000C7D0();
    if ((*(*v25 + 4072))(v25))
    {
      v26 = "YES";
    }

    else
    {
      v26 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446466;
    *(&buf[0].__locale_ + 4) = v24;
    WORD2(buf[1].__locale_) = 2082;
    *(&buf[1].__locale_ + 6) = v26;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: configPowerAssert:%{public}s needsScanconfigPowerAssertions:%{public}s", buf, 0x16u);
    v2 = qword_100BCE918;
    a1 = v134;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v27 = "NO";
    if (*(a1 + 1856))
    {
      v28 = "YES";
    }

    else
    {
      v28 = "NO";
    }

    if (*(a1 + 1859))
    {
      v27 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136446466;
    *(&buf[0].__locale_ + 4) = v28;
    WORD2(buf[1].__locale_) = 2082;
    *(&buf[1].__locale_ + 6) = v27;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fScanFiltersNeedUpdating:%{public}s fZoneScansHaveChanged:%{public}s ", buf, 0x16u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v29 = "NO";
    if (*(a1 + 1864))
    {
      v30 = "YES";
    }

    else
    {
      v30 = "NO";
    }

    v31 = *(a1 + 1866);
    if (*(a1 + 1865))
    {
      v32 = "YES";
    }

    else
    {
      v32 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446722;
    if (v31)
    {
      v29 = "YES";
    }

    *(&buf[0].__locale_ + 4) = v30;
    WORD2(buf[1].__locale_) = 2082;
    *(&buf[1].__locale_ + 6) = v32;
    HIWORD(buf[2].__locale_) = 2082;
    buf[3].__locale_ = v29;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fHaveUUIDFilters:%{public}s fHaveZoneFilters:%{public}s fHaveRuleFilters:%{public}s", buf, 0x20u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 2152);
    LODWORD(buf[0].__locale_) = 134217984;
    *(&buf[0].__locale_ + 4) = v33;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fApWakeReadADVBuffersDebounceDelta:%llu", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v34 = *(a1 + 2324);
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v34;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fRSSIOffset:%d", buf, 8u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v35 = v3[328];
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v35;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fScanThrottlingRequired:%d", buf, 8u);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 2384))
    {
      v36 = "YES";
    }

    else
    {
      v36 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v36;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fShouldRetainDupsNextUpdate:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v37 = sub_10000C798();
    v38 = (*(*v37 + 744))(v37);
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v38;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Num of supported ObjectDiscovery HW ADV Buffers:%d", buf, 8u);
    v2 = qword_100BCE918;
    a1 = v134;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100BC7CC4)
    {
      v39 = "YES";
    }

    else
    {
      v39 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v39;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: gSniffScanDebug:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100BC7CC5)
    {
      v40 = "YES";
    }

    else
    {
      v40 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136446210;
    *(&buf[0].__locale_ + 4) = v40;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: gSniffScanHeysiriDebug:%{public}s", buf, 0xCu);
    v2 = qword_100BCE918;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v41 = "NO";
    if (v3[232])
    {
      v42 = "YES";
    }

    else
    {
      v42 = "NO";
    }

    v43 = *(a1 + 4416);
    if (v3[324])
    {
      v44 = "YES";
    }

    else
    {
      v44 = "NO";
    }

    if (v3[326])
    {
      v45 = "YES";
    }

    else
    {
      v45 = "NO";
    }

    if (v3[325])
    {
      v41 = "YES";
    }

    LODWORD(buf[0].__locale_) = 136447490;
    *(&buf[0].__locale_ + 4) = v42;
    WORD2(buf[1].__locale_) = 1024;
    *(&buf[1].__locale_ + 6) = v43;
    WORD1(buf[2].__locale_) = 2082;
    *(&buf[2].__locale_ + 4) = v44;
    WORD2(buf[3].__locale_) = 2082;
    *(&buf[3].__locale_ + 6) = v45;
    HIWORD(buf[4].__locale_) = 2082;
    buf[5].__locale_ = v41;
    LOWORD(v165) = 2082;
    *(&v165 + 2) = v45;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fControllerConfigInProgress:%{public}s fBypassFilterMask:%04x fGlobalDuplicateFilter:%{public}s shouldDispatchConfig():%{public}s fDebugControllerConfigDispatchSequence:%{public}s fForceDispatchInsteadOfSerialConfig:%{public}s", buf, 0x3Au);
  }

  v46 = sub_10000E92C();
  if ((*(*v46 + 8))(v46))
  {
    v47 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].__locale_) = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump: fFilterPeripherals:", buf, 2u);
    }

    v48 = *(v134 + 4336);
    if (v48 != (v134 + 4344))
    {
      do
      {
        v49 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_100777574();
          v50 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
          *v149 = 136446210;
          *&v149[4] = v50;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "    %{public}s", v149, 0xCu);
          if (SHIBYTE(buf[2].__locale_) < 0)
          {
            operator delete(buf[0].__locale_);
          }
        }

        v51 = v48[1];
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = *v51;
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = v48[2];
            v53 = *v52 == v48;
            v48 = v52;
          }

          while (!v53);
        }

        v48 = v52;
      }

      while (v52 != (v134 + 4344));
    }

    v54 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].__locale_) = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "statedump: fAllUuids:", buf, 2u);
    }

    v55 = *(v134 + 4368);
    if (v55 != (v134 + 4376))
    {
      do
      {
        v56 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_10003B85C(buf, v55 + 28);
          v57 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
          v58 = *(v55 + 48) ? "Yes" : "No";
          *v149 = 136446466;
          *&v149[4] = v57;
          *&v149[12] = 2080;
          *&v149[14] = v58;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "    %{public}s allowdups:%s", v149, 0x16u);
          if (SHIBYTE(buf[2].__locale_) < 0)
          {
            operator delete(buf[0].__locale_);
          }
        }

        v59 = v55[1];
        if (v59)
        {
          do
          {
            v60 = v59;
            v59 = *v59;
          }

          while (v59);
        }

        else
        {
          do
          {
            v60 = v55[2];
            v53 = *v60 == v55;
            v55 = v60;
          }

          while (!v53);
        }

        v55 = v60;
      }

      while (v60 != (v134 + 4376));
    }
  }

  v61 = qword_100BCE918;
  if (*(v134 + 1984) == 3)
  {
    buf[1].__locale_ = 0;
    buf[0].__locale_ = 0;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v149 = 0;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "statedump: Scan configuration:", v149, 2u);
    }

    LOWORD(v62) = *(v134 + 1996);
    snprintf(buf, 0x10uLL, "%.02fms", v62 * 0.625);
    v63 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v149 = 136446210;
      *&v149[4] = buf;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump:    Interval: %{public}s", v149, 0xCu);
    }

    LOWORD(v64) = *(v134 + 1998);
    snprintf(buf, 0x10uLL, "%.02fms", v64 * 0.625);
    v61 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v149 = 136446210;
      *&v149[4] = buf;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "statedump:    Window: %{public}s", v149, 0xCu);
      v61 = qword_100BCE918;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v134 + 1992))
      {
        v65 = "Passive";
      }

      else
      {
        v65 = "Active";
      }

      *v149 = 136446210;
      *&v149[4] = v65;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "statedump:    Type: %{public}s", v149, 0xCu);
      v61 = qword_100BCE918;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v134 + 1995))
      {
        v66 = "No";
      }

      else
      {
        v66 = "Yes";
      }

      *v149 = 136446210;
      *&v149[4] = v66;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "statedump:    Duplicates: %{public}s", v149, 0xCu);
      v61 = qword_100BCE918;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v134 + 1994))
      {
        v67 = "Yes";
      }

      else
      {
        v67 = "No";
      }

      *v149 = 136446210;
      *&v149[4] = v67;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "statedump:    Filter Accept List: %{public}s", v149, 0xCu);
      v61 = qword_100BCE918;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v134 + 1864))
      {
        v68 = "Disabled";
      }

      else
      {
        v68 = "Enabled";
      }

      *v149 = 136446210;
      *&v149[4] = v68;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "statedump:    HW Filtering: %{public}s", v149, 0xCu);
      v61 = qword_100BCE918;
    }
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "statedump: Scan agents:", buf, 2u);
  }

  if (v3[329] == 1)
  {
    v69 = *(v134 + 2064);
    if (v69 != (v134 + 2072))
    {
      do
      {
        v139 = *(v69[5] + 8);
        v70 = qword_100BCE918;
        v71 = v69;
        v135 = v69;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v71[4], buf);
          if (SHIBYTE(buf[2].__locale_) >= 0)
          {
            locale = buf;
          }

          else
          {
            locale = buf[0].__locale_;
          }

          *v149 = 136446210;
          *&v149[4] = locale;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", v149, 0xCu);
          if (SHIBYTE(buf[2].__locale_) < 0)
          {
            operator delete(buf[0].__locale_);
          }

          v70 = qword_100BCE918;
        }

        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v73 = "No";
          if (*v139)
          {
            v73 = "Yes";
          }

          LODWORD(buf[0].__locale_) = 136446210;
          *(&buf[0].__locale_ + 4) = v73;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "statedump:       Duplicates: %{public}s", buf, 0xCu);
        }

        v179 = 0;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        *v167 = 0u;
        v168 = 0u;
        v165 = 0u;
        v166 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100007AD0(buf);
        v74 = *(v139 + 8);
        if (*(v139 + 16) != v74)
        {
          do
          {
            sub_10003B85C(v149, v74);
            v75 = sub_100007774(&buf[2]);
            sub_100007774(v75);
            if ((v149[23] & 0x80000000) != 0)
            {
              operator delete(*v149);
            }

            v74 += 20;
          }

          while (v74 != *(v139 + 16));
          v76 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str();
            v77 = v149[23] >= 0 ? v149 : *v149;
            *v144 = 136446210;
            *&v144[4] = v77;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "statedump:       Services: %{public}s", v144, 0xCu);
            if ((v149[23] & 0x80000000) != 0)
            {
              operator delete(*v149);
            }
          }
        }

        memset(v149, 0, 24);
        std::string::operator=(&v167[1], v149);
        sub_10000766C(&buf[3]);
        if ((v149[23] & 0x80000000) != 0)
        {
          operator delete(*v149);
        }

        v78 = *(v139 + 56);
        v79 = *(v139 + 64);
        while (v78 != v79)
        {
          sub_10003B85C(v149, v78);
          v80 = sub_100007774(&buf[2]);
          sub_100007774(v80);
          if ((v149[23] & 0x80000000) != 0)
          {
            operator delete(*v149);
          }

          v78 += 20;
        }

        v81 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          std::stringbuf::str();
          if (v149[23] >= 0)
          {
            v82 = v149;
          }

          else
          {
            v82 = *v149;
          }

          *v144 = 136446210;
          *&v144[4] = v82;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "statedump:       Solicited Services: %{public}s", v144, 0xCu);
          if ((v149[23] & 0x80000000) != 0)
          {
            operator delete(*v149);
          }

          v81 = qword_100BCE918;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v83 = "NO";
          if (*(v139 + 2))
          {
            v83 = "YES";
          }

          *v149 = 136446210;
          *&v149[4] = v83;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "statedump:       Requires active scan:%{public}s", v149, 0xCu);
          v81 = qword_100BCE918;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v84 = *(v135[5] + 96);
          *v149 = 67109120;
          *&v149[4] = v84;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "statedump:       scan level:%d", v149, 8u);
          v81 = qword_100BCE918;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v85 = "NO";
          if (*(*(v135[5] + 8) + 3))
          {
            v85 = "YES";
          }

          *v149 = 136446210;
          *&v149[4] = v85;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "statedump:       Allowed in paused:%{public}s", v149, 0xCu);
          v81 = qword_100BCE918;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v86 = "NO";
          if (*(*(v135[5] + 8) + 171))
          {
            v86 = "YES";
          }

          *v149 = 136446210;
          *&v149[4] = v86;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "statedump:       Power assertion:%{public}s", v149, 0xCu);
        }

        v87 = qword_100BCEA38;
        if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
        {
          v88 = "NO";
          if (*(*(v135[5] + 8) + 172))
          {
            v88 = "YES";
          }

          *v149 = 136446210;
          *&v149[4] = v88;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "statedump:       Exposure Notification:%{public}s", v149, 0xCu);
        }

        if (*(v139 + 144) == 1)
        {
          v89 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            v90 = *(v139 + 160);
            v92 = *(v139 + 152);
            v91 = *(v139 + 156);
            *v149 = 67109632;
            *&v149[4] = v92;
            *&v149[8] = 1024;
            *&v149[10] = v91;
            *&v149[14] = 1024;
            *&v149[16] = v90;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "statedump:       requested interval:%d window:%d active:%d", v149, 0x14u);
          }
        }

        v93 = *(v139 + 146);
        if (v93)
        {
          v94 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v149 = 0;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "statedump:       HW ObjectDiscovery Wild", v149, 2u);
            v93 = *(v139 + 146);
          }
        }

        if ((v93 & 2) != 0)
        {
          v95 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v149 = 0;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "statedump:       HW ObjectDiscovery Near Owner", v149, 2u);
          }
        }

        v96 = *(v139 + 148);
        if ((v96 & 0x10) != 0)
        {
          v97 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v149 = 0;
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "statedump:       HW AOP BT Buffer NearbyInfo", v149, 2u);
            v96 = *(v139 + 148);
          }
        }

        if (v96)
        {
          v98 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v149 = 0;
            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "statedump:       HW AOP BT Buffer NearbyInfoV2", v149, 2u);
            v96 = *(v139 + 148);
          }
        }

        if ((v96 & 2) != 0)
        {
          v99 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            *v149 = 0;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "statedump:       HW AOP BT Buffer All", v149, 2u);
          }
        }

        v101 = *(v139 + 88);
        v100 = *(v139 + 96);
        while (v101 != v100)
        {
          v102 = qword_100BCE918;
          if (*(v101 + 64) == 1 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
          {
            v103 = *(v101 + 8);
            *v149 = 67109120;
            *&v149[4] = v103;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "statedump:       ObjectLocator type %x", v149, 8u);
            v102 = qword_100BCE918;
          }

          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            v104 = *(v101 + 8);
            v105 = *(v101 + 80);
            v106 = *(v101 + 84);
            v107 = *(v101 + 88);
            *v149 = 67109888;
            *&v149[4] = v104;
            *&v149[8] = 1024;
            *&v149[10] = v105;
            *&v149[14] = 1024;
            *&v149[16] = v106;
            *&v149[20] = 1024;
            *&v149[22] = v107;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "statedump:       Puck: %d  %d/%d/%d", v149, 0x1Au);
          }

          v108 = *(v101 + 72);
          if (v108)
          {
            v109 = v108;
            v110 = *(v101 + 72);
            v111 = [v110 count] == 0;

            if (!v111)
            {
              v163 = 0;
              v161 = 0u;
              v162 = 0u;
              v159 = 0u;
              v160 = 0u;
              v157 = 0u;
              v158 = 0u;
              v155 = 0u;
              v156 = 0u;
              v153 = 0u;
              v154 = 0u;
              *__p = 0u;
              v152 = 0u;
              memset(v150, 0, sizeof(v150));
              memset(v149, 0, sizeof(v149));
              sub_100007AD0(v149);
              v142 = 0u;
              v143 = 0u;
              v140 = 0u;
              v141 = 0u;
              v112 = *(v101 + 72);
              v113 = [v112 countByEnumeratingWithState:&v140 objects:v148 count:16];
              if (v113)
              {
                v114 = *v141;
                do
                {
                  for (i = 0; i != v113; i = i + 1)
                  {
                    if (*v141 != v114)
                    {
                      objc_enumerationMutation(v112);
                    }

                    v116 = sub_10002F16C([*(*(&v140 + 1) + 8 * i) longLongValue]);
                    strlen(v116);
                    v117 = sub_100007774(&v149[16]);
                    sub_100007774(v117);
                  }

                  v113 = [v112 countByEnumeratingWithState:&v140 objects:v148 count:16];
                }

                while (v113);
              }

              v118 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                std::stringbuf::str();
                v119 = v144;
                if (v145 < 0)
                {
                  v119 = *v144;
                }

                *v146 = 136315138;
                v147 = v119;
                _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "statedump:             UseCaseList: %s", v146, 0xCu);
                if (v145 < 0)
                {
                  operator delete(*v144);
                }
              }

              *v149 = v136;
              *&v149[*(v136 - 3)] = v137;
              *&v149[16] = v138;
              if (SHIBYTE(v152) < 0)
              {
                operator delete(__p[1]);
              }

              std::locale::~locale(v150);
              std::iostream::~basic_iostream();
              std::ios::~ios();
            }
          }

          v101 += 96;
        }

        v120 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
        {
          v121 = "NO";
          if (*(v139 + 240))
          {
            v121 = "YES";
          }

          *v149 = 136446210;
          *&v149[4] = v121;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "statedump:       Requires double boost scan: %{public}s", v149, 0xCu);
        }

        sub_1007B4984(v135[5]);
        buf[0].__locale_ = v136;
        *(&buf[0].__locale_ + *(v136 - 3)) = v137;
        buf[2].__locale_ = v138;
        if (SHIBYTE(v168) < 0)
        {
          operator delete(v167[1]);
        }

        std::locale::~locale(&buf[4]);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        v122 = v135;
        v123 = v135[1];
        if (v123)
        {
          do
          {
            v124 = v123;
            v123 = *v123;
          }

          while (v123);
        }

        else
        {
          do
          {
            v124 = v122[2];
            v53 = *v124 == v122;
            v122 = v124;
          }

          while (!v53);
        }

        v69 = v124;
      }

      while (v124 != (v134 + 2072));
    }
  }

  v125 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "statedump: Configured ObjectLocator MatchTables:", buf, 2u);
    v125 = qword_100BCE918;
  }

  v126 = *(v134 + 1832);
  if (v126 != (v134 + 1840))
  {
    do
    {
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        v127 = *(v126 + 18);
        v128 = *(v126 + 15);
        v129 = *(v126 + 28);
        v130 = *(v126 + 16) != 0;
        v131 = *(v126 + 17) != 0;
        LODWORD(buf[0].__locale_) = 67110144;
        HIDWORD(buf[0].__locale_) = v129;
        LOWORD(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 2) = v128;
        HIWORD(buf[1].__locale_) = 1024;
        LODWORD(buf[2].__locale_) = v127;
        WORD2(buf[2].__locale_) = 1024;
        *(&buf[2].__locale_ + 6) = v130;
        WORD1(buf[3].__locale_) = 1024;
        HIDWORD(buf[3].__locale_) = v131;
        _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "statedump: \tType:%x handle:%d Length:%d created:%d enabled:%d", buf, 0x20u);
        v125 = qword_100BCE918;
      }

      v132 = v126[1];
      if (v132)
      {
        do
        {
          v133 = v132;
          v132 = *v132;
        }

        while (v132);
      }

      else
      {
        do
        {
          v133 = v126[2];
          v53 = *v133 == v126;
          v126 = v133;
        }

        while (!v53);
      }

      v126 = v133;
    }

    while (v133 != (v134 + 1840));
  }

  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "statedump: Configured Payload encryption keys:", buf, 2u);
  }

  [*(v134 + 2112) enumerateKeysAndObjectsWithOptions:1 usingBlock:&stru_100B0D308];
  sub_1007B0310(v134);
  sub_1007A4E78(v134);
  sub_1007A5954(v134);
  sub_1007B0A7C(v134);
}