uint64_t sub_1000509C0()
{

  return abort_with_reason();
}

void sub_100050A7C(id a1)
{
  qword_1000EB338 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RDClient];

  _objc_release_x1();
}

void sub_100050B08(id a1)
{
  qword_1000EB348 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDBubbled];

  _objc_release_x1();
}

void sub_100050DB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) xpcConnection];
    NSLog(@"Could not get proxy object for client connection: %@", v2);
  }
}

void sub_100050EA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) xpcConnection];
    NSLog(@"Could not get proxy object for client connection: %@", v2);
  }
}

uint64_t sub_10005141C(uint64_t a1)
{
  [*(a1 + 32) setWasToldWillSwitchUser:1];
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v2 = qword_1000EB358;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      [v4 pid];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v7);
}

uint64_t sub_100051650(uint64_t a1)
{
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v2 = qword_1000EB358;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      [v4 pid];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v7);
}

uint64_t sub_100051994(uint64_t a1)
{
  if (qword_1000EB360 != -1)
  {
    sub_100089EE8();
  }

  v2 = qword_1000EB358;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      [v4 pid];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v7);
}

void sub_1000521E4(id a1)
{
  qword_1000EB358 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

uint64_t sub_10005222C()
{
  if (qword_1000EB378 != -1)
  {
    sub_100089FD0();
  }

  return byte_1000EB370;
}

void sub_100052264(id a1)
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0))
  {
    if (strnstr(__big, "keybag_initlog", __len))
    {
      byte_1000EB370 = 1;
    }
  }
}

uint64_t start(int a1, uint64_t a2)
{
  v4 = +[UMDProviderSideEffects sideEffects];
  v5 = qword_1000EB608;
  qword_1000EB608 = v4;

  UMLSetInternalLogHandlers();
  if (a1 == 2)
  {
    v6 = *(a2 + 8);
    if (!strcmp(v6, "--init"))
    {
      sub_1000526C0();
    }

    else
    {
      if (strcmp(v6, "--switch"))
      {
        goto LABEL_4;
      }

      sub_100052ADC();
    }

    exit(0);
  }

LABEL_4:
  os_log_set_client_type();
  _os_log_get_nscf_formatter();
  _os_log_set_nscf_formatter();
  v7 = sub_1000577F0(UMDRotatingLog, qword_1000EB608, "/var/logs/usermanagerd.log", 0x100000, 3);
  v8 = qword_1000EB368;
  qword_1000EB368 = v7;

  if (qword_1000EB398 != -1)
  {
    sub_100089FE4();
  }

  v9 = qword_1000EB390;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1000EB601)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (byte_1000EB600)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 2;
    }

    if (v12)
    {
      v14 = _os_log_send_and_compose_impl();
      v13 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }

  v15 = dispatch_queue_create("com.apple.mobile.keybagd.usermanagerd", 0);
  v16 = qword_1000EB610;
  qword_1000EB610 = v15;

  v17 = dispatch_queue_create("com.apple.system.libinfo.muser", 0);
  v18 = qword_1000EB618;
  qword_1000EB618 = v17;

  v19 = dispatch_queue_create("com.apple.usermanagerd.userswitch", 0);
  v20 = qword_1000EB620;
  qword_1000EB620 = v19;

  v21 = dispatch_queue_create("com.apple.usermanagerd.volumemigrator", 0);
  v22 = qword_1000EB628;
  qword_1000EB628 = v21;

  if (sub_100052DEC())
  {
    if (qword_1000EB388 != -1)
    {
      sub_100089FF8();
    }

    v23 = qword_1000EB380;
    if (os_log_type_enabled(qword_1000EB380, OS_LOG_TYPE_DEFAULT))
    {
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      v24 = _os_log_send_and_compose_impl();
      v25 = v24;
      if (v24)
      {
        sub_100002A8C(v24);
      }

      free(v25);
    }

    byte_1000EB602 = 1;
  }

  if (!sub_100089EFC() && (os_variant_uses_ephemeral_storage() & 1) == 0)
  {
    sub_100019A54();
  }

  fwrite("****** USERMANAGERD SESSION SETUP DONE  ****\n", 0x2DuLL, 1uLL, __stdoutp);
  sub_100078B40();
  sub_10006C714();
  sub_100078C2C();
  sub_10003661C();
  byte_1000EB601 = 1;
  _os_log_set_nscf_formatter();
  openlog("usermanagerd", 1, 24);
  CFRunLoopRun();
  return 0;
}

size_t sub_1000526C0()
{
  byte_1000EB600 = 1;
  if (sub_100089EFC())
  {
    v0 = __stdoutp;
    v1 = "****** DIAGNOSTICS MODE ENABLED, SKIP INIT ****\n";
    v2 = 48;
LABEL_5:

    return fwrite(v1, v2, 1uLL, v0);
  }

  if (os_variant_uses_ephemeral_storage())
  {
    v0 = __stdoutp;
    v1 = "****** DEVICE HAS EPHEMERAL DATA VOLUME, SKIP INIT ****\n";
    v2 = 56;
    goto LABEL_5;
  }

  if (qword_1000EB378 != -1)
  {
    sub_100089FD0();
  }

  if (byte_1000EB370)
  {
    v4 = "/var/logs/usermanagerd_init.log";
  }

  else
  {
    v4 = "/var/logs/usermanagerd.log";
  }

  v5 = sub_1000577F0(UMDRotatingLog, qword_1000EB608, v4, 0x100000, 3);
  v6 = qword_1000EB368;
  qword_1000EB368 = v5;

  fwrite("****** IN UMD_INIT ****\n", 0x18uLL, 1uLL, __stdoutp);
  v7 = dispatch_queue_create("com.apple.system.libinfo.muser", 0);
  v8 = qword_1000EB618;
  qword_1000EB618 = v7;

  fwrite("****** STARTING EARLYBOOT SETUP ****\n", 0x25uLL, 1uLL, __stdoutp);
  if (qword_1000EB388 != -1)
  {
    sub_10008A020();
  }

  v9 = qword_1000EB380;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    v10 = _os_log_send_and_compose_impl();
    v11 = v10;
    if (v10)
    {
      sub_100002A8C(v10);
    }

    free(v11);
  }

  v12 = dispatch_queue_create("com.apple.system.libinfo.muser", 0);
  v13 = qword_1000EB618;
  qword_1000EB618 = v12;

  if (sub_100052DEC())
  {
    if (qword_1000EB388 != -1)
    {
      sub_100089FF8();
    }

    v14 = qword_1000EB380;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }

      free(v16);
    }

    byte_1000EB602 = 1;
  }

  sub_100037918();
  if (qword_1000EB388 != -1)
  {
    sub_100089FF8();
  }

  v17 = qword_1000EB380;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    v18 = _os_log_send_and_compose_impl();
    v19 = v18;
    if (v18)
    {
      sub_100002A8C(v18);
    }

    free(v19);
  }

  fwrite("****** DONE EARLYBOOT SETUP ****\n", 0x21uLL, 1uLL, __stdoutp);
  return fwrite("****** DONE UMD_INIT ****\n", 0x1AuLL, 1uLL, __stdoutp);
}

void sub_100052ADC()
{
  byte_1000EB601 = 1;
  v0 = sub_1000577F0(UMDRotatingLog, qword_1000EB608, "/var/logs/usermanagerd.log", 0x100000, 3);
  v1 = qword_1000EB368;
  qword_1000EB368 = v0;

  v2 = dispatch_queue_create("com.apple.system.libinfo.muser", 0);
  v3 = qword_1000EB618;
  qword_1000EB618 = v2;

  if (qword_1000EB398 != -1)
  {
    sub_100089FE4();
  }

  v4 = qword_1000EB390;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1000EB601)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (byte_1000EB600)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 2;
    }

    if (v7)
    {
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (sub_100052DEC())
  {
    if (qword_1000EB388 != -1)
    {
      sub_100089FF8();
    }

    v10 = qword_1000EB380;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      v11 = _os_log_send_and_compose_impl();
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }

      free(v12);
    }

    byte_1000EB602 = 1;
  }

  sub_100042F8C();
  if (qword_1000EB398 != -1)
  {
    sub_10008A034();
  }

  v13 = qword_1000EB390;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1000EB601)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (byte_1000EB600)
    {
      v15 = 2;
    }

    else
    {
      v15 = v14;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 2;
    }

    if (v16)
    {
      v17 = _os_log_send_and_compose_impl();
      v18 = v17;
      if (v17)
      {
        sub_100002A8C(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }
}

BOOL sub_100052DEC()
{
  v0 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", kCFAllocatorDefault, 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
      if (qword_1000EB388 != -1)
      {
        sub_10008A020();
      }

      v4 = qword_1000EB380;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_1000EB388 != -1)
      {
        sub_10008A020();
      }

      v4 = qword_1000EB380;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    v5 = _os_log_send_and_compose_impl();
    v6 = v5;
    if (v5)
    {
      sub_100002A8C(v5);
    }

    free(v6);
LABEL_14:

    IOObjectRelease(v1);
    return v3;
  }

  return 0;
}

void sub_100052FD8(id a1)
{
  qword_1000EB380 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_10005301C(id a1)
{
  qword_1000EB390 = os_log_create(off_1000EA598, "default");

  _objc_release_x1();
}

id sub_100053060(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1000530C0([UMDUserManager alloc], v2);

  return v3;
}

void *sub_1000530C0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = UMDUserManager;
    v4 = objc_msgSendSuper2(&v6, "init");
    if (!v4)
    {
      sub_100088DDC();
    }

    a1 = v4;
    sub_10008B7DC(v3, v4);
  }

  return a1;
}

uint64_t sub_100053130(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10[0] = @"BLOB";
    v10[1] = @"BLOBLEN";
    v11[0] = v3;
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 length]);
    v11[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    v7 = sub_100099294(v6);

    if (!v7)
    {
      sub_100088DDC();
    }

    sub_10008B82C(a1, v7, &v9);
    a1 = v9;
  }

  return a1;
}

id sub_100053238(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = sub_100098CCC(v3, kUMUserSessionIDKey, 0xFFFFFFFFLL);
    if (*__error() == 2)
    {
      sub_100088DDC();
    }

    v6 = sub_100098ECC(v4, kUMUserSessionShortNameKey);
    if (!v6)
    {
      sub_100088DDC();
    }

    v7 = v6;
    v8 = sub_100098CCC(v4, kUMUserSessionGroupIDKey, 0xFFFFFFFFLL);
    if (*__error() == 2)
    {
      sub_100088DDC();
    }

    v9 = sub_100098ECC(v4, kUMUserSessionLibinfoHomeDirKey);
    if (!v9)
    {
      sub_100088DDC();
    }

    v10 = v9;
    v11 = sub_100098ECC(v4, kUMUserSessionUUIDKey);
    v12 = sub_100016954(NSUUID, v11);

    if (!v12)
    {
      sub_100088DDC();
    }

    if (v5 != v8)
    {
      sub_100088DDC();
    }

    v17 = v12;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    v14 = [NSSet setWithArray:v13];

    v15 = sub_1000746C0(UMDarwinDirectoryUser, v7, v5, v12, v12, v7, v10, @"/bin/bash", v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_100053450(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = sub_100098CCC(v3, kUMUserSessionGroupIDKey, 0xFFFFFFFFLL);
    if (*__error() == 2)
    {
      sub_100088DDC();
    }

    v6 = sub_100098ECC(v4, kUMUserSessionShortNameKey);
    if (!v6)
    {
      sub_100088DDC();
    }

    v7 = v6;
    v8 = sub_100098ECC(v4, kUMUserSessionLibinfoHomeDirKey);
    if (!v8)
    {
      sub_100088DDC();
    }

    v9 = v8;
    v10 = sub_100098ECC(v4, kUMUserSessionUUIDKey);
    v11 = sub_100016954(NSUUID, v10);

    if (!v11)
    {
      sub_100088DDC();
    }

    a1 = sub_100074B58(UMDarwinDirectoryGroup, v7, v5, v11, v7);
  }

  return a1;
}

void sub_100053590(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = sub_100053238(v5, v6);
  v9 = sub_100053450(*(a1 + 32), *(a1 + 40));
  [v8 addObject:v10];

  [v7 addObject:v9];
}

void sub_10005363C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v5 copy];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = sub_100088F2C(v12);
        v14 = [v13 isEqualToString:*(a1 + 32)];

        if (v14)
        {
          [v5 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v6 copy];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        v21 = sub_100088F2C(v20);
        v22 = [v21 isEqualToString:*(a1 + 32)];

        if (v22)
        {
          [v6 removeObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }
}

void sub_10005388C(id a1)
{
  qword_1000EB3A0 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

uint64_t sub_100053930(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_100053940()
{

  return sub_1000011A8(0);
}

uint64_t sub_100053958(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL sub_100053980()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL sub_10005399C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000539B4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000539D0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL sub_100053A00(const char *a1, char *a2, CFIndex a3, int a4, char *a5)
{
  v7 = sub_100053A84(a1, a4, 1, a5);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  Value = CFDictionaryGetValue(v7, @"MKBUserSessionVolumeDeviceNode");
  v10 = Value != 0;
  if (Value)
  {
    CFStringGetCString(Value, a2, a3, 0x8000100u);
  }

  CFRelease(v8);
  return v10;
}

__CFDictionary *sub_100053A84(const char *a1, int a2, int a3, char *a4)
{
  *existing = 0;
  prefix = 0;
  v92 = 0;
  properties = 0;
  theDict = 0;
  parent = 0;
  valuePtr = 0;
  memset(name, 0, 128);
  v6 = &off_1000EB000;
  if (a3)
  {
    BootDevice = APFSContainerGetBootDevice();
    if (BootDevice)
    {
      v8 = BootDevice;
      if (qword_1000EB3B8 != -1)
      {
        sub_10008B888();
      }

      v9 = qword_1000EB3B0;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_143;
      }

      *v96 = 0;
      v10 = sub_1000011A8(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        LODWORD(v99) = 67109120;
        HIDWORD(v99) = v8;
        goto LABEL_32;
      }

      goto LABEL_141;
    }

    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v12 = qword_1000EB3B0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v99 = 0;
      v13 = sub_1000011A8(0);
      v14 = v12;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v13;
      }

      else
      {
        v15 = v13 & 0xFFFFFFFE;
      }

      if (v15)
      {
        *v96 = 138412290;
        *&v96[4] = prefix;
        v16 = _os_log_send_and_compose_impl();

        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {

        v16 = 0;
      }

      free(v16);
    }
  }

  v17 = IOServiceMatching("AppleAPFSContainer");
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v17, &existing[1]))
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v9 = qword_1000EB3B0;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_143;
    }

    *v96 = 0;
    v18 = sub_1000011A8(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      LOWORD(v99) = 0;
LABEL_32:
      v20 = _os_log_send_and_compose_impl();
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }

      goto LABEL_142;
    }

LABEL_141:
    v21 = 0;
LABEL_142:
    free(v21);
LABEL_143:
    v28 = 0;
    v25 = 0;
    v22 = 0;
    goto LABEL_144;
  }

  v84 = a3;
  v22 = 0;
  v23 = 0;
  v85 = a2;
  do
  {
    v24 = IOIteratorNext(existing[1]);
    if (!v24)
    {
      goto LABEL_137;
    }

    v25 = v24;
    parent = 0;
    existing[0] = 0;
    if (IORegistryEntryGetParentEntry(v24, "IOService", &parent) || IORegistryEntryGetChildIterator(v25, "IOService", existing))
    {
      if (v6[119] != -1)
      {
        sub_10008B888();
      }

      v9 = qword_1000EB3B0;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_193;
      }

      *v96 = 0;
      v70 = sub_1000011A8(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v70;
      }

      else
      {
        v71 = v70 & 0xFFFFFFFE;
      }

      if (v71)
      {
        LOWORD(v99) = 0;
        goto LABEL_187;
      }

LABEL_191:
      v75 = 0;
LABEL_192:
      free(v75);
LABEL_193:
      v28 = 0;
      goto LABEL_144;
    }

    v92 = 0;
    properties = 0;
    if (IORegistryEntryCreateCFProperties(parent, &properties, kCFAllocatorDefault, 0) || IORegistryEntryCreateCFProperties(v25, &v92, kCFAllocatorDefault, 0))
    {
      if (v6[119] != -1)
      {
        sub_10008B888();
      }

      v9 = qword_1000EB3B0;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_193;
      }

      *v96 = 0;
      v72 = sub_1000011A8(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v73 = v72;
      }

      else
      {
        v73 = v72 & 0xFFFFFFFE;
      }

      if (v73)
      {
        LOWORD(v99) = 0;
LABEL_187:
        v74 = _os_log_send_and_compose_impl();
        v75 = v74;
        if (v74)
        {
          sub_100002A8C(v74);
        }

        goto LABEL_192;
      }

      goto LABEL_191;
    }

    if (v92)
    {
      CFRelease(v92);
      v92 = 0;
    }

    if (properties)
    {
      CFRelease(properties);
      properties = 0;
    }

    v86 = v23;
    if (parent)
    {
      IOObjectRelease(parent);
      parent = 0;
    }

    v26 = IOIteratorNext(existing[0]);
    v27 = v26 == 0;
    if (v26)
    {
      v28 = v26;
      while (!IOObjectConformsTo(v28, "AppleAPFSVolume"))
      {
        v30 = 0;
LABEL_127:
        IOObjectRelease(v28);
        if ((v30 & 1) == 0)
        {
          v28 = IOIteratorNext(existing[0]);
          v27 = v28 == 0;
          if (v28)
          {
            continue;
          }
        }

        goto LABEL_133;
      }

      if (IORegistryEntryCreateCFProperties(v28, &theDict, kCFAllocatorDefault, 0))
      {
        if (v6[119] != -1)
        {
          sub_10008B888();
        }

        v9 = qword_1000EB3B0;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v96 = 0;
          v66 = sub_1000011A8(0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v67 = v66;
          }

          else
          {
            v67 = v66 & 0xFFFFFFFE;
          }

          if (v67)
          {
            LOWORD(v99) = 0;
            v68 = _os_log_send_and_compose_impl();
            v69 = v68;
            if (v68)
            {
              sub_100002A8C(v68);
            }
          }

          else
          {
            v69 = 0;
          }

          free(v69);
        }

LABEL_144:

        goto LABEL_145;
      }

      if (a2 && (Value = CFDictionaryGetValue(theDict, @"RoleValue")) != 0 && (CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr), valuePtr != a2) || (memset(name, 0, 128), IORegistryEntryGetName(v28, name), strncmp(a1, name, 0x80uLL)))
      {
        v30 = 0;
        goto LABEL_125;
      }

      v31 = CFDictionaryGetValue(theDict, @"BSD Name");
      if (v31 && v84 && prefix)
      {
        if (v6[119] != -1)
        {
          sub_10008B888();
        }

        v32 = qword_1000EB3B0;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v99 = 0;
          v33 = sub_1000011A8(0);
          v34 = v32;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v33;
          }

          else
          {
            v35 = v33 & 0xFFFFFFFE;
          }

          if (v35)
          {
            *v96 = 138412546;
            *&v96[4] = prefix;
            v97 = 2112;
            v98 = v31;
            v36 = _os_log_send_and_compose_impl();

            if (v36)
            {
              sub_100002A8C(v36);
            }
          }

          else
          {

            v36 = 0;
          }

          v6 = &off_1000EB000;
          free(v36);
        }

        HasPrefix = CFStringHasPrefix(v31, prefix);
        v38 = v6[119];
        if (HasPrefix)
        {
          if (v38 != -1)
          {
            sub_10008B888();
          }

          v39 = qword_1000EB3B0;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v99 = 0;
            v40 = sub_1000011A8(0);
            v41 = v39;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = v40;
            }

            else
            {
              v42 = v40 & 0xFFFFFFFE;
            }

            if (v42)
            {
              *v96 = 138412290;
              *&v96[4] = v31;
              v43 = _os_log_send_and_compose_impl();

              if (v43)
              {
                sub_100002A8C(v43);
              }
            }

            else
            {

              v43 = 0;
            }

            free(v43);
            v6 = &off_1000EB000;
          }

          goto LABEL_92;
        }

        if (v38 != -1)
        {
          sub_10008B888();
        }

        v44 = qword_1000EB3B0;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v99 = 0;
          v45 = sub_1000011A8(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v45;
          }

          else
          {
            v46 = v45 & 0xFFFFFFFE;
          }

          if (v46)
          {
            *v96 = 138412290;
            *&v96[4] = v31;
            v47 = _os_log_send_and_compose_impl();
            v48 = v47;
            if (v47)
            {
              sub_100002A8C(v47);
            }
          }

          else
          {
            v48 = 0;
          }

          free(v48);
          v6 = &off_1000EB000;
        }

        v30 = 0;
      }

      else
      {
LABEL_92:
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          if (v6[119] != -1)
          {
            sub_10008B888();
          }

          v79 = qword_1000EB3B0;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            *v96 = 0;
            v80 = sub_1000011A8(0);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              v81 = v80;
            }

            else
            {
              v81 = v80 & 0xFFFFFFFE;
            }

            if (v81)
            {
              LOWORD(v99) = 0;
              v83 = _os_log_send_and_compose_impl();
              v82 = v83;
              if (v83)
              {
                sub_100002A8C(v83);
              }
            }

            else
            {
              v82 = 0;
            }

            free(v82);
          }

          exit(-1);
        }

        v22 = Mutable;
        CFDictionarySetValue(Mutable, @"MKBUserSessionVolumeDeviceNode", v31);
        v50 = CFDictionaryGetValue(theDict, @"UUID");
        CFDictionarySetValue(v22, @"MKBUserSessionVolumeUUID", v50);
        if (a4)
        {
          v51 = CFDictionaryGetValue(theDict, @"Encrypted");
          if (!v51 || (v52 = v51, v53 = CFGetTypeID(v51), v54 = v53 == CFBooleanGetTypeID(), v6 = &off_1000EB000, v54) && v52 == kCFBooleanFalse)
          {
            if (v6[119] != -1)
            {
              sub_10008B888();
            }

            v55 = qword_1000EB3B0;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *v96 = 0;
              v56 = sub_1000011A8(0);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v57 = v56;
              }

              else
              {
                v57 = v56 & 0xFFFFFFFE;
              }

              if (v57)
              {
                LOWORD(v99) = 0;
                v58 = _os_log_send_and_compose_impl();
                v59 = v58;
                if (v58)
                {
                  sub_100002A8C(v58);
                }
              }

              else
              {
                v59 = 0;
              }

              free(v59);
            }

            v64 = 0;
          }

          else
          {
            if (qword_1000EB3B8 != -1)
            {
              sub_10008B888();
            }

            v55 = qword_1000EB3B0;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *v96 = 0;
              v60 = sub_1000011A8(0);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v61 = v60;
              }

              else
              {
                v61 = v60 & 0xFFFFFFFE;
              }

              if (v61)
              {
                LOWORD(v99) = 0;
                v62 = _os_log_send_and_compose_impl();
                v63 = v62;
                if (v62)
                {
                  sub_100002A8C(v62);
                }
              }

              else
              {
                v63 = 0;
              }

              free(v63);
            }

            v64 = 1;
          }

          *a4 = v64;
        }

        v30 = 1;
      }

      a2 = v85;
LABEL_125:
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      goto LABEL_127;
    }

LABEL_133:
    if (existing[0])
    {
      IOObjectRelease(existing[0]);
      existing[0] = 0;
    }

    IOObjectRelease(v25);
    v23 = v86 + 1;
  }

  while (v27);
  v23 = 1;
LABEL_137:
  if (existing[1])
  {
    IOObjectRelease(existing[1]);
    existing[1] = 0;
  }

  if (!v23)
  {
    if (v6[119] != -1)
    {
      sub_10008B888();
    }

    v9 = qword_1000EB3B0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v96 = 0;
      v76 = sub_1000011A8(0);
      v9 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v76;
      }

      else
      {
        v77 = v76 & 0xFFFFFFFE;
      }

      if (v77)
      {
        LOWORD(v99) = 0;
        v78 = _os_log_send_and_compose_impl();

        if (v78)
        {
          sub_100002A8C(v78);
        }
      }

      else
      {

        v78 = 0;
      }

      free(v78);
    }

    v28 = 0;
    v25 = 0;
    goto LABEL_144;
  }

  v28 = 0;
  v25 = 0;
LABEL_145:
  if (prefix)
  {
    CFRelease(prefix);
    prefix = 0;
  }

  if (v92)
  {
    CFRelease(v92);
    v92 = 0;
  }

  if (properties)
  {
    CFRelease(properties);
    properties = 0;
  }

  if (parent)
  {
    IOObjectRelease(parent);
    parent = 0;
  }

  if (existing[0])
  {
    IOObjectRelease(existing[0]);
    existing[0] = 0;
  }

  if (v25)
  {
    IOObjectRelease(v25);
  }

  if (existing[1])
  {
    IOObjectRelease(existing[1]);
    existing[1] = 0;
  }

  if (v28)
  {
    IOObjectRelease(v28);
  }

  return v22;
}

BOOL sub_10005489C(char *a1, CFIndex a2)
{
  v13 = 1;
  v3 = sub_100053A00("Data", a1, a2, 64, &v13);
  if (v3)
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v4 = qword_1000EB3B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = "TRUE";
        if (!v13)
        {
          v7 = "FALSE";
        }

        *v14 = 136315394;
        *&v14[4] = a1;
        v15 = 2080;
        v16 = v7;
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v4 = qword_1000EB3B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
LABEL_19:
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_22;
      }

LABEL_21:
      v11 = 0;
LABEL_22:
      free(v11);
    }
  }

  return v3;
}

BOOL sub_100054A9C(char *a1, CFIndex a2)
{
  v13 = 1;
  v3 = sub_100053A00("User", a1, a2, 2, &v13);
  if (v3)
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v4 = qword_1000EB3B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = "TRUE";
        if (!v13)
        {
          v7 = "FALSE";
        }

        *v14 = 136315394;
        *&v14[4] = a1;
        v15 = 2080;
        v16 = v7;
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v4 = qword_1000EB3B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
LABEL_19:
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_22;
      }

LABEL_21:
      v11 = 0;
LABEL_22:
      free(v11);
    }
  }

  return v3;
}

uint64_t sub_100054C9C(const char **__argv)
{
  *v15 = 0;
  if (posix_spawn(&v15[1], *__argv, 0, 0, __argv, 0))
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v2 = qword_1000EB3B0;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = *__argv;
        v16 = 136315138;
        v17 = v5;
        v6 = _os_log_send_and_compose_impl();
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }
  }

  if (waitpid(v15[1], v15, 0) == -1)
  {
    if (qword_1000EB3B8 != -1)
    {
      sub_10008B888();
    }

    v8 = qword_1000EB3B0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(0);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 &= ~1u;
      }

      if (v9)
      {
        v10 = v8;
        v11 = __error();
        v12 = strerror(*v11);
        v16 = 136315138;
        v17 = v12;
        v13 = _os_log_send_and_compose_impl();

        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }
  }

  if ((v15[0] & 0x7F) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return BYTE1(v15[0]);
  }
}

uint64_t sub_100054EFC(const char *a1, int a2)
{
  v21 = a2;
  *v22 = 0;
  v3 = getmntinfo(v22, 2);
  if (v3)
  {
    v4 = v3;
    v5 = (*v22 + 2168 * v3 - 2080);
    v6 = v4 + 1;
    while (--v6 >= 1)
    {
      v7 = v5 - 2168;
      v8 = strcmp(v5, a1);
      v5 = v7;
      if (!v8)
      {
        v9 = *(v7 + 266);
        v29 = 14;
        if (sysctlnametomib("vfs.generic.ctlbyfsid", &v30, &v29) != -1)
        {
          v10 = v29;
          *(&v30 + v29) = 65538;
          v23 = 0;
          v26 = 0u;
          v27 = 0u;
          v28 = 0;
          *v22 = 1;
          *&v22[4] = v9;
          v24 = &v21;
          v25 = 4uLL;
          if ((sysctl(&v30, v10 + 1, 0, 0, v22, 0x50uLL) & 0x80000000) == 0)
          {
            return 0;
          }
        }

        v16 = *__error();
        if (qword_1000EB3C8 != -1)
        {
          sub_10008B8B0();
        }

        v13 = qword_1000EB3C0;
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        *v22 = 0;
        v17 = sub_1000011A8(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFE;
        }

        if (v18)
        {
          v30 = 67109120;
          v31 = v16;
          goto LABEL_24;
        }

        goto LABEL_26;
      }
    }
  }

  v12 = *__error();
  if (qword_1000EB3C8 != -1)
  {
    sub_10008B8B0();
  }

  v13 = qword_1000EB3C0;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v30 = 67109120;
      v31 = v12;
LABEL_24:
      v19 = _os_log_send_and_compose_impl();
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
LABEL_26:
      v20 = 0;
    }

    free(v20);
  }

LABEL_28:

  return 0xFFFFFFFFLL;
}

void sub_1000551B0(id a1)
{
  qword_1000EB3B0 = os_log_create(off_1000EA598, "userlayout");

  _objc_release_x1();
}

void sub_1000551F8(id a1)
{
  qword_1000EB3C0 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

id *sub_100055240(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = sub_1000552D0([UMDGeneration alloc], v8, v7, v6);

  return v9;
}

id *sub_1000552D0(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = UMDGeneration;
    v10 = objc_msgSendSuper2(&v12, "init");
    if (!v10)
    {
      sub_100088DDC();
    }

    a1 = v10;
    objc_storeStrong(v10 + 3, a4);
    a1[4] = v7;
    a1[5] = v8;
    *(a1 + 2) = -1;
    a1[2] = 0;
  }

  return a1;
}

uint64_t sub_100055380(uint64_t result)
{
  if (result)
  {
    result = *(result + 16);
    if (!result)
    {
      sub_100088DDC();
    }
  }

  return result;
}

uint64_t sub_1000553A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 16))
    {
      sub_100088DDC();
    }

    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_1000553E0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL sub_10005540C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

UMDPersonaManifestEmbedded *sub_1000557E4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (qword_1000EB3D8 != -1)
  {
    sub_10008BDB0();
  }

  v4 = qword_1000EB3D0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v28 = 0;
    v5 = sub_1000011A8(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v27 = 0;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = [v3 personaSetFromData:v2];
  if (v9)
  {
    v10 = objc_alloc_init(UMDPersonaManifestUser);
    sub_100089CC4(v10, v9);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v12)
    {
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if (sub_100001434(v15) == 3)
          {
            v12 = sub_1000894C4(v15);
            goto LABEL_23;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    v16 = objc_alloc_init(UMDPersonaManifestEmbedded);
    [(UMDPersonaManifest *)v16 setVersion:0];
    [(UMDPersonaManifest *)v16 setGeneration:v12];
    v17 = [NSSet setWithObject:v10];
    [(UMDPersonaManifest *)v16 setUsers:v17];
  }

  else
  {
    if (qword_1000EB3D8 != -1)
    {
      sub_10008BDC4();
    }

    v10 = qword_1000EB3D0;
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      v28 = 0;
      v18 = sub_1000011A8(0);
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v27 = 0;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    v16 = 0;
  }

  return v16;
}

id sub_100055B28(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_alloc_init(v3);
  if (qword_1000EB3D8 != -1)
  {
    sub_10008BDB0();
  }

  v5 = qword_1000EB3D0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v31 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v30 = 0;
      LODWORD(v29) = 2;
      v28 = &v30;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  [v4 setVersion:1];
  v10 = [v2 objectForKeyedSubscript:@"UsePersonaGenerationID"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v4 setGeneration:{objc_msgSend(v10, "unsignedLongValue", v28, v29)}];
    v11 = [v2 objectForKeyedSubscript:@"UserPersonaDictionary"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [(objc_class *)v3 userSetFromDict:v11];
      if (v12)
      {
        [v4 setUsers:v12];
        v13 = v4;
LABEL_54:

        goto LABEL_55;
      }

      if (qword_1000EB3D8 != -1)
      {
        sub_10008BDC4();
      }

      v22 = qword_1000EB3D0;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v31 = 0;
        v23 = sub_1000011A8(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v30 = 0;
          v25 = _os_log_send_and_compose_impl();
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }
    }

    else
    {
      if (qword_1000EB3D8 != -1)
      {
        sub_10008BDC4();
      }

      v12 = qword_1000EB3D0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v31 = 0;
        v14 = sub_1000011A8(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v30 = 0;
          v16 = _os_log_send_and_compose_impl();
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }
    }

    v13 = 0;
    goto LABEL_54;
  }

  if (qword_1000EB3D8 != -1)
  {
    sub_10008BDC4();
  }

  v11 = qword_1000EB3D0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v31 = 0;
    v18 = sub_1000011A8(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v30 = 0;
      v20 = _os_log_send_and_compose_impl();
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  v13 = 0;
LABEL_55:

  return v13;
}

void sub_10005612C(id a1)
{
  qword_1000EB3D0 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

id sub_100056174(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = sub_1000561D0(v3, v2, 0);

  return v4;
}

id *sub_1000561D0(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = sub_100056240([UMDAPFSSupportVolumeHelper alloc], v4, a3);

  return v5;
}

id *sub_100056240(id *a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = sub_100077A54(a1, v5);
    if (!v6)
    {
      sub_100088DDC();
    }

    a1 = v6;

    sub_1000967B8(a1, a3);
  }

  return a1;
}

id sub_1000563A0()
{
  objc_opt_self();
  v0 = [&off_1000E15E8 mutableCopy];

  return v0;
}

id sub_1000563D4()
{
  objc_opt_self();
  v0 = [&off_1000E1600 mutableCopy];

  return v0;
}

void *sub_100056424(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100056484([UMDPersonaManager alloc], v2);

  return v3;
}

void *sub_100056484(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = UMDPersonaManager;
    v4 = objc_msgSendSuper2(&v16, "init");
    if (!v4)
    {
      sub_100088DDC();
    }

    a1 = v4;
    objc_storeWeak(v4 + 6, v3);
    v5 = sub_100089A80(v3);
    v6 = a1[2];
    a1[2] = v5;

    v7 = sub_100088F2C(v3);
    v8 = a1[3];
    a1[3] = v7;

    v9 = objc_alloc_init(UMDPersonaState);
    v10 = a1[4];
    a1[4] = v9;

    if (qword_1000EB3E8 != -1)
    {
      sub_100095CCC();
    }

    v11 = a1[2];
    v12 = qword_1000EB3E0;
    v13 = sub_100055240(UMDGeneration, @"com.apple.mobile.usermanagerd.personageneration_changed", v12, v11);
    v14 = a1[5];
    a1[5] = v13;
  }

  return a1;
}

uint64_t sub_1000565AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v6)
  {
    v9 = [v6 objectForKey:@"UserPersonaBundleIDS"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v9)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v5;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v24;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v23 + 1) + 8 * i);
              if (([v9 containsObject:v16] & 1) == 0)
              {
                [v9 addObject:v16];
                v13 = 1;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
          }

          while (v12);

          if (v13)
          {
            if (qword_1000EB3F8 != -1)
            {
              sub_100095CF4();
            }

            v17 = qword_1000EB3F0;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = sub_1000011A8(1);
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 &= ~1u;
              }

              if (v18)
              {
                v19 = v17;
                v20 = sub_100098D4C(v7, @"UserPersonaType", 0xFFFFFFFFLL);
                v27 = 67109120;
                v28 = v20;
                v21 = _os_log_send_and_compose_impl();

                if (v21)
                {
                  sub_100002A8C(v21);
                }
              }

              else
              {
                v21 = 0;
              }

              free(v21);
            }

            goto LABEL_25;
          }
        }

        else
        {
        }

        v8 = 0;
        goto LABEL_28;
      }
    }

    else
    {
    }

    [v7 setObject:v5 forKeyedSubscript:@"UserPersonaBundleIDS"];
    v9 = 0;
LABEL_25:
    v8 = 1;
LABEL_28:
  }

  return v8;
}

id sub_100056854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v5)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v27 = v5;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 objectForKeyedSubscript:@"UserPersonaUniqueString"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = sub_100098ECC(v14, @"UserPersonaUniqueString");
              v28 = [v16 isEqualToString:v27];

              if (v28)
              {
                v8 = v14;

                goto LABEL_38;
              }
            }

            else
            {
              if (qword_1000EB3F8 != -1)
              {
                sub_100095CF4();
              }

              v21 = qword_1000EB3F0;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = sub_1000011A8(1);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  v23 = v22;
                }

                else
                {
                  v23 = v22 & 0xFFFFFFFE;
                }

                if (v23)
                {
                  v24 = _os_log_send_and_compose_impl();
                  v25 = v24;
                  if (v24)
                  {
                    sub_100002A8C(v24);
                  }
                }

                else
                {
                  v25 = 0;
                }

                free(v25);
              }
            }
          }

          else
          {
            if (qword_1000EB3F8 != -1)
            {
              sub_100095CF4();
            }

            v15 = qword_1000EB3F0;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v17 = sub_1000011A8(1);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                v18 = v17;
              }

              else
              {
                v18 = v17 & 0xFFFFFFFE;
              }

              if (v18)
              {
                v19 = _os_log_send_and_compose_impl();
                v20 = v19;
                if (v19)
                {
                  sub_100002A8C(v19);
                }
              }

              else
              {
                v20 = 0;
              }

              free(v20);
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
      v8 = 0;
LABEL_38:
      v5 = v27;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id sub_100056BB0(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    if (a2)
    {
      return [a3 addObject:a2];
    }
  }

  return result;
}

id sub_100056BC8(uint64_t a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 userPersonas];
    v2 = [v5 objectForKeyedSubscript:v4];
  }

  return v2;
}

BOOL sub_100056C40(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2 != -1)
  {
    v4 = *(a1 + 16);
    v5 = sub_1000013AC(v4);
    v9 = 0;
    v6 = [v5 infoForPersonaWithID:a2 error:&v9];
    v7 = v9;

    v2 = v6 != 0;
  }

  return v2;
}

uint64_t sub_100056CD8(uint64_t a1, int a2)
{
  objc_opt_self();
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        return 6;
      }

      goto LABEL_15;
    }

    if (a2 != 6)
    {
      if (a2 == 1000)
      {
        return 0;
      }

      goto LABEL_24;
    }

    return 2;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      return 4;
    }

    return 2;
  }

  if (!a2)
  {
    return 5;
  }

  if (a2 != 1)
  {
LABEL_24:
    if (qword_1000EB3F8 != -1)
    {
      sub_100095D1C();
    }

    v4 = qword_1000EB3F0;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

LABEL_15:
  if (qword_1000EB3F8 != -1)
  {
    sub_100095D1C();
  }

  v4 = qword_1000EB3F0;
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_35;
  }

  v5 = sub_1000011A8(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 & 0xFFFFFFFE;
  }

  if (v6)
  {
LABEL_31:
    v9 = _os_log_send_and_compose_impl();
    v10 = v9;
    if (v9)
    {
      sub_100002A8C(v9);
    }

    goto LABEL_34;
  }

LABEL_33:
  v10 = 0;
LABEL_34:
  free(v10);
LABEL_35:

  return 0xFFFFFFFFLL;
}

void sub_100056F90(id a1)
{
  qword_1000EB3E0 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

void sub_100056FD8(id a1)
{
  qword_1000EB3F0 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

uint64_t sub_100057078(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_100057088(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_1000570A8(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_10005712C(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL sub_100057154()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_1000571BC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_1000571F0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_10005720C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100057280(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000572D0()
{

  return sub_1000011A8(1);
}

uint64_t sub_1000572E8()
{
  *(v0 - 160) = 0;

  return sub_1000011A8(1);
}

BOOL sub_100057300()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_10005731C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100057334(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_10005734C()
{

  return sub_1000011A8(1);
}

BOOL sub_100057364(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_10005737C()
{

  return sub_1000011A8(1);
}

BOOL sub_100057394()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_1000573AC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000573C4()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_1000573DC()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_1000573F4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_10005740C()
{

  return sub_1000011A8(1);
}

uint64_t sub_100057424()
{
  *(v0 - 112) = 0;

  return sub_1000011A8(1);
}

BOOL sub_100057454()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_100057470()
{

  return _os_log_send_and_compose_impl();
}

uint64_t sub_1000574E0()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_1000574F8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100057510(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100057564()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL sub_10005757C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL sub_100057594(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  return os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000575B8()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_1000575D0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_1000575E8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_100057600()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_100057618(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL sub_100057630(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL sub_100057648()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

id sub_100057660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void sub_100057704(float a1)
{
  *(v2 - 160) = a1;
  *(v2 - 156) = v1;
  *(v2 - 152) = 1024;
}

uint64_t sub_100057718()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_100057730(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id sub_100057748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

id sub_100057760()
{
  v1 = qword_1000EB3F0;

  return v1;
}

BOOL sub_100057778()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL sub_100057790()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000577A8()
{
  *(v0 - 144) = 0;

  return sub_1000011A8(1);
}

id sub_1000577C0(uint64_t a1, uint64_t a2)
{

  return sub_100098D4C(v2, a2, 0xFFFFFFFFLL);
}

BOOL sub_1000577D8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id *sub_1000577F0(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v8 = a2;
  objc_opt_self();
  v9 = sub_100057878([UMDRotatingLog alloc], v8, a3, a4, a5);

  return v9;
}

id *sub_100057878(id *a1, void *a2, void *a3, void *a4, int a5)
{
  v10 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = UMDRotatingLog;
    v11 = objc_msgSendSuper2(&v17, "init");
    if (!v11)
    {
      sub_100088DDC();
    }

    a1 = v11;

    objc_storeStrong(a1 + 3, a2);
    v12 = sub_1000024A8(v10);
    *(a1 + 2) = [v12 currentPID];

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.usermanagerd.RotatingLog", v13);
    v15 = a1[4];
    a1[4] = v14;

    a1[5] = a3;
    a1[6] = a4;
    *(a1 + 3) = -1;
    *(a1 + 4) = a5;
  }

  return a1;
}

void sub_100057A04(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 12) != -1)
    {
      goto LABEL_3;
    }

    if (!sub_100095ED4(v2, v3, v13))
    {
      v2 = *v13;
LABEL_3:
      if (*(v2 + 12) == -1)
      {
        return;
      }
    }
  }

  ts.tv_sec = 0;
  ts.tv_nsec = 0;
  timespec_get(&ts, 1);
  memset(&v11, 0, sizeof(v11));
  gmtime_r(&ts.tv_sec, &v11);
  strftime(v13, 0x64uLL, "%F %T", &v11);
  if (*v3)
  {
    v4 = *(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSString stringWithFormat:@"%s.%06ldZ [%d] (%p) %s\n", v13, ts.tv_nsec / 1000, v4, pthread_self(), *(a1 + 40)];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[3];
  }

  v7 = v6;
  v8 = sub_1000013A0(v7);
  v9 = v8;
  if (*v3)
  {
    v10 = *(*v3 + 12);
  }

  else
  {
    v10 = 0;
  }

  [v8 writeToFileWithDescriptor:v10 string:v5 error:0];

  if (sub_100002AFC(*v3))
  {
    sub_100095DB8(*v3);
  }
}

uint64_t sub_100057D48(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  qword_1000EB400 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10005880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100058864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005887C(uint64_t a1)
{
  v21 = 0;
  v2 = sub_100024578(*(a1 + 32), *(a1 + 64), *(a1 + 72), &v21);
  if (v2)
  {
    v3 = [*(a1 + 40) externalizeUserDictionary:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (v6)
  {
    v7 = [v6 objectForKey:kUMUserSessionIDKey];
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v8 = qword_1000EB420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(1);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 &= ~1u;
      }

      if (v9)
      {
        v10 = v8;
        v11 = [v7 intValue];
        v22 = 67109120;
        v23 = v11;
        v12 = _os_log_send_and_compose_impl();

        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }
  }

  if (v21)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v13 = qword_1000EB420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v22 = 67109120;
        v23 = v21;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v21 userInfo:0];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

void sub_100058F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100058F30(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1000599F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100059A58(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = [v2 objectForKey:kUMUserSessionIDKey];
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v4 = qword_1000EB420;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(1);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 &= ~1u;
      }

      if (v5)
      {
        v6 = v4;
        [v3 intValue];
        v7 = _os_log_send_and_compose_impl();

        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }
  }

  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v11 = _os_log_send_and_compose_impl();
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void sub_10005A5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005A60C(void *a1)
{
  v9 = 0;
  if ((sub_100020054(a1[4], a1[6], a1[7], &v9) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    v3 = *(a1[5] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = a1[8];
  if (v5)
  {
    v6 = mach_task_self_;
    v7 = vm_page_size;
    if (vm_page_size >= a1[7])
    {
      v8 = a1[7];
    }

    else
    {
      v8 = vm_page_size;
    }

    memset_s(a1[8], v8, 0, v8);
    vm_deallocate(v6, v5, v7);
  }
}

void sub_10005AC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10005AC6C(void *a1)
{
  v2 = sub_1000184B8();
  if (v2)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v3 = qword_1000EB420;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v6 = _os_log_send_and_compose_impl();
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    *(*(a1[4] + 8) + 24) = sub_100079590(v2, kUMUserSessionUUIDKey);
    if (*(*(a1[4] + 8) + 24))
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v13 = qword_1000EB420;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_1000011A8(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v16 = _os_log_send_and_compose_impl();
          v17 = v16;
          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
      }

      CFRetain(*(*(a1[4] + 8) + 24));
      *(*(a1[5] + 8) + 24) = 1;
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v18 = qword_1000EB420;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = _os_log_send_and_compose_impl();
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }
    }

    if (*(*(a1[4] + 8) + 24))
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v8 = qword_1000EB420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }
  }

  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v23 = qword_1000EB420;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = sub_1000011A8(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v26 = _os_log_send_and_compose_impl();
      v27 = v26;
      if (v26)
      {
        sub_100002A8C(v26);
      }
    }

    else
    {
      v27 = 0;
    }

    free(v27);
  }

  v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
  v29 = *(a1[6] + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  if (v2)
  {
LABEL_63:
    CFRelease(v2);
  }
}

void sub_10005B0F0(uint64_t a1)
{
  v19 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      LOWORD(v20) = 0;
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (sub_100020068(*(*(*(a1 + 32) + 8) + 24), &v19))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LOWORD(v20) = 0;
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v20 = 67109120;
        v21 = v19;
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v19 userInfo:0];
    v18 = *(*(a1 + 40) + 8);
    v7 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

void sub_10005B9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10005BA18(uint64_t a1)
{
  v6 = 0;
  v2 = sub_100001458(*(a1 + 64), *(a1 + 68), *(a1 + 72));
  *(*(*(a1 + 40) + 8) + 24) = sub_10004897C(*(a1 + 32), v2, &v6);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void sub_10005BAD4(void *a1)
{
  HIDWORD(v36) = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *buffer = 0u;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = a1[4];
      v6 = *(*(a1[5] + 8) + 24);
      *v37 = 138412546;
      *&v37[4] = v5;
      v38 = 2112;
      v39 = v6;
      LODWORD(v36) = 22;
      v35 = v37;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (!CFStringGetCString(*(*(a1[5] + 8) + 24), buffer, 256, 0x8000100u))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v15 = qword_1000EB420;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = *(*(a1[5] + 8) + 24);
        *v37 = 138412290;
        *&v37[4] = v18;
        LODWORD(v36) = 12;
        v35 = v37;
        v19 = _os_log_send_and_compose_impl();
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    v31 = NSPOSIXErrorDomain;
    v32 = 22;
    goto LABEL_60;
  }

  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v9 = qword_1000EB420;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 0;
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = a1[4];
      *v37 = 138412546;
      *&v37[4] = v12;
      v38 = 2080;
      v39 = buffer;
      LODWORD(v36) = 22;
      v35 = v37;
      v13 = _os_log_send_and_compose_impl();
      v14 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }

  if (!sub_100021A58(buffer))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v26 = qword_1000EB420;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      v27 = sub_1000011A8(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        v40 = 67109120;
        LODWORD(v36) = 8;
        v35 = &v40;
        v29 = _os_log_send_and_compose_impl();
        v30 = v29;
        if (v29)
        {
          sub_100002A8C(v29);
        }
      }

      else
      {
        v30 = 0;
      }

      free(v30);
    }

    v31 = NSPOSIXErrorDomain;
    v32 = 0;
LABEL_60:
    v33 = [NSError errorWithDomain:v31 code:v32 userInfo:0, v35, v36];
    v34 = *(a1[6] + 8);
    v21 = *(v34 + 40);
    *(v34 + 40) = v33;
    goto LABEL_61;
  }

  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v21 = qword_1000EB420;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 0;
    v22 = sub_1000011A8(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      LOWORD(v40) = 0;
      v24 = _os_log_send_and_compose_impl();
      v25 = v24;
      if (v24)
      {
        sub_100002A8C(v24);
      }
    }

    else
    {
      v25 = 0;
    }

    free(v25);
  }

LABEL_61:
}

void sub_10005CC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005CCC0(uint64_t a1)
{
  v9 = 0;
  if ((sub_100021D04(*(a1 + 32), *(a1 + 40), 0, &v9) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = mach_task_self_;
    v7 = vm_page_size;
    if (vm_page_size >= *(a1 + 64) + 1024)
    {
      v8 = *(a1 + 64) + 1024;
    }

    else
    {
      v8 = vm_page_size;
    }

    memset_s(*(a1 + 56), v8, 0, v8);
    vm_deallocate(v6, v5, v7);
  }
}

void sub_10005D180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005D1B0(uint64_t a1)
{
  v5 = 0;
  if ((sub_100021D04(*(a1 + 32), *(a1 + 40), 1, &v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_10005DE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005DEF8(uint64_t a1)
{
  v10 = 0;
  if ((sub_100022858(*(a1 + 32), *(a1 + 40), 0, &v10) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v10 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = mach_task_self_;
  v6 = vm_page_size;
  v7 = *(a1 + 56);
  if (vm_page_size >= *(a1 + 64) + 1024)
  {
    v8 = *(a1 + 64) + 1024;
  }

  else
  {
    v8 = vm_page_size;
  }

  memset_s(*(a1 + 56), v8, 0, v8);
  return vm_deallocate(v5, v7, v6);
}

void sub_10005E3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005E3E0(uint64_t a1)
{
  v5 = 0;
  if ((sub_100022858(*(a1 + 32), *(a1 + 40), 1, &v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_10005F0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005F130(void *a1)
{
  v10 = 0;
  if ((sub_100022F48(a1[4], a1[5], 0, &v10) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v10 userInfo:0];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = mach_task_self_;
  v6 = vm_page_size;
  v7 = a1[7];
  if (vm_page_size >= a1[8] + 1024)
  {
    v8 = a1[8] + 1024;
  }

  else
  {
    v8 = vm_page_size;
  }

  memset_s(a1[7], v8, 0, v8);
  return vm_deallocate(v5, v7, v6);
}

void sub_10005F5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005F618(uint64_t *a1)
{
  v5 = 0;
  if ((sub_100022F48(a1[4], a1[5], 1, &v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_10005FA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005FA68(uint64_t a1)
{
  v5 = 0;
  if ((sub_100023684(&v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_1000603DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006043C(uint64_t a1)
{
  v9 = 0;
  if ((sub_100023DF8(*(a1 + 32), 0, &v9) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = mach_task_self_;
    v7 = vm_page_size;
    if (vm_page_size >= 0x400)
    {
      v8 = 1024;
    }

    else
    {
      v8 = vm_page_size;
    }

    memset_s(v5, v8, 0, v8);
    vm_deallocate(v6, v5, v7);
  }
}

void sub_1000608D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100060904(uint64_t a1)
{
  v5 = 0;
  if ((sub_100023DF8(*(a1 + 32), 1, &v5) & 1) == 0)
  {
    v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_100060D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100060D78(uint64_t a1)
{
  if (!sub_10002E270(*(a1 + 32)))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = _os_log_send_and_compose_impl();
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void sub_10006137C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000613A0(uint64_t a1)
{
  v2 = sub_100030DC0("/private/var//keybags/nextsession_opaque.kb");
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (v2)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v5 = qword_1000EB420;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000011A8(1);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 &= ~1u;
      }

      if (v6)
      {
        v7 = *(*(*(a1 + 32) + 8) + 40);
        v8 = v5;
        [v7 length];
        v9 = _os_log_send_and_compose_impl();

        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    v16 = *(*(a1 + 40) + 8);
    v5 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void sub_100061774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100061798(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (unlink("/private/var//keybags/nextsession_opaque.kb"))
  {
    *(*(*(a1 + 32) + 8) + 24) = *__error();
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v19 = *(*(*(a1 + 32) + 8) + 24);
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*(*(*(a1 + 32) + 8) + 24) userInfo:0];
    v18 = *(*(a1 + 40) + 8);
    v12 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }
  }
}

void sub_100061C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100061C7C(uint64_t a1)
{
  if (sub_10001A8EC())
  {
    if (qword_1000EB438 != -1)
    {
      sub_100095FC8();
    }

    v2 = qword_1000EB430;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = sub_1000011A8(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = _os_log_send_and_compose_impl();
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];
    v17 = *(*(a1 + 48) + 8);
    v7 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    v7 = [*(a1 + 32) objectForKey:kUMUserSessionIDKey];
    if (sub_10002E4B4(*(a1 + 32), 0, *(a1 + 40)) == 1)
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v8 = qword_1000EB420;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = sub_1000011A8(1);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 &= ~1u;
        }

        if (v9)
        {
          v10 = v8;
          [v7 intValue];
          v11 = _os_log_send_and_compose_impl();

          if (v11)
          {
            sub_100002A8C(v11);
          }
        }

        else
        {
          v11 = 0;
        }

        free(v11);
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v12 = qword_1000EB420;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_1000011A8(1);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 &= ~1u;
        }

        if (v13)
        {
          v14 = v12;
          [v7 intValue];
          v15 = _os_log_send_and_compose_impl();

          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v19 = *(*(a1 + 48) + 8);
      v8 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }
}

void sub_100062258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100062278(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (sub_10002FAEC(*(a1 + 32), "/private/var//keybags/nextsession_SBD_opaque.kb") == 1)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
LABEL_28:
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }

        goto LABEL_31;
      }

LABEL_30:
      v16 = 0;
LABEL_31:
      free(v16);
    }
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }
}

void sub_1000626D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000626F8(uint64_t a1)
{
  v14 = 0;
  *(*(*(a1 + 48) + 8) + 24) = sub_100030420(*(a1 + 32), *(a1 + 40), &v14);
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        LOWORD(v15) = 0;
        v5 = _os_log_send_and_compose_impl();
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v15 = 67109120;
        v16 = v14;
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v14 userInfo:0];
    v13 = *(*(a1 + 56) + 8);
    v2 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_100062B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100062B68(uint64_t a1)
{
  v18 = 0;
  v2 = sub_1000024C0(*(a1 + 32), &v18);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = 1;
  }

  else
  {
    v5 = v18 == 0;
  }

  if (v5)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v6 = qword_1000EB420;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        LOWORD(v19) = 0;
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v11 = qword_1000EB420;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v19 = 67109120;
        v20 = v18;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v18 userInfo:0];
    v17 = *(*(a1 + 48) + 8);
    v6 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

void sub_100062F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100062F8C(uint64_t a1)
{
  v2 = sub_100030DC0("/private/var//keybags/nextsession_SBD_opaque.kb");
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (v2)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v5 = qword_1000EB420;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000011A8(1);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 &= ~1u;
      }

      if (v6)
      {
        v7 = *(*(*(a1 + 32) + 8) + 40);
        v8 = v5;
        [v7 length];
        v9 = _os_log_send_and_compose_impl();

        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    v16 = *(*(a1 + 40) + 8);
    v5 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void sub_100063360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100063384(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (unlink("/private/var//keybags/nextsession_SBD_opaque.kb"))
  {
    *(*(*(a1 + 32) + 8) + 24) = *__error();
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v19 = *(*(*(a1 + 32) + 8) + 24);
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*(*(*(a1 + 32) + 8) + 24) userInfo:0];
    v18 = *(*(a1 + 40) + 8);
    v12 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }
  }
}

void sub_100063888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000638AC(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_10002FF34(*(a1 + 32));
  if (v7)
  {
    v8 = [*(a1 + 40) externalizeUserDictionary:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_100063C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100063CB8(uint64_t a1)
{
  v2 = sub_100030990(*(a1 + 32));
  if (v2)
  {
    v3 = [*(a1 + 40) externalizeUserDictionary:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v6 = qword_1000EB420;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1000011A8(1);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 &= ~1u;
      }

      if (v7)
      {
LABEL_17:
        v12 = *(*(*(a1 + 64) + 8) + 40);
        v13 = v6;
        [v12 intValue];
        v14 = _os_log_send_and_compose_impl();

        if (v14)
        {
          sub_100002A8C(v14);
        }

        goto LABEL_20;
      }

LABEL_19:
      v14 = 0;
LABEL_20:
      free(v14);
    }
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v6 = qword_1000EB420;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 &= ~1u;
      }

      if (v11)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }
}

void sub_100064088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000640AC(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100018360();
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) externalizeUserDictionary:v7];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v18 = *(*(a1 + 48) + 8);
    v8 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

void sub_100064658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10006468C(uint64_t a1)
{
  if (sub_10001A8EC())
  {
    if (qword_1000EB438 != -1)
    {
      sub_100095FC8();
    }

    v2 = qword_1000EB430;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v37 = 0;
      v3 = sub_1000011A8(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v36 = 0;
        v5 = _os_log_send_and_compose_impl();
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    return;
  }

  v7 = sub_100018084(502);
  if (v7)
  {
    v8 = v7;
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v9 = qword_1000EB420;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v36 = 0;
        LODWORD(v35) = 2;
        v34 = &v36;
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

LABEL_54:
    v31 = [*(a1 + 32) externalizeUserDictionary:{v8, v34, v35}];
    v32 = *(*(a1 + 48) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    return;
  }

  v14 = sub_10001D4F4(*(a1 + 56), 0);
  if (v14)
  {
    v8 = v14;
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v15 = qword_1000EB420;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v36 = 0;
        LODWORD(v35) = 2;
        v34 = &v36;
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v26 = qword_1000EB420;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
      v27 = sub_1000011A8(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        v36 = 0;
        LODWORD(v35) = 2;
        v34 = &v36;
        v29 = _os_log_send_and_compose_impl();
        v30 = v29;
        if (v29)
        {
          sub_100002A8C(v29);
        }
      }

      else
      {
        v30 = 0;
      }

      free(v30);
    }

    sub_10002E9D8(*(*(*(a1 + 48) + 8) + 40), 0);
    goto LABEL_54;
  }

  v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  _objc_release_x1();
}

void sub_100064D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064D4C(uint64_t a1)
{
  v2 = sub_100018084(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_100033BF4(v2, v4);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v5 = qword_1000EB420;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v6 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
        }

        else
        {
          v7 = v6 & 0xFFFFFFFE;
        }

        if (v7)
        {
          LODWORD(v18[0]) = 138412290;
          *(v18 + 4) = v3;
          LODWORD(v17) = 12;
          v16 = v18;
          v8 = _os_log_send_and_compose_impl();
          v9 = v8;
          if (v8)
          {
            sub_100002A8C(v8);
          }
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }
    }

    v10 = [(__CFDictionary *)v3 objectForKey:kUMUserSessionIDKey, v16, v17];
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v11 = qword_1000EB420;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 0;
      v12 = sub_1000011A8(1);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 &= ~1u;
      }

      if (v12)
      {
        v13 = v11;
        v14 = [v10 intValue];
        LODWORD(v19) = 67109120;
        HIDWORD(v19) = v14;
        v15 = _os_log_send_and_compose_impl();

        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }
  }
}

void sub_10006513C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065154(uint64_t a1)
{
  v2 = sub_100018084(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_1000344FC(v2, v4);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v5 = qword_1000EB420;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v6 = sub_1000011A8(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
        }

        else
        {
          v7 = v6 & 0xFFFFFFFE;
        }

        if (v7)
        {
          LODWORD(v18[0]) = 138412290;
          *(v18 + 4) = v3;
          LODWORD(v17) = 12;
          v16 = v18;
          v8 = _os_log_send_and_compose_impl();
          v9 = v8;
          if (v8)
          {
            sub_100002A8C(v8);
          }
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }
    }

    v10 = [(__CFDictionary *)v3 objectForKey:kUMUserSessionIDKey, v16, v17];
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v11 = qword_1000EB420;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 0;
      v12 = sub_1000011A8(1);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 &= ~1u;
      }

      if (v12)
      {
        v13 = v11;
        v14 = [v10 intValue];
        LODWORD(v19) = 67109120;
        HIDWORD(v19) = v14;
        v15 = _os_log_send_and_compose_impl();

        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }
  }
}

void sub_100065524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006553C(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v14 = *(a1 + 40);
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (sub_1000315F8(*(a1 + 40)))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v15 = *(a1 + 40);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v16 = *(a1 + 40);
LABEL_29:
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }

        goto LABEL_32;
      }

LABEL_31:
      v13 = 0;
LABEL_32:
      free(v13);
    }
  }
}

void sub_100065954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006596C(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v14 = *(a1 + 40);
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (sub_10002C904(*(a1 + 40), 1))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v15 = *(a1 + 40);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v16 = *(a1 + 40);
LABEL_29:
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }

        goto LABEL_32;
      }

LABEL_31:
      v13 = 0;
LABEL_32:
      free(v13);
    }
  }
}

void sub_100065D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065DA0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
LABEL_17:
        v7 = _os_log_send_and_compose_impl();
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }

        goto LABEL_20;
      }

LABEL_19:
      v8 = 0;
LABEL_20:
      free(v8);
    }
  }

  if (sub_1000332B0(*(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (*(a1 + 40) == 1)
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v9 = qword_1000EB420;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_1000011A8(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
LABEL_55:
          v18 = _os_log_send_and_compose_impl();
          v19 = v18;
          if (v18)
          {
            sub_100002A8C(v18);
          }

          goto LABEL_58;
        }

LABEL_57:
        v19 = 0;
LABEL_58:
        free(v19);
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v9 = qword_1000EB420;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_1000011A8(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          goto LABEL_55;
        }

        goto LABEL_57;
      }
    }
  }

  else if (*(a1 + 40) == 1)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v9 = qword_1000EB420;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        goto LABEL_55;
      }

      goto LABEL_57;
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v9 = qword_1000EB420;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        goto LABEL_55;
      }

      goto LABEL_57;
    }
  }
}

void sub_1000662FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100066314(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = dword_1000EA3DC;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }
}

void sub_100066684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000666A8(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:kUMUserSessionIDKey];
  v3 = sub_100018084([v2 intValue]);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:kUMUserSessionSyncMachServicesKey];
    if (v5)
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v6 = qword_1000EB420;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      v14 = [NSArray arrayWithArray:v5];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      *(*(*(a1 + 48) + 8) + 24) = 0;
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v11 = qword_1000EB420;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v17 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095F8C();
      }

      v11 = qword_1000EB420;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
LABEL_29:
        v19 = _os_log_send_and_compose_impl();
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }

        goto LABEL_32;
      }
    }

    v20 = 0;
LABEL_32:
    free(v20);
LABEL_33:
  }
}

void sub_100066B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100066B64(uint64_t result)
{
  if (qword_1000EB5C0)
  {
    v1 = result;
    v2 = [NSArray arrayWithArray:?];
    v3 = *(*(v1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    return _objc_release_x1();
  }

  return result;
}

void sub_100066D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100066D44(uint64_t a1)
{
  if (qword_1000EB5C0)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = _os_log_send_and_compose_impl();
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    if (CFArrayGetCount(qword_1000EB5C0) >= 1)
    {
      CFArrayRemoveAllValues(qword_1000EB5C0);
      if (qword_1000EB5C0)
      {
        CFRelease(qword_1000EB5C0);
      }

      qword_1000EB5C0 = 0;
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v7 = qword_1000EB420;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_1000011A8(1);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFE;
        }

        if (v9)
        {
          v10 = _os_log_send_and_compose_impl();
          v11 = v10;
          if (v10)
          {
            sub_100002A8C(v10);
          }
        }

        else
        {
          v11 = 0;
        }

        free(v11);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_1000671F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10006721C(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = +[RDServer sharedServer];
  v8 = [v7 fetchUserBlockTaskList];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_1000674F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100067510(uint64_t result)
{
  if (qword_1000EB5C8)
  {
    v1 = result;
    v2 = [NSArray arrayWithArray:?];
    v3 = *(*(v1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    return _objc_release_x1();
  }

  return result;
}

void sub_1000676E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067700(uint64_t a1)
{
  v2 = sub_100018084(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = byte_1000EA3D8 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && sub_10006F578(v2, 0, 0, 0) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v5 = qword_1000EB420;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v10 = *(a1 + 40);
        v8 = _os_log_send_and_compose_impl();
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }
}

void sub_1000679F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067A08(uint64_t a1)
{
  v2 = sub_100018084(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    v4 = byte_1000EA3D8 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && sub_100070DBC(v2, 0, 0, 0x80000) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v5 = qword_1000EB420;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v10 = *(a1 + 40);
        v8 = _os_log_send_and_compose_impl();
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }
}

void sub_100067D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_100067D94(void *a1)
{
  result = sub_10002E998();
  if (result)
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  else
  {
    v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    result = a1[4];
    if (result)
    {
      v6 = *(*(a1[6] + 8) + 40);
      v7 = *(result + 2);

      return v7();
    }
  }

  return result;
}

void sub_100067FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067FC8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v2 = qword_1000EB420;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
LABEL_17:
        v7 = _os_log_send_and_compose_impl();
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }

        goto LABEL_20;
      }

LABEL_19:
      v8 = 0;
LABEL_20:
      free(v8);
    }
  }

  if (sub_10001C98C(*(a1 + 40)))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v9 = qword_1000EB420;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v19 = *(a1 + 40);
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    dword_1000EB5E0 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 0;
    sub_100018C80();
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v14 = qword_1000EB420;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v20 = *(a1 + 40);
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }
  }
}

void sub_100068AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100068B80(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) machPort];
  if (qword_1000EB448 != -1)
  {
    sub_10009602C();
  }

  v2 = qword_1000EB440;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v44 = 0;
    v3 = sub_1000011A8(0);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      LODWORD(v47) = 67109120;
      HIDWORD(v47) = [v4 machPort];
      LODWORD(v43) = 8;
      v42 = &v47;
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100001458(0xFFFFFFFFLL, 0xFFFFFFFFLL, *(a1 + 88));
  *(*(*(a1 + 56) + 8) + 24) = sub_100001AF4(*(a1 + 40), *(a1 + 92), [*(a1 + 32) machPort], v7, (*(*(a1 + 64) + 8) + 24));
  v8 = mach_port_deallocate(mach_task_self_, [*(a1 + 32) machPort]);
  if (v8)
  {
    v9 = v8;
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v10 = qword_1000EB440;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v47 = 0;
      v11 = sub_1000011A8(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 &= ~1u;
      }

      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = v10;
        LODWORD(v44) = 67109376;
        HIDWORD(v44) = [v12 machPort];
        v45 = 1024;
        v46 = v9;
        LODWORD(v43) = 14;
        v42 = &v44;
        v14 = _os_log_send_and_compose_impl();

        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v15 = qword_1000EB440;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v44 = 0;
      v16 = sub_1000011A8(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = *(*(*(a1 + 56) + 8) + 24);
        LODWORD(v47) = 67109120;
        HIDWORD(v47) = v18;
        LODWORD(v43) = 8;
        v42 = &v47;
        v19 = _os_log_send_and_compose_impl();
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    v30 = NSPOSIXErrorDomain;
    v31 = *(*(*(a1 + 56) + 8) + 24);
    goto LABEL_70;
  }

  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v27 = qword_1000EB440;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v44 = 0;
    v28 = sub_1000011A8(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      LOWORD(v47) = 0;
      LODWORD(v43) = 2;
      v42 = &v47;
      goto LABEL_65;
    }

LABEL_67:
    v38 = 0;
LABEL_68:
    free(v38);
LABEL_69:

    v30 = NSPOSIXErrorDomain;
    v31 = 9;
LABEL_70:
    v39 = [NSError errorWithDomain:v30 code:v31 userInfo:0, v42, v43, v44];
    v40 = *(*(a1 + 72) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v39;

    goto LABEL_71;
  }

  if (qword_1000EB448 != -1)
  {
    sub_100096004();
  }

  v21 = qword_1000EB440;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v44 = 0;
    v22 = sub_1000011A8(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v24 = *(*(*(a1 + 64) + 8) + 24);
      LODWORD(v47) = 67109120;
      HIDWORD(v47) = v24;
      LODWORD(v43) = 8;
      v42 = &v47;
      v25 = _os_log_send_and_compose_impl();
      v26 = v25;
      if (v25)
      {
        sub_100002A8C(v25);
      }
    }

    else
    {
      v26 = 0;
    }

    free(v26);
  }

  v32 = [[UMPersonaMachPort alloc] initWithMachPort:*(*(*(a1 + 64) + 8) + 24) options:1];
  v33 = *(*(a1 + 80) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v27 = qword_1000EB440;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    v44 = 0;
    v35 = sub_1000011A8(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFE;
    }

    if (v36)
    {
      LOWORD(v47) = 0;
      LODWORD(v43) = 2;
      v42 = &v47;
LABEL_65:
      v37 = _os_log_send_and_compose_impl();
      v38 = v37;
      if (v37)
      {
        sub_100002A8C(v37);
      }

      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_71:
}

void sub_10006968C(uint64_t a1)
{
  v13[0] = 0;
  if (qword_1000EB448 != -1)
  {
    sub_10009602C();
  }

  v2 = qword_1000EB440;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = sub_1000011A8(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 44);
      v13[1] = 67109376;
      v13[2] = v5;
      v14 = 1024;
      v15 = v6;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  v9 = sub_100001458(*(a1 + 44), *(a1 + 48), *(a1 + 52));
  v10 = sub_100002B68(v9, v13);
  v11 = *(a1 + 32);
  if (v10)
  {
    (*(v11 + 16))(v11, v10, 0);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v13[0] userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }
}

void sub_100069CB8(uint64_t a1)
{
  v11[0] = 0;
  v2 = sub_100047940(v11);
  if (!v2)
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v3 = qword_1000EB440;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_1000011A8(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v6 = *(a1 + 40);
        v11[1] = 67109376;
        v11[2] = v6;
        v12 = 1024;
        v13 = v11[0];
        v7 = _os_log_send_and_compose_impl();
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    v9 = *(a1 + 32);
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11[0] userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v2, 0);
}

void sub_10006A4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A4DC(uint64_t a1)
{
  v24 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 56);
      v7 = *(a1 + 60);
      v25 = 138412802;
      v26 = v5;
      v27 = 1024;
      v28 = v6;
      v29 = 1024;
      v30 = v7;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  v10 = sub_100001458(*(a1 + 60), *(a1 + 64), *(a1 + 68));
  v11 = sub_100002B94(*(a1 + 32), v10, &v24);
  if (v11)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v25 = 138412290;
        v26 = v11;
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:0];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(*(*(a1 + 48) + 8) + 40);
        v25 = 138412290;
        v26 = v20;
LABEL_29:
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }

        goto LABEL_32;
      }

LABEL_31:
      v22 = 0;
LABEL_32:
      free(v22);
    }
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    (*(v23 + 16))(v23, v11, *(*(*(a1 + 48) + 8) + 40));
  }
}

uint64_t sub_10006AA34(uint64_t a1)
{
  sub_100047950();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10006AE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AE80(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v21 = *(a1 + 32);
      v23 = *(a1 + 56);
      v24 = *(a1 + 60);
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100001458(*(a1 + 60), *(a1 + 64), *(a1 + 68));
  v8 = *(a1 + 32);
  v9 = sub_1000480DC();
  if (v9)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
LABEL_29:
        v18 = _os_log_send_and_compose_impl();
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }

        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v22 = *(*(*(a1 + 48) + 8) + 40);
        goto LABEL_29;
      }

LABEL_31:
      v19 = 0;
LABEL_32:
      free(v19);
    }
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, v9, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_10006B6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B6F4(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v20 = *(a1 + 32);
      v23 = *(a1 + 64);
      v24 = *(a1 + 68);
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100001458(*(a1 + 68), *(a1 + 72), *(a1 + 76));
  v8 = sub_1000479A8(*(a1 + 32), *(a1 + 40), v7);
  if (v8)
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v8 userInfo:0];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v21 = *(*(*(a1 + 56) + 8) + 40);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v22 = *(a1 + 40);
LABEL_29:
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }

        goto LABEL_32;
      }

LABEL_31:
      v18 = 0;
LABEL_32:
      free(v18);
    }
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    (*(v19 + 16))(v19, *(*(*(a1 + 56) + 8) + 40));
  }
}

void sub_10006BD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006BD30(uint64_t a1)
{
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v2 = qword_1000EB420;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v21 = *(a1 + 32);
      v23 = *(a1 + 56);
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sub_100001458(*(a1 + 56), *(a1 + 60), *(a1 + 64));
  if (sub_10004A188(*(a1 + 32), v7))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v8 = qword_1000EB420;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v13 = qword_1000EB420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v22 = *(a1 + 32);
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v19 = *(*(a1 + 48) + 8);
    v8 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_10006C624(uint64_t a1)
{
  v2 = sub_100001458(*(a1 + 56), *(a1 + 60), *(a1 + 64));
  v3 = *(a1 + 32);
  v4 = *(a1 + 100);
  v5 = *(a1 + 84);
  v11[0] = *(a1 + 68);
  v11[1] = v5;
  v6 = sub_10004A908(v3, v11, v4, v2);
  if (!v6)
  {
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v6, *(*(*(a1 + 48) + 8) + 40));
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

id sub_10006C714()
{
  v0 = objc_opt_new();
  v1 = qword_1000EB418;
  qword_1000EB418 = v0;

  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobile.usermanagerd.xpc"];
  v3 = qword_1000EB410;
  qword_1000EB410 = v2;

  v4 = [qword_1000EB410 _xpcConnection];
  __xpc_connection_set_logging();

  [qword_1000EB410 setDelegate:qword_1000EB418];
  v5 = qword_1000EB410;

  return [v5 resume];
}

void sub_10006C7B8(id a1)
{
  qword_1000EB420 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_10006C800(id a1)
{
  qword_1000EB430 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

void sub_10006C848(id a1)
{
  qword_1000EB440 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

void sub_10006E124(id a1)
{
  qword_1000EB450 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

uint64_t sub_10006E16C()
{
  *(v0 - 244) = 0;
  result = 0;
  *(v0 - 176) = 1;
  *(v0 - 168) = 1;
  return result;
}

void sub_10006E19C()
{
  *(v0 - 168) = 0;
  *(v0 - 164) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 184) = 0;
  *(v0 - 212) = 0;
  *(v0 - 220) = 0;
  *(v0 - 188) = 0;
  *(v0 - 228) = 0;
  *(v0 - 160) = 0;
  *(v0 - 236) = 0;
  *(v0 - 244) = 0;
}

uint64_t sub_10006E1DC()
{
  result = 0;
  *(v0 - 176) = 1;
  return result;
}

void sub_10006E1FC()
{
  *(v0 - 236) = 0;
  *(v0 - 244) = 0;
  *(v0 - 172) = 0;
}

void sub_10006E26C()
{
  *(v1 - 184) = v0;
  *(v1 - 180) = v0;
  *(v1 - 188) = v0;
}

id sub_10006E27C()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void sub_10006E2D8()
{
  *(v0 - 220) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
}

id sub_10006E2F0(uint64_t a1, uint64_t a2)
{

  return sub_100098D4C(v2, a2, 0);
}

__CFDictionary *sub_10006E308(__CFDictionary *a1)
{
  strcpy(v6, "User");
  result = sub_100053A84(v6, 2, 0, 0);
  if (result)
  {
    v3 = result;
    Value = CFDictionaryGetValue(result, kUMUserSessionVolumeDeviceNodeKey);
    v5 = CFDictionaryGetValue(v3, kUMUserSessionVolumeUUIDKey);
    CFDictionarySetValue(a1, kUMUserSessionVolumeDeviceNodeKey, Value);
    CFDictionarySetValue(a1, kUMUserSessionVolumeUUIDKey, v5);
    CFRelease(v3);
    return 1;
  }

  return result;
}

uint64_t sub_10006E3C4(__CFDictionary *a1, uint64_t a2, const __CFString *a3, _DWORD *a4, char a5, int a6)
{
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  *__argv = 0u;
  v80 = 0u;
  BootDevice = APFSContainerGetBootDevice();
  if (BootDevice)
  {
    v13 = BootDevice;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v14 = qword_1000EB460;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buffer = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        *__str = 67109120;
        *&__str[4] = v13;
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    if (a4)
    {
      result = 0;
      *a4 = v13;
      return result;
    }

    return 0;
  }

  strcpy(v77, "/dev/");
  CFStringGetCString(0, &v77[5], 59, 0x8000100u);
  CFRelease(0);
  v19 = a1;
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v20 = qword_1000EB460;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *__str = 0;
    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      *buffer = 138412290;
      *&buffer[4] = a3;
      v23 = _os_log_send_and_compose_impl();
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  CFStringGetCString(a3, buffer, 256, 0x8000100u);
  if (a5)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v26 = qword_1000EB460;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v87 = 0;
      v27 = sub_1000011A8(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        *__str = 136315138;
        *&__str[4] = buffer;
        v29 = _os_log_send_and_compose_impl();
        v30 = v29;
        if (v29)
        {
          sub_100002A8C(v29);
        }
      }

      else
      {
        v30 = 0;
      }

      free(v30);
    }

    __argv[0] = "/sbin/newfs_apfs";
    __argv[1] = "-R";
    *&v80 = "e";
    *(&v80 + 1) = "-v";
    *&v81 = buffer;
    v36 = 5;
    v37 = v19;
    v38 = &off_1000EB000;
  }

  else
  {
    snprintf(__str, 0x100uLL, "%zu", a2);
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v31 = qword_1000EB460;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v90 = 0;
      v32 = sub_1000011A8(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        *v87 = 136315394;
        *&v87[4] = buffer;
        v88 = 2080;
        v89 = __str;
        v34 = _os_log_send_and_compose_impl();
        v35 = v34;
        if (v34)
        {
          sub_100002A8C(v34);
        }
      }

      else
      {
        v35 = 0;
      }

      free(v35);
    }

    __argv[0] = "/sbin/newfs_apfs";
    if (a6)
    {
      __argv[1] = "-R";
      *&v80 = "u";
      v39 = 3;
    }

    else
    {
      v39 = 1;
    }

    v37 = v19;
    __argv[v39] = "-v";
    v36 = v39 + 2;
    __argv[v39 + 1] = buffer;
    v38 = &off_1000EB000;
    if (a2)
    {
      __argv[v36] = "-s";
      v36 = v39 | 4;
      __argv[v39 + 3] = __str;
    }
  }

  __argv[v36] = "-P";
  __argv[v36 + 1] = "-w";
  __argv[v36 + 2] = "-A";
  __argv[v36 + 3] = v77;
  __argv[v36 + 4] = 0;
  v40 = sub_100054C9C(__argv);
  if (v40)
  {
    v41 = v40;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v42 = v38[140];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *v87 = 0;
      v43 = sub_1000011A8(1);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
      }

      else
      {
        v44 = v43 & 0xFFFFFFFE;
      }

      if (v44)
      {
        LODWORD(v90) = 67109120;
        HIDWORD(v90) = v41;
        v45 = _os_log_send_and_compose_impl();
        v46 = v45;
        if (v45)
        {
          sub_100002A8C(v45);
        }
      }

      else
      {
        v46 = 0;
      }

      free(v46);
    }

    if (a4)
    {
      result = 0;
      *a4 = v41;
      return result;
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v47 = v38[140];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *v87 = 0;
    v48 = sub_1000011A8(1);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
    }

    else
    {
      v49 = v48 & 0xFFFFFFFE;
    }

    if (v49)
    {
      LOWORD(v90) = 0;
      v50 = _os_log_send_and_compose_impl();
      v51 = v50;
      if (v50)
      {
        sub_100002A8C(v50);
      }
    }

    else
    {
      v51 = 0;
    }

    free(v51);
  }

  v52 = sub_100053A84(buffer, 0, 0, 0);
  if (!v52)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v61 = v38[140];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v90 = 0;
      v62 = sub_1000011A8(1);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v62;
      }

      else
      {
        v63 = v62 & 0xFFFFFFFE;
      }

      if (v63)
      {
        *v87 = 138412290;
        *&v87[4] = a3;
        v64 = _os_log_send_and_compose_impl();
        v65 = v64;
        if (v64)
        {
          sub_100002A8C(v64);
        }
      }

      else
      {
        v65 = 0;
      }

      free(v65);
    }

    return 0;
  }

  v53 = v52;
  Value = CFDictionaryGetValue(v52, kUMUserSessionVolumeDeviceNodeKey);
  v55 = CFDictionaryGetValue(v53, kUMUserSessionVolumeUUIDKey);
  CFDictionarySetValue(v37, kUMUserSessionVolumeDeviceNodeKey, Value);
  CFDictionarySetValue(v37, kUMUserSessionVolumeUUIDKey, v55);
  CFDictionarySetValue(v37, kUMUserSessionNeedsMountKey, kCFBooleanTrue);
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v56 = v38[140];
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v90 = 0;
    v57 = sub_1000011A8(1);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
    }

    else
    {
      v58 = v57 & 0xFFFFFFFE;
    }

    if (v58)
    {
      *v87 = 138412546;
      *&v87[4] = Value;
      v88 = 2112;
      v89 = v55;
      v59 = _os_log_send_and_compose_impl();
      v60 = v59;
      if (v59)
      {
        sub_100002A8C(v59);
      }
    }

    else
    {
      v60 = 0;
    }

    free(v60);
  }

  CFRelease(v53);
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v66 = v38[140];
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v90 = 0;
    v67 = sub_1000011A8(1);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v68 = v67;
    }

    else
    {
      v68 = v67 & 0xFFFFFFFE;
    }

    if (v68)
    {
      *v87 = 138412290;
      *&v87[4] = a3;
      v69 = _os_log_send_and_compose_impl();
      v70 = v69;
      if (v69)
      {
        sub_100002A8C(v69);
      }
    }

    else
    {
      v70 = 0;
    }

    free(v70);
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v71 = v38[140];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    v90 = 0;
    v72 = sub_1000011A8(1);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v73 = v72;
    }

    else
    {
      v73 = v72 & 0xFFFFFFFE;
    }

    if (v73)
    {
      *v87 = 138412290;
      *&v87[4] = v37;
      v74 = _os_log_send_and_compose_impl();
      v75 = v74;
      if (v74)
      {
        sub_100002A8C(v74);
      }
    }

    else
    {
      v75 = 0;
    }

    free(v75);
  }

  return 1;
}

uint64_t sub_10006EE90(const __CFDictionary *a1, _DWORD *a2)
{
  memset(v23, 0, sizeof(v23));
  sub_1000795D4(a1, kUMUserSessionVolumeDeviceNodeKey, v23, 256);
  v4 = sub_10006F1C8(a1, v23);
  if (v4)
  {
    if (a2)
    {
      v5 = v4;
      result = 0;
      *a2 = v5;
      return result;
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v7 = qword_1000EB460;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v10 = _os_log_send_and_compose_impl();
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v12 = APFSVolumeDelete();
  if (v12)
  {
    if (a2)
    {
      *a2 = v12;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v13 = qword_1000EB460;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    return 0;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v18 = qword_1000EB460;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = sub_1000011A8(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v21 = _os_log_send_and_compose_impl();
      v22 = v21;
      if (v21)
      {
        sub_100002A8C(v21);
      }
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }

  return 1;
}

uint64_t sub_10006F1C8(__CFDictionary *a1, char *a2)
{
  if (a2)
  {
    BootDevice = APFSContainerGetBootDevice();
    if (BootDevice)
    {
      v5 = BootDevice;
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v6 = qword_1000EB460;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 0;
        v7 = sub_1000011A8(1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFE;
        }

        if (v8)
        {
          v9 = _os_log_send_and_compose_impl();
          v10 = v9;
          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      return v5;
    }

    CFStringGetCString(0, buffer, 64, 0x8000100u);
    CFRelease(0);
    if (strstr(a2, buffer))
    {
      return 0;
    }

    if (strrchr(a2, 115))
    {
      __strcat_chk();
      strlcpy(a2, buffer, 0x100uLL);
      v16 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
      CFDictionarySetValue(a1, kUMUserSessionVolumeDeviceNodeKey, v16);
      CFRelease(v16);
      return 0;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v18 = qword_1000EB460;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    return 19;
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F4C();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        *buffer = 136315138;
        *&buffer[4] = "updateAPFSDevWithCurrentBootContainer";
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    return 22;
  }
}

uint64_t sub_10006F578(const __CFDictionary *a1, const __CFString *a2, _DWORD *a3, int a4)
{
  memset(v118, 0, sizeof(v118));
  bzero(buffer, 0x400uLL);
  if (a2 && (v8 = CFGetTypeID(a2), v8 == CFStringGetTypeID()))
  {
    CFStringGetCString(a2, buffer, 1024, 0x8000100u);
  }

  else
  {
    sub_1000795D4(a1, kUMUserSessionHomeDirKey, buffer, 1024);
  }

  sub_1000795D4(a1, kUMUserSessionVolumeDeviceNodeKey, v118, 256);
  v9 = sub_10006F1C8(a1, v118);
  if (v9)
  {
    v10 = v9;
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v11 = qword_1000EB460;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *&v108.st_dev = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LODWORD(__argv[0]) = 67109120;
        HIDWORD(__argv[0]) = v10;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v22 = 0;
    if (a3)
    {
      *a3 = v10;
    }

    return v22;
  }

  if (a4)
  {
    if (byte_1000EB602 == 1)
    {
      v16 = sub_10001B570();
    }

    else
    {
      v16 = 501;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v18 = qword_1000EB460;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      __argv[0] = 0;
      v23 = sub_1000011A8(1);
      v18 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v108.st_dev = 136315650;
        *&v108.st_mode = buffer;
        WORD2(v108.st_ino) = 2080;
        *(&v108.st_ino + 6) = v118;
        HIWORD(v108.st_gid) = 1024;
        v108.st_rdev = v16;
        v25 = _os_log_send_and_compose_impl();

        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {

        v25 = 0;
      }

      free(v25);
    }

    v17 = v16;
  }

  else
  {
    v16 = sub_1000023E8(a1, kUMUserSessionIDKey);
    v17 = sub_1000023E8(a1, kUMUserSessionGroupIDKey);
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v18 = qword_1000EB460;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *&v108.st_dev = 0;
      v19 = sub_1000011A8(1);
      v18 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LODWORD(__argv[0]) = 67109120;
        HIDWORD(__argv[0]) = v16;
        v21 = _os_log_send_and_compose_impl();

        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {

        v21 = 0;
      }

      free(v21);
    }
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  *__argv = 0u;
  v110 = 0u;
  memset(&v108, 0, sizeof(v108));
  if (stat(buffer, &v108))
  {
    v26 = *__error();
    if (v26 != 2)
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v41 = qword_1000EB460;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = sub_1000011A8(1);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 &= ~1u;
        }

        if (v42)
        {
          v43 = v41;
          strerror(v26);
          v44 = _os_log_send_and_compose_impl();

          if (v44)
          {
            sub_100002A8C(v44);
          }
        }

        else
        {
          v44 = 0;
        }

        free(v44);
      }

      return 0;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v27 = qword_1000EB460;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v16;
      v29 = v17;
      v30 = sub_1000011A8(1);
      v31 = v27;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v30;
      }

      else
      {
        v32 = v30 & 0xFFFFFFFE;
      }

      if (v32)
      {
        v33 = _os_log_send_and_compose_impl();

        if (v33)
        {
          sub_100002A8C(v33);
        }
      }

      else
      {

        v33 = 0;
      }

      free(v33);
      v17 = v29;
      v16 = v28;
    }

    if (mkdir(buffer, 0x1C0u) < 0)
    {
      v45 = *__error();
      if (v45 != 17)
      {
        if (qword_1000EB468 != -1)
        {
          sub_100097F24();
        }

        v69 = qword_1000EB460;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v70 = sub_1000011A8(1);
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 &= ~1u;
          }

          if (v70)
          {
            v71 = v69;
            strerror(v45);
            v72 = _os_log_send_and_compose_impl();

            if (v72)
            {
              sub_100002A8C(v72);
            }
          }

          else
          {
            v72 = 0;
          }

          free(v72);
        }

        if (!a3)
        {
          return 0;
        }

        goto LABEL_241;
      }
    }

    if (chown(buffer, v16, v17))
    {
      v46 = *__error();
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v47 = qword_1000EB460;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = sub_1000011A8(1);
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 &= ~1u;
        }

        if (v48)
        {
          v49 = v47;
          strerror(v46);
          v50 = _os_log_send_and_compose_impl();

          if (v50)
          {
            sub_100002A8C(v50);
          }
        }

        else
        {
          v50 = 0;
        }

        free(v50);
      }

      rmdir(buffer);
      if (!a3)
      {
        return 0;
      }

LABEL_241:
      v22 = 0;
      *a3 = 22;
      return v22;
    }
  }

  else
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v34 = qword_1000EB460;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v16;
      v36 = v17;
      v37 = sub_1000011A8(1);
      v38 = v34;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v37;
      }

      else
      {
        v39 = v37 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v40 = _os_log_send_and_compose_impl();

        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {

        v40 = 0;
      }

      free(v40);
      v17 = v36;
      v16 = v35;
    }
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v51 = qword_1000EB460;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = v16;
    v53 = v17;
    v54 = sub_1000011A8(1);
    v55 = v51;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v54;
    }

    else
    {
      v56 = v54 & 0xFFFFFFFE;
    }

    if (v56)
    {
      v57 = _os_log_send_and_compose_impl();

      if (v57)
      {
        sub_100002A8C(v57);
      }
    }

    else
    {

      v57 = 0;
    }

    free(v57);
    v17 = v53;
    v16 = v52;
  }

  if (sub_100070858(a1, 0) != 1)
  {
    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v63 = qword_1000EB460;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = v17;
      v65 = sub_1000011A8(1);
      v66 = v63;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = v65;
      }

      else
      {
        v67 = v65 & 0xFFFFFFFE;
      }

      if (v67)
      {
        v68 = _os_log_send_and_compose_impl();

        if (v68)
        {
          sub_100002A8C(v68);
        }
      }

      else
      {

        v68 = 0;
      }

      free(v68);
      v17 = v64;
    }

    __argv[0] = "/sbin/mount_apfs";
    if (a4)
    {
      v73 = 1;
    }

    else
    {
      __argv[1] = "-o";
      *&v110 = "nosuid";
      *(&v110 + 1) = "-o";
      *&v111 = "nodev";
      v73 = 5;
    }

    __argv[v73] = v118;
    __argv[v73 + 1] = buffer;
    __argv[v73 | 2u] = 0;
    v74 = sub_100054C9C(__argv);
    if (v74)
    {
      v75 = v74;
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v76 = qword_1000EB460;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = sub_1000011A8(1);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v78 = v77;
        }

        else
        {
          v78 = v77 & 0xFFFFFFFE;
        }

        if (v78)
        {
          v79 = _os_log_send_and_compose_impl();
          v80 = v79;
          if (v79)
          {
            sub_100002A8C(v79);
          }
        }

        else
        {
          v80 = 0;
        }

        free(v80);
      }

      v22 = 0;
      if (a3)
      {
        *a3 = v75;
      }

      if (!a2)
      {
        goto LABEL_237;
      }

      goto LABEL_171;
    }

    if (qword_1000EB468 != -1)
    {
      sub_100097F24();
    }

    v81 = qword_1000EB460;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = sub_1000011A8(1);
      v83 = v81;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v82;
      }

      else
      {
        v84 = v82 & 0xFFFFFFFE;
      }

      if (v84)
      {
        v85 = _os_log_send_and_compose_impl();

        if (v85)
        {
          sub_100002A8C(v85);
        }
      }

      else
      {

        v85 = 0;
      }

      free(v85);
    }

    if ((a4 & 1) == 0)
    {
      if (CFDictionaryContainsKey(a1, kUMUserSessionVolumeMountedKey))
      {
        CFDictionaryReplaceValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanTrue);
      }

      else
      {
        CFDictionarySetValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanTrue);
      }
    }

    if (chown(buffer, v16, v17))
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v91 = qword_1000EB460;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = sub_1000011A8(1);
        v91 = v91;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v93 = v92;
        }

        else
        {
          v93 = v92 & 0xFFFFFFFE;
        }

        if (v93)
        {
          goto LABEL_205;
        }

        goto LABEL_207;
      }
    }

    else
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v91 = qword_1000EB460;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v94 = sub_1000011A8(1);
        v91 = v91;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v95 = v94;
        }

        else
        {
          v95 = v94 & 0xFFFFFFFE;
        }

        if (v95)
        {
LABEL_205:
          v96 = _os_log_send_and_compose_impl();

          if (v96)
          {
            sub_100002A8C(v96);
          }

          goto LABEL_208;
        }

LABEL_207:

        v96 = 0;
LABEL_208:
        free(v96);
      }
    }

    if (a2)
    {
      v97 = 1;
    }

    else
    {
      v97 = a4;
    }

    if (v97)
    {
      v98 = 457;
    }

    else
    {
      v98 = 448;
    }

    if (chmod(buffer, v98))
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v99 = qword_1000EB460;
      if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_235;
      }

      v100 = sub_1000011A8(1);
      v101 = v99;
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        v102 = v100;
      }

      else
      {
        v102 = v100 & 0xFFFFFFFE;
      }

      if (v102)
      {
        goto LABEL_231;
      }
    }

    else
    {
      if (qword_1000EB468 != -1)
      {
        sub_100097F24();
      }

      v99 = qword_1000EB460;
      if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_235;
      }

      v103 = sub_1000011A8(1);
      v101 = v99;
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        v104 = v103;
      }

      else
      {
        v104 = v103 & 0xFFFFFFFE;
      }

      if (v104)
      {
LABEL_231:
        v105 = _os_log_send_and_compose_impl();

        if (v105)
        {
          sub_100002A8C(v105);
        }

        goto LABEL_234;
      }
    }

    v105 = 0;
LABEL_234:
    free(v105);
LABEL_235:

    goto LABEL_236;
  }

  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v58 = qword_1000EB460;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = sub_1000011A8(1);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v59;
    }

    else
    {
      v60 = v59 & 0xFFFFFFFE;
    }

    if (v60)
    {
      v61 = _os_log_send_and_compose_impl();
      v62 = v61;
      if (v61)
      {
        sub_100002A8C(v61);
      }
    }

    else
    {
      v62 = 0;
    }

    free(v62);
  }

  if ((a4 & 1) == 0)
  {
    CFDictionarySetValue(a1, kUMUserSessionVolumeMountedKey, kCFBooleanTrue);
  }

  if (a3)
  {
    *a3 = 0;
  }

LABEL_236:
  v22 = 1;
  if (!a2)
  {
LABEL_237:
    v106 = sub_100079590(a1, kUMUserSessionHomeDirKey);
    sub_100070A64(v106, v16, v17);
    return v22;
  }

LABEL_171:
  if (qword_1000EB468 != -1)
  {
    sub_100097F24();
  }

  v86 = qword_1000EB460;
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    v87 = sub_1000011A8(1);
    v88 = v86;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v89 = v87;
    }

    else
    {
      v89 = v87 & 0xFFFFFFFE;
    }

    if (v89)
    {
      v90 = _os_log_send_and_compose_impl();

      if (v90)
      {
        sub_100002A8C(v90);
      }
    }

    else
    {

      v90 = 0;
    }

    free(v90);
  }

  return v22;
}