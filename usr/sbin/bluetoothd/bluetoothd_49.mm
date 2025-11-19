void sub_100329724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(a1);
}

double sub_100329760(__n128 *a1, __n128 a2)
{
  if (!a1[11].n128_u64[0])
  {
    v13[5] = v2;
    v13[6] = v3;
    v13[0] = 0;
    if (qword_100B50DB8 != -1)
    {
      sub_100818D9C();
    }

    v5 = off_100B50DB0;
    v6 = sub_100011794(a1[8].n128_i64[0]);
    sub_1005C635C(v5, v6, v13, &v11);
    if (v12)
    {
      sub_100117644(v12);
    }

    if (qword_100B50DB8 != -1)
    {
      sub_1008193FC();
    }

    sub_1005C6590(off_100B50DB0, v13[0], &v10);
    a2 = v10;
    v10 = 0uLL;
    v7 = a1[11].n128_u64[1];
    a1[11] = a2;
    if (v7)
    {
      sub_100117644(v7);
      if (v10.n128_u64[1])
      {
        sub_100117644(v10.n128_u64[1]);
      }

      v8 = a1[11].n128_i64[0];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = a2.n128_u64[0];
      if (a2.n128_u64[0])
      {
LABEL_12:
        v10.n128_u64[0] = sub_100328FFC;
        v10.n128_u64[1] = sub_100329240;
        sub_1005C1D20(v8, v13[0], &v10, a1);
      }
    }
  }

  return a2.n128_f64[0];
}

void sub_100329878(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_1000C23E0(a2, &v19);
    if (SHIBYTE(v21) < 0)
    {
      v4 = v19;
      if (!v19)
      {
        v14 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v4 = &v19;
    }

    v25[0] = 0;
    v25[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100819030();
    }

    sub_1000498D4(off_100B508C8, (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133], 1u, 0, 0, 0, v25);
    v5 = [NSString stringWithUTF8String:v4];
    if (v5)
    {
      v6 = sub_10004DF60(v25);
      v7 = v6;
      if (v6)
      {
        v22[0] = @"kCBMsgArgDeviceUUID";
        v22[1] = @"kCBMsgArgName";
        v23[0] = v6;
        v23[1] = v5;
        v8 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
        sub_100052EE4(a1, 51, v8);

        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
        {
          sub_100819568();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008195DC();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v9 = sub_10004DF60(v25);
        sub_10081964C(v9, v24);
      }

      v7 = objc_alloc_init(NSMutableString);
      v10 = HIBYTE(v21);
      if (v21 < 0)
      {
        v10 = v20;
      }

      if (v10)
      {
        for (i = 0; i < v12; ++i)
        {
          [v7 appendFormat:@"%X ", *(v4 + i)];
          v12 = HIBYTE(v21);
          if (v21 < 0)
          {
            v12 = v20;
          }
        }
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008196A0();
      }

      if (qword_100B53FE8 != -1)
      {
        sub_100819710();
      }

      v13 = qword_100B53FE0;
      sub_100007E30(v17, "XpcClassicConnection::deviceNameUpdated");
      sub_100007E30(__p, "Unparseable name change");
      sub_1005780BC(v13, v17, __p, 0.0);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      v14 = v19;
LABEL_33:
      operator delete(v14);
    }
  }
}

void sub_100329BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100329C40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000C23E0(a2, &__p);
    v5 = v9 < 0 && __p == 0;
    if (v9 < 0)
    {
      operator delete(__p);
      if (v5)
      {
        return;
      }
    }

    else if (v5)
    {
      return;
    }

    v6 = sub_100007EE8();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100329D04;
    v7[3] = &unk_100AE0860;
    v7[4] = a1;
    v7[5] = a2;
    sub_10000CA94(v6, v7);
  }
}

void sub_100329D04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508D0 != -1)
  {
    sub_100818D4C();
  }

  v9[0] = 0;
  v9[1] = 0;
  v3 = *(a1 + 40);
  sub_1000498D4(off_100B508C8, (v3[128] << 40) | (v3[129] << 32) | (v3[130] << 24) | (v3[131] << 16) | (v3[132] << 8) | v3[133], 1u, 0, 0, 0, v9);
  v4 = sub_10004DF60(v9);
  v5 = v4;
  if (v4)
  {
    v6 = sub_100328944(v4);
    sub_10004DFB8(v2, 51, v6, 1);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(*(a1 + 40), v7);
    sub_100819738(v7, v8);
  }
}

void sub_100329E68(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v7 = *v7;
    }

    v8[0] = 67109378;
    v8[1] = a3;
    v9 = 2082;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'connectable state' event with state %d to session %{public}s", v8, 0x12u);
  }

  xpc_dictionary_set_BOOL(v5, "kCBMsgArgConnectableState", a3);
  sub_10004DFB8(a1, 6, v5, 1);
}

void sub_100329F78(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v7 = *v7;
    }

    v8[0] = 67109378;
    v8[1] = a3;
    v9 = 2082;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'discoverable state' event with state %d to session %{public}s", v8, 0x12u);
  }

  xpc_dictionary_set_BOOL(v5, "kCBMsgArgDiscoverableState", a3);
  sub_10004DFB8(a1, 6, v5, 1);
}

void sub_10032A088(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v7 = *v7;
    }

    v8[0] = 67109378;
    v8[1] = a3;
    v9 = 2082;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'inquiry state' event with state %d to session %{public}s", v8, 0x12u);
  }

  xpc_dictionary_set_BOOL(v5, "kCBMsgArgInquiryState", a3);
  sub_10004DFB8(a1, 6, v5, 1);
}

void sub_10032A198(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v2 + 56);
    if (*(v2 + 79) < 0)
    {
      v4 = *v4;
    }

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to register pairing agent", &v5, 0xCu);
  }

  if (qword_100B512F8 != -1)
  {
    sub_100818CC0();
  }

  sub_1003AFB24(off_100B512F0, *(v2 + 128), *(a1 + 40));
}

void sub_10032A284(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (v1 + 56);
    if (*(v1 + 79) < 0)
    {
      v3 = *v3;
    }

    v4 = 136446210;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to unregister pairing agent", &v4, 0xCu);
  }

  if (qword_100B512F8 != -1)
  {
    sub_100818CC0();
  }

  sub_1000787AC(off_100B512F0, *(v1 + 128));
}

void sub_10032A360(uint64_t a1)
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
      v2 += 8;
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

void sub_10032A4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10032A504(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B53FD8 != -1)
  {
    sub_100819424();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = *(v2 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  sub_10004DFB4(uu, *(a1 + 32));
  sub_1004C6C6C(v3, v4, (v2 + 152), v5, v6, 0, v7, 0, 0, 0, uu, 0, 0);
}

void sub_10032A5E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B53FD8 != -1)
  {
    sub_100819424();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 48);
  sub_10004DFB4(uu, *(a1 + 32));
  sub_1004C8290(v3, v4, v5, uu);
}

void sub_10032A690(uint64_t a1, int a2, int a3)
{
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    LOWORD(v21) = 1024;
    *(&v21 + 2) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Classic Channel published callback PSM : %u result : %d", buf, 0xEu);
  }

  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = sub_100042294;
  v24 = sub_1000425DC;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 216);
  v7 = *(a1 + 280);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10032A9A0;
  v13[3] = &unk_100AEB8A8;
  v14 = a2;
  v13[4] = buf;
  v13[5] = &v16;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];
  if (*(v21 + 5))
  {
    if (a3)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008197A8();
      }

      v12 = 0;
      sub_1000216B4(&v12);
      sub_1002F8018(*(v17 + 6));
      sub_100022214(&v12);
      v8 = *(a1 + 280);
      v9 = [NSNumber numberWithUnsignedInt:*(v17 + 6)];
      [v8 removeObjectForKey:v9];

      sub_10002249C(&v12);
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, "kCBMsgArgResult", a3);
    v11 = [*(v21 + 5) bytes];
    xpc_dictionary_set_data(v10, "kCBMsgArgServiceUUID", v11, [*(v21 + 5) length]);
    sub_10004DFB8(a1, 52, v10, 1);
  }

  sub_1000088CC(v15);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);
}

void sub_10032A938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a20);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void sub_10032A9A0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10032AA84;
  v9[3] = &unk_100AEB880;
  v12 = *(a1 + 48);
  v11 = *(a1 + 32);
  v10 = v7;
  v8 = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_10032AA84(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = *(a1 + 56);
  if ([v9 intValue] == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) intValue];
    *a4 = 1;
  }
}

void sub_10032AB50(uint64_t a1, int a2, int a3)
{
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    LOWORD(v22) = 1024;
    *(&v22 + 2) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Classic Channel unpublished callback PSM : %u, result : %d", buf, 0xEu);
  }

  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = sub_100042294;
  v25 = sub_1000425DC;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 216);
  v7 = *(a1 + 280);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10032AE14;
  v12[3] = &unk_100AEB8A8;
  v13 = a2;
  v12[4] = buf;
  v12[5] = &v15;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];
  if (*(v22 + 5))
  {
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v16 + 6);
      *v19 = 67109120;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Classic Channel unpublished removing SRH 0x%X", v19, 8u);
    }

    v19[0] = 0;
    sub_1000216B4(v19);
    sub_1002F8018(*(v16 + 6));
    sub_100022214(v19);
    v10 = *(a1 + 280);
    v11 = [NSNumber numberWithUnsignedInt:*(v16 + 6)];
    [v10 removeObjectForKey:v11];

    sub_10002249C(v19);
  }

  sub_1000088CC(v14);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(buf, 8);
}

void sub_10032ADB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);

  sub_10002249C(va2);
  sub_1000088CC(va);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_10032AE14(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10032AEF8;
  v9[3] = &unk_100AEB880;
  v12 = *(a1 + 48);
  v11 = *(a1 + 32);
  v10 = v7;
  v8 = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_10032AEF8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = *(a1 + 56);
  if ([v9 intValue] == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) intValue];
    *a4 = 1;
  }
}

void sub_10032AFC4(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, BOOL a6, int a7, unsigned int a8)
{
  v15 = a2;
  v16 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v20 = __PAIR64__(a3, 67109888);
    LOWORD(v21) = 1024;
    *(&v21 + 2) = a4;
    HIWORD(v21) = 1024;
    v22 = a5;
    v23 = 1024;
    v24 = a7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Classic Channel connected callback : result: 0x%x, psm: 0x%x, cid: 0x%x, sock: 0x%x", &v20, 0x1Au);
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v15;
  v19 = v18;
  if (v18)
  {
    v20 = 0;
    v21 = 0;
    [v18 getUUIDBytes:&v20];
    xpc_dictionary_set_uuid(v17, "kCBMsgArgDeviceUUID", &v20);
  }

  xpc_dictionary_set_int64(v17, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v17, "kCBMsgArgPSM", a4);
  xpc_dictionary_set_int64(v17, "kCBMsgArgCID", a5);
  xpc_dictionary_set_int64(v17, "kCBMsgArgOutMTU", a8);
  xpc_dictionary_set_fd(v17, "kCBMsgArgSocket", a7);
  xpc_dictionary_set_BOOL(v17, "kCBMsgArgIsIncoming", a6);
  sub_10004DFB8(a1, 27, v17, 1);
}

void sub_10032B1C4(uint64_t a1, void *a2, int a3, unsigned int a4, int a5)
{
  v9 = a2;
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 67109632;
    HIDWORD(v14) = a3;
    LOWORD(v15) = 1024;
    *(&v15 + 2) = a4;
    HIWORD(v15) = 1024;
    v16 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Classic Channel disconnected callback result : %d, psm : %u, cid = %u", &v14, 0x14u);
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v9;
  v13 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = 0;
    [v12 getUUIDBytes:&v14];
    xpc_dictionary_set_uuid(v11, "kCBMsgArgDeviceUUID", &v14);
  }

  xpc_dictionary_set_int64(v11, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v11, "kCBMsgArgPSM", a4);
  sub_10004DFB8(a1, 28, v11, 1);
}

uint64_t sub_10032B354(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = a3;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  byte_100B6D2A0 = 1;
  word_100B6D2A2 = 2;
  dword_100B6D2A8 = a4;
  if ([v5 length] == 2)
  {
    v6 = [v5 bytes];
    v7 = 2;
  }

  else
  {
    v8 = [v5 length];
    v9 = v5;
    v6 = [v5 bytes];
    if (v8 == 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 16;
    }
  }

  if ((atomic_load_explicit(&qword_100B6D2B0, memory_order_acquire) & 1) == 0)
  {
    sub_100819818(v7, v6);
  }

  *&v15[0] = &unk_100AEB8F8;
  WORD4(v15[0]) = 3;
  v13 = 0;
  sub_1000216B4(&v13);
  v10 = sub_1002F7E1C(v15, &v14);
  sub_100022214(&v13);
  if (v10)
  {
    v11 = 0;
    v14 = 0;
  }

  else
  {
    v11 = v14;
  }

  sub_10002249C(&v13);

  return v11;
}

uint64_t sub_10032B4B4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "addServiceDataToLocalSDP: %@", buf, 0xCu);
  }

  v55 = v2;
  if (!v2)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100819B20();
    }

    goto LABEL_61;
  }

  if (![v2 length])
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100819AE4();
    }

    goto LABEL_61;
  }

  v69 = 0;
  v70 = 0;
  *buf = 0u;
  v77 = 0u;
  v68 = 0;
  v4 = v2;
  if (![v2 bytes])
  {
    v6 = "(uint8_t*)serviceRecordData.bytes";
LABEL_97:
    v7 = 1574;
    goto LABEL_99;
  }

  if (![v2 length])
  {
    v6 = "(serviceRecordData.length) > 0";
    goto LABEL_97;
  }

  HIBYTE(v70) = 0;
  v5 = v2;
  v69 = [v2 bytes];
  LOWORD(v70) = [v2 length];
  WORD1(v70) = [v2 length];
  v6 = "((byteStreamData).__data != NULL) && ((byteStreamData).__trueSize > 0)";
  v7 = 1575;
  if (!v69 || !v70)
  {
LABEL_99:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Daemon/Server/XpcClassicConnection.mm", v7, v6);
  }

  BYTE6(v70) = 1;
  *(&v70 + 2) = v70;
  if (v70 <= 1u)
  {
    v6 = "ByteStream_NumReadBytesAvail(byteStreamData) >= 2";
    v7 = 1576;
    goto LABEL_99;
  }

  v8 = *v69;
  WORD2(v70) = 2;
  v9 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v74 = 67109376;
    *&v74[4] = v8;
    *&v74[8] = 1024;
    *&v74[10] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "addServiceDataToLocalSDP: Number of attributes: %d, 0x%x", v74, 0xEu);
  }

  v10 = malloc_type_calloc(v8, 0x18uLL, 0x10F20406C095635uLL);
  if (!v10)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100819AA8();
    }

LABEL_61:
    v28 = 0;
    goto LABEL_62;
  }

  if (v8)
  {
    LODWORD(v11) = 0;
    v12 = "ByteStream_NumReadBytesAvail(byteStreamData) >= 2";
    while (1)
    {
      if (HIBYTE(v70))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Daemon/Server/XpcClassicConnection.mm");
        v12 = "ByteStream_NumReadBytesAvail(byteStreamData) >= 2";
LABEL_94:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Daemon/Server/XpcClassicConnection.mm", 1590, v12);
      }

      if (WORD1(v70) - WORD2(v70) <= 1)
      {
        goto LABEL_94;
      }

      if (BYTE6(v70) != 1)
      {
        v12 = "(byteStreamData).__RWFlag == BYTESTREAM_READ";
        goto LABEL_94;
      }

      v13 = *(v69 + WORD2(v70));
      v14 = *(v69 + WORD2(v70) + 1);
      v15 = v13 | (v14 << 8);
      WORD2(v70) += 2;
      v16 = &v10[24 * v11];
      *v16 = v13 | (v14 << 8);
      if ((sub_10037D640(&v69, (v16 + 8)) & 1) == 0)
      {
        break;
      }

      if ((v13 & 2) == v15 || (v15 <= 8 ? (v17 = ((1 << v15) & 0x160) == 0) : (v17 = 1), !v17))
      {
        LOWORD(v8) = v8 - 1;
        LODWORD(v11) = v11 - 1;
      }

      LODWORD(v11) = v11 + 1;
      if (v11 >= v8)
      {
        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10081988C();
    }

    if (v11)
    {
      v31 = v10 + 8;
      v11 = v11;
      do
      {
        sub_10037D4F4(v31);
        v31 += 24;
        --v11;
      }

      while (v11);
    }

    free(v10);
    goto LABEL_61;
  }

LABEL_26:
  *buf = v10;
  *&buf[8] = v8;
  *&v77 = 0;
  WORD4(v77) = 0;
  v67 = 0;
  v18 = sub_1000216B4(&v67);
  if (v8)
  {
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = &v10[24 * v19];
      if (*v21 == 1)
      {
        *v74 = *v21;
        v75 = *(v21 + 2);
        v22 = sub_10032BEE4(v18, v74);

        if (![v22 count])
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_1008199C0();
          }

          v28 = 0;
          v20 = v22;
          goto LABEL_88;
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v20 = v22;
        v23 = [v20 countByEnumeratingWithState:&v63 objects:v73 count:16];
        if (v23)
        {
          v24 = *v64;
          while (2)
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v64 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v63 + 1) + 8 * i);
              if ([v26 length] > 4)
              {
                if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
                {
                  sub_100819904(&v61, v62);
                }
              }

              else
              {
                *v71 = 0;
                v27 = v26;
                v28 = sub_1002F5A7C(*[v26 bytes], v71);
                v29 = qword_100BCE950;
                v30 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
                if (v28)
                {
                  if (v30)
                  {
                    sub_100819940();
                  }

                  goto LABEL_88;
                }

                if (v30)
                {
                  *v74 = 138412290;
                  *&v74[4] = v26;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "New service being added for %@", v74, 0xCu);
                }
              }
            }

            v23 = [v20 countByEnumeratingWithState:&v63 objects:v73 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }
      }

      if (++v19 == v8)
      {
        goto LABEL_64;
      }
    }
  }

  v20 = 0;
LABEL_64:
  v33 = sub_1002F7E1C(buf, &v68);
  sub_100022214(&v67);
  v34 = qword_100BCE950;
  if (v33)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008199FC();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 67109120;
      *&v74[4] = v68;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "addServiceDataToLocalSDP: SRH 0x%X", v74, 8u);
    }

    memset(v74, 0, sizeof(v74));
    sub_100007F88(v74, a1 + 216);
    v53 = +[NSMutableArray array];
    if (v8)
    {
      v52 = v57;
      v36 = v8;
      v37 = (v10 + 8);
      *&v35 = 67109120;
      v51 = v35;
      do
      {
        v38 = *(v37 - 8);
        if (v38 == 13 || v38 == 4)
        {
          v40 = sub_10032C05C(a1, v37);
          if (v40)
          {
            v41 = [NSNumber numberWithUnsignedShort:v40];
            v42 = [v53 containsObject:v41];

            if ((v42 & 1) == 0)
            {
              v43 = qword_100BCE950;
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
              {
                *v71 = v51;
                v72 = v40;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "addServiceDataToLocalSDP: publishing PSM %d", v71, 8u);
              }

              v44 = [NSNumber numberWithUnsignedShort:v40, v51, v52];
              [v53 addObject:v44];

              if (v20)
              {
                v45 = [v20 firstObject];
                v46 = [NSNumber numberWithUnsignedShort:v40];
                v47 = [NSMutableDictionary dictionaryWithObject:v45 forKey:v46];
                v48 = *(a1 + 280);
                v49 = [NSNumber numberWithUnsignedInt:v68];
                [v48 setObject:v47 forKeyedSubscript:v49];
              }

              else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_100819A6C(&v59, v60);
              }

              v50 = sub_100007EE8();
              v56[0] = _NSConcreteStackBlock;
              v56[1] = 3221225472;
              v57[0] = sub_10032C144;
              v57[1] = &unk_100AEB940;
              v57[2] = a1;
              v58 = v40;
              sub_10000D334(v50, v56);
            }
          }
        }

        v37 += 24;
        --v36;
      }

      while (v36);
    }

    sub_1000088CC(v74);
  }

  v28 = v68;
LABEL_88:

  sub_10002249C(&v67);
LABEL_62:

  return v28;
}

void sub_10032BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int16 a36, char a37, char a38)
{
  sub_1000088CC(v39 - 192);

  sub_10002249C(&a38);
  _Unwind_Resume(a1);
}

id sub_10032BEE4(uint64_t a1, uint64_t a2)
{
  v3 = +[NSMutableArray array];
  if (*a2 == 1 && *(a2 + 8) == 6)
  {
    v4 = *(a2 + 10);
    if (*(a2 + 10))
    {
      v5 = *(a2 + 16);
      while (1)
      {
        v9 = *v5;
        if (v9 == 3)
        {
          break;
        }

        ++v5;
        if (!--v4)
        {
          goto LABEL_11;
        }
      }

      if (WORD1(v9) == 16)
      {
        v10 = **(&v9 + 1);
        v6 = [NSData dataWithBytes:&v10 length:16];
        [v3 addObject:v6];
      }

      else
      {
        v7 = [NSData dataWithBytes:&v9 + 8 length:4];
        [v3 addObject:v7];
      }
    }
  }

LABEL_11:

  return v3;
}

void sub_10032C020(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_10032C05C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 6)
  {
    v15 = v2;
    v16 = v3;
    v14 = xmmword_1008A5E50;
    if (!*(a2 + 2))
    {
LABEL_14:
      LOWORD(result) = 0;
      return result;
    }

    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *(a2 + 8);
      if (*(v8 + v6) == 6)
      {
        LODWORD(result) = sub_10032C05C(a1, v8 + v6);
        if (result)
        {
          return result;
        }

        v10 = *(a2 + 2);
      }

      else
      {
        v11 = sub_10037E730(v8 + v6, &v14);
        v10 = *(a2 + 2);
        v12 = !v11 || v7 >= v10;
        if (!v12)
        {
          v13 = *(a2 + 8) + v6;
          if (*(v13 + 16) == 1)
          {
            LODWORD(result) = *(v13 + 24);
            return result;
          }
        }
      }

      v6 += 16;
      v12 = v7++ >= v10;
      if (v12)
      {
        goto LABEL_14;
      }
    }
  }

  LOWORD(result) = 0;
  return result;
}

void sub_10032C144(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B53FD8 != -1)
  {
    sub_100819424();
  }

  sub_1004C562C(qword_100B53FD0, *(v2 + 128), v2 + 152, *(v2 + 40), *(a1 + 40), 0, 0, 0, 0, 0, 0, 0, 0);
}

void sub_10032C1C0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10032C28C;
  v9[3] = &unk_100AEB968;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

id sub_10032C28C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isEqualToData:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_10032C2D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B53FD8 != -1)
  {
    sub_100819424();
  }

  sub_1004C562C(qword_100B53FD0, *(v2 + 128), v2 + 152, *(v2 + 40), *(a1 + 40), 0, 0, 0, 0, 0, 0, 0, 0);
}

void sub_10032C354(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10032C458;
  v12[3] = &unk_100AEB9B8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v8;
  v15 = v9;
  v10 = v7;
  v11 = *(a1 + 48);
  v14 = v10;
  v16 = v11;
  [a3 enumerateKeysAndObjectsUsingBlock:v12];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }
}

void sub_10032C458(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ([v7 isEqualToData:*(a1 + 32)])
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) intValue];
    *(*(*(a1 + 56) + 8) + 24) = [v8 intValue];
    *a4 = 1;
  }
}

void sub_10032C50C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B53FD8 != -1)
  {
    sub_100819424();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = *(*(*(a1 + 32) + 8) + 24);

  sub_1004C64D0(v3, v4, v5);
}

void sub_10032C570(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032C624;
  v8[3] = &unk_100AEBA08;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_10032C624(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  v16 = 0;
  sub_1000216B4(&v16);
  LODWORD(a1) = sub_1002F8018([*(a1 + 32) intValue]);
  sub_100022214(&v16);
  if (!a1)
  {
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(*(v7 + 128), __p);
      if (v15 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 138412546;
      v18 = v6;
      v19 = 2082;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully removed service uuid %@  for session %{public}s", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = sub_100007EE8();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10032C810;
    v11[3] = &unk_100AE1200;
    v13 = v7;
    v12 = v5;
    sub_10000CA94(v10, v11);
  }

  sub_10002249C(&v16);
}

void sub_10032C7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_10002249C(&a21);

  _Unwind_Resume(a1);
}

void sub_10032C810(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B53FD8 != -1)
  {
    sub_100819424();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = [*(a1 + 32) intValue];

  sub_1004C64D0(v3, v4, v5);
}

void sub_10032C890(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, int a6, _BOOL4 a7, int a8)
{
  v15 = a2;
  v16 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v25) = 67110400;
    HIDWORD(v25) = a3;
    LOWORD(v26) = 1024;
    *(&v26 + 2) = a4;
    HIWORD(v26) = 1024;
    v27 = a5;
    v28 = 1024;
    v29 = a6;
    v30 = 1024;
    v31 = a7;
    v32 = 1024;
    v33 = a8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "RFCOMM Channel connected: result: 0x%x, rfcommChannelID: 0x%x, frameSize: 0x%x, link handle: 0x%x, incoming?: %d, sock: 0x%x", &v25, 0x26u);
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v15;
  v19 = v18;
  if (v18)
  {
    v25 = 0;
    v26 = 0;
    [v18 getUUIDBytes:&v25];
    xpc_dictionary_set_uuid(v17, "kCBMsgArgDeviceUUID", &v25);
  }

  xpc_dictionary_set_int64(v17, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v17, "kCBMsgArgRFCOMMChannelID", a4);
  xpc_dictionary_set_int64(v17, "kCBMsgArgMTU", a5);
  xpc_dictionary_set_BOOL(v17, "kCBMsgArgIsIncoming", a7);
  xpc_dictionary_set_fd(v17, "kCBMsgArgSocket", a8);
  if (qword_100B508D0 != -1)
  {
    sub_100819030();
  }

  v20 = sub_100046458(off_100B508C8, v19, 0);
  if (qword_100B508F0 != -1)
  {
    sub_100819058();
  }

  v21 = sub_1000504C8(off_100B508E8, v20, 0);
  if (v21)
  {
    v22 = sub_10054D334(v21, a4);
    v23 = v22;
    if (v22)
    {
      v24 = v22;
      xpc_dictionary_set_data(v17, "kCBMsgArgServiceUUID", [v23 bytes], objc_msgSend(v23, "length"));
    }
  }

  sub_10004DFB8(a1, 62, v17, 1);
}

void sub_10032CB54(uint64_t a1, void *a2, int a3, unsigned int a4, int a5)
{
  v9 = a2;
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 67109632;
    HIDWORD(v14) = a3;
    LOWORD(v15) = 1024;
    *(&v15 + 2) = a4;
    HIWORD(v15) = 1024;
    v16 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "RFCOMM Channel disconnected: result: 0x%x, rfcommChannelID: 0x%x, link handle: 0x%x", &v14, 0x14u);
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v9;
  v13 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = 0;
    [v12 getUUIDBytes:&v14];
    xpc_dictionary_set_uuid(v11, "kCBMsgArgDeviceUUID", &v14);
  }

  xpc_dictionary_set_int64(v11, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v11, "kCBMsgArgRFCOMMChannelID", a4);
  sub_10004DFB8(a1, 63, v11, 1);
}

uint64_t sub_10032CD14(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

id sub_10032DC54(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MAFetch: PowerTable Evaluation Notification Received %@", &v5, 0xCu);
  }

  return [*(a1 + 40) processPowerTableEvaluationNotification:*(a1 + 32)];
}

void sub_10032E018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_10032E234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10032E3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10032E5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_10032E6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_10032E84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_10032E9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10032EB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10032EBA0(uint64_t a1)
{
  v2 = sub_100589578(a1, "AACPService", 0x80000);
  *v2 = off_100AEBC90;
  sub_100044BBC(v2 + 41);
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  if (qword_100B50950 != -1)
  {
    sub_100819D94();
  }

  v3 = off_100B50948;
  *(a1 + 424) = off_100B50948;
  sub_100589880(a1, v3);
  return a1;
}

void sub_10032EC2C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 400);
  if (v3)
  {
    *(v1 + 408) = v3;
    operator delete(v3);
  }

  sub_10007A068(v1 + 328);
  sub_100589670(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10032EC64(void *a1)
{
  *a1 = off_100AEBC90;
  v2 = a1[50];
  if (v2)
  {
    a1[51] = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 41);

  return sub_100589670(a1);
}

void sub_10032ECD0(void *a1)
{
  sub_10032EC64(a1);

  operator delete();
}

uint64_t sub_10032ED08(uint64_t a1)
{
  v2 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AACPService start", v4, 2u);
  }

  return sub_100589A28(a1);
}

uint64_t sub_10032ED7C(uint64_t a1)
{
  v2 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AACPService stop", v4, 2u);
  }

  return sub_100589D2C(a1);
}

uint64_t sub_10032EDF0(uint64_t a1, uint64_t a2)
{
  v8 = unk_100AEBD80;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v8, 4u))
    {
      v4 = 4;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v9 = 0;
  sub_100016250(&v9);
  *&v7 = v9;
  *(&v7 + 1) = SWORD2(v9);
  return sub_100539554(a2, v5, v4, &v7, 0);
}

BOOL sub_10032EE98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = unk_100AEBD90;
  *a3 = 0;
  result = sub_10053C3E8(a2);
  if (result)
  {
    result = sub_10053A020(a2, &v6, 4u);
    if (result)
    {
      *a3 = 1;
    }
  }

  return result;
}

void sub_10032EF00(void *a1, uint64_t a2)
{
  v4 = a1[50];
  v5 = a1[51];
  if (v4 == v5)
  {
LABEL_5:
    v7 = a1[52];
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v10 = v7 - v4;
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
        sub_100008108((a1 + 50), v12);
      }

      v14 = (8 * v9);
      *v14 = a2;
      v8 = 8 * v9 + 8;
      v15 = a1[50];
      v16 = a1[51] - v15;
      v17 = v14 - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = a1[50];
      a1[50] = v17;
      a1[51] = v8;
      a1[52] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    a1[51] = v8;
  }

  else
  {
    v6 = a1[50];
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_5;
      }
    }

    v13 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_100819DA8(a2, v13);
    }
  }
}

BOOL sub_10032F01C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 400);
  v2 = *(a1 + 408);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = v3 + 8;
  do
  {
    v5 = *(v4 - 8);
    result = v5 == a2;
    v7 = v5 == a2 || v4 == v2;
    v4 += 8;
  }

  while (!v7);
  return result;
}

void *sub_10032F050(void *result, uint64_t a2)
{
  v3 = result[50];
  v2 = result[51];
  if (v3 != v2)
  {
    v4 = result;
    v5 = v2 - v3 - 8;
    while (*v3 != a2)
    {
      v3 += 8;
      v5 -= 8;
      if (v3 == v2)
      {
        return result;
      }
    }

    if (v3 + 8 != v2)
    {
      result = memmove(v3, v3 + 8, v5);
    }

    v4[51] = &v3[v5];
  }

  return result;
}

char *sub_10032F0E4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[31] < 0)
  {
    return sub_100008904(a2, *(result + 1), *(result + 2));
  }

  *a2 = *(result + 8);
  *(a2 + 16) = *(result + 3);
  return result;
}

uint64_t sub_10032F1B4(uint64_t a1)
{
  v2 = sub_10032F49C(a1, 24);
  v3 = v2 + 32;
  v4 = (v2 + 36);
  *v2 = off_100AEBDD0;
  v2[32] = &off_100AEBEB0;
  v2[33] = off_100AEBEC8;
  v2[34] = off_100AEBEF0;
  v2[35] = off_100AEBF20;
  v2[36] = off_100AEBF40;
  v2[43] = 0;
  v2[44] = 0;
  v2[42] = 0;
  v2[38] = 0;
  v2[39] = 0;
  v2[37] = off_100AEBF70;
  sub_100044BBC(v2 + 45);
  *(a1 + 428) = 0;
  *(a1 + 424) = 0;
  *(a1 + 440) = @"XZ";
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 1065353216;
  *(a1 + 488) = 0u;
  *(a1 + 504) = -1;
  *(a1 + 512) = -1;
  *(a1 + 544) = 0u;
  *(a1 + 536) = a1 + 544;
  sub_10035C0A8((a1 + 560));
  sub_100044BBC(a1 + 648);
  *(a1 + 328) = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_100819E68();
  }

  sub_100312650(off_100B50A98 + 64, v4);
  v5 = sub_1004327A0();
  (*(*v5 + 32))(v5, v3);
  v6 = sub_1000D999C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032F52C;
  v8[3] = &unk_100ADF8F8;
  v8[4] = a1;
  sub_10000CA94(v6, v8);
  *(a1 + 520) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 528) = 28927;
  return a1;
}

void sub_10032F3FC(_Unwind_Exception *a1)
{
  sub_10035C0F8(v1 + 560);
  sub_10000CEDC(v1 + 536, *v3);
  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    (*(*v5 + 64))(v5);
  }

  sub_10035FFD8(v1 + 448);

  sub_10007A068(v1 + 360);
  v6 = *(v1 + 336);
  if (v6)
  {
    *(v1 + 344) = v6;
    operator delete(v6);
  }

  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10032F49C(uint64_t a1, int a2)
{
  *a1 = off_100AEC398;
  sub_100044BBC(a1 + 16);
  *(a1 + 80) = 0;
  sub_100044BBC(a1 + 88);
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = a2;
  return a1;
}

void sub_10032F52C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100819E7C();
  }

  v2 = off_100B54078;

  sub_1006FCA38(v2, v1 + 296);
}

uint64_t sub_10032F580(uint64_t a1)
{
  *a1 = off_100AEC398;
  sub_10000CEDC(a1 + 224, *(a1 + 232));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    *(a1 + 160) = v4;
    operator delete(v4);
  }

  sub_10007A068(a1 + 88);
  sub_10007A068(a1 + 16);
  return a1;
}

uint64_t sub_10032F610(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_100819E90();
  }

  if (sub_1005BBCCC(off_100B50908))
  {
    v2 = MGCopyAnswer();
    v3 = [v2 componentsSeparatedByString:@"."];
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [NSString stringWithFormat:@"%@", v4];

    if ([v5 isEqualToString:off_100B53FF0])
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      if (qword_100B50F88 != -1)
      {
        sub_100819EA4();
      }

      sub_10009DB3C(off_100B50F80, &v22);
      v6 = v22;
      v7 = v23;
      if (v22 != v23)
      {
        do
        {
          v8 = *v6;
          if (sub_1000E2140(*v6, 14))
          {
            v9 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v8, __p);
              v10 = v21 >= 0 ? __p : __p[0];
              *buf = 136446210;
              v26 = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrating double tap settings for device %{public}s", buf, 0xCu);
              if (v21 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v11 = sub_1000E3188(v8);
            sub_10053D6E4(v8, v11 | (v11 << 8));
          }

          ++v6;
        }

        while (v6 != v7);
        v6 = v22;
      }

      if (v6)
      {
        v23 = v6;
        operator delete(v6);
      }
    }
  }

  v12 = sub_10000C7D0();
  if ((sub_1000E01B4(v12, 2u) & 1) == 0)
  {
    *(a1 + 528) &= ~2uLL;
  }

  v13 = sub_10000C7D0();
  if ((sub_1000E01B4(v13, 3u) & 1) == 0)
  {
    *(a1 + 528) &= ~4uLL;
  }

  v14 = sub_10000C7D0();
  if ((sub_1000E01B4(v14, 0) & 1) == 0)
  {
    *(a1 + 528) &= ~8uLL;
  }

  v15 = sub_10000C7D0();
  if ((sub_1000E01B4(v15, 5u) & 1) == 0)
  {
    *(a1 + 528) &= ~0x10uLL;
  }

  v16 = sub_10000C7D0();
  if (((*(*v16 + 2904))(v16) & 1) == 0)
  {
    *(a1 + 528) &= ~0x1000uLL;
  }

  v17 = sub_10000C7D0();
  if ((sub_1000E01B4(v17, 6u) & 1) == 0)
  {
    *(a1 + 528) &= ~0x20uLL;
  }

  sub_10000C7D0();
  if (sub_100410814())
  {
    *(a1 + 528) |= 0x100uLL;
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    *(a1 + 528) |= 0x200uLL;
  }

  if (_os_feature_enabled_impl())
  {
    v18 = sub_10000C7D0();
    if ((*(*v18 + 2896))(v18))
    {
      *(a1 + 528) |= 0x800uLL;
    }
  }

  LOBYTE(v22) = 0;
  sub_1000216B4(&v22);
  sub_100187C84(off_100AEBFA0);
  sub_10002249C(&v22);
  return 0;
}

void sub_10032F9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10032FA8C(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v10 = a2;
  v11 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 1024;
    *&buf[20] = a4;
    v40 = 1024;
    v41 = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AACPClient::locationUpdate - country: %{public}@, CC: %u, LEFlag: %u, HDRFlag: %u", buf, 0x1Eu);
  }

  objc_storeStrong((a1 + 440), a2);
  v12 = *(a1 + 336);
  for (i = *(a1 + 344); v12 != i; ++v12)
  {
    v14 = *v12;
    if (*v12)
    {
      v15 = *(v14 + 80) - 8212;
      v16 = v15 > 0x14;
      v17 = (1 << v15) & 0x1916A1;
      if (!v16 && v17 != 0)
      {
        v19 = *v14;
        if (*v14)
        {
          if ((*(**(v14 + 768) + 176))(*(v14 + 768)) == 1)
          {
            buf[0] = 0;
            *&buf[1] = -1;
            *&buf[9] = -1;
            *&buf[16] = -1;
            v20 = sub_1004327A0();
            (*(*v20 + 16))(v20, *(a1 + 440), buf, *(*v12 + 80));
            v21 = sub_10032FE44(a1, v19, buf);
            v22 = v21;
            if (v21)
            {
              v23 = qword_100BCE8C0;
              v21 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
              if (v21)
              {
                sub_1000E5A58(v19, __p);
                v26 = __p;
                if (v29 < 0)
                {
                  v26 = __p[0];
                }

                *v33 = 67109634;
                v34 = a3;
                v35 = 2082;
                v36 = v26;
                v37 = 1024;
                v38 = v22;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to set country code (%u) for device %{public}s with result %u", v33, 0x18u);
                if (v29 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }

            v31 = 0;
            v32 = 0;
            v30 = 0;
            sub_10032FF80(v21, buf, &v32, &v31, &v30);
            v24 = sub_1003300AC(a1, v19, 7u, &v32, &v31, &v30);
            if (v24)
            {
              v25 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                sub_1000E5A58(v19, __p);
                v27 = __p;
                if (v29 < 0)
                {
                  v27 = __p[0];
                }

                *v33 = 67109634;
                v34 = a3;
                v35 = 2082;
                v36 = v27;
                v37 = 1024;
                v38 = v24;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to set band edges (%u) for device %{public}s with result %u", v33, 0x18u);
                if (v29 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10032FE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v7 = (*(**(*i + 768) + 104))(*(*i + 768), a2, a3);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v9);
    sub_100819EB8();
  }

  v7 = 312;
LABEL_9:
  sub_1000088CC(v10);
  return v7;
}

void sub_10032FF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10032FF80(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v9 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get channels to disable", v10, 2u);
  }

  *a3 = 0;
  *a4 = a2[1];
  *a5 = a2[2];
  a3[1] = 1;
  a4[1] = a2[4];
  a5[1] = a2[5];
  a3[2] = 2;
  a4[2] = a2[7];
  a5[2] = a2[8];
  a3[3] = 4;
  a4[3] = a2[13];
  a5[3] = a2[14];
  a3[4] = 5;
  a4[4] = a2[16];
  a5[4] = a2[17];
  a3[5] = 6;
  a4[5] = a2[19];
  a5[5] = a2[20];
  a3[6] = 7;
  a4[6] = a2[22];
  a5[6] = a2[23];
}

uint64_t sub_1003300AC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, unsigned __int8 *a5, char *a6)
{
  if (*(a1 + 328) != 1)
  {
    return 111;
  }

  v8 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v9 = v30 >= 0 ? &__p : __p;
    *buf = 136446466;
    v32 = v9;
    v33 = 1024;
    v34 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Send set band edges message to %{public}s, bandCount=%d", buf, 0x12u);
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

  if (a3)
  {
    v10 = a3;
    v11 = qword_100BCE8C0;
    v12 = a5;
    v13 = a4;
    v14 = a6;
    do
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v13;
        v16 = *v12;
        v17 = *v14;
        LODWORD(__p) = 67109632;
        HIDWORD(__p) = v15;
        v26 = 1024;
        v27 = v16;
        v28 = 1024;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Band Edges: connBandIndex=%d, low=%d, high=%d", &__p, 0x14u);
        v11 = qword_100BCE8C0;
      }

      ++v14;
      ++v12;
      ++v13;
      --v10;
    }

    while (v10);
  }

  LOBYTE(__p) = 0;
  sub_1000216B4(&__p);
  v18 = sub_10018A36C((a2 + 128), a3, a4, a5, a6);
  sub_100022214(&__p);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v19 = sub_1000DD584(off_100B50A98, v18, 10000);
  sub_10002249C(&__p);
  return v19;
}

uint64_t sub_100330308(uint64_t a1)
{
  v2 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Register AACP Profile", v4, 2u);
  }

  if (qword_100B54090 != -1)
  {
    sub_100819F34();
  }

  sub_10035C134(qword_100B54088 + 120, a1 + 280);
  return 0;
}

uint64_t sub_1003303A4(uint64_t a1)
{
  v2 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deregister AACP profile", v4, 2u);
  }

  if (qword_100B54090 != -1)
  {
    sub_100819F34();
  }

  sub_10007A3F0(qword_100B54088 + 120, a1 + 280);
  return 0;
}

uint64_t sub_100330440(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v5 = v11 >= 0 ? __p : __p[0];
    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "disconnecting %{public}s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = 0uLL;
  sub_100007F88(buf, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v7 = *i;
      if (**i == a2)
      {
        sub_1003603CC((a1 + 536), (a2 + 128));
        v8 = (*(*v7[96] + 136))(v7[96], a2);
        goto LABEL_15;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, __p);
    sub_100819EB8();
  }

  v8 = 312;
LABEL_15:
  sub_1000088CC(buf);
  return v8;
}

void sub_1003305E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100330600(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v10 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "connecting to %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = 0;
  sub_1000216B4(&v8);
  v5 = sub_100187D44(a2 + 128, off_100AEBFA0);
  sub_100022214(&v8);
  if (v5 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, __p);
    sub_100819F5C();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v6 = sub_1000DD584(off_100B50A98, v5, 10000);
  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_100330798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v7 = (*(**(*i + 768) + 88))(*(*i + 768), a2, a3);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v9);
    sub_100819EB8();
  }

  v7 = 312;
LABEL_9:
  sub_1000088CC(v10);
  return v7;
}

void sub_1003308B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003308D4(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v5 = (*(**(*i + 768) + 56))(*(*i + 768), a2);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v7);
    sub_100819EB8();
  }

  v5 = 312;
LABEL_9:
  sub_1000088CC(v8);
  return v5;
}

void sub_1003309E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100330A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v11 = (*(**(*i + 768) + 64))(*(*i + 768), a2, a3, a4, a5);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v13);
    sub_100819EB8();
  }

  v11 = 312;
LABEL_9:
  sub_1000088CC(v14);
  return v11;
}

void sub_100330B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100330B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v7 = (*(**(*i + 768) + 72))(*(*i + 768), a2, a3);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v9);
    sub_100819EB8();
  }

  v7 = 312;
LABEL_9:
  sub_1000088CC(v10);
  return v7;
}

void sub_100330C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100330C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v11 = (*(**(*i + 768) + 16))(*(*i + 768), a2, a3, a4, a5);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v13);
    sub_100819EB8();
  }

  v11 = 312;
LABEL_9:
  sub_1000088CC(v14);
  return v11;
}

void sub_100330DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100330DE4(uint64_t a1, unint64_t a2, unsigned __int16 *a3, uint64_t a4, size_t a5)
{
  v10 = sub_10000E92C();
  if (!(*(*v10 + 8))(v10))
  {
    return 2;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v11 = sub_1000E41C0(off_100B508E8, a2);
  v12 = *(a1 + 328);
  v13 = qword_100BCE8C0;
  if (v12)
  {
    v14 = v11;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v14, __p);
      v15 = v20 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v22 = a4;
      v23 = 2160;
      v24 = 1752392040;
      v25 = 2081;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "simulateAACPMsg: Message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v16 = sub_10018B884((v14 + 128), a3, a4, a5);
    sub_100022214(buf);
    if (v16 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081A010();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v17 = sub_1000DD584(off_100B50A98, v16, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_100819FD4();
    }

    return 111;
  }

  return v17;
}

uint64_t sub_100331030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v11 = v16 >= 0 ? __p : __p[0];
    *buf = 136446210;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "send device info message to %{public}s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = 0uLL;
  sub_100007F88(buf, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v13 = (*(**(*i + 768) + 144))(*(*i + 768), a2, a3, a4, a5);
        goto LABEL_15;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, __p);
    sub_100819EB8();
  }

  v13 = 312;
LABEL_15:
  sub_1000088CC(buf);
  return v13;
}

void sub_1003311E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100331204(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4)
{
  if (*(a1 + 328) != 1)
  {
    return 111;
  }

  v8 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v9 = v15 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "send setRemoteDeviceName to %{public}s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  if (sub_100189410((a2 + 128), 1, a3, a4) && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081A080();
  }

  v10 = sub_100188904((a2 + 128), 255);
  sub_100022214(__p);
  if (v10 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081A0F0();
  }

  v11 = sub_10000C798();
  if ((*(*v11 + 352))(v11))
  {
    sub_10033142C(a1, a2);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v12 = sub_1000DD584(off_100B50A98, v10, 10000);
  sub_10002249C(__p);
  return v12;
}

uint64_t sub_10033142C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C798();
  if (!(*(*v4 + 352))(v4))
  {
    return 17;
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  if (sub_100337E54(a1, a2))
  {
    v6 = [NSNumber numberWithInt:sub_1000E3314(a2)];
    [v5 setObject:v6 forKey:@"kCfgMicSide"];

    v7 = [NSNumber numberWithBool:sub_1000E356C(a2)];
    [v5 setObject:v7 forKey:@"kCfgInEarMode"];

    v8 = [NSNumber numberWithInt:sub_1000E3188(a2)];
    [v5 setObject:v8 forKey:@"kCfgDoubleTap"];

    if (sub_1000E2140(a2, 29) || sub_1000E012C(a2, 128))
    {
      v9 = [NSNumber numberWithInt:sub_100549334(a2)];
      [v5 setObject:v9 forKey:@"kCfgDoubleClickInt"];
    }

    if (sub_1000E2140(a2, 30))
    {
      v10 = [NSNumber numberWithInt:sub_1000E06EC(a2)];
      [v5 setObject:v10 forKey:@"kCfgClickHold"];
    }

    if (sub_1000E2140(a2, 30) || sub_1000E012C(a2, 128))
    {
      v11 = [NSNumber numberWithInt:sub_10054937C(a2)];
      [v5 setObject:v11 forKey:@"kCfgClickHoldInt"];
    }

    if (sub_1000E2140(a2, 28))
    {
      v12 = [NSNumber numberWithInt:sub_1000E32CC(a2)];
      [v5 setObject:v12 forKey:@"kCfgListenModeCfgs"];
    }

    if (sub_1000E2140(a2, 16) && sub_1000E2140(a2, 1))
    {
      v13 = [NSNumber numberWithInt:sub_1005493C4(a2)];
      [v5 setObject:v13 forKey:@"kCfgOneBudANCMode"];
    }

    else
    {
      if (!sub_1000E2140(a2, 16) || !sub_1000E2140(a2, 15))
      {
LABEL_21:
        v15 = sub_100432610();
        sub_1000BE6F8((a2 + 128), v19);
        sub_1000C23E0(a2, __p);
        if (v18 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        (*(*v15 + 136))(v15, v19, v5, v16);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        goto LABEL_28;
      }

      v13 = [NSNumber numberWithInt:1];
      [v5 setObject:v13 forKey:@"kCfgOneBudANCMode"];
    }

    goto LABEL_21;
  }

LABEL_28:

  return 0;
}

uint64_t sub_100331844(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (*(a1 + 328))
  {
    if (a5)
    {
      v10 = 0;
      switch(a3)
      {
        case 1:
          v11 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Set Mic Mode to value 0x%08X", buf, 8u);
          }

          v12 = sub_10000C798();
          if (((*(*v12 + 352))(v12) & 1) == 0)
          {
            v13 = sub_10000C798();
            if (!(*(*v13 + 416))(v13))
            {
              goto LABEL_226;
            }
          }

          v14 = 0;
          v10 = sub_1000E3314(a2) != a4;
          v15 = v10;
          goto LABEL_193;
        case 5:
          v56 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Set Button Send Mode: %d", buf, 8u);
          }

          if (a4 == 1 && !*(a1 + 488))
          {
            sub_100333650();
          }

          goto LABEL_226;
        case 13:
          __p = 0;
          v117 = 0;
          sub_100007F88(&__p, a1 + 360);
          if (!a2)
          {
            goto LABEL_171;
          }

          v58 = *(a1 + 336);
          while (2)
          {
            if (v58 == *(a1 + 344))
            {
LABEL_171:
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                sub_1000E5A58(a2, buf);
                sub_100819EB8();
              }

              v16 = 312;
              goto LABEL_174;
            }

            v59 = *v58;
            if (**v58 != a2)
            {
              ++v58;
              continue;
            }

            break;
          }

          if (sub_1005493C4(a2) == 2 && (a4 == 4 || a4 == 2) && sub_1000E2140(a2, 1) && sub_1000E356C(a2) && (*(v59 + 8) || *(v59 + 9)))
          {
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081A318();
            }

            v16 = 11;
LABEL_174:
            p_p = &__p;
            goto LABEL_243;
          }

          v81 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Set ListeningMode device setting: %d", buf, 8u);
          }

          sub_100546AA8(a2, a4);
          sub_1000088CC(&__p);
          v10 = 0;
          v14 = 1;
LABEL_88:
          v15 = 1;
LABEL_193:
          v79 = a5 != 3;
          if (a5 != 3 && v15)
          {
            sub_10033142C(a1, a2);
            v79 = 1;
            v15 = 1;
          }

LABEL_228:
          if ((a5 & 0xFFFFFFFE) == 2 && v10)
          {
            v92 = sub_100017F4C();
            v115[0] = _NSConcreteStackBlock;
            v115[1] = 3221225472;
            v115[2] = sub_100333B8C;
            v115[3] = &unk_100ADF8F8;
            v115[4] = a2;
            sub_10000CA94(v92, v115);
          }

          v93 = sub_10000C798();
          if ((v14 & v79 & (*(*v93 + 368))(v93)) == 1)
          {
            sub_10033142C(a1, a2);
          }

          v114[0] = 0;
          v114[1] = 0;
          sub_100007F88(v114, a1 + 360);
          if (a2)
          {
            for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
            {
              if (**i == a2)
              {
                v16 = (*(**(*i + 768) + 24))(*(*i + 768), a2, a3, a4);
                v95 = qword_100BCE8C0;
                if (v16)
                {
                  goto LABEL_241;
                }

                v98 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
                if (v98)
                {
                  v99 = sub_100333BE4(v98, a3);
                  sub_100333C10(a1, a3, a4, &__p);
                  v100 = SHIBYTE(v118);
                  v101 = __p;
                  sub_1000E5A58(a2, v119);
                  v102 = &__p;
                  if (v100 < 0)
                  {
                    v102 = v101;
                  }

                  v103 = v119;
                  if (v120 < 0)
                  {
                    v103 = v119[0];
                  }

                  if (a5 > 4)
                  {
                    v104 = "Unknown";
                  }

                  else
                  {
                    v104 = off_100AED228[a5 - 1];
                  }

                  *buf = 136448002;
                  *&buf[4] = v99;
                  *&buf[12] = 1024;
                  *v122 = a3;
                  *&v122[4] = 2082;
                  v123 = v102;
                  *v124 = 2082;
                  *&v124[2] = v103;
                  v125 = 2082;
                  v126 = v104;
                  v127 = 1024;
                  v128 = v14;
                  v129 = 1024;
                  v130 = v15;
                  v131 = 1024;
                  v132 = v10;
                  _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Sent %{public}s (control cmd 0x%02X) as %{public}s to %{public}s, reqType = %{public}s, magnet from watch = %d, magnet to watch = %d, cloud sync = %d", buf, 0x42u);
                  if (v120 < 0)
                  {
                    operator delete(v119[0]);
                  }

                  if (SHIBYTE(v118) < 0)
                  {
                    operator delete(__p);
                  }

                  v16 = 0;
                }

                goto LABEL_242;
              }
            }
          }

          v95 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(a2, &__p);
            sub_10081A3A4(&__p, v133, v95, buf);
            v95 = *buf;
          }

          v16 = 312;
LABEL_241:
          v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
          if (v96)
          {
            v105 = sub_100333BE4(v96, a3);
            sub_100333C10(a1, a3, a4, v119);
            v106 = v120;
            v107 = v119[0];
            sub_1000E5A58(a2, v112);
            v108 = v119;
            if (v106 < 0)
            {
              v108 = v107;
            }

            if (v113 >= 0)
            {
              v109 = v112;
            }

            else
            {
              v109 = v112[0];
            }

            *buf = 136447234;
            *&buf[4] = v105;
            *&buf[12] = 1024;
            *v122 = a3;
            *&v122[4] = 2082;
            v123 = v108;
            *v124 = 2082;
            *&v124[2] = v109;
            v125 = 1024;
            LODWORD(v126) = v16;
            _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "Failed to send %{public}s (control cmd 0x%02X) as %{public}s to %{public}s, error %d", buf, 0x2Cu);
            if (v113 < 0)
            {
              operator delete(v112[0]);
            }

            if (v120 < 0)
            {
              operator delete(v119[0]);
            }
          }

LABEL_242:
          p_p = v114;
LABEL_243:
          sub_1000088CC(p_p);
          break;
        case 20:
          v63 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Set SingleClickMode device setting: %d", buf, 8u);
          }

          sub_100546FA4(a2, a4);
          goto LABEL_226;
        case 21:
          v53 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Set DoubleClickMode device setting: %d", buf, 8u);
          }

          sub_100547038(a2, a4);
          goto LABEL_226;
        case 22:
          v43 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67110400;
            *&buf[4] = WORD1(a4);
            *&buf[8] = 1024;
            *&buf[10] = WORD1(a4);
            *v122 = 1024;
            *&v122[2] = BYTE1(a4);
            LOWORD(v123) = 1024;
            *(&v123 + 2) = BYTE1(a4);
            HIWORD(v123) = 1024;
            *v124 = a4;
            *&v124[4] = 1024;
            *&v124[6] = a4;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Set ClickHoldMode device setting: extra %u (0x%04X), left %u (0x%02X), right %u (0x%02X)", buf, 0x26u);
          }

          v44 = sub_1000E2140(a2, 38);
          v10 = !v44 && sub_1000E06EC(a2) != a4;
          sub_1005470CC(a2, a4);
          goto LABEL_192;
        case 23:
          v45 = sub_1000E2140(a2, 43);
          v46 = qword_100BCE8C0;
          if (a5 == 3 && v45)
          {
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081A2DC();
            }

            return 17;
          }

          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Set DoubleClickInterval device setting: %d", buf, 8u);
          }

          v44 = sub_1000E2140(a2, 43);
          sub_1005471A8(a2, a4);
          goto LABEL_188;
        case 24:
          v37 = sub_1000E2140(a2, 43);
          v38 = qword_100BCE8C0;
          if (a5 == 3 && v37)
          {
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081A2A0();
            }

            return 17;
          }

          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Set ClickHoldInterval device setting: %d", buf, 8u);
          }

          v44 = sub_1000E2140(a2, 43);
          sub_10054723C(a2, a4);
LABEL_188:
          v10 = 0;
          goto LABEL_192;
        case 26:
          v42 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Set ListeningModeConfigs device setting: %d", buf, 8u);
          }

          v10 = sub_1000E32CC(a2) != a4;
          sub_100546D6C(a2, a4);
          v14 = 0;
          goto LABEL_88;
        case 27:
          v24 = sub_1000E2140(a2, 43);
          if (a5 - 3 <= 1 && v24)
          {
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081A264();
            }

            return 17;
          }

          v76 = sub_1000E2140(a2, 15);
          v77 = qword_100BCE8C0;
          v78 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
          if (v76)
          {
            if (v78)
            {
              *buf = 0;
              v48 = "Don't set OneBudANCMode device setting for this device right now";
              v49 = v77;
              v50 = 2;
LABEL_178:
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
            }

            goto LABEL_226;
          }

          if (v78)
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Set OneBudANCMode device setting: %d", buf, 8u);
          }

          v44 = sub_1000E2140(a2, 43);
          v10 = !v44 && sub_1005493C4(a2) != a4;
          v82 = sub_1005472D0(a2, a4);
          sub_1003334D4(v82, a2);
LABEL_192:
          v14 = 0;
          v15 = !v44;
          goto LABEL_193;
        case 28:
          v40 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Set CrownRotationDirection: %d", buf, 8u);
          }

          sub_100547364(a2, a4);
          goto LABEL_226;
        case 30:
          v57 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Set AutoAnswerMode: %d", buf, 8u);
          }

          sub_1005473AC(a2, a4);
          goto LABEL_226;
        case 31:
          v54 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Set Chime Volume: %d", buf, 8u);
          }

          sub_1005473F4(a2, a4);
          goto LABEL_226;
        case 35:
          v33 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Set VolumeSwipeInterval device setting : VolumeSwipeInterval value %d", buf, 8u);
          }

          sub_100547518(a2, a4);
          goto LABEL_226;
        case 36:
          v64 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Set Call Management Config to value 0x%08X", buf, 8u);
          }

          sub_100547688(a2, a4);
          goto LABEL_226;
        case 37:
          v65 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Set VolumeSwipeMode device setting : VolumeSwipeMode value %d", buf, 8u);
          }

          sub_100547484(a2, a4);
          goto LABEL_226;
        case 38:
          v68 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Set Adaptive Volume Config to value 0x%08X", buf, 8u);
          }

          sub_1005475AC(a2, a4);
          if (qword_100B50AE0 != -1)
          {
            sub_10081A23C();
          }

          sub_1004DBB68(qword_100B50AD8, a2, a4);
          goto LABEL_226;
        case 39:
          v67 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Set Software Mute config to 0x%08X", buf, 8u);
          }

          sub_10054775C(a2, a4);
          goto LABEL_226;
        case 40:
          v22 = qword_100BCE8C0;
          v23 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
          if (v23)
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Set Conversation Detect config to 0x%08X", buf, 8u);
          }

          sub_1003336B8(v23, a2, a4);
          sub_1005477F8(a2, a4);
          if (qword_100B508E0 == -1)
          {
            goto LABEL_138;
          }

          goto LABEL_268;
        case 41:
          v55 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Set SSL to 0x%08X", buf, 8u);
          }

          sub_1005478DC(a2, a4);
          goto LABEL_226;
        case 44:
          v69 = qword_100BCE8C0;
          v70 = a4;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = a4;
            *&buf[8] = 1024;
            *&buf[10] = BYTE1(a4);
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Set Hearing Aid Enrolled to 0x%08X and Hearing Aid Enabled to 0x%08X", buf, 0xEu);
          }

          sub_10054FBF8(a2, v70);
          sub_10054FCD0(a2, BYTE1(a4));
          goto LABEL_226;
        case 46:
          v32 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Set AutoANC Strength to 0x%08X", buf, 8u);
          }

          sub_1005479C0(a2, a4);
          goto LABEL_226;
        case 47:
          v52 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Set HPS Gain Swipe to 0x%08X", buf, 8u);
          }

          sub_100548150(a2, a4);
          goto LABEL_226;
        case 48:
          v35 = sub_1000E2140(a2, 31);
          v36 = qword_100BCE8C0;
          if (!v35)
          {
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081A200();
            }

            return 11;
          }

          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Set HRM enable / disable state to 0x%08X", buf, 8u);
          }

          sub_100547A5C(a2, a4);
LABEL_226:
          v10 = 0;
LABEL_227:
          v15 = 0;
          v14 = 0;
          v79 = a5 != 3;
          goto LABEL_228;
        case 49:
          v60 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Set In Case Tone config to 0x%08X", buf, 8u);
          }

          sub_100547978(a2, a4);
          goto LABEL_226;
        case 50:
          v34 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Set Siri Multitone config to 0x%08X", buf, 8u);
          }

          sub_100547E04(a2, a4);
          goto LABEL_226;
        case 51:
          v21 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Set Hearing Assist config to 0x%08X", buf, 8u);
          }

          sub_1005481EC(a2, a4);
          goto LABEL_226;
        case 52:
          v71 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Set Allow Off Option for Listening Mode config to 0x%08X", buf, 8u);
          }

          v10 = sub_10054964C(a2) != a4;
          sub_100548288(a2, a4);
          goto LABEL_227;
        case 53:
          v41 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Set Sleep Detection config to 0x%08X", buf, 8u);
          }

          sub_100547EA0(a2, a4);
          if (qword_100B508E0 == -1)
          {
            goto LABEL_138;
          }

          goto LABEL_268;
        case 54:
          v47 = qword_100BCE8C0;
          if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_226;
          }

          *buf = 67109120;
          *&buf[4] = a4;
          v48 = "Sending Allow Auto Connect, value = 0x%08X";
          v49 = v47;
          v50 = 8;
          goto LABEL_178;
        case 55:
          v62 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Set PPE Toggle config to 0x%08X", buf, 8u);
          }

          sub_100548324(a2, a4);
          if (qword_100B508E0 == -1)
          {
            goto LABEL_138;
          }

          goto LABEL_268;
        case 56:
          v51 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Set Personal Protective Equipment Cap Level config to 0x%08X", buf, 8u);
          }

          sub_100547AF8(a2, a4);
          if (qword_100B508E0 == -1)
          {
            goto LABEL_138;
          }

LABEL_268:
          sub_10081A1D8();
LABEL_138:
          sub_100519738(off_100B508D8, a2);
          goto LABEL_226;
        case 57:
          v17 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Set Raw Gestures Configuration to 0x%08X", buf, 8u);
          }

          sub_100547F3C(a2, a4);
          goto LABEL_226;
        case 58:
          v25 = _os_feature_enabled_impl();
          v10 = 0;
          if (!a4 || !v25)
          {
            goto LABEL_227;
          }

          if (qword_100B50AB0 != -1)
          {
            sub_10081A19C();
          }

          v26 = off_100B50AA8;
          if (sub_1000E25D8() && v26[240] == 1)
          {
            LOBYTE(v119[0]) = 0;
            __p = 0;
            v117 = 0;
            v118 = 0;
            if (qword_100B50AB0 != -1)
            {
              sub_10081A19C();
            }

            sub_100560E64(off_100B50AA8, v119, &__p);
            if (qword_100B50AB0 != -1)
            {
              sub_10081A1B0();
            }

            v27 = sub_1000E2570(off_100B50AA8, a2);
            v28 = v27;
            if (a4 != 2 || v27 & 1 | ((v119[0] & 1) == 0) || (v29 = sub_100017E6C(), !(*(*v29 + 240))(v29)) || (a2[65].n128_u8[4] & 1) != 0 || (a2[65].n128_u8[6] & 1) != 0 || a2[65].n128_u8[5] != 1 || (sub_1000E31D0(a2) & 2) != 0)
            {
              v83 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                v110 = LOBYTE(v119[0]);
                v111 = v28;
                v84 = sub_100017E6C();
                v85 = (*(*v84 + 240))(v84);
                v86 = a2[65].n128_u8[4];
                v87 = a2[65].n128_u8[6];
                v88 = a2[65].n128_u8[5];
                v89 = sub_1000E31D0(a2);
                *buf = 67110656;
                *&buf[4] = v110;
                *&buf[8] = 1024;
                *&buf[10] = v111;
                *v122 = 1024;
                *&v122[2] = v85;
                LOWORD(v123) = 1024;
                *(&v123 + 2) = v86;
                HIWORD(v123) = 1024;
                *v124 = v87;
                *&v124[4] = 1024;
                *&v124[6] = v88;
                v125 = 1024;
                LODWORD(v126) = v89 & 2;
                _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Temporary Pairing Config. Not Sending Magic Keys. CloudSignedIn:%d, MagicPaired:%d, DDM:%d, OwnerNoMagicPaired:%d, GuestPaired:%d, TemporaryManagedPaired:%d, GAPA:%d", buf, 0x2Cu);
              }
            }

            else
            {
              v30 = qword_100BCE8C0;
              v31 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
              if (v31)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Temporary Pairing Config. Sending Magic Keys.", buf, 2u);
              }

              sub_1003337DC(v31, a2);
            }

            if (SHIBYTE(v118) < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
            v80 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Temporary Pairing Config. Not Sending Magic Keys as Magic Pairing isn't initialized.", buf, 2u);
            }
          }

          v90 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            v91 = "Permanent";
            if (a4 == 1)
            {
              v91 = "Temporary";
            }

            *buf = 136446210;
            *&buf[4] = v91;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Temporary Pairing Config. Marking accessory as %{public}s paired.", buf, 0xCu);
          }

          sub_10054865C(a2, a4 == 1);
          goto LABEL_226;
        case 59:
          v66 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Set Dynamic End of Charge config to 0x%08X", buf, 8u);
          }

          sub_100547B94(a2, a4);
          goto LABEL_226;
        case 60:
          v72 = qword_100BCE8C0;
          if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_226;
          }

          v73 = "unknown";
          if (a4 == 1)
          {
            v73 = "Enabled";
          }

          if (a4 == 2)
          {
            v74 = "Disabled";
          }

          else
          {
            v74 = v73;
          }

          *buf = 136315138;
          *&buf[4] = v74;
          v48 = "Sending System Siri message with config: %s";
          v49 = v72;
          v50 = 12;
          goto LABEL_178;
        case 61:
          v20 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Set Hearing Aid Generic config to 0x%08X", buf, 8u);
          }

          sub_100547C30(a2, a4);
          goto LABEL_226;
        case 62:
          v61 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Set Uplink EQ Bud config to 0x%08X", buf, 8u);
          }

          sub_100547FD8(a2, a4);
          goto LABEL_226;
        case 63:
          v19 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Set Uplink EQ Source config to 0x%08X", buf, 8u);
          }

          sub_1005480B4(a2, a4);
          goto LABEL_226;
        case 64:
          v18 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Set In Case Tone Volume config to 0x%08X", buf, 8u);
          }

          sub_100547D68(a2, a4);
          goto LABEL_226;
        case 65:
          v39 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = a4;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Set Disable Button Input config to 0x%08X", buf, 8u);
          }

          sub_100547CCC(a2, a4);
          goto LABEL_226;
        default:
          goto LABEL_227;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081A41C();
      }

      return 3;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081A160();
    }

    return 111;
  }

  return v16;
}

void sub_100333454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003334D4(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    if (v10 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notify one bud ANC mode change for device %s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = sub_1000D999C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100355084;
  v8[3] = &unk_100ADF8F8;
  v8[4] = a2;
  sub_10000CA94(v5, v8);
  v6 = sub_1000DAB84();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003550E4;
  v7[3] = &unk_100ADF8F8;
  v7[4] = a2;
  sub_10000CA94(v6, v7);
}

void sub_1003336B8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_100539460(a2);
  v5 = qword_100BCE8C0;
  v6 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7[0] = 67109120;
      v7[1] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notify conversation awareness changed %i", v7, 8u);
    }

    if (qword_100B6D2D8 != -1)
    {
      sub_10081A458();
    }

    notify_set_state(dword_100B6D2E0, a3 == 1);
    notify_post("com.apple.bluetoothd.conversationAwarenessValueChanged");
  }

  else if (v6)
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notify of conversation awareness change ignored as Adaptive Controls Share Sheet not yet shown.", v7, 2u);
  }
}

uint64_t sub_1003337DC(uint64_t a1, unsigned __int8 *a2)
{
  v31[0] = 1048592;
  v32[0] = 1052672;
  v30[0] = 1048584;
  v3 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v30[1] = v3;
  v4 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v31[1] = v4;
  v5 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v32[1] = v5;
  v33 = 401408;
  v6 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
  v34 = v6;
  if (qword_100B50AB0 != -1)
  {
    sub_10081A19C();
  }

  p_info = (&OBJC_METACLASS___BTVCDevice + 32);
  if (sub_10055BD74(off_100B50AA8, a2, v3, v4))
  {
    v8 = 0;
    goto LABEL_32;
  }

  v9 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v10 = v25;
    v11 = __p[0];
    v12 = sub_1000295DC(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    *buf = 136446466;
    v27 = v13;
    v28 = 1024;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating magic keys to device %{public}s, paired %d", buf, 0x12u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    p_info = &OBJC_METACLASS___BTVCDevice.info;
  }

  if (sub_1000295DC(a2) && sub_1000E2140(a2, 19))
  {
    if (qword_100B50AB0 != -1)
    {
      sub_10081A1B0();
    }

    v8 = sub_10055C0F4(off_100B50AA8, v5, v6);
  }

  else
  {
    v8 = 1;
  }

  v14 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v15 = v25;
    v16 = __p[0];
    v17 = sub_1000295DC(a2);
    v18 = __p;
    if (v15 < 0)
    {
      v18 = v16;
    }

    *buf = 136446466;
    v27 = v18;
    v28 = 1024;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Get magic key from cloud for device %{public}s is %d", buf, 0x12u);
    if (v25 < 0)
    {
      operator delete(__p[0]);
      if (v8)
      {
        goto LABEL_22;
      }

LABEL_26:
      v20 = 0;
      v21 = 15;
      do
      {
        v22 = *(v5 + v20);
        *(v5 + v20) = *(v5 + v21);
        *(v5 + v21) = v22;
        ++v20;
        --v21;
      }

      while (v20 != 8);
      if (qword_100B50950 != -1)
      {
        sub_10081A480();
      }

      v8 = 0;
      v19 = 4;
      goto LABEL_31;
    }
  }

  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_22:
  if (qword_100B50950 != -1)
  {
    sub_10081A480();
  }

  v19 = 2;
LABEL_31:
  sub_100334B18(p_info[297], a2, v19, v30);
LABEL_32:
  free(v30[1]);
  free(v31[1]);
  free(v32[1]);
  free(v34);
  if (qword_100B50950 != -1)
  {
    sub_10081A480();
  }

  sub_100334C5C(p_info[297], a2, 5);
  return v8;
}

void sub_100333B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100333B8C(uint64_t a1)
{
  if (qword_100B50AB0 != -1)
  {
    sub_10081A19C();
  }

  v2 = off_100B50AA8;
  v3 = *(a1 + 32);

  return sub_100560FB0(v2, v3, 4097);
}

const char *sub_100333BE4(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0x40)
  {
    return "unknown";
  }

  else
  {
    return off_100AED020[(a2 - 1)];
  }
}

_BYTE *sub_100333C10@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, _BYTE *a4@<X8>)
{
  v4 = a3;
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
  *__str = 0u;
  v21 = 0u;
  switch(a2)
  {
    case 1:
      if (a3 > 2u)
      {
        goto LABEL_62;
      }

      v18 = a3 & 3;
      v19 = off_100AED308;
      goto LABEL_40;
    case 4:
      if (a3 > 2u)
      {
        switch(a3)
        {
          case 3u:
            v9 = "Next Track";
            break;
          case 4u:
            v9 = "Prev Track";
            break;
          case 0xFu:
            v9 = "unknown-cloud";
            break;
          default:
            goto LABEL_62;
        }
      }

      else if (a3)
      {
        if (a3 != 1)
        {
          if (a3 == 2)
          {
            v9 = "Play/Pause";
            goto LABEL_8;
          }

LABEL_62:
          v9 = "unknown";
          goto LABEL_8;
        }

        v9 = "Siri";
      }

      else
      {
        v9 = "Off";
      }

LABEL_8:

      return sub_100007E30(a4, v9);
    case 6:
      if (a3)
      {
        v9 = "owned";
      }

      else
      {
        v9 = "not owned";
      }

      goto LABEL_8;
    case 8:
      v6 = "unknown";
      v13 = a3;
      v14 = "secondary";
      v15 = a3 == 2;
      v7 = "primary";
      goto LABEL_47;
    case 10:
      v6 = "unknown";
      v13 = a3;
      v14 = "Enabled";
      v15 = a3 == 2;
      v7 = "Disabled";
      goto LABEL_47;
    case 11:
      snprintf(__str, 0x100uLL, "%u ms");
      return sub_100007E30(a4, __str);
    case 12:
      goto LABEL_68;
    case 13:
      v18 = a3 - 1;
      if (a3 - 1 > 3)
      {
        goto LABEL_62;
      }

      v19 = off_100AED3E0;
LABEL_40:
      v9 = v19[v18];
      goto LABEL_8;
    case 18:
      if (a3 > 2)
      {
        goto LABEL_55;
      }

      v16 = off_100AED510;
      goto LABEL_54;
    case 19:
      if (a3 > 2)
      {
        goto LABEL_55;
      }

      v16 = off_100AED478;
      goto LABEL_54;
    case 20:
    case 21:
      v11 = sub_10035521C(a1, a3);
      goto LABEL_44;
    case 22:
      v17 = sub_10035521C(a1, BYTE1(a3));
      sub_10035521C(v17, v4);
LABEL_68:
      snprintf(__str, 0x100uLL, "%s for left bud and %s for right bud (value 0x%X)");
      return sub_100007E30(a4, __str);
    case 23:
      if (a3 > 2)
      {
        goto LABEL_62;
      }

      v16 = off_100AED4E0;
      goto LABEL_54;
    case 24:
      if (a3 > 2)
      {
        goto LABEL_62;
      }

      v16 = off_100AED4F8;
      goto LABEL_54;
    case 26:
      v11 = sub_1003551F4(a1, a3);
      goto LABEL_44;
    case 27:
    case 30:
    case 32:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 58:
    case 59:
    case 61:
    case 64:
    case 65:
      v6 = "unknown";
      v7 = "Disabled";
      if (a3 == 1)
      {
        v6 = "Enabled";
      }

      v8 = a3 == 2;
      goto LABEL_5;
    case 28:
      v6 = "unknown";
      v13 = a3;
      v14 = "Front-to-Back";
      v15 = a3 == 2;
      v7 = "Back-to-Front";
LABEL_47:
      if (v15)
      {
        v6 = v14;
      }

      v8 = v13 == 1;
LABEL_5:
      if (v8)
      {
        v9 = v7;
      }

      else
      {
        v9 = v6;
      }

      goto LABEL_8;
    case 34:
      if (a3 > 2)
      {
LABEL_55:
        v9 = "Invalid";
      }

      else
      {
        v16 = off_100AED4C8;
LABEL_54:
        v9 = v16[a3];
      }

      goto LABEL_8;
    case 36:
      if ((a3 & 0xF) != 0)
      {
        snprintf(__str, 0x100uLL, "Version: %u, endCallStatus: %s, endCall: %s, muteControlStatus: %s, muteControl: %s");
      }

      else
      {
        snprintf(__str, 0x100uLL, "Version: %u, endCallStatus: %s, endCall: %s");
      }

      return sub_100007E30(a4, __str);
    case 44:
      snprintf(__str, 0x100uLL, "Hearing aid enrolled: %s, enabled: %s");
      return sub_100007E30(a4, __str);
    case 46:
      snprintf(__str, 0x100uLL, "%u");
      return sub_100007E30(a4, __str);
    case 57:
      v11 = sub_100355248(a1, a3);
LABEL_44:
      v9 = v11;
      goto LABEL_8;
    case 62:
    case 63:
      v12 = "Invalid";
      if (a3 == 1)
      {
        v12 = "Enhanced Studio";
      }

      if (a3)
      {
        v9 = v12;
      }

      else
      {
        v9 = "Unknown";
      }

      goto LABEL_8;
    default:
      snprintf(__str, 0x100uLL, "0x%08X");
      return sub_100007E30(a4, __str);
  }
}

uint64_t sub_100334234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v7 = (*(**(*i + 768) + 96))(*(*i + 768), a2, a3);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v9);
    sub_100819EB8();
  }

  v7 = 312;
LABEL_9:
  sub_1000088CC(v10);
  return v7;
}

void sub_100334350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100334370(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 360);
  v8 = qword_100BCE8C0;
  v9 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = sub_100333BE4(v9, a2);
    *buf = 136446722;
    v18 = v10;
    v19 = 1024;
    v20 = a2;
    v21 = 1024;
    v22 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "broadcastControlCommand: %{public}s (control cmd 0x%02X), value %d", buf, 0x18u);
  }

  v12 = *(a1 + 336);
  v11 = *(a1 + 344);
  v13 = 1;
  while (v12 != v11)
  {
    v14 = *v12;
    if (*v12)
    {
      if (*v14)
      {
        v13 = sub_100331844(a1, *v14, a2, a3, a4);
        v11 = *(a1 + 344);
      }
    }

    ++v12;
  }

  sub_1000088CC(v16);
  return v13;
}

uint64_t sub_1003344C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 360);
  v8 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "broadcastCustomMsg: type: %u, len: %u", buf, 0xEu);
  }

  v10 = *(a1 + 336);
  v9 = *(a1 + 344);
  v11 = 1;
  while (v10 != v9)
  {
    v12 = *v10;
    if (*v10)
    {
      if (*v12)
      {
        v11 = sub_100330C90(a1, *v12, a2, a3, a4);
        v9 = *(a1 + 344);
      }
    }

    ++v10;
  }

  sub_1000088CC(v14);
  return v11;
}

uint64_t sub_100334610(double a1)
{
  if (a1 == 8000.0)
  {
    return 1;
  }

  if (a1 == 16000.0)
  {
    return 2;
  }

  if (a1 == 24000.0)
  {
    return 3;
  }

  if (a1 == 44100.0)
  {
    return 4;
  }

  if (a1 == 48000.0)
  {
    return 5;
  }

  return 0;
}

uint64_t sub_100334688(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 360);
  v2 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "getStreamingDevice: no connected devices", v10, 2u);
  }

  v3 = *(a1 + 336);
  v4 = *(a1 + 344);
  while (1)
  {
    if (v3 == v4)
    {
      v7 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        v8 = "getA2DPStreamingDevice: no connected devices";
        goto LABEL_10;
      }

LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    v5 = *v3;
    if (*v3)
    {
      v6 = *v5;
      if (*v5)
      {
        break;
      }
    }

    ++v3;
  }

  if (qword_100B50AE0 != -1)
  {
    sub_10081A23C();
  }

  if ((sub_1000E03B0(qword_100B50AD8, v6) & 1) == 0)
  {
    v7 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v8 = "getA2DPStreamingDevice: no A2DP stream";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v10, 2u);
    }

    goto LABEL_11;
  }

LABEL_12:
  sub_1000088CC(v11);
  return v6;
}

void sub_1003347D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003347E8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v15 = 0;
  v14 = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (!sub_10009D0B4(&v14, a2))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081A4A8();
    }

    return 1;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  LODWORD(__p[0]) = v14;
  WORD2(__p[0]) = v15;
  v5 = sub_1000E6554(off_100B508E8, __p, 1);
  v6 = v5;
  if (v5)
  {
    v7 = sub_1000E2B78(v5);
    sub_100548A1C(v6, a3);
  }

  else
  {
    v7 = 0;
  }

  if (!sub_10057DDF0(a1) || v7 == a3)
  {
    return 1;
  }

  v9 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v14, __p);
    v10 = __p[0];
    v11 = "doesn't own";
    if (v13 >= 0)
    {
      v10 = __p;
    }

    if (a3)
    {
      v11 = "owns";
    }

    *buf = 136315394;
    v17 = v10;
    v18 = 2082;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Telling device %s that this source %{public}s the connection", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100331844(a1, v6, 6, a3, 1u);
}

uint64_t sub_1003349D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v9 = (*(**(*i + 768) + 112))(*(*i + 768), a2, a3, a4);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v11);
    sub_100819EB8();
  }

  v9 = 312;
LABEL_9:
  sub_1000088CC(v12);
  return v9;
}

void sub_100334AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100334B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v9 = (*(**(*i + 768) + 120))(*(*i + 768), a2, a3, a4);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v11);
    sub_10081A50C();
  }

  v9 = 312;
LABEL_9:
  sub_1000088CC(v12);
  return v9;
}

void sub_100334C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100334C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v7 = (*(**(*i + 768) + 128))(*(*i + 768), a2, a3);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v9);
    sub_10081A560();
  }

  v7 = 312;
LABEL_9:
  sub_1000088CC(v10);
  return v7;
}

void sub_100334D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100334D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  v12 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v13 = v24 >= 0 ? __p : __p[0];
    *buf = 136446978;
    *v26 = v13;
    *&v26[8] = 1024;
    v27 = a3;
    v28 = 1024;
    v29 = a4;
    v30 = 1024;
    v31 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "send setup command to %{public}s, setupType -> %d, opType -> %d, pldLen -> %d", buf, 0x1Eu);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a3 != 1)
  {
    v19 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    *v26 = a3;
    v16 = "Unsupported setup type = %d";
    v17 = v19;
    v18 = 8;
    goto LABEL_14;
  }

  if (a5 >= 2)
  {
    if (!a6)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/aacp/AACPClient.mm", 1236, "pldData");
    }

    v14 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *a6;
      *buf = 67109376;
      *v26 = a4;
      *&v26[4] = 1024;
      *&v26[6] = v15;
      v16 = "send seal setup operation opType = %d result = %d";
      v17 = v14;
      v18 = 14;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

LABEL_15:
  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v21 = (*(**(*i + 768) + 152))(*(*i + 768), a2, a3, a4, a5, a6);
        goto LABEL_23;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, buf);
    sub_10081A5B4();
  }

  v21 = 312;
LABEL_23:
  sub_1000088CC(__p);
  return v21;
}

void sub_100335048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100335068(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, const void *a6)
{
  if (*(a1 + 328) != 1)
  {
    return 111;
  }

  bzero(&v36, 0x3E7uLL);
  v28 = 0;
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 360);
  if (!a2 || (v13 = *(a1 + 336), v12 = *(a1 + 344), v13 == v12))
  {
    v16 = 1;
  }

  else
  {
    v14 = v13 + 8;
    do
    {
      v15 = **(v14 - 8);
      v16 = v15 != a2;
      v17 = v15 == a2 || v14 == v12;
      v14 += 8;
    }

    while (!v17);
  }

  v19 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v20 = v30 >= 0 ? __p : *__p;
    *buf = 136446722;
    *&buf[4] = v20;
    v21 = a4 == 1 ? "Audio Arbitration" : "Unknown";
    v32 = 2082;
    v33 = v21;
    v34 = 1024;
    v35 = a5;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Send relay message to %{public}s, relayMessageType -> %{public}s, relayMessageLen -> %d", buf, 0x1Cu);
    if (v30 < 0)
    {
      operator delete(*__p);
    }
  }

  if (a5 < 0x3E7)
  {
    if (v16)
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, buf);
        sub_10081A678();
      }

      v18 = 312;
    }

    else
    {
      if (a4 == 1)
      {
        v26 = 0;
        sub_1000216B4(&v26);
        if (!sub_100241370(a2 + 128, &v28) && v28 == 2)
        {
          v22 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, buf);
            v23 = v34 >= 0 ? buf : *buf;
            *__p = 136446210;
            *&__p[4] = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unsniff ACL link with %{public}s for TiPi audio arbitration message", __p, 0xCu);
            if (SHIBYTE(v34) < 0)
            {
              operator delete(*buf);
            }
          }

          sub_1002429D4(a2 + 128);
        }

        sub_100022214(&v26);
        sub_10002249C(&v26);
      }

      v36 = a4;
      memcpy(v37, a6, a5);
      buf[0] = 0;
      sub_1000216B4(buf);
      v24 = sub_100188BE8((a2 + 128), a3, (a5 + 1), &v36);
      sub_100022214(buf);
      if (v24 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081A608();
      }

      if (qword_100B50AA0 != -1)
      {
        sub_100819F0C();
      }

      v18 = sub_1000DD584(off_100B50A98, v24, 10000);
      sub_10002249C(buf);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081A6CC();
    }

    v18 = 3;
  }

  sub_1000088CC(v27);
  return v18;
}

void sub_1003353EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, char a13)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_100335434(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (*(a1 + 328) != 1)
  {
    return 111;
  }

  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 360);
  if (a2)
  {
    v10 = *(a1 + 336);
    v11 = *(a1 + 344);
    while (v10 != v11)
    {
      v12 = *v10;
      if (**v10 == a2)
      {
        goto LABEL_9;
      }

      ++v10;
    }
  }

  v12 = 0;
LABEL_9:
  v14 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v22 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = "Unknown";
    if (a3 == 2)
    {
      v16 = "Legacy Triangle";
    }

    *buf = 136446722;
    v24 = v15;
    if (a3 == 1)
    {
      v17 = "TiPi";
    }

    else
    {
      v17 = v16;
    }

    v25 = 2082;
    v26 = v17;
    v27 = 1024;
    v28 = a5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Send update request for connection priority list to %{public}s, reqType -> %{public}s, numOfConn -> %d", buf, 0x1Cu);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a5 < 3)
  {
    if (v12)
    {
      if (!sub_1000E2140(a2, 32) || (v13 = sub_100335724(v12, a3, a4, a5), !v13))
      {
        buf[0] = 0;
        sub_1000216B4(buf);
        v18 = sub_100188E10((a2 + 128), a5, a4);
        sub_100022214(buf);
        if (v18 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081A748();
        }

        if (qword_100B50AA0 != -1)
        {
          sub_100819F0C();
        }

        v13 = sub_1000DD584(off_100B50A98, v18, 10000);
        sub_10002249C(buf);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, buf);
        sub_10081A678();
      }

      v13 = 312;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081A7B8();
    }

    v13 = 3;
  }

  sub_1000088CC(v20);
  return v13;
}

uint64_t sub_100335724(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v54 = a2;
  if (a2 == 2)
  {
    v9 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*a1, &__p);
      v10 = v58 >= 0 ? &__p : __p;
      *buf = 136446210;
      v60 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Request Legacy Triangle connection priority list update for device %{public}s", buf, 0xCu);
      if (v58 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_24:
    v27 = *(a1 + 680);
    v28 = *(a1 + 688);
    if (v27 != v28)
    {
      *(a1 + 688) = v27;
      v28 = v27;
    }

    if (a4)
    {
      v29 = 0;
      v30 = (a1 + 680);
      do
      {
        v31 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v39 = sub_100304810(a3 + 6 * v29, v32, v33, v34, v35, v36, v37, v38);
          LODWORD(__p) = 67109378;
          HIDWORD(__p) = v29;
          v56 = 2080;
          v57 = v39;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Address of source [%d] in connection priority list update is %s", &__p, 0x12u);
          v28 = *(a1 + 688);
        }

        v40 = (a3 + 6 * v29);
        LODWORD(__p) = *v40;
        WORD2(__p) = *(v40 + 2);
        v41 = *(a1 + 696);
        if (v28 >= v41)
        {
          v43 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *v30) >> 1);
          v44 = v43 + 1;
          if (v43 + 1 > 0x2AAAAAAAAAAAAAAALL)
          {
            sub_1000C7698();
          }

          v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *v30) >> 1);
          if (2 * v45 > v44)
          {
            v44 = 2 * v45;
          }

          if (v45 >= 0x1555555555555555)
          {
            v46 = 0x2AAAAAAAAAAAAAAALL;
          }

          else
          {
            v46 = v44;
          }

          if (v46)
          {
            sub_100361FE0(a1 + 680, v46);
          }

          v47 = 2 * ((v28 - *v30) >> 1);
          *v47 = __p;
          *(v47 + 4) = WORD2(__p);
          v48 = *(a1 + 688);
          v49 = *(a1 + 680);
          v50 = 6 * v43 + v49 - v48;
          if (v49 != v48)
          {
            v51 = (v47 + v49 - v48);
            do
            {
              v52 = *v49;
              *(v51 + 2) = *(v49 + 2);
              *v51 = v52;
              v51 += 6;
              v49 += 6;
            }

            while (v49 != v48);
            v49 = *v30;
          }

          *(a1 + 680) = v50;
          v28 = v47 + 6;
          *(a1 + 688) = v47 + 6;
          *(a1 + 696) = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        else
        {
          v42 = *v40;
          *(v28 + 4) = *(v40 + 2);
          *v28 = v42;
          v28 += 6;
        }

        *(a1 + 688) = v28;
        ++v29;
      }

      while (v29 != a4);
    }

    sub_100362034((a1 + 632), &v54);
    return 0;
  }

  if (a2 == 1)
  {
    v7 = qword_100BCE8C0;
    if (*(a1 + 618) == 1)
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081A834();
      }

      return 17;
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*a1, &__p);
      v11 = v58;
      v12 = __p;
      v20 = sub_100304810(a3 + 6, v13, v14, v15, v16, v17, v18, v19);
      p_p = &__p;
      if (v11 < 0)
      {
        p_p = v12;
      }

      *buf = 136446466;
      v60 = p_p;
      v61 = 2080;
      v62 = v20;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request TiPi connection priority list update for device %{public}s, TiPi source addr = %s", buf, 0x16u);
      if (v58 < 0)
      {
        operator delete(__p);
      }
    }

    LODWORD(__p) = *a3;
    WORD2(__p) = *(a3 + 4);
    *buf = *(a3 + 6);
    LOWORD(v60) = *(a3 + 10);
    *(a1 + 618) = 1;
    sub_10033813C(a1, &__p, buf);
    if (qword_100B50950 != -1)
    {
      sub_10081A480();
    }

    v22 = *a1;
    v23 = sub_100338390(a1);
    sub_1003382B0(v23, v22, v23);
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100356188;
    v53[3] = &unk_100AEC260;
    v53[4] = a1;
    v24 = [NSTimer timerWithTimeInterval:0 repeats:v53 block:2.0];
    v25 = *(a1 + 624);
    *(a1 + 624) = v24;

    v26 = +[NSRunLoop mainRunLoop];
    [v26 addTimer:*(a1 + 624) forMode:NSDefaultRunLoopMode];

    goto LABEL_24;
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081A870();
  }

  return 3;
}

void sub_100335BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100335C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C798();
  if ((*(*v4 + 352))(v4))
  {
    if (qword_100B540A0 != -1)
    {
      sub_10081A91C();
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100335D24;
    v5[3] = &unk_100AE0860;
    v5[4] = a1;
    v5[5] = a2;
    sub_1005897E0(off_100B54098, v5);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081A8E0();
  }
}

uint64_t sub_100335D24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, v2 + 360);
  if (!*(v2 + 304))
  {
    v3 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "GAPA showCannotVerifyAlert", buf, 2u);
    }

    v4 = *(a1 + 40);
    *(v2 + 312) = v4;
    *buf = 0;
    v19 = 0;
    v18 = 0;
    v5 = sub_1000E31D0(v4);
    if ((v5 & 2) != 0 && sub_1003360F8(v5, *(a1 + 40)))
    {
      sub_10054FED8(*(a1 + 40), buf, &v19 + 1, &v19, &v18);
    }

    else
    {
      sub_1000C2364(*(a1 + 40), buf, &v19 + 1, &v19, &v18);
    }

    if ((v19 - 8195) <= 0x2C && ((1 << (v19 - 3)) & 0x100C0498E74DLL) != 0)
    {
      v6 = sub_100438B14(@"GAPA_BT_SETTINGS_ALERT_HEADER_BEATS", @"Cannot Verify Beats");
      v7 = sub_100438B14(@"GAPA_BT_SETTINGS_ALERT_MESSAGE_BEATS", @"These headphones could not be verified as genuine Beats. Would you like to connect anyway?");
    }

    else
    {
      v6 = sub_100438B14(@"GAPA_BT_SETTINGS_ALERT_HEADER", @"Cannot Verify AirPods");
      v7 = sub_100438B14(@"GAPA_BT_SETTINGS_ALERT_MESSAGE", @"These headphones could not be verified as genuine Apple AirPods. Would you like to connect anyway?");
    }

    v8 = v7;
    v9 = sub_100438B14(@"GAPA_BT_SETTINGS_ALERT_LEARNMORE", @"Learn More");
    v10 = sub_100438B14(@"GAPA_BT_SETTINGS_ALERT_PAIRANYWAY", @"Connect Anyway");
    v11 = sub_100438B14(@"GAPA_BT_SETTINGS_ALERT_CANCEL", @"Cancel");
    v22[0] = kCFUserNotificationAlertHeaderKey;
    v22[1] = kCFUserNotificationAlertMessageKey;
    v23[0] = v6;
    v23[1] = v8;
    v22[2] = kCFUserNotificationAlternateButtonTitleKey;
    v22[3] = kCFUserNotificationOtherButtonTitleKey;
    v23[2] = v9;
    v23[3] = v10;
    v22[4] = kCFUserNotificationDefaultButtonTitleKey;
    v23[4] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:5];
    v13 = [v12 mutableCopy];

    v14 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, 0, v13);
    *(v2 + 304) = v14;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v14, sub_1003361B4, 0);
    if (RunLoopSource)
    {
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
      CFRelease(RunLoopSource);
    }

    else
    {
      CFUserNotificationCancel(*(v2 + 304));
      CFRelease(*(v2 + 304));
      *(v2 + 304) = 0;
    }
  }

  return sub_1000088CC(v21);
}

void sub_100336078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003360F8(uint64_t a1, _DWORD *a2)
{
  v7 = 0;
  v8 = 0;
  sub_1000C2364(a2, &v8 + 1, &v8, &v7 + 1, &v7);
  v3 = HIDWORD(v7);
  if (!HIDWORD(v7))
  {
    sub_10054FED8(a2, &v8 + 1, &v8, &v7 + 1, &v7);
    v3 = HIDWORD(v7);
  }

  v4 = ((v3 - 8212) < 0x11) & (0x11EA1u >> (v3 - 20));
  v5 = sub_10000E92C();
  return v4 | (*(*v5 + 752))(v5);
}

void sub_1003361B4(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v3 = off_100B50948;

  sub_100336208(v3, a2, a2);
}

void sub_100336208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003362A4;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a3;
  sub_1005897E0(off_100B54098, v5);
}

uint64_t sub_1003362A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, v2 + 360);
  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 134217984;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "GAPA user responded to cannot verify alert %ld", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = qword_100BCE8C0;
  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GAPA cancelButton", buf, 2u);
    }

    sub_100540890(*(v2 + 312), 0, 1799);
    if (qword_100B50F88 != -1)
    {
      sub_10081A944();
    }

    sub_1006E0DBC(off_100B50F80, *(v2 + 312));
    goto LABEL_26;
  }

  if (v5 == 2)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GAPA pairAnywayButton", buf, 2u);
    }

    if (qword_100B50AC0 != -1)
    {
      sub_10081A96C();
    }

    sub_100593A4C(off_100B50AB8, *(v2 + 312), -1);
    goto LABEL_26;
  }

  if (v5 != 1)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081A9D0();
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GAPA learnMoreButton", buf, 2u);
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10081A96C();
  }

  sub_100593A4C(off_100B50AB8, *(v2 + 312), -1);
  v7 = [[NSURL alloc] initWithString:@"https://support.apple.com/kb/HT213102"];
  if (v7)
  {
    v8 = +[LSApplicationWorkspace defaultWorkspace];
    [v8 openURL:v7 withOptions:0];

    v9 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GAPA user sent to URL", buf, 2u);
    }

LABEL_26:
    CFRelease(*(v2 + 304));
    *(v2 + 304) = 0;
    *(v2 + 312) = 0;
    return sub_1000088CC(v11);
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081A994();
  }

  return sub_1000088CC(v11);
}

void sub_100336590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v10;

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003365CC(int a1, void *__s)
{
  v2 = qword_100BCE4B8;
  if (qword_100BCE4B8 == &unk_100BCE4C0)
  {
    return 0;
  }

  v4 = *(__s + 23);
  while (1)
  {
    v5 = __s;
    v6 = v4;
    if ((v4 & 0x80) != 0)
    {
      v5 = *__s;
      v6 = __s[1];
    }

    v7 = *(v2 + 55);
    v8 = v7 >= 0 ? (v2 + 32) : *(v2 + 32);
    v9 = v7 >= 0 ? *(v2 + 55) : *(v2 + 40);
    if (!v9)
    {
      return *(v2 + 56);
    }

    if (v6 >= v9)
    {
      v13 = v5 + v6;
      v14 = *v8;
      v15 = v5;
      do
      {
        v16 = v6 - v9;
        if (v16 == -1)
        {
          break;
        }

        v17 = memchr(v15, v14, v16 + 1);
        if (!v17)
        {
          break;
        }

        v18 = v17;
        if (!memcmp(v17, v8, v9))
        {
          if (v18 == v13 || v18 - v5 == -1)
          {
            break;
          }

          return *(v2 + 56);
        }

        v15 = v18 + 1;
        v6 = v13 - (v18 + 1);
      }

      while (v6 >= v9);
    }

    v10 = *(v2 + 8);
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
        v11 = *(v2 + 16);
        v12 = *v11 == v2;
        v2 = v11;
      }

      while (!v12);
    }

    v2 = v11;
    if (v11 == &unk_100BCE4C0)
    {
      return 0;
    }
  }
}

void sub_10033670C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *(a2 + 128);
  v28 = *(a2 + 132);
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v5 = sub_1000E2D2C(a2, 0xAu, v25);
  v23 = 0;
  v24 = 0;
  if ((a3 & 2) != 0 && sub_1003360F8(v5, a2))
  {
    v6 = sub_10054FED8(a2, &v24 + 1, &v24, &v23 + 1, &v23);
  }

  else
  {
    v6 = sub_1000C2364(a2, &v24 + 1, &v24, &v23 + 1, &v23);
  }

  if (*(a2 + 1567) < 0)
  {
    v6 = sub_100008904(__p, *(a2 + 1544), *(a2 + 1552));
  }

  else
  {
    *__p = *(a2 + 1544);
    v22 = *(a2 + 1560);
  }

  v7 = sub_1003365CC(v6, __p);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v20 = 0;
  if (v7 > 3)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = *(&off_100AED248 + v7);
  }

  v15 = v8;
  NSAppendPrintF_safe();
  v9 = v20;
  v31 = 0uLL;
  v32 = 0;
  v29 = 0uLL;
  v30 = 0;
  sub_100543D4C(a2, &v31);
  v10 = [NSData dataWithBytes:&v31 length:20, sub_100543D7C(a2, &v29).n128_f64[0], v15];
  v11 = [NSData dataWithBytes:&v29 length:20];
  v12 = sub_10000F034();
  v18 = v27;
  v19 = v28;
  v14 = HIDWORD(v23);
  v13 = v24;
  if (SHIBYTE(v26) < 0)
  {
    sub_100008904(__dst, v25[0], v25[1]);
  }

  else
  {
    *__dst = *v25;
    v17 = v26;
  }

  (*(*v12 + 384))(v12, &v18, a3, v13, v14, __dst, v9, v10, v11);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_100336998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100336A04(uint64_t a1, uint64_t a2, int a3)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 360);
  v6 = sub_10000E92C();
  if (((*(*v6 + 720))(v6) & ((a3 & 0x200) >> 9)) == 1)
  {
    v7 = qword_100BCE8C0;
    v8 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GAPA hide auth fail", buf, 2u);
    }

    sub_10033670C(v8, a2, a3 | 2u);
  }

  else
  {
    v9 = sub_1000E31D0(a2);
    if ((v9 & 2) != 0)
    {
      v14 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Add new GAPA bits 0x%x", buf, 8u);
      }

      sub_100540890(a2, a3, a3);
    }

    else
    {
      v10 = sub_1003360F8(v9, a2);
      v11 = a3 | 2u;
      v12 = qword_100BCE8C0;
      v13 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v13)
        {
          *buf = 67109120;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Zero device GAPA 0x%x", buf, 8u);
        }

        sub_10054FEFC(a2);
        sub_10053D890(a2, 0, 0, 0, 0);
        sub_10053DCEC(a2, 0, 0);
        sub_10053DFDC(a2, 0, 0);
        sub_100548B84(a2);
      }

      else if (v13)
      {
        *buf = 67109120;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Limited morph device GAPA 0x%x", buf, 8u);
      }

      v15 = sub_100540890(a2, v11, v11);
      sub_10033670C(v15, a2, v11);
      v17 = *(a2 + 1499);
      memset(buf, 0, sizeof(buf));
      v32 = 0;
      if (*(a2 + 1567) < 0)
      {
        v16 = sub_100008904(buf, *(a2 + 1544), *(a2 + 1552));
      }

      else
      {
        *buf = *(a2 + 1544);
        v32 = *(a2 + 1560);
      }

      if (SHIBYTE(v32) < 0)
      {
        v16 = sub_100008904(__p, *buf, *&buf[8]);
      }

      else
      {
        *__p = *buf;
        v23 = v32;
      }

      v18 = sub_1003365CC(v16, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      v19 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        v20 = buf;
        if (v32 < 0)
        {
          v20 = *buf;
        }

        *v25 = 67109634;
        v26 = v17;
        v27 = 1024;
        v28 = v18;
        v29 = 2080;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "GAPA alert control userConnected=%d, deviceStartSession=%d (%s)", v25, 0x18u);
      }

      if (v17 && v18 == 1)
      {
        sub_100335C28(a1, a2);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  return sub_1000088CC(v24);
}

void sub_100336DE4(uint64_t a1, uint64_t a2)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v13 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_1000E5A58(a2, __p);
    if (v44[0] >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = *__p;
    }

    *buf = 136315138;
    *&buf[4] = v14;
    v10 = "GAPA non-auth disabled for %s";
LABEL_18:
    v11 = v13;
    v12 = 12;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    if (SHIBYTE(v44[0]) < 0)
    {
      operator delete(*__p);
    }

    return;
  }

  v4 = sub_10000E92C();
  if (((*(*v4 + 744))(v4) & 1) == 0)
  {
    v15 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *__p = 0;
    v16 = "GAPA non-auth is disabled by defaults write";
LABEL_25:
    v17 = v15;
    v18 = 2;
    goto LABEL_26;
  }

  v5 = sub_10000C798();
  if (((*(*v5 + 352))(v5) & 1) == 0)
  {
    v15 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *__p = 0;
    v16 = "GAPA non-auth is disabled for this OS";
    goto LABEL_25;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  if ((sub_1000BE6E8(off_100B508E8) & 1) == 0)
  {
    v13 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_1000E5A58(a2, __p);
    if (v44[0] >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = *__p;
    }

    *buf = 136446210;
    *&buf[4] = v19;
    v10 = "Device has not been unlocked (or device prefs not read yet) - disabling GAPA non-auth for %{public}s";
    goto LABEL_18;
  }

  v6 = sub_1000E31D0(a2);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_1000E5A58(a2, __p);
    if (v44[0] >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = *__p;
    }

    *buf = 136315394;
    *&buf[4] = v9;
    v39 = 1024;
    v40 = v7;
    v10 = "Known GAPA result for %s cbGAPAFlags=0x%x non-auth not supported";
    v11 = v8;
    v12 = 18;
    goto LABEL_19;
  }

  v36 = 0;
  v37 = 0;
  sub_1000C2364(a2, &v37 + 1, &v37, &v36 + 1, &v36);
  if (!sub_100539FE8(a2) || (+[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", HIDWORD(v36)), v20 = objc_claimAutoreleasedReturnValue(), v21 = ([v20 flags] & 0x800) == 0, v20, v21))
  {
    v23 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *__p = 67109888;
    *&__p[4] = HIDWORD(v37);
    *&__p[8] = 1024;
    *&__p[10] = v37;
    *v43 = 1024;
    *&v43[2] = HIDWORD(v36);
    LOWORD(v44[0]) = 1024;
    *(v44 + 2) = v36;
    v16 = "No GAPA non-auth for vidSrc=%d, vid=0x%x, pid=0x%x, version=%d";
    v17 = v23;
    v18 = 26;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, __p, v18);
    return;
  }

  v24 = sub_1003360F8(v22, a2);
  if (sub_1000E2140(a2, 42) || (v24 & 1) == 0)
  {
    v25 = 0;
  }

  else
  {
    v26 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v27 = v41 >= 0 ? buf : *buf;
      *__p = 136315650;
      *&__p[4] = v27;
      *&__p[12] = 1024;
      *v43 = HIDWORD(v36);
      *&v43[4] = 1024;
      v44[0] = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Invalid device configuration %s pid=0x%x deviceInfoGAPA=%d", __p, 0x18u);
      if (v41 < 0)
      {
        operator delete(*buf);
      }
    }

    v25 = 1024;
  }

  v35 = 0;
  v34 = 0;
  v33 = 0;
  if (sub_1000E2FE4(a2, &v35, &v34, &v33))
  {
    v28 = sub_10000E92C();
    if ((*(*v28 + 728))(v28))
    {
      v35 = 1494;
      goto LABEL_50;
    }

    if (v35 != 76)
    {
LABEL_50:
      v29 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v30 = v44[0] >= 0 ? __p : *__p;
        *buf = 136315394;
        *&buf[4] = v30;
        v39 = 1024;
        v40 = v35;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "GAPA detect for %s is mfgName=0x%x", buf, 0x12u);
        if (SHIBYTE(v44[0]) < 0)
        {
          operator delete(*__p);
        }
      }

      v25 |= 4u;
    }
  }

  v31 = sub_10000F034();
  *__p = *(a2 + 128);
  *&__p[4] = *(a2 + 132);
  (*(*v31 + 392))(v31, __p, 0, 0);
  *__p = a2 + 128;
  *(sub_100360788(a1 + 536, (a2 + 128)) + 31) = 1;
  v32 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 67109120;
    *&__p[4] = v25;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "GAPA non-auth detect is complete flags=0x%x", __p, 8u);
  }

  if (v25)
  {
    sub_100336A04(a1, a2, v25);
  }

  if (qword_100B50AB0 != -1)
  {
    sub_10081A1B0();
  }

  sub_100560FB0(off_100B50AA8, a2, 4102);
}

BOOL sub_1003374B4(uint64_t a1, _DWORD *a2, uint64_t a3, char a4)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v16 = qword_100BCE8C0;
    result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    sub_1000E5A58(a2, __p);
    if (v43[0] >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = *__p;
    }

    *buf = 136315138;
    *&buf[4] = v17;
    v15 = "GAPA auth disabled for %s";
    goto LABEL_18;
  }

  v8 = sub_10000E92C();
  if (((*(*v8 + 736))(v8) & 1) == 0)
  {
    v20 = qword_100BCE8C0;
    result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *__p = 0;
    v21 = "GAPA auth is disabled by defaults write";
    goto LABEL_25;
  }

  v9 = sub_10000C798();
  if (((*(*v9 + 352))(v9) & 1) == 0)
  {
    v20 = qword_100BCE8C0;
    result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *__p = 0;
    v21 = "GAPA auth is disabled for this OS";
    goto LABEL_25;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  if ((sub_1000BE6E8(off_100B508E8) & 1) == 0)
  {
    v16 = qword_100BCE8C0;
    result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    sub_1000E5A58(a2, __p);
    if (v43[0] >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = *__p;
    }

    *buf = 136446210;
    *&buf[4] = v24;
    v15 = "Device has not been unlocked (or device prefs not read yet) - disabling GAPA auth for %{public}s";
LABEL_18:
    v18 = v16;
    v19 = 12;
    goto LABEL_19;
  }

  v10 = sub_1000E31D0(a2);
  if (v10)
  {
    v11 = v10;
    v12 = qword_100BCE8C0;
    result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    sub_1000E5A58(a2, __p);
    if (v43[0] >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = *__p;
    }

    *buf = 136315394;
    *&buf[4] = v14;
    v38 = 1024;
    v39 = v11;
    v15 = "Known GAPA result for %s cbGAPAFlags=0x%x auth not supported";
    goto LABEL_40;
  }

  v25 = *(a3 + 600);
  if (!v25)
  {
    v35 = 0;
    v36 = 0;
    sub_1000C2364(a2, &v36 + 1, &v36, &v35 + 1, &v35);
    if (!sub_100539FE8(a2) || (+[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", HIDWORD(v35)), v27 = objc_claimAutoreleasedReturnValue(), v28 = ([v27 flags] & 0x800) == 0, v27, v28))
    {
      v29 = qword_100BCE8C0;
      result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *__p = 67109888;
      *&__p[4] = HIDWORD(v36);
      *&__p[8] = 1024;
      *&__p[10] = v36;
      *v42 = 1024;
      *&v42[2] = HIDWORD(v35);
      LOWORD(v43[0]) = 1024;
      *(v43 + 2) = v35;
      v21 = "No GAPA auth for vidSrc=%d, vid=0x%x, pid=0x%x, version=%d";
      v22 = v29;
      v23 = 26;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, __p, v23);
      return 0;
    }

    v30 = sub_1000E2140(a2, 42);
    if (v30)
    {
      v31 = sub_1003360F8(v30, a2);
      result = 1;
      if (v31 && (a4 & 1) == 0)
      {
        v32 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, buf);
          v33 = v40 >= 0 ? buf : *buf;
          *__p = 136315650;
          *&__p[4] = v33;
          *&__p[12] = 1024;
          *v42 = HIDWORD(v35);
          *&v42[4] = 1024;
          v43[0] = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Invalid device configuration %s pid=0x%x isCertificateSupported=%d", __p, 0x18u);
          if (v40 < 0)
          {
            operator delete(*buf);
          }
        }

        v34 = sub_10000E92C();
        if ((*(*v34 + 768))(v34))
        {
          return 1;
        }

        sub_100336A04(a1, a2, 256);
        return 0;
      }

      return result;
    }

    v20 = qword_100BCE8C0;
    result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *__p = 0;
    v21 = "Accessory device does not support GAPA auth not supported";
LABEL_25:
    v22 = v20;
    v23 = 2;
    goto LABEL_26;
  }

  v12 = qword_100BCE8C0;
  result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_1000E5A58(a2, __p);
    if (v43[0] >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = *__p;
    }

    *buf = 136315394;
    *&buf[4] = v26;
    v38 = 1024;
    v39 = v25;
    v15 = "Invalid GAPA state for %s authState=%d auth not supported";
LABEL_40:
    v18 = v12;
    v19 = 18;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v15, buf, v19);
    if (SHIBYTE(v43[0]) < 0)
    {
      operator delete(*__p);
    }

    return 0;
  }

  return result;
}

void sub_100337A4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 328) == 1)
  {
    v6[8] = v2;
    v6[9] = v3;
    if (qword_100B540A0 != -1)
    {
      sub_10081A91C();
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100337AF8;
    v6[3] = &unk_100AE0860;
    v6[4] = a1;
    v6[5] = a2;
    sub_1005897E0(off_100B54098, v6);
  }
}

uint64_t sub_100337B04(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  if (*(a1 + 328) != 1)
  {
    return 111;
  }

  if (!a2)
  {
    return 8;
  }

  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, a1 + 360);
  for (i = *(a1 + 336); i != *(a1 + 344); ++i)
  {
    v11 = *i;
    if (**i == a2)
    {
      v13 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v14 = v35;
        v15 = __p[0];
        v23 = sub_100304810(a3, v16, v17, v18, v19, v20, v21, v22);
        v24 = __p;
        if (v14 < 0)
        {
          v24 = v15;
        }

        if ((a4 - 1) > 2)
        {
          v25 = "Unknown";
        }

        else
        {
          v25 = off_100AED268[a4 - 1];
        }

        *buf = 136446722;
        v38 = v24;
        v39 = 2080;
        v40 = v23;
        v41 = 2082;
        v42 = v25;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setDeviceStateOnPeerSrc: device %{public}s, peer source %s, device state %{public}s", buf, 0x20u);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if ((a5 & 1) == 0)
      {
        v26 = !sub_100337E54(a1, a2);
        if (a4 != 3)
        {
          LOBYTE(v26) = 1;
        }

        if (!v26 && *a3 == dword_100B54070 && *(a3 + 4) == word_100B54074)
        {
          v28 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "setDeviceStateOnPeerSrc: Triangle recovery begun; starting easy pairing agent first", buf, 2u);
          }

          *(v11 + 728) = 1;
          sub_100337EC0(a1, v11);
        }
      }

      if (*a3 != dword_100B54070 || *(a3 + 4) != word_100B54074)
      {
        *buf = *a3;
        LOWORD(v38) = *(a3 + 4);
        sub_100338020(v11, buf, a4);
        LOWORD(v38) = 0;
        *buf = 0;
        if (qword_100B50AA0 != -1)
        {
          sub_100819F0C();
        }

        sub_10009BE34(off_100B50A98, buf);
        LODWORD(__p[0]) = *buf;
        WORD2(__p[0]) = v38;
        v32 = *a3;
        v33 = *(a3 + 4);
        sub_10033813C(v11, __p, &v32);
        v30 = sub_100338390(v11);
        sub_1003382B0(v30, a2, v30);
      }

      v12 = 0;
      goto LABEL_40;
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081AA40();
  }

  v12 = 312;
LABEL_40:
  sub_1000088CC(v36);
  return v12;
}

void sub_100337E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_100337E54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 430) != 1)
  {
    return 0;
  }

  if (*(a1 + 424))
  {
    v2 = 0;
    if (!a2)
    {
      return 0;
    }
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v3;
      if (v3 == 5)
      {
        break;
      }

      ++v3;
    }

    while (!*(a1 + 425 + v4));
    v2 = v4 > 4;
    if (!a2)
    {
      return 0;
    }
  }

  if (v2 || (*(a2 + 1016) & 1) != 0)
  {
    return 0;
  }

  return sub_1000E2140(a2, 12);
}

void sub_100337EC0(uint64_t a1, uint64_t *a2)
{
  sub_100355144(a2);
  v4 = *a2;
  if (sub_100337E54(a1, *a2))
  {
    v5 = a2[6];
    if (v5)
    {
      v6 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4, __p);
        if (v10 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136446210;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "startEasyPairAgent: starting easy pair agent for %{public}s", buf, 0xCu);
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100322DDC(v5);
    }
  }

  else
  {
    v8 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "startEasyPairAgent: Cannot use magnet link", __p, 2u);
    }
  }
}

uint64_t sub_100338020(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a2, __p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446466;
    v12 = v7;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fSrcConnMap Setting %{public}s to %d", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = a2;
  result = sub_100360788(a1 + 704, a2);
  *(result + 31) = a3;
  return result;
}

void sub_10033813C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v28 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_100819E68();
  }

  sub_10009BE34(off_100B50A98, &v28);
  v6 = *a2;
  *(a1 + 609) = *(a2 + 4);
  *(a1 + 605) = v6;
  LOWORD(v6) = *(a3 + 4);
  *(a1 + 611) = *a3;
  *(a1 + 615) = v6;
  v8 = v28 != *a3 || v29 != *(a3 + 4);
  *(a1 + 617) = v8;
  v9 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_100304810(a2, v10, v11, v12, v13, v14, v15, v16);
    v25 = sub_100304810(a3, v18, v19, v20, v21, v22, v23, v24);
    v26 = *(a1 + 617);
    *buf = 136446722;
    v31 = v17;
    if (v26)
    {
      v27 = "Yes";
    }

    else
    {
      v27 = "No";
    }

    v32 = 2082;
    v33 = v25;
    v34 = 2080;
    v35 = v27;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set source addresses in TiPi, primaryAddr %{public}s, tipiAddr %{public}s, is_primary = %s ", buf, 0x20u);
  }
}

uint64_t sub_1003382B0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1000D999C();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10035BEC8;
  v10[3] = &unk_100AE15D8;
  v10[4] = a2;
  v11 = a3;
  sub_10000CA94(v5, v10);
  v6 = sub_1000DAB84();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10035BF20;
  v8[3] = &unk_100AE15D8;
  v8[4] = a2;
  v9 = a3;
  sub_10000CA94(v6, v8);
  return 0;
}

BOOL sub_100338390(uint64_t a1)
{
  v2 = 605;
  if (*(a1 + 617))
  {
    v2 = 611;
  }

  v3 = a1 + v2;
  v6 = *v3;
  v7 = *(v3 + 4);
  v4 = sub_100360420(a1 + 704, &v6);
  return a1 + 712 != v4 && *(v4 + 31) == 1;
}

uint64_t sub_100338418(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8C0;
  v7 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v8 = "Legacy Connection";
    if (a3)
    {
      v8 = "TiPi Connection";
    }

    v10 = 136446210;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notify Connection update: %{public}s", &v10, 0xCu);
  }

  sub_1003382B0(v7, a2, a3);
  *(a1 + 520) = a3;
  return 0;
}

uint64_t sub_1003384F8(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v8 = 0;
        sub_1000216B4(&v8);
        v7 = sub_10018A52C((a2 + 128));
        sub_100022214(&v8);
        if (v7 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081AA7C();
        }

        if (qword_100B50AA0 != -1)
        {
          sub_100819F0C();
        }

        v5 = sub_1000DD584(off_100B50A98, v7, 10000);
        sub_10002249C(&v8);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081AAEC();
  }

  v5 = 312;
LABEL_9:
  sub_1000088CC(v9);
  return v5;
}

void sub_100338620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100338644(int a1@<W1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10056D908(off_100B508E8, a1, &v13);
  v4 = v13;
  v5 = v14;
  if (v13 != v14)
  {
    while (1)
    {
      v6 = *v4;
      if (!sub_1000E2140(*v4, 3))
      {
LABEL_18:
        v4 = v13;
        goto LABEL_19;
      }

      __p = 0uLL;
      v12 = 0;
      sub_1000E2D2C(v6, 3u, &__p);
      v7 = HIBYTE(v12);
      v8 = SHIBYTE(v12);
      if (v12 < 0)
      {
        v7 = *(&__p + 1);
      }

      if (v7 >= 2)
      {
        break;
      }

      if (v12 < 0)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (++v4 == v5)
      {
        goto LABEL_18;
      }
    }

    v9 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      p_p = __p;
      if (v8 >= 0)
      {
        p_p = &__p;
      }

      *buf = 136446466;
      v17 = p_p;
      v18 = 1024;
      v19 = a1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "getCaseSerialNumbersForAppleProductId: Retrieved serial number %{public}s belonging to pId %u", buf, 0x12u);
    }

    sub_100338878(a2, &__p);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    operator delete(__p);
    goto LABEL_10;
  }

LABEL_19:
  if (v4)
  {
    v14 = v4;
    operator delete(v4);
  }
}

uint64_t sub_100338878(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100360988(a1, a2);
  }

  else
  {
    sub_100360928(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003388B8(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    if (*a2 != 1)
    {
      goto LABEL_20;
    }

    v4 = sub_10000C798();
    if ((*(*v4 + 416))(v4))
    {
      v5 = a2 + 5;
      if (a2[5] != 2)
      {
        v6 = *(a1 + 512);
        if (v6 == -1)
        {
          v7 = (a1 + 512);
          notify_register_check("com.apple.audioaccessoryd.MuteEducationalCard", v7);
          v6 = *v7;
        }

        notify_set_state(v6, 1uLL);
        notify_post("com.apple.audioaccessoryd.MuteEducationalCard");
        goto LABEL_13;
      }
    }

    else
    {
      v8 = sub_10000C798();
      if ((*(*v8 + 456))(v8))
      {
        v5 = a2 + 5;
        if (a2[5] != 2)
        {
LABEL_13:
          *v5 = 2;
          v9 = 1;
LABEL_14:
          if (a2[6])
          {
            v10 = a2[4] == 0;
          }

          else
          {
            v10 = 1;
          }

          if (v10 | v9)
          {
            a2[6] = 2;
            a2[4] = 3;
            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  if (!a2[2])
  {
    a2[2] = 2;
LABEL_19:
    v11 = 1;
    goto LABEL_21;
  }

LABEL_20:
  v11 = 0;
LABEL_21:
  v12 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "No";
    if (v11)
    {
      v13 = "Yes";
    }

    v15 = 136315138;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Call Management: shouldSendDefault %s", &v15, 0xCu);
  }

  return v11;
}

void sub_100338AC0(uint64_t a1, __n128 *a2, int a3, unsigned int a4)
{
  *(v18 + 3) = 0;
  v18[0] = 0;
  if ((a4 & 0xF) == 1)
  {
    v7 = &v18[1] + 2;
    LOBYTE(v18[0]) = 1;
    HIBYTE(v18[0]) = a4 >> 4;
    LOBYTE(v18[1]) = BYTE1(a4) & 0xF;
    BYTE1(v18[1]) = a4 >> 12;
    v8 = HIWORD(a4) & 0xF;
  }

  else
  {
    if ((a4 & 0xF) != 0)
    {
      goto LABEL_6;
    }

    v7 = &v18[1];
    LOBYTE(v18[0]) = 0;
    BYTE1(v18[0]) = a4 >> 4;
    v8 = (a4 >> 8) & 0xF;
    BYTE2(v18[0]) = BYTE1(a4) & 0xF;
    HIBYTE(v18[0]) = a4 >> 4;
  }

  *v7 = v8;
LABEL_6:
  if (sub_1003388B8(a1, v18))
  {
    v9 = v18[0] | ((LOWORD(v18[1]) | (BYTE2(v18[1]) << 16)) << 32);
    v10 = (v18[0] >> 20) & 0xF0 | (v9 >> 24) & 0xF00 | (v9 >> 28) & 0xF000 | (LOWORD(v18[1]) | (BYTE2(v18[1]) << 16)) & 0xF0000 | 1;
    v11 = (v18[0] >> 4) & 0xF0 | (v18[0] >> 8) & 0xF00;
    if (LOBYTE(v18[0]))
    {
      v11 = 0;
    }

    if (LOBYTE(v18[0]) == 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = sub_100331844(a1, a2, 36, v12, 2u);
    v14 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_100333C10(a1, a3, v12, __p);
      v15 = v17 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Call Management: sending default %{public}s", buf, 0xCu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v13 == 1 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081AB28();
    }
  }
}

uint64_t sub_100338CE0(uint64_t a1)
{
  v2 = *(a1 + 508);
  if (v2 == -1)
  {
    v3 = (a1 + 508);
    notify_register_check("com.apple.audioaccessoryd.MuteState", (a1 + 508));
    v2 = *v3;
  }

  notify_set_state(v2, 1uLL);

  return notify_post("com.apple.audioaccessoryd.MuteState");
}

uint64_t sub_100338D44(uint64_t a1, __n128 *a2, uint64_t a3)
{
  sub_100546AA8(a2, a3);
  v6 = sub_10057DDF0(a1);
  if (v6)
  {
    v6 = sub_100331844(a1, a2, 13, a3, 2u);
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  sub_100338DBC(v6, a2);
  return v7;
}

void sub_100338DBC(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    if (v10 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notify listen mode change for device %s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = sub_1000D999C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100354E00;
  v8[3] = &unk_100ADF8F8;
  v8[4] = a2;
  sub_10000CA94(v5, v8);
  v6 = sub_1000DAB84();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100354E60;
  v7[3] = &unk_100ADF8F8;
  v7[4] = a2;
  sub_10000CA94(v6, v7);
}

void sub_100338F38(uint64_t a1, __n128 *a2)
{
  v3 = sub_1003391A4(a1, a2);
  v13 = v3;
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  if (sub_1000BE6E8(off_100B508E8))
  {
    v4 = sub_1000BE4B4();
    v5 = (*(*v4 + 864))(v4, a2, &v13);
    sub_1005468F0(a2, v13, v5 != 0);
    v6 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      if (v13)
      {
        v7 = "enabled";
      }

      else
      {
        v7 = "disabled";
      }

      sub_1000E5A58(a2, __p);
      if (v17 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v9 = "Success";
      *buf = 136315650;
      if (v5)
      {
        v9 = "Error";
      }

      *&buf[4] = v7;
      v19 = 2082;
      v20 = v8;
      v21 = 2080;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device unlocked, initializing IED enable to %s for device %{public}s with read %s", buf, 0x20u);
      if (v17 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v10 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v3 ? "enabled" : "disabled";
      sub_1000E5A58(a2, buf);
      v12 = v21 >= 0 ? buf : *buf;
      *__p = 136315394;
      *&__p[4] = v11;
      v15 = 2082;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device not unlocked yet (or device prefs not read yet), initializing IED enable to %s for device %{public}s", __p, 0x16u);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(*buf);
      }
    }

    sub_1005468F0(a2, v3, 0);
  }
}

BOOL sub_1003391A4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 1;
  if (!sub_1000E2140(a2, 1))
  {
    v3 = sub_1000E2140(a2, 15);
  }

  v4 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v5 = __p[0];
    v6 = "false";
    if (v9 >= 0)
    {
      v5 = __p;
    }

    if (v3)
    {
      v6 = "true";
    }

    *buf = 136446466;
    v11 = v5;
    v12 = 2082;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "In Ear detection support state for %{public}s is %{public}s", buf, 0x16u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

uint64_t sub_1003392D8(uint64_t a1, __n128 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v7 = 0;
        sub_100338F38(a1, a2);
        v5 = sub_1000BE4B4();
        if (!(*(*v5 + 848))(v5, a2, &v7))
        {
          sub_100331844(a1, a2, 12, v7, 1u);
        }

        return sub_1000088CC(v8);
      }
    }
  }

  return sub_1000088CC(v8);
}

void sub_1003393A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003393C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v9 = (*(**(*i + 768) + 80))(*(*i + 768), a2, a3, a4);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v11);
    sub_100819EB8();
  }

  v9 = 312;
LABEL_9:
  sub_1000088CC(v12);
  return v9;
}

void sub_1003394E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100339504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v7 = (*(**(*i + 768) + 160))(*(*i + 768), a2, a3);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v9);
    sub_100819EB8();
  }

  v7 = 312;
LABEL_9:
  sub_1000088CC(v10);
  return v7;
}

void sub_100339620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100339640(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v5 = (*(**(*i + 768) + 168))(*(*i + 768), a2);
        goto LABEL_9;
      }
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v7);
    sub_100819EB8();
  }

  v5 = 312;
LABEL_9:
  sub_1000088CC(v8);
  return v5;
}

void sub_10033974C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033976C(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v4 = sub_10000C798();
  if ((*(*v4 + 384))(v4))
  {
    v5 = 1;
LABEL_17:
    v15 = v5;
    goto LABEL_18;
  }

  v6 = sub_10000C798();
  if ((*(*v6 + 392))(v6))
  {
    v5 = 2;
    goto LABEL_17;
  }

  v7 = sub_10000C798();
  if ((*(*v7 + 400))(v7))
  {
    v5 = 3;
    goto LABEL_17;
  }

  v8 = sub_10000C798();
  if ((*(*v8 + 416))(v8))
  {
    v5 = 16;
    goto LABEL_17;
  }

  v9 = sub_10000C798();
  if ((*(*v9 + 408))(v9))
  {
    v5 = 32;
    goto LABEL_17;
  }

  v10 = sub_10000C798();
  if ((*(*v10 + 360))(v10))
  {
    v5 = 48;
    goto LABEL_17;
  }

  v11 = sub_10000C798();
  if ((*(*v11 + 432))(v11))
  {
    v5 = 49;
    goto LABEL_17;
  }

  v12 = sub_10000C798();
  if ((*(*v12 + 456))(v12))
  {
    v5 = 64;
    goto LABEL_17;
  }

  v5 = 0;
LABEL_18:
  v13 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sendSourceType %d", buf, 8u);
  }

  return sub_100331030(a1, a2, 2, 1, &v15);
}

uint64_t sub_100339A20(uint64_t result, uint64_t a2)
{
  v3 = 0;
  memset(&v2[2], 0, 24);
  if (a2)
  {
    v2[0] = 0;
    v2[1] = 0;
    sub_100007F88(v2, result + 360);
    sub_10033A4C8();
  }

  return result;
}

void sub_10033A424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10002249C(&a15);
  sub_1000088CC(&a21);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10033A624(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v9 = 0;
    v10 = 0;
    sub_1000C2364(a2, &v10 + 1, &v10, &v9 + 1, &v9);
    v2 = HIDWORD(v9);
    v3 = HIDWORD(v9) == 8194 || HIDWORD(v9) == 8207;
    if (v3 || (v6 = v9, HIDWORD(v9) == 8195) && v9 > 0x767 || HIDWORD(v9) == 8197 && v9 > 0x76F || HIDWORD(v9) == 8198 && v9 > 0x768 || HIDWORD(v9) == 8201 && v9 >= 0x240)
    {
      v4 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v12 = v2;
        v13 = 1024;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AACP Config Jitter Buffer is supported. pid: %x, version: %x", buf, 0xEu);
      }

      return 1;
    }

    else
    {
      v7 = qword_100BCE8C0;
      v8 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v8)
      {
        *buf = 67109376;
        v12 = v2;
        v13 = 1024;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AACP Config Jitter Buffer is NOT supported. pid: %x, version: %x", buf, 0xEu);
        return 0;
      }
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10081AC30();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10033A804(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  if (qword_100B54090 != -1)
  {
    sub_10081AC6C();
  }

  if (sub_1003211D8(qword_100B54088))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10033A858(uint64_t a1, unint64_t a2)
{
  if (qword_100B54090 != -1)
  {
    sub_10081AC6C();
  }

  if (sub_100389744(qword_100B54088, a2) == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10033A8AC(uint64_t a1, __n128 *a2, int a3, int a4)
{
  v84[0] = 0;
  v84[1] = 0;
  sub_100007F88(v84, a1 + 360);
  if (!a2 || (v8 = *(a1 + 336), v9 = *(a1 + 344), v8 == v9))
  {
LABEL_5:
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081AD7C();
    }

    return sub_1000088CC(v84);
  }

  while (1)
  {
    v10 = *v8;
    if (**v8 == a2)
    {
      break;
    }

    if (++v8 == v9)
    {
      goto LABEL_5;
    }
  }

  if (a4)
  {
    v12 = sub_1000E3314(a2);
    v13 = sub_100331844(a1, a2, 1, v12, 1u);
    if (sub_1003391A4(v13, a2) && *(v10 + 20) != 8208)
    {
      if (sub_1000E356C(a2))
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      sub_100331844(a1, a2, 10, v14, 1u);
    }

    v15 = sub_1000E2B78(a2);
    sub_100331844(a1, a2, 6, v15, 1u);
    if (sub_1000E2140(a2, 29) && !sub_1000E2140(a2, 43))
    {
      v16 = sub_100549334(a2);
      sub_100331844(a1, a2, 23, v16, 1u);
    }

    if (sub_1000E2140(a2, 30) && !sub_1000E2140(a2, 38))
    {
      v17 = sub_1000E06EC(a2);
      sub_100331844(a1, a2, 22, v17, 1u);
      if (!sub_1000E2140(a2, 43))
      {
        v18 = sub_10054937C(a2);
        sub_100331844(a1, a2, 24, v18, 1u);
      }
    }

    if (_os_feature_enabled_impl() && sub_1000E3218(a2, 0x13u) == 1)
    {
      v19 = sub_10054964C(a2);
      sub_100331844(a1, a2, 52, v19, 1u);
    }

    if (sub_1000E2140(a2, 28))
    {
      v20 = sub_1000E32CC(a2);
      sub_100331844(a1, a2, 26, v20, 1u);
    }

    if (sub_1000E3218(a2, 0x15u) == 1 && sub_1005498D4(a2))
    {
      v21 = sub_1005498D4(a2);
      sub_100331844(a1, a2, 50, v21, 1u);
    }

    if (_os_feature_enabled_impl())
    {
      v22 = sub_1005464F8(a2);
      sub_100331844(a1, a2, 54, v22, 1u);
    }

    v23 = sub_10000C7D0();
    if ((*(*v23 + 2904))(v23))
    {
      sub_100331844(a1, a2, 62, 1, 1u);
    }
  }

  if (sub_1000E2140(a2, 16) && sub_1000E2140(a2, 1) && !sub_1000E2140(a2, 43))
  {
    if (a4)
    {
      v25 = sub_1005493C4(a2);
      sub_100331844(a1, a2, 27, v25, 1u);
    }
  }

  else if (sub_1000E2140(a2, 16) && sub_1000E2140(a2, 15))
  {
    v24 = sub_1005472D0(a2, 1);
    sub_1003334D4(v24, a2);
  }

  if (sub_1000E2140(a2, 32) && !sub_1000E5DB8(a2))
  {
    if (a4)
    {
      v33 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        if (buf[23] >= 0)
        {
          v34 = buf;
        }

        else
        {
          v34 = *buf;
        }

        v35 = sub_1000E2140(a2, 32);
        v36 = sub_1000E5DB8(a2);
        v37 = "No";
        *v92 = 136446722;
        *&v92[4] = v34;
        if (v35)
        {
          v37 = "Yes";
        }

        v93 = 2080;
        v94 = v37;
        v95 = 1024;
        v96 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s Initialize setSmartRouteMode via connection Tipi Support = %s current SR Mode =%d", v92, 0x1Cu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      sub_100546280(a2, 1);
    }
  }

  else if (sub_1000E012C(a2, 64))
  {
    v26 = sub_10000C798();
    if ((*(*v26 + 840))(v26, 1))
    {
      if (!sub_1005491CC(a2))
      {
        v27 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, v92);
          v28 = SHIBYTE(v95);
          v29 = *v92;
          v30 = sub_1000E012C(a2, 64);
          v31 = v92;
          v32 = "No";
          if (v28 < 0)
          {
            v31 = v29;
          }

          if (v30)
          {
            v32 = "Yes";
          }

          *buf = 136446466;
          *&buf[4] = v31;
          *&buf[12] = 2080;
          *&buf[14] = v32;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s Initialize Spatial Audio via connection Spatial support = %s", buf, 0x16u);
          if (SHIBYTE(v95) < 0)
          {
            operator delete(*v92);
          }
        }

        sub_100546748(a2, 1);
      }
    }
  }

  v38 = sub_10000C798();
  if ((*(*v38 + 352))(v38) & 1) != 0 || (v39 = sub_10000C798(), ((*(*v39 + 416))(v39)) || (v40 = sub_10000C798(), (*(*v40 + 456))(v40)))
  {
    if (sub_1000E2140(a2, 14))
    {
      if (qword_100B508F0 != -1)
      {
        sub_10081A4E4();
      }

      if (sub_1000BE6E8(off_100B508E8))
      {
        v41 = sub_1000E3188(a2);
        v42 = sub_1000E2140(a2, 22);
        v43 = sub_10033BE98(v42, a2, v41, v42);
        if (v41 != v43)
        {
          sub_10053D6E4(a2, v43);
        }

        sub_100331844(a1, a2, 12, v43, 1u);
        v44 = *(v10 + 20);
        if (v44 == 8208)
        {
          if (!sub_1000E2BC0(a2))
          {
            sub_1005473AC(a2, 1);
            sub_100331844(a1, a2, 30, 1, 1u);
          }

          v44 = *(v10 + 20);
        }

        if ((v44 == 8202 || (sub_1000E012C(a2, 32) & 1) != 0 || *(v10 + 20) == 8223) && !sub_1000E20F8(a2))
        {
          sub_100547364(a2, 1);
          sub_100331844(a1, a2, 28, 1, 1u);
        }
      }

      else
      {
        v45 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, v92);
          v46 = v95 >= 0 ? v92 : *v92;
          *buf = 136446210;
          *&buf[4] = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Device has not been unlocked (or device prefs not read yet) - disabling double tap on %{public}s", buf, 0xCu);
          if (SHIBYTE(v95) < 0)
          {
            operator delete(*v92);
          }
        }

        sub_100331844(a1, a2, 12, 0, 1u);
        *v92 = 0;
        v47 = *(sub_100017F4C() + 8);
        v83[0] = _NSConcreteStackBlock;
        v83[1] = 3221225472;
        v83[2] = sub_10033BD50;
        v83[3] = &unk_100AEC110;
        v83[4] = a1;
        v83[5] = a2;
        v48 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", v92, v47, v83);
        v49 = qword_100BCE8C0;
        if (v48)
        {
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_10081AC80();
          }
        }

        else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Successfully registered for MKB first unlock notification", buf, 2u);
        }
      }

      sub_100330C90(a1, a2, 32, 0, 0);
    }
  }

  if (a4)
  {
    if (sub_1000E2140(a2, 32))
    {
      v50 = sub_1000E5DB8(a2);
      if (v50)
      {
        sub_100331844(a1, a2, 32, v50, 1u);
      }
    }
  }

  v51 = sub_10000E92C();
  if ((*(*v51 + 8))(v51))
  {
    v52 = *(v10 + 20) - 8194;
    if (v52 > 0xE || ((1 << v52) & 0x409B) == 0)
    {
      v76 = sub_10000E92C();
      v77 = (*(*v76 + 840))(v76);
      sub_100331844(a1, a2, 34, v77, 1u);
    }
  }

  v53 = sub_10000E92C();
  if ((*(*v53 + 8))(v53))
  {
    v54 = sub_10000C798();
    if ((*(*v54 + 352))(v54))
    {
      v55 = *(v10 + 20) - 8212;
      if (v55 <= 0x14 && ((1 << v55) & 0x1916A1) != 0)
      {
        v87[0] = 0;
        v56 = sub_10000E92C();
        sub_100007E30(v92, "A2DP");
        sub_100007E30(buf, "AdaptiveEQEnable");
        (*(*v56 + 72))(v56, v92, buf, v87);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v95) < 0)
        {
          operator delete(*v92);
        }

        v57 = v87[0];
        v58 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        *v58 = 514;
        v58[2] = 9.445e21;
        v58[3] = v57;
        sub_100330C90(a1, a2, 1, 16, v58);
        free(v58);
      }
    }
  }

  v59 = sub_10000E92C();
  if ((*(*v59 + 8))(v59))
  {
    v60 = sub_10000C798();
    if ((*(*v60 + 352))(v60))
    {
      v61 = *(v10 + 20) - 8217;
      if (v61 <= 7 && ((1 << v61) & 0xA5) != 0)
      {
        v87[0] = 0;
        v62 = sub_10000E92C();
        sub_100007E30(v92, "AutomaticIEDKey");
        sub_100007E30(buf, "DefaultAutoIEDOff");
        (*(*v62 + 72))(v62, v92, buf, v87);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v95) < 0)
        {
          operator delete(*v92);
        }

        v63 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          *v92 = 67109120;
          *&v92[4] = v87[0];
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "internalSetupAACP: Defaults write value to set Automatic Ear Detection off upon every connection = %d", v92, 8u);
        }

        if (v87[0] == 1)
        {
          sub_1005468F0(a2, 0, 1);
        }
      }
    }
  }

  v64 = *(v10 + 20) - 8212;
  if (v64 <= 0x14 && ((1 << v64) & 0x1916A1) != 0 && a3)
  {
    buf[0] = 0;
    *&buf[1] = -1;
    *&buf[9] = -1;
    *&buf[16] = -1;
    v65 = sub_1004327A0();
    (*(*v65 + 16))(v65, *(a1 + 440), buf, *(v10 + 20));
    v66 = sub_10032FE44(a1, a2, buf);
    v67 = v66;
    if (v66)
    {
      v68 = qword_100BCE8C0;
      v66 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
      if (v66)
      {
        v78 = *(a1 + 440);
        sub_1000E5A58(a2, v87);
        v79 = v90 >= 0 ? v87 : *v87;
        *v92 = 138412802;
        *&v92[4] = v78;
        v93 = 2082;
        v94 = v79;
        v95 = 1024;
        v96 = v67;
        _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to set country codes for country %@ for device %{public}s with result %u", v92, 0x1Cu);
        if (v90 < 0)
        {
          operator delete(*v87);
        }
      }
    }

    v86 = 0;
    *v87 = 0;
    v85 = 0;
    sub_10032FF80(v66, buf, v87, &v86, &v85);
    if (sub_1003300AC(a1, a2, 7u, v87, &v86, &v85) && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v92);
      sub_10081ACF0();
    }
  }

  if (qword_100B50AB0 != -1)
  {
    sub_10081A1B0();
  }

  v69 = off_100B50AA8;
  if (sub_1000E25D8() && v69[240] == 1 && (a2[65].n128_u8[4] & 1) == 0 && (a2[65].n128_u8[6] & 1) == 0 && (a2[65].n128_u8[5] & 1) == 0 && (sub_1000E31D0(a2) & 2) == 0)
  {
    if (qword_100B50AB0 != -1)
    {
      sub_10081A1B0();
    }

    if ((sub_1000E2570(off_100B50AA8, a2) & 1) == 0)
    {
      v80 = qword_100BCE960;
      v81 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
      if (v81)
      {
        sub_1000C23E0(a2, buf);
        v82 = buf[23] >= 0 ? buf : *buf;
        *v87 = 141558275;
        *&v87[4] = 1752392040;
        v88 = 2081;
        v89 = v82;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Sending magic keys and renaming device %{private, mask.hash}s", v87, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      sub_1003337DC(v81, a2);
      if (qword_100B508F0 == -1)
      {
        goto LABEL_152;
      }

      goto LABEL_188;
    }
  }

  if (qword_100B50AB0 != -1)
  {
    sub_10081A1B0();
  }

  if (!sub_1000E25D8())
  {
    goto LABEL_153;
  }

  if (qword_100B50AB0 != -1)
  {
    sub_10081A1B0();
  }

  if (sub_1000E2570(off_100B50AA8, a2))
  {
    goto LABEL_153;
  }

  *buf = 0;
  *&buf[8] = 0;
  v87[0] = 0;
  *&v87[1] = a2[8].n128_u32[0];
  *&v87[5] = a2[8].n128_u16[2];
  if (qword_100B508C0 != -1)
  {
    sub_10081AD54();
  }

  if (sub_1007CA58C(off_100B508B8, v87, buf))
  {
    goto LABEL_153;
  }

  if (qword_100B508F0 != -1)
  {
LABEL_188:
    sub_10081A4E4();
  }

LABEL_152:
  sub_10056CB58(off_100B508E8, a2);
LABEL_153:
  if (qword_100B50AB0 != -1)
  {
    sub_10081A1B0();
  }

  v70 = sub_100558DB8(off_100B50AA8, a2);
  v71 = v70;
  if (v70 && *(v70 + 112) == 2)
  {
    v72 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, buf);
      v73 = buf[23] >= 0 ? buf : *buf;
      *v87 = 141558275;
      *&v87[4] = 1752392040;
      v88 = 2081;
      v89 = v73;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Sending magic keys 'again' to device %{private, mask.hash}s", v87, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (qword_100B50AB0 != -1)
    {
      sub_10081A1B0();
    }

    sub_10055ACB4(off_100B50AA8, v71);
    sub_1003337DC(v74, a2);
  }

  if (qword_100B50AB0 != -1)
  {
    sub_10081A1B0();
  }

  sub_100565D28(off_100B50AA8, a2);
  if (sub_100337E54(a1, a2))
  {
    sub_100337EC0(a1, v10);
  }

  else
  {
    v75 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "internalSetupAACP: Conditions not met for easy pairing", buf, 2u);
    }
  }

  if (*(a1 + 520) == 1)
  {
    *(a1 + 520) = 0;
  }

  return sub_1000088CC(v84);
}

uint64_t sub_10033BBAC(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    v4 = v11 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notify in ear status change for device %s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = sub_1000D999C();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100354D40;
  v9[3] = &unk_100ADF8F8;
  v9[4] = a2;
  sub_10000CA94(v5, v9);
  v6 = sub_1000DAB84();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100354DA0;
  v8[3] = &unk_100ADF8F8;
  v8[4] = a2;
  sub_10000CA94(v6, v8);
  if (qword_100B508E0 != -1)
  {
    sub_10081A1D8();
  }

  return sub_100518D80(off_100B508D8, a2);
}

void sub_10033BD50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = MKBDeviceUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received MKB first unlock notification. MKBDeviceUnlockedSinceBoot returns : %d", buf, 8u);
  }

  if (MKBDeviceUnlockedSinceBoot() != 1 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_FAULT))
  {
    sub_10081ADB8();
  }

  v4 = sub_100017F4C();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033BE8C;
  v6[3] = &unk_100AE0860;
  v5 = *(a1 + 40);
  v6[4] = v2;
  v6[5] = v5;
  sub_10008E008(v4, 2000, v6);
}

uint64_t sub_10033BE98(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a4)
  {
    LOBYTE(v6) = 3;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  if (a3 == 0xFFFF)
  {
    v8 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, &__p);
      v9 = v21 >= 0 ? &__p : __p;
      *buf = 136446210;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting double tap for %{public}s for first time", buf, 0xCu);
      if (v21 < 0)
      {
        operator delete(__p);
      }
    }

    v10 = 255;
  }

  else
  {
    v10 = a3;
    v11 = a3;
    if (a3 < 5u)
    {
      goto LABEL_17;
    }
  }

  v12 = qword_100BCE8C0;
  v11 = v6;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "Siri";
    if (a4)
    {
      v13 = "Next Track";
    }

    LODWORD(__p) = 67109378;
    HIDWORD(__p) = v10;
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Right double tap was %d, now %{public}s", &__p, 0x12u);
    v11 = v6;
  }

LABEL_17:
  v14 = BYTE1(a3);
  if (BYTE1(a3) < 5u)
  {
    v6 = a3 >> 8;
  }

  else
  {
    v15 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "Siri";
      if (a4)
      {
        v16 = "Next Track";
      }

      LODWORD(__p) = 67109378;
      HIDWORD(__p) = v14;
      v19 = 2082;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Left double tap was %d, now %{public}s", &__p, 0x12u);
    }
  }

  return v11 | (v6 << 8);
}

uint64_t sub_10033C0B8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = sub_1000E356C(a2);
  v4 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = "Disabled";
    v11 = "In Ear detection";
    *buf = 136446722;
    if (v3)
    {
      v6 = "Enabled";
    }

    v12 = 2082;
    v13 = v5;
    v14 = 2082;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}s for %{public}s is %{public}s", buf, 0x20u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

uint64_t sub_10033C1E4(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v22[0] = 0;
  v22[1] = 0;
  v8 = sub_100007F88(v22, a1 + 360);
  if (a2)
  {
    v9 = *(a1 + 336);
    v10 = *(a1 + 344);
    while (v9 != v10)
    {
      v11 = *v9;
      if (**v9 == a2)
      {
        v13 = sub_10033C45C(v8, *(v11 + 8));
        *a3 = v13;
        *a4 = sub_10033C45C(v13, *(v11 + 9));
        v14 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
        {
          v15 = __p;
          sub_1000E5A58(a2, __p);
          if (v24 < 0)
          {
            v15 = __p[0];
          }

          if (*a3 > 0xCu)
          {
            v16 = "unknown";
          }

          else
          {
            v16 = off_100AED280[*a3 & 0xFLL];
          }

          if (*a4 > 0xCu)
          {
            v19 = "unknown";
          }

          else
          {
            v19 = off_100AED280[*a4 & 0xFLL];
          }

          v20 = sub_1000E356C(a2);
          v21 = "no";
          *buf = 136446978;
          v26 = v15;
          v27 = 2082;
          if (v20)
          {
            v21 = "yes";
          }

          v28 = v16;
          v29 = 2082;
          v30 = v19;
          v31 = 2080;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "getInEarStatus: %{public}s primary %{public}s, secondary %{public}s, IED enabled: %s", buf, 0x2Au);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v17 = 0;
        goto LABEL_16;
      }

      ++v9;
    }
  }

  *a3 = 3;
  *a4 = 3;
  v12 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    if (a2)
    {
      sub_1000E5A58(a2, buf);
      sub_10081ADF8();
    }

    else
    {
      sub_10081AE4C(__p, v12);
    }
  }

  v17 = 312;
LABEL_16:
  sub_1000088CC(v22);
  return v17;
}

void sub_10033C424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10033C45C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xC)
  {
    return 3;
  }

  else
  {
    return dword_1008A5F6C[a2];
  }
}

uint64_t sub_10033C47C(uint64_t a1, uint64_t a2, int *a3)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
    {
      if (**i == a2)
      {
        v9 = *(*i + 10);
        if (v9 == 2)
        {
          v10 = 2;
        }

        else
        {
          v10 = 3;
        }

        if (v9 == 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        *a3 = v11;
        v12 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
        {
          sub_1000C23E0(a2, __p);
          if (v18 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          v14 = *a3;
          v15 = "unknown";
          if (v14 == 2)
          {
            v15 = "right";
          }

          if (v14 == 1)
          {
            v16 = "left";
          }

          else
          {
            v16 = v15;
          }

          *buf = 136315394;
          v21 = v13;
          v22 = 2082;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "getPrimaryBudSide: primary bud side of %s is %{public}s", buf, 0x16u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v7 = 0;
        goto LABEL_11;
      }
    }

    *a3 = 3;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      sub_10081AE98();
    }
  }

  else
  {
    *a3 = 3;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081AEEC();
    }
  }

  v7 = 312;
LABEL_11:
  sub_1000088CC(v19);
  return v7;
}

void sub_10033C674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

const char *sub_10033C694(uint64_t a1, int a2)
{
  v2 = "unknown";
  if (a2 == 2)
  {
    v2 = "right";
  }

  if (a2 == 1)
  {
    return "left";
  }

  else
  {
    return v2;
  }
}

void sub_10033C6C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10081AF28();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  *(a1 + 424) = BYTE5(v4);
  *(a1 + 425) = BYTE4(v4);
  *(a1 + 426) = BYTE3(v4);
  *(a1 + 427) = BYTE2(v4);
  *(a1 + 428) = BYTE1(v4);
  *(a1 + 429) = v4;
  v23 = 0;
  sub_1000216B4(&v23);
  v5 = sub_100197C20((*(a1 + 424) << 40) | (*(a1 + 425) << 32) | (*(a1 + 426) << 24) | (*(a1 + 427) << 16) | (*(a1 + 428) << 8) | *(a1 + 429), (a1 + 432));
  sub_100022214(&v23);
  v6 = qword_100BCE8C0;
  if (v5 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    *__p = 67109120;
    *&__p[4] = v5;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "CL get version failed with status %d", __p, 8u);
    v6 = qword_100BCE8C0;
  }

  v7 = a1 + 424;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8((a1 + 424), __p);
    v8 = v32 >= 0 ? __p : *__p;
    v9 = *(a1 + 432);
    *buf = 136315394;
    *&buf[4] = v8;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Magnet link connected with device %s with version %d", buf, 0x12u);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*__p);
    }
  }

  v22 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_10081AF3C();
  }

  v10 = off_100B508A8;
  sub_10004DFB4(__p, v3);
  v11 = sub_1000C4FCC(v10, __p, &v22);
  if (v22)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  sub_1000618AC(&v23);
  v13 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8((a1 + 424), buf);
    v14 = v27 >= 0 ? buf : *buf;
    v15 = *(a1 + 432);
    v16 = sub_100199590(v22);
    v17 = sub_1001994B8(v22);
    *__p = 136315906;
    *&__p[4] = v14;
    v29 = 1024;
    v30 = v15;
    v31 = 1024;
    v32 = v16;
    v33 = 1024;
    v34 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "device %s with version %d  (peerIsPhone=%d peerIsWatch=%d)", __p, 0x1Eu);
    if (v27 < 0)
    {
      operator delete(*buf);
    }
  }

  v18 = sub_100199668(v22);
  sub_100022214(&v23);
  if ((v18 & 1) == 0)
  {
    v21 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Magnet link up between two devices that do not support EasyPairing", __p, 2u);
    }

    *(v7 + 4) = 0;
    *v7 = 0;
  }

  else
  {
LABEL_25:
    *(a1 + 430) = 1;
    sub_10033CAD0(a1);
    v19 = *(a1 + 516);
    if (v19 == -1)
    {
      v20 = (a1 + 516);
      notify_register_check("com.apple.bluetooth.magnet", v20);
      v19 = *v20;
    }

    notify_set_state(v19, 1uLL);
    notify_post("com.apple.bluetooth.magnet");
  }

  sub_10002249C(&v23);
}

void sub_10033CA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_10002249C(&a13);

  _Unwind_Resume(a1);
}

uint64_t sub_10033CAD0(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 360);
  v3 = *(a1 + 336);
  v2 = *(a1 + 344);
  while (v3 != v2)
  {
    if (*v3)
    {
      sub_100337EC0(a1, *v3);
      v2 = *(a1 + 344);
    }

    ++v3;
  }

  return sub_1000088CC(v5);
}

void sub_10033CB4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10081AF28();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  LOBYTE(v14) = BYTE5(v4);
  BYTE1(v14) = BYTE4(v4);
  BYTE2(v14) = BYTE3(v4);
  HIBYTE(v14) = BYTE2(v4);
  LOBYTE(v15) = BYTE1(v4);
  HIBYTE(v15) = v4;
  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C();
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "magnet link disconnected with device %@", buf, 0xCu);
  }

  if (v14 == *(a1 + 424) && v15 == *(a1 + 428))
  {
    *(a1 + 432) = 0;
    *(a1 + 424) = 0;
    *(a1 + 427) = 0;
    *buf = 0uLL;
    sub_100007F88(buf, a1 + 360);
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v10 = *i;
      v11 = **i;
      sub_10033CE08(*i);
      if (v11 && !sub_100338390(v10))
      {
        v17[0] = 0;
        sub_1000216B4(v17);
        sub_100188FA4((v11 + 128), &v14, 2);
        sub_100022214(v17);
        *(v10 + 728) = 0;
        sub_10002249C(v17);
      }
    }

    sub_1000088CC(buf);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_100063D0C();
    sub_1000BE6F8((a1 + 424), buf);
    sub_10081AF64(v8, buf, v17);
  }

  v12 = *(a1 + 516);
  if (v12 == -1)
  {
    v13 = (a1 + 516);
    notify_register_check("com.apple.bluetooth.magnet", v13);
    v12 = *v13;
  }

  notify_set_state(v12, 0);
  notify_post("com.apple.bluetooth.magnet");
}

uint64_t sub_10033CE08(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    sub_100322DD8(result);
    operator delete();
  }

  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_10033CE4C(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_100337E54(a1, a2);
  if (result)
  {
    v11[0] = 0;
    v11[1] = 0;
    sub_100007F88(v11, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
      {
        if (**i == a2)
        {
          v8 = *(*i + 48);
          if (v8)
          {
            v9 = *(a2 + 128);
            v10 = *(a2 + 132);
            sub_1003231E0(v8, a1 + 424, &v9, a3);
          }

          return sub_1000088CC(v11);
        }
      }
    }

    return sub_1000088CC(v11);
  }

  return result;
}

void sub_10033CEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033CF08(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_100337E54(a1, a2);
  if (result)
  {
    v11[0] = 0;
    v11[1] = 0;
    sub_100007F88(v11, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); i += 8)
      {
        if (**i == a2)
        {
          v8 = *(*i + 48);
          if (v8)
          {
            v9 = *(a2 + 128);
            v10 = *(a2 + 132);
            sub_1003236C4(v8, a1 + 424, &v9, a3);
          }

          return sub_1000088CC(v11);
        }
      }
    }

    return sub_1000088CC(v11);
  }

  return result;
}

void sub_10033CFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033CFC4(uint64_t a1, uint64_t a2)
{
  v59[0] = 0;
  v59[1] = 0;
  sub_100007F88(v59, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v5 = *i;
      if (**i == a2)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v53 >= 0 ? __p : __p[0];
    v8 = *(a1 + 431);
    v9 = v8 > 3 ? "Unknown" : off_100AED2E8[v8];
    *buf = 136446466;
    *&buf[4] = v7;
    v63 = 2080;
    v64 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Easy unpair request for device %{public}s; Unpair Initiator: %s", buf, 0x16u);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = __p;
  v53 = 0x3812000000;
  v54 = sub_1000422A4;
  v11 = (a2 + 128);
  v10 = *(a2 + 128);
  v55 = nullsub_23;
  v56 = "";
  v57[0] = 0;
  v58 = 0;
  *&v57[1] = v10;
  v58 = *(a2 + 132);
  v12 = sub_100007EE8();
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10033D96C;
  v51[3] = &unk_100AE1120;
  v51[4] = __p;
  sub_10000CA94(v12, v51);
  v13 = *(a1 + 431);
  if ((v13 | 2) == 3)
  {
    v14 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    sub_1000E5A58(a2, buf);
    v15 = "user-switch";
    if (v13 == 1)
    {
      v15 = "cloud";
    }

    v16 = v65 >= 0 ? buf : *buf;
    *v60 = 136315394;
    *&v60[4] = v15;
    *&v60[12] = 2082;
    *&v60[14] = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skip easy unpair request from %s: %{public}s", v60, 0x16u);
    if ((SHIBYTE(v65) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    v17 = *buf;
    goto LABEL_25;
  }

  if (!v5)
  {
    if (sub_1000DFB74(a2, 0x80000u) != 4 || !sub_100337E54(a1, a2) || *(a1 + 431))
    {
      goto LABEL_57;
    }

    v31 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8((a1 + 424), v60);
      v32 = v61;
      v33 = *v60;
      sub_1000E5A58(a2, v49);
      v34 = v60;
      if (v32 < 0)
      {
        v34 = v33;
      }

      if (v50 >= 0)
      {
        v35 = v49;
      }

      else
      {
        v35 = v49[0];
      }

      v36 = *(a1 + 432);
      *buf = 141558787;
      *&buf[4] = 1752392040;
      v63 = 2081;
      v64 = v34;
      v65 = 2082;
      v66 = v35;
      v67 = 1024;
      v68 = v36;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Sending Easy Unpair request to device %{private, mask.hash}s for device %{public}s with version %d", buf, 0x26u);
      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if (v61 < 0)
      {
        operator delete(*v60);
      }
    }

    LODWORD(v49[0]) = *v11;
    WORD2(v49[0]) = *(a2 + 132);
    *v60 = 0;
    *&v60[8] = 0;
    if (*(a1 + 432) < 5u)
    {
      v40 = sub_100432610();
      sub_1000BE6F8(v49, v47);
      sub_1000C23E0(a2, buf);
      if (v65 >= 0)
      {
        v41 = buf;
      }

      else
      {
        v41 = *buf;
      }

      (*(*v40 + 120))(v40, v47, v41, v60, 16);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*buf);
      }

      if ((v47[23] & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      v39 = v47;
    }

    else
    {
      v37 = sub_100432610();
      sub_1000BE6F8(v49, v48);
      sub_1000C23E0(a2, buf);
      if (v65 >= 0)
      {
        v38 = buf;
      }

      else
      {
        v38 = *buf;
      }

      (*(*v37 + 128))(v37, v48, v38, v60, 16, 0, 0);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*buf);
      }

      if ((v48[23] & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      v39 = v48;
    }

    v17 = *v39;
LABEL_25:
    operator delete(v17);
LABEL_57:
    v27 = 0;
    *(a1 + 431) = 0;
    goto LABEL_58;
  }

  if (*(a1 + 328))
  {
    v46 = 0;
    sub_1000216B4(&v46);
    v45 = 0;
    v44 = 0;
    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    sub_10009BE34(off_100B50A98, &v44);
    sub_100022214(&v46);
    sub_100330A00(a1, a2, &v44, 0, 0);
    if (sub_100337E54(a1, a2))
    {
      sub_100330A00(a1, a2, a1 + 424, 0, 0);
    }

    *(v5 + 12) = 1;
    sub_100330B54(a1, a2, &v44);
    if (!sub_100337E54(a1, a2) || *(a1 + 431) && (*(a1 + 431) != 1 || *(a1 + 432) > 9u))
    {
      goto LABEL_70;
    }

    v18 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8((a1 + 424), v60);
      v19 = v61;
      v20 = *v60;
      sub_1000E5A58(a2, v49);
      v21 = v60;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v50 >= 0)
      {
        v22 = v49;
      }

      else
      {
        v22 = v49[0];
      }

      v23 = *(a1 + 432);
      *buf = 141558787;
      *&buf[4] = 1752392040;
      v63 = 2081;
      v64 = v21;
      v65 = 2082;
      v66 = v22;
      v67 = 1024;
      v68 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending Easy Unpair request to device %{private, mask.hash}s for device %{public}s with version %d", buf, 0x26u);
      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if (v61 < 0)
      {
        operator delete(*v60);
      }
    }

    LODWORD(v49[0]) = *v11;
    WORD2(v49[0]) = *(a2 + 132);
    *v60 = 0;
    *&v60[8] = 0;
    if (*(a1 + 432) < 5u)
    {
      v29 = sub_100432610();
      sub_1000BE6F8(v49, v42);
      sub_1000C23E0(a2, buf);
      if (v65 >= 0)
      {
        v30 = buf;
      }

      else
      {
        v30 = *buf;
      }

      (*(*v29 + 120))(v29, v42, v30, v60, 16);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*buf);
      }

      if ((v42[23] & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      v26 = v42;
    }

    else
    {
      v24 = sub_100432610();
      sub_1000BE6F8(v49, v43);
      sub_1000C23E0(a2, buf);
      if (v65 >= 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      (*(*v24 + 128))(v24, v43, v25, v60, 16, 0, 0);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*buf);
      }

      if ((v43[23] & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      v26 = v43;
    }

    operator delete(*v26);
LABEL_70:
    *(a1 + 431) = 0;
    sub_10002249C(&v46);
    v27 = 1;
    goto LABEL_58;
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081AFF0();
  }

  v27 = 0;
LABEL_58:
  _Block_object_dispose(__p, 8);
  sub_1000088CC(v59);
  return v27;
}

void sub_10033D810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a45, 8);
  sub_1000088CC(v45 - 176);
  _Unwind_Resume(a1);
}

const char *sub_10033D948(uint64_t a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_100AED2E8[a2];
  }
}

uint64_t sub_10033D96C(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_10081B02C();
  }

  sub_1007B0D18(off_100B51070, *(*(a1 + 32) + 8) + 48);
  if (qword_100B508C0 != -1)
  {
    sub_10081B040();
  }

  v2 = off_100B508B8;
  v3 = (*(*(a1 + 32) + 8) + 48);

  return sub_1007C77C0(v2, v3);
}

uint64_t sub_10033D9F8(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        sub_100337EC0(a1, *i);
        return sub_1000088CC(v6);
      }
    }
  }

  return sub_1000088CC(v6);
}

uint64_t sub_10033DA80(uint64_t a1, __n128 *a2, uint64_t a3, unsigned int a4)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v9 = sub_100331844(a1, a2, 1, a3, a4);
        goto LABEL_7;
      }
    }
  }

  v9 = 312;
LABEL_7:
  v10 = sub_1005461A4(a2, a3);
  sub_10033BBAC(v10, a2);
  sub_1000088CC(v12);
  return v9;
}

uint64_t sub_10033DB4C(uint64_t a1, __n128 *a2, uint64_t a3)
{
  sub_10053D6E4(a2, a3);
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        if (a3)
        {
          sub_100331844(a1, a2, 7, 0, 2u);
          v13 = 4;
          v14 = a3;
        }

        else
        {
          v14 = 0xFFFFFFFFLL;
          v13 = 7;
        }

        v7 = sub_100331844(a1, a2, v13, v14, 2u);
        goto LABEL_7;
      }
    }
  }

  v7 = 1;
LABEL_7:
  v8 = sub_10000C798();
  if ((*(*v8 + 352))(v8) & 1) != 0 || (v9 = sub_10000C798(), ((*(*v9 + 416))(v9)) || (v10 = sub_10000C798(), (*(*v10 + 456))(v10)))
  {
    sub_10033142C(a1, a2);
    if (qword_100B50AB0 != -1)
    {
      sub_10081A1B0();
    }

    sub_100560FB0(off_100B50AA8, a2, 4097);
    v15[0] = 0;
    v15[1] = 0;
    v16 = 0;
    sub_100579608(v15, 4, a2);
    LODWORD(v16) = a3;
    HIDWORD(v16) = a3;
    v11 = sub_10000F034();
    (*(*v11 + 56))(v11, v15);
  }

  sub_1000088CC(v17);
  return v7;
}