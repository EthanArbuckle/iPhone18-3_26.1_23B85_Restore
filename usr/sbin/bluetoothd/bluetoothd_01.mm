void sub_100013AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, void *a49, void *a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, void *a63)
{
  sub_1003B8618(&STACK[0x240]);

  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose((v64 - 232), 8);
  _Unwind_Resume(a1);
}

id sub_100013C04(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v3 = value;
    if (xpc_get_type(value) == &_xpc_type_string)
    {
      value = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v3)];
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820BF0();
      }

      value = 0;
    }
  }

  return value;
}

uint64_t sub_100013CA4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1 || xpc_get_type(a1) != &_xpc_type_dictionary)
  {
    return 3;
  }

  v18 = &a9;
  while (1)
  {
    v12 = v18;
    v19 = (v18 + 1);
    v13 = *v12;
    if (!*v12)
    {
      return 0;
    }

    value = xpc_dictionary_get_value(a1, *v12);
    v15 = v19 + 1;
    v16 = *v19;
    v18 = (v19 + 2);
    if (!value)
    {
      break;
    }

    result = v16(value, *v15);
LABEL_10:
    if (result)
    {
      return result;
    }
  }

  if (!a2)
  {
    result = 0;
    goto LABEL_10;
  }

  v17 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v21 = v13;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No XPC object for key: %{public}s", buf, 0xCu);
  }

  return 3;
}

uint64_t sub_100013DE8(void *a1, int64_t *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(a1);
    result = 0;
    *a2 = value;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100820A10(a1);
    }

    return 3;
  }

  return result;
}

id sub_100013E74(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NSArray arrayWithObjects:@"com.apple.AppStore", @"com.apple.Preferences", @"com.apple.Bridge", 0];
  v4 = [v3 containsObject:v2];

  return v4;
}

id sub_100013F10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 296) containsObject:v3];
  if (v4)
  {
    v5 = qword_100BCE9E0;
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ restored by bluetooth", &v7, 0xCu);
    }
  }

  return v4;
}

void sub_100013FF8(uint64_t a1)
{
  v2 = *(a1 + 64);
  v22 = *(v2 + 186);
  v23 = *(a1 + 132);
  v21 = *(v2 + 187);
  v20 = *(v2 + 188);
  v18 = *(a1 + 72);
  v19 = *(v2 + 89);
  v3 = *(a1 + 88);
  v17 = *(a1 + 80);
  v4 = sub_100011EDC() | (*(v2 + 175) << 8) | (*(v2 + 87) << 16) | (*(v2 + 104) << 40);
  v5 = *(v2 + 177);
  v6 = *(v2 + 88);
  v7 = *(v2 + 181);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v8 = v6 << 32;
  v9 = v4 | (v5 << 24);
  v10 = v7 << 48;
  v11 = off_100B512F0;
  v12 = *(v2 + 48);
  v13 = *(a1 + 112);
  v26[0] = *(a1 + 96);
  v26[1] = v13;
  v14 = *(v2 + 40);
  v15 = *(a1 + 32);
  if (*(v2 + 79) < 0)
  {
    sub_100008904(__p, *(v2 + 56), *(v2 + 64));
  }

  else
  {
    *__p = *(v2 + 56);
    v25 = *(v2 + 72);
  }

  v16 = v9 | v8 | v10;
  *(v2 + 128) = sub_10004325C(v11, v12, v2 + 144, v26, v14, v15, __p, *(a1 + 128), *(a1 + 40), (*(*(a1 + 48) + 8) + 24), (*(*(a1 + 56) + 8) + 24), ((v3 != 0) << 56) | ((v17 != 0) << 48) | (v19 << 40) | (v20 << 32) | (v21 << 24) | (v22 << 16) | (v23 << 8) | (v18 != 0), v16, WORD2(v16), BYTE6(v16), 0);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000141C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000141E4(uint64_t a1, void *a2)
{
  v4 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UpdateWifiState WCMWiFiState %@", buf, 0xCu);
  }

  if (*(a1 + 296) == 1)
  {
    v5 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ignoring real wifi signals", buf, 2u);
    }

    return;
  }

  value = xpc_dictionary_get_value(a2, "kMessageArgs");
  v7 = value;
  if (!value)
  {
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087C240();
    }

    goto LABEL_22;
  }

  uint64 = xpc_dictionary_get_uint64(value, "kWCMBTWiFiState_Priority");
  v9 = xpc_dictionary_get_uint64(v7, "kWCMWiFiState_Bitmap");
  v10 = xpc_dictionary_get_uint64(v7, "kWCMWiFiState_Band");
  v11 = xpc_dictionary_get_uint64(v7, "kWCMWiFiState_DesiredBtDc");
  *(a1 + 178) = v10;
  *(a1 + 176) = uint64;
  *(a1 + 180) = v11;
  *(a1 + 182) = v9;
  if ((*(a1 + 170) & 1) == 0)
  {
    *(a1 + 172) = 0;
    if (uint64 == 2 && (v9 & 0x41) != 0 && *(a1 + 480) == 1 && *(a1 + 476) == 1)
    {
      v24 = os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEBUG);
      if (v11 <= 2u)
      {
        if (v11 == 1)
        {
          if (v24)
          {
            sub_10087C108();
          }

          v25 = 0;
          goto LABEL_53;
        }

        if (v11 == 2)
        {
          if (v24)
          {
            sub_10087C1D8();
          }

          v25 = 2;
          goto LABEL_53;
        }
      }

      else
      {
        switch(v11)
        {
          case 3u:
            if (v24)
            {
              sub_10087C1A4();
            }

            goto LABEL_52;
          case 4u:
            if (v24)
            {
              sub_10087C170();
            }

            v25 = 5;
            goto LABEL_53;
          case 5u:
            if (v24)
            {
              sub_10087C13C();
            }

            v25 = 6;
            goto LABEL_53;
        }
      }

      if (v24)
      {
        sub_10087C20C();
      }

LABEL_52:
      v25 = 3;
LABEL_53:
      *(a1 + 172) = v25;
    }
  }

  v12 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 180);
    v14 = sub_100014B94(*(a1 + 180));
    v15 = *(a1 + 176);
    v16 = "NA";
    if (v15 <= 2)
    {
      v16 = off_100B0F200[v15 & 3];
    }

    sub_100014BB8(*(a1 + 182));
    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v18 = *(a1 + 182);
    v19 = "kWCMWiFiStateBand5G";
    v20 = *(a1 + 178);
    if (v20 != 2)
    {
      v19 = "NA";
    }

    v21 = *(a1 + 172);
    if (v20 == 1)
    {
      v19 = "kWCMWiFiStateBand2_4G";
    }

    *buf = 136317186;
    *&buf[4] = v14;
    *&buf[12] = 1024;
    *&buf[14] = v13;
    v30 = 1024;
    v31 = v15;
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = p_p;
    v36 = 1024;
    v37 = v18;
    v38 = 2080;
    v39 = v19;
    v40 = 1024;
    v41 = v20;
    v42 = 1024;
    v43 = v21;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "UpdateWifiState UCMWifiCoexInterval:%s(%d) priority:%d(%s) bitmap:[%s](0x%x) band:%s(%d) UCMWifiCoexInterval:%d", buf, 0x48u);
    if (v28 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_22:
  v22 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 180);
    *buf = 67109120;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "UpdateWifiState done, UCMBTConnectionScanDutyCycle:%d", buf, 8u);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 96);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100014EF8;
  v26[3] = &unk_100B0EF70;
  v26[4] = a1;
  sub_100014E2C(a1 + 504, v26);
  sub_1000088CC(buf);
}

void sub_100014670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10001468C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {

    sub_1000147A4(a1, object);
  }

  else if (type == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_interrupted)
    {

      sub_1007F4E6C(a1);
    }

    else
    {
      v6 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
      {
        sub_10087BEC4(object, v6);
      }
    }
  }

  else
  {
    v5 = xpc_copy_description(object);
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087BE54();
    }

    free(v5);
  }
}

uint64_t sub_1000147A4(uint64_t a1, void *a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 96);
  uint64 = xpc_dictionary_get_uint64(a2, "kMessageId");
  v5 = uint64;
  switch(uint64)
  {
    case 0x578uLL:
    case 0x579uLL:
    case 0x57AuLL:
    case 0x581uLL:
      return sub_1000088CC(v10);
    case 0x57BuLL:
    case 0x57CuLL:
    case 0x57DuLL:
    case 0x588uLL:
    case 0x58BuLL:
    case 0x58CuLL:
    case 0x58FuLL:
    case 0x595uLL:
    case 0x596uLL:
    case 0x597uLL:
    case 0x59DuLL:
    case 0x59EuLL:
    case 0x5A4uLL:
    case 0x5A5uLL:
      goto LABEL_6;
    case 0x57EuLL:
      sub_1007F5420(uint64, a2);
      break;
    case 0x57FuLL:
      sub_1007F548C(uint64, a2);
      break;
    case 0x580uLL:
      sub_1007F5594(uint64, a2);
      break;
    case 0x582uLL:
      sub_1007F5920(uint64, a2);
      break;
    case 0x583uLL:
      sub_1007F5A98(uint64, a2);
      break;
    case 0x584uLL:
      sub_1007F5D30(uint64, a2);
      break;
    case 0x585uLL:
      sub_1007F5F0C(uint64, a2);
      break;
    case 0x586uLL:
      sub_1007F5FB4(uint64, a2);
      break;
    case 0x587uLL:
      xpc_dictionary_get_string(a2, "kMessageArgs");
      break;
    case 0x589uLL:
      sub_1007F6164(a1, a2);
      break;
    case 0x58AuLL:
      sub_1007F63DC(uint64, a2);
      break;
    case 0x58DuLL:
      sub_1007F64E0(a1, a2);
      break;
    case 0x58EuLL:
      sub_1007F67BC(uint64, a2);
      break;
    case 0x590uLL:
      sub_1007F6968(uint64, a2);
      break;
    case 0x591uLL:
      sub_1007F56E0(uint64, a2);
      break;
    case 0x592uLL:
      sub_1007F6FF0(a1, a2);
      break;
    case 0x593uLL:
      v8 = xpc_dictionary_get_uint64(a2, "kMessageArgs");
      v9 = sub_10000C7D0();
      (*(*v9 + 2136))(v9, v8);
      break;
    case 0x594uLL:
      sub_1007F712C(a1, a2);
      break;
    case 0x598uLL:
      sub_1007F74E0(a1, a2);
      break;
    case 0x599uLL:
      sub_1007F7AA0(a1, a2);
      break;
    case 0x59AuLL:
      sub_10005B19C(a1, a2);
      break;
    case 0x59BuLL:
      sub_10001861C(a1, a2);
      break;
    case 0x59CuLL:
      sub_1007F6E98(a1, a2);
      break;
    case 0x59FuLL:
      sub_1007F6BE8(a1, a2);
      break;
    case 0x5A0uLL:
      sub_1007F6D40(a1, a2);
      break;
    case 0x5A1uLL:
      sub_1007F7BDC(a1, a2);
      break;
    case 0x5A2uLL:
      sub_1007F6A90(a1, a2);
      break;
    case 0x5A3uLL:
      sub_1007F7CB0(a1, a2);
      break;
    case 0x5A6uLL:
      sub_1007F6064(uint64, a2);
      break;
    default:
      if (uint64 == 106)
      {
        sub_1007F7338(a1, a2);
      }

      else if (uint64 == 107)
      {
        sub_1000141E4(a1, a2);
      }

      else
      {
LABEL_6:
        v7 = qword_100BCE8E0;
        if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v12 = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received unknown event %llu from WCM/UCM", buf, 0xCu);
        }
      }

      break;
  }

  return sub_1000088CC(v10);
}

const char *sub_100014B94(unsigned int a1)
{
  if (a1 > 5)
  {
    return "NA";
  }

  else
  {
    return off_100B0F180[a1];
  }
}

uint64_t sub_100014BB8(uint64_t a1)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  v4 = 0u;
  sub_100007AD0(&v4);
  if (!a1)
  {
    goto LABEL_13;
  }

  if (a1)
  {
    sub_100007774(&v5);
  }

  if ((a1 & 2) != 0)
  {
    sub_100007774(&v5);
  }

  if ((a1 & 4) != 0)
  {
    sub_100007774(&v5);
  }

  if ((a1 & 8) != 0)
  {
    sub_100007774(&v5);
  }

  if ((a1 & 0x10) != 0)
  {
    sub_100007774(&v5);
  }

  if ((a1 & 0x40) != 0)
  {
LABEL_13:
    sub_100007774(&v5);
  }

  std::stringbuf::str();
  *&v5 = v2;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v6);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100014E2C(uint64_t a1, void *a2)
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

uint64_t sub_100014F2C(uint64_t a1, int a2)
{
  *(a1 + 386) = a2;
  v4 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updated ucmWiFiBitmap 0x%x", v6, 8u);
  }

  return sub_100014FF0(a1);
}

uint64_t sub_100014FF0(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 48);
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 205);
    v4 = *(a1 + 206);
    v5 = *(a1 + 212);
    v6 = *(a1 + 208);
    p_p = &__p;
    sub_1000151C0(a1 + 280);
    if (v12 < 0)
    {
      p_p = __p;
    }

    v8 = sub_1000154A8();
    v9 = (*(*v8 + 96))(v8);
    *buf = 67110402;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v6;
    v22 = 2080;
    v23 = p_p;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "coexChanged a2dp:%d hfp:%d isoPipe:%d BTStreaming:%d wifi:%s critical(UCM):%d", buf, 0x2Au);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a1 + 248) || *(a1 + 272))
  {
    sub_100025308(a1, 1);
  }

  sub_100015514(a1 + 128, &stru_100AFFA30);
  return sub_1000088CC(v13);
}

uint64_t sub_1000151C0(uint64_t a1)
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
  *v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  sub_100007AD0(&v11);
  v2 = sub_100007774(&v12);
  v3 = sub_100007774(v2);
  v4 = sub_100007774(v3);
  sub_100015480(*(a1 + 4), &__p);
  v5 = sub_100007774(v4);
  v6 = sub_100007774(v5);
  sub_100007774(v6);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  *&v12 = v7;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[1]);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10001543C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

_BYTE *sub_100015480@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 3)
  {
    v2 = "";
  }

  else
  {
    v2 = off_100AEAD78[a1];
  }

  return sub_100007E30(a2, v2);
}

uint64_t sub_1000154A8()
{
  if (qword_100B6D870 != -1)
  {
    sub_10082C288();
  }

  return qword_100B6D868;
}

uint64_t sub_1000154E0(uint64_t a1)
{
  if (*(a1 + 176) == 2 && (*(a1 + 182) & 1) != 0 && *(a1 + 480) == 1)
  {
    v1 = *(a1 + 476);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_100015514(uint64_t a1, void *a2)
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

void sub_10001560C(uint64_t a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "systemCoexStateCahnged", buf, 2u);
  }

  v3 = sub_100007EE8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000156DC;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

uint64_t sub_1000156EC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100BC7CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100BC7CD0))
  {
    v66 = sub_10000C798();
    byte_100BC7CC8 = (*(*v66 + 888))(v66);
    __cxa_guard_release(&qword_100BC7CD0);
  }

  v4 = *(a1 + 2064);
  if (v4 == (a1 + 2072))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (v4[5] != a2)
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
      if (v7 == (a1 + 2072))
      {
        goto LABEL_14;
      }
    }

    v5 = v4[4];
  }

LABEL_14:
  v9 = *(a2 + 8);
  v10 = *(v9 + 192);
  v11 = *(v9 + 200);
  v99 = 0;
  v98 = 0u;
  v96 = 0u;
  memset(v97, 0, sizeof(v97));
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v67 = v10;
  v68 = v11;
  sub_1000368D8(a1, v10, v11, &v90);
  if (BYTE8(v90) != 1)
  {
    v15 = *(a2 + 8);
    goto LABEL_80;
  }

  v89 = 0;
  v88 = 0u;
  v86 = 0u;
  memset(v87, 0, sizeof(v87));
  v84 = 0u;
  v85 = 0u;
  v83 = 0u;
  memset(v82, 0, sizeof(v82));
  sub_10000CBF0(v82, (*(a2 + 8) + 320));
  v12 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    v61 = byte_100BC7CC8;
    if (v5)
    {
      v62 = v80;
      sub_100018384(v5, v80);
      if (v81 < 0)
      {
        v62 = v80[0];
      }
    }

    else
    {
      v62 = "NA";
    }

    v63 = sub_10002F16C(v67);
    sub_10003BC90(v82);
    sub_10003BC90(&v90);
    v64 = &v77;
    if (v79 < 0)
    {
      v64 = v77;
    }

    if (v76 >= 0)
    {
      v65 = &v74;
    }

    else
    {
      v65 = v74;
    }

    *buf = 67110146;
    *&buf[4] = v61;
    *&buf[8] = 2080;
    *&buf[10] = v62;
    *&buf[18] = 2080;
    *&buf[20] = v63;
    v101 = 2080;
    v102 = v64;
    v103 = 2080;
    v104 = v65;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "updateAgentScanUseCaseEntry controllerSupportsScanRx:%d session:%s usecase:%s previous:%s entry:%s", buf, 0x30u);
    if (v76 < 0)
    {
      operator delete(v74);
    }

    if (v79 < 0)
    {
      operator delete(v77);
    }

    if (v5 && v81 < 0)
    {
      operator delete(v80[0]);
    }
  }

  if (BYTE8(v82[0]) == 1)
  {
    v13 = 0;
    if (BYTE7(v82[0]) == 1)
    {
      v14 = 0;
      if ((BYTE5(v82[0]) & 1) == 0)
      {
        v13 = *(&v82[1] + 8) != 0;
        v14 = 1;
        if ((byte_100BC7CC8 & 1) == 0)
        {
          if (BYTE7(v90) & 1 | (*(&v82[1] + 8) != 0))
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  sub_10003A36C(*(a2 + 8) + 320, &v90);
LABEL_25:
  v16 = *(a2 + 8);
  v17 = *(v16 + 360);
  v18 = *(v16 + 364);
  v19 = *(v16 + 323);
  *(v16 + 144) = 1;
  *(v16 + 152) = v18;
  *(v16 + 156) = v17;
  *(v16 + 160) = v19;
  *v16 = *(v16 + 320);
  *(v16 + 1) = *(v16 + 326);
  sub_10000CB74(&__p, (v16 + 408));
  v69 = v16;
  if ((v16 + 8) != &__p)
  {
    sub_10003A598((v16 + 8), __p, v73, 0xCCCCCCCCCCCCCCCDLL * ((v73 - __p) >> 2));
  }

  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  v20 = *(a2 + 8);
  sub_10000CA3C(&v70, v16 + 432);
  if ((v20 + 32) != &v70)
  {
    sub_10003B0E0((v20 + 32), v70, &v71);
  }

  sub_10000CEDC(&v70, v71);
  v21 = *(a2 + 8);
  *(a2 + 224) = *(v69 + 456);
  *(v21 + 313) = *(v69 + 366);
  *(v21 + 488) = *(v69 + 368);
  v22 = objc_retainBlock(*(v69 + 376));
  v23 = *(v21 + 208);
  *(v21 + 208) = v22;

  v24 = *(a2 + 8);
  *(v24 + 166) = *(v69 + 333);
  v25 = *(v69 + 362);
  *(v24 + 170) = *(v69 + 334);
  *(v24 + 168) = v25;
  *(v24 + 163) = *(v69 + 367);
  if (((v14 | v13) & 1) == 0)
  {
    v26 = *(v69 + 352);
    *(v24 + 228) = *(v69 + 344);
    *(v24 + 232) = v26;
  }

  sub_10003A720(v24);
  v27 = *(v69 + 384);
  v28 = *(v69 + 392);
  if (v27 != v28)
  {
    v29 = v27 + 46;
    do
    {
      *buf = 0;
      *&buf[8] = 0;
      sub_10000C704(buf, v29 - 26, *(v29 - 1));
      v77 = 0;
      v78 = 0;
      sub_10000C704(&v77, v29 - 27, *v29);
      v30 = sub_10000C798();
      v31 = (*(*v30 + 656))(v30);
      v32 = *(a2 + 8);
      v33 = *(v32 + 176);
      v34 = [v33 anyObject];
      if (v31)
      {
        v35 = 3;
      }

      else
      {
        v35 = 1;
      }

      sub_100032784(v32, v34, *(v29 - 70), *(v29 - 66), buf, &v77, *(v29 - 71), *(v29 - 69), *(v29 - 69) != 0, v35, *(v29 - 67), *(v29 - 46), *(v29 - 19), BYTE1(*(v29 - 19)), BYTE2(*(v29 - 19)), HIBYTE(*(v29 - 19)), *(v29 - 72), 0, 0xFFFF, 0xFFFF, 0xFFFF);

      v77 = &off_100AE0A78;
      if (v78)
      {
        sub_10000C808(v78);
      }

      *buf = &off_100AE0A78;
      if (*&buf[8])
      {
        sub_10000C808(*&buf[8]);
      }

      v36 = v29 + 2;
      v29 += 48;
    }

    while (v36 != v28);
  }

  v37 = *(a2 + 8);
  v38 = *(v37 + 120);
  for (i = *(v37 + 128); i != v38; sub_1000181EC(v37 + 120, i))
  {
    i -= 112;
  }

  *(v37 + 128) = v38;
  if (*(a2 + 255) < 0)
  {
    sub_100008904(buf, *(a2 + 232), *(a2 + 240));
  }

  else
  {
    *buf = *(a2 + 232);
    *&buf[16] = *(a2 + 248);
  }

  if (buf[23] >= 0)
  {
    v40 = buf;
  }

  else
  {
    v40 = *buf;
  }

  v41 = [NSString stringWithUTF8String:v40];
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v42 = *(v69 + 464);
  v43 = *(v69 + 472);
  if (v42 != v43)
  {
    v44 = v42 + 45;
    do
    {
      v77 = 0;
      v78 = 0;
      sub_10000C704(&v77, v44 - 57, *(v44 - 1));
      v74 = 0;
      v75 = 0;
      sub_10000C704(&v74, v44 - 15, *v44);
      v45 = sub_10000C798();
      v46 = (*(*v45 + 656))(v45);
      if (*(v44 - 82))
      {
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 1;
        }

        v48 = *(a2 + 8);
        v49 = *(v44 - 45);
        v50 = *(v44 - 41);
        *&buf[16] = *(v44 - 33);
        *buf = v50;
        sub_10003B48C(v48, v49, v41, buf, &v77, &v74, *(v44 - 62), *(v44 - 61), v47, *(v44 - 59), 0, 0, *(v44 - 58));
      }

      v74 = &off_100AE0A78;
      if (v75)
      {
        sub_10000C808(v75);
      }

      v77 = &off_100AE0A78;
      if (v78)
      {
        sub_10000C808(v78);
      }

      v51 = v44 + 3;
      v44 += 48;
    }

    while (v51 != v43);
  }

  if ((v67 & 0xFFFF0000) == 0x10000)
  {
    v52 = _os_feature_enabled_impl();
    v53 = v91 ? v52 : 0;
    if (v53 == 1 && *(*(a2 + 8) + 241) == 1)
    {
      v54 = sub_10000C798();
      v55 = (*(*v54 + 744))(v54);
      v56 = *(v69 + 336);
      v57 = (v55 != 0) & (v56 >> 1);
      v58 = (v56 & (v55 != v57)) != 0 ? v57 | 2 : (v55 != 0) & (v56 >> 1);
      if (v58)
      {
        *(*(a2 + 8) + 146) = v58;
      }
    }
  }

  *buf = &v88;
  sub_10000CF30(buf);
  sub_10000CEDC(v87, v87[1]);
  if (*(&v85 + 1))
  {
    *&v86 = *(&v85 + 1);
    operator delete(*(&v85 + 1));
  }

  *buf = &v84;
  sub_10000CFB0(buf);

  v15 = v69;
LABEL_80:
  v59 = v15 + 320;
  *&v82[0] = &v98;
  sub_10000CF30(v82);
  sub_10000CEDC(v97, v97[1]);
  if (*(&v95 + 1))
  {
    *&v96 = *(&v95 + 1);
    operator delete(*(&v95 + 1));
  }

  *&v82[0] = &v94;
  sub_10000CFB0(v82);

  return v59;
}

void sub_1000161FC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000E3B80(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100016250(uint64_t a1)
{
  if (!dword_100B5B42C)
  {
    mach_timebase_info(&dword_100B5B428);
    v2 = dword_100B5B42C;
    v3 = dword_100B5B42C;
    v4 = dword_100B5B428;
    while (v4)
    {
      if (v4 > v3)
      {
        v5 = v4 % v3;
        v4 = v3;
        v3 = v5;
      }

      v6 = v3;
      v3 = v4;
      v7 = v6 == v4;
      v4 = v6;
      if (v7)
      {
        LODWORD(v3) = 1;
        break;
      }
    }

    v8 = dword_100B5B42C / v3;
    dword_100B5B428 /= v3;
    dword_100B5B42C /= v3;
    if ((v2 / v3) >> 1 >= 0x863)
    {
      sub_1000D660C();
      v8 = dword_100B5B42C;
    }

    dword_100B5B42C = 1000000 * v8;
  }

  result = mach_absolute_time();
  v10 = result * dword_100B5B428 / dword_100B5B42C;
  *(a1 + 4) = v10 % 0x3E8;
  *a1 = v10 / 0x3E8;
  return result;
}

uint64_t sub_100016340(uint64_t a1, char a2)
{
  v133 = *&off_100B0D290;
  v134 = sub_10007BD70;
  memset(v132, 0, 26);
  v4 = *(a1 + 1984);
  if ((v4 & 0xFFFFFFFD) != 1)
  {
    v5 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
    {
      *v137 = 136446210;
      *&v137[4] = "isInSettledState()";
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", v137, 0xCu);
      if (*(a1 + 1984))
      {
        goto LABEL_4;
      }
    }

    else if (v4)
    {
      goto LABEL_4;
    }

    return 105;
  }

LABEL_4:
  if (*(a1 + 4426) != 1)
  {
    goto LABEL_14;
  }

  v6 = sub_10000C798();
  if (!(*(*v6 + 1048))(v6))
  {
    goto LABEL_14;
  }

  *&v137[8] = 0;
  *&v137[16] = 0;
  *v137 = &v137[8];
  buf[0] = 16;
  sub_100062500(v137, buf);
  buf[0] = 7;
  sub_100062500(v137, buf);
  if (!*(a1 + 2232))
  {
    sub_1007B3444(v131, v137);
    v9 = sub_10079D668(a1, v131);
    sub_10000CEDC(v131, v131[1]);
    if (!v9)
    {
      v53 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "LeObserver::updateScanState System about to go to sleep, will try again later", buf, 2u);
      }

      sub_10000CEDC(v137, *&v137[8]);
      return 0;
    }

    *(a1 + 1856) = 1;
    v7 = qword_100BCE918;
    if (!os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v8 = "LeObserver::updateScanState System about to go to sleep, but we have rules that need to be removed";
    goto LABEL_12;
  }

  v7 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = "LeObserver::updateScanState System about to go to sleep, but in the middle of reconfig";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
  }

LABEL_13:
  sub_10000CEDC(v137, *&v137[8]);
LABEL_14:
  if (*(a1 + 4328) == 1)
  {
    v10 = qword_100BCE918;
    result = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *v137 = 0;
    v12 = "Configuring controller, will try again later";
    goto LABEL_20;
  }

  if (*(a1 + 4423) == 1)
  {
    v10 = qword_100BCE918;
    result = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *v137 = 0;
    v12 = "Configuring controller scan RX Thresholds, will try again later";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, v137, 2u);
    return 0;
  }

  v13 = sub_100017CD0(a1);
  v14 = v13;
  v15 = *(a1 + 1988);
  if (*(a1 + 1988))
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v17 = sub_100018014(a1);
  if (v15)
  {
    v18 = sub_1007A9290(a1);
    v16 = v18;
  }

  else
  {
    v18 = 0;
  }

  v19 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    if (v15 > 3)
    {
      v20 = "UNKNOWN";
    }

    else
    {
      v20 = off_100B0D728[v15];
    }

    v21 = *(a1 + 1856);
    *v137 = 67110402;
    *&v137[4] = v16;
    *&v137[8] = 1024;
    *&v137[10] = v14;
    *&v137[14] = 1024;
    *&v137[16] = v18;
    *&v137[20] = 2082;
    *&v137[22] = v20;
    *&v137[30] = 1024;
    *&v137[32] = v17;
    *&v137[36] = 1024;
    *&v137[38] = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ShouldScan=%d AnyValidScanRequests=%d anyValidScanRequestInPaused=%d fObserverState=%{public}s ClientScanPowerAssertRequired=%d fScanFiltersNeedUpdagint=%d", v137, 0x2Au);
  }

  if ((v17 & v16) == 1)
  {
    sub_1000C3018(a1);
  }

  else
  {
    sub_1000367C8(a1);
  }

  if (!v16)
  {
    if (*(a1 + 1984) == 3)
    {
      v30 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *v137 = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Stopping scan as there are no remaining scan agents permitted to scan", v137, 2u);
      }

      buf[0] = 0;
      v31 = sub_1000216B4(buf);
      if (sub_10007B764(v31))
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100875FD8();
        }
      }

      else
      {
        *(a1 + 1984) = 4;
        v56 = dispatch_time(0x8000000000000000, 3000000000);
        *(a1 + 2048) = v56;
        v57 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          *v137 = 134217984;
          *&v137[4] = v56;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Setting the zone lost timeout to %lld", v137, 0xCu);
        }

        Current = CFAbsoluteTimeGetCurrent();
        v59 = 0.0;
        if (Current > 0.0)
        {
          v60 = *(a1 + 3240);
          v61 = Current <= v60 || v60 <= 0.0;
          v62 = Current - v60;
          if (v61)
          {
            v59 = 0.0;
          }

          else
          {
            v59 = v62;
          }
        }

        v63 = *(a1 + 3252);
        v64 = a1 + 2832 + 48 * v63 + 24 * *(a1 + 3256);
        *(v64 + 8 * *(a1 + 3248)) = v59 + *(v64 + 8 * *(a1 + 3248));
        v65 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
        {
          v105 = sub_1007AD6BC(a1, v63);
          v106 = "active";
          if (!*(a1 + 3256))
          {
            v106 = "passive";
          }

          v107 = *(a1 + 3248);
          if (v107 > 2)
          {
            v108 = "Unknown Scan Agent Type";
          }

          else
          {
            v108 = off_100B0D6B0[v107];
          }

          v109 = *(a1 + 2832 + 48 * *(a1 + 3252) + 24 * *(a1 + 3256) + 8 * v107);
          v110 = *(a1 + 3240);
          *v137 = 136447490;
          *&v137[4] = v105;
          *&v137[12] = 2082;
          *&v137[14] = v106;
          *&v137[22] = 2082;
          *&v137[24] = v108;
          *&v137[32] = 2048;
          *&v137[34] = v59;
          *&v137[42] = 2048;
          *&v137[44] = v109;
          *&v137[52] = 2048;
          *&v137[54] = v110;
          _os_log_debug_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "BLEScanStat: Scan stops with duty cycle %{public}s scan type %{public}s agent %{public}s duration %f sec totalScanTime %f sec prev start at %f sec", v137, 0x3Eu);
          v63 = *(a1 + 3252);
        }

        sub_10007B768(a1, v63, 0, v59);
      }

      sub_10002249C(buf);
    }

    else
    {
      sub_10003C478(a1);
    }

    return 0;
  }

  v130[0] = 0;
  v130[1] = 0;
  v129 = v130;
  v22 = *(a1 + 2064);
  v23 = (a1 + 2072);
  if (v22 != (a1 + 2072))
  {
    do
    {
      LODWORD(v126) = *(*(v22[5] + 8) + 192);
      v142 = 0;
      v141 = 0u;
      v139 = 0u;
      memset(v140, 0, sizeof(v140));
      *__p = 0u;
      memset(v137, 0, sizeof(v137));
      v24 = sub_1000156EC(a1, v22[5]);
      sub_10000CBF0(v137, v24);
      if (v137[8] == 1 && (v137[5] & 1) == 0 && (v137[4] & 1) == 0)
      {
        sub_10003650C(&v129, &v126);
      }

      if (sub_10003A100(*(v22[5] + 8), 0x16u))
      {
        v25 = 1;
      }

      else
      {
        v25 = *(a1 + 2753);
      }

      *(a1 + 2753) = v25 & 1;
      if (sub_100039F90(*(v22[5] + 8), 2u))
      {
        v26 = 1;
      }

      else
      {
        v26 = *(a1 + 2754);
      }

      *(a1 + 2754) = v26 & 1;
      *buf = &v141;
      sub_10000CF30(buf);
      sub_10000CEDC(v140, *(&v140[0] + 1));
      if (__p[1])
      {
        *&v139 = __p[1];
        operator delete(__p[1]);
      }

      *buf = &v137[64];
      sub_10000CFB0(buf);

      v27 = v22[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v22[2];
          v43 = *v28 == v22;
          v22 = v28;
        }

        while (!v43);
      }

      v22 = v28;
    }

    while (v28 != v23);
  }

  v29 = sub_10000C798();
  if ((*(*v29 + 416))(v29))
  {
    sub_1007AA468(a1, v132);
  }

  else
  {
    sub_100032C48(a1, v132);
  }

  v32 = *(a1 + 1992) ^ *&v132[0] | *(a1 + 2000) ^ *(&v132[0] + 1) | *(a1 + 2008) ^ *&v132[1] | (*(a1 + 2016) ^ WORD4(v132[1]));
  *(a1 + 1857) = v32 != 0;
  if (a2)
  {
    v33 = 1;
  }

  else
  {
    v33 = *(a1 + 1856) | (v32 != 0);
  }

  v34 = v32 != 0;
  if (*(a1 + 1988) == 2)
  {
    v35 = v34;
  }

  else
  {
    v35 = v33;
  }

  v36 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    *v137 = 67109120;
    *&v137[4] = v35 & 1;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "needToRestart=%d", v137, 8u);
  }

  if (*(a1 + 1984) == 3)
  {
    if (v35)
    {
      *buf = 0u;
      v136 = 0u;
      LOWORD(v37) = *(a1 + 1998);
      snprintf(buf, 0x20uLL, "%.2fms/%.2fms", *(a1 + 1996) * 0.625, v37 * 0.625);
      sub_10003BAFC(a1);
      v38 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        if (*(a1 + 1992))
        {
          v39 = "passive";
        }

        else
        {
          v39 = "active";
        }

        v40 = *(a1 + 1995);
        *v137 = 136446722;
        *&v137[4] = v39;
        *&v137[12] = 2082;
        *&v137[14] = buf;
        if (v40)
        {
          v41 = "no ";
        }

        else
        {
          v41 = "";
        }

        *&v137[22] = 2082;
        *&v137[24] = v41;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Currently in %{public}s scan (%{public}s) with %{public}sduplicates - stopping scan...", v137, 0x20u);
      }

      LOBYTE(v126) = 0;
      v42 = sub_1000216B4(&v126);
      if (sub_10007B764(v42))
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100875FD8();
        }
      }

      else
      {
        *(a1 + 1984) = 4;
        v92 = dispatch_time(0x8000000000000000, 3000000000);
        *(a1 + 2048) = v92;
        v93 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          *v137 = 134217984;
          *&v137[4] = v92;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "Setting the zone lost timeout to %lld", v137, 0xCu);
        }

        v94 = CFAbsoluteTimeGetCurrent();
        v95 = 0.0;
        if (v94 > 0.0)
        {
          v96 = *(a1 + 3240);
          v97 = v94 <= v96 || v96 <= 0.0;
          v98 = v94 - v96;
          if (v97)
          {
            v95 = 0.0;
          }

          else
          {
            v95 = v98;
          }
        }

        v99 = *(a1 + 3252);
        v100 = a1 + 2832 + 48 * v99 + 24 * *(a1 + 3256);
        *(v100 + 8 * *(a1 + 3248)) = v95 + *(v100 + 8 * *(a1 + 3248));
        v101 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
        {
          v111 = sub_1007AD6BC(a1, v99);
          v112 = "active";
          if (!*(a1 + 3256))
          {
            v112 = "passive";
          }

          v113 = *(a1 + 3248);
          if (v113 > 2)
          {
            v114 = "Unknown Scan Agent Type";
          }

          else
          {
            v114 = off_100B0D6B0[v113];
          }

          v119 = *(a1 + 2832 + 48 * *(a1 + 3252) + 24 * *(a1 + 3256) + 8 * v113);
          v120 = *(a1 + 3240);
          *v137 = 136447490;
          *&v137[4] = v111;
          *&v137[12] = 2082;
          *&v137[14] = v112;
          *&v137[22] = 2082;
          *&v137[24] = v114;
          *&v137[32] = 2048;
          *&v137[34] = v95;
          *&v137[42] = 2048;
          *&v137[44] = v119;
          *&v137[52] = 2048;
          *&v137[54] = v120;
          _os_log_debug_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEBUG, "BLEScanStat: Scan stops with duty cycle %{public}s scan type %{public}s agent %{public}s duration %f sec totalScanTime %f sec prev start at %f sec", v137, 0x3Eu);
          v99 = *(a1 + 3252);
        }

        sub_10007B768(a1, v99, 1, v95);
      }

      sub_10002249C(&v126);
    }

    else
    {
      sub_10003C478(a1);
    }

    goto LABEL_204;
  }

  *buf = 0u;
  v136 = 0u;
  LOWORD(v37) = WORD3(v132[0]);
  snprintf(buf, 0x20uLL, "%.2fms/%.2fms", WORD2(v132[0]) * 0.625, v37 * 0.625);
  if (WORD2(v132[0]))
  {
    v43 = *(v132 + 6) == 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = !v43;
  v45 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v46 = "Not ";
    v47 = *(a1 + 1856);
    if (v44)
    {
      v46 = "";
    }

    v48 = *(a1 + 1988);
    v49 = *(a1 + 2384);
    if (LOBYTE(v132[0]))
    {
      v50 = "passive";
    }

    else
    {
      v50 = "active";
    }

    *v137 = 136448002;
    *&v137[4] = v46;
    *&v137[12] = 2082;
    *&v137[14] = v50;
    if (BYTE3(v132[0]))
    {
      v51 = "enabled";
    }

    else
    {
      v51 = "disabled";
    }

    *&v137[22] = 2082;
    v52 = "NO";
    *&v137[24] = buf;
    *&v137[32] = 2082;
    if (v47)
    {
      v52 = "YES";
    }

    *&v137[34] = v51;
    *&v137[42] = 1024;
    *&v137[44] = v47;
    *&v137[48] = 1024;
    *&v137[50] = v48;
    *&v137[54] = 1024;
    *&v137[56] = v49;
    *&v137[60] = 2082;
    *&v137[62] = v52;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}sStarting %{public}s scan (%{public}s) with duplicate filter %{public}s scNeed=%d stateO=%d, retainDups=%d fScanFiltersNeedUpdating=%{public}s", v137, 0x46u);
  }

  *(a1 + 1992) = v132[0];
  *(a1 + 2002) = *(v132 + 10);
  if (v44)
  {
    sub_10003BAFC(a1);
  }

  if (*(a1 + 1988) == 2)
  {
    sub_100076D38(a1, 1);
  }

  else
  {
    if ((*(a1 + 1856) & 1) != 0 || *(a1 + 1859) == 1)
    {
      *(a1 + 1856) = 0;
      if (((*(a1 + 4422) & 1) != 0 || *(a1 + 4421) == 1) && *(a1 + 1858) == 1)
      {
        sub_100076D38(a1, 0);
      }

      sub_10007C548(a1);
      sub_10007AB18(a1);
      sub_10007C858(a1);
      sub_10007CD50(a1);
      if (LOBYTE(v132[0]) != 1 || (sub_10007D144(a1) & 1) != 0 || (sub_10007D1C4(a1) & 1) != 0)
      {
        v54 = qword_100BCE918;
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
        {
          *v137 = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Skip addFilters", v137, 2u);
        }
      }

      else
      {
        sub_10007D244(a1);
        if (*(a1 + 4422) & 1) != 0 || (*(a1 + 4421))
        {
          goto LABEL_204;
        }
      }
    }

    if (LOBYTE(v132[0]) == 1)
    {
      v55 = sub_100082750(a1);
    }

    else
    {
      v55 = 0;
    }

    BYTE3(v132[0]) |= v55;
  }

  v126 = 0;
  v127 = 0;
  v128 = 0;
  v66 = *(a1 + 2064);
  if (v66 == v23)
  {
    *(a1 + 4423) = 0;
    goto LABEL_175;
  }

  do
  {
    v68 = v66[4];
    v67 = v66[5];
    v69 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_100018384(v68, v124);
      v76 = v124;
      if (v125 < 0)
      {
        v76 = v124[0];
      }

      v77 = *(v67 + 8);
      v78 = *(v77 + 236);
      v80 = *(v77 + 228);
      v79 = *(v77 + 232);
      if (v80)
      {
        v81 = 120000;
      }

      else
      {
        v81 = 0;
      }

      if (!v79)
      {
        v79 = v81;
      }

      *v137 = 136315906;
      *&v137[4] = v76;
      *&v137[12] = 1024;
      *&v137[14] = v78;
      *&v137[18] = 1024;
      *&v137[20] = v80;
      *&v137[24] = 1024;
      *&v137[26] = v79;
      _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "session %s scanRxThresholdConfigured:%d getScanRxThresholdRequirement:%d getScanTimeoutRequirement:%d", v137, 0x1Eu);
      if (v125 < 0)
      {
        operator delete(v124[0]);
      }
    }

    v70 = *(v67 + 8);
    if ((*(v70 + 236) & 1) == 0)
    {
      v72 = *(v70 + 228);
      v71 = *(v70 + 232);
      v73 = 120000;
      if (!v72)
      {
        if (!v71)
        {
          goto LABEL_150;
        }

        v73 = 0;
      }

      *v137 = v68;
      *&v137[8] = v72;
      *&v137[12] = v72;
      if (!v71)
      {
        v71 = v73;
      }

      *&v137[16] = v71;
      *&v137[20] = 7;
      *&v137[24] = *(v70 + 192);
      v123[0] = _NSConcreteStackBlock;
      v123[1] = 3221225472;
      v123[2] = sub_1007AD6E0;
      v123[3] = &unk_100B0CFB0;
      v123[4] = a1;
      *&v137[32] = objc_retainBlock(v123);
      sub_1007A658C(&v126, v137);

      *(*(v67 + 8) + 236) = 1;
    }

LABEL_150:
    v74 = v66[1];
    if (v74)
    {
      do
      {
        v75 = v74;
        v74 = *v74;
      }

      while (v74);
    }

    else
    {
      do
      {
        v75 = v66[2];
        v43 = *v75 == v66;
        v66 = v75;
      }

      while (!v43);
    }

    v66 = v75;
  }

  while (v75 != v23);
  v82 = v126;
  v83 = v127;
  *(a1 + 4423) = 0;
  if (v82 != v83)
  {
    if (qword_100B50910 != -1)
    {
      sub_100874420();
    }

    v84 = off_100B50908;
    memset(v122, 0, sizeof(v122));
    sub_1007B28B4(v122, v126, v127, 0xCCCCCCCCCCCCCCCDLL * ((v127 - v126) >> 3));
    sub_1005BEE4C(v84, v122);
    *v137 = v122;
    sub_100084EB8(v137);
    v85 = v126;
    for (i = v127; i != v85; i -= 40)
    {
    }

    v127 = v85;
    v87 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "Configuring RX Threshold, waiting for completion", v137, 2u);
    }

    goto LABEL_203;
  }

LABEL_175:
  if (v44)
  {
    v88 = sub_10000C7D0();
    (*(*v88 + 1080))(v88, *(a1 + 2384));
    *(a1 + 2384) = 0;
    LOBYTE(v124[0]) = 0;
    sub_1000216B4(v124);
    v89 = sub_100082ED0(v132, &v133, a1);
    sub_100022214(v124);
    if (sub_100083A20(0))
    {
      v90 = sub_1000D6418();
      v91 = sub_1000D6450(0);
      if (v91 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
      {
        *v137 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v90, OS_SIGNPOST_INTERVAL_END, v91, "HandoffScanStart", "ProxControlDeviceClose Scan Start", v137, 2u);
      }
    }

    if (v89)
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100876040();
      }
    }

    else
    {
      sub_10003C5EC(a1);
      sub_10007C438(a1, 2u);
      *(a1 + 3240) = CFAbsoluteTimeGetCurrent();
      *(a1 + 3256) = LOBYTE(v132[0]) ^ 1;
      v103 = sub_100083A98(v102, WORD2(v132[0]), WORD3(v132[0]));
      *(a1 + 3252) = v103;
      v104 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        v115 = sub_1007AD6BC(a1, v103);
        if (*(a1 + 3256))
        {
          v116 = "active";
        }

        else
        {
          v116 = "passive";
        }

        v117 = *(a1 + 3248);
        if (v117 > 2)
        {
          v118 = "Unknown Scan Agent Type";
        }

        else
        {
          v118 = off_100B0D6B0[v117];
        }

        v121 = *(a1 + 3240);
        *v137 = 136446978;
        *&v137[4] = v115;
        *&v137[12] = 2082;
        *&v137[14] = v116;
        *&v137[22] = 2082;
        *&v137[24] = v118;
        *&v137[32] = 2048;
        *&v137[34] = v121;
        _os_log_debug_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEBUG, "BLEScanStat: Scan started with duty cycle %{public}s scan type %{public}s agent %{public}s start at %f sec", v137, 0x2Au);
      }

      if (qword_100B50910 != -1)
      {
        sub_100874420();
      }

      sub_1000847C4(off_100B50908, v132, 1, &v129);
    }

    sub_10002249C(v124);
  }

  else
  {
    sub_10003C478(a1);
    if (qword_100B50910 != -1)
    {
      sub_100874420();
    }

    sub_1000847C4(off_100B50908, v132, 0, &v129);
  }

LABEL_203:
  *v137 = &v126;
  sub_100084EB8(v137);
LABEL_204:
  sub_10000CEDC(&v129, v130[0]);
  return 0;
}

void sub_1000177BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47)
{
  sub_10002249C(&a23);
  a47 = &a26;
  sub_100084EB8(&a47);
  sub_10000CEDC(&a29, a30);
  _Unwind_Resume(a1);
}

uint64_t sub_1000178BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 192);
  v27 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  *__p = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  sub_10000CBF0(v20, (v2 + 320));
  v4 = sub_100017E6C();
  v5 = (*(*v4 + 192))(v4);
  v6 = sub_100017E6C();
  v7 = (*(*v6 + 200))(v6);
  v8 = *(a1 + 225);
  v9 = *(a1 + 81);
  if (BYTE8(v20[0]) != 1)
  {
    v10 = 1;
    goto LABEL_19;
  }

  if ((BYTE4(v20[0]) & 1) != 0 || BYTE5(v20[0]) == 1)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_1008778AC();
    }

    v10 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v10 = 1;
  if (v5)
  {
LABEL_10:
    if ((BYTE1(v20[0]) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
      {
        sub_10087792C();
      }

      v10 = 0;
    }
  }

LABEL_14:
  if ((v7 & 1) == 0 && (BYTE2(v20[0]) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      sub_1008779BC();
    }

    v10 = 0;
  }

LABEL_19:
  v11 = qword_100BCE918;
  if (!v8 && v3 == 23 && v9 != 16)
  {
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      v16 = (a1 + 232);
      if (*(a1 + 255) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315394;
      *&buf[4] = v16;
      v29 = 1024;
      LODWORD(v30) = v9;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "agent %s cannot scan, CBUseCaseThirdPartyApp not allowed to scan in background getSessionState:%d", buf, 0x12u);
      v10 = 0;
      v11 = qword_100BCE918;
    }

    else
    {
      v10 = 0;
    }
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = (a1 + 232);
    if (*(a1 + 255) < 0)
    {
      v13 = *v13;
    }

    v14 = sub_10002FC04(v3);
    if (v9 <= 7)
    {
      if (v9 == 2)
      {
        v15 = "terminated";
        goto LABEL_45;
      }

      if (v9 == 4)
      {
        v15 = "suspended";
        goto LABEL_45;
      }
    }

    else
    {
      switch(v9)
      {
        case 8:
          v15 = "background-running";
          goto LABEL_45;
        case 16:
          v15 = "foreground-running";
          goto LABEL_45;
        case 32:
          v15 = "daemon";
          goto LABEL_45;
      }
    }

    v15 = "unknown";
LABEL_45:
    sub_10003BC90(v18, v20);
    if (v19 >= 0)
    {
      v17 = v18;
    }

    else
    {
      v17 = v18[0];
    }

    *buf = 136316930;
    *&buf[4] = v13;
    v29 = 2080;
    v30 = v14;
    v31 = 1024;
    v32 = v10;
    v33 = 1024;
    v34 = v5;
    v35 = 1024;
    v36 = v7;
    v37 = 1024;
    v38 = v8;
    v39 = 2080;
    v40 = v15;
    v41 = 2080;
    v42 = v17;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "canScanNow session:%s(%s) allowed:%d  deviceLocked:%d deviceFirstUnlocked:%d allowedInBKG:%d sessionState:%s %s", buf, 0x42u);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  *buf = &v26;
  sub_10000CF30(buf);
  sub_10000CEDC(v25, v25[1]);
  if (__p[1])
  {
    *&v24 = __p[1];
    operator delete(__p[1]);
  }

  *buf = &v22;
  sub_10000CFB0(buf);

  return v10;
}

void sub_100017CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100138880(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100017CD0(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 != (a1 + 2072))
  {
    do
    {
      v4 = v1[5];
      if (sub_1000178BC(v4))
      {
        v5 = *(v4 + 8);
        if ((*(v5 + 172) & 1) != 0 || *(v5 + 146) || *(v5 + 148))
        {
          return 1;
        }

        if (!sub_10003A26C(v4) || *(a1 + 144))
        {
          v6 = *(v4 + 81);
          if (v6 <= 0x20)
          {
            if (((1 << v6) & 0x114) != 0)
            {
              if (sub_10000D1C8(v4))
              {
                return 1;
              }
            }

            else if (((1 << v6) & 0x100010000) != 0)
            {
              return 1;
            }
          }
        }
      }

      v7 = v1[1];
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
          v8 = v1[2];
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }

  return 0;
}

uint64_t sub_100017DE0(uint64_t a1, char a2)
{
  if ((*(a1 + 1984) & 0xFFFFFFFD) == 1)
  {

    return sub_100016340(a1, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for scan state to settle before updating scan", v6, 2u);
    }

    return 0;
  }
}

uint64_t sub_100017E6C()
{
  if (qword_100B6D830 != -1)
  {
    sub_10082C224();
  }

  (*(*qword_100B6D828 + 16))(qword_100B6D828);
  return qword_100B6D828;
}

void sub_100017ED0(uint64_t a1)
{
  v2 = sub_100017F4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100032BB0;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_100017F4C()
{
  if (qword_100B6EFD8 != -1)
  {
    sub_100843DC8();
  }

  return qword_100B6EFD0;
}

uint64_t sub_100017F84(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 1592);
  v2 = *(a1 + 1657);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100017FCC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 1592);
  v2 = *(a1 + 1656);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100018014(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    result = *(*(v1[5] + 8) + 171);
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

uint64_t sub_100018078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 16) = *(v6 + 16);
      v8 = *(v6 + 48);
      v7 = *(v6 + 64);
      v9 = *(v6 + 32);
      *(a4 + 78) = *(v6 + 78);
      *(a4 + 48) = v8;
      *(a4 + 64) = v7;
      *(a4 + 32) = v9;
      v6 += 96;
      a4 += 96;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1000180FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100018154(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_1000180FC(a1, a2);
  }

  sub_1000C7698();
}

void sub_1000181A0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 96)
  {

    v4 = *(i - 96);
  }

  a1[1] = v2;
}

void sub_1000181EC(uint64_t a1, uint64_t a2)
{
  *(a2 + 56) = &off_100AE0A78;
  v3 = *(a2 + 64);
  if (v3)
  {
    sub_10000C808(v3);
  }

  *(a2 + 40) = &off_100AE0A78;
  v4 = *(a2 + 48);
  if (v4)
  {
    sub_10000C808(v4);
  }

  v5 = *a2;
}

__n128 sub_100018288(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  *a2 = v5;
  v6 = a3[1];
  *(a2 + 32) = *(a3 + 4);
  *(a2 + 16) = v6;
  v7 = *(a3 + 6);
  *(a2 + 40) = &off_100AE0A78;
  *(a2 + 48) = v7;
  if (v7)
  {
    sub_10000C69C(v7);
  }

  v8 = *(a3 + 8);
  *(a2 + 56) = &off_100AE0A78;
  *(a2 + 64) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  result = *(a3 + 72);
  *(a2 + 88) = *(a3 + 11);
  *(a2 + 72) = result;
  v10 = *(a3 + 12);
  *(a3 + 12) = 0;
  *(a2 + 96) = v10;
  *(a2 + 104) = *(a3 + 26);
  return result;
}

void sub_100018350(_Unwind_Exception *a1)
{
  *(v1 + 40) = v2;
  v4 = *(v1 + 48);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100018384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 103) < 0)
  {
    sub_100008904(a2, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    *a2 = *(a1 + 80);
    *(a2 + 16) = *(a1 + 96);
  }

  return sub_1000088CC(v5);
}

void sub_100018404(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100018458(void ***a1)
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
        v4 -= 112;
        sub_1000181EC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1000184E0(uint64_t a1, char a2, char a3, char a4, int a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100018564;
  v6[3] = &unk_100AF24D0;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return sub_10002173C(a1, 290, a5, v6, 0);
}

uint64_t sub_100018590()
{
  if (off_100B60BD8)
  {
    v0 = off_100B60BD8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_10001861C(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_BOOL(xdict, "kMessageArgs");
  *(a1 + 294) = v3;
  v4 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Disabled";
    if (v3)
    {
      v5 = "Enabled";
    }

    v8 = 136315394;
    v9 = "void BT::PurpleCoexManager::SetConditionalIdEnable(xpc_object_t)";
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, ConditionalIDEnable set to %s", &v8, 0x16u);
  }

  v6 = sub_10000C7D0();
  return (*(*v6 + 3528))(v6, 0, 60, (*(a1 + 294) & 1) == 0, 1);
}

uint64_t sub_100018758(char a1, char a2, char a3, uint64_t (*a4)())
{
  v18 = 0;
  v19 = 0;
  result = sub_10001FFD8(&v18);
  if (!result)
  {
    if (HIBYTE(v19))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v12 = WORD2(v19);
      if (WORD1(v19) > WORD2(v19))
      {
        if (BYTE6(v19) == 2)
        {
          ++WORD2(v19);
          *(v18 + v12) = a1;
          if (HIBYTE(v19))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else
          {
            v13 = WORD2(v19);
            if (WORD1(v19) > WORD2(v19))
            {
              if (BYTE6(v19) == 2)
              {
                ++WORD2(v19);
                *(v18 + v13) = a2;
                if (HIBYTE(v19))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                }

                else
                {
                  v14 = WORD2(v19);
                  if (WORD1(v19) > WORD2(v19))
                  {
                    if (BYTE6(v19) == 2)
                    {
                      ++WORD2(v19);
                      *(v18 + v14) = a3;
                      return sub_100020078(631, v18, BYTE4(v19), a4, sub_100022AD0, v9, v10, v11);
                    }

                    v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_24:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6860, v17);
                  }
                }

                v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_24;
              }

              v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6859, v16);
            }
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_20;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6858, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100018960(int a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = 0;
  v30 = 0;
  if (!DWORD2(xmmword_100BCE2E0))
  {
    return 103;
  }

  if (sub_100018C6C())
  {
    return 3704;
  }

  if (dword_100BCE0C0 != 2 && (byte_100BCE0C4 & 1) == 0)
  {
    result = 627;
    if (a1 <= 161)
    {
      if (((a1 - 98) > 0x33 || ((1 << (a1 - 98)) & 0xBE00214100001) == 0) && (a1 - 54) >= 2)
      {
        return result;
      }
    }

    else if (((a1 - 162) > 0x3E || ((1 << (a1 + 94)) & 0x4000002C04002027) == 0) && ((a1 - 243) > 0x20 || ((1 << (a1 + 13)) & 0x140320083) == 0))
    {
      return result;
    }
  }

  ptr = 0;
  v32 = 0;
  v33 = &a9;
  v12 = sub_10001EE38(a1);
  if (!v12)
  {
    return 616;
  }

  v13 = v12;
  v14 = *(v12 + 2);
  if ((v14 & 0xC000) != 0 || (*(&xmmword_100BCE0E0 + (v14 >> 8)) & v14) == 0)
  {
    return 628;
  }

  if (v12[17])
  {
    sub_1000D660C();
  }

  if (*(v13 + 16))
  {
    result = sub_100018C78(v33, v13, &ptr, 0, 0, &v29, 0);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = sub_100093830(v33, v13, &ptr, 0, 0, 0, 0);
    if (result)
    {
      return result;
    }
  }

  if (sub_100004790())
  {
    if (*(v13 + 2) == 64512)
    {
      if ((sub_100255320() & 1) == 0)
      {
        return 655;
      }
    }

    else if (!sub_100255320())
    {
      return 655;
    }
  }

  v27 = 0;
  *&v26 = 0;
  *(&v26 + 1) = 14;
  WORD2(v26) = *(v13 + 2);
  WORD3(v26) = a1;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = nullsub_143;
  }

  v28 = v15;
  if (a1 == 275)
  {
    if (!*(v13 + 16))
    {
      sub_1000D660C();
    }

    WORD5(v26) = WORD1(v30);
    WORD2(v26) = v30;
    if (v29)
    {
      v27 = v29;
    }

    else
    {
      v27 = nullsub_143;
    }
  }

  else
  {
    v27 = sub_100098AE4(v13);
  }

  if (*(v13 + 22))
  {
    v16 = sub_10025B23C(ptr, WORD1(v32));
    if (v16)
    {
      v17 = v16;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCIParmCache failed %!", v18, v19, v20, v21, v22, v23, v24, v17);
        v25 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }

  return sub_10001EFEC(ptr, SWORD1(v32), &v26);
}

uint64_t sub_100018C78(int *a1, uint64_t a2, uint64_t *a3, uint64_t a4, _WORD *a5, uint64_t a6, _BYTE *a7)
{
  v13 = *(a2 + 6) + 4;
  v14 = sub_100007618(v13, 0xBC425BE4uLL);
  if (!v14)
  {
    return 104;
  }

  v15 = v14;
  *(a3 + 15) = 0;
  *a3 = v14;
  *(a3 + 4) = v13;
  *(a3 + 5) = v13;
  v16 = a3 + 5;
  if (!v13)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1525, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a3 + 6) = 1;
  *(a3 + 14) = 2;
  v624 = a3 + 6;
  v625 = a3 + 14;
  *(a3 + 5) = v13;
  *v14 = 1;
  v17 = sub_1000255F0(a2);
  if (v17 == 275)
  {
    v18 = a3 + 14;
    v19 = a1;
    v20 = *a1;
    v21 = a1[2];
    v627 = a1 + 6;
    v22 = *(v19 + 2);
    v23 = a3 + 6;
    if (a6)
    {
      *(a6 + 8) = v20;
      *(a6 + 12) = v21;
      if (v22)
      {
        *(a6 + 10) = *v22;
      }

      else
      {
        sub_1000D660C();
        v23 = a3 + 6;
        v18 = a3 + 14;
      }

      if ((v21 & 0xFE) != 0)
      {
        *(a6 + 11) = v22[1];
      }

      *a6 = *v627;
    }

    if ((~v20 & 0xFC00) == 0)
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
      }

      else if (*v16 - *v23 > 1)
      {
        if (*v18 == 2)
        {
          *(*a3 + *v23) = v20;
          *(*a3 + *(a3 + 6) + 1) = BYTE1(v20);
          v112 = *(a3 + 6);
          *(a3 + 6) = v112 + 2;
          if (*(a3 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
          }

          else if (*v16 > (v112 + 2))
          {
            if (*v18 == 2)
            {
              v113 = *a3;
              *(a3 + 6) = v112 + 3;
              *(v113 + (v112 + 2)) = v21;
              while (1)
              {
                if (!v21)
                {
                  goto LABEL_622;
                }

                if (*(a3 + 15))
                {
                  break;
                }

                v114 = *v23;
                if (*v16 <= v114)
                {
                  goto LABEL_645;
                }

                if (*v18 != 2)
                {
                  v463 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                  goto LABEL_647;
                }

                --v21;
                v115 = *v22++;
                v116 = *a3;
                *(a3 + 6) = v114 + 1;
                *(v116 + v114) = v115;
              }

              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_645:
              v463 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_647:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1690, v463);
            }

            v521 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_879:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1686, v521);
          }

          v521 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          goto LABEL_879;
        }

        v520 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_875:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1683, v520);
      }

      v520 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
      goto LABEL_875;
    }

    v24 = 623;
    goto LABEL_161;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_654;
  }

  v23 = a3 + 6;
  v18 = a3 + 14;
  if (*v16 - *v624 <= 1)
  {
LABEL_654:
    v465 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_656;
  }

  if (*v625 != 2)
  {
    v465 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_656:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1530, v465);
  }

  *(*a3 + *v624) = *(a2 + 2);
  *(*a3 + *(a3 + 6) + 1) = *(a2 + 3);
  v25 = *(a3 + 6);
  v26 = v25 + 2;
  *(a3 + 6) = v25 + 2;
  v24 = 615;
  if (v17 <= 212)
  {
    if (v17 <= 137)
    {
      if (v17 <= 99)
      {
        if (v17 != 56)
        {
          if (v17 != 62)
          {
            if (v17 != 95)
            {
              goto LABEL_161;
            }

            v70 = *a1;
            if (*(a3 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
            }

            else if (*v16 > v26)
            {
              if (*v625 == 2)
              {
                v71 = a1[2];
                v72 = *(a2 + 6);
                v73 = *a3;
                *(a3 + 6) = v25 + 3;
                *(v73 + (v25 + 2)) = v72;
                if (*(a3 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                }

                else
                {
                  v74 = *v624;
                  if (*v16 > v74)
                  {
                    if (*v625 == 2)
                    {
                      v75 = *a3;
                      *(a3 + 6) = v74 + 1;
                      *(v75 + v74) = 1;
                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                      }

                      else if (*v16 - *v624 > 1)
                      {
                        if (*v625 != 2)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1612, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                        }

                        *(*a3 + *v624) = v70;
                        *(*a3 + *(a3 + 6) + 1) = BYTE1(v70);
                        v76 = *(a3 + 6) + 2;
                        *(a3 + 6) = v76;
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                        }

                        else if (*v16 - v76 > 1)
                        {
                          if (*v625 == 2)
                          {
                            *(*a3 + v76) = v71;
                            *(*a3 + *(a3 + 6) + 1) = BYTE1(v71);
                            *(a3 + 6) += 2;
LABEL_237:
                            v68 = 1;
                            goto LABEL_637;
                          }

                          v535 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_946:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1613, v535);
                        }

                        v535 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
                        goto LABEL_946;
                      }

                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1612, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
                    }

                    v531 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_925:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1611, v531);
                  }
                }

                v531 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                goto LABEL_925;
              }

              v528 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_913:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1609, v528);
            }

            v528 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_913;
          }

          v178 = *a1;
          if (*(a3 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
          }

          else if (*v16 > v26)
          {
            if (*v625 == 2)
            {
              v179 = *(a1 + 1);
              v180 = *(a2 + 6);
              v181 = *a3;
              *(a3 + 6) = v25 + 3;
              *(v181 + (v25 + 2)) = v180;
              if (*(a3 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
              }

              else
              {
                v182 = *v624;
                if (*v16 > v182)
                {
                  if (*v625 == 2)
                  {
                    v183 = *a3;
                    *(a3 + 6) = v182 + 1;
                    *(v183 + v182) = 1;
                    if (*(a3 + 15))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                    }

                    else
                    {
                      v184 = *v624;
                      if (*v16 - v184 > 5)
                      {
                        if (*v625 != 2)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1588, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                        }

                        sub_1000075EC((*a3 + v184), v178, 6uLL);
                        v185 = *(a3 + 6) + 6;
                        *(a3 + 6) = v185;
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                        }

                        else
                        {
                          v23 = a3 + 6;
                          v18 = a3 + 14;
                          if (*v16 - v185 > 0xF)
                          {
                            if (*v625 == 2)
                            {
                              *(*a3 + v185) = *v179;
                              *v624 += 16;
                              goto LABEL_237;
                            }

                            v536 = "((*pBs)).__RWFlag == BYTESTREAM_WRITE";
LABEL_948:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1589, v536);
                          }
                        }

                        v536 = "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(*pLinkKey))";
                        goto LABEL_948;
                      }
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1588, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
                  }

                  v532 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_927:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1587, v532);
                }
              }

              v532 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
              goto LABEL_927;
            }

            v529 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_915:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1585, v529);
          }

          v529 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          goto LABEL_915;
        }

        v186 = *a1;
        v187 = a1[2];
        v188 = a1[4];
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else if (*v16 > v26)
        {
          if (*v625 == 2)
          {
            v164 = *(a1 + 3);
            v189 = *a3;
            *(a3 + 6) = v25 + 3;
            *(v189 + (v25 + 2)) = v188 + 2;
            if (*(a3 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
            }

            else
            {
              v190 = *v624;
              if (*v16 > v190)
              {
                if (*v625 == 2)
                {
                  v191 = *a3;
                  *(a3 + 6) = v190 + 1;
                  *(v191 + v190) = v186;
                  if (*(a3 + 15))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                  }

                  else
                  {
                    v192 = *v624;
                    if (*v16 > v192)
                    {
                      if (*v625 == 2)
                      {
                        v173 = v188;
                        v193 = *a3;
                        *(a3 + 6) = v192 + 1;
                        *(v193 + v192) = v187;
                        v175 = *a3;
                        v176 = *(a3 + 6);
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                          v18 = a3 + 14;
                          v194 = 0;
                        }

                        else
                        {
                          v194 = *v16 - v176;
                        }

                        if (v194 < v173)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1561, "ByteStream_NumReadBytesAvail(*pBs) >= (conditionLength)");
                        }

                        if (*v18 != 2)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1561, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                        }

                        goto LABEL_626;
                      }

                      v534 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_939:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1560, v534);
                    }
                  }

                  v534 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                  goto LABEL_939;
                }

                v533 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_929:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1559, v533);
              }
            }

            v533 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_929;
          }

          v530 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_917:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1556, v530);
        }

        v530 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_917;
      }

      if ((v17 - 134) < 4)
      {
        v124 = *a1;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else if (*v16 > v26)
        {
          if (*v625 == 2)
          {
            v125 = *(a1 + 1);
            v126 = *a3;
            *(a3 + 6) = v25 + 3;
            *(v126 + (v25 + 2)) = v124;
            while (1)
            {
              if (!v124)
              {
                goto LABEL_622;
              }

              if (*(a3 + 15))
              {
                break;
              }

              v127 = *v624;
              if (*v16 <= v127)
              {
                goto LABEL_649;
              }

              if (*v625 != 2)
              {
                v464 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                goto LABEL_651;
              }

              LOBYTE(v124) = v124 - 1;
              v128 = *v125++;
              v129 = *a3;
              *(a3 + 6) = v127 + 1;
              *(v129 + v127) = v128;
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_649:
            v464 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_651:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1717, v464);
          }

          v522 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_883:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1714, v522);
        }

        v522 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_883;
      }

      if (v17 != 100)
      {
        goto LABEL_161;
      }

      v305 = *a1;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
      }

      else if (*v16 > v26)
      {
        if (*v625 == 2)
        {
          v306 = *(a1 + 1);
          v307 = *a3;
          *(a3 + 6) = v25 + 3;
          *(v307 + (v25 + 2)) = 3 * v305 + 1;
          if (*(a3 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
          }

          else
          {
            v308 = *v624;
            if (*v16 > v308)
            {
              if (*v625 == 2)
              {
                v309 = *a3;
                *(a3 + 6) = v308 + 1;
                *(v309 + v308) = v305;
                v310 = v305;
                if (v305)
                {
                  while (!*(a3 + 15))
                  {
                    if (*v16 - *v624 <= 2)
                    {
                      goto LABEL_806;
                    }

                    if (*v625 != 2)
                    {
                      v503 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                      goto LABEL_807;
                    }

                    v68 = 0;
                    *(*a3 + *v624) = *v306;
                    *(*a3 + *(a3 + 6) + 1) = BYTE1(*v306);
                    *(*a3 + *(a3 + 6) + 2) = *(v306 + 2);
                    *(a3 + 6) += 3;
                    v306 += 4;
                    if (!--v310)
                    {
                      goto LABEL_637;
                    }
                  }

                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_806:
                  v503 = "ByteStream_NumReadBytesAvail(*pBs) >= 3";
LABEL_807:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1638, v503);
                }

                goto LABEL_622;
              }

              v610 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1269:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1635, v610);
            }
          }

          v610 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          goto LABEL_1269;
        }

        v609 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1265:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1632, v609);
      }

      v609 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      goto LABEL_1265;
    }

    if ((v17 - 205) >= 2)
    {
      if (v17 != 138)
      {
        if (v17 != 207)
        {
          goto LABEL_161;
        }

        v117 = a1;
        v118 = *a1;
        v628 = a1 + 4;
        v119 = v117[2];
        v120 = v119;
        if (v119)
        {
          v121 = *v628;
          v122 = *(v628 + 1);
          v123 = *(v628 + 2);
        }

        else
        {
          v123 = 0;
          v122 = 0;
          v121 = 0;
        }

        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else if (*v16 > v26)
        {
          if (*v625 == 2)
          {
            v450 = *a3;
            *(a3 + 6) = v25 + 3;
            *(v450 + (v25 + 2)) = (4 * v119) | 2;
            if (*(a3 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
            }

            else
            {
              v451 = *v624;
              if (*v16 > v451)
              {
                if (*v625 == 2)
                {
                  v452 = *a3;
                  *(a3 + 6) = v451 + 1;
                  *(v452 + v451) = v118;
                  if (*(a3 + 15))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                  }

                  else
                  {
                    v453 = *v624;
                    if (*v16 > v453)
                    {
                      if (*v625 == 2)
                      {
                        v454 = *a3;
                        *(a3 + 6) = v453 + 1;
                        *(v454 + v453) = v119;
                        if (v119)
                        {
                          while (!*(a3 + 15))
                          {
                            v455 = *v624;
                            if (*v16 <= v455)
                            {
                              goto LABEL_703;
                            }

                            if (*v625 != 2)
                            {
                              v477 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                              goto LABEL_704;
                            }

                            v456 = *v121;
                            v457 = *a3;
                            *(a3 + 6) = v455 + 1;
                            *(v457 + v455) = v456;
                            if (*(a3 + 15))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_699:
                              v476 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_700:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1789, v476);
                            }

                            if (*v16 - *v624 <= 1)
                            {
                              goto LABEL_699;
                            }

                            if (*v625 != 2)
                            {
                              v476 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                              goto LABEL_700;
                            }

                            *(*a3 + *v624) = *v122;
                            *(*a3 + *(a3 + 6) + 1) = v122[1];
                            v458 = *(a3 + 6);
                            *(a3 + 6) = v458 + 2;
                            if (*(a3 + 15))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_695:
                              v475 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_696:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1790, v475);
                            }

                            if (*v16 <= (v458 + 2))
                            {
                              goto LABEL_695;
                            }

                            if (*v625 != 2)
                            {
                              v475 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                              goto LABEL_696;
                            }

                            v68 = 0;
                            v459 = *v123++;
                            v460 = *a3;
                            *(a3 + 6) = v458 + 3;
                            *(v460 + (v458 + 2)) = v459;
                            v122 += 2;
                            ++v121;
                            if (!--v120)
                            {
                              goto LABEL_637;
                            }
                          }

                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_703:
                          v477 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_704:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1788, v477);
                        }

                        goto LABEL_622;
                      }

                      v569 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1107:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1785, v569);
                    }
                  }

                  v569 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                  goto LABEL_1107;
                }

                v566 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1068:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1784, v566);
              }
            }

            v566 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_1068;
          }

          v551 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1008:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1783, v551);
        }

        v551 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_1008;
      }

      v296 = *a1;
      v297 = a1[2];
      v298 = *(a1 + 2);
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
      }

      else if (*v16 > v26)
      {
        if (*v625 == 2)
        {
          v299 = *(a1 + 3);
          v300 = *a3;
          *(a3 + 6) = v25 + 3;
          *(v300 + (v25 + 2)) = v296;
          if (*(a3 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
          }

          else
          {
            v301 = *v624;
            if (*v16 > v301)
            {
              if (*v625 == 2)
              {
                v302 = *a3;
                *(a3 + 6) = v301 + 1;
                *(v302 + v301) = v297;
                v303 = v297;
                if (v297)
                {
                  v304 = v297;
                  while (!*(a3 + 15))
                  {
                    if (*v16 - *v624 <= 1)
                    {
                      goto LABEL_659;
                    }

                    if (*v625 != 2)
                    {
                      v466 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                      goto LABEL_660;
                    }

                    *(*a3 + *v624) = *v298;
                    *(*a3 + *(a3 + 6) + 1) = v298[1];
                    *(a3 + 6) += 2;
                    v298 += 2;
                    if (!--v304)
                    {
                      while (!*(a3 + 15))
                      {
                        if (*v16 - *v624 <= 1)
                        {
                          goto LABEL_676;
                        }

                        if (*v625 != 2)
                        {
                          v470 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                          goto LABEL_677;
                        }

                        v68 = 0;
                        *(*a3 + *v624) = *v299;
                        *(*a3 + *(a3 + 6) + 1) = v299[1];
                        *(a3 + 6) += 2;
                        v299 += 2;
                        if (!--v303)
                        {
                          goto LABEL_637;
                        }
                      }

                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_676:
                      v470 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_677:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1750, v470);
                    }
                  }

                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_659:
                  v466 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_660:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1746, v466);
                }

                goto LABEL_622;
              }

              v557 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1050:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1743, v557);
            }
          }

          v557 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          goto LABEL_1050;
        }

        v542 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_990:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1742, v542);
      }

      v542 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      goto LABEL_990;
    }

    v160 = *a1;
    v161 = a1[2];
    v162 = a1[4];
    v163 = a1[6];
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    }

    else if (*v16 > v26)
    {
      if (*v625 == 2)
      {
        v164 = *(a1 + 4);
        v165 = *a3;
        *(a3 + 6) = v25 + 3;
        *(v165 + (v25 + 2)) = v163 + 4;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else
        {
          v166 = *v624;
          if (*v16 > v166)
          {
            if (*v625 == 2)
            {
              v167 = *a3;
              *(a3 + 6) = v166 + 1;
              *(v167 + v166) = v160;
              if (*(a3 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
              }

              else
              {
                v168 = *v624;
                if (*v16 > v168)
                {
                  if (*v625 == 2)
                  {
                    v169 = *a3;
                    *(a3 + 6) = v168 + 1;
                    *(v169 + v168) = v161;
                    if (*(a3 + 15))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                    }

                    else
                    {
                      v170 = *v624;
                      if (*v16 > v170)
                      {
                        if (*v625 == 2)
                        {
                          v171 = *a3;
                          *(a3 + 6) = v170 + 1;
                          *(v171 + v170) = v162;
                          if (*(a3 + 15))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                          }

                          else
                          {
                            v172 = *v624;
                            if (*v16 > v172)
                            {
                              if (*v625 == 2)
                              {
                                v173 = v163;
                                v174 = *a3;
                                *(a3 + 6) = v172 + 1;
                                *(v174 + v172) = v163;
                                v175 = *a3;
                                v176 = *(a3 + 6);
                                if (*(a3 + 15))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                  v18 = a3 + 14;
                                  v177 = 0;
                                }

                                else
                                {
                                  v177 = *v16 - v176;
                                }

                                if (v177 < v173)
                                {
                                  v311 = "ByteStream_NumReadBytesAvail(*pBs) >= (dataLength)";
                                }

                                else
                                {
                                  if (*v18 == 2)
                                  {
LABEL_626:
                                    memmove((v175 + v176), v164, v173);
                                    v68 = 0;
                                    v23 = a3 + 6;
                                    v461 = *v624 + v173;
LABEL_635:
                                    *v23 = v461;
LABEL_636:
                                    v18 = a3 + 14;
                                    goto LABEL_637;
                                  }

                                  v311 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                }

                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1877, v311);
                              }

                              v527 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_903:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1876, v527);
                            }
                          }

                          v527 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                          goto LABEL_903;
                        }

                        v526 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_899:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1875, v526);
                      }
                    }

                    v526 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                    goto LABEL_899;
                  }

                  v525 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_895:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1874, v525);
                }
              }

              v525 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
              goto LABEL_895;
            }

            v524 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_891:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1873, v524);
          }
        }

        v524 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_891;
      }

      v523 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_887:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1872, v523);
    }

    v523 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_887;
  }

  if (v17 <= 238)
  {
    if (v17 <= 229)
    {
      if (v17 != 213)
      {
        if (v17 != 215)
        {
          if (v17 != 217)
          {
            goto LABEL_161;
          }

          v77 = 0;
          v78 = *a1;
          v79 = a1[2];
          v80 = a1[4];
          v81 = *(a1 + 3);
          v82 = a1[8];
          v83 = *(a1 + 5);
          v84 = *(a1 + 6);
          v85 = *(a1 + 7);
          v86 = *(a1 + 8);
          v87 = *(a1 + 9);
          v88 = *(a1 + 10);
          v89 = *(a1 + 11);
          v90 = *(a1 + 12);
          v91 = 8;
          v92 = v82;
          do
          {
            v77 += v92 & 1;
            v92 >>= 1;
            --v91;
          }

          while (v91);
          if (*(a3 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
          }

          else if (*v16 > v26)
          {
            if (*v625 == 2)
            {
              v93 = *a3;
              *(a3 + 6) = v25 + 3;
              *(v93 + (v25 + 2)) = (16 * v77) | 0xA;
              if (*(a3 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
              }

              else
              {
                v94 = *v624;
                if (*v16 > v94)
                {
                  if (*v625 == 2)
                  {
                    v95 = *a3;
                    *(a3 + 6) = v94 + 1;
                    *(v95 + v94) = v78;
                    if (*(a3 + 15))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                    }

                    else
                    {
                      v96 = *v624;
                      if (*v16 > v96)
                      {
                        if (*v625 != 2)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1975, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                        }

                        v97 = *a3;
                        *(a3 + 6) = v96 + 1;
                        *(v97 + v96) = v79;
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                        }

                        else
                        {
                          v98 = *v624;
                          if (*v16 > v98)
                          {
                            if (*v625 == 2)
                            {
                              v99 = *a3;
                              *(a3 + 6) = v98 + 1;
                              *(v99 + v98) = v80;
                              if (*(a3 + 15))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                              }

                              else
                              {
                                v619 = v90;
                                v100 = *v624;
                                if (*v16 - v100 > 5)
                                {
                                  v622 = v89;
                                  if (*v625 == 2)
                                  {
                                    v101 = v84;
                                    sub_1000075EC((*a3 + v100), v81, 6uLL);
                                    v102 = *(a3 + 6);
                                    *(a3 + 6) = v102 + 6;
                                    if (*(a3 + 15))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                    }

                                    else
                                    {
                                      v18 = a3 + 14;
                                      if (*v16 > (v102 + 6))
                                      {
                                        v23 = a3 + 6;
                                        if (*v625 == 2)
                                        {
                                          v103 = 0;
                                          v104 = *a3;
                                          *(a3 + 6) = v102 + 7;
                                          *(v104 + (v102 + 6)) = v82;
                                          while (1)
                                          {
                                            if (v82)
                                            {
                                              if (*(a3 + 15))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_854:
                                                v515 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_855:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1984, v515);
                                              }

                                              if (*v16 - *v624 <= 1)
                                              {
                                                goto LABEL_854;
                                              }

                                              if (*v625 != 2)
                                              {
                                                v515 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_855;
                                              }

                                              *(*a3 + *v624) = *(v83 + v103);
                                              *(*a3 + *(a3 + 6) + 1) = *(v83 + v103 + 1);
                                              v105 = *(a3 + 6) + 2;
                                              *(a3 + 6) = v105;
                                              if (*(a3 + 15))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_822:
                                                v507 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_823:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1985, v507);
                                              }

                                              if (*v16 - v105 <= 1)
                                              {
                                                goto LABEL_822;
                                              }

                                              if (*v625 != 2)
                                              {
                                                v507 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_823;
                                              }

                                              *(*a3 + v105) = *(v101 + v103);
                                              *(*a3 + *(a3 + 6) + 1) = *(v101 + v103 + 1);
                                              v106 = *(a3 + 6) + 2;
                                              *(a3 + 6) = v106;
                                              if (*(a3 + 15))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_850:
                                                v514 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_851:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1986, v514);
                                              }

                                              if (*v16 - v106 <= 1)
                                              {
                                                goto LABEL_850;
                                              }

                                              if (*v625 != 2)
                                              {
                                                v514 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_851;
                                              }

                                              *(*a3 + v106) = *(v85 + v103);
                                              *(*a3 + *(a3 + 6) + 1) = *(v85 + v103 + 1);
                                              v107 = *(a3 + 6) + 2;
                                              *(a3 + 6) = v107;
                                              if (*(a3 + 15))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_818:
                                                v506 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_819:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1987, v506);
                                              }

                                              if (*v16 - v107 <= 1)
                                              {
                                                goto LABEL_818;
                                              }

                                              if (*v625 != 2)
                                              {
                                                v506 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_819;
                                              }

                                              *(*a3 + v107) = *(v86 + v103);
                                              *(*a3 + *(a3 + 6) + 1) = *(v86 + v103 + 1);
                                              v108 = *(a3 + 6) + 2;
                                              *(a3 + 6) = v108;
                                              if (*(a3 + 15))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_846:
                                                v513 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_847:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1988, v513);
                                              }

                                              if (*v16 - v108 <= 1)
                                              {
                                                goto LABEL_846;
                                              }

                                              if (*v625 != 2)
                                              {
                                                v513 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_847;
                                              }

                                              *(*a3 + v108) = *(v87 + v103);
                                              *(*a3 + *(a3 + 6) + 1) = *(v87 + v103 + 1);
                                              v109 = *(a3 + 6) + 2;
                                              *(a3 + 6) = v109;
                                              if (*(a3 + 15))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_814:
                                                v505 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_815:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1989, v505);
                                              }

                                              if (*v16 - v109 <= 1)
                                              {
                                                goto LABEL_814;
                                              }

                                              if (*v625 != 2)
                                              {
                                                v505 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_815;
                                              }

                                              *(*a3 + v109) = *(v88 + v103);
                                              *(*a3 + *(a3 + 6) + 1) = *(v88 + v103 + 1);
                                              v110 = *(a3 + 6) + 2;
                                              *(a3 + 6) = v110;
                                              if (*(a3 + 15))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_842:
                                                v512 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_843:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1990, v512);
                                              }

                                              if (*v16 - v110 <= 1)
                                              {
                                                goto LABEL_842;
                                              }

                                              if (*v625 != 2)
                                              {
                                                v512 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_843;
                                              }

                                              *(*a3 + v110) = *(v622 + v103);
                                              *(*a3 + *(a3 + 6) + 1) = *(v622 + v103 + 1);
                                              v111 = *(a3 + 6) + 2;
                                              *(a3 + 6) = v111;
                                              if (*(a3 + 15))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_810:
                                                v504 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_811:
                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1991, v504);
                                              }

                                              if (*v16 - v111 <= 1)
                                              {
                                                goto LABEL_810;
                                              }

                                              if (*v625 != 2)
                                              {
                                                v504 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                goto LABEL_811;
                                              }

                                              *(*a3 + v111) = *(v619 + v103);
                                              *(*a3 + *(a3 + 6) + 1) = *(v619 + v103 + 1);
                                              *(a3 + 6) += 2;
                                            }

                                            v68 = 0;
                                            LOBYTE(v82) = v82 >> 1;
                                            v103 += 2;
                                            if (v103 == 16)
                                            {
                                              goto LABEL_637;
                                            }
                                          }
                                        }

                                        v589 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1192:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1978, v589);
                                      }
                                    }

                                    v589 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                    goto LABEL_1192;
                                  }

                                  v582 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1168:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1977, v582);
                                }
                              }

                              v582 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
                              goto LABEL_1168;
                            }

                            v572 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1133:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1976, v572);
                          }
                        }

                        v572 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                        goto LABEL_1133;
                      }
                    }

                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1975, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                  }

                  v553 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1042:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1974, v553);
                }
              }

              v553 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
              goto LABEL_1042;
            }

            v538 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_982:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1973, v538);
          }

          v538 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          goto LABEL_982;
        }

        v195 = 0;
        v196 = *a1;
        v197 = a1[2];
        v198 = a1[4];
        v199 = *(a1 + 3);
        v200 = *(a1 + 4);
        v201 = *(a1 + 5);
        v202 = 8;
        v203 = v198;
        do
        {
          v195 += v203 & 1;
          v203 >>= 1;
          --v202;
        }

        while (v202);
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else if (*v16 > v26)
        {
          if (*v625 == 2)
          {
            v204 = *a3;
            *(a3 + 6) = v25 + 3;
            *(v204 + (v25 + 2)) = 5 * v195 + 4;
            if (*(a3 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
            }

            else
            {
              v205 = *v624;
              if (*v16 > v205)
              {
                if (*v625 == 2)
                {
                  v206 = *a3;
                  *(a3 + 6) = v205 + 1;
                  *(v206 + v205) = v196;
                  if (*(a3 + 15))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                  }

                  else
                  {
                    v207 = *v624;
                    if (*v16 > v207)
                    {
                      if (*v625 != 2)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1833, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                      }

                      v208 = *a3;
                      *(a3 + 6) = v207 + 1;
                      *(v208 + v207) = v197;
                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                      }

                      else
                      {
                        v209 = *v624;
                        if (*v16 > v209)
                        {
                          if (*v625 == 2)
                          {
                            v210 = *a3;
                            *(a3 + 6) = v209 + 1;
                            *(v210 + v209) = v198;
                            if (v195)
                            {
                              v211 = v195;
                              while (!*(a3 + 15))
                              {
                                v212 = *v624;
                                if (*v16 <= v212)
                                {
                                  goto LABEL_715;
                                }

                                if (*v625 != 2)
                                {
                                  v480 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                  goto LABEL_716;
                                }

                                v213 = *v199;
                                v214 = *a3;
                                *(a3 + 6) = v212 + 1;
                                *(v214 + v212) = v213;
                                if (*(a3 + 15))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_711:
                                  v479 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_712:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1839, v479);
                                }

                                if (*v16 - *v624 <= 1)
                                {
                                  goto LABEL_711;
                                }

                                if (*v625 != 2)
                                {
                                  v479 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                  goto LABEL_712;
                                }

                                *(*a3 + *v624) = *v200;
                                *(*a3 + *(a3 + 6) + 1) = v200[1];
                                v215 = *(a3 + 6) + 2;
                                *(a3 + 6) = v215;
                                if (*(a3 + 15))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_707:
                                  v478 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_708:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1840, v478);
                                }

                                if (*v16 - v215 <= 1)
                                {
                                  goto LABEL_707;
                                }

                                if (*v625 != 2)
                                {
                                  v478 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                  goto LABEL_708;
                                }

                                v68 = 0;
                                *(*a3 + v215) = *v201;
                                *(*a3 + *(a3 + 6) + 1) = v201[1];
                                *(a3 + 6) += 2;
                                v201 += 2;
                                v200 += 2;
                                ++v199;
                                if (!--v211)
                                {
                                  goto LABEL_637;
                                }
                              }

                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_715:
                              v480 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_716:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1838, v480);
                            }

                            goto LABEL_622;
                          }

                          v573 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1135:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1834, v573);
                        }
                      }

                      v573 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                      goto LABEL_1135;
                    }
                  }

                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1833, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
                }

                v555 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1046:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1832, v555);
              }
            }

            v555 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_1046;
          }

          v540 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_986:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1831, v540);
        }

        v540 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_986;
      }

      v238 = *a1;
      v239 = a1[2];
      v240 = a1[4];
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
      }

      else if (*v16 > v26)
      {
        if (*v625 == 2)
        {
          v164 = *(a1 + 3);
          v241 = *a3;
          *(a3 + 6) = v25 + 3;
          *(v241 + (v25 + 2)) = v240 + 3;
          if (*(a3 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
          }

          else
          {
            v242 = *v624;
            if (*v16 > v242)
            {
              if (*v625 == 2)
              {
                v243 = *a3;
                *(a3 + 6) = v242 + 1;
                *(v243 + v242) = v238;
                if (*(a3 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                }

                else
                {
                  v244 = *v624;
                  if (*v16 > v244)
                  {
                    if (*v625 != 2)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1906, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                    }

                    v245 = *a3;
                    *(a3 + 6) = v244 + 1;
                    *(v245 + v244) = v239;
                    if (*(a3 + 15))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                    }

                    else
                    {
                      v246 = *v624;
                      if (*v16 > v246)
                      {
                        if (*v625 == 2)
                        {
                          v173 = v240;
                          v247 = *a3;
                          *(a3 + 6) = v246 + 1;
                          *(v247 + v246) = v240;
                          v175 = *a3;
                          v176 = *(a3 + 6);
                          if (*(a3 + 15))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                            v18 = a3 + 14;
                            v248 = 0;
                          }

                          else
                          {
                            v248 = *v16 - v176;
                          }

                          if (v248 < v173)
                          {
                            v586 = "ByteStream_NumReadBytesAvail(*pBs) >= (dataLength)";
                          }

                          else
                          {
                            if (*v18 == 2)
                            {
                              goto LABEL_626;
                            }

                            v586 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                          }

                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1908, v586);
                        }

                        v574 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1137:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1907, v574);
                      }
                    }

                    v574 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                    goto LABEL_1137;
                  }
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1906, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
              }

              v556 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1048:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1905, v556);
            }
          }

          v556 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          goto LABEL_1048;
        }

        v541 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_988:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1904, v541);
      }

      v541 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      goto LABEL_988;
    }

    if (v17 != 230)
    {
      if (v17 != 231)
      {
        if (v17 != 232)
        {
          goto LABEL_161;
        }

        v130 = a1;
        v629 = a1 + 2;
        v131 = *v130;
        v132 = *v130;
        if (v132)
        {
          v133 = *v629;
          v134 = *(v629 + 1);
        }

        else
        {
          v133 = 0;
          v134 = 0;
        }

        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else if (*v16 > v26)
        {
          if (*v625 == 2)
          {
            v348 = *a3;
            *(a3 + 6) = v25 + 3;
            *(v348 + (v25 + 2)) = (4 * v131) | 2;
            if (*(a3 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
            }

            else
            {
              v349 = *v624;
              if (*v16 > v349)
              {
                if (*v625 == 2)
                {
                  v350 = *a3;
                  *(a3 + 6) = v349 + 1;
                  *(v350 + v349) = v131;
                  if (v132)
                  {
                    while (!*(a3 + 15))
                    {
                      if (*v16 - *v624 <= 1)
                      {
                        goto LABEL_679;
                      }

                      if (*v625 != 2)
                      {
                        v471 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                        goto LABEL_680;
                      }

                      *(*a3 + *v624) = **v133;
                      *(*a3 + *(a3 + 6) + 1) = (*v133)[1];
                      v351 = *(a3 + 6) + 2;
                      *(a3 + 6) = v351;
                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_671:
                        v469 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_672:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2219, v469);
                      }

                      if (*v16 - v351 <= 1)
                      {
                        goto LABEL_671;
                      }

                      if (*v625 != 2)
                      {
                        v469 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                        goto LABEL_672;
                      }

                      v68 = 0;
                      *(*a3 + v351) = **v134;
                      v352 = *v134++;
                      *(*a3 + *(a3 + 6) + 1) = v352[1];
                      *(a3 + 6) += 2;
                      v353 = *v133++;
                      *a5++ = *v353;
                      if (!--v132)
                      {
                        goto LABEL_637;
                      }
                    }

                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_679:
                    v471 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_680:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2218, v471);
                  }

                  goto LABEL_622;
                }

                v559 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1054:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2215, v559);
              }
            }

            v559 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_1054;
          }

          v544 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_994:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2214, v544);
        }

        v544 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_994;
      }

      v216 = a1;
      v217 = *a1;
      v218 = a1[2];
      v219 = a1[4];
      v220 = a1[6];
      v221 = a1[8];
      v222 = a1[10];
      v223 = a1[12];
      v224 = a1[14];
      v225 = a1[16];
      v631 = a1 + 20;
      v226 = v216[18];
      v227 = v226;
      if (v226)
      {
        v228 = *v631;
        v229 = *(v631 + 1);
        v230 = *(v631 + 2);
        v231 = *(v631 + 3);
        v232 = *(v631 + 4);
        v233 = *(v631 + 5);
        v234 = *(v631 + 6);
        v235 = *(v631 + 7);
        v236 = *(v631 + 8);
        v237 = *(v631 + 9);
      }

      else
      {
        v228 = 0;
        v229 = 0;
        v230 = 0;
        v231 = 0;
        v232 = 0;
        v233 = 0;
        v234 = 0;
        v235 = 0;
        v236 = 0;
        v237 = 0;
      }

      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
      }

      else if (*v16 > v26)
      {
        if (*v625 == 2)
        {
          v312 = *a3;
          *(a3 + 6) = v25 + 3;
          *(v312 + (v25 + 2)) = 14 * v226 + 16;
          if (*(a3 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
          }

          else
          {
            v313 = *v624;
            if (*v16 > v313)
            {
              if (*v625 == 2)
              {
                v314 = *a3;
                *(a3 + 6) = v313 + 1;
                *(v314 + v313) = v217;
                if (*(a3 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                }

                else if (*v16 - *v624 > 3)
                {
                  if (*v625 != 2)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2165, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                  }

                  *(*a3 + *v624) = v218;
                  *(*a3 + *(a3 + 6) + 1) = BYTE1(v218);
                  *(*a3 + *(a3 + 6) + 2) = BYTE2(v218);
                  *(*a3 + *(a3 + 6) + 3) = HIBYTE(v218);
                  v315 = *(a3 + 6) + 4;
                  *(a3 + 6) = v315;
                  if (*(a3 + 15))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                  }

                  else if (*v16 - v315 > 3)
                  {
                    if (*v625 == 2)
                    {
                      *(*a3 + v315) = v219;
                      *(*a3 + *(a3 + 6) + 1) = BYTE1(v219);
                      *(*a3 + *(a3 + 6) + 2) = BYTE2(v219);
                      *(*a3 + *(a3 + 6) + 3) = HIBYTE(v219);
                      v316 = *(a3 + 6);
                      *(a3 + 6) = v316 + 4;
                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                      }

                      else if (*v16 > (v316 + 4))
                      {
                        if (*v625 == 2)
                        {
                          v317 = *a3;
                          *(a3 + 6) = v316 + 5;
                          *(v317 + (v316 + 4)) = v220;
                          if (*(a3 + 15))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                          }

                          else
                          {
                            v318 = *v624;
                            if (*v16 > v318)
                            {
                              if (*v625 == 2)
                              {
                                v319 = *a3;
                                *(a3 + 6) = v318 + 1;
                                *(v319 + v318) = v221;
                                if (*(a3 + 15))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                }

                                else if (*v16 - *v624 > 1)
                                {
                                  if (*v625 == 2)
                                  {
                                    *(*a3 + *v624) = v222;
                                    *(*a3 + *(a3 + 6) + 1) = BYTE1(v222);
                                    v320 = *(a3 + 6);
                                    *(a3 + 6) = v320 + 2;
                                    if (*(a3 + 15))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                    }

                                    else if (*v16 > (v320 + 2))
                                    {
                                      if (*v625 == 2)
                                      {
                                        v321 = *a3;
                                        *(a3 + 6) = v320 + 3;
                                        *(v321 + (v320 + 2)) = v223;
                                        if (*(a3 + 15))
                                        {
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                        }

                                        else
                                        {
                                          v322 = *v624;
                                          v18 = a3 + 14;
                                          if (*v16 > v322)
                                          {
                                            if (*v625 == 2)
                                            {
                                              v323 = *a3;
                                              *(a3 + 6) = v322 + 1;
                                              *(v323 + v322) = v224;
                                              if (*(a3 + 15))
                                              {
                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                              }

                                              else
                                              {
                                                v324 = *v624;
                                                if (*v16 > v324)
                                                {
                                                  if (*v625 == 2)
                                                  {
                                                    v325 = *a3;
                                                    *(a3 + 6) = v324 + 1;
                                                    *(v325 + v324) = v225;
                                                    if (*(a3 + 15))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                                    }

                                                    else
                                                    {
                                                      v326 = *v624;
                                                      if (*v16 > v326)
                                                      {
                                                        if (*v625 == 2)
                                                        {
                                                          v327 = *a3;
                                                          *(a3 + 6) = v326 + 1;
                                                          *(v327 + v326) = v226;
                                                          if (v226)
                                                          {
                                                            while (!*(a3 + 15))
                                                            {
                                                              v328 = *v624;
                                                              if (*v16 <= v328)
                                                              {
                                                                goto LABEL_784;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v498 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_785;
                                                              }

                                                              v329 = *v228;
                                                              v330 = *a3;
                                                              *(a3 + 6) = v328 + 1;
                                                              *(v330 + v328) = v329;
                                                              if (*(a3 + 15))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_780:
                                                                v497 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_781:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2177, v497);
                                                              }

                                                              v331 = *v624;
                                                              if (*v16 <= v331)
                                                              {
                                                                goto LABEL_780;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v497 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_781;
                                                              }

                                                              v332 = *v229;
                                                              v333 = *a3;
                                                              *(a3 + 6) = v331 + 1;
                                                              *(v333 + v331) = v332;
                                                              if (*(a3 + 15))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_776:
                                                                v496 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_777:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2178, v496);
                                                              }

                                                              if (*v16 - *v624 <= 1)
                                                              {
                                                                goto LABEL_776;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v496 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_777;
                                                              }

                                                              *(*a3 + *v624) = *v230;
                                                              *(*a3 + *(a3 + 6) + 1) = v230[1];
                                                              v334 = *(a3 + 6) + 2;
                                                              *(a3 + 6) = v334;
                                                              if (*(a3 + 15))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_772:
                                                                v495 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_773:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2179, v495);
                                                              }

                                                              if (*v16 - v334 <= 1)
                                                              {
                                                                goto LABEL_772;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v495 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_773;
                                                              }

                                                              *(*a3 + v334) = *v231;
                                                              *(*a3 + *(a3 + 6) + 1) = v231[1];
                                                              v335 = *(a3 + 6) + 2;
                                                              *(a3 + 6) = v335;
                                                              if (*(a3 + 15))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_768:
                                                                v494 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_769:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2180, v494);
                                                              }

                                                              if (*v16 - v335 <= 1)
                                                              {
                                                                goto LABEL_768;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v494 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_769;
                                                              }

                                                              *(*a3 + v335) = *v232;
                                                              *(*a3 + *(a3 + 6) + 1) = v232[1];
                                                              v336 = *(a3 + 6) + 2;
                                                              *(a3 + 6) = v336;
                                                              if (*(a3 + 15))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_765:
                                                                v493 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_803:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2181, v493);
                                                              }

                                                              if (*v16 - v336 <= 1)
                                                              {
                                                                goto LABEL_765;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v493 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_803;
                                                              }

                                                              *(*a3 + v336) = *v233;
                                                              *(*a3 + *(a3 + 6) + 1) = v233[1];
                                                              v337 = *(a3 + 6);
                                                              *(a3 + 6) = v337 + 2;
                                                              if (*(a3 + 15))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_800:
                                                                v502 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_801:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2182, v502);
                                                              }

                                                              if (*v16 <= (v337 + 2))
                                                              {
                                                                goto LABEL_800;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v502 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_801;
                                                              }

                                                              v338 = *v234;
                                                              v339 = *a3;
                                                              *(a3 + 6) = v337 + 3;
                                                              *(v339 + (v337 + 2)) = v338;
                                                              if (*(a3 + 15))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_796:
                                                                v501 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_797:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2183, v501);
                                                              }

                                                              v340 = *v624;
                                                              if (*v16 <= v340)
                                                              {
                                                                goto LABEL_796;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v501 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_797;
                                                              }

                                                              v341 = *v235;
                                                              v342 = *a3;
                                                              *(a3 + 6) = v340 + 1;
                                                              *(v342 + v340) = v341;
                                                              if (*(a3 + 15))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_792:
                                                                v500 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_793:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2184, v500);
                                                              }

                                                              v343 = *v624;
                                                              if (*v16 <= v343)
                                                              {
                                                                goto LABEL_792;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v500 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_793;
                                                              }

                                                              v344 = *v236;
                                                              v345 = *a3;
                                                              *(a3 + 6) = v343 + 1;
                                                              *(v345 + v343) = v344;
                                                              if (*(a3 + 15))
                                                              {
                                                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_788:
                                                                v499 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_789:
                                                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2185, v499);
                                                              }

                                                              v346 = *v624;
                                                              if (*v16 <= v346)
                                                              {
                                                                goto LABEL_788;
                                                              }

                                                              if (*v625 != 2)
                                                              {
                                                                v499 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                                goto LABEL_789;
                                                              }

                                                              v68 = 0;
                                                              v347 = *v237++;
                                                              *(a3 + 6) = v346 + 1;
                                                              *(*a3 + v346) = v347;
                                                              ++v236;
                                                              ++v235;
                                                              ++v234;
                                                              v233 += 2;
                                                              v232 += 2;
                                                              v231 += 2;
                                                              v230 += 2;
                                                              ++v229;
                                                              ++v228;
                                                              if (!--v227)
                                                              {
                                                                goto LABEL_637;
                                                              }
                                                            }

                                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_784:
                                                            v498 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_785:
                                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2176, v498);
                                                          }

                                                          goto LABEL_622;
                                                        }

                                                        v608 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1261:
                                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2173, v608);
                                                      }
                                                    }

                                                    v608 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                                    goto LABEL_1261;
                                                  }

                                                  v606 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1253:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2172, v606);
                                                }
                                              }

                                              v606 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                              goto LABEL_1253;
                                            }

                                            v604 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1245:
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2171, v604);
                                          }
                                        }

                                        v604 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                        goto LABEL_1245;
                                      }

                                      v600 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1235:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2170, v600);
                                    }

                                    v600 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                    goto LABEL_1235;
                                  }

                                  v595 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1214:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2169, v595);
                                }

                                v595 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
                                goto LABEL_1214;
                              }

                              v590 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1194:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2168, v590);
                            }
                          }

                          v590 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                          goto LABEL_1194;
                        }

                        v583 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1170:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2167, v583);
                      }

                      v583 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                      goto LABEL_1170;
                    }

                    v575 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1139:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2166, v575);
                  }

                  v575 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
                  goto LABEL_1139;
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2165, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
              }

              v558 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1052:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2164, v558);
            }
          }

          v558 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          goto LABEL_1052;
        }

        v543 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_992:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2163, v543);
      }

      v543 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      goto LABEL_992;
    }

    v249 = a1;
    v250 = *a1;
    v251 = a1[2];
    v252 = a1[4];
    v253 = a1[6];
    v254 = a1[8];
    v255 = a1[10];
    v256 = a1[12];
    v257 = a1[14];
    v632 = a1 + 18;
    v258 = v249[16];
    v259 = v258;
    if (v258)
    {
      v260 = *v632;
      v261 = *(v632 + 1);
      v262 = *(v632 + 2);
      v263 = *(v632 + 3);
      v264 = *(v632 + 4);
      v265 = *(v632 + 5);
      v266 = *(v632 + 6);
    }

    else
    {
      v266 = 0;
      v265 = 0;
      v264 = 0;
      v263 = 0;
      v262 = 0;
      v261 = 0;
      v260 = 0;
    }

    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    }

    else if (*v16 > v26)
    {
      if (*v625 == 2)
      {
        v354 = *a3;
        *(a3 + 6) = v25 + 3;
        *(v354 + (v25 + 2)) = 9 * v258 + 16;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else
        {
          v355 = *v624;
          if (*v16 > v355)
          {
            if (*v625 == 2)
            {
              v356 = *a3;
              *(a3 + 6) = v355 + 1;
              *(v356 + v355) = v250;
              if (*(a3 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
              }

              else if (*v16 - *v624 > 2)
              {
                if (*v625 == 2)
                {
                  if (!HIBYTE(v251))
                  {
                    *(*a3 + *v624) = v251;
                    *(*a3 + *(a3 + 6) + 1) = BYTE1(v251);
                    *(*a3 + *(a3 + 6) + 2) = BYTE2(v251);
                    v357 = *(a3 + 6) + 3;
                    *(a3 + 6) = v357;
                    if (*(a3 + 15))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                    }

                    else if (*v16 - v357 > 2)
                    {
                      if (*v625 == 2)
                      {
                        if (!HIBYTE(v252))
                        {
                          *(*a3 + v357) = v252;
                          *(*a3 + *(a3 + 6) + 1) = BYTE1(v252);
                          *(*a3 + *(a3 + 6) + 2) = BYTE2(v252);
                          v358 = *(a3 + 6);
                          *(a3 + 6) = v358 + 3;
                          if (*(a3 + 15))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                          }

                          else
                          {
                            v18 = a3 + 14;
                            if (*v16 > (v358 + 3))
                            {
                              if (*v625 == 2)
                              {
                                v359 = *a3;
                                *(a3 + 6) = v358 + 4;
                                *(v359 + (v358 + 3)) = v253;
                                if (*(a3 + 15))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                }

                                else
                                {
                                  v360 = *v624;
                                  if (*v16 > v360)
                                  {
                                    if (*v625 == 2)
                                    {
                                      v361 = *a3;
                                      *(a3 + 6) = v360 + 1;
                                      *(v361 + v360) = v254;
                                      if (*(a3 + 15))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                      }

                                      else
                                      {
                                        v362 = *v624;
                                        if (*v16 > v362)
                                        {
                                          if (*v625 == 2)
                                          {
                                            v363 = *a3;
                                            *(a3 + 6) = v362 + 1;
                                            *(v363 + v362) = v255;
                                            if (*(a3 + 15))
                                            {
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                            }

                                            else if (*v16 - *v624 > 1)
                                            {
                                              if (*v625 == 2)
                                              {
                                                *(*a3 + *v624) = v256;
                                                *(*a3 + *(a3 + 6) + 1) = BYTE1(v256);
                                                v364 = *(a3 + 6) + 2;
                                                *(a3 + 6) = v364;
                                                if (*(a3 + 15))
                                                {
                                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                                }

                                                else if (*v16 - v364 > 1)
                                                {
                                                  if (*v625 == 2)
                                                  {
                                                    *(*a3 + v364) = v257;
                                                    *(*a3 + *(a3 + 6) + 1) = BYTE1(v257);
                                                    v365 = *(a3 + 6);
                                                    *(a3 + 6) = v365 + 2;
                                                    if (*(a3 + 15))
                                                    {
                                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                                    }

                                                    else if (*v16 > (v365 + 2))
                                                    {
                                                      if (*v625 == 2)
                                                      {
                                                        v366 = *a3;
                                                        *(a3 + 6) = v365 + 3;
                                                        *(v366 + (v365 + 2)) = v258;
                                                        if (v258)
                                                        {
                                                          while (!*(a3 + 15))
                                                          {
                                                            v367 = *v624;
                                                            if (*v16 <= v367)
                                                            {
                                                              goto LABEL_756;
                                                            }

                                                            if (*v625 != 2)
                                                            {
                                                              v491 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                              goto LABEL_757;
                                                            }

                                                            v368 = *v260;
                                                            v369 = *a3;
                                                            *(a3 + 6) = v367 + 1;
                                                            *(v369 + v367) = v368;
                                                            if (*(a3 + 15))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_752:
                                                              v490 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_753:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2077, v490);
                                                            }

                                                            if (*v16 - *v624 <= 1)
                                                            {
                                                              goto LABEL_752;
                                                            }

                                                            if (*v625 != 2)
                                                            {
                                                              v490 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                              goto LABEL_753;
                                                            }

                                                            *(*a3 + *v624) = *v261;
                                                            *(*a3 + *(a3 + 6) + 1) = v261[1];
                                                            v370 = *(a3 + 6) + 2;
                                                            *(a3 + 6) = v370;
                                                            if (*(a3 + 15))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_748:
                                                              v489 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_749:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2078, v489);
                                                            }

                                                            if (*v16 - v370 <= 1)
                                                            {
                                                              goto LABEL_748;
                                                            }

                                                            if (*v625 != 2)
                                                            {
                                                              v489 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                              goto LABEL_749;
                                                            }

                                                            *(*a3 + v370) = *v262;
                                                            *(*a3 + *(a3 + 6) + 1) = v262[1];
                                                            v371 = *(a3 + 6);
                                                            *(a3 + 6) = v371 + 2;
                                                            if (*(a3 + 15))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_744:
                                                              v488 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_745:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2079, v488);
                                                            }

                                                            if (*v16 <= (v371 + 2))
                                                            {
                                                              goto LABEL_744;
                                                            }

                                                            if (*v625 != 2)
                                                            {
                                                              v488 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                              goto LABEL_745;
                                                            }

                                                            v372 = *v263;
                                                            v373 = *a3;
                                                            *(a3 + 6) = v371 + 3;
                                                            *(v373 + (v371 + 2)) = v372;
                                                            if (*(a3 + 15))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_740:
                                                              v487 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_741:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2080, v487);
                                                            }

                                                            v374 = *v624;
                                                            if (*v16 <= v374)
                                                            {
                                                              goto LABEL_740;
                                                            }

                                                            if (*v625 != 2)
                                                            {
                                                              v487 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                              goto LABEL_741;
                                                            }

                                                            v375 = *v264;
                                                            v376 = *a3;
                                                            *(a3 + 6) = v374 + 1;
                                                            *(v376 + v374) = v375;
                                                            if (*(a3 + 15))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_737:
                                                              v486 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_763:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2081, v486);
                                                            }

                                                            v377 = *v624;
                                                            if (*v16 <= v377)
                                                            {
                                                              goto LABEL_737;
                                                            }

                                                            if (*v625 != 2)
                                                            {
                                                              v486 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                              goto LABEL_763;
                                                            }

                                                            v378 = *v265;
                                                            v379 = *a3;
                                                            *(a3 + 6) = v377 + 1;
                                                            *(v379 + v377) = v378;
                                                            if (*(a3 + 15))
                                                            {
                                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_760:
                                                              v492 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_761:
                                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2082, v492);
                                                            }

                                                            v380 = *v624;
                                                            if (*v16 <= v380)
                                                            {
                                                              goto LABEL_760;
                                                            }

                                                            if (*v625 != 2)
                                                            {
                                                              v492 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                                              goto LABEL_761;
                                                            }

                                                            v68 = 0;
                                                            v381 = *v266++;
                                                            v382 = *a3;
                                                            *(a3 + 6) = v380 + 1;
                                                            *(v382 + v380) = v381;
                                                            ++v265;
                                                            ++v264;
                                                            ++v263;
                                                            v262 += 2;
                                                            v261 += 2;
                                                            ++v260;
                                                            if (!--v259)
                                                            {
                                                              goto LABEL_637;
                                                            }
                                                          }

                                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_756:
                                                          v491 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_757:
                                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2076, v491);
                                                        }

                                                        goto LABEL_622;
                                                      }

                                                      v607 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1259:
                                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2073, v607);
                                                    }

                                                    v607 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                                    goto LABEL_1259;
                                                  }

                                                  v605 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1251:
                                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2072, v605);
                                                }

                                                v605 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
                                                goto LABEL_1251;
                                              }

                                              v603 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1243:
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2071, v603);
                                            }

                                            v603 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
                                            goto LABEL_1243;
                                          }

                                          v598 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1229:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2070, v598);
                                        }
                                      }

                                      v598 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                      goto LABEL_1229;
                                    }

                                    v593 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1210:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2069, v593);
                                  }
                                }

                                v593 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                goto LABEL_1210;
                              }

                              v587 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1188:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2068, v587);
                            }
                          }

                          v587 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                          goto LABEL_1188;
                        }

                        v580 = "0 == ((SDU_Interval_S_To_M) & 0xFF000000)";
                      }

                      else
                      {
                        v580 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                      }

LABEL_1162:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2067, v580);
                    }

                    v580 = "ByteStream_NumReadBytesAvail(*pBs) >= 3";
                    goto LABEL_1162;
                  }

                  v570 = "0 == ((SDU_Interval_M_To_S) & 0xFF000000)";
                }

                else
                {
                  v570 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2066, v570);
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2066, "ByteStream_NumReadBytesAvail(*pBs) >= 3");
            }

            v560 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1056:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2065, v560);
          }
        }

        v560 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_1056;
      }

      v545 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_996:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2064, v545);
    }

    v545 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_996;
  }

  if (v17 <= 255)
  {
    if (v17 != 239)
    {
      if (v17 != 253)
      {
        if (v17 != 255)
        {
          goto LABEL_161;
        }

        v135 = a1;
        v136 = *a1;
        v137 = a1[2];
        v138 = a1[4];
        v139 = a1[6];
        v140 = a1[8];
        v630 = (a1 + 12);
        v141 = v135[10];
        v142 = v141;
        if (v141)
        {
          v143 = *v630;
        }

        else
        {
          v143 = 0;
        }

        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else if (*v16 > v26)
        {
          if (*v625 == 2)
          {
            v426 = *a3;
            *(a3 + 6) = v25 + 3;
            *(v426 + (v25 + 2)) = v141 + 8;
            if (*(a3 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
            }

            else if (*v16 - *v624 > 1)
            {
              if (*v625 == 2)
              {
                *(*a3 + *v624) = v136;
                *(*a3 + *(a3 + 6) + 1) = BYTE1(v136);
                v427 = *(a3 + 6) + 2;
                *(a3 + 6) = v427;
                if (*(a3 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                }

                else if (*v16 - v427 > 1)
                {
                  if (*v625 == 2)
                  {
                    *(*a3 + v427) = v137;
                    *(*a3 + *(a3 + 6) + 1) = BYTE1(v137);
                    v428 = *(a3 + 6);
                    *(a3 + 6) = v428 + 2;
                    if (*(a3 + 15))
                    {
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                    }

                    else if (*v16 > (v428 + 2))
                    {
                      if (*v625 == 2)
                      {
                        v429 = *a3;
                        *(a3 + 6) = v428 + 3;
                        *(v429 + (v428 + 2)) = v138;
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                        }

                        else
                        {
                          v430 = *v624;
                          if (*v16 > v430)
                          {
                            if (*v625 == 2)
                            {
                              v431 = *a3;
                              *(a3 + 6) = v430 + 1;
                              *(v431 + v430) = v139;
                              if (*(a3 + 15))
                              {
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                              }

                              else
                              {
                                v432 = *v624;
                                if (*v16 > v432)
                                {
                                  if (*v625 == 2)
                                  {
                                    v433 = *a3;
                                    *(a3 + 6) = v432 + 1;
                                    *(v433 + v432) = v140;
                                    if (*(a3 + 15))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                    }

                                    else
                                    {
                                      v434 = *v624;
                                      if (*v16 > v434)
                                      {
                                        if (*v625 == 2)
                                        {
                                          v435 = *a3;
                                          *(a3 + 6) = v434 + 1;
                                          *(v435 + v434) = v141;
                                          v397 = *a3;
                                          v398 = *(a3 + 6);
                                          if (*(a3 + 15))
                                          {
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                            v18 = a3 + 14;
                                            v436 = 0;
                                          }

                                          else
                                          {
                                            v436 = *v16 - v398;
                                          }

                                          if (v436 < v142)
                                          {
                                            v602 = "ByteStream_NumReadBytesAvail(*pBs) >= (responseDataLength)";
                                          }

                                          else
                                          {
                                            if (*v18 == 2)
                                            {
LABEL_634:
                                              memmove((v397 + v398), v143, v142);
                                              v68 = 0;
                                              v23 = a3 + 6;
                                              v461 = *v624 + v142;
                                              goto LABEL_635;
                                            }

                                            v602 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                          }

                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2370, v602);
                                        }

                                        v596 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1218:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2369, v596);
                                      }
                                    }

                                    v596 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                    goto LABEL_1218;
                                  }

                                  v591 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1198:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2368, v591);
                                }
                              }

                              v591 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                              goto LABEL_1198;
                            }

                            v584 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1174:
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2367, v584);
                          }
                        }

                        v584 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                        goto LABEL_1174;
                      }

                      v578 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1145:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2366, v578);
                    }

                    v578 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                    goto LABEL_1145;
                  }

                  v567 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1103:
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2365, v567);
                }

                v567 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
                goto LABEL_1103;
              }

              v564 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1064:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2364, v564);
            }

            v564 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
            goto LABEL_1064;
          }

          v549 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1004:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2363, v549);
        }

        v549 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_1004;
      }

      v277 = a1;
      v278 = *a1;
      v635 = a1 + 4;
      v279 = v277[2];
      v280 = v279;
      if (v279)
      {
        v281 = *v635;
        v282 = *(v635 + 1);
        v283 = *(v635 + 2);
        v284 = *(v635 + 3);
        v285 = *(v635 + 4);
      }

      else
      {
        v281 = 0;
        v282 = 0;
        v283 = 0;
        v284 = 0;
        v285 = 0;
      }

      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
      }

      else if (*v16 > v26)
      {
        if (*v625 == 2)
        {
          v400 = *a3;
          v401 = (v25 + 2);
          *(a3 + 6) = v25 + 3;
          *(v400 + v401) = (4 * v279) | 2;
          if (*(a3 + 15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
          }

          else
          {
            v402 = *v624;
            if (*v16 > v402)
            {
              if (*v625 == 2)
              {
                v403 = *a3;
                *(a3 + 6) = v402 + 1;
                *(v403 + v402) = v278;
                if (*(a3 + 15))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                }

                else
                {
                  v404 = *v624;
                  if (*v16 > v404)
                  {
                    if (*v625 != 2)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2318, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                    }

                    v611 = v401;
                    v613 = v400;
                    v615 = (4 * v279) | 2;
                    v405 = *a3;
                    *(a3 + 6) = v404 + 1;
                    *(v405 + v404) = v279;
                    v406 = 0;
                    if (v279)
                    {
                      while (!*(a3 + 15))
                      {
                        v407 = *v23;
                        v408 = a3 + 14;
                        if (*v16 <= v407)
                        {
                          goto LABEL_734;
                        }

                        if (*v625 != 2)
                        {
                          v485 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                          goto LABEL_735;
                        }

                        v409 = *v281;
                        v410 = *a3;
                        *(a3 + 6) = v407 + 1;
                        *(v410 + v407) = v409;
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_730:
                          v484 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_731:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2322, v484);
                        }

                        v411 = *v23;
                        if (*v16 <= v411)
                        {
                          goto LABEL_730;
                        }

                        if (*v625 != 2)
                        {
                          v484 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                          goto LABEL_731;
                        }

                        v412 = *v282;
                        v413 = *a3;
                        *(a3 + 6) = v411 + 1;
                        *(v413 + v411) = v412;
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_726:
                          v483 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_727:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2323, v483);
                        }

                        v414 = *v23;
                        if (*v16 <= v414)
                        {
                          goto LABEL_726;
                        }

                        if (*v625 != 2)
                        {
                          v483 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                          goto LABEL_727;
                        }

                        v415 = *v283;
                        v416 = *a3;
                        *(a3 + 6) = v414 + 1;
                        *(v416 + v414) = v415;
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_722:
                          v482 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_723:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2325, v482);
                        }

                        v417 = *v23;
                        if (*v16 <= v417)
                        {
                          goto LABEL_722;
                        }

                        if (*v625 != 2)
                        {
                          v482 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                          goto LABEL_723;
                        }

                        v418 = v13;
                        v617 = v282;
                        v620 = v281;
                        v623 = v280;
                        v419 = *v284;
                        v420 = *a3;
                        *(a3 + 6) = v417 + 1;
                        *(v420 + v417) = v419;
                        v421 = *a3;
                        v422 = *(a3 + 6);
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                          v408 = a3 + 14;
                          v423 = 0;
                        }

                        else
                        {
                          v423 = *v16 - v422;
                        }

                        v424 = *v284;
                        if (v423 < v424)
                        {
                          v481 = "ByteStream_NumReadBytesAvail(*pBs) >= (subeventDataLength[i])";
                          goto LABEL_719;
                        }

                        if (*v408 != 2)
                        {
                          v481 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_719:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2326, v481);
                        }

                        v406 += v419;
                        memmove((v421 + v422), v285, v424);
                        v425 = *v284++;
                        v23 = a3 + 6;
                        v285 += v406;
                        *v624 += v425;
                        ++v283;
                        v282 = v617 + 1;
                        v281 = v620 + 1;
                        v280 = v623 - 1;
                        v13 = v418;
                        if (v623 == 1)
                        {
                          goto LABEL_543;
                        }
                      }

                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_734:
                      v485 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_735:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2321, v485);
                    }

LABEL_543:
                    v68 = 0;
                    *(v613 + v611) = v406 + v615;
                    goto LABEL_636;
                  }
                }

                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2318, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
              }

              v563 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1062:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2317, v563);
            }
          }

          v563 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
          goto LABEL_1062;
        }

        v548 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1002:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2316, v548);
      }

      v548 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      goto LABEL_1002;
    }

    v286 = a1;
    v287 = *a1;
    v288 = a1[2];
    v289 = a1[4];
    v290 = *(a1 + 3);
    v291 = a1[8];
    v292 = a1[10];
    v636 = (a1 + 14);
    v293 = v286[12];
    v294 = v293;
    if (v293)
    {
      v295 = *v636;
    }

    else
    {
      v295 = 0;
    }

    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    }

    else if (*v16 > v26)
    {
      if (*v625 == 2)
      {
        v437 = *a3;
        *(a3 + 6) = v25 + 3;
        *(v437 + (v25 + 2)) = v293 + 25;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else
        {
          v438 = *v624;
          if (*v16 > v438)
          {
            if (*v625 == 2)
            {
              v439 = *a3;
              *(a3 + 6) = v438 + 1;
              *(v439 + v438) = v287;
              if (*(a3 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
              }

              else if (*v16 - *v624 > 1)
              {
                if (*v625 == 2)
                {
                  *(*a3 + *v624) = v288;
                  *(*a3 + *(a3 + 6) + 1) = BYTE1(v288);
                  v440 = *(a3 + 6);
                  *(a3 + 6) = v440 + 2;
                  if (*(a3 + 15))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                  }

                  else if (*v16 > (v440 + 2))
                  {
                    if (*v625 == 2)
                    {
                      v441 = *a3;
                      *(a3 + 6) = v440 + 3;
                      *(v441 + (v440 + 2)) = v289;
                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                      }

                      else
                      {
                        v442 = *(a3 + 6);
                        if (*v16 - v442 > 0xF)
                        {
                          if (*v625 == 2)
                          {
                            *(*a3 + v442) = *v290;
                            v443 = *(a3 + 6);
                            *(a3 + 6) = v443 + 16;
                            if (*(a3 + 15))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                            }

                            else if (*v16 > (v443 + 16))
                            {
                              if (*v625 == 2)
                              {
                                v444 = *a3;
                                *(a3 + 6) = v443 + 17;
                                *(v444 + (v443 + 16)) = v291;
                                if (*(a3 + 15))
                                {
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                }

                                else if (*v16 - *v624 > 1)
                                {
                                  if (*v625 == 2)
                                  {
                                    *(*a3 + *v624) = v292;
                                    *(*a3 + *(a3 + 6) + 1) = BYTE1(v292);
                                    v445 = *(a3 + 6);
                                    *(a3 + 6) = v445 + 2;
                                    if (*(a3 + 15))
                                    {
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                                    }

                                    else if (*v16 > (v445 + 2))
                                    {
                                      if (*v625 == 2)
                                      {
                                        v446 = *a3;
                                        *(a3 + 6) = v445 + 3;
                                        *(v446 + (v445 + 2)) = v293;
                                        if (v293)
                                        {
                                          while (!*(a3 + 15))
                                          {
                                            v447 = *v624;
                                            if (*v16 <= v447)
                                            {
                                              goto LABEL_667;
                                            }

                                            if (*v625 != 2)
                                            {
                                              v468 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                                              goto LABEL_668;
                                            }

                                            v448 = *v295++;
                                            v449 = *a3;
                                            *(a3 + 6) = v447 + 1;
                                            *(v449 + v447) = v448;
                                            if (!--v294)
                                            {
                                              goto LABEL_598;
                                            }
                                          }

                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_667:
                                          v468 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_668:
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2277, v468);
                                        }

LABEL_598:
                                        if (a7)
                                        {
                                          v68 = 0;
                                          *a7 = v287;
                                          goto LABEL_637;
                                        }

LABEL_622:
                                        v68 = 0;
                                        goto LABEL_637;
                                      }

                                      v601 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1239:
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2274, v601);
                                    }

                                    v601 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                                    goto LABEL_1239;
                                  }

                                  v597 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1220:
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2273, v597);
                                }

                                v597 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
                                goto LABEL_1220;
                              }

                              v592 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1200:
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2272, v592);
                            }

                            v592 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                            goto LABEL_1200;
                          }

                          v585 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1176:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2271, v585);
                        }
                      }

                      v585 = "ByteStream_NumReadBytesAvail(*pBs) >= (BROADCAST_CODE_SIZE)";
                      goto LABEL_1176;
                    }

                    v579 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1147:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2270, v579);
                  }

                  v579 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                  goto LABEL_1147;
                }

                v568 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1105:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2269, v568);
              }

              v568 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
              goto LABEL_1105;
            }

            v565 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1066:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2268, v565);
          }
        }

        v565 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_1066;
      }

      v550 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1006:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2267, v550);
    }

    v550 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_1006;
  }

  if (v17 > 257)
  {
    if (v17 != 258)
    {
      if (v17 == 259)
      {
        v144 = *a1;
        v145 = *(a1 + 1);
        v146 = *(a1 + 2);
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else if (*v16 > v26)
        {
          if (*v625 == 2)
          {
            v147 = *(a1 + 3);
            v148 = *a3;
            *(a3 + 6) = v25 + 3;
            *(v148 + (v25 + 2)) = (18 * v144) | 1;
            if (*(a3 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
            }

            else
            {
              v149 = *v624;
              if (*v16 > v149)
              {
                if (*v625 == 2)
                {
                  v150 = *a3;
                  *(a3 + 6) = v149 + 1;
                  *(v150 + v149) = v144;
                  v151 = v144;
                  if (v144)
                  {
                    while (!*(a3 + 15))
                    {
                      v152 = *v624;
                      if (*v16 <= v152)
                      {
                        goto LABEL_691;
                      }

                      if (*v625 != 2)
                      {
                        v474 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                        goto LABEL_692;
                      }

                      v153 = *v145;
                      v154 = *a3;
                      *(a3 + 6) = v152 + 1;
                      *(v154 + v152) = v153;
                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_687:
                        v473 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_688:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2540, v473);
                      }

                      v155 = *v624;
                      if (*v16 <= v155)
                      {
                        goto LABEL_687;
                      }

                      if (*v625 != 2)
                      {
                        v473 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                        goto LABEL_688;
                      }

                      v156 = *v146;
                      v157 = *a3;
                      *(a3 + 6) = v155 + 1;
                      *(v157 + v155) = v156;
                      if (*(a3 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_683:
                        v472 = "ByteStream_NumReadBytesAvail(*pBs) >= (16)";
LABEL_684:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2541, v472);
                      }

                      v158 = *(a3 + 6);
                      if (*v16 - v158 <= 15)
                      {
                        goto LABEL_683;
                      }

                      if (*v625 != 2)
                      {
                        v472 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                        goto LABEL_684;
                      }

                      v68 = 0;
                      v159 = *v147++;
                      *(*a3 + v158) = v159;
                      *v624 += 16;
                      ++v146;
                      ++v145;
                      if (!--v151)
                      {
                        goto LABEL_637;
                      }
                    }

                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_691:
                    v474 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_692:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2539, v474);
                  }

                  goto LABEL_622;
                }

                v554 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1044:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2536, v554);
              }
            }

            v554 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
            goto LABEL_1044;
          }

          v539 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_984:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2535, v539);
        }

        v539 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_984;
      }

LABEL_161:
      sub_10000C1E8(v15);
      return v24;
    }

    v273 = a1;
    v274 = *a1;
    v275 = a1[2];
    v634 = (a1 + 6);
    v276 = v273[4];
    v142 = v276;
    if (v276)
    {
      v143 = *v634;
    }

    else
    {
      v143 = 0;
    }

    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    }

    else if (*v16 > v26)
    {
      if (*v625 == 2)
      {
        v390 = *a3;
        *(a3 + 6) = v25 + 3;
        *(v390 + (v25 + 2)) = v276 + 3;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else
        {
          v391 = *v624;
          if (*v16 > v391)
          {
            if (*v625 == 2)
            {
              v392 = *a3;
              *(a3 + 6) = v391 + 1;
              *(v392 + v391) = v274;
              if (*(a3 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
              }

              else
              {
                v393 = *v624;
                if (*v16 > v393)
                {
                  if (*v625 != 2)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2510, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                  }

                  v394 = *a3;
                  *(a3 + 6) = v393 + 1;
                  *(v394 + v393) = v275;
                  if (*(a3 + 15))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                  }

                  else
                  {
                    v395 = *v624;
                    if (*v16 > v395)
                    {
                      if (*v625 == 2)
                      {
                        v396 = *a3;
                        *(a3 + 6) = v395 + 1;
                        *(v396 + v395) = v276;
                        v397 = *a3;
                        v398 = *(a3 + 6);
                        if (*(a3 + 15))
                        {
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
                          v18 = a3 + 14;
                          v399 = 0;
                        }

                        else
                        {
                          v399 = *v16 - v398;
                        }

                        if (v399 < v142)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2512, "ByteStream_NumReadBytesAvail(*pBs) >= (decisionDataLength)");
                        }

                        if (*v18 != 2)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2512, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
                        }

                        goto LABEL_634;
                      }

                      v577 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1143:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2511, v577);
                    }
                  }

                  v577 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
                  goto LABEL_1143;
                }
              }

              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2510, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
            }

            v562 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1060:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2509, v562);
          }
        }

        v562 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
        goto LABEL_1060;
      }

      v547 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1000:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2508, v547);
    }

    v547 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_1000;
  }

  if (v17 == 256)
  {
    v267 = a1;
    v268 = *a1;
    v269 = a1[2];
    v633 = (a1 + 6);
    v270 = v267[4];
    v271 = v270;
    if (v270)
    {
      v272 = *v633;
    }

    else
    {
      v272 = 0;
    }

    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    }

    else if (*v16 > v26)
    {
      if (*v625 == 2)
      {
        v383 = *a3;
        *(a3 + 6) = v25 + 3;
        *(v383 + (v25 + 2)) = v270 + 5;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        }

        else if (*v16 - *v624 > 1)
        {
          if (*v625 == 2)
          {
            *(*a3 + *v624) = v268;
            *(*a3 + *(a3 + 6) + 1) = BYTE1(v268);
            v384 = *(a3 + 6) + 2;
            *(a3 + 6) = v384;
            if (*(a3 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
            }

            else if (*v16 - v384 > 1)
            {
              if (*v625 != 2)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2397, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
              }

              *(*a3 + v384) = v269;
              *(*a3 + *(a3 + 6) + 1) = BYTE1(v269);
              v385 = *(a3 + 6);
              *(a3 + 6) = v385 + 2;
              if (*(a3 + 15))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
              }

              else if (*v16 > (v385 + 2))
              {
                if (*v625 == 2)
                {
                  v386 = *a3;
                  *(a3 + 6) = v385 + 3;
                  *(v386 + (v385 + 2)) = v270;
                  if (v270)
                  {
                    while (!*(a3 + 15))
                    {
                      v387 = *v624;
                      if (*v16 <= v387)
                      {
                        goto LABEL_663;
                      }

                      if (*v625 != 2)
                      {
                        v467 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
                        goto LABEL_664;
                      }

                      v68 = 0;
                      v388 = *v272++;
                      v389 = *a3;
                      *(a3 + 6) = v387 + 1;
                      *(v389 + v387) = v388;
                      if (!--v271)
                      {
                        goto LABEL_637;
                      }
                    }

                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_663:
                    v467 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_664:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2400, v467);
                  }

                  goto LABEL_622;
                }

                v576 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1141:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2398, v576);
              }

              v576 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
              goto LABEL_1141;
            }

            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2397, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
          }

          v561 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1058:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2396, v561);
        }

        v561 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
        goto LABEL_1058;
      }

      v546 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_998:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2395, v546);
    }

    v546 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_998;
  }

  v27 = 0;
  v28 = *a1;
  v29 = a1[2];
  v30 = a1[4];
  v31 = a1[6];
  v32 = a1[8];
  v33 = *(a1 + 5);
  v34 = a1[12];
  v35 = *(a1 + 7);
  v36 = *(a1 + 8);
  v37 = *(a1 + 9);
  v38 = *(a1 + 10);
  v39 = *(a1 + 11);
  v40 = *(a1 + 12);
  v41 = *(a1 + 13);
  v42 = *(a1 + 14);
  v43 = 8;
  v44 = v34;
  do
  {
    v27 += v44 & 1;
    v44 >>= 1;
    --v43;
  }

  while (v43);
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_950;
  }

  if (*v16 <= v26)
  {
LABEL_950:
    v537 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_980;
  }

  if (*v625 != 2)
  {
    v537 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_980:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2454, v537);
  }

  v45 = *a3;
  *(a3 + 6) = v25 + 3;
  *(v45 + (v25 + 2)) = (16 * v27) | 0xC;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_1010;
  }

  v46 = *v624;
  if (*v16 <= v46)
  {
LABEL_1010:
    v552 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_1040;
  }

  if (*v625 != 2)
  {
    v552 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1040:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2455, v552);
  }

  v47 = *a3;
  *(a3 + 6) = v46 + 1;
  *(v47 + v46) = v28;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_1070:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2456, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v48 = *v624;
  if (*v16 <= v48)
  {
    goto LABEL_1070;
  }

  if (*v625 != 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2456, "(*pBs).__RWFlag == BYTESTREAM_WRITE");
  }

  v49 = *a3;
  *(a3 + 6) = v48 + 1;
  *(v49 + v48) = v29;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_1109;
  }

  v50 = *v624;
  if (*v16 <= v50)
  {
LABEL_1109:
    v571 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_1131;
  }

  if (*v625 != 2)
  {
    v571 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1131:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2457, v571);
  }

  v51 = *a3;
  *(a3 + 6) = v50 + 1;
  *(v51 + v50) = v30;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_1149;
  }

  v52 = *v624;
  if (*v16 <= v52)
  {
LABEL_1149:
    v581 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_1166;
  }

  if (*v625 != 2)
  {
    v581 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1166:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2458, v581);
  }

  v53 = *a3;
  *(a3 + 6) = v52 + 1;
  *(v53 + v52) = v31;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_1178;
  }

  v54 = *v624;
  if (*v16 <= v54)
  {
LABEL_1178:
    v588 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_1190;
  }

  if (*v625 != 2)
  {
    v588 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1190:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2459, v588);
  }

  v55 = *a3;
  *(a3 + 6) = v54 + 1;
  *(v55 + v54) = v32;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_1202;
  }

  v56 = *v624;
  if (*v16 - v56 <= 5)
  {
LABEL_1202:
    v594 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
    goto LABEL_1212;
  }

  v612 = v39;
  v614 = v38;
  v616 = v37;
  v618 = v36;
  v621 = v35;
  if (*v625 != 2)
  {
    v594 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1212:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2460, v594);
  }

  v57 = v33;
  sub_1000075EC((*a3 + v56), v33, 6uLL);
  v58 = *(a3 + 6);
  *(a3 + 6) = v58 + 6;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_1222;
  }

  v18 = a3 + 14;
  if (*v16 <= (v58 + 6))
  {
LABEL_1222:
    v599 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_1233;
  }

  v23 = a3 + 6;
  if (*v625 != 2)
  {
    v599 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_1233:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2461, v599);
  }

  v59 = 0;
  v60 = *a3;
  *(a3 + 6) = v58 + 7;
  *(v60 + (v58 + 6)) = v34;
  do
  {
    if (v34)
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_870:
        v519 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_871:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2467, v519);
      }

      if (*v16 - *v624 <= 1)
      {
        goto LABEL_870;
      }

      if (*v625 != 2)
      {
        v519 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_871;
      }

      *(*a3 + *v624) = *(v621 + v59);
      *(*a3 + *(a3 + 6) + 1) = *(v621 + v59 + 1);
      v61 = *(a3 + 6) + 2;
      *(a3 + 6) = v61;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_838:
        v511 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_839:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2468, v511);
      }

      if (*v16 - v61 <= 1)
      {
        goto LABEL_838;
      }

      if (*v625 != 2)
      {
        v511 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_839;
      }

      *(*a3 + v61) = *(v618 + v59);
      *(*a3 + *(a3 + 6) + 1) = *(v618 + v59 + 1);
      v62 = *(a3 + 6) + 2;
      *(a3 + 6) = v62;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_866:
        v518 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_867:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2469, v518);
      }

      if (*v16 - v62 <= 1)
      {
        goto LABEL_866;
      }

      if (*v625 != 2)
      {
        v518 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_867;
      }

      *(*a3 + v62) = *(v616 + v59);
      *(*a3 + *(a3 + 6) + 1) = *(v616 + v59 + 1);
      v63 = *(a3 + 6) + 2;
      *(a3 + 6) = v63;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_834:
        v510 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_835:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2470, v510);
      }

      if (*v16 - v63 <= 1)
      {
        goto LABEL_834;
      }

      if (*v625 != 2)
      {
        v510 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_835;
      }

      *(*a3 + v63) = *(v614 + v59);
      *(*a3 + *(a3 + 6) + 1) = *(v614 + v59 + 1);
      v64 = *(a3 + 6) + 2;
      *(a3 + 6) = v64;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_862:
        v517 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_863:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2471, v517);
      }

      if (*v16 - v64 <= 1)
      {
        goto LABEL_862;
      }

      if (*v625 != 2)
      {
        v517 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_863;
      }

      *(*a3 + v64) = *(v612 + v59);
      *(*a3 + *(a3 + 6) + 1) = *(v612 + v59 + 1);
      v65 = *(a3 + 6) + 2;
      *(a3 + 6) = v65;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_830:
        v509 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_831:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2472, v509);
      }

      if (*v16 - v65 <= 1)
      {
        goto LABEL_830;
      }

      if (*v625 != 2)
      {
        v509 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_831;
      }

      *(*a3 + v65) = *(v40 + v59);
      *(*a3 + *(a3 + 6) + 1) = *(v40 + v59 + 1);
      v66 = *(a3 + 6) + 2;
      *(a3 + 6) = v66;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_858:
        v516 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_859:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2473, v516);
      }

      if (*v16 - v66 <= 1)
      {
        goto LABEL_858;
      }

      if (*v625 != 2)
      {
        v516 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_859;
      }

      *(*a3 + v66) = *(v41 + v59);
      *(*a3 + *(a3 + 6) + 1) = *(v41 + v59 + 1);
      v67 = *(a3 + 6) + 2;
      *(a3 + 6) = v67;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_826:
        v508 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_827:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2474, v508);
      }

      if (*v16 - v67 <= 1)
      {
        goto LABEL_826;
      }

      if (*v625 != 2)
      {
        v508 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_827;
      }

      *(*a3 + v67) = *(v42 + v59);
      *(*a3 + *(a3 + 6) + 1) = *(v42 + v59 + 1);
      *(a3 + 6) += 2;
    }

    LOBYTE(v34) = v34 >> 1;
    v59 += 2;
  }

  while (v59 != 16);
  *a4 = v32;
  if (!v57)
  {
    goto LABEL_622;
  }

  v68 = 0;
  v69 = *v57;
  *(a4 + 5) = *(v57 + 4);
  *(a4 + 1) = v69;
LABEL_637:
  if (*v18 == 2)
  {
    *v16 = *v23;
  }

  *v18 = 15;
  if (v68 && v13 != *v16)
  {
    sub_1000D660C();
  }

  return 0;
}

char *sub_10001EE38(unsigned int a1)
{
  if (a1 >= 0x114)
  {
    sub_1000D660C();
  }

  return &unk_100B52368 + 24 * a1;
}

uint64_t sub_10001EE74(uint64_t a1, unsigned int *a2)
{
  v17 = 0;
  sub_100016250(&v17);
  v4 = v17;
  v5 = *(a1 + 8);
  if (v5 == 1)
  {
    v9 = byte_100BCE140;
    if (!byte_100BCE140)
    {
      sub_1000D660C();
      v9 = byte_100BCE140;
    }

    v10 = 5 * v9 + v4;
    v6 = qword_100BCE0B8;
  }

  else
  {
    if (v5 != 14)
    {
      if (v5 == 15)
      {
        v6 = qword_100BCE0B8;
        v7 = *(qword_100BCE0B8 + 4);
      }

      else
      {
        v6 = qword_100BCE0B8;
        v7 = *(qword_100BCE0B8 + 5);
      }

      goto LABEL_11;
    }

    v8 = *(a1 + 4);
    if (v8 >> 10 >= 0x3F)
    {
      v6 = qword_100BCE0B8;
      v7 = *(qword_100BCE0B8 + 6);
LABEL_11:
      v10 = v17 + v7;
      goto LABEL_12;
    }

    v6 = qword_100BCE0B8;
    v16 = v8 == 3108;
    v10 = v17 + *(qword_100BCE0B8 + 3);
    if (v16)
    {
      v10 = v17 + *(qword_100BCE0B8 + 3) / 3u;
    }
  }

LABEL_12:
  *a1 = v10;
  v11 = word_100B5FC70;
  v12 = *(v6 + 2);
  if (word_100B5FC70 > v12)
  {
    sub_1000D660C();
    v11 = word_100B5FC70;
    v12 = *(qword_100BCE0B8 + 2);
  }

  if (v11 == v12)
  {
    return 603;
  }

  v14 = *(a1 + 16);
  v15 = (qword_100B5FC80 + 32 * v11);
  *v15 = *a1;
  v15[1] = v14;
  if (a2)
  {
    *a2 = v11;
  }

  word_100B5FC70 = v11 + 1;
  sub_100021E94();
  return 0;
}

uint64_t sub_10001EFEC(void *ptr, __int16 a2, _OWORD *a3)
{
  *&v10[6] = *a3;
  *&v10[4] = 0;
  *v10 = 0;
  *&v10[22] = a3[1];
  v5 = dword_100B5F8BC;
  v6 = *(qword_100BCE0B8 + 2);
  if (dword_100B5F8BC > v6)
  {
    sub_1000D660C();
    v5 = dword_100B5F8BC;
    v6 = *(qword_100BCE0B8 + 2);
  }

  if (v5 == v6)
  {
    sub_10000C1E8(ptr);
    return 611;
  }

  else
  {
    v8 = qword_100B5F8C8 + 48 * v5;
    *(v8 + 10) = *v10;
    *v8 = ptr;
    *(v8 + 8) = a2;
    *(v8 + 26) = *&v10[16];
    *(v8 + 40) = *&v10[30];
    v9 = v5 + 1;
    dword_100B5F8BC = v9;
    if (v9 > dword_100B5F8C0)
    {
      dword_100B5F8C0 = v9;
    }

    result = 0;
    if (byte_100B5F8B8 == 1)
    {
      if (byte_100BCE141)
      {
        sub_10001FA7C();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001F118(int a1, __int16 a2, unsigned int a3)
{
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v5 = &qword_100B55AA8;
LABEL_12:
        v7 = &dword_100000004;
        goto LABEL_15;
      }

      goto LABEL_23;
    }

    v5 = &qword_100B55A90;
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 5)
      {
        v5 = &qword_100B55AD8;
        v6 = 5;
        goto LABEL_11;
      }

      if (a1 == 243)
      {
        v5 = &qword_100B55AC0;
        v6 = -13;
LABEL_11:
        *(v5 + 16) = v6;
        goto LABEL_12;
      }

LABEL_23:
      sub_100304AF8("PCIe default packet type: 0x%x\n", a1);
      off_100B55A60("PCIe bad packet type", 1);
      return 101;
    }

    v5 = &qword_100B55AC0;
  }

  v7 = &_mh_execute_header.magic + 3;
LABEL_15:
  v8 = &unk_100B56000;
  if (byte_100B56AF0 == 1)
  {
    sub_1000D660C();
    return 118;
  }

  *(&word_100B55AF0 + &stru_100001000) = 1;
  word_100B55AF0 = a2;
  byte_100B55AF2 = a3;
  if (a1 == 2 || a1 == 243 || a1 == 5)
  {
    byte_100B55AF3 = BYTE1(a3);
  }

  if (a3)
  {
    sub_10001F6DC(&word_100B55AF0 + v7);
  }

  else
  {
    sub_10001F480();
  }

  if (!*v5 || (v10 = *(v5 + 2), v10 == -1))
  {
    sub_100304AF8("%s: invalid input parameter\n");
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    *__dst = 0u;
    os_channel_ring_id();
    os_channel_tx_ring();
    if (os_channel_get_next_slot())
    {
LABEL_34:
      v11 = v7 + a3;
      if (v11 <= WORD1(v13))
      {
        memcpy(__dst[0], &word_100B55AF0, v11);
        WORD1(v13) = v11;
        os_channel_set_slot_properties();
        if (os_channel_advance_slot())
        {
          sub_100304AF8("%s: failed to advance slot - %d\n");
        }

        else
        {
          if (!os_channel_sync())
          {
            byte_100B56AF0 = 0;
            return 625;
          }

          sub_100304AF8("%s: os_channel_sync tx failed\n");
        }
      }

      else
      {
        sub_100304AF8("%s: slot_len: %u, size_in: %zu\n");
      }
    }

    else
    {
      while (1)
      {
        sub_100304AF8("%s: empty slot. waiting for slot to become available\n", "skywalk_write_channel");
        memset(&eventlist, 0, sizeof(eventlist));
        if (kevent(v10, 0, 0, &eventlist, 1, 0) == -1 || eventlist.filter != 65534)
        {
          break;
        }

        if (os_channel_get_next_slot())
        {
          v8 = &unk_100B56000;
          goto LABEL_34;
        }
      }

      sub_100304AF8("%s: kevent error on sw_kq_write\n", "skywalk_write_channel");
      v8 = &unk_100B56000;
    }
  }

  v8[2800] = 0;
  if ((byte_100B55A59 & 1) == 0)
  {
    sub_100304AF8("PCIe Skywalk write failed: type %u\n", a1);
    off_100B55A60("PCIe Skywalk write failed", 1);
  }

  return 1205;
}

void sub_10001F480()
{
  v0 = __chkstk_darwin();
  if (!v1)
  {
    return;
  }

  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  bzero(&v12, 0x20006uLL);
  if (v4 != 4 || (byte_100B5C6E4 & 1) != 0)
  {
    if (v4 == 1 && (byte_100B5C6E5 & 1) == 0)
    {
      v8 = sub_1000043B0(v6, v5);
      goto LABEL_11;
    }

    v9 = &v14;
    v12 = v7;
    switch(v4)
    {
      case 0xF3:
        v13 = v5;
        if ((byte_100B5C6E0 & 1) == 0)
        {
          v10 = 4;
LABEL_37:
          v11 = sub_100004468(v4, 1);
          sub_1000045A8(&v12, v10, 0, v11);
          return;
        }

        break;
      case 5:
        v13 = v5;
        if ((byte_100B5C6E0 & 1) == 0)
        {
          if ((v7 & 0x4000) != 0)
          {
            LODWORD(v5) = 8;
          }

          else
          {
            LODWORD(v5) = 4;
          }

          if ((v7 & 0x4000) != 0)
          {
            v10 = 12;
          }

          else
          {
            v10 = 8;
          }

          v8 = -1;
          goto LABEL_34;
        }

        break;
      case 2:
        v13 = v5;
        if (v5 >= 4 && (byte_100B5C6E0 & 1) == 0 && word_100B5C6F8 && word_100B5C6F8 == v6[1])
        {
          v8 = -1;
          LODWORD(v5) = 21;
          v10 = 25;
LABEL_34:
          __memcpy_chk();
LABEL_35:
          if (v8 >= 1)
          {
            bzero(&v9[v8], v5 - v8);
          }

          goto LABEL_37;
        }

        break;
      default:
        v8 = -1;
        goto LABEL_12;
    }

    v10 = v5 + 4;
    v8 = -1;
    goto LABEL_33;
  }

  if ((v5 & 0xFC) == 0 || *v6 != 255 || *(v6 + 2) != 181)
  {
    v8 = -1;
LABEL_11:
    v12 = v7;
LABEL_12:
    v9 = &v13 + 1;
    LOBYTE(v13) = v5;
    v10 = v5 + 3;
    if (v4 == 3 && (byte_100B5C6E0 & 1) == 0)
    {
      LODWORD(v5) = 0;
      v10 = 3;
      goto LABEL_35;
    }

LABEL_33:
    if (!v5)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }
}

void sub_10001F6DC(char *a1)
{
  if (qword_100B5F878)
  {
    sub_10001F788(a1, qword_100B5F878, word_100B5F894);

    sub_10001F480();
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HciIfc_CopyPayload: OI_HCIIfc_Send_Req not in progress", v1, v2, v3, v4, v5, v6, v7, v9);
    v8 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_10001F788(char *a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 525, "dest");
  }

  if (!a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 526, "src");
  }

  if (!a3)
  {
    return 0;
  }

  v4 = a1;
  v5 = *(a2 + 6);
  if (*(a2 + 4) >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(a2 + 4);
  }

  v7 = (a2 + 24 * *(a2 + 1) + 24);
  v8 = v6;
  while (1)
  {
    v9 = *(v7 - 8);
    v10 = v7;
    if (v9 == 3)
    {
      break;
    }

    if (v9 != 4)
    {
      v10 = *v7;
      break;
    }

    if (v5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 540, "currPos == 0");
    }

    v11 = sub_10001F788(v4, *v7, v8);
    if (v11 > v8)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 542, "len <= numBytes");
    }

    v12 = v11;
    if (v11 == v8)
    {
      v16 = 0;
      goto LABEL_22;
    }

LABEL_18:
    v15 = *(a2 + 1) + 1;
    *(a2 + 1) = v15;
    if (*(a2 + 2) <= v15)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 567, "src->currCell < src->usedCells");
    }

    v5 = 0;
    v8 -= v12;
    v7 += 3;
    v4 += v12;
  }

  v13 = *(v7 - 3);
  if (v13 < v5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 553, "cell->len >= currPos");
  }

  v14 = v10 + v5;
  v12 = v13 - v5;
  if ((v13 - v5) < v8)
  {
    memmove(v4, v14, (v13 - v5));
    goto LABEL_18;
  }

  memmove(v4, v14, v8);
  v16 = v5 + v8;
LABEL_22:
  *(a2 + 6) = v16;
  *(a2 + 4) -= v6;
  return v6;
}

uint64_t sub_10001F968(unsigned __int8 *a1, char *a2, size_t a3, unsigned int a4)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 452, "mbuf");
  }

  if (*(a1 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 453, "mbuf->currPos == 0");
  }

  if (a4 > 2)
  {
    return 101;
  }

  v6 = a3;
  if (!a3)
  {
    return 0;
  }

  if (a1[2] >= *a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MBUF Append overflow: alloc %d", v7, v8, v9, v10, v11, v12, v13, *a1);
      v14 = sub_10000C050(0x30u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 124;
  }

  else
  {
    result = sub_10001FE4C(&a1[24 * a1[2] + 16], a2, a3, a4);
    if (!result)
    {
      ++a1[2];
      *(a1 + 2) += v6;
    }
  }

  return result;
}

void sub_10001FA7C()
{
  if (!dword_100B5F8BC || dword_100B5F8BC > *(qword_100BCE0B8 + 2))
  {
    sub_1000D660C();
  }

  v0 = qword_100B5F8C8;
  if (byte_100B5F8B8 != 1 || byte_100BCE141 == 0)
  {
    sub_1000D660C();
  }

  v39 = 0;
  v2 = v0[10];
  if (v2 != 3125 && sub_10001EE74((v0 + 8), &v39))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unable to add opcode 0x%x to expected event queue with status %!", v29, v30, v31, v32, v33, v34, v35, v0[10]);
      v36 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    v37 = sub_10028A99C(v0[10]);
    sub_1001BAA68(635, v37);
  }

  if (off_100BCE0A8)
  {
    v3 = 629;
LABEL_14:
    if (v2 != 3125)
    {
      v4 = sub_1000DC660(v39);
      if (v4)
      {
        v5 = v4;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCIExpEvQ_RemoveEvent failed: %!", v6, v7, v8, v9, v10, v11, v12, v5);
          v13 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_100814864();
          }
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCIIfc_SendHciCommand failed", v14, v15, v16, v17, v18, v19, v20, v38);
        v21 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1008148EC();
        }
      }
    }

LABEL_39:
    sub_100256FE0(v3, qword_100B5F8C8 + 16);
    goto LABEL_40;
  }

  memset(v40, 0, sizeof(v40));
  v22 = *v0;
  if (**v0 != 1)
  {
    sub_1000D660C();
    v22 = *v0;
  }

  v23 = *(v22 + 1);
  v24 = v0[10];
  if (v24 != 64512 && v24 != v23)
  {
    sub_1000D660C();
  }

  sub_10001FF10(v40, 1u);
  sub_10001F968(v40, (*v0 + 4), (v0[4] - 4), 2u);
  v25 = sub_10001FD90(1, v23, v40, (v0[4] - 4));
  v3 = v25;
  if (v25 != 625 && v25 != 0)
  {
    goto LABEL_14;
  }

  if (v0[10] != 3125)
  {
    v27 = byte_100BCE141;
    if (!byte_100BCE141)
    {
      sub_1000D660C();
      v27 = byte_100BCE141;
    }

    byte_100BCE141 = v27 - 1;
  }

  if (v3 != 625)
  {
    if (!v3)
    {
      byte_100B5F8B8 = 0;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (dword_100B5F8BC && byte_100B5F8B8 == 1 && byte_100BCE141)
  {
    sub_1000228C0(sub_100022AA0, 0, 0);
  }

LABEL_40:
  sub_10000C1E8(*qword_100B5F8C8);
  v28 = dword_100B5F8BC - 1;
  dword_100B5F8BC = v28;
  if (v28)
  {
    memmove(qword_100B5F8C8, (qword_100B5F8C8 + 48), 48 * v28);
  }
}

uint64_t sub_10001FD90(int a1, __int16 a2, uint64_t a3, unsigned int a4)
{
  qword_100B5F878 = a3;
  qword_100B5F880 = 0;
  word_100B5F894 = a4;
  byte_100B5F888 = a1;
  word_100B5F890 = a2;
  if (*(a3 + 4) < a4)
  {
    sub_1000D660C();
  }

  v5 = sub_100004790();
  if (a1 != 1 && (v5 & 1) != 0)
  {
    return 0;
  }

  v6 = sub_10001F958();
  if (qword_100B5F878)
  {
    qword_100B5F878 = 0;
    if (qword_100B5F880)
    {
      sub_10000C1E8(qword_100B5F880);
      qword_100B5F880 = 0;
    }
  }

  return v6;
}

uint64_t sub_10001FE4C(uint64_t a1, char *a2, size_t size, int a4)
{
  v4 = size;
  if (a4)
  {
    goto LABEL_2;
  }

  if (size <= 8)
  {
    if (size)
    {
      v7 = (a1 + 8);
      v8 = size;
      do
      {
        v9 = *a2++;
        *v7++ = v9;
        --v8;
      }

      while (v8);
    }

    LOBYTE(a4) = 3;
    goto LABEL_8;
  }

  v11 = sub_100007618(size, 0x4D84D984uLL);
  if (v11)
  {
    v12 = v11;
    memmove(v11, a2, v4);
    LOBYTE(a4) = 0;
    a2 = v12;
LABEL_2:
    *(a1 + 8) = a2;
LABEL_8:
    result = 0;
    *a1 = a4;
    *(a1 + 2) = v4;
    return result;
  }

  *(a1 + 8) = 0;
  *(a1 + 2) = 0;
  *a1 = 2;
  return 106;
}

uint64_t sub_10001FF10(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 171, "mbuf != NULL");
  }

  if (!a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 172, "numCells > 0");
  }

  if (a2 < 5)
  {
    v9 = 0;
    *a1 = a2;
    *(a1 + 1) = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
    return v9;
  }

  if (!sub_10000C240())
  {
    return 124;
  }

  v9 = 124;
  sub_10000AF54("OI_MBUF_Init %!", v2, v3, v4, v5, v6, v7, v8, 124);
  v10 = sub_10000C050(0x30u);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10080F7A0();
    return 124;
  }

  return v9;
}

uint64_t sub_10001FFD8(void *a1)
{
  if (dword_100B604C8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("VSC state %d, can not create command", v1, v2, v3, v4, v5, v6, v7, dword_100B604C8);
      v8 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 3600;
  }

  else
  {
    result = 0;
    *a1 = &unk_100B603C4;
    a1[1] = 0x2000000FF00FFLL;
  }

  return result;
}

uint64_t sub_100020078(__int16 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100B604C8)
  {
    sub_1000D660C();
  }

  if (!a2 && a3)
  {
    sub_1000D660C();
  }

  dword_100B604C8 = 1;
  v13 = sub_100018930(a1 | 0xFC00u, a3, a2, a4, a5, a6, a7, a8);
  if (v13)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCI_VendorCmd failed %d", v14, v15, v16, v17, v18, v19, v20, v13);
      v21 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    word_100B604C4 = a1;
  }

  dword_100B604C8 = 0;
  return v13;
}

uint64_t sub_100020164(uint64_t a1, uint64_t a2)
{
  if (a2 >= 0x13B && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_1008294E0();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100829554();
  }

  if ((*(off_100B50A98 + 14) & 0xFFFFFFFD) == 1)
  {
    v4 = a1 + 168;
    if (*(a1 + 168 + a2) == 1)
    {
      v5 = a1 + 483;
      if (*(a1 + 483 + a2) == 1)
      {
        v6 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
        {
          sub_10082957C(a2, v6);
        }
      }

      *(v5 + a2) = 1;
    }

    else
    {
      v9 = qword_100BCE8D8;
      v10 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v12 = 136446210;
        v13 = sub_100020304(v10, a2);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "VSC %{public}s, not supported", &v12, 0xCu);
      }
    }

    v8 = *(v4 + a2);
  }

  else
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000A5378(a2, v7);
    }

    v8 = 0;
  }

  return v8 & 1;
}

const char *sub_100020304(uint64_t a1, int a2)
{
  result = "BD_VSC_GET_POWER_CONSUMPTION";
  switch(a2)
  {
    case 0:
      return result;
    case 1:
      result = "BD_VSC_WRITE_PCM_PARAM";
      break;
    case 2:
      result = "BD_VSC_WRITE_SLEEPMODE_PARAM";
      break;
    case 3:
      result = "BD_VSC_READ_RAW_RSSI";
      break;
    case 4:
      result = "BD_VSC_WRITE_HI_PRIO_CONN";
      break;
    case 5:
      result = "BD_VSC_OP_LOW_LATENCY_PRIO_CONN";
      break;
    case 6:
      result = "BD_VSC_SET_SCO_PATH";
      break;
    case 7:
      result = "BD_VSC_WRITE_I2SPCM_INTF";
      break;
    case 8:
      result = "BD_VSC_ENA_WBS";
      break;
    case 9:
      result = "BD_VSC_DYN_VOICE_ROUTE_CHANGE";
      break;
    case 10:
      result = "BD_VSC_OLYMPIC_SETTINGS";
      break;
    case 11:
      result = "BD_VSC_LE_META_VSC";
      break;
    case 12:
      result = "BD_VSC_OP_DELAYED_HOST_WAKE";
      break;
    case 13:
      result = "BD_VSC_LTE_COEX_LINK_QUAL_METRICS";
      break;
    case 14:
      result = "BD_VSC_LTE_TRIGGER_WCI2";
      break;
    case 15:
      result = "BD_VSC_LTE_ENA_WCI2";
      break;
    case 16:
      result = "DB_VSC_FACTORY_CAL_SET_TX_POWER";
      break;
    case 17:
      result = "BD_VSC_FACTORY_CAL_READ_TABLE";
      break;
    case 18:
      result = "BD_VSC_OP_ANTENNA_DIVERSITY";
      break;
    case 19:
      result = "BD_VSC_OP_DIVERSITY_AFH_MAPS";
      break;
    case 20:
      result = "BD_VSC_OP_DIVERSITY_CELL_COEX";
      break;
    case 21:
      result = "BD_VSC_REMOTE_AP_WRITE_LOCAL_STATE";
      break;
    case 22:
      result = "BD_VSC_OP_BT_SYNC";
      break;
    case 23:
      result = "BD_VSC_LTE_VSC";
      break;
    case 24:
      result = "BD_VSC_OP_POWER_LDO_DURING_SLEEP";
      break;
    case 25:
      result = "BD_VSC_WRITE_LE_REMOTE_PUBLIC_ADDR";
      break;
    case 26:
      result = "BD_VSC_OP_GIZMO_DETECTED";
      break;
    case 27:
      result = "BD_VSC_DISABLE_TPC";
      break;
    case 28:
      result = "BD_VSC_CORE_DUMP";
      break;
    case 29:
      result = "BD_VSC_CONFIG_LINK_QUALITY_STATS_TRIG";
      break;
    case 30:
      result = "BD_VSC_LE_WRITE_LOCAL_SUPPORTED_FEATURES";
      break;
    case 31:
      result = "BD_VSC_ENABLE_EXTENDED_DUPLICATE_FILTER";
      break;
    case 32:
      result = "BD_VSC_WRITE_HI_PRIO_LE_CONN";
      break;
    case 33:
      result = "BD_VSC_LE_CREATE_EXT_ADV_INSTANCE";
      break;
    case 34:
      result = "BD_VSC_LE_REMOVE_EXT_ADV_INSTANCE";
      break;
    case 35:
      result = "BD_VSC_LE_SET_EXT_ADV_INST_PARAMS";
      break;
    case 36:
      result = "BD_VSC_LE_SET_EXT_ADV_INST_DATA";
      break;
    case 37:
      result = "BD_VSC_LE_SET_EXT_SCAN_RSP_DATA";
      break;
    case 38:
      result = "BD_VSC_LE_SET_EXT_ADV_INST_ENABLE";
      break;
    case 39:
      result = "BD_VSC_LE_SET_EVENT_MASK_FOR_CONNECTION_HANDLE";
      break;
    case 40:
      result = "BD_VSC_LE_RESET_EVENT_MASK_FOR_CONNECTION_HANDLE";
      break;
    case 41:
      result = "BD_VSC_HP_BT_CLASSIC";
      break;
    case 42:
      result = "BD_VSC_SET_PRIORITIZATION_THRESHOLD";
      break;
    case 43:
      result = "BD_VSC_ENABLE_LMP_ROUTING";
      break;
    case 44:
      result = "BD_VSC_ENABLE_LMP_ROUTING_THROUGH_VSE";
      break;
    case 45:
      result = "BD_VSC_GET_AWD_DATA_EVENT";
      break;
    case 46:
      result = "BD_VSC_ENABLE_DISABLE_FW_LOG_STREAMING";
      break;
    case 47:
      result = "BD_VSC_ENABLE_COEX_DEBUG_COUNTERS";
      break;
    case 48:
      result = "BD_VSC_READ_DETAILED_PROFILE_STATS";
      break;
    case 49:
      result = "BD_VSC_CLEAR_DETAILED_PROFILE_STATS";
      break;
    case 50:
      result = "BD_VSC_READ_TRANSPORT_SWITCH_STATS";
      break;
    case 51:
      result = "BD_VSC_CLEAR_TRANSPORT_SWITCH_STATS";
      break;
    case 52:
      result = "BD_VSC_HP_EDR_ACCESSORY";
      break;
    case 53:
      result = "BD_VSC_READ_FW_MEMORY_STATISTICS";
      break;
    case 54:
      result = "BD_VSC_ENABLE_HIGH_POWER";
      break;
    case 55:
      result = "BD_VSC_SET_FW_TRACE_MODE";
      break;
    case 56:
      result = "BD_VSC_SET_MAXIMUM_CONNECTION_UPDATE_INSTANT";
      break;
    case 57:
      result = "BD_VSC_CONFIG_PAGE_SCAN_RESPONSE";
      break;
    case 58:
      result = "BD_VSC_HDR_CONTROL";
      break;
    case 59:
      result = "BD_VSC_READ_PROP_LOCAL_FEATURES";
      break;
    case 60:
      result = "BD_VSC_READ_PROP_REMOTE_FEATURES";
      break;
    case 61:
      result = "BD_VSC_WRITE_PROP_LOCAL_FEATURES_EXTENDED";
      break;
    case 62:
      result = "BD_VSC_READ_PROP_LOCAL_FEATURES_EXTENDED";
      break;
    case 63:
      result = "BD_VSC_LE_CS_SET_SCHEDULING";
      break;
    case 64:
      result = "BD_VSC_HDR_CHANGE_CONN_PKT_TYPE";
      break;
    case 65:
      result = "BD_VSC_HDR_SETUP_SYNCHRONOUS_CONNECTION";
      break;
    case 66:
      result = "BD_VSC_HDR_ACCEPT_SYNCHRONOUS_CONNECTION";
      break;
    case 67:
      result = "BD_VSC_SCO_BUFFER_SIZE_CONTROL";
      break;
    case 68:
      result = "BD_VSC_HRB_CONTROL";
      break;
    case 69:
      result = "BD_VSC_HRB_ALLOWED_BANDS";
      break;
    case 70:
      result = "BD_VSC_HRB_CLASSIFICATION_BANDS";
      break;
    case 71:
      result = "BD_VSC_HRB_CREATE_CONNECTION";
      break;
    case 72:
      result = "BD_VSC_HRB_CHANGE_CONNECTION_BAND";
      break;
    case 73:
      result = "BD_VSC_HRB_WRITE_SCAN_ENABLE";
      break;
    case 74:
      result = "BD_VSC_HRB_WRITE_PAGE_SCAN_ACTIVITY";
      break;
    case 75:
      result = "BD_VSC_HRB_READ_AFH_CHANNEL_MAP";
      break;
    case 76:
      result = "BD_VSC_HRB_SET_AFH_CHANNEL_CLASSIFICATION";
      break;
    case 77:
      result = "BD_VSC_GET_ESSENTIAL_POWER_DATABASE_ENTRIES";
      break;
    case 78:
      result = "BD_VSC_HRB_LIMIT_CHANNEL_MAP";
      break;
    case 79:
      result = "BD_VSC_HRB_SET_BAND_EDGES";
      break;
    case 80:
      result = "BD_VSC_HRB_READ_ENHANCED_TRANSMIT_POWER_LEVEL";
      break;
    case 84:
      result = "BD_VSC_ADVANCED_SNIFF_MODE";
      break;
    case 85:
      result = "BD_VSC_EXIT_ADVANCED_SNIFF_MODE";
      break;
    case 86:
      result = "BD_VSC_ADVANCED_SNIFF_RECONFIG";
      break;
    case 87:
      result = "BD_VSC_SET_PERIPHERAL_MAX_AGE";
      break;
    case 88:
      result = "BD_VSC_LMP_FLOW";
      break;
    case 89:
      result = "BD_VSC_AOS_EMPTY_PACKET_REPORT";
      break;
    case 90:
      result = "BD_VSC_CONTROL_AOS";
      break;
    case 91:
      result = "BD_VSC_SET_LE_POWER_CONTROL";
      break;
    case 92:
      result = "BD_VSC_GET_ADV_STATS";
      break;
    case 93:
      result = "BD_VSC_PHY_STATISTIC";
      break;
    case 94:
      result = "BD_VSC_DISCONNECT_EVENT";
      break;
    case 95:
      result = "BD_VSC_SET_MWS_COEX_RX_GAIN_MODE";
      break;
    case 96:
      result = "BD_VSC_ENABLE_AUDIO_STATISTICS";
      break;
    case 97:
      result = "BD_VSC_EPA_GPIO_TOGGLE_ENABLE";
      break;
    case 98:
      result = "BD_VSC_EPA_GPIO_READ_STATUS";
      break;
    case 99:
      result = "BD_VSC_SET_BIDIRECTIONAL_MAX_POWER_MODE";
      break;
    case 100:
      result = "BD_VSC_HP_EDR_HDR";
      break;
    case 101:
      result = "BD_VSC_ENABLE_HOST_WAKE_REPORT";
      break;
    case 102:
      result = "BD_VSC_ENABLE_POWER_TAG";
      break;
    case 103:
      result = "BD_VSC_ENABLE_POWER_TAG_V2";
      break;
    case 104:
      result = "BD_VSC_ADJUST_LE_INSTANT_FACTOR";
      break;
    case 105:
      result = "BD_VSC_DISABLE_HOST_WAKE_ON_LE_LINK_DROP";
      break;
    case 106:
      result = "BD_VSC_SET_BAD_COMPANY_ID_FOR_LE2M";
      break;
    case 107:
      result = "BD_VSC_TUNABLES_READ_ENABLE_DISABLE";
      break;
    case 108:
      result = "BD_VSC_ENABLE_WIRELESS_SPLITTER";
      break;
    case 109:
      result = "BD_VSC_ADVBUF_CONFIG";
      break;
    case 110:
      result = "BD_VSC_ADVBUF_READ_COMMAND";
      break;
    case 111:
      result = "BD_VSC_MATCHTABLE_CONFIG";
      break;
    case 112:
      result = "BD_VSC_MATCHTABLE_CONFIG_V2";
      break;
    case 113:
      result = "BD_VSC_MATCHTABLE_CONFIG_V3";
      break;
    case 114:
      result = "BD_VSC_MATCHTABLE_EXT_FILTER_CONFIG";
      break;
    case 115:
      result = "BD_VSC_MATCHTABLE_EXT_FILTER_CONFIG_V2";
      break;
    case 116:
      result = "BD_VSC_ADVBUFMATCH_CONTROL";
      break;
    case 117:
      result = "BD_VSC_ADVBUF_RSSI_THRESHOLD";
      break;
    case 118:
      result = "BD_VSC_ADVBUF_CFG_TIME_SLICE";
      break;
    case 119:
      result = "BD_VSC_ADVBUF_EXT_FILTER_CONFIG";
      break;
    case 120:
      result = "BD_VSC_MATCHTABLE_PARAMS";
      break;
    case 121:
      result = "BD_VSC_MATCHBUFFER_CONFIG";
      break;
    case 122:
      result = "BD_VSC_MATCHBUFFER_READ";
      break;
    case 123:
      result = "BD_VSC_SPMI_DIAGNOSTICS";
      break;
    case 124:
      result = "BD_VSC_BTCLK_SENSORC_TIMESYNC";
      break;
    case 125:
      result = "BD_VSC_ADV_TX_TRIG_TIMESTAMP";
      break;
    case 126:
      result = "BD_VSC_READ_CONN_EVENT_TRIGGER";
      break;
    case 127:
      result = "BD_VSC_LE_CONN_EVENT_TRIGGER";
      break;
    case 128:
      result = "BD_VSC_SPMI_DEBUG_VSE_CONTROL";
      break;
    case 129:
      result = "BD_VSC_HP_BF";
      break;
    case 130:
      result = "BD_VSC_SET_ENCRYPTION_KEY_SIZE";
      break;
    case 131:
      result = "BD_VSC_DUP_FILTER_REPORT_ENABLE";
      break;
    case 132:
      result = "BD_VSC_BEAMFORMING_MRC_CONTROL";
      break;
    case 133:
      result = "BD_VSC_SNR_MRC_CONTROL";
      break;
    case 134:
      result = "BD_VSC_BT_CORE_ANTENNA_SWITCH";
      break;
    case 135:
      result = "BD_VSC_USE_SINGLE_CORE_POWER_DB_FOR_ANT_DIVERSITY";
      break;
    case 136:
      result = "BD_VSC_CENTRAL_SKIP_SNIFF_MODE";
      break;
    case 137:
      result = "BD_VSC_ENABLE_SET_SNIFF_TRANSACTIONS";
      break;
    case 138:
      result = "BD_VSC_SET_VS_EVENT_MASK";
      break;
    case 139:
      result = "BD_VSC_CONFIGURE_CONTROLLER_BTCLK_CAPTURE";
      break;
    case 140:
      result = "BD_VSC_CONFIGURE_SYNCHRONIZATION_EVENT";
      break;
    case 141:
      result = "BD_VSC_ENABLE_LE_SCAN_PROTECTION";
      break;
    case 142:
      result = "BD_VSC_SET_FW_LOG_MASK";
      break;
    case 143:
      result = "BD_VSC_SET_BTSC_PAGE_SCAN";
      break;
    case 144:
      result = "BD_VSC_SET_QOS_CONFIG";
      break;
    case 145:
      result = "BD_VSC_GET_QOS_CONFIG";
      break;
    case 146:
      result = "BD_VSC_CONFIGURE_RSSI_STATISTICS_AND_DETECTION";
      break;
    case 147:
      result = "BD_VSC_GET_SCAN_STATS_WITH_THRESHOLD";
      break;
    case 148:
      result = "BD_VSC_READ_SCAN_STATS_WITH_THRESHOLD";
      break;
    case 149:
      result = "BD_VSC_INCOMING_LE_CONNECTION_DENY_LIST_ADD";
      break;
    case 150:
      result = "BD_VSC_INCOMING_LE_CONNECTION_DENY_LIST_REMOVE";
      break;
    case 151:
      result = "BD_VSC_INCOMING_LE_CONNECTION_DENY_LIST_ENABLE";
      break;
    case 152:
      result = "BD_VSC_INCOMING_LE_CONNECTION_DENY_LIST_CLEAR";
      break;
    case 153:
      result = "BD_VSC_GET_FW_VERSIONS";
      break;
    case 154:
      result = "BD_VSC_INIT_DONE";
      break;
    case 155:
      result = "BD_VSC_SET_RANDOM_SEED";
      break;
    case 156:
      result = "BD_VSC_SET_DEFAULT_LOGGING_OPTIONS";
      break;
    case 157:
      result = "BD_VSC_ADVBUF_CONFIG_WITH_CRITERIA";
      break;
    case 158:
      result = "BD_VSC_MATCHTABLE_PARAMS_EXTENDED";
      break;
    case 159:
      result = "BD_VSC_TAS_SET_COUNTRY_CODES";
      break;
    case 160:
      result = "BD_VSC_TAS_GET_COUNTRY_CODES";
      break;
    case 161:
      result = "BD_VSC_RF_TEST_SET_TX_RX_CHAINS";
      break;
    case 162:
      result = "BD_VSC_READ_RX_CHAINS_RSSI";
      break;
    case 163:
      result = "BD_VSC_TAS_GET_POWER_TABLE_INFO";
      break;
    case 164:
      result = "BD_VSC_SET_SAR_TYPE";
      break;
    case 165:
      result = "BD_VSC_DEBUG_ANTENNA_AND_POWER_DIVERSITY_POLICY";
      break;
    case 166:
      result = "BD_VSC_ANTENNA_AND_POWER_DIVERSITY_POLICY";
      break;
    case 167:
      result = "BD_VSC_MRC_TXBF_LOGGING_ENABLE";
      break;
    case 172:
      result = "BD_VSC_READ_PCIE_POWER_PROFILING_STATS";
      break;
    case 174:
      result = "BD_VSC_READ_ENHANCED_POWER_STATS_PER_CORE";
      break;
    case 175:
      result = "BD_VSC_ADD_TO_FILTER_ACCEPT_LIST_ENHANCED_CONNECTION_TAGGING";
      break;
    case 176:
      result = "BD_VSC_BT_SYNC_ADJUST_SYNC_TIMING";
      break;
    case 177:
      result = "BD_VSC_CONFIG_ANTENNA_DIVERSITY_POLICY";
      break;
    case 178:
      result = "BD_VSC_ENABLE_BT_CORE_DIVERSITY";
      break;
    case 179:
      result = "BD_VSC_OLYMPIC_NUM_CMPLT_PKT_THRESH";
      break;
    case 180:
      result = "BD_VSC_OLYMPIC_RSSI_THRESH";
      break;
    case 181:
      result = "BD_VSC_OLYMPIC_READ_BT_SETTINGS";
      break;
    case 182:
      result = "BD_VSC_OLYMPIC_IGNORE_FEC";
      break;
    case 183:
      result = "BD_VSC_OLYMPIC_LINK_QUAL_STATS";
      break;
    case 184:
      result = "BD_VSC_OLYMPIC_ENHANCED_LINK_QUAL_STATS";
      break;
    case 185:
      result = "BD_VSC_OLYMPIC_ENABLE_EPA_VSE";
      break;
    case 186:
      result = "BD_VSC_OLYMPIC_LE_AUDIO";
      break;
    case 187:
      result = "BD_VSC_OLYMPIC_LE_AUDIO_STATS";
      break;
    case 188:
      result = "BD_VSC_OLYMPIC_READ_LE_SETTINGS";
      break;
    case 189:
      result = "BD_VSC_OLYMPIC_CHANGE_LE_SETTINGS";
      break;
    case 190:
      result = "BD_VSC_OLYMPIC_READ_PROFILING_STATS";
      break;
    case 191:
      result = "BD_VSC_OLYMPIC_READ_ENHANCED_PROFILING_STATS";
      break;
    case 192:
      result = "BD_VSC_OLYMPIC_READ_TRANSMIT_IPA_EPA_COUNTERS";
      break;
    case 193:
      result = "BD_VSC_OLYMPIC_LE_NUM_OF_COMPLT_PKT";
      break;
    case 194:
      result = "BD_VSC_OLYMPIC_SET_MAX_TXRX_PAIRS";
      break;
    case 195:
      result = "BD_VSC_OLYMPIC_ANTENNA_PREF";
      break;
    case 196:
      result = "BD_VSC_OLYMPIC_LE_COUNTRY_PWR_SELECT";
      break;
    case 197:
      result = "BD_VSC_OLYMPIC_COUNTRY_CODE_SELECTION";
      break;
    case 198:
      result = "BD_VSC_OLYMPIC_COUNTRY_CODE_SELECTION_MULTI_BAND";
      break;
    case 199:
      result = "BD_VSC_OLYMPIC_300KHZ_DEV_SELECT";
      break;
    case 200:
      result = "BD_VSC_OLYMPIC_ANTENNA_PREF_B";
      break;
    case 201:
      result = "BD_VSC_OLYMPIC_A2DP_ACL_SIMULTANEOUS";
      break;
    case 202:
      result = "BD_VSC_OLYMPIC_SET_TX_POWER_CAP";
      break;
    case 203:
      result = "BD_VSC_OLYMPIC_SET_SAR_LOCATION";
      break;
    case 204:
      result = "BD_VSC_OLYMPIC_SET_MIN_AFH_LE_CHANNELS";
      break;
    case 205:
      result = "BD_VSC_OLYMPIC_ADV_DUPLICATE_FILTER_BYPASS_CONFIG";
      break;
    case 206:
      result = "BD_VSC_OLYMPIC_SET_HI_PRIO_RSSI";
      break;
    case 207:
      result = "BD_VSC_OLYMPIC_COEX_MULTI_HID_LE_CONFIG";
      break;
    case 208:
      result = "BD_VSC_OLYMPIC_GPIO_AUDIO_SYNC_REPORT";
      break;
    case 209:
      result = "BD_VSC_FORCE_WLAN_5G";
      break;
    case 210:
      result = "BD_VSC_OLYMPIC_SET_CONNECTION_DESCRIPTOR";
      break;
    case 211:
      result = "BD_VSC_PCAP_ANT_WIFI5G_HB_STATUS";
      break;
    case 212:
      result = "BD_VSC_ENHANCED_PCAP_ANT_WIFI5G_HB_STATUS";
      break;
    case 213:
      result = "BD_VSC_OLYMPIC_SET_ENHANCED_SCAN_ENABLE";
      break;
    case 214:
      result = "BD_VSC_OLYMPIC_SET_SCAN_PARAMETERS_MULTICORE";
      break;
    case 215:
      result = "BD_VSC_OLYMPIC_SET_EXT_SCAN_LIMITS";
      break;
    case 216:
      result = "BD_VSC_OLYMPIC_GET_EXT_ADV_DROPPED";
      break;
    case 217:
      result = "BD_VSC_OLYMPIC_SET_EXT_ADV_LIMITS";
      break;
    case 218:
      result = "BD_VSC_OLYMPIC_SET_EXT_SCAN_BUFFERS";
      break;
    case 219:
      result = "BD_VSC_OLYMPIC_SET_SINGLE_SHOT_ROLE_SWITCH";
      break;
    case 220:
      result = "BD_VSC_OLYMPIC_SET_EXT_ADV_PHY_OPTIONS";
      break;
    case 221:
      result = "BD_VSC_OLYMPIC_SET_RC2_BT_SUPPRESSION";
      break;
    case 222:
      result = "BD_VSC_OLYMPIC_ENABLE_BT_GRANT_RC2_COEX";
      break;
    case 223:
      result = "BD_VSC_OLYMPIC_SET_SNIFF_ATTEMPT_OPTIMIZATION";
      break;
    case 224:
      result = "BD_VSC_OLYMPIC_UPDATE_LE_PHY_DENYLIST";
      break;
    case 225:
      result = "BT_VSC_OLYMPIC_SET_RETAIN_LE_SCAN_DUPLICATES_ON_START";
      break;
    case 226:
      result = "BD_VSC_OLYMPIC_SET_HID_LATENCY_STATS";
      break;
    case 227:
      result = "BD_VSC_OLYMPIC_SET_DIAG_DEBUG_EVENT_BEHAVIOR";
      break;
    case 228:
      result = "BD_VSC_LE_CIS_LINK_QUALITY_STAT";
      break;
    case 229:
      result = "BD_VSC_LE_META_ENA_FEATURES";
      break;
    case 230:
      result = "BD_VSC_LE_META_ADD_IRK_TO_LIST";
      break;
    case 231:
      result = "BD_VSC_LE_META_REMV_IRK_FROM_LIST";
      break;
    case 232:
      result = "BD_VSC_LE_META_CLEAR_IRK_LIST";
      break;
    case 233:
      result = "BD_VSC_LE_META_ADV_PCF_FEATURE_SEL";
      break;
    case 234:
      result = "BD_VSC_LE_META_ADV_PCF_SERVICE_UUID";
      break;
    case 235:
      result = "BD_VSC_LE_META_MONITOR_RSSI_FOR_PROX";
      break;
    case 236:
      result = "BD_VSC_LE_META_TRACK_SENSOR";
      break;
    case 237:
      result = "BD_VSC_LE_META_TRACK_SENSOR_INCREASE_SCAN_PARAMS";
      break;
    case 238:
      result = "BD_VSC_LE_META_SET_ZONE_RSSI";
      break;
    case 239:
      result = "BD_VSC_LE_META_GET_ZONE_MONITOR_CAP";
      break;
    case 240:
      result = "BD_VSC_LE_META_ADD_ZONE_MONITOR_ENTRY";
      break;
    case 241:
      result = "BD_VSC_LE_META_RESET_ADV_MATCHING_RULES";
      break;
    case 242:
      result = "BD_VSC_LE_META_REMV_ZONE_MONITOR_ENTRY";
      break;
    case 243:
      result = "BD_VSC_LE_META_RESET_ZONE_MONITOR_FEAT";
      break;
    case 244:
      result = "BD_VSC_LE_META_ADD_ADV_MATCHING_RULE";
      break;
    case 245:
      result = "BD_VSC_LE_META_REMV_ADV_MATCHING_RULE";
      break;
    case 246:
      result = "BD_VSC_LE_META_CONN_RSSI_HISTORY";
      break;
    case 247:
      result = "BD_VSC_LE_META_ADD_TO_FILTER_ACCEPT_LIST";
      break;
    case 248:
      result = "BD_VSC_LE_META_ENABLE_ASYMMETRIC_LATENCY";
      break;
    case 249:
      result = "BD_VSC_LE_META_ADD_ADV_MATCHING_RULE_WITH_ADDRESS";
      break;
    case 250:
      result = "BD_VSC_LE_META_REMV_ADV_MATCHING_RULE_WITH_ADDRESS";
      break;
    case 251:
      result = "BD_VSC_LE_META_CONFIG_ADV_MATCHING_ADDRESS_LIST";
      break;
    case 252:
      result = "BD_VSC_LE_META_ADD_ADV_MATCHING_RULE_ENHANCED";
      break;
    case 253:
      result = "BD_VSC_LE_META_REMV_ADV_MATCHING_RULE_ENHANCED";
      break;
    case 254:
      result = "BD_VSC_LE_META_WIPE_ADV_MATCHING_RULE";
      break;
    case 255:
      result = "BD_VSC_LE_META_ADD_ADV_MATCHING_RULE_ENHANCED_BATCHED";
      break;
    case 257:
      result = "BD_VSC_LE_META_REMV_DUPLICATE_ENTRY_ADV_MATCHING_RULE";
      break;
    case 258:
      result = "BD_VSC_LE_META_REMV_MULTIPLE_DUPLICATE_ENTRIE_ADV_MATCHING_RULE";
      break;
    case 259:
      result = "BD_VSC_LE_META_STATUS_ADV_MATCHING_RULE_ENHANCED";
      break;
    case 260:
      result = "BD_VSC_LE_META_STATUS_ADV_MATCHING_RULE_ENHANCED_EXTENDED_BLOBMASK";
      break;
    case 261:
      result = "BD_VSC_LE_META_LPCORE_GET_STATS";
      break;
    case 262:
      result = "BD_VSC_LE_META_GET_SCAN_STATS";
      break;
    case 263:
      result = "BD_VSC_LE_META_ENABLE_TDS";
      break;
    case 264:
      result = "BD_VSC_LE_META_ADD_TDS_FILTER_SERVICE";
      break;
    case 265:
      result = "BD_VSC_LE_META_REMV_TDS_FILTER_SERVICE";
      break;
    case 266:
      result = "BD_VSC_LE_META_ADD_TO_FILTER_ACCEPT_LIST_WITH_OPTIONS_V1";
      break;
    case 267:
      result = "BD_VSC_LE_META_ADD_TO_FILTERACCEPTLIST_WITH_OPTIONS_POLL_STATS";
      break;
    case 268:
      result = "BD_VSC_LE_META_ADD_TO_FILTER_ACCEPT_LIST_WITH_OPTIONS_V2";
      break;
    case 269:
      result = "BD_VSC_LE_META_BTSC_LE_SET_CONNECTION_SCAN";
      break;
    case 270:
      result = "BD_VSC_LE_META_MFG_SCAN_FILTER";
      break;
    case 271:
      result = "BD_VSC_LE_META_SET_CONNECTION_PRIORITIZATION";
      break;
    case 272:
      result = "BD_VSC_LE_META_ADD_TO_FILTER_ACCEPT_LIST_WITH_OPTIONS_V3";
      break;
    case 273:
      result = "BD_VSC_LE_META2_WRITE_STORED_LTK";
      break;
    case 274:
      result = "BD_VSC_LE_META2_REMOVE_STORED_LTK";
      break;
    case 275:
      result = "BD_VSC_LE_META2_READ_LOCAL_CONTROLLER_CACHED_INFO";
      break;
    case 276:
      result = "BD_VSC_LE_META2_WRITE_PEER_CACHED_INFO";
      break;
    case 277:
      result = "BD_VSC_LE_META2_SET_MAX_INSTANT_UPDATE_INFO";
      break;
    case 278:
      result = "BD_VSC_LE_META2_ENABLE_ADV_CONN_IND";
      break;
    case 279:
      result = "BD_VSC_LE_META2_CONFIGURE_ADV_CONN_IND";
      break;
    case 280:
      result = "BD_VSC_BT_ENA_FEATURES";
      break;
    case 281:
      result = "BD_VSC_OP_DELAYED_HOST_WAKE_PCIE";
      break;
    case 282:
      result = "BD_VSC_SET_GPIO_STATE";
      break;
    case 283:
      result = "BD_VSC_SET_AGC_TABLE_OVERRIDE";
      break;
    case 284:
      result = "BD_VSC_GET_LPEM_DATA";
      break;
    case 285:
      result = "BD_VSC_READ_CONTROLLER_RAM";
      break;
    case 286:
      result = "BD_VSC_LE_META_ADD_IRK_TO_FAST_LIST";
      break;
    case 287:
      result = "BD_VSC_CONFIGURE_CREATE_CONNECTION";
      break;
    case 288:
      result = "BD_VSC_SPMI_COEX_DEBUG_COUNTERS";
      break;
    case 289:
      result = "BD_VSC_SPMI_COEX_TEST_COMMAND";
      break;
    case 290:
      result = "BD_VSC_SPMI_COEX_TX_CONTROL";
      break;
    case 291:
      result = "BD_VSC_SPMI_COEX_TYPE_53_CONFIG";
      break;
    case 292:
      result = "BD_VSC_SPMI_COEX_TYPE_60_CONFIG";
      break;
    case 293:
      result = "BD_VSC_LE_META_ENA_FILTERING_FEATURES";
      break;
    case 294:
      result = "BD_VSC_LOAD_MSFFILE";
      break;
    case 295:
      result = "BD_VSC_LOAD_PWR_REGULATORYFILE";
      break;
    case 296:
      result = "BD_VSC_LOAD_PWR_REGULATORYFILE_A3";
      break;
    case 297:
      result = "BD_VSC_WRITE_BT_ADDRESS";
      break;
    case 298:
      result = "BD_VSC_SRS_FW_LOG_CONFIG";
      break;
    case 299:
      result = "BD_VSC_SRS_FW_LOG_UTCTIME_SYNC";
      break;
    case 300:
      result = "BD_VSC_ENABLE_SCAN_FILTERING";
      break;
    case 301:
      result = "BD_VSC_CONFIG_INQ_PAGE_MODE";
      break;
    case 302:
      result = "BD_VSC_SET_LPM_ENABLE";
      break;
    case 303:
      result = "BD_VSC_SET_LPM_HOSTWAKE_SCANPARAMETER";
      break;
    case 304:
      result = "BD_VSC_SET_LPM_HOSTWAKE_TXADVDIAGPARAMETERS";
      break;
    case 305:
      result = "BD_VSC_ENABLE_UART_RANGING";
      break;
    case 306:
      result = "BD_VSC_ADD_TO_FILTER_ACCEPT_LIST_UNIFIED";
      break;
    case 307:
      result = "BD_VSC_LE_ADV_TX_POWER_INCREASE";
      break;
    case 309:
      result = "BD_VSC_CONFIG_APPLE_EXTENDED_ADV_REPORT";
      break;
    case 310:
      result = "BD_VSC_APPLE_LE_FEATURE_SET_VENDOR_LIST";
      break;
    case 312:
      result = "BD_VSC_SET_UNIFIED_PRIORITY";
      break;
    case 313:
      result = "BD_VSC_HCIPP_GENERIC_CMD_V2";
      break;
    case 314:
      result = "BD_VSC_CS_LE_SET_PARAMETERS";
      break;
    default:
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
      {
        sub_10082946C();
      }

      result = "Unknown VSC";
      break;
  }

  return result;
}

_BYTE *sub_1000216B4(_BYTE *a1)
{
  *a1 = 1;
  sub_1000031B0();
  return a1;
}

uint64_t sub_1000216E4(int a1)
{
  pthread_mutex_lock(&stru_100B5AD18);
  dword_100B5ACE0 = a1;
  pthread_cond_signal(&stru_100B5ACE8);

  return pthread_mutex_unlock(&stru_100B5AD18);
}

uint64_t sub_10002173C(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 72);
  v11 = qword_100BCE8D8;
  v12 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
  if (v12)
  {
    v13 = sub_100020304(v12, a2);
    *buf = 136446210;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sending: %{public}s", buf, 0xCu);
  }

  if (sub_100020164(a1, a2))
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    v14 = v9[2](v9);
    sub_100022214(buf);
    if (v14 == 3603)
    {
      a3 = 0;
    }

    else if (v14)
    {
      v16 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100829674(a2, v14, v16);
      }

      a3 = 1;
    }

    else
    {
      if (a3)
      {
        if (qword_100B50AA0 != -1)
        {
          sub_100829554();
        }

        a3 = sub_100021BDC(off_100B50A98, a2);
      }

      if (v10)
      {
        v10[2](v10);
      }
    }

    *(a1 + a2 + 483) = 0;
    v15 = a3 != 0;
    sub_10002249C(buf);
  }

  else
  {
    v15 = 2;
  }

  sub_1000088CC(v18);

  return v15;
}

void sub_10002191C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10002195C(uint64_t a1, const void **a2, int a3, int *a4)
{
  if (qword_100B6D1A8)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_15:
    sub_1000D660C();
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    sub_1000D660C();
    return 101;
  }

  sub_1000D660C();
  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((a3 & 0x8000) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  result = 101;
  if (a1)
  {
    v9 = qword_100B6D1A8;
    if (qword_100B6D1A8)
    {
      if (!a3)
      {
        byte_100B6D190 = 1;
      }

      v10 = word_100B6D19C;
      if (word_100B6D19C)
      {
        v11 = (qword_100B6D1A8 + 8);
        if (*(qword_100B6D1A8 + 8))
        {
          v12 = 0;
          v13 = qword_100B6D1A8;
          while (1)
          {
            v14 = ++v12;
            if (v12 >= word_100B6D19C)
            {
              break;
            }

            v13 = qword_100B6D1A8 + 24 * v12;
            if (!*(v13 + 8))
            {
              v11 = (v13 + 8);
              v9 = qword_100B6D1A8 + 24 * v12;
              goto LABEL_19;
            }
          }

          v15 = 0;
          v9 = v13;
        }

        else
        {
          v14 = 0;
          v12 = 0;
LABEL_19:
          if (word_100B6D198 < v12)
          {
            word_100B6D198 = v12;
            if (dword_100B6D1B8 < v14)
            {
              dword_100B6D1B8 = v14;
            }
          }

          sub_100022690(v9, a3);
          *v9 = 2;
          *v11 = a1;
          v16 = *(v9 + 4);
          if (((v16 + 1) & 0x10000) != 0)
          {
            v17 = v16 + 2;
          }

          else
          {
            v17 = v16 + 1;
          }

          *(v9 + 4) = v17;
          v15 = v17 | (v14 << 16);
          v10 = word_100B6D19C;
        }
      }

      else
      {
        v12 = 0;
        v14 = 0;
        v9 = 0;
        v15 = 0;
      }

      if (v14 >= v10)
      {
        sub_1000D660C();
        v10 = word_100B6D19C;
      }

      if (!v9 || v14 == v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Dispatch table of size %d overflow: timeout %d, cbFunc0x %x", v20, v21, v22, v23, v24, v25, v26, word_100B6D19C);
          v27 = sub_10000C050(0x2Au);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_1000D660C();
        return 1002;
      }

      else
      {
        if (a2)
        {
          v18 = *a2;
          if (v18 > 8)
          {
            v28 = sub_100007618(v18, 0x1C4F2FEuLL);
            *(v9 + 16) = v28;
            if (!v28)
            {
              sub_10002256C(v12);
              return 106;
            }

            memmove(v28, a2[1], *a2);
            LOWORD(v18) = *a2;
          }

          else if (v18 >= 1)
          {
            v19 = 0;
            do
            {
              *(v9 + 16 + v19) = *(a2[1] + v19);
              ++v19;
            }

            while (v19 < *a2);
            LOWORD(v18) = *a2;
          }
        }

        else
        {
          LOWORD(v18) = 0;
        }

        *(v9 + 6) = v18;
        result = 0;
        if (a4)
        {
          *a4 = v15;
        }
      }
    }
  }

  return result;
}