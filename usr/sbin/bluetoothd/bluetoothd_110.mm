void sub_10080FA2C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10080FA9C()
{
  sub_10003F504();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10080FB10()
{
  sub_10003F504();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10080FBFC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10080FC6C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10080FCA8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10080FCE4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10080FD20()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10080FD5C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10080FD98()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10080FE08()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10080FE78(uint8_t *a1, void *a2, NSObject *a3)
{
  v6 = sub_10000C0FC();
  *a1 = 136446210;
  *a2 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}s", a1, 0xCu);
}

void sub_10080FEE0()
{
  sub_10000C0FC();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10080FF64()
{
  sub_10000C0FC();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10080FFF8()
{
  sub_10000C0FC();
  sub_10003F0CC();
  sub_10006DCBC(&_mh_execute_header, v0, v1, "%{public}s", v2, v3, v4, v5, v6);
}

void sub_100810070(NSObject *a1)
{
  v2 = 136446466;
  v3 = sub_10000C0FC();
  v4 = 1024;
  v5 = 0xFFFF;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", &v2, 0x12u);
}

void sub_10081010C()
{
  v0 = sub_10003F120();
  sub_10009C61C(v0, 4.8751e-34);
  sub_10003F51C();
  sub_1000B70E4(v1, v2, v3, v4);
}

uint64_t sub_100810158(NSObject *a1, char a2)
{
  sub_10000C0FC();
  sub_10006DC60();
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v5, 0x12u);
  return a2 & 1;
}

void sub_100810268()
{
  sub_1000E0ABC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1008102DC()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810358()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008103D4()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810450()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_10081054C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008105C8()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008106C4()
{
  sub_10006DCDC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1008107B8()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810834()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008108B0()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_10081092C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810AA0()
{
  sub_10006DCDC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100810B1C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810B98()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810C14()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810C90()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810D0C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810D88()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810E04()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100810F00()
{
  sub_10006DCDC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100810F7C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811078()
{
  sub_10006DCDC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1008110F4()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811170()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008111EC()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811268()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008112E4()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811360()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008113DC()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811458()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811554()
{
  sub_10006DCDC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1008115D0()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008116CC()
{
  sub_10006DCDC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100811748()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811844()
{
  sub_10006DCDC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1008118C0()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_10081193C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008119B8()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811A34()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811BA8()
{
  sub_10006DCDC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100811C9C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811D18()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811D94()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811E10()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100811FFC()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100812078()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008120F4()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100812170()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_10081226C()
{
  sub_10006DCDC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1008122E8()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_10081245C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008124D8()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100812554()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008125D0()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_10081264C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008126C8()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100812744()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008127C0()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_10081283C()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_1008128B8()
{
  sub_1000E0ABC();
  sub_1001AF8F4();
  sub_10009C628(&_mh_execute_header, v0, v1, "HCILite filtering. Buffer is smaller than expected. %ul < %ul (%s)", v2, v3, v4, v5, v6);
}

void sub_100812934()
{
  sub_10003F0FC();
  sub_10000C0FC();
  sub_10003F54C();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_1008129AC()
{
  perror("Failed to CreateThread ");
  sub_1000C52F4(108);
  sub_1008129CC(v0);
}

void sub_1008129CC(uint64_t a1)
{
  v2 = dlsym(0xFFFFFFFFFFFFFFFFLL, "WriteStackshotReport_stdc");
  if (v2)
  {
    v2("BT Stack Stuck", 3172327085);
  }

  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  if (!byte_100B5AC58)
  {
    __strlcpy_chk();
  }

  snprintf(a1, 0x80uLL, "Stack watchdog timeout on thread: %s", &byte_100B5AC58);
  qword_100B55118 = a1;
  sub_100304AF8("Watchdog_Timer - Stack Mutex try lock failed and watchdog has struck twice -- abort\n");
  sub_1001BA810(v3);
  if (sub_100084230() - 3000 < 0x3E8)
  {
    v4 = sub_1001BBF38();
    v5 = sub_1001A63E4("Stack watchdog timeout", 1, v4, 0);
    if (v5)
    {
      sub_100304AF8("%s: failed to collect BT logs 0x%08x\n", "Watchdog_Timer", v5);
    }
  }

  abort();
}

void sub_100812B34()
{
  sub_10003F0FC();
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100812BB0()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F14C();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100812C2C()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10009C644();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100812CA8()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100812D64()
{
  v0 = __error();
  strerror(*v0);
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100812E00()
{
  v0 = __error();
  strerror(*v0);
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100812EA0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100812FEC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100813028()
{
  v0 = __error();
  strerror(*v0);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100813138()
{
  v0 = __error();
  strerror(*v0);
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1008131EC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to stat file", buf, 2u);
}

void sub_10081322C()
{
  v0 = __error();
  strerror(*v0);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1008132B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008132F0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100813360()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100813C54(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "applebt_set_hci_packet_attrs_from_footer: bt_packet_attr_decode error=0x%zX", &v2, 0xCu);
}

void sub_100813CCC(int a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "applebt_get_hci_packet_length: Unknown HCI packet type=%d, length=%zu", v3, 0x12u);
}

void sub_100813D54()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100813DD4()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100813E54()
{
  sub_10000C0FC();
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

uint64_t sub_100813EE4(char *a1, uint64_t a2, _WORD *a3)
{
  v3 = 22;
  if (a1 && a3)
  {
    if (a2)
    {
      LOWORD(v4) = *a3;
      do
      {
        v5 = *a1++;
        v4 = word_1008A3980[(v5 ^ v4)] ^ ((v4 & 0xFF00) >> 8);
        *a3 = v4;
        --a2;
      }

      while (a2);
    }

    return 0;
  }

  return v3;
}

void sub_100813F30()
{
  sub_1000D660C();
  sub_1000D660C();
  __break(1u);
}

void sub_100813F70()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100813FF0()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100814070()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_1008140F0()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10009C650();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_10081416C()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F174();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_1008141E8()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_10081427C()
{
  v2 = sub_10003F120();
  *v1 = 136446210;
  *v0 = v2;
  sub_1000B70FC(&_mh_execute_header, v3, v4, "%{public}s");
}

void sub_1008142C8()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100814348()
{
  sub_10003F0FC();
  sub_10000C0FC();
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008143C8()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814450()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008144D4()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10081455C()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008145E4(_DWORD *a1, void *a2)
{
  v4 = sub_10000C0FC();
  *a1 = 136446210;
  *a2 = v4;
  sub_1000B70FC(&_mh_execute_header, v5, v6, "%{public}s");
}

void sub_10081463C(NSObject *a1)
{
  v2 = 136446210;
  v3 = sub_10000C0FC();
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s", &v2, 0xCu);
}

void sub_1008146C8()
{
  sub_10000C0FC();
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814758()
{
  sub_10003F0FC();
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008147DC()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814864()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008148EC()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814974()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_100256D44();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_1008149F0()
{
  sub_10000C0FC();
  sub_10003F0CC();
  sub_100257F78(&_mh_execute_header, v0, v1, "%{public}s", v2, v3, v4, v5, v6);
}

void sub_100814A68()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10009C650();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814AEC()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F180();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814B70()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_100259F10();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814BF4()
{
  sub_10000C0FC();
  sub_10006DCFC();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814C74()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814CFC()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814D84()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814E0C()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100814E94()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10009C65C();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100815164()
{
  sub_10003F0FC();
  sub_10025A388(v0);
  sub_10006DD18();
  sub_10003F4E4(&_mh_execute_header, v1, v2, "applebt_hci_open: IOConnectCallMethod returned (0x%08X, %s)\n", v3, v4, v5, v6, v7);
}

void sub_100815218()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100815268()
{
  sub_10003F0FC();
  sub_10025A388(v0);
  sub_10006DD18();
  sub_10003F4E4(&_mh_execute_header, v1, v2, "applebt_hci_close: IOConnectCallMethod returned (0x%08X, %s), closing connection\n", v3, v4, v5, v6, v7);
}

void sub_10081531C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081536C()
{
  sub_10003F0FC();
  sub_10025A388(v0);
  sub_10006DD18();
  sub_10003F4E4(&_mh_execute_header, v1, v2, "applebt_hci_transport_reset: IOConnectCallMethod returned (0x%08X, %s)\n", v3, v4, v5, v6, v7);
}

void sub_100815420()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100815484()
{
  sub_10003F0FC();
  sub_10025A388(v0);
  sub_10006DD18();
  sub_10003F4E4(&_mh_execute_header, v1, v2, "applebt_hci_write: IOConnectCallMethod returned (0x%08X, %s)\n", v3, v4, v5, v6, v7);
}

void sub_100815588()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100815614()
{
  sub_10003F0FC();
  sub_10025A388(v0);
  sub_10006DD18();
  sub_10003F4E4(&_mh_execute_header, v1, v2, "applebt_hci_read: IOConnectCallMethod returned (0x%08X, %s)\n", v3, v4, v5, v6, v7);
}

void sub_1008156A0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008156F0()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100815770()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_100295C14();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_1008157EC(NSObject *a1)
{
  sub_10000C0FC();
  sub_10003F0CC();
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "%{public}s", v2, 0xCu);
}

void sub_100815874()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008158FC()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100815984()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100815A0C()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F18C();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100815A90()
{
  sub_10000C0FC();
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100815B20(NSObject *a1)
{
  v2 = 136446210;
  v3 = sub_10000C0FC();
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "%{public}s", &v2, 0xCu);
}

void sub_100815BDC(char *a1)
{
  sub_100304AF8(a1);
  sub_1002F1830();
  __break(1u);
}

void sub_100815C64()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100815CE4()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100815D64()
{
  sub_10000C0FC();
  sub_10003F564();
  sub_10003F4E4(&_mh_execute_header, v0, v1, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, v3, v4, v5, v6);
}

void sub_100815DE4(NSObject *a1)
{
  v2 = 136446466;
  v3 = sub_10000C0FC();
  v4 = 1024;
  v5 = 1023;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", &v2, 0x12u);
}

void sub_100815E80()
{
  sub_1000B7018();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100815EF4()
{
  sub_1000B7018();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100815F68()
{
  sub_1000B7018();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100815FDC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100816074()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008160B0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008160EC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100816150()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081618C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008161C8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100816204()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100816268()
{
  sub_10009C668();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008162E4()
{
  sub_10009C668();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008163E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081641C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100816458()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008164C8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100816504()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100816574()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008165B0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008165EC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100816628()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100816664()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008166A0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008167D0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081684C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008168BC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081692C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081699C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100816A0C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100816A7C(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100816AB0(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100816AE4(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100816B18()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100816B88()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100816C44()
{
  sub_10003F1A4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100816F98()
{
  sub_10003F1A4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008172D8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100817314()
{
  sub_100313990();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100817388(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1008173DC()
{
  sub_10003F0B4();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10081745C()
{
  sub_10003F1A4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008174CC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081753C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008175D4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100817644()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008176B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008176F0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100817760()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081779C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081780C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100817848()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100817884()
{
  sub_1000B7018();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008178F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100817AD8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100817B14()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100817B50()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100817B8C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100817BC8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100817D94()
{
  sub_10003F0D8();
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  *v2 = 136315138;
  *(v2 + 4) = v8;
  sub_10003F1B4(&_mh_execute_header, v2, v3, "BTLQ Cannot remove Link Quality Data, device (%s) not existing", v4);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100817DEC()
{
  sub_10003F0D8();
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  *v2 = 136315138;
  *(v2 + 4) = v8;
  sub_10003F1B4(&_mh_execute_header, v2, v3, "BTLQ Cannot set Link Quality Data, device (%s) not existing", v4);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100817EE0(uint64_t a1, NSObject *a2)
{
  v2 = "stats";
  if (!a1)
  {
    v2 = "device";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BTLQ Cannot update Link Quality Data, invalid %s", &v3, 0xCu);
}

void sub_100817F70()
{
  sub_10003F0D8();
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  *v2 = 136315138;
  *(v2 + 4) = v8;
  sub_10003F1B4(&_mh_execute_header, v2, v3, "BTLQ Cannot update Link Quality Data, device (%s) not existing", v4);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100817FDC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100818018()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100818054()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008182A0()
{
  sub_10006DD40();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100818310()
{
  sub_10006DD40();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100818380()
{
  sub_10006DD40();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1008183F0()
{
  sub_10003F1D0();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10081846C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100818528()
{
  sub_10003F1D0();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100818614()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100818650(uint64_t a1)
{
  sub_1000D8E64(a1 + 192);
  v2 = (a1 + 152);
  sub_1000D6BD4(&v2);

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }
}

void sub_100818728(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = 136446466;
  v5 = v3;
  v6 = 2082;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "XPCServiceConnection (%{public}s) event: %{public}s", &v4, 0x16u);
}

void sub_1008187B4(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  v4 = *(a1 + 8);
  v5 = 136446466;
  v6 = v4;
  v7 = 2082;
  string = xpc_dictionary_get_string(xdict, _xpc_error_key_description);
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "XPCServiceConnection (%{public}s) error: %{public}s", &v5, 0x16u);
}

void sub_100818864(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPCServiceConnection (%{public}s) interrupted", &v3, 0xCu);
}

void sub_1008188E0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPCServiceConnection (%{public}s) invalidated", &v3, 0xCu);
}

void sub_100818B44()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100818D60()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008190A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008190E4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100819154()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008191F4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100819230()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081926C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008192DC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100819318()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081944C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008194BC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081952C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008195DC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081964C(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1008196A0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100819738(char *a1, uint64_t a2)
{
  if (a1[23] >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  *a2 = 136446210;
  *(a2 + 4) = v3;
  sub_10003F198();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1008197A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100819818(__int16 a1, uint64_t a2)
{
  if (__cxa_guard_acquire(&qword_100B6D2B0))
  {
    byte_100B6D2B8 = 3;
    word_100B6D2BA = a1;
    qword_100B6D2C0 = a2;

    __cxa_guard_release(&qword_100B6D2B0);
  }
}

void sub_100819904(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100819940()
{
  sub_10003F0CC();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008199C0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008199FC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100819A6C(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100819AA8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100819AE4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100819B20()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100819B5C()
{
  sub_1000B6F20();
  v2 = v1;
  sub_10003F1EC(v1, v3, v4, 5.778e-34);
  sub_10003F594(&_mh_execute_header, "MAFetch: New PowerTable BT %@ WiFi %@ Aborted", v5, v6);
}

void sub_100819BA8()
{
  sub_1000B6F20();
  v2 = v1;
  sub_10003F1EC(v1, v3, v4, 5.778e-34);
  sub_10003F594(&_mh_execute_header, "MAFetch: New PowerTable BT %@ WiFi %@ Rejected", v5, v6);
}

void sub_100819BF4()
{
  sub_1000B6F20();
  sub_10003F1EC(v1, v2, v3, 5.778e-34);
  sub_10003F594(&_mh_execute_header, "MAFetch: Unexpected Notificatin with new state %@ current state %@", v4, v5);
}

void sub_100819C38(uint64_t a1, char a2, os_log_t log)
{
  v3 = 138412802;
  v4 = @"Yes";
  v5 = 2112;
  v6 = a1;
  v7 = 1024;
  v8 = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "MAFetch: Evaluation Session Inprogress %@ new state %@ responding failure result %d", &v3, 0x1Cu);
}

void sub_100819CD8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MAFetch: Unexpected state %@", &v2, 0xCu);
}

void sub_100819DA8(uint64_t a1, NSObject *a2)
{
  sub_1000C23E0(a1, __p);
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  *buf = 136315138;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "addStaleAACPConnReqDev : device %s is already in the stale AACP connection device list", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100819EB8()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No AACP connection for device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100819F5C()
{
  sub_1000B7024();
  sub_10006DD58(4.8752e-34, v1, v2);
  sub_1003636C0(v3, v4, v5);
  sub_100075D54();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100819FD4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A010()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081A080()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081A0F0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081A160()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A200()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A264()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A2A0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A2DC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A3A4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  sub_10003F21C(a2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No AACP connection for device %{public}s", v9);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }

  *a4 = qword_100BCE8C0;
}

void sub_10081A41C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A4A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A50C()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "updateKeys: no AACP connection for device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081A560()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "requestKeys: no AACP connection for device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081A5B4()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "sendSetupCommand: no AACP connection for device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081A608()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081A678()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No valid AACP Connection for the target device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081A6CC()
{
  sub_10003F0B4();
  sub_100075D60();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10081A748()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081A7B8()
{
  sub_10003F0B4();
  sub_100075D60();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10081A834()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A870()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081A8E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A994()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081A9D0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081AA40()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081AA7C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081AAEC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081AB28()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081ABB4()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Device %{public}s has empty UUID", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081AC30()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081AC80()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081ACF0()
{
  sub_1000B7024();
  sub_10006DD58(4.8752e-34, v1, v2);
  sub_1003636C0(v3, v4, v5);
  sub_100075D54();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081AD7C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081ADF8()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "getInEarStatus: No AACP connection for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081AE4C(uint8_t *buf, NSObject *a2)
{
  *buf = 136446210;
  *(buf + 4) = "null";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "getInEarStatus: No AACP connection for %{public}s", buf, 0xCu);
}

void sub_10081AE98()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "getPrimaryBudSide: No AACP connection for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081AEEC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081AF64(void *a1, char *a2, uint64_t a3)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2080;
  *(a3 + 14) = v5;
  sub_100075D54();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_10081AFF0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B054()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B090()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B100()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B13C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B1AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B1E8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B258()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B294()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B304()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B340()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B3B0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B3EC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B45C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B498()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B508()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B544()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B5B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B5F0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B660()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B69C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B70C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B748()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081B7B8()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8149e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No active connection for a disconnect event from  device %s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081B80C(uint64_t a1, NSObject *a2)
{
  v3 = sub_1007774DC();
  sub_10003F0CC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No device found for a disconnect event from %@", v4, 0xCu);
}

void sub_10081B8B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B8F4(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10081B9A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081B9E4()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081BA80()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "publishAccRemoteFirmware: No serial numbers for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081BAD4()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "publishAccRemoteFirmware: Failed to create CoreAccessories certificate endpoint for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081BB28()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081BB64()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081BBA0()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081BC3C()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081BCD8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081BD14()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081BD50()
{
  sub_10009C67C();
  sub_1000E5A58(0, v0);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081BDF0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081BE2C()
{
  sub_10009C67C();
  sub_1000E5A58(0, v0);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081BEF4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081BF30()
{
  sub_10009C67C();
  sub_1000E5A58(0, v0);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081BFD0()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No valid AACP Connection for the addr %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081C024()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8149e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No connection exists to set remote stream state for %s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081C078()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8149e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No connection exists to notify remote stream state for %s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081C0F4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081C130()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081C16C(char *a1, unsigned __int16 *a2, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = *a2;
  *buf = 136446466;
  *(buf + 4) = v5;
  *(buf + 6) = 1024;
  *(buf + 14) = v6;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Received AACP_CUSTOM_MESSAGE_TYPE_SENSOR_V2 message from %{public}s: len %u", buf, 0x12u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10081C21C()
{
  sub_10009C67C();
  sub_1000C23E0(v0, v1);
  sub_10003F5B0();
  sub_10003F5C4();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081C2B8()
{
  sub_10009C67C();
  sub_1000C23E0(v0, v1);
  sub_10003F5B0();
  sub_10003F5C4();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081C354()
{
  sub_10009C67C();
  sub_1000C23E0(v0, v1);
  sub_10003F5B0();
  sub_10003F5C4();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081C3F0()
{
  sub_10009C67C();
  sub_1000C23E0(v0, v1);
  sub_10003F5B0();
  sub_10003F5C4();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081C48C()
{
  sub_10009C67C();
  sub_1000C23E0(v0, v1);
  sub_10003F5B0();
  sub_10003F5C4();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081C528()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081C5B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081C5F0()
{
  sub_10009C67C();
  sub_1000E5A58(0, v0);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081C690()
{
  sub_10003F0B4();
  sub_100075D60();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10081C70C(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 1024;
  *(a3 + 14) = v3;
  sub_100075D54();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10081C7DC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081C818()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081C888()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081C8F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081C968()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "versionInfoEvent: No AACP connection for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081C9BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081C9F8()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081CA90()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081CB28()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081CBC0()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081CC58()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081CCF0()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B711C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_10081CD88()
{
  sub_10003F0B4();
  sub_100075D60();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10081CE04()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081CE40()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081CEB0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081CF20()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081CF5C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081CFCC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D008()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D044()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D080()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D0BC(uint64_t a1, unsigned __int16 a2, os_log_t log)
{
  v3[0] = 68158210;
  v3[1] = 6;
  v4 = 2096;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "AP wakeup due to AAP message from device %.6P, opCode -> %u", v3, 0x18u);
}

void sub_10081D158()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D194()
{
  sub_100363690();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10081D204()
{
  sub_100363690();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10081D274()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D2B0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D2EC()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  *v2 = 141558275;
  *(v2 + 4) = 1752392040;
  *(v2 + 12) = 2081;
  *(v2 + 14) = v6;
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081D388()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D3C4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D400()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D43C()
{
  sub_100363678();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10081D4B8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081D528()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081D598()
{
  sub_100363678();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10081D610()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081D680()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081D6F0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081D760()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081D7D0()
{
  sub_1003636D4();
  sub_10003F204(v0, v1, v2, 3.8521e-34);
  sub_100075D54();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10081D810()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081D880()
{
  sub_1003636D4();
  sub_10003F204(v0, v1, v2, 3.8521e-34);
  sub_100075D54();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10081D8C0()
{
  sub_1003636D4();
  sub_10003F204(v0, v1, v2, 3.8521e-34);
  sub_100075D54();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10081D900()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D93C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D978()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081D9B4()
{
  sub_1003636D4();
  sub_10003F204(v0, v1, v2, 3.8521e-34);
  sub_100075D54();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10081D9F4()
{
  sub_100363678();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10081DA6C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081DADC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081DB18()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081DB68()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081DBA4(uint64_t a1, id *a2)
{
  sub_10000CEDC(a1 + 704, *(a1 + 712));
  v4 = *(a1 + 680);
  if (v4)
  {
    *(a1 + 688) = v4;
    operator delete(v4);
  }

  sub_10035F7AC((a1 + 632));

  sub_10007A068(a1 + 536);
  v5 = *(a1 + 504);
  if (v5)
  {
    *(a1 + 512) = v5;
    operator delete(v5);
  }

  sub_10007A068(a1 + 440);
  sub_100028EB4((a1 + 416));

  if (*(a1 + 79) < 0)
  {
    v6 = *(a1 + 56);

    operator delete(v6);
  }
}

void sub_10081DC4C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_10003F1B4(&_mh_execute_header, a2, a3, "dispatchCertificates: Failed to publish %lu certificates", a1);
}

void sub_10081DC88()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081DCC4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081DD00()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081DDB8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081DE08()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081DE78()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081DEE8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081DF58()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081DFC8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081E038()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081E0A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081E118()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081E188()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081E1F8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081E234()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081E270(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10081E2C0()
{
  sub_1000B7024();
  sub_10006DD58(3.8521e-34, v1, v2);
  sub_1003636AC(v3, v4, v5);
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "parseAACPSetupComplete %lu new events added for %{private}s", v6, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081E350()
{
  sub_1000B7024();
  sub_10006DD58(3.8521e-34, v1, v2);
  sub_1003636AC(v3, v4, v5);
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "fastConnectAACPCleanup: cleaning up AACP Event queue of size %lu for %{private}s", v6, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081E56C(os_log_t log)
{
  v1 = 136446210;
  v2 = "!fIsLocked";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_10081E5F0(os_log_t log)
{
  v1 = 136446210;
  v2 = "fIsLocked";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_10081E7B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081E7F4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081E830()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081E86C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081E8E4()
{
  sub_1000B712C(__stack_chk_guard);
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081E96C()
{
  sub_1000B712C(__stack_chk_guard);
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081EA54(uint64_t a1, char *a2, uint8_t *buf, os_log_t log)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 2082;
  *(buf + 14) = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to register endpoint %{public}s as it is already registered by session %{public}s", buf, 0x16u);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_10081EAD8()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10009C694(&_mh_execute_header, v7, v8, "Couldn't find a registered scalable pipe for session %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10081EB7C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081ECC8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081EEC4(unsigned __int8 a1, NSObject *a2)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = sub_100197C84();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Transport upgrade to classic failed due to security error. peerCLVersion=%d localVersion=%d", v3, 0xEu);
}

void sub_10081EF68()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081EFA4(const unsigned __int8 *a1, NSObject *a2)
{
  v3 = sub_10004DF60(a1);
  sub_10003F0CC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Trying to switch our key derivation method for device %{public}@", v4, 0xCu);
}

void sub_10081F134()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10081F1A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081F288()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081F2C4()
{
  sub_10003F228();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081F334()
{
  sub_1003759FC();
  __error();
  sub_10006DD6C();
  sub_1003759D0(&_mh_execute_header, v0, v1, "Failed to create socket pair for pipe 0x%04x with result %d", v2, v3, v4, v5, v6);
}

void sub_10081F3B4()
{
  sub_1003759FC();
  __error();
  sub_10006DD6C();
  sub_1003759D0(&_mh_execute_header, v0, v1, "Failed to create write dispatch source for pipe 0x%04x with result %d", v2, v3, v4, v5, v6);
}

void sub_10081F434()
{
  sub_1003759FC();
  __error();
  sub_10006DD6C();
  sub_1003759D0(&_mh_execute_header, v0, v1, "Failed to create read dispatch source for pipe 0x%04x with result %d", v2, v3, v4, v5, v6);
}

void sub_10081F4B4()
{
  sub_1003759F0();
  sub_10003F244();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

BOOL sub_10081F524(uint64_t a1, void *a2)
{
  sub_10003F238();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  return *a2 == 0;
}

void sub_10081F63C()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081F6B0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081F6EC()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081F760()
{
  sub_10003F228();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081F960()
{
  sub_10003F228();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081F9D0()
{
  sub_10003F228();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081FA40(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "serverChannel is NULL, error is %s", &v4, 0xCu);
}

void sub_10081FB4C()
{
  sub_1003759FC();
  __error();
  sub_10006DD6C();
  sub_1003759D0(&_mh_execute_header, v0, v1, "Failed to create write dispatch source for pipe 0x%04x with result %d", v2, v3, v4, v5, v6);
}

void sub_10081FBCC()
{
  sub_1003759FC();
  __error();
  sub_10006DD6C();
  sub_1003759D0(&_mh_execute_header, v0, v1, "Failed to create read dispatch source for pipe 0x%04x with result %d", v2, v3, v4, v5, v6);
}

void sub_10081FCE8()
{
  sub_1003759F0();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081FD58()
{
  sub_1003759F0();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10081FDC8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081FF88()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10081FFC4()
{
  __error();
  sub_10006DD6C();
  sub_1003759D0(&_mh_execute_header, v0, v1, "Failed to send data to socket on pipe 0x%04x with result %d", v2, v3, v4, v5, v6);
}

void sub_1008200B8()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100820238()
{
  __error();
  sub_10003F244();
  sub_1003759D0(&_mh_execute_header, v0, v1, "Received error %d from socket on pipe 0x%04x", v2, v3, v4, v5, v6);
}

void sub_10082033C()
{
  sub_10003F228();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to transmit network relay data from socket on pipe 0x%04x with result %{bluetooth:OI_STATUS}u", v2, 0xEu);
}

void sub_1008203C0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008204AC(uint64_t a1, unsigned int a2, os_log_t log)
{
  v3 = *(a1 + 48);
  if (v3 >= 5)
  {
    v4 = "Unknown BSM State";
  }

  else
  {
    v4 = off_100AEE4A8[v3];
  }

  if (a2 >= 5)
  {
    v5 = "Unknown BSM State";
  }

  else
  {
    v5 = off_100AEE4A8[a2];
  }

  v6 = 136446466;
  v7 = v4;
  v8 = 2082;
  v9 = v5;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "BandSwitchManager: INVALID STATE TRANSITION %{public}s -> %{public}s", &v6, 0x16u);
}

void sub_100820640(unsigned int a1, NSObject *a2)
{
  if (a1 > 3)
  {
    v2 = "Unknown BSM State";
  }

  else
  {
    v2 = off_100AEE488[a1];
  }

  v3 = 136315394;
  v4 = "BOOL BT::BandSwitchManager::BSMHRBBandEnable(OI_BD_ADDR *, uint8_t)";
  v5 = 2082;
  v6 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s was called from %{public}s", &v3, 0x16u);
}

void sub_100820760(uint64_t a1)
{
  sub_1000E5A58(a1, __p);
  sub_10003F5B0();
  HIDWORD(v11) = v1;
  sub_10003F250(&_mh_execute_header, v2, v3, "Received an Allowed Band CB for device %{public}s that BSM isn't aware of", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1008207F8(unsigned __int8 *a1)
{
  sub_1000BE6F8(a1, __p);
  sub_10003F5B0();
  HIDWORD(v11) = v1;
  sub_10003F250(&_mh_execute_header, v2, v3, "Device address is %s, Submitting contextual Metric BT_ALLOWED_BANDS_CB_DEV_ADD_ZERO_RED_FLAG ", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100820890()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100820900(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_10003F0CC();
  sub_10006DCBC(&_mh_execute_header, v1, v2, "XPC connection error: %{public}s", v3, v4, v5, v6, v7);
}

void sub_100820984()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008209C0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100820A10(void *a1)
{
  xpc_get_type(a1);
  sub_10003F0CC();
  sub_10006DCBC(&_mh_execute_header, v1, v2, "XPC object is not an integer (type is %{public}@)", v3, v4, v5, v6, v7);
}

void sub_100820A88(void *a1)
{
  xpc_get_type(a1);
  sub_10003F0CC();
  sub_10006DCBC(&_mh_execute_header, v1, v2, "XPC object is neither data nor null (type is %{public}@)", v3, v4, v5, v6, v7);
}

void sub_100820B00(void *a1)
{
  xpc_get_type(a1);
  sub_10003F0CC();
  sub_10006DCBC(&_mh_execute_header, v1, v2, "XPC object is not a data (type is %{public}@)", v3, v4, v5, v6, v7);
}

void sub_100820B78(void *a1)
{
  xpc_get_type(a1);
  sub_10003F0CC();
  sub_10006DCBC(&_mh_execute_header, v1, v2, "XPC object is not an array (type is %{public}@)", v3, v4, v5, v6, v7);
}

void sub_100820BF0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100820C60()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100820CD0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100820D40()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100820DB0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100820DEC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100820E28()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100820E9C(os_log_t log)
{
  v1 = 136446210;
  v2 = "0";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_100820FC4(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    atomic_load((*a2 + 24));
  }

  sub_1000E0AD0();
  HIWORD(v6) = v2;
  sub_10006DD84(&_mh_execute_header, v3, v4, "AudioRingBuffer::readFrameInternal, frame length(%lu) bigger than available buffer length (%lu)", v5, v6);
}

void sub_100821078(uint64_t a1)
{
  atomic_load((*a1 + 24));
  sub_1000E0AD0();
  HIWORD(v4) = v1;
  sub_10006DD84(&_mh_execute_header, v1, v2, "Shared memory size (%lu bytes available) has less than requested buffer length (%lu), deferring write", v3, v4);
}

void sub_10082127C(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "r: connectionStateChangedHandler receive invalid connection handle 0x%04X", buf, 8u);
}

void sub_1008214B8(NSObject *a1, const char *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "### Invalid connection ID %@\n", &v5, 0xCu);
  }

  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[BTVCConnectionManager _handleDisconnectionComplete:status:reason:]";
    v7 = 2112;
    v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ADV data missing field %@\n", &v5, 0x16u);
  }
}

void sub_10082181C(uint64_t a1, NSObject *a2)
{
  v2 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v2 = *v2;
  }

  v3 = 136446210;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%{public}s has insufficient entitlements to send MBFramework XPC messages", &v3, 0xCu);
}

void sub_100821970()
{
  v1 = 136315394;
  v2 = "BTVirtualHCIEventPacket";
  sub_10006DDBC();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: opCode 0x%04X, malloc failed", &v1, 0x12u);
}

void sub_1008219F8()
{
  v3 = 136315650;
  v4 = "BTVirtualHCIDataPacket";
  sub_10006DDBC();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: handle 0x%04X, length %d malloc failed", &v3, 0x18u);
}

void sub_100821A8C()
{
  v1 = 136315394;
  v2 = "BTVirtualLMPEventPacket";
  sub_10006DDBC();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: length %d malloc failed", &v1, 0x12u);
}

void sub_100821B28(unsigned __int8 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received wrong number of keys in master key blob received %d, Expected : 2", v2, 8u);
}

void sub_100821BA4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received wrong length of keys in master key blob: %zu", &v2, 0xCu);
}

void sub_100821D20(uint64_t a1, NSObject *a2)
{
  v2[0] = 68157954;
  v2[1] = 16;
  v3 = 2096;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "upgradeDeviceToManatee Acc Master Hint:%.16P", v2, 0x12u);
}

BOOL sub_100822598(int a1, uint64_t a2)
{
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: [BTVCLinkAdvertiser] ### Activate failed: %d\n", v6, 8u);
  }

  return a2 == 0;
}

void sub_100822650()
{
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    sub_10003F634(&_mh_execute_header, v0, v1, "Warning: [BTVCLinkAdvertiser] ### scanEnable failed: %d\n", v2, v3, v4, v5, 0);
  }
}

void sub_100822920(char a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v4 = "no";
  if (a1)
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (*(a2 + 48))
  {
    v4 = "yes";
  }

  *buf = 136315394;
  *(buf + 4) = v5;
  *(buf + 6) = 2080;
  *(buf + 14) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Set acceptor: %s -> %s\n", buf, 0x16u);
}

void sub_1008229C4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[BTVCConnection _handleHciCommands:params:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s unsupported HCI opCode", &v1, 0xCu);
}

void sub_100822A8C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315394;
  v4 = "[BTVCConnection cleanupPendingHciCommands]";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s _hciCommandList %@\n", &v3, 0x16u);
}

void sub_100822C14(uint64_t a1, id obj, char a3)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), obj);
    objc_storeStrong((a1 + 168), &_dispatch_main_q);
    *(a1 + 121) = a3 != 0;
  }
}

void sub_100822DE4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[BTVCLinkLayerControl sendingPacket:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s _sendLLControlPacket is not set", &v1, 0xCu);
}

void sub_10082338C(uint64_t a1)
{
  sub_10007A068(a1 + 224);
  sub_10000CEDC(a1 + 200, *(a1 + 208));
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_100117644(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  sub_10000CEDC(a1 + 104, *(a1 + 112));

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_100823538(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Audio Timesync: - addTimestampWithMachAbsolute Error:%@", &v2, 0xCu);
}

void sub_1008235D4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100823798()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082389C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008238D8()
{
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100823AB0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100823B48()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100823B84()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100823BC0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100823BFC()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F280(&_mh_execute_header, v7, v7, "Failed to create session info for session %{public}s", v8);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100823C54()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100823CA4(unsigned int a1, uint64_t a2, os_log_t log)
{
  if (a1 > 3)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = *(&off_100AF09F0 + a1);
  }

  v4 = 138543618;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't find a registered %{public}@ app for invalid session '%p'", &v4, 0x16u);
}

void sub_100823D4C()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F280(&_mh_execute_header, v7, v7, "Overriding background support for TCC-disabled session %{public}s", v8);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100823DA4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100823E28()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100823E64()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100823EA0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100823EDC()
{
  sub_10003F270(__stack_chk_guard);
  sub_100018384(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_1003C5938(&_mh_execute_header, v2, v3, "Couldn't find a registered app for session %{public}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_100823F68()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100823FA4()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Couldn't find a registered app for session %{public}s", v8, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100824038()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F280(&_mh_execute_header, v7, v7, "Session %{public}s is AppSessionTypeEither!", v8);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100824090()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100824128()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082418C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008241C8(uint64_t a1, NSObject *a2)
{
  sub_10003F270(__stack_chk_guard);
  sub_100018384(v3, v4);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F280(&_mh_execute_header, a2, v5, "Ignoring response as session %{public}s does not support programmatic pairing", v8);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_1008242D4()
{
  sub_10003F654();
  sub_10006DE00(v1, v2, v3, 4.8752e-34);
  sub_10009E0D0(&_mh_execute_header, "connectDeviceForApp : Notifying listeners that %{public}s is interested in %{public}@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100824324()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100824394()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008243D0()
{
  sub_10003F654();
  sub_10009C6B0();
  *v1 = v2;
  *(v1 + 4) = v3;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v4;
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10082443C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100824478()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008244B4()
{
  sub_10003F654();
  sub_10006DE00(v1, v2, v3, 4.8752e-34);
  sub_10009E0D0(&_mh_execute_header, "disconnectDeviceForApp : Notifying listeners that %{public}s is not interested in %{public}@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100824504()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100824540()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082457C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008245B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008245F4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100824630()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082466C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008246A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008246E4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082475C()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008247D0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100824840()
{
  sub_1003C5958();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008248B0()
{
  sub_10003F684();
  sub_10009C6B0();
  sub_1000E400C(v4, v1, v2, v3);
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10082490C()
{
  sub_10003F654();
  sub_10006DE00(v1, v2, v3, 4.8752e-34);
  sub_10009E0D0(&_mh_execute_header, "getAttributeValue Notifying listeners that %{public}s is interested in %{public}@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10082495C()
{
  sub_10003F684();
  sub_10009C6B0();
  sub_1000E400C(v4, v1, v2, v3);
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008249B8()
{
  sub_10003F654();
  sub_10006DE00(v1, v2, v3, 4.8752e-34);
  sub_10009E0D0(&_mh_execute_header, "setAttributeValues Notifying listeners that %{public}s is interested in %{public}@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100824A3C(uint64_t a1, NSObject *a2)
{
  sub_100018384(*(a1 + 40), &__p);
  sub_10009C688();
  v7 = 2114;
  v8 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "deviceSubscribedNotification Notifying listeners that %{public}s is interested in %{public}@", buf, 0x16u);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_100824B10()
{
  sub_10003F654();
  sub_10006DE00(v1, v2, v3, 4.8752e-34);
  sub_10009E0D0(&_mh_execute_header, "deviceSubscribedNotification Notifying listeners that %{public}s is interested in %{public}@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100824B60()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100824BD0()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F280(&_mh_execute_header, v7, v7, "Trying to dispatch a pairing request to a session (%{public}s) without an XPC connection", v8);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100824C28()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100824C98(uint64_t a1, char *a2, uint64_t a3)
{
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2082;
  *(a3 + 14) = v4;
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_100824D18()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100824D54()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100824DC4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100824E00()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100824E64(uint64_t a1, NSObject *a2)
{
  sub_10003F270(__stack_chk_guard);
  sub_1000C23E0(v3, v4);
  sub_10003F5B0();
  sub_10009C688();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Device %{public}s is incoming, send an automatic connected notice", buf, 0xCu);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_100824F00()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100824F70(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Session is AppSessionTypeEither", buf, 2u);
}

void sub_100824FD8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100825048()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008250CC()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082513C()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8149e-34);
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "AppManager::updatedFindMyDevices session:%s", v8, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100825210()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100825280()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008252BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008252F8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100825334()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082543C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_10006DD84(&_mh_execute_header, a2, a3, "MAFetch: Unable to initialize autoAsset with requested assetSelector: %@, error: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_1008254B4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10003F1EC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MAFetch: initializeWithCompletionBlock | assetSelector:%@ | error:%@", v4, 0x16u);
}

void sub_10082550C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10003F1EC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "MAFetch: asset content locked failed error %@ newer InProgress %@", v4, 0x16u);
}

void sub_100825598(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 136);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_10006DD84(&_mh_execute_header, a2, a3, "MAFetch: Failed to unlock Asset %@ for reason %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100825614(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 60;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "MAFetch: Failed to initialize periodic check timer with interval %u", v1, 8u);
}

void sub_1008256C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MAFetch: No availableForUseAttributes for status: %@", &v2, 0xCu);
}

void sub_100825740(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "MAFetch: Failure to receive status: %@", buf, 0xCu);
}

void sub_100825850(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "XpcAudioPluginDevice sendPropertyUpdatedMsg for property %s", &v2, 0xCu);
}

void sub_100825940(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "XpcAudioPluginDevice sendMsg for property %d", v2, 8u);
}

void sub_1008259F8(unsigned __int8 *a1, uint64_t a2, os_log_t log)
{
  v3 = atomic_load(a1);
  v4 = atomic_load((a2 + 41));
  v5[0] = 67109376;
  v5[1] = v3 & 1;
  v6 = 1024;
  v7 = v4 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Dropping XPC message to XpcAudioPluginDevice. Invalid transitioning state (fIsPublished %d, fIsClosing %d)", v5, 0xEu);
}

void sub_100825AD4(uint64_t a1, CFTypeRef cf, NSObject *a3)
{
  v4[0] = 68158466;
  v4[1] = 6;
  v5 = 2096;
  v6 = a1;
  v7 = 2048;
  v8 = CFGetTypeID(cf);
  v9 = 2048;
  TypeID = CFDictionaryGetTypeID();
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "datrStructure for device %{bluetooth:BD_ADDR}.6P) invalid %ld (expected %ld)", v4, 0x26u);
}

void sub_100825D0C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100825D7C()
{
  sub_10003F0B4();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100825DEC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Address is zero! Skipping", buf, 2u);
}

void sub_100825E2C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Could not find address from keychain!", buf, 2u);
}

void sub_100825FAC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008260D4(uint64_t *a1, unsigned __int8 a2, os_log_t log)
{
  v3 = *a1;
  v4 = 136315650;
  v5 = "AES128Encrypt";
  v6 = 2048;
  v7 = v3;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Incorrect checksum size %ld, expecting %d\n", &v4, 0x1Cu);
}

void sub_100826178()
{
  sub_10003F2B8();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1008261F4(os_log_t log)
{
  v1 = 136315138;
  v2 = "BTVC_SMP_Crypto_AH";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s No IRK key available - can't run AH.", &v1, 0xCu);
}

void sub_100826278()
{
  sub_10003F2B8();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1008262F4()
{
  sub_10006DE3C();
  sub_10003F698();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_1008263E8()
{
  sub_1000B7030();
  sub_10003F698();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x32u);
}

void sub_100826498()
{
  sub_10006DE3C();
  sub_10003F698();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_10082658C()
{
  sub_1000B7030();
  sub_1003CE4B0();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_10082660C()
{
  sub_10006DE3C();
  sub_10003F698();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void sub_100826700()
{
  sub_1000B7030();
  sub_1003CE4B0();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void sub_1008268E8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100826A14(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No Sco Connection handle to write to", buf, 2u);
}

void sub_100826A54(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "fAudioBytesOutstanding <= MAX_VOICE_SIZE_IN_BYTES";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
}

void sub_100826BC4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "wrote %ld bytes to audio buffer when max size is %zu", &v3, 0x16u);
}

void sub_100826DA0(uint8_t *buf, int a2, uint64_t a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 2048;
  *(buf + 10) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Timer late %u,%zu", buf, 0x12u);
}

void sub_100826DF8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100826FF8()
{
  sub_10003F1A4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100827068()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008270EC()
{
  sub_10003F0B4();
  sub_100075D60();
  sub_1000B7144(&_mh_execute_header, v0, v1, "Invalid %{bluetooth:OI_STATUS}u, %d,");
}

void sub_10082715C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008271CC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082723C()
{
  sub_10003F0B4();
  sub_100075D60();
  HIWORD(v3) = v0;
  sub_1000B7144(&_mh_execute_header, v0, v1, "setConnectionTagging failed : result = %d, deviceType = %x", v2, v3);
}

void sub_1008272C0()
{
  sub_100075D60();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100827354()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008273C4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100827434()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100827470()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008274D4(uint64_t a1, NSObject *a2)
{
  sub_100777574();
  if (v5 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  *buf = 136315138;
  v7 = p_p;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Scan Core Classic Connection Event: No device found for bt address: %s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_10082767C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000E0AE4();
  sub_10009C6C0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
  *a3 = qword_100BCE8D8;
}

void sub_100827718(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000E0AE4();
  sub_10009C6C0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
  *a3 = qword_100BCE8D8;
}

void sub_1008277B4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000E0AE4();
  sub_10009C6C0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
  *a3 = qword_100BCE8D8;
}

void sub_10082788C(os_log_t log)
{
  v1 = 136446210;
  v2 = "PlatformModelProvider::getBTHardwareModel()->supportsHWTriggeredPhyStats()";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_1008279C4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100827A00()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100827A70()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100827AAC(NSObject *a1)
{
  sub_10000C0FC();
  sub_10003F0CC();
  v3 = 1024;
  v4 = 0xFFFF;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", v2, 0x12u);
}

void sub_100827B6C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100827BA8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100827BE4()
{
  sub_10003F1A4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100827C54()
{
  sub_10003F1A4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100827D44()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100827D80()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100827E44()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100827EFC(unsigned __int8 a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 67109376;
  HIDWORD(v3) = a2;
  LOWORD(v4) = 1024;
  *(&v4 + 2) = a1;
  sub_1000B7144(&_mh_execute_header, a2, a3, "Read controller RAM error, status = %{bluetooth:OI_STATUS}u, length = %d", v3, v4);
}

void sub_100827F78()
{
  sub_100075D60();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100827FF4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100828064()
{
  sub_10003F1A4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008280D4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100828110()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100828180()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100828218()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100828288()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008282C4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100828300()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100828370(os_log_t log)
{
  v1 = 136446210;
  v2 = "prioParams";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_1008283F4(os_log_t log)
{
  v1 = 136446210;
  v2 = "fPowerAssertion == NULL";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_100828478(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BlueTool timed out running %{public}s script!", &v3, 0xCu);
}

void sub_100828528(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 48);
  v4 = 136446466;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BlueTool failed to run %{public}s script with result %ld", &v4, 0x16u);
}

void sub_1008285B4(uint64_t a1, NSObject *a2)
{
  v2[0] = 67109376;
  v2[1] = dword_100B6D6A8;
  v3 = 2048;
  v4 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Crashloop detection (%u) timestamp: %llu", v2, 0x12u);
}

void sub_100828640(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Crashloop detection reset, threshold timeout reached. Error count: %u", v1, 8u);
}

void sub_1008286BC(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 2048;
  v5 = a1 - qword_100B6D6B0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Crashloop detected %u errors in %llu", v3, 0x12u);
}

void sub_100828750(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Crashloop detection initial timestamp: %llu", &v2, 0xCu);
}

void sub_1008287C8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 56);
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BlueTool timed out running %{public}s command", &v3, 0xCu);
}

void sub_1008288AC(char *a1, void *a2, os_log_t log)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SRS: Wrong binary file: %s\n", &v3, 0xCu);
}

void sub_100828AA0(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "openpty failed with errno %d", buf, 8u);
}

void sub_100828AEC(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error reading - errno is %d", buf, 8u);
}

void sub_100828BA8(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed writing to com port - errno is %d", v3, 8u);
}

void sub_100828C74()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100828CB0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100828DDC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100828E18(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error deleting file: %@", buf, 0xCu);
}

void sub_100828E74()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100828FBC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100828FF8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082913C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008291EC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100829228()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082928C(os_log_t log)
{
  v1 = 136446210;
  v2 = "refCount >= 2";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_100829310(os_log_t log)
{
  v1 = 136446210;
  v2 = "refCount >= 0";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_1008293D8(_BYTE *a1, NSObject *a2)
{
  if (*a1)
  {
    v2 = "Supported";
  }

  else
  {
    v2 = "Not Supported";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BD_VSC_SET_MAXIMUM_CONNECTION_UPDATE_INSTANT support value is overriden: %s", &v3, 0xCu);
}

void sub_10082957C(uint64_t a1, NSObject *a2)
{
  v3 = 136446210;
  v4 = sub_100020304(a1, a1);
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Command is already outstanding %{public}s", &v3, 0xCu);
}

void sub_100829674(uint64_t a1, int a2, NSObject *a3)
{
  v5 = 136446466;
  v6 = sub_100020304(a1, a1);
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}s failed with result %{bluetooth:OI_STATUS}u", &v5, 0x12u);
}

void sub_1008299D8(sqlite3 **a1)
{
  v1 = sqlite3_errmsg(*a1);
  v4 = 136315138;
  v5 = v1;
  sub_100418474(&_mh_execute_header, v2, v3, "Failed to retrieve device info as there was an error executing lookup: %s", &v4);
}

void sub_100829A5C(sqlite3 **a1)
{
  v1 = sqlite3_errmsg(*a1);
  v4 = 136315138;
  v5 = v1;
  sub_100418474(&_mh_execute_header, v2, v3, "Failed to retrieve device info as there was an error executing lookup: %s", &v4);
}

void sub_100829AE4(uint64_t a1, uint64_t a2)
{
  sub_1000B6F4C(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_100418474(&_mh_execute_header, v2, v3, "Unknown error encountered when searching database for make name of device %{public}s", v6);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_100829B78(uint64_t a1, uint64_t a2)
{
  sub_1000B6F4C(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B7164(&_mh_execute_header, v2, v3, "Comparing friendly name: NULL Friendly Name for Device %{public}s, skipping name matching.", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_100829C08(sqlite3 **a1)
{
  v1 = sqlite3_errmsg(*a1);
  v4 = 136315138;
  v5 = v1;
  sub_100418474(&_mh_execute_header, v2, v3, "Failed to retrieve device info as there was an error executing lookup: %s", &v4);
}

void sub_100829C90(uint64_t a1, uint64_t a2)
{
  sub_1000B6F4C(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_100418474(&_mh_execute_header, v2, v3, "Unknown error encountered when searching database for make group of device %{public}s", v6);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_100829D24(uint64_t a1, uint64_t a2)
{
  sub_1000B6F4C(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_1000B7164(&_mh_execute_header, v2, v3, "Comparing friendly name: NULL Friendly Name for Device %{public}s, skipping name matching.", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_100829ED8()
{
  sub_10009C67C();
  sub_1000DEEA4(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "System has not passed first unlock (or device prefs not read yet). Do not delete device %s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_100829FAC()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Detected bluetooth name issue : Unable to read name for %{public}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10082A0B8(char *a1, uint64_t a2, NSObject *a3)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *a2 = 136446210;
  *(a2 + 4) = v4;
  sub_10003F280(&_mh_execute_header, a3, a3, "%{public}s has no tags", a2);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10082A228(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 134217984;
  v4 = a1;
  sub_10003F280(&_mh_execute_header, a2, a3, "rdar://problem/66432832 attempting to write descriptorSize: %zu", &v3);
}

void sub_10082A298(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 134217984;
  v4 = a1;
  sub_10003F280(&_mh_execute_header, a2, a3, "rdar://problem/66432832 read descriptorSize: %zu from disk", &v3);
}

void sub_10082A308(uint64_t *a1, NSObject *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = 134217984;
  v5 = v3;
  sub_10003F280(&_mh_execute_header, a2, a3, "rdar://problem/66432832 size mismatch, descriptorSize: %zu", &v4);
}

void sub_10082A3B0()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Failed to read CaseInfo message version for device: %{private}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10082A440()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Failed to read CaseInfo fw version for device: %{private}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10082A4D0()
{
  sub_10009C67C();
  sub_1000E5A58(v0, v1);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Did not write DID info for %{public}s to disk", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10082A5A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082A618()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082A688()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082A768(id *a1, NSObject *a2)
{
  [*a1 friendlyNameForType:1];
  sub_10003F0CC();
  sub_10003F280(&_mh_execute_header, a2, v3, "Failed to load '%{public}s' cache", v4);
}

void sub_10082A7F0(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2114;
  *(buf + 10) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Found %d stale paired device(s) with address %{public}@", buf, 0x12u);
}

void sub_10082A858(void *a1, uint64_t a2)
{
  sub_10003F2DC(a1, a2, 5.8381e-34);
  sub_10003F280(&_mh_execute_header, v3, v3, "Attempting to recover paired device address %{public}@ without backup UUID - previous UUID will be invalidated", v4);
}

void sub_10082A8A4()
{
  sub_10009C6CC();
  v1 = v0;
  v4 = sub_10003F2E8(v2, 5.8382e-34, v0, v3);
  sub_1000B7040(v4, v5, v6);
  _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Rebuilding missing paired device %{public}@ (%{public}@) from keychain data", v7, 0x16u);
}

void sub_10082A900(void **a1, NSObject *a2)
{
  v3 = *a1;
  v6 = 138543362;
  v7 = v3;
  v4 = v3;
  sub_10003F280(&_mh_execute_header, a2, v5, "Unable to locate device %{public}@ in disk caches", &v6);
}

void sub_10082A9C8()
{
  sub_10009C6CC();
  v3 = sub_10003F2E8(v0, 4.8752e-34, v1, v2);
  sub_1000B7040(v3, v4, v5);
  sub_1000B6F64(&_mh_execute_header, "Found corrupt '%{public}s' cache at %s", v6, v7);
}

void sub_10082AA08()
{
  sub_10009C6CC();
  v3 = sub_10003F2E8(v0, 4.8752e-34, v1, v2);
  sub_1000B7040(v3, v4, v5);
  sub_1000B6F64(&_mh_execute_header, "Found table-less '%{public}s' cache at %s", v6, v7);
}

void sub_10082AA48()
{
  sub_10009C6CC();
  sub_10003F2E8(v0, 4.8754e-34, v1, v2);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  *(v3 + 18) = 1024;
  *(v3 + 20) = 2;
  _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "'%{public}s' database version (v%d) is not valid (current version is v%d)", v5, 0x18u);
}

void sub_10082AAD0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082AB0C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082AB48()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082AB84()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082ABC0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082AC30()
{
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10082ACAC()
{
  sub_10006DE70();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10082AD28()
{
  sub_10006DE70();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10082ADA4()
{
  sub_10006DE70();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10082AE20()
{
  sub_10006DE70();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10082AE9C()
{
  sub_10006DE70();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10082AF18()
{
  sub_10006DE70();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10082B03C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082B0AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B0E8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082B158()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B1D8()
{
  sub_10009C6CC();
  v3 = sub_10003F2E8(v0, 4.8752e-34, v1, v2);
  sub_1000B7040(v3, v4, v5);
  sub_1000B6F64(&_mh_execute_header, "Database returned invalid uuid for device address %{public}s (%{public}s)", v6, v7);
}

void sub_10082B2A0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B368(uint64_t *a1)
{
  sub_1000E5A58(*a1, __p);
  sub_10003F5B0();
  HIDWORD(v11) = v1;
  sub_10003F250(&_mh_execute_header, v2, v3, "CATT already connected to %{public}s", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10082B430(uint64_t *a1)
{
  sub_1000E5A58(*a1, __p);
  sub_10003F5B0();
  HIDWORD(v11) = v1;
  sub_10003F250(&_mh_execute_header, v2, v3, "Failed to page device %{public}s for CATT", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10082B4D0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B50C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B548()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B584()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B5C0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B5FC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B638()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B674()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B6B0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B6EC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B728()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B764()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082B7D4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082B844()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082B8B4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082B924()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082B994()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082B9D0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082BA40()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082BAB0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082BB20()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082BB90()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082BBCC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082BC08()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082BC44()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082BC80()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082BCF0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082BDB0(uint64_t a1, uint64_t a2)
{
  sub_10042F784(a1, a2);
  sub_10003F5B0();
  sub_10006DE8C();
  sub_10003F6A8(&_mh_execute_header, v2, v3, "%s: %s is not a valid session", v4, v5, v6, v7, v8, __p, v11, v12, 2u);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10082BE4C(uint64_t a1, uint64_t a2)
{
  sub_10042F784(a1, a2);
  sub_10003F5B0();
  sub_10006DE8C();
  sub_10003F6A8(&_mh_execute_header, v2, v3, "%s: %s is not a valid session", v4, v5, v6, v7, v8, __p, v11, v12, 2u);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10082BEE8(uint64_t a1, uint64_t a2)
{
  sub_10042F784(a1, a2);
  sub_10003F5B0();
  sub_10006DE8C();
  sub_10003F6A8(&_mh_execute_header, v2, v3, "%s: %s is not a valid session", v4, v5, v6, v7, v8, __p, v11, v12, 2u);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10082BF84(uint64_t a1, uint64_t a2)
{
  sub_10042F784(a1, a2);
  sub_10003F5B0();
  sub_10006DE8C();
  sub_10003F6A8(&_mh_execute_header, v2, v3, "%s: %s is not a valid session", v4, v5, v6, v7, v8, __p, v11, v12, 2u);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10082C020(uint64_t a1, uint64_t a2)
{
  sub_10042F784(a1, a2);
  sub_10003F5B0();
  sub_10006DE8C();
  sub_10003F6A8(&_mh_execute_header, v2, v3, "%s: %s is not a valid session", v4, v5, v6, v7, v8, __p, v11, v12, 2u);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10082C1DC(int a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unknown platform 0x%08x detected", buf, 8u);
}

void sub_10082C328(os_log_t log)
{
  v1 = 136446210;
  v2 = "groupId != BT_CONTACT_SYNC_NONE_GROUP";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_10082C4C0(os_log_t log)
{
  v1 = 136446210;
  v2 = "uid <= kFakeEntryUidMax";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_10082C544(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error in retrieving meCard : %@", &v2, 0xCu);
}

void sub_10082C61C(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  v4 = *(a1 + 40);
  v5 = 136446466;
  v6 = v4;
  v7 = 2082;
  string = xpc_dictionary_get_string(xdict, _xpc_error_key_description);
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "XPC error for message %{public}s: %{public}s", &v5, 0x16u);
}

void sub_10082C6E0(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected XPC server event: %{public}s\n", &v2, 0xCu);
}

void sub_10082C758(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPC server error: %{public}s\n", &v2, 0xCu);
}

void sub_10082C858(char *a1, void *a2, os_log_t log)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136446210;
  v4 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Handle incoming xpc message for %{public}s", &v3, 0xCu);
}

void sub_10082C924()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082CAC8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082CC44()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082CC80()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D0B4()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D128()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D3F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D468()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D4E0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D550()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D5C4()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D638()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D6AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082D7FC()
{
  if (__cxa_guard_acquire(&unk_100B6D900))
  {
    v0 = 5489;
    dword_100B6D918 = 5489;
    v1 = 1;
    for (i = 7; i != 630; ++i)
    {
      v3 = 1812433253 * (v0 ^ (v0 >> 30));
      v0 = v3 + v1;
      *(&unk_100B6D900 + i) = i + v3 - 6;
      ++v1;
    }

    qword_100B6E2D8 = 0;
    __cxa_guard_release(&unk_100B6D900);
  }
}

void sub_10082D87C()
{
  if (__cxa_guard_acquire(&qword_100B6D910))
  {
    qword_100B6D908 = 0x6400000001;
    __cxa_guard_release(&qword_100B6D910);
  }
}

void sub_10082D8B8(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10082D90C(char *a1, uint64_t a2)
{
  if (a1[23] >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  *a2 = 136315138;
  *(a2 + 4) = v3;
  sub_10003F198();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10082D97C()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082D9F0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Audio Route Transition Metrics %@ ", buf, 0xCu);
}

void sub_10082DA48()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082DB0C(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10082DD34()
{
  sub_10003F244();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10082DDBC()
{
  sub_1000E0AF8();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10082E0BC()
{
  sub_1000E0AF8();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10082E3BC()
{
  sub_1000E0AF8();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10082E464(uint64_t a1, uint8_t *buf, os_log_t log)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  *buf = 134217984;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unexpected pincode length of %lu", buf, 0xCu);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_10082E4DC(uint64_t a1)
{
  sub_1006D1BC8(a1);
  sub_10003F0B4();
  sub_10003F094(&_mh_execute_header, v1, v2, "Invalid Keytype %d", v3, v4, v5, v6, v7);
}

void sub_10082E554()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to write link key type for device %{public}s to keychain with result %d", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10082E5B0()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to write link key data for device %{public}s to keychain with result %d", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10082E680(char *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *buf = 136446466;
  *(buf + 4) = v5;
  *(buf + 6) = 2080;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to parse malformed magic key for device %{public}s - data was %s", buf, 0x16u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10082E940()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082E97C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10082E9FC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082EA38()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10082EAE0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10082EB60()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082EB9C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082EBD8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082EC14()
{
  sub_10003F2F4();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10082ED88()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082EE78()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082EEB4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082EEF0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082EF60()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082F050()
{
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10082F150()
{
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10082F1D0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082F20C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082F248()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082F338()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082F3A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082F3E4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082F420()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082F490()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082F500()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082F570()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082F5E0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "unexpected child class", buf, 2u);
}

void sub_10082F620()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082F65C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10082F70C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082F77C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10082F7EC()
{
  sub_10003F2F4();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10082F8E0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082F950()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082F9C0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082FA30()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082FAA0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082FB10()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10082FB80()
{
  sub_10003F0CC();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "MBFXPC LOG: BTLocalDeviceMsgHandler::BTLocalDeviceStatusEventCallbackHandler() %p, fCallbacksRegistered:%d", v2, 0x12u);
}

void sub_10082FE7C(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BTLocalDeviceMsgHandler::handleBTLocalDeviceGetModulePowerMsg bluetooth power state: %x", v3, 8u);
}

void sub_100831224(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown device class %d.  Using default service set", v2, 8u);
}

void sub_100831658(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to find the system container: %llu", &v3, 0xCu);
}

void sub_100831914(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Companion phone is connected over classic during sleep - crash: %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_100831E34()
{
  sub_1004AC0C8(__stack_chk_guard);
  sub_1000B7184();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100831EAC()
{
  sub_1004AC0C8(__stack_chk_guard);
  sub_1000B7184();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100831F24()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100831F94()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100832004()
{
  sub_1004AC0C8(__stack_chk_guard);
  sub_1000B7184();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100832118(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10003F1EC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error occurred when looking into %@ directory: %@", v4, 0x16u);
}

void sub_100832170()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008321E0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10003F1EC(a1, a2, a3, 5.7781e-34);
  *(v4 + 22) = 1024;
  *(v4 + 24) = 255;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "File: %@ found by regex: %@ is over the %d char file name limit", v5, 0x1Cu);
}

void sub_100832248(void *a1, void *a2, uint64_t a3)
{
  sub_10003F1EC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error occurred when picking out highest version filename, returning end of the filenameArray: %@  Error: %@", v5, 0x16u);
}

void sub_1008322A8()
{
  sub_1000B6F80(__stack_chk_guard);
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100832320()
{
  sub_1000B6F80(__stack_chk_guard);
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1008323A8()
{
  sub_1000B6F80(__stack_chk_guard);
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100832420()
{
  sub_1000B6F80(__stack_chk_guard);
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008324A8()
{
  sub_1004AC0C8(__stack_chk_guard);
  sub_1000B7184();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100832F3C()
{
  sub_10003F0CC();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "BTDeviceMsgHandler::handleBTDeviceServiceAddCallbacksMsg session:%llx cbid:%llx", v2, 0x16u);
}

void sub_100833C98(int *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = "non-genuine";
  v5 = 134218498;
  v6 = a2;
  if (v3 == -1)
  {
    v4 = "genuine";
  }

  v7 = 1024;
  v8 = v3;
  v9 = 2080;
  v10 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "BTDeviceMsgHandler::handleBTDeviceIsGenuineAirPodsMsg device:%llx genuine:%u (%s)", &v5, 0x1Cu);
}

void sub_100833D5C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100833E40()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100833E7C(uint64_t a1)
{
  v1 = sub_1004BF95C(a1);
  sub_10003F0CC();
  sub_10006DDBC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100833F1C()
{
  sub_10003F30C();
  v1 = sub_10009E0EC(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100833FAC()
{
  sub_10003F30C();
  v1 = sub_10009E0EC(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10083403C()
{
  sub_10003F30C();
  v1 = sub_10009E0EC(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1008340CC(int *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 67109120;
  a2[1] = v2;
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_100834114()
{
  sub_10003F30C();
  v1 = sub_10009E0EC(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1008341A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008341E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
}

void sub_1008342F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10006DEE0();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100834370()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008343AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008343E8(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10083442C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100834468(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1008344AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008344E8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100834524(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1008345B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008345F4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100834658()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008346F0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100834774()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008347B0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008347EC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100834828()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100834864(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v1 != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(*v1 + 40);
      v5 = v4 > 8;
      v6 = (1 << v4) & 0x182;
      if (!v5 && v6 != 0)
      {
        ++v3;
      }

      v1 += 8;
    }

    while (v1 != v2);
  }

  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v8, v9, v10, v11, v12, 8u);
}

void sub_100834934()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100834970()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008349AC(uint64_t a1)
{
  v1 = sub_1004BF95C(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100834A34()
{
  sub_10003F30C();
  v1 = sub_1004BF95C(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100834AC4(uint64_t a1, uint64_t a2)
{
  sub_1004BF93C(a1, a2, 7.2225e-34);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100834B04()
{
  __error();
  sub_10003F244();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100834B88(uint64_t a1)
{
  v1 = sub_1004BF95C(a1);
  sub_10003F0CC();
  sub_10006DDBC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100834C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10006DEE0();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100834CA0()
{
  __error();
  sub_10003F244();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100834D38()
{
  __error();
  sub_10003F244();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100834DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10006DEE0();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100834E3C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100834EAC()
{
  __error();
  sub_10003F244();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100834F30()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100834FA0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100835010()
{
  sub_10003F30C();
  v1 = sub_1004BF95C(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1008350A0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008350DC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100835118()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083518C()
{
  sub_1004BF924();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100835200()
{
  sub_1004BF924();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100835274()
{
  __error();
  sub_10006DDBC();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100835308(uint64_t a1)
{
  v1 = sub_1004BF95C(a1);
  sub_10003F564();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100835398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10006DEE0();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100835418()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100835454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1 + 409, a2, a3, a4, a5, a6, a7, a8);
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
}

void sub_1008354F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10006DEE0();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100835570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10006DEE0();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_1008355F0()
{
  __error();
  sub_10003F244();
  sub_10003F4B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100835674()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008356B0(uint64_t a1, uint64_t a2)
{
  sub_1004BF93C(a1, a2, 7.2225e-34);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1008356F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10006DEE0();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_100835770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10006DEE0();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_1008357F0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10006DEE0();
  sub_10003F4B4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x16u);
}

void sub_1008358AC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083591C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083598C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008359FC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100835A6C()
{
  sub_1004BF924();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100835AE0()
{
  sub_10003F244();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100835B64()
{
  sub_10003F244();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100835C64()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100835D58(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100835D94()
{
  sub_10003F564();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100835E08()
{
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100835E84()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100835EF4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100835F64()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100835FA0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100835FDC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083604C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100836088()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008360F8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100836134()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100836170()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008361E0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100836250()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083628C()
{
  if (__cxa_guard_acquire(&qword_100B6EF68))
  {
    unk_100B6EF80 = 0;
    xmmword_100B6EF70 = 0uLL;
    __cxa_atexit(&std::string::~string, &xmmword_100B6EF70, &_mh_execute_header);

    __cxa_guard_release(&qword_100B6EF68);
  }
}

void sub_1008365B4(uint8_t *a1, void *a2)
{
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *a1 = 136315138;
    *a2 = "[BTVCLinkAgent _receivedAdvReport:withData:fromPeer:peerInfo:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Connect is not activated\n", a1, 0xCu);
  }
}

void sub_100836778()
{
  sub_10003F244();
  v3 = 1024;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "L2CAP Channel 0x%04x for session type %d has been unregistered with pipes remaining!", v2, 0xEu);
}

void sub_100836804(unsigned __int16 *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109632;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  v7 = 1024;
  v8 = 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "LE_L2CAP_SetIncomingConnectionsState failed with status %d psm %x for session type %d", v4, 0x14u);
}

void sub_100836948(const unsigned __int8 *a1, NSObject *a2)
{
  sub_1000D67B4(a1, __p);
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  *buf = 136446210;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Already connected to device %{public}s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100836A6C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Classic devices doesn't exist for %{public}@", buf, 0xCu);
}

void sub_100836B6C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100836BA8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100836BE4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100836C20()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100836D98()
{
  sub_10003F244();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not find a session, endpoint or pipe for cid:%d PSM:%d", v2, 0xEu);
}

void sub_100836E38()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100836EA8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100836F18()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100836F88(uint64_t a1, NSObject *a2)
{
  sub_1000E5A58(a1, __p);
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  *buf = 136446210;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Audio sink service not supported by device %{public}s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100837040()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008370B0()
{
  sub_10003F684();
  sub_10006DD58(4.8752e-34, v1, v2);
  sub_1003636C0(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Failed to close the streaming channel from device %{public}s with result %{bluetooth:OI_STATUS}u", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100837104()
{
  sub_10003F684();
  sub_10006DD58(4.8752e-34, v1, v2);
  sub_1003636C0(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Failed to disconnect A2DP profile from device %{public}s with result %{bluetooth:OI_STATUS}u", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100837158()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100837194()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100837204()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100837240()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008372D8()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100837314()
{
  sub_10003F244();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100837388()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083748C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008374C8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083752C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008375AC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083761C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100837658()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008376C8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100837738()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008377A8()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083790C()
{
  sub_10003F0B4();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10083798C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008379FC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100837A6C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100837AF0()
{
  sub_10003F684();
  sub_10006DD58(4.8752e-34, v1, v2);
  sub_1003636C0(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Failed to lookup AVDTP handle for device %{public}s with status %{bluetooth:OI_STATUS}u", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100837B44()
{
  sub_10003F684();
  sub_10006DF00(v1, v2, v3, 1.5047e-36);
  sub_1000B704C(&_mh_execute_header, "SDP query failed with error %d, aborting A2DP setup to %{public}s", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100837B94()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100837C2C()
{
  sub_10003F684();
  sub_10006DD58(4.8752e-34, v1, v2);
  sub_1003636C0(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Connection to device %{public}s failed - result was %{bluetooth:OI_STATUS}u", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100837D98()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100837E48()
{
  sub_10003F684();
  sub_10006DF00(v1, v2, v3, 1.5047e-36);
  sub_1000B704C(&_mh_execute_header, "Received endpoint discovery failure with result %d on device %{public}s", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100837E98(uint64_t a1, int a2)
{
  *(sub_1004E4C74(a1, a2, 1.5047e-36) + 10) = "null";
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100837EE4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100837F54()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100837FC4()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100838020()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838090()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838100()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838170()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008381AC()
{
  sub_10003F684();
  sub_10006DF00(v1, v2, v3, 1.5047e-36);
  sub_1000B704C(&_mh_execute_header, "Received set stream configuration failure with result %u on device %{public}s", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008381FC(uint64_t a1, int a2)
{
  *(sub_1004E4C74(a1, a2, 1.5047e-36) + 10) = "null";
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100838248()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008382B8()
{
  sub_10003F684();
  sub_10006DF00(v1, v2, v3, 1.5047e-36);
  sub_1000B704C(&_mh_execute_header, "Received get configuration failure with result %u on device %{public}s", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100838308(uint64_t a1, int a2)
{
  *(sub_1004E4C74(a1, a2, 1.5047e-36) + 10) = "null";
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100838354()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008383C4(uint64_t a1, int a2)
{
  *(sub_1004E4C74(a1, a2, 1.5047e-36) + 10) = "null";
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100838410()
{
  sub_10003F684();
  sub_10006DF00(v1, v2, v3, 1.5047e-36);
  sub_1000B704C(&_mh_execute_header, "Failed to open streaming channel failure with result %u on device %{public}s", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100838460()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008384BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008384F8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100838534()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008385A4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838614()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100838650()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008386C0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838730()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008387A4()
{
  sub_100075D6C();
  sub_10009E108(1.5047e-36, v1, v2, v3);
  sub_1000B704C(&_mh_execute_header, "Failed to start streaming procedure with result %u on device %{public}s - disconnecting", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083881C()
{
  sub_100075D6C();
  sub_10009E108(1.5047e-36, v1, v2, v3);
  sub_1000B704C(&_mh_execute_header, "Failed to suspend stream with result %u on device %{public}s, initiate device disconnection", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083886C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008388A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838918()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083897C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008389EC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838A5C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838ACC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100838B08()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838B78()
{
  sub_10003F244();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100838C10()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100838C4C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838D40()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838DB0()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838E20()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838E90()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838F00()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838F70()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100838FE4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100839054()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100839090()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100839100()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100839164()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008391A0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100839210()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083926C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008392A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100839318()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100839388()
{
  sub_10003F244();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10083940C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100839448()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100839484()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008394C0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008394FC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100839538()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100839574(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1008395A8()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083961C(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100839650()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008396C0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008396FC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100839738()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008397A8()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100839804()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100839874()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008398D0(uint8_t *buf, NSObject *a2)
{
  *buf = 136446210;
  *(buf + 4) = "null";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "fastConnectA2DPSetupComplete Failed to open streaming channel failure on device %{public}s", buf, 0xCu);
}

void sub_10083991C()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008399A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100839DA8()
{
  sub_10003F088();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100839E90()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100839F00()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083A168()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083A1D8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083A248()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Application is trying to publish a characteristic value with reserved UUID %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083A33C(char *a1, uint8_t *buf, int a3, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *buf = 136446466;
  *(buf + 4) = v5;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to re-publish service %{public}s with result %d!", buf, 0x12u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10083A4B0()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Ignoring update for session %{public}s as there is already one queued", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083A504()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No subscribed devices for %{public}s!", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083A558()
{
  sub_10003F0D8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  sub_10003F21C(v2, v6, 4.8751e-34);
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Unable to find Client Characteristic Configuration Descriptor for %{public}s!", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083A5AC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083A61C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Client config went away while waiting to send update!", buf, 2u);
}

void sub_10083A65C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083A6CC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083A8B0()
{
  sub_10003F088();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083A954(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = 512;
  *(buf + 4) = 2048;
  *(buf + 10) = a1 + a2 - 512;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Refusing Prepare Write Request as it would exceed the maximum amount of data queued (%u) for this connection by %lu byte(s)", buf, 0x12u);
}

void sub_10083AC9C()
{
  sub_10003F324(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083AD0C()
{
  sub_10003F324(__stack_chk_guard);
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083ADA4()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083AE64(char *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *buf = 136446466;
  *(buf + 4) = v5;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s can't send data to %{public}@ since its not connected", buf, 0x16u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10083AF10()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B008()
{
  sub_10003F324(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B078()
{
  sub_10003F324(__stack_chk_guard);
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B0E8()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B1D0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083B20C()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B31C()
{
  sub_1000B6F20();
  sub_10006DF24(v1, v2, v3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Device %{public}@ for session %{public}s is disconnecting, lets wait for it to disconnect and try again", v4, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083B3A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083B3E0()
{
  sub_1000B6F20();
  sub_10006DF24(v1, v2, v3, 5.8382e-34);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Already trying to connect to same device %{public}@, %{public}s", v4, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083B468()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083B4B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083B508()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B578()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B5E8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B658()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B6C8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B738()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B7A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083B7E4(char a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a2 + 304);
  v4[0] = 67109376;
  v4[1] = a1 & 1;
  v5 = 1024;
  v6 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "moreAvailable=%d, isFromADVBuffer=%d", v4, 0xEu);
}

void sub_10083B8A0()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083B8DC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083B94C()
{
  sub_10003F0CC();
  sub_1005076AC();
  sub_10006DD84(&_mh_execute_header, v0, v1, "%@ is not allowed for %@, skipping notification");
}

void sub_10083B9BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083B9F8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BA34()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BA70()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BAAC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BAE8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BB24()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083BB94()
{
  sub_10003F324(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083BC40()
{
  sub_10003F0CC();
  sub_1005076AC();
  sub_10006DD84(&_mh_execute_header, v0, v1, "canSessionScanForService %@ %@");
}

void sub_10083BCB0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BCEC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BD9C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BDD8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BF04()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083BF40()
{
  sub_10003F324(__stack_chk_guard);
  sub_10003F318();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "session %{public}@ device %{public}@ evicted", v2, 0x16u);
}

void sub_10083BFC4()
{
  sub_1000B6F20();
  if (*(v2 + 23) >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = *v2;
  }

  *v3 = 67109378;
  *(v3 + 4) = v1;
  *(v3 + 8) = 2082;
  *(v3 + 10) = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Couldn't find service ID 0x%x for session %{public}s", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083C044()
{
  sub_10003F324(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083C0B4()
{
  sub_10003F324(__stack_chk_guard);
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083C124()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083C1BC(uint64_t a1, NSObject *a2)
{
  sub_100018384(a1, __p);
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  *buf = 136446210;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to start advertising as session %{public}s is already advertising!", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10083C29C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083C440(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to generate DHK with result %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_10083C4B8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to generate DIV with result %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_10083C530(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to generate LTK with result %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_10083C650()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083C73C()
{
  sub_10003F330();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10083C7AC()
{
  sub_10003F330();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10083C81C()
{
  sub_10009C6E4(__stack_chk_guard);
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083C8DC()
{
  sub_10009C6E4(__stack_chk_guard);
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10083CA38()
{
  sub_10003F6C8();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10083CAA8()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083CB1C()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083CB90()
{
  sub_10003F6C8();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10083CC00()
{
  sub_10009C6E4(__stack_chk_guard);
  sub_10050D238();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10083CC70()
{
  sub_10009C6E4(__stack_chk_guard);
  sub_10050D238();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10083CF70()
{
  v0 = __error();
  strerror(*v0);
  sub_10006DCBC(&_mh_execute_header, v1, v2, "iconv_close failed: %s", v3, v4, v5, v6, 2u);
}

void sub_10083CFF4()
{
  v0 = __error();
  strerror(*v0);
  sub_10006DCBC(&_mh_execute_header, v1, v2, "iconv failed with unexpected error: %s", v3, v4, v5, v6, 2u);
}

void sub_10083D100()
{
  v0 = __error();
  strerror(*v0);
  sub_10006DCBC(&_mh_execute_header, v1, v2, "iconv_open failed: %s", v3, v4, v5, v6, 2u);
}

void sub_10083D238()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083D2A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083D3F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083D468()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083D4D8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083D548()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}