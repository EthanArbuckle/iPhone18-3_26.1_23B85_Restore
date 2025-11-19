void sub_100001F50(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100001FB8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100002020(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100002088(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000020F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000210C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void sub_10000212C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_100016130(v9, 2684354566, 0, a4, a5, a6, a7, a8, a9);
}

void sub_1000023E0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100002500(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000027B4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000281C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100002884(uint64_t a1)
{
  if (([*(a1 + 32) suppressLogging] & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052714();
    }

    v2 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting session thread...", v4, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _listenToCommand];
}

void sub_10000292C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100002ADC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100002B44(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100002DD4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100002E3C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100002F8C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000311C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000032AC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100003444(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100003680(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100003910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_100003940(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003958(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000039C0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100003A28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v6)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000528FC();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100052910();
    }

    v20 = *(*(a1 + 48) + 8);
    v24 = *(v20 + 40);
    sub_100016130(&v24, 83886080, v6, @"Failed to start session", v16, v17, v18, v19, v23);
    v21 = v24;
    v22 = *(v20 + 40);
    *(v20 + 40) = v21;
    goto LABEL_22;
  }

  [v5 setDelegate:WeakRetained];
  [WeakRetained setSession:v5];
  if (([*(a1 + 32) suppressLogging] & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005297C();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 360;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting session timeout to %ds...", buf, 8u);
    }
  }

  v9 = [WeakRetained session];
  [v9 setSessionTimeLimit:360.0];

  if (([*(a1 + 32) suppressLogging] & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052990();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting Card Emulation ...", buf, 2u);
    }
  }

  v11 = [WeakRetained session];
  v12 = [v11 startEmulation];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    sub_1000529B8(a1 + 48, &v23, buf);
    v22 = *buf;
LABEL_22:
  }

  [WeakRetained _hceSessionDidStart:v5 error:*(*(*(a1 + 48) + 8) + 40)];
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_100003CF8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100003D60(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100003DC8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100003E30(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004084(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000040EC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004154(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = [v2 session];
  if (v1 == 1)
  {
    [v2 _hceSessionDidEnd:v3];
  }

  else
  {
    [v2 hceSessionDidEndUnexpectedly:v3];
  }
}

void sub_100004A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100004A6C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004AD4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004B3C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004BA4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100004CA8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004D10(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004D78(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004DE0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004E48(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004EB0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004F18(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004F80(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100004FE8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100005550(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000055B8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100005620(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100005688(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000056F0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100005758(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000058CC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100006274(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000062DC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100006344(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000063AC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100006414(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000647C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000064E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _beginUpdate];
}

void sub_1000065E0(uint64_t a1)
{
  v6 = [*(a1 + 32) latestUpdate];
  v2 = [v6 productBuildVersion];
  [*(a1 + 40) setTargetBuildVersion:v2];

  v3 = [v6 productVersion];
  [*(a1 + 40) setTargetOSVersion:v3];

  v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 downloadSize]);
  [*(a1 + 40) setTargetSUBundleSize:v4];

  v5 = [*(a1 + 40) suController];
  [v5 download:v6];
}

void sub_100006740(uint64_t a1)
{
  v1 = [*(a1 + 32) suController];
  [v1 install];
}

void sub_100006838(uint64_t a1)
{
  v2 = [*(a1 + 40) productBuildVersion];
  [*(a1 + 32) setTargetBuildVersion:v2];

  v3 = [*(a1 + 32) currentBuildVersion];
  [MIBUDefaultPreferences setObject:v3 forKey:@"PreviousOSVersion"];

  v4 = [*(a1 + 32) targetBuildVersion];
  [MIBUDefaultPreferences setObject:v4 forKey:@"TargetOSVersion"];

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005314C();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = +[MIBUDefaultPreferences dictionaryRepresentation];
    v9 = [NSString stringWithFormat:@"Saved defaults %@", v8];
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  v10 = +[MIBUDataCollector sharedInstance];
  v14[0] = @"TargetBuildVersion";
  v11 = [*(a1 + 32) targetBuildVersion];
  v14[1] = @"TargetOSVersion";
  v15[0] = v11;
  v12 = [*(a1 + 32) targetOSVersion];
  v15[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v10 addKeyEvent:@"SSUUpdateInstall" additionalData:v13];
}

void sub_100006A78(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100006B94(uint64_t a1)
{
  v2 = +[MIBUDeviceController sharedInstance];
  v3 = [v2 getBatteryLevel];

  v4 = +[MIBUDataCollector sharedInstance];
  v17 = @"BatteryLevel";
  v18 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v4 addKeyEvent:@"SSUUpdateEnd" additionalData:v5];

  v6 = *(a1 + 32);
  if (!v6)
  {
    v7 = +[MIBUDataCollector sharedInstance];
    [v7 addKeyEvent:@"SSUWillReboot"];

    v6 = *(a1 + 32);
  }

  [*(a1 + 40) setError:v6];
  if (qword_1000B84A8[0] != -1)
  {
    sub_100053160();
  }

  v8 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = v8;
    v11 = [v9 error];
    v12 = [NSString stringWithFormat:@"Software update finished with error: %@", v11];
    *buf = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  [*(a1 + 40) _endUpdate:*(a1 + 32) == 0];
}

void sub_100006D90(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100006EB0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100006FEC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100007164(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100007284(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000073E4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000077C4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000782C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100007894(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000078FC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100007D20(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100007D88(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100007DF0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100008110(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100008178(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000081E0(uint64_t a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100053478();
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [NSString stringWithFormat:@"Operation watchdog timer fired!"];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v7, 0x16u);
  }

  v6 = +[MIBUDeviceController sharedInstance];
  [v6 reboot];
}

void sub_100008304(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000084A8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100008840(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000088A8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100008910(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100008978(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100008AE8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100008B50(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009AB0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009B18(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009B80(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009BE8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009C50(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009CB8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009D20(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009D88(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009DF0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009E58(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009EC0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009F28(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009F90(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009FF8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000A060(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000A0C8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000A130(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000A198(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000A4FC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000A564(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000A5CC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000AB18(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000AB80(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000ABE8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000AC50(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000ACB8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000AD20(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000AD88(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000ADF0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000AE58(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000B5E4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000B64C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000B6B4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000B71C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000B8D8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000B940(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C014(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C07C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C0E4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C14C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C1B4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C21C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C284(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C2EC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C354(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C3BC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C424(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C48C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000C4DC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

void sub_10000C4FC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_10000C51C(uint64_t a1, void *a2)
{

  return a2;
}

BOOL sub_10000C538()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10000C550(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void sub_10000C55C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

BOOL sub_10000C57C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10000C594()
{

  return archive_error_string();
}

BOOL sub_10000C5AC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_10000C608(id a1)
{
  qword_1000B8390 = objc_alloc_init(MIBUDataCollector);

  _objc_release_x1();
}

void sub_10000C828(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C890(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000C9AC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000CCC4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000CD2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishCollectingThermalData];
}

void sub_10000CE94(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000CEFC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000D234(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000D4BC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000D6F8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000D760(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000D7C8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000DA8C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000DAF4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000DDCC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000DE34(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000E280(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000E2E8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000E59C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prepareThermalDataFile];
}

void sub_10000E5DC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000E644(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _collectThermalData];
}

void sub_10000EB60(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000ED54(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10000FBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FC0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000FC24(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000FC84(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010008(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010194(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010578(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000105E0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010648(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010B84(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010BEC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010C54(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010CBC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010D24(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010D8C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010DF4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010E5C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100010FB8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100011224(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100011498(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100011500(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100011568(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055CAC();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100055CC0();
    }
  }
}

void sub_1000115DC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100011A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 56));
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak((v28 - 136));
  _Unwind_Resume(a1);
}

void sub_100011A70(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100011AD8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100011B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011C18;
  block[3] = &unk_10009A4F8;
  objc_copyWeak(&v10, (a1 + 56));
  v7 = v3;
  v9 = *(a1 + 48);
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v10);
}

void sub_100011C18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*(a1 + 32))
  {
    sub_100055D84((a1 + 32));
  }

  else
  {
    v3 = dispatch_semaphore_create(0);
    [WeakRetained setHeartbeatConnectionSem:v3];

    [*(*(*(a1 + 48) + 8) + 40) doubleValue];
    [WeakRetained setHeartbeatPeriod:?];
    v4 = [WeakRetained session];
    [v4 setSuppressLogging:1];

    [*(*(*(a1 + 56) + 8) + 40) doubleValue];
    v6 = (v5 * 1000000000.0);
    do
    {
      v7 = dispatch_time(0, v6);
      v8 = [WeakRetained heartbeatConnectionSem];
      v9 = dispatch_semaphore_wait(v8, v7);
    }

    while (!v9);
    if (qword_1000B84A8[0] != -1)
    {
      sub_100055E4C();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Heartbeat disconnected!", buf, 2u);
    }

    [WeakRetained _restartSessionAfter:1 forceTerminate:0 andCompletion:0.0];
    [WeakRetained setHeartbeatConnectionSem:0];
    [WeakRetained setHeartbeatPeriod:0.0];
    v11 = [WeakRetained session];
    [v11 setSuppressLogging:0];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [*(a1 + 40) observers];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 didStopHeartbeat];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

void sub_100011EA8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100011F10(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100012028(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001215C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100012464(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000124CC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100012534(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100012690(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000129A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000129C8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100012A30(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100012A98(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100012CE4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100012D4C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100012EC4(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 48));
  objc_sync_enter(v2);
  [*(a1 + 32) _stopSessionRestartTimer];
  if (*(a1 + 64) == 1)
  {
    v3 = [v2 session];
    v14 = 0;
    [v3 endHCESession:&v14];
    v4 = v14;

    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = [v2 session];
    [v5 stopListening];
  }

  v6 = [v2 session];
  v13 = 0;
  [v6 waitForTermination:&v13];
  v4 = v13;

  if (v4)
  {
    goto LABEL_15;
  }

  if (*(a1 + 56) > 0.0)
  {
    if (![v2 terminated])
    {
      v7 = *(a1 + 56);
      v12 = 0;
      [v2 _startSessionRestartTimer:&v12 error:v7];
      v4 = v12;
      goto LABEL_15;
    }

    if (qword_1000B84A8[0] != -1)
    {
      sub_100055FEC();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      sub_100056014(v10, v15, v8);
    }
  }

  v4 = 0;
LABEL_15:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v4);
  }

  objc_sync_exit(v2);
}

void sub_1000130A8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000131C8(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionRestartTimer];
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained _isHeartbeatMode] & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100056080();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v13 = 134217984;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting Session Restart Timer with interval %lf ...", &v13, 0xCu);
    }
  }

  v6 = *(a1 + 48);
  v7 = +[NSDate date];
  v8 = [NSDate dateWithTimeInterval:v7 sinceDate:v6];

  v9 = [[PCPersistentTimer alloc] initWithFireDate:v8 serviceIdentifier:@"com.apple.mibu_nfc_timer" target:WeakRetained selector:"_restartSession:" userInfo:0];
  [WeakRetained setSessionRestartTimer:v9];

  v10 = [WeakRetained sessionRestartTimer];
  [v10 setMinimumEarlyFireProportion:1.0];

  v11 = [WeakRetained sessionRestartTimer];
  v12 = +[NSRunLoop mainRunLoop];
  [v11 scheduleInRunLoop:v12];

  objc_sync_exit(v2);
}

void sub_1000133CC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001353C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100013674(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100013794(uint64_t a1)
{
  obj = [*(a1 + 32) nfcInactivityTimer];
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4 = +[NSDate date];
  v5 = [NSDate dateWithTimeInterval:v4 sinceDate:v3];

  v6 = [[PCPersistentTimer alloc] initWithFireDate:v5 serviceIdentifier:@"com.apple.mibu_nfc_inactivity_timer" target:WeakRetained selector:"_nfcInactivityTimeoutHandler:" userInfo:0];
  [WeakRetained setNfcInactivityTimer:v6];

  v7 = [WeakRetained nfcInactivityTimer];
  [v7 setMinimumEarlyFireProportion:1.0];

  v8 = [WeakRetained nfcInactivityTimer];
  v9 = +[NSRunLoop mainRunLoop];
  [v8 scheduleInRunLoop:v9];

  objc_sync_exit(obj);
}

void sub_1000139D4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100013AFC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100013CD8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100013D40(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100013EF0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000140E4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_100016130(a1, 100663299, 0, a4, a5, a6, a7, a8, a9);
}

void sub_100014174(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000141DC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100014790(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000147F8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100014B04(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100056A7C();
  }
}

void sub_100014B6C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100056A7C();
  }
}

void sub_100014D5C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100014DC4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001506C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000150D4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001513C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015284(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015748(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000157B0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015818(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015880(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000158E8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015BE8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015C50(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015CB8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015DFC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015E64(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015ECC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100015FA0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016008(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000160E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_100016130(v9, 2684354560, 0, a4, a5, a6, a7, a8, a9);
}

void sub_100016100(void *a1, unsigned __int16 a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2 | 0xA0000000;

  sub_100016130(a1, v10, 0, a4, a5, a6, a7, a8, a9);
}

void sub_100016130(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v12 = a4;
    v13 = a3;
    v14 = [[NSMutableString alloc] initWithFormat:v12 arguments:&a9];

    v15 = sub_1000161E0(a2, v13, v14);

    v16 = v15;
    *a1 = v15;
  }
}

id sub_1000161E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v5)
  {
    [v8 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v9 = [NSError errorWithDomain:@"com.apple.MobileInBoxUpdater.ErrorDomain" code:a1 userInfo:v8];

  return v9;
}

id sub_1000162A8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = a2;
  v13 = [[NSMutableString alloc] initWithFormat:v11 arguments:&a9];

  v14 = sub_1000161E0(a1, v12, v13);

  return v14;
}

void sub_100016390(id a1)
{
  qword_1000B83A0 = objc_alloc_init(MIBUOperationFactory);

  _objc_release_x1();
}

void sub_1000164E0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100056A7C();
  }
}

void sub_100016634(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100056A7C();
  }
}

void sub_1000169FC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016A64(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016ACC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016B34(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016B9C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016D00(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016E48(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016EB0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016F18(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016F80(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100016FE8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017050(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000170B8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017120(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017188(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000171F0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017258(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000172C0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017328(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017390(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000173F8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017460(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000174C8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017530(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017598(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017600(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017668(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000176D0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000177C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_100016130(v9, 100663297, 0, a4, a5, a6, a7, a8, a9);
}

void sub_100017830(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

id sub_10001784C()
{

  return [v0 longLongValue];
}

id sub_100017864()
{

  return [v0 longLongValue];
}

void sub_1000179C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100017CE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100017D00(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017D68(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 40) + 8);
  obj = *(v9 + 40);
  sub_100016130(&obj, 3221225472, 0, @"Failed to instantiate DADiagnosticsLauncher", a5, a6, a7, a8, v11);
  objc_storeStrong((v9 + 40), obj);
  v10 = [*(a1 + 32) delegate];
  [v10 appDidLaunchWithError:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_100017E50(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017EB8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100017F20(uint64_t a1)
{
  v1 = [*(a1 + 32) diagsLauncher];
  [v1 launchDiagnostics];
}

void sub_100018170(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000181D8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100018374(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100018624(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001868C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

Class sub_100018780(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000B83C8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000188C4;
    v4[4] = &unk_10009B0E0;
    v4[5] = v4;
    v5 = off_10009B0C8;
    v6 = 0;
    qword_1000B83C8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000B83C8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("DADiagnosticsLauncher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100058614();
  }

  qword_1000B83C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000188C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000B83C8 = result;
  return result;
}

void sub_10001897C(id a1)
{
  qword_1000B83D0 = objc_alloc_init(MIBUTestPreferences);

  _objc_release_x1();
}

void sub_100019C30(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100056A7C();
  }
}

void sub_100019E24(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100019F6C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001A074(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001A1FC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001A390(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001A5A0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001A608(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001A790(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001AA60(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001AAC8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001AB30(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001AB98(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001AE5C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001AEC4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001AF2C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001B1F0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001B258(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001B2C0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001B8E8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001B950(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001B9B8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001BA20(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001BA88(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001BAF0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001BB58(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001BBC0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001BD1C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001BF88(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001C3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C3F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001C408(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001C470(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void sub_10001C688(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001C6F0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001C874(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001CA24(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

id sub_10001CB38()
{

  return [v0 code];
}

id sub_10001CB50()
{

  return [v0 setRejected:1];
}

void sub_10001CDB8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001CE20(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001CE88(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001CEF0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001D354(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001D3BC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001D748(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001D7B0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001DC90(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001DCF8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001DD60(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001DE78(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001DEE0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001E1A8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001E210(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void sub_10001E2F4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001E420(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001E7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E834(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001E84C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001E8B4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(a1[4] + 8) + 40), a4);
  v14 = a4;
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
}

void sub_10001E968(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001E9D0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001EBD4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001EC3C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001EE08(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001EE70(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001EFCC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001F11C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001F244(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001F3B8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001F420(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001F488(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001F4F0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001F598(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  sub_100016130(v9, 2415919105, 0, a4, a5, a6, a7, a8, a9);
}

id sub_10001F804(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v2 = *(a1 + 32);

  return [v2 _terminateNow];
}

void sub_10001FBC0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FC28(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FC90(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FCF8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FD7C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FDE4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FE4C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FEB4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FF1C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FF84(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10001FFEC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100020054(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000200BC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100020124(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002018C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000201F4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002025C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

id sub_10002038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = 0;

  return [v9 getBytes:&a9 range:{0, v10}];
}

BOOL sub_1000203B0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000203C8()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_1000203E0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_error_impl(a1, v17, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

void sub_1000206B8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100020720(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100020788(uint64_t a1)
{
  v1 = [*(a1 + 32) diagController];
  [v1 start];
}

id sub_1000209C4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005AF54();
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 error];
    v6 = [NSString stringWithFormat:@"Encountered error when launching diagnostics app: %@", v5];
    *buf = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  return [*(a1 + 32) _operationDone];
}

void sub_100020B08(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100020B70(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

id sub_100020C8C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005AF68();
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 error];
    v6 = [NSString stringWithFormat:@"Diagnostics app finished with error: %@", v5];
    *buf = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  return [*(a1 + 32) _operationDone];
}

void sub_100020DD0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000210C4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002112C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100021194(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100021558(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000215C0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100021628(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100021888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v18 + 40));
  objc_sync_exit(v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000218C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000218E0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100021948(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B174();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005B188();
    }

    v10 = *(*(a1 + 32) + 8);
    obj = *(v10 + 40);
    sub_100016130(&obj, 67108867, v5, @"Failed to start SU Download", v6, v7, v8, v9, v12);
    objc_storeStrong((v10 + 40), obj);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _softwareUpdateCompleteWithError:*(*(*(a1 + 32) + 8) + 40)];
  }
}

void sub_100021A2C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100021B3C(uint64_t a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B1F8();
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Triggering software update install ...", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) setCancelled:0];
  WeakRetained[2] = 1025;
  v4 = objc_alloc_init(SUInstallOptions);
  [v4 setSkipActivationCheck:1];
  [v4 setDarkBoot:1];
  v5 = [WeakRetained manager];
  [v5 installUpdateWithInstallOptions:v4 withResult:&stru_10009BD70];
}

void sub_100021C3C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100021CA4(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B20C();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005B220();
    }
  }
}

void sub_100021D1C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100021F5C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100021FC4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002202C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000221B8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100022308(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100022458(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000226FC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100022764(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000228AC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000229FC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100022B2C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100022DE8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100022E50(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000230DC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000232B4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002331C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained manager];
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000233F4;
  v5[3] = &unk_10009BFC0;
  objc_copyWeak(&v6, (a1 + 40));
  [v3 scanForUpdates:v4 withScanResults:v5];

  objc_destroyWeak(&v6);
}

void sub_1000233F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _proccessScanResults:v6 andError:v5];
}

void sub_100023730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002375C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000237C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B6D8();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cancel SU download returned error: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B6EC();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Purging software update download...", buf, 2u);
  }

  v8 = [WeakRetained manager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100023A54;
  v11[3] = &unk_10009C0A8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v10;
  [v8 purgeDownloadWithOptions:v9 withResult:v11];
}

void sub_100023984(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000239EC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100023A54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B714();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Purging SU download returned error: %{public}@", &v9, 0xCu);
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B728();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invalidating SU client...", &v9, 2u);
  }

  v7 = [*(a1 + 32) manager];
  [v7 invalidate];

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B750();
  }

  v8 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SU client invalidated", &v9, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100023BF0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100023C58(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100023CC0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100023D28(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100023D90(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100023DF8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100023F18(uint64_t a1)
{
  [*(a1 + 32) terminate];
  v2 = [*(a1 + 32) delegate];
  [v2 updateDidFinishWithError:*(a1 + 40)];
}

void sub_100024310(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000243BC(id a1)
{
  qword_1000B83E8 = objc_alloc_init(MIBUMainController);

  _objc_release_x1();
}

void sub_100024480(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _start:*(a1 + 40)];
  objc_sync_exit(obj);
}

void sub_100024604(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002479C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100024C58(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100024E60(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100024EC8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000252A8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100025310(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002547C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100025638(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100025AA4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100025B0C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100025B74(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100025BDC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100025C44(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100025CAC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002636C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000263D4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002643C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000264A4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002650C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100026574(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100026734(uint64_t a1)
{
  [*(a1 + 32) _stopIdleTimer];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005BD08();
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    [v3 idleTimeInterval];
    v17 = 134217984;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting Idle timer with %lfs timeout...", &v17, 0xCu);
  }

  [*(a1 + 32) idleTimeInterval];
  v7 = v6;
  v8 = +[NSDate date];
  v9 = [NSDate dateWithTimeInterval:v8 sinceDate:v7];

  v10 = [PCPersistentTimer alloc];
  v11 = *(a1 + 32);
  v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v13 = [v10 initWithFireDate:v9 serviceIdentifier:@"com.apple.mobileinboxupdater.inactivitytimer" target:v11 selector:"handleIdleTimer:" userInfo:v12];
  [*(a1 + 32) setIdleTimer:v13];

  v14 = [*(a1 + 32) idleTimer];
  [v14 setMinimumEarlyFireProportion:1.0];

  v15 = [*(a1 + 32) idleTimer];
  v16 = +[NSRunLoop mainRunLoop];
  [v15 scheduleInRunLoop:v16];
}

void sub_10002692C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100026A54(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100026B78(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100026C74(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100026E50(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100026EB8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100026F20(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100027090(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000270F8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000272B4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002731C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100027500(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1000278BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_100027908(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100027970(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000279D8(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100027A40(id a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005C070();
  }

  v1 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Bluetooth advertiser invalidated", v2, 2u);
  }
}

void sub_100027AC4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100027B2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C084();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C098(v3, v4, v5);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained invalidate];
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C108();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth advertisement activated", v8, 2u);
    }
  }
}

void sub_100027C1C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100027C84(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000280FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_100028144(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000281AC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100028214(uint64_t a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005C16C();
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained server];
    v6 = [v5 bluetoothState];
    if (v6 > 0xA)
    {
      v7 = "?";
    }

    else
    {
      v7 = (&off_10009CA40)[v6];
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth state changed: %s", &v8, 0xCu);
  }
}

void sub_10002832C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100028394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005C180();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth connection accept: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained connection];
  v10 = v9 == 0;

  if (v10)
  {
    objc_initWeak(buf, v5);
    v21 = objc_loadWeakRetained((a1 + 40));
    [v21 setConnection:v5];

    [v5 setUseCase:720897];
    NSSelectorFromString(@"tempLTK");
    if (objc_opt_respondsToSelector())
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005C1E4();
      }

      v22 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "CBConnection supports taking LTK!", v34, 2u);
      }

      [v5 setValue:*(a1 + 32) forKey:@"tempLTK"];
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005C1BC();
      }

      v23 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "CBConnection does NOT support taking LTK!", v34, 2u);
      }
    }

    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100028944;
    v31 = &unk_10009C7E8;
    objc_copyWeak(&v32, buf);
    objc_copyWeak(&v33, (a1 + 40));
    [v5 setErrorHandler:&v28];
    v24 = objc_loadWeakRetained((a1 + 40));
    v25 = [v24 delegate];
    v26 = objc_loadWeakRetained((a1 + 40));
    [v25 didConnect:v26];

    v6[2](v6, 0);
    v27 = objc_loadWeakRetained((a1 + 40));
    [v27 _startConnectionReadLoop];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C194();
    }

    v11 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v11;
      v18 = objc_loadWeakRetained((a1 + 40));
      v19 = [v18 connection];
      *buf = 138543362;
      v36 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Bluetooth connection already established: %{public}@, ignore this new connection", buf, 0xCu);
    }

    v20 = sub_1000162A8(3489660931, 0, @"Device is already secure BT connected", v12, v13, v14, v15, v16, v28);
    (v6)[2](v6, v20);
  }
}

void sub_100028758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000287A4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002880C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100028874(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000288DC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100028944(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005C20C();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Bluetooth connection error: %{public}@", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 connection];

  if (WeakRetained == v7)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 delegate];
    v11 = objc_loadWeakRetained((a1 + 40));
    [v10 didDisconnect:v11];

    v12 = objc_loadWeakRetained((a1 + 40));
    [v12 setConnection:0];
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C220();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring bluetooth connection error", &v13, 2u);
    }
  }
}

void sub_100028B08(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100028B70(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100028BD8(id a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005C248();
  }

  v1 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Bluetooth server invalidated", v2, 2u);
  }
}

void sub_100028C5C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100028CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C25C();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C270(v3, v4, v5);
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C2E0();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v9 = [WeakRetained server];
      v13[0] = 67109120;
      v13[1] = [v9 bleListenPSM];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth server listening on 0x%hx", v13, 8u);
    }

    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 delegate];
    v12 = objc_loadWeakRetained((a1 + 32));
    [v11 didInit:v12];
  }
}

void sub_100028E48(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100028EB0(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100029044(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v63 = 0;
  v64[0] = &v63;
  v64[1] = 0x3032000000;
  v64[2] = sub_100029A28;
  v64[3] = sub_100029A38;
  v65 = 0;
  v46 = 134217984;
  do
  {
    if (![*(a1 + 32) running])
    {
      break;
    }

    v1 = [*(a1 + 32) connection];
    v2 = v1 == 0;

    if (v2)
    {
      break;
    }

    v3 = objc_opt_new();
    v48 = objc_alloc_init(CBWriteRequest);
    objc_initWeak(&v62, v48);
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = sub_100029A28;
    v60 = sub_100029A38;
    v4 = 0;
    v61 = dispatch_semaphore_create(0);
    do
    {
      *&v78 = 0;
      *(&v78 + 1) = &v78;
      v79 = 0x3032000000;
      v80 = sub_100029A28;
      v81 = sub_100029A38;
      v82 = 0;
      v5 = objc_alloc_init(CBReadRequest);
      [v5 setMaxLength:5000];
      objc_initWeak(&from, v5);
      v6 = dispatch_semaphore_create(0);
      v7 = v57[5];
      v57[5] = v6;

      v8 = dispatch_time(0, 600000000000);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100029A40;
      v53[3] = &unk_10009C8D8;
      v53[4] = &v63;
      objc_copyWeak(&v54, &from);
      v53[5] = &v78;
      v53[6] = &v56;
      [v5 setCompletion:v53];
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005C2F4();
      }

      v9 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Awaiting Incoming BT Request...", buf, 2u);
      }

      v10 = objc_loadWeakRetained(&location);
      v11 = [v10 connection];
      [v11 readWithCBReadRequest:v5];

      if (dispatch_semaphore_wait(v57[5], v8))
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005C31C();
        }

        v12 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_10005C344(v76, v77, v12);
        }

        v17 = (v64[0] + 40);
        obj = *(v64[0] + 40);
        sub_100016130(&obj, 3489660929, 0, @"command timed out", v13, v14, v15, v16, v46);
        objc_storeStrong(v17, obj);
LABEL_15:
        v18 = 0;
        goto LABEL_16;
      }

      if (*(v64[0] + 40))
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005C390();
        }

        v19 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_10005C3B8(v74, v64, &v75, v19);
        }

        goto LABEL_15;
      }

      if (!v4)
      {
        if ([v3 length])
        {
          v4 = 0;
        }

        else
        {
          v4 = [MIBUNFCCommand expectedAPDULength:*(*(&v78 + 1) + 40)];
        }
      }

      [v3 appendData:*(*(&v78 + 1) + 40)];
      if ([v3 length] >= v4)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005C404();
        }

        v20 = qword_1000B84A0;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v3 length];
          *buf = 134218240;
          v71 = v22;
          v72 = 1024;
          v73 = v4;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "All BT payload received: %ld/%hu", buf, 0x12u);
        }
      }

      else
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005C42C();
        }

        v20 = qword_1000B84A0;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v3 length];
          *buf = 134218240;
          v71 = v21;
          v72 = 1024;
          v73 = v4;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reading BT payload: %ld/%hu", buf, 0x12u);
        }
      }

      v18 = 1;
LABEL_16:
      objc_destroyWeak(&v54);
      objc_destroyWeak(&from);

      _Block_object_dispose(&v78, 8);
    }

    while (v18 && [v3 length] < v4);
    if (*(v64[0] + 40))
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v26 = [[MIBUNFCCommand alloc] initWithAPDU:v3];
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005C454();
      }

      v27 = qword_1000B84A0;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(MIBUNFCCommand *)v26 code];
        LODWORD(v78) = v46;
        *(&v78 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Received Command %ld over BT", &v78, 0xCu);
      }

      v29 = objc_loadWeakRetained(&location);
      v30 = [v29 delegate];
      v24 = [v30 handleCommand:v26];

      if (!v24)
      {
        v24 = objc_alloc_init(MIBUNFCResponse);
      }

      if ([(MIBUNFCResponse *)v24 rejected])
      {
        v35 = (v64[0] + 40);
        v51 = *(v64[0] + 40);
        sub_100016130(&v51, 3489660928, 0, @"command rejected", v31, v32, v33, v34, v46);
        objc_storeStrong(v35, v51);
        [(MIBUNFCResponse *)v24 setError:*(v64[0] + 40)];
      }

      v36 = [(MIBUNFCResponse *)v24 serialize];
      v25 = [*(a1 + 32) _responseWithHeader:v36];

      v37 = dispatch_semaphore_create(0);
      v38 = v57[5];
      v57[5] = v37;

      v39 = dispatch_time(0, 120000000000);
      v69 = v25;
      v40 = [NSArray arrayWithObjects:&v69 count:1];
      [v48 setDataArray:v40];

      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100029E4C;
      v49[3] = &unk_10009C9E0;
      objc_copyWeak(&v50, &v62);
      v49[4] = &v63;
      v49[5] = &v56;
      [v48 setCompletion:v49];
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005C47C();
      }

      v41 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v78) = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Sending response over BT...", &v78, 2u);
      }

      v42 = objc_loadWeakRetained(&location);
      v43 = [v42 connection];
      [v43 writeWithCBWriteRequest:v48];

      v44 = dispatch_semaphore_wait(v57[5], v39);
      v23 = v44 == 0;
      if (v44)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005C4A4();
        }

        v45 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_10005C4CC(v67, &v68, v45);
        }
      }

      objc_destroyWeak(&v50);
    }

    _Block_object_dispose(&v56, 8);

    objc_destroyWeak(&v62);
  }

  while (v23);
  _Block_object_dispose(&v63, 8);

  objc_destroyWeak(&location);
}

void sub_10002997C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46)
{
  _Block_object_dispose(&a33, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a40, 8);
  objc_destroyWeak(&a46);
  _Unwind_Resume(a1);
}

uint64_t sub_100029A28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100029A40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = objc_loadWeakRetained((a1 + 56));
  v7 = [v6 data];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005C518();
  }

  v10 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received data over BT: %{public}@", &v13, 0xCu);
  }

  return dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
}

void sub_100029B74(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100029BDC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100029C44(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100029CAC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100029D14(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100029D7C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100029DE4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

intptr_t sub_100029E4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];

  if (v3)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005C52C();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005C540(v4, (a1 + 48));
    }
  }

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 error];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_100029F1C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100029F84(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100029FEC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002A2AC(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100056A7C();
  }
}

void sub_10002A314(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100056A7C();
  }
}

void sub_10002A52C(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002A648(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002A764(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002A880(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_10002AD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002AD8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002ADA4(id a1)
{
  v1 = os_log_create("com.apple.mobileinboxupdater", "device");
  v2 = qword_1000B84A0;
  qword_1000B84A0 = v1;

  if (!qword_1000B84A0)
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_1000524D0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}