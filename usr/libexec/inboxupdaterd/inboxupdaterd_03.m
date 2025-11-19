void sub_10005EE90(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D8A8);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036DF0(&_mh_execute_header, v2, v3, "Network monitoring cancelled; stop retrying wifi connection", v4, v5, v6, v7, 0);
  }
}

void sub_10005EF6C(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D928);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036DF0(&_mh_execute_header, v2, v3, "Device already connected to wifi", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_10005F034(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016130(a1, 1879048192, a2, @"Failed to wait for wifi interface", a5, a6, a7, a8, v15);
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D9D0);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10000C4B8();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0xCu);
  }

  *a3 = a2;
}

void sub_10005F124(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016130(a1, 1879048192, a2, @"Failed to set wifi power state", a5, a6, a7, a8, v15);
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009D9F0);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10000C4B8();
    _os_log_error_impl(v10, v11, v12, v13, v14, 0xCu);
  }

  *a3 = a2;
}

void sub_10005F278(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 localRetryLimit];
  sub_100036DD8();
  sub_10000C4B8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10005F364(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 localRetryLimit];
  sub_100036DD8();
  sub_10000C4B8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10005F400(uint64_t a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DAF8);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to start monitoring for CWFEventTypeInterfaceAdded event; error %{public}@", &v3, 0xCu);
  }
}

id sub_10005F574(void **a1, void **a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DB98);
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v12 = 30;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "No network connection after %ds", buf, 8u);
  }

  *a1 = 0;
  sub_100016130(a1, 1879048195, 0, @"No network connection after %ds", v5, v6, v7, v8, 30);
  v9 = *a1;
  *a2 = *a1;

  return v9;
}

void sub_10005F800(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "String %{public}@ is of invalid length=%ld", &v3, 0x16u);
}

void sub_10005F95C(uint64_t a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DDC0);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[MIBUXPCListener listener:shouldAcceptNewConnection:]";
    v5 = 2112;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: format not correct: %@", &v3, 0x16u);
  }
}

void sub_10005FA40()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DDA0);
  }

  v0 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[MIBUXPCListener listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%s: connection does not have entitlements needed.", &v1, 0xCu);
  }
}

BOOL sub_1000601D4(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DDE0);
  }

  v2 = qword_1000B84A0;
  *a1 = qword_1000B84A0;
  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void sub_10006023C(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Serialization tag list size %lu != data list size %lu", buf, 0x16u);
}

void sub_100060294(void *a1, uint64_t a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DE20);
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6[0] = 67109378;
    v6[1] = [a1 charValue];
    v7 = 2114;
    v8 = a2;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to serialize tag 0x%X with value %{public}@, skip serialization", v6, 0x12u);
  }
}

void sub_100060394()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DE00);
  }

  v0 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "MIBUSerializer released before enumeration block", v1, 2u);
  }
}

void sub_1000604C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DF68);
  }

  v8 = qword_1000B84A0;
  if (sub_1000203B0())
  {
    *v9 = 0;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot serialize error, error domain is nil", v9, 2u);
  }

  *a4 = a1;
  *a3 = 0;
  *a2 = 0;
}

void sub_1000606A4(void *a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DFC8);
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [a1 error];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to serialize responseerror: %{public}@", &v7, 0xCu);
  }

  *a2 = 0;
}

void sub_1000607A8(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E008);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_100038CF4(&_mh_execute_header, v2, v3, "Failed to deserialize response error", v4, v5, v6, v7, 0);
  }
}

void sub_100060838(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009DFE8);
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_100038CF4(&_mh_execute_header, v2, v3, "Failed to deserialize APDU payload", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100060D60()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E1D8);
  }

  if (sub_10000C5AC())
  {
    v6 = *v0;
    sub_10000C4B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_10003E42C();
}

void sub_100060E44(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized command code %ld; failed to initialize command object", &v2, 0xCu);
}

void sub_100060EBC(uint64_t a1, _BYTE *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E218);
  }

  if (sub_10000C5AC())
  {
    sub_10000C4B8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  *a2 = 0;
}

void sub_100060F90(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E278);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    [sub_10003E420() length];
    sub_10000C4B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  }

  sub_10003E42C();
}

void sub_100061094()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E258);
  }

  v0 = qword_1000B84A0;
  if (sub_10000C5AC())
  {
    v1 = v0;
    [sub_10003E420() length];
    sub_10000C4B8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  sub_10003E42C();
}

void sub_100061170(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E238);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100061200(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E378);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100061290(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E358);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100061320(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E338);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000613B0(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E318);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100061440(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E2F8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000614D0(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E2D8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100061560(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E2B8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000615F0(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E298);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100061680()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E1F8);
  }

  v0 = qword_1000B84A0;
  if (sub_10000C5AC())
  {
    v1 = v0;
    [sub_10003E420() length];
    sub_10000C4B8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  sub_10003E42C();
}

void sub_100061770()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E3D8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100061844()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E3B8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_100061910()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E418);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void sub_1000619E8(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E438);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100061AC4()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E3F8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_100061B90()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E478);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100061C64()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E458);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_100061D44()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E4F8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100061E18()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E518);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100061EEC()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E4D8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_100061FB8()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E4B8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_100062084()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E558);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062158()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E538);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_10006224C()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E6B8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062320()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E6D8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_1000623F4()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E6F8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_1000624C8()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E718);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_10006259C()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E738);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062670()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E758);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062744()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E778);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062818()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E798);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_1000628EC()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E7B8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_1000629C0()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E7D8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062A94()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E7F8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062B68()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E818);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062C3C()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E838);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062D10()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E858);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062DE4()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E878);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062EB8()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E898);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100062F8C()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E8B8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100063060()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E8D8);
  }

  if (sub_10000C5AC())
  {
    sub_10003E3F4();
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_10003E408();
}

void sub_100063134()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E8F8);
  }

  if (sub_10000C5AC())
  {
    sub_10000C4B8();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  sub_10003E408();
}

void sub_100063210()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E698);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_1000632DC()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E678);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_1000633A8()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E658);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_100063474()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E638);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_100063540()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E618);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_10006360C()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E5F8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_1000636D8()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E5D8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_1000637A4()
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E5B8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10003E408();
}

void sub_100063884(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E978);
  }

  v2 = qword_1000B84A0;
  if (sub_10000C57C())
  {
    v3 = v2;
    [a1 doubleValue];
    sub_10003E414();
    sub_10000EE6C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_10006395C(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E958);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000639EC(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E938);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100063A7C()
{
  sub_100016118();
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EA18);
  }

  v2 = qword_1000B84A0;
  if (sub_10000C5AC())
  {
    v3 = v2;
    [sub_10003E420() doubleValue];
    sub_10003E414();
    sub_10000C4B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_100063B5C(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E9F8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_100063BEC(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E9D8);
  }

  v2 = qword_1000B84A0;
  if (sub_10000C57C())
  {
    v3 = v2;
    [a1 doubleValue];
    sub_10003E414();
    sub_10000EE6C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_100063CC4(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E9B8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100063D54(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009E998);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100063DE4(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EA78);
  }

  v2 = qword_1000B84A0;
  if (sub_10000C57C())
  {
    v3 = v2;
    [a1 doubleValue];
    sub_10003E414();
    sub_10000EE6C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_100063EBC(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EA58);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100063F4C(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EA38);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100063FF0(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EAF8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_100064080(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EAD8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100064110(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EAB8);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000641A0(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EB38);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100064230(_BYTE *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EB18);
  }

  if (sub_10000C57C())
  {
    sub_10000EE6C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000647E4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed main controller operation; error: %{public}@", &v2, 0xCu);
}

void sub_100064C94(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EFD8);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    sub_100040548(&_mh_execute_header, v2, v3, "Failed to serialize challenge response", v4);
  }

  *a1 = 0;
}

void sub_100064D2C(void *a1, void *a2)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009EFF8);
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [a1 error];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to serialize response error: %{public}@", &v7, 0xCu);
  }

  *a2 = 0;
}

void sub_100065B40(uint64_t a1)
{
  v2 = [*(a1 + 32) code];
  if (!*(a1 + 40))
  {
    v3 = v2;
    if ([*(a1 + 48) state] == 2)
    {
      if (v3)
      {
        if (v3 == 8)
        {
          v4 = *(a1 + 48);

          [v4 _transitionToState:3 error:0];
        }

        else
        {
          if (qword_1000B84A8[0] != -1)
          {
            dispatch_once(qword_1000B84A8, &stru_10009F398);
          }

          v8 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(a1 + 48);
            v10 = v8;
            [v9 state];
            *v11 = 138412802;
            *&v11[4] = v9;
            sub_100043EF0();
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Received command %ld at state %ld; resetting install timer...", v11, 0x20u);
          }

          [*(a1 + 48) _startInstallTimer];
        }
      }
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        dispatch_once(qword_1000B84A8, &stru_10009F3B8);
      }

      v5 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 48);
        v7 = v5;
        [v6 state];
        *v11 = 138543874;
        *&v11[4] = v6;
        sub_100043EF0();
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@: no-op for cmd %lu at state %lu", v11, 0x20u);
      }
    }
  }
}

void sub_100065DC8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 currentBuildVersion];
  v5 = [a1 targetBuildVersion];
  v6 = [NSString stringWithFormat:@"Current build version %@ != %@, update failed", v4, v5];
  *buf = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
}

void sub_100065F7C(void **a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009F420);
  }

  v2 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    v3 = *a1;
    v4 = v2;
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"current state is %lu (expected %lu) ignoring install timer", [v3 state], 2);;
    *buf = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
  }
}

BOOL sub_1000660A8(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    dispatch_once(qword_1000B84A8, &stru_10009F480);
  }

  v3 = qword_1000B84A0;
  *a2 = qword_1000B84A0;
  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_100066100()
{
  sub_100043EE0();
  sub_100043EC8(v1, v2, v3, 5.8382e-34);
  sub_100043F08(&_mh_execute_header, "%{public}@: %{public}@", v4, v5);
}

BOOL sub_1000661BC(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009F460);
  }

  v2 = qword_1000B84A0;
  *a1 = qword_1000B84A0;
  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

BOOL sub_100066224(void *a1)
{
  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009F440);
  }

  v2 = qword_1000B84A0;
  *a1 = qword_1000B84A0;
  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void sub_1000669C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100046A64();
  a21 = v22;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  a12 = 0;
  if ((!v23 || sub_10006BAB0(v23) != v24 || !sub_10006C318()) && (!v35 || sub_10006BAB0(v35) != v33 || !sub_10006C318()) && (!v31 || !sub_10006C41C()))
  {
    sub_100046900();
    if (!sub_10006C148(v36, v37, v38))
    {
      *v29 = 0;
      *v27 = 0;
    }
  }

  sub_100047E54(&a12);
  sub_100046A40();
}

void *sub_100066AD8(uint64_t a1)
{
  v2 = sub_1000468CC();
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    if (a1)
    {
      if (sub_10006C100(v2))
      {
        sub_100046704(v3);
        free(v3);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_100066B48(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  sub_100046720();
  if (sub_1000459E4(v5, 3))
  {
    v6 = sub_100046AB4();
    if (!sub_100047ED4(v6, v7))
    {
      if (!a3)
      {
        return 0;
      }

      v8 = *a3;
      sub_100046AB4();
      if (!sub_10006C5B8())
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_100066BB4(void *a1, int a2, _BYTE *a3)
{
  v6 = 0;
  result = sub_1000459E4(a2, 3);
  if (result)
  {
    result = sub_10004813C(a1, result, &v6);
    if (result)
    {
      result = 1;
      if (v6)
      {
        *a3 = 1;
      }
    }
  }

  return result;
}

uint64_t sub_100066C1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100046720();
  if (sub_1000459E4(v5, 1))
  {
    v6 = sub_100046AB4();
    if (!sub_100047ED4(v6, v7))
    {
      if (!a3)
      {
        return 0;
      }

      v8 = *a3;
      v9 = sub_100046AB4();
      if (!sub_10006C6E0(v9, v10, v11))
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_100066C88(void *a1, int a2, void *a3)
{
  v6 = 0;
  result = sub_1000459E4(a2, 1);
  if (result)
  {
    result = sub_1000480DC(a1, result, &v6);
    if (a3)
    {
      if (result)
      {
        *a3 = v6;
        return 1;
      }
    }
  }

  return result;
}

void sub_100066CEC()
{
  sub_100046A64();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_100046720();
  v7 = sub_1000459E4(v6, 2);
  if (v7 && !sub_100047ED4(v5, v7) && v1)
  {
    if (v3 == 1 || v3 == 2)
    {
      ccder_blob_decode_tag();
    }

    else
    {
      sub_100046B00();
      sub_10006C41C();
    }
  }

  sub_100046A40();
}

uint64_t sub_100066DBC(void *a1, int a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v6 = sub_1000459E4(a2, 2);
  if (v6)
  {
    v7 = sub_100047FFC(a1, v6, (a2 - 1) < 2, &v9, &v10);
    if (a3)
    {
      if (v7)
      {
        *a3 = v10;
      }
    }
  }

  return v9;
}

uint64_t sub_100066E3C(void ***a1)
{
  result = 3758097090;
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      *a1 = 0;
      sub_100047E54(v3);
      sub_100046704(v3);
      free(v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100066E94(uint64_t a1, int a2, int a3, void *a4, void *a5, uint64_t a6, void *a7, size_t *a8)
{
  v8 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = a6;
  v45 = a5;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  if (!a7 || !a8)
  {
    goto LABEL_38;
  }

  v11 = a6;
  v12 = a5;
  sub_100046AC0();
  if (sub_10006BBE8(v16, v17, v18) && (v39 = 0, v40 = 0, sub_100046978(), sub_10006BBE8(v19, v20, v21)))
  {
    if (sub_10006BBE8(off_1000B7DB8, 0, 0))
    {
      v8 = 0;
    }

    else
    {
      if (sub_10006C100(&v43) || sub_10006C100(&v42) || sub_10006C100(&v41))
      {
        v8 = 0;
        v32 = 3758097085;
        goto LABEL_19;
      }

      sub_10006C5B8();
      sub_100047ED4(&v42, off_1000B7CC0);
      sub_10006C9D4(&v42, off_1000B7CC0, &v41);
      sub_100047ED4(&v43, off_1000B7CD0);
      sub_10006C9D4(&v43, off_1000B7CD0, &v42);
      v8 = sub_10006C148(&v43, &v45, &v44) == 0;
      v11 = v44;
      v12 = v45;
    }
  }

  else
  {
    v8 = 0;
  }

  v22 = sub_1000671D4(a1, a2, 0, v12, v11, &v48);
  if (v22 || (v22 = sub_1000673B8(v48, v45, v44, a3, a4, &v47, &v46, v23, a4, v37, v38, v39, v40, 0, 0, v41, v42, v43, v44, v45, v46, v47), v22))
  {
    v32 = v22;
    goto LABEL_19;
  }

  if (sub_10006C100(&v49) || (v24 = *v48, v25 = v48[2], sub_10006C100(&v49)) || (v26 = *v48, v27 = v48[2], sub_100046900(), sub_10006BBE8(v28, v29, v30)) && (v31 = v48[2], sub_10006C318()))
  {
LABEL_38:
    v32 = 3758097090;
    goto LABEL_19;
  }

  if (sub_10006C148(&v49, a7, a8))
  {
    v32 = 3758097090;
  }

  else
  {
    v32 = 0;
  }

LABEL_19:
  sub_100047E54(&v43);
  sub_100047E54(&v42);
  sub_100047E54(&v41);
  if (v8)
  {
    free(v45);
  }

  if (v48)
  {
    sub_100067494(&v48);
  }

  free(v47);
  sub_100047E54(&v49);
  switch(v32)
  {
    case 0xE007C009:
      return 3758097084;
    case 0xE00002CE:
    case 0xE00002E2:
    case 0xE007C008:
      return 3758097122;
    case 0xE00002BC:
      return 3758097084;
  }

  return v32;
}

uint64_t sub_1000671D4(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v10 = 3758097090;
  v11 = off_1000B7DE8;
  v12 = sub_1000468CC();
  *v12 = 0;
  sub_10006C40C(v12, off_1000B7C98, v11);
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  if (!a6)
  {
    goto LABEL_14;
  }

  v13 = sub_100046B8C();
  v25 = v13;
  if (!v13)
  {
    v10 = 3758604298;
    goto LABEL_14;
  }

  v14 = v13;
  sub_1000468E4(v13);
  if (a4 && sub_10006C100(v12) || sub_10006C6E0(v12, off_1000B7CA8, a2) || sub_10006C6E0(v12, off_1000B7D30, a3) || sub_10006C148(v12, &v28, &v29))
  {
LABEL_17:
    sub_100067494(&v25);
    goto LABEL_14;
  }

  v15 = sub_100067904();
  if (v15)
  {
    v10 = v15;
    goto LABEL_17;
  }

  sub_100046808(v26, v27);
  sub_100046900();
  if (sub_10006BBE8(v16, v17, v18))
  {
    v14[4] = 0;
  }

  v19 = *v14;
  v20 = v14[2];
  sub_100046900();
  if (sub_10006BBE8(v21, v22, v23))
  {
    v14[3] = 0;
  }

  v10 = 0;
  *a6 = v14;
  v26 = 0;
  v27 = 0;
LABEL_14:
  sub_100047E54(v12);
  sub_100046704(v12);
  free(v12);
  sub_100046840(v28, v29);
  free(v28);
  sub_100046840(v26, v27);
  free(v26);
  return v10;
}

uint64_t sub_100067494(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 3758097090;
  }

  *a1 = 0;
  if (*v1)
  {
    sub_100046840(*v1, *(v1 + 8));
    free(*v1);
  }

  v2 = *(v1 + 48);
  if (v2)
  {
    sub_100046840(v2, *(v1 + 56));
    free(*(v1 + 48));
  }

  v3 = *(v1 + 64);
  if (v3)
  {
    sub_100046840(v3, *(v1 + 72));
    free(*(v1 + 64));
  }

  sub_1000468E4(v1);
  free(v1);
  return 0;
}

uint64_t sub_100067524()
{
  sub_100046720();
  if (v2)
  {
    v5 = v3;
    if (v3)
    {
      v6 = v4;
      v7 = v2;
      v8 = v1;
      if (sub_10006BAB0(v2) == v3)
      {
        sub_100046A58();
        v9 = sub_100046B8C();
        v12 = v9;
        if (v9)
        {
          v10 = v9;
          sub_1000468E4(v9);
          *(v10 + 40) = v8;
          if (sub_100067AE8(v10, v7, v5))
          {
            sub_100067494(&v12);
          }

          else
          {
            v0 = 0;
            *v6 = v10;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1000675D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, rsize_t a5)
{
  sub_1000466A4();
  v10 = off_1000B7DD0;
  v11 = sub_1000468CC();
  v12 = sub_10004672C(v11);
  sub_10006C40C(v12, off_1000B7C98, v10);
  if (a4 && a5 && sub_10006BAB0(a4) == a5)
  {
    v13 = sub_100045F7C(v7);
    if (!v13)
    {
      v27 = 0;
      v28 = 0;
      v26 = 0;
      sub_100046AC0();
      if (!sub_10006BBE8(v14, v15, v16) || !sub_10006BBE8(off_1000B7CC8, &v26, &v27) || sub_10006C318() || sub_10006C318() || (sub_100046900(), sub_10006C148(v17, v18, v19)))
      {
        sub_100047E54(&v28);
        goto LABEL_19;
      }

      sub_100047E54(&v28);
    }

    sub_100046AE0();
    if (!sub_100068070())
    {
      sub_100047ED4(v6, off_1000B7CB0);
      v20 = sub_1000467FC();
      sub_100047ED4(v20, v21);
      if (!sub_10006C318() && !sub_1000467BC())
      {
        sub_100046978();
        if (!sub_10006C148(v6, v22, v23))
        {
          v24 = *(v7 + 40);
          v5 = sub_100067904();
        }
      }
    }

    if (!v13)
    {
      sub_100046840(a4, a5);
      free(a4);
    }
  }

LABEL_19:
  sub_100047E54(v6);
  sub_100046684();
  free(v6);
  return v5;
}

uint64_t sub_100067804(uint64_t a1)
{
  sub_100046720();
  v4 = off_1000B7DE0;
  v5 = sub_1000468CC();
  v6 = sub_10004672C(v5);
  sub_10006C40C(v6, off_1000B7C98, v4);
  sub_1000467F0();
  if (!sub_100068070())
  {
    sub_100047ED4(v2, off_1000B7D58);
    v7 = sub_100046944();
    if (!v7 && !sub_100046768(v7, v8))
    {
      v9 = *(a1 + 40);
      sub_1000466B4();
      v1 = sub_100067904();
    }
  }

  sub_100047E54(v2);
  sub_100046684();
  free(v2);
  if (v21)
  {
    sub_100046784(v21, v10, v11, v12, v13, v14, v15, v16, v18, v20, v21, v23);
    free(v22);
  }

  if (v18)
  {
    sub_1000467A0(v18, v10, v11, v12, v13, v14, v15, v16, v18, v20);
    free(v19);
  }

  return v1;
}

uint64_t sub_100067904()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = sub_100046BA4();
  if (v10)
  {
    if (v8)
    {
      v11 = v10;
      v12 = 3758097090;
      if (sub_10006BAB0(v8) == v6)
      {
        bzero(__src, 0x8000uLL);
        __count = 0x8000;
        input = v9;
        v12 = IOConnectCallMethod(v11, 0x2Bu, &input, 1u, v8, v6, 0, 0, __src, &__count);
        if (!v12 && v4 && v2)
        {
          v13 = calloc(__count, 1uLL);
          *v4 = v13;
          if (v13)
          {
            memcpy(v13, __src, __count);
            v12 = 0;
            *v2 = __count;
          }

          else
          {
            v12 = 3758097085;
          }
        }
      }
    }

    else
    {
      v12 = 3758097090;
    }
  }

  else
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", "", -1, "", "", "", "", "_aks_operation", ":", 457, "", "");
    v12 = 3758097084;
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  return v12;
}

uint64_t sub_100067AE8(uint64_t a1, const void *a2, size_t a3)
{
  sub_1000467E4();
  if (!sub_10006BBE8(v6, v7, v8))
  {
    return 3758097090;
  }

  if (*a1)
  {
    sub_100046840(*a1, *(a1 + 8));
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v9 = calloc(a3, 1uLL);
  *a1 = v9;
  *(a1 + 8) = a3;
  if (!v9)
  {
    return 3758604298;
  }

  memcpy(v9, a2, a3);
  *(a1 + 16) = *a1 + *(a1 + 8);
  sub_1000467E4();
  if (sub_10006BBE8(v10, v11, v12))
  {
    *(a1 + 32) = 0;
  }

  v13 = *a1;
  v14 = *(a1 + 16);
  sub_1000467E4();
  if ((sub_10006BBE8(v15, v16, v17) & 1) != 0 || (v18 = *a1, v19 = *(a1 + 16), sub_1000467E4(), result = sub_10006BBE8(v20, v21, v22), result))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_100067C08(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100046720();
  sub_100046ACC();
  v13 = off_1000B7DC8;
  v14 = sub_1000468CC();
  v15 = sub_10004672C(v14);
  sub_10006C40C(v15, off_1000B7C98, v13);
  v57 = 0;
  __n = 0;
  if (!a8)
  {
    goto LABEL_16;
  }

  v16 = sub_100046B8C();
  v59 = v16;
  if (!v16)
  {
    sub_100046A58();
    goto LABEL_16;
  }

  v17 = v16;
  sub_1000468E4(v16);
  if (a4 && sub_10006C100(v9) || (v18 = sub_100046960(), sub_100047ED4(v18, v19), v20 = sub_1000467FC(), sub_100047ED4(v20, v21), v22 = sub_10006C6E0(v9, off_1000B7CA8, a2), v22) || sub_100046B74(v22, off_1000B7D30) || (sub_10004687C(), sub_10006C41C()) || (sub_100046AC0(), sub_10006C148(v9, v23, v24)))
  {
LABEL_26:
    sub_100067494(&v59);
    goto LABEL_16;
  }

  v25 = sub_100046B34();
  if (v25 || (v25 = sub_1000469B0(v25, v26, v27, v28, v29, v30, v31, v32, v50, a8, a7, v55, v56, 0, 0, v59, v60, v61, v62, v63, v64), v25))
  {
    v8 = v25;
    goto LABEL_26;
  }

  sub_100046808(v62, v63);
  sub_100046978();
  if (sub_10006BBE8(v33, v34, v35))
  {
    v17[4] = 0;
  }

  v36 = *v17;
  v37 = v17[2];
  sub_100046978();
  v41 = sub_10006BBE8(v38, v39, v40);
  if (v41)
  {
    v17[3] = 0;
  }

  sub_100046858(v41, v42, v43, v44, v45, v46, v47, v48, v51, v52, v54, 0, 0, v57, __n, v59, v60, v61);
LABEL_16:
  sub_100047E54(v9);
  sub_100046684();
  free(v9);
  if (v57)
  {
    sub_100046840(v57, __n);
    free(v57);
  }

  if (v62)
  {
    sub_100046840(v62, v63);
    free(v62);
  }

  if (v60)
  {
    sub_100046840(v60, v61);
    free(v60);
  }

  if (v64)
  {
    sub_100046840(v64, v65);
    free(v64);
  }

  return v8;
}

uint64_t sub_100067E3C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100046720();
  sub_100046ACC();
  v13 = off_1000B81F8;
  v14 = sub_1000468CC();
  v15 = sub_10004672C(v14);
  sub_10006C40C(v15, off_1000B7C98, v13);
  v57 = 0;
  __n = 0;
  if (!a8)
  {
    goto LABEL_16;
  }

  v16 = sub_100046B8C();
  v59 = v16;
  if (!v16)
  {
    sub_100046A58();
    goto LABEL_16;
  }

  v17 = v16;
  sub_1000468E4(v16);
  if (a4 && sub_10006C100(v9) || (v18 = sub_100046960(), sub_100047ED4(v18, v19), v20 = sub_1000467FC(), sub_100047ED4(v20, v21), v22 = sub_10006C6E0(v9, off_1000B7CA8, a2), v22) || sub_100046B74(v22, off_1000B7D30) || (sub_10004687C(), sub_10006C41C()) || (sub_100046AC0(), sub_10006C148(v9, v23, v24)))
  {
LABEL_26:
    sub_100067494(&v59);
    goto LABEL_16;
  }

  v25 = sub_100046B34();
  if (v25 || (v25 = sub_1000469B0(v25, v26, v27, v28, v29, v30, v31, v32, v50, a8, a7, v55, v56, 0, 0, v59, v60, v61, v62, v63, v64), v25))
  {
    v8 = v25;
    goto LABEL_26;
  }

  sub_100046808(v62, v63);
  sub_100046978();
  if (sub_10006BBE8(v33, v34, v35))
  {
    v17[4] = 0;
  }

  v36 = *v17;
  v37 = v17[2];
  sub_100046978();
  v41 = sub_10006BBE8(v38, v39, v40);
  if (v41)
  {
    v17[3] = 0;
  }

  sub_100046858(v41, v42, v43, v44, v45, v46, v47, v48, v51, v52, v54, 0, 0, v57, __n, v59, v60, v61);
LABEL_16:
  sub_100047E54(v9);
  sub_100046684();
  free(v9);
  if (v57)
  {
    sub_100046840(v57, __n);
    free(v57);
  }

  if (v62)
  {
    sub_100046840(v62, v63);
    free(v62);
  }

  if (v60)
  {
    sub_100046840(v60, v61);
    free(v60);
  }

  if (v64)
  {
    sub_100046840(v64, v65);
    free(v64);
  }

  return v8;
}

uint64_t sub_100068070()
{
  sub_100046A58();
  if (v1)
  {
    v4 = v3;
    v5 = v2;
    if (!*(v1 + 48) || (v6 = *(v1 + 56), !sub_10006C100(v2)))
    {
      if (!v4 || !sub_10006C100(v5))
      {
        sub_100047ED4(v5, off_1000B7CD0);
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_100068714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, void *a7, void **a8, void *a9)
{
  sub_10004681C();
  v14 = v13;
  sub_100046720();
  v15 = off_1000B8378;
  v16 = sub_1000468CC();
  v17 = sub_10004672C(v16);
  sub_10006C40C(v17, off_1000B7C98, v15);
  LODWORD(v18) = 0;
  v19 = 0;
  v32[0] = 0;
  memset(__n, 0, sizeof(__n));
  v30 = 0;
  v29 = 0;
  v28 = 0;
  if (a6 && a8)
  {
    if (sub_100046A7C())
    {
      goto LABEL_13;
    }

    sub_100047ED4(v10, off_1000B7D58);
    sub_100046AE0();
    if (sub_10006C41C())
    {
      goto LABEL_13;
    }

    v20 = *v14;
    v21 = v14[2];
    if (sub_10006C318() || sub_10006C148(v10, &__n[1], v32))
    {
      goto LABEL_13;
    }

    v22 = *(v14 + 10);
    v23 = sub_100067904();
    if (v23)
    {
      v9 = v23;
      goto LABEL_13;
    }

    sub_100046A58();
    *(v24 + 40) = 0u;
    *(v24 + 56) = 0u;
    *(v24 + 24) = 0u;
    v33 = 0u;
    v32[1] = off_1000B7E10;
    v35[1] = 0;
    v34[2] = off_1000B7CB0;
    sub_10006BB18();
    LODWORD(v18) = 0;
    v19 = 0;
    if (v33)
    {
      if (v34[3])
      {
        if (!sub_10006E404(v34, 4, &v30, __n))
        {
LABEL_13:
          v19 = 0;
          LODWORD(v18) = 0;
          goto LABEL_14;
        }

        v25 = sub_10006E404(v35, 4, &v28, &v29);
        v18 = v29;
        v19 = v28;
        if (v25)
        {
          v9 = 0;
          *a6 = v28;
          *a7 = v18;
          v28 = 0;
          v29 = 0;
          *a8 = v30;
          *a9 = __n[0];
          v30 = 0;
          __n[0] = 0;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_14:
  sub_100046840(v19, v18);
  free(v28);
  sub_100046840(v30, __n[0]);
  free(v30);
  sub_100047E54(v10);
  sub_100046684();
  free(v10);
  sub_100046840(*&__n[1], v32[0]);
  free(*&__n[1]);
  sub_100046840(0, 0);
  free(0);
  return v9;
}

uint64_t sub_100068DEC()
{
  sub_100046720();
  v2 = off_1000B7E48;
  v3 = sub_1000468CC();
  v4 = sub_10004672C(v3);
  sub_10006C40C(v4, off_1000B7C98, v2);
  sub_1000467F0();
  v5 = sub_10006C41C();
  if (!v5 && !sub_100046768(v5, v6))
  {
    sub_1000466B4();
    v0 = sub_100067904();
  }

  sub_100047E54(v1);
  sub_100046684();
  free(v1);
  if (v18)
  {
    sub_100046784(v18, v7, v8, v9, v10, v11, v12, v13, v15, v17, v18, v20);
    free(v19);
  }

  if (v15)
  {
    sub_1000467A0(v15, v7, v8, v9, v10, v11, v12, v13, v15, v17);
    free(v16);
  }

  return v0;
}

void sub_100068ED4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, rsize_t __n, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100046894();
  a23 = v29;
  a24 = v30;
  sub_1000469A0();
  sub_1000466A4();
  v31 = off_1000B7E18;
  v32 = sub_1000468CC();
  v33 = sub_10004672C(v32);
  sub_10006C40C(v33, off_1000B7C98, v31);
  a12 = 0;
  if (v26)
  {
    if (v25)
    {
      if (!sub_100068070())
      {
        sub_100047ED4(&a12, off_1000B7D58);
        v34 = *v28;
        v35 = v28[2];
        if (!sub_10006C318())
        {
          sub_100046888();
          if (!sub_100068070())
          {
            v36 = sub_1000467D8();
            sub_100047ED4(v36, v37);
            if (!sub_10006C9D4(v24, off_1000B7CB0, &a12) && !sub_1000467BC())
            {
              sub_100046900();
              if (!sub_10006C148(v24, v38, v39))
              {
                v40 = *(v27 + 40);
                sub_100067904();
              }
            }
          }
        }
      }
    }
  }

  sub_100047E54(&a12);
  sub_100047E54(v24);
  sub_100046684();
  free(v24);
  sub_1000468B0();
}

uint64_t sub_100069030(uint64_t a1, const void *a2, size_t __count)
{
  if (a2 && sub_10006BAB0(a2) != __count)
  {
    return 3758097090;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    sub_100046840(v6, *(a1 + 56));
    free(*(a1 + 48));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  result = 0;
  if (a2 && __count)
  {
    v8 = calloc(__count, 1uLL);
    *(a1 + 48) = v8;
    *(a1 + 56) = __count;
    if (v8)
    {
      memcpy(v8, a2, __count);
      return 0;
    }

    else
    {
      return 3758604298;
    }
  }

  return result;
}

uint64_t sub_1000690E0(uint64_t a1)
{
  sub_100046720();
  v4 = off_1000B7E28;
  v5 = sub_1000468CC();
  v6 = sub_10004672C(v5);
  sub_10006C40C(v6, off_1000B7C98, v4);
  sub_1000467F0();
  v7 = sub_100046944();
  if (!v7 && !sub_100046768(v7, v8))
  {
    v9 = *(a1 + 40);
    sub_1000466B4();
    v1 = sub_100067904();
  }

  sub_100047E54(v2);
  sub_100046684();
  free(v2);
  if (v21)
  {
    sub_100046784(v21, v10, v11, v12, v13, v14, v15, v16, v18, v20, v21, v23);
    free(v22);
  }

  if (v18)
  {
    sub_1000467A0(v18, v10, v11, v12, v13, v14, v15, v16, v18, v20);
    free(v19);
  }

  return v1;
}

uint64_t sub_1000691AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000466A4();
  v12 = sub_1000468CC();
  v13 = sub_10004672C(v12);
  sub_10006C40C(v13, off_1000B7C98, a2);
  if (v8)
  {
    if (a5)
    {
      if (a6)
      {
        sub_100046888();
        if (!sub_100068070())
        {
          sub_100047ED4(v7, off_1000B7D58);
          if (!sub_1000467BC())
          {
            sub_1000467E4();
            if (!sub_10006C148(v7, v14, v15))
            {
              v6 = sub_100046748();
            }
          }
        }
      }
    }
  }

  sub_100047E54(v7);
  sub_100046684();
  free(v7);
  return v6;
}

uint64_t sub_1000692C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v16 = 0;
  sub_100046720();
  if ((!v11 || v10 <= 0x20 && !sub_10006C41C()) && (!a3 || !sub_10006C41C()))
  {
    if (sub_10004828C(&v16))
    {
      v6 = 0;
    }

    else
    {
      sub_100046900();
      if (!sub_10006C148(v12, v13, v14))
      {
        v6 = 0;
        *a5 = 0;
        *a6 = 0;
      }
    }
  }

  sub_100047E54(&v16);
  return v6;
}

uint64_t sub_1000693A4()
{
  sub_1000466A4();
  v3 = off_1000B7E88;
  v4 = sub_1000468CC();
  v5 = sub_10004672C(v4);
  sub_10006C40C(v5, off_1000B7C98, v3);
  if (!v2 || !sub_100046A98())
  {
    sub_1000467E4();
    if (!sub_10006C148(v1, v6, v7))
    {
      v0 = sub_100067904();
    }
  }

  sub_100047E54(v1);
  sub_100046684();
  free(v1);
  return v0;
}

void sub_100069C00(void *a1, unsigned int *a2, void **a3)
{
  if (a1)
  {
    sub_100046840(a1, *a2);
    free(*a3);
  }
}

void sub_100069C38()
{
  sub_100047A9C();
  sub_100047B88();
  __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  *(v0 - 96) = __stack_chk_guard;
  bzero(v68, 0x1000uLL);
  v66[0] = v68;
  v66[1] = &v69;
  v66[2] = 4096;
  if (v6 && v4)
  {
    v7 = sub_100046BA4();
    if (v7)
    {
      v15 = v7;
      sub_100047AE8(v7, v8, v9, v10, v11, v12, v13, v14, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v65, v66[0]);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_10006CD64(v66))
        {
          if (sub_10006CD64(v66))
          {
            if (sub_10006CDC0(v66))
            {
              sub_100047A5C();
              if (ccder_blob_encode_tl())
              {
                sub_100047B14();
                if (!sub_100047A3C(v15, 0x4Au, v67, 2u, v16, v17, v18, v19, v68, v20))
                {
                  sub_100047A5C();
                  if (ccder_blob_decode_range())
                  {
                    sub_100047B54();
                    v24 = sub_1000482FC(v21, v22, v23);
                    if (v24)
                    {
                      if (v2)
                      {
                        v32 = sub_100047AF8(v24, v25, v26, v27, v28, v29, v30, v31, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v68);
                        sub_10006CC08(v32, v33, v34);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_100047A28();
      fprintf(v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v37, v42, v44, v46, v48, v50, v52, ":", 180, "", "");
    }
  }

  sub_100047A68(v68);
  v35 = *(v0 - 96);
  sub_100047B34();
  sub_100047A84();
}

unint64_t sub_100069E38(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL sub_100069F0C(_BOOL8 a1, void *a2, off_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t sub_10006A00C(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t sub_10006A068(uint64_t a1, uint64_t a2)
{
  result = sub_10006A00C(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t sub_10006A0C0(const char *a1)
{
  bzero(v4, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v4);
    sub_100046FFC(v4, &off_10009F6E0, 36);
    if ((sub_100046E78() & 1) == 0)
    {
      sub_100046FFC(__str, &off_10009FDA0, 72);
    }
  }

  return 0;
}

uint64_t sub_10006A194(const char *a1)
{
  bzero(v3, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v3))
  {
    sub_100046FFC(v3, &off_10009FDA0, 72);
  }

  return 0;
}

void sub_10006A21C()
{
  sub_100047A9C();
  sub_100047B88();
  __chkstk_darwin();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100047B74(__stack_chk_guard);
  bzero(v67, 0x1000uLL);
  v63 = v67;
  v64 = &v68;
  v65 = v0;
  if (v5 && v3)
  {
    v8 = sub_100046BA4();
    if (v8)
    {
      v16 = v8;
      sub_100047AE8(v8, v9, v10, v11, v12, v13, v14, v15, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v62, v63);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_10006CD64(&v63))
        {
          if (sub_10006CDC0(&v63))
          {
            sub_100047A5C();
            if (ccder_blob_encode_tl())
            {
              v66[0] = v7;
              v66[1] = v64;
              v66[2] = &v68 - v64;
              if (!sub_100047A3C(v16, 0x4Cu, v66, 3u, v17, v18, v19, v20, v67, &v65))
              {
                sub_100047A5C();
                v21 = ccder_blob_decode_range();
                if (v21)
                {
                  v29 = sub_100047AF8(v21, v22, v23, v24, v25, v26, v27, v28, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v67);
                  sub_1000482FC(v29, v30, v31);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_100047A28();
      fprintf(v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v34, v39, v41, v43, v45, v47, v49, ":", 509, "", "");
    }
  }

  sub_100047A68(v67);
  v32 = *(v1 - 88);
  sub_100047B34();
  sub_100047A84();
}

void sub_10006A3FC()
{
  sub_100047A9C();
  __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_100047B74(__stack_chk_guard);
  bzero(v29, 0x1000uLL);
  v25 = v29;
  v26 = &v30;
  v27 = v0;
  if (v6 && v4)
  {
    v7 = sub_100046BA4();
    if (v7)
    {
      v8 = v7;
      if (ccder_blob_encode_body_tl())
      {
        if (sub_10006CD64(&v25))
        {
          if (sub_10006CDC0(&v25))
          {
            sub_100047A5C();
            if (ccder_blob_encode_tl())
            {
              v28[0] = v26;
              v28[1] = &v30 - v26;
              if (!sub_100047A3C(v8, 0x63u, v28, 2u, v9, v10, v11, v12, v29, &v27))
              {
                *&v24 = v29;
                *(&v24 + 1) = &v29[v27];
                sub_100047A5C();
                if (ccder_blob_decode_range())
                {
                  sub_100047B54();
                  if (sub_1000482FC(v13, v14, v15))
                  {
                    if (v2)
                    {
                      sub_10006CC08(&v24, 0, v2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_100047A28();
      fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 544, "", "");
    }
  }

  sub_100047A68(v29);
  sub_100047A84();
}

void sub_10006A600()
{
  sub_100047A9C();
  sub_100047B88();
  __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 - 96) = __stack_chk_guard;
  bzero(v68, 0x1000uLL);
  v66[0] = v68;
  v66[1] = &v69;
  v66[2] = 4096;
  if (v8 && v6 && v4 && v2)
  {
    v9 = sub_100046BA4();
    if (v9)
    {
      v10 = v9;
      v11 = sub_10006CD64(v66);
      if (v11)
      {
        sub_100047AE8(v11, v12, v13, v14, v15, v16, v17, v18, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v65, v66[0]);
        if (ccder_blob_encode_body_tl())
        {
          if (sub_10006CD64(v66))
          {
            if (sub_10006CD64(v66))
            {
              if (sub_10006CDC0(v66))
              {
                sub_100047A5C();
                if (ccder_blob_encode_tl())
                {
                  sub_100047B14();
                  if (!sub_100047A3C(v10, 0x4Du, v67, 2u, v19, v20, v21, v22, v68, v23))
                  {
                    sub_100047A5C();
                    v24 = ccder_blob_decode_range();
                    if (v24)
                    {
                      v32 = sub_100047AF8(v24, v25, v26, v27, v28, v29, v30, v31, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v68);
                      sub_1000482FC(v32, v33, v34);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_100047A28();
      fprintf(v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v37, v42, v44, v46, v48, v50, v52, ":", 583, "", "");
    }
  }

  sub_100047A68(v68);
  v35 = *(v0 - 96);
  sub_100047B34();
  sub_100047A84();
}

void sub_10006A804()
{
  sub_100047A9C();
  __chkstk_darwin();
  sub_100047B60();
  v2 = v1;
  v4 = v3;
  bzero(v26, 0x1000uLL);
  v22 = v26;
  v23 = v27;
  v24 = 4096;
  v5 = sub_100046BA4();
  if (v5)
  {
    v6 = v5;
    if (!sub_10006CD64(&v22) || !sub_10006CD64(&v22) || !sub_10006CD64(&v22) || !sub_10006CDC0(&v22) || (sub_100047A5C(), !ccder_blob_encode_tl()) || (v25[0] = v4, v25[1] = v2, v25[2] = v23, v25[3] = &v27[-v23], !sub_100047A3C(v6, 0x54u, v25, 4u, v7, v8, v9, v10, v26, &v24)) && v24 && ((sub_100047A5C(), !ccder_blob_decode_range()) || v0 && (sub_100047B54(), (sub_1000482FC(v11, v12, v13) & 1) == 0)))
    {
      sub_100047B08();
    }
  }

  else
  {
    sub_100047A28();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 617, "", "");
    sub_100047B08();
  }

  sub_100047A68(v26);
  sub_100047A84();
}

void sub_10006A9FC()
{
  sub_100047A9C();
  sub_100047B88();
  __chkstk_darwin();
  sub_100047B60();
  v4 = v3;
  *(v2 - 96) = __stack_chk_guard;
  bzero(v27, 0x1000uLL);
  v23 = v27;
  v24 = v28;
  v25 = 4096;
  if (v1)
  {
    v5 = sub_100046BA4();
    if (v5)
    {
      v6 = v5;
      if (!sub_10006CD64(&v23) || !sub_10006CD64(&v23) || !sub_10006CD64(&v23) || !sub_10006CD64(&v23) || !sub_10006CDC0(&v23) || (sub_100047A5C(), !ccder_blob_encode_tl()) || (v26[0] = v24, v26[1] = &v28[-v24], v26[2] = v4, !sub_100047A3C(v6, 0x4Bu, v26, 3u, v7, v8, v9, v10, v27, &v25)) && ((sub_100047A5C(), !ccder_blob_decode_range()) || v0 && (sub_100047B54(), (sub_10006CC08(v11, v12, v13) & 1) == 0)))
      {
        sub_100047B08();
      }
    }

    else
    {
      sub_100047A28();
      fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 654, "", "");
      sub_100047B08();
    }
  }

  else
  {
    sub_100047B08();
  }

  sub_100047A68(v27);
  v14 = *(v2 - 96);
  sub_100047B34();
  sub_100047A84();
}

uint64_t sub_10006AC14(uint64_t a1, uint64_t a2)
{
  result = sub_10006A00C(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t sub_10006AD20()
{
  sub_100047B28();
  if (!v2)
  {
    return (v0 + 6);
  }

  v3 = v2;
  input[0] = 0;
  input[1] = v1;
  input[2] = 0;
  output = 0;
  outputCnt = 1;
  v4 = sub_100046BA4();
  if (v4)
  {
    v0 = IOConnectCallMethod(v4, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
    if (!v0)
    {
      *v3 = output;
    }
  }

  else
  {
    sub_100047A28();
    fprintf(v6, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v7, v8, v9, v10, v11, v12, v13, ":", 842, "", "");
  }

  return v0;
}

void sub_10006AE2C()
{
  sub_100047A9C();
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v0;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v16 = sub_100046BA4();
  if (v16)
  {
    v29[0] = v15;
    v29[1] = v14;
    v29[2] = v12;
    v29[3] = v10;
    if ((!v14 || v4 && v2) && !sub_100047AD0(v16, 0x36u, v29, 4u, v8, v6, v17, v18, __src, &__count))
    {
      if (v14)
      {
        v19 = calloc(__count, 1uLL);
        *v4 = v19;
        if (v19)
        {
          memcpy(v19, __src, __count);
          *v2 = __count;
        }
      }
    }
  }

  else
  {
    sub_100047A28();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v22, v23, v24, v25, v26, v27, ":", 891, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  sub_100047A84();
}

void sub_10006AFEC()
{
  sub_100047A9C();
  sub_100047AB4();
  v15[0] = v5;
  v15[1] = v4;
  v14 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v11 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v15, 2u, v2, 0x10uLL, &v14, &outputCnt, outputStruct, &v11) && outputCnt == 1)
  {
    *v1 = v14;
    sub_10006E8F4(outputStruct, v11, 3u, v6, v7, v8, v9, v10, v0);
  }

  sub_100047A84();
}

void sub_10006B100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  sub_100047A9C();
  sub_100047AB4();
  v43[0] = v30;
  v43[1] = v29;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v37 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v43, 2u, v27, 0x10uLL, &v40, &outputCnt, outputStruct, &v37) && outputCnt == 3)
  {
    v36 = v41;
    *v26 = v40;
    *a22 = v36;
    *a25 = v42;
    sub_10006E8F4(outputStruct, v37, 5u, v31, v32, v33, v34, v35, v25);
  }

  sub_100047A84();
}

uint64_t sub_10006B238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_100048804(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    sub_100047B28();
  }

  free(*&inputStructCnt[1]);
  return a1;
}

void sub_10006B348()
{
  sub_100047A9C();
  v3 = v2;
  sub_100047B40();
  v22[0] = v4;
  v22[1] = v5;
  v20 = 0;
  v19 = 0;
  bzero(v21, 0x400uLL);
  v18 = 1024;
  sub_100048804(&v20, &v19, 2, v6, v7, v8, v9, v10, v0);
  if (!sub_100047AD0(v1, 0x10u, v22, 2u, v20, v19, v11, v12, v21, &v18))
  {
    sub_10006E8F4(v21, v18, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v20);
  sub_100047A84();
}

void sub_10006B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  sub_100047A9C();
  sub_100047B40();
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = a21;
  v40 = 0;
  v39 = 0;
  bzero(v41, 0x400uLL);
  v38 = 1024;
  sub_100048804(&v40, &v39, 3, v26, v27, v28, v29, v30, v22);
  if (!sub_100047AD0(v23, 0x17u, v42, 3u, v40, v39, v31, v32, v41, &v38))
  {
    sub_10006E8F4(v41, v38, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v40);
  sub_100047A84();
}

uint64_t sub_10006B588()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v25 = v0;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  v7 = sub_100046BA4();
  if (v7)
  {
    if (v6)
    {
      v10 = 18;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_100047AD0(v7, 0x5Du, &v25, 1u, v6, v10, v8, v9, __src, &__n);
    v12 = __n;
    if (v11)
    {
      v6 = v11;
    }

    else
    {
      sub_100047B28();
      if (v12 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v6 = (v6 + 6);
      }

      else
      {
        v13 = calloc(v12, 1uLL);
        *v4 = v13;
        v12 = __n;
        if (v13)
        {
          *v2 = __n;
          memcpy(v13, __src, v12);
          v6 = 0;
          v12 = __n;
        }

        else
        {
          v6 = (v6 + 1);
        }
      }
    }
  }

  else
  {
    sub_100047B28();
    sub_100047A28();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 1246, "", "");
    v12 = 0x8000;
  }

  memset_s(__src, v12, 0, v12);
  return v6;
}

uint64_t sub_10006B7B0(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t sub_10006B9A4(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  v7 = cczp_bitlen();
  v8 = calloc(((v7 + 7) >> 2) | 1, 1uLL);
  if (!v8)
  {
    return 4294967279;
  }

  v9 = v8;
  v10 = *a1;
  v11 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

BOOL sub_10006BA34(uint64_t *a1, void **a2)
{
  if (ccec_import_pub())
  {
    return 0;
  }

  v4 = *a1;
  v5 = &a2[3 * **a2];
  return ccn_read_uint() == 0;
}

uint64_t sub_10006BAB0(uint64_t a1)
{
  if (ccder_blob_decode_tag() && ccder_blob_decode_len())
  {
    return a1 - a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006BB18()
{
  sub_1000486A8();
  v14 = 0;
  v13 = 0;
  result = ccder_blob_decode_range();
  if (result)
  {
    v3 = ccder_blob_decode_sequence_tl();
    if (v3)
    {
      while (1)
      {
        v11 = v14;
        sub_100048720(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14);
        result = ccder_blob_decode_tl();
        if (!result)
        {
          break;
        }

        if (v14 - v11 != 2)
        {
          return 0;
        }

        result = v1(v11, -v11, v14 + v13, -(v14 + v13), v0);
        if (!result)
        {
          return result;
        }

        v3 = ccder_blob_decode_sequence_tl();
        if ((v3 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10006BBE8(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_10004859C();
    sub_10006BB18();
    if (a2)
    {
      if (a3)
      {
        *a2 = 0;
        *a3 = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_10006BC54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    sub_1000485B0();
    sub_10006BB18();
    return 0;
  }

  return result;
}

uint64_t sub_10006BCCC()
{
  sub_100048700();
  if (!ccder_blob_decode_tl())
  {
    return 0;
  }

  v0 = v5;
  if ((v5 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  v1 = v4;
  result = *v4 >> 7;
  do
  {
    v3 = *v1++;
    result = v3 | (result << 8);
    --v0;
  }

  while (v0);
  return result;
}

uint64_t sub_10006BD2C(uint64_t result)
{
  if (result)
  {
    sub_1000485B0();
    sub_10006BB18();
    return 0;
  }

  return result;
}

__n128 sub_10006BDC4(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  sub_100048638(a1);
  if (sub_100048738())
  {
    *a4 = v8;
    *a3 = v9 - v8;
    result = v10;
    *v4 = v10;
  }

  return result;
}

uint64_t sub_10006BE20()
{
  sub_1000486A8();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  sub_100047A5C();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (sub_10006BECC(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((sub_10006BECC(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t sub_10006BECC(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

BOOL sub_10006BF48()
{
  sub_100048700();
  v0 = ccder_blob_decode_tl();
  result = 0;
  if (v0)
  {
    if (v3 == 1)
    {
      return *v2 != 0;
    }
  }

  return result;
}

uint64_t sub_10006BF98(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_100048638(a1);
  sub_10004851C();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100048680(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_100048540(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_100048540(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_10006C00C()
{
  sub_1000486A8();
  v3 = v2;
  v5 = strlen(v4);
  v10 = 0;
  v11 = 0;
  v9[0] = 12;
  v9[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v8 = 0;
    if (sub_100047FFC(v3, v9, 0, &__src, &v8))
    {
      if (v8 == v0)
      {
        memcpy(v1, __src, v0);
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t sub_10006C100(uint64_t a1)
{
  if (a1)
  {
    return sub_10006BB18() - 1;
  }

  else
  {
    return 4294967285;
  }
}

uint64_t sub_10006C148(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15 = *(v14 + 1);
                v15 += 16;
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_10006E6F8);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v27 = v17;
              v28 = &v17[v16];
              v19 = v8 - 1;
              v20 = &v13[-v9 - 8];
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v24 = *(v20 - 1);
                v23 = *v20;
                v25 = ccder_blob_encode_body();
                v20 = v22;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v27 != v28)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_10006C318()
{
  result = sub_10004872C();
  if (v0)
  {
    v6 = v3;
    if (v3)
    {
      if (v4 && v5)
      {
        if (sub_10006BAB0(v4) <= (v5 - v4))
        {
          v7 = *(v6 + 1);
          v8 = ccder_sizeof();
          if (!sub_1000486E8(v8))
          {
            return 4294967279;
          }

          sub_100048608();
          if (ccder_blob_encode_body())
          {
            sub_100048550();
            sub_100048530();
            sub_1000485E4();
            sub_100048530();
            if (v9 == v1)
            {
              v10 = sub_1000486D0();
              if (v10)
              {
                return sub_100048500(v10);
              }
            }
          }

          sub_1000485C4();
          free(v1);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_10006C41C()
{
  result = sub_10004872C();
  if (v0 && v3 && v4)
  {
    v5 = *(v3 + 1);
    ccder_sizeof();
    v6 = sub_1000486B4();
    if (sub_1000486E8(v6))
    {
      sub_100048608();
      v7 = ccder_blob_encode_body();
      if (v7 && (sub_10004869C(v7, v8, v9, v10, v11, v12, v13, v14, v17), ccder_blob_encode_tl()) && (sub_100048550(), sub_100048530(), sub_1000485E4(), sub_100048530(), v15 == v1) && (v16 = sub_1000486D0()) != 0)
      {
        return sub_100048500(v16);
      }

      else
      {
        sub_1000485C4();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10006C500()
{
  sub_1000486A8();
  v2 = strlen(v1);
  result = 4294967285;
  if (v0)
  {
    if (v2 <= 0x10)
    {
      __memcpy_chk();
      return sub_10006C41C();
    }
  }

  return result;
}

uint64_t sub_10006C5B8()
{
  result = sub_10004872C();
  if (v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v2 + 2;
      v5 = *(v2 + 1);
      ccder_sizeof();
      v6 = sub_1000486B4();
      v7 = sub_1000486E8(v6);
      if (v7)
      {
        v8 = v7;
        if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (v9 = v4 + *(v3 + 1), ccder_blob_encode_body(), sub_10004857C(), sub_100047A5C(), ccder_blob_encode_tl(), sub_10004857C(), v10 == v8) && (v11 = sub_1000486D0()) != 0)
        {
          return sub_100048500(v11);
        }

        else
        {
          sub_1000485C4();
          free(v8);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        return 4294967279;
      }
    }
  }

  return result;
}

uint64_t sub_10006C6E0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v22 = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(&v22 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), sub_100048530(), sub_100047A5C(), ccder_blob_encode_tl(), sub_100048530(), v20 == v17) && sub_1000486D0())
      {
        result = sub_10004862C();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_10006C8E4()
{
  result = sub_10004872C();
  if (v0)
  {
    v5 = v3;
    if (v3)
    {
      if (v4)
      {
        strlen(v4);
        v6 = *(v5 + 1);
        ccder_sizeof();
        v7 = sub_1000486B4();
        if (sub_1000486E8(v7))
        {
          sub_100048608();
          if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (sub_100048550(), sub_100048530(), sub_1000485E4(), sub_100048530(), v8 == v1) && (v9 = sub_1000486D0()) != 0)
          {
            return sub_100048500(v9);
          }

          else
          {
            sub_1000485C4();
            free(v1);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10006C9D4(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (sub_10006C148(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v7 = a2 + 2 + *(a2 + 1);
      v8 = ccder_sizeof();
      v9 = sub_1000486E8(v8);
      v3 = v9;
      if (v9)
      {
        v15 = v9;
        if (!ccder_blob_encode_body())
        {
          goto LABEL_15;
        }

        v18 = v3;
        v19 = v15;
        v10 = a2 + 2 + *(a2 + 1);
        ccder_blob_encode_body();
        sub_10004857C();
        v18 = v3;
        v19 = v11;
        sub_100047A5C();
        ccder_blob_encode_tl();
        sub_10004857C();
        if (v12 != v3)
        {
          goto LABEL_15;
        }

        v13 = sub_1000486D0();
        if (v13)
        {
          v4 = 0;
          v13[1] = v3;
          v13[2] = 0;
          *v13 = *a1;
          *a1 = v13;
          v3 = 0;
        }

        else
        {
LABEL_15:
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t sub_10006CB60(uint64_t a1)
{
  v7 = sub_100048638(a1);
  if (v2)
  {
    v3 = v2;
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    v6 = *v3;
    v5 = v3[1];
    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v7;
  return 1;
}

uint64_t sub_10006CC08(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v37 = *a1;
  if (a2)
  {
    v7 = *a1;
    sub_10004851C();
    v8 = ccder_blob_decode_range();
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v5 = v38;
    v16 = (v39 - v38);
    sub_100048680(v8, v9, v10, v11, v12, v13, v14, v15, v37, *(&v37 + 1), v38, v39, v40);
LABEL_4:
    sub_10004851C();
    v17 = ccder_blob_decode_range();
    if (v17)
    {
      sub_100048680(v17, v18, v19, v20, v21, v22, v23, v24, v37, *(&v37 + 1), v38, v39, v40);
      if (v34 <= 4)
      {
        v35 = *v33;
        *a3 = v5;
        *(a3 + 8) = v16;
        *(a3 + 16) = v35;
        *(a3 + 20) = v6;
        return sub_100048540(v25, v26, v27, v28, v29, v30, v31, v32, v37);
      }
    }

    return 0;
  }

  LODWORD(v40) = v4;
  result = sub_10006CCE4(&v37, 4, v5, &v40);
  if (result)
  {
    v16 = v40;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_10006CCE4(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  sub_100048638(a1);
  sub_10004851C();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_100048680(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return sub_100048540(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return sub_100048540(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_10006CD64(uint64_t a1)
{
  v17 = sub_100048638(a1);
  if (v2)
  {
    sub_10004869C(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_10004869C(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100048540(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_10006CDC0(uint64_t a1)
{
  v17 = sub_100048638(a1);
  if (v2)
  {
    sub_10004869C(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_10004869C(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return sub_100048540(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t sub_10006CE20(uint64_t a1, void *a2)
{
  sub_100048638(a1);
  sub_10004851C();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100048680(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return sub_100048540(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t sub_10006CE88()
{
  sub_1000486A8();
  v1 = v0;
  v3 = v2;
  v18 = 0;
  if (sub_10006C6E0(&v18, off_1000B7F48, *v2) || sub_10006C6E0(&v18, off_1000B7F50, v3[1]) || sub_10006C6E0(&v18, off_1000B7F58, *(v3 + 1)) || sub_10006C6E0(&v18, off_1000B7F68, v3[4]) || sub_10006C6E0(&v18, off_1000B7F78, v3[5]) || sub_10006C6E0(&v18, off_1000B7F90, *(v3 + 26)) || sub_10006C6E0(&v18, off_1000B7F98, *(v3 + 34)) || sub_10006C6E0(&v18, off_1000B7CA0, *(v3 + 42)) || sub_10006C6E0(&v18, off_1000B7E68, *(v3 + 46)) || (v4 = sub_10006C41C(), v4) || v1 && (sub_10006C6E0(&v18, off_1000B7F80, *(v3 + 66)) || sub_10006C6E0(&v18, off_1000B7F88, *(v3 + 67)) || sub_10006C6E0(&v18, off_1000B8270, *(v3 + 17)) || (v4 = sub_10006C6E0(&v18, off_1000B82C0, *(v3 + 19)), v4)) || (v5 = sub_100048644(v4), v5))
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
    sub_10004861C(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);
  }

  sub_100047E54(&v18);
  return v13;
}

uint64_t sub_10006D078(uint64_t a1)
{
  result = sub_100048714(__stack_chk_guard);
  if (v4 && a1)
  {
    v5 = v3;
    if (v3)
    {
      memset_s(v3, 0x54uLL, 0, 0x54uLL);
      bzero(v7, 0x228uLL);
      v7[4] = off_1000B7F50;
      v7[9] = off_1000B7F58;
      v7[14] = off_1000B7F68;
      v7[19] = off_1000B7F78;
      v7[24] = off_1000B7F80;
      v7[29] = off_1000B7F88;
      v7[34] = off_1000B7F90;
      v7[39] = off_1000B7F98;
      v7[44] = off_1000B7CA0;
      v7[49] = off_1000B7E68;
      v7[54] = off_1000B8060;
      v8[2] = off_1000B8270;
      v8[7] = off_1000B82C0;
      sub_1000484C0();
      sub_100048758();
      *v5 = sub_10006BCCC();
      *(v5 + 1) = sub_10006BCCC();
      *(v5 + 1) = sub_10006BCCC();
      *(v5 + 4) = sub_10006BCCC();
      *(v5 + 5) = sub_10006BCCC();
      *(v5 + 26) = sub_10006BCCC();
      *(v5 + 34) = sub_10006BCCC();
      *(v5 + 42) = sub_10006BCCC();
      *(v5 + 46) = sub_10006BCCC();
      sub_10006BF98(v8, 4, v5 + 50, 16);
      v5[66] = sub_10006BCCC();
      v5[67] = sub_10006BCCC();
      *(v5 + 68) = sub_10006BCCC();
      sub_10006BCCC();
      result = sub_10004862C();
      *(v5 + 76) = v6;
    }
  }

  return result;
}

uint64_t sub_10006D2CC(uint64_t a1)
{
  result = sub_100048714(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        sub_100048664(v3);
        bzero(v7, 0x98uLL);
        v7[4] = off_1000B7F68;
        v7[9] = off_1000B7E68;
        v7[14] = off_1000B7F48;
        sub_1000484C0();
        if (sub_100048758())
        {
          *v5 = sub_10006BCCC();
          v5[1] = sub_10006BCCC();
          v5[2] = sub_10006BCCC();
          sub_10006BCCC();
          result = sub_10004862C();
          v5[3] = v6;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10006D3F8(uint64_t a1)
{
  result = sub_100048714(__stack_chk_guard);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          sub_100048664(v3);
          sub_100048664(v8);
          v12 = 0;
          v10[0] = 0u;
          v11 = 0u;
          v14 = 0u;
          v15 = 0u;
          v10[1] = off_1000B8218;
          v13 = off_1000B7D40;
          sub_1000484C0();
          sub_10006BB18();
          if (sub_10006BF98(v10, 4, v7, 16) && sub_10006BF98(&v11 + 8, 4, v8, 16))
          {
            return sub_10006BF98(&v15, 4, v9, 16) - 1;
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10006D558(uint64_t a1)
{
  result = sub_100048714(__stack_chk_guard);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x58uLL, 0, 0x58uLL);
        bzero(v8, 0x200uLL);
        v8[4] = off_1000B7D40;
        v9[2] = off_1000B7D20;
        v10[2] = off_1000B7D18;
        v10[7] = off_1000B7D38;
        v10[12] = off_1000B7FC0;
        v12 = off_1000B7F68;
        v13 = off_1000B7F70;
        v14 = off_1000B7E68;
        v15 = off_1000B7F58;
        v16 = off_1000B7F60;
        v17 = off_1000B8120;
        v18 = off_1000B8190;
        sub_1000484C0();
        sub_100048758();
        *v5 = sub_10006BCCC();
        if (!sub_10006BF98(v9, 4, v5 + 1, 16))
        {
          return 0xFFFFFFFFLL;
        }

        if (!sub_10006BF98(v10, 4, v5 + 5, 16))
        {
          return 0xFFFFFFFFLL;
        }

        v5[9] = sub_10006BCCC();
        v5[10] = sub_10006BCCC();
        v5[11] = sub_10006BCCC();
        v5[12] = sub_10006BCCC();
        v5[15] = sub_10006BCCC();
        v5[13] = sub_10006BCCC();
        v5[14] = sub_10006BCCC();
        if (!sub_1000483A8(&v11))
        {
          return 0xFFFFFFFFLL;
        }

        v6 = v5[9];
        if ((v6 & 0x400) != 0)
        {
          *(v5 + 9) = sub_10006BCCC();
          if ((v5[9] & 0x800) == 0)
          {
            return 0;
          }
        }

        else if ((v6 & 0x800) == 0)
        {
          return 0;
        }

        sub_10006BCCC();
        result = sub_10004862C();
        v5[20] = v7;
      }
    }
  }

  return result;
}

uint64_t sub_10006D7D0(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = sub_10006C500();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = sub_10006C500();
      }

      v7 = sub_100048644(a1);
      if (!v7)
      {
        v3 = 0;
        sub_10004861C(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100047E54(&v18);
  return v3;
}

uint64_t sub_10006D88C(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        sub_100048588();
        if (sub_10006BB18())
        {
          if (!sub_10006C00C())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!sub_10006C00C())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  sub_100047E54(&v6);
  return v3;
}

uint64_t sub_10006D964(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  v23 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && (v5 = a1[1], sub_10006C41C()) || a1[2] && (v6 = a1[3], sub_10006C41C()) || a1[4] && (v7 = a1[5], sub_10006C41C()) || a1[6] && (v8 = a1[7], sub_10006C41C()) || a1[8] && (v9 = a1[9], sub_10006C41C()) || a1[10] && (v10 = a1[11], sub_10006C41C()))
    {
      v3 = 4294967273;
    }

    else
    {
      v11 = sub_10006C148(&v23, &v21, &v22);
      if (v11)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        sub_10004861C(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      }
    }
  }

  sub_100047E54(&v23);
  return v3;
}

uint64_t sub_10006DAC4(int a1, int a2, void *__s)
{
  if (!__s)
  {
    return 4294967285;
  }

  memset_s(__s, 0x60uLL, 0, 0x60uLL);
  bzero(v72, 0xE8uLL);
  v71 = off_1000B7CF0;
  v72[4] = off_1000B82E0;
  v72[9] = off_1000B82D8;
  v72[14] = off_1000B7CB0;
  v72[19] = off_1000B82D0;
  v72[24] = off_1000B7D28;
  v65 = xmmword_100086360;
  v66 = 0;
  v67 = &v71;
  sub_1000484C0();
  sub_100048758();
  sub_1000484D4();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v12 = sub_1000484E8(v4, v5, v6, v7, v8, v9, v10, v11, 6, 0, 0, &v71, v68, v69, v70);
    *(v13 + 24) = v12;
    *__s = v14;
    __s[1] = v15;
  }

  sub_1000484D4();
  v16 = ccder_blob_decode_range();
  if (v16)
  {
    v24 = sub_1000484E8(v16, v17, v18, v19, v20, v21, v22, v23, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v25[4] = v24;
    __s[2] = v26;
    __s[3] = v27;
  }

  sub_1000484D4();
  v28 = ccder_blob_decode_range();
  if (v28)
  {
    v36 = sub_1000484E8(v28, v29, v30, v31, v32, v33, v34, v35, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v37 + 104) = v36;
    __s[4] = v38;
    __s[5] = v39;
  }

  sub_1000484D4();
  v40 = ccder_blob_decode_range();
  if (v40)
  {
    v48 = sub_1000484E8(v40, v41, v42, v43, v44, v45, v46, v47, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    v49[9] = v48;
    __s[6] = v50;
    __s[7] = v51;
  }

  sub_1000484D4();
  v52 = ccder_blob_decode_range();
  if (v52)
  {
    v60 = sub_1000484E8(v52, v53, v54, v55, v56, v57, v58, v59, v65, *(&v65 + 1), v66, v67, v68, v69, v70);
    *(v61 + 184) = v60;
    __s[8] = v62;
    __s[9] = v63;
  }

  sub_1000484D4();
  if ((ccder_blob_decode_range() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  __s[10] = v68;
  __s[11] = (v69 - v68);
  return result;
}

uint64_t sub_10006DCBC(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!sub_10006C500())
      {
        v5 = sub_10006C500();
        if (!v5)
        {
          v6 = sub_100048644(v5);
          if (!v6)
          {
            v3 = 0;
            sub_10004861C(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  sub_100047E54(&v17);
  return v3;
}

uint64_t sub_10006DD6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        sub_100048664(a3);
        sub_100048588();
        if (sub_10006BB18())
        {
          sub_10006C00C();
          sub_10006C00C();
          v3 = 0;
        }
      }
    }
  }

  sub_100047E54(&v5);
  return v3;
}

uint64_t sub_10006DE18(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    sub_1000484C0();
    sub_10006BB18();
    return sub_10006BCCC() & 0x1F;
  }

  return v2;
}

uint64_t sub_10006DECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(v10, 0xE8uLL);
  v9 = off_1000B7FA0;
  v10[4] = off_1000B7FA8;
  v10[9] = off_1000B7FB0;
  v10[14] = off_1000B7FB8;
  v10[19] = off_1000B7D28;
  v11[2] = off_1000B82C8;
  v6 = xmmword_100086360;
  v7 = 0;
  v8 = &v9;
  sub_1000484C0();
  sub_10006BB18();
  *a3 = sub_10006BCCC();
  *(a3 + 4) = sub_10006BCCC();
  *(a3 + 8) = sub_10006BCCC();
  *(a3 + 12) = sub_10006BCCC();
  v5 = 65;
  if (!sub_10006CCE4(v11, 4, (a3 + 16), &v5))
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 88) = v5;
  return sub_10006BF98(&v12, 4, (a3 + 96), 3) - 1;
}

void *sub_10006E044(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v2 = off_1000B7C98;
      if (off_1000B7C98)
      {
        sub_10004859C();
        sub_10006BB18();
        return 0;
      }
    }
  }

  return v2;
}

void *sub_10006E404(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  sub_100048638(a1);
  sub_10004851C();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  sub_100048680(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return sub_100048540(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t sub_10006E4A4(__int128 *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *a1;
  result = sub_100048738();
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10006E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  sub_100047A5C();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_10006E5EC(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v51) = a6;
  *(&v51 + 1) = a6 + a7;
  sub_100047A5C();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = sub_100048720(v12, v13, v14, v15, v16, v17, v18, v19, v46, 0, v51);
  v22 = sub_10006E4A4(v20, 0x8000000000000003, v21);
  if (!v22)
  {
    return 4294967277;
  }

  if (a5)
  {
    sub_10004868C();
    *a5 = v30;
  }

  v31 = sub_100048720(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, v52);
  v33 = sub_10006E4A4(v31, 0x8000000000000002, v32);
  if (!v33)
  {
    return 4294967277;
  }

  if (a4)
  {
    sub_10004868C();
    *a4 = v41;
  }

  v42 = sub_100048720(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v53);
  if (!sub_10006E4A4(v42, 0x8000000000000001, v43))
  {
    return 4294967277;
  }

  if (a3)
  {
    sub_10004868C();
    *a3 = v44;
  }

  sub_1000484D4();
  if (ccder_blob_decode_range())
  {
    v51 = v56;
    if (a1)
    {
      if (a2)
      {
        *a1 = v54;
        *a2 = (v55 - v54);
      }
    }
  }

  if (v51 == *(&v51 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

uint64_t sub_10006E6F8(uint64_t a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *a1 + *(a1 + 8);
  __s2 = *a2;
  v5 = *a2 + *(a2 + 8);
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v6 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v6, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

uint64_t sub_10006E8F4(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = (a1 + 1);
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = v11 + 4;
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}