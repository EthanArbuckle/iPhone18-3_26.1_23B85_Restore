void sub_10072A0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10072A128(uint64_t a1)
{
  v2 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeBroadcaster::stackWillStop enter", buf, 2u);
  }

  v14 = 0;
  sub_1000216B4(&v14);
  if (sub_1002D359C())
  {
    sub_100097D14(a1, 0);
    sub_100097D14(a1, 1);
    v3 = sub_100017E6C();
    sub_10036F1AC(v3 + 384, a1 + 32);
    sub_1002D19A8();
    sub_100022214(&v14);
    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1 + 64);
    sub_10008E164(a1, 0);
    bzero((a1 + 152), 0x4178uLL);
    *buf = 0;
    v12[0] = 0;
    v12[1] = 0;
    sub_100097CBC(buf, a1 + 16968);
    *(a1 + 49) = 0;
    sub_10000801C(v13);
    v4 = *buf;
    if (*buf != v12)
    {
      do
      {
        (**v4[4])(v4[4], 0);
        v5 = v4[1];
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
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        v4 = v6;
      }

      while (v6 != v12);
    }

    sub_100099094(a1);
    sub_1000C10E8(a1);
    v8 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "LeBroadcaster::stackWillStop exit", v10, 2u);
    }

    sub_10000CEDC(buf, v12[0]);
    sub_1000088CC(v13);
  }

  return sub_10002249C(&v14);
}

void sub_10072A310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1000088CC(va);
  sub_10002249C((v6 - 33));
  _Unwind_Resume(a1);
}

uint64_t sub_10072A35C(uint64_t a1, unint64_t a2)
{
  v4[1] = 0;
  v5 = a2;
  v4[0] = 0;
  sub_100007F88(v4, a1 + 64);
  sub_1000452CC(a1 + 16968, &v5);
  return sub_1000088CC(v4);
}

void sub_10072A3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10072A3C8(uint64_t a1, unint64_t a2)
{
  v4[1] = 0;
  v5 = a2;
  v4[0] = 0;
  sub_100007F88(v4, a1 + 64);
  sub_100075DC4((a1 + 16968), &v5);
  return sub_1000088CC(v4);
}

void sub_10072A41C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10072A430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(v5 + 440);
  v7 = *(v5 + 480);
  v8 = v7;
  v9 = 0;
  if (v6 >= 1114112)
  {
    if ((v6 - 2147418126) < 4)
    {
      if (v7)
      {
        v22 = [v7 allKeys];
        if ([v22 count])
        {
          v23 = [v8 objectForKey:@"INTERNAL_TEST_SERVICE_DATA"];

          if (v23)
          {
            v15 = objc_opt_new();
            v24 = [v8 objectForKeyedSubscript:@"INTERNAL_TEST_SERVICE_DATA"];
            [v15 appendData:v24];

            if ([v15 length] < 0x1C)
            {
              v25 = *(a3 + 8);
              v70 = xmmword_1008A4F98;
              v71 = 0;
              sub_10000D03C(buf, &v70);
              v26 = v15;
              sub_10000C704(&v70, [v15 bytes], objc_msgSend(v15, "length"));
              v65 = buf;
              v27 = sub_100099408(v25 + 112, buf);
              sub_10000AE20(v27 + 56, &v70);
              *&v70 = &off_100AE0A78;
              if (*(&v70 + 1))
              {
                sub_10000C808(*(&v70 + 1));
              }

              v28 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                v29 = sub_10002D1A4(v6);
                *buf = 136315394;
                v67 = v29;
                v68 = 2112;
                v69 = v15;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "usecase %s service data:%@", buf, 0x16u);
              }

              goto LABEL_17;
            }

            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
            {
              [v15 length];
              sub_10086AFE8(v6);
            }

            goto LABEL_72;
          }
        }

        else
        {
        }
      }

      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
LABEL_80:
        sub_10086B03C(v8, v6);
      }

LABEL_86:
      v9 = 3;
      goto LABEL_87;
    }

    if (v6 == 1114112)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      if (Int64Ranged)
      {
        CFDataGetTypeID();
        v47 = CFDictionaryGetTypedValue();
        if ([v47 length] < 0xA)
        {
          v48 = objc_opt_new();
          [v48 appendBytes:&Int64Ranged length:1];
          if ([v47 length])
          {
            [v48 appendData:v47];
          }

          v49 = *(a3 + 8);
          v70 = xmmword_1008A4DF0;
          v71 = 0;
          sub_10000D03C(buf, &v70);
          v50 = v48;
          sub_10000C704(&v70, [v48 bytes], objc_msgSend(v48, "length"));
          v65 = buf;
          v51 = sub_100099408(v49 + 112, buf);
          sub_10000AE20(v51 + 56, &v70);
          *&v70 = &off_100AE0A78;
          if (*(&v70 + 1))
          {
            sub_10000C808(*(&v70 + 1));
          }

          v52 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v67 = "ProximityServiceDeviceSetup";
            v68 = 2112;
            v69 = v48;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%s builder output:%@", buf, 0x16u);
          }

          goto LABEL_59;
        }

        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086AF10(buf, [v47 length]);
        }
      }

      else if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_10086AF68();
      }

      goto LABEL_86;
    }
  }

  else
  {
    if ((v6 - 983040) <= 7 && ((1 << v6) & 0xCF) != 0)
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086B0C4(v6);
        }

        goto LABEL_86;
      }

      v11 = sub_10000C798();
      if (((*(*v11 + 384))(v11) & 1) == 0)
      {
        v12 = sub_10000C798();
        if (((*(*v12 + 408))(v12) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
          {
            sub_10086B144(v6);
          }

          goto LABEL_86;
        }
      }

      if (v8)
      {
        v13 = [v8 allKeys];
        if ([v13 count])
        {
          v14 = [v8 objectForKey:@"SOS_BEACON_SERVICE_DATA"];

          if (v14)
          {
            v15 = objc_opt_new();
            v16 = [v8 objectForKeyedSubscript:@"SOS_BEACON_SERVICE_DATA"];
            [v15 appendData:v16];

            if ([v15 length] < 0x1C)
            {
              v17 = *(a3 + 8);
              v70 = xmmword_1008A4F84;
              v71 = 0;
              sub_10000D03C(buf, &v70);
              v18 = v15;
              sub_10000C704(&v70, [v15 bytes], objc_msgSend(v15, "length"));
              v65 = buf;
              v19 = sub_100099408(v17 + 112, buf);
              sub_10000AE20(v19 + 56, &v70);
              *&v70 = &off_100AE0A78;
              if (*(&v70 + 1))
              {
                sub_10000C808(*(&v70 + 1));
              }

              v20 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                v21 = sub_10002D1A4(v6);
                *buf = 136315394;
                v67 = v21;
                v68 = 2112;
                v69 = v15;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "usecase %s service data:%@", buf, 0x16u);
              }

LABEL_17:

LABEL_59:
              v9 = 0;
              goto LABEL_87;
            }

            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
            {
              [v15 length];
              sub_10086AFE8(v6);
            }

LABEL_72:

            goto LABEL_86;
          }
        }

        else
        {
        }
      }

      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      goto LABEL_86;
    }

    if ((v6 - 851968) < 2)
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086B1C4(v6);
        }

        goto LABEL_86;
      }

      v30 = sub_10000C798();
      if (((*(*v30 + 392))(v30) & 1) == 0)
      {
        v31 = sub_10000C798();
        if (((*(*v31 + 384))(v31) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
          {
            sub_10086B244(v6);
          }

          goto LABEL_86;
        }
      }

      if (v8)
      {
        v32 = [v8 allKeys];
        if ([v32 count] && (objc_msgSend(v8, "objectForKey:", @"DCT_USECASE_SESSIONID"), (v33 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v34 = [v8 objectForKey:@"DCT_USECASE_PSM"];

          if (v34)
          {
            v35 = objc_opt_new();
            v63 = 32;
            [v35 appendBytes:&v63 length:1];
            v62 = 97;
            [v35 appendBytes:&v62 length:1];
            v36 = [v8 objectForKeyedSubscript:@"DCT_USECASE_SESSIONID"];
            [v35 appendData:v36];

            v61 = 18;
            v60 = 2;
            [v35 appendBytes:&v61 length:1];
            [v35 appendBytes:&v60 length:1];
            v59 = 19;
            v58 = 0;
            v37 = sub_10000C798();
            if ((*(*v37 + 392))(v37) || (v38 = sub_10000C798(), (*(*v38 + 384))(v38)))
            {
              v58 = 7;
            }

            [v35 appendBytes:&v59 length:1];
            [v35 appendBytes:&v58 length:1];
            v57 = 36;
            [v35 appendBytes:&v57 length:1];
            v39 = [v8 objectForKey:@"DCT_USECASE_PSM"];
            v40 = [v39 intValue];

            v56 = v40;
            [v35 appendBytes:&v56 length:2];
            v55 = 22;
            if (v6 == 851968)
            {
              v41 = 1;
            }

            else
            {
              v41 = 2;
            }

            v54 = v41;
            [v35 appendBytes:&v55 length:1];
            [v35 appendBytes:&v54 length:1];
            v42 = *(a3 + 8);
            v70 = xmmword_1008A4F70;
            v71 = 0;
            sub_10000D03C(buf, &v70);
            v43 = v35;
            sub_10000C704(&v70, [v35 bytes], objc_msgSend(v35, "length"));
            v65 = buf;
            v44 = sub_100099408(v42 + 112, buf);
            sub_10000AE20(v44 + 56, &v70);
            *&v70 = &off_100AE0A78;
            if (*(&v70 + 1))
            {
              sub_10000C808(*(&v70 + 1));
            }

            v45 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
            {
              v46 = sub_10002D1A4(v6);
              *buf = 136315394;
              v67 = v46;
              v68 = 2112;
              v69 = v35;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "DCT protocol usecase %s builder output:%@", buf, 0x16u);
            }

            *(*(a3 + 8) + 307) = 1;

            goto LABEL_59;
          }
        }

        else
        {
        }
      }

      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      goto LABEL_86;
    }
  }

LABEL_87:

  return v9;
}

void sub_10072B234(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8[0] = 0;
  v8[1] = 0;
  sub_100097CBC(&v7, a1 + 16968);
  v3 = v7;
  if (v7 != v8)
  {
    do
    {
      (*(*v3[4] + 24))(v3[4], a2);
      v4 = v3[1];
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
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v8);
  }

  sub_10000CEDC(&v7, v8[0]);
}

uint64_t sub_10072B31C(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 64);
  for (i = *(a1 + 16944); ; i = *(i + 8))
  {
    if (i == a1 + 16936)
    {
      if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
      {
        sub_100018384(a2, v6);
        sub_10086B53C();
      }

      operator new();
    }

    if (*(i + 16) == a2)
    {
      break;
    }
  }

  return sub_1000088CC(v7);
}

void sub_10072B730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10072B778(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10072B844;
  v6[3] = &unk_100B0AC00;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

uint64_t sub_10072B844(uint64_t a1)
{
  sub_1002D28F4(*(*(a1 + 40) + 17164), *(*(a1 + 40) + 17168));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10072B8A0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10072B964;
  v5[3] = &unk_100B0AC28;
  v4 = v2;
  v6 = v4;
  sub_10000CA94(v3, v5);
}

void sub_10072B964(uint64_t a1)
{
  v2 = [NSMutableDictionary dictionaryWithCapacity:7];
  v15 = 0;
  if (sub_1002D2C80(&v15))
  {
    [NSNumber numberWithUnsignedLong:0];
  }

  else
  {
    [NSNumber numberWithUnsignedLong:v15];
  }
  v3 = ;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  sub_1002D2CD0(&v14 + 1, &v14, &v13, &v12, &v11, &v10);
  v4 = [NSNumber numberWithBool:HIBYTE(v14)];
  [v2 setObject:v4 forKeyedSubscript:@"kCBMsgArgHoldStableAddressState"];

  v5 = [NSNumber numberWithBool:v14];
  [v2 setObject:v5 forKeyedSubscript:@"kCBMsgArgOverrideLocalAddressState"];

  v6 = [NSNumber numberWithBool:v13];
  [v2 setObject:v6 forKeyedSubscript:@"kCBMsgArgPrivateModeState"];

  v7 = [NSNumber numberWithUnsignedShort:v12];
  [v2 setObject:v7 forKeyedSubscript:@"kCBMsgArgHoldStableAddressCount"];

  v8 = [NSNumber numberWithUnsignedInt:v11];
  [v2 setObject:v8 forKeyedSubscript:@"kCBMsgArgLePrivateAddressTimer"];

  v9 = [NSNumber numberWithUnsignedInt:v10];
  [v2 setObject:v9 forKeyedSubscript:@"kCBMsgArgLeHoldStablePrivateAddressTimer"];

  [v2 setObject:v3 forKeyedSubscript:@"kCBMsgArgTimeoutInMS"];
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10072BBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v42, 0x67CuLL);
  v39[0] = 0;
  v39[1] = 0;
  sub_100007F88(v39, a1 + 64);
  v38 = 0;
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
  *v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  sub_100007AD0(&v23);
  v6 = sub_100007774(&v24);
  sub_100018384(a2, &__p);
  v7 = sub_100007774(v6);
  sub_100007774(v7);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v8 = sub_100007774(&v24);
  LOBYTE(__p) = *a3;
  v9 = sub_100007774(v8);
  sub_100007774(v9);
  sub_100007774(&v24);
  v10 = std::ostream::operator<<();
  sub_100007774(v10);
  v11 = sub_10000C5E0(a3 + 48);
  v12 = sub_10000C5F8(a3 + 48);
  sub_100007774(&v24);
  v13 = std::ostream::operator<<();
  sub_100007774(v13);
  v14 = sub_100007774(&v24);
  strlen(v12);
  v15 = sub_100007774(v14);
  sub_100007774(v15);
  v16 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
  {
    std::stringbuf::str();
    v17 = v22 >= 0 ? &__p : __p;
    *buf = 136446210;
    v41 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    if (v22 < 0)
    {
      operator delete(__p);
    }
  }

  bzero(v42, 0x67CuLL);
  v42[0] = *a3;
  v43 = *(a3 + 2);
  v44 = 64;
  if (v11 - 1 <= 0x671)
  {
    memcpy(v46, v12, v11);
    v46[825] = 0;
    v45 = v11;
  }

  LOBYTE(__p) = 0;
  sub_1000216B4(&__p);
  v18 = sub_1002D30A0(v42);
  sub_100022214(&__p);
  if (v18 && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086B76C();
  }

  sub_10002249C(&__p);
  *&v24 = v19;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[1]);
  }

  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  sub_1000088CC(v39);
  return v18;
}

void sub_10072C014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  sub_1007FC91C(&a16);
  sub_1000088CC(&a52);
  _Unwind_Resume(a1);
}

uint64_t sub_10072C07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, a1 + 64);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  sub_100007AD0(&v16);
  v5 = sub_100007774(&v17);
  sub_100018384(a2, &__p);
  v6 = sub_100007774(v5);
  sub_100007774(v6);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v7 = sub_100007774(&v17);
  LOBYTE(__p) = a3;
  v8 = sub_100007774(v7);
  sub_100007774(v8);
  v9 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
  {
    std::stringbuf::str();
    v10 = v15 >= 0 ? &__p : __p;
    *buf = 136446210;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  LOBYTE(__p) = 0;
  sub_1000216B4(&__p);
  v11 = sub_1002D31E8(a3);
  sub_100022214(&__p);
  if (v11 && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086B7D4();
  }

  sub_10002249C(&__p);
  *&v17 = v12;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  sub_1000088CC(v32);
  return v11;
}

void sub_10072C3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_1007FC91C(&a16);
  sub_1000088CC(v16 - 96);
  _Unwind_Resume(a1);
}

BOOL sub_10072C438(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 64);
  v2 = *(a1 + 128) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10072C488@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 64);
  v6 = *(a1 + 16920);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 16920;
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
  if (v7 != a1 + 16920 && *(v7 + 32) <= a2)
  {
    v12 = *(v7 + 48);
    *a3 = &off_100AE0AB8;
    a3[1] = v12;
    if (v12)
    {
      sub_10000C69C(v12);
    }
  }

  else
  {
LABEL_9:
    *a3 = &off_100AE0AB8;
    a3[1] = 0;
  }

  return sub_1000088CC(v13);
}

id sub_10072C574(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v15 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 mutableCopy];
    }

    else
    {
      v8 = +[NSMutableData data];
    }

    v10 = v8;
    v11 = [v8 length];
    v12 = [v7 length];
    v14 = [v7 length] + 1;
    if (((v11 + v12 + 2) & 0xE0) == 0)
    {
      [v10 appendBytes:&v14 length:1];
      [v10 appendBytes:&v15 length:1];
      [v10 appendData:v7];
    }

    v9 = [v10 copy];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

id sub_10072C6A8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    if ([v4 length] >= 0x20)
    {
LABEL_4:
      v6 = v4;
      goto LABEL_23;
    }

    v7 = [v4 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableData data];
  }

  v8 = v7;
  v9 = [v7 length];
  v10 = [v8 bytes];
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v10[v11];
      if (&v9[-v11] < v14)
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086B83C();
        }

        goto LABEL_18;
      }

      v15 = v13 + 1;
      if (v10[(v13 + 1)] == 255)
      {
        break;
      }

      v13 = v14 + v15;
      if (v9 > (v14 + v15))
      {
        v11 = (v14 + v15);
        if (v12++ < 0x31)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v17 = (v14 + 1);
    if ([v8 length] < v17 + v13)
    {
      goto LABEL_18;
    }

    v25 = [v8 subdataWithRange:{v13, v17}];
    v20 = [NSMutableData dataWithData:v25];

    [v8 replaceBytesInRange:v13 withBytes:v17 length:{0, 0}];
  }

  else
  {
LABEL_18:
    v27 = 76;
    v18 = [NSData dataWithBytes:&v27 length:2];
    v19 = sub_10072C574(v18, 0, 255, v18);
    v20 = [v19 mutableCopy];
  }

  v21 = [v8 length];
  v22 = [v20 length];
  if (((v22 + v21 + [v5 length]) & 0xE0) != 0)
  {
    v23 = v4;
  }

  else
  {
    [v20 appendData:v5];
    v26 = [v20 length] - 1;
    [v20 replaceBytesInRange:0 withBytes:1 length:{&v26, 1}];
    [v8 appendData:v20];
    v23 = [v8 copy];
  }

  v6 = v23;

LABEL_23:

  return v6;
}

id sub_10072C9A0(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 mutableCopy];
    }

    else
    {
      v17 = 26;
      v10 = [NSData dataWithBytes:&v17 length:1];
      v11 = sub_10072C574(v10, 0, 1, v10);
      v8 = [v11 mutableCopy];
    }

    v12 = +[NSMutableData data];
    v16[0] = a3;
    v16[1] = [v7 length];
    [v12 appendBytes:v16 length:2];
    v13 = sub_10072C6A8([v12 appendData:v7], v8, v12);
    v14 = [v13 mutableCopy];

    v9 = [v14 copy];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

void sub_10072CB48(uint64_t *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10072FD14(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 20 * a2;
  }
}

uint64_t sub_10072CB84(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10072FEC4(v5, v5 + 1, v4 + 32);
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

void sub_10072CC0C(id a1)
{
  v1 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086B964(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v11 = 0;
  sub_1000216B4(&v11);
  if (!sub_100018C6C())
  {
    sub_1002D0B38();
    sub_100022214(&v11);
    v9 = sub_10000E92C();
    sub_100007E30(v10, "updateAdvertisement busy with address change timeout");
    sub_100693260(v9, 4074, v10, 1);
  }

  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086B9D8();
  }

  sub_10002249C(&v11);
}

void sub_10072CCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C((v14 - 17));
  _Unwind_Resume(a1);
}

_BYTE *sub_10072CCFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086BA14(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v23 = 0;
  v10 = sub_10000E92C();
  sub_100007E30(v21, "LE");
  sub_100007E30(__p, "CrashOnAdvertisingWatchdog");
  v11 = (*(*v10 + 72))(v10, v21, __p, &v23);
  v12 = v23;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = v11 & v12;
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v13)
  {
    v16 = sub_10000E92C();
    sub_100007E30(v18, "updateAdvertisement in unsettled state timeout");
    sub_100693260(v16, 4075, v18, 1);
  }

  LOBYTE(v21[0]) = 0;
  sub_1000216B4(v21);
  if (sub_100018C6C())
  {
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10086B9D8();
    }
  }

  else
  {
    sub_100022214(v21);
    v14 = *(v1 + 56);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10072CF08;
    v17[3] = &unk_100ADF8F8;
    v17[4] = v1;
    sub_10008E008(v14, 200, v17);
  }

  return sub_10002249C(v21);
}

void sub_10072CEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10072CF08(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10008E164(v1, 0);
  v3 = 0;
  sub_1000216B4(&v3);
  sub_1002D0B38();
  sub_10008D888(1);
  sub_100022214(&v3);
  sub_100086C20(v1, 0);
  return sub_10002249C(&v3);
}

uint64_t sub_10072CFB4(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    return result;
  }

  v5 = result;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, result + 64);
  *(v5 + 16960) = a4;
  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *(v5 + 144) = v6;
  v19 = 0;
  sub_1000216B4(&v19);
  *(v5 + 16992) = sub_1002B2C34();
  sub_100022214(&v19);
  v7 = *(v5 + 16992);
  if (v7 >= 0x673)
  {
    v8 = qword_100BCE9A8;
    if (!os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_FAULT))
    {
LABEL_7:
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10086BC34(v7, v8, v9, v10, v11, v12, v13, v14);
      }

      *(v5 + 16992) = 1650;
      goto LABEL_10;
    }

    *buf = 67109120;
    v22 = v7;
    _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "fControllerMaxExtendedAdvertisingPayloadSize=%d", buf, 8u);
    v7 = *(v5 + 16992);
    if (v7 >= 0x673)
    {
      v8 = qword_100BCE9A8;
      goto LABEL_7;
    }
  }

LABEL_10:
  *(v5 + 49) = 1;
  sub_10000801C(v20);
  v15 = *(v5 + 56);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10072D1F8;
  v18[3] = &unk_100ADF8F8;
  v18[4] = v5;
  sub_10000CA94(v15, v18);
  v16 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    if (sub_100096908())
    {
      v17 = sub_100096908();
    }

    else
    {
      v17 = 1;
    }

    *buf = 67109120;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Stack supports %d advertising instances", buf, 8u);
  }

  sub_10002249C(&v19);
  return sub_1000088CC(v20);
}

void sub_10072D1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_10002249C(&a17);
  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10072D204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B50C68 != -1)
  {
    sub_10086ABE0();
  }

  v4 = off_100B50C60;
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);

  return sub_10072CFB4(v4, v5, a3, v6);
}

uint64_t sub_10072D25C(uint64_t a1, int a2, int a3, int a4)
{
  v7 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109632;
    v10[1] = a2;
    v11 = 1024;
    v12 = a3;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setAddressTypeForInstance instance:%d addrType:%d refreshRootKeys:%d", v10, 0x14u);
  }

  if (a2 != 1)
  {
    return 3;
  }

  if ((a3 & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  if (a4)
  {
    v8 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setAddressTypeForInstance requires refresh of identity info", v10, 2u);
    }

    if (qword_100B508C0 != -1)
    {
      sub_10086BCA4();
    }

    if (sub_1007B661C(off_100B508B8))
    {
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_10086BCCC();
      }

      return 148;
    }
  }

  LOBYTE(v10[0]) = 0;
  sub_1000216B4(v10);
  if (!sub_1002D2590(a3, 1))
  {
    sub_10002249C(v10);
    return 0;
  }

  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086BD34();
  }

  sub_10002249C(v10);
  return 147;
}

uint64_t sub_10072D454(uint64_t a1, unint64_t a2)
{
  v5 = 0;
  sub_1000216B4(&v5);
  v3 = sub_1002D1164(a2);
  if (v3 && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
  {
    sub_10086BD9C();
  }

  sub_10002249C(&v5);
  return v3;
}

void sub_10072D4E4()
{
  v0 = sub_100007EE8();

  sub_10000CA94(v0, &stru_100B0AC68);
}

void sub_10072D514(id a1)
{
  v1 = 0;
  sub_1000216B4(&v1);
  sub_1002D260C();
  sub_10002249C(&v1);
}

void sub_10072D564()
{
  v0 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Stream state changed, re-evaluating scan params", v2, 2u);
  }

  v1 = sub_100007EE8();
  sub_10000CA94(v1, &stru_100B0AC88);
}

void sub_10072D5DC(id a1)
{
  if (qword_100B50C68 != -1)
  {
    sub_10086ABE0();
  }

  sub_100086C20();
}

void sub_10072D630(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "POWER");
  sub_100007E30(__p, "ForceWakeADVConfig");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7AC2);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10072D6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_10072D708(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v69 = v3;
  if (v3)
  {
    sub_10000C69C(v3);
    v3 = v69;
  }

  sub_1000987D4(v3, 2, __p);
  v4 = __p[0];
  v5 = __p[1];
  sub_1000987D4(v69, 4, __p);
  v7 = __p[0];
  v6 = __p[1];
  sub_1000987D4(v69, 16, __p);
  v8 = __p[0];
  v67 = __p[1];
  v9 = qword_100BCE9A8;
  v10 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v11 = v69;
  if (v10)
  {
    sub_100018384(*(a2 + 32), __p);
    if ((SBYTE7(v77) & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (*(v69 + 12))
    {
      v13 = "";
    }

    else
    {
      v13 = "NON-";
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v73 = 2082;
    v74 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s %{public}sConnectable", buf, 0x16u);
    if (SBYTE7(v77) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v69;
  }

  if (*(v11 + 39) < 0)
  {
    sub_100008904(__p, *(v11 + 16), *(v11 + 24));
  }

  else
  {
    *__p = *(v11 + 16);
    *&v77 = *(v11 + 32);
  }

  if (SBYTE7(v77) < 0)
  {
    v14 = __p[1];
    operator delete(__p[0]);
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  else if (!BYTE7(v77))
  {
    goto LABEL_28;
  }

  v15 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v69 + 39) < 0)
    {
      sub_100008904(__p, *(v69 + 16), *(v69 + 24));
    }

    else
    {
      *__p = *(v69 + 16);
      *&v77 = *(v69 + 32);
    }

    v16 = __p;
    if (SBYTE7(v77) < 0)
    {
      v16 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump:       Name: %s", buf, 0xCu);
    if (SBYTE7(v77) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_28:
  v17 = qword_100BCE9A8;
  v18 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v19 = v69;
  if (v18)
  {
    v20 = *(v69 + 264);
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump:       instance:%d", __p, 8u);
    v19 = v69;
  }

  if (*(v19 + 256))
  {
    v21 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_100063D0C();
      LODWORD(__p[0]) = 138543362;
      *(__p + 4) = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:       instanceAddress: %{public}@", __p, 0xCu);
    }
  }

  v68 = v7;
  v23 = v5 - v4;
  if (v5 != v4)
  {
    v24 = v4;
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    *v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v77);
    if (0xCCCCCCCCCCCCCCCDLL * (v23 >> 2) <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = 0xCCCCCCCCCCCCCCCDLL * (v23 >> 2);
    }

    v26 = v24;
    do
    {
      sub_10003B85C(buf, v26);
      v27 = sub_100007774(&v77);
      sub_100007774(v27);
      if (v75 < 0)
      {
        operator delete(*buf);
      }

      v26 += 20;
      --v25;
    }

    while (v25);
    v28 = qword_100BCE9A8;
    v4 = v24;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v29 = v75 >= 0 ? buf : *buf;
      *v70 = 136446210;
      *&v70[4] = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v70, 0xCu);
      if (v75 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v77 = v30;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[1]);
    }

    std::locale::~locale(&v78);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  v31 = v6 - v68;
  if (v31)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    *v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v77);
    if (0xCCCCCCCCCCCCCCCDLL * (v31 >> 2) <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = 0xCCCCCCCCCCCCCCCDLL * (v31 >> 2);
    }

    v33 = v68;
    do
    {
      sub_10003B85C(buf, v33);
      v34 = sub_100007774(&v77);
      sub_100007774(v34);
      if (v75 < 0)
      {
        operator delete(*buf);
      }

      v33 += 20;
      --v32;
    }

    while (v32);
    v35 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v36 = v75 >= 0 ? buf : *buf;
      *v70 = 136446210;
      *&v70[4] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v70, 0xCu);
      if (v75 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v77 = v37;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[1]);
    }

    std::locale::~locale(&v78);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  v38 = v67 - v8;
  if (v67 != v8)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    *v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v77);
    if (0xCCCCCCCCCCCCCCCDLL * (v38 >> 2) <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = 0xCCCCCCCCCCCCCCCDLL * (v38 >> 2);
    }

    v40 = v8;
    do
    {
      sub_10003B85C(buf, v40);
      v41 = sub_100007774(&v77);
      sub_100007774(v41);
      if (v75 < 0)
      {
        operator delete(*buf);
      }

      v40 += 20;
      --v39;
    }

    while (v39);
    v42 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v43 = v75 >= 0 ? buf : *buf;
      *v70 = 136446210;
      *&v70[4] = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v70, 0xCu);
      if (v75 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v77 = v44;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[1]);
    }

    std::locale::~locale(&v78);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  v45 = v69;
  if (*(v69 + 308) == 1)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    *v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v77);
    v46 = std::ostream::operator<<();
    sub_100007774(v46);
    v47 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v48 = v75 >= 0 ? buf : *buf;
      *v70 = 136446210;
      *&v70[4] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v70, 0xCu);
      if (v75 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v77 = v49;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[1]);
    }

    std::locale::~locale(&v78);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v45 = v69;
  }

  if (*(v45 + 360) == 1)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    *v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v77);
    v50 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v51 = v75 >= 0 ? buf : *buf;
      *v70 = 136446210;
      *&v70[4] = v51;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v70, 0xCu);
      if (v75 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v77 = v52;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[1]);
    }

    std::locale::~locale(&v78);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v45 = v69;
  }

  if (*(v45 + 264) == 2)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    *v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v77);
    v53 = qword_100BCEA40;
    if (os_log_type_enabled(qword_100BCEA40, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v54 = v75 >= 0 ? buf : *buf;
      *v70 = 136446210;
      *&v70[4] = v54;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v70, 0xCu);
      if (v75 < 0)
      {
        operator delete(*buf);
      }
    }

    *&v77 = v55;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[1]);
    }

    std::locale::~locale(&v78);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  if (*(v69 + 128))
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    *v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    *__p = 0u;
    sub_100007AD0(__p);
    sub_100007774(&v77);
    v56 = *(v69 + 112);
    if (v56 != (v69 + 120))
    {
      do
      {
        sub_10003B85C(buf, v56 + 4);
        v57 = sub_100007774(&v77);
        v58 = sub_100007774(v57);
        sub_10000C250((v56 + 7), v70);
        v59 = sub_100007774(v58);
        sub_100007774(v59);
        if (v71 < 0)
        {
          operator delete(*v70);
        }

        if (v75 < 0)
        {
          operator delete(*buf);
        }

        v60 = v56[1];
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
            v61 = v56[2];
            v62 = *v61 == v56;
            v56 = v61;
          }

          while (!v62);
        }

        v56 = v61;
      }

      while (v61 != (v69 + 120));
    }

    sub_100007774(&v77);
    v63 = sub_10000E92C();
    if ((*(*v63 + 176))(v63))
    {
      v64 = qword_100BCEA40;
      if (os_log_type_enabled(qword_100BCEA40, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v65 = v75 >= 0 ? buf : *buf;
        *v70 = 136446210;
        *&v70[4] = v65;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v70, 0xCu);
        if (v75 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    *&v77 = v66;
    if (SHIBYTE(v82) < 0)
    {
      operator delete(v81[1]);
    }

    std::locale::~locale(&v78);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  if (v69)
  {
    sub_10000C808(v69);
  }

  if (v8)
  {
    operator delete(v8);
  }

  if (v68)
  {
    operator delete(v68);
  }

  if (v4)
  {
    operator delete(v4);
  }
}

void sub_10072EB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a16)
  {
    sub_10000C808(a16);
    if (!v33)
    {
LABEL_3:
      if (!v32)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v33)
  {
    goto LABEL_3;
  }

  operator delete(v33);
  if (!v32)
  {
LABEL_4:
    if (!v31)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  operator delete(v32);
  if (!v31)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v31);
  goto LABEL_6;
}

void sub_10072ECA4(uint64_t a1)
{
  v2 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: -------------------- LE Broadcaster ---------------------", buf, 2u);
    v2 = qword_100BCE9A8;
  }

  v3 = a1 + 0x4000;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 128);
    if (v4 > 3)
    {
      v5 = "UNKNOWN";
    }

    else
    {
      v5 = off_100B0ADD8[v4];
    }

    v6 = (CFAbsoluteTimeGetCurrent() - *(a1 + 136));
    v7 = *(a1 + 17172);
    *buf = 136446978;
    *v65 = v5;
    *&v65[8] = 1024;
    *&v65[10] = v4;
    *&v65[14] = 1024;
    *&v65[16] = v6;
    LOWORD(v66) = 1024;
    *(&v66 + 2) = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Advertisement state: %{public}s(%d) duration:%d seconds fSystemWillSleep: %d", buf, 0x1Eu);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 144);
    *buf = 67109120;
    *v65 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Advertisement tech: %d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "not";
    if (*(a1 + 16961))
    {
      v9 = "";
    }

    *buf = 136446210;
    *v65 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Extended advertising %{public}s supported", buf, 0xCu);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 16960);
    *buf = 67109120;
    *v65 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Advertisement # of instances: %d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "OFF";
    if (*(a1 + 49))
    {
      v11 = "ON";
    }

    *buf = 136446210;
    *v65 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Stack:%{public}s", buf, 0xCu);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 16992);
    *buf = 67109120;
    *v65 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fControllerMaxExtendedAdvertisingPayloadSize:%d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 16962);
    *buf = 67109120;
    *v65 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fHostSupportsBackgroundAdvertisingOnExtended:%d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 17104) != 0;
    *buf = 67109120;
    *v65 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fConfigAdvertisingPowerAssertion:%d", buf, 8u);
    v2 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 17024);
    v16 = "NO";
    if (*(a1 + 17032))
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    if (*(a1 + 17033))
    {
      v16 = "YES";
    }

    *buf = 134218754;
    *v65 = v15;
    *&v65[8] = 2082;
    *&v65[10] = v17;
    *&v65[18] = 2082;
    v66 = v16;
    v67 = 2082;
    v68 = "YES";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fAdvertisingPowerAssertion:%llx fAddressChangeInProgress:%{public}s fDeferringUpdateAdvertisingState:%{public}s fAddressRefreshTimeoutCB created:%{public}s", buf, 0x2Au);
    v2 = qword_100BCE9A8;
  }

  if (*(a1 + 16960))
  {
    v18 = 0;
    v19 = a1 + 152;
    do
    {
      v20 = v3;
      v21 = a1 + 3352 * v18;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        _X8 = v21 + 6857;
        v23 = v19 + 3352 * v18;
        __asm { PRFM            #0, [X8] }

        LODWORD(_X8) = *(v23 + 1);
        LODWORD(v23) = *(v23 + 2);
        *buf = 67109632;
        *v65 = v18;
        *&v65[4] = 1024;
        *&v65[6] = _X8;
        *&v65[10] = 1024;
        *&v65[12] = v23;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: %d. type:%d interval:%d ", buf, 0x14u);
        v2 = qword_100BCE9A8;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        _X8 = v21 + 8512;
        v30 = v19 + 3352 * v18;
        __asm { PRFM            #0, [X8] }

        LODWORD(_X8) = *(v30 + 1656);
        *buf = 68158210;
        *v65 = _X8;
        *&v65[4] = 2096;
        *&v65[6] = v30 + 5;
        *&v65[14] = 1024;
        *&v65[16] = _X8;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:     data:%.*P(%d)", buf, 0x18u);
        v2 = qword_100BCE9A8;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        _X8 = v21 + 10164;
        v33 = v19 + 3352 * v18;
        __asm { PRFM            #0, [X8] }

        LODWORD(_X8) = *(v33 + 3308);
        *buf = 68158210;
        *v65 = _X8;
        *&v65[4] = 2096;
        *&v65[6] = v33 + 1658;
        *&v65[14] = 1024;
        *&v65[16] = _X8;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:     scanRspData:%.*P(%d)", buf, 0x18u);
        v2 = qword_100BCE9A8;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 17009 + v18);
        *buf = 67109120;
        *v65 = v35;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:     fObjectLocatorResponseOnAdvertisingHandle:%d", buf, 8u);
        v2 = qword_100BCE9A8;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 17014 + v18);
        *buf = 67109120;
        *v65 = v36;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:     fLEAdvTxEpaAdvertisingHandle:%d", buf, 8u);
        v2 = qword_100BCE9A8;
      }

      ++v18;
      v3 = v20;
    }

    while (v18 < *(v20 + 576));
  }

  v37 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v37)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Advertising sessions:", buf, 2u);
  }

  v38 = *(a1 + 16912);
  v39 = (a1 + 16920);
  if (v38 != a1 + 16920)
  {
    do
    {
      sub_10072D708(v37, v38);
      v40 = *(v38 + 8);
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = *(v38 + 16);
          _ZF = *v41 == v38;
          v38 = v41;
        }

        while (!_ZF);
      }

      v38 = v41;
    }

    while (v41 != v39);
  }

  v42 = sub_1000269D4();
  v43 = *(a1 + 16952);
  if (v43)
  {
    v44 = v42;
    v45 = a1 + 16936;
    v46 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v65 = v43;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "statedump: Backgrounded advertising sessions (%ld, sorted):", buf, 0xCu);
    }

    for (i = *(a1 + 16944); i != v45; i = *(i + 8))
    {
      v48 = *v39;
      if (!*v39)
      {
        goto LABEL_67;
      }

      v49 = *(i + 16);
      v50 = (a1 + 16920);
      do
      {
        v51 = v48[4];
        _CF = v51 >= v49;
        v52 = v51 < v49;
        if (_CF)
        {
          v50 = v48;
        }

        v48 = v48[v52];
      }

      while (v48);
      if (v50 == v39 || v49 < v50[4])
      {
LABEL_67:
        v50 = (a1 + 16920);
      }

      v53 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v50[4], __p);
        v54 = __p;
        if (v63 < 0)
        {
          v54 = __p[0];
        }

        v55 = v50[6];
        v56 = v44 - *(v55 + 320) / 0x3E8uLL;
        v57 = *(v55 + 328) / 0x3E8uLL;
        *buf = 136446722;
        *v65 = v54;
        *&v65[8] = 2048;
        *&v65[10] = v56;
        *&v65[18] = 2048;
        v66 = v57;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s for %llu seconds, timeout after %llu seconds", buf, 0x20u);
        if (v63 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v58 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "statedump: ADV Instance address history (recent first):", buf, 2u);
  }

  for (j = *(a1 + 17120); j != a1 + 17112; j = *(j + 8))
  {
    v60 = *(j + 16);
    v61 = *(j + 32);
    sub_100729F34(a1, &v60);
  }
}

void sub_10072F5D4(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10072F650;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
}

void sub_10072F66C(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10072F6E8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
}

void sub_10072F6E8(uint64_t a1)
{
  v3 = *(a1 + 32);
  *(v3 + 17172) = 0;
  if (*(v3 + 49) == 1)
  {
    v5[5] = v1;
    v5[6] = v2;
    v4 = *(v3 + 56);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10072F774;
    v5[3] = &unk_100ADF8F8;
    v5[4] = v3;
    sub_10000CA94(v4, v5);
  }
}

uint64_t sub_10072F788(uint64_t a1, int a2)
{
  v3 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10072F808;
  v5[3] = &unk_100AE0900;
  v6 = a2;
  sub_10000D334(v3, v5);
  return 1;
}

void sub_10072F808(uint64_t a1)
{
  if (qword_100B512D8 != -1)
  {
    sub_10086BE04();
  }

  if (*(off_100B512D0 + 24) == 1 && *(off_100B512D0 + 25) == 1 && (*(off_100B512D0 + 27) & 1) == 0)
  {
    if (qword_100B512F8 != -1)
    {
      sub_10086A8E0();
    }

    v2 = off_100B512F0;
    v3 = *(a1 + 32);

    sub_1003BF718(v2, v3);
  }
}

void sub_10072F914(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_10072FC2C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    __p[5] = &off_100AE0AB8;
    v3 = __p[6];
    if (v3)
    {
      sub_10000C808(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_10072FD14(uint64_t *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = &v5[20 * a2];
      v10 = 20 * a2;
      do
      {
        sub_10003A364(v5);
        v5 += 20;
        v10 -= 20;
      }

      while (v10);
      v5 = v9;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * (&v5[-*a1] >> 2) + a2;
    if (v6 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_1000C7698();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x666666666666666)
    {
      v8 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      sub_100018404(a1, v8);
    }

    v11 = 4 * (&v5[-*a1] >> 2);
    v12 = 5 * a2;
    v13 = v11 + 20 * a2;
    v14 = 4 * v12;
    v15 = v11;
    do
    {
      v15 = sub_10003A364(v15) + 20;
      v14 -= 20;
    }

    while (v14);
    v16 = *a1;
    v17 = a1[1];
    v18 = v11 + *a1 - v17;
    if (v17 != *a1)
    {
      v19 = v11 + *a1 - v17;
      do
      {
        v20 = *v16;
        *(v19 + 16) = v16[4];
        *v19 = v20;
        v19 += 20;
        v16 += 5;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v13;
    a1[2] = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t sub_10072FEC4(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10072FF54(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100730134();
  }

  return result;
}

uint64_t *sub_10072FF54(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2)
  {
    v11 = *(a2 + 32);
    v12 = sub_10011327C(*a5);
    if (v12 <= sub_10011327C(v11))
    {
      v15 = *a5;
      v16 = sub_10011327C(*(a2 + 32));
      if (v16 <= sub_10011327C(v15))
      {
        *a3 = a2;
        *a4 = a2;
        return a4;
      }

      a4 = a2 + 1;
      v17 = a2[1];
      if (v17)
      {
        v18 = a2[1];
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        v24 = a2;
        do
        {
          v19 = v24[2];
          v21 = *v19 == v24;
          v24 = v19;
        }

        while (!v21);
      }

      if (v19 != v9)
      {
        v25 = *(v19 + 32);
        v26 = sub_10011327C(*a5);
        if (v26 <= sub_10011327C(v25))
        {
          goto LABEL_28;
        }

        v17 = *a4;
      }

      if (v17)
      {
        *a3 = v19;
        return v19;
      }

      else
      {
        *a3 = a2;
      }

      return a4;
    }
  }

  if (*a1 == a2)
  {
    v14 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v14;
      return v14 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v13 = *a2;
  if (*a2)
  {
    do
    {
      v14 = v13;
      v13 = v13[1];
    }

    while (v13);
  }

  else
  {
    v20 = a2;
    do
    {
      v14 = v20[2];
      v21 = *v14 == v20;
      v20 = v14;
    }

    while (v21);
  }

  v22 = *a5;
  v23 = sub_10011327C(*(v14 + 32));
  if (v23 > sub_10011327C(v22))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1001131CC(a1, a3, a5);
}

void sub_1007301D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007301F0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007301F0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    __p[5] = &off_100AE0A78;
    v3 = __p[6];
    if (v3)
    {
      sub_10000C808(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100730340(uint64_t result, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *(v3 + 12) = 2080;
  *(v3 + 14) = result;
  return result;
}

uint64_t sub_100730358(uint64_t a1)
{
  *a1 = off_100B0AE08;
  *(a1 + 8) = off_100B0AE68;
  *(a1 + 664) = 0;
  *(a1 + 672) = 5;
  *(a1 + 683) = 0;
  bzero((a1 + 16), 0x288uLL);
  if (_os_feature_enabled_impl())
  {
    v2 = 5;
  }

  else
  {
    v2 = 4;
  }

  *(a1 + 680) = v2;
  v3 = sub_10000C798();
  if ((*(*v3 + 56))(v3, 1))
  {
    v4 = sub_10000C7D0();
    v5 = (*(*v4 + 2888))(v4);
    v6 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v6)
      {
        sub_10086BE4C();
      }
    }

    else if (v6)
    {
      sub_10086BE18();
    }

    *(a1 + 664) |= 1u;
  }

  v7 = sub_10000C798();
  if ((*(*v7 + 56))(v7, 16))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
    {
      sub_10086BE80();
    }

    *(a1 + 664) |= 0x10u;
  }

  v8 = sub_10000C798();
  if ((*(*v8 + 56))(v8, 0x80000))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
    {
      sub_10086BEB4();
    }

    *(a1 + 664) |= 0x80000u;
  }

  v9 = sub_10000C798();
  if ((*(*v9 + 56))(v9, 8))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
    {
      sub_10086BEE8();
    }

    *(a1 + 664) |= 8u;
  }

  v10 = sub_10000C798();
  v11 = (*(*v10 + 56))(v10, 0x100000);
  v12 = qword_100BCEAC0;
  if (v11)
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Source supports GATT", buf, 2u);
      v12 = qword_100BCEAC0;
    }

    *(a1 + 664) |= 0x100000u;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 664);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Source supported profiles = %x", buf, 8u);
  }

  v23 = 0;
  v14 = sub_10000E92C();
  if (((*(*v14 + 8))(v14) & 1) == 0)
  {
    v19 = *(a1 + 672);
LABEL_39:
    v19 |= 0x10uLL;
    *(a1 + 672) = v19;
    goto LABEL_40;
  }

  v15 = sub_10000E92C();
  sub_100007E30(buf, "FastConnect");
  sub_100007E30(__p, "DisableFastConnectAll");
  (*(*v15 + 72))(v15, buf, __p, &v23);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(*buf);
  }

  v16 = qword_100BCEAC0;
  v17 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
  v18 = v23;
  if (v17)
  {
    *buf = 67109120;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "disableFastConnectAll = %d", buf, 8u);
    v18 = v23;
  }

  v19 = *(a1 + 672);
  if ((v18 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_40:
  *(a1 + 682) = (v19 & 0x10) != 0;
  return a1;
}

void sub_1007307C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  for (i = 632; i != 8; i -= 208)
  {
  }

  _Unwind_Resume(a1);
}

void *sub_100730830(void *a1)
{
  *a1 = off_100B0AE08;
  a1[1] = off_100B0AE68;
  sub_100730EA8(a1);
  for (i = 79; i != 1; i -= 26)
  {
  }

  return a1;
}

void sub_1007308B4(_Unwind_Exception *a1)
{
  for (i = 632; i != 8; i -= 208)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1007308DC(void *a1)
{
  sub_100730830(a1);

  operator delete();
}

void sub_100730914(uint64_t a1)
{
  v7 = 0;
  v2 = sub_10000E92C();
  if ((*(*v2 + 8))(v2))
  {
    v3 = sub_10000E92C();
    sub_100007E30(buf, "FastConnect");
    sub_100007E30(__p, "DisableFastConnect");
    (*(*v3 + 72))(v3, buf, __p, &v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    if (v9 < 0)
    {
      operator delete(*buf);
    }

    v4 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "disableFastConnect = %d", buf, 8u);
      if (v7)
      {
        return;
      }
    }

    else if (v7)
    {
      return;
    }
  }

  sub_1002ADECC(sub_100730B2C);
  mach_timebase_info(&dword_100BC7AD4);
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  sub_1000F0D9C(off_100B508E8 + 240, a1 + 8);
}

void sub_100730AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100730C34(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = qword_100BCEAC0;
  v6 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = sub_100730F30(v6, *(a2 + 16));
    v8[0] = 68158466;
    v8[1] = 6;
    v9 = 2096;
    v10 = a2 + 8;
    v11 = 2080;
    v12 = v7;
    v13 = 2080;
    v14 = sub_100730F30(v7, a3);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{bluetooth:BD_ADDR}.6P state changed from %s to %s", v8, 0x26u);
  }

  *(a2 + 16) = a3;
}

void sub_100730D34(uint64_t a1)
{
  v2 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Destroy all devices", v5, 2u);
  }

  for (i = 0; i != 624; i += 208)
  {
    sub_100730C34(a1, a1 + i + 16, 0);
    v4 = *(a1 + i + 216);
    *(a1 + i + 216) = 0;
  }
}

uint64_t sub_100730DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E6A38(a1, a2 + 128);
  if (!v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = a1 + v5;
      if (!*(a1 + v5 + 32))
      {
        break;
      }

      v5 += 208;
      if (v5 == 624)
      {
        return 0;
      }
    }

    *(v6 + 16) = 0u;
    v4 = v6 + 16;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    v7 = *(a2 + 128);
    *(v4 + 12) = *(a2 + 132);
    *(v4 + 8) = v7;
    sub_100730C34(a1, v4, 1u);
    *(v4 + 20) = *(a1 + 664);
    v8 = sub_10054E230(a2);
    *(v4 + 53) = v8;
    *(v4 + 145) = 0;
    if (v8 != 2)
    {
      sub_10054E1E8(a2, 2);
    }
  }

  return v4;
}

void sub_100730EA8(uint64_t a1)
{
  sub_1002ADED8();
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF6C();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1);
  if (qword_100B508F0 != -1)
  {
    sub_10086BF80();
  }

  v2 = off_100B508E8 + 240;

  sub_10007A3F0(v2, a1 + 8);
}

const char *sub_100730F30(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return "Unknown State";
  }

  else
  {
    return off_100B0B130[a2];
  }
}

uint64_t sub_100730F54(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v4 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    v5 = v27 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Check Fast Connect Support for device %s", buf, 0xCu);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v20 = 0;
  sub_1000216B4(&v20);
  v6 = sub_1000E1FE8(a2 + 128);
  if (v6 && (v7 = *(v6 + 148), v7 >= 3))
  {
    sub_100022214(&v20);
    v9 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Killing Fast Connect attempt, already connected %d", __p, 8u);
    }

    v8 = 4506;
  }

  else
  {
    v8 = sub_10028E3EC(2u, &v21, 0);
    if (v8)
    {
      sub_100022214(&v20);
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086C1C4();
      }
    }

    else
    {
      v10 = *(a1 + 664);
      if (*(a2 + 1032) == 1)
      {
        v11 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest not in contacts removing HFP and GATT profiles from support", __p, 2u);
        }

        v10 &= 0xFFEFFFFE;
      }

      word_100BCEB70 = 1;
      word_100BCEB72 = *(a1 + 680);
      byte_100BCEB74 = *(v21 + 4);
      byte_100BCEB75 = *(v21 + 5);
      byte_100BCEB76 = *(sub_1000B12AC(v21) + 36);
      byte_100BCEB77 = *(sub_1000B12AC(v21) + 37);
      dword_100BCEB78 = v10;
      unk_100BCEB7C = *(a1 + 672);
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      byte_100BCEB84 = sub_1005A5338(off_100B50A98);
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      byte_100BCEB85 = sub_1005A5338(off_100B50A98) >> 8;
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      byte_100BCEB86 = sub_1005A5338(off_100B50A98) >> 16;
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      byte_100BCEB87 = sub_1005A5338(off_100B50A98) >> 24;
      byte_100BCEB88 = sub_1002F8128();
      byte_100BCEB89 = sub_1002F8128() >> 8;
      byte_100BCEB8A = sub_1002F8128() >> 16;
      byte_100BCEB8B = sub_1002F8128() >> 24;
      unk_100BCEB8C = 1;
      if (qword_100B50AA0 != -1)
      {
        sub_10086BF1C();
      }

      v12 = sub_1005A5340(off_100B50A98);
      byte_100BCEB8E = BYTE4(v12);
      byte_100BCEB8F = BYTE5(v12);
      byte_100BCEB90 = BYTE6(v12);
      byte_100BCEB91 = HIBYTE(v12);
      word_100BCEB92 = v12;
      byte_100BCEB94 = BYTE2(v12);
      byte_100BCEB95 = BYTE3(v12);
      *(sub_1000B12AC(v21) + 88) = sub_1007314F0;
      v13 = v21;
      *(v21 + 32) = sub_100731580;
      *(sub_1000B12AC(v13) + 16) = 0;
      v8 = sub_1002AD274(sub_100731960, *(v21 + 4), a2 + 128, &word_100BCEB70, 42);
      v14 = qword_100BCEAC0;
      v15 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v15)
        {
          sub_1000E5A58(a2, __p);
          v16 = v27 >= 0 ? __p : __p[0];
          *buf = 136446466;
          v23 = v16;
          v24 = 1024;
          v25 = v8;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to send Fast Connect Echo Request for device %{public}s with status %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10028E908(v21);
      }

      else
      {
        if (v15)
        {
          sub_1000E5A58(a2, __p);
          v17 = v27 >= 0 ? __p : __p[0];
          *buf = 136446466;
          v23 = v17;
          v24 = 1024;
          v25 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sent Fast Connect Echo Request for device %{public}s with status %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v18 = sub_1000E6A38(a1, a2 + 128);
        *v18 = a2;
        sub_100730C34(a1, v18, 2u);
      }

      sub_100022214(&v20);
    }
  }

  sub_10002249C(&v20);
  return v8;
}

void sub_100731580(int a1, const void *a2, unsigned int a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_10000C704(v11, a2, a3);
  memset(v10, 0, sizeof(v10));
  sub_10057C4B4(v10, 0, v11);
  if (sub_10057C548(v10) == 6)
  {
    v9 = 0;
    if (qword_100B540E0 != -1)
    {
      sub_10086C234();
    }

    v4 = (off_100B540D8 + 64);
    v5 = 3;
    while (!*(v4 - 8) || *v4 != a1)
    {
      v4 += 104;
      if (!--v5)
      {
        v6 = 0;
        goto LABEL_10;
      }
    }

    v6 = v4 - 24;
LABEL_10:
    v7 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setup Complete received, setting all channels to OPEN", v8, 2u);
    }

    if (v6)
    {
      if (v6[32])
      {
        sub_1000ABC7C(v6[32], &v9);
        if (v9)
        {
          if (sub_1000B12AC(v9))
          {
            *(sub_1000B12AC(v9) + 16) = 4;
          }
        }
      }

      if (v6[27])
      {
        sub_1000ABC7C(v6[27], &v9);
        if (v9)
        {
          if (sub_1000B12AC(v9))
          {
            *(sub_1000B12AC(v9) + 16) = 4;
          }
        }
      }

      if (v6[37])
      {
        sub_1000ABC7C(v6[37], &v9);
        if (v9)
        {
          if (sub_1000B12AC(v9))
          {
            *(sub_1000B12AC(v9) + 16) = 4;
          }
        }
      }

      if (v6[42])
      {
        sub_1000ABC7C(v6[42], &v9);
        if (v9)
        {
          if (sub_1000B12AC(v9))
          {
            *(sub_1000B12AC(v9) + 16) = 4;
          }
        }
      }

      if (v6[57])
      {
        sub_1000ABC7C(v6[57], &v9);
        if (v9)
        {
          if (sub_1000B12AC(v9))
          {
            *(sub_1000B12AC(v9) + 16) = 4;
          }
        }
      }

      if (v6[47])
      {
        sub_1000ABC7C(v6[47], &v9);
        if (v9)
        {
          if (sub_1000B12AC(v9))
          {
            *(sub_1000B12AC(v9) + 16) = 4;
          }
        }
      }

      if (v6[62])
      {
        sub_1000ABC7C(v6[62], &v9);
        if (v9)
        {
          if (sub_1000B12AC(v9))
          {
            *(sub_1000B12AC(v9) + 16) = 4;
          }
        }
      }
    }
  }

  sub_100017F4C();
  operator new();
}

void sub_100731960()
{
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
  {
    sub_10086C25C();
  }

  sub_100017F4C();
  operator new();
}

uint64_t sub_100731A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100730DD8(a1, a2);
  v5 = v4;
  if (*(v4 + 16) < 2)
  {
    if (!*(v4 + 152))
    {
      *(v4 + 152) = mach_absolute_time();
    }

    *(v5 + 160) = mach_absolute_time();
    v8 = +[NSMutableDictionary dictionary];
    v9 = *(v5 + 200);
    *(v5 + 200) = v8;

    return sub_100730F54(a1, a2);
  }

  else
  {
    v6 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_1000C23E0(a2, __p);
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = sub_100730F30(v10, *(v5 + 16));
      *buf = 136315394;
      v16 = v11;
      v17 = 2080;
      v18 = v12;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "PFC in progress for device %s, ignoring duplicate request - current state is %s", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 4508;
  }
}

void sub_100731BF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24) & *(a2 + 20);
  v6 = qword_100BCEAC0;
  if (v4 >= 4)
  {
    v7 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = sub_100730F30(v7, v4);
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Descriptor was already sent once! FCState %s", __p, 0xCu);
      v6 = qword_100BCEAC0;
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(*a2, __p);
    v8 = (SBYTE7(v53) & 0x80u) == 0 ? __p : __p[0];
    *buf = 136315394;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Compose Profile Descriptor for device %s with supported profiles %x", buf, 0x12u);
    if (SBYTE7(v53) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(*a2 + 1032) == 1)
  {
    v9 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter this is a guest not in contacts device removing HFP / GATT profiles", __p, 2u);
    }

    v5 &= 0xFFEFFFFE;
  }

  if (v5)
  {
    *__p = 0u;
    v53 = 0u;
    sub_10057C6A8(__p, 0);
    v10 = *(a1 + 680);
    sub_10057C6D0(__p, 3);
    sub_10057C6D0(__p, 0);
    v11 = sub_10057C70C(__p, v10);
    sub_100732BD0(v11, __p, v12, a2);
    sub_10057C70C(__p, 2);
    v48 = 0;
    sub_1000216B4(&v48);
    if ((v5 & 0x10) != 0)
    {
      if (qword_100B50AE0 != -1)
      {
        sub_10086BFF8();
      }

      v13 = sub_1004DF8F8(qword_100B50AD8, *a2 + 128, (a2 + 54), (a2 + 64));
      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        if (qword_100B50AE0 != -1)
        {
          sub_10086BFF8();
        }

        v14 = sub_1004DF968(qword_100B50AD8, buf, (a2 + 54), (a2 + 64)) == 0;
      }

      sub_100022214(&v48);
      if (v14)
      {
        sub_10057C75C(__p, 0x10u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v15 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v15);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v16 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v17 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v16, v17);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      else
      {
        if (qword_100B50AE0 != -1)
        {
          sub_10086BFF8();
        }

        sub_1004E0FE4(qword_100B50AD8, *a2, *(a2 + 54), *(a2 + 64), 0, *(a2 + 135));
        v5 &= ~0x10u;
        *(a2 + 54) = 0;
        *(a2 + 64) = 0;
      }

      sub_1000618AC(&v48);
      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if (v5)
    {
      if (qword_100B50AD0 != -1)
      {
        sub_10086C05C();
      }

      if (sub_1005E6468(off_100B50AC8, *a2 + 128, (a2 + 74), (a2 + 140)))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a2 + 145) != 1 || sub_100308ED4(*a2 + 128, (a2 + 124)) == 0;
      }

      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      if (v18)
      {
        if (qword_100B50AD0 != -1)
        {
          sub_10086C05C();
        }

        LOBYTE(v18) = sub_1005E6558(off_100B50AC8, buf, *a2, (a2 + 74), (a2 + 140), *(a2 + 145)) == 0;
      }

      sub_100022214(&v48);
      if (v18)
      {
        sub_10057C75C(__p, 1u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v19 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v19);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v20 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v21 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v20, v21);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      else
      {
        if (qword_100B50AD0 != -1)
        {
          sub_10086C05C();
        }

        sub_1005E64C8(off_100B50AC8, *a2 + 128, (a2 + 74), (a2 + 140));
        v5 &= ~1u;
        *(a2 + 74) = 0;
        if (*(a2 + 145) == 1)
        {
          sub_1000618AC(&v48);
          sub_100309078(*a2 + 128, *(a2 + 124));
          sub_100022214(&v48);
          *(a2 + 124) = 0;
        }
      }

      sub_1000618AC(&v48);
      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if ((v5 & 0x80000) != 0)
    {
      if (qword_100B50950 != -1)
      {
        sub_10086C0FC();
      }

      v22 = sub_100358A40(off_100B50948, *a2 + 128, (a2 + 84));
      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      if (v22)
      {
        v23 = 0;
      }

      else
      {
        if (qword_100B50950 != -1)
        {
          sub_10086C0FC();
        }

        v23 = sub_100358AA8(off_100B50948, *a2, buf, (a2 + 84)) == 0;
      }

      sub_10054236C(*a2, v23);
      sub_100022214(&v48);
      if (v23)
      {
        sub_10057C75C(__p, 0x80000u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v24 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v24);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v25 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v26 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v25, v26);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      else
      {
        if (qword_100B50950 != -1)
        {
          sub_10086C0FC();
        }

        sub_10035B49C(off_100B50948, *a2, *(a2 + 84), 114);
        v5 &= ~0x80000u;
        *(a2 + 84) = 0;
      }

      sub_1000618AC(&v48);
      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if ((v5 & 8) != 0)
    {
      if (qword_100B541D0 != -1)
      {
        sub_10086C160();
      }

      v27 = sub_1006CD320(off_100B541C8, *a2 + 128, (a2 + 94));
      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      if (v27)
      {
        v28 = 0;
      }

      else
      {
        if (qword_100B541D0 != -1)
        {
          sub_10086C160();
        }

        v28 = sub_1006CD38C(off_100B541C8, buf, (a2 + 94), (a2 + 104)) == 0;
      }

      sub_100022214(&v48);
      if (v28)
      {
        sub_10057C75C(__p, 8u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v29 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v29);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v30 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v31 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v30, v31);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      else
      {
        if (qword_100B541D0 != -1)
        {
          sub_10086C160();
        }

        sub_1006CDBC8(off_100B541C8, *a2, *(a2 + 94), *(a2 + 104), 0);
        v5 &= ~8u;
        *(a2 + 94) = 0;
        *(a2 + 104) = 0;
      }

      sub_1000618AC(&v48);
      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if ((v5 & 0x100000) != 0)
    {
      v32 = (a2 + 114);
      sub_1001BD074(*a2 + 128, (a2 + 114));
      memset(buf, 0, sizeof(buf));
      sub_10057C6A8(buf, 0);
      v45 = 0;
      v44 = 0;
      v43 = 0;
      if (sub_1000C0D40(*(a2 + 114), &v43, &v45, &v44))
      {
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086C290();
        }

        sub_1001BD1BC(*a2 + 128, *(a2 + 114));
        v5 &= ~0x100000u;
        *v32 = 0;
      }

      else
      {
        sub_10057C6D0(buf, 1);
        sub_10057C6D0(buf, 7);
        sub_10057C70C(buf, *v32);
        sub_10057C70C(buf, v43);
        sub_10057C70C(buf, v45);
        sub_10057C6D0(buf, v44);
        sub_10057C75C(__p, 0x100000u);
        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v33 = sub_10000C5E0(v49);
        sub_10057C70C(__p, v33);
        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }

        sub_10000C704(v49, *&buf[8], *&buf[16] - *&buf[8]);
        v34 = sub_10000C5F8(v49);
        sub_10000C704(&v46, *&buf[8], *&buf[16] - *&buf[8]);
        v35 = sub_10000C5E0(&v46);
        sub_10057C6B8(__p, v34, v35);
        v46 = &off_100AE0A78;
        if (v47)
        {
          sub_10000C808(v47);
        }

        *v49 = &off_100AE0A78;
        if (v50)
        {
          sub_10000C808(v50);
        }
      }

      if (*&buf[8])
      {
        *&buf[16] = *&buf[8];
        operator delete(*&buf[8]);
      }
    }

    if (*(a2 + 20) != v5)
    {
      *(a2 + 20) = v5;
    }

    v36 = *(a2 + 48);
    v37 = *a2;
    sub_10000C704(buf, __p[1], v53 - __p[1]);
    v38 = sub_10000C5F8(buf);
    sub_10000C704(v49, __p[1], v53 - __p[1]);
    v39 = sub_10000C5E0(v49);
    v40 = sub_10028E1F0(sub_100732EE4, v36, (v37 + 128), v38, v39);
    *v49 = &off_100AE0A78;
    if (v50)
    {
      sub_10000C808(v50);
    }

    *buf = &off_100AE0A78;
    if (*&buf[8])
    {
      sub_10000C808(*&buf[8]);
    }

    if (v40)
    {
      v41 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10000C704(buf, __p[1], v53 - __p[1]);
        v42 = sub_10000C5E0(buf);
        *v49 = 67109376;
        *&v49[4] = v40;
        LOWORD(v50) = 1024;
        *(&v50 + 2) = v42;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Fast Connect L2CAP Write failed with result %d for data size %d", v49, 0xEu);
        *buf = &off_100AE0A78;
        if (*&buf[8])
        {
          sub_10000C808(*&buf[8]);
        }
      }

      sub_1000DE594(a1, *a2 + 128, v40);
    }

    else
    {
      sub_100730C34(a1, a2, 4u);
    }

    sub_10002249C(&v48);
    if (__p[1])
    {
      *&v53 = __p[1];
      operator delete(__p[1]);
    }
  }
}

void sub_1007329D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t (**a16)(), atomic_uint *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  a16 = &off_100AE0A78;
  if (a17)
  {
    sub_10000C808(a17);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_10002249C(&a15);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_100732BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10057C70C(a2, 1);
  *__p = 0u;
  v16 = 0u;
  sub_10057C6A8(__p, 0);
  sub_10057C6D0(__p, 1);
  sub_10057C6D0(__p, 4);
  sub_10057C75C(__p, *(a4 + 20));
  sub_10057C6D0(__p, 2);
  sub_10057C6D0(__p, 8);
  sub_10057C7AC(__p, 0);
  sub_10057C6D0(__p, 3);
  sub_10057C6D0(__p, 4);
  v14 = 0;
  v13 = 0;
  sub_1000216B4(&v13);
  sub_1002AB4B8(&v14);
  sub_10057C75C(__p, v14);
  sub_10057C6D0(__p, 4);
  sub_10057C6D0(__p, 8);
  __src = 0;
  sub_10028E064(&__src);
  sub_10057C6B8(__p, &__src, 8);
  sub_10000C704(&v11, __p[1], v16 - __p[1]);
  v6 = sub_10000C5E0(&v11);
  sub_10057C70C(a2, v6);
  v11 = &off_100AE0A78;
  if (v12)
  {
    sub_10000C808(v12);
  }

  sub_10000C704(&v11, __p[1], v16 - __p[1]);
  v7 = sub_10000C5F8(&v11);
  sub_10000C704(&v9, __p[1], v16 - __p[1]);
  v8 = sub_10000C5E0(&v9);
  sub_10057C6B8(a2, v7, v8);
  v9 = &off_100AE0A78;
  if (v10)
  {
    sub_10000C808(v10);
  }

  v11 = &off_100AE0A78;
  if (v12)
  {
    sub_10000C808(v12);
  }

  sub_10002249C(&v13);
  if (__p[1])
  {
    *&v16 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_100732E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (a13)
  {
    sub_10000C808(a13);
  }

  sub_10002249C(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100732EE4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = a3;
    v8 = 1024;
    v9 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Wrote %d bytes with result %d", v7, 0xEu);
  }
}

_BYTE *sub_100732FA0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (sub_10057C598(a3) != 1 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086C2CC();
  }

  v43 = 0;
  sub_1000216B4(&v43);
  v42 = 0;
  v41 = 0;
  if (sub_1002AD958(a2, &v41))
  {
    sub_100022214(&v43);
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C33C();
    }

    return sub_10002249C(&v43);
  }

  v6 = sub_1000E6A38(a1, &v41);
  v7 = *(v6 + 16);
  if (v7 >= 5 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT))
  {
    sub_10086C3B0(v7);
  }

  sub_100730C34(a1, v6, 5u);
  v8 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(*v6, __p);
    v9 = (SBYTE7(v45) & 0x80u) == 0 ? __p : __p[0];
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Parsing Profile Descriptor for device %s", &buf, 0xCu);
    if (SBYTE7(v45) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = sub_10057C598(a3);
  v11 = sub_1000E1FE8(&v41);
  if (v10)
  {
    v12 = v11;
    while (1)
    {
      v13 = sub_10057C548(a3);
      if (v13 < 0)
      {
        v14 = sub_10057C598(a3);
        v15 = 65533;
      }

      else
      {
        v14 = sub_10057C548(a3);
        v15 = 65534;
      }

      v16 = v13 & 0x7F;
      if (v16 <= 2)
      {
        break;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          if (v14)
          {
            if (v14 != 8)
            {
              goto LABEL_42;
            }

            __p[0] = 0;
            sub_10057C50C(a3, __p, 8uLL);
            sub_100295954(sub_1002D7A34);
            sub_100291C84(&v41, 0, 3, __p, 8, 0);
            sub_1002958EC(sub_1002D7A34, 48);
          }

          goto LABEL_45;
        }

LABEL_32:
        v17 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v16;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "fastConnectParseProfileDescriptorMessage Key not recognized %d", __p, 8u);
          if (v14)
          {
LABEL_42:
            v18 = qword_100BCEAC0;
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p[0]) = 67109632;
              HIDWORD(__p[0]) = v16;
              LOWORD(__p[1]) = 1024;
              *(&__p[1] + 2) = v14;
              HIWORD(__p[1]) = 1024;
              LODWORD(v45) = v14;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "fastConnectParseProfileDescriptorMessage Key:%d Dumped %d of %d bytes ", __p, 0x14u);
            }

            sub_10057C660(a3, v14);
            goto LABEL_45;
          }
        }

        else if (v14)
        {
          goto LABEL_42;
        }

        goto LABEL_45;
      }

      if (v14)
      {
        if (v14 != 4)
        {
          goto LABEL_42;
        }

        *(v12 + 229) = sub_10057C600(a3);
        *(v12 + 228) = 1;
      }

LABEL_45:
      v19 = v10 + v15;
      v10 = v10 + v15 - v14;
      if (v19 == v14)
      {
        goto LABEL_46;
      }
    }

    if (v16 == 1)
    {
      if (v14)
      {
        if (v14 != 4)
        {
          goto LABEL_42;
        }

        sub_10057C600(a3);
      }

      goto LABEL_45;
    }

    if (v16 == 2)
    {
      if (v14)
      {
        if (v14 != 8)
        {
          goto LABEL_42;
        }

        __p[0] = 0;
        sub_10057C50C(a3, __p, 8uLL);
      }

      goto LABEL_45;
    }

    goto LABEL_32;
  }

LABEL_46:
  sub_100022214(&v43);
  if (sub_10057C598(a3) != 2 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086C42C();
  }

  v39 = v41;
  v40 = v42;
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  v20 = sub_1000E6554(off_100B508E8, &v39, 1);
  v21 = 0;
  while ((sub_10000C5E0(a3 + 8) - *(a3 + 24)) >= 9)
  {
    v22 = sub_10057C600(a3);
    v23 = sub_10057C598(a3);
    if (sub_10000C5E0(a3 + 8) - *(a3 + 24) < v23)
    {
      v28 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        v32 = sub_10000C5E0(a3 + 8) - *(a3 + 24);
        LODWORD(__p[0]) = 67109376;
        HIDWORD(__p[0]) = v23;
        LOWORD(__p[1]) = 1024;
        *(&__p[1] + 2) = v32;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "fastConnectParseProfileDescriptorMessage Length Error Descriptor length %u remaining %u", __p, 0xEu);
      }

      break;
    }

    v24 = v23;
    v25 = sub_100007618(v23, 0x68764FADuLL);
    if (!v25)
    {
      break;
    }

    sub_10057C50C(a3, v25, v24);
    buf = 0uLL;
    sub_10000C704(&buf, v25, v24);
    *__p = 0u;
    v45 = 0u;
    v26 = sub_10057C4B4(__p, 0, &buf);
    if (v22 <= 15)
    {
      if (v22 == 1)
      {
        if (qword_100B50AD0 != -1)
        {
          sub_10086C05C();
        }

        if (sub_1005E68C0(off_100B50AC8, __p, v20, *(v6 + 74), (v6 + 140), (v6 + 142), (v6 + 143), (v6 + 144)))
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086C504(&v35, v36);
          }

          *(v6 + 20) &= ~1u;
          if (qword_100B50AD0 != -1)
          {
            sub_10086C05C();
          }

          sub_1005E64C8(off_100B50AC8, *v6 + 128, (v6 + 74), (v6 + 140));
          if (*(v6 + 145) == 1)
          {
            sub_1000618AC(&v43);
            sub_100309078(*v6 + 128, *(v6 + 124));
            sub_100022214(&v43);
            *(v6 + 124) = 0;
          }
        }
      }

      else if (v22 == 8)
      {
        if (qword_100B541D0 != -1)
        {
          sub_10086C160();
        }

        sub_1006CD538();
      }
    }

    else
    {
      switch(v22)
      {
        case 0x10:
          if (qword_100B50AE0 != -1)
          {
            sub_10086BFF8();
          }

          if (sub_1004DFC48(qword_100B50AD8, __p, v20, *(v6 + 54), *(v6 + 64), (v6 + 136)))
          {
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              sub_10086C538(&v37, v38);
            }

            *(v6 + 20) &= ~0x10u;
            if (qword_100B50AE0 != -1)
            {
              sub_10086BFF8();
            }

            sub_1004E0FE4(qword_100B50AD8, v20, *(v6 + 54), *(v6 + 64), *(v6 + 136), *(v6 + 135));
          }

          else
          {
            if (qword_100B50AE0 != -1)
            {
              sub_10086BFF8();
            }

            sub_1004E08E4(qword_100B50AD8, *(v6 + 136), (v6 + 135), (v6 + 134), (v6 + 138), *(v6 + 64));
          }

          break;
        case 0x80000:
          if (qword_100B50950 != -1)
          {
            sub_10086C0FC();
          }

          if (sub_100358C64(off_100B50948, __p, v20, *(v6 + 84)))
          {
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              sub_10086C4D0(&v33, v34);
            }

            *(v6 + 20) &= ~0x80000u;
            if (qword_100B50950 != -1)
            {
              sub_10086C0FC();
            }

            sub_10035B49C(off_100B50948, *v6, *(v6 + 84), 114);
          }

          break;
        case 0x100000:
          sub_1007339FC(v26, __p, v27, *(v6 + 114));
          break;
      }
    }

    sub_10000C1E8(v25);
    __p[1] = &off_100AE0A78;
    if (v45)
    {
      sub_10000C808(v45);
    }

    *&buf = &off_100AE0A78;
    if (*(&buf + 1))
    {
      sub_10000C808(*(&buf + 1));
    }

    v21 |= v22;
  }

  v29 = *(v6 + 20);
  if (v29 != v21)
  {
    v30 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 67109376;
      HIDWORD(__p[0]) = v21;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v29;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Profile mismatch error expected 0x%x received 0x%x", __p, 0xEu);
      v29 = *(v6 + 20);
    }

    *(v6 + 20) = v29 & v21;
  }

  return sub_10002249C(&v43);
}

uint64_t sub_1007339FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = sub_10000C5E0(a2 + 8) - *(a2 + 24);
  if (v5 >= 1)
  {
    v20 = 0;
    do
    {
      v6 = sub_10057C548(a2);
      if (v6 < 0)
      {
        v7 = sub_10057C598(a2);
        v8 = -3;
      }

      else
      {
        v7 = sub_10057C548(a2);
        v8 = -2;
      }

      v9 = v6 & 0x7F;
      if (v9 == 16)
      {
        v10 = v7;
        v11 = v7;
        if (v7 != 2)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9 != 3)
        {
          if (v9 == 1)
          {
            v10 = v7;
            v11 = v7;
            if (v7 >= 7)
            {
              v12 = sub_10057C598(a2);
              sub_10057C598(a2);
              v13 = sub_10057C598(a2);
              sub_10057C548(a2);
              buf[0] = 0;
              sub_1000216B4(buf);
              if (sub_1000ABC7C(a4, &v20) || !sub_1000B12AC(v20))
              {
                if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
                {
                  sub_10086C56C(&v18, v19);
                }
              }

              else
              {
                *(sub_1000B12AC(v20) + 8) = v12;
                *(sub_1000B12AC(v20) + 32) = v13;
              }

              sub_100022214(buf);
              sub_10002249C(buf);
              v10 = (v7 - 7);
              v11 = v7 - 7;
            }
          }

          else
          {
            v14 = qword_100BCEAC0;
            v10 = v7;
            v11 = v7;
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v22 = v9;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "parseGATTDescriptor Key not recognized %d", buf, 8u);
              v10 = v7;
              v11 = v7;
            }
          }

LABEL_22:
          if (v11)
          {
            v15 = qword_100BCEAC0;
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109632;
              v22 = v9;
              v23 = 1024;
              v24 = v10;
              v25 = 1024;
              v26 = v7;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "parseGATTDescriptor Key:%d Dumped %d of %d bytes ", buf, 0x14u);
            }

            sub_10057C660(a2, v11);
          }

          goto LABEL_26;
        }

        v10 = v7;
        v11 = v7;
        if (v7 != 2)
        {
          goto LABEL_22;
        }
      }

      sub_10057C598(a2);
LABEL_26:
      LOWORD(v5) = v5 + v8 - v7;
    }

    while (v5 > 0);
  }

  return 0;
}

void sub_100733CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100733CFC(uint64_t a1, uint64_t a2)
{
  WORD2(v29) = 0;
  LODWORD(v29) = 0;
  v28 = 0;
  sub_1000216B4(&v28);
  if (sub_1002AD958(a2, &v29))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C5A0();
    }
  }

  else
  {
    sub_100022214(&v28);
    v4 = sub_1000E6A38(a1, &v29);
    v5 = *(v4 + 16);
    if (v5 >= 6 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT))
    {
      sub_10086C614(v5);
    }

    v6 = mach_absolute_time();
    *(v4 + 184) = v6;
    v7 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (v6 - *(v4 + 176)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Descriptor took %d ms", buf, 8u);
      v7 = qword_100BCEAC0;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(*v4, buf);
      v9 = (SBYTE7(v33) & 0x80u) == 0 ? buf : *buf;
      v10 = *(v4 + 20);
      *v31 = 136315394;
      *&v31[4] = v9;
      *&v31[12] = 1024;
      *&v31[14] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Compose Service Configure message for device %s with profiles %x", v31, 0x12u);
      if (SBYTE7(v33) < 0)
      {
        operator delete(*buf);
      }
    }

    v26 = v29;
    v27 = WORD2(v29);
    if (qword_100B508F0 != -1)
    {
      sub_10086BF44();
    }

    v11 = sub_1000E6554(off_100B508E8, &v26, 1);
    if (*(v4 + 20))
    {
      v12 = v11;
      *buf = 0u;
      v33 = 0u;
      sub_10057C6A8(buf, 0);
      v13 = *(a1 + 680);
      sub_10057C6D0(buf, 5);
      sub_10057C6D0(buf, 0);
      sub_10057C70C(buf, v13);
      sub_10057C70C(buf, 2);
      v14 = *(v4 + 20);
      if ((v14 & 0x10) != 0)
      {
        sub_10057C75C(buf, 0x10u);
        sub_10057C70C(buf, 6);
        sub_10057C6D0(buf, 21);
        sub_10057C6D0(buf, 1);
        sub_10057C6D0(buf, *(v4 + 134));
        sub_10057C6D0(buf, 20);
        sub_10057C6D0(buf, 1);
        sub_10057C6D0(buf, *(v4 + 135));
        v14 = *(v4 + 20);
      }

      if (v14)
      {
        sub_10057C75C(buf, 1u);
        sub_10057C70C(buf, 0);
        v14 = *(v4 + 20);
      }

      if ((v14 & 0x80000) != 0)
      {
        memset(v31, 0, sizeof(v31));
        sub_10057C6A8(v31, 0);
        if (qword_100B50950 != -1)
        {
          sub_10086C0FC();
        }

        if (sub_10035A5DC(off_100B50948, v12, v31))
        {
          *(v4 + 20) &= ~0x80000u;
          if (qword_100B50950 != -1)
          {
            sub_10086C0FC();
          }

          sub_10035B49C(off_100B50948, *v4, *(v4 + 84), 114);
        }

        else
        {
          sub_10057C75C(buf, 0x80000u);
          sub_10000C704(&v29 + 1, *&v31[8], *&v31[16] - *&v31[8]);
          v15 = sub_10000C5E0(&v29 + 8);
          sub_10057C70C(buf, v15);
          *(&v29 + 1) = &off_100AE0A78;
          if (v30)
          {
            sub_10000C808(v30);
          }

          sub_10000C704(&v29 + 1, *&v31[8], *&v31[16] - *&v31[8]);
          v16 = sub_10000C5F8(&v29 + 8);
          sub_10000C704(&v24, *&v31[8], *&v31[16] - *&v31[8]);
          v17 = sub_10000C5E0(&v24);
          sub_10057C6B8(buf, v16, v17);
          v24 = &off_100AE0A78;
          if (v25)
          {
            sub_10000C808(v25);
          }

          *(&v29 + 1) = &off_100AE0A78;
          if (v30)
          {
            sub_10000C808(v30);
          }
        }

        if (*&v31[8])
        {
          *&v31[16] = *&v31[8];
          operator delete(*&v31[8]);
        }

        v14 = *(v4 + 20);
      }

      if ((v14 & 8) != 0)
      {
        sub_10057C75C(buf, 8u);
        sub_10057C70C(buf, 0);
        v14 = *(v4 + 20);
      }

      if ((v14 & 0x100000) != 0)
      {
        sub_10057C75C(buf, 0x100000u);
        sub_10057C70C(buf, 0);
      }

      sub_1000618AC(&v28);
      sub_10000C704(v31, *&buf[8], v33 - *&buf[8]);
      v18 = sub_10000C5F8(v31);
      sub_10000C704(&v29 + 1, *&buf[8], v33 - *&buf[8]);
      v19 = sub_10000C5E0(&v29 + 8);
      v20 = sub_10028E1F0(sub_100732EE4, a2, &v29, v18, v19);
      *(&v29 + 1) = &off_100AE0A78;
      if (v30)
      {
        sub_10000C808(v30);
      }

      *v31 = &off_100AE0A78;
      if (*&v31[8])
      {
        sub_10000C808(*&v31[8]);
      }

      sub_100022214(&v28);
      if (v20)
      {
        v21 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10000C704(v31, *&buf[8], v33 - *&buf[8]);
          v23 = sub_10000C5E0(v31);
          DWORD2(v29) = 67109376;
          HIDWORD(v29) = v20;
          LOWORD(v30) = 1024;
          *(&v30 + 2) = v23;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "L2CAP Write failed with result %d for data size %d", &v29 + 8, 0xEu);
          *v31 = &off_100AE0A78;
          if (*&v31[8])
          {
            sub_10000C808(*&v31[8]);
          }
        }

        sub_1000DE594(a1, *v4 + 128, v20);
      }

      else
      {
        sub_100730C34(a1, v4, 6u);
      }

      if (*&buf[8])
      {
        *&v33 = *&buf[8];
        operator delete(*&buf[8]);
      }
    }
  }

  return sub_10002249C(&v28);
}

void sub_1007343BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t (**a16)(), atomic_uint *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  a16 = &off_100AE0A78;
  if (a17)
  {
    sub_10000C808(a17);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  sub_10002249C(&a14);
  _Unwind_Resume(a1);
}

void sub_100734540(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if ((*a2 & 0x10) != 0)
  {
    v16 = 0;
    sub_1000216B4(&v16);
    v15 = 0;
    v8 = sub_1000ABC7C(*(a4 + 64), &v15);
    v9 = sub_1000B12AC(v15);
    sub_100022214(&v16);
    if (!v8 && v9)
    {
      if (qword_100B50AE0 != -1)
      {
        sub_10086BFF8();
      }

      sub_1004E0B64(qword_100B50AD8, a3);
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C690();
    }

    *(a4 + 20) &= ~0x10u;
    *a2 &= ~0x10u;
    if (qword_100B50AE0 != -1)
    {
      sub_10086BFF8();
    }

    sub_1004E0FE4(qword_100B50AD8, a3, *(a4 + 54), *(a4 + 64), *(a4 + 136), *(a4 + 135));
    sub_10002249C(&v16);
    v7 = *a2;
  }

  if (v7)
  {
    v15 = 0;
    v16 = 0;
    sub_1000216B4(&v16);
    v10 = sub_1000ABC7C(*(a4 + 74), &v15);
    sub_100022214(&v16);
    if (!v10)
    {
      if (qword_100B50AD0 != -1)
      {
        sub_10086C05C();
      }

      sub_1005E7028(off_100B50AC8, a3);
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C700();
    }

    *(a4 + 20) &= ~1u;
    *a2 &= ~1u;
    sub_10002249C(&v16);
    v7 = *a2;
  }

  if ((v7 & 0x80000) != 0)
  {
    v15 = 0;
    v16 = 0;
    sub_1000216B4(&v16);
    v11 = sub_1000ABC7C(*(a4 + 84), &v15);
    sub_100022214(&v16);
    if (!v11)
    {
      if (qword_100B50950 != -1)
      {
        sub_10086C0FC();
      }

      sub_10035B168(off_100B50948, a3);
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C770();
    }

    *(a4 + 20) &= ~0x80000u;
    *a2 &= ~0x80000u;
    sub_10002249C(&v16);
    v7 = *a2;
  }

  if ((v7 & 8) != 0)
  {
    v15 = 0;
    v16 = 0;
    sub_1000216B4(&v16);
    v12 = sub_1000ABC7C(*(a4 + 94), &v15);
    sub_100022214(&v16);
    if (!v12)
    {
      if (qword_100B541D0 != -1)
      {
        sub_10086C160();
      }

      sub_1006CD988(off_100B541C8, a3);
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C7E0();
    }

    *(a4 + 20) &= ~0x80000u;
    *a2 &= ~0x80000u;
    sub_10002249C(&v16);
    v7 = *a2;
  }

  if ((v7 & 0x100000) != 0)
  {
    v16 = 0;
    sub_1000216B4(&v16);
    v15 = 0;
    v13 = sub_1000ABC7C(*(a4 + 114), &v15);
    v14 = sub_1000B12AC(v15);
    sub_100022214(&v16);
    if (!v13 && v14)
    {
      if (qword_100B54790 != -1)
      {
        sub_10086C850();
      }

      sub_100528538(qword_100B54788, a3);
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C878();
    }

    *(a4 + 20) &= ~0x100000u;
    *a2 &= ~0x100000u;
    sub_10002249C(&v16);
  }
}

void sub_10073499C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if ((*a2 & 0x10) != 0)
  {
    v23[0] = 0;
    sub_1000216B4(v23);
    v25 = 0;
    v8 = sub_1000ABC7C(*(a4 + 64), &v25);
    v9 = sub_1000B12AC(v25);
    sub_100022214(v23);
    if (!v8 && v9)
    {
      if (qword_100B50AE0 != -1)
      {
        sub_10086BFF8();
      }

      v10 = qword_100B50AD8;
      v11 = *a4;
      v12 = *(a4 + 136);
      v13 = sub_1000B12AC(v25);
      sub_1004E0C60(v10, v11, v12, *(v13 + 32), 0);
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086C8E8();
    }

    *(a4 + 20) &= ~0x10u;
    *a2 &= ~0x10u;
    if (qword_100B50AE0 != -1)
    {
      sub_10086BFF8();
    }

    sub_1004E0FE4(qword_100B50AD8, a3, *(a4 + 54), *(a4 + 64), *(a4 + 136), *(a4 + 135));
    if (qword_100B50AE0 != -1)
    {
      sub_10086BFF8();
    }

    sub_1004E0C60(qword_100B50AD8, *a4, *(a4 + 136), 0, 4509);
  }

  if (v7)
  {
    v25 = 0;
    v24 = 0;
    sub_1000216B4(&v24);
    v14 = sub_1000ABC7C(*(a4 + 74), &v25);
    sub_100022214(&v24);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086C958();
      }

      *(a4 + 20) &= ~1u;
      *a2 &= ~1u;
      if (qword_100B50AD0 != -1)
      {
        sub_10086C05C();
      }

      sub_1005E7124(off_100B50AC8, a3, a4 + 140, a4 + 142, a4 + 143, *(a4 + 144), 4510);
    }

    if (qword_100B50AD0 != -1)
    {
      sub_10086C05C();
    }

    sub_1005E7124(off_100B50AC8, a3, a4 + 140, a4 + 142, a4 + 143, *(a4 + 144), 0);
  }

  if ((v7 & 0x80000) != 0)
  {
    v25 = 0;
    v23[0] = 0;
    sub_1000216B4(v23);
    v15 = sub_1000ABC7C(*(a4 + 84), &v25);
    sub_100022214(v23);
    if (v15)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086C9C8();
      }

      *(a4 + 20) &= ~0x80000u;
      *a2 &= ~0x80000u;
      if (qword_100B50950 != -1)
      {
        sub_10086C0FC();
      }

      sub_10035B264(off_100B50948, a3, 4512);
    }

    if (qword_100B50950 != -1)
    {
      sub_10086C0FC();
    }

    sub_10035B264(off_100B50948, a3, 0);
  }

  if ((v7 & 8) != 0)
  {
    v25 = 0;
    v23[0] = 0;
    sub_1000216B4(v23);
    v16 = sub_1000ABC7C(*(a4 + 94), &v25);
    sub_100022214(v23);
    if (v16)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086CA38();
      }

      *(a4 + 20) &= ~8u;
      *a2 &= ~8u;
      if (qword_100B541D0 != -1)
      {
        sub_10086C160();
      }

      sub_1006CDA84(off_100B541C8, a3, 4511);
    }

    if (qword_100B541D0 != -1)
    {
      sub_10086C160();
    }

    sub_1006CDA84(off_100B541C8, a3, 0);
  }

  if ((v7 & 0x100000) != 0)
  {
    v24 = 0;
    sub_1000216B4(&v24);
    v25 = 0;
    v17 = (a4 + 114);
    v18 = sub_1000ABC7C(*(a4 + 114), &v25);
    if (!v18)
    {
      if (sub_1000B12AC(v25))
      {
        v19 = *v17;
        v20 = *(sub_1000B12AC(v25) + 36);
        v21 = sub_1000B12AC(v25);
        v18 = sub_1001BD0EC(v19, v20, *(v21 + 32), 0);
      }

      else
      {
        v18 = 0;
      }
    }

    sub_100022214(&v24);
    v22 = qword_100BCEAC0;
    if (v18)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086CAA8();
      }

      if (qword_100B54790 != -1)
      {
        sub_10086C850();
      }

      sub_100528634(qword_100B54788, a3, 4513);
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "GATT Setup Complete", v23, 2u);
    }

    *v17 = 0;
    sub_10002249C(&v24);
  }
}

_BYTE *sub_100734FEC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v96 = 0;
  v95 = 0;
  v94 = 0;
  sub_1000216B4(&v94);
  v5 = sub_1002AD958(a2, &v95);
  sub_100022214(&v94);
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CB18();
    }

    return sub_10002249C(&v94);
  }

  v92 = v95;
  v93 = v96;
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  v81 = sub_1000E6554(off_100B508E8, &v92, 1);
  v6 = sub_1000E6A38(a1, &v95);
  if (v6)
  {
    v84 = v6;
    v7 = *(v6 + 16);
    if (v7 >= 9 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT))
    {
      sub_10086CB8C(v7);
    }

    sub_100730C34(a1, v84, 9u);
    v8 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(*v84, __p);
      v9 = (SBYTE7(v114) & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setup Complete received from device %s", buf, 0xCu);
      if (SBYTE7(v114) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10057C598(a3) != 1 && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CC08();
    }

    v10 = sub_10057C598(a3);
    v83 = +[NSMutableDictionary dictionary];
    sub_1000618AC(&v94);
    v11 = sub_1000E1FE8(&v95);
    LOWORD(v12) = v10;
    if (v10 >= 1)
    {
      v13 = v11;
      v80 = 0;
      while (1)
      {
        v14 = sub_10057C548(a3);
        if (v14 < 0)
        {
          v15 = sub_10057C598(a3);
          v16 = -3;
        }

        else
        {
          v15 = sub_10057C548(a3);
          v16 = -2;
        }

        v17 = v14 & 0x7F;
        if (v17 <= 2)
        {
          break;
        }

        if (v17 != 3)
        {
          if (v17 == 4)
          {
            if (v15)
            {
              if (v15 != 8)
              {
                goto LABEL_45;
              }

              __p[0] = 0;
              sub_10057C50C(a3, __p, 8uLL);
              sub_100295954(sub_1002D7A34);
              sub_100291C84(&v95, 0, 3, __p, 8, 0);
              sub_1002958EC(sub_1002D7A34, 48);
            }

            goto LABEL_48;
          }

LABEL_35:
          v18 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v17;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Key %d not recognized in setup complete message", __p, 8u);
            if (v15)
            {
LABEL_45:
              v19 = qword_100BCEAC0;
              if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
              {
                LODWORD(__p[0]) = 67109632;
                HIDWORD(__p[0]) = v17;
                LOWORD(__p[1]) = 1024;
                *(&__p[1] + 2) = v15;
                HIWORD(__p[1]) = 1024;
                LODWORD(v114) = v15;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Key:%d Dumped %d of %d bytes ", __p, 0x14u);
              }

              sub_10057C660(a3, v15);
              goto LABEL_48;
            }
          }

          else if (v15)
          {
            goto LABEL_45;
          }

          goto LABEL_48;
        }

        if (v15)
        {
          if (v15 != 4)
          {
            goto LABEL_45;
          }

          *(v13 + 229) = sub_10057C600(a3);
          *(v13 + 228) = 1;
        }

LABEL_48:
        v12 = (v12 + v16 - v15);
        if (v12 <= 0)
        {
          goto LABEL_53;
        }
      }

      if (v17 == 1)
      {
        if (v15)
        {
          if (v15 != 4)
          {
            goto LABEL_45;
          }

          v80 = sub_10057C600(a3);
        }

        goto LABEL_48;
      }

      if (v17 == 2)
      {
        if (v15)
        {
          if (v15 != 8)
          {
            goto LABEL_45;
          }

          __p[0] = 0;
          sub_10057C50C(a3, __p, 8uLL);
        }

        goto LABEL_48;
      }

      goto LABEL_35;
    }

    v15 = 0;
    v80 = 0;
LABEL_53:
    sub_100022214(&v94);
    if (sub_10057C598(a3) == 2)
    {
      while (1)
      {
        if ((sub_10000C5E0(a3 + 8) - *(a3 + 24)) < 9)
        {
          goto LABEL_95;
        }

        v20 = sub_10057C600(a3);
        v21 = sub_10057C598(a3);
        LOWORD(v22) = v21;
        if (sub_10000C5E0(a3 + 8) - *(a3 + 24) < v21)
        {
          v33 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            v79 = sub_10000C5E0(a3 + 8) - *(a3 + 24);
            LODWORD(__p[0]) = 67109376;
            HIDWORD(__p[0]) = v21;
            LOWORD(__p[1]) = 1024;
            *(&__p[1] + 2) = v79;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "fastConnectParseSetupCompleteMessage Length Error Descriptor length %u remaining %u", __p, 0xEu);
          }

          goto LABEL_95;
        }

        v23 = sub_100007618(v21, 0x917E74A8uLL);
        if (!v23)
        {
          goto LABEL_95;
        }

        sub_10057C50C(a3, v23, v21);
        v90 = 0;
        v91 = 0;
        sub_10000C704(&v90, v23, v21);
        *__p = 0u;
        v114 = 0u;
        sub_10057C4B4(__p, 0, &v90);
        if (v20 > 0x10 || ((1 << v20) & 0x10102) == 0)
        {
          if (v20 == 0x80000)
          {
            if (qword_100B50950 != -1)
            {
              sub_10086C0FC();
            }

            if (sub_100359020(off_100B50948, __p, v81, v83) && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
            {
              sub_10086CCE8(&v88, v89);
            }

            goto LABEL_87;
          }

          if (v20 != 0x100000)
          {
            goto LABEL_87;
          }
        }

        if (v21 >= 1)
        {
          do
          {
            v24 = sub_10057C548(__p);
            if (v24 < 0)
            {
              v25 = sub_10057C598(__p);
              v26 = -3;
            }

            else
            {
              v25 = sub_10057C548(__p);
              v26 = -2;
            }

            v27 = v24 & 0x7F;
            if (v27 == 4)
            {
              if (v25 == 2)
              {
                v28 = sub_10057C598(__p);
                if (v28)
                {
                  v29 = qword_100BCEAC0;
                  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109376;
                    *&buf[4] = v20;
                    *&buf[8] = 1024;
                    *&buf[10] = v28;
                    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "fastConnectParseSetupCompleteMessage Service 0x%x status %u", buf, 0xEu);
                  }
                }
              }

              else
              {
                v31 = qword_100BCEAC0;
                if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *&buf[4] = v25;
                  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "fastConnectParseSetupCompleteMessage Error FC_COMMON_STATUS size wrong %d", buf, 8u);
                  if (v25)
                  {
                    goto LABEL_75;
                  }
                }

                else if (v25)
                {
                  goto LABEL_75;
                }
              }
            }

            else if (v25)
            {
              v30 = qword_100BCEAC0;
              if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109632;
                *&buf[4] = v24 & 0x7F;
                *&buf[8] = 1024;
                *&buf[10] = v25;
                *&buf[14] = 1024;
                LODWORD(v98) = v15;
                _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Key not recognized :%d Dumped %d of %d bytes ", buf, 0x14u);
              }

LABEL_75:
              v32 = qword_100BCEAC0;
              if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                *&buf[4] = v25;
                *&buf[8] = 1024;
                *&buf[10] = v27;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "fastConnectParseSetupCompleteMessage dumping %d for Key:%d ", buf, 0xEu);
              }

              sub_10057C660(a3, v25);
            }

            v22 = (v22 + v26 - v25);
          }

          while (v22 > 0);
        }

LABEL_87:
        sub_10000C1E8(v23);
        __p[1] = &off_100AE0A78;
        if (v114)
        {
          sub_10000C808(v114);
        }

        v90 = &off_100AE0A78;
        if (v91)
        {
          sub_10000C808(v91);
        }
      }
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CC78();
    }

LABEL_95:
    if (v80 != *(v84 + 20) && os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_FAULT))
    {
      sub_10086CD1C();
    }

    v34 = mach_absolute_time();
    v35 = (v34 - *(v84 + 176)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
    *(v84 + 192) += v35;
    v36 = *(v84 + 200);
    v37 = [NSNumber numberWithInt:v35];
    [v83 setObject:v37 forKeyedSubscript:@"ProfileSetupDuration"];

    v38 = [v83 objectForKey:@"BasebandDurationTotal"];
    v39 = v38 == 0;

    if (!v39)
    {
      v40 = [v83 objectForKeyedSubscript:@"BasebandDurationTotal"];
      *(v84 + 192) += [v40 intValue];
    }

    v41 = [NSNumber numberWithInt:*(v84 + 192)];
    [v83 setObject:v41 forKeyedSubscript:@"DurationWithRetries"];

    v42 = [v36 objectForKeyedSubscript:@"EncryptionConnectionTimeMs"];
    [v83 setObject:v42 forKeyedSubscript:@"EncryptionSetupDuration"];

    v43 = [v36 objectForKey:@"BasebandConnectionTimeMs"];
    v44 = v43 == 0;

    if (!v44)
    {
      v45 = *(v84 + 160);
      v47 = dword_100BC7AD4;
      v46 = *algn_100BC7AD8;
      v48 = [v36 objectForKeyedSubscript:@"BasebandConnectionTimeMs"];
      [v83 setObject:v48 forKeyedSubscript:@"BasebandDurationTotal"];

      v49 = [NSNumber numberWithInt:v45 * v47 / v46 / 0xF4240];
      [v83 setObject:v49 forKeyedSubscript:@"BasebandDuration"];
    }

    v50 = sub_10000F034();
    v51 = (*(*v50 + 552))(v50, v81, v83);
    LODWORD(v90) = v80;
    sub_100734540(v51, &v90, v81, v84);
    v52 = v90;
    v87 = v90;
    sub_10073499C(v53, &v87, v81, v84);
    v54 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109632;
      HIDWORD(__p[0]) = v80;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v52;
      HIWORD(__p[1]) = 1024;
      LODWORD(v114) = v87;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Setup Complete with profiles: %x, profile attempts: %x, profile results: %x", __p, 0x14u);
    }

    v55 = *(v84 + 200);
    v56 = [NSNumber numberWithInt:v35];
    [v55 setObject:v56 forKey:@"ProfileConnectionTimeMs"];

    v57 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      v58 = (v34 - *(v84 + 184)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Configuration took %d ms", __p, 8u);
      v57 = qword_100BCEAC0;
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v35;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Profile setup took %d ms", __p, 8u);
    }

    v59 = *(v84 + 200);
    v60 = [NSNumber numberWithInt:*(v84 + 192)];
    [v59 setObject:v60 forKey:@"TotalConnectionTimeMs"];

    v61 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      v62 = *(v84 + 192);
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Total connection took %d ms!", __p, 8u);
    }

    v63 = *(v84 + 200);
    sub_1000E2D2C(v81, 0xAu, __p);
    if ((SBYTE7(v114) & 0x80u) == 0)
    {
      v64 = __p;
    }

    else
    {
      v64 = __p[0];
    }

    v65 = [NSString stringWithUTF8String:v64];
    [v63 setObject:v65 forKey:@"FWVersion"];

    if (SBYTE7(v114) < 0)
    {
      operator delete(__p[0]);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007360EC;
    block[3] = &unk_100ADF820;
    v67 = v36;
    v86 = v67;
    dispatch_async(global_queue, block);
    sub_1000618AC(&v94);
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    *__p = 0u;
    v114 = 0u;
    sub_100304ACC(__p, 256, "PFC Profile Setup took %d", v68, v69, v70, v71, v72, v35);
    sub_1001C429C(__p);
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    *buf = 0u;
    v98 = 0u;
    sub_100304ACC(buf, 256, "PFC Total connection took %d", v73, v74, v75, v76, v77, *(v84 + 192));
    sub_1001C429C(buf);
    sub_100022214(&v94);
    sub_1000DE594(a1, &v95, 0);
  }

  else if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_1000BE6F8(&v92, __p);
    sub_10086CD5C();
  }

  return sub_10002249C(&v94);
}

uint64_t sub_1007360EC()
{
  v0 = *(*sub_10000F034() + 368);

  return v0();
}

void sub_10073614C(int a1, int a2, int a3)
{
  v6 = sub_10028E018(a1);
  if (v6)
  {
    v7 = qword_100BCEAC0;
    if (a2)
    {
      v8 = v6;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        v9 = *(v8 + 2);
        v10 = 67109888;
        v11 = a2;
        v12 = 1024;
        v13 = v9;
        v14 = 1024;
        v15 = a1;
        v16 = 1024;
        v17 = a3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "FastConnectMagicPolicyCB: Policy enforcement failed %{bluetooth:OI_STATUS}u - cid 0x%x, handle %d securityFailed %d", &v10, 0x1Au);
        v7 = qword_100BCEAC0;
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Magic Pairing came back with result %d", &v10, 8u);
    }

    if (a2 != 1500)
    {
      sub_1007362C0();
    }
  }

  else if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086CDBC();
  }
}

void sub_10073634C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_10028E018(a3);
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    v8 = sub_1000B12AC(v5);
    v35 = *(v8 + 10);
    v36 = *(v8 + 14);
    v9 = sub_1000E6A38(a1, &v35);
    if (v9)
    {
      v10 = v9;
      if (a2 == 1414 || a2 == 742)
      {
        if (!*(v9 + 51))
        {
          v24 = qword_100BCEAC0;
          v25 = os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT);
          v26 = 1;
          if (v25)
          {
            *buf = 67109632;
            *&buf[4] = a2;
            *&buf[8] = 1024;
            *&buf[10] = 0;
            *&buf[14] = 1024;
            LODWORD(v38) = 1;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Authentication failed with result: %d. Retrying authentication since auth retries %d < %d", buf, 0x14u);
            v26 = *(v10 + 51) + 1;
          }

          *(v10 + 51) = v26;
          *(v7 + 8) = &unk_100B0AE88;
          v34 = 0;
          sub_1000216B4(&v34);
          v27 = sub_100305BDC(sub_10073614C, &v35, *(v7 + 8), v6 + 18, 1);
          if (v27)
          {
            v28 = qword_100BCEAC0;
            if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v27;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Policy Mgr for PFC new connection failed %d", buf, 8u);
            }
          }

          sub_100022214(&v34);
          if (v27)
          {
            sub_1000DE594(a1, &v35, v27);
          }

          goto LABEL_25;
        }
      }

      else if (!a2)
      {
        v11 = (mach_absolute_time() - *(v9 + 168)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
        *(v10 + 192) += v11;
        v12 = *(v10 + 200);
        v13 = [NSNumber numberWithInt:v11];
        [v12 setObject:v13 forKey:@"EncryptionConnectionTimeMs"];

        v14 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Authentication took %d ms", buf, 8u);
        }

        v15 = mach_absolute_time();
        v16 = *(v10 + 48);
        *(v10 + 176) = v15;
        if (sub_1002AD958(v16, &v35))
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086CDF8();
          }

          return;
        }

        v34 = 0;
        sub_1000216B4(&v34);
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
        v39 = 0u;
        v40 = 0u;
        *buf = 0u;
        v38 = 0u;
        sub_100304ACC(buf, 256, "PFC Authentication took %d", v29, v30, v31, v32, v33, v11);
        sub_1001C429C(buf);
        sub_100022214(&v34);
        *(v10 + 51) = 0;
        sub_100731BF4(a1, v10);
LABEL_25:
        sub_10002249C(&v34);
        return;
      }

      *(v9 + 51) = 0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086CE6C();
      }

      sub_1000DE594(a1, v10 + 8, a2);
    }

    else
    {
      v17 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086CEA8(&v35, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }
}

void sub_100736748(uint64_t a1, __int16 a2, char a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v71 = a8;
  v72 = WORD2(a8);
  v14 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Channel support came back with status %d", buf, 8u);
  }

  v69 = v71;
  v70 = v72;
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  v15 = sub_1000E6554(off_100B508E8, &v69, 1);
  v17 = a6 != 4500 && a6 != 0;
  if (!a4 || v17)
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CFAC();
    }

    if (a7 || !v15)
    {
      if (a6 == 4515 && a7 && v15)
      {
        sub_1000DE9EC(a1, &v71);
        v31 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Start SDP due to SDP mismatch of incoming FC", buf, 2u);
        }

        if (qword_100B54670 != -1)
        {
          sub_10086D01C();
        }

        sub_100587F9C();
      }

      return;
    }

    v24 = sub_1000E6A38(a1, &v71);
    if (!v24)
    {
      if (a6 == 711)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    v25 = v24;
    v26 = (mach_absolute_time() - *(v24 + 152)) * dword_100BC7AD4 / *algn_100BC7AD8 / 0xF4240;
    if (a6 != 716 && a6 != 704)
    {
      v56 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "PFC failed, took %d ms", buf, 8u);
      }

      goto LABEL_103;
    }

    v27 = *(v25 + 52);
    v28 = *(v25 + 53);
    v29 = qword_100BCEAC0;
    if (v27 >= v28)
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086D044();
      }

      sub_1000DE594(a1, &v71, a6);
      goto LABEL_103;
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = a6;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      *&buf[14] = 1024;
      LODWORD(v74) = v27;
      WORD2(v74) = 1024;
      *(&v74 + 6) = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Status: %d, took %d ms. Retrying echo request since retries %d < %d", buf, 0x1Au);
    }

    sub_100730C34(a1, v25, 1u);
    v30 = *(v25 + 200);
    *(v25 + 200) = 0;

    *(v25 + 160) = 0;
    ++*(v25 + 52);
    if (qword_100B50AC0 != -1)
    {
      sub_10086BF94();
    }

    sub_100594D24(off_100B50AB8, v15, 1);
    if (!sub_1000E2140(v15, 12))
    {
LABEL_103:
      if (a6 <= 715)
      {
        if (a6 == 704)
        {
          return;
        }

        if (a6 != 711)
        {
LABEL_106:
          sub_1000DE9EC(a1, &v71);
          *(a1 + 682) = a6 == 4515;
          v64 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
          {
            v65 = "Legacy";
            if (a6 == 4515)
            {
              v65 = "FC";
            }

            *buf = 136315138;
            *&buf[4] = v65;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Profile connection: %s", buf, 0xCu);
            if ((*(a1 + 682) & 1) == 0)
            {
              goto LABEL_120;
            }
          }

          else if (a6 != 4515)
          {
LABEL_120:
            if (qword_100B50AC0 != -1)
            {
              sub_10086BF94();
            }

            sub_100594D24(off_100B50AB8, v15, 0);
            return;
          }

          if (qword_100B54670 != -1)
          {
            sub_10086D01C();
          }

          sub_100587F9C();
        }

LABEL_113:
        v66 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = a6;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Cleaning up PFC because status is %d", buf, 8u);
        }

        sub_1000DE594(a1, &v71, a6);
        return;
      }

      if (a6 == 716)
      {
        return;
      }

LABEL_112:
      if (a6 != 1339)
      {
        goto LABEL_106;
      }

      goto LABEL_113;
    }

    memset(buf, 0, sizeof(buf));
    *&v74 = 0;
    if (*(v15 + 1567) < 0)
    {
      sub_100008904(buf, *(v15 + 1544), *(v15 + 1552));
    }

    else
    {
      *buf = *(v15 + 1544);
      *&v74 = *(v15 + 1560);
    }

    if (SBYTE7(v74) < 0)
    {
      if (*&buf[8])
      {
        v57 = *buf;
        goto LABEL_87;
      }
    }

    else if (BYTE7(v74))
    {
      v57 = buf;
LABEL_87:
      v58 = [NSString stringWithUTF8String:v57];
      goto LABEL_89;
    }

    v58 = @"Unknown";
LABEL_89:
    *uu = 0;
    v94 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_10086D0B4();
    }

    sub_1000CC438(off_100B508C8, (v15 + 128), uu);
    if (uuid_is_null(uu))
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v15, v89);
        sub_10086D0DC();
      }
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086D0B4();
      }

      v59 = off_100B508C8;
      v60 = sub_10004DF60(uu);
      v61 = sub_1007902B0(v59, v60);

      if (v61 > 0.0)
      {
        v62 = (CFAbsoluteTimeGetCurrent() - v61);
LABEL_99:
        v63 = sub_10000F034();
        sub_1000E5A58(v15, __p);
        (*(*v63 + 416))(v63, __p, v58, v62, *(v25 + 52), *(v25 + 53));
        if (v68 < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v74) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_103;
      }
    }

    v62 = -1;
    goto LABEL_99;
  }

  if (a7)
  {
    v18 = sub_100730DD8(a1, v15);
    v19 = v18;
    if (v18)
    {
      if (*(v18 + 16) >= 2)
      {
        v20 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_1000E5A58(v15, buf);
          if ((SBYTE7(v74) & 0x80u) == 0)
          {
            v22 = buf;
          }

          else
          {
            v22 = *buf;
          }

          v23 = sub_100730F30(v21, *(v19 + 16));
          *v89 = 136446466;
          v90 = v22;
          v91 = 2080;
          v92 = v23;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "PFC in progress for device %{public}s, ignoring duplicate request - current state is %s", v89, 0x16u);
          if (SBYTE7(v74) < 0)
          {
            operator delete(*buf);
          }
        }

        return;
      }

      sub_100730C34(a1, v18, 3u);
      v44 = +[NSMutableDictionary dictionary];
      v45 = *(v19 + 200);
      *(v19 + 200) = v44;

      *v19 = v15;
      goto LABEL_52;
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CF70();
    }
  }

  else
  {
    v32 = sub_1000E6A38(a1, &v71);
    if (v32)
    {
      v19 = v32;
      v33 = mach_absolute_time();
      v34 = v33 - *(v19 + 152);
      *(v19 + 160) = v33 - *(v19 + 160);
      v35 = v34 * dword_100BC7AD4 / *algn_100BC7AD8;
      *(v19 + 192) += v35 / 0xF4240;
      v36 = *(v19 + 200);
      v37 = [NSNumber numberWithInt:v35 / 0xF4240];
      [v36 setObject:v37 forKey:@"BasebandConnectionTimeMs"];

      v38 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v35 / 0xF4240;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Baseband took %d ms", buf, 8u);
      }

      *(v19 + 52) = 0;
      v89[0] = 0;
      sub_1000216B4(v89);
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      *buf = 0u;
      v74 = 0u;
      sub_100304ACC(buf, 256, "PFC Baseband took %d", v39, v40, v41, v42, v43, v35 / 0xF4240);
      sub_1001C429C(buf);
      sub_100022214(v89);
      sub_10002249C(v89);
LABEL_52:
      v46 = qword_100BCEAC0;
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v15, buf);
        v47 = (SBYTE7(v74) & 0x80u) == 0 ? buf : *buf;
        *v89 = 136446466;
        v90 = v47;
        v91 = 1024;
        LODWORD(v92) = a4;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Fast Connect supported by device %{public}s with profileMask %x", v89, 0x12u);
        if (SBYTE7(v74) < 0)
        {
          operator delete(*buf);
        }
      }

      v48 = sub_10000C7D0();
      v49 = (*(*v48 + 2888))(v48);
      if (v49)
      {
        LOBYTE(v49) = sub_10054F920(*v19);
      }

      *(v19 + 145) = v49;
      v50 = mach_absolute_time();
      *(v19 + 48) = a2;
      v51 = (v19 + 48);
      *(v51 + 15) = v50;
      *(v51 - 7) &= a4;
      *(v51 - 6) = a4;
      *(v51 - 20) = a7 != 0;
      *buf = 0;
      uu[0] = 0;
      sub_1000216B4(uu);
      v52 = sub_1000ABC7C(*v51, buf);
      sub_100022214(uu);
      if (v52)
      {
        goto LABEL_70;
      }

      if ((sub_1000295DC(v15) & 1) != 0 || (a3 & 0x10) != 0 && (*(a1 + 672) & 0x10) != 0)
      {
        v53 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          v54 = sub_1000295DC(v15);
          *v89 = 67109120;
          LODWORD(v90) = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "isPaired:%d", v89, 8u);
        }

        *(*buf + 64) = &unk_100B0AE88;
        sub_1000618AC(uu);
        v52 = sub_100305BDC(sub_10073614C, v15 + 128, *(*buf + 64), (*buf + 72), 1);
        if (v52)
        {
          v55 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
          {
            *v89 = 67109120;
            LODWORD(v90) = v52;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Policy Mgr for PFC new connection failed %d", v89, 8u);
          }
        }

        sub_100022214(uu);
        if (v52)
        {
LABEL_70:
          sub_1000DE594(a1, &v71, v52);
        }
      }

      sub_10002249C(uu);
      return;
    }

    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086CF34();
    }
  }
}

void sub_10073735C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007373E4(uint64_t a1, int a2, uint64_t a3)
{
  v6 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109376;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fast connect channel disconnected for CID %d with status %d", &v9, 0xEu);
  }

  if (a3 != 436)
  {
    for (i = 0; i != 624; i += 208)
    {
      if (*(a1 + i + 32) && *(a1 + i + 64) == a2)
      {
        sub_1000DE594(a1, a1 + i + 24, a3);
        return;
      }
    }

    v8 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fast connect channel disconnected can not find FC device for cid %d", &v9, 8u);
    }
  }
}

void sub_10073753C(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v14 = 0;
  v15 = 0;
  sub_10000C704(&v14, a3, a4);
  v12 = 0u;
  v13 = 0u;
  sub_10057C4B4(&v12, 0, &v14);
  v6 = sub_10057C548(&v12);
  sub_10057C548(&v12);
  v7 = sub_10057C598(&v12);
  v8 = 0;
  while (!*(a1 + v8 + 32) || *(a1 + v8 + 64) != a2)
  {
    v8 += 208;
    if (v8 == 624)
    {
      goto LABEL_7;
    }
  }

  *(a1 + v8 + 48) = v7;
LABEL_7:
  v9 = qword_100BCEAC0;
  if (v6 > 4)
  {
    if (v6 != 5)
    {
      if (v6 != 6)
      {
        if (v6 == 7)
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086D13C();
          }

          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setup Complete received", v11, 2u);
      }

      sub_100734FEC(a1, a2, &v12);
      goto LABEL_28;
    }

    if (!os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *v11 = 0;
    v10 = "Service Negotiation received";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_28;
  }

  if (v6 == 3)
  {
    if (!os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *v11 = 0;
    v10 = "Service Descriptor received";
    goto LABEL_25;
  }

  if (v6 != 4)
  {
LABEL_26:
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D178();
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Service Descriptor Rsp received", v11, 2u);
  }

  sub_100732FA0(a1, a2, &v12);
  sub_100733CFC(a1, a2);
LABEL_28:
  *(&v12 + 1) = &off_100AE0A78;
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

void sub_1007377CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, atomic_uint *a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (a13)
  {
    sub_10000C808(a13);
  }

  if (a16)
  {
    sub_10000C808(a16);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100737844(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, uint64_t a6)
{
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  sub_1000216B4(&v75);
  if (sub_10023DC00(a6, &v76))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D1E8();
    }

    return sub_10002249C(&v75);
  }

  sub_100022214(&v75);
  v73 = v76;
  v74 = v77;
  if (qword_100B508F0 != -1)
  {
    sub_10086BF44();
  }

  v12 = sub_1000E6554(off_100B508E8, &v73, 1);
  if (sub_1000E6A38(a1, &v76))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_1000C23E0(v12, buf);
      sub_10086D258();
    }

    return sub_10002249C(&v75);
  }

  v13 = *(a1 + 664);
  if (v12[64].n128_u8[8] == 1)
  {
    v14 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest device removing HFP and GATT profiles from support", buf, 2u);
    }

    v13 &= 0xFFEFFFFE;
  }

  if (a4 < 0x18)
  {
LABEL_56:
    sub_1000618AC(&v75);
    sub_1002AB810("d", 9u, 0, a6, a5, v32, v33, v34, 0);
    sub_100022214(&v75);
    return sub_10002249C(&v75);
  }

  v15 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v12, buf);
    v16 = v81[3] >= 0 ? buf : *buf;
    *v83 = 136315138;
    *&v83[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received Echo Request from %s", v83, 0xCu);
    if ((v81[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  sub_1000618AC(&v75);
  if (!a2)
  {
    v53 = "data";
LABEL_124:
    v54 = 2235;
    goto LABEL_131;
  }

  if (!a3)
  {
    v53 = "(dataSize) > 0";
    goto LABEL_124;
  }

  if (a3 == 1)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 1";
    v54 = 2238;
    goto LABEL_131;
  }

  if (a3 < 4)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v54 = 2239;
    goto LABEL_131;
  }

  if (a3 < 6)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v54 = 2240;
    goto LABEL_131;
  }

  if (a3 == 6)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 1";
    v54 = 2241;
    goto LABEL_131;
  }

  if (a3 < 8)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 1";
    v54 = 2242;
    goto LABEL_131;
  }

  if (a3 <= 9)
  {
    v53 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v54 = 2243;
LABEL_131:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v54, v53);
  }

  v17 = *(a2 + 6);
  v66 = *(a2 + 7);
  v18 = *(a2 + 8);
  v19 = sub_1000B8B5C(a6);
  if (v17 != 1 || !v19 || *(a6 + 148) > 2)
  {
    sub_100022214(&v75);
    v31 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_1000C23E0(v12, v83);
      v36 = v84 >= 0 ? v83 : *v83;
      v37 = v19 ? *(a6 + 148) : 0;
      *buf = 136315906;
      *&buf[4] = v36;
      *&buf[12] = 1024;
      *v80 = v17;
      *&v80[4] = 1024;
      *v81 = v19;
      *&v81[4] = 1024;
      v82 = v37;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Echo Request failed for device %s cmd:%d validHandle:%d refCount:%d", buf, 0x1Eu);
      if (v84 < 0)
      {
        operator delete(*v83);
      }
    }

    goto LABEL_56;
  }

  v72 = 0;
  v65 = sub_1002FCF64(a6, &v72);
  v20 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v65;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "parseFastConnectEchoReq isPaired %d", buf, 8u);
  }

  if (!v65)
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D2B8();
    }

    v63 = 0;
    LOBYTE(v64) = 0;
    v30 = 4502;
    goto LABEL_94;
  }

  if (a3 < 0xC)
  {
    v55 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v56 = 2261;
    goto LABEL_139;
  }

  if (a3 < 0xE)
  {
    v55 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
    v56 = 2263;
    goto LABEL_139;
  }

  if (a3 < 0x12)
  {
    v55 = "ByteStream_NumReadBytesAvail(pBs) >= 4";
    v56 = 2266;
    goto LABEL_139;
  }

  if (a3 <= 0x19)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", 2267, "ByteStream_NumReadBytesAvail(pBs) >= (8)");
  }

  v59 = *(a2 + 12);
  v60 = *(a2 + 10);
  v63 = *(a2 + 14);
  v64 = *(a2 + 18);
  v21 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "parseFastConnectEchoReq remote version %d", buf, 8u);
  }

  if (v18 >= 2)
  {
    if (a3 < 0x1E)
    {
      v55 = "ByteStream_NumReadBytesAvail(pBs) >= 4";
      v56 = 2272;
    }

    else if (a3 < 0x22)
    {
      v55 = "ByteStream_NumReadBytesAvail(pBs) >= 4";
      v56 = 2273;
    }

    else
    {
      if (a3 > 0x23)
      {
        v61 = *(a2 + 26);
        v22 = *(a2 + 30);
        v23 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v61;
          *&buf[8] = 1024;
          *&buf[10] = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "remoteAppleSupportedFeatures %x remoteSdpServiceDataBaseState %x", buf, 0xEu);
        }

        v58 = v22;
        v70 = 0;
        v71 = 0;
        sub_1007386F0(&v76, &v71, &v70);
        v24 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v71;
          *&buf[8] = 1024;
          *&buf[10] = v70;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "parseFastConnectEchoReq deviceAppleSupportedFeatures %x deviceSdpServiceDataBaseState %x", buf, 0xEu);
        }

        v28 = v71;
        if (v71 != v61)
        {
          v29 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v28;
            *&buf[8] = 1024;
            *&buf[10] = v61;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "parseFastConnectEchoReq DID expected %x received %x", buf, 0xEu);
            v29 = qword_100BCEAC0;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1000C23E0(v12, v83);
            sub_10086D2F4();
          }

          sub_10053DCEC(v12, v61, 0);
        }

        if (v70 == v58)
        {
          v30 = 4500;
        }

        else
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086D350();
          }

          if (((v64 >> 4) & 1 & (*(a1 + 672) >> 4)) != 0)
          {
            v30 = 4515;
          }

          else
          {
            v30 = 4504;
          }
        }

        if (v18 != 2)
        {
          v69 = 0;
          if (a3 <= 0x27)
          {
            v57 = 2302;
          }

          else
          {
            if (a3 > 0x2B)
            {
              v38 = *(a2 + 40);
              v62 = *(a2 + 36);
              sub_100738814(&v76, &v69);
              v39 = v69;
              v40 = HIDWORD(v69);
              if (__PAIR64__(v69, HIDWORD(v69)) != __PAIR64__(v38, v62))
              {
                v41 = qword_100BCEAC0;
                if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109888;
                  *&buf[4] = v39;
                  *&buf[8] = 1024;
                  *&buf[10] = v40;
                  *v80 = 1024;
                  *&v80[2] = v38;
                  *v81 = 1024;
                  *&v81[2] = v62;
                  _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Supported Extended Features expected: 0x%x 0x%x, Received: 0x%x 0x%x", buf, 0x1Au);
                  v41 = qword_100BCEAC0;
                }

                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1000C23E0(v12, __p);
                  v42 = v68 >= 0 ? __p : __p[0];
                  *buf = 136315650;
                  *&buf[4] = v42;
                  *&buf[12] = 1024;
                  *v80 = v38;
                  *&v80[4] = 1024;
                  *v81 = v62;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Updating Supported Extended Features for device %s to 0x%x 0x%x", buf, 0x18u);
                  if (v68 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                sub_10053DFDC(v12, v38 | (v62 << 32), 0);
              }

              goto LABEL_86;
            }

            v57 = 2303;
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v57, "ByteStream_NumReadBytesAvail(pBs) >= 4");
        }

LABEL_86:
        if ((v64 & 1) == 0)
        {
          if (v30 == 4500)
          {
            goto LABEL_88;
          }

LABEL_94:
          byte_100BCEB9A = 7;
          byte_100BCEB9B = v66;
          word_100BCEB9C = *(a1 + 680);
          byte_100BCEB9E = v30;
          byte_100BCEB9F = 17;
          goto LABEL_95;
        }

LABEL_91:
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086D3CC();
        }

        v30 = 4507;
        goto LABEL_94;
      }

      v55 = "ByteStream_NumReadBytesAvail(pBs) >= 2";
      v56 = 2274;
    }

LABEL_139:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v56, v55);
  }

  if (v64)
  {
    goto LABEL_91;
  }

LABEL_88:
  if (sub_10028E3EC(2u, &v78, 0))
  {
    sub_100022214(&v75);
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D408();
    }

    return sub_10002249C(&v75);
  }

  *(sub_1000B12AC(v78) + 8) = v60;
  *(sub_1000B12AC(v78) + 32) = v59;
  if ((v64 & 4) != 0)
  {
    sub_1002D7A34(&v76);
  }

  byte_100BCEB9A = 2;
  byte_100BCEB9B = v66;
  word_100BCEB9C = *(a1 + 680);
  v44 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEBUG))
  {
    v45 = *(v78 + 4);
    v46 = sub_1000B12AC(v78);
    sub_10086D478(v45, v46, buf, v44);
  }

  byte_100BCEB9E = *(v78 + 4);
  byte_100BCEB9F = *(v78 + 5);
  byte_100BCEBA0 = *(sub_1000B12AC(v78) + 36);
  byte_100BCEBA1 = *(sub_1000B12AC(v78) + 37);
  dword_100BCEBA2 = v13;
  unk_100BCEBA6 = *(a1 + 672);
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  byte_100BCEBAE = sub_1005A5338(off_100B50A98);
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  byte_100BCEBAF = sub_1005A5338(off_100B50A98) >> 8;
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  byte_100BCEBB0 = sub_1005A5338(off_100B50A98) >> 16;
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  byte_100BCEBB1 = sub_1005A5338(off_100B50A98) >> 24;
  byte_100BCEBB2 = sub_1002F8128();
  byte_100BCEBB3 = sub_1002F8128() >> 8;
  byte_100BCEBB4 = sub_1002F8128() >> 16;
  byte_100BCEBB5 = sub_1002F8128() >> 24;
  *algn_100BCEBB6 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_10086BF1C();
  }

  v47 = sub_1005A5340(off_100B50A98);
  byte_100BCEBB8 = BYTE4(v47);
  byte_100BCEBB9 = BYTE5(v47);
  byte_100BCEBBA = BYTE6(v47);
  byte_100BCEBBB = HIBYTE(v47);
  word_100BCEBBC = v47;
  byte_100BCEBBE = BYTE2(v47);
  byte_100BCEBBF = BYTE3(v47);
  sub_10023B994(a6);
  v48 = sub_1000B12AC(v78);
  *(v48 + 10) = v76;
  *(v48 + 14) = v77;
  *sub_1000B12AC(v78) = a6;
  *(sub_1000B12AC(v78) + 25) = 0;
  *(sub_1000B12AC(v78) + 16) = 4;
  *(sub_1000B12AC(v78) + 28) = 0;
  v49 = sub_1000B12AC(v78);
  sub_1000CD5B8(*v49);
  v50 = v78;
  *(v78 + 76) = -1;
  if (sub_10029E064(*(v50 + 4), 4, 5u, 0, (v50 + 96), 0xFFFFFFFF))
  {
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
    {
      sub_10086D4D8();
    }

    sub_10028E908(v78);
    return sub_10002249C(&v75);
  }

  *(sub_1000B12AC(v78) + 88) = sub_1007314F0;
  v51 = v78;
  *(v78 + 32) = sub_100731580;
  *(sub_1000B12AC(v51) + 40) = 5000;
  v52 = sub_1000B12AC(v78);
  sub_10028ED44(*v52);
  v30 = 0;
LABEL_95:
  sub_1002AB810("d", 9u, 0, a6, a5, v25, v26, v27, &byte_100BCEB9A);
  sub_100022214(&v75);
  if (v65)
  {
    if (v78)
    {
      v43 = *(v78 + 4);
    }

    else
    {
      v43 = 0;
    }

    sub_100736748(a1, v43, v64, v63, 0, v30, 1, v76 | (v77 << 32));
  }

  return sub_10002249C(&v75);
}

void sub_1007386F0(int *a1, _DWORD *a2, _DWORD *a3)
{
  v12 = *a1;
  v13 = *(a1 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_10086BF80();
  }

  v5 = sub_1000E6554(off_100B508E8, &v12, 1);
  if (v5)
  {
    v6 = v5;
    sub_10053E4A8(v5, a2);
    v11 = xmmword_1008AA1A0;
    __p = 0;
    v9 = 0;
    v10 = 0;
    if (sub_10053BFB4(v6, &v11, 0x201u, &__p))
    {
      v7 = __p;
      if (*__p == 1)
      {
        *a3 = *(__p + 2);
      }
    }

    else
    {
      *a3 = 0;
      v7 = __p;
      if (!__p)
      {
        return;
      }
    }

    v9 = v7;
    operator delete(v7);
  }

  else if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086D548();
  }
}

void sub_1007387F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100738814(int *a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (qword_100B508F0 != -1)
  {
    sub_10086BF80();
  }

  v3 = sub_1000E6554(off_100B508E8, &v4, 1);
  if (v3)
  {
    sub_10053E4E0(v3, a2);
  }

  else if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
  {
    sub_10086D584();
  }
}

void sub_1007388B0(uint64_t a1, int *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, unsigned int a7, uint64_t a8)
{
  if (*(a1 + 683))
  {
    v65 = *a2;
    v66 = *(a2 + 2);
    if (qword_100B508F0 != -1)
    {
      sub_10086BF80();
    }

    v14 = sub_1000E6554(off_100B508E8, &v65, 1);
    v64 = 0;
    sub_1000216B4(&v64);
    v63 = 0;
    if (sub_1000ABC7C(a3, &v63) || !v63 || !sub_1000B12AC(v63))
    {
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086D71C();
      }

      goto LABEL_25;
    }

    v15 = qword_100BCEAC0;
    if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v14, __p);
      v16 = v62 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *v68 = v16;
      *&v68[8] = 1024;
      *v69 = a7;
      *&v69[4] = 1024;
      *v70 = a8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "fastConnectEchoRspEvent for device %s of length %d with result %d", buf, 0x18u);
      if (v62 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a7 < 0x18)
    {
LABEL_18:
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086D6AC();
      }

      sub_10028E908(v63);
      sub_100022214(&v64);
LABEL_25:
      sub_100736748(a1, 0, 0, 0, 0, a8, 0, *a2 | (*(a2 + 2) << 32));
LABEL_26:
      sub_10002249C(&v64);
      return;
    }

    v17 = *a6;
    if (v17 != 2)
    {
      if (v17 == 7)
      {
        a8 = *(a6 + 2);
        v18 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v68 = a8;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "fastConnectEchoRspEvent with errorCode %d", buf, 8u);
        }
      }

      goto LABEL_18;
    }

    v55 = sub_1000E1FE8(a2);
    v20 = *(a6 + 1);
    v21 = a6[4];
    v22 = a6[5];
    *(sub_1000B12AC(v63) + 8) = v21 | (v22 << 8);
    v23 = a6[6];
    v24 = a6[7];
    *(sub_1000B12AC(v63) + 32) = v23 | (v24 << 8);
    v25 = *(a6 + 2);
    v26 = *(a6 + 12);
    if (v20 < 2)
    {
LABEL_62:
      if (v26)
      {
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
        {
          sub_10086D3CC();
        }

        a8 = 4507;
      }

      else if (!a8)
      {
        v37 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v25;
          v39 = *(sub_1000B12AC(v63) + 8);
          v40 = *(v63 + 4);
          v41 = *(sub_1000B12AC(v63) + 32);
          v42 = *(sub_1000B12AC(v63) + 36);
          *buf = 67110144;
          *v68 = v39;
          *&v68[4] = 1024;
          *&v68[6] = v40;
          *v69 = 1024;
          *&v69[2] = v41;
          *v70 = 1024;
          *&v70[2] = v42;
          v71 = 1024;
          v25 = v38;
          v72 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "fastConnectEchoRspEvent CID sizes Remote %d, Local %d, Remote MTU %d, local %d, supported profiles %d", buf, 0x20u);
        }

        sub_10023B994(v55);
        v43 = sub_1000B12AC(v63);
        v44 = *(v55 + 48);
        *(v43 + 14) = *(v55 + 52);
        *(v43 + 10) = v44;
        *sub_1000B12AC(v63) = v55;
        *(sub_1000B12AC(v63) + 25) = 0;
        *(sub_1000B12AC(v63) + 28) = 0;
        if ((v26 & 4) != 0)
        {
          sub_1002D7A34(a2);
        }

        *(sub_1000B12AC(v63) + 16) = 4;
        v45 = v63;
        *(v63 + 76) = -1;
        a8 = sub_10029E064(*(v45 + 4), 4, 5u, 0, (v45 + 96), 0xFFFFFFFF);
        v46 = sub_1000B12AC(v63);
        sub_1000CD5B8(*v46);
        *(sub_1000B12AC(v63) + 40) = 5000;
        v47 = sub_1000B12AC(v63);
        sub_10028ED44(*v47);
        if (!a8)
        {
          sub_100022214(&v64);
          a8 = 0;
          v48 = *(v63 + 4);
LABEL_76:
          sub_100736748(a1, v48, v26, v25, 0, a8, 0, *a2 | (*(a2 + 2) << 32));
          goto LABEL_26;
        }
      }

      sub_10028E908(v63);
      sub_100022214(&v64);
      if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
      {
        sub_10086D63C();
      }

      v48 = 0;
      LOBYTE(v26) = 0;
      v25 = 0;
      goto LABEL_76;
    }

    if (a7 < 0x1C)
    {
      v49 = "ByteStream_NumReadBytesAvail(bs) >= 4";
      v50 = 2554;
    }

    else
    {
      v52 = *(a6 + 2);
      if (a7 > 0x1D)
      {
        v53 = *(a6 + 12);
        v56 = *(a6 + 5);
        v54 = *(a6 + 6);
        v27 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v68 = v56;
          *&v68[4] = 1024;
          *&v68[6] = v54;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "remoteAppleSupportedFeatures %x remoteSdpServiceDataBaseState %x", buf, 0xEu);
        }

        v60 = 0;
        sub_1007386F0(a2, &v60 + 1, &v60);
        v28 = qword_100BCEAC0;
        if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v68 = HIDWORD(v60);
          *&v68[4] = 1024;
          *&v68[6] = v60;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "deviceAppleSupportedFeatures %x deviceSdpServiceDataBaseState %x", buf, 0xEu);
        }

        v29 = HIDWORD(v60);
        if (HIDWORD(v60) != v56)
        {
          v30 = qword_100BCEAC0;
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *v68 = v29;
            *&v68[4] = 1024;
            *&v68[6] = v56;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "DID expected %x received %x", buf, 0xEu);
            v30 = qword_100BCEAC0;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1000C23E0(v14, __p);
            sub_10086D2F4();
          }

          sub_10053DCEC(v14, v56, 0);
        }

        LOBYTE(v26) = v53;
        if (v60 != v54)
        {
          if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
          {
            sub_10086D5C0();
          }

          if (((v53 >> 4) & 1 & (*(a1 + 672) >> 4)) != 0)
          {
            a8 = 4515;
          }

          else
          {
            a8 = 4504;
          }
        }

        if (v20 == 2)
        {
          goto LABEL_61;
        }

        v59 = 0;
        if (a7 <= 0x21)
        {
          v51 = 2581;
        }

        else
        {
          if (a7 > 0x25)
          {
            v31 = *(a6 + 30);
            v32 = *(a6 + 34);
            sub_100738814(a2, &v59);
            v34 = v59;
            v33 = HIDWORD(v59);
            if (__PAIR64__(v59, HIDWORD(v59)) != __PAIR64__(v32, v31))
            {
              v35 = qword_100BCEAC0;
              if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109888;
                *v68 = v34;
                *&v68[4] = 1024;
                *&v68[6] = v33;
                *v69 = 1024;
                *&v69[2] = v32;
                *v70 = 1024;
                *&v70[2] = v31;
                _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Supported Extended Features expected: 0x%x 0x%x, Received: 0x%x 0x%x", buf, 0x1Au);
                v35 = qword_100BCEAC0;
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000C23E0(v14, v57);
                v36 = v58 >= 0 ? v57 : v57[0];
                *buf = 136315650;
                *v68 = v36;
                *&v68[8] = 1024;
                *v69 = v32;
                *&v69[4] = 1024;
                *v70 = v31;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Updating Supported Extended Features for device %s to 0x%x 0x%x", buf, 0x18u);
                if (v58 < 0)
                {
                  operator delete(v57[0]);
                }
              }

              sub_10053DFDC(v14, v32 | (v31 << 32), 0);
            }

            LOBYTE(v26) = v53;
LABEL_61:
            v25 = v52;
            goto LABEL_62;
          }

          v51 = 2582;
        }

        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v51, "ByteStream_NumReadBytesAvail(bs) >= 4");
      }

      v49 = "ByteStream_NumReadBytesAvail(bs) >= 2";
      v50 = 2555;
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/FastConnectManager.mm", v50, v49);
  }

  v19 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Stack has stopped, so don't handle Fast Connect event.", buf, 2u);
  }
}

void sub_1007391B4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v4 = 3;
  do
  {
    if (*(v3 + 4))
    {
      v5 = *v3;
      if (*v3)
      {
        v7 = *(a2 + 8);
        v6 = *(a2 + 16);
        if (v7 >= v6)
        {
          v9 = (v7 - *a2) >> 3;
          if ((v9 + 1) >> 61)
          {
            sub_1000C7698();
          }

          v10 = v6 - *a2;
          v11 = v10 >> 2;
          if (v10 >> 2 <= (v9 + 1))
          {
            v11 = v9 + 1;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            sub_100008108(a2, v12);
          }

          *(8 * v9) = v5;
          v8 = 8 * v9 + 8;
          v13 = *(a2 + 8) - *a2;
          v14 = (8 * v9 - v13);
          memcpy(v14, *a2, v13);
          v15 = *a2;
          *a2 = v14;
          *(a2 + 8) = v8;
          *(a2 + 16) = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v7 = v5;
          v8 = (v7 + 1);
        }

        *(a2 + 8) = v8;
      }
    }

    v3 += 26;
    --v4;
  }

  while (v4);
}

void sub_1007392B4(uint64_t a1)
{
  v2 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "stackDidStart", v3, 2u);
  }

  *(a1 + 683) = 1;
}

void sub_100739328()
{
  v0 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "stackWillStop", v1, 2u);
  }
}

void sub_100739390(uint64_t a1)
{
  v2 = qword_100BCEAC0;
  if (os_log_type_enabled(qword_100BCEAC0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "stackDidStop", v3, 2u);
  }

  sub_100730D34(a1);
  *(a1 + 683) = 0;
}

void sub_100739428(uint64_t a1)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v2 = off_100B540D8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);

  sub_10073634C(v2, v3, v4);
}

void *sub_10073947C(void *result)
{
  *result = off_100B0AF00;
  if (result[2])
  {
    operator delete[]();
  }

  return result;
}

void sub_1007394D8(void *a1)
{
  *a1 = off_100B0AF00;
  if (a1[2])
  {
    operator delete[]();
  }

  operator delete();
}

_BYTE *sub_100739554(uint64_t a1)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v2 = off_100B540D8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 26);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);

  return sub_100737844(v2, v3, v4, v5, v6, v7);
}

void sub_1007395B8(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *a1 = off_100B0AF38;
  v3 = *a2;
  *(a1 + 14) = *(a2 + 2);
  *(a1 + 10) = v3;
  *(a1 + 16) = a3;
  operator new[]();
}

void sub_1007396A0(void *a1)
{
  sub_100739740(a1);

  operator delete();
}

void sub_1007396D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v5 = off_100B540D8;
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 52);

  sub_1007388B0(v5, (a1 + 10), v6, a4, 0, v7, v8, v9);
}

void *sub_100739740(void *result)
{
  *result = off_100B0AF38;
  if (result[3])
  {
    operator delete[]();
  }

  if (result[5])
  {
    operator delete[]();
  }

  return result;
}

void sub_1007397C8(uint64_t a1)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v2 = off_100B540D8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  sub_1007373E4(v2, v3, v4);
}

void *sub_100739820(void *result)
{
  *result = &off_100B0AFA8;
  if (result[2])
  {
    operator delete[]();
  }

  return result;
}

void sub_10073987C(void *a1)
{
  *a1 = &off_100B0AFA8;
  if (a1[2])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_1007398F8(uint64_t a1)
{
  if (qword_100B540E0 != -1)
  {
    sub_10086D7A0();
  }

  v2 = off_100B540D8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 16);
  v5 = *(a1 + 12);

  sub_10073753C(v2, v3, v4, v5);
}

uint64_t sub_100739DD8(uint64_t a1)
{
  *a1 = &off_100B0BB20;
  *(a1 + 8) = &off_100B0BB50;
  *(a1 + 16) = &off_100B0BB68;
  *(a1 + 24) = &off_100B0BB98;
  sub_100007E30(&__p, "LeConnectionManager");
  sub_1005B0B68((a1 + 32), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_100B0B190;
  *(a1 + 8) = &off_100B0B220;
  *(a1 + 16) = off_100B0B238;
  *(a1 + 24) = off_100B0B268;
  *(a1 + 32) = &off_100B0B2C8;
  *(a1 + 88) = off_100B0B2E0;
  *(a1 + 96) = off_100B0B300;
  sub_100044BBC(a1 + 120);
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = a1 + 344;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 360) = a1 + 368;
  *(a1 + 392) = 0u;
  *(a1 + 384) = a1 + 392;
  *(a1 + 416) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 440) = 0u;
  *(a1 + 432) = a1 + 440;
  *(a1 + 464) = 0u;
  *(a1 + 456) = a1 + 464;
  *(a1 + 488) = 0u;
  *(a1 + 480) = a1 + 488;
  *(a1 + 512) = 0u;
  *(a1 + 504) = a1 + 512;
  *(a1 + 536) = 0u;
  *(a1 + 528) = a1 + 536;
  *(a1 + 552) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 608) = a1 + 616;
  *(a1 + 632) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 640) = a1 + 648;
  *(a1 + 672) = 0u;
  *(a1 + 664) = a1 + 672;
  *(a1 + 696) = 0u;
  *(a1 + 688) = a1 + 696;
  *(a1 + 720) = 0u;
  *(a1 + 712) = a1 + 720;
  *(a1 + 736) = -127;
  *(a1 + 808) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 800) = a1 + 808;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0;
  *(a1 + 834) = 30;
  *(a1 + 848) = 0u;
  *(a1 + 840) = a1 + 848;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 912) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 936) = a1 + 944;
  sub_100364534((a1 + 960));
  *(a1 + 1008) = 1;
  sub_100364534((a1 + 1016));
  *(a1 + 1064) = 1;
  *(a1 + 1067) = 0;
  *(a1 + 1082) = xmmword_1008C52C0;
  *(a1 + 1098) = 0xE10025801F407D0;
  *(a1 + 1106) = 786444;
  *(a1 + 1110) = 3074;
  *(a1 + 1112) = 0;
  *(a1 + 1114) = 0x6000600180018;
  *(a1 + 1122) = 771;
  *(a1 + 1126) = 1;
  *(a1 + 1128) = 0;
  *(a1 + 1144) = 0u;
  *(a1 + 1136) = a1 + 1144;
  *(a1 + 1168) = 0u;
  *(a1 + 1160) = a1 + 1168;
  *(a1 + 1184) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1192) = a1 + 1200;
  *(a1 + 1216) = 10;
  *(a1 + 1220) = 3600;
  *(a1 + 1224) = 2;
  *(a1 + 1228) = 3600;
  *(a1 + 1240) = 0u;
  *(a1 + 1232) = a1 + 1240;
  *(a1 + 1264) = 0u;
  *(a1 + 1256) = a1 + 1264;
  *(a1 + 1288) = 0u;
  *(a1 + 1280) = a1 + 1288;
  *(a1 + 1312) = 0u;
  *(a1 + 1304) = a1 + 1312;
  *(a1 + 1336) = 0u;
  *(a1 + 1328) = a1 + 1336;
  *(a1 + 1352) = -1415142493;
  *(a1 + 1356) = -24149;
  *(a1 + 1358) = -90;
  *(a1 + 1368) = 0u;
  *(a1 + 1360) = a1 + 1368;
  *(a1 + 1384) = 0;
  *(a1 + 1392) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1400) = a1 + 1408;
  *(a1 + 1432) = 0u;
  *(a1 + 1424) = a1 + 1432;
  *(a1 + 1456) = 0u;
  *(a1 + 1448) = a1 + 1456;
  *(a1 + 1480) = 0u;
  *(a1 + 1472) = a1 + 1480;
  *(a1 + 1496) = 0x7080000000ALL;
  *(a1 + 1504) = 10;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1540) = 0;
  *(a1 + 1548) = 0;
  *(a1 + 1524) = 0u;
  *(a1 + 1552) = 1;
  *(a1 + 1568) = 0u;
  *(a1 + 1560) = a1 + 1568;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = 0;
  *(a1 + 1601) = 0;
  *(a1 + 1603) = 0;
  v193 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "MaxFilterAcceptListSize");
  v3 = (*(*v2 + 88))(v2, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v193;
  v5 = qword_100BCE980;
  if (v193 < 2)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086D7B4();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for max number of devices in connection Filter Accept List", buf, 8u);
      LOBYTE(v4) = v193;
    }

    *(a1 + 832) = v4;
  }

LABEL_15:
  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "DefaultConnectionInterval");
  v7 = (*(*v6 + 88))(v6, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_27;
    }
  }

  else if (!v7)
  {
    goto LABEL_27;
  }

  v8 = v193;
  v9 = qword_100BCE980;
  if ((v193 - 8) > 0x3E0)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086D824();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Using override value %d ms for default LE connection interval", buf, 8u);
      LOWORD(v8) = v193;
    }

    *(a1 + 834) = v8;
  }

LABEL_27:
  v10 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "DataLength");
  v11 = (*(*v10 + 88))(v10, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v11)
    {
      goto LABEL_39;
    }
  }

  else if (!v11)
  {
    goto LABEL_39;
  }

  v12 = v193;
  v13 = qword_100BCE980;
  if (v193)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: Using override value %d ms for LE data length", buf, 8u);
      LOWORD(v12) = v193;
    }

    *(a1 + 836) = v12;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D894();
  }

LABEL_39:
  v14 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "AllowAllConnectionParameterUpdates");
  v15 = (*(*v14 + 88))(v14, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_52;
    }
  }

  else if (!v15)
  {
    goto LABEL_52;
  }

  v16 = qword_100BCE980;
  if (v193)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Allow all connection parameters from remote request", buf, 2u);
      v17 = v193 != 0;
    }

    else
    {
      v17 = 1;
    }

    byte_100BC7AE0 = v17;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D908();
  }

LABEL_52:
  v18 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "EnablePhyStatsFindMy");
  v19 = (*(*v18 + 88))(v18, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_65;
    }
  }

  else if (!v19)
  {
    goto LABEL_65;
  }

  v20 = qword_100BCE980;
  if (v193)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: Enabling PHY Stats for findMy connections", buf, 2u);
      v21 = v193 != 0;
    }

    else
    {
      v21 = 1;
    }

    byte_100BC7AE1 = v21;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D97C();
  }

LABEL_65:
  *(a1 + 568) = xmmword_1008C52D0;
  *(a1 + 584) = xmmword_1008C52E0;
  *(a1 + 600) = 9000;
  *(a1 + 256) = xmmword_1008C52F0;
  *(a1 + 272) = xmmword_1008C5300;
  v22 = sub_10000E92C();
  sub_100007E30(buf, "CoexConnectionScanParameters");
  sub_100007E30(v191, "CoexConnectionScanTimeout");
  v23 = (*(*v22 + 88))(v22, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_77;
    }
  }

  else if (!v23)
  {
    goto LABEL_77;
  }

  v24 = v193;
  v25 = qword_100BCE980;
  if (v193)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Warning: Override fFastConnectionScanDurationMsCoexCarPlay=%dms", buf, 8u);
      v24 = v193;
    }

    *(a1 + 596) = v24;
    *(a1 + 600) = v24;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D908();
  }

LABEL_77:
  v26 = sub_10000E92C();
  sub_100007E30(buf, "CoexConnectionScanParameters");
  sub_100007E30(v191, "CoexConnectionScanIntervalWithAudio");
  v27 = (*(*v26 + 88))(v26, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_89;
    }
  }

  else if (!v27)
  {
    goto LABEL_89;
  }

  v28 = v193;
  v29 = qword_100BCE980;
  if (v193)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v28 * 0.625;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Warning: Override fFastConnectionScanIntervalMsCoexCarPlayWithAudio=%fms", buf, 0xCu);
      LOWORD(v28) = v193;
    }

    *(a1 + 272) = v28;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086D9F0();
  }

LABEL_89:
  v30 = sub_10000E92C();
  sub_100007E30(buf, "CoexConnectionScanParameters");
  sub_100007E30(v191, "CoexConnectionScanIntervalWithoutAudio");
  v31 = (*(*v30 + 88))(v30, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_101;
    }
  }

  else if (!v31)
  {
    goto LABEL_101;
  }

  v32 = v193;
  v33 = qword_100BCE980;
  if (v193)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v32 * 0.625;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Warning: Override fFastConnectionScanIntervalMsCoexCarPlayNoAudio=%fms", buf, 0xCu);
      LOWORD(v32) = v193;
    }

    *(a1 + 270) = v32;
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086DA64();
  }

LABEL_101:
  v34 = +[NSMutableSet set];
  v35 = *(a1 + 744);
  *(a1 + 744) = v34;

  v36 = +[NSMutableSet set];
  v37 = *(a1 + 752);
  *(a1 + 752) = v36;

  v38 = +[NSMutableSet set];
  v39 = *(a1 + 760);
  *(a1 + 760) = v38;

  v40 = +[NSMutableSet set];
  v41 = *(a1 + 768);
  *(a1 + 768) = v40;

  v42 = +[NSMutableSet set];
  v43 = *(a1 + 776);
  *(a1 + 776) = v42;

  v44 = +[NSMutableSet set];
  v45 = *(a1 + 784);
  *(a1 + 784) = v44;

  v46 = +[NSMutableSet set];
  v47 = *(a1 + 792);
  *(a1 + 792) = v46;

  v48 = +[NSMutableSet set];
  v49 = *(a1 + 824);
  *(a1 + 824) = v48;

  *(a1 + 1111) = 24;
  v50 = sub_10000C7D0();
  *(a1 + 1110) = (*(*v50 + 4088))(v50, *(a1 + 1111));
  v51 = sub_10000E92C();
  if ((*(*v51 + 8))(v51))
  {
    sub_10073CC88(a1);
  }

  v52 = *(a1 + 552);
  *(a1 + 552) = 0;

  *buf = 0;
  sub_100016250(buf);
  v53 = *&buf[4];
  *(a1 + 872) = *buf;
  *(a1 + 880) = v53;
  *(a1 + 888) = 0;
  v190 = 0;
  v189 = 0;
  *(a1 + 1068) = 0;
  v54 = (a1 + 1070);
  *(a1 + 1070) = 0;
  *(a1 + 1074) = 0;
  v55 = sub_10000E92C();
  sub_100007E30(buf, "ScanCore");
  sub_100007E30(v191, "IsScanCoreConnectionOverriden");
  if ((*(*v55 + 72))(v55, buf, v191, a1 + 1068))
  {
    v56 = *(a1 + 1068);
    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
      if (!v56)
      {
        goto LABEL_165;
      }
    }

    else if (!v56)
    {
      goto LABEL_165;
    }

    v57 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Overriding Connection Scan Parameters on ScanCore.", buf, 2u);
    }

    v58 = sub_10000E92C();
    sub_100007E30(buf, "ScanCore");
    sub_100007E30(v191, "IsScanCoreEnabledConnectionScan");
    if (!(*(*v58 + 72))(v58, buf, v191, a1 + 1075))
    {
      if (v192 < 0)
      {
        operator delete(v191[0]);
      }

      if (v196 < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_162;
    }

    v59 = *(a1 + 1075);
    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
      if (!v59)
      {
LABEL_162:
        v78 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Disabled for Connection Scan.", buf, 2u);
        }

        *(a1 + 1070) = 0;
        goto LABEL_165;
      }
    }

    else if (!v59)
    {
      goto LABEL_162;
    }

    v60 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Enabled for Connection Scan.", buf, 2u);
    }

    v61 = sub_10000E92C();
    sub_100007E30(buf, "ScanCore");
    sub_100007E30(v191, "IntervalConnection");
    v62 = (*(*v61 + 88))(v61, buf, v191, &v190);
    if (v190)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
    }

    if (v63)
    {
      v64 = v190;
      *(a1 + 1072) = v190;
      v65 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v64;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Connection Scan Interval %d.", buf, 8u);
      }
    }

    v66 = sub_10000E92C();
    sub_100007E30(buf, "ScanCore");
    sub_100007E30(v191, "WindowConnection");
    v67 = (*(*v66 + 88))(v66, buf, v191, &v190);
    if (v190)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
    }

    if (v68)
    {
      v69 = v190;
      *v54 = v190;
      v70 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v69;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Connection Scan Window %d.", buf, 8u);
        LOWORD(v69) = *v54;
      }

      if (*(a1 + 1072) < v69)
      {
        *(a1 + 1068) = 0;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_10086DAD8();
        }

        *(a1 + 1070) = 0;
      }
    }

    v71 = sub_10000E92C();
    sub_100007E30(buf, "ScanCore");
    sub_100007E30(v191, "eLNAConnection");
    v72 = (*(*v71 + 72))(v71, buf, v191, &v189);
    v73 = v189;
    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    v74 = v72 & v73;
    if (v196 < 0)
    {
      operator delete(*buf);
    }

    if (v74)
    {
      v75 = v189;
      *(a1 + 1074) = v189;
      v76 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v77 = "disabled";
        if (v75)
        {
          v77 = "enabled";
        }

        *buf = 136315138;
        *&buf[4] = v77;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Overriding ScanCore Connection Scan eLNA %s.", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_165:
  v188 = 0;
  *(a1 + 1076) = 0;
  *(a1 + 1078) = 0;
  v79 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "IsConnectionScanOverriden");
  if ((*(*v79 + 72))(v79, buf, v191, a1 + 1076))
  {
    v80 = *(a1 + 1076);
    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
      if (!v80)
      {
        goto LABEL_202;
      }
    }

    else if (!v80)
    {
      goto LABEL_202;
    }

    v81 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Overriding Connection Scan Parameters on MainCore.", buf, 2u);
    }

    v82 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(v191, "ConnectionScanInterval");
    v83 = (*(*v82 + 88))(v82, buf, v191, &v188);
    if (v188)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
    }

    if (v84)
    {
      v85 = v188;
      *(a1 + 1080) = v188;
      v86 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v85;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Overriding MainCore Connection Scan Interval %d.", buf, 8u);
      }
    }

    v87 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(v191, "ConnectionScanWindow");
    v88 = (*(*v87 + 88))(v87, buf, v191, &v188);
    if (v188)
    {
      v89 = v88;
    }

    else
    {
      v89 = 0;
    }

    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
    }

    if (v89)
    {
      v90 = v188;
      *(a1 + 1078) = v188;
      v91 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v90;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Overriding MainCore Connection Scan Window %d.", buf, 8u);
      }
    }

    if (*(a1 + 1078) > *(a1 + 1080))
    {
      *(a1 + 1076) = 0;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086DB48();
      }

      *(a1 + 1078) = 0;
    }
  }

  else
  {
    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_202:
  v187 = 0;
  v92 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "MinRSSIConnection");
  v93 = (*(*v92 + 88))(v92, buf, v191, &v187);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v93)
    {
      goto LABEL_210;
    }
  }

  else if (!v93)
  {
    goto LABEL_210;
  }

  v94 = v187;
  *(a1 + 1125) = v187;
  v95 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v94;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "MinRSSIConnection %d overridden", buf, 8u);
  }

LABEL_210:
  v186 = 0;
  v96 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "GlobalMinRSSIConnection");
  v97 = (*(*v96 + 88))(v96, buf, v191, &v186);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v97)
    {
      goto LABEL_218;
    }
  }

  else if (!v97)
  {
    goto LABEL_218;
  }

  v98 = v186;
  *(a1 + 1128) = v186;
  v99 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v98;
    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "GlobalMinRSSIConnection %d overridden", buf, 8u);
  }

LABEL_218:
  v100 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "MinRSSIConnectionEnabled");
  if ((*(*v100 + 72))(v100, buf, v191, a1 + 1126))
  {
    v101 = *(a1 + 1126);
    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
      if (!v101)
      {
        goto LABEL_231;
      }
    }

    else if (!v101)
    {
      goto LABEL_231;
    }

    v102 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "MinRSSIConnectionEnabled is enabled (overridden)", buf, 2u);
    }
  }

  else
  {
    if (v192 < 0)
    {
      operator delete(v191[0]);
    }

    if (v196 < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_231:
  v185 = 0;
  v103 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "NumDisconnectionsFromDisabledToStageOne");
  v104 = (*(*v103 + 88))(v103, buf, v191, &v185);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v104)
    {
      goto LABEL_239;
    }
  }

  else if (!v104)
  {
    goto LABEL_239;
  }

  v105 = v185;
  *(a1 + 1216) = v185;
  v106 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v105;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "NumDisconnectionsFromDisabledToStageOne %d overridden", buf, 8u);
  }

LABEL_239:
  v107 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "NumDisconnectionsFromStageOneToDisabled");
  v108 = (*(*v107 + 88))(v107, buf, v191, &v185);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v108)
    {
      goto LABEL_247;
    }
  }

  else if (!v108)
  {
    goto LABEL_247;
  }

  v109 = v185;
  *(a1 + 1224) = v185;
  v110 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v109;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "NumDisconnectionsFromStageOneToDisabled %d overridden", buf, 8u);
  }

LABEL_247:
  v184 = 0;
  v111 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "TimeDurationFromDisabledToStageOne");
  v112 = (*(*v111 + 88))(v111, buf, v191, &v184);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v112)
    {
      goto LABEL_255;
    }
  }

  else if (!v112)
  {
    goto LABEL_255;
  }

  v113 = v184;
  *(a1 + 1220) = v184;
  v114 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v113;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "TimeDurationFromDisabledToStageOne %d overridden", buf, 8u);
  }

LABEL_255:
  v115 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "TimeDurationFromStageOneToDisabled");
  v116 = (*(*v115 + 88))(v115, buf, v191, &v184);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v116)
    {
      goto LABEL_263;
    }
  }

  else if (!v116)
  {
    goto LABEL_263;
  }

  v117 = v184;
  *(a1 + 1228) = v184;
  v118 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v117;
    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "TimeDurationFromStageOneToDisabled %d overridden", buf, 8u);
  }

LABEL_263:
  v183 = -93;
  v119 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnRSSIStageOneFindMy");
  v120 = (*(*v119 + 88))(v119, buf, v191, &v183);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v120)
    {
      goto LABEL_271;
    }
  }

  else if (!v120)
  {
    goto LABEL_271;
  }

  v121 = v183;
  *(a1 + 1352) = v183;
  v122 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v121;
    _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneFindMy %d overridden", buf, 8u);
  }

LABEL_271:
  v123 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnRSSIStageOneMagnet");
  v124 = (*(*v123 + 88))(v123, buf, v191, &v183);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v124)
    {
      goto LABEL_279;
    }
  }

  else if (!v124)
  {
    goto LABEL_279;
  }

  v125 = v183;
  *(a1 + 1353) = v183;
  v126 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v125;
    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneMagnet %d overridden", buf, 8u);
  }

LABEL_279:
  v127 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnRSSIStageOneExternal_Lock");
  v128 = (*(*v127 + 88))(v127, buf, v191, &v183);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v128)
    {
      goto LABEL_287;
    }
  }

  else if (!v128)
  {
    goto LABEL_287;
  }

  v129 = v183;
  *(a1 + 1354) = v183;
  v130 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v129;
    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneExternal_Lock %d overridden", buf, 8u);
  }

LABEL_287:
  v131 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnRSSIStageOneDigitalCarKey");
  v132 = (*(*v131 + 88))(v131, buf, v191, &v183);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v132)
    {
      goto LABEL_295;
    }
  }

  else if (!v132)
  {
    goto LABEL_295;
  }

  v133 = v183;
  *(a1 + 1355) = v183;
  v134 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v133;
    _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneDigitalCarKey %d overridden", buf, 8u);
  }

LABEL_295:
  v135 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnRSSIStageOneDigitalHomeKey");
  v136 = (*(*v135 + 88))(v135, buf, v191, &v183);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v136)
    {
      goto LABEL_303;
    }
  }

  else if (!v136)
  {
    goto LABEL_303;
  }

  v137 = v183;
  *(a1 + 1356) = v183;
  v138 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v137;
    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "ConnRSSIStageOneDigitalHomeKey %d overridden", buf, 8u);
  }

LABEL_303:
  v139 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConfigureCreateConnectionEnabled");
  v140 = (*(*v139 + 72))(v139, buf, v191, a1 + 1127);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v140)
    {
      goto LABEL_311;
    }
  }

  else if (!v140)
  {
    goto LABEL_311;
  }

  v141 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v142 = *(a1 + 1127);
    *buf = 67109120;
    *&buf[4] = v142;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "ConfigureCreateConnectionEnabled is set to %d (overridden)", buf, 8u);
  }

LABEL_311:
  v143 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnRSSIStageOneThirdPartyApp");
  v144 = (*(*v143 + 88))(v143, buf, v191, &v183);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v144)
    {
      goto LABEL_319;
    }
  }

  else if (!v144)
  {
    goto LABEL_319;
  }

  v145 = v183;
  *(a1 + 1357) = v183;
  v146 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v145;
    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "LEConnectionThirdPartyAppStageOneThresholdRssi %d overridden", buf, 8u);
  }

LABEL_319:
  v147 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnRSSIStageOneLECarPlay");
  v148 = (*(*v147 + 88))(v147, buf, v191, &v183);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v148)
    {
      goto LABEL_327;
    }
  }

  else if (!v148)
  {
    goto LABEL_327;
  }

  v149 = v183;
  *(a1 + 1358) = v183;
  v150 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v149;
    _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "LEConnectionLECarPlayStageOneThresholdRssi %d overridden", buf, 8u);
  }

LABEL_327:
  v182 = 0.0;
  v151 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnScanTimeoutExtendPercent");
  v152 = (*(*v151 + 104))(v151, buf, v191, &v182);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
    if (!v152)
    {
      goto LABEL_339;
    }
  }

  else if (!v152)
  {
    goto LABEL_339;
  }

  v153 = v182;
  v154 = qword_100BCE980;
  if (v182 <= 0.0)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086DBB8();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v153;
      _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "Set ConnScanTimeoutExtendPercent %f percent", buf, 0xCu);
      v153 = v182;
    }

    *(a1 + 1388) = v153;
  }

LABEL_339:
  v155 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnectionDenyListTimeoutSecondsOverride");
  v156 = (*(*v155 + 88))(v155, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
  }

  v157 = v193;
  if (v193 > 0)
  {
    v158 = v156;
  }

  else
  {
    v158 = 0;
  }

  if (v158 == 1)
  {
    v159 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v157;
      _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionDenyList: Using override value (%d) for fLeConnectionDenyListTimeoutSec", buf, 8u);
      v157 = v193;
    }

    *(a1 + 1500) = v157;
  }

  v160 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnectionDenyListIntervalSecondsOverride");
  v161 = (*(*v160 + 88))(v160, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
  }

  v162 = v193;
  if (v193 > 0)
  {
    v163 = v161;
  }

  else
  {
    v163 = 0;
  }

  if (v163 == 1)
  {
    v164 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v162;
      _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionDenyList: Using override value (%d) for fLeConnectionDenyListIntervalSec", buf, 8u);
      v162 = v193;
    }

    *(a1 + 1496) = v162;
  }

  v165 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "ConnectionDenyListCountThresholdOverride");
  v166 = (*(*v165 + 88))(v165, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
  }

  v167 = v193;
  if (v193 > 0)
  {
    v168 = v166;
  }

  else
  {
    v168 = 0;
  }

  if (v168 == 1)
  {
    v169 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v167;
      _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "Warning: LeConnectionDenyList: Using override value (%d) for fLeConnectionDenyListCountThreshold", buf, 8u);
      v167 = v193;
    }

    *(a1 + 1504) = v167;
  }

  *(a1 + 1601) = 1;
  v170 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v191, "MRCConfigForExtendedRangeUseCase");
  v171 = (*(*v170 + 88))(v170, buf, v191, &v193);
  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  if (v196 < 0)
  {
    operator delete(*buf);
  }

  v172 = v193;
  if (v193 > 0)
  {
    v173 = v171;
  }

  else
  {
    v173 = 0;
  }

  if (v173 == 1)
  {
    v174 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v172;
      _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for MRCConfigForExtendedRangeUseCase", buf, 8u);
      LOBYTE(v172) = v193;
    }

    *(a1 + 1601) = v172;
  }

  v175 = objc_opt_new();
  v176 = *(a1 + 1536);
  *(a1 + 1536) = v175;

  v177 = objc_opt_new();
  v178 = *(a1 + 1544);
  *(a1 + 1544) = v177;

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v179 = _os_feature_enabled_impl();
  if (v179)
  {
    v180 = sub_10000C798();
    LOBYTE(v179) = (*(*v180 + 352))(v180);
  }

  *(a1 + 1603) = v179;
  return a1;
}

void sub_10073C820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_100773C7C(v34 + 1560, *(v34 + 1568));
  sub_100773BDC(v34 + 1472, *(v34 + 1480));
  sub_100773BDC(v34 + 1448, *(v34 + 1456));
  sub_10000CEDC(v34 + 1424, *(v34 + 1432));
  sub_10000CEDC(v34 + 1400, *(v34 + 1408));
  sub_10004B61C(v34 + 1360, *(v34 + 1368));
  sub_10000CEDC(v34 + 1328, *(v34 + 1336));
  sub_10000CEDC(v34 + 1304, *(v34 + 1312));
  sub_10000CEDC(v34 + 1280, *(v34 + 1288));
  sub_10000CEDC(v34 + 1256, *(v34 + 1264));
  sub_10000CEDC(v34 + 1232, *(v34 + 1240));
  sub_10004B61C(v34 + 1192, *(v34 + 1200));
  sub_1003C46E0(v34 + 1160, *(v34 + 1168));
  sub_10000CEDC(v34 + 1136, *(v34 + 1144));
  sub_1003645A0(v34 + 1016);
  sub_1003645A0(v39 + 95);
  sub_10007A490((v39 + 92), *(v34 + 944));
  v40 = *(v34 + 904);
  if (v40)
  {
    *(v34 + 912) = v40;
    operator delete(v40);
  }

  sub_10000CEDC((v39 + 80), *(v34 + 848));

  sub_10000CEDC((v39 + 75), *(v34 + 808));
  sub_10000CEDC((v39 + 64), *(v34 + 720));
  sub_10000CEDC((v39 + 61), *(v34 + 696));
  sub_10000CEDC((v39 + 58), *(v34 + 672));
  sub_100773B78((v39 + 55), *(v34 + 648));
  sub_10000CEDC((v39 + 51), *(v34 + 616));

  sub_10000CEDC((v39 + 41), *(v34 + 536));
  sub_10000CEDC((v39 + 38), *(v34 + 512));
  sub_10000CEDC((v39 + 35), *(v34 + 488));
  sub_10000CEDC((v39 + 32), *(v34 + 464));
  sub_10000CEDC((v39 + 29), *(v34 + 440));
  sub_10000CEDC(v38, *(v34 + 416));
  sub_10000CEDC(v37, *(v34 + 392));
  sub_10000CEDC(v36, *(v34 + 368));
  sub_10000CEDC(v35, *(v34 + 344));
  v41 = *(v34 + 232);
  if (v41)
  {
    *(v34 + 240) = v41;
    operator delete(v41);
  }

  v42 = *v39;
  if (*v39)
  {
    *(v34 + 208) = v42;
    operator delete(v42);
  }

  sub_10007A068(v34 + 120);
  sub_1005B0D58(a10);
  _Unwind_Resume(a1);
}