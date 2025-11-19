void sub_1000014E8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%@] Cancelled", &v4, 0xCu);
  }
}

id sub_10000158C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 88) deviceAvailable:{objc_msgSend(*(*(a1 + 32) + 24), "transportReleasePolicy")}];
  v3 = *(a1 + 32);
  if (*(v3 + 96) == 1)
  {
    v4 = *(v3 + 88);

    return [v4 deviceSupportsChargingChimeDebounce];
  }

  return result;
}

void sub_100001690(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = (*(v2 + 68) << 14) | 2;
  v3 = *(v2 + 80);
  *(v2 + 80) = v3 + 1;
  v9[1] = v3;
  v9[2] = [*(a1 + 40) length];
  v4 = objc_alloc_init(NSMutableData);
  [v4 appendBytes:v9 length:6];
  [v4 appendData:*(a1 + 40)];
  v5 = [NSData dataWithData:v4];
  v6 = IOHIDDeviceSetReport(*(*(a1 + 32) + 32), kIOHIDReportTypeOutput, *(*(a1 + 32) + 64), [v5 bytes], objc_msgSend(v5, "length"));
  if (v6)
  {
    v7 = v6;
    v8 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000462C(v7, v8);
    }
  }
}

id sub_1000019AC(uint64_t a1)
{
  [*(*(a1 + 32) + 88) deviceUnavailable];
  v2 = *(*(a1 + 32) + 24);

  return [v2 hidDeviceDisconnect:?];
}

id sub_100001B88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  v3 = [*(v1 + 24) transportReleasePolicy];

  return [v2 deviceTransportAvailable:v3];
}

void sub_100002354(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t sub_100002920(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  v3 = v1;
  bzero(v7, 0x400uLL);
  v4 = v3;
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v7, 0x400uLL))
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100004C0C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100004B8C();
  }

  v5 = 1;
LABEL_11:

  return v5;
}

void sub_100002A44(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t start()
{
  v0 = os_log_create("com.apple.uarp", "uarphidd");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = getprogname();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s: Launched", buf, 0xCu);
  }

  v1 = sub_100002A40(v0);
  if (!v1)
  {
    oslog = v0;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      v4 = v0;
      v5 = getprogname();
      *buf = 136315138;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Sandbox initialized", buf, 0xCu);
    }

    [NSString stringWithUTF8String:"/var/db/accessoryupdater/uarpd/"];
    v6 = [[UARPHIDManager alloc] initWithTempFolder:objc_claimAutoreleasedReturnValue() transportReleasePolicy:1];
    if (![(UARPHIDManager *)v6 loadMappingDatabase]&& os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Error: could not load HID mapping database\n", buf, 2u);
    }

    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:5017]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1280]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1286]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1057]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1106]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:30723]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1282]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1283]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1287]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1281]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:5019]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1288]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1284]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1285]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:147 productID:40960]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1110]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1111]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1108]];
    [(UARPHIDManager *)v6 ignoreDeviceClass:[[UARPHIDDevice alloc] initWithVendorID:1452 productID:1109]];
    [(UARPHIDManager *)v6 startIOKitMatching];
    dispatch_main();
  }

  v2 = v1;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100004C8C(v0);
  }

  return v2;
}

void sub_100003688(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[UARPHIDManager hidDeviceDisconnect:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: Unreachable %@", &v5, 0x16u);
  }

  if (os_log_type_enabled(*(*v2 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100004E40(v2);
  }

  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100004EC8(v2);
  }
}

uint64_t sub_100004138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004150(uint64_t a1)
{
  v2 = [NSArray arrayWithArray:*(*(a1 + 32) + 72)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000421C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = +[NSFileManager defaultManager];
  [v4 removeItemAtURL:*(*(a1 + 32) + 64) error:0];
}

void sub_10000452C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100004554(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000045B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "hid device failed to open; %@", &v2, 0xCu);
}

void sub_10000462C(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[UARPHIDDevice uarpMessageSendToTransport:]_block_invoke";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: IOHIDDeviceSetReport() failed with status %u", &v2, 0x12u);
}

void sub_1000046B8()
{
  v1[0] = 136315394;
  sub_100002398();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s: Receive report from UARP HID Device %@", v1, 0x16u);
}

void sub_100004738()
{
  sub_100002380();
  v3 = v2;
  v4 = [sub_10000238C() uuid];
  [v4 UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_100002374() UUIDString];
  sub_100002338();
  sub_100002354(&_mh_execute_header, v6, v7, "%s: deviceUUID <%@> is not equal to our UUID <%@>", v8, v9, v10, v11, 2u);
}

void sub_1000047FC()
{
  sub_100002380();
  v3 = v2;
  v4 = [sub_10000238C() uuid];
  [v4 UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_100002374() UUIDString];
  sub_100002338();
  sub_100002354(&_mh_execute_header, v6, v7, "%s: deviceUUID <%@> is not equal to our UUID <%@>", v8, v9, v10, v11, 2u);
}

void sub_1000048C0()
{
  sub_100002380();
  v3 = v2;
  v4 = [sub_10000238C() uuid];
  [v4 UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_100002374() UUIDString];
  sub_100002338();
  sub_100002354(&_mh_execute_header, v6, v7, "%s: deviceUUID <%@> is not equal to our UUID <%@>", v8, v9, v10, v11, 2u);
}

void sub_100004984()
{
  sub_100002380();
  v3 = v2;
  v4 = [sub_10000238C() uuid];
  [v4 UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_100002374() UUIDString];
  sub_100002338();
  sub_100002354(&_mh_execute_header, v6, v7, "%s: deviceUUID <%@> is not equal to our UUID <%@>", v8, v9, v10, v11, 2u);
}

void sub_100004A48()
{
  sub_100002380();
  v3 = v2;
  v4 = [sub_10000238C() uuid];
  [v4 UUIDString];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_100002374() UUIDString];
  sub_100002338();
  sub_100002354(&_mh_execute_header, v6, v7, "%s: deviceUUID <%@> is not equal to our UUID <%@>", v8, v9, v10, v11, 2u);
}

void sub_100004B0C()
{
  v1[0] = 136315394;
  sub_100002398();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s: %@", v1, 0x16u);
}

void sub_100004CD0()
{
  sub_100004580();
  sub_100004548();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100004D4C()
{
  sub_100004580();
  sub_100004548();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100004E40(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v3[0] = 136315394;
  sub_1000045A0();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: Devices pre removal %@", v3, 0x16u);
}

void sub_100004EC8(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v3[0] = 136315394;
  sub_1000045A0();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: Devices post removal %@", v3, 0x16u);
}

void sub_100005040()
{
  sub_100004580();
  sub_100004548();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100005134(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = a2;
  v5 = [sub_100004594() path];
  sub_100004574();
  sub_100004554(&_mh_execute_header, v6, v7, "Could not open HID UUID Database at %@", v8, v9, v10, v11, v12);
}

void sub_1000051C4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_100004594() path];
  sub_100004574();
  sub_100004554(&_mh_execute_header, v6, v7, "Could not decode HID UUID Database at %@", v8, v9, v10, v11, v12);
}

void sub_100005254(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_100004594() path];
  sub_100004574();
  sub_100004554(&_mh_execute_header, v6, v7, "Folder for UUID Database could not be created %@", v8, v9, v10, v11, v12);
}

void sub_1000052E4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_100004594() path];
  sub_100004574();
  sub_100004554(&_mh_execute_header, v6, v7, "File for UUID Database could not be created %@", v8, v9, v10, v11, v12);
}