void sub_10083D5B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083D71C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083D78C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083D7FC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083D838()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083D8A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083D990()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083DA44()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083DADC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Report with invalid RSSI found (127)", buf, 2u);
}

void sub_10083DD34(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136446210;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't find accessory manager for session %{public}s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10083DDA8(uint8_t *buf, NSObject *a2)
{
  *buf = 136446210;
  *(buf + 4) = "(NULL)";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't find accessory manager for session %{public}s", buf, 0xCu);
}

void sub_10083DDF4(uint64_t a1)
{
  sub_1000E5A58(a1, __p);
  sub_10003F5B0();
  HIDWORD(v11) = v1;
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is an unknown accessory", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10083DEB8(uint64_t a1)
{
  sub_1000E5A58(a1, __p);
  sub_10003F5B0();
  HIDWORD(v11) = v1;
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is an unknown accessory", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10083DF54(uint64_t a1)
{
  sub_1000E5A58(a1, __p);
  sub_10003F5B0();
  HIDWORD(v11) = v1;
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is an unknown accessory", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10083DFEC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "sensorStreamingConfigMsgReceived sendToAccessoryEventCallback with result %d", v2, 8u);
}

void sub_10083E064(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "remoteStreamUpdate: unknown stream state %d ", v2, 8u);
}

void sub_10083E2D0()
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

  sub_10006DF48(v2, v6, 7.2225e-34);
  sub_1005266C8(&_mh_execute_header, v7, v8, "Failed to get device handle for device %{private, mask.hash}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083E324(char *a1, uint8_t *buf, int a3, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *buf = 141558531;
  *(buf + 4) = 1752392040;
  *(buf + 6) = 2081;
  *(buf + 14) = v5;
  *(buf + 11) = 1024;
  *(buf + 6) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to register device %{private, mask.hash}s - result was %d", buf, 0x1Cu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10083E3BC()
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

  sub_10006DF48(v2, v6, 7.2225e-34);
  sub_1005266C8(&_mh_execute_header, v7, v8, "Failed to get device %{private, mask.hash}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083E410()
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

  sub_10006DF48(v2, v6, 7.2225e-34);
  sub_1005266C8(&_mh_execute_header, v7, v8, "Address %{private, mask.hash}s not valid or device has disconnected", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10083E884(uint64_t a1)
{
  sub_1000B6F8C(a1, __stack_chk_guard, v7);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v1, v2, "BTAccessoryManagerGetSpatialAudioPlatformSupport:  %{public}s Does not support spatial", v3, v4, v5, v6, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10083E90C(uint64_t a1)
{
  sub_1000B6F8C(a1, __stack_chk_guard, v7);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v1, v2, "BTAccessoryManagerGetStereoHFPSupport:  %{public}s Does not support spatial", v3, v4, v5, v6, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10083E994(uint64_t a1)
{
  sub_1000B6F8C(a1, __stack_chk_guard, v7);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v1, v2, "BTAccessoryManagerGetStereoHFPSupport:  %{public}s supports non-headtracked spatial", v3, v4, v5, v6, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10083EA50(uint64_t a1)
{
  sub_1000B6F8C(a1, __stack_chk_guard, v7);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v1, v2, "BTAccessoryManagerGetDeviceSoundProfileSupport:  %{public}s Does not support Spatial Profile", v3, v4, v5, v6, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10083EAD8(uint64_t a1)
{
  sub_1000B6F8C(a1, __stack_chk_guard, v7);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v1, v2, "BTAccessoryManagerGetDeviceSoundProfileAllowed:  %{public}s Does not support spatial", v3, v4, v5, v6, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10083EB60(uint64_t a1)
{
  sub_1000B6F8C(a1, __stack_chk_guard, v7);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v1, v2, "BTAccessoryManagerSetDeviceSoundProfileAllowed:  %{public}s Does not support spatial", v3, v4, v5, v6, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10083ED88(unsigned __int16 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BTAccessoryManagerGetCaseSerialNumbersForAppleProductId entered BT API productId %d", v2, 8u);
}

void sub_10083EE78(unsigned __int8 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "BTAccessoryManagerGetCaseSerialNumbersForAppleProductIds entered BT API numProductIds %u", v2, 8u);
}

void sub_10083F188()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083F1F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083F2F8(uint64_t a1)
{
  sub_1000E5A58(a1, __p);
  sub_10003F5B0();
  HIDWORD(v11) = v1;
  sub_10003F250(&_mh_execute_header, v2, v3, "Braille service not supported by device %{public}s", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10083F394()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083F404()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083F440()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083F47C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083F53C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083F5C0(char a1, int a2, os_log_t log)
{
  v3 = "accept";
  if ((a1 & 1) == 0)
  {
    v3 = "deny";
  }

  v4 = 136315394;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to %s connection attempt - result was %d", &v4, 0x12u);
}

void sub_10083F674(uint64_t a1)
{
  sub_1000E5A58(a1, __p);
  sub_10003F5B0();
  HIDWORD(v11) = v1;
  sub_10003F250(&_mh_execute_header, v2, v3, "Failed to open serial port for braille connection to device %{public}s", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10083F70C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083F748()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10083F784()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083F7F4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10083F9A4(char *a1, uint8_t *buf, int a3, os_log_t log)
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
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "GATT Failed to disconnect GATT profile from device %{public}s with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10083FDA0(char a1, NSObject *a2)
{
  v2 = "not found.";
  if (a1)
  {
    v2 = "found.";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error, BTDeviceConfigureLinkKey device not found or linkkey %s ", &v3, 0xCu);
}

void sub_10083FF3C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  sub_100018384(a1, __p);
  if (v7 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  *a2 = 136446210;
  *(a2 + 4) = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to get default local device for session %{public}s", a2, 0xCu);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10083FFD0(uint8_t *buf, NSObject *a2)
{
  *buf = 136446210;
  *(buf + 4) = "(NULL)";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get default local device for session %{public}s", buf, 0xCu);
}

void sub_100840450(uint64_t a1)
{
  sub_10007A068(a1 + 56);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;

    operator delete(v2);
  }
}

void sub_100840540(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Received connection result without a matching attempt for service 0x%08x", v2, 8u);
}

void sub_1008405B8(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136446210;
  *(buf + 4) = v4;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "We got a disconnection result without a previous connection for service %{public}s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1008406B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084071C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100840758()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008407BC()
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

void sub_100840840()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008408B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008408F4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100840980()
{
  sub_1000E0B14();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008409F8()
{
  sub_1000E0B14();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100840A70()
{
  sub_1000E0B14();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100840AE8(uint64_t a1)
{
  sub_1000E5A58(a1, __p);
  sub_1000B6FA8();
  if (v2 != v3)
  {
    v4 = v1;
  }

  else
  {
    v4 = __p;
  }

  v12 = 136446210;
  v13 = v4;
  sub_1000B711C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100840B8C()
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

void sub_100840BE8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100840C4C()
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

void sub_100840CA8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100840D18()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100840D94()
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
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "HID Battery Failed to fetch battery level for hid %{public}s", v8, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100840DF4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100840EC8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100840F38()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100840F74()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100840FB0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100840FEC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100841028()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100841064()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100841278()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008412B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008412F0(uint64_t a1)
{
  sub_1000E5A58(a1, __p);
  sub_1000B6FA8();
  if (v2 != v3)
  {
    v4 = v1;
  }

  else
  {
    v4 = __p;
  }

  v12 = 136446210;
  v13 = v4;
  sub_1000B711C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100841394(uint64_t a1)
{
  v1 = *(a1 + 1136);
  v2 = *(a1 + 1132);
  sub_1000E5A58(a1, __p);
  sub_1000B6FA8();
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = __p;
  }

  v14 = 136446722;
  v15 = v6;
  v16 = 1024;
  v17 = v2;
  v18 = 1024;
  v19 = v1;
  sub_1000B711C();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x18u);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100841820(uint64_t a1, char a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Did not find TU call to set Call Screening %@ to value:%d", &v3, 0x12u);
}

void sub_100841AE8(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100841C14()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Cloud asked to unpair, dont easy unpair right now: %s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100841C68()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Removing Magic pairing device %{public}s from device list failed", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100841CBC()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Removing Device Record for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100841D10()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Removing Cloud Magic Settings for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100841D64()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Removing Device Support Information for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100841DB8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100841E28()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[MP-] Error removing cloud record for %{public}s with error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100841E78()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[MP-] Error removing new cloud magic settings record for %{public}s with error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100841EC8()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[MP-] Error removing Device Support Information for %{public}s with error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100841F40()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100841F7C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100841FB8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100841FF4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100842030()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008420A0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100842110()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084214C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100842188()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008421C4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100842200()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100842270()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008422E0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100842350()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084238C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008423C8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100842404()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100842474()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008424B0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100842520()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008425C4()
{
  sub_10003F0CC();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1008426AC()
{
  sub_10003F0CC();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10084272C(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100842790()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[MP] Error removing cloud device, %{public}s with error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008427E0()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[MP] Error removing new cloud magic settings, %{public}s with error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100842830()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[MP] Error removing cloud info settings, %{public}s with error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008428A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008428E4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 241);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "updateAACPVersionInfo: Invalid device or not signed in %d ", v3, 8u);
}

void sub_100842960()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008429D0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100842A0C()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "updateAACPVersionInfo: No valid versionInfo for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100842A60()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100842A9C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100842AD8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100842B14()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100842B84()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100842BF4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100842C64()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100842CD4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100842D44()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "updateCaseInfo: No valid caseInfo for %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100842D98()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100842E08()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100842F60()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100842FD0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100843040()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[Pairing] Unable to fetch magic settings: %{public}s, Error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100843090()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[Pairing] Unable to fetch cloud device: %{public}s, Error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008430E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084311C(char *a1, void *a2, NSObject *a3)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  sub_10003F1B4(&_mh_execute_header, a2, a3, "Cannot find device or device not paired for address: %s", &v3);
}

void sub_100843198()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008431D4()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "Unable to fetch FM Status for %{public}s due to %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100843224()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100843288()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[3rd] Failed to remove cloud record for %{public}s with error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008432D8()
{
  sub_10003F654();
  sub_10006DF68(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "[3rd] Failed to create cloud record for %{public}s with error: %@", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100843328()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Magic paired device for %{public}s not found", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084337C()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Magic Pairing failed, force disconnecting device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008433D0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100843454()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084368C()
{
  sub_10003F0B4();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008436FC()
{
  sub_10003F0B4();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100843794()
{
  sub_10003F088();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008439AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008439E8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100843A60(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 136);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Is incompatible Hid device connected: %u", v3, 8u);
}

void sub_100843B2C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100843B90()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100843C00()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100843D0C(uint64_t a1, NSObject *a2)
{
  sub_10003B85C(a1, __p);
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
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Cannot hash UUID of unexpected length (%{public}s)", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100844148(uint8_t *a1, dispatch_queue_t queue, const char **a3, NSObject *a4)
{
  label = dispatch_queue_get_label(queue);
  *a1 = 136315138;
  *a3 = label;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "%s", a1, 0xCu);
}

void sub_100844204(char *a1, void *a2, os_log_t log)
{
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = 136315138;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s", &v4, 0xCu);
}

void sub_100844730(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Sandbox extension consume failed with error: %lld", &v2, 0xCu);
}

void sub_10084482C(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ABC Snapshot failed with code %lld and reason: %s", buf, 0x16u);
}

void sub_100844B04(char a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67240450;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SystemHealth post component status: %{public, BOOL}d Error: %@", v3, 0x12u);
}

void sub_100844B90(char a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "SystemHealth post component status: %{public, BOOL}d", v2, 8u);
}

void sub_100844C20(unsigned __int16 a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Delete %d out %d entries from PowerAssertionHistory", v3, 0xEu);
}

void sub_100844CAC(uint64_t a1)
{
  sub_10057EF30(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100844D28()
{
  sub_10003F30C();
  sub_10057EF30(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100844DA4()
{
  sub_10003F30C();
  sub_10057EF30(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100844E20(uint64_t a1)
{
  sub_10057EF30(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100844EC4()
{
  sub_10003F30C();
  sub_10057EF30(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100844F40()
{
  sub_10003F30C();
  sub_10057EF30(v0);
  sub_10003F54C();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100844FBC(uint64_t a1)
{
  sub_10057EF30(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100845038(uint64_t a1)
{
  sub_10057EF30(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1008450B4(unsigned int a1, uint64_t a2, int a3, NSObject *a4)
{
  v7 = sub_10057CC18(a1);
  *a2 = 136446466;
  *(a2 + 4) = v7;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "%{public}s profile rejecting incoming connection as it would exceed the maximum number of connections (%d)", a2, 0x12u);
}

void sub_100845128()
{
  sub_10003F30C();
  sub_10057EF30(v0);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1008452CC(unsigned int *a1, NSObject *a2)
{
  sub_10057CC18(*a1);
  sub_10003F0CC();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Can not be connecting/connected to %{public}s profile at the same time", v3, 0xCu);
}

void sub_10084536C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Gatt connected with error %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_100845434(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Gatt device %{public}@ connected over classic when it should have be rejected", &v2, 0xCu);
}

void sub_100845540(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Gatt device connected with error %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_10084569C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084570C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100845748(int a1, NSObject *a2)
{
  sub_1000E5A58(*qword_100B6F0D0, __p);
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  *buf = 136446466;
  v8 = v4;
  v9 = 1024;
  v10 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SDP connection to device %{public}s failed with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100845824(os_log_t log)
{
  v1 = 136446210;
  v2 = "!sdpQueryInfo->stackWillstop";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_1008458A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008458F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100845968()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008459D8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100845A48()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100845B00()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100845B70(os_log_t log)
{
  v1 = 136446210;
  v2 = "!isStackShuttingDown";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_100845BF4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100845C64()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100845CD4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100845D44()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100845DB4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100845F1C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008461E8()
{
  sub_10006DFAC(__stack_chk_guard);
  sub_10003F318();
  sub_10003F484(&_mh_execute_header, v0, v1, "%{public}s is already started", v2, v3, v4, v5, v6);
}

void sub_100846280()
{
  sub_10006DFAC(__stack_chk_guard);
  sub_10003F318();
  sub_10003F484(&_mh_execute_header, v0, v1, "%{public}s is already stopped", v2, v3, v4, v5, v6);
}

void sub_100846368()
{
  sub_10006DFAC(__stack_chk_guard);
  sub_10003F318();
  sub_10003F484(&_mh_execute_header, v0, v1, "%{public}s is not started", v2, v3, v4, v5, v6);
}

void sub_1008463D8()
{
  sub_10006DFAC(__stack_chk_guard);
  sub_10003F318();
  sub_10003F484(&_mh_execute_header, v0, v1, "%{public}s - profile was null", v2, v3, v4, v5, v6);
}

void sub_10084645C(char *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *a1;
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  v6 = (a2 + 8);
  if (*(a2 + 31) < 0)
  {
    v6 = *v6;
  }

  *buf = 136446466;
  *(buf + 4) = v5;
  *(buf + 6) = 2082;
  *(buf + 14) = v6;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Device %{public}s is no longer authorized for service %{public}s - disconnecting", buf, 0x16u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_100846EA4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Service event device handle is NULL", buf, 2u);
}

void sub_100846FE8(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136446210;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Device %{public}s has empty UUID", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1008470C4()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Fast connect ACL failed for device with %{public}s error %d", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008472E8()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "PFC to device %{public}s failed with %d", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100847394(os_log_t log)
{
  v1 = 136446210;
  v2 = "device != NULL";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_100847508(uint64_t a1, NSObject *a2)
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "fastConnectProcessNextConnection for device %{public}s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1008477C8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100847804()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100847840()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084787C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008478B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084791C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100847980()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100847A68()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100847AD8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100847B48()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100847BB8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100847C28()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100847C98()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100847D24()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100847D94()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100847E04()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100847EB8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100847FD0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084800C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100848164(os_log_t log)
{
  v1 = 136315138;
  v2 = "loadCalibrationData";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s:Unable to copy calibration data", &v1, 0xCu);
}

void sub_100848284()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10084830C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100848348()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100848384()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008483C0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100848430()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008484A0()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10084852C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008485A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008485E0()
{
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100848678()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100848704()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100848774(os_log_t log)
{
  v1 = 136446210;
  v2 = "constEirLen < OI_DHCI_EIR_DATA_LEN";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_1008487F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084887C()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100848908()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100848944()
{
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008489DC(uint64_t a1, uint64_t a2)
{
  sub_10003F2DC(a1, a2, 4.8752e-34);
  *(v2 + 12) = 1024;
  *(v2 + 14) = v3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s completed with status %{bluetooth:OI_STATUS}u", v4, 0x12u);
}

void sub_100848A30(uint64_t a1, uint64_t a2)
{
  sub_10003F2DC(a1, a2, 4.8752e-34);
  *(v2 + 12) = 1024;
  *(v2 + 14) = 0;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}s completed with status %{bluetooth:OI_STATUS}u", v4, 0x12u);
}

void sub_100848B08()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100848B44()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100848C3C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100848C78()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100848CB4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100848CF0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100848D2C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100848D9C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100848E0C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100848E7C()
{
  sub_10006DFBC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100848EEC()
{
  sub_10006DFBC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100848F5C()
{
  sub_10006DFBC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100848FCC()
{
  sub_10006DFBC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_10084903C()
{
  sub_10006DFBC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1008490AC()
{
  sub_10006DFBC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100849144()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008491C8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849238()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008492A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849318()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849388()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008493F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849468()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008494A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008494E0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849550()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008495C0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849630()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008496A0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849724()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008497BC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084982C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849928(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "devicePair.second";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
}

void sub_100849B20()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849B90()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849C00()
{
  sub_10003F0B4();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "getReportWithKeyhole 0x%x set to 0xFF failed: 0x%x", v2, 0xEu);
}

void sub_100849C84()
{
  sub_10003F0B4();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "getReportWithKeyhole 0x%x worked but returned wrong length (%lu)", v2, 0x12u);
}

void sub_100849D08()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100849F0C(uint64_t a1, NSObject *a2)
{
  v3 = sub_1005B29E8(a1, *(a1 + 136));
  v4 = 136446210;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ignoring XPC message as state is %{public}s", &v4, 0xCu);
}

void sub_100849FE0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled XPC message: %u", v2, 8u);
}

void sub_10084A09C(char *a1, unsigned __int16 a2, NSObject *a3)
{
  v5 = (*(*a1 + 56))(a1, a2);
  v6 = a1 + 56;
  if (a1[79] < 0)
  {
    v6 = *v6;
  }

  v7 = 136446466;
  v8 = v5;
  v9 = 2082;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Sending XPC message %{public}s to session %{public}s", &v7, 0x16u);
}

void sub_10084A194(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "type == GATT_ATT_TYPE_PRIMARY_SERVICE";
  sub_10009C694(&_mh_execute_header, a2, a3, "Assertion failed: %{public}s", a1);
}

void sub_10084A1D8(unsigned __int16 **a1, NSObject *a2)
{
  v2 = **a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Found orphaned handle 0x%04x in handle map", v3, 8u);
}

void sub_10084A258()
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
  sub_10009C694(&_mh_execute_header, v7, v8, "Didn't have entry in handle map for service %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084A2AC(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "type == GATT_ATT_TYPE_INCLUDED_SERVICE";
  sub_10009C694(&_mh_execute_header, a2, a3, "Assertion failed: %{public}s", a1);
}

void sub_10084A2F0()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Unable to find parent service for included service %{public}s!", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084A344()
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
  sub_10009C694(&_mh_execute_header, v7, v8, "Didn't have entry in handle map for characteristic %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084A398(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "type == GATT_ATT_TYPE_CHARACTERISTIC";
  sub_10009C694(&_mh_execute_header, a2, a3, "Assertion failed: %{public}s", a1);
}

void sub_10084A3DC()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Unable to find parent service for characteristic %{public}s!", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084A430()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Dropping value %{public}s as we couldn't find a parent characteristic", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084A484()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Unable to find parent service for value %{public}s!", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084A4D8()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Dropping descriptor %{public}s as we couldn't find a parent characteristic", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084A52C()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Unable to find parent service for descriptor %{public}s!", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084A580()
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
  sub_10009C694(&_mh_execute_header, v7, v8, "Didn't have entry in handle map for descriptor %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084A5D4(unsigned __int16 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to find parent service for characteristic handle 0x%04x!", v2, 8u);
}

void sub_10084A7A4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to perform inquiry with result %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_10084AAE0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error reading getScanStatsWithThreshold %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_10084AB58(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error reading readScanStatsWithThreshold %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_10084AC48(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to locate dirty byte in SDP record - format was invalid (type = %d, size = %d)", v3, 0xEu);
}

void sub_10084AD64(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Found invalid handle - removing associated callbacks", buf, 2u);
}

void sub_10084ADCC(os_log_t log)
{
  v1 = 136446210;
  v2 = "device != NULL";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_10084AEF8(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "(NULL)";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Had no object for the scan from %{public}s", buf, 0xCu);
}

void sub_10084B078(os_log_t log)
{
  v1 = 136315394;
  v2 = "SCAN_CORE_PAGE_SCAN_TIMER_EXPIRED_EVENT";
  v3 = 2080;
  v4 = "SCAN_CORE_PAGE_SCAN_IDLE";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Received '%s' when Scan Core Page Scan state is %s.", &v1, 0x16u);
}

void sub_10084B2FC(os_log_t log)
{
  v1 = 134217984;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "AudioSkywalk read loop is configured to an invalid audio interval (%llu). Defaulting to 22000us", &v1, 0xCu);
}

void sub_10084B82C()
{
  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "postUserNotificationHIDWithDevice";
    sub_10003F280(&_mh_execute_header, v0, v1, "%s: device is NULL", &v2);
  }
}

void sub_10084B8D0(_BYTE *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "postUserNotificationAperture";
    sub_10003F280(&_mh_execute_header, v2, v3, "%s: System does not support aperture", &v4);
  }

  *a1 = 0;
}

void sub_10084B97C(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "postUserNotificationAperture";
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: does not support event %d", buf, 0x12u);
}

void sub_10084B9D8(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v3 = 136315138;
  v4 = "postUserNotificationAperture";
  sub_10003F280(&_mh_execute_header, a1, a3, "%s: cannot find selector showHIDConnectedBannerAperture", &v3);
}

void sub_10084BA54(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v3 = 136315138;
  v4 = "postUserNotificationAperture";
  sub_10003F280(&_mh_execute_header, a1, a3, "%s: cbdevice is null", &v3);
}

void sub_10084BAD0(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v3 = 136315138;
  v4 = "postUserNotificationAperture";
  sub_10003F280(&_mh_execute_header, a1, a3, "%s: request is null", &v3);
}

void sub_10084BB60(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315394;
  *(buf + 4) = "postUserNotificationHIDWithUUID";
  *(buf + 6) = 2082;
  *(buf + 14) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: %{public}s does not have HID service", buf, 0x16u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10084BC10()
{
  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "postUserNotificationHIDWithUUID";
    sub_10003F280(&_mh_execute_header, v0, v1, "%s: uuid is NULL", &v2);
  }
}

void sub_10084BCC8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084BD18()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084BD88()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084BDF8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084BE70()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084BEE0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084BF1C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084BFC8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084C004()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C09C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084C0D8(uint64_t a1, uint64_t a2)
{
  *(sub_100075D84(a1, a2, 3.8521e-34) + 14) = 60;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10084C120()
{
  sub_10003F564();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10084C194()
{
  sub_10003F564();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10084C20C()
{
  sub_10003F564();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10084C280(uint64_t a1, uint64_t a2)
{
  *(sub_100075D84(a1, a2, 3.8521e-34) + 14) = 2;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10084C2C8()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C338()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C3A8()
{
  sub_10003F600();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10084C418()
{
  sub_10003F600();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10084C488()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C4FC()
{
  sub_10003F600();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10084C56C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C5DC()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C678()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C6E8()
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
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084C744()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084C780()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084C7BC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C8E0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C950()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084C98C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084C9FC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084CA6C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084CADC()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084CB50()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084CB8C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084CBFC()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084CD34()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084CD70()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084CDAC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084CDE8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084CE24()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084CE94()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084CF04()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084CF74()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084CFE4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084D054()
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

void sub_10084D0B0()
{
  sub_10003F0B4();
  sub_1005EB568();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10084D124()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084D194()
{
  sub_10003F228();
  sub_1005EB568();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10084D208()
{
  sub_10003F228();
  sub_1005EB568();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10084D2A4()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084D378()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084D3EC(os_log_t log)
{
  v1 = 136446210;
  v2 = "!addr.isZero()";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_10084D470(uint64_t a1, NSObject *a2)
{
  v3 = a1;
  sub_1005D264C(a1, a1);
  sub_10003F564();
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unsupported Handsfree AoS codec ID - %s (%d)", v4, 0x12u);
}

void sub_10084D504()
{
  sub_10003F348();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10084D57C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084D5EC()
{
  sub_10003F684();
  sub_10006DD58(4.8752e-34, v1, v2);
  sub_1003636C0(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Received handsfree disconnection event for device %{public}s with result %{bluetooth:OI_STATUS}u", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084D640(_DWORD *a1, int a2)
{
  *a1 = 136446466;
  sub_1005EB58C(a1, a2, "NULL");
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10084D68C()
{
  sub_10003F684();
  sub_10006DD58(4.8752e-34, v1, v2);
  sub_1003636C0(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Received SLC connection failure event for device %{public}s with result %{bluetooth:OI_STATUS}u", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084D6E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084D71C()
{
  sub_10003F684();
  sub_10006DD58(4.8752e-34, v1, v2);
  sub_1003636C0(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Failed to connect to device %{public}s due to %{bluetooth:OI_STATUS}u", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084D808()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084D878()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084D914()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084D950(_DWORD *a1, int a2)
{
  *a1 = 136446466;
  sub_1005EB58C(a1, a2, "NULL");
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10084D99C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084DA0C()
{
  sub_10003F348();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10084DA84()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084DAC0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084DB30()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084DC54()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084DCC4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084DD28()
{
  sub_10003F684();
  sub_10006DD58(1.5047e-36, v1, v2);
  sub_1005EB578(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Audio Creation failed %{bluetooth:OI_STATUS}u - %{public}s", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084DD7C(uint64_t a1, int a2)
{
  *(sub_1004E4C74(a1, a2, 1.5047e-36) + 10) = "NULL";
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10084DDC8()
{
  sub_10003F684();
  sub_10006DD58(1.5047e-36, v1, v2);
  sub_1005EB578(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Audio disconnection failed %{bluetooth:OI_STATUS}u - disconnecting device %{public}s", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084DE1C(uint64_t a1, int a2)
{
  *(sub_1004E4C74(a1, a2, 1.5047e-36) + 10) = "NULL";
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10084DE68()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084DED8()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084DF48()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084DF84()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084DFC0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084DFFC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E06C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E0A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E0E4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E154()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E1C4()
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

void sub_10084E220()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E25C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E298()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E2D4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E310()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E34C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E388()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E3C4()
{
  sub_10003F684();
  sub_10006DD58(1.5047e-36, v1, v2);
  sub_1005EB554(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Found invalid call in sent calls at index %d (call: %s)", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084E418()
{
  sub_10003F684();
  sub_10006DD58(1.5047e-36, v1, v2);
  sub_1005EB554(v3, v4, v5);
  sub_1000B704C(&_mh_execute_header, "Found invalid call in current calls at index %d (call: %s)", v6, v7);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10084E46C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E4DC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E54C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E5BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E5F8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E634()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E670()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E6AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084E6FC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E76C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E7DC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E860()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E8D0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E940()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084E9B0()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084EA64()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EAA0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EADC()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084EB50()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EB8C()
{
  sub_10003F0B4();
  sub_1005EB568();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10084EC00()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EC3C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EC78()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084ECE8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084ED58()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084ED94()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EDD0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084EE40(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10084EE7C(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10084EEB8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EEF4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EF30()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EF6C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EFA8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084EFE4()
{
  sub_10003F228();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084F054(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Reached maximum attempts (%d) to establish HandsfreeAoS call", v1, 8u);
}

void sub_10084F0D4(uint64_t a1, void *a2)
{
  v4 = qword_100BCE8F8;
  os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT);
  v5 = 134217984;
  v6 = 24;
  _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Could not allocate %lu bytes", &v5, 0xCu);
  *a2 = *(*a1 + 32);
}

void sub_10084F190()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084F200()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084F270()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084F2AC()
{
  sub_10003F0CC();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10084F354(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10084F398()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084F4F8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10084F568()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10084F658(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10084F714(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10084F748(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10084F77C(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10084F7B0()
{
  sub_10003F0CC();
  v2 = 2112;
  v3 = &off_100B33978;
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "XPC Version Check failure, received version: %@, current version: %@", v1, 0x16u);
}

void sub_10084F838()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10084F8A8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10084F918()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084F954()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084F990()
{
  sub_10003F0CC();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10084FA38(NSObject *a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412803;
    v7 = a2;
    v8 = 2160;
    v9 = 1752392040;
    v10 = 2113;
    v11 = a3;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "CloudPairing: No XPC connection to send message: %@ - %{private, mask.hash}@", &v6, 0x20u);
  }
}

void sub_10084FB00()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084FCA4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084FD14()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084FD84()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084FDF4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084FE30()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084FE6C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084FEA8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10084FF40()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10084FF7C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10084FFEC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100850028()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100850098()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008500D4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void *sub_100850198(void *a1, uint64_t a2)
{
  v2 = a1[5];
  a1[5] = a2;

  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[BTVCDevice initWithDeviceAddresData:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCDevice]%s 2\n", buf, 0xCu);
  }

  return a1;
}

void sub_100850690(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Wrote %zu bytes", &v3, 0xCu);
}

void sub_10085070C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unknown LECA Codec Index", buf, 2u);
}

void sub_10085074C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Both Sink and Source properties missing.", buf, 2u);
}

void sub_100850BFC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[BTVCLinkScanner] Update payload filter data to %@, mask %@\n", &v3, 0x16u);
}

void sub_100850C84(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  if (*a1 >= 3)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_100B01840[v2];
  }

  v4 = 134218242;
  v5 = v2;
  v6 = 2080;
  v7 = v3;
  _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEFAULT, "Warning: [BTVCLinkScanner] ### Activate with unsupported type: %ld (%s)\n", &v4, 0x16u);
}

BOOL sub_100850D2C(int a1, uint64_t a2)
{
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: [BTVCLinkScanner] ### Activate failed: %d\n", v6, 8u);
  }

  return a2 == 0;
}

void sub_100850DE4()
{
  v0 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = -6729;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Warning: [BTVCLinkScanner] ### scanEnable failed: %d\n", v1, 8u);
  }
}

void sub_100850F18(unint64_t a1, NSObject *a2)
{
  if (a1 >= 6)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_100B01858[a1];
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_INFO, "[BTVCLinkScanner] Bluetooth state updated: %s\n", &v3, 0xCu);
}

void sub_100850FB0(void *a1, int a2)
{
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to force HID special sniff", buf, 2u);
  }

  v5 = sub_10057E420(a1, a2);
  if (v5)
  {
    v6 = v5;
    if (sub_10053C95C(v5))
    {
      v7 = sub_100017F4C();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1006086E0;
      v9[3] = &unk_100AE0860;
      v9[4] = a1;
      v9[5] = v6;
      sub_10000CA94(v7, v9);
    }
  }

  else
  {
    v8 = qword_100BCEAA0;
    if (sub_10009E12C())
    {
      *buf = 136315138;
      v11 = "forceHIDSpecialSniff";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: device is NULL", buf, 0xCu);
    }
  }
}

void sub_100851188()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008511F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008512F4()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  sub_1000B704C(&_mh_execute_header, "Unplugging virtual cable to device %{public}s failed with status %d", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100851344(uint64_t a1, int a2)
{
  *a1 = 136446466;
  *(a1 + 4) = "NULL";
  *(a1 + 12) = 1024;
  *(a1 + 14) = a2;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10085139C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085140C()
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

  *v2 = 136315394;
  sub_10003F710(v2, v6);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100851474()
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

  *v2 = 136315394;
  sub_10003F710(v2, v6);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008514DC(_BYTE *a1)
{
  v2 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "MIDSupports15msFeatureBit";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: device is NULL", &v3, 0xCu);
  }

  *a1 = 0;
}

void sub_100851590()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100851600()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085163C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008516AC()
{
  sub_1003759F0();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085171C()
{
  sub_1003759F0();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085178C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008517FC()
{
  sub_10003F244();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008518B4()
{
  sub_1003759F0();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100851924()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100851994()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100851A08()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100851A80()
{
  sub_10003F244();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100851B7C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100851C14()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  sub_1000B704C(&_mh_execute_header, "Connection to device %{public}s failed - result was %{bluetooth:OI_STATUS}u", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100851D04()
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

void sub_100851D60()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100851DD4()
{
  v0 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "HIDGameControllerConnected";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%s: No GC connection", &v1, 0xCu);
  }
}

void sub_100851E90()
{
  if (sub_10009E12C())
  {
    sub_10006DCBC(&_mh_execute_header, v0, v1, "%s: device is NULL", v2, v3, v4, v5, 2u);
  }
}

void sub_100851F24()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100851F94()
{
  sub_10003F244();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100852068()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008520D8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100852114()
{
  if (sub_10009E12C())
  {
    sub_10006DCBC(&_mh_execute_header, v0, v1, "%s: HID VSCs(Special Sniff / CSS) are not enabled", v2, v3, v4, v5, 2u);
  }
}

void sub_1008521A8()
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
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100852204()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100852274()
{
  sub_1003759F0();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008522E4()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  sub_1000B704C(&_mh_execute_header, "SDP failed to complete on device %{public}s with result %d", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008523D8()
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

void sub_10085245C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100852498()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100852530()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008525A0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008525DC()
{
  if (sub_10009E12C())
  {
    sub_10006DCBC(&_mh_execute_header, v0, v1, "%s: HID VSCs(Special Sniff / CSS) are not enabled", v2, v3, v4, v5, 2u);
  }
}

void sub_100852670()
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
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008526CC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085273C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085278C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008527C8()
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

  *v2 = 136315394;
  sub_10003F710(v2, v6);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100852830()
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

  *v2 = 136315394;
  sub_10003F710(v2, v6);
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100852898()
{
  if (sub_10009E12C())
  {
    sub_10006DCBC(&_mh_execute_header, v0, v1, "%s: uuid is NULL", v2, v3, v4, v5, 2u);
  }
}

void sub_10085292C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100852968()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008529A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008529E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100852A1C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100852A8C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100852AC8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100852B04()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100852B74()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100852BE4()
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
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100852C68(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create directory for advertisement database with error: %@", &v2, 0xCu);
}

void sub_100852CE0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to exclude advertisement database from backup with error: %@", &v2, 0xCu);
}

void sub_100852F1C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "rdar://problem/66432832 attempting to cache descriptorSize: %u", v2, 8u);
}

void sub_100853810(void *a1, char a2, NSObject *a3)
{
  v3 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = a1;
  }

  v4 = 136446210;
  v5 = v3;
  sub_10003F1B4(&_mh_execute_header, a2, a3, "Session attach for %{public}s failed", &v4);
}

void sub_10085388C(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ran out of handles for session %{public}s!", &v2, 0xCu);
}

void sub_1008539A0()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Ran out of handles for session %{public}s!", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008539F4(uint8_t *buf, NSObject *a2)
{
  *buf = 136446210;
  *(buf + 4) = "(NULL)";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ran out of handles for session %{public}s!", buf, 0xCu);
}

void sub_100853A9C(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Trying to add BTHandle : %p which is same as our LocalDevice handle %p", &v2, 0x16u);
}

void sub_100853B20()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Session %{public}s already exists in SessionProcessIdentifierMap", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100853B74()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Session %{public}s is not present in SessionProcessIdentifierMap", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100853BC8()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Session %{public}s already exists in SessionManagedConfigOverrideMap", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100853CF0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100853DCC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100853EC0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100853F44()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100853FDC()
{
  sub_10003F244();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10085405C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100854098()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100854124()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100854160()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085419C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008541D8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100854214()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100854264(uint64_t a1, NSObject *a2)
{
  sub_1005378A0(a1, __p);
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Device %s, does not exist in AudioLinkManagerDevices something went wrong", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100854330()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085436C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008543A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008543E4(unint64_t *a1, uint64_t a2, NSObject *a3)
{
  sub_100632D10(a2, *a1);
  sub_10003F244();
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Low Latency Game: redundantant jitter change, mode: %d", v4, 8u);
}

void sub_10085447C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008544CC()
{
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008545C4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to open file descriptor to capture tailspin: %@", buf, 0xCu);
}

void sub_100854690()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008546CC()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008547B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100854844()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008548B8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "A2DP Link Adaptive invalid", buf, 2u);
}

void sub_1008548F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100854968()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008549D8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100854A48()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100854AB8()
{
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100854B60()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100854BD4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100854C44()
{
  sub_10003F374();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100854CB4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100854D24()
{
  sub_10003F244();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100854DA4()
{
  sub_10003F374();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100854E14()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100854E50()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100854E8C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100854EF0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100855014(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003F390(a1, a2);
  *v3 = 138412290;
  *v2 = v4;
  sub_10003F51C();
  _os_log_error_impl(v5, v6, v7, v8, v3, 0xCu);
}

void sub_100855074(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003F390(a1, a2);
  *v3 = 138412290;
  *v2 = v4;
  sub_10003F51C();
  _os_log_error_impl(v5, v6, v7, v8, v3, 0xCu);
}

void sub_100855214(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "LEA Start Stream failed %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_10085528C(id *a1)
{
  v6 = *a1;
  sub_10003F51C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100855430(unsigned __int8 a1, unsigned __int16 a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Sending 'error (%u/%u)'", v3, 0xEu);
}

void sub_1008554F4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid audio playload of size %lu received, Trigger PLC", &v2, 0xCu);
}

void sub_10085556C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "LEA RX Audio: %lubytes received", &v2, 0xCu);
}

void sub_10085574C(id *a1)
{
  v6 = *a1;
  sub_10003F51C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10085582C(uint64_t a1, NSObject *a2, void *a3)
{
  v4 = *(a1 + 464);
  v5 = *(a1 + 528);
  v6 = *(a1 + 512);
  v7 = *(a1 + 468);
  v8 = *(a1 + 472);
  v9 = *(a1 + 516);
  v10 = *(a1 + 476);
  v11 = *(a1 + 480);
  v12 = *(a1 + 504);
  v13[0] = 67111168;
  v13[1] = v4;
  v14 = 1024;
  v15 = v5;
  v16 = 1024;
  v17 = v6;
  v18 = 1024;
  v19 = v7;
  v20 = 1024;
  v21 = v8;
  v22 = 1024;
  v23 = v9;
  v24 = 1024;
  v25 = v10;
  v26 = 1024;
  v27 = v11;
  v28 = 1024;
  v29 = v12;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "handle(0x%2X):event(%d), TxTotal(%d), TxR(%u), TxF(%u), RxTotal(%d), RxE(%u), RxM(%u), rssi(%d)", v13, 0x38u);
  *a3 = qword_100BCEA90;
}

void sub_100855928(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 484);
  v3 = *(a1 + 530);
  v4 = *(a1 + 520);
  v5 = *(a1 + 488);
  v6 = *(a1 + 492);
  v7 = *(a1 + 524);
  v8 = *(a1 + 496);
  v9 = *(a1 + 500);
  v10 = *(a1 + 508);
  v11[0] = 67111168;
  v11[1] = v2;
  v12 = 1024;
  v13 = v3;
  v14 = 1024;
  v15 = v4;
  v16 = 1024;
  v17 = v5;
  v18 = 1024;
  v19 = v6;
  v20 = 1024;
  v21 = v7;
  v22 = 1024;
  v23 = v8;
  v24 = 1024;
  v25 = v9;
  v26 = 1024;
  v27 = v10;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "handle(0x%2X):event(%d), TxTotal(%d), TxR(%u), TxF(%u), RxTotal(%d), RxE(%u), RxM(%u), rssi(%d)", v11, 0x38u);
}

void sub_100855A50(void *a1, char *a2, uint8_t *buf, os_log_t log)
{
  if (a2[23] >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = v6;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Magnet link disconnect from %{public}@ does not match connected magnet %s", buf, 0x16u);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_100855AE0(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPC server connection error: %{public}s", &v2, 0xCu);
}

void sub_100855B58(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected error: %{public}s", &v2, 0xCu);
}

void sub_100855BD0(_xpc_connection_s *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = xpc_connection_get_pid(a1);
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received connection to BTAudio.xpc from unknown client pid %d, ignoring", v3, 8u);
}

void sub_100855C60(_DWORD *a1, void *a2)
{
  *a1 = 136446210;
  *a2 = "sample2Index < fCodec->bytesPerFrame";
  sub_10003F724();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100855EEC(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Get %zubytes of audio data", &v3, 0xCu);
}

void sub_100855F68(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Insufficient Buffer Length: %d", v2, 8u);
}

void sub_100855FE0()
{
  sub_10003F088();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085615C(_DWORD *a1, void *a2)
{
  *a1 = 136446210;
  *a2 = "status != OI_STATUS_WRITE_IN_PROGRESS";
  sub_10003F724();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1008561A8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Got %zubytes of audio data", &v3, 0xCu);
}

void sub_100856304()
{
  sub_10003F088();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856434(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Can't send invalid audio buffers", buf, 2u);
}

void sub_100856474(os_log_t log)
{
  v1 = 136315138;
  v2 = "[BTVCPacketControl didSendPacket:error:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s _currentPacket = nil", &v1, 0xCu);
}

void sub_100856520(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    *(a1 + 248) = v2;
    operator delete(v2);
  }
}

void sub_10085654C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008566EC()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085675C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008567AC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100856844()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008568A8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008568E4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085697C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856A08()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100856A78()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100856AFC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856B38()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856B74(uint64_t a1, int a2)
{
  v2 = @"CBBTErrorReasonAdvertisingWatchNotFoundInternal";
  if (!a2)
  {
    v2 = @"CBBTErrorReasonUnknownInternal";
  }

  v8 = v2;
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100856C40()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856C7C()
{
  sub_10003F0CC();
  sub_10067DE04();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100856D18()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856D54()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856D90()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856DCC(uint64_t a1, NSObject *a2)
{
  sub_100018384(*(a1 + 128), __p);
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "session %s is not allowed to queryBluetoothStatus", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100856E88()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100856EF8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100856F68()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856FA4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100856FE0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085701C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006DF24(a1, a2, a3, 4.8752e-34);
  sub_100075D54();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100857080()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008570BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008570F8()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100857168(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  *a2 = 134218242;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = v3;
  sub_100075D54();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1008571C0()
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
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10085721C()
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
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100857278()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008572E8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100857324()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100857394()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100857404()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857474()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008574E4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100857520()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085755C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008575F4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100857664()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008576A0()
{
  sub_10003F0CC();
  sub_10067DE04();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Temporary IRK for device  %@, missing IRK %@", v1, 0x16u);
}

void sub_100857744()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100857780()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008577BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008577F8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100857868()
{
  sub_1000B7190();
  sub_10006DF24(v2, v3, v4, 5.778e-34);
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1008578C8()
{
  sub_1000B7190();
  sub_10006DF24(v2, v3, v4, 5.778e-34);
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_100857928(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10085795C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100857998()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008579D4()
{
  sub_10003F684();
  sub_10006DD58(3.8522e-34, v1, v2);
  *(v3 + 4) = v4;
  *(v3 + 12) = 1024;
  *(v3 + 14) = 5;
  *(v3 + 18) = 2080;
  *(v3 + 20) = v5;
  sub_100075D54();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100857A4C()
{
  sub_10003F684();
  sub_10006DD58(1.5047e-36, v1, v2);
  *(v3 + 4) = v4;
  *(v3 + 8) = 2080;
  *(v3 + 10) = v5;
  sub_100075D54();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100857AB4()
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
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100857B10()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857B80()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857BF0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857C60()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857CD0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857D40()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857DB0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857E20()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857E90()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857F00()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857F70()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100857FE0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858050()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008580C0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858130()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008581A0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858210()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858280()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008582F0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858360()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008583D0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858440()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008584B0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858520()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858590()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858600()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858670()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008586E0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858750()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008587C0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858830()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008588A0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858910()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858980()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008589F0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858A60()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858AD0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858B40()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100858B7C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100858BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 134218240;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  sub_100075D54();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100858C0C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858C7C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858CEC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858D5C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858DCC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858E3C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858EAC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858F1C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858F8C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100858FFC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100859038()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100859074()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008590E4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859154()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008591C4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859234()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008592A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008592E0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859350()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008593C0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859430()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085946C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008594DC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100859518()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100859554()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100859590()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859600(unsigned __int16 a1, uint64_t a2)
{
  *a2 = 67109376;
  *(a2 + 4) = 10;
  *(a2 + 8) = 1024;
  *(a2 + 10) = a1;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100859658()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008596C8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100859704()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859774()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008597B0()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859820()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085985C()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008598CC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100859908()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859978()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008599B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008599F0()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859A60()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100859AD0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100859B0C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859B7C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859BEC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859C5C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859CCC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859D3C()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859E28()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859E98()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859F08()
{
  sub_10006E038();
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100859F78()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100859FC8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085A038()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10067DE04();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10085A0AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A0E8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085A158()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A194()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A1D0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A20C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A248()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A284()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A2C0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A2FC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A338()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A39C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A3D8()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085A448()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A484()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085A4F4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A564()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A5D4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A610()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A64C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A688()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A6C4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A700()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A73C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A778()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 138412802;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  *(a2 + 22) = 1024;
  *(a2 + 24) = 1024;
  sub_100075D54();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10085A814()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085A884()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A8E8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085A924(char a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  *a3 = 67109376;
  *(a3 + 4) = (a1 & 1) == 0;
  *(a3 + 8) = 1024;
  *(a3 + 10) = v3;
  sub_100075D54();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10085A984()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085A9F4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085AA64()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085AAA0()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085AB14()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085AB84()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10085AC08()
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
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10085AC8C()
{
  sub_10003F244();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10085AD0C()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10085ADA0()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10085AE24()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085AE94()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085AF18(uint64_t a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10085AF5C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085AF98(uint64_t a1, uint64_t a2)
{
  *a1 = 134349056;
  *(a1 + 4) = a2;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10085AFDC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B018()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B054(_DWORD *a1, _DWORD *a2)
{
  *a1 = 67109120;
  *a2 = 20;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10085B09C(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10085B0D0(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v7 = a2;
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Overriding address with Invalid address string %@ (%@)", a3, 0x16u);
}

void sub_10085B164(void *a1)
{
  xpc_get_type(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10085B1E4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085B254()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085B2DC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B318()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085B398()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B3D4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B410()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B44C()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085B4BC()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085B52C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B5B8()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085B62C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B668()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085B6DC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B718()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10085B794()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B7D0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B80C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B848()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B8AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B8E8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085B958()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B994()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085B9D0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BA0C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BA48()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BA84()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BAC0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BAFC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BB38()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BB74()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BBB0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BBEC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BC28()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BC64()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BCA0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BCDC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BD18()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BD54()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BD90()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BDCC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BE08()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BE44()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BE80()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085BEBC()
{
  sub_10003F684();
  sub_10006DD58(5.778e-34, v1, v2);
  *(v3 + 4) = v4;
  *(v3 + 12) = 2080;
  *(v3 + 14) = v5;
  sub_100075D54();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10085BF24(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10085BF6C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not register MAP: %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_10085BFE4(char *a1, uint8_t *buf, int a3, os_log_t log)
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
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to disconnect from device %{public}s due to %{bluetooth:OI_STATUS}u", buf, 0x12u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10085C07C(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136446210;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Denying connection attempt from device %{public}s. Is MAP enabled? Is MAP connected to some other device?", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10085C0F0(char a1, int a2, os_log_t log)
{
  v3 = "accept";
  if ((a1 & 1) == 0)
  {
    v3 = "deny";
  }

  v4 = 136315394;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to %s connection attempt - result was %{bluetooth:OI_STATUS}u", &v4, 0x12u);
}

void sub_10085C190(unsigned __int16 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received disconnect event with no connected device for connectionId %d", v2, 8u);
}

void sub_10085C598(uint64_t a1, NSObject *a2)
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

  *buf = 136446210;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Can't start scan for %{public}s since Scan is running already", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10085CCCC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085CD08()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085CD80(char *a1, uint8_t *buf, os_log_t log)
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
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to find HID device %s to remove", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10085CDF4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "USB Pairing: Invalid context (%p) / device (%p)\n", &v3, 0x16u);
}

void sub_10085CE7C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085CEB8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085CF28()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085D038()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085D088()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085D0EC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085D19C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085D20C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10085D27C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085D2CC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown CB MsgID %d", v2, 8u);
}

void sub_10085D344(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Ignoring mismatched check-in from client %{public}@", &v2, 0xCu);
}

void sub_10085D3BC(int a1, NSObject *a2)
{
  v2[0] = 67109376;
  v2[1] = a1;
  v3 = 1024;
  v4 = 20161219;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CoreBluetooth version %d differs from bluetoothd version %d", v2, 0xEu);
}

void sub_10085D62C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085D764()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085D850()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085D8B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085D8F0(os_log_t log)
{
  v1 = 136446210;
  v2 = "fNetIfc == NULL";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_10085D974()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085DA98()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085DAD4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085DB10()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085DB4C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10085DD64(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Currently tracking apple types: %{public}@", buf, 0xCu);
}

void sub_10085E228(os_log_t log)
{
  v1 = 136446210;
  v2 = "index < fSize";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_10085E38C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085E3FC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085E4A8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085E518()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085E588()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085E6FC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085E76C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085E7DC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10085E9E0(int *a1)
{
  do
  {
    if (*(a1 - 1) < 0)
    {
      operator delete(*(a1 - 3));
    }

    a1 -= 8;
  }

  while (a1 != &dword_100BC6F30);
}

void sub_10086074C()
{
  sub_10003F0CC();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::handleBTAccessorySpatialAudioAllowedMsg accessoryManagerID:%llx, spatial mode is %llu", v2, 0x16u);
}

void sub_1008607D0()
{
  sub_10003F0CC();
  v2 = 1024;
  v3 = 0;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "BTAccessoryMsgHandler::handleBTAccessoryGetSpatialAudioAllowedMsg accessoryManagerID:%llx, , spatial mode is %d", v1, 0x12u);
}

void sub_100860E3C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100860EB4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100860F64(unsigned __int8 *a1, NSObject *a2)
{
  sub_1000BE6F8(a1, __p);
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to Send Link Key to device %{public}s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100861280(os_log_t log)
{
  v1 = 136446210;
  v2 = "fSession == NULL";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_1008614A4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to configure Software Volume error %{bluetooth:OI_STATUS}u", v2, 8u);
}

void sub_1008615B8(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "AMP Link connection failure, accept=%d", v1, 8u);
}

void sub_1008619EC()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  sub_1000B704C(&_mh_execute_header, "Failed to connect to device %{public}s: %{bluetooth:OI_STATUS}u", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100861A3C()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  sub_1000B704C(&_mh_execute_header, "Failed to disconnect from device %{public}s: %{bluetooth:OI_STATUS}u", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100861C48()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100861C84()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100861D28()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100861FD4()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "device %{public}s not found", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008623C0(uint64_t *a1, uint64_t a2)
{
  sub_1000B6F4C(*a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Cannot find the MTU for device %{public}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_100862534(uint64_t *a1, uint64_t a2)
{
  sub_1000B6F4C(*a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Cannot find the MTU for device %{public}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_100862700()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "device %{public}s not found. Dropping", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008627BC(uint64_t a1, uint64_t a2)
{
  sub_1000B6F4C(*(a1 + 64), a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Dropping 'GetImageProperties' response as BIP connection no longer exists with device %{public}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_1008628B8(uint64_t a1, uint64_t a2)
{
  sub_1000B6F4C(*(a1 + 64), a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Dropping 'GetImage' response as BIP connection no longer exists with device %{public}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_1008629B4(uint64_t a1, uint64_t a2)
{
  sub_1000B6F4C(*(a1 + 64), a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Dropping 'GetLinkedThumbnail' response as BIP connection no longer exists with device %{public}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_100862A48()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  sub_1000B704C(&_mh_execute_header, "Failed to respond to 'get element attributes' request on device %{public}s: %{bluetooth:OI_STATUS}u", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100862A98(uint64_t *a1, uint64_t a2)
{
  sub_1000B6F4C(*a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Failed to set volume on the remote device %{public}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_100862B2C()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  sub_1000B704C(&_mh_execute_header, "Failed to re-register for absolute volume change events on device %{public}s - result was %{bluetooth:OI_STATUS}u", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100862BF8()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  sub_1000B704C(&_mh_execute_header, "Failed to send mute button press to device %{public}s - result was %{bluetooth:OI_STATUS}u", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100862C48()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  sub_1000B704C(&_mh_execute_header, "Failed to send mute button release to device %{public}s - result was %{bluetooth:OI_STATUS}u", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100862C98()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100862CD4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100862D10()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100862D4C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "parseAVRCPDescriptor L2CAP browse channel not found", buf, 2u);
}

void sub_100862D8C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "parseAVRCPDescriptor L2CAP signal channel not found", buf, 2u);
}

void sub_100863024(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to validate format string: %@", &v2, 0xCu);
}

void sub_1008632E4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100863354()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100863530()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086366C()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "We already have OOB data for device %{public}s, aborting pincode pairing", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008636F4()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "We already have OOB data for device %{public}s, aborting numeric comparison pairing", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100863748()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "We already have OOB data for device %{public}s, aborting passkey pairing", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008637D0()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Reached pairing timeout for pending attempt with device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100863824()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Pairing timedout, request for device %{public}s not found", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008638AC(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "setPincode";
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Rejecting Pairing Request because PIN code length is %zu", buf, 0x16u);
}

void sub_100863908()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No pending pairing attempts for device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086395C()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "No authentification request found for device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008639C4()
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
  sub_10003F1B4(&_mh_execute_header, v7, v8, "Pairing failure reported for device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100863A18(uint8_t *buf, NSObject *a2)
{
  *buf = 136446210;
  *(buf + 4) = "NULL";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Pairing failure reported for device %{public}s", buf, 0xCu);
}

void sub_100863ADC(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10003F1B4(&_mh_execute_header, a2, a3, "LE device for addr %@ does not exist", a2);
}

void sub_100863B5C(uint64_t a1, NSObject *a2)
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unpairing device %{public}s - failed as stack is not running", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100863C3C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100863D50(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136446466;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_10006DD84(&_mh_execute_header, a2, a3, "Unexpected XPC service %{public}s server event: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100863DC8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136446466;
  *&v3[4] = a1;
  *&v3[12] = 2082;
  *&v3[14] = a2;
  sub_10006DD84(&_mh_execute_header, a2, a3, "XPC service %{public}s server error: %{public}s", *v3, *&v3[8], *&v3[16]);
}

void sub_100863E40(os_log_t log)
{
  v1 = 136446210;
  v2 = "it != fClientInfoMap.end()";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_100864030()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008640A0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008641A0()
{
  sub_10006E048();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100864238()
{
  sub_10006E048();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1008642A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100864318()
{
  sub_10006E048();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Encryption key size for device %{private,bluetooth:BD_ADDR,mask.hash}.6P is %u", v2, 0x22u);
}

void sub_10086439C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008645E4()
{
  sub_10003F244();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to set MTU to %d with result %{bluetooth:OI_STATUS}u", v2, 0xEu);
}

void sub_10086466C(uint64_t a1)
{
  v1 = sub_1000B7068(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1008646F4(uint64_t a1)
{
  v6 = *(a1 + 16);
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_1008647B0()
{
  sub_10003F30C();
  v1 = sub_10003F3E8(v0);
  sub_1000E0B84();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100864840(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10086493C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1008649CC(char *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1[23] >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = *(a2 + 64);
  v9 = *(a2 + 66);
  v10 = *(a2 + 16);
  *a3 = 136446978;
  *(a3 + 4) = v7;
  *(a3 + 12) = 1024;
  *(a3 + 14) = v8;
  *(a3 + 18) = 1024;
  *(a3 + 20) = v9;
  *(a3 + 24) = 2112;
  *(a3 + 26) = v10;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "No characteristic values with UUID %{public}s could be read in range [0x%04x, 0x%04x] on device %@", a3, 0x22u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_100864A98()
{
  sub_10003F30C();
  v1 = sub_10003F3E8(v0);
  sub_1000E0B84();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100864B28()
{
  sub_10003F30C();
  v1 = sub_10003F3E8(v0);
  sub_1000E0B84();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100864BB8()
{
  sub_10003F30C();
  v1 = sub_10003F3E8(v0);
  sub_1000E0B84();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100864C44()
{
  sub_10003F30C();
  v1 = sub_10003F3E8(v0);
  sub_1000E0B84();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100864CD0()
{
  sub_10003F30C();
  v1 = sub_10003F3E8(v0);
  sub_1000E0B84();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100864D5C(uint64_t a1)
{
  v1 = sub_1000B7068(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100864E64(uint64_t a1)
{
  v1 = sub_1000B7068(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100864EEC(uint64_t a1)
{
  v1 = sub_1000B7068(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100864F74(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100865004(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100865094(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100865124(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1008651B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100865244(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1008652D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100865364(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1008653F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100865484(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100865614(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006FC7A8(a1, a2);
  sub_10006E078();
  sub_10003F4B4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100865804(uint64_t a1)
{
  v1 = sub_1000B7068(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10086588C(uint64_t a1)
{
  v1 = sub_1000B7068(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100865914(uint64_t a1)
{
  v1 = sub_1000B7068(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10086599C(uint64_t a1)
{
  v1 = sub_1000B7068(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100865A24(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_100865A38(unsigned __int16 a1, char a2, os_log_t log)
{
  v3 = "invalid";
  if (a2)
  {
    v3 = "valid";
  }

  v4[0] = 67109378;
  v4[1] = a1;
  v5 = 2080;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "AMP link remote data drop invalid len=%u data %s", v4, 0x12u);
}

void sub_100865ADC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AMP link remote data total chunk invalid %u", v2, 8u);
}

void sub_100865B68()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100865BD8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100865C48()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100865D48(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136446210;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Wireless IAP Service is not supported by device %{public}s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_100865DBC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100865E2C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100865E68()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100865EB8(char a1, int a2, os_log_t log)
{
  v3 = "accept";
  if ((a1 & 1) == 0)
  {
    v3 = "deny";
  }

  v4 = 136446466;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to %{public}s connection attempt - result was %{bluetooth:OI_STATUS}u", &v4, 0x12u);
}

void sub_100865FA8(uint64_t a1, NSObject *a2)
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to open serial port for device %{public}s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100866060()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086609C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008660D8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008661D8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100866214()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100866250()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086628C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008662FC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100866380(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid format", buf, 2u);
}

void sub_1008663D4(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Num frames to send (%d) exceeds maximum frame count (%d)", v3, 0xEu);
}

void sub_100866498()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100866508()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100866634()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008666A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100866744(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = a1;
  *a2 = 138412290;
  *(a2 + 4) = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to redact HID reports for device %@", a2, 0xCu);
}

void sub_1008667B4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100866864()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008668A0(char a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a1 & 1;
  *(buf + 4) = 2048;
  *(buf + 10) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "MIDI: ff %d, midi %p", buf, 0x12u);
}

void sub_1008668FC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100866938()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008669D0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100866A80()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100866DC0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100866EBC(uint64_t a1, char *a2, uint8_t *buf, os_log_t log)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2082;
  *(buf + 14) = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Dropping notification from device %{public}@ of non-characteristic value attribute %{public}s", buf, 0x16u);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_100866F40(unsigned __int16 a1, unsigned __int16 a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Received service changed notification for [0x%04x;0x%04x] for an unknown device. Ignoring.", v3, 0xEu);
}

void sub_100866FF8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867068()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008670D8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100867148()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008671BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008671F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867290()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867300()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086733C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008673AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008673E8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867458()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100867494()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008674D0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867540()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086757C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008675B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008675F4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100867630()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008676A0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867710()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867780()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008677F0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867860()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008678D0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867940()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086797C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867A60()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867AD0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867B40()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867BB0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100867BEC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867C5C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100867C98()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867D08()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100867D44()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867DB4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100867DF0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867E60()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100867E9C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100867F80()
{
  sub_10003F348();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Got CC: %d LEFlag: %d", v2, 0xEu);
}

void sub_100868004()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868074()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008680E4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868154()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100868190()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008681CC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100868208()
{
  sub_10003F348();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100868284()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008682C0()
{
  sub_10003F348();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086833C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008683AC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086841C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086848C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008684FC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086856C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008685DC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086864C()
{
  sub_10003F0B4();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1008686C8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868738()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008687A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868818()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868888()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008688F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868968()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008689D8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868A48()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868AB8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100868AF4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868B64()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100868BA0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868C10()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868C80()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868CF0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100868D2C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868D9C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868E0C()
{
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100868E88()
{
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100868F04()
{
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100868F80()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100868FF0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100869070()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008690E0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869150()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008691C0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869230()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086926C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008692DC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086939C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008693D8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869448()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008694B8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869528()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100869564()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008695D4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100869610()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869680()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008696BC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086972C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100869768()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008697D8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100869814()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869884()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008698C0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869930()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086996C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008699DC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869A4C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869ABC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869B2C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869B9C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869C0C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869C7C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869CEC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869D5C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869DCC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869E3C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869EAC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100869F30()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100869F6C()
{
  sub_10003F348();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_100869FF4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A030()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A094()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A0D0()
{
  sub_10009C668();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10086A14C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086A1BC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086A22C()
{
  sub_10009C668();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10086A2A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086A318()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086A388()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086A3F8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086A468()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A4A4(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "loadFile: Error Reading File Stat: errno = %d\n", v3, 8u);
}

void sub_10086A534()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A570()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086A5E0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086A650()
{
  sub_10009C668();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10086A6CC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086A778()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A7B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A7F0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A82C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A868()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A8A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086A91C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086AAB8()
{
  sub_1000B6FD4();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086AB2C(uint64_t a1, NSObject *a2)
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Already not advertising data for session %{public}s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10086ABF4()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086ADDC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086AE18()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086AE54()
{
  sub_1000E4030();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10086AF10(uint64_t a1, uint64_t a2)
{
  *a1 = 136315394;
  *(a1 + 4) = "ProximityServiceDeviceSetup";
  *(a1 + 12) = 2048;
  *(a1 + 14) = a2;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10086AFE8(int a1)
{
  v1 = sub_10002D1A4(a1);
  sub_100730340(v1, 3.8521e-34);
  sub_100075D98(&_mh_execute_header, v2, v3, "Invalid service data length %lu for usecase %s");
}

void sub_10086B03C(uint64_t a1, int a2)
{
  sub_10002D1A4(a2);
  sub_10003F404();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10086B0C4(int a1)
{
  sub_10002D1A4(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10086B144(int a1)
{
  sub_10002D1A4(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10086B1C4(int a1)
{
  sub_10002D1A4(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10086B244(int a1)
{
  sub_10002D1A4(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10086B2C4()
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

void sub_10086B458()
{
  sub_1000B6FD4();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086B4CC()
{
  sub_10003F654();
  sub_1000B7080(4.8752e-34, v1, v2, v3);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Rejecting advertising from %{public}s for list type %d", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086B53C()
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
  sub_1000E4024();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086B598()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086B6B4()
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
  sub_1000E4024();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086B710()
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

void sub_10086B83C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086B8AC(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_1000E4024();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10086B8E8(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_1000E4024();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10086B9D8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086BA9C()
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
  sub_1000E4024();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086BAF8()
{
  sub_10003F654();
  sub_1000B7080(4.8752e-34, v1, v2, v3);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Session %{public}s is now %d", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086BB64()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086BBA0()
{
  sub_1000E4030();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10086BFBC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086C020()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086C084()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086C0C0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086C124()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086C188()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086C1C4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086C290()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086C2CC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086C33C()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086C3B0(uint64_t a1)
{
  sub_100730F30(a1, a1);
  sub_10003F0CC();
  sub_100257F78(&_mh_execute_header, v1, v2, "Descriptor was already received once! FCState %s", v3, v4, v5, v6, v7);
}

void sub_10086C42C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086C49C(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10086C4D0(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10086C504(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10086C538(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10086C56C(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10086C5A0()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086C614(uint64_t a1)
{
  sub_100730F30(a1, a1);
  sub_10003F0CC();
  sub_100257F78(&_mh_execute_header, v1, v2, "Configure was already sent once! FCState %s", v3, v4, v5, v6, v7);
}

void sub_10086C690()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086C700()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086C770()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086C7E0()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086C878()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086C8E8()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086C958()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086C9C8()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086CA38()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086CAA8()
{
  sub_100739DCC(__stack_chk_guard);
  sub_10006E090();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086CB18()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086CB8C(uint64_t a1)
{
  sub_100730F30(a1, a1);
  sub_10003F0CC();
  sub_100257F78(&_mh_execute_header, v1, v2, "Setup Complete was already received once! FCState %s", v3, v4, v5, v6, v7);
}

void sub_10086CC08()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086CC78()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086CCE8(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10086CD5C()
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

  *v2 = 136446210;
  *(v2 + 4) = v6;
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086CDBC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086CDF8()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086CE6C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086CEA8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100304810(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10003F0CC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find PFC device for address: %s", v9, 0xCu);
}

void sub_10086CF34()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086CF70()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086CFAC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D044()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D0DC()
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

  *v2 = 136446210;
  *(v2 + 4) = v6;
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086D13C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086D178()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D1E8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086D258()
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

  *v2 = 136315138;
  *(v2 + 4) = v6;
  sub_10003F198();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086D2B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086D2F4()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8151e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Updating DID for device %s to %d", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086D350()
{
  sub_10003F0B4();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086D3CC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086D408()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D478(unsigned __int16 a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v4 = *(a2 + 36);
  *buf = 67109376;
  *(buf + 1) = a1;
  *(buf + 4) = 1024;
  *(buf + 10) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "L2CAP channel info local CID %d local MTU %d", buf, 0xEu);
}

void sub_10086D4D8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D548()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086D584()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086D5C0()
{
  sub_10003F0B4();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086D63C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D6AC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D7B4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D824()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D894()
{
  sub_10077730C();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D908()
{
  sub_10077730C();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D97C()
{
  sub_10077730C();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086D9F0()
{
  sub_10077730C();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086DA64()
{
  sub_10077730C();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086DAD8()
{
  sub_1000E0BA8();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086DB48()
{
  sub_1000E0BA8();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10086DC34()
{
  sub_1000E0BA8();
  sub_1000B7098();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0xEu);
}

void sub_10086DCA8()
{
  sub_100075D60();
  sub_1000B7098();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x1Au);
}

void sub_10086DD44()
{
  sub_1000E0BA8();
  sub_1000B7098();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0xEu);
}

void sub_10086DDB8()
{
  sub_1000E0BA8();
  sub_1000B7098();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0xEu);
}

void sub_10086DE7C()
{
  v0 = sub_100063D0C();
  sub_10003F0CC();
  sub_100777348();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10086DF20()
{
  v0 = sub_100063D0C();
  sub_10003F0CC();
  sub_100777348();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10086DFC4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086E084()
{
  sub_10003F0B4();
  sub_100075D60();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10086E108()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E178()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E1E8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E258()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E2C8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E338()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E3A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E418()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086E4CC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E53C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086E5A0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086E5DC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086E618()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E6B0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E720()
{
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086E7B0()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E820()
{
  sub_10003F654();
  sub_10009C6B0();
  sub_1007772F0(v4, v1, v2, v3);
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086E87C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E8EC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E95C()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086E9CC()
{
  sub_10003F654();
  sub_10009C6B0();
  sub_1007772F0(v4, v1, v2, v3);
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10086EA28()
{
  sub_100777354(__stack_chk_guard);
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086EA98()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086EB08()
{
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086EB78()
{
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086EC68()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086ECD8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086ED48(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10009C6C0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x40u);
  *a3 = qword_100BCE980;
}

void sub_10086EECC()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086EF40()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086EF7C(const unsigned __int8 *a1, uint64_t a2)
{
  sub_100777318(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "AutoReconnected to a device never requested %{public}s", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10086F008()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086F078()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086F0E8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086F124(void *a1, _DWORD *a2, void *a3)
{
  v5 = a1;
  *a2 = 138412290;
  *a3 = v5;
  sub_1000B70FC(&_mh_execute_header, v6, v7, "address %@ is already in the FilterAcceptList");
}

void sub_10086F188()
{
  sub_10003F0CC();
  sub_100777348();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10086F204()
{
  sub_10003F0CC();
  sub_100777348();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10086F27C()
{
  sub_10003F0CC();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086F2EC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086F35C(int a1)
{
  sub_10002DC3C(a1);
  sub_10003F41C();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10086F3F8()
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

void sub_10086F510()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086F54C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086F5BC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10086F62C()
{
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086F69C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10086F6D8()
{
  sub_10003F41C();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10086F774()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10086F818()
{
  sub_10003F41C();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10086F88C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086F97C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086F9EC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086FA5C()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10086FAA8()
{
  sub_10003F41C();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10086FB1C(uint64_t a1, uint64_t a2)
{
  sub_10003F2DC(a1, a2, 4.8751e-34);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10086FB5C(const unsigned __int8 *a1, uint64_t a2)
{
  sub_100777318(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is not connected nor pending connection", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10086FBEC(const unsigned __int8 *a1, uint64_t a2)
{
  sub_100777318(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is not connected nor pending connection", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10086FC7C(const unsigned __int8 *a1, uint64_t a2)
{
  sub_100777318(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is not connected nor pending connection", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10086FD0C(const unsigned __int8 *a1, uint64_t a2)
{
  sub_100777318(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is not connected nor pending connection", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10086FD9C(const unsigned __int8 *a1, uint64_t a2)
{
  sub_100777318(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is not connected nor pending connection", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10086FE2C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086FE9C(const unsigned __int8 *a1, uint64_t a2)
{
  sub_100777318(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is not connected nor pending connection", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_10086FF2C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10086FF9C(const unsigned __int8 *a1, uint64_t a2)
{
  sub_100777318(a1, a2);
  sub_10003F5B0();
  sub_10009C688();
  sub_10003F250(&_mh_execute_header, v2, v3, "Device %{public}s is not connected nor pending connection", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_100870054()
{
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008700C4()
{
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100870134()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008701C8()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100870204()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100870274()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008702E4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100870354()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008703C4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100870434()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100870470()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008704AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008704E8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100870558()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008706BC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087072C()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100870778()
{
  sub_10003F654();
  sub_10009C6B0();
  *v1 = v2;
  *(v1 + 4) = v3;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v4;
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100870864()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1008708B0()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1008708FC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100870938()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100870974()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008709B0()
{
  sub_10003F318();
  sub_100777348();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100870A48()
{
  sub_10077736C();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100870AD4(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 138543362;
  *(a2 + 4) = v3;
  sub_100777380(&_mh_execute_header, v4, v5, "Removing entry for address %{public}@ from configured parameters map");
}

void sub_100870B34(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 138543362;
  *(a2 + 4) = v3;
  sub_100777380(&_mh_execute_header, v4, v5, "Removing entry for address %{public}@ from pending parameters map");
}

void sub_100870B94()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100870BD0()
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

void sub_100870C2C()
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

void sub_100870C88()
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

void sub_100870CE4()
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

void sub_100870D40()
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

void sub_100870D9C()
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

void sub_100870DF8()
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

void sub_100870E54()
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

void sub_100870EB0()
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

void sub_100870F0C()
{
  sub_1000B7024();
  sub_10009C6B0();
  sub_100777330(v4, v1, v2, v3);
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100870FF4()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10077736C();
  sub_1000B7098();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0xEu);
}

void sub_10087106C()
{
  sub_10003F0B4();
  sub_100075D60();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1008710E8()
{
  sub_1000B6F80(__stack_chk_guard);
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100871160()
{
  sub_10003F244();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008711D4()
{
  sub_1000B6F80(__stack_chk_guard);
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

BOOL sub_10087124C(uint64_t a1, void *a2)
{
  sub_10003F088();
  sub_10003F238();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 2u);
  return *a2 == 0;
}

void sub_1008712A0()
{
  sub_10003F318();
  sub_1000B7098();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void sub_100871348()
{
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008713BC()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087142C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087149C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008714D8()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100871548()
{
  sub_1000B7024();
  sub_10009C6B0();
  sub_100777330(v4, v1, v2, v3);
  sub_100075D54();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008715AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008715E8()
{
  sub_10003F0CC();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100871658(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100871694(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1008716D0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100871740()
{
  sub_10003F0B4();
  sub_100075D60();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1008718C0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008718FC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100871938()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008719A8()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100871A18()
{
  sub_1000E0BA8();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100871A88()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100871AFC()
{
  sub_10003F244();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100871B70(_DWORD *a1, uint64_t a2, void *a3)
{
  v5 = sub_100063D0C();
  *a1 = 138543362;
  *a3 = v5;
  sub_1000B70FC(&_mh_execute_header, v6, v7, "We may have an un-tracked auto-reconnect to address %{public}@ :( Sadly, we say goodbye.");
}

void sub_100871BD8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100871C14()
{
  sub_1000B6F80(__stack_chk_guard);
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100871C8C()
{
  sub_100777354(__stack_chk_guard);
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100871CFC()
{
  sub_1000B6F80(__stack_chk_guard);
  sub_10003F0CC();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100871D74()
{
  sub_10003F0B4();
  sub_100075D60();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100871DF0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100871E60()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100871ED0(const unsigned __int8 *a1)
{
  v1 = sub_10004DF60(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100871F60()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100871FD0(const unsigned __int8 *a1)
{
  v1 = sub_10004DF60(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100872060(int a1)
{
  sub_10002DC3C(a1);
  sub_10003F0CC();
  sub_10003F4B4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1008720E0()
{
  sub_1000B6F80(__stack_chk_guard);
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008721E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087221C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10003F1EC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid LTK (%@) for FindMy device %@", v4, 0x16u);
}

void sub_100872274(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10003F1EC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid address (%@) for FindMy device %@", v4, 0x16u);
}

void sub_1008722CC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100872308(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10087235C(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1008723B0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100872400()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008724AC()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087251C()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008725E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087265C()
{
  sub_10009C6D8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100872764(uint64_t a1, NSObject *a2)
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "setCustomProperty Failed to get a classic device for address %s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p);
  }
}

void sub_100872864(_DWORD *a1)
{
  v2 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "MAFetch: Unexpected Attributes as nil", v3, 2u);
  }

  *a1 = 1;
}

void sub_100872914(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "MAFetch: Failure to retrieve SKU data %@ Length %lu", buf, 0x16u);
}

void sub_100872A2C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "MAFetch: Failed to create new folder %@ with error: %@", buf, 0x16u);
}

void sub_100872A94(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100872AE8(char a1, NSObject *a2)
{
  v2 = @"empty";
  if (a1)
  {
    v2 = @"No Atribute";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MAFetch: Invalid PTB Asset OSRestoreVersionCompatibilities Attribute %@", &v3, 0xCu);
}

void sub_100872BB0(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100872D3C(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to take assertionId for name: %s, return value was: %d", buf, 0x12u);
}

void sub_100872DBC(int *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to release assertionId: %d, return value was %d", v4, 0xEu);
}

void sub_100872E70()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100872F9C(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100872FD8(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100873064()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008730A0()
{
  sub_1000B7190();
  sub_10006DF24(v2, v3, v4, 5.8382e-34);
  sub_10003F594(&_mh_execute_header, "Already tracking address %{public}@ as device %{public}s, cannot re-assign a new identifier to it", v5, v6);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1008730F8()
{
  sub_10009C6CC();
  v1 = v0;
  sub_1000E0BC8(v0, v2, v3, 5.8382e-34);
  sub_10003F594(&_mh_execute_header, "Address %{public}@ is already associated with device %{public}@, cannot use alternate identifier", v4, v5);
}

void sub_100873140()
{
  sub_10009C6CC();
  v1 = v0;
  sub_1000E0BC8(v0, v2, v3, 5.8382e-34);
  sub_1000B6F64(&_mh_execute_header, "Address %{public}@ was not in the address map, but WAS in the device map as device %{public}@", v4, v5);
}

void sub_100873188()
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

void sub_1008731E4()
{
  sub_1000B7190();
  sub_10006DF24(v2, v3, v4, 5.8382e-34);
  sub_10009E0D0(&_mh_execute_header, "Now tracking new address %{public}@ as device %{public}s", v5, v6);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_10087323C()
{
  sub_10003F088();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100873278(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100873330()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087340C()
{
  sub_10003F730();
  sub_10006DF24(v1, v2, v3, 5.8382e-34);
  sub_10003F594(&_mh_execute_header, "Unable to unset tag: %{public}@ for valid classicDevice %{public}s", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10087345C()
{
  sub_10003F730();
  sub_10006DF24(v1, v2, v3, 5.8382e-34);
  sub_10009E0D0(&_mh_execute_header, "Unset tag: %{public}@ for valid classicDevice %{public}s", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008734E8()
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

void sub_100873558(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10009C694(&_mh_execute_header, a2, a3, "Device %{public}@ has no address!", a2);
}

void sub_1008735A4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008736AC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008736E8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100873724()
{
  sub_10003F730();
  sub_10006DF24(v1, v2, v3, 4.8752e-34);
  sub_10003F594(&_mh_execute_header, "Unable to set tag: %{public}s for valid classicDevice %{public}s", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100873774()
{
  sub_10003F730();
  sub_10006DF24(v1, v2, v3, 4.8752e-34);
  sub_10009E0D0(&_mh_execute_header, "Set tag: %{public}s for valid classicDevice %{public}s", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008737D8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100873848()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100873884()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008738C0()
{
  sub_10003F0B4();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100873930()
{
  sub_10003F0B4();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100873AC0()
{
  sub_10003F088();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100873AFC()
{
  sub_10003F0B4();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Device cache size exceeded limit %d (fDeviceLRUList size %d)", v2, 0xEu);
}

void sub_100873B80(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136446210;
  *a2 = "aDevice";
  sub_10009C694(&_mh_execute_header, a2, a3, "Assertion failed: %{public}s", a1);
}

void sub_100873BC4(const unsigned __int8 *a1, NSObject *a2, void *a3)
{
  v5 = sub_10004DF60(a1);
  sub_10003F0CC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Device %{public}@ not found in the list", v6, 0xCu);

  *a3 = qword_100BCE900;
}

void sub_100873CF4()
{
  sub_10009C6CC();
  v1 = v0;
  sub_1000E0BC8(v0, v2, v3, 5.8382e-34);
  sub_10009E0D0(&_mh_execute_header, "Now tracking new address %{public}@ as device %{public}@", v4, v5);
}

void sub_100873D3C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100873DAC()
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
  sub_10009C694(&_mh_execute_header, v7, v8, "Trying to set a resolved address that is neither public nor static for device %{public}s", v9);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100873E00()
{
  sub_10003F088();
  sub_10003F238();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100873E3C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100873EE8()
{
  sub_10003F0CC();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100873F68()
{
  sub_10009C6CC();
  v1 = *v0;
  *v3 = 67109376;
  *(v3 + 4) = v2;
  *(v3 + 8) = 1024;
  *(v3 + 10) = v1;
  _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "_retrieveRecentDevicesInfo array count %d larger than max %d", v4, 0xEu);
}

void sub_100873FC4()
{
  sub_100075DB8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F198();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100874044()
{
  sub_100075DB8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008740B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008740F0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087412C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087419C()
{
  sub_100075DB8(__stack_chk_guard);
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100874234()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008742A4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100874314(void **a1)
{
  do
  {
    v2 = *(a1 - 9);
    a1 -= 4;
    if (v2 < 0)
    {
      operator delete(*a1);
    }
  }

  while (a1 != &qword_100BC7B60);
}

void sub_100874448()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100874498()
{
  sub_1000B7030();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10087455C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100874598()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008745D4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100874638()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100874674()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100874790(uint64_t a1, NSObject *a2)
{
  v3 = sub_100063D0C();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "aopReceivedDeviceFoundEvent: Bluetooth address %@ is invalid!", &v4, 0xCu);
}

void sub_100874898()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087498C()
{
  sub_10003F330();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100874ACC()
{
  sub_10003F244();
  sub_100075D60();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100874B48()
{
  sub_10003F244();
  sub_100075D60();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100874C30()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100874D24()
{
  sub_10003F330();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100874D94()
{
  sub_10003F330();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100874EBC()
{
  sub_1000B7030();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100874F84()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100874FF4()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100875064()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100875274()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008752B0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100875510(uint64_t a1, uint64_t a2, NSObject *a3)
{
  sub_1007A42B8(a1);
  sub_10003F0B4();
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Match Buffer readMatchBuffers returned %d, fMatchBufferExpectedEntries:%d", v5, 0xEu);
}

void sub_1008755AC(uint64_t a1, NSObject *a2)
{
  sub_1007A2D08(a1, 1);
  sub_10003F0B4();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "enableMatchActionRulesBuffering returned %d", v3, 8u);
}

void sub_100875638()
{
  sub_10003F244();
  sub_100075D60();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100875708(char *a1, int *a2, uint8_t *buf, os_log_t log)
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
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "ScanAgentType for %{public}s is %d", buf, 0x12u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1008757F8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087589C()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087590C()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087597C()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008759EC()
{
  sub_1000B7030();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100875A74()
{
  sub_1000B7030();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100875C40()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100875EEC(os_log_t log)
{
  v1 = 136446210;
  v2 = "fState == kStateStarting";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v1, 0xCu);
}

void sub_1008760A8()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100876118()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100876188()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008761F8()
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
  sub_1000E4024();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100876254()
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
  sub_1000E4024();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100876470()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008764AC()
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
  sub_1000E4024();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100876508()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "### Decrypt FindMyAccessory ADV failed: %{public}s, %{bluetooth:OI_STATUS}u", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100876564()
{
  sub_10003F684();
  sub_10006DEA0(v1, v2, v3, 4.8752e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "### Decrypt AccessoryStatus ADV failed: %{public}s, %{bluetooth:OI_STATUS}u", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1008766CC()
{
  sub_10003F244();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100876854(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_1000E4024();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100876888()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008768F8()
{
  sub_10003F330();
  sub_1000B7098();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0xEu);
}

void sub_100876DE8()
{
  sub_10003F318();
  sub_1000B7098();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void sub_100876E90(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100876EC4()
{
  sub_10003F244();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100876F38()
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

void sub_100876F94()
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

void sub_100876FF0()
{
  sub_10003F318();
  sub_1000B7098();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
}

void sub_1008770AC(os_log_t log)
{
  v1 = 138543362;
  v2 = @"EN";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Controller failed to read ADV buffers for %{public}@", &v1, 0xCu);
}

void sub_100877130()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008771A0()
{
  sub_100075D60();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100877224(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_1000E4024();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100877258(unsigned __int16 a1)
{
  sub_1007B35B4(a1);
  sub_10009C6C0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Au);
}

void sub_1008772D0(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100877304()
{
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008773EC()
{
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100877460(_BYTE *a1, _BYTE *a2)
{
  sub_10006DD30(a1, a2);
  sub_10003F198();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100877494()
{
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100877508(uint64_t a1, NSObject *a2)
{
  sub_10003B85C(a1, __p);
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "addScanFilterByUUID failed %{public}s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1008775C0()
{
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100877648()
{
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100877700()
{
  sub_10003F318();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1008777CC(int a1, char *a2, uint8_t *buf, os_log_t log)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *buf = 136446210;
  *(buf + 4) = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "No match found for device %{public}s", buf, 0xCu);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_100877844(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid zone (nil or 0 length).", buf, 2u);
}

void sub_1008778AC()
{
  sub_10006E0A8(__stack_chk_guard);
  if (v2 < 0)
  {
    v1 = *v1;
  }

  v3 = 136315138;
  v4 = v1;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "agent %s cannot scan, disabled/leech", &v3, 0xCu);
}

void sub_10087792C()
{
  sub_10006E0A8(__stack_chk_guard);
  sub_1000E0BE0();
  v4 = 1;
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "agent %s cannot scan, deviceLocked:%d, entry.scanWhenLocked:%d", v3, 0x18u);
}

void sub_1008779BC()
{
  sub_10006E0A8(__stack_chk_guard);
  sub_1000E0BE0();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "agent %s cannot scan, device never unlocked, entry.scanBeforeFirstUnlock:%d", v2, 0x12u);
}

void sub_100877A40()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100877AEC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100877B5C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877B98()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877BD4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877C10()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877C4C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100877CBC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100877D2C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100877D9C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877DD8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877E14()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877E50()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877E8C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877EFC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877F38()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877F74()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100877FB0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100878020()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100878090()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008780CC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100878108()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100878144()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100878180()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008781BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008781F8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100878234()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100878298()
{
  sub_1000B71B4();
  *v1 = 138543362;
  *v3 = v2;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Removing incomplete pairing info for device %{public}@", v4, 0xCu);
}

void sub_1008782EC()
{
  sub_1000B71B4();
  *v1 = 138543362;
  *v3 = v2;
  sub_1000E4044(&_mh_execute_header, v5, v3, "Failed to retrieve UUID for paired address %{public}@", v4);
}

void sub_100878338()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100878374()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10009C694(&_mh_execute_header, v3, v4, "Failed to retrieve UUID for paired address %{public}@", v5);
}

void sub_1008783B8()
{
  sub_1000B7024();
  if (*(v1 + 23) >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  *v2 = 136446210;
  *(v2 + 4) = v3;
  sub_10003F198();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100878424()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100878460()
{
  sub_10006DE24();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008784E4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087857C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008785EC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087865C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008786CC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087873C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

uint64_t sub_100878850()
{
  sub_10003F088();
  sub_10003F668(&_mh_execute_header, v0, v1, "We don't have root keys for LE, something's wrong, file a radar!", v2, v3, v4, v5, v7);
  return sub_1007D1610();
}

void sub_100878894()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1008788D0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100878940()
{
  sub_10006DE24();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1008789B0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100878A20()
{
  sub_10006DE24();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100878A90()
{
  sub_10006DE24();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100878B00()
{
  sub_10006DE24();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100878B70()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100878BE0()
{
  sub_10006DE24();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100878C50(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v3 = 136446210;
  v4 = "fInProgressKeys.find(device) == fInProgressKeys.end()";
  sub_1000E4044(&_mh_execute_header, a1, a3, "Assertion failed: %{public}s", &v3);
}

void sub_100878CCC(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  v7 = a2;
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = v7;
  _os_log_fault_impl(&_mh_execute_header, a4, OS_LOG_TYPE_FAULT, "Resolved address we got on pairing completion (%{public}@) doesn't match the one that was distributed (%{public}@)!", a3, 0x16u);
}

void sub_100878D54(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = a1;
  *a2 = 138543362;
  *(a2 + 4) = v5;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Received remote address but have no IRK for device %{public}@", a2, 0xCu);
}

void sub_100878DC4()
{
  sub_1000B71B4();
  if (*(v1 + 23) >= 0)
  {
    v6 = v1;
  }

  else
  {
    v6 = *v1;
  }

  *v2 = 136446466;
  *(v2 + 4) = v6;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Pairing failed to device %{public}s with error %{bluetooth:OI_STATUS}u", v4, 0x12u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100878F50()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100879064()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100879150()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10009C694(&_mh_execute_header, v3, v4, "Device %{public}@ wasn't being tracked by LE Connection Manager!", v5);
}

void sub_100879194()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10009C694(&_mh_execute_header, v3, v4, "Device %{public}@ wasn't being tracked by device manager!", v5);
}

void sub_1008791D8()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100879224()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10003F198();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100879270()
{
  sub_1000B7024();
  sub_10003F2DC(v1, v2, 5.8381e-34);
  sub_10009C694(&_mh_execute_header, v3, v4, "Device %{public}@ requested security but wasn't being tracked by device manager!", v5);
}

void sub_1008792B4()
{
  sub_1000B7024();
  if (*(v1 + 23) >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  *v2 = 136446210;
  *(v2 + 4) = v3;
  sub_10003F198();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_100879320(uint64_t a1, NSObject *a2)
{
  v3 = sub_100063D0C();
  sub_10003F0CC();
  sub_1000E4044(&_mh_execute_header, a2, v4, "Device %{public}@ requested pairing but wasn't being tracked by device manager!", v5);
}

void sub_1008793B0(const unsigned __int8 *a1, NSObject *a2)
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't find pairing agent to handle request for device %{public}s - cancelling pairing", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100879468()
{
  sub_1000B71B4();
  sub_10003F2DC(v1, v2, 5.8382e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to cancel pairing to device %{public}@ with result %{bluetooth:OI_STATUS}u", v5, 0x12u);
}

void sub_1008794C4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100879548()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100879598()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100879608()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100879718()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100879788()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087980C()
{
  sub_10003F088();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100879848()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1008799B4()
{
  sub_10003F0B4();
  sub_1000B7098();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0xEu);
}

void sub_100879AC0()
{
  sub_10003F0B4();
  sub_10009C6C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100879B30()
{
  sub_10003F0CC();
  sub_1000B7098();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void sub_100879BB4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100879C24()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100879C94()
{
  sub_10003F0B4();
  sub_1000B7098();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0xEu);
}

void sub_100879DAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

void sub_100879DC4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to extract country code plist. %@", buf, 0xCu);
}

void sub_100879E8C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "readCurrentPowerTableVersion result %d", v2, 8u);
}

void sub_100879F3C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100879FAC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087A01C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087A0A0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087A110()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087A14C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087A1C4(uint64_t a1, NSObject *a2)
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
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to open serial port for device %{public}s", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10087A27C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087A2B8()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087A2F4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087A330()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087A3A0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087A4C4()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087A534()
{
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10087A600()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087A650()
{
  sub_10003F318();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10087A6D0()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087A744()
{
  sub_10003F318();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087A7B8()
{
  sub_10003F318();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "runningBoardApplicationStateChanged: process:%@ update:%@", v2, 0x16u);
}

void sub_10087A83C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087A8AC()
{
  sub_10003F0CC();
  sub_10003F13C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10087A928()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087A998()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087AAC0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087ABA0()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087ACA8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087AD18()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087ADA8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087AE18()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087AE88()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087AEF8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087AF68()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087AFD8(void *a1, uint64_t a2)
{
  sub_10003F2DC(a1, a2, 5.7779e-34);
  sub_10003F1B4(&_mh_execute_header, v3, v4, "Failed to create run loop source for device %@", v5);
}

void sub_10087B020(void *a1, uint64_t a2)
{
  sub_10003F2DC(a1, a2, 5.7779e-34);
  sub_10003F1B4(&_mh_execute_header, v3, v4, "Failed to create pairing notification for device %@", v5);
}

void sub_10087B090()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087B0CC()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087B13C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087B178()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087B210()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087B24C()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087B2BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087B30C()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087B3A4()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087B414()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087B8A4(char *a1, void *a2, os_log_t log)
{
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = 141558275;
  v5 = 1752392040;
  v6 = 2081;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Received StoreClassicDeviceSettings for device %{private, mask.hash}s that is not paired", &v4, 0x16u);
}

void sub_10087BC08(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136446210;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to create device from address %{public}s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10087BD74(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315394;
  v4 = "TransportCreate";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s invalid interface: %d", &v3, 0x12u);
}

void sub_10087BE18()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087BE54()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087BEC4(void *a1, NSObject *a2)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_10003F0CC();
  sub_10003F280(&_mh_execute_header, a2, v3, "PurpleCoexManager XPC connection error: %{public}s", v4);
}

void sub_10087C004()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C040()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C240()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C2A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C2E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C3BC()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C3F8(unsigned __int8 a1, xpc_object_t xarray, NSObject *a3)
{
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 2048;
  count = xpc_array_get_count(xarray);
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Invalid size of the period duration array(numPeriods: %d, period count %zu)", v4, 0x12u);
}

void sub_10087C498()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C4D4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C510()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087C5A8()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087C618()
{
  sub_10003F0CC();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10087C688()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C6C4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C778()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C7B4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C7F0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C82C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C868()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C8A4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C8E0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C91C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087C958()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087CA14()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087CA84()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087CAF4()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087CB30()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10087CBB0()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087CC20()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087CC90()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087CD00()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087CD70()
{
  sub_10003F0B4();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10087CDE0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087CE1C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087CE58()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087CEBC()
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

  *v2 = 136446210;
  *(v2 + 4) = v8;
  sub_10003F280(&_mh_execute_header, v3, v3, "Bandwidth: Error obtaining HFP Audio Device %{public}s", v4);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10087CF18(uint64_t a1, NSObject *a2, uint64_t a3)
{
  *a1 = 136446210;
  *(a1 + 4) = "Null Object!";
  sub_10003F280(&_mh_execute_header, a2, a3, "Bandwidth: Error obtaining HFP Audio Device %{public}s", a1);
}

void sub_10087CF5C()
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
  sub_10003F280(&_mh_execute_header, v3, v3, "Bandwidth: Received LEA Audio Disconnect for device %s, when none of the LEA Audio profiles were running", v4);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_10087CFE0()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087D01C()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10087D058()
{
  sub_10003F088();
  sub_10003F054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}