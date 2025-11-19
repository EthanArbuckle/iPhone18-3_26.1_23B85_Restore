void sub_10048491C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100484938(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v9 = 0;
  v14 = 0u;
  v15 = 0u;
  v5 = sub_1003CD83C(4, &v14, 32, &v9);
  v6 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v11 = v5;
    v12 = 1024;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "readCloudMasterKeys res = %d, %d", buf, 0xEu);
  }

  if (!v5 && v9 >= 0x20)
  {
    result = *&v14;
    v8 = v15;
    *a2 = v14;
    *a3 = v8;
  }

  return result;
}

uint64_t sub_100484A40(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v10 = 0;
  v15 = 0uLL;
  v9 = 0;
  v8 = 0;
  v5 = 1;
  if (!sub_1003CD83C(8, &v15, 16, &v10) && v10 >= 0x10)
  {
    v5 = sub_1003CD83C(9, &v8, 6, &v10);
    v6 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v12 = v5;
      v13 = 1024;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "readCloudMasterKeys res = %d, %d", buf, 0xEu);
    }

    *a2 = v15;
    *(a3 + 4) = v9;
    *a3 = v8;
  }

  return v5;
}

BOOL sub_100484B6C(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v7 = 32;
  memset(v8, 0, sizeof(v8));
  v4 = *a3;
  v9[0] = *a2;
  v9[1] = v4;
  if (!sub_1003CD83C(4, v8, 32, &v7))
  {
    (*(*a1 + 168))(a1);
  }

  v5 = sub_1003CDA10(4u, v9, v7);
  if (v5 && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
  {
    sub_10082E704();
  }

  return v5 != 0;
}

BOOL sub_100484C68(uint64_t a1, UInt8 *a2, const UInt8 *a3)
{
  v8 = 16;
  if (!sub_1003CD83C(8, a2, 16, &v8))
  {
    (*(*a1 + 176))(a1);
  }

  if (sub_1003CDA10(8u, a2, 0x10u) && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
  {
    sub_10082E76C();
  }

  v6 = sub_1003CDA10(9u, a3, 6u);
  if (v6 && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
  {
    sub_10082E7D4();
  }

  return v6 != 0;
}

uint64_t sub_100484D6C()
{
  v0 = sub_1003CDC24(4);
  v1 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "deleteCloudMasterKeys result %d", v3, 8u);
  }

  return v0;
}

uint64_t sub_100484E1C()
{
  v0 = sub_1003CDC24(9);
  v1 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 67109120;
    v6 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "deleteCloudFCIRKAddress address result %d", &v5, 8u);
  }

  v2 = sub_1003CDC24(8);
  v3 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 67109120;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deleteCloudFCIRKAddress IRK result %d", &v5, 8u);
  }

  return v2;
}

uint64_t sub_100484F24(uint64_t a1)
{
  *a1 = &off_100AF7908;
  sub_100046348(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_100484F70(uint64_t a1)
{
  *a1 = &off_100AF7908;
  sub_100046348(a1 + 16, *(a1 + 24));

  operator delete();
}

void sub_100484FDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100484FDC(a1, *a2);
    sub_100484FDC(a1, a2[1]);
    sub_10048503C(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_10048503C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = off_100AF7948;
  v3 = *(a2 + 32);
  if (v3)
  {
    sub_10000C808(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t *sub_100485118(uint64_t a1, int *a2)
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_100485208(void *a1)
{
  *a1 = off_100AF7948;
  v1 = a1[1];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

uint64_t sub_100485274(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_100044BC4(a1, &v3, a2);
  if (!result)
  {
    sub_100485318();
  }

  return result;
}

void sub_1004853A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100485430(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1004853C0(void *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100008904(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    __dst[2] = *(v3 + 2);
    *__dst = v4;
  }

  __dst[3] = off_100AF7948;
  __dst[4] = 0;
  return __dst;
}

void sub_100485430(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_10048503C(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_10048548C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1004854FC(a1, v4);
  return 1;
}

uint64_t *sub_1004854FC(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  a2[5] = &off_100AE0A78;
  v4 = a2[6];
  if (v4)
  {
    sub_10000C808(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_10048555C(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_10048503C(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_1004855A8(uint64_t a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = (v4 + 32);
    if (*(v4 + 55) < 0)
    {
      v5 = *v5;
    }

    v6 = 138412546;
    v7 = v3;
    v8 = 2082;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Watchdog dispatch performed: %@ (%{public}s)", &v6, 0x16u);
  }
}

void sub_10048566C(uint64_t a1)
{
  WriteStackshotReport_stdc();
  sub_1000D660C();
  v2 = (a1 + 32);
  v3 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v3 = *v2;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  v7 = 0u;
  snprintf(__str, 0x80uLL, "XPC watchdog timeout on thread: %s", v3);
  qword_100B55118 = __str;
  _os_log_pack_size();
  __chkstk_darwin();
  __error();
  v4 = _os_log_pack_fill();
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  *v4 = 136446210;
  *(v4 + 4) = v2;
  os_log_create("com.apple.bluetooth", "CBCrash");
  qword_100B55118 = os_log_pack_send_and_compose();
  v5 = abort_with_payload();
  sub_1004857D0(v5);
}

xpc_object_t sub_100485818(uint64_t **a1)
{
  v14 = xpc_array_create(0, 0);
  for (i = *a1; i != a1[1]; ++i)
  {
    v2 = *i;
    xdict = sub_100485AF8(*i);
    xpc_dictionary_set_int64(xdict, "kCBMsgArgAttributeID", *(v2 + 16));
    v3 = xpc_array_create(0, 0);
    v4 = xpc_array_create(0, 0);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    sub_100007F20(&v22, (v2 + 104));
    for (j = v22; j != v23; ++j)
    {
      v6 = sub_100485C08(*j);
      xpc_dictionary_set_int64(v6, "kCBMsgArgAttributeID", *(*j + 104));
      xpc_array_append_value(v3, v6);
      xpc_release(v6);
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_100007F20(&v19, (v2 + 136));
    for (k = v19; k != v20; ++k)
    {
      v8 = xpc_array_create(0, 0);
      v9 = sub_100485D00(*k);
      xpc_dictionary_set_int64(v9, "kCBMsgArgAttributeID", *(*k + 16));
      __p = 0;
      v17 = 0;
      v18 = 0;
      sub_100007F20(&__p, (*k + 104));
      for (m = __p; m != v17; ++m)
      {
        v11 = sub_100485E5C(*m);
        xpc_dictionary_set_int64(v11, "kCBMsgArgAttributeID", *(*m + 16));
        xpc_array_append_value(v8, v11);
        xpc_release(v11);
      }

      xpc_dictionary_set_value(v9, "kCBMsgArgDescriptors", v8);
      xpc_array_append_value(v4, v9);
      xpc_release(v9);
      xpc_release(v8);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgCharacteristics", v4);
    xpc_dictionary_set_value(xdict, "kCBMsgArgIncludedServices", v3);
    xpc_array_append_value(v14, xdict);
    xpc_release(v3);
    xpc_release(v4);
    xpc_release(xdict);
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  return v14;
}

void sub_100485A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sub_100485AF8(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  bytes[0] = 0;
  bytes[1] = 0;
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  sub_10000D03C(&v5, &v7);
  v3 = sub_10007A930(&v5, bytes);
  xpc_dictionary_set_int64(v2, "kCBMsgArgAttributeID", *(a1 + 16));
  xpc_dictionary_set_data(v2, "kCBMsgArgUUID", bytes, v3);
  xpc_dictionary_set_BOOL(v2, "kCBMsgArgType", *(a1 + 96));
  xpc_dictionary_set_int64(v2, "kCBMsgArgServiceStartHandle", **(a1 + 8));
  xpc_dictionary_set_int64(v2, "kCBMsgArgServiceEndHandle", *(a1 + 48));
  return v2;
}

xpc_object_t sub_100485C08(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  bytes[0] = 0;
  bytes[1] = 0;
  v7 = *(a1 + 76);
  v8 = *(a1 + 92);
  sub_10000D03C(&v5, &v7);
  v3 = sub_10007A930(&v5, bytes);
  xpc_dictionary_set_int64(v2, "kCBMsgArgAttributeID", *(a1 + 104));
  xpc_dictionary_set_data(v2, "kCBMsgArgUUID", bytes, v3);
  xpc_dictionary_set_int64(v2, "kCBMsgArgServiceStartHandle", *(a1 + 72));
  xpc_dictionary_set_int64(v2, "kCBMsgArgServiceEndHandle", *(a1 + 74));
  return v2;
}

xpc_object_t sub_100485D00(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  bytes[0] = 0;
  bytes[1] = 0;
  v10 = *(a1 + 76);
  v11 = *(a1 + 92);
  sub_10000D03C(&v8, &v10);
  v3 = sub_10007A930(&v8, bytes);
  xpc_dictionary_set_int64(v2, "kCBMsgArgAttributeID", *(a1 + 16));
  xpc_dictionary_set_data(v2, "kCBMsgArgUUID", bytes, v3);
  xpc_dictionary_set_int64(v2, "kCBMsgArgCharacteristicHandle", **(a1 + 8));
  xpc_dictionary_set_int64(v2, "kCBMsgArgCharacteristicValueHandle", *(a1 + 74));
  xpc_dictionary_set_int64(v2, "kCBMsgArgCharacteristicProperties", *(a1 + 72));
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = sub_10000C5F8(v4 + 72);
    v6 = sub_10000C5E0(v4 + 72);
    xpc_dictionary_set_data(v2, "kCBMsgArgData", v5, v6);
    xpc_dictionary_set_int64(v2, "kCBMsgArgAttributePermissions", *(*(v4 + 8) + 26));
  }

  return v2;
}

xpc_object_t sub_100485E5C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  bytes[0] = 0;
  bytes[1] = 0;
  v12 = 0uLL;
  v13 = 0;
  v3 = *(a1 + 8);
  v4 = *(v3 + 20);
  *__p = *(v3 + 4);
  v10 = v4;
  sub_10000D03C(&v12, __p);
  v5 = sub_10007A930(&v12, bytes);
  xpc_dictionary_set_int64(v2, "kCBMsgArgAttributeID", *(a1 + 16));
  xpc_dictionary_set_data(v2, "kCBMsgArgUUID", bytes, v5);
  xpc_dictionary_set_int64(v2, "kCBMsgArgDescriptorHandle", **(a1 + 8));
  if (*(a1 + 20) == 1)
  {
    sub_10006C96C(__p, 10496);
    if (sub_10004E15C(&v12, __p))
    {
      xpc_dictionary_set_int64(v2, "kCBMsgArgData", *(a1 + 72));
    }

    else
    {
      sub_10006C96C(__p, 10497);
      if (sub_10004E15C(&v12, __p))
      {
        sub_1004860D0(a1, __p);
        if (v11 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        xpc_dictionary_set_string(v2, "kCBMsgArgData", v6);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        sub_10006C96C(__p, 10498);
        if (sub_10004E15C(&v12, __p) || (sub_10006C96C(v8, 10499), sub_10004E15C(&v12, v8)))
        {
          xpc_dictionary_set_int64(v2, "kCBMsgArgData", *(a1 + 72));
        }

        else
        {
          sub_10006C96C(__p, 10500);
          if (sub_10004E15C(&v12, __p))
          {
            LODWORD(__p[0]) = *(a1 + 72);
            BYTE4(__p[0]) = *(a1 + 76);
            *(__p + 5) = *(a1 + 78);
            xpc_dictionary_set_data(v2, "kCBMsgArgData", __p, 7uLL);
          }

          else
          {
            xpc_dictionary_set_data(v2, "kCBMsgArgData", *(a1 + 72), *(a1 + 80));
          }
        }
      }
    }
  }

  return v2;
}

void sub_1004860AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004860D0@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = a2;
  v3 = *(result + 40);
  if (*(result + 40))
  {
    v4 = result[9];
    if (v3 >= 0x17)
    {
      operator new();
    }

    a2[23] = v3;
    result = memmove(a2, v4, v3);
    v2 += v3;
  }

  else
  {
    a2[23] = 0;
  }

  *v2 = 0;
  return result;
}

uint64_t sub_10048616C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  *a1 = off_100AF79D0;
  *(a1 + 8) = a2;
  *(a1 + 16) = v5;
  return a1;
}

xpc_object_t sub_1004861F0(id *a1, int a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  (*(*a1 + 2))(a1, v6, a3);
  *uuid = 0;
  v9 = 0;
  [a1[2] getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v6, "kCBMsgArgDeviceUUID", uuid);
  xpc_dictionary_set_int64(v6, "kCBMsgArgResult", a2);
  return v6;
}

void sub_1004862D4(uint64_t a1, void *a2, uint64_t **a3)
{
  if (a3[1] != *a3)
  {
    v5 = xpc_array_create(0, 0);
    for (i = *a3; i != a3[1]; ++i)
    {
      v7 = *i;
      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      if (v9 != v8)
      {
        v17 = *(v7 + 72);
        v18 = *(v7 + 88);
        sub_10000D03C(&v16, &v17);
        while (!sub_10004E15C(v8, &v16))
        {
          v8 += 20;
          if (v8 == v9)
          {
            v8 = v9;
            break;
          }
        }

        if (v8 == *(a1 + 32))
        {
          continue;
        }
      }

      if (qword_100B50900 != -1)
      {
        sub_10082E864();
      }

      v10 = qword_100B508F8;
      v17 = *(v7 + 72);
      v18 = *(v7 + 88);
      sub_10000D03C(&v16, &v17);
      v11 = *(a1 + 48);
      v12 = *(a1 + 52);
      v13 = *(a1 + 16);
      LOBYTE(v10) = sub_100066E24(v10, &v16, v11, v12, v13);

      if (v10)
      {
        v14 = sub_100485AF8(v7);
        xpc_array_set_value(v5, 0xFFFFFFFFFFFFFFFFLL, v14);
        xpc_release(v14);
      }
    }

    xpc_dictionary_set_value(a2, "kCBMsgArgServices", v5);
    xpc_release(v5);
  }
}

void sub_1004864B0(uint64_t a1, xpc_object_t xdict, uint64_t **a3)
{
  v3 = xdict;
  if (a3[1] != *a3)
  {
    v6 = xpc_array_create(0, 0);
    for (i = *a3; i != a3[1]; ++i)
    {
      v8 = *i;
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      if (v10 != v9)
      {
        v18 = *(v8 + 76);
        v19 = *(v8 + 92);
        sub_10000D03C(&v17, &v18);
        while (!sub_10004E15C(v9, &v17))
        {
          v9 += 20;
          if (v9 == v10)
          {
            v9 = v10;
            break;
          }
        }

        if (v9 == *(a1 + 40))
        {
          continue;
        }
      }

      if (qword_100B50900 != -1)
      {
        sub_10082E864();
      }

      v11 = qword_100B508F8;
      v18 = *(v8 + 76);
      v19 = *(v8 + 92);
      sub_10000D03C(&v17, &v18);
      v12 = *(a1 + 56);
      v13 = *(a1 + 60);
      v14 = *(a1 + 16);
      LOBYTE(v11) = sub_100066E24(v11, &v17, v12, v13, v14);

      if (v11)
      {
        v15 = sub_100485C08(v8);
        xpc_array_set_value(v6, 0xFFFFFFFFFFFFFFFFLL, v15);
        xpc_release(v15);
      }
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgServices", v6);
    xpc_release(v6);
    v3 = xdict;
  }

  xpc_dictionary_set_int64(v3, "kCBMsgArgServiceStartHandle", *(a1 + 24));
}

void sub_1004866A8(int64_t *a1, xpc_object_t xdict, uint64_t **a3)
{
  if (a3[1] != *a3)
  {
    v6 = xpc_array_create(0, 0);
    for (i = *a3; i != a3[1]; ++i)
    {
      v8 = *i;
      v9 = a1[4];
      v10 = a1[5];
      if (v10 == v9)
      {
        goto LABEL_10;
      }

      v13 = *(v8 + 76);
      v14 = *(v8 + 92);
      sub_10000D03C(&v12, &v13);
      while (!sub_10004E15C(v9, &v12))
      {
        v9 += 20;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }

      if (v9 != a1[5])
      {
LABEL_10:
        v11 = sub_100485D00(v8);
        xpc_array_set_value(v6, 0xFFFFFFFFFFFFFFFFLL, v11);
        xpc_release(v11);
      }
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgCharacteristics", v6);
    xpc_release(v6);
  }

  xpc_dictionary_set_int64(xdict, "kCBMsgArgServiceStartHandle", a1[3]);
}

void sub_100486814(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  v5 = *a3;
  if (*(a3 + 8) != *a3)
  {
    v6 = *v5;
    v7 = sub_10000C5F8(*v5 + 72);
    v8 = sub_10000C5E0(v6 + 72);
    xpc_dictionary_set_data(xdict, "kCBMsgArgData", v7, v8);
  }

  v9 = *(a1 + 24);

  xpc_dictionary_set_int64(xdict, "kCBMsgArgCharacteristicHandle", v9);
}

void sub_10048689C(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_set_int64(xdict, "kCBMsgArgState", *(a1 + 32));
  v4 = *(a1 + 24);

  xpc_dictionary_set_int64(xdict, "kCBMsgArgCharacteristicHandle", v4);
}

void sub_1004868F4(uint64_t a1, xpc_object_t xdict, uint64_t **a3)
{
  if (a3[1] != *a3)
  {
    v6 = xpc_array_create(0, 0);
    v7 = *a3;
    while (v7 != a3[1])
    {
      v8 = *v7++;
      v9 = sub_100485E5C(v8);
      xpc_array_set_value(v6, 0xFFFFFFFFFFFFFFFFLL, v9);
      xpc_release(v9);
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgDescriptors", v6);
    xpc_release(v6);
  }

  v10 = *(a1 + 24);

  xpc_dictionary_set_int64(xdict, "kCBMsgArgCharacteristicHandle", v10);
}

void sub_1004869D4(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  if (*(a3 + 8) != *a3)
  {
    v5 = sub_100485E5C(**a3);
    value = xpc_dictionary_get_value(v5, "kCBMsgArgData");
    xpc_dictionary_set_value(xdict, "kCBMsgArgData", value);
    xpc_release(v5);
  }

  v7 = *(a1 + 24);

  xpc_dictionary_set_int64(xdict, "kCBMsgArgDescriptorHandle", v7);
}

uint64_t sub_100486A60(uint64_t a1)
{
  *a1 = off_100AF79F8;
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100486AB8(uint64_t a1)
{
  *a1 = off_100AF79F8;
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_100486B30(uint64_t a1)
{
  *a1 = off_100AF7A20;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100486B88(uint64_t a1)
{
  *a1 = off_100AF7A20;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_100486C00(uint64_t a1)
{
  *a1 = off_100AF7A48;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100486C58(uint64_t a1)
{
  *a1 = off_100AF7A48;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_100486CFC(uint64_t a1)
{

  operator delete();
}

void sub_100486D74(uint64_t a1)
{

  operator delete();
}

void sub_100486DEC(uint64_t a1)
{

  operator delete();
}

void sub_100486E64(uint64_t a1)
{

  operator delete();
}

void sub_100486F1C(id a1)
{
  v3 = "kCBMsgIdSessionAttach";
  v4 = 21;
  v5 = &v3;
  v1 = sub_1000A20CC(&xmmword_100BCE530, &v3);
  v1[4] = sub_1000A2348;
  v1[5] = 0;
  v3 = "kCBMsgIdSessionDetach";
  v4 = 21;
  v5 = &v3;
  v2 = sub_1000A20CC(&xmmword_100BCE530, &v3);
  v2[4] = sub_100486FD8;
  v2[5] = 0;
}

void sub_100486FD8(uint64_t a1, void *a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 72);
    v6 = (v5 + 56);
    if (*(v5 + 79) < 0)
    {
      v6 = *v6;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BTSessionMsgHandler::handleDetachMsg name:%s", buf, 0xCu);
  }

  *buf = 0;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v8, v9, v10, v11, v12, v13, "kCBMsgArgSessionID"))
  {
    if (*(*(a1 + 72) + 152))
    {
      sub_1004870F0(a1);
    }
  }
}

void sub_1004870F0(uint64_t a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 72);
    v4 = (v3 + 56);
    if (*(v3 + 79) < 0)
    {
      v4 = *v4;
    }

    *v6 = 136315138;
    *&v6[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BTSessionMsgHandler::cleanupBTSession name:%s", v6, 0xCu);
  }

  v5 = *(*(a1 + 72) + 152);
  *v6 = v5;
  if (v5)
  {
    if (qword_100B50B88 != -1)
    {
      sub_10082E918();
    }

    sub_100619438(qword_100B50B80, v5);
    if (qword_100B50B88 != -1)
    {
      sub_10082E918();
    }

    sub_100619184(qword_100B50B80, v5);
    sub_1006144A0(v6);
  }
}

void sub_100487210(uint64_t a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 72);
    v4 = (v3 + 56);
    if (*(v3 + 79) < 0)
    {
      v4 = *v4;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BTSessionMsgHandler::handleDisconnection name:%s", &v5, 0xCu);
  }

  sub_1004870F0(a1);
}

void *sub_1004872D0(void *a1)
{
  *a1 = &off_100AF7B80;
  sub_10007A068(a1 + 1);
  return a1;
}

void sub_100487314(void *a1)
{
  *a1 = &off_100AF7B80;
  sub_10007A068(a1 + 1);

  operator delete();
}

unint64_t sub_100487378(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

void sub_1004874D8()
{
  v0 = objc_autoreleasePoolPush();
  xmmword_100BCE530 = 0u;
  unk_100BCE540 = 0u;
  dword_100BCE550 = 1065353216;
  __cxa_atexit(sub_100486F18, &xmmword_100BCE530, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_100487544(int a1, int a2, uint64_t a3)
{
  v6 = qword_100BCEA68;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109634;
    v7[1] = a1;
    v8 = 1024;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleHIDReportWithType:%d reportID:%d data:%@", v7, 0x18u);
  }
}

void sub_100487610(uint64_t a1, void *a2)
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

void sub_100487770(uint64_t a1, uint64_t a2)
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
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10048CDD4((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

uint64_t sub_1004877FC(uint64_t a1, uint64_t a2, CFAbsoluteTime *a3)
{
  if (*(a1 + 48))
  {
    v17 = 0u;
    memset(&v16[1], 0, 32);
    v16[0] = 1;
    v14 = 0;
    v15 = 49;
    v5 = [*(a1 + 72) getReport:v16 reportLength:&v15 withIdentifier:1 forType:1 error:&v14];
    v6 = v14;
    if (v5)
    {
      *(a2 + 7) = *&v16[16];
      *a2 = *&v16[9];
      if (*(a2 + 12))
      {
        v7 = 0;
        *a3 = CFAbsoluteTimeGetCurrent() + *&v16[1] / -1000000.0;
LABEL_14:

        return v7;
      }

      v12 = qword_100BCEA68;
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "readAopCaches: bt-services not running";
        v10 = v12;
        v11 = 2;
        goto LABEL_12;
      }
    }

    else
    {
      v8 = qword_100BCEA68;
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v6;
        v9 = "readAopCaches: getReport::ServiceState failed %@";
        v10 = v8;
        v11 = 12;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    v7 = 1;
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082EBD8();
  }

  return 1;
}

void sub_1004879D8(uint64_t a1, unsigned int a2, uint64_t a3, __n128 a4)
{
  *(a3 + 8) = *a3;
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    a4.n128_u64[0] = 67109632;
    v26 = a4;
    while (1)
    {
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = v6 + 5;
      v27 = 0;
      v28 = 49;
      v8 = [*(a1 + 72) getReport:&v29 reportLength:&v28 withIdentifier:(v6 + 5) forType:1 error:{&v27, *&v26}];
      v9 = v27;
      if ((v8 & 1) == 0)
      {
        break;
      }

      if (!BYTE9(v30))
      {
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
        {
          sub_10082ED10();
        }

        goto LABEL_28;
      }

      v10 = BYTE8(v30);
      if (v6 != BYTE8(v30))
      {
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
        {
          sub_10082EC88();
        }

        goto LABEL_28;
      }

      v11 = v31;
      v12 = qword_100BCEA68;
      v13 = (HIWORD(v30) + 14);
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_INFO))
      {
        *buf = v26.n128_u32[0];
        v34 = v10;
        v35 = 1024;
        v36 = v11;
        v37 = 1024;
        v38 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "readAopCaches: handleIndex %d num %d size %d", buf, 0x14u);
      }

      v14 = v11 | (v13 << 16);
      v16 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v16 >= v15)
      {
        v18 = (v16 - *a3) >> 2;
        if ((v18 + 1) >> 62)
        {
          sub_1000C7698();
        }

        v19 = v15 - *a3;
        v20 = v19 >> 1;
        if (v19 >> 1 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          sub_10036F560(a3, v21);
        }

        v22 = (4 * v18);
        *v22 = v14;
        v17 = 4 * v18 + 4;
        v23 = *(a3 + 8) - *a3;
        v24 = v22 - v23;
        memcpy(v22 - v23, *a3, v23);
        v25 = *a3;
        *a3 = v24;
        *(a3 + 8) = v17;
        *(a3 + 16) = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v16 = v14;
        v17 = (v16 + 1);
      }

      *(a3 + 8) = v17;

      if (v7 == ++v6)
      {
        return;
      }
    }

    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082EC14();
    }

LABEL_28:
  }
}

void sub_100487CA4(uint64_t a1)
{
  if (*(a1 + 72))
  {
    operator new();
  }

  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082EDF8();
  }
}

void sub_100488120(uint64_t a1)
{
  v2 = sub_1000C9B4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10048819C;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_10048819C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100487CA4(v1);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3321888768;
  v2[2] = sub_1004882D4;
  v2[3] = &unk_100AF7C20;
  __dst = 0;
  v5 = 0;
  __p = 0;
  sub_100487610(v1, v2);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_1004882A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100488310(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void sub_100488328(uint64_t a1)
{
  v2 = sub_1000C9B4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004883A4;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

void sub_1004883A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  memset(v69, 0, 15);
  v68 = 0.0;
  v2 = sub_1004877FC(v1, v69, &v68);
  v4 = LOBYTE(v69[1]);
  v5 = BYTE1(v69[1]);
  if (v2)
  {
    v6 = 1;
  }

  else
  {
    v6 = LOBYTE(v69[1]) == 0;
  }

  if (v6 || BYTE1(v69[1]) == 0)
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082EEB4();
    }

    sub_100487610(v1, &stru_100AF7C70);
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    sub_1004879D8(v1, BYTE3(v69[1]), &v65, v3);
    if (v65 == v66)
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
      {
        sub_10082EE78();
      }

      sub_100487610(v1, &stru_100AF7C90);
    }

    else
    {
      v64 = 0;
      v8 = mach_continuous_time();
      v9 = sub_10000E92C();
      sub_100007E30(buf, "AOPInterfaceManager");
      sub_100007E30(&__p, "LastDramFetchInterval");
      v10 = (*(*v9 + 144))(v9, buf, &__p, &v64);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(__p);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      if (v64)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v4;
      if (v11 == 1)
      {
        v13 = UpTicksToSeconds() / v5;
        if (v13 + 1 < v4)
        {
          v12 = v13 + 1;
        }

        else
        {
          v12 = v4;
        }
      }

      v15 = v4 > 1 && v12 == v4;
      v16 = v12 - v15;
      v17 = WORD2(v69[0]);
      if ((v12 - v15) * WORD2(v69[0]))
      {
        operator new();
      }

      v52 = sub_1006B0F80(v1 + 40, 0, v16);
      v18 = qword_100BCEA68;
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *&buf[4] = v16;
        *&buf[8] = 1024;
        *&buf[10] = v52;
        *&buf[14] = 1024;
        *&buf[16] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "readAopCaches: asked %u, read %u caches, of size %u each", buf, 0x14u);
      }

      v19 = sub_10000E92C();
      sub_100007E30(buf, "AOPInterfaceManager");
      sub_100007E30(&__p, "LastDramFetchInterval");
      (*(*v19 + 152))(v19, buf, &__p, v8);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(__p);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v49 = v1;
      *buf = xmmword_1008A8160;
      *&buf[15] = *(&xmmword_1008A8160 + 15);
      v21 = v65;
      v20 = v66;
      __p = 0;
      v62 = 0;
      v63 = 0;
      if (v52)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v54 = (v66 - v65) >> 2;
        v50 = v65;
        v51 = v66;
        do
        {
          v53 = v24;
          if (v20 != v21)
          {
            v25 = 0;
            v26 = 0;
            v27 = v23 * WORD2(v69[0]);
            do
            {
              v28 = (v65 + 4 * v25);
              v29 = *v28;
              v30 = v28[1];
              if (*v28)
              {
                v31 = (v27 + 11);
                v55 = *v28;
                do
                {
                  if (!*(v31 - 11))
                  {
                    break;
                  }

                  buf[7] = v31[1];
                  v32 = v31[2] >= 0x16u ? 22 : v31[2];
                  buf[8] = v32;
                  memcpy((buf | 9), v31 + 3, v32);
                  buf[3] = v32 + 5;
                  LODWORD(v33) = *(v31 - 11);
                  v34 = v68 + v33;
                  v35 = (v31 - 7);
                  v36 = v32 + 9;
                  if (v22 >= v63)
                  {
                    v39 = 0x6DB6DB6DB6DB6DB7 * ((v22 - __p) >> 3);
                    v40 = v39 + 1;
                    if ((v39 + 1) > 0x492492492492492)
                    {
                      sub_1000C7698();
                    }

                    if (0xDB6DB6DB6DB6DB6ELL * ((v63 - __p) >> 3) > v40)
                    {
                      v40 = 0xDB6DB6DB6DB6DB6ELL * ((v63 - __p) >> 3);
                    }

                    if ((0x6DB6DB6DB6DB6DB7 * ((v63 - __p) >> 3)) >= 0x249249249249249)
                    {
                      v41 = 0x492492492492492;
                    }

                    else
                    {
                      v41 = v40;
                    }

                    if (v41)
                    {
                      sub_10048CFA8(&__p, v41);
                    }

                    v42 = 56 * v39;
                    v43 = *v31;
                    *v42 = v34;
                    *(v42 + 39) = v36;
                    *(v42 + 46) = v43;
                    *(v42 + 47) = 40;
                    *(v42 + 48) = 0;
                    v44 = *v35;
                    *(v42 + 44) = *(v31 - 3);
                    *(v42 + 40) = v44;
                    memcpy((56 * v39 + 8), buf, v36);
                    v22 = (56 * v39 + 56);
                    v45 = (v42 - (v62 - __p));
                    memcpy(v45, __p, v62 - __p);
                    v46 = __p;
                    __p = v45;
                    v62 = (v42 + 56);
                    v63 = 0;
                    if (v46)
                    {
                      operator delete(v46);
                    }
                  }

                  else
                  {
                    v37 = *v31;
                    *v22 = v34;
                    v22[39] = v36;
                    v22[46] = v37;
                    v22[47] = 40;
                    *(v22 + 6) = 0;
                    v38 = *v35;
                    *(v22 + 22) = *(v31 - 3);
                    *(v22 + 10) = v38;
                    memcpy(v22 + 8, buf, v36);
                    v22 += 56;
                  }

                  v62 = v22;
                  v31 += v30;
                  --v29;
                }

                while (v29);
                v47 = v55;
              }

              else
              {
                v47 = 0;
              }

              v27 += v47 * v30;
              v25 = ++v26;
            }

            while (v54 > v26);
          }

          v24 = v53 + 1;
          v23 = (v53 + 1);
          v21 = v50;
          v20 = v51;
        }

        while (v52 > v23);
      }

      else
      {
        v22 = 0;
      }

      v48 = qword_100BCEA68;
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "readAopCaches: calling _listeners.notify(^(AOPEventListener* listener)...", v60, 2u);
        v22 = v62;
      }

      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3321888768;
      v56[2] = sub_100488C9C;
      v56[3] = &unk_100AF7C20;
      __dst = 0;
      v59 = 0;
      v57 = 0;
      if (v22 != __p)
      {
        sub_10048D080(&v57, 0x6DB6DB6DB6DB6DB7 * ((v22 - __p) >> 3));
      }

      sub_100487610(v49, v56);
      if (v57)
      {
        __dst = v57;
        operator delete(v57);
      }

      if (__p)
      {
        v62 = __p;
        operator delete(__p);
      }
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }
  }
}

void sub_100488AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100488B94(id a1, AOPEventListener *a2)
{
  v3 = 0;
  v4 = 0;
  __p = 0;
  (*(a2->var0 + 1))(a2, &__p);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_100488BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100488C18(id a1, AOPEventListener *a2)
{
  v3 = 0;
  v4 = 0;
  __p = 0;
  (*(a2->var0 + 1))(a2, &__p);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_100488C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100488CCC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  v15 = v14;
  v16 = *(v13 + 72);
  if (v16)
  {
    bzero(&v30, 0xFF8uLL);
    v23 = 6;
    v24 = v12;
    v25 = v10;
    v26 = v8;
    v27 = v6;
    v28 = v2;
    v29 = v4;
    v20 = 0;
    v17 = [v16 setReport:&v23 reportLength:8 withIdentifier:0 forType:1 error:&v20];
    v18 = v20;
    v19 = qword_100BCEA68;
    if (v17)
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully sent report to AOP. configureRSSIIntentforAOP handle:0x%02X", buf, 8u);
      }
    }

    else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082F050();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F0D0();
  }
}

void sub_100488EA0(uint64_t a1, void *a2, __int16 a3, char a4, char a5, char a6, char a7, char a8)
{
  v15 = a2;
  v16 = sub_1000C9B4C();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100488FB4;
  v18[3] = &unk_100AF7CE0;
  v20 = a1;
  v17 = v15;
  v19 = v17;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  sub_10000CA94(v16, v18);
}

void sub_100488FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(__chkstk_darwin(a1, a2) + 72);
  if (v3)
  {
    v4 = v2;
    bzero(v13, 0xFFDuLL);
    v11 = 9;
    v12 = v4;
    v8 = 0;
    v5 = [v3 setReport:&v11 reportLength:3 withIdentifier:0 forType:1 error:&v8];
    v6 = v8;
    v7 = qword_100BCEA68;
    if (v5)
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully sent report to AOP. clearRSSIIntentforAOP handle:0x%02X", buf, 8u);
      }
    }

    else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082F150();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F1D0();
  }
}

void sub_100489150(uint64_t a1, __int16 a2)
{
  v4 = sub_1000C9B4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004891D4;
  v5[3] = &unk_100AEB940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_1004891E4(uint64_t a1)
{
  v2 = qword_100BCEA68;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_10000C7D0();
    v4 = (*(*v3 + 2728))(v3);
    v5 = *sub_10000C7D0();
    v6 = (*(v5 + 2736))();
    *buf = 67109376;
    v16 = v4;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting AOPInterfaceManager, AOPInterface: %d, AOPBuffering: %d\n", buf, 0xEu);
  }

  v7 = sub_10000C7D0();
  v8 = (*(*v7 + 2744))(v7);
  v9 = (_os_feature_enabled_impl() & 1) != 0 || IsAppleInternalBuild() != 0;
  v10 = sub_10000C7D0();
  v11 = (*(*v10 + 2736))(v10);
  v12 = *sub_10000C7D0();
  if (((*(v12 + 2760))() | v8) & 1) != 0 || (v11 & v9)
  {
    *(a1 + 32) = *(sub_1000C9B4C() + 8);
    v13 = sub_1000C9B4C();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100489474;
    v14[3] = &unk_100ADF8F8;
    v14[4] = a1;
    sub_10000D334(v13, v14);
  }

  else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F20C();
  }
}

id sub_100489474(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 32));
  v2 = objc_opt_new();
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;

  [*(v1 + 64) open];
  [*(v1 + 64) setDispatchQueue:*(v1 + 32)];
  [*(v1 + 64) setDeviceMatching:&off_100B34310];
  v4 = *(v1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10048954C;
  v6[3] = &unk_100AF7D00;
  v6[4] = v1;
  [v4 setDeviceNotificationHandler:v6];
  [*(v1 + 64) setInputReportHandler:&stru_100AF7D40];
  return [*(v1 + 64) activate];
}

void sub_10048954C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID([v5 service], &entryID);
  if (RegistryEntryID)
  {
    NSLog(@"IORegistryEntryGetRegistryEntryID failed 0x%x", RegistryEntryID);
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082F248();
    }
  }

  else if (a3)
  {
    v8 = qword_100BCEA68;
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = entryID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New client to SPUBluetooth 0x%llx", buf, 0xCu);
    }

    sub_1004896A4(v6, v5);
    sub_100489848(v6);
  }

  else
  {
    sub_100489928(v6, v5);
  }
}

void sub_1004896A4(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = qword_100BCEA68;
    if (v5 == v4)
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "_handleHIDDeviceAdded";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling %s when same device has already been opened.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082F2B8();
    }
  }

  else
  {
    v9 = 0;
    v7 = [v4 openWithOptions:0 error:&v9];
    v8 = v9;
    if (v7)
    {
      objc_storeStrong((a1 + 72), a2);
      sub_100489D68(a1, *(a1 + 72));
      sub_100489B84(a1);
    }

    else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082F338();
    }
  }
}

id sub_100489848(uint64_t a1)
{
  v2 = [[HIDEventSystemClient alloc] initWithType:1];
  v3 = *(a1 + 80);
  *(a1 + 80) = v2;

  [*(a1 + 80) setDispatchQueue:*(a1 + 32)];
  [*(a1 + 80) setMatching:&off_100B34338];
  v4 = *(a1 + 80);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100060340;
  v6[3] = &unk_100AF7D60;
  v6[4] = a1;
  [v4 setEventHandler:v6];
  [*(a1 + 80) setResetHandler:&stru_100AF7D80];
  [*(a1 + 80) setCancelHandler:&stru_100AF7DA0];
  return [*(a1 + 80) activate];
}

void sub_100489928(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = qword_100BCEA68;
    if (v4 == v3)
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleHIDDeviceRemoved:", buf, 2u);
      }

      if (*(a1 + 48))
      {
        v6 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
        {
          v8[0] = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleHIDDeviceRemoved: closing fastpath service", v8, 2u);
        }

        sub_1006B0F2C(a1 + 40);
      }

      [v3 close];
      v7 = *(a1 + 72);
      *(a1 + 72) = 0;
    }

    else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082F3A8();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F3E4();
  }
}

void sub_100489A80(uint64_t a1)
{
  v2 = sub_1000C9B4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100489AFC;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000D334(v2, v3);
}

void sub_100489AFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEA68;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AOPInterfaceManager terminate", v4, 2u);
  }

  [*(v1 + 80) cancel];
  [*(v1 + 64) cancel];
  v3 = *(v1 + 72);
  *(v1 + 72) = 0;
}

void sub_100489B84(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v14 = 1;
  v12 = 0;
  v13 = 49;
  v2 = [*(a1 + 72) getReport:&v14 reportLength:&v13 withIdentifier:1 forType:1 error:&v12];
  v3 = v12;
  v4 = qword_100BCEA68;
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [NSData alloc];
      v6 = [v5 initWithBytes:&v14 length:v13];
      v7 = [v6 description];
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Get service state report: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F420();
  }

  v19 = 0;
  *buf = xmmword_1008A817F;
  v8 = *(a1 + 72);
  v11 = 0;
  v9 = [v8 setReport:buf reportLength:17 withIdentifier:0 forType:1 error:&v11];
  v10 = v11;

  if ((v9 & 1) == 0 && os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F490();
  }
}

void sub_100489D68(uint64_t a1, void *a2)
{
  v3 = a2;
  *parent = 0;
  if (IORegistryEntryGetParentEntry([v3 service], "IOService", &parent[1]))
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082F500();
    }

    goto LABEL_32;
  }

  if (!IORegistryEntryGetChildIterator(parent[1], "IOService", parent))
  {
    v4 = IOIteratorNext(parent[0]);
    if (!v4)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v5 = IOObjectCopyClass(v4);
      if (!CFEqual(@"AppleSPUFastpathInterface", v5))
      {
        CFRelease(v5);
        goto LABEL_26;
      }

      CFRelease(v5);
      child = 0;
      ChildEntry = IORegistryEntryGetChildEntry(v4, "IOService", &child);
      if (ChildEntry)
      {
        v7 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = ChildEntry;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "IORegistryEntryGetChildEntry failed for AppleSPUFastpathInterface 0x%0x", buf, 8u);
        }

        goto LABEL_26;
      }

      v8 = IOObjectCopyClass(child);
      if (CFEqual(v8, @"AppleSPUFastpathDriver"))
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        *buf = 0u;
        v26 = 0u;
        Name = IORegistryEntryGetName(child, buf);
        v10 = qword_100BCEA68;
        if (Name)
        {
          if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
          {
            *v21 = 67109120;
            LODWORD(v22) = Name;
            v11 = v10;
            v12 = "IORegistryEntryGetName failed 0x%0x";
            v13 = 8;
            goto LABEL_30;
          }
        }

        else
        {
          if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
          {
            *v21 = 136315138;
            v22 = buf;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found fastpath service with name %s", v21, 0xCu);
          }

          v15 = sub_1006B0D34(a1 + 40, 0, child);
          if (v15)
          {
            v16 = qword_100BCEA68;
            if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
            {
              *v21 = 136315394;
              v22 = buf;
              v23 = 1024;
              v24 = v15;
              v11 = v16;
              v12 = "Failed to open %s, error 0x%x";
              v13 = 18;
LABEL_30:
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, v21, v13);
              if (!v8)
              {
                goto LABEL_25;
              }

LABEL_24:
              CFRelease(v8);
              goto LABEL_25;
            }
          }
        }
      }

      else
      {
        v14 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
        {
          sub_10082F5E0(&v17, v18, v14);
        }
      }

      if (v8)
      {
        goto LABEL_24;
      }

LABEL_25:
      IOObjectRelease(child);
LABEL_26:
      if (!IOObjectRelease(v4))
      {
        v4 = IOIteratorNext(parent[0]);
        if (!v4)
        {
          goto LABEL_32;
        }
      }
    }
  }

  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F570();
  }

LABEL_32:
}

void sub_10048A134(id a1)
{
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F620();
  }
}

void sub_10048A178(id a1)
{
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F65C();
  }
}

void sub_10048A1BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEBUG))
  {
    sub_10082F698();
  }

  v4 = [v3 objectForKey:@"type"];
  v5 = [v4 unsignedCharValue];

  v6 = [v3 objectForKey:@"descriptor"];
  v7 = v6;
  if (v5 && v6)
  {
    if (*(a1 + 72))
    {
      v8 = sub_1000C9B4C();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10048A36C;
      v9[3] = &unk_100AF7DC8;
      v11 = a1;
      v12 = v5;
      v10 = v7;
      sub_10000CA94(v8, v9);
    }

    else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082F77C();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F70C();
  }
}

void sub_10048A36C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 40);
  v4 = (a1 + 48);
  v3 = *(a1 + 48);
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  if (v3 <= 7)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v5 = sub_10048A7BC(a1, *(a1 + 32), v16);
      }

      else
      {
        if (v3 != 5)
        {
          goto LABEL_27;
        }

        v5 = sub_10048A698(a1, *(a1 + 32), v16);
      }
    }

    else
    {
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          goto LABEL_27;
        }

        LOBYTE(v16[0]) = 2;
        goto LABEL_21;
      }

      v5 = sub_10048A574(a1, *(a1 + 32), v16);
    }

    v6 = v5;
    goto LABEL_22;
  }

  if (v3 > 10)
  {
    if (v3 == 11)
    {
      sub_10048ADB8(a1, *(a1 + 32), v16);
    }

    else
    {
      if (v3 != 12)
      {
        goto LABEL_27;
      }

      sub_10048AF38(a1, *(a1 + 32), v16);
    }
  }

  else if (v3 == 8)
  {
    sub_10048AAD4(a1, *(a1 + 32), v16);
  }

  else
  {
    if (v3 != 10)
    {
      goto LABEL_27;
    }

    sub_10048AD50(a1, *(a1 + 32), v16);
  }

LABEL_21:
  v6 = 1;
LABEL_22:
  v7 = *(v2 + 72);
  v11 = 0;
  v8 = [v7 setReport:v16 reportLength:17 withIdentifier:0 forType:1 error:&v11];
  v1 = v11;
  v9 = qword_100BCEA68;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v4;
      *buf = 67109376;
      v13 = v10;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Send report to AOP (type %d) success. Return 0x%016llx", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082F7EC();
  }

LABEL_27:
}

uint64_t sub_10048A574(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  *a3 = 1;
  v5 = [v4 objectForKey:@"baseDramWakePeriodSeconds"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedCharValue];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 60;
    }

    a3[2] = v7;
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v4 objectForKey:@"running"];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[1] = [v9 unsignedCharValue] != 0;
    }
  }

  return v8;
}

uint64_t sub_10048A698(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  *a3 = 5;
  v5 = [v4 objectForKey:@"bufferSize"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 unsignedShortValue];
      if (v6 >= 0x800)
      {
        v7 = 2048;
      }

      else
      {
        v7 = v6;
      }

      *(a3 + 1) = v7;
    }
  }

  v8 = [v4 objectForKey:@"multiType"];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *(a3 + 3) = [v8 unsignedCharValue] != 0;
    v9 = 5;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t sub_10048A7BC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  *a3 = 3;
  *(a3 + 1) = 0x28000AFFB01F0816;
  *(a3 + 9) = 0;
  v5 = [v4 objectForKey:@"conf"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 objectForKey:@"appleType"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 1) = [v6 unsignedCharValue];
      }
    }

    v7 = [v5 objectForKey:@"payloadLengthLimits"];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 objectAtIndex:0];
      *(a3 + 2) = [v8 unsignedCharValue];

      v9 = [v7 objectAtIndex:1];
      *(a3 + 3) = [v9 unsignedCharValue];

      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    v11 = [v5 objectForKey:@"rssiLimits"];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 objectAtIndex:0];
        *(a3 + 4) = [v12 charValue];

        v13 = [v11 objectAtIndex:1];
        *(a3 + 5) = [v13 charValue];

        v10 |= 8uLL;
      }
    }

    v14 = [v5 objectForKey:@"pktSize"];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(a3 + 6) = [v14 unsignedShortValue];
        v10 |= 0x20uLL;
      }
    }

    v15 = [v5 objectForKey:@"numLines"];

    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 unsignedShortValue];
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        *(a3 + 8) = v17;
        v10 |= 0x80uLL;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t sub_10048AAD4(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  *a3 = 8;
  v5 = [v4 objectForKey:@"bufferedAdvConfigDict"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      obj = [v5 allKeys];
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        v7 = 0;
        v8 = *v19;
        v9 = a3 + 1;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v18 + 1) + 8 * i);
            v12 = &v9[3 * v7];
            *v12 = [v11 unsignedIntValue];
            v13 = [v5 objectForKey:v11];
            if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {

              goto LABEL_15;
            }

            v14 = [v13 objectForKey:@"maxAge"];
            v12[2] = [v14 unsignedIntValue];

            v15 = [v13 objectForKey:@"rssiThreshold"];
            v12[1] = [v15 intValue];

            ++v7;
            if (v7 == 4)
            {
              goto LABEL_15;
            }
          }

          v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  return 1;
}

uint64_t sub_10048AD50(uint64_t a1, void *a2, _BYTE *a3)
{
  *a3 = 10;
  v4 = [a2 valueForKey:@"log_verbose"];
  v5 = v4;
  if (v4)
  {
    a3[1] = [v4 unsignedIntValue];
  }

  return 1;
}

uint64_t sub_10048ADB8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  *a3 = 11;
  v5 = [v4 objectForKey:@"btAddress"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a3 + 1) = [v5 unsignedLongLongValue];
  }

  v6 = [v4 objectForKey:@"cid"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a3 + 9) = [v6 unsignedIntValue];
  }

  v7 = [v4 objectForKey:@"lmHandle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a3 + 11) = [v7 unsignedIntValue];
  }

  v8 = [v4 objectForKey:@"pid"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a3 + 13) = [v8 unsignedIntValue];
  }

  return 1;
}

uint64_t sub_10048AF38(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  *a3 = 12;
  v5 = [v4 objectForKey:@"btAddress"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a3 + 1) = [v5 unsignedLongLongValue];
  }

  v6 = [v4 objectForKey:@"cid"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a3 + 9) = [v6 unsignedIntValue];
  }

  v7 = [v4 objectForKey:@"lmHandle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a3 + 11) = [v7 unsignedIntValue];
  }

  return 1;
}

uint64_t sub_10048B078(uint64_t a1, int a2, void *a3)
{
  v6 = qword_100BCEA68;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Receive report %d from AOP", buf, 8u);
  }

  v7 = 3;
  if (a2 && a3)
  {
    if (*(a1 + 72))
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      *buf = 0;
      v17 = buf;
      v18 = 0x3032000000;
      v19 = sub_100042368;
      v20 = sub_100042650;
      v21 = 0;
      v8 = sub_1000C9B4C();
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10048B298;
      v10[3] = &unk_100AF7DF0;
      v10[5] = buf;
      v10[6] = a1;
      v11 = a2;
      v10[4] = &v12;
      sub_10000D334(v8, v10);
      v7 = *(v13 + 6);
      if (!v7)
      {
        *a3 = *(v17 + 5);
        v7 = *(v13 + 6);
      }

      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
      {
        sub_10082F860();
      }

      return 22;
    }
  }

  return v7;
}

void sub_10048B264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_10048B6E0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3 >= 0x18 && a4)
  {
    v17 = objc_opt_new();
    v6 = [NSNumber numberWithUnsignedLong:*(a2 + 9)];
    [v17 setObject:v6 forKey:@"serviceFlags"];

    v7 = [NSNumber numberWithUnsignedShort:*(a2 + 13)];
    [v17 setObject:v7 forKey:@"maxSramSize"];

    v8 = [NSNumber numberWithUnsignedShort:*(a2 + 15)];
    [v17 setObject:v8 forKey:@"currentSramSize"];

    v9 = [NSNumber numberWithUnsignedChar:*(a2 + 17)];
    [v17 setObject:v9 forKey:@"sramToDramMultiplier"];

    v10 = [NSNumber numberWithUnsignedChar:*(a2 + 18)];
    [v17 setObject:v10 forKey:@"baseDramWakePeriodSeconds"];

    v11 = [NSNumber numberWithUnsignedChar:*(a2 + 19)];
    [v17 setObject:v11 forKey:@"maxNumMatchTableHandlers"];

    v12 = [NSNumber numberWithUnsignedChar:*(a2 + 20)];
    [v17 setObject:v12 forKey:@"currentValidMatchTableHandlers"];

    v13 = [NSNumber numberWithUnsignedShort:*(a2 + 22)];
    [v17 setObject:v13 forKey:@"currentSramBufferOffset"];

    v14 = [NSNumber numberWithUnsignedChar:*(a2 + 21)];
    [v17 setObject:v14 forKey:@"running"];

    v15 = objc_opt_new();
    v16 = [NSNumber numberWithUnsignedLongLong:*(a2 + 1)];
    [v15 setObject:v16 forKey:@"aop_time"];

    [v15 setObject:v17 forKey:@"ServiceStateReport"];
    *a4 = [v15 copy];
  }
}

void sub_10048B9A8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3 >= 0x31 && a4)
  {
    v5 = 16;
    v6 = [[NSMutableArray alloc] initWithCapacity:16];
    v21 = a2;
    v7 = (a2 + 18);
    do
    {
      v22[0] = @"type";
      v8 = [NSNumber numberWithUnsignedChar:*(v7 - 1)];
      v22[1] = @"count";
      v23[0] = v8;
      v9 = [NSNumber numberWithUnsignedChar:*v7];
      v23[1] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
      [v6 addObject:v10];

      v7 += 2;
      --v5;
    }

    while (v5);
    v11 = objc_opt_new();
    v12 = [v6 copy];
    [v11 setObject:v12 forKey:@"histSamples"];

    v13 = objc_opt_new();
    v14 = [NSNumber numberWithUnsignedLong:*(v21 + 9)];
    [v13 setObject:v14 forKey:@"intervalSeconds"];

    v15 = [NSNumber numberWithUnsignedShort:*(v21 + 13)];
    [v13 setObject:v15 forKey:@"spmiXactions"];

    v16 = [v11 copy];
    [v13 setObject:v16 forKey:@"tlvHist"];

    v17 = objc_opt_new();
    v18 = [NSNumber numberWithUnsignedLongLong:*(v21 + 1)];
    [v17 setObject:v18 forKey:@"aop_time"];

    v19 = [v13 copy];
    [v17 setObject:v19 forKey:@"TelemetryReport"];

    *a4 = [v17 copy];
  }
}

void sub_10048BCD8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3 >= 0x13)
  {
    if (a4)
    {
      v6 = objc_opt_new();
      v7 = [NSNumber numberWithUnsignedShort:*(a2 + 10)];
      [v6 setObject:v7 forKey:@"appleType"];

      v8 = [NSNumber numberWithUnsignedChar:*(a2 + 11)];
      v23[0] = v8;
      v9 = [NSNumber numberWithUnsignedChar:*(a2 + 12)];
      v23[1] = v9;
      v10 = [NSArray arrayWithObjects:v23 count:2];
      [v6 setObject:v10 forKey:@"payloadLengthLimits"];

      v11 = [NSNumber numberWithChar:*(a2 + 13)];
      v22[0] = v11;
      v12 = [NSNumber numberWithChar:*(a2 + 14)];
      v22[1] = v12;
      v13 = [NSArray arrayWithObjects:v22 count:2];
      [v6 setObject:v13 forKey:@"rssiLimits"];

      v14 = [NSNumber numberWithUnsignedShort:*(a2 + 15)];
      [v6 setObject:v14 forKey:@"pktSize"];

      v15 = [NSNumber numberWithUnsignedShort:*(a2 + 17)];
      [v6 setObject:v15 forKey:@"numLines"];

      v16 = objc_opt_new();
      v17 = [NSNumber numberWithUnsignedShort:*(a2 + 9)];
      [v16 setObject:v17 forKey:@"handleIndex"];

      v18 = [v6 copy];
      [v16 setObject:v18 forKey:@"conf"];

      v19 = objc_opt_new();
      v20 = [NSNumber numberWithUnsignedLongLong:*(a2 + 1)];
      [v19 setObject:v20 forKey:@"aop_time"];

      v21 = [v16 copy];
      [v19 setObject:v21 forKey:@"MatchTableConfReport"];

      *a4 = [v19 copy];
    }
  }
}

void sub_10048C070(uint64_t a1, unsigned __int8 *a2, unint64_t a3, void *a4)
{
  v4 = a3 - 17;
  if (a3 >= 0x11 && a4)
  {
    v7 = *(a2 + 13);
    if (v4 >= v7)
    {
      v20 = objc_opt_new();
      v9 = [NSNumber numberWithUnsignedInt:*(a2 + 9)];
      [v20 setObject:v9 forKey:@"cacheSize"];

      v10 = [NSNumber numberWithUnsignedInt:*(a2 + 13)];
      [v20 setObject:v10 forKey:@"reportLength"];

      if (*(a2 + 13) >= 0x30u)
      {
        v11 = 0;
        v12 = a2 + 17;
        v13 = *(a2 + 13);
        do
        {
          v14 = [NSData dataWithBytes:v12 length:48];
          v15 = [NSString stringWithFormat:@"cacheline%02d", v11];
          [v20 setObject:v14 forKey:v15];

          ++v11;
          v12 += 48;
        }

        while (v13 / 0x30uLL != v11);
      }

      v16 = objc_opt_new();
      v17 = [NSNumber numberWithUnsignedInt:*a2];
      [v16 setObject:v17 forKey:@"type"];

      v18 = [NSNumber numberWithUnsignedLongLong:*(a2 + 1)];
      [v16 setObject:v18 forKey:@"aop_time"];

      v19 = [v20 copy];
      [v16 setObject:v19 forKey:@"BtProxCtxCacheFetchReport"];

      *a4 = [v16 copy];
    }

    else
    {
      v8 = qword_100BCEA68;
      if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v22 = v7;
        v23 = 2048;
        v24 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "invalid BtProxCtxCacheFetchReport reportLength : %d/%ld", buf, 0x12u);
      }
    }
  }
}

void sub_10048C3B0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3 >= 0x15 && a4)
  {
    v20 = objc_opt_new();
    v6 = (a2 + 11);
    v7 = 4;
    do
    {
      v21 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = [NSNumber numberWithInt:v8];
      v11 = [NSNumber numberWithUnsignedInt:v9];
      v27[0] = @"rssiThreshold";
      v27[1] = @"maxAge";
      v28[0] = v10;
      v28[1] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
      v13 = [NSNumber numberWithUnsignedChar:v21];
      v14 = [v13 stringValue];
      [v20 setObject:v12 forKey:v14];

      if (sub_1000C0430((a1 + 112), &v21))
      {
        v15 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "void AOPInterfaceManager::_parseGetReportBufferedAdvConfFetch(const GetReportPacket &, NSInteger, NSDictionary *__autoreleasing *)";
          v23 = 1024;
          v24 = v21;
          v25 = 1024;
          v26 = v8;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s updating lower bound RSSI for type %d to %+d", buf, 0x18u);
        }

        *buf = &v21;
        *(sub_1000C04E8((a1 + 112), &v21) + 8) = v8;
        *buf = &v21;
        v16 = *(sub_1000C04E8((a1 + 112), &v21) + 9);
        *buf = &v21;
        if (v16 < *(sub_1000C04E8((a1 + 112), &v21) + 8))
        {
          *buf = &v21;
          v17 = *(sub_1000C04E8((a1 + 112), &v21) + 8);
          *buf = &v21;
          *(sub_1000C04E8((a1 + 112), &v21) + 9) = v17;
        }
      }

      v6 += 3;
      --v7;
    }

    while (v7);
    v18 = qword_100BCEA68;
    if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "dPayload : %@", buf, 0xCu);
    }

    *a4 = [v20 copy];
  }
}

void sub_10048C748(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3 >= 0xA && a4)
  {
    v7 = objc_opt_new();
    v6 = [[NSNumber alloc] initWithUnsignedInt:*(a2 + 9)];
    [v7 setObject:v6 forKey:@"log_verbose"];

    *a4 = [v7 copy];
  }
}

void sub_10048C814(uint64_t a1, void *a2)
{
  v2 = a2;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v3 = [v2 count];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      memset(v37, 0, 48);
      v5 = [v2 objectAtIndexedSubscript:i];
      if ([v5 length] == 48)
      {
        [v5 getBytes:v37 length:48];
        v6 = v27;
        if (v27 >= v28)
        {
          v12 = 0x6DB6DB6DB6DB6DB7 * ((v27 - __p) >> 3);
          v13 = v12 + 1;
          if ((v12 + 1) > 0x492492492492492)
          {
            sub_1000C7698();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v28 - __p) >> 3) > v13)
          {
            v13 = 0xDB6DB6DB6DB6DB6ELL * ((v28 - __p) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v28 - __p) >> 3)) >= 0x249249249249249)
          {
            v14 = 0x492492492492492;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            sub_10048CFA8(&__p, v14);
          }

          v15 = 8 * ((v27 - __p) >> 3);
          v16 = *&v37[45];
          *v15 = *v37;
          *(v15 + 39) = 31;
          *(v15 + 46) = v16;
          *(v15 + 48) = 0;
          v17 = *&v37[8];
          *(v15 + 44) = *&v37[12];
          *(v15 + 40) = v17;
          v18 = *&v37[29];
          *(v15 + 8) = *&v37[14];
          *(v15 + 23) = v18;
          v9 = 56 * v12 + 56;
          memcpy((56 * v12 - (v27 - __p)), __p, v27 - __p);
          v19 = __p;
          __p = (56 * v12 - (v27 - __p));
          v27 = v9;
          v28 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          v7 = *&v37[45];
          *v27 = *v37;
          *(v6 + 39) = 31;
          *(v6 + 23) = v7;
          v6[6] = 0.0;
          *(v6 + 10) = *&v37[8];
          *(v6 + 22) = *&v37[12];
          v8 = *&v37[29];
          *(v6 + 1) = *&v37[14];
          *(v6 + 23) = v8;
          v9 = (v6 + 7);
        }

        v27 = v9;
        v20 = CUPrintHex();
        v21 = CUPrintHex();
        v22 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_INFO))
        {
          *buf = 67110146;
          *v30 = v37[45];
          *&v30[4] = 1024;
          *&v30[6] = v37[46];
          v31 = 2112;
          v32 = v21;
          v33 = 2112;
          v34 = v20;
          v35 = 2048;
          v36 = *v37;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Created aopAdvertisement : rssi:%d, channel:%d, addr:%@, payload:%@, ts:%llu", buf, 0x2Cu);
        }
      }

      else
      {
        v10 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_INFO))
        {
          v11 = [v5 length];
          *buf = 134217984;
          *v30 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Skipping supposed advertisement data with length of %lu", buf, 0xCu);
        }
      }
    }

    v23 = __p;
  }

  else
  {
    v23 = 0;
  }

  v24 = qword_100BCEA68;
  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_INFO))
  {
    *v37 = 134218240;
    *&v37[4] = 0x6DB6DB6DB6DB6DB7 * (v27 - v23);
    *&v37[12] = 2048;
    *&v37[14] = v3;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Created %zu aopAdvertisements from %lu rawAdvertisements", v37, 0x16u);
    v23 = __p;
  }

  if (v27 != v23)
  {
    memset(v25, 0, sizeof(v25));
    sub_10048D080(v25, 0x6DB6DB6DB6DB6DB7 * (v27 - v23));
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_10048CCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

char *sub_10048CDD4(void *a1, char *__src, char *a3)
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

void sub_10048CF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048CFA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_10048D004(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_10048D080(result, 0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 3));
  }

  return result;
}

void sub_10048D080(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_10048CFA8(a1, a2);
  }

  sub_1000C7698();
}

uint64_t sub_10048D0D4(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FB80();
  }

  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 8);
  v6 = *(a1 + 80);
  v7 = (a1 + 88);
  if (v6 != (a1 + 88))
  {
    do
    {
      v8 = v6[4];
      if (v8 && *(*(v8 + 48) + 160) == 1)
      {
        v9 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(v8 + 32);
          *buf = 134218752;
          v21 = a2;
          v22 = 1024;
          v23 = a3;
          v24 = 1024;
          v25 = a4;
          v26 = 2048;
          v27 = v15;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "BTLocalDeviceMsgHandler::BTLocalDeviceStatusEventCallback localDevice:%llx event:%d result:%d cbid:%llx", buf, 0x22u);
        }

        v10 = xpc_dictionary_create(0, 0, 0);
        v11 = v10;
        if (v10)
        {
          xpc_dictionary_set_uint64(v10, "kCBMsgArgID", *(v8 + 32));
          xpc_dictionary_set_uint64(v11, "kCBMsgArgLocalDeviceID", a2);
          xpc_dictionary_set_uint64(v11, "kCBMsgArgResult", a4);
          xpc_dictionary_set_uint64(v11, "kCBMsgArgEvent", a3);
          sub_100383144(*(v8 + 48), "kCBMsgIdLocalDeviceStatusEvent", v11, 1);
        }
      }

      v12 = v6[1];
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
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v7);
  }

  return sub_1000088CC(v19);
}

uint64_t sub_10048D32C(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 8);
  v7 = *(a1 + 80);
  if (v7 != (a1 + 88))
  {
    do
    {
      v8 = v7[4];
      if (v8 && *(*(v8 + 48) + 160) == 1)
      {
        v9 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(v8 + 32);
          *buf = 134218752;
          v20 = a2;
          v21 = 1024;
          v22 = a3;
          v23 = 2048;
          v24 = a4;
          v25 = 2048;
          v26 = v15;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "BTLocalDeviceMsgHandler::BTLocalDeviceLeTestStoppedCallback localDevice:%llx result:%d nbPackets:%lld cbid:%llx", buf, 0x26u);
        }

        v10 = xpc_dictionary_create(0, 0, 0);
        v11 = v10;
        if (v10)
        {
          xpc_dictionary_set_uint64(v10, "kCBMsgArgID", *(v8 + 32));
          xpc_dictionary_set_uint64(v11, "kCBMsgArgLocalDeviceID", a2);
          xpc_dictionary_set_uint64(v11, "kCBMsgArgResult", a3);
          xpc_dictionary_set_uint64(v11, "kCBMsgArgNumberOfPackets", a4);
          sub_100383144(*(v8 + 48), "kCBMsgIdLocalDeviceLETestStoppedEvent", v11, 1);
        }
      }

      v12 = v7[1];
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
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (a1 + 88));
  }

  return sub_1000088CC(v18);
}

uint64_t sub_10048D55C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const void *a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  v9 = *(a1 + 80);
  if (v9 != (a1 + 88))
  {
    do
    {
      v10 = v9[4];
      if (v10 && *(*(v10 + 48) + 160) == 1)
      {
        v11 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(v10 + 32);
          *buf = 134218752;
          v22 = a2;
          v23 = 1024;
          v24 = a3;
          v25 = 2048;
          v26 = a4;
          v27 = 2048;
          v28 = v17;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "BTLocalDeviceMsgHandler::BTLocalDeviceAFHMapChangedCallback localDevice:%llx result:%d remoteDevice:%llx cbid:%llx", buf, 0x26u);
        }

        v12 = xpc_dictionary_create(0, 0, 0);
        v13 = v12;
        if (v12)
        {
          xpc_dictionary_set_uint64(v12, "kCBMsgArgID", *(v10 + 32));
          xpc_dictionary_set_uint64(v13, "kCBMsgArgLocalDeviceID", a2);
          xpc_dictionary_set_uint64(v13, "kCBMsgArgResult", a3);
          xpc_dictionary_set_uint64(v13, "kCBMsgArgBTDevice", a4);
          xpc_dictionary_set_data(v13, "kCBMsgArgAFHMap", a5, 0xAuLL);
          sub_100383144(*(v10 + 48), "kCBMsgIdLocalDeviceAFHMapChangedEvent", v13, 1);
        }
      }

      v14 = v9[1];
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
          v15 = v9[2];
          v16 = *v15 == v9;
          v9 = v15;
        }

        while (!v16);
      }

      v9 = v15;
    }

    while (v15 != (a1 + 88));
  }

  return sub_1000088CC(v20);
}

uint64_t sub_10048D7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 8);
  v6 = *(a1 + 80);
  if (v6 != (a1 + 88))
  {
    do
    {
      v7 = v6[4];
      if (v7 && *(*(v7 + 48) + 160) == 1)
      {
        v8 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(v7 + 32);
          *buf = 134218496;
          v18 = a2;
          v19 = 2048;
          v20 = a3;
          v21 = 2048;
          v22 = v14;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BTLocalDeviceMsgHandler::BTLocalDeviceLinkModeChangedCallback localDevice:%llx device:%llx cbid:%llx", buf, 0x20u);
        }

        v9 = xpc_dictionary_create(0, 0, 0);
        v10 = v9;
        if (v9)
        {
          xpc_dictionary_set_uint64(v9, "kCBMsgArgID", *(v7 + 32));
          xpc_dictionary_set_uint64(v10, "kCBMsgArgLocalDeviceID", a2);
          xpc_dictionary_set_uint64(v10, "kCBMsgArgBTDevice", a3);
          sub_100383144(*(v7 + 48), "kCBMsgIdLocalDeviceLinkModeChangedEvent", v10, 1);
        }
      }

      v11 = v6[1];
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
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != (a1 + 88));
  }

  return sub_1000088CC(v16);
}

uint64_t sub_10048D9A0(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a4)
  {
    return sub_10048D0D4(a4, result, a2, a3);
  }

  return result;
}

uint64_t sub_10048D9C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return sub_10048D7A0(a3, result, a2);
  }

  return result;
}

uint64_t sub_10048D9DC(uint64_t result, int a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    return sub_10048D32C(a4, result, a2, a3);
  }

  return result;
}

uint64_t sub_10048D9FC(uint64_t result, int a2, uint64_t a3, const void *a4, uint64_t a5)
{
  if (a5)
  {
    return sub_10048D55C(a5, result, a2, a3, a4);
  }

  return result;
}

void sub_10048DA20(id a1)
{
  v55 = "kCBMsgIdLocalDeviceGetDefaultMsg";
  v56 = 32;
  v57 = &v55;
  v1 = sub_100059904(&xmmword_100BCE558, &v55);
  v1[4] = sub_10048E79C;
  v1[5] = 0;
  v55 = "kCBMsgIdLocalDeviceAddCallbacksMsg";
  v56 = 34;
  v57 = &v55;
  v2 = sub_100059904(&xmmword_100BCE558, &v55);
  v2[4] = sub_10048E984;
  v2[5] = 0;
  v55 = "kCBMsgIdLocalDeviceRemoveCallbacksMsg";
  v56 = 37;
  v57 = &v55;
  v3 = sub_100059904(&xmmword_100BCE558, &v55);
  v3[4] = sub_10048EC94;
  v3[5] = 0;
  v55 = "kCBMsgIdLocalDeviceMaskCallbacks";
  v56 = 32;
  v57 = &v55;
  v4 = sub_100059904(&xmmword_100BCE558, &v55);
  v4[4] = sub_10048EF60;
  v4[5] = 0;
  v55 = "kCBMsgIdLocalDeviceSetModulePowerMsg";
  v56 = 36;
  v57 = &v55;
  v5 = sub_100059904(&xmmword_100BCE558, &v55);
  v5[4] = sub_10048F06C;
  v5[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetModulePowerMsg";
  v56 = 36;
  v57 = &v55;
  v6 = sub_100059904(&xmmword_100BCE558, &v55);
  v6[4] = sub_100059B80;
  v6[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetSpatialPlatformSupportMsg";
  v56 = 47;
  v57 = &v55;
  v7 = sub_100059904(&xmmword_100BCE558, &v55);
  v7[4] = sub_10048F1E0;
  v7[5] = 0;
  v55 = "kCBMsgIdLocalDevicePowerResetMsg";
  v56 = 32;
  v57 = &v55;
  v8 = sub_100059904(&xmmword_100BCE558, &v55);
  v8[4] = sub_10048F2CC;
  v8[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetAirplaneModeStatusMsg";
  v56 = 43;
  v57 = &v55;
  v9 = sub_100059904(&xmmword_100BCE558, &v55);
  v9[4] = sub_10048F394;
  v9[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetAddressStringMsg";
  v56 = 38;
  v57 = &v55;
  v10 = sub_100059904(&xmmword_100BCE558, &v55);
  v10[4] = sub_10048F480;
  v10[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetNameMsg";
  v56 = 29;
  v57 = &v55;
  v11 = sub_100059904(&xmmword_100BCE558, &v55);
  v11[4] = sub_10048F604;
  v11[5] = 0;
  v55 = "kCBMsgIdLocalDeviceSetDiscoverableMsg";
  v56 = 37;
  v57 = &v55;
  v12 = sub_100059904(&xmmword_100BCE558, &v55);
  v12[4] = sub_10048F7B0;
  v12[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetDiscoverableMsg";
  v56 = 37;
  v57 = &v55;
  v13 = sub_100059904(&xmmword_100BCE558, &v55);
  v13[4] = sub_100061D10;
  v13[5] = 0;
  v55 = "kCBMsgIdLocalDeviceSetConnectableMsg";
  v56 = 36;
  v57 = &v55;
  v14 = sub_100059904(&xmmword_100BCE558, &v55);
  v14[4] = sub_10048F8A0;
  v14[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetConnectableMsg";
  v56 = 36;
  v57 = &v55;
  v15 = sub_100059904(&xmmword_100BCE558, &v55);
  v15[4] = sub_1000621CC;
  v15[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetPairingStatusMsg";
  v56 = 38;
  v57 = &v55;
  v16 = sub_100059904(&xmmword_100BCE558, &v55);
  v16[4] = sub_10048F990;
  v16[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetPairedDevicesMsg";
  v56 = 38;
  v57 = &v55;
  v17 = sub_100059904(&xmmword_100BCE558, &v55);
  v17[4] = sub_10048FA7C;
  v17[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetConnectionStatusMsg";
  v56 = 41;
  v57 = &v55;
  v18 = sub_100059904(&xmmword_100BCE558, &v55);
  v18[4] = sub_100061F1C;
  v18[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetConnectedDevicesMsg";
  v56 = 41;
  v57 = &v55;
  v19 = sub_100059904(&xmmword_100BCE558, &v55);
  v19[4] = sub_1000AD6A8;
  v19[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetConnectingDevicesMsg";
  v56 = 42;
  v57 = &v55;
  v20 = sub_100059904(&xmmword_100BCE558, &v55);
  v20[4] = sub_10048FC4C;
  v20[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetAdvertisingStatusMsg";
  v56 = 42;
  v57 = &v55;
  v21 = sub_100059904(&xmmword_100BCE558, &v55);
  v21[4] = sub_10048FE08;
  v21[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetScanningMsg";
  v56 = 33;
  v57 = &v55;
  v22 = sub_100059904(&xmmword_100BCE558, &v55);
  v22[4] = sub_10048FEF4;
  v22[5] = 0;
  v55 = "kCBMsgIdLocalDeviceEnableDUTModeMsg";
  v56 = 35;
  v57 = &v55;
  v23 = sub_100059904(&xmmword_100BCE558, &v55);
  v23[4] = sub_10048FFE0;
  v23[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetDUTModeEnabledMsg";
  v56 = 39;
  v57 = &v55;
  v24 = sub_100059904(&xmmword_100BCE558, &v55);
  v24[4] = sub_100490090;
  v24[5] = 0;
  v55 = "kCBMsgIdLocalDeviceEnableLeTxTestModeMsg";
  v56 = 40;
  v57 = &v55;
  v25 = sub_100059904(&xmmword_100BCE558, &v55);
  v25[4] = sub_10049017C;
  v25[5] = 0;
  v55 = "kCBMsgIdLocalDeviceEnableLeRxTestModeMsg";
  v56 = 40;
  v57 = &v55;
  v26 = sub_100059904(&xmmword_100BCE558, &v55);
  v26[4] = sub_100490318;
  v26[5] = 0;
  v55 = "kCBMsgIdLocalDeviceDisableLeTestModeMsg";
  v56 = 39;
  v57 = &v55;
  v27 = sub_100059904(&xmmword_100BCE558, &v55);
  v27[4] = sub_100490408;
  v27[5] = 0;
  v55 = "kCBMsgIdLocalDeviceSupportsServiceMsg";
  v56 = 37;
  v57 = &v55;
  v28 = sub_100059904(&xmmword_100BCE558, &v55);
  v28[4] = sub_1004904D0;
  v28[5] = 0;
  v55 = "kCBMsgIdLocalDeviceAdvertiseDataMsg";
  v56 = 35;
  v57 = &v55;
  v29 = sub_100059904(&xmmword_100BCE558, &v55);
  v29[4] = sub_1004905E4;
  v29[5] = 0;
  v55 = "kCBMsgIdLocalDeviceRemoveDataMsg";
  v56 = 32;
  v57 = &v55;
  v30 = sub_100059904(&xmmword_100BCE558, &v55);
  v30[4] = sub_10049070C;
  v30[5] = 0;
  v55 = "kCBMsgIdLocalDeviceRegisterForPowerUpdatesMsg";
  v56 = 45;
  v57 = &v55;
  v31 = sub_100059904(&xmmword_100BCE558, &v55);
  v31[4] = sub_100490834;
  v31[5] = 0;
  v55 = "kCBMsgIdLocalDeviceUnregisterForPowerUpdatesMsg";
  v56 = 47;
  v57 = &v55;
  v32 = sub_100059904(&xmmword_100BCE558, &v55);
  v32[4] = sub_100490B28;
  v32[5] = 0;
  v55 = "kCBMsgIdLocalDeviceReadPowerConsumptionMsg";
  v56 = 42;
  v57 = &v55;
  v33 = sub_100059904(&xmmword_100BCE558, &v55);
  v33[4] = sub_100490DD8;
  v33[5] = 0;
  v55 = "kCBMsgIdLocalDeviceRegisterForPowerProfileStatisticsMsg";
  v56 = 55;
  v57 = &v55;
  v34 = sub_100059904(&xmmword_100BCE558, &v55);
  v34[4] = sub_100490EC4;
  v34[5] = 0;
  v55 = "kCBMsgIdLocalDeviceUnregisterForPowerProfileStatisticsMsg";
  v56 = 57;
  v57 = &v55;
  v35 = sub_100059904(&xmmword_100BCE558, &v55);
  v35[4] = sub_1004911B8;
  v35[5] = 0;
  v55 = "kCBMsgIdLocalDeviceReadPowerProfileStatisticsMsg";
  v56 = 48;
  v57 = &v55;
  v36 = sub_100059904(&xmmword_100BCE558, &v55);
  v36[4] = sub_100491468;
  v36[5] = 0;
  v55 = "kCBMsgIdLocalDeviceReadEnhancedPowerProfileStatisticsMsg";
  v56 = 56;
  v57 = &v55;
  v37 = sub_100059904(&xmmword_100BCE558, &v55);
  v37[4] = sub_100059EB0;
  v37[5] = 0;
  v55 = "kCBMsgIdLocalDeviceReadEnhancedPowerStatsPerCoreMsg";
  v56 = 51;
  v57 = &v55;
  v38 = sub_100059904(&xmmword_100BCE558, &v55);
  v38[4] = sub_1004915C0;
  v38[5] = 0;
  v55 = "kCBMsgIdLocalDeviceReadTransportSwitchStatisticsMsg";
  v56 = 51;
  v57 = &v55;
  v39 = sub_100059904(&xmmword_100BCE558, &v55);
  v39[4] = sub_1004916E4;
  v39[5] = 0;
  v55 = "kCBMsgIdLocalDeviceReadDetailedPowerProfileStatisticsMsg";
  v56 = 56;
  v57 = &v55;
  v40 = sub_100059904(&xmmword_100BCE558, &v55);
  v40[4] = sub_10049183C;
  v40[5] = 0;
  v55 = "kCBMsgIdLocalDeviceStartHCITracesMsg";
  v56 = 36;
  v57 = &v55;
  v41 = sub_100059904(&xmmword_100BCE558, &v55);
  v41[4] = sub_100491AA4;
  v41[5] = 0;
  v55 = "kCBMsgIdLocalDeviceStopHCITracesMsg";
  v56 = 35;
  v57 = &v55;
  v42 = sub_100059904(&xmmword_100BCE558, &v55);
  v42[4] = sub_100491B6C;
  v42[5] = 0;
  v55 = "kCBMsgIdLocalDeviceShowPowerPromptMsg";
  v56 = 37;
  v57 = &v55;
  v43 = sub_100059904(&xmmword_100BCE558, &v55);
  v43[4] = sub_100491D38;
  v43[5] = 0;
  v55 = "kCBMsgIdLocalDeviceSetAFHMapMsg";
  v56 = 31;
  v57 = &v55;
  v44 = sub_100059904(&xmmword_100BCE558, &v55);
  v44[4] = sub_100491E24;
  v44[5] = 0;
  v55 = "kCBMsgIdLocalDeviceReadAFHMapMsg";
  v56 = 32;
  v57 = &v55;
  v45 = sub_100059904(&xmmword_100BCE558, &v55);
  v45[4] = sub_100491F68;
  v45[5] = 0;
  v55 = "kCBMsgIdLocalDeviceSetDelayedWakeMsg";
  v56 = 36;
  v57 = &v55;
  v46 = sub_100059904(&xmmword_100BCE558, &v55);
  v46[4] = sub_100492054;
  v46[5] = 0;
  v55 = "kCBMsgIdLocalDeviceSetDenylistEnabledMsg";
  v56 = 40;
  v57 = &v55;
  v47 = sub_100059904(&xmmword_100BCE558, &v55);
  v47[4] = sub_10049210C;
  v47[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetDenylistEnabledMsg";
  v56 = 40;
  v57 = &v55;
  v48 = sub_100059904(&xmmword_100BCE558, &v55);
  v48[4] = sub_1004921F8;
  v48[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetDeviceNamesThatMayBeDenylistedMsg";
  v56 = 55;
  v57 = &v55;
  v49 = sub_100059904(&xmmword_100BCE558, &v55);
  v49[4] = sub_1004922E4;
  v49[5] = 0;
  v55 = "kCBMsgIdLocalDeviceGetSharingAddressesMsg";
  v56 = 41;
  v57 = &v55;
  v50 = sub_100059904(&xmmword_100BCE558, &v55);
  v50[4] = sub_1004924AC;
  v50[5] = 0;
  v55 = "kCBMsgIdLocalDeviceIsSharingEnabledMsg";
  v56 = 38;
  v57 = &v55;
  v51 = sub_100059904(&xmmword_100BCE558, &v55);
  v51[4] = sub_100492678;
  v51[5] = 0;
  v55 = "kCBMsgIdLocalDeviceDumpExposureNotificationDatabaseMsg";
  v56 = 54;
  v57 = &v55;
  v52 = sub_100059904(&xmmword_100BCE558, &v55);
  v52[4] = sub_100492764;
  v52[5] = 0;
  v55 = "kCBMsgIdLocalDeviceLinkQualityGetDataMsg";
  v56 = 40;
  v57 = &v55;
  v53 = sub_100059904(&xmmword_100BCE558, &v55);
  v53[4] = sub_1004928E8;
  v53[5] = 0;
  v55 = "kCBMsgIdLocalDeviceSetCallScreeningMsg";
  v56 = 38;
  v57 = &v55;
  v54 = sub_100059904(&xmmword_100BCE558, &v55);
  v54[4] = sub_100492B78;
  v54[5] = 0;
}

void sub_10048E79C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSessionID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FC18();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  if (!uint64)
  {
    goto LABEL_11;
  }

LABEL_3:
  v13 = 0;
  LODWORD(v6) = sub_10052CEC4(uint64, &v13);
  uint64 = 0;
  if (!v6)
  {
    uint64 = v13;
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v15 = v13;
      v16 = 1024;
      v17 = v8;
      v18 = 2048;
      v19 = asid;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Adding identifier mapping localDevice:%llx pid:%d asid:%llx", buf, 0x1Cu);
    }

    if (qword_100B50B88 != -1)
    {
      sub_10082FC80();
    }

    sub_100618A78(qword_100B50B80, v13, v8, asid);
  }

  v6 = v6;
LABEL_12:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgLocalDeviceID", uint64);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

uint64_t sub_10048E984(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FCA8();
  }

  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = uint64;
      v24 = 1024;
      v25 = v8;
      v26 = 2048;
      v27 = asid;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping localDevice:%llx pid:%d asid:%llx", buf, 0x1Cu);
    }

    if (qword_100B50B88 != -1)
    {
      sub_10082FC80();
    }

    if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
    {
      v11 = *(a1 + 80);
      if (v11 == (a1 + 88))
      {
LABEL_19:
        v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040AF0111D3uLL);
        *buf = v17;
        v17[4] = v6;
        v17[5] = uint64;
        v17[2] = sub_10048D9FC;
        v17[1] = sub_10048D9DC;
        *v17 = sub_10048D9A0;
        v17[6] = *(a1 + 72);
        sub_1000452CC(a1 + 80, buf);
        if (*(a1 + 104))
        {
          v12 = 0;
        }

        else
        {
          v18 = sub_10052CFD0(uint64, *buf, a1);
          *(a1 + 104) = 1;
          v12 = v18;
        }
      }

      else
      {
        v12 = 1;
        while (1)
        {
          v13 = v11[4];
          if (*(v13 + 32) == v6 && *(v13 + 40) == uint64)
          {
            break;
          }

          v14 = v11[1];
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
              v15 = v11[2];
              v16 = *v15 == v11;
              v11 = v15;
            }

            while (!v16);
          }

          v11 = v15;
          if (v15 == (a1 + 88))
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {
    v12 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v20 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v20);
    xpc_release(v20);
  }

  return sub_1000088CC(v22);
}

uint64_t sub_10048EC94(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FD10();
  }

  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 8);
  if (!uint64)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 72);
  v8 = *(v7 + 40);
  asid = xpc_connection_get_asid(*(v7 + 16));
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = uint64;
    v23 = 1024;
    v24 = v8;
    v25 = 2048;
    v26 = asid;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping localDevice:%llx pid:%d asid:%llx", buf, 0x1Cu);
  }

  if (qword_100B50B88 != -1)
  {
    sub_10082FC80();
  }

  if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
  {
    v11 = *(a1 + 80);
    if (v11 == (a1 + 88))
    {
LABEL_18:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10082FD78();
      }

      v16 = 3;
    }

    else
    {
      while (1)
      {
        v12 = v11[4];
        if (*(v12 + 32) == v6 && *(v12 + 40) == uint64)
        {
          break;
        }

        v13 = v11[1];
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
            v14 = v11[2];
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
        if (v14 == (a1 + 88))
        {
          goto LABEL_18;
        }
      }

      *buf = v11[4];
      if (*(a1 + 104) == 1)
      {
        v20 = sub_10052D05C(uint64, v12);
        *(a1 + 104) = 0;
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }

      sub_100075DC4((a1 + 80), buf);
      free(*buf);
    }
  }

  else
  {
LABEL_21:
    v16 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v18 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v18);
    xpc_release(v18);
  }

  return sub_1000088CC(v21);
}

void sub_10048EF60(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceEventMask");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FDAC();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if (!uint64)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (qword_100B50B88 != -1)
  {
    sub_10082FC80();
  }

  sub_1006194D8(qword_100B50B80, uint64, v6);
  v7 = 0;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_10048F06C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTPowerModule");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTPowerMode");
  v8 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218496;
    v13 = uint64;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BTLocalDeviceMsgHandler::handleBTLocalDeviceSetModulePowerMsg localDeviceId:%llx module:%llx powerOn:%llx", &v12, 0x20u);
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_10052D0D4(uint64, v6, v7);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_10048F1E0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FEF8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052D400(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgSpatialPlatformSupport", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10048F2CC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FF60();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052D5C4(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10048F394(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FFC8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052D720(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAirplaneMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10048F480(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v6, v7);
  v9 = &v13 - v8;
  bzero(&v13 - v8, v6);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830030();
    if (uint64)
    {
LABEL_3:
      if (*(*(a1 + 72) + 80) < 1)
      {
        v10 = 13;
      }

      else
      {
        v10 = sub_10052D7A4(uint64, v9, v6);
      }

      goto LABEL_8;
    }
  }

  else if (uint64)
  {
    goto LABEL_3;
  }

  v10 = 1;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_dictionary_set_string(v12, "kCBMsgArgAddressString", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_10048F604(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  memset(&__p, 0, sizeof(__p));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830098();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_15:
    v10 = 1;
    goto LABEL_16;
  }

  if (!uint64)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (qword_100B508A0 != -1)
  {
    sub_100830100();
  }

  v7 = sub_100059CB8(off_100B50898, uint64);
  if (v7)
  {
    v8 = sub_100574BD8(v7, &__p);
    if (!v8)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (v6 >= size + 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = 5;
      }
    }
  }

  else
  {
    v8 = 7;
  }

  v10 = v8;
LABEL_16:
  reply = xpc_dictionary_create_reply(xdict);
  v12 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    xpc_dictionary_set_string(v12, "kCBMsgArgDeviceName", p_p);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10048F790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F7B0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgDiscoverable");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830128();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052D8C0(uint64, v6);
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

void sub_10048F8A0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnectable");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008301F8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052DA48(uint64, v6);
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

void sub_10048F990(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830260();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052DAC4(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgPaired", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10048FA7C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  __chkstk_darwin(v6, 8 * v6);
  v8 = &v15 - v7;
  bzero(&v15 - v7, v9);
  v15 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008302C8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_10052DB40(uint64, v8, &v15, v6);
    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_dictionary_set_uint64(v12, "kCbMsgArgDeviceArrayMaxSize", v15);
    v13 = xpc_array_create(0, 0);
    if (!v10 && v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v8[8 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_10048FC4C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  __chkstk_darwin(v6, 8 * v6);
  v8 = &v15 - v7;
  bzero(&v15 - v7, v9);
  v15 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830400();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_10052DC8C(uint64, v8, &v15, v6);
    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    v13 = xpc_array_create(0, 0);
    if (!v10 && v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v8[8 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_10048FE08(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830468();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052DE00(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgAdvertising", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10048FEF4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008304D0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052DE7C(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgScanning", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10048FFE0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  if (uint64)
  {
    sub_10052DEE8(uint64);
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);

    xpc_release(v9);
  }
}

void sub_100490090(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830538();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052DF54(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgDutModeEnabled", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10049017C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgTestFrequency");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgPayloadSize");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgPayload");
  v9 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218752;
    v14 = uint64;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "BTLocalDeviceMsgHandler::handleBTLocalDeviceEnableLeTxTestModeMsg localDeviceId:%llx testFrequency:%llx payloadSize:%llx payload:%llx", &v13, 0x2Au);
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v10 = sub_10052DFD0(uint64, v6, v7, v8);
    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_100490318(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgTestFrequency");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008305A0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052E060(uint64, v6);
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

void sub_100490408(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830608();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052E0D4(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004904D0(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgServices");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830670();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052E140(uint64, v6, &value);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgServiceSuppored", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004905E4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgKey", &length);
  v11 = 0;
  v7 = xpc_dictionary_get_data(value, "kCBMsgArgValue", &v11);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008306D8();
  }

  v8 = 1;
  if (uint64 && length && v11)
  {
    v8 = sub_10052E1E0(uint64, data, length, v7, v11);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_10049070C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgKey", &length);
  v11 = 0;
  v7 = xpc_dictionary_get_data(value, "kCBMsgArgValue", &v11);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830740();
  }

  v8 = 1;
  if (uint64 && length && v11)
  {
    v8 = sub_10052E288(uint64, data, length, v7, v11);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

uint64_t sub_100490834(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008307A8();
  }

  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = uint64;
      v24 = 1024;
      v25 = v8;
      v26 = 2048;
      v27 = asid;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping localDevice:%llx pid:%d asid:%llx", buf, 0x1Cu);
    }

    if (qword_100B50B88 != -1)
    {
      sub_10082FC80();
    }

    if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
    {
      v11 = *(a1 + 80);
      if (v11 == (a1 + 88))
      {
LABEL_19:
        v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040AF0111D3uLL);
        *buf = v17;
        v17[4] = v6;
        v17[5] = uint64;
        v17[3] = sub_10048D9C0;
        v17[6] = *(a1 + 72);
        sub_1000452CC(a1 + 80, buf);
        if (*(a1 + 105))
        {
          v12 = 0;
        }

        else
        {
          v18 = sub_10052E330(uint64);
          *(a1 + 105) = 1;
          v12 = v18;
        }
      }

      else
      {
        v12 = 1;
        while (1)
        {
          v13 = v11[4];
          if (*(v13 + 32) == v6 && *(v13 + 40) == uint64)
          {
            break;
          }

          v14 = v11[1];
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
              v15 = v11[2];
              v16 = *v15 == v11;
              v11 = v15;
            }

            while (!v16);
          }

          v11 = v15;
          if (v15 == (a1 + 88))
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {
    v12 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v20 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v20);
    xpc_release(v20);
  }

  return sub_1000088CC(v22);
}

uint64_t sub_100490B28(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830810();
  }

  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  if (!uint64)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 72);
  v7 = *(v6 + 40);
  asid = xpc_connection_get_asid(*(v6 + 16));
  v9 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = uint64;
    v22 = 1024;
    v23 = v7;
    v24 = 2048;
    v25 = asid;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "identifier mapping localDevice:%llx pid:%d asid:%llx", buf, 0x1Cu);
  }

  if (qword_100B50B88 != -1)
  {
    sub_10082FC80();
  }

  if (sub_100618D34(qword_100B50B80, uint64, v7, asid))
  {
    v10 = *(a1 + 80);
    if (v10 == (a1 + 88))
    {
LABEL_18:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10082FD78();
      }

      v15 = 3;
    }

    else
    {
      while (1)
      {
        v11 = v10[4];
        if (*(v11 + 24))
        {
          if (*(v11 + 40) == uint64)
          {
            break;
          }
        }

        v12 = v10[1];
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
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
        if (v13 == (a1 + 88))
        {
          goto LABEL_18;
        }
      }

      *buf = v10[4];
      if (*(a1 + 105) == 1)
      {
        v19 = sub_10052E3E4(uint64);
        *(a1 + 105) = 0;
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }

      sub_100075DC4((a1 + 80), buf);
      free(*buf);
    }
  }

  else
  {
LABEL_21:
    v15 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v17 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v15);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v17);
    xpc_release(v17);
  }

  return sub_1000088CC(v20);
}

void sub_100490DD8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830878();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052E47C(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgPowerConsumed", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

uint64_t sub_100490EC4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008308E0();
  }

  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      *&buf[4] = uint64;
      v24 = 1024;
      v25 = v8;
      v26 = 2048;
      v27 = asid;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "identifier mapping localDevice:%llx pid:%d asid:%llx", buf, 0x1Cu);
    }

    if (qword_100B50B88 != -1)
    {
      sub_10082FC80();
    }

    if (sub_100618D34(qword_100B50B80, uint64, v8, asid))
    {
      v11 = *(a1 + 80);
      if (v11 == (a1 + 88))
      {
LABEL_19:
        v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040AF0111D3uLL);
        *buf = v17;
        v17[4] = v6;
        v17[5] = uint64;
        v17[3] = sub_10048D9C0;
        v17[6] = *(a1 + 72);
        sub_1000452CC(a1 + 80, buf);
        if (*(a1 + 106))
        {
          v12 = 0;
        }

        else
        {
          v18 = sub_10052E51C(uint64);
          *(a1 + 106) = 1;
          v12 = v18;
        }
      }

      else
      {
        v12 = 1;
        while (1)
        {
          v13 = v11[4];
          if (*(v13 + 32) == v6 && *(v13 + 40) == uint64)
          {
            break;
          }

          v14 = v11[1];
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
              v15 = v11[2];
              v16 = *v15 == v11;
              v11 = v15;
            }

            while (!v16);
          }

          v11 = v15;
          if (v15 == (a1 + 88))
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {
    v12 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v20 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v20);
    xpc_release(v20);
  }

  return sub_1000088CC(v22);
}

uint64_t sub_1004911B8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830948();
  }

  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  if (!uint64)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 72);
  v7 = *(v6 + 40);
  asid = xpc_connection_get_asid(*(v6 + 16));
  v9 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = uint64;
    v22 = 1024;
    v23 = v7;
    v24 = 2048;
    v25 = asid;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "identifier mapping localDevice:%llx pid:%d asid:%llx", buf, 0x1Cu);
  }

  if (qword_100B50B88 != -1)
  {
    sub_10082FC80();
  }

  if (sub_100618D34(qword_100B50B80, uint64, v7, asid))
  {
    v10 = *(a1 + 80);
    if (v10 == (a1 + 88))
    {
LABEL_18:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10082FD78();
      }

      v15 = 3;
    }

    else
    {
      while (1)
      {
        v11 = v10[4];
        if (*(v11 + 24))
        {
          if (*(v11 + 40) == uint64)
          {
            break;
          }
        }

        v12 = v10[1];
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
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
        if (v13 == (a1 + 88))
        {
          goto LABEL_18;
        }
      }

      *buf = v10[4];
      if (*(a1 + 106) == 1)
      {
        v19 = sub_10052E5D0(uint64);
        *(a1 + 106) = 0;
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }

      sub_100075DC4((a1 + 80), buf);
      free(*buf);
    }
  }

  else
  {
LABEL_21:
    v15 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v17 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v15);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v17);
    xpc_release(v17);
  }

  return sub_1000088CC(v20);
}

void sub_100491468(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgReset");
  value[0] = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008309B0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052E668(uint64, v6, value + 6, value + 4, value + 2, value);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsTransmitting", HIWORD(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsReceiving", WORD2(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsSleep", WORD1(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsOthers", LOWORD(value[0]));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004915C0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgReset");
  memset(v10, 0, 92);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830A80();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052E744(uint64, v6, v10);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_data(v9, "kCBMsgArgData", v10, 0x5CuLL);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1004916E4(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgReset");
  v10 = 0;
  value = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830AE8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052E7FC(uint64, v6, &value + 4, &value, &v10 + 4, &v10);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsTotal", HIDWORD(value));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsSuccesful", value);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsDowngraded", HIDWORD(v10));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsInvolundaryDowngraded", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_10049183C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgReset");
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  value = 0;
  v10 = 0;
  v11 = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830B50();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052E8D4(uint64, v6, &v16 + 4, &v16, &v15 + 4, &v15, &v14 + 4, &v14, &v13 + 4, &v13, &value + 4, &value, &v11 + 4, &v11, &v10 + 4, &v10);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsDurationTotal", HIDWORD(v16));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsDurationActive", v16);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsDurationIdle", HIDWORD(v15));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsDurationSleep", v15);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsDisableCounter", HIDWORD(v14));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsiPATxBT", v14);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsePATxBT", HIDWORD(v13));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsiPATxLE", v13);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsePATxLE", HIDWORD(value));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsConnectedRxBT", value);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsConnectedRxLE", HIDWORD(v11));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsScanRxBT", v11);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsScanRxLE", HIDWORD(v10));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgStatsTotalPHYCal", v10);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_100491AA4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830BB8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052E9D4(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_100491B6C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  string = xpc_dictionary_get_string(value, "kCBMsgArgExtensionToken");
  v7 = xpc_dictionary_get_string(value, "kCBMsgArgPath");
  v8 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v8, v9);
  v11 = &v15 - v10;
  bzero(&v15 - v10, v8);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830C20();
    if (string)
    {
      goto LABEL_3;
    }

LABEL_5:
    if (uint64)
    {
      v12 = sub_10052EA68(uint64, v7, string, v11, v8);
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_9;
  }

  if (!string)
  {
    goto LABEL_5;
  }

LABEL_3:
  if (!*string || *(*(a1 + 72) + 91) == 1)
  {
    goto LABEL_5;
  }

  v12 = 3;
LABEL_9:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v14 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v12);
    xpc_dictionary_set_string(v14, "kCBMsgArgName", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_100491D38(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  string = xpc_dictionary_get_string(value, "kCBMsgArgBundleIdString");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830C88();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052EB3C(uint64, string);
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

void sub_100491E24(uint64_t a1, xpc_object_t xdict)
{
  length = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
  if (length == 10)
  {
    v7 = data;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_100830D30();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_10052EC1C(uint64, v7);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v10 = reply;
      v11 = v8;
      goto LABEL_13;
    }

    v8 = 1;
    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_100830CF0();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    v11 = 3;
LABEL_13:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_100491F68(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTDevice");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830D98();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052ECFC(uint64, v6);
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

void sub_100492054(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgDelay");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830E00();
  }

  v5 = sub_10052EE0C();
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v7 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v5);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v7);
    xpc_release(v7);
  }
}

void sub_10049210C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830E40();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_10052EEBC(uint64, v6);
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

void sub_1004921F8(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830EA8();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052EF38(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1004922E4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  v16 = 0;
  v7 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    sub_100830F10();
  }

  __chkstk_darwin(v7, 248 * v6);
  v9 = &v16 - v8;
  bzero(&v16 - v8, v10);
  if (uint64)
  {
    v11 = sub_10052EFA4(uint64, v9, &v16, v6);
  }

  else
  {
    v11 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v13 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v11);
    v14 = xpc_array_create(0, 0);
    if (v16)
    {
      for (i = 0; i < v16; ++i)
      {
        xpc_array_set_string(v14, 0xFFFFFFFFFFFFFFFFLL, v9);
        v9 += 248;
      }
    }

    xpc_dictionary_set_value(v13, "kCBMsgArgDeviceArray", v14);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v13);
    xpc_release(v14);
    xpc_release(v13);
  }
}

void sub_1004924AC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  v15 = 0;
  v7 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    sub_100830F78();
  }

  __chkstk_darwin(v7, 6 * v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  if (uint64)
  {
    v10 = sub_10052F01C(uint64, v9, &v15);
  }

  else
  {
    v10 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    v13 = xpc_array_create(0, 0);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_data(v13, 0xFFFFFFFFFFFFFFFFLL, v9, 6uLL);
        v9 += 6;
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_100492678(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830FE0();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_10052F0B8(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgBool", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_100492764(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgBufferSize");
  __chkstk_darwin(v6, v7);
  v9 = &v13 - v8;
  bzero(&v13 - v8, v6);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100831048();
    if (uint64)
    {
LABEL_3:
      if (*(*(a1 + 72) + 80) < 1)
      {
        v10 = 13;
      }

      else
      {
        v10 = sub_10052F144(uint64, v9, v6);
      }

      goto LABEL_8;
    }
  }

  else if (uint64)
  {
    goto LABEL_3;
  }

  v10 = 1;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_dictionary_set_string(v12, "kCBMsgArgBufferName", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_1004928E8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  bzero(v18, 0x21AuLL);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008310B0();
  }

  if (uint64)
  {
    v6 = sub_10052F268(uint64, v18);
  }

  else
  {
    v6 = 1;
  }

  v7 = xpc_array_create(0, 0);
  v20 = 0;
  v21 = 0;
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    if (v18[0])
    {
      xdicta = v9;
      v17 = a1;
      v10 = 0;
      v11 = &v19;
      do
      {
        v12 = xpc_dictionary_create(0, 0, 0);
        *(&v20 + v10) = v12;
        xpc_dictionary_set_uint64(v12, "kCBMsgArgRetX", *(v11 - 10));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgRssi", *(v11 - 9));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgNoise", *(v11 - 8));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgSnr", *(v11 - 7));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgDataRate", *(v11 - 3));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgJitterBuffer", *(v11 - 2));
        xpc_dictionary_set_uint64(v12, "kCBMsgArgCodecType", *(v11 - 1));
        xpc_dictionary_set_string(v12, "kCBMsgArgName", v11);
        xpc_array_set_value(v7, 0xFFFFFFFFFFFFFFFFLL, v12);
        ++v10;
        v11 += 268;
      }

      while (v10 < v18[0]);
      v9 = xdicta;
      xpc_dictionary_set_value(xdicta, "kCBMsgArgBTLinkQualityData", v7);
      a1 = v17;
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    v13 = &v20;
    v14 = 1;
    do
    {
      v15 = v14;
      if (*v13)
      {
        xpc_release(*v13);
      }

      v14 = 0;
      v13 = &v21;
    }

    while ((v15 & 1) != 0);
    xpc_release(v7);
    xpc_release(v9);
  }
}

void sub_100492B78(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  uuid = xpc_dictionary_get_uuid(value, "kCBMsgArgUUID");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgBool");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100831118();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v8 = sub_10052F35C(uint64, uuid, v7);
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

uint64_t sub_100492C7C(uint64_t a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "MBFXPC LOG: BTLocalDeviceMsgHandler::~BTLocalDeviceMsgHandler() %p", &v4, 0xCu);
  }

  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *a1 = &off_100AF7B80;
  sub_10007A068(a1 + 8);
  return a1;
}

void sub_100492D5C(uint64_t a1)
{
  sub_100492C7C(a1);

  operator delete();
}

uint64_t sub_100492D94(uint64_t a1)
{
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100831180();
  }

  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v2 = *(a1 + 80);
  v3 = (a1 + 88);
  if (v2 != (a1 + 88))
  {
    do
    {
      v4 = v2[4];
      v13 = 0uLL;
      v14 = 0;
      v6 = v4[2];
      v5 = v4[3];
      v13 = *v4;
      v14 = v6;
      v7 = v4[5];
      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(&v13 + 1) == 0;
      }

      v9 = v8 && v13 == 0;
      if (v9 || *(a1 + 104) != 1)
      {
        if (v5)
        {
          if (*(a1 + 105) == 1)
          {
            sub_10052E3E4(v7);
            *(a1 + 105) = 0;
          }

          else if (*(a1 + 106) == 1)
          {
            sub_10052E5D0(v7);
            *(a1 + 106) = 0;
          }
        }
      }

      else
      {
        sub_10052D05C(v7, &v13);
        *(a1 + 104) = 0;
      }

      free(v4);
      v10 = v2[1];
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
          v11 = v2[2];
          v8 = *v11 == v2;
          v2 = v11;
        }

        while (!v8);
      }

      v2 = v11;
    }

    while (v11 != v3);
  }

  sub_10000CEDC(a1 + 80, *(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = v3;
  return sub_1000088CC(v15);
}

void sub_100492EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100492FDC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100492FFC()
{
  v0 = objc_autoreleasePoolPush();
  xmmword_100BCE558 = 0u;
  unk_100BCE568 = 0u;
  dword_100BCE578 = 1065353216;
  __cxa_atexit(sub_10048D0D0, &xmmword_100BCE558, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100493068(uint64_t a1)
{
  *a1 = &off_100AF7ED0;
  *(a1 + 12) = 0;
  *(a1 + 8) = -1;
  v2 = (a1 + 8);
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    CFNumberGetValue(v3, kCFNumberIntType, v2);
    CFRelease(v4);
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v6 = *v2;
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "deviceClass=%d", v8, 8u);
  }

  return a1;
}

uint64_t sub_1004931B8(uint64_t a1, std::string *a2)
{
  bzero(&v4, 0x500uLL);
  uname(&v4);
  if (!v4.machine[0])
  {
    return 1;
  }

  std::string::assign(a2, v4.machine);
  return 0;
}

uint64_t sub_10049324C(uint64_t a1, std::string *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = MGCopyAnswer();
  v5 = v4;
  if (v4)
  {
    std::string::assign(a2, [v4 UTF8String]);
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "modelName=%@", &v9, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  objc_autoreleasePoolPop(v3);
  return v7;
}

uint64_t sub_100493364(uint64_t a1, uint64_t a2)
{
  if (*(sub_10000C7D0() + 800) >> 3 >= 0x271u && *(sub_10000C7D0() + 800) >> 4 <= 0x176u && qword_100B6E2F8 != -1)
  {
    sub_1008311E8();
  }

  v3 = objc_autoreleasePoolPush();
  v4 = MGCopyAnswer();
  v5 = v4;
  if (v4)
  {
    std::string::assign(a2, [v4 UTF8String]);
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "productType=%@", &v13, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) >= 0xBB8u)
  {
    if (qword_100B6E308 != -1)
    {
      sub_1008311FC();
    }

    if (byte_100B6E300 == 1)
    {
      std::string::assign(a2, "WatchX,X");
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        if (*(a2 + 23) >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        v13 = 136315138;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Override productType=%s", &v13, 0xCu);
      }

      v7 = 0;
    }
  }

  if (byte_100B6E2F0 == 1)
  {
    std::string::assign(a2, "WatchX,X");
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      v13 = 136315138;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Override productType=%s", &v13, 0xCu);
    }

    v7 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v7;
}

void sub_100493604(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskLocalNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E2F0);
  v3 = byte_100B6E2F0;
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch in readProductType", buf, 2u);
  }
}

void sub_100493708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10049373C(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskCODandNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6E300);
  v3 = byte_100B6E300;
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

void sub_100493840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100493874(uint64_t a1, std::string *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSProcessInfo processInfo];
  v5 = [v4 operatingSystemVersionString];
  std::string::assign(a2, [v5 UTF8String]);

  objc_autoreleasePoolPop(v3);
  return 0;
}

uint64_t sub_100493908(uint64_t a1, std::string *a2, char a3)
{
  v5 = objc_autoreleasePoolPush();
  Current = CFAbsoluteTimeGetCurrent();
  v7 = CFLocaleCopyCurrent();
  v8 = CFDateFormatterCreate(0, v7, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
  CFRelease(v7);
  Format = CFDateFormatterGetFormat(v8);
  if (Format)
  {
    v10 = Format;
    if (CFStringFind(Format, @"H", 0).location == -1)
    {
      location = CFStringFind(v10, @"k", 0).location;
      v12 = @"yy'/'MM'/'dd', 'HH':'mm':'ss";
      if (location != -1 || (a3 & 1) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_7:
    v12 = @"yy'/'MM'/'dd', 'HH':'mm':'ss";
    goto LABEL_9;
  }

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  v12 = @"yy'/'MM'/'dd', 'hh':'mm':'ss";
LABEL_9:
  CFDateFormatterSetFormat(v8, v12);
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v8, Current);
  if (StringWithAbsoluteTime)
  {
    v14 = StringWithAbsoluteTime;
    std::string::assign(a2, [(__CFString *)StringWithAbsoluteTime UTF8String]);
    CFRelease(v14);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  CFRelease(v8);
  objc_autoreleasePoolPop(v5);
  return v15;
}

uint64_t sub_100493A44(uint64_t a1, std::string *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = MGCopyAnswer();
  v5 = v4;
  if (v4)
  {
    std::string::assign(a2, [v4 UTF8String]);
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Chipset Revision=%@", &v9, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  objc_autoreleasePoolPop(v3);
  return v7;
}

BOOL sub_100493B5C(uint64_t a1, int a2)
{
  v25 = 1;
  memset(&v24, 0, sizeof(v24));
  sub_100007E30(&v24, "");
  if (a2 <= 511)
  {
    if (a2 <= 15)
    {
      switch(a2)
      {
        case 1:
          v4 = "handsfree";
          break;
        case 2:
          v4 = "phonebook";
          break;
        case 8:
          v4 = "avrcp";
          break;
        default:
          goto LABEL_38;
      }
    }

    else if (a2 > 127)
    {
      if (a2 == 128)
      {
        v4 = "wiap";
      }

      else
      {
        if (a2 != 256)
        {
          goto LABEL_38;
        }

        v4 = "netSharing";
      }
    }

    else if (a2 == 16)
    {
      v4 = "a2dp";
    }

    else
    {
      if (a2 != 32)
      {
        goto LABEL_38;
      }

      v4 = "hid";
    }
  }

  else if (a2 >= 0x20000)
  {
    if (a2 >= 0x80000)
    {
      if (a2 == 0x80000)
      {
        v4 = "aacp";
      }

      else
      {
        if (a2 != 0x100000)
        {
          goto LABEL_38;
        }

        v4 = "GATT";
      }
    }

    else if (a2 == 0x20000)
    {
      v4 = "wiapSink";
    }

    else
    {
      if (a2 != 0x40000)
      {
        goto LABEL_38;
      }

      v4 = "wirelessCarplay";
    }
  }

  else if (a2 > 4095)
  {
    if (a2 == 4096)
    {
      v4 = "netConsumer";
    }

    else
    {
      if (a2 != 0x2000)
      {
        goto LABEL_38;
      }

      v4 = "braille";
    }
  }

  else if (a2 == 512)
  {
    v4 = "MAP";
  }

  else
  {
    if (a2 != 2048)
    {
      goto LABEL_38;
    }

    v4 = "d2d";
  }

  std::string::assign(&v24, v4);
LABEL_38:
  v5 = sub_10000E92C();
  sub_100007E30(buf, "ServiceSettings");
  v6 = (*(*v5 + 72))(v5, &v24, buf, &v25);
  v7 = v6;
  if (v29 < 0)
  {
    operator delete(*buf);
    if (v7)
    {
      goto LABEL_40;
    }

LABEL_46:
    v11 = *(a1 + 8);
    if (v11 <= 5)
    {
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          if (MGGetBoolAnswer())
          {
            v12 = 18824121;
          }

          else
          {
            v12 = 18823865;
          }

          goto LABEL_87;
        }

        if (v11 == 4)
        {
          v13 = sub_10000C798();
          if ((*(*v13 + 448))(v13))
          {
            v14 = 128;
          }

          else
          {
            v14 = 127;
          }

          v12 = v14 + 1581113;
          goto LABEL_87;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v12 = 18824123;
          goto LABEL_87;
        }

        if (v11 == 2)
        {
          v12 = 18430649;
          goto LABEL_87;
        }
      }

LABEL_83:
      v12 = 789176;
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100831224(v11, v19);
      }

      goto LABEL_87;
    }

    if (v11 > 8)
    {
      if (v11 != 9)
      {
        if (v11 == 11)
        {
          v12 = 1784505;
          goto LABEL_87;
        }

        goto LABEL_83;
      }

      v23 = 0;
      v18 = sub_10000E92C();
      sub_100007E30(buf, "IAP");
      sub_100007E30(__p, "enableIAP");
      (*(*v18 + 72))(v18, buf, __p, &v23);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      v12 = 1782201;
      if (v23 != 1)
      {
        v12 = 1782073;
        goto LABEL_87;
      }

      v16 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 1782201;
        v17 = "Warning: Enabling IAP using override, serviceMask is now 0x%x";
        goto LABEL_82;
      }
    }

    else
    {
      if (v11 != 6)
      {
        if (v11 == 7)
        {
          v12 = 0x20000;
          goto LABEL_87;
        }

        goto LABEL_83;
      }

      v23 = 0;
      v15 = sub_10000E92C();
      sub_100007E30(buf, "StackSettings");
      sub_100007E30(__p, "HFServiceEnable");
      (*(*v15 + 72))(v15, buf, __p, &v23);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      v12 = 1581113;
      if (v23 != 1)
      {
        v12 = 1581112;
        goto LABEL_87;
      }

      v16 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 1581113;
        v17 = "Warning: Enabling HF Service using override, serviceMask is now 0x%x";
LABEL_82:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 8u);
      }
    }

LABEL_87:
    v10 = (v12 & a2) != 0;
    goto LABEL_88;
  }

  if (!v6)
  {
    goto LABEL_46;
  }

LABEL_40:
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v24.__r_.__value_.__r.__words[0];
    }

    *buf = 67109378;
    *&buf[4] = v25;
    v27 = 2082;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Using override value %d for service %{public}s", buf, 0x12u);
  }

  v10 = v25;
LABEL_88:
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_100494130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100494218(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  if (v1 > 0xA)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_1008A87A0[v1];
  }

  v9 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "ClassOfDevice");
  v4 = (*(*v3 + 88))(v3, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return v2;
    }
  }

  else if (!v4)
  {
    return v2;
  }

  v2 = v9;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Class of device set to %d", buf, 8u);
  }

  return v2;
}

void sub_100494374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004943B0(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 8);
    v14 = 67109120;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "getPairingInputs deviceClass=%d", &v14, 8u);
  }

  v4 = *(a1 + 8);
  if ((v4 - 1) < 3)
  {
    v8 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
LABEL_10:
      v6 = 3;
      goto LABEL_25;
    }

    LOWORD(v14) = 0;
    v9 = "iphone/ipod/ipad";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, &v14, 2u);
    goto LABEL_10;
  }

  if ((v4 - 6) < 2)
  {
    v5 = qword_100BCE8D8;
    v6 = 1;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    LOWORD(v14) = 0;
    v7 = "watch/homepod";
    goto LABEL_20;
  }

  if (v4 == 4)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      v7 = "appleTV";
LABEL_14:
      v6 = 2;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, &v14, 2u);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "dunno", &v14, 2u);
  }

  v11 = sub_1000271F0();
  if ((v11 - 189) < 5)
  {
    v5 = qword_100BCE8D8;
    v6 = 1;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    LOWORD(v14) = 0;
    v7 = "531/541/8006";
    goto LABEL_20;
  }

  if (v11 != 303)
  {
    v8 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    LOWORD(v14) = 0;
    v9 = "default";
    goto LABEL_9;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    v7 = "unknown";
    goto LABEL_14;
  }

LABEL_24:
  v6 = 2;
LABEL_25:
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v14 = 67109120;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "selected input caps : %d", &v14, 8u);
  }

  return v6;
}

uint64_t sub_100494664(uint64_t a1)
{
  if ((*(*a1 + 368))(a1))
  {
    goto LABEL_13;
  }

  v9 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "SupportsScalablePipes");
  v2 = (*(*v1 + 72))(v1, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_13:
    v5 = 1;
    return v5 & 1;
  }

  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_6:
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: Overriding scalable pipe support - pipes are %{public}s", buf, 0xCu);
  }

  v5 = v9;
  return v5 & 1;
}

void sub_1004947EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL sub_100494828(uint64_t a1)
{
  if ((*(*a1 + 368))(a1))
  {
    return 1;
  }

  v2 = sub_1000271F0();
  return (v2 - 4) < 2 || v2 == 148;
}

uint64_t sub_100495340()
{
  if ((*(sub_10000C7D0() + 800) - 3000) >= 0x3E8)
  {
    sub_1000271F0();
  }

  return 1;
}

uint64_t sub_1004953D0()
{
  v0 = sub_10000C7D0();
  if (sub_1004106D0(v0, 0x1388u))
  {
    return 1;
  }

  v2 = *(sub_10000C7D0() + 800);
  v3 = v2 - 2000;
  v4 = (v2 - 15) < 0x7C1;
  return v3 < 0x7D0 || v4;
}

BOOL sub_100495420(uint64_t a1)
{
  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) > 0xBB7u)
  {
    return 1;
  }

  if ((*(*a1 + 416))(a1))
  {
    return (*(sub_10000C7D0() + 800) - 20) < 0x7BC;
  }

  v3 = sub_1000271F0() - 10;
  result = 1;
  switch(v3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 43:
    case 44:
    case 45:
    case 47:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 102:
    case 103:
    case 104:
    case 105:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 153:
    case 155:
    case 157:
    case 161:
    case 162:
    case 286:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

BOOL sub_100495558(uint64_t a1)
{
  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) > 0xBB7u)
  {
    return 1;
  }

  if ((*(*a1 + 416))(a1))
  {
    return (*(sub_10000C7D0() + 800) - 20) < 0x7BC;
  }

  v3 = sub_1000271F0() - 20;
  result = 1;
  switch(v3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 37:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 92:
    case 93:
    case 94:
    case 95:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 107:
    case 108:
    case 109:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 137:
    case 138:
    case 140:
    case 143:
    case 145:
    case 147:
    case 151:
    case 152:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

BOOL sub_100495638(uint64_t a1)
{
  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) > 0xBB7u)
  {
    return 1;
  }

  if ((*(*a1 + 416))(a1))
  {
    return (*(sub_10000C7D0() + 800) - 20) < 0x7BC;
  }

  v3 = sub_1000271F0() - 20;
  result = 1;
  switch(v3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 37:
    case 80:
    case 81:
    case 92:
    case 93:
    case 94:
    case 95:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 107:
    case 108:
    case 109:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 137:
    case 140:
    case 143:
    case 147:
    case 151:
    case 152:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

BOOL sub_100495718()
{
  v0 = *(sub_10000C7D0() + 800);
  v1 = v0 - 3000;
  v2 = v0 - 22;
  return v1 < 0x3E8 || v2 < 0x7BA;
}

BOOL sub_10049574C()
{
  v10 = 1;
  v0 = sub_10000E92C();
  sub_100007E30(v8, "Device");
  sub_100007E30(__p, "EnableHDR");
  (*(*v0 + 72))(v0, v8, __p, &v10);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v1 = *(sub_10000C7D0() + 800);
  if ((v1 - 3000) < 0x3E8)
  {
    return 1;
  }

  v2 = sub_10000C798();
  if ((*(*v2 + 368))(v2))
  {
    return 1;
  }

  v4 = sub_10000C798();
  if ((*(*v4 + 416))(v4))
  {
    v5 = (v1 - 21) >= 0x7BB;
  }

  else
  {
    v5 = (v1 - 20) >= 0x7BC;
  }

  return !v5;
}

void sub_1004958A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100495908()
{
  v0 = *(sub_10000C7D0() + 800);
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = 1;
    if ((v0 - 13) >= 0x7C3 && (v0 - 5000) >= 0x3E8)
    {
      return (v0 - 3000) < 0x3E8;
    }
  }

  return result;
}

uint64_t sub_100495970(uint64_t a1)
{
  result = (*(*a1 + 416))(a1);
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t sub_1004959DC(uint64_t a1)
{
  result = (*(*a1 + 416))(a1);
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t sub_100495A48()
{
  if (qword_100B6E318 != -1)
  {
    sub_10083129C();
  }

  return byte_100B6E310;
}

uint64_t sub_100495AD4()
{
  v0 = 1;
  if ((*(sub_10000C7D0() + 800) - 3000) >= 0x3E8)
  {
    v1 = sub_1000271F0();
    if ((v1 - 258 > 0x15 || v1 == 259) && (v1 - 119 > 0x31 || ((1 << (v1 - 119)) & 0x2000000078F0FLL) == 0) && (v1 > 0x37 || ((1 << v1) & 0xE3F00000000000) == 0))
    {
      return 0;
    }
  }

  return v0;
}

id sub_100495C00(uint64_t a1)
{
  result = MGGetStringAnswer();
  if (result)
  {
    v3 = result;
    v4 = [result isEqualToString:a1];
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t sub_100495C4C()
{
  if (qword_100B6E338 != -1)
  {
    sub_1008312C4();
  }

  return byte_100B6E330;
}

uint64_t sub_100495CAC()
{
  if (qword_100B6E348 != -1)
  {
    sub_1008312D8();
  }

  return byte_100B6E340;
}

uint64_t sub_100495DB8()
{
  if (qword_100B6E398 != -1)
  {
    sub_10083133C();
  }

  return byte_100B6E390;
}

BOOL sub_100495E18()
{
  if (qword_100B6E3A8 != -1)
  {
    sub_100831350();
  }

  return (byte_100B6E3A0 & 1) == 0;
}

void sub_100495E58(id a1)
{
  v1 = MGGetProductType();
  if (v1 <= 1110205731)
  {
    if (v1 != 33245053)
    {
      v2 = 741626682;
LABEL_7:
      if (v1 != v2)
      {
        return;
      }
    }
  }

  else if (v1 != 1110205732 && v1 != 2692844695)
  {
    v2 = 2271819421;
    goto LABEL_7;
  }

  byte_100B6E3A0 = 1;
}

uint64_t sub_100495ED8()
{
  v8 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(buf, "SMP");
  sub_100007E30(__p, "DisableCTKD");
  v1 = (*(*v0 + 72))(v0, buf, __p, &v8);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(*buf);
    if (!v1)
    {
      return v8;
    }
  }

  else if (!v1)
  {
    return v8;
  }

  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Warning: DisableCTKD", buf, 2u);
  }

  return v8;
}

void sub_100495FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10049600C()
{
  if (qword_100B6E3B8 != -1)
  {
    sub_100831364();
  }

  return byte_100B6E3B0;
}

void sub_100496044(id a1)
{
  v1 = malloc_type_malloc(0x16uLL, 0x100004077774924uLL);
  snprintf(v1, 0x16uLL, "%s%s", "IODeviceTree", ":/product");
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, v1);
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"boot-ios-diagnostics", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    IOObjectRelease(v3);
    if (v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (v1)
    {
LABEL_8:
      free(v1);
    }
  }

  byte_100B6E3B0 = v5;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting diagnositcs mode to %d", buf, 8u);
  }
}

void sub_1004961A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 360))(v1) & 1) != 0 || ((*(*v1 + 416))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2472))(v2);
    byte_100B6E3C0 = v3;
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
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for extended scans : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableExtScans");
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
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisableExtScans=%d", buf, 8u);
    }

    byte_100B6E3C0 &= v13 ^ 1;
  }

LABEL_18:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E3C0)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Extended Scanning is %s", buf, 0xCu);
  }
}

void sub_1004964C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100496500(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 360))(v1) & 1) != 0 || ((*(*v1 + 416))(v1) & 1) != 0 || (*(*v1 + 368))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2328))(v2);
    byte_100B6E3D0 = v3;
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
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertisingsets : %s", buf, 0xCu);
    }

    v13 = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "AE");
    sub_100007E30(__p, "DisableExtAdvertising");
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
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding DisableAdvertising=%d", buf, 8u);
    }

    byte_100B6E3D0 &= v13 ^ 1;
  }

LABEL_18:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E3D0)
    {
      v10 = "enabled";
    }

    else
    {
      v10 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "support for Extended Advertising is %s", buf, 0xCu);
  }
}

void sub_100496824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100496860()
{
  if (qword_100B6E3E8 != -1)
  {
    sub_100831378();
  }

  return byte_100B6E3E0;
}

void sub_100496898(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2336))(v1);
  byte_100B6E3E0 = v2;
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for periodic advertising advertiser : %s", buf, 0xCu);
    if ((byte_100B6E3E0 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v2)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "DisablePeriodicAdvertisingAdv");
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
      goto LABEL_16;
    }
  }

  else if (!v6)
  {
    goto LABEL_16;
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding DisablePeriodicAdvertisingAdv=%d", buf, 8u);
  }

  byte_100B6E3E0 &= v12 ^ 1;
LABEL_16:
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E3E0)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for Periodic Advertising Advertiser is %s", buf, 0xCu);
  }
}

void sub_100496AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100496B34()
{
  if (qword_100B6E3F8 != -1)
  {
    sub_10083138C();
  }

  return byte_100B6E3F0;
}

void sub_100496B6C(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2344))(v1);
  byte_100B6E3F0 = v2;
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for periodic advertising synchronizer : %s", buf, 0xCu);
    if ((byte_100B6E3F0 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v2)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "DisablePeriodicAdvertisingSync");
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
      goto LABEL_16;
    }
  }

  else if (!v6)
  {
    goto LABEL_16;
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding DisablePeriodicAdvertisingSync=%d", buf, 8u);
  }

  byte_100B6E3F0 &= v12 ^ 1;
LABEL_16:
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E3F0)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for Periodic Advertising Synchronizer is %s", buf, 0xCu);
  }
}

void sub_100496DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100496E08()
{
  if (qword_100B6E408 != -1)
  {
    sub_1008313A0();
  }

  return byte_100B6E400;
}

void sub_100496E40(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2352))(v1);
  byte_100B6E400 = v2;
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for periodic advertising sync transfer sender : %s", buf, 0xCu);
    if ((byte_100B6E400 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v2)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "DisablePeriodicAdvSyncTranSender");
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
      goto LABEL_16;
    }
  }

  else if (!v6)
  {
    goto LABEL_16;
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding DisablePeriodicAdvSyncTranSender=%d", buf, 8u);
  }

  byte_100B6E400 &= v12 ^ 1;
LABEL_16:
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E400)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for Periodic Advertising Sync Transfer Sender is %s", buf, 0xCu);
  }
}

void sub_1004970A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1004970DC()
{
  if (qword_100B6E418 != -1)
  {
    sub_1008313B4();
  }

  return byte_100B6E410;
}

void sub_100497114(id a1)
{
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 2360))(v1);
  byte_100B6E410 = v2;
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for periodic advertising sync transfer recipient: %s", buf, 0xCu);
    if ((byte_100B6E410 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v2)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "DisablePeriodicAdvSyncTranRecipient");
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
      goto LABEL_16;
    }
  }

  else if (!v6)
  {
    goto LABEL_16;
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding DisablePeriodicAdvSyncTranRecipient=%d", buf, 8u);
  }

  byte_100B6E410 &= v12 ^ 1;
LABEL_16:
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E410)
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "support for Periodic Advertising Sync Transfer Recipient is %s", buf, 0xCu);
  }
}

void sub_100497374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1004973B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 360))(v1) & 1) != 0 || (*(*v1 + 416))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2368))(v2);
    byte_100B6E420 = v3;
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
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with scan source core : %s", &v8, 0xCu);
    }
  }

  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E420)
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "support for extended advertising report with scan source core is %s", &v8, 0xCu);
  }
}

void sub_1004975B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 360))(v1) & 1) != 0 || (*(*v1 + 416))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2376))(v2);
    byte_100B6E430 = v3;
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
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with pass up : %s", &v8, 0xCu);
    }
  }

  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E430)
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "support for extended advertising report with pass up is %s", &v8, 0xCu);
  }
}

void sub_1004977B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 360))(v1) & 1) != 0 || (*(*v1 + 416))(v1))
  {
    v2 = sub_10000C7D0();
    v3 = (*(*v2 + 2384))(v2);
    byte_100B6E440 = v3;
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
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with ELNA mode : %s", &v8, 0xCu);
    }
  }

  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E440)
    {
      v7 = "enabled";
    }

    else
    {
      v7 = "disabled";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "support for extended advertising report with ELNA mode is %s", &v8, 0xCu);
  }
}

uint64_t sub_1004979B0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100497A40;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E458 != -1)
  {
    dispatch_once(&qword_100B6E458, block);
  }

  return byte_100B6E450;
}

void sub_100497A40(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((*(*v1 + 352))(v1) & 1) == 0 && ((*(*v1 + 432))(v1) & 1) == 0 && ((*(*v1 + 408))(v1) & 1) == 0 && !(*(*v1 + 416))(v1))
  {
    goto LABEL_29;
  }

  v2 = sub_10000C7D0();
  byte_100B6E450 = (*(*v2 + 2544))(v2);
  if (sub_1000271F0() == 100 || sub_1000271F0() == 101)
  {
    v3 = sub_10000C7D0();
    (*(*v3 + 16))(&buf);
    if ((v16 & 0x80000000) == 0)
    {
      if (v16 != 2 || buf != 12355)
      {
        goto LABEL_15;
      }

LABEL_13:
      byte_100B6E450 = 0;
      goto LABEL_15;
    }

    if (*(&buf + 1) != 2)
    {
      operator delete(buf);
      goto LABEL_15;
    }

    v4 = *buf;
    operator delete(buf);
    if (v4 == 12355)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E450)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BT chip support for LowPowerCore Scan : %s", &buf, 0xCu);
  }

  v14 = 0;
  v7 = sub_10000E92C();
  sub_100007E30(&buf, "LowPowerCoreScan");
  sub_100007E30(__p, "DisableLowPowerCoreScan");
  v8 = (*(*v7 + 72))(v7, &buf, __p, &v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(buf);
    if (!v8)
    {
      goto LABEL_29;
    }
  }

  else if (!v8)
  {
    goto LABEL_29;
  }

  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding Disabling LowPowerCore Scan=%d", &buf, 8u);
  }

  byte_100B6E450 &= v14 ^ 1;
LABEL_29:
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E450)
    {
      v11 = "enabled";
    }

    else
    {
      v11 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "support for new LowPowerCore scan is %s", &buf, 0xCu);
  }
}

void sub_100497DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_100497E34(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100497EC4;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E468 != -1)
  {
    dispatch_once(&qword_100B6E468, block);
  }

  return byte_100B6E460;
}

void sub_100497EC4(uint64_t a1)
{
  if ((*(**(a1 + 32) + 352))(*(a1 + 32)))
  {
    v1 = sub_10000C7D0();
    v2 = (*(*v1 + 2392))(v1);
    byte_100B6E460 = v2;
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "disabled";
      if (v2)
      {
        v4 = "enabled";
      }

      v7 = 136315138;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with SC Compensation : %s", &v7, 0xCu);
    }
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6E460)
    {
      v6 = "enabled";
    }

    else
    {
      v6 = "disabled";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "support for extended advertising report with SC Compensation is %s", &v7, 0xCu);
  }
}

uint64_t sub_100498058(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004980E8;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E478 != -1)
  {
    dispatch_once(&qword_100B6E478, block);
  }

  return dword_100B6E470;
}

void sub_1004980E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10000C7D0();
  v3 = (*(*v2 + 2408))(v2);
  if (v3)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with antenna enabled", buf, 2u);
    }
  }

  v5 = sub_10000C7D0();
  v6 = (*(*v5 + 2400))(v5);
  if (v6)
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BT chip support for extended advertising report with Coex Denial enabled", buf, 2u);
    }
  }

  v8 = *(sub_10000C7D0() + 800);
  if ((v8 - 1) > 0x7CE)
  {
    if ((v8 - 5000) <= 0x3E7)
    {
      if ((*(*v1 + 352))(v1))
      {
        if (v6)
        {
LABEL_18:
          v10 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : Yes", buf, 2u);
          }

          dword_100B6E470 = 2;
          goto LABEL_33;
        }
      }

      else if (v6 & (*(*v1 + 416))(v1))
      {
        goto LABEL_18;
      }

      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : No", buf, 2u);
      }

LABEL_33:
      if ((v6 & 1) == 0)
      {
        return;
      }

      goto LABEL_39;
    }

    if ((v8 - 2000) > 0x7CF)
    {
      return;
    }

    if ((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 416))(v1))
    {
      if (v6)
      {
LABEL_27:
        v12 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : Yes", buf, 2u);
        }

        dword_100B6E470 = 2;
        goto LABEL_38;
      }
    }

    else if (v6 & (*(*v1 + 408))(v1))
    {
      goto LABEL_27;
    }

    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : No", buf, 2u);
    }

LABEL_38:
    if (!v6)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v3)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : No", buf, 2u);
    }

    return;
  }

  if (((*(*v1 + 352))(v1) & 1) != 0 || ((*(*v1 + 416))(v1) & 1) != 0 || (*(*v1 + 456))(v1))
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType : Yes", buf, 2u);
    }

    dword_100B6E470 = 1;
  }

LABEL_39:
  v20 = 0;
  v15 = sub_10000E92C();
  sub_100007E30(buf, "BBFC");
  sub_100007E30(__p, "EnableEstimateScanRequestTxDeniedByCoex");
  v16 = (*(*v15 + 88))(v15, buf, __p, &v20);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(*buf);
    if (!v16)
    {
      return;
    }
  }

  else if (!v16)
  {
    return;
  }

  v17 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = dword_100B6E470;
    v22 = 1024;
    v23 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "getEstimateScanRequestTxDeniedByCoexType (overriden): original %d overriden %d", buf, 0xEu);
  }

  dword_100B6E470 = v20;
}