void sub_10004B650()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_10004B6A0()
{
  sub_100004470();
  sub_100011890();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
  if (qword_1004EE428 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_1004EE428, &stru_1004E7088);
  return 0;
}

void sub_10004B710()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B788()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B7EC()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B850()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B8DC()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B968()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004B9B8()
{
  v0 = *__error();
  sub_100011884();
  sub_100011874();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004BA50()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BAA0()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BB04()
{
  sub_100011848();
  sub_10001189C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10004BBFC()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004BE40()
{
  sub_100011848();
  sub_10001189C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10004BED4()
{
  sub_100004470();
  sub_100011890();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_10004BF60()
{
  sub_100011884();
  sub_100011890();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  if (qword_1004EE428 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_1004EE428, &stru_1004E7548);
  return 0;
}

void sub_10004C058(_BYTE *a1, _BYTE *a2)
{
  sub_100011864(a1, a2);
  sub_10001189C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10004CAF8()
{
  sub_100009E08();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004CF4C()
{
  sub_100009E08();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D3C8(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 68157954;
  v3[1] = a2;
  v4 = 2096;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Raw regulatory data loaded: %.*P", v3, 0x12u);
}

uint64_t sub_10004D7D0(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v4[0] = 67109632;
  v4[1] = 5;
  v5 = 1024;
  v6 = byte_1004EDEFA - 1;
  v7 = 1024;
  v8 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "applebt_io_get_hci_event: seq_num[pipe=%d] mismatch, expected %d received %d\n", v4, 0x14u);
  if (qword_1004EE428 == -1)
  {
    return 1;
  }

  dispatch_once(&qword_1004EE428, &stru_1004E8468);
  return 0;
}

void sub_10004D8A4(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1 + 1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "applebt_io_get_hci_event: resetting next seq_num to %d\n", v3, 8u);
}

void sub_10004D94C(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "applebt_io_get_hci_event: num_items mismatch, expected 1 received %d\n", v3, 8u);
}

void sub_10004D9F0(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "applebt_io_get_hci_event: retlen %ld is bigger then maxsize %ld, triming...\n", &v4, 0x16u);
}

void sub_10004EA00()
{
  v0 = __error();
  strerror(*v0);
  sub_10001CB10();
  sub_100011874();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004EAB4()
{
  v0 = __error();
  strerror(*v0);
  sub_10001CB10();
  sub_100011874();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004EB54()
{
  v0 = __error();
  strerror(*v0);
  sub_100011874();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004EC08()
{
  v5 = *__error();
  sub_100011874();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10004ECDC()
{
  v5 = *__error();
  sub_100011874();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004EFC4()
{
  sub_10001DE40();
  sub_10001CF94(v0);
  sub_10001DE08();
  sub_10001DE20(&_mh_execute_header, v1, v2, "applebt_hci_open: IOConnectCallMethod returned (0x%08X, %s)\n", v3, v4, v5, v6, v7);
}

void sub_10004F078()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F0C8()
{
  sub_10001DE40();
  sub_10001CF94(v0);
  sub_10001DE08();
  sub_10001DE20(&_mh_execute_header, v1, v2, "applebt_hci_close: IOConnectCallMethod returned (0x%08X, %s), closing connection\n", v3, v4, v5, v6, v7);
}

void sub_10004F17C()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F1CC()
{
  sub_10001DE40();
  sub_10001CF94(v0);
  sub_10001DE08();
  sub_10001DE20(&_mh_execute_header, v1, v2, "applebt_hci_transport_reset: IOConnectCallMethod returned (0x%08X, %s)\n", v3, v4, v5, v6, v7);
}

void sub_10004F280()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F2E4()
{
  sub_10001DE40();
  sub_10001CF94(v0);
  sub_10001DE08();
  sub_10001DE20(&_mh_execute_header, v1, v2, "applebt_hci_write: IOConnectCallMethod returned (0x%08X, %s)\n", v3, v4, v5, v6, v7);
}

void sub_10004F3E8()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F474()
{
  sub_10001DE40();
  sub_10001CF94(v0);
  sub_10001DE08();
  sub_10001DE20(&_mh_execute_header, v1, v2, "applebt_hci_read: IOConnectCallMethod returned (0x%08X, %s)\n", v3, v4, v5, v6, v7);
}

void sub_10004F500()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004F578(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "DeviceTree speed = %d", v3, 8u);
}

void sub_10004F658(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "transport override from boot-arg is invalid: %llu", &v2, 0xCu);
}

void sub_10004FFE4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218242;
  v5 = v3;
  v6 = 2080;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get information to generate pcieChipset string from HWIdentifiers property chipset=%llu stepping=%s\n", &v4, 0x16u);
}

void sub_1000501B4()
{
  sub_100009E08();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100050238()
{
  sub_100009E08();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000502BC(void *a1, NSObject *a2)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_100009E08();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPC connection error: %s", v3, 0xCu);
}

void sub_10005038C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Failed to alloc output.", buf, 2u);
}

void sub_100050428()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000505A8()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050634()
{
  sub_100009E08();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100050794()
{
  sub_100009E08();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s script failed %u times in a row. pending power cycle of entire wifi/BT chip...", v2, 0x12u);
}

void sub_100050908()
{
  sub_100004470();
  sub_100004464();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}