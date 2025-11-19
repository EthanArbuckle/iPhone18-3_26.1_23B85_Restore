void sub_100313024(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100313024(a1, *a2);
    sub_100313024(a1, a2[1]);
    sub_100313084(a1, a2 + 4);

    operator delete(a2);
  }
}

void sub_100313084(uint64_t a1, void *a2)
{
  a2[5] = &off_100AE0A78;
  v3 = a2[6];
  if (v3)
  {
    sub_10000C808(v3);
  }

  a2[3] = &off_100AE0A78;
  v4 = a2[4];
  if (v4)
  {

    sub_10000C808(v4);
  }
}

void sub_100313114(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100313168(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100313168(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t sub_100313288(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_10031332C();
  }

  return result;
}

void sub_1003133F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10031340C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10031340C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_100313084(*a1, __p + 4);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_1003134D0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000C7698();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100313618(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v7 + 32) = *(a2 + 32);
  *&v17 = 40 * v2 + 40;
  v9 = a1[1];
  v10 = 40 * v2 + *a1 - v9;
  sub_100313670(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003136FC(&v15);
  return v14;
}

void sub_100313604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003136FC(va);
  _Unwind_Resume(a1);
}

void sub_100313618(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100313670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }
}

uint64_t sub_1003136FC(uint64_t a1)
{
  sub_100313734(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100313734(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_1003137F8(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_100313084(a1, a2 + 4);
  operator delete(a2);
  return v4;
}

void sub_100313844(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_1003138F4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_10031393C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003139A8()
{
  v0 = objc_autoreleasePoolPush();
  sub_100364534(&stru_100BCE350);
  __cxa_atexit(sub_1003645A0, &stru_100BCE350, &_mh_execute_header);
  sub_100044BBC(&unk_100BCE380);
  __cxa_atexit(sub_10007A068, &unk_100BCE380, &_mh_execute_header);
  sub_100364534(&stru_100BCE3C8);
  __cxa_atexit(sub_1003645A0, &stru_100BCE3C8, &_mh_execute_header);
  sub_100044BBC(&unk_100BCE3F8);
  __cxa_atexit(sub_10007A068, &unk_100BCE3F8, &_mh_execute_header);
  sub_100044BBC(&unk_100BCE440);
  __cxa_atexit(sub_10007A068, &unk_100BCE440, &_mh_execute_header);
  sub_100364534(&stru_100BCE480);
  __cxa_atexit(sub_1003645A0, &stru_100BCE480, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void *sub_100313AE4(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = sub_1005ADAE8(a1, a2, a3);
  *result = &off_100AEADA8;
  return result;
}

void sub_100313B18(uint64_t a1, const uint8_t *a2, CFIndex a3)
{
  if (a3)
  {
    v5 = *a2;
    if (*(a1 + 216))
    {
      if (*a2 <= 0x8Fu)
      {
        if (*a2 > 0x13u)
        {
          if ((v5 - 32) >= 3)
          {
            if (v5 == 20)
            {
              v7 = qword_100BCEAA0;
              if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
              {
                v8 = (*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 40));
                *buf = 67109376;
                *&buf[4] = 20;
                v16 = 1024;
                v17 = v8;
                _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received exit suspend input report (ID %u), should undim %d", buf, 0xEu);
              }

LABEL_25:
              if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
              {
                sub_100817978();
              }

              return;
            }

            goto LABEL_31;
          }

LABEL_21:
          v10 = -12;
          goto LABEL_22;
        }

        switch(v5)
        {
          case 1:
            v10 = -15;
            goto LABEL_22;
          case 17:
            goto LABEL_21;
          case 19:
            v11 = qword_100BCEAA0;
            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = 19;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received power-off notice input report (ID %u)", buf, 8u);
            }

            return;
        }

LABEL_31:
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
        {
          sub_1008179EC();
        }

        return;
      }

      v9 = (v5 - 144);
      if (v9 <= 0x36)
      {
        if (((1 << (v5 + 112)) & 0x40000000000C01) != 0)
        {
          goto LABEL_15;
        }

        if (v9 == 48)
        {
          v10 = -14;
          goto LABEL_22;
        }
      }

      if (v5 != 224)
      {
        goto LABEL_31;
      }

LABEL_15:
      v10 = -16;
LABEL_22:
      buf[0] = v10;
      if (sub_1000C0430((a1 + 192), buf))
      {
        v14 = v10;
        *buf = &v14;
        v12 = sub_100314704((a1 + 192), &v14)[3];
        if (v12)
        {
          v13 = mach_absolute_time();
          IOHIDUserDeviceHandleReportWithTimeStamp(v12, v13, a2, a3);
          return;
        }
      }

      goto LABEL_25;
    }

    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100817A60();
    }
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100817AD8();
  }
}

uint64_t sub_100313E14(uint64_t a1, void *a2)
{
  sub_1005AE020(a1, a2);
  sub_100314058(a1, a2);
  v4 = a2;
  v5 = [v4 valueForKey:@"ProductID"];
  v6 = [v5 intValue];
  v13 = 14;
  if (v6 == *sub_1003141CC(&unk_100BCE698, &v13) || (v12 = 16, v6 == *sub_1003141CC(&unk_100BCE698, &v12)) || (v11 = 26, v6 == *sub_1003141CC(&unk_100BCE698, &v11)) || (v10 = 27, v6 == *sub_1003141CC(&unk_100BCE698, &v10)))
  {
    v7 = sub_100314310();
    sub_10031421C(a1, v4, v7);

    sub_1003143C0(a1, v4);
  }

  else
  {
    v13 = 15;
    if (v6 == *sub_1003141CC(&unk_100BCE698, &v13) || (v12 = 25, v6 == *sub_1003141CC(&unk_100BCE698, &v12)))
    {
      v9 = sub_100314310();
      sub_10031421C(a1, v4, v9);
    }

    else
    {
      v9 = sub_1003144BC();
      sub_10031421C(a1, v4, v9);
    }
  }

  v13 = 12;
  if (v6 == *sub_1003141CC(&unk_100BCE698, &v13))
  {
    sub_10031456C(a1, v4);
  }

  return 1;
}

uint64_t sub_100314058(uint64_t a1, void *a2)
{
  v8 = xmmword_1008A56AE;
  v9 = unk_1008A56BE;
  *v10 = xmmword_1008A56CE;
  v6 = xmmword_1008A568E;
  v7 = unk_1008A569E;
  *&v10[15] = -1073577627;
  *(a1 + 304) = a1;
  *(a1 + 312) = -16;
  v3 = [a2 mutableCopy];
  [v3 setObject:@"Keyboard" forKeyedSubscript:@"Accessory Category"];
  [v3 setObject:&off_100B34540 forKeyedSubscript:@"ExtendedData"];
  v4 = sub_1005ADE88(a1, v3, &v6, 83, *(a1 + 312), 0);
  if (v4)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100817B14();
  }

  return v4;
}

uint64_t *sub_1003141CC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    abort();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10031421C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(a1 + 320) = a1;
  *(a1 + 328) = -15;
  v6 = sub_1005ADE88(a1, a2, [v5 bytes], objc_msgSend(v5, "length"), *(a1 + 328), 1);
  if (v6)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100817B50();
  }

  return v6;
}

id sub_100314310()
{
  v2[10] = xmmword_1008A57C9;
  v3[0] = unk_1008A57D9;
  *(v3 + 15) = unk_1008A57E8;
  v2[6] = xmmword_1008A5789;
  v2[7] = unk_1008A5799;
  v2[8] = xmmword_1008A57A9;
  v2[9] = unk_1008A57B9;
  v2[2] = xmmword_1008A5749;
  v2[3] = unk_1008A5759;
  v2[4] = xmmword_1008A5769;
  v2[5] = unk_1008A5779;
  v2[0] = xmmword_1008A5729;
  v2[1] = unk_1008A5739;
  v0 = [NSData dataWithBytes:v2 length:207];

  return v0;
}

uint64_t sub_1003143C0(uint64_t a1, void *a2)
{
  v4 = xmmword_1008A56FC;
  v5[0] = unk_1008A570C;
  *(v5 + 13) = unk_1008A5719;
  *(a1 + 352) = a1;
  *(a1 + 360) = -12;
  v2 = sub_1005ADE88(a1, a2, &v4, 45, 244, 2);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100817B8C();
  }

  return v2;
}

id sub_1003144BC()
{
  v2[8] = xmmword_1008A5878;
  v2[9] = unk_1008A5888;
  *v3 = xmmword_1008A5898;
  *&v3[14] = 0xC022813F85409508;
  v2[4] = xmmword_1008A5838;
  v2[5] = unk_1008A5848;
  v2[6] = xmmword_1008A5858;
  v2[7] = unk_1008A5868;
  v2[0] = xmmword_1008A57F8;
  v2[1] = unk_1008A5808;
  v2[2] = xmmword_1008A5818;
  v2[3] = unk_1008A5828;
  v0 = [NSData dataWithBytes:v2 length:182];

  return v0;
}

uint64_t sub_10031456C(uint64_t a1, void *a2)
{
  v4[0] = xmmword_1008A56E1;
  *(v4 + 11) = *(&xmmword_1008A56E1 + 11);
  *(a1 + 336) = a1;
  *(a1 + 344) = -14;
  v2 = sub_1005ADE88(a1, a2, v4, 27, 242, 2);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100817BC8();
  }

  return v2;
}

void sub_1003146CC(uint64_t a1)
{
  sub_1005ADBAC(a1);

  operator delete();
}

uint64_t **sub_100314704(void *a1, unsigned __int8 *a2)
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

void sub_100314944(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent::initialize", buf, 2u);
  }

  *(a1 + 322) = 0;
  v101 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v106, "EnableGetExtraBTCSPhyLogs");
  v4 = (*(*v3 + 72))(v3, buf, v106, &v101);
  if (v107 < 0)
  {
    operator delete(*v106);
  }

  if (SHIBYTE(v104) < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v101;
  *(a1 + 322) = v101;
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent EnableGetExtraBTCSPhyLogs set to %d", buf, 8u);
  }

LABEL_11:
  *buf = 0;
  v103 = buf;
  v104 = 0x2020000000;
  v105 = 0;
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_1003160F0;
  v100[3] = &unk_100AE1120;
  v100[4] = buf;
  v7 = v100;
  if (qword_100B6D278 != -1)
  {
    dispatch_once(&qword_100B6D278, v7);
  }

  if (byte_100B6D260 == 1)
  {
    v8 = sub_10000C7D0();
    HIDWORD(v83) = word_100B6D276;
    LOWORD(v83) = word_100B6D274;
    (*(*v8 + 1376))(v8, byte_100B6D261, byte_100B6D262, word_100B6D264, dword_100B6D268, dword_100B6D26C, word_100B6D270, byte_100B6D272, v83, 0);
  }

  v9 = a1 + 77824;
  *(a1 + 78625) = 0;
  *(a1 + 78622) = 0;
  *(a1 + 78629) = 783;
  *(a1 + 78631) = 0;
  v10 = a1 + 78632;
  *(a1 + 78632) = 5439488;
  *(a1 + 78639) = 0x900000807060100;
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_100316B64;
  v99[3] = &unk_100ADF8F8;
  v99[4] = a1;
  v11 = v99;
  if (qword_100B6D280 != -1)
  {
    dispatch_once(&qword_100B6D280, v11);
  }

  v12 = sub_10000C7D0();
  if ((*(*v12 + 3296))(v12) && *(v9 + 799) == 1)
  {
    v13 = sub_10000C7D0();
    LOBYTE(v83) = 0;
    (*(*v13 + 2008))(v13, *(v9 + 800), *(v9 + 802), *(v9 + 804), *(v9 + 805), *(v9 + 806), *(v9 + 807), v10, v83);
  }

  *(v103 + 6) = 0;
  if (qword_100B6D288 != -1)
  {
    sub_100817C04();
  }

  v14 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_numConfigSupported");
  v15 = (*(*v14 + 88))(v14, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v15)
    {
      goto LABEL_26;
    }

LABEL_29:
    LOBYTE(v16) = 4;
    goto LABEL_30;
  }

  operator delete(*v106);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_26:
  v16 = *(v103 + 6);
  v17 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters numConfigSupported set to %d", v106, 8u);
  }

LABEL_30:
  v18 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_maxProceduresSupported");
  v19 = (*(*v18 + 88))(v18, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v19)
    {
      goto LABEL_34;
    }

LABEL_37:
    LOWORD(v20) = 0;
    goto LABEL_38;
  }

  operator delete(*v106);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_34:
  v20 = *(v103 + 6);
  v21 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters maxProceduresSupported set to %d", v106, 8u);
  }

LABEL_38:
  v22 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_numAntennaSupported");
  v23 = (*(*v22 + 88))(v22, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_45:
    LOBYTE(v24) = 1;
    goto LABEL_46;
  }

  operator delete(*v106);
  if (!v23)
  {
    goto LABEL_45;
  }

LABEL_42:
  v24 = *(v103 + 6);
  v25 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters numAntennaSupported set to %d", v106, 8u);
  }

LABEL_46:
  v26 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_maxAntennaPathsSupported");
  v27 = (*(*v26 + 88))(v26, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v27)
    {
      goto LABEL_50;
    }

LABEL_53:
    LOBYTE(v96) = 1;
    goto LABEL_54;
  }

  operator delete(*v106);
  if (!v27)
  {
    goto LABEL_53;
  }

LABEL_50:
  v96 = *(v103 + 6);
  v28 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v96;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters maxAntennaPathsSupported set to %d", v106, 8u);
  }

LABEL_54:
  v29 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_rolesSupported");
  v30 = (*(*v29 + 88))(v29, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v30)
    {
      goto LABEL_58;
    }

LABEL_61:
    LOBYTE(v95) = 3;
    goto LABEL_62;
  }

  operator delete(*v106);
  if (!v30)
  {
    goto LABEL_61;
  }

LABEL_58:
  v95 = *(v103 + 6);
  v31 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v95;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters rolesSupported set to %d", v106, 8u);
  }

LABEL_62:
  v32 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_optionalModesSupported");
  v33 = (*(*v32 + 88))(v32, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v33)
    {
      goto LABEL_66;
    }

LABEL_69:
    LOBYTE(v94) = 1;
    goto LABEL_70;
  }

  operator delete(*v106);
  if (!v33)
  {
    goto LABEL_69;
  }

LABEL_66:
  v94 = *(v103 + 6);
  v34 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v94;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters optionalModesSupported set to %d", v106, 8u);
  }

LABEL_70:
  v35 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_RTTCapabilies");
  v36 = (*(*v35 + 88))(v35, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v36)
    {
      goto LABEL_74;
    }

LABEL_77:
    LOBYTE(v93) = 7;
    goto LABEL_78;
  }

  operator delete(*v106);
  if (!v36)
  {
    goto LABEL_77;
  }

LABEL_74:
  v93 = *(v103 + 6);
  v37 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v93;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters RTTCapabilies set to %d", v106, 8u);
  }

LABEL_78:
  v38 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_RTTAAOnlyN");
  v39 = (*(*v38 + 88))(v38, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v39)
    {
      goto LABEL_82;
    }

LABEL_85:
    LOBYTE(v92) = 0;
    goto LABEL_86;
  }

  operator delete(*v106);
  if (!v39)
  {
    goto LABEL_85;
  }

LABEL_82:
  v92 = *(v103 + 6);
  v40 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v92;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters RTTAAOnlyN set to %d", v106, 8u);
  }

LABEL_86:
  v41 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_RTTSoundingN");
  v42 = (*(*v41 + 88))(v41, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v42)
    {
      goto LABEL_90;
    }

LABEL_93:
    LOBYTE(v91) = 0;
    goto LABEL_94;
  }

  operator delete(*v106);
  if (!v42)
  {
    goto LABEL_93;
  }

LABEL_90:
  v91 = *(v103 + 6);
  v43 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v91;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters RTTSoundingN set to %d", v106, 8u);
  }

LABEL_94:
  v44 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_RTTRandomPayloadN");
  v45 = (*(*v44 + 88))(v44, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v45)
    {
      goto LABEL_98;
    }

LABEL_101:
    LOBYTE(v90) = 0;
    goto LABEL_102;
  }

  operator delete(*v106);
  if (!v45)
  {
    goto LABEL_101;
  }

LABEL_98:
  v90 = *(v103 + 6);
  v46 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v90;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters RTTRandomPayloadN set to %d", v106, 8u);
  }

LABEL_102:
  v47 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_optionalNadmSoundingCap");
  v48 = (*(*v47 + 88))(v47, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v48)
    {
      goto LABEL_106;
    }

LABEL_109:
    LOWORD(v89) = 0;
    goto LABEL_110;
  }

  operator delete(*v106);
  if (!v48)
  {
    goto LABEL_109;
  }

LABEL_106:
  v89 = *(v103 + 6);
  v49 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v89;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters optionalNadmSoundingCap set to %d", v106, 8u);
  }

LABEL_110:
  v50 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_optionalNadmRandomCap");
  v51 = (*(*v50 + 88))(v50, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v51)
    {
      goto LABEL_114;
    }

LABEL_117:
    LOWORD(v88) = 0;
    goto LABEL_118;
  }

  operator delete(*v106);
  if (!v51)
  {
    goto LABEL_117;
  }

LABEL_114:
  v88 = *(v103 + 6);
  v52 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v88;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters optionalNadmRandomCap set to %d", v106, 8u);
  }

LABEL_118:
  v53 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_csSyncPhysSupported");
  v54 = (*(*v53 + 88))(v53, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v54)
    {
      goto LABEL_122;
    }

LABEL_125:
    LOBYTE(v87) = 0;
    goto LABEL_126;
  }

  operator delete(*v106);
  if (!v54)
  {
    goto LABEL_125;
  }

LABEL_122:
  v87 = *(v103 + 6);
  v55 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v87;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters csSyncPhysSupported set to %d", v106, 8u);
  }

LABEL_126:
  v56 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_optionalSubfeaturesSupported");
  v57 = (*(*v56 + 88))(v56, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v57)
    {
      goto LABEL_130;
    }

LABEL_133:
    LOWORD(v86) = 0;
    goto LABEL_134;
  }

  operator delete(*v106);
  if (!v57)
  {
    goto LABEL_133;
  }

LABEL_130:
  v86 = *(v103 + 6);
  v58 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v86;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters optionalSubfeaturesSupported set to %d", v106, 8u);
  }

LABEL_134:
  v59 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_optionalTIP1TimesSupported");
  v60 = (*(*v59 + 88))(v59, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v60)
    {
      goto LABEL_138;
    }

LABEL_141:
    LOWORD(v61) = 0;
    goto LABEL_142;
  }

  operator delete(*v106);
  if (!v60)
  {
    goto LABEL_141;
  }

LABEL_138:
  v61 = *(v103 + 6);
  v62 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v61;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters optionalTIP1TimesSupported set to %d", v106, 8u);
  }

LABEL_142:
  v63 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_optionalTIP2TimesSupported");
  v64 = (*(*v63 + 88))(v63, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v64)
    {
      goto LABEL_146;
    }

LABEL_149:
    LOWORD(v65) = 0;
    goto LABEL_150;
  }

  operator delete(*v106);
  if (!v64)
  {
    goto LABEL_149;
  }

LABEL_146:
  v65 = *(v103 + 6);
  v66 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v65;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters optionalTIP2TimesSupported set to %d", v106, 8u);
  }

LABEL_150:
  v67 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_optionalTFCSTimesSupported");
  v68 = (*(*v67 + 88))(v67, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v68)
    {
      goto LABEL_154;
    }

LABEL_157:
    LOWORD(v69) = 0;
    goto LABEL_158;
  }

  operator delete(*v106);
  if (!v68)
  {
    goto LABEL_157;
  }

LABEL_154:
  v69 = *(v103 + 6);
  v70 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v69;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters optionalTFCSTimesSupported set to %d", v106, 8u);
  }

LABEL_158:
  v71 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_optionalTPMTimesSupported");
  v72 = (*(*v71 + 88))(v71, v106, __p, v103 + 24);
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v107 & 0x80000000) == 0)
  {
    if (v72)
    {
      goto LABEL_162;
    }

LABEL_165:
    LOWORD(v73) = 0;
    goto LABEL_166;
  }

  operator delete(*v106);
  if (!v72)
  {
    goto LABEL_165;
  }

LABEL_162:
  v73 = *(v103 + 6);
  v74 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v106 = 67109120;
    *&v106[4] = v73;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters optionalTPMTimesSupported set to %d", v106, 8u);
  }

LABEL_166:
  v75 = sub_10000E92C();
  sub_100007E30(v106, "LE");
  sub_100007E30(__p, "CSSetParam_TSWTime");
  v76 = (*(*v75 + 88))(v75, v106, __p, v103 + 24);
  v77 = v24;
  if (v98 < 0)
  {
    operator delete(__p[0]);
  }

  v78 = v20;
  if (v107 < 0)
  {
    operator delete(*v106);
  }

  v79 = v16;
  if (v76)
  {
    v80 = *(v103 + 6);
    v81 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *v106 = 67109120;
      *&v106[4] = v80;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent hciVscLeSetCsParameters TSWTime set to %d", v106, 8u);
    }
  }

  else
  {
    LOBYTE(v80) = 1;
  }

  if (byte_100B6D290 == 1)
  {
    v82 = sub_10000C7D0();
    BYTE5(v85) = 0;
    BYTE4(v85) = v80;
    WORD1(v85) = v73;
    LOWORD(v85) = v69;
    HIWORD(v84) = v65;
    WORD2(v84) = v61;
    WORD1(v84) = v86;
    LOWORD(v84) = v87;
    HIWORD(v83) = v88;
    WORD2(v83) = v89;
    BYTE2(v83) = v90;
    BYTE1(v83) = v91;
    LOBYTE(v83) = v92;
    (*(*v82 + 2016))(v82, v79, v78, v77, v96, v95, v94, v93, v83, v84, v85);
  }

  _Block_object_dispose(buf, 8);
}

void sub_1003160F0(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "enableLeCsSetScheduling");
  v3 = (*(*v2 + 72))(v2, buf, __p, &byte_100B6D260);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = byte_100B6D260;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling enableLeCsSetScheduling set to %d", buf, 8u);
  }

LABEL_9:
  v5 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsSetSchedulingShouldUse");
  v6 = (*(*v5 + 72))(v5, buf, __p, &byte_100B6D261);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  else if (!v6)
  {
    goto LABEL_17;
  }

  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = byte_100B6D261;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling leCsSetSchedulingShouldUse set to %d", buf, 8u);
  }

LABEL_17:
  v8 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsSetSchedulingShouldReject");
  v9 = (*(*v8 + 72))(v8, buf, __p, &byte_100B6D262);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else if (!v9)
  {
    goto LABEL_25;
  }

  v10 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = byte_100B6D262;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling LeCsSetSchedulingShouldReject set to %d", buf, 8u);
  }

LABEL_25:
  v11 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsSetSchedulingConnEventCount");
  v12 = (*(*v11 + 88))(v11, buf, __p, *(*(a1 + 32) + 8) + 24);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else if (!v12)
  {
    goto LABEL_33;
  }

  v13 = *(*(*(a1 + 32) + 8) + 24);
  word_100B6D264 = v13;
  v14 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling leCsSetSchedulingConnEventCount set to %d", buf, 8u);
  }

LABEL_33:
  v15 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsSetSchedulingOffsetMin");
  v16 = (*(*v15 + 88))(v15, buf, __p, *(*(a1 + 32) + 8) + 24);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else if (!v16)
  {
    goto LABEL_41;
  }

  v17 = *(*(*(a1 + 32) + 8) + 24);
  dword_100B6D268 = v17;
  v18 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling leCsSetSchedulingOffsetMin set to %d", buf, 8u);
  }

LABEL_41:
  v19 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsSetSchedulingOffsetMax");
  v20 = (*(*v19 + 88))(v19, buf, __p, *(*(a1 + 32) + 8) + 24);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v20)
    {
      goto LABEL_49;
    }
  }

  else if (!v20)
  {
    goto LABEL_49;
  }

  v21 = *(*(*(a1 + 32) + 8) + 24);
  dword_100B6D26C = v21;
  v22 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling leCsSetSchedulingOffsetMax set to %d", buf, 8u);
  }

LABEL_49:
  v23 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsSetSchedulingEventInterval");
  v24 = (*(*v23 + 88))(v23, buf, __p, *(*(a1 + 32) + 8) + 24);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v24)
    {
      goto LABEL_57;
    }
  }

  else if (!v24)
  {
    goto LABEL_57;
  }

  v25 = *(*(*(a1 + 32) + 8) + 24);
  word_100B6D270 = v25;
  v26 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling LeCsSetSchedulingEventInterval set to %d", buf, 8u);
  }

LABEL_57:
  v27 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsSetSchedulingSubeventsPerEvents");
  v28 = (*(*v27 + 88))(v27, buf, __p, *(*(a1 + 32) + 8) + 24);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v28)
    {
      goto LABEL_65;
    }
  }

  else if (!v28)
  {
    goto LABEL_65;
  }

  v29 = *(*(*(a1 + 32) + 8) + 24);
  byte_100B6D272 = v29;
  v30 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v29;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling LeCsSetSchedulingSubEventsPerEvents set to %d", buf, 8u);
  }

LABEL_65:
  v31 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsSetSchedulingSubeventInterval");
  v32 = (*(*v31 + 88))(v31, buf, __p, *(*(a1 + 32) + 8) + 24);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v32)
    {
      goto LABEL_73;
    }
  }

  else if (!v32)
  {
    goto LABEL_73;
  }

  v33 = *(*(*(a1 + 32) + 8) + 24);
  word_100B6D274 = v33;
  v34 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v33;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling LeCsSetSchedulingSubeventInterval set to %d", buf, 8u);
  }

LABEL_73:
  v35 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsSetSchedulingSubeventLengthMax");
  v36 = (*(*v35 + 88))(v35, buf, __p, *(*(a1 + 32) + 8) + 24);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(*buf);
    if (!v36)
    {
      return;
    }
  }

  else if (!v36)
  {
    return;
  }

  v37 = *(*(*(a1 + 32) + 8) + 24);
  word_100B6D276 = v37;
  v38 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v37;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsSetScheduling LeCsSetSchedulingSubeventLengthMax set to %d", buf, 8u);
  }
}

void sub_100316AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100316B64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v56 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableGetExtraBTCSPhyLogsCustomValues");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v56);
  if (v60 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v56;
  *(v1 + 78622) = v56;
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs enable set to %d", buf, 8u);
  }

LABEL_9:
  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableGetExtraBTCSPhyLogsCustomValuesAtInit");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v56);
  if (v60 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v63) < 0)
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

  v8 = v56;
  *(v1 + 78623) = v56;
  v9 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs enable At Init set to %d", buf, 8u);
  }

LABEL_17:
  v55 = 0;
  v10 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsPhyLogsHdrFlags");
  v11 = (*(*v10 + 88))(v10, buf, __p, &v55);
  if (v60 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v55;
  *(v1 + 78624) = v55;
  v13 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs hdrFlags set to %d", buf, 8u);
  }

LABEL_25:
  v54 = 0;
  v14 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsPhyLogsCmdOpCode");
  v15 = (*(*v14 + 88))(v14, buf, __p, &v54);
  if (v60 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_33;
    }
  }

  else if (!v15)
  {
    goto LABEL_33;
  }

  v16 = v54;
  *(v1 + 78626) = v54;
  v17 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs fCsPhyLogs.cmdOpcode set to %d", buf, 8u);
  }

LABEL_33:
  v53 = 0;
  v18 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsPhyLogsPhyStatus");
  v19 = (*(*v18 + 88))(v18, buf, __p, &v53);
  if (v60 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_41;
    }
  }

  else if (!v19)
  {
    goto LABEL_41;
  }

  v20 = v53;
  *(v1 + 78628) = v53;
  v21 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs fCsPhyLogs.phyStatus set to %d", buf, 8u);
  }

LABEL_41:
  v52 = 0;
  v22 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsPhyLogsCmdParamsSize");
  v23 = (*(*v22 + 88))(v22, buf, __p, &v52);
  if (v60 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_49;
    }
  }

  else if (!v23)
  {
    goto LABEL_49;
  }

  v24 = v52;
  *(v1 + 78629) = v52;
  v25 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs fCsPhyLogs.cmdParamsSize set to %d", buf, 8u);
  }

LABEL_49:
  v51 = 0;
  v26 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsPhyLogsDestCpuId");
  v27 = (*(*v26 + 88))(v26, buf, __p, &v51);
  if (v60 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_57;
    }
  }

  else if (!v27)
  {
    goto LABEL_57;
  }

  v28 = v51;
  *(v1 + 78630) = v51;
  v29 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs fCsPhyLogs.destCpuId set to %d", buf, 8u);
  }

LABEL_57:
  v50 = 0;
  v30 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "LeCsPhyLogsPadding");
  v31 = (*(*v30 + 88))(v30, buf, __p, &v50);
  if (v60 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_65;
    }
  }

  else if (!v31)
  {
    goto LABEL_65;
  }

  v32 = v50;
  *(v1 + 78631) = v50;
  v33 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs fCsPhyLogs.padding set to %d", buf, 8u);
  }

LABEL_65:
  *buf = 0;
  v62 = 0;
  v63 = 0;
  v34 = sub_10000E92C();
  sub_100007E30(__p, "LeCsPhyLogsCmdParams");
  v35 = (*(*v34 + 120))(v34, __p, buf);
  v36 = v35;
  if (v60 < 0)
  {
    operator delete(*__p);
    if (!v36)
    {
      goto LABEL_86;
    }
  }

  else if (!v35)
  {
    goto LABEL_86;
  }

  v38 = *buf;
  v37 = v62;
  v39 = 0xAAAAAAAAAAAAAAABLL * ((v62 - *buf) >> 3);
  if (v39 >= 0x101)
  {
    v40 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109376;
      *&__p[4] = v39;
      *&__p[8] = 1024;
      *&__p[10] = 256;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs input size greater than allowed  %d:%d", __p, 0xEu);
      v38 = *buf;
      v37 = v62;
      v39 = 0xAAAAAAAAAAAAAAABLL * ((v62 - *buf) >> 3);
    }
  }

  v41 = v52;
  if (v39 > v52)
  {
    v42 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109632;
      *&__p[4] = v39;
      *&__p[8] = 1024;
      *&__p[10] = 256;
      v58 = 1024;
      v59 = v41;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs input size greater than configured cmdParamsSizeInt  %d:%d:%d", __p, 0x14u);
      v38 = *buf;
      v37 = v62;
      v39 = 0xAAAAAAAAAAAAAAABLL * ((v62 - *buf) >> 3);
    }
  }

  if (v39 >= 0x100)
  {
    v43 = 256;
  }

  else
  {
    v43 = v39;
  }

  if (v37 != v38)
  {
    v44 = 0;
    v45 = (v1 + 78632);
    if (v43 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v43;
    }

    v47 = 24 * v46;
    do
    {
      *v45++ = std::stoi((*buf + v44), 0, 10);
      v44 += 24;
    }

    while (v47 != v44);
  }

  v48 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [NSData dataWithBytes:v1 + 78632 length:v43];
    *__p = 138412290;
    *&__p[4] = v49;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent LeCsCustomPhyLogs fCsPhyLogs.cmdParams set to %@", __p, 0xCu);
  }

LABEL_86:
  *__p = buf;
  sub_1000161FC(__p);
}

void sub_100317588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __p = &a20;
  sub_1000161FC(&__p);
  _Unwind_Resume(a1);
}

void sub_100317638(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "CSSetParam_enable");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6D290);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
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

  v3 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = byte_100B6D290;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LeChannelSoundingAgent CSSetParam_enable set to %d", buf, 8u);
  }
}

void sub_100317770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1003177AC()
{
  v2 = 0u;
  memset(v3, 0, sizeof(v3));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100317874;
  block[3] = &unk_100AEAE48;
  if (qword_100B6D298 != -1)
  {
    dispatch_once(&qword_100B6D298, block);
  }

  return qword_100BCE4B0;
}

uint64_t sub_1003178DC(uint64_t result)
{
  *result = &off_100AEAE78;
  *(result + 152) = 0;
  *(result + 322) = 0;
  *(result + 78622) = 0;
  return result;
}

uint64_t sub_100317928(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3 > 3uLL)
  {
    v13 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100817C2C(v13, v14, v15, v16, v17, v18, v19, a8);
    }
  }

  else
  {
    v10 = a1 + 42 * *a3;
    v11 = *a3;
    v12 = *(a3 + 1);
    *(v10 + 180) = *(a3 + 13);
    *(v10 + 170) = v12;
    *(v10 + 154) = v11;
  }

  return sub_1000D6178(0x10Bu, (a3 + 11), a3[16], a3[17], a3[18], a3[19], a3[20], a8, a2);
}

_BYTE *sub_100317A48(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  sub_1000216B4(&v11);
  sub_1000D6178(0x10Fu, v3, v4, v5, v6, v7, v8, v9, a2);
  return sub_10002249C(&v11);
}

_BYTE *sub_100317B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  sub_1000216B4(&v11);
  sub_100018960(270, sub_100317C48, *(a3 + 16), v5, v6, v7, v8, v9, a2);
  return sub_10002249C(&v11);
}

void sub_100317C48(int a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "csSetProcedureParamsCB status=%{bluetooth:OI_STATUS}u", v3, 8u);
  }
}

void sub_100317D24(int a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "csSetAfhCB status=%{bluetooth:OI_STATUS}u", v3, 8u);
  }
}

_BYTE *sub_100317DC8(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  sub_1000216B4(&v18);
  if (sub_100018960(263, sub_100317E78, v3, v4, v5, v6, v7, v8, a2))
  {
    v9 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100817C64(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return sub_10002249C(&v18);
}

void sub_100317E78(int a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "csSetDefaultSettingsCB status=%{bluetooth:OI_STATUS}u", v3, 8u);
  }
}

_BYTE *sub_100317F1C(_BYTE *result, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 49152;
  result[323] = 1;
  if (*(a3 + 52196))
  {

    return sub_100317DC8(result, a2);
  }

  else if (*(a3 + 52199) == 1)
  {
    v6 = result;
    sub_100317DC8(result, a2);
    v12 = *(v4 + 3046);
    v13 = xmmword_1008A58E0;
    v14 = 0x10000;
    v15 = -58720260;
    v16 = -1;
    v17 = 0x1FFF;
    v18 = 0x3000000000001;
    v19 = 0;
    sub_100317928(v6, a2, &v12, v7, v8, v9, v10, v11);
    return memcpy((v6 + 324), a3, 0xCBE8uLL);
  }

  else if (*(a3 + 52196))
  {

    return sub_100317A48(result, a2);
  }

  return result;
}

_BYTE *sub_1003180B8(_BYTE *result, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 49152;
  if (*(a3 + 52199) == 1)
  {
    v5 = *(a3 + 52198);
    v6 = 0x100000000FFFFLL;
    v7 = 0;
    v8 = 4294967296300000;
    v9 = 0x1000000020000;
    v10 = 0xFFFF;
    result = sub_100317B90(result, a2, &v5);
    *(v4 + 3047) = 0;
  }

  if (*(v4 + 3044))
  {

    return sub_100317A48(result, a2);
  }

  return result;
}

void sub_10031816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_100018960(264, sub_1003181CC, a3, a4, a5, a6, a7, a8, v16))
  {
    v8 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100817C9C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

__n128 sub_1003181CC(int a1, uint64_t a2)
{
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "csLeReadLocalFAETableCB status=%{bluetooth:OI_STATUS}u", v9, 8u);
  }

  v5 = sub_1003177AC();
  *(v5 + 80) = *a2;
  v7 = *(a2 + 32);
  result = *(a2 + 48);
  v8 = *(a2 + 16);
  *(v5 + 144) = *(a2 + 64);
  *(v5 + 112) = v7;
  *(v5 + 128) = result;
  *(v5 + 96) = v8;
  return result;
}

void sub_100318300(int a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "csLeWriteRemoteFAETableCB status=%{bluetooth:OI_STATUS}u", v3, 8u);
  }
}

__n128 sub_1003183A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = *a3;
  result = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  *(a1 + 72) = *(a3 + 64);
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 24) = result;
  return result;
}

void sub_1003183D8(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v8 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "LE_CsCreateConfigComplete status=%{bluetooth:OI_STATUS}u", v10, 8u);
  }

  if (*(v7 + 323) == 1)
  {
    v9 = memcpy(v10, (v7 + 324), sizeof(v10));
    sub_1003180B8(v9, v4, v10);
  }
}

void sub_1003184D8(uint64_t a1, int a2)
{
  v4 = a1 + 78618;
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LE_CsProcedureEnableComplete status=%{bluetooth:OI_STATUS}u", v6, 8u);
  }

  *(a1 + 323) = 0;
  *v4 = 0;
  *(v4 + 2) = 0;
  *(a1 + 52537) = 0;
}

void sub_1003185AC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, char a10, char a11, unsigned __int8 __na, size_t __n, const void *a14, unsigned __int8 *a15, const void *a16)
{
  v16 = __chkstk_darwin(a1, a2);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v16;
  v32 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "LE_CsSubeventResultComplete procedureDoneStatus=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  v33 = v18 & 0xF;
  if (v33 == 14)
  {
    return;
  }

  v34 = v22;
  v35 = v20;
  v36 = a15;
  v37 = a9;
  v38 = (v31 + 78618);
  v39 = (v31 + 52524);
  if (v33 == 15)
  {
    *v39 = 0;
    *v38 = 0;
    *(v31 + 52530) = 0;
  }

  else if ((~*(v31 + 52534) & 0xF) == 0)
  {
    v40 = *(v31 + 52537);
    if (v40)
    {
      v41 = 1;
    }

    else
    {
      v41 = (~a9 & 0xF) == 0;
    }

    if (v41)
    {
      v37 = 15;
    }

    goto LABEL_14;
  }

  v40 = *(v31 + 52537);
LABEL_14:
  *v39 = v28;
  *(v31 + 52526) = v26;
  *(v31 + 52528) = v24;
  *(v31 + 52530) = v34;
  *(v31 + 52532) = v35;
  *(v31 + 52533) = v18;
  v42 = v37;
  *(v31 + 52534) = v37;
  *(v31 + 52535) = a10;
  *(v31 + 52536) = a11;
  *(v31 + 52537) = v40 + __na;
  memcpy((v31 + 52538 + *v38), __n, __na);
  memcpy((v31 + 52698 + *v38), a14, __na);
  memcpy((v31 + 52858 + *v38), a15, __na);
  v43 = 0;
  if (__na)
  {
    v44 = __na;
    do
    {
      v45 = *v36++;
      v43 += v45;
      --v44;
    }

    while (v44);
  }

  memcpy((v31 + 53018 + *(v31 + 78620)), a16, v43);
  if (v33 == 1)
  {
    *v38 += __na;
    *(v31 + 78620) += v43;
    return;
  }

  if (((v42 | v18) & 0xF) != 0)
  {
    goto LABEL_24;
  }

  if (qword_100B508B0 != -1)
  {
    sub_100817CD4();
  }

  memcpy(buf, (v31 + 52524), 0x65F2uLL);
  sub_10076CFA0(v30, buf);
  if (*(v31 + 322) != 1)
  {
LABEL_24:
    if ((v18 & 0xF) != 0)
    {
      return;
    }
  }

  else
  {
    sub_100318880(v31);
  }

  *v39 = 0;
  *(v31 + 52526) = 0;
  *v38 = 0;
  *(v31 + 52530) = 0;
}

uint64_t sub_100318880(uint64_t a1)
{
  v2 = sub_10000C7D0();
  result = (*(*v2 + 3296))(v2);
  if (result)
  {
    v9 = 4390912;
    v4 = sub_10000C7D0();
    v7 = 0;
    (*(*v4 + 2008))(v4, 0, 0, 0, 4, 0, 0, &v9, v7);
    BYTE2(v9) = 72;
    v5 = sub_10000C7D0();
    result = (*(*v5 + 2008))(v5);
    if (*(a1 + 78622) == 1)
    {
      v6 = sub_10000C7D0();
      LOBYTE(v8) = 0;
      return (*(*v6 + 2008))(v6, *(a1 + 78624), *(a1 + 78626), *(a1 + 78628), *(a1 + 78629), *(a1 + 78630), *(a1 + 78631), a1 + 78632, v8);
    }
  }

  return result;
}

void sub_1003189FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, unsigned __int8 *a11, const void *a12)
{
  v12 = __chkstk_darwin(a1, a2);
  v14 = v13;
  v34 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v33 = v24;
  v25 = v12;
  v26 = a11;
  v27 = (v12 + 78618);
  v28 = (v12 + 52524);
  v29 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "LE_CsSubeventResultComplete status=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  if ((~v28[10] & 0xF) == 0)
  {
    v19 = 15;
  }

  *v28 = v23;
  v28[9] = v21;
  v28[10] = v19;
  v28[11] = v17;
  v28[12] = v34;
  v28[13] += v14;
  v30 = v14;
  memcpy((v25 + 52538 + *v27), a9, v14);
  memcpy((v25 + 52698 + *v27), a10, v14);
  memcpy((v25 + 52858 + *v27), a11, v14);
  v31 = 0;
  if (v14)
  {
    do
    {
      v32 = *v26++;
      v31 += v32;
      --v30;
    }

    while (v30);
  }

  memcpy((v25 + 53018 + *(v27 + 1)), a12, v31);
  if ((v21 & 0xF) == 1)
  {
    *v27 += v14;
    *(v27 + 1) += v31;
    return;
  }

  if (((v19 | v21) & 0xF) != 0)
  {
    goto LABEL_14;
  }

  if (qword_100B508B0 != -1)
  {
    sub_100817CD4();
  }

  memcpy(buf, v28, 0x65F2uLL);
  sub_10076CFA0(v33, buf);
  if (*(v25 + 322) != 1)
  {
LABEL_14:
    if ((v21 & 0xF) != 0)
    {
      return;
    }
  }

  else
  {
    sub_100318880(v25);
  }

  *v28 = 0;
  *(v28 + 1) = 0;
  *v27 = 0;
  *(v28 + 6) = 0;
}

void sub_100318C74()
{
  v0 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "csRunRangeAlgorithm ", buf, 2u);
  }

  bzero(buf, 0x4F0uLL);
  operator new();
}

__n128 sub_100318DA0(uint64_t a1, unsigned __int16 *a2)
{
  if (*a2 <= 3uLL)
  {
    v2 = a1 + 42 * *a2;
    result = *a2;
    v4 = *(a2 + 1);
    *(v2 + 180) = *(a2 + 13);
    *(v2 + 170) = v4;
    *(v2 + 154) = result;
  }

  return result;
}

uint64_t sub_100318E34(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 69) = 0;
  *(a1 + 65) = 0;
  *a1 = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::string::assign((a1 + 8), "");
  std::string::assign((a1 + 32), "");
  *(a1 + 56) = 2;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 71) = 0;
  return a1;
}

void sub_100318EB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100318EEC(uint64_t a1)
{
  if (qword_100B50AB0 != -1)
  {
    sub_100817CFC();
  }

  v2 = (a1 + 32);
  sub_100560E64(off_100B50AA8, (a1 + 64), a1 + 32);
  v3 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 64))
    {
      v4 = "Sign in";
    }

    else
    {
      v4 = "Sign out";
    }

    v5 = a1 + 32;
    if (*(a1 + 55) < 0)
    {
      v5 = *v2;
    }

    *buf = 136315394;
    v10 = v4;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending version info request to magnet device, local cloud sign-in status = %s, local cloud account = %s", buf, 0x16u);
  }

  v6 = sub_100432610();
  if (*(a1 + 55) < 0)
  {
    sub_100008904(__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *__p = *v2;
    v8 = *(a1 + 48);
  }

  (*(*v6 + 88))(v6, 1, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 60) = 1;
  *(a1 + 56) = 2;
}

void sub_100319080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003190A4(uint64_t a1, int a2, std::string *__str)
{
  *(a1 + 60) = 2;
  *a1 = a2;
  std::string::operator=((a1 + 8), __str);
  if (qword_100B50AB0 != -1)
  {
    sub_100817CFC();
  }

  v6 = (a1 + 32);
  sub_100560E64(off_100B50AA8, (a1 + 64), a1 + 32);
  v7 = qword_100BCE960;
  v8 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v9 = __str;
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = __str->__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 64))
    {
      v10 = "Sign in";
    }

    else
    {
      v10 = "Sign out";
    }

    v11 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v11 = *v6;
    }

    *buf = 67109890;
    v29 = a2;
    v30 = 2080;
    v31 = v9;
    v32 = 2080;
    v33 = v10;
    v34 = 2080;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received version info request, remote version = %d, remote cloud account = %s, local cloud sign-in status = %s, local cloud account = %s", buf, 0x26u);
  }

  if (a2)
  {
    v12 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v12 < 0)
    {
      if (__str->__r_.__value_.__l.__size_)
      {
LABEL_15:
        if (*(a1 + 64) == 1)
        {
          v13 = *(a1 + 55);
          if (v13 < 0)
          {
            if (*(a1 + 40))
            {
LABEL_18:
              if (v12 >= 0)
              {
                size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = __str->__r_.__value_.__l.__size_;
              }

              v15 = *(a1 + 40);
              if (v13 >= 0)
              {
                v16 = *(a1 + 55);
              }

              else
              {
                v16 = *(a1 + 40);
              }

              if (size == v16 && (v12 >= 0 ? (v17 = __str) : (v17 = __str->__r_.__value_.__r.__words[0]), (v18 = *v6, v13 >= 0) ? (v19 = (a1 + 32)) : (v19 = *v6), v8 = memcmp(v17, v19, size), !v8))
              {
                if ((v13 & 0x80000000) != 0)
                {
                  v8 = sub_100008904(&v26, v18, v15);
                }

                else
                {
                  v26 = *v6;
                  v27 = *(a1 + 48);
                }

                sub_1003193B8(v8, 1, &v26, 2);
                if ((SHIBYTE(v27) & 0x80000000) == 0)
                {
                  goto LABEL_46;
                }

                p_dst = &v26;
              }

              else
              {
                if ((v13 & 0x80000000) != 0)
                {
                  v8 = sub_100008904(&__dst, *v6, v15);
                }

                else
                {
                  __dst = *v6;
                  v25 = *(a1 + 48);
                }

                sub_1003193B8(v8, 1, &__dst, 1);
                if ((SHIBYTE(v25) & 0x80000000) == 0)
                {
                  goto LABEL_46;
                }

                p_dst = &__dst;
              }

LABEL_45:
              operator delete(*p_dst);
LABEL_46:
              v21 = 4;
              goto LABEL_47;
            }
          }

          else if (*(a1 + 55))
          {
            goto LABEL_18;
          }
        }

        v21 = 3;
LABEL_47:
        *(a1 + 60) = v21;
        return;
      }
    }

    else if (*(&__str->__r_.__value_.__s + 23))
    {
      goto LABEL_15;
    }

    if (*(a1 + 55) < 0)
    {
      v8 = sub_100008904(&v22, *(a1 + 32), *(a1 + 40));
    }

    else
    {
      v22 = *v6;
      v23 = *(a1 + 48);
    }

    sub_1003193B8(v8, 1, &v22, 2);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    p_dst = &v22;
    goto LABEL_45;
  }
}

void sub_100319368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003193B8(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a3;
    if (*(a3 + 23) < 0)
    {
      v8 = *a3;
    }

    v9 = "Disallow";
    *buf = 67109634;
    v14 = a2;
    v15 = 2080;
    if (a4 == 2)
    {
      v9 = "Allow";
    }

    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending version info response to magnet device, localVersion = %d, localCloudAccount = %s, easyPairingStatus = %s", buf, 0x1Cu);
  }

  v10 = sub_100432610();
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, a3[1]);
  }

  else
  {
    *__p = *a3;
    v12 = a3[2];
  }

  (*(*v10 + 96))(v10, a2, __p, a4);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10031951C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100319540(uint64_t a1, int a2, const std::string *a3, int a4)
{
  v8 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a3;
    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = a3->__r_.__value_.__r.__words[0];
    }

    v10 = "Disallow";
    v12[0] = 67109634;
    v12[1] = a2;
    v13 = 2080;
    if (a4 == 2)
    {
      v10 = "Allow";
    }

    v14 = v9;
    v15 = 2080;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received version info response, remote version = %d, remote cloud account = %s, easyPairingStatus = %s", v12, 0x1Cu);
  }

  *(a1 + 56) = a4;
  *a1 = a2;
  *(a1 + 60) = 5;
  return std::string::operator=((a1 + 8), a3);
}

void sub_100319658(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  *(a1 + 65) = *a2;
  *(a1 + 69) = v4;
  if (*a1 && *(a1 + 60) == 3)
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote device supports version info query and there is pending cloud sign-in on local device. Delay the response for pairing status request", v6, 2u);
    }
  }

  else
  {

    sub_1003196F8(a1, (a1 + 65));
  }
}

uint64_t sub_1003196F8(uint64_t a1, unsigned __int8 *a2)
{
  v18 = 0uLL;
  v19 = 0;
  sub_1006D1B74(&v18);
  if (qword_100B508F0 != -1)
  {
    sub_100817D10();
  }

  v3 = sub_1000E6554(off_100B508E8, a2, 0);
  if (!v3)
  {
    goto LABEL_7;
  }

  if (qword_100B512E8 != -1)
  {
    sub_100817D38();
  }

  if (!sub_1006E7E2C(off_100B512E0, v3, &v18))
  {
    v4 = 2;
    v5 = "Paired";
  }

  else
  {
LABEL_7:
    v4 = 1;
    v5 = "Not Paired";
  }

  v6 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a2, __p);
    v7 = v13 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v15 = v7;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending pair stauts response to magnet device for aacp device %s, pairStatus = %s", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = sub_100432610();
  sub_1000BE6F8(a2, v10);
  (*(*v8 + 112))(v8, v10, v4);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  return nullsub_21(&v18);
}

BOOL sub_10031990C(uint64_t a1)
{
  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 71);
    v4 = *(a1 + 60);
    if (*(a1 + 56) == 2)
    {
      v5 = "Allow";
    }

    else
    {
      v5 = "Disallow";
    }

    v7[0] = 67109634;
    v7[1] = v3;
    v8 = 1024;
    v9 = v4;
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Current MagnetVersion = %d, VersionInfoState = %d, EasyPairingStatus = %s", v7, 0x18u);
  }

  if (*(a1 + 71) < 0xAu)
  {
    return 1;
  }

  if (*(a1 + 60) == 5)
  {
    return *(a1 + 56) == 2;
  }

  return 0;
}

void sub_100319A20(uint64_t a1, int a2, std::string *__str)
{
  if (*(a1 + 64) != a2)
  {
    v3 = __str;
    *(a1 + 64) = a2;
    v6 = (a1 + 32);
    std::string::operator=((a1 + 32), __str);
    v7 = qword_100BCE960;
    v8 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = "Sign out";
      if (a2)
      {
        v9 = "Sign in";
      }

      if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
      {
        v3 = v3->__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v25 = v9;
      v26 = 2080;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cloud sign-in status changed, status = %s, cloudAccount = %s", buf, 0x16u);
    }

    if (*(a1 + 60) == 3)
    {
      v10 = *(a1 + 55);
      v11 = *(a1 + 40);
      if (v10 >= 0)
      {
        v12 = *(a1 + 55);
      }

      else
      {
        v12 = *(a1 + 40);
      }

      v13 = *(a1 + 31);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(a1 + 16);
      }

      if (v12 == v13 && ((v15 = *(a1 + 32), v10 >= 0) ? (v16 = v6) : (v16 = *(a1 + 32)), v14 >= 0 ? (v17 = (a1 + 8)) : (v17 = *(a1 + 8)), v8 = memcmp(v16, v17, v12), !v8))
      {
        if (v10 < 0)
        {
          v8 = sub_100008904(&__dst, v15, v11);
        }

        else
        {
          __dst = *v6;
          v23 = *(v6 + 2);
        }

        sub_1003193B8(v8, 1, &__dst, 2);
        if ((SHIBYTE(v23) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        p_dst = &__dst;
      }

      else
      {
        if (v10 < 0)
        {
          v8 = sub_100008904(&v20, *v6, v11);
        }

        else
        {
          v20 = *v6;
          v21 = *(v6 + 2);
        }

        sub_1003193B8(v8, 1, &v20, 1);
        if ((SHIBYTE(v21) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        p_dst = &v20;
      }

      operator delete(*p_dst);
LABEL_32:
      *(a1 + 60) = 4;
      sub_1003196F8(v18, (a1 + 65));
    }
  }
}

void sub_100319C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100319DA8(uint64_t a1, unint64_t a2)
{
  v12[2] = a2;
  if (a2)
  {
    v12[0] = 0;
    v12[1] = 0;
    sub_100007F88(v12, a1);
    v6 = *(a1 + 72);
    v5 = a1 + 72;
    v4 = v6;
    if (!v6)
    {
      goto LABEL_10;
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
    if (v7 == v5 || *(v7 + 32) > a2)
    {
LABEL_10:
      operator new();
    }

    sub_1000088CC(v12);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA00, OS_LOG_TYPE_ERROR))
    {
      sub_100817D60();
    }

    return 3;
  }
}

void sub_100319F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100319F44(uint64_t a1, unint64_t a2)
{
  v16 = a2;
  if (a2)
  {
    v15[0] = 0;
    v15[1] = 0;
    sub_100007F88(v15, a1);
    v6 = *(a1 + 72);
    v5 = a1 + 72;
    v4 = v6;
    if (!v6)
    {
      goto LABEL_10;
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
      v14 = &v16;
      if (sub_10005E16C(v5 - 8, &v16)[5])
      {
        operator delete();
      }

      sub_100075DC4((v5 - 8), &v16);
      v12 = 0;
    }

    else
    {
LABEL_10:
      v11 = qword_100BCEA00;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000C23E0(a2, &v14);
        sub_100817D94();
      }

      v12 = 3;
    }

    sub_1000088CC(v15);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA00, OS_LOG_TYPE_ERROR))
    {
      sub_100817D60();
    }

    return 3;
  }

  return v12;
}

void sub_10031A0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031A0F0(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v20 = a2;
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCEA00, OS_LOG_TYPE_ERROR))
    {
      sub_100817E78();
    }

    return 3;
  }

  if (a3 >= 1)
  {
    if (os_log_type_enabled(qword_100BCEA00, OS_LOG_TYPE_ERROR))
    {
      sub_100817E44();
    }

    return 3;
  }

  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1);
  v11 = *(a1 + 72);
  v10 = a1 + 72;
  v9 = v11;
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v10;
  do
  {
    v13 = *(v9 + 32);
    v14 = v13 >= a2;
    v15 = v13 < a2;
    if (v14)
    {
      v12 = v9;
    }

    v9 = *(v9 + 8 * v15);
  }

  while (v9);
  if (v12 != v10 && *(v12 + 32) <= a2)
  {
    if (a3)
    {
      v5 = 0;
    }

    else
    {
      v18 = qword_100BCEA00;
      if (os_log_type_enabled(qword_100BCEA00, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BTLQ set Link Quality Data codec to %u", buf, 8u);
      }

      *buf = &v20;
      v5 = 0;
      *(sub_10005E16C(v10 - 8, &v20)[5] + 10) = a4;
    }
  }

  else
  {
LABEL_16:
    v16 = qword_100BCEA00;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000C23E0(a2, buf);
      sub_100817DEC();
    }

    v5 = 7;
  }

  sub_1000088CC(v19);
  return v5;
}

void sub_10031A2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10031A318(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1);
    v4 = *(a1 + 64);
    v5 = a1 + 72;
    if (v4 == v5)
    {
      v10 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        memcpy(&a2[134 * v6 + 1], v4[5], 0x10CuLL);
        v7 = v4[1];
        v8 = v4;
        if (v7)
        {
          do
          {
            v4 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v4 = v8[2];
            v9 = *v4 == v8;
            v8 = v4;
          }

          while (!v9);
        }

        v10 = v6 + 1;
        if (v4 == v5)
        {
          break;
        }
      }

      while (v6++ < 2);
    }

    *a2 = v10;
    sub_1000088CC(v13);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA00, OS_LOG_TYPE_ERROR))
    {
      sub_100817EAC();
    }

    return 3;
  }
}

uint64_t sub_10031A424(uint64_t a1, unint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  v30 = a2;
  if (a2 && a3)
  {
    v29[0] = 0;
    v29[1] = 0;
    sub_100007F88(v29, a1);
    v12 = *(a1 + 72);
    v11 = a1 + 72;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = v11 - 8;
    v14 = v11;
    do
    {
      v15 = *(v10 + 32);
      v16 = v15 >= a2;
      v17 = v15 < a2;
      if (v16)
      {
        v14 = v10;
      }

      v10 = *(v10 + 8 * v17);
    }

    while (v10);
    if (v14 != v11 && *(v14 + 32) <= a2)
    {
      v28 = &v30;
      v22 = sub_10005E16C(v11 - 8, &v30)[5];
      if (v22)
      {
        v23 = *(a3 + 16);
        if (*(a3 + 16))
        {
          v23 = 100 * *(a3 + 18) / v23;
        }

        *(v22 + 2) = v23;
        *v22 = *(v30 + 1435);
        v28 = &v30;
        if (!*(sub_10005E16C(v13, &v30)[5] + 1))
        {
          v24 = sub_100255934(v30 + 128);
          if (v24)
          {
            v25 = *(v24 + 291);
            if (v25 <= 1)
            {
              LOBYTE(v25) = 1;
            }
          }

          else
          {
            LOBYTE(v25) = 1;
          }

          *(v22 + 1) = v25;
        }

        v19 = 0;
        v26 = *(a3 + 6);
        *(v22 + 3) = v26;
        v27 = *(a3 + 231);
        *(v22 + 4) = v27;
        *(v22 + 5) = v26 - v27;
        *(v22 + 6) = a4;
        *(v22 + 8) = a5;
      }

      else
      {
        v19 = 7;
      }
    }

    else
    {
LABEL_11:
      v18 = qword_100BCEA00;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000C23E0(a2, &v28);
        sub_100817F70();
      }

      v19 = 3;
    }

    sub_1000088CC(v29);
  }

  else
  {
    v20 = qword_100BCEA00;
    if (os_log_type_enabled(qword_100BCEA00, OS_LOG_TYPE_ERROR))
    {
      sub_100817EE0(a2, v20);
    }

    return 3;
  }

  return v19;
}

void sub_10031A64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10031A678(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_100B50940 != -1)
  {
    sub_100817FC8();
  }

  v6 = *(off_100B50938 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031A728;
  block[3] = &unk_100AEAF08;
  block[4] = a1;
  block[5] = a2;
  v8 = a3;
  dispatch_async(v6, block);
}

void sub_10031A728(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B50940 != -1)
  {
    sub_100817FC8();
  }

  v3 = *(off_100B50938 + 25);
  if (v3)
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 40);
    v6 = off_100B50938 + 200;
    do
    {
      v7 = *(v3 + 4);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *&v3[8 * v9];
    }

    while (v3);
    if (v6 != off_100B50938 + 200 && v5 >= *(v6 + 4))
    {
      v18[0] = 0;
      v18[1] = 0;
      sub_100007F88(v18, v2);
      v12 = *(v2 + 72);
      v11 = v2 + 72;
      v10 = v12;
      if (v12)
      {
        v13 = *v4;
        v14 = v11;
        do
        {
          v15 = *(v10 + 32);
          v8 = v15 >= v13;
          v16 = v15 < v13;
          if (v8)
          {
            v14 = v10;
          }

          v10 = *(v10 + 8 * v16);
        }

        while (v10);
        if (v14 != v11 && v13 >= *(v14 + 32))
        {
          v17 = *(a1 + 48);
          v18[3] = v4;
          *sub_10005E16C(v11 - 8, v4)[5] = v17;
        }
      }

      sub_10000801C(v18);
      sub_1000088CC(v18);
    }
  }
}

void sub_10031A858(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_100B50940 != -1)
  {
    sub_100817FC8();
  }

  v6 = *(off_100B50938 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10031A908;
  block[3] = &unk_100AEAF08;
  block[4] = a1;
  block[5] = a2;
  v8 = a3;
  dispatch_async(v6, block);
}

void sub_10031A908(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B50940 != -1)
  {
    sub_100817FC8();
  }

  v3 = *(off_100B50938 + 25);
  if (v3)
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 40);
    v6 = off_100B50938 + 200;
    do
    {
      v7 = *(v3 + 4);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *&v3[8 * v9];
    }

    while (v3);
    if (v6 != off_100B50938 + 200 && v5 >= *(v6 + 4))
    {
      v18[0] = 0;
      v18[1] = 0;
      sub_100007F88(v18, v2);
      v12 = *(v2 + 72);
      v11 = v2 + 72;
      v10 = v12;
      if (v12)
      {
        v13 = *v4;
        v14 = v11;
        do
        {
          v15 = *(v10 + 32);
          v8 = v15 >= v13;
          v16 = v15 < v13;
          if (v8)
          {
            v14 = v10;
          }

          v10 = *(v10 + 8 * v16);
        }

        while (v10);
        if (v14 != v11 && v13 >= *(v14 + 32))
        {
          v17 = *(a1 + 48);
          v18[3] = v4;
          *(sub_10005E16C(v11 - 8, v4)[5] + 1) = v17;
        }
      }

      sub_10000801C(v18);
      sub_1000088CC(v18);
    }
  }
}

void sub_10031B244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v28 + 40));
  _Block_object_dispose(&a21, 8);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10031B2C0(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      LODWORD(v22) = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] advertiser state handler with state %d", &v21, 8u);
    }

    if (v6)
    {
      v9 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] advertiser error %@", &v21, 0xCu);
      }
    }

    switch(a2)
    {
      case 4:
        v14 = qword_100BCEA70;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] advertiser cancelled", &v21, 2u);
        }

        [WeakRetained setListener:0];
        [WeakRetained _cleanupAdvertiser];
        v15 = *(*(*(a1 + 32) + 8) + 40);
        if (v15)
        {
          v13 = nw_error_copy_cf_error(v15);
        }

        else
        {
          v13 = 0;
        }

        v16 = [WeakRetained advertisingStateUpdateHandler];
        v17 = v16 == 0;

        if (!v17)
        {
          v18 = [WeakRetained advertisingStateUpdateHandler];
          v18[2](v18, 0, v13);
        }

        v19 = *(*(a1 + 32) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = 0;

        goto LABEL_25;
      case 3:
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
        {
          sub_100818018();
        }

        objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
        v13 = [WeakRetained listener];
        nw_listener_cancel(v13);
        goto LABEL_25;
      case 2:
        v10 = qword_100BCEA70;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] advertiser is ready", &v21, 2u);
        }

        [WeakRetained setAdvertiserState:2];
        v11 = [WeakRetained advertisingStateUpdateHandler];
        v12 = v11 == 0;

        if (!v12)
        {
          v13 = [WeakRetained advertisingStateUpdateHandler];
          (*(v13 + 16))(v13, 1, 0);
LABEL_25:
        }

        break;
    }
  }
}

void sub_10031B5F8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _handleConnection:v3 connectionType:1];

  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] New Adv to browser connection %@ (endpoint %@)", &v7, 0x16u);
  }
}

void sub_10031B854(uint64_t a1)
{
  v2 = [*(a1 + 32) advertiserAdvs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Already advertising for advData %@", &v13, 0xCu);
    }
  }

  else
  {
    v6 = [*(a1 + 32) advertiserAdvs];
    [v6 addObject:*(a1 + 40)];

    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Starting advertising with advData %@", &v13, 0xCu);
    }

    v9 = [*(a1 + 32) advertiserState];
    v10 = *(a1 + 32);
    if (v9 == 3)
    {
      v10[25] = 1;
    }

    else
    {
      v11 = [v10 advertiserState];
      v12 = *(a1 + 32);
      if (v11 == 2)
      {
        [v12 _sendAdvMessageWithData:*(a1 + 40) isStart:1 completionHandler:*(a1 + 48)];
      }

      else
      {
        [v12 _startAdvertiser];
      }
    }
  }
}

id sub_10031BBFC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) containsObject:*(a1 + 40)];
  v3 = qword_100BCEA70;
  v4 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Stop advertising for advData %@", &v9, 0xCu);
    }

    if ([*(a1 + 32) advertiserState] == 2)
    {
      [*(a1 + 32) _sendAdvMessageWithData:*(a1 + 40) isStart:0 completionHandler:*(a1 + 48)];
    }

    [*(*(a1 + 32) + 160) removeObject:*(a1 + 40)];
    result = [*(*(a1 + 32) + 160) count];
    if (!result)
    {
      v7 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] No more advertisements, stopping advertiser completely.", &v9, 2u);
      }

      *(*(a1 + 32) + 25) = 0;
      return [*(a1 + 32) _stopAdvertising];
    }
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 40);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Unable to stop advertising for advData %@", &v9, 0xCu);
    }

    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 2))(result, *(a1 + 40), 0);
    }
  }

  return result;
}

void sub_10031BE5C(id a1, id a2, BTVCBonjourEndpoint *a3, BOOL *a4)
{
  v4 = a3;
  if (![(BTVCBonjourEndpoint *)v4 isConnected])
  {
    [(BTVCBonjourEndpoint *)v4 cancel];
  }
}

void sub_10031C220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10031C280(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109378;
    v13[1] = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] nw_browser_state_t changed:%d error:%@", v13, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 - 2) >= 2)
    {
      if (a2 == 1)
      {
        [WeakRetained setBrowserState:2];
        v9 = qword_100BCEA70;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13[0]) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] BTVCBonjourServiceBrowser successfully started", v13, 2u);
        }

        v10 = [v8 deviceDidStartScanning];
        v11 = v10 == 0;

        if (!v11)
        {
          v12 = [v8 deviceDidStartScanning];
          v12[2](v12, 0);
        }
      }
    }

    else
    {
      [WeakRetained setBrowser:0];
      [v8 _cleanupBrowser];
    }
  }
}

void sub_10031C440(uint64_t a1, void *a2, void *a3, int a4)
{
  old_result = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    changes = nw_browse_result_get_changes(old_result, v7);
    if (changes >= 2)
    {
      v10 = [[BTVCBonjourBrowserResultChanges alloc] initWithOldResult:old_result freshResult:v7 change:changes];
      v11 = [WeakRetained resultChanges];
      [v11 addObject:v10];

      if (a4)
      {
        v12 = [WeakRetained resultChanges];
        v13 = [v12 copy];

        v14 = [WeakRetained resultChanges];
        [v14 removeAllObjects];

        [WeakRetained handleBrowseResults:v13];
      }
    }
  }
}

void sub_10031C55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

_BYTE *sub_10031C634(uint64_t a1)
{
  v2 = [*(a1 + 32) browserState];
  result = *(a1 + 32);
  if (v2 == 3)
  {
    result[24] = 1;
  }

  else
  {
    v4 = [result browserState];
    v5 = *(a1 + 32);
    if (v4 == 2)
    {

      return [v5 _reportCachedDiscoveryResults];
    }

    else
    {

      return [v5 _startBrowser];
    }
  }

  return result;
}

void sub_10031C910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained browserState] == 2)
  {
    v3 = [v2 browserToAdvNwToSFendpoints];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10031C9E0;
    v4[3] = &unk_100AEB098;
    v4[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void sub_10031C9E0(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [*(a1 + 32) deviceFoundHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) deviceFoundHandler];
    v6 = [NSUUID alloc];
    v7 = [v11 remoteUniqueIDString];
    v8 = [v6 initWithUUIDString:v7];
    v9 = [v11 remoteAdvDataSet];
    v10 = [v9 allObjects];
    (v5)[2](v5, v8, v10);
  }
}

void sub_10031CAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_10031CC14(id a1, id a2, BTVCBonjourEndpoint *a3, BOOL *a4)
{
  v4 = a3;
  if (![(BTVCBonjourEndpoint *)v4 isConnected])
  {
    [(BTVCBonjourEndpoint *)v4 cancel];
  }
}

void sub_10031D538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3 && WeakRetained)
  {
    v4 = [WeakRetained remoteUniqueIDString];

    if (v4)
    {
      v5 = qword_100BCEA70;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10081817C([WeakRetained connectionType], WeakRetained, &v10);
      }

      if (*(a1 + 48))
      {
        [v3 advToBrowserUuidToSFendpoints];
      }

      else
      {
        [v3 browserToAdvUuidToSFendpoints];
      }
      v6 = ;
      v7 = [WeakRetained remoteUniqueIDString];
      [v6 setObject:WeakRetained forKey:v7];

      if ([WeakRetained connectionType])
      {
        v8 = [v3[20] allObjects];
        v9 = [WeakRetained remoteUniqueIDString];
        [v3 _sendMessage:v8 withType:@"BTVCBonjourServiceMessageTypeStartAdvertiseData" toDevice:v9 connectionType:objc_msgSend(WeakRetained completionCallback:{"connectionType"), &stru_100AEB120}];
      }
    }

    else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008181D4();
    }
  }
}

void sub_10031D78C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (!WeakRetained || !v3)
  {
    goto LABEL_21;
  }

  v5 = qword_100BCEA70;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100818248([v4 connectionType], v4, &v29);
  }

  v6 = [v4 remoteUniqueIDString];
  v7 = v6 == 0;

  if (!v7)
  {
    v8 = [WeakRetained deviceDidDisconnectHandler];
    if (v8 && (v9 = [v4 isConnected], v8, v9))
    {
      v10 = [WeakRetained deviceDidDisconnectHandler];
      v11 = [NSUUID alloc];
      v12 = [v4 remoteUniqueIDString];
      v13 = [v11 initWithUUIDString:v12];
      (v10)[2](v10, v13, 0);
    }

    else
    {
      v14 = [WeakRetained deviceLostHandler];
      if (!v14)
      {
        goto LABEL_13;
      }

      v15 = ([v4 connectionType] & 2) == 0;

      if (v15)
      {
        goto LABEL_13;
      }

      v10 = [WeakRetained deviceLostHandler];
      v16 = [NSUUID alloc];
      v12 = [v4 remoteUniqueIDString];
      v13 = [v16 initWithUUIDString:v12];
      (v10)[2](v10, v13, 0);
    }
  }

LABEL_13:
  if ([v4 connectionType])
  {
    v17 = [WeakRetained advToBrowserNwToSFendpoints];
    v18 = [v4 remoteEndpoint];
    [v17 removeObjectForKey:v18];

    v19 = [v4 remoteUniqueIDString];
    v20 = v19 == 0;

    if (!v20)
    {
      v21 = [WeakRetained advToBrowserUuidToSFendpoints];
      v22 = [v4 remoteUniqueIDString];
      [v21 removeObjectForKey:v22];
    }

    [WeakRetained _updateAdvertiserState];
  }

  if (([v4 connectionType] & 2) != 0)
  {
    v23 = [WeakRetained browserToAdvNwToSFendpoints];
    v24 = [v4 remoteEndpoint];
    [v23 removeObjectForKey:v24];

    v25 = [v4 remoteUniqueIDString];
    v26 = v25 == 0;

    if (!v26)
    {
      v27 = [WeakRetained browserToAdvUuidToSFendpoints];
      v28 = [v4 remoteUniqueIDString];
      [v27 removeObjectForKey:v28];
    }

    [WeakRetained _updateBrowserState];
  }

LABEL_21:
}

void sub_10031DAB4(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_10031DBA4(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = objc_loadWeakRetained(a1 + 6);
  v6 = v5;
  if (WeakRetained && v5)
  {
    v56 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:&v56 error:0];
    if (!v7)
    {
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        sub_100818310();
      }

      goto LABEL_35;
    }

    v8 = [v6 remoteUniqueIDString];
    v9 = v8 == 0;

    v10 = qword_100BCEA70;
    if (v9)
    {
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        sub_1008182A0();
      }

      goto LABEL_35;
    }

    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v58 = v7;
      v59 = 2112;
      v60 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Received browser endpoint message %@ from endpoint %@", buf, 0x16u);
    }

    v11 = [v7 objectForKeyedSubscript:@"BTVCBonjourServiceMessageType"];
    if ([v11 isEqualToString:@"BTVCBonjourServiceMessageTypeStartAdvertiseData"])
    {
      v12 = [v6 remoteAdvDataSet];
      v13 = [v7 objectForKeyedSubscript:@"BTVCBonjourServiceMessageValue"];
      [v12 addObjectsFromArray:v13];

      v14 = [WeakRetained deviceFoundHandler];
      v15 = v14 == 0;

      if (!v15)
      {
        v16 = [WeakRetained deviceFoundHandler];
        v17 = [NSUUID alloc];
        v18 = [v6 remoteUniqueIDString];
        v19 = [v17 initWithUUIDString:v18];
        v20 = [v7 objectForKeyedSubscript:@"BTVCBonjourServiceMessageValue"];
        (v16)[2](v16, v19, v20);
      }
    }

    else if ([v11 isEqualToString:@"BTVCBonjourServiceMessageTypeStopAdvertiseData"])
    {
      v21 = [v6 remoteAdvDataSet];
      v22 = [v7 objectForKeyedSubscript:@"BTVCBonjourServiceMessageValue"];
      v23 = [NSSet setWithArray:v22];
      [v21 minusSet:v23];

      v24 = [WeakRetained deviceLostHandler];
      v25 = v24 == 0;

      if (!v25)
      {
        v26 = [WeakRetained deviceLostHandler];
        v27 = [NSUUID alloc];
        v28 = [v6 remoteUniqueIDString];
        v29 = [v27 initWithUUIDString:v28];
        v30 = [v7 objectForKeyedSubscript:@"BTVCBonjourServiceMessageValue"];
        (v26)[2](v26, v29, v30);
      }
    }

    else
    {
      if ([v11 isEqualToString:@"BTVCBonjourServiceMessageTypeConnect"])
      {
        v31 = [v7 objectForKeyedSubscript:@"BTVCBonjourServiceMessageValue"];
        [v6 setIsConnected:1];
        [v6 setNumOfConnection:{objc_msgSend(v6, "numOfConnection") + 1}];
        v32 = [a1[4] connectionUuidToSFendpoints];
        v33 = [v6 remoteUniqueIDString];
        [v32 setObject:v6 forKey:v33];

        v34 = qword_100BCEA70;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v58 = v31;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] Received connection parameters %@", buf, 0xCu);
        }

        v35 = [WeakRetained deviceDidConnectHandler];
        v36 = v35 == 0;

        if (v36)
        {
          v54 = qword_100BCEA70;
          if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] deviceDidConnectHandler = nil", buf, 2u);
          }
        }

        else
        {
          v37 = [WeakRetained deviceDidConnectHandler];
          v38 = [NSUUID alloc];
          v39 = [v6 remoteUniqueIDString];
          v40 = [v38 initWithUUIDString:v39];
          (v37)[2](v37, v40, v31, 1, 0);
        }
      }

      else
      {
        if (![v11 isEqualToString:@"BTVCBonjourServiceMessageTypeDisconnect"])
        {
          if ([v11 isEqualToString:@"BTVCBonjourServiceMessageTypeDataPacket"])
          {
            v47 = [WeakRetained deviceDidReceiveDataHandler];
            v48 = v47 == 0;

            if (!v48)
            {
              v49 = [v7 objectForKeyedSubscript:@"BTVCBonjourServiceMessageValue"];
              v50 = [WeakRetained deviceDidReceiveDataHandler];
              v51 = [NSUUID alloc];
              v52 = [v6 remoteUniqueIDString];
              v53 = [v51 initWithUUIDString:v52];
              (v50)[2](v50, v53, v49);
            }
          }

          else
          {
            v55 = qword_100BCEA70;
            if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = v11;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourService] BTVCBonjourService unknown message type:%@", buf, 0xCu);
            }
          }

          goto LABEL_34;
        }

        v31 = [v7 objectForKeyedSubscript:@"BTVCBonjourServiceMessageValue"];
        [v6 setNumOfConnection:{objc_msgSend(v6, "numOfConnection") - 1}];
        if (![v6 numOfConnection])
        {
          [v6 setIsConnected:0];
        }

        v41 = [WeakRetained deviceDidDisconnectHandler];
        v42 = v41 == 0;

        if (!v42)
        {
          v43 = [WeakRetained deviceDidDisconnectHandler];
          v44 = [NSUUID alloc];
          v45 = [v6 remoteUniqueIDString];
          v46 = [v44 initWithUUIDString:v45];
          (v43)[2](v43, v46, v31);
        }
      }
    }

LABEL_34:

LABEL_35:
  }
}

void sub_10031E2D4(_Unwind_Exception *a1)
{
  v10 = v6;

  _Unwind_Resume(a1);
}

void sub_10031E70C(_Unwind_Exception *a1)
{
  v9 = v8;

  _Unwind_Resume(a1);
}

void sub_10031E780(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_10031E938(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _endpointForUniqueID:*(a1 + 32) connectionType:*(a1 + 72)];
    if (v4 && *(a1 + 40) && *(a1 + 48))
    {
      [v3 _sendMessage:? withType:? toEndpoint:? completionCallback:?];
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        sub_1008183F0();
      }

      if (*(a1 + 56))
      {
        v7 = NSLocalizedDescriptionKey;
        v8 = @"Unable to send message, invalid params";
        v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
        v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6705 userInfo:v5];

        (*(*(a1 + 56) + 16))();
      }
    }
  }
}

void sub_10031EC8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10031EDE0;
  v7[3] = &unk_100AEB210;
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = *(a1 + 40);
  [v4 _sendMessage:v5 withType:v6 toDevice:v3 connectionType:1 completionCallback:v7];
}

void sub_10031EDE0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 32), v4);
    }
  }
}

void sub_10031EF80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) UUIDString];
  v6 = [v4 _endpointForUniqueID:v5 connectionType:2];

  if (!v3)
  {
    [v6 setIsConnected:1];
    [v6 setNumOfConnection:{objc_msgSend(v6, "numOfConnection") + 1}];
    v7 = [*(a1 + 32) connectionUuidToSFendpoints];
    v8 = [*(a1 + 40) UUIDString];
    [v7 setObject:v6 forKey:v8];
  }

  v9 = [*(a1 + 32) deviceDidConnectHandler];

  v10 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v10)
    {
      sub_10081846C();
    }

    v11 = [*(a1 + 32) deviceDidConnectHandler];
    (v11)[2](v11, *(a1 + 40), *(a1 + 48), 0, v3);
  }

  else if (v10)
  {
    sub_1008184A8();
  }
}

void sub_10031F234(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUIDString];
  v6 = [v2 _endpointForUniqueID:v3 connectionType:4];

  [v6 setNumOfConnection:{objc_msgSend(v6, "numOfConnection") - 1}];
  if (![v6 numOfConnection])
  {
    [v6 setIsConnected:0];
  }

  v4 = [*(a1 + 32) deviceDidDisconnectHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) deviceDidDisconnectHandler];
    v5[2](v5, *(a1 + 40), *(a1 + 48));
  }
}

void sub_10031F498(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_100818528();
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10031F5A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10031F9EC(uint64_t a1)
{
  [*(a1 + 32) _stopBrowser];
  v2 = *(a1 + 32);

  return [v2 _stopAdvertising];
}

uint64_t sub_10031FD10(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  if ((result & 1) == 0)
  {
    v4 = v5;
  }

  *a3 = a4;
  *(a3 + 4) = v4;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_10031FD30(uint64_t a1)
{
  v2 = (sub_100044BBC(a1) + 64);
  sub_1000DA2A8(v2);
  *(a1 + 96) = 0;
  sub_100007E30((a1 + 104), "");
  *(a1 + 128) = 0;
  sub_1000DA2A8((a1 + 152));
  sub_1000D6A54(a1 + 192);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 275) = 0;
  sub_1000DA2A8((a1 + 280));
  *(a1 + 304) = 0;
  *(a1 + 308) = 0;
  sub_100044BBC(a1 + 320);
  *(a1 + 384) = 0;
  sub_1006EEE70(v2);
  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  std::string::assign((a1 + 104), "");
  *(a1 + 96) = 0;
  *(a1 + 136) = 0;
  *(a1 + 138) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  sub_1006EEE70((a1 + 152));
  *(a1 + 176) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  sub_1006FC97C(a1 + 192);
  if (*(a1 + 271) < 0)
  {
    **(a1 + 248) = 0;
    *(a1 + 256) = 0;
  }

  else
  {
    *(a1 + 248) = 0;
    *(a1 + 271) = 0;
  }

  *(a1 + 312) = 0;
  *(a1 + 272) = 0;
  sub_1006EEE70((a1 + 280));
  return a1;
}

void sub_10031FE50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D6BD4(va);
  if (*(v2 + 271) < 0)
  {
    operator delete(*v3);
  }

  sub_1000D8E64(v2 + 192);
  sub_1000D6BD4(va);

  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  sub_1000D6BD4(va);
  sub_10007A068(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10031FEFC(uint64_t a1)
{
  sub_10031FFFC(a1);

  sub_10007A068(a1 + 320);
  v3 = (a1 + 280);
  sub_1000D6BD4(&v3);
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  sub_1000D8E64(a1 + 192);
  v3 = (a1 + 152);
  sub_1000D6BD4(&v3);

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 64);
  sub_1000D6BD4(&v3);
  return sub_10007A068(a1);
}

void sub_10031FFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_10007A068(v10 + 320);
  a10 = (v10 + 280);
  sub_1000D6BD4(&a10);
  if (*(v10 + 271) < 0)
  {
    operator delete(*(v10 + 248));
  }

  sub_100818650(v10);
  a10 = (v10 + 64);
  sub_1000D6BD4(&a10);
  sub_10007A068(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_10031FFFC(uint64_t a1)
{
  if (*(a1 + 312))
  {
    v2 = qword_100BCE8F8;
    if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO) || (*buf = 0, _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Deleting pending sco route change", buf, 2u), *(a1 + 312)))
    {
      operator delete();
    }

    *(a1 + 312) = 0;
  }

  *buf = 0;
  v9 = 0;
  sub_100007F88(buf, a1 + 320);
  v3 = *(a1 + 384);
  if (v3)
  {
    v4 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Canceling pending Disconnection timeout dispatch", v7, 2u);
      v3 = *(a1 + 384);
    }

    dispatch_block_cancel(v3);
    v5 = *(a1 + 384);
    *(a1 + 384) = 0;
  }

  return sub_1000088CC(buf);
}

const char *sub_100320114(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_100AEB300[v1];
  }
}

char *sub_10032015C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[127] < 0)
  {
    return sub_100008904(a2, *(result + 13), *(result + 14));
  }

  *a2 = *(result + 104);
  *(a2 + 16) = *(result + 15);
  return result;
}

std::string *sub_10032018C(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a1 + 104), (a2 + 8));
  *(a1 + 96) = *a2;
  return result;
}

void sub_100320228(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 152);
  if (v2 != a2)
  {
    sub_1000D8984(v2, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3));
  }
}

std::string *sub_100320288(uint64_t a1)
{
  *(a1 + 180) = 0;
  result = sub_1006FC97C(a1 + 192);
  if (*(a1 + 271) < 0)
  {
    **(a1 + 248) = 0;
    *(a1 + 256) = 0;
  }

  else
  {
    *(a1 + 248) = 0;
    *(a1 + 271) = 0;
  }

  *(a1 + 184) = 0;
  return result;
}

std::string *sub_1003202D8(uint64_t a1, uint64_t a2, const std::string *a3, int a4)
{
  sub_1000DA184((a1 + 192), a2);
  result = std::string::operator=((a1 + 248), a3);
  *(a1 + 180) = a4;
  return result;
}

char *sub_100320340@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[271] < 0)
  {
    return sub_100008904(a2, *(result + 31), *(result + 32));
  }

  *a2 = *(result + 248);
  *(a2 + 16) = *(result + 33);
  return result;
}

uint64_t sub_100320370(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 140);
  sub_1000088CC(v4);
  return v2;
}

void sub_100320408(uint64_t a1)
{
  v2 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Set pending sco route change", buf, 2u);
  }

  sub_10031FFFC(a1);
  operator new();
}

uint64_t sub_10032055C(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = *(result + 32);
    result = sub_1003205C4(v1);
    if (result)
    {
      v2 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_1008186D0(v2);
      }

      return sub_10031FFFC(v1);
    }
  }

  return result;
}

uint64_t sub_1003205C4(uint64_t a1)
{
  v2 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 312))
    {
      v3 = "true";
    }

    else
    {
      v3 = "false";
    }

    v5 = 136446210;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Getting pending sco route change %{public}s", &v5, 0xCu);
  }

  return *(a1 + 312);
}

void sub_100320688(uint64_t a1)
{
  if (sub_1003205C4(a1))
  {
    v2 = *(a1 + 312);
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = *(v2 + 6);
    if (qword_100B50AD0 != -1)
    {
      sub_100818714();
    }

    v7 = sub_1005D492C(off_100B50AC8, v6);
    if (qword_100B50AD0 != -1)
    {
      sub_100818714();
    }

    v8 = sub_1005D0048(off_100B50AC8, v6);
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio device has already disconnected, cannot retry route change", __p, 2u);
      }
    }

    else
    {
      v11 = v8;
      sub_10031FFFC(a1);
      v12 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(v7, __p);
        v14 = v16 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v18 = 1752392040;
        v19 = 2081;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Retrying sco route change to device %{private, mask.hash}s", buf, 0x16u);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B50AD0 != -1)
      {
        sub_1008186A8();
      }

      (*(*off_100B50AC8 + 136))(off_100B50AC8, v11, v3, v4, v5);
    }
  }
}

uint64_t sub_1003208A0(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 275) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_1003208E8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 275);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100320930(uint64_t a1, uint64_t *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if ((a1 + 280) != a2)
  {
    sub_1000D8984((a1 + 280), *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 3));
  }

  return sub_1000088CC(v5);
}

double sub_1003209D8(uint64_t a1, uint64_t a2, __int16 a3, int *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 70) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 68) = 0;
  *(a1 + 73) = 0;
  *(a1 + 81) = 0;
  *(a1 + 88) = 1;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *&result = 0x100000040;
  *(a1 + 116) = xmmword_1008A5E10;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  v5 = *a4;
  *(a1 + 46) = *(a4 + 2);
  *(a1 + 42) = v5;
  *(a1 + 82) = 0;
  *(a1 + 84) = 0;
  *(a1 + 69) = 0;
  *(a1 + 48) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 178) = 0;
  *(a1 + 148) = 0;
  *(a1 + 108) = 0;
  *(a1 + 111) = 0;
  return result;
}

BOOL sub_100320A98(uint64_t a1)
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  *__p = 0u;
  v6 = 0u;
  *v7 = 0u;
  v4 = 0u;
  *v5 = 0u;
  sub_1000DE474(&v4 + 1);
  BYTE2(v5[0]) = 0;
  BYTE4(v5[0]) = 0;
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  DWORD1(v10[1]) = 0;
  v6 = 0uLL;
  v5[1] = 0;
  LOBYTE(v7[0]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v10, 0, 19);
  __p[1] = 0;
  BYTE8(v10[1]) = 1;
  *(&v10[1] + 14) = 0;
  *(&v10[1] + 9) = 0;
  v11 = 0uLL;
  *(&v10[2] + 1) = 0;
  LOBYTE(v12) = 0;
  *(&v12 + 2) = 0;
  v2 = sub_100536A18(*(a1 + 32), &v4) && (BYTE2(v10[1]) & 1) != 0;
  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  nullsub_21(&v4 + 1);
  return v2;
}

uint64_t sub_100320BE8(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  nullsub_21(a1 + 1);
  return a1;
}

uint64_t sub_100320C44(uint64_t a1)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  *v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_1000DE474(&v6 + 1);
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  BYTE2(v9[0]) = 0;
  BYTE4(v9[0]) = 0;
  DWORD1(v12[1]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(v9[0]) = 0;
  v10 = 0uLL;
  v9[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v12, 0, 19);
  __p[1] = 0;
  BYTE8(v12[1]) = 1;
  *(&v12[1] + 14) = 0;
  *(&v12[1] + 9) = 0;
  v13 = 0uLL;
  *(&v12[2] + 1) = 0;
  LOBYTE(v14) = 0;
  *(&v14 + 2) = 0;
  v2 = sub_100536A18(*(a1 + 32), &v6);
  v3 = DWORD1(v12[1]);
  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  nullsub_21(&v6 + 1);
  return v4;
}

uint64_t sub_100320E44(uint64_t result, char a2)
{
  *(result + 68) = a2;
  if ((a2 & 1) == 0)
  {
    *(result + 69) = 0;
  }

  return result;
}

BOOL sub_10032102C(uint64_t a1)
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  *__p = 0u;
  v6 = 0u;
  *v7 = 0u;
  v4 = 0u;
  *v5 = 0u;
  sub_1000DE474(&v4 + 1);
  BYTE2(v5[0]) = 0;
  BYTE4(v5[0]) = 0;
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  DWORD1(v10[1]) = 0;
  v6 = 0uLL;
  v5[1] = 0;
  LOBYTE(v7[0]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v10, 0, 19);
  __p[1] = 0;
  BYTE8(v10[1]) = 1;
  *(&v10[1] + 14) = 0;
  *(&v10[1] + 9) = 0;
  v11 = 0uLL;
  *(&v10[2] + 1) = 0;
  LOBYTE(v12) = 0;
  *(&v12 + 2) = 0;
  v2 = sub_100536A18(*(a1 + 32), &v4) && (BYTE11(v10[1]) & 1) != 0;
  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  nullsub_21(&v4 + 1);
  return v2;
}

__n128 sub_10032118C(__n128 *a1, __n128 *a2)
{
  if (&a1[10] != a2)
  {
    result = *a2;
    a1[10] = *a2;
  }

  return result;
}

__n128 sub_1003211A4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[10];
  *a2 = result;
  return result;
}

xpc_connection_t *sub_100321268(xpc_connection_t *a1, _xpc_connection_s *a2, _xpc_connection_s *name, _xpc_connection_s *targetq)
{
  *a1 = a2;
  a1[1] = name;
  a1[2] = targetq;
  mach_service = xpc_connection_create_mach_service(name, targetq, 0);
  a1[3] = mach_service;
  a1[4] = 0;
  if (a1[2])
  {
    dispatch_retain(a1[2]);
    mach_service = a1[3];
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10032134C;
  handler[3] = &unk_100AEB340;
  handler[4] = a1;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_set_context(a1[3], a1);
  xpc_connection_set_finalizer_f(a1[3], sub_10032143C);
  return a1;
}

void sub_100321354(uint64_t (****a1)(void), xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {

    sub_100321878(a1, object);
  }

  else if (type == &_xpc_type_error)
  {

    sub_100321918(a1, object);
  }

  else
  {
    v5 = xpc_copy_description(object);
    v6 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100818728(a1, v5, v6);
    }

    free(v5);
  }
}

uint64_t sub_100321444(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_100321480(uint64_t a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Opening XPC Connection %s", &v4, 0xCu);
  }

  xpc_connection_resume(*(a1 + 24));
}

void sub_100321530(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(v5);
  v4 = *(a1 + 32);
  *(a1 + 32) = v3;

  xpc_connection_cancel(*(a1 + 24));
  xpc_release(*(a1 + 24));
}

void sub_1003215AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 24);
  v7 = v5;
  if (v5)
  {
    xpc_connection_send_message_with_reply(v6, a2, *(a1 + 16), v5);
  }

  else
  {
    xpc_connection_send_message(v6, a2);
  }

  xpc_release(a2);
}

void sub_100321634(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = xpc_connection_send_message_with_reply_sync(*(a1 + 24), a2);
  if (v5)
  {
    v6[2](v6, v5);
    xpc_release(v5);
  }

  xpc_release(a2);
}

void sub_1003216CC(uint64_t a1, char *a2, void *a3, void *a4)
{
  v8 = a4;
  v7 = sub_100321750(v8, a2, a3);
  sub_1003215AC(a1, v7, v8);
}

xpc_object_t sub_100321750(int a1, char *string, void *a3)
{
  *keys = *off_100AEB360;
  object[0] = xpc_string_create(string);
  object[1] = a3;
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = xpc_dictionary_create(keys, object, v4);
  xpc_release(object[0]);
  if (a3)
  {
    xpc_release(a3);
  }

  return v5;
}

void sub_1003217F4(uint64_t a1, char *a2, void *a3, void *a4)
{
  v8 = a4;
  v7 = sub_100321750(v8, a2, a3);
  sub_100321634(a1, v7, v8);
}

uint64_t sub_100321878(uint64_t (****a1)(void), xpc_object_t xdict)
{
  xpc_dictionary_get_string(xdict, "kMsgId");
  xpc_dictionary_get_value(xdict, "kMsgArgs");
  v4 = ***a1;

  return v4();
}

void sub_100321918(uint64_t a1, void *a2)
{
  if (a2 == &_xpc_error_connection_interrupted)
  {

    sub_1003219DC(a1);
  }

  else if (a2 == &_xpc_error_connection_invalid)
  {

    sub_100321A50(a1);
  }

  else
  {
    v4 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008187B4(a1, a2, v4);
    }
  }
}

uint64_t sub_1003219DC(uint64_t a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100818864(a1, v2);
  }

  return (*(**a1 + 8))();
}

uint64_t sub_100321A50(uint64_t result)
{
  if (!*(result + 32))
  {
    v1 = result;
    v2 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008188E0(v1, v2);
    }

    return (*(**v1 + 16))();
  }

  return result;
}

void sub_100321AD4(uint64_t a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 8);
    v6 = 136446210;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "XPCServiceConnection (%{public}s) finalized", &v6, 0xCu);
  }

  v4 = objc_retainBlock(*(a1 + 32));
  if (v4)
  {
    v5 = *(a1 + 32);
    *(a1 + 32) = 0;

    v4[2](v4);
    _Block_release(v4);
  }
}

uint64_t sub_100321BCC(uint64_t a1, uint64_t a2, __int16 a3)
{
  *a1 = off_100AEB380;
  *(a1 + 8) = a2;
  *(a1 + 40) = a3;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  sub_100044BBC(a1 + 64);
  sub_100364534((a1 + 128));
  *(a1 + 184) = 0;
  *(a1 + 16) = dispatch_queue_create("com.apple.MobileBluetooth.InputDevice", 0);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a1 + 56) = Mutable;
  CFDictionarySetValue(Mutable, @"Transport", @"Bluetooth");
  return a1;
}

uint64_t sub_100321CA8(uint64_t a1)
{
  *a1 = off_100AEB380;
  if (*(a1 + 48))
  {
    v2 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      sub_10081895C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  CFRelease(*(a1 + 56));
  sub_1003645A0(a1 + 128);
  sub_10007A068(a1 + 64);
  return a1;
}

void sub_100321D30(_Unwind_Exception *a1)
{
  sub_1003645A0(v1 + 128);
  sub_10007A068(v1 + 64);
  _Unwind_Resume(a1);
}

void sub_100321D50(uint64_t a1)
{
  sub_100321CA8(a1);

  operator delete();
}

uint64_t sub_100321D88(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 43) == 1)
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      sub_1008189D4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = sub_100321E00(a1, a2);
  if (result)
  {
    *(a1 + 43) = 1;
  }

  return result;
}

uint64_t sub_100321E00(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      sub_10081895C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1000E2C08(a2);
  v13 = qword_100BCEAA0;
  if (!v12 && os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
  {
    LODWORD(__p) = 136446210;
    *(&__p + 4) = "device->hasHIDInfos()";
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &__p, 0xCu);
    v13 = qword_100BCEAA0;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, &__p);
    v14 = v38 >= 0 ? &__p : __p;
    *buf = 136446210;
    v40 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating IOHIDUserDevice for device %{public}s", buf, 0xCu);
    if (v38 < 0)
    {
      operator delete(__p);
    }
  }

  HIDWORD(v15) = *(a2 + 131);
  LODWORD(v15) = bswap32(*(a2 + 132));
  *buf = (v15 >> 16) & 0x80FFFFFF | ((*(a2 + 130) & 0x7F) << 24);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
  CFDictionarySetValue(*(a1 + 56), @"LocationID", v16);
  CFRelease(v16);
  sub_1000BE6F8((a2 + 128), &__p);
  if (v38 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v18 = CFStringCreateWithCString(kCFAllocatorDefault, p_p, 0x8000100u);
  if (v38 < 0)
  {
    operator delete(__p);
  }

  CFDictionarySetValue(*(a1 + 56), @"SerialNumber", v18);
  CFRelease(v18);
  sub_1000C23E0(a2, &__p);
  if (v38 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p;
  }

  v20 = CFStringCreateWithCString(kCFAllocatorDefault, v19, 0x8000100u);
  if (v38 < 0)
  {
    operator delete(__p);
  }

  CFDictionarySetValue(*(a1 + 56), @"Product", v20);
  CFRelease(v20);
  valuePtr = 5000000;
  v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(*(a1 + 56), @"RequestTimeout", v21);
  CFRelease(v21);
  CFDictionarySetValue(*(a1 + 56), @"HIDVirtualDevice", kCFBooleanFalse);
  *&__p = &off_100AE0A78;
  *(&__p + 1) = 0;
  v34 = 0;
  v35 = 0;
  if (sub_10053C7C8(a2, &__p, &v35 + 1, &v35, &v34 + 1, &v34))
  {
    v22 = sub_10000C5F8(&__p);
    v23 = sub_10000C5E0(&__p);
    v24 = CFDataCreate(kCFAllocatorDefault, v22, v23);
    CFDictionarySetValue(*(a1 + 56), @"ReportDescriptor", v24);
    CFRelease(v24);
    v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v35 + 2);
    CFDictionarySetValue(*(a1 + 56), @"VendorID", v25);
    CFRelease(v25);
    v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v35);
    CFDictionarySetValue(*(a1 + 56), @"VendorIDSource", v26);
    CFRelease(v26);
    v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v34 + 2);
    CFDictionarySetValue(*(a1 + 56), @"ProductID", v27);
    CFRelease(v27);
    v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v34);
    CFDictionarySetValue(*(a1 + 56), @"VersionNumber", v28);
    CFRelease(v28);
  }

  if (sub_100539FE8(a2))
  {
    CFDictionarySetValue(*(a1 + 56), @"Manufacturer", @"Apple Inc.");
  }

  v33 = 0;
  if (sub_10053CC04(a2, &v33 + 1, &v33))
  {
    if (HIBYTE(v33))
    {
      v29 = kCFBooleanTrue;
    }

    else
    {
      v29 = kCFBooleanFalse;
    }

    CFDictionarySetValue(*(a1 + 56), @"Authenticated", v29);
    v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &v33);
    CFDictionarySetValue(*(a1 + 56), @"IAPHIDAccessoryCategory", v30);
    CFRelease(v30);
  }

  *(a1 + 184) = CFDictionaryGetValue(*(a1 + 56), @"SerialNumber");
  v31 = (*(*a1 + 88))(a1, *(a1 + 56));
  *&__p = &off_100AE0A78;
  if (*(&__p + 1))
  {
    sub_10000C808(*(&__p + 1));
  }

  return v31;
}

void sub_10032231C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, atomic_uint *a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12)
  {
    sub_10000C808(a12);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10032237C(_BYTE *result, uint64_t a2)
{
  if (result[43] == 1)
  {
    v4 = result;
    (*(*result + 104))(result);
    sub_100321E00(v4, a2);
    v5 = *(*v4 + 96);

    return v5(v4);
  }

  return result;
}

uint64_t sub_100322414(uint64_t a1)
{
  v2 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting input device", v4, 2u);
  }

  return (*(*a1 + 96))(a1);
}

void sub_1003224CC(dispatch_object_t *context)
{
  dispatch_set_context(context[2], context);
  dispatch_set_finalizer_f(context[2], sub_100322524);
  v2 = context[2];

  dispatch_release(v2);
}

uint64_t sub_100322524(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100322550()
{
  v0 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100818A4C(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void sub_100322594(uint64_t a1, const uint8_t *a2, CFIndex a3)
{
  if (*(a1 + 48))
  {
    v6 = sub_1003640E4();
    v7 = *(a1 + 48);
    if (!v6)
    {
      v6 = mach_absolute_time();
    }

    IOHIDUserDeviceHandleReportWithTimeStamp(v7, v6, a2, a3);
  }

  else
  {
    v8 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100818A84(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

void sub_100322638(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10032274C;
  v5[3] = &unk_100AEB3F0;
  v6 = a2;
  v5[4] = a1;
  v5[5] = a5;
  v5[6] = a4;
  sub_1003226AC(a1, a2, a3, v5);
}

void sub_1003226AC(uint64_t a1, char a2, int a3, void *a4)
{
  v7 = a4;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 64);
  *(a1 + 176) = a2;
  *(a1 + 180) = a3;
  if (v7)
  {
    v7[2](v7);
  }

  sub_100364600((a1 + 128));
  sub_1000088CC(v8);
}

void *sub_10032274C(void *result)
{
  if (*(result + 56) == 1)
  {
    v1 = *(result + 4);
    v2 = *(v1 + 32);
    if (v2)
    {
      if (*(v1 + 24))
      {
        v3 = *v2;
        if (*(result + 5) >= v3)
        {
          v4 = v3;
        }

        else
        {
          v4 = *(result + 5);
        }

        result = memcpy(*(v1 + 24), *(result + 6), v4);
        **(v1 + 32) = v4;
      }
    }
  }

  return result;
}

BOOL sub_1003227B8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      sub_10081895C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = IOHIDUserDeviceCreateWithOptions();
  *(a1 + 48) = v10;
  if (v10)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else
  {
    v11 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100818ABC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return v10 != 0;
}

uint64_t sub_1003228A0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100322D2C;
  v6[3] = &unk_100AEB410;
  v7 = a2;
  v8 = a3;
  v6[4] = a1;
  v6[5] = a4;
  v6[6] = a5;
  return sub_100322C30(a1, v6);
}

void sub_100322914(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    v1 = qword_100BCEAA0;
    if (!os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v4[0]) = 0;
    v2 = "Could not schedule IOHIDUserDevice";
    goto LABEL_7;
  }

  if (*(a1 + 42))
  {
    v1 = qword_100BCEAA0;
    if (!os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v4[0]) = 0;
    v2 = "IOHIDUserDevice is already scheduled";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, v2, v4, 2u);
    return;
  }

  *(a1 + 42) = 1;
  v3 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = 1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling IOHIDUserDevice: fIsScheduled %d", v4, 8u);
  }

  IOHIDUserDeviceScheduleWithDispatchQueue();
}

void sub_100322A64(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = qword_100BCEAA0;
  v4 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 42);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing IOHIDUserDevice: fIsScheduled %d", v6, 8u);
      v2 = *(a1 + 48);
    }

    if (*(a1 + 42) == 1)
    {
      *(a1 + 42) = 0;
      IOHIDUserDeviceUnscheduleFromDispatchQueue();
      v2 = *(a1 + 48);
    }

    CFRelease(v2);
    *(a1 + 48) = 0;
    sub_1003226AC(a1, 0, -536870212, 0);
  }

  else if (v4)
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could not release IOHIDUserDevice", v6, 2u);
  }

  if (*(a1 + 184))
  {
    *(a1 + 184) = 0;
  }
}

uint64_t sub_100322BA0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = 3758097090;
  if (a4 && a5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100322CE0;
    v7[3] = &unk_100AEB410;
    v7[4] = a1;
    v7[5] = a4;
    v7[6] = a5;
    v8 = a2;
    v9 = a3;
    return sub_100322C30(a1, v7);
  }

  return v5;
}

uint64_t sub_100322C30(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 64);
  if (v3[2](v3))
  {
    sub_1003645A4((a1 + 128), (a1 + 64));
    if (*(a1 + 176))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 180);
    }
  }

  else
  {
    v4 = 3758097084;
  }

  sub_1000088CC(v6);

  return v4;
}

uint64_t sub_100322CE0(void *a1)
{
  v1 = a1[4];
  *(v1 + 24) = a1[5];
  *(v1 + 32) = a1[6];
  return (***(v1 + 8))(*(v1 + 8));
}

uint64_t sub_100322D70(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_100044BBC(a1);
  *(result + 64) = 0;
  *(result + 73) = 0;
  v10 = *a2;
  *(result + 68) = *(a2 + 2);
  *(result + 64) = v10;
  LOWORD(v10) = *(a3 + 4);
  *(result + 73) = *a3;
  *(result + 77) = v10;
  *(result + 88) = a4;
  *(result + 72) = a5;
  return result;
}

uint64_t sub_100322DDC(uint64_t a1)
{
  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(a1 + 71) & 1) != 0 || *(a1 + 80) == 1)
    {
      v3 = "Yes";
    }

    else
    {
      v3 = "No";
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "start: already running..? %{public}s", buf, 0xCu);
  }

  if ((*(a1 + 71) & 1) != 0 || (*(a1 + 80) & 1) != 0 || !*(a1 + 88))
  {
    return 0;
  }

  if (qword_100B53FC8 != -1)
  {
    sub_100818AF4();
  }

  sub_100318EE4(qword_100B53FC0, *(a1 + 72));
  if (*(a1 + 72) >= 0xAu)
  {
    if (qword_100B53FC8 != -1)
    {
      sub_100818AF4();
    }

    sub_100318EEC(qword_100B53FC0);
  }

  v4 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
  {
    sub_100323130((a1 + 64), buf);
    v5 = v18;
    v6 = *buf;
    sub_100323130((a1 + 73), __p);
    v7 = buf;
    if (v5 < 0)
    {
      v7 = v6;
    }

    if (v16 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *v19 = 136315394;
    v20 = v7;
    v21 = 2080;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "sending pair status request to %s for magnet device %s ", v19, 0x16u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*buf);
    }
  }

  (***(a1 + 88))(*(a1 + 88), a1 + 64, a1 + 73);
  *(a1 + 71) = 1;
  v9 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
  {
    sub_100323130((a1 + 73), buf);
    v10 = v18;
    v11 = *buf;
    sub_100323130((a1 + 64), __p);
    v12 = buf;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *v19 = 136315394;
    v20 = v12;
    v21 = 2080;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "sending pair status request to %s  for aacp device %s ", v19, 0x16u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*buf);
    }
  }

  (***(a1 + 88))(*(a1 + 88), a1 + 73, a1 + 64);
  result = 1;
  *(a1 + 80) = 1;
  *(a1 + 96) = 0;
  return result;
}

void sub_100323108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100323130(unsigned __int8 *a1@<X1>, _BYTE *a2@<X8>)
{
  if (qword_100B508F0 != -1)
  {
    sub_100818B1C();
  }

  v4 = sub_1000E6554(off_100B508E8, a1, 1);
  if (v4)
  {
    v5 = v4;
    sub_1000C23E0(v4, __p);
    if (v8 >= 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      operator delete(__p[0]);
      if (v6)
      {
        goto LABEL_9;
      }
    }

    else if (v6)
    {
LABEL_9:
      sub_1000E5A58(v5, a2);
      return;
    }
  }

  sub_1000BE6F8(a1, a2);
}

uint64_t sub_1003231E0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (qword_100B53FC8 != -1)
  {
    sub_100818B30();
  }

  v8 = sub_10031990C(qword_100B53FC0);
  v9 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 == 2)
    {
      v10 = "Paired";
    }

    else
    {
      v10 = "Not paired";
    }

    sub_100323130(a2, __p);
    if (v36 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    v12 = "Disallow";
    *buf = 136446722;
    if (v8)
    {
      v12 = "Allow";
    }

    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    v38 = 2080;
    v39 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "received pair status response %{public}s from device %s, isEasyPairingAllowed = %s", buf, 0x20u);
    if (v36 < 0)
    {
      operator delete(*__p);
    }
  }

  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1);
  if (*a2 == *(a1 + 64) && *(a2 + 4) == *(a1 + 68))
  {
    *(a1 + 70) = a4;
    v15 = 71;
    goto LABEL_25;
  }

  if (*a2 == *(a1 + 73) && *(a2 + 4) == *(a1 + 77))
  {
    *(a1 + 79) = a4;
    v15 = 80;
LABEL_25:
    *(a1 + v15) = 0;
  }

  if ((*(a1 + 71) & 1) == 0 && (*(a1 + 80) & 1) == 0)
  {
    if (v8)
    {
      v17 = (*(a1 + 79) & *(a1 + 70));
      v18 = qword_100BCE960;
      v19 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
      if (v17 == 2)
      {
        if (v19)
        {
          sub_100323130(a2, buf);
          v20 = SHIBYTE(v38);
          v21 = *buf;
          sub_100323130(a3, __p);
          v22 = buf;
          if (v20 < 0)
          {
            v22 = v21;
          }

          if (v36 >= 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = *__p;
          }

          *v31 = 136315394;
          v32 = v22;
          v33 = 2080;
          v34 = v23;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Devices %s and %s are already paired", v31, 0x16u);
          if (v36 < 0)
          {
            operator delete(*__p);
          }

          if (SHIBYTE(v38) < 0)
          {
            operator delete(*buf);
          }
        }

        (*(**(a1 + 88) + 16))(*(a1 + 88), a2, a3, 1);
      }

      else
      {
        if (v19)
        {
          sub_100323130(a2, buf);
          v26 = SHIBYTE(v38);
          v27 = *buf;
          sub_100323130(a3, __p);
          v28 = buf;
          if (v26 < 0)
          {
            v28 = v27;
          }

          if (v36 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = *__p;
          }

          *v31 = 136315394;
          v32 = v28;
          v33 = 2080;
          v34 = v29;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Generate linkkey to pair between %s and %s", v31, 0x16u);
          if (v36 < 0)
          {
            operator delete(*__p);
          }

          if (SHIBYTE(v38) < 0)
          {
            operator delete(*buf);
          }
        }

        *buf = 0;
        *&buf[8] = 0;
        arc4random_buf(buf, 0x10uLL);
        (*(**(a1 + 88) + 8))(*(a1 + 88), a1 + 64, a1 + 73, buf, 16);
        (*(**(a1 + 88) + 8))(*(a1 + 88), a1 + 73, a1 + 64, buf, 16);
        *(a1 + 71) = 1;
        *(a1 + 80) = 1;
      }
    }

    else
    {
      v24 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        sub_100323130(a2, buf);
        v25 = v38 >= 0 ? buf : *buf;
        *__p = 136315138;
        *&__p[4] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Easy pairing request is rejected from remote source %s", __p, 0xCu);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*buf);
        }
      }
    }
  }

  return sub_1000088CC(v30);
}

void sub_10032367C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

void sub_1003236C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a4 ? "Fail" : "Success";
    sub_100323130(a2, __p);
    v10 = v16 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v18 = v9;
    v19 = 2080;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received link key store result %{public}s from device %s ", buf, 0x16u);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*a2 == *(a1 + 64) && *(a2 + 4) == *(a1 + 68))
  {
    v13 = 71;
  }

  else
  {
    if (*a2 != *(a1 + 73) || *(a2 + 4) != *(a1 + 77))
    {
      goto LABEL_22;
    }

    v13 = 80;
  }

  *(a1 + v13) = 0;
LABEL_22:
  v14 = *(a1 + 96) | a4;
  *(a1 + 96) |= a4;
  if ((*(a1 + 71) & 1) == 0 && (*(a1 + 80) & 1) == 0)
  {
    (*(**(a1 + 88) + 16))(*(a1 + 88), a2, a3, 2 * (v14 != 0));
  }
}

uint64_t sub_100323950(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, uint64_t a4)
{
  v5 = sub_100012460(a1, a2, a3, a4);
  *v5 = off_100AEB6A8;
  *(v5 + 144) = off_100AEB780;
  *(v5 + 152) = off_100AEB7C8;
  *(v5 + 160) = off_100AEB800;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  *(v5 + 192) = 0;
  *(v5 + 204) = 0;
  *(v5 + 196) = 0;
  *(v5 + 212) = 0;
  sub_100044BBC(v5 + 216);
  *(a1 + 280) = 0;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 216);
  v6 = +[NSMutableDictionary dictionary];
  v7 = *(a1 + 280);
  *(a1 + 280) = v6;

  *(a1 + 128) = 0;
  sub_1000088CC(v9);
  return a1;
}

void sub_100323A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  sub_10007A068(v9 + 216);
  v11 = *(v9 + 184);
  if (v11)
  {
    sub_100117644(v11);
  }

  sub_10007A588(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100323AAC(uint64_t a1)
{
  *a1 = off_100AEB6A8;
  *(a1 + 144) = off_100AEB780;
  *(a1 + 152) = off_100AEB7C8;
  *(a1 + 160) = off_100AEB800;

  sub_10007A068(a1 + 216);
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100117644(v2);
  }

  return sub_10007A588(a1);
}

void sub_100323B84(uint64_t a1)
{
  sub_100323AAC(a1);

  operator delete();
}

void (*sub_100323BBC(uint64_t a1, int a2))(uint64_t a1, xpc_object_t xdict)
{
  result = sub_100323EFC;
  switch(a2)
  {
    case 1:
      return result;
    case 2:
      v3 = sub_100324660;
      goto LABEL_36;
    case 7:
      v3 = sub_100324858;
      goto LABEL_36;
    case 10:
      v3 = sub_100325650;
      goto LABEL_36;
    case 11:
      v3 = sub_100325728;
      goto LABEL_36;
    case 12:
      v3 = sub_100325C1C;
      goto LABEL_36;
    case 14:
      v3 = sub_100325944;
      goto LABEL_36;
    case 15:
      v3 = sub_1003257A4;
      goto LABEL_36;
    case 29:
      v3 = sub_1003269FC;
      goto LABEL_36;
    case 30:
      v3 = sub_100326C14;
      goto LABEL_36;
    case 33:
      v3 = sub_1003246C8;
      goto LABEL_36;
    case 34:
      v3 = sub_100324AC4;
      goto LABEL_36;
    case 35:
      v3 = sub_100324B80;
      goto LABEL_36;
    case 36:
      v3 = sub_10032528C;
      goto LABEL_36;
    case 37:
      v3 = sub_100326DD4;
      goto LABEL_36;
    case 38:
      v3 = sub_100327470;
      goto LABEL_36;
    case 39:
      v3 = sub_100327904;
      goto LABEL_36;
    case 40:
      v3 = sub_1003254FC;
      goto LABEL_36;
    case 41:
      v3 = sub_100325540;
      goto LABEL_36;
    case 42:
      v3 = sub_100325584;
      goto LABEL_36;
    case 43:
      v3 = sub_100324C3C;
      goto LABEL_36;
    case 44:
      v3 = sub_100324D74;
      goto LABEL_36;
    case 45:
      v3 = sub_100324F38;
      goto LABEL_36;
    case 46:
      v3 = sub_100325114;
      goto LABEL_36;
    case 47:
      v3 = sub_1003264F0;
      goto LABEL_36;
    case 48:
      v3 = sub_100325CF0;
      goto LABEL_36;
    case 50:
      v3 = sub_1003255C8;
      goto LABEL_36;
    case 53:
      v3 = sub_10032560C;
      goto LABEL_36;
    case 58:
      v3 = sub_100325410;
      goto LABEL_36;
    case 59:
      v3 = sub_1003279B4;
      goto LABEL_36;
    case 60:
      v3 = sub_100327B80;
      goto LABEL_36;
    case 61:
      v3 = sub_100327CCC;
      goto LABEL_36;
    case 64:
      v3 = sub_100327ED0;
      goto LABEL_36;
    case 65:
      v3 = sub_10032802C;
      goto LABEL_36;
    case 66:
      v3 = sub_10032819C;
LABEL_36:
      result = v3;
      break;
    default:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100818B44();
      }

      result = 0;
      break;
  }

  return result;
}

void sub_100323EFC(uint64_t a1, xpc_object_t xdict)
{
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_100013C04(value, "kCBMsgArgName");
  if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgType") || !v4)
  {
    goto LABEL_26;
  }

  v11 = v61;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 1;
  v12 = sub_100013C04(v59, "kCBInitOptionRestoreIdentifier");
  sub_100013CA4(v59, 0, v13, v14, v15, v16, v17, v18, "kCBInitOptionShowPowerAlert");
  v19 = sub_10037CEF8(v59, "kCBManagerPrivacySupported");
  v45 = 0u;
  v46 = 0u;
  xpc_connection_get_audit_token();
  v20 = sub_10001201C();
  v21 = *(a1 + 96);
  *(a1 + 96) = v20;

  v22 = *(a1 + 96);
  v23 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].__locale_) = 138412546;
    *(&buf[0].__locale_ + 4) = v22;
    WORD2(buf[1].__locale_) = 1024;
    *(&buf[1].__locale_ + 6) = v19;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Classic kCBManagerAppSDKVersion for app %@ : %d", buf, 0x12u);
  }

  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_100008760(buf);
  v24 = v22;
  strlen([(std::locale::__imp *)v22 UTF8String]);
  v25 = sub_100007774(buf);
  sub_100007774(v25);
  v26 = std::ostream::operator<<();
  sub_100007774(v26);
  std::ostream::operator<<();
  std::stringbuf::str();
  v27 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    operator delete(*v27);
  }

  *v27 = v62;
  *(a1 + 72) = v63;
  v28 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v29 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v29 = *v27;
    }

    LODWORD(v62) = 136446210;
    *(&v62 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Classic Received XPC check-in from session %{public}s", &v62, 0xCu);
  }

  if (*(a1 + 128))
  {
    v30 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
    if (!v30)
    {
LABEL_19:
      if (*(a1 + 80) <= 0)
      {
        v32 = sub_100328330(v30, *(a1 + 96));
      }

      else
      {
        v32 = 1;
      }

      *(a1 + 89) = v32;
      *(a1 + 213) = sub_1003283F4(a1);
      goto LABEL_23;
    }

    sub_100818BB4();
  }

  else if (v60 == 20161219)
  {
    v31 = sub_100007EE8();
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100328218;
    v36[3] = &unk_100AEB830;
    v44 = 0;
    v41 = a1;
    v42 = v52;
    v37 = v22;
    v43 = v11;
    v38 = v12;
    v39 = &v55;
    v40 = v53;
    sub_10000D334(v31, v36);
  }

  else
  {
    v30 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      sub_100818C38();
    }
  }

  if (*(a1 + 128))
  {
    goto LABEL_19;
  }

LABEL_23:
  if (SHIBYTE(v68) < 0)
  {
    operator delete(*(&v67 + 1));
  }

  std::locale::~locale(&buf[2]);
  std::ostream::~ostream();
  std::ios::~ios();

  v4 = v22;
LABEL_26:
  if (*(a1 + 128) && ((*(a1 + 213) & 1) != 0 || *(a1 + 89) == 1))
  {
    if (qword_100B512F8 != -1)
    {
      sub_100818CC0();
    }

    v33 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v33 = *v33;
    }

    v34 = off_100B512F0;
    v35 = [NSString stringWithUTF8String:v33];
    sub_100063030(v34, v35, *(a1 + 96));

    (*(*a1 + 72))(a1, *(a1 + 128), *(v56 + 6));
  }

  else
  {
    sub_100063710(a1, 2u);
  }

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v55, 8);
}

void sub_1003245B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ios::~ios();

  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Unwind_Resume(a1);
}

void sub_100324660(uint64_t a1)
{
  (*(*a1 + 24))(a1, 1);

  sub_10004DFB8(a1, 5, 0, 0);
}

void sub_1003246C8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_10037CEF8(value, "kCBMsgArgBTPowerState");
  if ((+[CBController bluetoothModificationAllowed]& 1) != 0)
  {
    if (v3)
    {
      if (qword_100B512C8 != -1)
      {
        sub_100818CE8();
      }

      v4 = off_100B512C0;

      sub_100579C50(v4);
    }

    else
    {
      if (qword_100B512C8 != -1)
      {
        sub_100818CE8();
      }

      v7 = off_100B512C0;

      sub_10057A03C(v7);
    }
  }

  else
  {
    v5 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "on";
      if (v3)
      {
        v6 = "off";
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth Toggling is turned off by managing client,keeping the power state to %s", &v8, 0xCu);
    }
  }
}

void sub_100324858(uint64_t a1, xpc_object_t original)
{
  v13 = 0;
  v12 = 0;
  memset(&v11, 0, sizeof(v11));
  *value = 0;
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    if ((*(a1 + 213) & 1) != 0 || *(a1 + 89) == 1)
    {
      if (qword_100B512C8 != -1)
      {
        sub_100818CE8();
      }

      v4 = sub_10000EE78(off_100B512C0);
      if (qword_100B508A0 != -1)
      {
        sub_100818CFC();
      }

      v5 = sub_10009BA5C();
      if (qword_100B50AA0 != -1)
      {
        sub_100818D10();
      }

      sub_100061E78(off_100B50A98, &value[1]);
      if (qword_100B50AA0 != -1)
      {
        sub_100818D24();
      }

      sub_100062334(off_100B50A98, value);
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100818D24();
    }

    sub_10009BE34(off_100B50A98, &v12);
    sub_1000BE6F8(&v12, __p);
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    xpc_dictionary_set_string(reply, "kCBMsgArgAddressString", v6);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_dictionary_set_int64(reply, "kCBMsgArgBTPowerState", v4);
    if (qword_100B50AA0 != -1)
    {
      sub_100818D24();
    }

    sub_1005A2338(off_100B50A98, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v11;
    }

    else
    {
      v7 = v11.__r_.__value_.__r.__words[0];
    }

    xpc_dictionary_set_string(reply, "kCBMsgArgName", v7);
    xpc_dictionary_set_BOOL(reply, "kCBMsgArgInquiryState", v5);
    xpc_dictionary_set_BOOL(reply, "kCBMsgArgDiscoverableState", value[1]);
    xpc_dictionary_set_BOOL(reply, "kCBMsgArgConnectableState", value[0]);
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }
}

void sub_100324A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100324AC4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CEF8(value, "kCBMsgArgConnectableState");
  if (qword_100B508A0 != -1)
  {
    sub_100818CFC();
  }

  v5 = off_100B50898;
  v6 = sub_100011794(*(a1 + 128));
  v7 = sub_100571C4C(v5, v6);
  if (qword_100B508A0 != -1)
  {
    sub_100818CFC();
  }

  v8 = off_100B50898;

  return sub_100571E5C(v8, v7, v4);
}

uint64_t sub_100324B80(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CEF8(value, "kCBMsgArgDiscoverableState");
  if (qword_100B508A0 != -1)
  {
    sub_100818CFC();
  }

  v5 = off_100B50898;
  v6 = sub_100011794(*(a1 + 128));
  v7 = sub_100571C4C(v5, v6);
  if (qword_100B508A0 != -1)
  {
    sub_100818CFC();
  }

  v8 = off_100B50898;

  return sub_100572080(v8, v7, v4);
}

void sub_100324C3C(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v6 = sub_1000C9AAC(value, "kCBMsgArgConnectionState");
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100007EE8();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100328788;
  v12[3] = &unk_100AEAF08;
  v13 = v8;
  v12[4] = a1;
  v12[5] = v4;
  sub_10000D334(v9, v12);
  reply = xpc_dictionary_create_reply(a2);
  v11 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v4);
    xpc_connection_send_message(*(a1 + 16), v11);
    xpc_release(v11);
  }

  xpc_release(v4);
}

void sub_100324D74(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgAddressString");
  v6 = sub_100777FF4(v5);
  if ((v6 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v12 = 0uLL;
    if (qword_100B508D0 != -1)
    {
      sub_100818D4C();
    }

    sub_1000498D4(off_100B508C8, v6, 1u, 0, 0, 0, &v12);
    v7 = sub_10004DF60(&v12);
    v8 = sub_100328944(v7);
  }

  else
  {
    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v12) = 138412290;
      *(&v12 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Invalid parameters, cannot retrieve a peer with address %@", &v12, 0xCu);
    }

    v8 = 0;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v11 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v8);
    xpc_connection_send_message(*(a1 + 16), v11);
    xpc_release(v11);
  }

  if (v8)
  {
    xpc_release(v8);
  }
}

void sub_100324F38(uint64_t a1, xpc_object_t xdict)
{
  v24 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  v13 = sub_10037CEF8(0, "kCBMsgIdSessionPairingRequest");
  v14 = sub_10037CEF8(0, "kCBMsgArgConnectToPAN");
  if (v12 || !v5)
  {
    sub_1005B2CE4(a1, 55, xdict, 3);
  }

  else
  {
    v15 = v14;
    v16 = [ConnectOptions alertOptionsWithConnectionAlerts:0 disconnectionAlerts:0 notificationAlerts:0 delay:0 bridgeTransport:0];
    [v16 setConnectingToPANServices:v15];
    v17 = sub_100007EE8();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100328E58;
    v19[3] = &unk_100AE28A8;
    v22 = a1;
    v20 = v5;
    v18 = v16;
    v21 = v18;
    v23 = v13;
    sub_10000D334(v17, v19);
  }
}

void sub_100325114(uint64_t a1, xpc_object_t xdict)
{
  v24 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v23 = 0;
  if (sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions") || !v5)
  {
    sub_1005B2CE4(a1, 56, xdict, 3);
  }

  else if (!sub_100013CA4(v23, 0, v12, v13, v14, v15, v16, v17, "kCBCancelConnectOptionForce"))
  {
    v18 = sub_100007EE8();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100328F8C;
    v19[3] = &unk_100AE0BC0;
    v21 = a1;
    v20 = v5;
    v22 = v24;
    sub_10000D334(v18, v19);
  }
}

void sub_10032528C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v4 = value;
    v5 = sub_10037CEF8(value, "kCBMsgArgInquiryInfinite");
    v6 = sub_10037CEF8(v4, "kCBMsgArgInquiryReportDuplicates");
    v7 = sub_1000C9AAC(v4, "kCBMsgArgInquiryLength");
    v8 = [v7 intValue];

    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109632;
      v11[1] = v5;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Bluetooth discovery Handle Inquiry Msg: continuous=%d, reportDuplicates=%d , length=%d", v11, 0x14u);
    }

    sub_1003294CC(a1, v5, v10, 0, 0, v6);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100818D60();
  }
}

void sub_100325410(uint64_t a1)
{
  if (qword_100B50DB8 != -1)
  {
    sub_100818D9C();
  }

  v2 = off_100B50DB0;
  v3 = *(a1 + 184);
  v6 = *(a1 + 176);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C6B78(v2, &v6);
  if (v7)
  {
    sub_100117644(v7);
  }

  *(a1 + 192) = 0;
  if (*(a1 + 212) == 1)
  {
    v4 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startInquiry: Disabling duplicate reporting.", v5, 2u);
    }

    sub_1005C2950(*(a1 + 176));
    *(a1 + 212) = 0;
  }
}

void sub_1003254E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100117644(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003254FC()
{
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100818DB0();
  }
}

void sub_100325540()
{
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100818E30();
  }
}

void sub_100325584()
{
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100818EB0();
  }
}

void sub_1003255C8()
{
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100818F30();
  }
}

void sub_10032560C()
{
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100818FB0();
  }
}

void sub_100325650(uint64_t a1, xpc_object_t xdict)
{
  v14 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (!sub_100013CA4(value, 0, v4, v5, v6, v7, v8, v9, "kCBMsgArgProgrammaticPairing"))
  {
    v10 = v14 != 0;
    v11 = sub_100007EE8();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10032A198;
    v12[3] = &unk_100AE15D8;
    v12[4] = a1;
    v13 = v10;
    sub_10000D334(v11, v12);
    *(a1 + 168) = 1;
  }
}

void sub_100325728(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10032A284;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
}

void sub_1003257A4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v4)
  {
    v5 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v6 = *v6;
      }

      v9 = 136446466;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to unpair device %@", &v9, 0x16u);
    }

    if (qword_100B508D0 != -1)
    {
      sub_100819030();
    }

    v7 = sub_100046458(off_100B508C8, v4, 0);
    if (qword_100B508F0 != -1)
    {
      sub_100819058();
    }

    v8 = sub_1000504C8(off_100B508E8, v7, 0);
    if (v8)
    {
      if (qword_100B50F88 != -1)
      {
        sub_100819080();
      }

      sub_1006E0DBC(off_100B50F80, v8);
    }
  }
}

void sub_100325944(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (!sub_100013CA4(v5, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgPairingType") && v4)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100819030();
    }

    v12 = sub_100046458(off_100B508C8, v4, 0);
    if (qword_100B508F0 != -1)
    {
      sub_100819058();
    }

    v13 = sub_1000504C8(off_100B508E8, v12, 0);
    if (v13)
    {
      v14 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v16 = 0;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "handlePairingAgentRespondToPairing: Accepting Pairing Request with Passkey %llu for the device %@", buf, 0x16u);
      }

      if (qword_100B50F88 != -1)
      {
        sub_100819080();
      }

      sub_1006DFC84(off_100B50F80, v13, 0);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008190E4();
    }
  }
}

void sub_100325C1C(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  v5 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032A360;
  v8[3] = &unk_100AE0860;
  v8[4] = a1;
  v8[5] = v4;
  sub_10000D334(v5, v8);
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v7 = reply;
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v4);
    xpc_connection_send_message(*(a1 + 16), v7);
    xpc_release(v7);
  }

  xpc_release(v4);
}

void sub_100325CF0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v3 = value;
    v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
    if (v4)
    {
      v5 = v4;
      if (qword_100B508D0 != -1)
      {
        sub_100818D4C();
      }

      v6 = sub_100046458(off_100B508C8, v5, 0);
      if (qword_100B508F0 != -1)
      {
        sub_100819190();
      }

      v7 = sub_1000504C8(off_100B508E8, v6, 0);
      if (v7)
      {
        v19 = v5;
        v29 = sub_100013C04(v3, "kCBMsgArgName");
        if (v29)
        {
          sub_100007E30(__p, [v29 UTF8String]);
          sub_100538D30(v7, __p, 1);
          if (v31 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v28 = sub_1000C9AAC(v3, "kCBMsgArgSmartRoutingEnabled");
        if (v28)
        {
          sub_100546280(v7, [v28 charValue]);
        }

        sub_100546604(v7);
        v27 = sub_1000C9AAC(v3, "kCBMsgArgInEarDetectionEnabled");
        if (v27)
        {
          if (qword_100B508E0 != -1)
          {
            sub_1008191A4();
          }

          sub_100519DD4(off_100B508D8, v7, [v27 BOOLValue]);
        }

        v26 = sub_1000C9AAC(v3, "kCBMsgArgMicMode");
        if (v26)
        {
          if (qword_100B508E0 != -1)
          {
            sub_1008191A4();
          }

          sub_100518FFC(off_100B508D8, v7, [v26 unsignedIntValue]);
        }

        v25 = sub_1000C9AAC(v3, "kCBMsgArgDoubleTapAction");
        if (v25)
        {
          if (qword_100B508E0 != -1)
          {
            sub_1008191A4();
          }

          sub_10051905C(off_100B508D8, v7, [v25 unsignedIntValue]);
        }

        v24 = sub_1000C9AAC(v3, "kCBMsgArgDoubleTapActionEx");
        if (v24)
        {
          v8 = [v24 unsignedIntValue];
          v9 = v8;
          v10 = HIBYTE(v8);
          if (qword_100B508E0 != -1)
          {
            sub_1008191A4();
          }

          sub_1005190B8(off_100B508D8, v7, v10, v9);
        }

        v23 = sub_1000C9AAC(v3, "kCBMsgArgListeningMode");
        if (v23)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          sub_100331844(off_100B50948, v7, 13, [v23 unsignedIntValue], 2u);
        }

        v22 = sub_1000C9AAC(v3, "kCBMsgArgListeningConfigs");
        if (v22)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          sub_100331844(off_100B50948, v7, 26, [v22 unsignedIntValue], 2u);
        }

        v21 = sub_1000C9AAC(v3, "kCBMsgArgAutoAnswerCalls");
        if (v21)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          v11 = off_100B50948;
          if ([v21 BOOLValue])
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }

          sub_100331844(v11, v7, 30, v12, 2u);
        }

        v20 = sub_1000C9AAC(v3, "kCBMsgArgCrownRotationDirection");
        if (v20)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          sub_100331844(off_100B50948, v7, 28, [v20 unsignedCharValue], 2u);
        }

        v13 = sub_1000C9AAC(v3, "kCBMsgArgSingleClickMode");
        if (v13)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          sub_100331844(off_100B50948, v7, 20, [v13 unsignedIntValue], 2u);
        }

        v14 = sub_1000C9AAC(v3, "kCBMsgArgDoubleClickMode");
        if (v14)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          sub_100331844(off_100B50948, v7, 21, [v14 unsignedIntValue], 2u);
        }

        v15 = sub_1000C9AAC(v3, "kCBMsgArgClickHoldMode");
        if (v15)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          sub_100331844(off_100B50948, v7, 22, [v15 unsignedIntValue], 2u);
        }

        v16 = sub_1000C9AAC(v3, "kCBMsgArgDoubleClickInterval");
        if (v16)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          sub_100331844(off_100B50948, v7, 23, [v16 unsignedIntValue], 2u);
        }

        v17 = sub_1000C9AAC(v3, "kCBMsgArgClickHoldInterval");
        if (v17)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          sub_100331844(off_100B50948, v7, 24, [v17 unsignedIntValue], 2u);
        }

        v18 = sub_1000C9AAC(v3, "kCBMsgArgOneBudANCMode");
        if (v18)
        {
          if (qword_100B50950 != -1)
          {
            sub_1008191CC();
          }

          sub_100331844(off_100B50948, v7, 27, [v18 unsignedIntValue], 2u);
        }

        v5 = v19;
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008191F4();
      }
    }
  }
}

void sub_1003264F0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (v4)
  {
    v5 = sub_10037CDF8(v4, "kCBMsgArgDeviceUUID");
    if (v5)
    {
      v6 = v5;
      if (qword_100B508D0 != -1)
      {
        sub_100818D4C();
      }

      v7 = sub_100046458(off_100B508C8, v6, 0);
      if (!v7)
      {
        goto LABEL_31;
      }

      if (qword_100B508F0 != -1)
      {
        sub_100819190();
      }

      v8 = sub_1000504C8(off_100B508E8, v7, 0);
      if (v8)
      {
        v9 = sub_100328944(v6);
        v10 = sub_1000E2E8C(v8);
        xpc_dictionary_set_BOOL(v9, "kCBMsgArgSmartRoutingSupported", v10);
        if (sub_1000E2E8C(v8))
        {
          v11 = sub_1000E5DB8(v8);
          xpc_dictionary_set_int64(v9, "kCBMsgArgSmartRoutingEnabled", v11);
        }

        v12 = sub_1000E356C(v8);
        xpc_dictionary_set_BOOL(v9, "kCBMsgArgInEarDetectionEnabled", v12);
        v13 = sub_1000E3314(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgMicMode", v13);
        v14 = sub_1000E3284(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgListeningMode", v14);
        v15 = sub_1000E2BC0(v8) == 1;
        xpc_dictionary_set_BOOL(v9, "kCBMsgArgAutoAnswerCalls", v15);
        v16 = sub_1000E20F8(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgCrownRotationDirection", v16);
        v37 = 0;
        sub_10053F0BC(v8, &v37);
        v17 = sub_10053F8E4(v8, 1);
        if (v37 <= 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = v37;
        }

        xpc_dictionary_set_int64(v9, "kCBMsgArgBatteryPercent", v18);
        v19 = sub_10053F8E4(v8, 2);
        xpc_dictionary_set_int64(v9, "kCBMsgArgBatteryPercentRight", v19);
        v20 = sub_10053F8E4(v8, 4);
        xpc_dictionary_set_int64(v9, "kCBMsgArgBatteryPercentLeft", v20);
        v21 = sub_10053F8E4(v8, 8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgBatteryPercentCase", v21);
        v22 = sub_10053F8E4(v8, 1);
        xpc_dictionary_set_int64(v9, "kCBMsgArgBatteryPercentSingle", v22);
        v23 = sub_10053F8E4(v8, 16);
        xpc_dictionary_set_int64(v9, "kCBMsgArgBatteryPercentCombined", v23);
        if (sub_1000E2140(v8, 14))
        {
          xpc_dictionary_set_int64(v9, "kCBMsgArgDoubleTapCapability", 1);
          v24 = sub_1000E3188(v8);
          v25 = "kCBMsgArgDoubleTapActionEx";
        }

        else
        {
          xpc_dictionary_set_int64(v9, "kCBMsgArgDoubleTapCapability", 0);
          v24 = sub_1000E3188(v8);
          v25 = "kCBMsgArgDoubleTapAction";
        }

        xpc_dictionary_set_int64(v9, v25, v24);
        if (qword_100B508E0 != -1)
        {
          sub_1008191A4();
        }

        if (off_100B508D8)
        {
          value = 0;
          sub_100519E34(off_100B508D8, v8, &value + 1, &value);
          xpc_dictionary_set_int64(v9, "kCBMsgArgPrimaryInEarStatus", HIDWORD(value));
          xpc_dictionary_set_int64(v9, "kCBMsgArgSecondaryInEarStatus", value);
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100819230();
        }

        v26 = sub_1000E32CC(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgListeningConfigs", v26);
        v27 = sub_1005492A4(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgSingleClickMode", v27);
        v28 = sub_1005492EC(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgDoubleClickMode", v28);
        v29 = sub_1000E06EC(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgClickHoldMode", v29);
        v30 = sub_100549334(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgDoubleClickInterval", v30);
        v31 = sub_10054937C(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgClickHoldInterval", v31);
        v32 = sub_1005493C4(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgOneBudANCMode", v32);
        xpc_dictionary_set_BOOL(v9, "kCBMsgArgIsConnectedOverUSB", *(v8 + 1360));
        v33 = sub_1000C2398(v8);
        xpc_dictionary_set_int64(v9, "kCBMsgArgColorID", v33);
        reply = xpc_dictionary_create_reply(xdict);
        v35 = reply;
        if (reply)
        {
          xpc_dictionary_set_value(reply, "kCBMsgArgState", v9);
          xpc_connection_send_message(*(a1 + 16), v35);
          xpc_release(v35);
        }

        xpc_release(v9);
      }

      else
      {
LABEL_31:
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008191F4();
        }
      }
    }
  }
}

void sub_1003269FC(uint64_t a1, xpc_object_t xdict)
{
  v24 = 0;
  v25 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (!sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgPSM") && v4)
  {
    v11 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Classic handleOpenL2CAPChannel psm: %lld", buf, 0xCu);
    }

    *buf = 0;
    if (!sub_100013CA4(v24, 0, v12, v13, v14, v15, v16, v17, "kCBL2CAPChannelInMTU") && !(v25 >> 16))
    {
      v18 = sub_100007EE8();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10032A504;
      v19[3] = &unk_100AEB858;
      v21 = a1;
      v22 = v25;
      v23 = *buf;
      v20 = v4;
      sub_10000D334(v18, v19);
    }
  }
}

void sub_100326C14(uint64_t a1, xpc_object_t xdict)
{
  v18 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgPSM");
  v12 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Classic handleCloseL2CAPChannel psm: %lld", buf, 0xCu);
  }

  if (!v11 && !(v18 >> 16) && v4)
  {
    v13 = sub_100007EE8();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10032A5E8;
    v14[3] = &unk_100AE0BC0;
    v16 = a1;
    v17 = v18;
    v15 = v4;
    sub_10000D334(v13, v14);
  }
}

void sub_100326DD4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  v6 = sub_10037CE6C(value, "kCBMsgArgServiceUUID");
  v7 = sub_10037CE6C(value, "kCBMsgArgSDPRecordData");
  v8 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    v51[0] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handleAddServiceToSDP: %@ with name: %@ record: %@ to SDP", buf, 0x20u);
  }

  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_24;
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v41[0] = 0;
    v41[1] = 0;
    sub_100007F88(v41, a1 + 216);
    v12 = *(a1 + 280);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10032C1C0;
    v38[3] = &unk_100AEB990;
    v13 = v6;
    v39 = v13;
    v40 = &v42;
    [v12 enumerateKeysAndObjectsUsingBlock:v38];
    v14 = qword_100BCE950;
    if (v43[3])
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100819318();
      }

      v15 = 15;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        sub_100018384(*(a1 + 128), buf);
        v16 = buf[23] >= 0 ? buf : *buf;
        *v46 = 138412546;
        *&v46[4] = v13;
        v47 = 2082;
        v48 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Adding service %@ for session %{public}s", v46, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      v37 = 0;
      v36 = 0;
      sub_1000216B4(&v36);
      v17 = sub_100296BCC(&v37);
      sub_100022214(&v36);
      v18 = qword_100BCE950;
      if (v17)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10081926C();
        }

        v15 = 4;
      }

      else
      {
        v21 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          *buf = 67109378;
          *&buf[4] = v37;
          *&buf[8] = 2112;
          *&buf[10] = v13;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "psm: 0x%x assigned to service: %@", buf, 0x12u);
        }

        v23 = sub_10032B354(v21, v22, v13, v37);
        v24 = qword_100BCE950;
        if (v23)
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v37;
            sub_100018384(*(a1 + 128), v46);
            v26 = v46;
            if (v49 < 0)
            {
              v26 = *v46;
            }

            *buf = 138413058;
            *&buf[4] = v13;
            *&buf[12] = 1024;
            *&buf[14] = v25;
            *&buf[18] = 1024;
            *&buf[20] = v23;
            LOWORD(v51[0]) = 2082;
            *(v51 + 2) = v26;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Successfully added service uuid %@ with psm: 0x%x, srh: 0x%X for session %{public}s", buf, 0x22u);
            if (v49 < 0)
            {
              operator delete(*v46);
            }
          }

          v33 = [NSNumber numberWithUnsignedShort:v37];
          v27 = [NSMutableDictionary dictionaryWithObject:v13 forKey:?];
          v28 = *(a1 + 280);
          v29 = [NSNumber numberWithUnsignedInt:v23];
          [v28 setObject:v27 forKeyedSubscript:v29];

          v30 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *(a1 + 280);
            *buf = 138412290;
            *&buf[4] = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "currently published services in sdp: %@", buf, 0xCu);
          }

          v32 = sub_100007EE8();
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_10032C2D8;
          v34[3] = &unk_100AEB940;
          v34[4] = a1;
          v35 = v37;
          sub_10000D334(v32, v34);
          sub_10002249C(&v36);

          goto LABEL_23;
        }

        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008192DC();
        }

        v15 = 14;
      }

      sub_10002249C(&v36);
    }

    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v19, "kCBMsgArgResult", v15);
    v20 = v13;
    xpc_dictionary_set_data(v19, "kCBMsgArgServiceUUID", [v13 bytes], objc_msgSend(v13, "length"));
    sub_10004DFB8(a1, 52, v19, 1);

LABEL_23:
    sub_1000088CC(v41);
    _Block_object_dispose(&v42, 8);
    goto LABEL_24;
  }

  v9 = sub_10032B4B4(a1, v7);
  reply = xpc_dictionary_create_reply(xdict);
  v11 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgServiceHandle", v9);
    xpc_connection_send_message(*(a1 + 16), v11);
    xpc_release(v11);
  }

LABEL_24:
}

void sub_1003273C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  sub_10002249C(&a18);

  sub_1000088CC(&a25);
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void sub_100327470(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CE6C(value, "kCBMsgArgServiceUUID");
  int64 = xpc_dictionary_get_int64(value, "kCBMsgArgServiceHandle");
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 216);
  if (v4)
  {
    v6 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remove service: %@ from SDP", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x2020000000;
    v39 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v28 = 0x2020000000;
    v29 = 0;
    v7 = *(a1 + 280);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10032C354;
    v23[3] = &unk_100AEB9E0;
    v8 = v4;
    v24 = v8;
    p_buf = &buf;
    v26 = v27;
    [v7 enumerateKeysAndObjectsUsingBlock:v23];
    if (*(*(&buf + 1) + 24))
    {
      v22 = 0;
      sub_1000216B4(&v22);
      v9 = sub_1002F8018(*(*(&buf + 1) + 24));
      sub_100022214(&v22);
      v10 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(*(a1 + 128), __p);
        if (v21 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *v31 = 138412802;
        v32 = v8;
        v33 = 1024;
        v34 = v9;
        v35 = 2082;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removed service uuid %@ with status 0x%x  for session %{public}s", v31, 0x1Cu);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v12 = sub_100007EE8();
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10032C50C;
      v19[3] = &unk_100AE25F0;
      v19[4] = v27;
      v19[5] = a1;
      sub_10000D334(v12, v19);
      sub_10002249C(&v22);
    }

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(&buf, 8);
  }

  else if (int64)
  {
    v13 = *(a1 + 280);
    v14 = [NSNumber numberWithUnsignedInt:int64];
    v15 = [v13 objectForKeyedSubscript:v14];
    LOBYTE(v13) = v15 == 0;

    if (v13)
    {
      v16 = 414;
    }

    else
    {
      LOBYTE(buf) = 0;
      sub_1000216B4(&buf);
      v16 = sub_1002F8018(int64);
      sub_100022214(&buf);
      sub_10002249C(&buf);
    }

    v17 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(*(a1 + 128), v27);
      v18 = v28 >= 0 ? v27 : v27[0];
      LODWORD(buf) = 67109634;
      DWORD1(buf) = int64;
      WORD4(buf) = 1024;
      *(&buf + 10) = v16;
      HIWORD(buf) = 2082;
      v38 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removed service handle 0x%X with status 0x%X  for session %{public}s", &buf, 0x18u);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }
    }
  }

  sub_1000088CC(v30);
}

void sub_100327874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1000088CC(&a31);

  _Unwind_Resume(a1);
}

uint64_t sub_100327904(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 216);
  v2 = *(a1 + 280);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10032C570;
  v4[3] = &unk_100AEBA28;
  v4[4] = a1;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  [*(a1 + 280) removeAllObjects];
  return sub_1000088CC(v5);
}

void sub_1003279B4(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgRFCOMMChannelID");
  v11 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109634;
    *v13 = v10;
    *&v13[4] = 2112;
    *&v13[6] = v3;
    v14 = 2048;
    v15 = 0;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "handleOpenRFCOMMChannel failed with result 0x%x, identifier: %@, rfcommChannelID: %lld", buf, 0x1Cu);
  }
}

void sub_100327B80(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgRFCOMMChannelID");
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "handleCloseRFCOMMChannel rfcommChannelID: %lld", buf, 0xCu);
  }
}

void sub_100327CCC(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgRFCOMMChannelID");
  v11 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109634;
    *v13 = v10;
    *&v13[4] = 2112;
    *&v13[6] = v3;
    v14 = 2048;
    v15 = 0;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "handleRFCOMMPortConfiguration failed with result 0x%x, identifier: %@, rfcommChannelID: %lld", buf, 0x1Cu);
  }
}

void sub_100327ED0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v9 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v9)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100818D4C();
    }

    v5 = sub_100046458(off_100B508C8, v9, 0);
    if (qword_100B508F0 != -1)
    {
      sub_100819190();
    }

    v6 = sub_1000504C8(off_100B508E8, v5, 0);
    if (v6)
    {
      if (qword_100B50AC0 != -1)
      {
        sub_100819354();
      }

      v6 = sub_1000E077C(off_100B50AB8, v6);
    }
  }

  else
  {
    v6 = 0;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v8 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBMsgArgConnectedServices", v6);
    xpc_connection_send_message(*(a1 + 16), v8);
    xpc_release(v8);
  }
}

void sub_10032802C(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v4 = reply;
    bytes = 0;
    length = 0;
    v5 = malloc_type_malloc(0x3E80uLL, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      bytes = v5;
      length = 0x200003E803E80;
      v9 = 0;
      sub_1000216B4(&v9);
      if (!sub_1002F9C10(&bytes))
      {
        v7 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *bytes;
          *buf = 67109120;
          v13 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending sdp record state (%d records)", buf, 8u);
        }

        xpc_dictionary_set_data(v4, "kCBMsgArgSDPRecordData", bytes, WORD2(length));
      }

      sub_100022214(&v9);
      free(v6);
      sub_10002249C(&v9);
    }

    xpc_connection_send_message(*(a1 + 16), v4);
    xpc_release(v4);
  }
}

void sub_10032819C()
{
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100819368();
  }
}

void sub_100328218(uint64_t a1)
{
  v2 = *(a1 + 84);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 85);
  if (qword_100B512F8 != -1)
  {
    sub_1008193E8();
  }

  v6 = off_100B512F0;
  v7 = *(v3 + 40);
  v8 = *(a1 + 32);
  if (*(v3 + 79) < 0)
  {
    sub_100008904(__p, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    *__p = *(v3 + 56);
    v11 = *(v3 + 72);
  }

  v9 = (v4 != 0) | (v2 << 8) | (v5 << 32);
  *(v3 + 128) = sub_1003AC854(v6, v3 + 144, v7, v8, __p, *(a1 + 80), *(a1 + 40), (*(*(a1 + 48) + 8) + 24), (*(*(a1 + 56) + 8) + 24), v9, SBYTE4(v9));
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100328314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100328330(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NSArray arrayWithObjects:@"com.apple.AppStore", @"com.apple.Preferences", @"com.apple.Bridge", @"com.apple.audio.AudioMIDISetup", @"com.apple.audio.midi.CoreMIDI", @"com.apple.Language-Chooser", @"com.apple.Touch-ID-Settings.extension", 0];
  v4 = [v3 containsObject:v2];

  return v4;
}

uint64_t sub_1003283F4(uint64_t a1)
{
  if (!sub_10006301C())
  {
    return 1;
  }

  xpc_connection_get_audit_token();
  v9 = kTCCAccessCheckOptionPrompt;
  v10 = &off_100B337E0;
  v2 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  memset(buf, 0, 32);
  v3 = tcc_authorization_check_audit_token();
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 96);
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "TCC approval status for session %@: %llu", buf, 0x16u);
  }

  v6 = v3 == 2;

  return v6;
}

void sub_100328558(uint64_t a1)
{
  sub_1003285EC(a1);
  sub_100327904(a1);
  if (*(a1 + 128))
  {
    v2 = sub_100007EE8();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1003286BC;
    v3[3] = &unk_100ADF8F8;
    v3[4] = a1;
    sub_10000D334(v2, v3);
    *(a1 + 128) = 0;
  }
}

void sub_1003285EC(uint64_t a1)
{
  if (*(a1 + 176))
  {
    if (qword_100B50DB8 != -1)
    {
      sub_100818D9C();
    }

    v2 = off_100B50DB0;
    v3 = *(a1 + 184);
    v6 = *(a1 + 176);
    v7 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = sub_1005C6640(v2, &v6);
    if (v7)
    {
      sub_100117644(v7);
    }

    if (qword_100B50DB8 != -1)
    {
      sub_1008193FC();
    }

    sub_1005C6734(off_100B50DB0, v4);
    v5 = *(a1 + 184);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    if (v5)
    {
      sub_100117644(v5);
    }
  }
}

void sub_1003286A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003286BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B53FD8 != -1)
  {
    sub_100819424();
  }

  sub_100023B0C(qword_100B53FD0, *(v1 + 128));
  if (qword_100B512F8 != -1)
  {
    sub_1008193E8();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  return sub_100022CE4(v2, v3, 0);
}

void sub_10032873C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 - 2 >= 3)
  {
    if (a3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4;
    }

    if (a3 == 1)
    {
      v3 = 5;
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    v3 = *(a1 + 136);
  }

  sub_1005B2D6C(a1, v3, a3);
}

void sub_100328788(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_100819438();
  }

  sub_10009DB3C(off_100B50F80, &v7);
  v2 = v7;
  v3 = v8;
  if (v7 != v8)
  {
    do
    {
      v4 = *v2;
      if (sub_1000C0348(*v2) || (*(a1 + 48) & 1) == 0)
      {
        v10[0] = 0;
        v10[1] = 0;
        if (qword_100B508D0 != -1)
        {
          sub_100819030();
        }

        sub_1000498D4(off_100B508C8, (v4[128] << 40) | (v4[129] << 32) | (v4[130] << 24) | (v4[131] << 16) | (v4[132] << 8) | v4[133], 1u, 0, 0, 0, v10);
        v5 = sub_10004DF60(v10);
        v6 = sub_100328944(v5);

        xpc_array_append_value(*(a1 + 40), v6);
        xpc_release(v6);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v7;
  }

  if (v2)
  {
    v8 = v2;
    operator delete(v2);
  }
}

void sub_100328908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sub_100328944(void *a1)
{
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v1;
  v4 = v3;
  if (v3)
  {
    *uuid = 0;
    v30 = 0;
    [v3 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v2, "kCBMsgArgDeviceUUID", uuid);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100819030();
  }

  v5 = sub_100046458(off_100B508C8, v4, 0);
  if (qword_100B508F0 != -1)
  {
    sub_100819058();
  }

  v6 = sub_1000504C8(off_100B508E8, v5, 0);
  v7 = v6;
  if (v6)
  {
    *uuid = 0;
    v30 = 0;
    v31 = 0;
    sub_1000C23E0(v6, uuid);
    if (SHIBYTE(v31) < 0)
    {
      if (!v30)
      {
        goto LABEL_14;
      }

      v8 = *uuid;
    }

    else
    {
      if (!HIBYTE(v31))
      {
        goto LABEL_14;
      }

      v8 = uuid;
    }

    xpc_dictionary_set_string(v2, "kCBMsgArgName", v8);
LABEL_14:
    v9 = sub_1000DEB14(v7);
    xpc_dictionary_set_int64(v2, "kCBMsgArgDeviceType", v9);
    value_4 = 0;
    if (sub_1005379CC(v7, &value_4))
    {
      xpc_dictionary_set_int64(v2, "kCBMsgArgClassOfDevice", value_4);
    }

    v10 = sub_1000295DC(v7);
    xpc_dictionary_set_int64(v2, "kCBMsgArgPairingState", v10);
    v11 = sub_1000E06A4(v7);
    xpc_dictionary_set_int64(v2, "kCBMsgArgRssi", v11);
    if (*(v7 + 1396))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    xpc_dictionary_set_int64(v2, "kCBMsgArgInternalState", v12);
    value = 0;
    memset(v26, 0, sizeof(v26));
    if (sub_1000C2364(v7, &value, &v26[2], &v26[1], v26))
    {
      xpc_dictionary_set_int64(v2, "kCBMsgArgVIDSource", value);
      xpc_dictionary_set_int64(v2, "kCBMsgArgVID", v26[2]);
      xpc_dictionary_set_int64(v2, "kCBMsgArgPID", v26[1]);
      xpc_dictionary_set_int64(v2, "kCBMsgArgVersion", v26[0]);
    }

    *&__dst[1] = 0uLL;
    v25 = 0;
    if (*(v7 + 415) < 0)
    {
      sub_100008904(&__dst[1], *(v7 + 392), *(v7 + 400));
    }

    else
    {
      *&__dst[1] = *(v7 + 392);
      v25 = *(v7 + 408);
    }

    if (SHIBYTE(v25) < 0)
    {
      if (!*&__dst[3])
      {
        goto LABEL_30;
      }

      v13 = *&__dst[1];
    }

    else
    {
      if (!HIBYTE(v25))
      {
        goto LABEL_30;
      }

      v13 = &__dst[1];
    }

    xpc_dictionary_set_string(v2, "kCBMsgArgModelIdentifier", v13);
LABEL_30:
    __dst[0] = 0;
    if (sub_10053E4A8(v7, __dst))
    {
      xpc_dictionary_set_int64(v2, "kCBMsgArgAppleFeatureBitMask", __dst[0]);
    }

    v23 = 0;
    if (sub_10053E4E0(v7, &v23))
    {
      xpc_dictionary_set_int64(v2, "kCBMsgArgExtendedAppleFeatureBitMask", HIDWORD(v23) | (v23 << 32));
    }

    string = 0;
    v21 = 0;
    v22 = 0;
    sub_1000BE6F8((v7 + 128), &string);
    if (SHIBYTE(v22) < 0)
    {
      if (v21)
      {
        p_string = string;
        goto LABEL_39;
      }
    }

    else if (HIBYTE(v22))
    {
      p_string = &string;
LABEL_39:
      xpc_dictionary_set_string(v2, "kCBMsgArgAddressString", p_string);
    }

    bytes[0] = BYTE5(v5);
    bytes[1] = BYTE4(v5);
    bytes[2] = BYTE3(v5);
    bytes[3] = BYTE2(v5);
    bytes[4] = BYTE1(v5);
    bytes[5] = v5;
    xpc_dictionary_set_data(v2, "kCBAdvDataDeviceAddress", bytes, 6uLL);
    v15 = sub_10054D124(v7);
    if ([v15 count])
    {
      v16 = sub_1005B2B8C(v15);
      xpc_dictionary_set_value(v2, "kCBMsgArgServices", v16);
      xpc_release(v16);
    }

    xpc_dictionary_set_BOOL(v2, "kCBMsgArgIsConnectedOverUSB", *(v7 + 1360));
    if (sub_1000C2398(v7))
    {
      v17 = sub_1000C2398(v7);
      xpc_dictionary_set_int64(v2, "kCBMsgArgColorID", v17);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(string);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(*&__dst[1]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(*uuid);
    }
  }

  return v2;
}

void sub_100328DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 57) < 0)
  {
    operator delete(*(v24 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_100328E58(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1008193E8();
  }

  sub_1003B02AC(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 40));
  if (qword_100B512F8 != -1)
  {
    sub_1008193E8();
  }

  v3 = sub_10005D040(off_100B512F0, *(v2 + 128), 2u);
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v3 + 88);
    v6 = *(a1 + 56);
    v7 = 136315650;
    v8 = "handleConnectPeerMsg_block_invoke";
    v9 = 2114;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Setting didRequestPairing for Application %{public}@ to %d", &v7, 0x1Cu);
  }

  *(v3 + 188) = *(a1 + 56);
}

void sub_100328F8C(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1008193E8();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[6] != 0;

  sub_1003B217C(v3, v4, v5, v6, 1, 0);
}

void sub_100328FFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = qword_100BCE950;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *v10 = 0;
      v7 = "Bluetooth discoveryStatus: query started";
      v8 = v10;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_11;
      }

      if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v9 = 0;
      v7 = "Bluetooth discoveryStatus: query stopped";
      v8 = &v9;
    }

LABEL_17:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    return;
  }

  if (!a2)
  {
    if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = 0;
    v7 = "Bluetooth discoveryStatus: scan started";
    v8 = &v12;
    goto LABEL_17;
  }

  if (a2 == 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth discoveryStatus: scan stopped", buf, 2u);
    }

    sub_100329154(a5);
    return;
  }

LABEL_11:
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10081944C();
  }
}

void sub_100329154(uint64_t a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 192);
    v4 = *(a1 + 193);
    v5[0] = 67109376;
    v5[1] = v3;
    v6 = 1024;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "restartInquiry: continuous? %d, already scanning? %d", v5, 0xEu);
  }

  if (*(a1 + 193) == 1 && *(a1 + 192) == 1)
  {
    *(a1 + 193) = 0;
    sub_1003294CC(a1, 1);
  }
}

void sub_100329240(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819190();
  }

  v8 = sub_1000E41C0(off_100B508E8, a3);
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  sub_1000DEEA4(v8, __p);
  v19[0] = 0;
  v19[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100819030();
  }

  sub_1000498D4(off_100B508C8, (v8[128] << 40) | (v8[129] << 32) | (v8[130] << 24) | (v8[131] << 16) | (v8[132] << 8) | v8[133], 1u, 0, 0, 0, v19);
  v9 = sub_10004DF60(v19);
  v10 = sub_100328944(v9);

  if (!a2)
  {
    sub_10004DFB8(a5, 50, v10, 1);
    v11 = qword_100BCE950;
    if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v14 = __p;
    if (v16 < 0)
    {
      v14 = __p[0];
    }

    *buf = 136315138;
    v18 = v14;
    v13 = "Bluetooth discoveryEvent: device found: %s";
    goto LABEL_15;
  }

  if (a2 == 2)
  {
    sub_10004DFB8(a5, 51, v10, 1);
    v11 = qword_100BCE950;
    if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v12 = __p;
    if (v16 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315138;
    v18 = v12;
    v13 = "Bluetooth discoveryEvent: device changed: %s";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    goto LABEL_19;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008194BC();
  }

  xpc_release(v10);
LABEL_19:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100329498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003294CC(uint64_t a1, int a2, uint64_t a3, void *a4, int a5, int a6)
{
  v11 = a4;
  v12 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 193);
    *buf = 67109632;
    v28 = a2;
    v29 = 1024;
    v30 = v13;
    v31 = 1024;
    v32 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "startInquiry: continuous? %d, already scanning? %d, duplicates to be reported? %d", buf, 0x14u);
  }

  if ((*(a1 + 193) & 1) == 0)
  {
    objc_storeStrong((a1 + 200), a4);
    *(a1 + 208) = a5;
    sub_100329760(a1, v14);
    v15 = *(a1 + 176);
    if (v15)
    {
      if (a6)
      {
        v16 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "startInquiry: Enabling duplicate reporting.", buf, 2u);
          v15 = *(a1 + 176);
        }

        sub_1005C28DC(v15);
        *(a1 + 212) = 1;
      }

      if (a2)
      {
        if (qword_100B50DB8 != -1)
        {
          sub_1008193FC();
        }

        v17 = off_100B50DB0;
        v18 = *(a1 + 184);
        v25 = *(a1 + 176);
        v26 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = sub_1005C6EBC(v17, &v25, 1u, -1);
        if (v26)
        {
          sub_100117644(v26);
        }

        if (v19)
        {
          goto LABEL_4;
        }

        *(a1 + 192) = 1;
      }

      else
      {
        if (qword_100B50DB8 != -1)
        {
          sub_1008193FC();
        }

        v20 = off_100B50DB0;
        v21 = *(a1 + 184);
        v23 = *(a1 + 176);
        v24 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = sub_1005C6EBC(v20, &v23, 0, -1);
        if (v24)
        {
          sub_100117644(v24);
        }

        *(a1 + 192) = 0;
        if (v22)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 193) = 1;
      goto LABEL_4;
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10081952C();
    }
  }

LABEL_4:
}