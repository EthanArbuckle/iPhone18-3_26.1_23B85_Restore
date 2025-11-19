void sub_100069FBC(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQMCrashTracerEvent Received %@", "__WiFiDeviceProcessLQMCrashTracerEvent", a2}];
  }

  objc_autoreleasePoolPop(v4);
  value = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  for (i = 6; ; --i)
  {
    v7 = *(a1 + 16);
    v8 = Apple80211Get();
    if (v8 <= 15)
    {
      if (v8 != -3905)
      {
        break;
      }
    }

    else if (v8 != 61 && v8 != 16)
    {
      goto LABEL_20;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v8)
  {
LABEL_20:
    sub_100156CC8(v8);
    goto LABEL_17;
  }

  if (CFDictionaryGetValueIfPresent(Mutable, &off_1002810C8, &value) && value)
  {
    v10 = [WAClient sharedClientWithIdentifier:@"wifid"];
    [v10 lqmCrashTracerReceiveBlock:value forInterfaceWithName:*(a1 + 112) andReply:&stru_10025F750];
    v11 = +[WiFiUsageMonitor sharedInstance];
    [(WiFiUsageMonitor *)v11 receiveKernelLQMRollingWindow:value ForInterface:*(a1 + 112)];
  }

  else
  {
    sub_100156C68();
  }

LABEL_17:
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_10006A12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: BeaconCacheUpdatedEvent Received %@", "__WiFiDeviceProcessBeaconCacheUpdatedEvent", a3}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = *(a1 + 4680);
  if (v7)
  {
    v8 = *(a1 + 4688);

    v7(a1, a2, v8, a3);
  }
}

void sub_10006A1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiTTRProcessEvent Received %@", "__WiFiDeviceProcessTTREvent", a3}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = *(a1 + 4696);
  if (v7)
  {
    v8 = *(a1 + 4704);

    v7(a1, a2, v8, a3);
  }
}

void sub_10006A28C(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if ((*(a1 + 40) & 0x10) != 0)
  {
    v3 = cf;
    if (cf && (v6 = CFGetTypeID(cf), v6 == CFArrayGetTypeID()))
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: Colocated networks=%@", "__WiFiDeviceProcessColocatedCacheEvent", v3}];
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: NULL evendata", "__WiFiDeviceProcessColocatedCacheEvent"}];
      }

      v3 = 0;
    }

    objc_autoreleasePoolPop(v7);
    v8 = *(a1 + 4824);
    if (v8)
    {
      v9 = *(a1 + 4832);

      v8(a1, a2, v3, v9);
    }
  }
}

void sub_10006A39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 4840);
    if (v4)
    {
      v5 = *(a1 + 4848);

      v4();
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s : NULL event data or null device", "__WiFiDeviceProcessPeerCountryCode"}];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_10006A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v6 = *(a1 + 4888);
    if (v6)
    {
      v7 = *(a1 + 4896);

      v6(a1, a3, a5, a2, a4, v7);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: NULL event data", "__WiFiDeviceProcessNDDEvent"}];
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_10006A4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 4904);
    if (v4)
    {
      v5 = *(a1 + 4912);

      v4();
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s : NULL event data or null device", "__WiFiDeviceProcessScanForwardStats"}];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_10006A560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a4 == 8)
  {
    v5 = *(a1 + 4952);
    if (v5)
    {
      v6 = *(a1 + 4960);

      v5();
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s : NULL event data or null device or bad length<%d!=%ld>", "__WiFiDeviceRoamSuppressionStatus", a4, 8}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

CFStringRef sub_10006A620()
{
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v6[15] = v0;
  *v6 = v0;
  v5 = v0;
  v4 = v0;
  cStr = 0;
  if (Apple80211ReturnToString())
  {
    return 0;
  }

  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(kCFAllocatorDefault, &cStr, SystemEncoding);
}

void sub_10006A6C0(id a1, id a2, NSError *a3)
{
  v4 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Error received after alerting wifianalyticsd to the availability of trap mini dump: %@", "__WiFiDeviceProcessDriverAvailableEvent_block_invoke", a3}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s Alerted wifianalyticsd to the availability of trap mini dump, no error was returned", "__WiFiDeviceProcessDriverAvailableEvent_block_invoke", v5}];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10006A750(id a1, id a2, NSError *a3)
{
  v4 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Error received after sending LQM CrashTracer block to wifianalyticsd: %@", "__WiFiDeviceProcessLQMCrashTracerEvent_block_invoke", a3}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s Successfully sent LQM CrashTracer block to wifianalyticsd", "__WiFiDeviceProcessLQMCrashTracerEvent_block_invoke", v5}];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10006A7E0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!*(v2 + 64))
  {
    CFRelease(*(a1 + 40));
    v15 = *(a1 + 32);
    v14 = a1 + 32;
    v16 = *(*(v15 + 8) + 24);
    if (!v16)
    {
      return;
    }

    CFRelease(v16);
    v3 = v14;
    goto LABEL_18;
  }

  v3 = a1 + 32;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      BytePtr = CFDataGetBytePtr(v4);
      v7 = *(v2 + 112);
      if (v7)
      {
        v8 = BytePtr;
        v9 = socket(2, 2, 0);
        if (v9 == -1)
        {
          v13 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation Socket open failed", "__WiFiDeviceSetNetworkIDForAssociation", v19, *buffer, *&buffer[8]}];
          }
        }

        else
        {
          v10 = v9;
          memset(v21, 0, sizeof(v21));
          *buffer = 0u;
          SystemEncoding = CFStringGetSystemEncoding();
          CFStringGetCString(v7, buffer, 16, SystemEncoding);
          v21[0] = 32;
          v12 = *(v8 + 1);
          *&v21[1] = *v8;
          *&v21[17] = v12;
          if (ioctl(v10, 0xC03169D2uLL, buffer) == -1)
          {
            v18 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation ioctl(SIOCSIFNETWORKID) failed", "__WiFiDeviceSetNetworkIDForAssociation"}];
            }

            objc_autoreleasePoolPop(v18);
            close(v10);
            goto LABEL_16;
          }

          close(v10);
          v13 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Successfully set network ID <%@> ", "__WiFiDeviceAssociateLowLevel_block_invoke", *(*(*v3 + 8) + 24), *buffer, *&buffer[8]}];
          }
        }
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation IfName is NULL", "__WiFiDeviceSetNetworkIDForAssociation", v19, *buffer, *&buffer[8]}];
        }
      }

      objc_autoreleasePoolPop(v13);
    }
  }

LABEL_16:
  CFRelease(*(a1 + 40));
  v17 = *(*(*(a1 + 32) + 8) + 24);
  if (!v17)
  {
    return;
  }

  CFRelease(v17);
LABEL_18:
  *(*(*v3 + 8) + 24) = 0;
}

void sub_10006AA4C(uint64_t a1, const void *a2)
{
  v4 = sub_10010ED7C(a2);
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Created AWDL interface %@", "__WiFiDeviceAWDLInterfaceCreationCompleted", v4}];
  }

  objc_autoreleasePoolPop(v5);
  sub_10004FA0C(a1, v6, v7, v8, v9, v10, v11, v12);
  v13 = *(a1 + 16);
  Apple80211CopyRangingCapabilities();
  CFDictionaryAddValue(*(a1 + 5112), v4, a2);
  v14 = *(a1 + 5328);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 5328) = 0;
  }

  if (*(a1 + 64))
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = CFRetain(v4);
    CFRetain(a1);
    v15 = *(a1 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006AC04;
    block[3] = &unk_10025EFD8;
    block[4] = v18;
    block[5] = a1;
    dispatch_async(v15, block);
    _Block_object_dispose(v18, 8);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceAWDLInterfaceCreationCompleted"}];
    }

    objc_autoreleasePoolPop(v16);
  }
}

void sub_10006ABEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AC04(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2[8])
  {
    v3 = v2[549];
    if (v3)
    {
      v4 = *(*(*(a1 + 32) + 8) + 24);
      if (v4)
      {
        v3(v2, v4, v2[550], 1);
        v5 = *(*(*(a1 + 32) + 8) + 24);
        if (v5)
        {
          CFRelease(v5);
          *(*(*(a1 + 32) + 8) + 24) = 0;
        }
      }
    }

    v6 = *(a1 + 40);

    CFRelease(v6);
  }

  else
  {
    CFRelease(v2);
    v7 = *(*(*(a1 + 32) + 8) + 24);
    if (v7)
    {
      CFRelease(v7);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

void *sub_10006ACC8()
{

  return malloc_type_realloc(0, v0, 0x7C66369DuLL);
}

void sub_10006ACE8(const void **values)
{
  v5 = *(v2 + 5112);

  CFDictionaryGetKeysAndValues(v5, v1, values);
}

void sub_10006AD08(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t sub_10006AD70()
{
  v2 = *(v0 + 16);

  return Apple80211CopyValue();
}

BOOL sub_10006AD90(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

uint64_t sub_10006ADA8(const __CFNumber *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char valuePtr)
{

  return CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
}

void sub_10006ADF8(id a1)
{
  if (objc_opt_class())
  {
    if (objc_opt_class())
    {
      qword_100298558 = objc_alloc_init(WiFiAccountStoreManager);
    }
  }
}

void sub_10006B12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B230(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = a1 + 40;
  v4 = *(v2 - 8);
  v5 = *(*(v3 + 8) + 24);
  if (*(v4 + 8) == v5)
  {
    sub_100156D64(v2);
  }

  else
  {
    *(v4 + 8) = v5;
    if (*(a1 + 48) == 1 && [*(a1 + 32) callback] && objc_msgSend(*(a1 + 32), "context"))
    {
      v8 = [*(a1 + 32) callback];
      v6 = [*(a1 + 32) context];
      v7 = *(*(*(a1 + 40) + 8) + 24);

      v8(v6, v7);
    }
  }
}

void sub_10006B32C(void *a1)
{
  v2 = CFURLCreateWithString(kCFAllocatorDefault, @"file:///private/var/Managed%20Preferences/mobile/com.apple.MobileWiFi.debug.plist", 0);
  error = 0;
  qword_100298C80 = a1;
  qword_100298C88 = CFRunLoopGetCurrent();
  if (!v2)
  {
    sub_100156F6C();
    goto LABEL_39;
  }

  v3 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v2);
  if (!v3)
  {
    sub_100156EF8(v2);
    goto LABEL_39;
  }

  v4 = v3;
  v5 = CFReadStreamOpen(v3);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v4, 0, 0, 0, &error);
  v7 = v6;
  if (!error)
  {
    if (v6)
    {
      v9 = CFGetTypeID(v6);
      if (v9 == CFDictionaryGetTypeID())
      {
        if (byte_100298568 == 1)
        {
          sub_100156EB0();
        }

        else if (CFDictionaryGetCount(v7))
        {
          Value = CFDictionaryGetValue(v7, @"WiFiManagerLoggingEnabled");
          if (Value && CFStringCompare(Value, @"true", 0) == kCFCompareEqualTo)
          {
            v15 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: WiFi Diagnostic Profile enabled", "WiFiLoggingLoadDebugSettings"}];
            }

            objc_autoreleasePoolPop(v15);
            byte_100298568 = 1;
            if (qword_100298C80)
            {
              sub_10007D6E8(qword_100298C80, @"LoggingFileClassC", kCFBooleanFalse);
              sub_10007D6E8(qword_100298C80, @"LoggingFileEnabled", kCFBooleanTrue);
              sub_10007D6E8(qword_100298C80, @"WiFiSettingsLogging", kCFBooleanTrue);
              sub_10007D6E8(qword_100298C80, @"WiFiATJPickerLogging", kCFBooleanTrue);
              sub_10007D6E8(qword_100298C80, @"DiagnosticsEnabled", kCFBooleanTrue);
            }

            else
            {
              sub_100156E54();
            }
          }

          else
          {
            v11 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: WiFi Diagnostic Profile disabled", "WiFiLoggingLoadDebugSettings"}];
            }

            objc_autoreleasePoolPop(v11);
            byte_100298568 = 0;
            sub_10006B734();
          }

          v16 = CFDictionaryGetValue(v7, @"IO80211Adaptive11rOverride");
          if (v16)
          {
            v17 = CFStringCompare(v16, @"true", 0) == kCFCompareEqualTo;
          }

          else
          {
            v17 = 0;
          }

          sub_10007B0BC(a1, v17);
        }

        else
        {
          v14 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: plist does not even have a single entry in Dictionary", "WiFiLoggingLoadDebugSettings"}];
          }

          objc_autoreleasePoolPop(v14);
          byte_100298568 = 0;
          sub_10007D6E8(a1, @"DiagnosticsEnabled", kCFBooleanFalse);
          sub_10006B734();
        }
      }

      else
      {
        sub_100156DF8();
      }

      goto LABEL_36;
    }

LABEL_17:
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"WiFi debug profile is not installed"];
    }

    objc_autoreleasePoolPop(v12);
    if (byte_100298568 == 1)
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Uninstalling logging profile"];
      }

      objc_autoreleasePoolPop(v13);
      byte_100298568 = 0;
      sub_10007D6E8(a1, @"DiagnosticsEnabled", kCFBooleanFalse);
      sub_10006B734();
    }

    v7 = 0;
    if (!v5)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: plist creation returned error %@", "WiFiLoggingLoadDebugSettings", error}];
  }

  objc_autoreleasePoolPop(v8);
LABEL_36:
  CFReadStreamClose(v4);
LABEL_37:
  CFRelease(v4);
  CFRelease(v2);
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_39:
  if (error)
  {
    CFRelease(error);
  }
}

void sub_10006B734()
{
  if (qword_100298C80)
  {
    if (byte_100298C39)
    {
      v0 = kCFBooleanTrue;
    }

    else
    {
      v0 = kCFBooleanFalse;
    }

    sub_10007D6E8(qword_100298C80, @"LoggingFileClassC", v0);
    if (byte_100298C38)
    {
      v1 = kCFBooleanTrue;
    }

    else
    {
      v1 = kCFBooleanFalse;
    }

    sub_10007D6E8(qword_100298C80, @"LoggingFileEnabled", v1);
    sub_10007D6E8(qword_100298C80, @"WiFiSettingsLogging", kCFBooleanFalse);
    sub_10007D6E8(qword_100298C80, @"WiFiATJPickerLogging", kCFBooleanFalse);
    v2 = qword_100298C80;

    sub_10007D6E8(v2, @"DiagnosticsEnabled", kCFBooleanFalse);
  }

  else
  {
    sub_100156FD4();
  }
}

id sub_10006B830()
{
  v0 = +[NSFileManager defaultManager];
  v12 = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [(NSArray *)[(NSFileManager *)v0 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/CrashReporter/WiFi/WiFiManager" error:&v12] objectEnumerator];
  result = [(NSEnumerator *)v1 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if ([v6 hasPrefix:@"wifi-buf-"] && objc_msgSend(v6, "hasSuffix:", @".log"))
        {
          if (-[NSFileManager removeItemAtPath:error:](v0, "removeItemAtPath:error:", [@"/var/mobile/Library/Logs/CrashReporter/WiFi/WiFiManager" stringByAppendingPathComponent:v6], &v12))
          {
            v7 = v12 == 0;
          }

          else
          {
            v7 = 0;
          }

          if (!v7)
          {
            NSLog(@"Error removing %@: %@", v6, v12);
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [(NSEnumerator *)v1 countByEnumeratingWithState:&v8 objects:v13 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void sub_10006B9BC(uint64_t a1, int a2, uint64_t a3, const __CFString **a4)
{
  v8 = objc_autoreleasePoolPush();
  qword_100298C80 = a1;
  qword_100298C88 = CFRunLoopGetCurrent();
  if (!off_100298C40)
  {
    off_100298C40 = sub_100088348(qword_100298C80);
  }

  byte_100298C48 = a2;
  v9 = a4[1];
  v10 = 5;
  if (v9)
  {
    IntValue = CFStringGetIntValue(v9);
    if (IntValue >= 5)
    {
      v10 = 5;
    }

    else
    {
      v10 = IntValue;
    }
  }

  v12 = a4[2];
  v13 = 3;
  if (v12)
  {
    v14 = CFStringGetIntValue(v12);
    if ((v14 - 6) >= 0xFFFFFFFB)
    {
      v15 = v14;
    }

    else
    {
      v15 = 3;
    }

    v13 = v15;
  }

  v16 = a4[4];
  v17 = 2;
  if (v16)
  {
    v18 = CFStringGetIntValue(v16);
    if ((v18 - 3) >= 0xFFFFFFFE)
    {
      v19 = v18;
    }

    else
    {
      v19 = 2;
    }

    v17 = v19;
  }

  v20 = a4[3];
  v21 = 7;
  if (v20)
  {
    v22 = CFStringGetIntValue(v20);
    if (v22 <= 0x1E)
    {
      v23 = v22;
    }

    else
    {
      v23 = 7;
    }

    v21 = v23;
  }

  if (a2)
  {
    if (byte_100298568 == 1)
    {
      [off_100298C40 setDestinationFileLocation:@"/var/mobile/Library/Logs/CrashReporter/WiFi" fileNamePrefix:@"wifimanager" runLoopRef:qword_100298C88 runLoopMode:kCFRunLoopDefaultMode classC:a3 dateFormatter:qword_100298C70 maxFileSizeInMB:v10 logLifespanInDays:v21];
    }

    else
    {
      if (*a4)
      {
        v24 = *a4;
      }

      else
      {
        v24 = @"/Library/Logs/wifimanager.log";
      }

      [off_100298C40 setDestinationFile:v24 runLoopRef:qword_100298C88 runLoopMode:kCFRunLoopDefaultMode classC:a3 dateFormatter:qword_100298C70 maxFileSizeInMB:v10 logLifespanInDays:v21];
    }
  }

  else
  {
    [off_100298C40 setDestinationOsLog:@"com.apple.WiFiManager" category:&stru_1002680F8 logLifespanInDays:v21 logLevel:v13 logPrivacy:v17];
  }

  objc_autoreleasePoolPop(v8);
}

void sub_10006E334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10006E358(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _runFindAndJoinOnInterface:v3 outError:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
  if (*(a1 + 64))
  {
    **(a1 + 64) = [*(*(*(a1 + 56) + 8) + 40) copy];
  }
}

void sub_10006E514(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v12 = 0;
  v4 = [v2 _runFindAndJoinOnInterface:v3 outError:&v12];
  v5 = v12;
  v6 = a1[7];
  if (v6)
  {
    v7 = a1[6];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006E5EC;
    v8[3] = &unk_100260638;
    v10 = v6;
    v11 = v4;
    v9 = v5;
    dispatch_sync(v7, v8);
  }
}

void sub_10006E9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006EA00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006EAE8;
    block[3] = &unk_100260688;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void sub_10006ED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006ED34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006EE1C;
    block[3] = &unk_100260688;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

WiFiPdrMonitor *sub_10006F1E4(void *a1)
{
  v1 = a1;
  v2 = [[WiFiPdrMonitor alloc] initWithFenceIdentifier:@"wifiFence" queue:v1 radiusInMeters:&off_1002810F8];

  return v2;
}

id sub_10006F24C(id result)
{
  if (result)
  {
    return [result setFence];
  }

  return result;
}

void *sub_10006F258(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 endSession];
  }

  return a1;
}

void sub_10006F264(void *a1, void *a2, uint64_t a3)
{
  v7 = a1;
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (v7)
  {
    [v7 setFenceCrossCallback:v5 context:a3];
  }

  else
  {
    NSLog(@"Invalid pdrMonitor");
  }

  objc_autoreleasePoolPop(v6);
}

BOOL sub_10006F6CC()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFStringGetTypeID() && CFStringCompare(v1, @"NonUI", 0) == kCFCompareEqualTo;
  CFRelease(v1);
  return v3;
}

uint64_t sub_10006F74C()
{
  result = qword_100298570;
  if (!qword_100298570)
  {
    pthread_once(&stru_100297890, sub_10006F794);
    return qword_100298570;
  }

  return result;
}

__CFArray *sub_10006F794()
{
  qword_100298570 = _CFRuntimeRegisterClass();
  IOMasterPort(0, &dword_1002985A0);
  v9 = xmmword_1001CE488;
  v10 = unk_1001CE498;
  v11 = xmmword_1001CE4A8;
  v5 = xmmword_1001CE448;
  v6 = unk_1001CE458;
  v7 = xmmword_1001CE468;
  v8 = unk_1001CE478;
  v1 = xmmword_1001CE408;
  v2 = unk_1001CE418;
  v3 = xmmword_1001CE428;
  v4 = unk_1001CE438;
  qword_100298578 = sub_10008AE84(&v1, 22);
  v3 = xmmword_1001CE4D8;
  v4 = unk_1001CE4E8;
  v5 = xmmword_1001CE4F8;
  v6 = unk_1001CE508;
  v1 = xmmword_1001CE4B8;
  v2 = unk_1001CE4C8;
  qword_100298580 = sub_10008AE84(&v1, 12);
  *&v4 = 0;
  v1 = xmmword_1001CE310;
  v2 = xmmword_1001CE320;
  v3 = xmmword_1001CE330;
  qword_100298588 = sub_10008AE84(&v1, 7);
  *&v4 = 0;
  v1 = xmmword_1001CE310;
  v2 = xmmword_1001CE320;
  v3 = xmmword_1001CE330;
  result = sub_10008AE84(&v1, 7);
  qword_100298590 = result;
  return result;
}

uint64_t sub_10006F8F0(uint64_t a1, NSObject *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_10000D83C("WiFiManagerCreate");
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: entering", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v5);
  NSLog(@"%s: entering", "WiFiManagerCreate");
  if (!qword_100298570)
  {
    pthread_once(&stru_100297890, sub_10006F794);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    goto LABEL_79;
  }

  v7 = Instance;
  v96 = v3;
  bzero((Instance + 16), 0xAF0uLL);
  *(v7 + 324) = 1;
  *(v7 + 760) = 0;
  *(v7 + 1224) = 0;
  *(v7 + 2216) = MGCopyAnswer();
  v8 = objc_alloc_init(WFLogger);
  *(v7 + 2272) = v8;
  [v8 setDestinationOsLog:@"com.apple.WiFiManager" category:&stru_1002680F8 logLifespanInDays:7 logLevel:3 logPrivacy:2];
  *(v7 + 2280) = 0;
  if (&_ct_green_tea_logger_create && !byte_100298C78)
  {
    *(v7 + 2280) = ct_green_tea_logger_create();
  }

  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v7 + 104) = Mutable;
  if (Mutable)
  {
    v10 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    *(v7 + 112) = v10;
    if (v10)
    {
      *(v7 + 120) = MGGetSInt32Answer();
      *(v7 + 137) = MGGetBoolAnswer();
      *(v7 + 128) = MGGetProductType();
      *(v7 + 136) = MGGetBoolAnswer();
      v11 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
      *(v7 + 144) = v11;
      if (v11)
      {
        v12 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
        *(v7 + 152) = v12;
        if (v12)
        {
          v13 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
          *(v7 + 160) = v13;
          if (v13)
          {
            v14 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
            *(v7 + 168) = v14;
            if (v14)
            {
              v15 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
              *(v7 + 1176) = v15;
              if (v15)
              {
                v16 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
                *(v7 + 1200) = v16;
                if (v16)
                {
                  v17 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                  *(v7 + 2200) = v17;
                  if (v17)
                  {
                    v18 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
                    *(v7 + 176) = v18;
                    if (v18)
                    {
                      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, @"Preferences SpringBoard Carousel WiFiPickerExtens Setup budd sharingd demod BundledIntentHandler SiriViewService assistantd assistant_service Siri SettingsIntentExtension NanoSettings PineBoard TVSettings SoundBoard RealityControlCenter MuseBuddyApp mobilewifitool WirelessStress coreautomationd wifiutil NanoWiFiViewService ATKWiFiFramework WiFiViewService hQT XCTestInternalAngel HPSetup AirPlaySenderUIApp TVSetup deviceaccessd AccessorySetupUI Setup RealityCoverSheet", @" ");
                      *(v7 + 184) = ArrayBySeparatingStrings;
                      if (ArrayBySeparatingStrings)
                      {
                        *(v7 + 1792) = +[WiFiLocationManager sharedWiFiLocationManager];
                        *(v7 + 200) = [[WiFiLocaleManagerUser alloc] initWithContext:v7];
                        *(v7 + 2236) = 0;
                        v20 = sub_100145404();
                        *(v7 + 208) = v20;
                        if (!v20)
                        {
                          v21 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:4 message:{"%s: Disabling WiFiMetricsManager", "WiFiManagerCreate"}];
                          }

                          objc_autoreleasePoolPop(v21);
                        }

                        *(v7 + 2256) = 0u;
                        v22 = +[WiFiCloudAssetsClient sharedInstance];
                        *(v7 + 1720) = v22;
                        [(WiFiCloudAssetsClient *)v22 initializeWithManager:v7 queue:a2];
                        block[0] = _NSConcreteStackBlock;
                        block[1] = 3221225472;
                        block[2] = sub_100070DAC;
                        block[3] = &unk_10025EAD8;
                        block[4] = v7;
                        dispatch_async(qword_100298C50, block);
                        v23 = _os_feature_enabled_impl();
                        if (&_WiFiCloudSyncEngineCreate && (v23 & 1) == 0)
                        {
                          v24 = WiFiCloudSyncEngineCreate();
                          *(v7 + 1384) = v24;
                          sub_10004D480(v7, v24);
                        }

                        if (!byte_100298C78)
                        {
                          v25 = +[WiFiMaintenanceTaskManager sharedWiFiMaintenanceTaskManager];
                          *(v7 + 2224) = v25;
                          if (v25)
                          {
                            [v25 setWifiManager:v7];
                          }

                          else
                          {
                            v26 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:4 message:{"%s: failed to create maintenance task manager", "WiFiManagerCreate"}];
                            }

                            objc_autoreleasePoolPop(v26);
                          }
                        }

                        v27 = [[WiFiPdrMonitor alloc] initWithFenceIdentifier:@"wifiFence" queue:a2 radiusInMeters:&off_100281110];
                        *(v7 + 2800) = v27;
                        sub_10006F264(v27, &stru_100260750, v7);
                        v28 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.wifi.manager", 0);
                        *(v7 + 1056) = v28;
                        if (!v28)
                        {
                          sub_10016AFCC();
                          goto LABEL_78;
                        }

                        v29 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.wifi.manager", @"com.apple.wifi.plist");
                        *(v7 + 1064) = v29;
                        if (!v29)
                        {
                          sub_10016AF6C();
                          goto LABEL_78;
                        }

                        context.version = 0;
                        memset(&context.retain, 0, 24);
                        context.info = v7;
                        if (!SCPreferencesSetCallback(v29, sub_100070E8C, &context))
                        {
                          sub_10016AF0C();
                          goto LABEL_78;
                        }

                        v30 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                        if (v30)
                        {
                          v31 = v30;
                          CFDictionarySetValue(v30, @"ProtectionClass", @"C");
                          v32 = SCPreferencesCreateWithOptions();
                          *(v7 + 1072) = v32;
                          if (!v32)
                          {
                            sub_10016ADEC();
                            goto LABEL_77;
                          }

                          v33 = SCPreferencesCreateWithOptions();
                          *(v7 + 1088) = v33;
                          if (!v33)
                          {
                            sub_10016AD8C();
                            goto LABEL_77;
                          }

                          CFDictionarySetValue(v31, @"ProtectionClass", @"D");
                          v34 = SCPreferencesCreateWithOptions();
                          *(v7 + 1096) = v34;
                          if (!v34)
                          {
                            sub_10016AD2C();
                            goto LABEL_77;
                          }

                          v35 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.wifi.manager", @"com.apple.radios.plist");
                          *(v7 + 1080) = v35;
                          if (!v35)
                          {
                            sub_10016ACCC();
                            goto LABEL_77;
                          }

                          v99.version = 0;
                          memset(&v99.retain, 0, 24);
                          v99.info = v7;
                          if (!SCPreferencesSetCallback(v35, sub_100071FE0, &v99))
                          {
                            sub_10016AC6C();
                            goto LABEL_77;
                          }

                          v36 = [CWFKeyValueStore alloc];
                          v37 = [v36 initWithType:4 identifier:CWFKnownNetworksStoreIdentifier];
                          *(v7 + 1104) = v37;
                          if (!v37 || (v38 = [CWFKeyValueStore alloc], v39 = [v38 initWithType:5 identifier:CWFClassDKnownNetworksStoreIdentifier], (*(v7 + 1112) = v39) == 0))
                          {
                            sub_10016ABF4();
                            goto LABEL_77;
                          }

                          *(v7 + 1128) = [CWFBootArgs() copy];
                          v40 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                          *(v7 + 1440) = v40;
                          if (!v40)
                          {
                            sub_10016AB94();
                            goto LABEL_77;
                          }

                          dispatch_set_context(v40, v7);
                          dispatch_source_set_event_handler_f(*(v7 + 1440), sub_100072690);
                          *(v7 + 1448) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                          v41 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                          *(v7 + 2592) = v41;
                          if (!v41)
                          {
                            sub_10016AB34();
                            goto LABEL_77;
                          }

                          dispatch_set_context(v41, v7);
                          dispatch_source_set_event_handler_f(*(v7 + 2592), sub_100072A2C);
                          global_queue = dispatch_get_global_queue(0, 0);
                          v98[0] = _NSConcreteStackBlock;
                          v98[1] = 3221225472;
                          v98[2] = sub_100072AA4;
                          v98[3] = &unk_10025F5F8;
                          v98[4] = a2;
                          v98[5] = v7;
                          dispatch_async(global_queue, v98);
                          *(v7 + 792) = 0;
                          if (byte_100298C78)
                          {
                            v43 = 1;
                          }

                          else
                          {
                            v43 = MKBUserUnlockedSinceBoot();
                          }

                          *(v7 + 1408) = v43;
                          v44 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            if (byte_100298C78)
                            {
                              v45 = "Running";
                            }

                            else
                            {
                              v45 = "Not running";
                            }

                            [off_100298C40 WFLog:4 message:{"%s: %s in darwinOS mode", "WiFiManagerCreate", v45}];
                          }

                          objc_autoreleasePoolPop(v44);
                          v46 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            if (byte_100298C79)
                            {
                              v47 = "Running";
                            }

                            else
                            {
                              v47 = "Not running";
                            }

                            [off_100298C40 WFLog:4 message:{"%s: %s in Lockdown mode", "WiFiManagerCreate", v47}];
                          }

                          objc_autoreleasePoolPop(v46);
                          v48 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            if (byte_100298C7A)
                            {
                              v49 = "Running";
                            }

                            else
                            {
                              v49 = "Not running";
                            }

                            [off_100298C40 WFLog:4 message:{"%s: %s in store demo mode", "WiFiManagerCreate", v49}];
                          }

                          objc_autoreleasePoolPop(v48);
                          sub_100070E8C(v50, 2, v7);
                          sub_100072D44(v7);
                          sub_1000731D0(v7, *(v7 + 232));
                          sub_100157124(v7);
                          *(v7 + 369) = 1;
                          *(v7 + 497) = 1;
                          *(v7 + 370) = sub_100018E90(v7, @"PrivateMacForcedDisassocPending", 0);
                          v51 = sub_10001769C(v7, @"deviceSpecificKeyMacRandomisation");
                          if (v51 && (v52 = v51, CFDataGetLength(v51)))
                          {
                            Copy = CFDataCreateCopy(kCFAllocatorDefault, v52);
                          }

                          else
                          {
                            *&v53 = 0xAAAAAAAAAAAAAAAALL;
                            *(&v53 + 1) = 0xAAAAAAAAAAAAAAAALL;
                            bytes = v53;
                            v103 = v53;
                            if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, &bytes))
                            {
                              sub_10016AEAC();
                              goto LABEL_77;
                            }

                            Copy = CFDataCreate(kCFAllocatorDefault, &bytes, 32);
                          }

                          *(v7 + 424) = Copy;
                          sub_10007393C(v7, @"deviceSpecificKeyMacRandomisation", Copy, 0);
                          v55 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : INIT : device specific key used : %@", "WiFiManagerCreate", *(v7 + 424)}];
                          }

                          objc_autoreleasePoolPop(v55);
                          v56 = sub_10001769C(v7, @"RotationKeyMacRandomisation");
                          if (v56)
                          {
                            v57 = v56;
                            if (CFDataGetLength(v56))
                            {
                              v59 = CFDataCreateCopy(kCFAllocatorDefault, v57);
LABEL_83:
                              *(v7 + 416) = v59;
                              sub_10007393C(v7, @"RotationKeyMacRandomisation", v59, 0);
                              v62 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : INIT : rotation key used : %@", "WiFiManagerCreate", *(v7 + 416)}];
                              }

                              objc_autoreleasePoolPop(v62);
                              if (!sub_10001769C(v7, @"RotationKeyDateMacRandomisation"))
                              {
                                Current = CFAbsoluteTimeGetCurrent();
                                v64 = CFDateCreate(kCFAllocatorDefault, Current);
                                sub_10007393C(v7, @"RotationKeyDateMacRandomisation", v64, 0);
                                if (v64)
                                {
                                  CFRelease(v64);
                                }
                              }

                              v65 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : INIT : rotation key date : %@", "WiFiManagerCreate", sub_10001769C(v7, @"RotationKeyDateMacRandomisation"}];
                              }

                              objc_autoreleasePoolPop(v65);
                              v66 = MGCopyAnswer();
                              *(v7 + 464) = v66;
                              if (v66)
                              {
                                sub_10007393C(v7, @"hwMacAddressMacRandomisation", v66, 1);
                                BytePtr = CFDataGetBytePtr(*(v7 + 464));
                                v68 = *(BytePtr + 2);
                                *(v7 + 452) = *BytePtr;
                                *(v7 + 456) = v68;
                                v69 = objc_autoreleasePoolPush();
                                if (off_100298C40)
                                {
                                  [off_100298C40 WFLog:3 message:{"WFMacRandomisation : INIT : device mac HW address read: %s", ether_ntoa((v7 + 452))}];
                                }

                                objc_autoreleasePoolPop(v69);
                              }

                              sub_100020170(v7);
                              sub_10015724C(v7);
                              *(v7 + 496) = 0;
                              if (byte_100298C7A)
                              {
                                *(v7 + 384) = 0;
                              }

                              else if (*(v7 + 384))
                              {
                                v70 = &kCFBooleanTrue;
LABEL_99:
                                sub_10007393C(v7, @"WiFiMacRandomizationInternalUI", *v70, 1);
                                v71 = objc_autoreleasePoolPush();
                                if (off_100298C40)
                                {
                                  [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : INIT : Initializing Private mac with feature enable [%d]\n", "WiFiManagerCreate", *(v7 + 384)}];
                                }

                                objc_autoreleasePoolPop(v71);
                                *(v7 + 385) = sub_100018E90(v7, @"enableForceCarPlayMACRandomization", 0);
                                v72 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                                *(v7 + 472) = v72;
                                if (v72)
                                {
                                  dispatch_set_context(v72, v7);
                                  dispatch_source_set_event_handler_f(*(v7 + 472), sub_1001572A8);
                                  v73 = *(v7 + 472);
                                  v74 = dispatch_time(0, 1800000000000);
                                  dispatch_source_set_timer(v73, v74, 0x1A3185C5000uLL, 0);
                                  sub_10017D958(kCFAllocatorDefault, "com.apple.wifi.manager", v7);
                                  *(v7 + 88) = v75;
                                  if (v75)
                                  {
                                    *(v7 + 1136) = qword_100298578;
                                    *(v7 + 1144) = qword_100298580;
                                    *(v7 + 1152) = qword_100298588;
                                    *(v7 + 1160) = qword_100298590;
                                    if (_os_feature_enabled_impl())
                                    {
                                      sub_1000084DC(v7);
                                    }

                                    sub_10000D0D8(v7, *(v7 + 1144), 1);
                                    v76 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                                    *(v7 + 888) = v76;
                                    if (v76)
                                    {
                                      dispatch_set_context(v76, v7);
                                      dispatch_source_set_event_handler_f(*(v7 + 888), sub_100073A68);
                                      *(v7 + 2112) = 0;
                                      v77 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                                      *(v7 + 2096) = v77;
                                      if (v77)
                                      {
                                        dispatch_set_context(v77, v7);
                                        dispatch_source_set_event_handler_f(*(v7 + 2096), sub_100073BCC);
                                        *(v7 + 832) = MKBGetDeviceLockState() == 1;
                                        v78 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                                        *(v7 + 1416) = v78;
                                        if (v78)
                                        {
                                          dispatch_set_context(v78, v7);
                                          dispatch_source_set_event_handler_f(*(v7 + 1416), sub_1001581B4);
                                          v79 = *(v7 + 1416);
                                          v80 = dispatch_time(0, 60000000000);
                                          dispatch_source_set_timer(v79, v80, 0xFFFFFFFFFFFFFFFFLL, 0);
                                          if (!sub_10006F6CC() && *(v7 + 120) != 7)
                                          {
                                            *(v7 + 1536) = sub_100125E10(v7, a2);
                                          }

                                          *(v7 + 1544) = 0;
                                          *(v7 + 1480) = 0;
                                          *(v7 + 1409) = 0;
                                          *(v7 + 1552) = sub_1001AE9E8();
                                          *(v7 + 1560) = -1;
                                          *(v7 + 1572) = -1;
                                          *(v7 + 1576) = -1;
                                          v81 = +[ManagedConfigWrapper sharedInstance];
                                          *(v7 + 1584) = v81;
                                          [(ManagedConfigWrapper *)v81 initializeWithHandler:v7];
                                          v82 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                                          *(v7 + 1592) = v82;
                                          if (v82)
                                          {
                                            dispatch_set_context(v82, v7);
                                            dispatch_source_set_event_handler_f(*(v7 + 1592), sub_100015ED0);
                                            v83 = *(v7 + 1592);
                                            v84 = dispatch_time(0, 5000000000);
                                            dispatch_source_set_timer(v83, v84, 0x12A05F200uLL, 0);
                                            v85 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                                            *(v7 + 1640) = v85;
                                            if (v85)
                                            {
                                              dispatch_set_context(v85, v7);
                                              dispatch_source_set_event_handler_f(*(v7 + 1640), sub_100073C9C);
                                              v86 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                                              *(v7 + 1680) = v86;
                                              if (v86)
                                              {
                                                dispatch_set_context(v86, v7);
                                                dispatch_source_set_event_handler_f(*(v7 + 1680), sub_100073D38);
                                                *(v7 + 1768) = 0;
                                                v87 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
                                                *(v7 + 1776) = v87;
                                                if (v87)
                                                {
                                                  dispatch_set_context(v87, v7);
                                                  dispatch_source_set_event_handler_f(*(v7 + 1776), sub_100073F90);
                                                  *(v7 + 1656) = 100;
                                                  *(v7 + 1784) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                                                  qword_100298598 = v7;
                                                  v88 = sub_1000551DC();
                                                  v89 = sub_10000CDC4(v7);
                                                  if (!v88 || v89)
                                                  {
                                                    if (!v89)
                                                    {
                                                      sub_100074AB8(v7, "WiFiManagerCreate", 4146);
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v90 = *(v7 + 1408);
                                                    v91 = objc_autoreleasePoolPush();
                                                    if (v90)
                                                    {
                                                      if (off_100298C40)
                                                      {
                                                        [off_100298C40 WFLog:3 message:{"%s reseting user auto join due to restart", "WiFiManagerCreate"}];
                                                      }

                                                      objc_autoreleasePoolPop(v91);
                                                      sub_1000740C8(v7, 1, 3, 0);
                                                    }

                                                    else
                                                    {
                                                      if (off_100298C40)
                                                      {
                                                        [off_100298C40 WFLog:3 message:{"%s user auto join needs reset", "WiFiManagerCreate"}];
                                                      }

                                                      objc_autoreleasePoolPop(v91);
                                                      *(v7 + 2494) = 1;
                                                    }
                                                  }

                                                  *(v7 + 2312) = 257;
                                                  *(v7 + 2320) = CFAbsoluteTimeGetCurrent();
                                                  *(v7 + 2328) = 0;
                                                  v92 = 1;
                                                  if (*(v7 + 120) != 7)
                                                  {
                                                    v92 = _os_feature_enabled_impl();
                                                  }

                                                  *(v7 + 2329) = v92;
                                                  *(v7 + 2416) = 0;
                                                  *(v7 + 2442) = 1;
                                                  *(v7 + 2457) = 0;
                                                  *(v7 + 2392) = 0x40AC200000000000;
                                                  v93 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                                  *(v7 + 2368) = v93;
                                                  if (v93)
                                                  {
                                                    *(v7 + 2376) = 0;
                                                    *(v7 + 2472) = 0;
                                                    *(v7 + 2480) = 0;
                                                    *(v7 + 440) = 0x1400000002;
                                                    *(v7 + 448) = 2;
                                                    *(v7 + 388) = xmmword_1001CE340;
                                                    *(v7 + 404) = 0x1518000127500;
                                                    *(v7 + 2516) = 0;
                                                    *(v7 + 2520) = 0;
                                                    *(v7 + 2528) = 0;
                                                    *(v7 + 2649) = 0;
                                                    *(v7 + 1312) = 1;
                                                    v97[0] = _NSConcreteStackBlock;
                                                    v97[1] = 3221225472;
                                                    v97[2] = sub_100074B6C;
                                                    v97[3] = &unk_10025EAD8;
                                                    v97[4] = v7;
                                                    dispatch_async(qword_100298C50, v97);
                                                    *(v7 + 2656) = +[WiFiUsageMonitor sharedInstance];
                                                    sub_100096E98((v7 + 1896), qword_100298C50);
                                                    *(v7 + 2688) = 1;
                                                    *(v7 + 2692) = 1;
                                                    *(v7 + 2696) = 2;
                                                    *(v7 + 2704) = 0;
                                                    *(v7 + 2720) = 0;
                                                    *(v7 + 2728) = objc_alloc_init(NSMutableArray);
                                                    *(v7 + 2736) = objc_alloc_init(NSMutableDictionary);
                                                    *(v7 + 2760) = +[WiFiTelephonyClient sharedInstance];
                                                    *(v7 + 2768) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                                                    *(v7 + 2792) = 0;
                                                    *(v7 + 2808) = 0;
                                                    v94 = objc_alloc_init(NSMutableDictionary);
                                                    *(v7 + 1296) = v94;
                                                    if (v94)
                                                    {
                                                      *(v7 + 1304) = &off_1002826E8;
                                                      if (v88 && +[WiFiSoftApStateMonitor sharedInstance])
                                                      {
                                                        [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor resetState];
                                                      }

                                                      CFRelease(v31);

                                                      v60 = objc_autoreleasePoolPush();
                                                      if (off_100298C40)
                                                      {
                                                        [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiManagerCreate"}];
                                                      }

                                                      v61 = @"%s: exiting";
                                                      v3 = v96;
                                                      goto LABEL_137;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  sub_10016A7D4();
                                                }
                                              }

                                              else
                                              {
                                                sub_10016A834();
                                              }
                                            }

                                            else
                                            {
                                              sub_10016A894();
                                            }
                                          }

                                          else
                                          {
                                            sub_10016A8F4();
                                          }
                                        }

                                        else
                                        {
                                          sub_10016A954();
                                        }
                                      }

                                      else
                                      {
                                        sub_10016A9B4();
                                      }
                                    }

                                    else
                                    {
                                      sub_10016AA14();
                                    }
                                  }

                                  else
                                  {
                                    sub_10016AA74();
                                  }
                                }

                                else
                                {
                                  sub_10016AAD4();
                                }

                                goto LABEL_77;
                              }

                              v70 = &kCFBooleanFalse;
                              goto LABEL_99;
                            }
                          }

                          *&v58 = 0xAAAAAAAAAAAAAAAALL;
                          *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
                          bytes = v58;
                          v103 = v58;
                          if (!SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, &bytes))
                          {
                            v59 = CFDataCreate(kCFAllocatorDefault, &bytes, 32);
                            goto LABEL_83;
                          }

                          sub_10016AE4C();
LABEL_77:
                          CFRelease(v31);
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
    }
  }

LABEL_78:
  CFRelease(v7);
  v3 = v96;
LABEL_79:

  v60 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: exiting, Error: failed to create manager ref", "WiFiManagerCreate"}];
  }

  v7 = 0;
  v61 = @"%s: exiting, Error: failed to create manager ref";
LABEL_137:
  objc_autoreleasePoolPop(v60);
  NSLog(&v61->isa, "WiFiManagerCreate");
  objc_autoreleasePoolPop(v3);
  return v7;
}

void sub_100070DB8(id a1, NSDate *a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: wifipdr PDR fence crossed", "__WiFiManagerPdrFenceCrossCallback"}];
    }

    objc_autoreleasePoolPop(v4);
    v5 = *(a3 + 350);
    if (v5)
    {

      sub_10006F24C(v5);
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiManagerPdrFenceCrossCallback"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_100070E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: notification %d", "__WiFiManagerPreferencesCallback", a2}];
    }

    objc_autoreleasePoolPop(v5);
    if ((a2 & 2) != 0)
    {
      sub_10014A48C(*(a3 + 1064));
      v6 = sub_10000D83C("__WiFiManagerPreferencesCallback");
      if (!sub_10001769C(a3, @"DeviceUUID") && (v7 = CFUUIDCreate(kCFAllocatorDefault)) != 0)
      {
        v9 = v7;
        v10 = CFUUIDCreateString(kCFAllocatorDefault, v7);
        if (v10)
        {
          v11 = v10;
          v8 = 1;
          sub_10007393C(a3, @"DeviceUUID", v10, 1);
          CFRelease(v11);
        }

        else
        {
          v8 = 0;
        }

        CFRelease(v9);
      }

      else
      {
        v8 = 0;
      }

      sub_100091E08(a3, 1);
      *(a3 + 304) = sub_100018E90(a3, @"AllowDisassociation", 1);
      *(a3 + 321) = sub_100018E90(a3, @"alwaysScan", 0);
      *(a3 + 756) = sub_100085BDC(a3, @"WakeMode", 1);
      v98 = sub_100018E90(a3, @"lpasEnable", 1);
      *(a3 + 320) = -1;
      v12 = sub_10001769C(a3, @"WAPIEnabled");
      v15 = v12 && (v13 = v12, TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(v13)) && CFEqual(v13, kCFBooleanTrue) != 0;
      if (!sub_10001769C(a3, @"DiagnosticsEnabled"))
      {
        v16 = sub_10006B824();
        v17 = &kCFBooleanFalse;
        if (v16)
        {
          v17 = &kCFBooleanTrue;
        }

        sub_10007393C(a3, @"DiagnosticsEnabled", *v17, 1);
      }

      v101 = sub_100018E90(a3, @"EnableRangingLogDump", 0);
      v86 = sub_100079A8C(a3);
      v18 = !sub_10006F6CC();
      v19 = sub_10001769C(a3, kSCPropNetAirPortJoinMode);
      v92 = v8;
      if (!v19)
      {
        v94 = v18;
        v20 = sub_100091F6C(v18);
        v74 = 1;
        sub_10007393C(a3, kSCPropNetAirPortJoinMode, v20, 1);
LABEL_36:
        v88 = sub_100085BDC(a3, @"Fallback Preference", 2);
        v23 = sub_100079008(a3, @"DisassociationInterval", 1800.0);
        v24 = sub_100084120(a3, 1);
        v73 = sub_100018E90(a3, @"mStageAutoJoin", 1);
        v78 = sub_100018E90(a3, @"DisableBlackList", byte_100298C78 != 0);
        v76 = sub_100018E90(a3, @"isWiFiPowerModificationDisabled", 0);
        v75 = sub_100018E90(a3, @"isPersonalHotspotModificationDisabled", 0);
        v77 = sub_100018E90(a3, @"ATJTestModeEnabled", 0);
        v83 = sub_100018E90(a3, @"OverrideWiFiFallBackPrefMode", 0);
        v82 = sub_100085BDC(a3, @"LinkQualityAssessmentMode", 1);
        v81 = sub_100018E90(a3, @"TrgDiscAskIfAppropriateDisconnect", 1);
        v79 = sub_100018E90(a3, @"EnableAggressiveTrgDisc", 1);
        v25 = sub_100079008(a3, @"HomeNetworkTransitionInterval", 3600.0);
        v26 = sub_10001769C(a3, @"List of policies");
        v72 = sub_100018E90(a3, @"optimizedAutoJoin", 1);
        v71 = sub_100018E90(a3, @"Enable5GhzAutoJoinScan", 0);
        cf = sub_10001769C(a3, @"deviceUpdatedDate");
        BOOLean = sub_10001769C(a3, @"IsOrphanedSCCleanUpRequired");
        v90 = sub_10001769C(a3, @"isWiFiPNLMigrationComplete");
        v27 = sub_100018E90(a3, @"ConnectionQualityLocalCollectionEnabled", 0);
        v28 = sub_10001769C(a3, @"JoinRecommendationMode");
        if (v28)
        {
          v29 = v28;
          if (!CFEqual(@"None", v28) && !CFEqual(@"Captive", v29) && !CFEqual(@"Quality", v29) && !CFEqual(@"Public", v29) && !CFEqual(@"NewLocation", v29) && !CFEqual(@"InfrequentNetwork", v29))
          {
            CFEqual(@"All", v29);
          }
        }

        v95 = v27;
        v100 = v24;
        sub_10001769C(a3, @"JoinRecommendationDisabledUntil");
        v30 = sub_100018E90(a3, @"ConnectionQualityPrivacyRestrictionsDisabled", 0);
        v96 = sub_100018E90(a3, @"WiFiMacRandomizationInternalUI", 1);
        v97 = sub_100018E90(a3, @"enableForceCarPlayMACRandomization", 0);
        *(a3 + 370) = sub_100018E90(a3, @"PrivateMacForcedDisassocPending", 0);
        v68 = sub_10001769C(a3, @"ATJTestNetworkSSID");
        v67 = sub_100085BDC(a3, @"ATJPreference", 1);
        v31 = sub_100085BDC(a3, @"Compatibility", 0);
        v32 = sub_1000864A8(a3);
        v85 = sub_100018E90(a3, @"AvailabilityEngineV2Enabled", v32);
        v84 = sub_100088E40(a3);
        v33 = sub_100079008(a3, @"AutoInstantHotspotTriggerInterval", 120.0);
        v70 = sub_100019400(a3, @"UserPreferenceJoinAlertMode", 1);
        v34 = sub_100019400(a3, @"JoinAlertDistanceThreshold", 7776000);
        v35 = sub_100079008(a3, @"JoinAlertDistanceThreshold", 30000.0);
        v87 = sub_100018E90(a3, @"DebugCoreCaptureEnabled", 1);
        v89 = sub_100018E90(a3, @"CoreCaptureOnAssistedAJFailure", 0);
        v99 = sub_1000899A4(a3, 1);
        v36 = sub_10001769C(a3, @"SessionBasedNetworkList");
        if (!v36)
        {
          v91 = 0;
LABEL_54:
          sub_100018E90(a3, @"StandALoneLPASTestModeEnabled", 0);
          v45 = sub_100018E90(a3, @"PDRTestModeEnabled", 0);
          v93 = sub_100018E90(a3, @"EnableAssertiveTriggerDisconnect", 1);
          v46 = sub_100019400(a3, @"phBandPreference", 0) == 1;
          sub_1000587F4(*(a3 + 1064), v74 | v92);

          if (v26)
          {
            v47 = sub_10013C1FC(v26);
            sub_100086338(a3, v47);
            if (v47)
            {
              CFRelease(v47);
            }
          }

          else
          {
            sub_100086338(a3, 0);
          }

          sub_10007B478(a3, v73);
          sub_10007B524(a3, v72, v71, cf);
          if (*(a3 + 320) != v15)
          {
            *(a3 + 320) = v15;
            context = a3;
            v104 = 0xAAAAAAAA0000001FLL;
            v105 = 0;
            v106 = 1;
            v107 = 0.0;
            CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          }

          if (*(a3 + 2644))
          {
            v48 = 0;
          }

          else
          {
            v48 = v86;
          }

          if (*(a3 + 2644))
          {
            v49 = @"LPEM";
          }

          else
          {
            v49 = 0;
          }

          sub_100079528(a3, v48, v49);
          sub_10007D044(a3, v78);
          sub_1001624B4(a3, v76);
          sub_100162558(a3, v75);
          v50 = sub_100080F4C(a3);
          v51 = v77;
          if (v50)
          {
            v52 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Overwriting ATJ to false due to active restriction policy", "__WiFiManagerPreferencesCallback"}];
            }

            objc_autoreleasePoolPop(v52);
            v51 = 0;
          }

          sub_1001596EC(a3, v51, v68);
          sub_10007B14C(a3, v67, 0);
          sub_10007B29C(a3, v31, 0);
          sub_10007ADE8(a3, v100);
          if (*(a3 + 896) != v23)
          {
            *(a3 + 896) = v23;
            sub_10007CBA8(a3, @"DisassociationInterval", v23);
          }

          if (*(a3 + 2344) != v25)
          {
            *(a3 + 2344) = v25;
            sub_10007CBA8(a3, @"HomeNetworkTransitionInterval", v25);
          }

          if (*(a3 + 2104) != 7.0)
          {
            *(a3 + 2104) = 0x401C000000000000;
            sub_10007CBA8(a3, @"DiagnosticsInterval", 7.0);
          }

          sub_10007AF64(a3, v94, 0);
          sub_10007CA7C(a3, v88);
          sub_10007D140(a3, v98);
          sub_100085200(a3, v82, v83, v81, v79);
          *(a3 + 288) = 0;
          *(a3 + 296) = 0;
          context = a3;
          v104 = 0xAAAAAAAA00000024;
          v105 = 0;
          v106 = 1;
          v107 = 0.0;
          CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          sub_100158DBC();
          context = a3;
          v104 = 0xAAAAAAAA00000062;
          v105 = v70;
          v106 = *&v35;
          v107 = v34;
          CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          if (BOOLean)
          {
            if (CFBooleanGetValue(BOOLean))
            {
              v54 = *(a3 + 2232);
              v55 = objc_autoreleasePoolPush();
              if (v54)
              {
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Already Scheduled", "__WiFiManagerCheckSCCleanUpScheduling"}];
                }

                objc_autoreleasePoolPop(v55);
              }

              else
              {
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: Schedule", "__WiFiManagerCheckSCCleanUpScheduling"}];
                }

                objc_autoreleasePoolPop(v55);
                *(a3 + 2232) = 1;
                [*(a3 + 2224) scheduleOrphanedSetsCleanUp];
              }
            }

            else if (!*(a3 + 2233))
            {
              *(a3 + 2232) = 256;
              v53 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: Unschedule", "__WiFiManagerCheckSCCleanUpScheduling"}];
              }

              objc_autoreleasePoolPop(v53);
              [*(a3 + 2224) unScheduleOrphanedSetsCleanUp];
            }
          }

          else
          {
            sub_10016B02C();
          }

          if (v90)
          {
            if (CFBooleanGetValue(v90))
            {
              v58 = v95;
              if (!*(a3 + 2235))
              {
                v59 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: Unschedule", "__WiFiManagerCheckPNLMigrationScheduling"}];
                }

                objc_autoreleasePoolPop(v59);
                *(a3 + 2234) = 256;
                [*(a3 + 2224) unSchedulePNLMigration];
              }
            }

            else
            {
              v56 = *(a3 + 2234);
              v57 = objc_autoreleasePoolPush();
              if (v56)
              {
                v58 = v95;
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Already Scheduled", "__WiFiManagerCheckPNLMigrationScheduling"}];
                }

                objc_autoreleasePoolPop(v57);
              }

              else
              {
                v58 = v95;
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: Schedule", "__WiFiManagerCheckPNLMigrationScheduling"}];
                }

                objc_autoreleasePoolPop(v57);
                *(a3 + 2234) = 1;
                [*(a3 + 2224) schedulePNLMigration];
              }
            }
          }

          else
          {
            sub_10016B08C();
            v58 = v95;
          }

          sub_100160FE0(a3, v58);
          sub_1001613F0(a3, v30);
          sub_100086430(a3, v85);
          LODWORD(v102) = v84;
          context = a3;
          v104 = 0xAAAAAAAA0000005ALL;
          v105 = &v102;
          v106 = 1;
          v107 = 0.0;
          CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          v102 = v33;
          context = a3;
          v104 = 0xAAAAAAAA0000005CLL;
          v105 = &v102;
          v106 = 1;
          v107 = 0.0;
          CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          LOBYTE(v102) = v87;
          if (*(a3 + 2442) != v87)
          {
            v60 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Debug CoreCapture %d", "__WiFiManagerSetDebugCoreCapture", v87}];
            }

            objc_autoreleasePoolPop(v60);
            *(a3 + 2442) = v87;
            context = a3;
            v104 = 0xAAAAAAAA00000066;
            v105 = &v102;
            v106 = 1;
            v107 = 0.0;
            CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          }

          LOBYTE(v102) = v89;
          if (*(a3 + 2443) != v89)
          {
            v61 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: CoreCapture On Assisted AJ Failure %d", "__WiFiManagerSetCoreCaptureOnAssistedAJFailure", v89}];
            }

            objc_autoreleasePoolPop(v61);
            *(a3 + 2443) = v89;
            context = a3;
            v104 = 0xAAAAAAAA00000071;
            v105 = &v102;
            v106 = 1;
            v107 = 0.0;
            CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          }

          sub_10016260C(a3, v96);
          if (*(a3 + 385) != v97)
          {
            v62 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation: Mac Randomisation CarPlay test mode toggled. Old state : %hhu, new state : %hhu", "__WiFiManagerSetMacRandomisationCarPlayTestMode", *(a3 + 385), v97}];
            }

            objc_autoreleasePoolPop(v62);
            *(a3 + 385) = v97;
          }

          sub_100087AD4(a3, v99);
          sub_100087A6C(a3, v91);
          if (v91)
          {
            CFRelease(v91);
          }

          LOBYTE(v102) = v46;
          context = a3;
          v104 = 0xAAAAAAAA00000076;
          v105 = &v102;
          v106 = 1;
          v107 = 0.0;
          CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          LOBYTE(v102) = v101;
          context = a3;
          v104 = 0xAAAAAAAA0000007ALL;
          v105 = &v102;
          v106 = 1;
          v107 = 0.0;
          CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          sub_10008A46C();
          v64 = *(a3 + 2800);
          if (v64 && *(a3 + 2808) != v45)
          {
            if (v45)
            {
              sub_10006F24C(v64);
            }

            else
            {
              sub_10006F258(v64, v63);
            }

            *(a3 + 2808) = v45;
            v65 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v66 = "Enabled";
              if (!v45)
              {
                v66 = "Disabled";
              }

              [off_100298C40 WFLog:3 message:{"%s: %s PDR Test Mode", "__WiFiManagerSetPDRTestMode", v66}];
            }

            objc_autoreleasePoolPop(v65);
          }

          LOBYTE(v102) = v93;
          *(a3 + 2809) = v93;
          context = a3;
          v104 = 0xAAAAAAAA0000008FLL;
          v105 = &v102;
          v106 = 1;
          v107 = 0.0;
          CFSetApplyFunction(*(a3 + 112), sub_100003B88, &context);
          if (v100)
          {
            CFRelease(v100);
          }

          if (v99)
          {
            CFRelease(v99);
          }

          return;
        }

        v37 = v36;
        v38 = v15;
        v39 = v30;
        v40 = v6;
        v41 = CFGetTypeID(v36);
        if (v41 == CFDictionaryGetTypeID())
        {
          Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v37);
        }

        else
        {
          v43 = CFGetTypeID(v37);
          if (v43 == CFSetGetTypeID())
          {
            Copy = CFSetCreateCopy(kCFAllocatorDefault, v37);
          }

          else
          {
            v44 = CFGetTypeID(v37);
            if (v44 != CFArrayGetTypeID())
            {
              v91 = 0;
              goto LABEL_53;
            }

            Copy = CFArrayCreateCopy(kCFAllocatorDefault, v37);
          }
        }

        v91 = Copy;
LABEL_53:
        v6 = v40;
        v30 = v39;
        v15 = v38;
        goto LABEL_54;
      }

      v21 = v19;
      if (CFEqual(kSCValNetAirPortJoinModeAutomatic, v19))
      {
        v94 = 0;
      }

      else
      {
        if (CFEqual(kSCValNetAirPortJoinModePreferred, v21))
        {
          v22 = 1;
        }

        else if (CFEqual(kSCValNetAirPortJoinModeRecent, v21))
        {
          v22 = 2;
        }

        else
        {
          if (!CFEqual(kSCValNetAirPortJoinModeStrongest, v21))
          {
            if (CFEqual(kSCValNetAirPortJoinModeRanked, v21))
            {
              v18 = 4;
            }

            v94 = v18;
            goto LABEL_35;
          }

          v22 = 3;
        }

        v94 = v22;
      }

LABEL_35:
      v74 = v8;
      goto LABEL_36;
    }
  }
}

void sub_100071FE0(const __SCPreferences *a1, char a2, uint64_t a3)
{
  if ((a2 & 2) == 0 || !a3)
  {
    return;
  }

  if (*(a3 + 2441))
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFi Power Modification disabled", "__WiFiManagerRadioPreferencesCallback"}];
    }

    objc_autoreleasePoolPop(v4);
    return;
  }

  SCPreferencesSynchronize(a1);
  CFPreferencesAppSynchronize(@"com.apple.preferences.network");
  Value = SCPreferencesGetValue(a1, @"AirplaneMode");
  if (Value)
  {
    v7 = Value;
  }

  else
  {
    v7 = kCFBooleanFalse;
  }

  v8 = CFPreferencesCopyAppValue(@"AirplaneModeEnabled", @"com.apple.preferences.network");
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = kCFBooleanFalse;
  }

  v10 = SCPreferencesGetValue(a1, @"LowPowerMode");
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = kCFBooleanFalse;
  }

  v12 = CFPreferencesCopyAppValue(@"LowPowerMode", @"com.apple.preferences.network");
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = kCFBooleanFalse;
  }

  if (!CFEqual(v7, v9))
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (v7 == kCFBooleanTrue)
      {
        v15 = "Enabled";
      }

      else
      {
        v15 = "Disabled";
      }

      [off_100298C40 WFLog:3 message:{"Airplane mode %s", v15}];
    }

    objc_autoreleasePoolPop(v14);
    CFPreferencesSetAppValue(@"AirplaneModeEnabled", v7, @"com.apple.preferences.network");
    [*(a3 + 2656) setCellularDataStatus:*(a3 + 1368) inAirplaneMode:sub_100091D60() != 0];
    if (CFEqual(v11, v13))
    {
LABEL_36:
      v18 = sub_100018E90(a3, @"KeepWiFiPoweredAirplaneMode", 0);
      v19 = sub_100018E90(a3, @"KeepWiFiPoweredAirplaneModeEnabled", 1);
      v20 = *(a3 + 324);
      if (v7 != kCFBooleanTrue && v11 != kCFBooleanTrue)
      {
        valuePtr = 0;
        v21 = CFPreferencesCopyAppValue(@"original-network-state", @"com.apple.preferences.network");
        v22 = v21;
        if (v21 && (v23 = CFDictionaryGetValue(v21, @"wifi-network")) != 0)
        {
          CFNumberGetValue(v23, kCFNumberCFIndexType, &valuePtr);
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: original radio setting state missing. Assuming enabled.", "__WiFiManagerRadioPreferencesCallback"}];
          }

          objc_autoreleasePoolPop(v30);
          valuePtr = 1;
        }

        v31 = objc_autoreleasePoolPush();
        if (v19)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: airplane mode stickiness is enabled", "__WiFiManagerRadioPreferencesCallback"}];
          }

          objc_autoreleasePoolPop(v31);
          if (sub_100018E90(a3, @"KeepWiFiPoweredAirplaneMode", 0) != (v20 == 1))
          {
            v32 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v33 = "OFF";
              if (v20 == 1)
              {
                v33 = "ON";
              }

              [off_100298C40 WFLog:3 message:{"%s: setting airplane mode stickiness preference to %s", "__WiFiManagerRadioPreferencesCallback", v33}];
            }

            objc_autoreleasePoolPop(v32);
            sub_100091FE0(a3, v20 == 1);
          }
        }

        else
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: airplane mode stickiness is disabled", "__WiFiManagerRadioPreferencesCallback"}];
          }

          objc_autoreleasePoolPop(v31);
        }

        if (valuePtr != v20)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = off_100298C40;
          if (off_100298C40)
          {
            v36 = sub_100058B44(valuePtr);
            [v35 WFLog:3 message:{"WiFi previous state: %s current state: %s", v36, sub_100058B44(v20)}];
          }

          objc_autoreleasePoolPop(v34);
          if (valuePtr == 4 && !v20 || (v20 != 4 ? (v37 = v20 == 0) : (v37 = 1), !v37 ? (v38 = 0) : (v38 = 1), valuePtr == 1 && v38))
          {
            sub_10007CC64(a3, valuePtr == 1, 0);
          }
        }

        sub_1000740C8(a3, 1, 8, 0);
        CFPreferencesSetAppValue(@"original-network-state", 0, @"com.apple.preferences.network");
        CFPreferencesAppSynchronize(@"com.apple.preferences.network");
        if (v22)
        {
          CFRelease(v22);
        }

        goto LABEL_90;
      }

      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"WiFi current state: %s", sub_100058B44(v20)}];
      }

      objc_autoreleasePoolPop(v24);
      v25 = CFPreferencesCopyAppValue(@"original-network-state", @"com.apple.preferences.network");
      if (!v25)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          CFPreferencesAppSynchronize(@"com.apple.preferences.network");
          if (!v18)
          {
            goto LABEL_85;
          }

          goto LABEL_49;
        }

        v25 = Mutable;
        valuePtr = v20;
        v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v25, @"wifi-network", v27);
          CFPreferencesSetAppValue(@"original-network-state", v25, @"com.apple.preferences.network");
          CFRelease(v28);
        }

        CFPreferencesAppSynchronize(@"com.apple.preferences.network");
      }

      CFRelease(v25);
      if (!v18)
      {
        goto LABEL_85;
      }

LABEL_49:
      if (!v19)
      {
        v29 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: User preference is to leave WiFi powered, but power stickiness is disabled.", "__WiFiManagerRadioPreferencesCallback"}];
        }

        objc_autoreleasePoolPop(v29);
LABEL_89:
        sub_10007CC64(a3, 0, 0);
        goto LABEL_90;
      }

LABEL_85:
      if (v18)
      {
        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Leaving WiFi powered due to user preference", "__WiFiManagerRadioPreferencesCallback"}];
        }

        objc_autoreleasePoolPop(v39);
        goto LABEL_90;
      }

      goto LABEL_89;
    }

LABEL_30:
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (v11 == kCFBooleanTrue)
      {
        v17 = "Enabled";
      }

      else
      {
        v17 = "Disabled";
      }

      [off_100298C40 WFLog:3 message:{"Low Power Mode %s", v17}];
    }

    objc_autoreleasePoolPop(v16);
    CFPreferencesSetAppValue(@"LowPowerMode", v11, @"com.apple.preferences.network");
    goto LABEL_36;
  }

  if (!CFEqual(v11, v13))
  {
    goto LABEL_30;
  }

LABEL_90:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_100072690(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 224);
    if (v2)
    {
      Count = CFArrayGetCount(*(a1 + 224));
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: network count %ld", "__WiFiManagerCheckNetworkExpiry", Count}];
      }

      objc_autoreleasePoolPop(v4);
      if (Count < 1)
      {
        v6 = 0.0;
      }

      else
      {
        v5 = 0;
        v6 = 0.0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
          if (ValueAtIndex)
          {
            v8 = ValueAtIndex;
            if (sub_10009EF18(ValueAtIndex))
            {
              sub_10009EE04(v8);
              v10 = v9;
              v11 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: network %@, Texpire %f", "__WiFiManagerCheckNetworkExpiry", sub_10000A878(v8), *&v10}];
              }

              objc_autoreleasePoolPop(v11);
              if (v10 <= 0)
              {
                v13 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"Network %@ has expired. Removing it from known networks list", sub_10000A878(v8)}];
                }

                objc_autoreleasePoolPop(v13);
                CFArrayAppendValue(*(a1 + 1448), v8);
              }

              else if (v10 < v6 || v6 == 0.0)
              {
                v6 = v10;
              }
            }
          }

          ++v5;
        }

        while (Count != v5);
      }

      v14 = vabdd_f64(*(a1 + 1456) - CFAbsoluteTimeGetCurrent(), v6);
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: minTexpire %f, deltaTexpire %f", "__WiFiManagerCheckNetworkExpiry", *&v6, *&v14}];
      }

      objc_autoreleasePoolPop(v15);
      if (v6 == 0.0 || v14 <= 60.0)
      {
        if (!v6 && *(a1 + 1424) != 0.0)
        {
          *(a1 + 1424) = 0;
          *(a1 + 1432) = 0;
          dispatch_source_set_timer(*(a1 + 1440), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"SignificantTimeChangeNotification", 0);
        }

        StringWithAbsoluteTime = 0;
      }

      else
      {
        v16 = v6 + CFAbsoluteTimeGetCurrent();
        StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, qword_100298C70, v16);
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: starting expiry timer:: set next fire date %@", "__WiFiManagerCheckNetworkExpiry", StringWithAbsoluteTime}];
        }

        objc_autoreleasePoolPop(v18);
        v19 = *(a1 + 1440);
        v20 = dispatch_time(0, (v6 * 1000000000.0));
        dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0);
        *(a1 + 1456) = v16;
        *(a1 + 1424) = v6;
        v21 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(v21, a1, nullsub_7, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      v23 = *(a1 + 1448);
      if (v23)
      {
        v24 = CFArrayGetCount(v23);
        if (v24 >= 1)
        {
          v25 = v24;
          for (i = 0; i != v25; ++i)
          {
            v27 = CFArrayGetValueAtIndex(*(a1 + 1448), i);
            sub_100081634(a1, v27, 27);
            sub_10009FCF4(v27);
          }
        }

        CFArrayRemoveAllValues(*(a1 + 1448));
      }

      if (StringWithAbsoluteTime)
      {

        CFRelease(StringWithAbsoluteTime);
      }
    }

    else
    {
      sub_10016B0EC();
    }
  }

  else
  {
    sub_10016B158();
  }
}

void sub_100072A2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: timed out", "__WiFiManagerCarPlaySessionDownWaitTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);

  sub_1000904DC(a1);
}

void sub_100072AA4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[WiFiAccountStoreManager sharedWiFiAccountStoreManager];
  v4 = *(a1 + 40);
  *(v4 + 2448) = v3;
  v5 = sub_100072B74(v4);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100072BC4;
  v8[3] = &unk_100260770;
  v6 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v9 = v5;
  dispatch_async(v6, v8);
  v7 = *(*(a1 + 40) + 2448);
  if (v7)
  {
    [v7 registerCallback:sub_100072C90 withContext:?];
  }

  objc_autoreleasePoolPop(v2);
}

id sub_100072B74(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 2448);
  if (v3)
  {
    v4 = [v3 isManagedAppleID];
  }

  else
  {
    sub_10016B1C4();
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_100072BD8(uint64_t a1, int a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_10016B2B8();
    goto LABEL_8;
  }

  if (*(a1 + 2456) == a2)
  {
    sub_10016B230(a2);
    goto LABEL_8;
  }

  *(a1 + 2456) = a2;
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    if (a3)
    {
      goto LABEL_7;
    }

    v7 = 1;
  }

  sub_100088D58(a1, v7, 0);
LABEL_7:
  context = a2;
  CFSetApplyFunction(*(a1 + 144), sub_1000928C4, &context);
LABEL_8:
  objc_autoreleasePoolPop(v6);
}

void sub_100072C90(uint64_t a1, char a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000928B0;
      v6[3] = &unk_100260770;
      v6[4] = a1;
      v7 = a2;
      dispatch_async(v5, v6);
    }

    else
    {
      sub_10016B324();
    }
  }

  else
  {
    sub_10016B390();
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100072D44(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = sub_100002B40;
  v19[4] = sub_100006758;
  v19[5] = 0;
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiManagerGetKnownNetworksCache"}];
    }

    goto LABEL_20;
  }

  if (!*(a1 + 1408))
  {
    v8 = *(a1 + 232);
    if (!v8 || !CFArrayGetCount(v8))
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: device not yet unlocked.", "WiFiManagerGetKnownNetworksCache"}];
      }

LABEL_20:
      objc_autoreleasePoolPop(v4);
      goto LABEL_44;
    }
  }

  v3 = *(a1 + 232);
  if (v3 && CFArrayGetCount(v3))
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Fetched %ld known networks from the cache", "WiFiManagerGetKnownNetworksCache", CFArrayGetCount(*(a1 + 232))}];
    }

    goto LABEL_20;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088414;
  block[3] = &unk_1002608E0;
  block[4] = v19;
  if (qword_1002985B0 != -1)
  {
    dispatch_once(&qword_1002985B0, block);
  }

  if (sub_1000243A0(a1))
  {
    v5 = *(a1 + 232);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 232) = 0;
    }

    v6 = sub_10015DD48([*(a1 + 1104) dictionaryRepresentation]);
    *(a1 + 232) = v6;
    if (v6 && CFArrayGetCount(v6) >= 1)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: unified KVS returned %d networks", "WiFiManagerGetKnownNetworksCache", CFArrayGetCount(*(a1 + 232))}];
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (*(a1 + 232))
        {
          v9 = "empty list";
        }

        else
        {
          v9 = "nil";
        }

        [off_100298C40 WFLog:3 message:{"%s: unified KVS returned %s", "WiFiManagerGetKnownNetworksCache", v9}];
      }
    }
  }

  else
  {
    SCPreferencesSynchronize(*(a1 + 1072));
    v10 = sub_10001769C(a1, @"List of known networks");
    v11 = *(a1 + 232);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 232) = 0;
    }

    v12 = sub_10005894C(v10);
    *(a1 + 232) = v12;
    if (v12 && CFArrayGetCount(v12) >= 1)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: legacy KVS returned %d networks", "WiFiManagerGetKnownNetworksCache", CFArrayGetCount(*(a1 + 232))}];
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (*(a1 + 232))
        {
          v13 = "empty list";
        }

        else
        {
          v13 = "nil";
        }

        [off_100298C40 WFLog:3 message:{"%s: legacy KVS returned %s", "WiFiManagerGetKnownNetworksCache", v13}];
      }
    }
  }

  objc_autoreleasePoolPop(v7);
  if (*(a1 + 232))
  {
    *(a1 + 240) = CFAbsoluteTimeGetCurrent();
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Fetched %ld known networks from the plist", "WiFiManagerGetKnownNetworksCache", CFArrayGetCount(*(a1 + 232))}];
    }

    objc_autoreleasePoolPop(v14);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008844C;
  v17[3] = &unk_10025EFD8;
  v17[4] = v19;
  v17[5] = a1;
  if (qword_1002985B8 != -1)
  {
    dispatch_once(&qword_1002985B8, v17);
  }

LABEL_44:
  v15 = *(a1 + 232);
  objc_autoreleasePoolPop(v2);
  _Block_object_dispose(v19, 8);
  return v15;
}

void sub_1000731D0(uint64_t a1, CFArrayRef theArray)
{
  v2 = theArray;
  v3 = a1;
  if (!theArray)
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 1704);
  if (!v4)
  {
    v5 = kCFAllocatorDefault;
LABEL_8:
    v3 = a1;
    goto LABEL_9;
  }

  Count = CFArrayGetCount(v4);
  v5 = kCFAllocatorDefault;
  if (!Count)
  {
    goto LABEL_8;
  }

  v47 = Count;
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v3 = a1;
  if (v47 >= 1)
  {
    for (i = 0; i != v47; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1704), i);
      if (ValueAtIndex)
      {
        v51 = ValueAtIndex;
        if (sub_1000418B0(ValueAtIndex) == 1)
        {
          v52 = sub_100041838(v51);
          CFSetAddValue(Mutable, v52);
        }
      }
    }
  }

  if (Mutable)
  {
    sub_10016B3FC();
    MutableCopy = context;
    goto LABEL_10;
  }

LABEL_9:
  MutableCopy = CFArrayCreateMutableCopy(v5, 0, v2);
LABEL_10:
  if (*(v3 + 320))
  {
    v2 = MutableCopy;
  }

  else
  {
    v2 = CFArrayCreateMutable(v5, 0, &kCFTypeArrayCallBacks);
    v8 = CFArrayGetCount(MutableCopy);
    if (v8 >= 1 && v2)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = CFArrayGetValueAtIndex(MutableCopy, j);
        if (v11)
        {
          v12 = v11;
          if (!sub_10000D970(v11))
          {
            CFArrayAppendValue(v2, v12);
          }
        }
      }
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  v13 = *(v3 + 224);
  if (v13)
  {
    CFRelease(v13);
    *(v3 + 224) = 0;
  }

  allocator = v5;
  theArraya = CFArrayCreateMutable(v5, 0, &kCFTypeArrayCallBacks);
  v14 = CFArrayGetCount(v2);
  v15 = sub_10001769C(v3, @"IsNewInstall");
  if (v14 >= 1)
  {
    v16 = v15;
    for (k = 0; k != v14; ++k)
    {
      v18 = CFArrayGetValueAtIndex(v2, k);
      if (v18)
      {
        v19 = v18;
        if (*(v3 + 1664))
        {
          v20 = sub_10000A878(v18);
          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            if (v20)
            {
              v21 = *(v3 + 1672);
              if (v21)
              {
                if (CFStringCompare(v20, v21, 0) == kCFCompareEqualTo)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  v23 = CFDateCreate(allocator, Current);
                  if (v23)
                  {
                    v24 = v23;
                    sub_1000A0170(v19, 1, v23);
                    CFRelease(v24);
                  }

                  v25 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: CompanionAssisted: adjusted autojoin date of network for ssid %@", "__WiFiManagerCopyAdjustedNetworks", sub_10000A878(v19)}];
                  }

                  objc_autoreleasePoolPop(v25);
                }
              }
            }
          }
        }

        v26 = sub_1000A01EC(v19, 1);
        v27 = sub_1000A1F04(v19);
        v28 = sub_100009730(v19) && sub_1000A1F7C(v19);
        v29 = sub_10000A540(v19, @"DisableWiFiAutoJoinUntilFirstUserJoin");
        if (v16 != kCFBooleanFalse && !v26 && v27 && v28 && !v29)
        {
          v30 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: carrier network %@ can expose IMSI. Disabling until first join.", "__WiFiManagerCopyAdjustedNetworks", sub_10000A878(v19)}];
          }

          objc_autoreleasePoolPop(v30);
          sub_10000AD34(v19, @"DisableWiFiAutoJoinUntilFirstUserJoin", kCFBooleanTrue);
        }

        if (sub_10017740C(v19))
        {
          v31 = objc_autoreleasePoolPush();
          v3 = a1;
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: %@ is infrequently joined public network, skipping.", "__WiFiManagerCopyAdjustedNetworks", sub_10000A878(v19)}];
          }

          objc_autoreleasePoolPop(v31);
        }

        else
        {
          CFArrayAppendValue(theArraya, v19);
          v3 = a1;
        }
      }
    }
  }

  *(v3 + 224) = theArraya;
  sub_100159190();
  v32 = *(v3 + 264);
  if (v32)
  {
    CFRelease(v32);
    *(v3 + 264) = 0;
  }

  v33 = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
  v34 = CFArrayGetCount(v2);
  if (v34 < 1)
  {
    goto LABEL_72;
  }

  v35 = v34;
  v36 = 0;
  while (1)
  {
    v37 = CFArrayGetValueAtIndex(v2, v36);
    if (!v37)
    {
      goto LABEL_71;
    }

    v38 = v37;
    if (!*(v3 + 1608))
    {
      break;
    }

    v39 = sub_10000A540(v37, @"CARPLAY_UUID");
    if (v39)
    {
      v40 = *(v3 + 1616);
      if (v40)
      {
        if (CFStringCompare(v39, v40, 0) == kCFCompareEqualTo)
        {
          v41 = sub_10000A878(v38);
          if (v41 && CFStringGetLength(v41))
          {
            CFArrayAppendValue(v33, v38);
            v54 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v3 = a1;
              [off_100298C40 WFLog:3 message:{"%s: CarPlay: found matching UUID %@ network for ssid %@", "__WiFiManagerCopyPriorityNetworks", *(a1 + 1616), sub_10000A878(v38)}];
            }

            goto LABEL_97;
          }

          v42 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: CarPlay: found matching UUID %@ network but ssid is empty", "__WiFiManagerCopyPriorityNetworks", *(v3 + 1616)}];
          }

          objc_autoreleasePoolPop(v42);
        }
      }
    }

LABEL_71:
    if (v35 == ++v36)
    {
      goto LABEL_72;
    }
  }

  if (!*(v3 + 1664))
  {
    goto LABEL_71;
  }

  v43 = sub_10000A878(v37);
  if (!v43)
  {
    goto LABEL_71;
  }

  v44 = *(v3 + 1672);
  if (!v44 || CFStringCompare(v43, v44, 0))
  {
    goto LABEL_71;
  }

  CFArrayAppendValue(v33, v38);
  v54 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CompanionAssisted: found matching SSID network %@", "__WiFiManagerCopyPriorityNetworks", sub_10000A878(v38), v55}];
  }

LABEL_97:
  objc_autoreleasePoolPop(v54);
LABEL_72:
  if (!CFArrayGetCount(v33))
  {
    if (*(v3 + 1608))
    {
      v45 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: no matching Carplay network found for UUID %@. Reverting to normal mode.", "__WiFiManagerCopyPriorityNetworks", *(v3 + 1616)}];
      }

      objc_autoreleasePoolPop(v45);
      *(v3 + 1608) = 0;
      dispatch_source_set_timer(*(v3 + 1640), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      context = v3;
      v60 = 0xAAAAAA0000000042;
      v61 = 0xAAAAAAAA00000000;
      CFSetApplyFunction(*(v3 + 112), sub_100003B88, &context);
      v46 = *(v3 + 1616);
      if (v46)
      {
        CFRelease(v46);
        *(v3 + 1616) = 0;
      }
    }

    else if (*(v3 + 1664))
    {
      v53 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: no matching autojoin assist network found for SSID %@. Reverting to normal mode. ###STOP_CAAJ", "__WiFiManagerCopyPriorityNetworks", *(v3 + 1672)}];
      }

      objc_autoreleasePoolPop(v53);
      *(v3 + 1664) = 0;
      dispatch_source_set_timer(*(v3 + 1680), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      context = *(v3 + 1672);
      v60 = *(v3 + 1688);
      sub_1001477C4();
    }

    if (v33)
    {
      CFRelease(v33);
      v33 = 0;
    }
  }

  *(v3 + 264) = v33;
LABEL_2:
  context = v3;
  v60 = 0xAAAAAAAA00000003;
  v61 = 0;
  v62 = 1;
  v63 = 0;
  CFSetApplyFunction(*(v3 + 112), sub_100003B88, &context);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t sub_10007393C(void *a1, const __CFString *a2, const void *a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = sub_100017CE4(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (!a4)
  {
    if (sub_10014A48C(v7))
    {
      v9 = sub_10000D83C("__WiFiManagerSetProperty");
      goto LABEL_7;
    }

    return 0;
  }

  v9 = 0;
LABEL_7:
  if (a3)
  {
    v10 = SCPreferencesSetValue(v8, a2, a3);
  }

  else
  {
    if (!SCPreferencesGetValue(v8, a2))
    {
      v11 = 1;
      if (a4)
      {
        return v11;
      }

      goto LABEL_17;
    }

    v10 = SCPreferencesRemoveValue(v8, a2);
  }

  v11 = v10;
  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (off_100298C40)
    {
      v14 = SCError();
      [v13 WFLog:4 message:{"SCPreferencesSetValue() %s key=%@ value=%@", SCErrorString(v14), a2, a3}];
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  if (!a4)
  {
LABEL_17:
    v11 = sub_1000587F4(v8, v11);
  }

  return v11;
}

void sub_100073A68(uint64_t a1)
{
  if (*(a1 + 920) == 2)
  {
    v13 = v1;
    v14 = v2;
    context = a1;
    v9 = 0xAAAAAAAA00000030;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
    if (v11 || sub_10007C13C(a1))
    {
      v4 = objc_autoreleasePoolPush();
      v5 = off_100298C40;
      if (off_100298C40)
      {
        context = a1;
        v9 = 0xAAAAAAAA00000030;
        v11 = 0;
        v12 = 0;
        v10 = 0;
        CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
        if (v11)
        {
          v6 = "WoW";
        }

        else
        {
          v6 = "LPAS";
        }

        [v5 WFLog:3 message:{"%s Enabled, Skip Disassocation", v6}];
      }

      objc_autoreleasePoolPop(v4);
      *(a1 + 920) = 0;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Disassociation timer fired.  Disassociating."];
      }

      objc_autoreleasePoolPop(v7);
      *(a1 + 920) = 3;
      sub_10000D4C0(a1, 0);
      sub_100074AB8(a1, "__WiFiManagerDisassociationTimerCallback", 13661);
    }
  }
}

void sub_100073BCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Diagnostics timer fired. Diagnosing."];
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 2112) >= 1)
  {
    v3 = *(a1 + 2096);
    v4 = dispatch_time(0, (*(a1 + 2104) * 1000000000.0));
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  context[0] = a1;
  context[1] = 0xAAAAAAAA00000015;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_100073C9C(uint64_t a1)
{
  kdebug_trace();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: did not connect to Carplay network. Reverting to regular mode", "__WiFiManagerCarplayTimeout"}];
  }

  objc_autoreleasePoolPop(v2);

  sub_100085E20(a1, 0, 0);
}

void sub_100073D38(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: did not connect to companion network in time. Reverting to regular mode, companion RSSI %d, Channel %d", "__WiFiManagerCompanionAssistedAJTimeout", *(a1 + 1688), *(a1 + 1692)}];
  }

  objc_autoreleasePoolPop(v2);
  v10 = *(a1 + 1672);
  v11 = *(a1 + 1688);
  sub_1001477C4();
  if (!*(a1 + 2443))
  {
    sub_10016B768();
    goto LABEL_9;
  }

  context[0] = a1;
  context[1] = 0xAAAAAAAA00000032;
  v13 = 0;
  v14 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  v3 = *(a1 + 1688);
  if (v13)
  {
    if (v3 <= -56)
    {
      goto LABEL_9;
    }
  }

  else if (v3 < -55 || *(a1 + 1692) > 14)
  {
    goto LABEL_9;
  }

  v5 = sub_100020030(a1);
  v6 = v5;
  if (v5 && CFArrayGetCount(v5))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    v8 = objc_autoreleasePoolPush();
    if (ValueAtIndex)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Gizmo didn't join Companion's network, triggering CoreCapture", "__WiFiManagerCompanionAssistedAJTimeout"}];
      }

      objc_autoreleasePoolPop(v8);
      sub_1000D56CC(ValueAtIndex, @"TriggerCoreCapture");
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: device manager is null", "__WiFiManagerCompanionAssistedAJTimeout"}];
      }

      objc_autoreleasePoolPop(v8);
    }

LABEL_27:
    CFRelease(v6);
    goto LABEL_9;
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: invalid device managers info", "__WiFiManagerCompanionAssistedAJTimeout"}];
  }

  objc_autoreleasePoolPop(v9);
  if (v6)
  {
    goto LABEL_27;
  }

LABEL_9:
  if (*(a1 + 2328) == 1)
  {
    sub_10000D4C0(a1, 1);
  }

  else
  {
    *(a1 + 1664) = 0;
    sub_10015EFB0(a1, 0, 0);
    v4 = *(a1 + 1672);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 1672) = 0;
    }

    sub_100070E8C(v4, 2, a1);
    sub_100072D44(a1);
    sub_1000731D0(a1, *(a1 + 232));
  }
}

void sub_100073F90(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: disassociation timer fired", "__WiFiManagerSessionBasedDisassociationTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  if (a1)
  {
    if (*(a1 + 1752))
    {
      sub_10015AC04();
      v4 = v3;
      v5 = objc_autoreleasePoolPush();
      if (v4)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: diassociating to %@ application is no longer active", "__WiFiManagerSessionBasedDisassociationTimerCallback", sub_10000A878(*(a1 + 1752))}];
        }

        objc_autoreleasePoolPop(v5);
        sub_100074AB8(a1, "__WiFiManagerSessionBasedDisassociationTimerCallback", 17968);
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no longer associated to %@, not disassociating", "__WiFiManagerSessionBasedDisassociationTimerCallback", sub_10000A878(*(a1 + 1752))}];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    else
    {
      sub_10016B7C8();
    }
  }

  else
  {
    sub_10016B834();
  }

  sub_10008FFE4(a1);
}

void sub_1000740C8(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4)
{
  HIDWORD(v89) = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100021720(a1);
  if (!a1)
  {
    sub_10016B960();
    if (!v9)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  LODWORD(v89) = 0;
  v10 = *(a1 + 2178);
  v11 = objc_autoreleasePoolPush();
  v12 = off_100298C40;
  if (v10 == a2)
  {
    if (off_100298C40)
    {
      v73 = "WiFiManagerSetUserAutoJoinState";
      v74 = a2;
      [off_100298C40 WFLog:3 message:"%s: current state is already %d"];
    }

    objc_autoreleasePoolPop(v11);
    v14 = a3 == 8 || (a3 - 1) < 3;
    if (!a2 || !v14)
    {
      if (a2 || !v9)
      {
        goto LABEL_87;
      }

      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: state is disabled while connected to network %@", "WiFiManagerSetUserAutoJoinState", v9}];
      }

      objc_autoreleasePoolPop(v15);
      sub_100074AB8(a1, "WiFiManagerSetUserAutoJoinState", 24434);
LABEL_44:
      if (sub_100018E90(a1, @"UserAutoJoinAutomaticEnablingDisabled", 0))
      {
        v30 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: automatic re-enabling is disabled", "WiFiManagerSetUserAutoJoinState"}];
        }

        objc_autoreleasePoolPop(v30);
        if (!v9)
        {
          goto LABEL_89;
        }

LABEL_88:
        CFRelease(v9);
        goto LABEL_89;
      }

      if ([*(a1 + 1792) isAuthorized])
      {
        v31 = [*(a1 + 1792) latestLocation];
        v32 = [WiFiLocationManager isLocationValid:v31 uptoSeconds:1 isHighAccuracy:60.0];
        v33 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: location update %@ isValid %d", "WiFiManagerSetUserAutoJoinState", v31, v32 != 0}];
        }

        objc_autoreleasePoolPop(v33);
        if (v32)
        {
          v34 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: disabled location for user auto join", "WiFiManagerSetUserAutoJoinState"}];
          }

          objc_autoreleasePoolPop(v34);
          *(a1 + 2184) = [v31 copy];
          *(a1 + 2176) = 0;
          v35 = [NSKeyedArchiver archivedDataWithRootObject:v31];
          if (v35)
          {
            v36 = v35;
            sub_10007393C(a1, @"UserAutoJoinDisabledLoc", v35, 0);
            sub_10007393C(a1, @"UserAutoJoinLocationMetric", v36, 0);
          }

          else
          {
            v47 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: failed to create archive of location", "WiFiManagerSetUserAutoJoinState"}];
            }

            objc_autoreleasePoolPop(v47);
          }
        }

        else
        {
          LODWORD(v89) = 1;
          v38 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: requesting high accuracy location", "WiFiManagerSetUserAutoJoinState"}];
          }

          objc_autoreleasePoolPop(v38);
          *(a1 + 2176) = 1;
          [*(a1 + 1792) requestHighAccuracyLocationUpdate];
        }
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: wifi not authroized for location services", "WiFiManagerSetUserAutoJoinState"}];
        }

        objc_autoreleasePoolPop(v37);
        *(a1 + 2177) = 1;
        LODWORD(v89) = 2;
      }

      v48 = objc_alloc_init(NSDate);
      v49 = sub_10014A684(v48, 5, 0, 0);
      sub_10007393C(a1, @"UserAutoJoinDisableTimestamp", v49, 0);
      v50 = *(a1 + 2192);
      if (v50)
      {
        CFRelease(v50);
      }

      *(a1 + 2192) = v49;
      v51 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: date to enable user auto join: %@", "WiFiManagerSetUserAutoJoinState", v49}];
      }

      objc_autoreleasePoolPop(v51);
      if (!v9)
      {
        goto LABEL_85;
      }

      v52 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: connected to %@, disabling network from auto join until %@", "WiFiManagerSetUserAutoJoinState", sub_10000A878(v9), v49}];
      }

      objc_autoreleasePoolPop(v52);
      v53 = *(a1 + 224);
      if (v53)
      {
        Count = CFArrayGetCount(*(a1 + 224));
        if (Count)
        {
          v55 = Count;
          v56 = CFGetTypeID(v9);
          if (v56 == sub_10009D190())
          {
            v97.location = 0;
            v97.length = v55;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v53, v97, v9);
            if (FirstIndexOfValue != -1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 224), FirstIndexOfValue);
              if (sub_10001CF90(ValueAtIndex))
              {
                v79 = v48;
                v81 = v8;
                v83 = v49;
                sub_10009FF90(v9, v49);
                sub_1000A0060(v9, 0, @"UserAutoJoin");
                sub_100081EDC(a1, v9, 1);
                v60 = *(a1 + 232);
                v61 = CFArrayGetCount(v60);
                if (v61 >= 1)
                {
                  v62 = v61;
                  for (i = 0; i != v62; ++i)
                  {
                    v64 = CFArrayGetValueAtIndex(v60, i);
                    if (v64)
                    {
                      v65 = v64;
                      v66 = sub_10001B368(v64);
                      if (v66)
                      {
                        v67 = v66;
                        v68 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
                        v69 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

                        v70 = (v68 & 0xFFFFFFFFFFFFFFFDLL) != 1;
                        v71 = v69 != 1;
                      }

                      else
                      {
                        v70 = 1;
                        v71 = 1;
                      }

                      if (sub_10000A540(v65, @"WiFiNetworkAttributeIsPublic") && ([v9 isEqual:v65] & 1) == 0 && sub_10009F418(v65) == 0 && v70 && v71)
                      {
                        v72 = objc_autoreleasePoolPush();
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: disabling network %@ from auto join until %@", "WiFiManagerSetUserAutoJoinState", v65, v83}];
                        }

                        objc_autoreleasePoolPop(v72);
                        sub_10009FF90(v65, v83);
                        sub_1000A0060(v65, 0, @"UserAutoJoin");
                        sub_100081EDC(a1, v65, 1);
                      }
                    }
                  }
                }

                sub_100159190();
                v48 = v79;
                v8 = v81;
              }

              else
              {
                v59 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s network has auto join disabled, skipping disabled until date", "WiFiManagerSetUserAutoJoinState"}];
                }

                objc_autoreleasePoolPop(v59);
              }

              goto LABEL_85;
            }
          }

          else
          {
            sub_10016B8A0();
          }
        }
      }

      sub_10016B900();
LABEL_85:
      if (v48)
      {
        CFRelease(v48);
      }

LABEL_87:
      if (!v9)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = off_100298C40;
    if (off_100298C40)
    {
      v74 = sub_100087140(a3);
      v75 = a3;
      v73 = "WiFiManagerSetUserAutoJoinState";
      [v40 WFLog:3 message:"%s: checking for networks disabled due to trigger %@ (%d)"];
    }

    objc_autoreleasePoolPop(v39);
    sub_100159190();
    sub_100159340(a1, 1, v41, v42, v43, v44, v45, v46, v73, v74, v75, v76, v77, v78, v80, v82, context, v85, v86, v87, v88, v89, *buf, *&buf[8]);
    if (v9)
    {
      goto LABEL_88;
    }
  }

  else
  {
    if (off_100298C40)
    {
      v75 = sub_100087140(a3);
      v76 = a3;
      v73 = "WiFiManagerSetUserAutoJoinState";
      v74 = a2;
      [v12 WFLog:3 message:"%s: user auto join state %d trigger %@ (%d)"];
    }

    objc_autoreleasePoolPop(v11);
    if (a4)
    {
      if (*(a1 + 2280))
      {
        CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
        if (CTGreenTeaOsLogHandle)
        {
          v17 = CTGreenTeaOsLogHandle;
          if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
          {
            v18 = "yes";
            *buf = 138413314;
            *&buf[4] = a4;
            *&buf[14] = "com.apple.wifi.manager";
            *&buf[12] = 2080;
            if (!a2)
            {
              v18 = "no";
            }

            v91 = 2080;
            v92 = "wifid";
            v93 = 2080;
            v94 = "WiFiManagerSetUserAutoJoinState";
            v95 = 2080;
            v96 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "<%@>[%s][%s]:[%s]WLAN enabled..%s", buf, 0x34u);
          }
        }
      }
    }

    v19 = &kCFBooleanFalse;
    if (a2)
    {
      v19 = &kCFBooleanTrue;
    }

    sub_10007393C(a1, @"UserAutoJoinState", *v19, 0);
    *(a1 + 2178) = a2;
    context = a1;
    v85 = 0xAAAAAAAA00000047;
    v86 = &v89 + 4;
    v87 = &v89;
    v88 = a2;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v89 + 4);
    CFDictionarySetValue(Mutable, @"trigger", v21);
    *buf = 0xAAAAAAAAAAAAAAAALL;
    *&buf[8] = Mutable;
    buf[0] = a2;
    CFSetApplyFunction(*(a1 + 144), sub_100093DD0, buf);
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    if (v21)
    {
      CFRelease(v21);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (!a2)
    {
      goto LABEL_44;
    }

    sub_100019400(a1, @"UserAutoJoinLocStateMetric", v89);
    if (![*(a1 + 1792) isAuthorized])
    {
      LODWORD(v89) = 2;
    }

    *(a1 + 2176) = 0;
    v22 = *(a1 + 2184);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 2184) = 0;
    }

    v23 = *(a1 + 2192);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 2192) = 0;
    }

    sub_10007393C(a1, @"UserAutoJoinDisableTimestamp", 0, 0);
    sub_10007393C(a1, @"UserAutoJoinDisabledLoc", 0, 0);
    if (HIDWORD(v89) != 4)
    {
      sub_100159340(a1, 1, v24, v25, v26, v27, v28, v29, v73, v74, v75, v76, v77, v78, v80, v82, context, v85, v86, v87, v88, v89, *buf, *&buf[8]);
    }

    sub_100019400(a1, @"UserAutoJoinSecurityTypeMetric", 0);
    if (v9)
    {
      goto LABEL_88;
    }
  }

LABEL_89:
  objc_autoreleasePoolPop(v8);
}

void sub_100074AB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v7 = "";
    if (a2)
    {
      v7 = a2;
    }

    [off_100298C40 WFLog:3 message:{"asked to Disassociate by <%s:%d> \n", v7, a3}];
  }

  objc_autoreleasePoolPop(v6);
  context[0] = a1;
  context[1] = 0xAAAAAAAA0000000FLL;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_100074B6C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Posting hardware failure status in WiFiManagerCreate"];
  }

  objc_autoreleasePoolPop(v2);
  v3 = sub_10007C430(*(a1 + 32));

  sub_10007C4E4(v3);
}

void sub_100074BD4(void *a1)
{
  v1 = sub_10007C430(a1);

  sub_10007C4E4(v1);
}

uint64_t sub_100074BFC(uint64_t a1, int a2)
{
  v12 = a2;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: entering", "WiFiManagerOpen"}];
  }

  objc_autoreleasePoolPop(v4);
  if (a1)
  {
    v5 = 1;
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 1;
      *(a1 + 20) = a2;
      context[0] = a1;
      context[1] = 0xAAAAAAAA00000000;
      context[2] = &v12;
      v10 = 1;
      v11 = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
      v6 = *(a1 + 32);
      if (v6)
      {
        sub_100074D14(a1, v6, *(a1 + 40));
      }

      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiManagerOpen"}];
      }

      objc_autoreleasePoolPop(v7);
      return v10;
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

void sub_100074D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: entering", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v7);
  if (a1)
  {
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;
    sub_1000587E8(a2);
    if (*(a1 + 16))
    {
      [*(a1 + 1104) activate];
      [*(a1 + 1112) activate];
      sub_100072D44(a1);
      sub_1000731D0(a1, *(a1 + 232));
      *(a1 + 96) = sub_1000A7E80(*(a1 + 88), a2);
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : DEBUG buddy completed check is done. result is : <%hhu>", "WiFiManagerScheduleWithQueue", -[WiFiUserInteractionMonitor isSetupCompleted](+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor, "sharedInstance"), "isSetupCompleted")}];
      }

      objc_autoreleasePoolPop(v8);
      if ([+[WiFiUserInteractionMonitor isSetupCompleted]&& !*(a1 + 496) && MKBUserUnlockedSinceBoot() == 1 sharedInstance]
      {
        *(a1 + 496) = 1;
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : kWiFiPrivateMacFirstUnlockAfterSWUpgrade is : <%hhu>", "WiFiManagerScheduleWithQueue", *(a1 + 496)}];
        }

        objc_autoreleasePoolPop(v9);
      }

      [*(a1 + 1792) registerCallbackFunctionPtr:sub_1000768F0 withContext:a1];
      if (*(a1 + 120) != 7)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100076AC8;
        block[3] = &unk_10025EAD8;
        block[4] = a1;
        dispatch_async(qword_100298C50, block);
      }

      [+[WiFiManagerAnalytics sharedInstance](WiFiManagerAnalytics setWiFiManagerQueue:"setWiFiManagerQueue:", *(a1 + 32)];
      [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_10002B05C, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, a1, sub_100076EC0, @"com.apple.corewifi.deviceDiscovered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      sub_100076F74(a1);
      if (objc_opt_class())
      {
        v12 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(v12, a1, sub_100077060, FAFamilyUpdateNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      if (MKBUserUnlockedSinceBoot())
      {
        v13 = MKBGetDeviceLockState();
        sub_10002B170(a1, v13 == 1, 1);
        if (v13 != 1)
        {
          sub_100125E84(*(a1 + 1536));
        }
      }

      else
      {
        sub_10002B170(a1, 1, 1);
      }

      sub_10006B32C(a1);
      v15 = *(a1 + 32);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100077090;
      handler[3] = &unk_10025F5D0;
      handler[4] = a1;
      notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", (a1 + 872), v15, handler);
      sub_10010DE64();
      v16 = *(a1 + 32);
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_1000770A0;
      v104[3] = &unk_10025F5D0;
      v104[4] = a1;
      notify_register_dispatch("com.apple.iokit.hid.displayStatus", (a1 + 824), v16, v104);
      sub_1000770B4(a1, 1);
      v17 = *(a1 + 32);
      v103[0] = _NSConcreteStackBlock;
      v103[1] = 3221225472;
      v103[2] = sub_100077384;
      v103[3] = &unk_10025F5D0;
      v103[4] = a1;
      notify_register_dispatch("com.apple.symptoms.celloutrankrecommendation", (a1 + 2544), v17, v103);
      if (!notify_is_valid_token(*(a1 + 2544)))
      {
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"Failed to notify_register_dispatch com.apple.symptoms.celloutrankrecommendation"];
        }

        objc_autoreleasePoolPop(v18);
      }

      sub_100077390(a1, 1);
      v19 = objc_autoreleasePoolPush();
      v20 = [[WiFiBatteryManager alloc] initWithContext:a1];
      *(a1 + 2552) = v20;
      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (v20)
        {
          v22 = "%s: WiFiBatteryMgmt batteryManager alloced and inited ";
        }

        else
        {
          v22 = "%s: WiFiBatteryMgmt No Battery Power Manager support from CoreOS. WiFi will default to full throttle.";
        }

        [off_100298C40 WFLog:3 message:{v22, "WiFiManagerScheduleWithQueue"}];
      }

      objc_autoreleasePoolPop(v21);
      objc_autoreleasePoolPop(v19);
      context.version = 0;
      memset(&context.retain, 0, 24);
      context.info = a1;
      v23 = SCDynamicStoreCreate(kCFAllocatorDefault, @"WiFiManager", sub_100166478, &context);
      *(a1 + 80) = v23;
      if (v23)
      {
        sub_1001666E8(a1);
        if (SCDynamicStoreSetDispatchQueue(*(a1 + 80), *(a1 + 32)))
        {
          v24 = *(a1 + 80);
          if (SCDynamicStoreSetDisconnectCallBack())
          {
            v25 = *(a1 + 80);
            sub_100166478();
            [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
            [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
            if (*(a1 + 928))
            {
              goto LABEL_61;
            }

            v26 = IONotificationPortCreate(dword_1002985A0);
            *(a1 + 928) = v26;
            if (!v26)
            {
              sub_10016BD94();
              goto LABEL_128;
            }

            v27 = IOServiceAddMatchingNotification(v26, "IOServiceMatched", &off_100282808, sub_1000774C8, a1, (a1 + 940));
            if (v27)
            {
              sub_10016B9CC();
              goto LABEL_128;
            }

            sub_1000774C8(v27, *(a1 + 940));
            v28 = *(a1 + 928);
            v29 = CFRetain(&off_100282858);
            if (IOServiceAddMatchingNotification(v28, "IOServiceMatched", v29, sub_100077624, a1, (a1 + 936)))
            {
              sub_10016BA2C();
              goto LABEL_128;
            }

            sub_100077624(a1, *(a1 + 936));
            v30 = *(a1 + 928);
            v31 = IOServiceNameMatching("AppleWLANDriver");
            v32 = IOServiceAddMatchingNotification(v30, "IOServiceMatched", v31, sub_1000776C0, a1, (a1 + 952));
            if (v32)
            {
              v33 = v32;
              v34 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: IOServiceAddMatchingNotification kIOMatchedNotification for %s failed (%d)!.", "WiFiManagerScheduleWithQueue", "AppleWLANDriver", v33}];
              }

              objc_autoreleasePoolPop(v34);
            }

            sub_1000776C0(a1, *(a1 + 952));
            v35 = *(a1 + 928);
            v36 = IOServiceNameMatching("AppleWLANDriver");
            v37 = IOServiceAddMatchingNotification(v35, "IOServiceTerminate", v36, sub_100077E7C, a1, (a1 + 956));
            if (v37)
            {
              v38 = v37;
              v39 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: IOServiceAddMatchingNotification kIOTerminatedNotification for %s failed (%d)!.", "WiFiManagerScheduleWithQueue", "AppleWLANDriver", v38}];
              }

              objc_autoreleasePoolPop(v39);
            }

            sub_100077E7C(a1, *(a1 + 956));
            v40 = *(a1 + 928);
            v41 = IOServiceNameMatching("AppleSunriseHALDevice");
            v42 = IOServiceAddMatchingNotification(v40, "IOServiceFirstMatch", v41, sub_100077FA8, a1, (a1 + 944));
            v43 = objc_autoreleasePoolPush();
            if (!v42)
            {
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: IOServiceAddMatchingNotification Success!.", "WiFiManagerScheduleWithQueue"}];
              }

              objc_autoreleasePoolPop(v43);
              sub_100077FA8(a1, *(a1 + 944));
              v44 = *(a1 + 928);
              v45 = IOServiceMatching("IOPMPowerSource");
              if (IOServiceAddMatchingNotification(v44, "IOServiceFirstMatch", v45, sub_100078058, a1, (a1 + 968)))
              {
                sub_10016BA8C();
              }

              else
              {
                sub_100078058(a1, *(a1 + 968));
                if (!sub_10007809C(a1))
                {
                  goto LABEL_61;
                }

                v46 = *(a1 + 928);
                v47 = IOServiceMatching("IOUSBDevice");
                v48 = IOServiceAddMatchingNotification(v46, "IOServiceFirstPublish", v47, sub_100078110, a1, (a1 + 992));
                if (v48 || (sub_100078110(a1, *(a1 + 992)), v49 = *(a1 + 928), v50 = IOServiceMatching("IOUSBDevice"), v48 = IOServiceAddMatchingNotification(v49, "IOServiceTerminate", v50, sub_1000783C4, a1, (a1 + 996)), v48))
                {
                  sub_10016BAEC(v48);
                }

                else
                {
                  sub_1000783C4(a1, *(a1 + 996));
                  v51 = IOServiceMatching("IOPortTransportState");
                  [(__CFDictionary *)v51 setObject:&off_1002826B8 forKey:@"IOPropertyMatch"];
                  v52 = IOServiceMatching("IOPort");
                  [(__CFDictionary *)v52 setObject:&off_1002828F8 forKey:@"IOPropertyMatch"];
                  [(__CFDictionary *)v51 setObject:v52 forKey:@"IOParentMatch"];
                  v53 = *(a1 + 928);
                  if (v51)
                  {
                    v54 = CFRetain(v51);
                  }

                  else
                  {
                    v54 = 0;
                  }

                  v55 = IOServiceAddMatchingNotification(v53, "IOServiceMatched", v54, sub_10002EFBC, a1, (a1 + 1000));
                  if (!v55)
                  {
                    sub_10002EFBC(a1, *(a1 + 1000));
LABEL_61:
                    if (!*(a1 + 1008))
                    {
                      v56 = IORegisterForSystemPower(a1, (a1 + 1008), sub_10002F438, (a1 + 1016));
                      *(a1 + 1020) = v56;
                      if (!v56)
                      {
                        v57 = objc_autoreleasePoolPush();
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:4 message:{"%s: IORegisterForSystemPower failed", "WiFiManagerScheduleWithQueue"}];
                        }

                        objc_autoreleasePoolPop(v57);
                      }
                    }

                    if (*(a1 + 1020) && *(a1 + 1008))
                    {
                      IONotificationPortSetDispatchQueue(*(a1 + 928), *(a1 + 32));
                      IONotificationPortSetDispatchQueue(*(a1 + 1008), *(a1 + 32));
                    }

                    v58 = *(a1 + 888);
                    if (v58)
                    {
                      dispatch_activate(v58);
                    }

                    v59 = *(a1 + 2096);
                    if (v59)
                    {
                      dispatch_activate(v59);
                    }

                    *(a1 + 2088) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    *(a1 + 2120) = CFStringCreateWithCString(kCFAllocatorDefault, "www.apple.com", 0x600u);
                    *(a1 + 2128) = xmmword_1001CE350;
                    *(a1 + 2144) = 0x4008000000000000;
                    if (SCPreferencesSetDispatchQueue(*(a1 + 1064), *(a1 + 32)))
                    {
                      if (SCPreferencesSetDispatchQueue(*(a1 + 1072), *(a1 + 32)))
                      {
                        if (SCPreferencesSetDispatchQueue(*(a1 + 1096), *(a1 + 32)))
                        {
                          if (SCPreferencesSetDispatchQueue(*(a1 + 1088), *(a1 + 32)))
                          {
                            if (SCPreferencesSetDispatchQueue(*(a1 + 1080), *(a1 + 32)))
                            {
                              if (&_BTSessionAttachWithQueue)
                              {
                                context.version = sub_100078848;
                                v60 = BTSessionAttachWithQueue();
                                if (v60)
                                {
                                  v61 = v60;
                                  v62 = objc_autoreleasePoolPush();
                                  if (off_100298C40)
                                  {
                                    [off_100298C40 WFLog:4 message:{"%s: Unable to attach to Mobile Bluetooth result=0x%X", "WiFiManagerScheduleWithQueue", v61}];
                                  }

                                  objc_autoreleasePoolPop(v62);
                                }
                              }

                              v63 = *(a1 + 2760);
                              if (v63)
                              {
                                v102[0] = _NSConcreteStackBlock;
                                v102[1] = 3221225472;
                                v102[2] = sub_100078B50;
                                v102[3] = &unk_10025EAD8;
                                v102[4] = a1;
                                [v63 setImsRegistrationStatusChangedHandler:v102];
                                v64 = *(a1 + 2760);
                                v101[0] = _NSConcreteStackBlock;
                                v101[1] = 3221225472;
                                v101[2] = sub_100078BE8;
                                v101[3] = &unk_10025EAD8;
                                v101[4] = a1;
                                [v64 setCellularDataStatusChangedHandler:v101];
                                v65 = *(a1 + 2760);
                                v100[0] = _NSConcreteStackBlock;
                                v100[1] = 3221225472;
                                v100[2] = sub_100078BF0;
                                v100[3] = &unk_10025EAD8;
                                v100[4] = a1;
                                [v65 setCellularFallbackStatusChangedHandler:v100];
                              }

                              else if (&CTTelephonyCenterGetDefault)
                              {
                                v99[0] = _NSConcreteStackBlock;
                                v99[1] = 3221225472;
                                v99[2] = sub_100078BF8;
                                v99[3] = &unk_10025EAD8;
                                v99[4] = a1;
                                dispatch_async(qword_100298C50, v99);
                              }

                              v98[0] = a1;
                              v98[1] = 0xAAAAAAAA00000002;
                              v98[2] = 0;
                              v98[3] = 1;
                              v98[4] = 0;
                              CFSetApplyFunction(*(a1 + 112), sub_100003B88, v98);
                              if (*(a1 + 324) == 1)
                              {
                                v66 = objc_autoreleasePoolPush();
                                if (off_100298C40)
                                {
                                  [off_100298C40 WFLog:3 message:{"%s: registering with coex manager", "WiFiManagerScheduleWithQueue"}];
                                }

                                objc_autoreleasePoolPop(v66);
                                sub_100127DE4(a1);
                              }

                              v67 = *(a1 + 1416);
                              if (v67)
                              {
                                dispatch_activate(v67);
                              }

                              v68 = *(a1 + 1440);
                              if (v68)
                              {
                                dispatch_activate(v68);
                              }

                              v69 = *(a1 + 2592);
                              if (v69)
                              {
                                dispatch_activate(v69);
                              }

                              if (&CTTelephonyCenterGetDefault)
                              {
                                sub_100042AB8(a1, [+[WiFiUserInteractionMonitor ctServerConnection] sharedInstance];
                                sub_100042368(a1, [+[WiFiUserInteractionMonitor ctServerConnection] sharedInstance];
                                sub_100042944(a1, [+[WiFiUserInteractionMonitor ctServerConnection] sharedInstance];
                              }

                              sub_1001186C0(*(a1 + 1552), sub_100035B5C, a1);
                              sub_10011858C(*(a1 + 1552), *(a1 + 32));
                              [*(a1 + 1584) scheduleWithQueue:*(a1 + 32)];
                              sub_100078DB8(a1);
                              v70 = *(a1 + 1592);
                              if (v70)
                              {
                                dispatch_activate(v70);
                              }

                              v71 = *(a1 + 1640);
                              if (v71)
                              {
                                dispatch_activate(v71);
                              }

                              v72 = *(a1 + 1680);
                              if (v72)
                              {
                                dispatch_activate(v72);
                              }

                              v73 = *(a1 + 472);
                              if (v73)
                              {
                                dispatch_activate(v73);
                              }

                              v74 = *(a1 + 1776);
                              if (v74)
                              {
                                dispatch_activate(v74);
                              }

                              *(a1 + 1824) = [[WiFiSoftErrorManager alloc] initWithWiFiManager:a1 queue:*(a1 + 32)];
                              *(a1 + 1832) = sub_100078EF0(a1, @"SlowWiFi");
                              *(a1 + 1840) = sub_100078EF0(a1, @"Dps");
                              *(a1 + 1856) = sub_100078EF0(a1, @"CountryCode");
                              *(a1 + 1864) = [[NSMutableString alloc] initWithString:&stru_1002680F8];
                              v75 = sub_100079008(a1, @"SoftErrorUIReportingTimeout", 86400.0);
                              if (sub_1001187D8() || [*(a1 + 1128) containsObject:@"wlan.dk=1"])
                              {
                                v76 = 200;
                                v77 = 12;
                              }

                              else
                              {
                                v76 = 100;
                                v77 = 2;
                              }

                              if (v75 < 0.0)
                              {
                                v75 = 86400.0;
                              }

                              v107[0] = @"maxUIActions";
                              context.version = [NSNumber numberWithInteger:v77];
                              v107[1] = @"intervalForMaxUIActions";
                              context.info = [NSNumber numberWithDouble:v75];
                              v107[2] = @"maxOccurrences";
                              v78 = [NSNumber numberWithInteger:v76];
                              v107[3] = @"metricSubmissionSamplingRate";
                              context.retain = v78;
                              context.release = &off_1002811A0;
                              *(a1 + 1936) = [[WiFiSoftError alloc] initWithName:@"Dext Crashed" andParams:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &context, v107, 4)}];
                              *(a1 + 2784) = sub_100078EF0(a1, @"Missing Password");
                              *(a1 + 1872) = [WiFiDriverTriggeredTTR sharedWiFiDriverTriggeredTTRManagerwithStringRef:@"Driver triggered TTR" withInterval:sub_100079008(a1, @"SoftErrorUIReportingTimeout", 86400.0)];
                              [*(a1 + 2224) scheduleWithQueue:*(a1 + 32)];
                              [*(a1 + 2224) scheduleHistoricNetworkPerformanceFeedSync];
                              [*(a1 + 2224) schedule3BarsObserver];
                              [*(a1 + 2224) scheduleOutdatedListEntriesCleanUp];
                              [*(a1 + 2224) scheduleWCADownloadObserver];
                              v97[0] = _NSConcreteStackBlock;
                              v97[1] = 3221225472;
                              v97[2] = sub_100079078;
                              v97[3] = &unk_10025EAD8;
                              v97[4] = a1;
                              dispatch_async(qword_100298C50, v97);
                              *(a1 + 1512) = -1;
                              context.version = _NSConcreteStackBlock;
                              context.info = 3221225472;
                              context.retain = sub_1000939C4;
                              context.release = &unk_10025F5D0;
                              context.copyDescription = a1;
                              notify_register_dispatch("com.apple.backboardd.rawOrientation", (a1 + 1512), qword_100298C50, &context);
                              *(a1 + 64) = sub_1000A45EC(a1, *(a1 + 32), sub_100079224);
                              if (*(a1 + 120) == 1)
                              {
                                *(a1 + 72) = +[WiFiManagerCarSessionMonitor sharedInstance];
                                v96[0] = _NSConcreteStackBlock;
                                v96[1] = 3221225472;
                                v96[2] = sub_1000793F0;
                                v96[3] = &unk_10025EAD8;
                                v96[4] = a1;
                                dispatch_async(qword_100298C50, v96);
                              }

                              v79 = sub_10001769C(a1, @"LocaleTestParams");
                              sub_1001585A8(a1, v79);
                              *(a1 + 2644) = 0;
                              *(a1 + 2640) = -1;
                              *(a1 + 2664) = 0;
                              *(a1 + 2680) = 0;
                              *(a1 + 2672) = 0;
                              v80 = *(a1 + 32);
                              v95[0] = _NSConcreteStackBlock;
                              v95[1] = 3221225472;
                              v95[2] = sub_100079438;
                              v95[3] = &unk_10025F5D0;
                              v95[4] = a1;
                              notify_register_dispatch("com.apple.bluetooth.low-power-mode", (a1 + 2640), v80, v95);
                              if (!byte_100298C78 && objc_opt_class())
                              {
                                v94[0] = _NSConcreteStackBlock;
                                v94[1] = 3221225472;
                                v94[2] = sub_100079D58;
                                v94[3] = &unk_10025EAD8;
                                v94[4] = a1;
                                dispatch_async(qword_100298C50, v94);
                              }

                              [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor registerStateChangeCallback:"registerStateChangeCallback:withCallbackContext:" withCallbackContext:&stru_100260790, a1];
                              [*(a1 + 200) determineAndSetLocale:0];
                              if (_os_feature_enabled_impl())
                              {
                                v81 = objc_alloc_init(CWFNearbyDeviceDiscoveryManager);
                                *(a1 + 1888) = v81;
                                if (v81)
                                {
                                  v93[0] = _NSConcreteStackBlock;
                                  v93[1] = 3221225472;
                                  v93[2] = sub_100158B38;
                                  v93[3] = &unk_1002607B0;
                                  v93[4] = a1;
                                  [v81 setIsNDDAllowed:v93];
                                  v92[0] = _NSConcreteStackBlock;
                                  v92[1] = 3221225472;
                                  v92[2] = sub_100158BF4;
                                  v92[3] = &unk_1002607D0;
                                  v92[4] = a1;
                                  [*(a1 + 1888) setSendNDDRequest:v92];
                                  [*(a1 + 1888) setSendNDDXPCEvent:&stru_100260810];
                                }
                              }

                              if (_os_feature_enabled_impl() && MGGetBoolAnswer())
                              {
                                v82 = objc_autoreleasePoolPush();
                                v83 = sub_10008925C(a1);
                                if (v83)
                                {
                                  v84 = v83;
                                  global_queue = dispatch_get_global_queue(0, 0);
                                  context.version = _NSConcreteStackBlock;
                                  context.info = 3221225472;
                                  context.retain = sub_10009404C;
                                  context.release = &unk_10025F5F8;
                                  context.copyDescription = v84;
                                  v109 = a1;
                                  dispatch_async(global_queue, &context);
                                }

                                objc_autoreleasePoolPop(v82);
                                v86 = CFNotificationCenterGetDarwinNotifyCenter();
                                CFNotificationCenterAddObserver(v86, a1, sub_10002B05C, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
                              }
                            }

                            else
                            {
                              sub_10016BBB4();
                            }
                          }

                          else
                          {
                            sub_10016BC14();
                          }
                        }

                        else
                        {
                          sub_10016BC74();
                        }
                      }

                      else
                      {
                        sub_10016BCD4();
                      }
                    }

                    else
                    {
                      sub_10016BD34();
                    }

                    goto LABEL_128;
                  }

                  sub_10016BB50(v55);
                }
              }

LABEL_128:
              v14 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiManagerScheduleWithQueue"}];
              }

              goto LABEL_130;
            }

            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: Error: IOServiceAddMatchingNotification failed", "WiFiManagerScheduleWithQueue"}];
            }

            v91 = v43;
LABEL_152:
            objc_autoreleasePoolPop(v91);
            goto LABEL_128;
          }

          v87 = objc_autoreleasePoolPush();
          v88 = off_100298C40;
          if (off_100298C40)
          {
            v89 = "Error subscribing to the dynamic store disconnect event.";
            goto LABEL_137;
          }

LABEL_138:
          objc_autoreleasePoolPop(v87);
          sub_10007A07C(a1);
          v90 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: Error: __WiFiManagerRegisterDynamicStore failed", "WiFiManagerScheduleWithQueue"}];
          }

          v91 = v90;
          goto LABEL_152;
        }

        v87 = objc_autoreleasePoolPush();
        v88 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_138;
        }

        v89 = "Error setting dynamic store queue.";
      }

      else
      {
        v87 = objc_autoreleasePoolPush();
        v88 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_138;
        }

        v89 = "Error creating dynamic store.";
      }

LABEL_137:
      [v88 WFLog:4 message:v89];
      goto LABEL_138;
    }

    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: exiting, Error: not open", "WiFiManagerScheduleWithQueue"}];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: exiting, Error: manager NULL", "WiFiManagerScheduleWithQueue"}];
    }
  }

LABEL_130:
  objc_autoreleasePoolPop(v14);
  objc_autoreleasePoolPop(v6);
}

void sub_100076284(uint64_t a1, int a2)
{
  v5 = a2;
  if (a1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      sub_100076304(a1, v3);
    }

    v4[0] = a1;
    v4[1] = 0xAAAAAAAA00000012;
    v4[2] = &v5;
    v4[3] = 1;
    v4[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, v4);
    *(a1 + 16) = 0;
  }
}

void sub_100076304(uint64_t a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: entering", "WiFiManagerUnscheduleFromQueue"}];
  }

  objc_autoreleasePoolPop(v5);
  if (a1)
  {
    if (a2 && (v6 = *(a1 + 32)) != 0)
    {
      if (CFEqual(v6, a2))
      {
        v7 = *(a1 + 32);
        sub_1000A7F38(*(a1 + 88));
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        [*(a1 + 1104) invalidate];
        [*(a1 + 1112) invalidate];
        context[0] = a1;
        context[1] = 0xAAAAAAAA00000011;
        context[2] = 0;
        context[3] = 1;
        context[4] = 0;
        CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
        v8 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
        if (&CTTelephonyCenterGetDefault && v8)
        {
          [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
          _CTServerConnectionUnregisterForNotification();
          [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
          _CTServerConnectionUnregisterForNotification();
          [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
          _CTServerConnectionUnregisterForNotification();
        }

        v9 = *(a1 + 2760);
        if (v9)
        {
          [v9 setImsRegistrationStatusChangedHandler:0];
          [*(a1 + 2760) setCellularDataStatusChangedHandler:0];
          [*(a1 + 2760) setCellularFallbackStatusChangedHandler:0];
        }

        SCPreferencesSetDispatchQueue(*(a1 + 1080), 0);
        SCPreferencesSetDispatchQueue(*(a1 + 1072), 0);
        SCPreferencesSetDispatchQueue(*(a1 + 1096), 0);
        SCPreferencesSetDispatchQueue(*(a1 + 1088), 0);
        SCPreferencesSetDispatchQueue(*(a1 + 1064), 0);
        *(a1 + 1024) = 0;
        sub_10010E1DC();
        v10 = *(a1 + 1776);
        if (v10)
        {
          dispatch_source_cancel(v10);
        }

        v11 = *(a1 + 472);
        if (v11)
        {
          dispatch_source_cancel(v11);
        }

        v12 = *(a1 + 1680);
        if (v12)
        {
          dispatch_source_cancel(v12);
        }

        v13 = *(a1 + 1640);
        if (v13)
        {
          dispatch_source_cancel(v13);
        }

        v14 = *(a1 + 1592);
        if (v14)
        {
          dispatch_source_cancel(v14);
        }

        v15 = *(a1 + 1416);
        if (v15)
        {
          dispatch_source_cancel(v15);
        }

        v16 = *(a1 + 2096);
        if (v16)
        {
          dispatch_source_cancel(v16);
        }

        v17 = *(a1 + 888);
        if (v17)
        {
          dispatch_source_cancel(v17);
        }

        v18 = *(a1 + 1440);
        if (v18)
        {
          dispatch_source_cancel(v18);
        }

        v19 = *(a1 + 2592);
        if (v19)
        {
          dispatch_source_cancel(v19);
        }

        v20 = *(a1 + 824);
        if (v20)
        {
          notify_cancel(v20);
        }

        v21 = *(a1 + 872);
        if (v21)
        {
          notify_cancel(v21);
        }

        sub_10007A07C(a1);
        if (*(a1 + 1020))
        {
          IODeregisterForSystemPower((a1 + 1020));
          IOServiceClose(*(a1 + 1020));
          *(a1 + 1020) = 0;
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"SignificantTimeChangeNotification", 0);
        v23 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(v23, 0, @"com.apple.mobile.keybagd.lock_status", 0);
        if (objc_opt_class())
        {
          v24 = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterRemoveObserver(v24, 0, FAFamilyUpdateNotification, 0);
        }

        sub_10012819C((a1 + 1400));
        if (&_WiFiCloudSyncEngineCreate && *(a1 + 1384))
        {
          WiFiCloudSyncEngineUnScheduleWithQueue();
        }

        sub_100096E44(*(a1 + 48));
        sub_1000A4750(*(a1 + 64));
        if (*(a1 + 120) == 1)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10007A0BC;
          block[3] = &unk_10025EAD8;
          block[4] = a1;
          dispatch_async(qword_100298C50, block);
        }

        sub_10007A0FC(a1);
        sub_100043000(a1, [+[WiFiUserInteractionMonitor ctServerConnection] sharedInstance];
        v25 = *(a1 + 32);
        sub_100118674(*(a1 + 1552));
        if (notify_is_valid_token(*(a1 + 2208)))
        {
          notify_cancel(*(a1 + 2208));
          *(a1 + 2208) = -1;
        }

        [*(a1 + 1584) unscheduleFromQueue:*(a1 + 32)];
        [*(a1 + 2224) unScheduleHistoricNetworkPerformanceFeedSync];
        [*(a1 + 2224) unSchedule3BarsObserver];
        [*(a1 + 2224) unScheduleWCADownloadObserver];
        [*(a1 + 2224) unscheduleFromQueue:*(a1 + 32)];
        [*(a1 + 2352) unscheduleFromQueue:*(a1 + 32)];
        v26 = *(a1 + 2120);
        if (v26)
        {
          CFRelease(v26);
          *(a1 + 2120) = 0;
        }

        [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor unregisterStateChangeCallback:"unregisterStateChangeCallback:", a1];

        if (+[WiFiSoftApStateMonitor sharedInstance])
        {
          [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor resetState];
        }

        *(a1 + 32) = 0;
        v27 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiManagerUnscheduleFromQueue"}];
        }
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: exiting, Error: queue mismatch", "WiFiManagerUnscheduleFromQueue"}];
        }
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: exiting, Error: no queue", "WiFiManagerUnscheduleFromQueue"}];
      }
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: exiting, Error: manager NULL", "WiFiManagerUnscheduleFromQueue"}];
    }
  }

  objc_autoreleasePoolPop(v27);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_10007681C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v4 = 0;
  if (Mutable)
  {
    v5 = Mutable;
    sub_10015855C(a1, Mutable);
    if (CFArrayGetCount(v5) == 2)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt8Type, &valuePtr + 1);
      v7 = CFArrayGetValueAtIndex(v5, 1);
      CFNumberGetValue(v7, kCFNumberSInt8Type, &valuePtr);
      v4 = valuePtr - SHIBYTE(valuePtr);
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v5);
  }

  return v4;
}

void sub_1000768F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: callbackType %@, error %@", "__WiFiManagerLocationManagerCallback", +[WiFiLocationManager getStringOfCallbackType:](WiFiLocationManager, "getStringOfCallbackType:", a1), objc_msgSend(a4, "userInfo")}];
  }

  objc_autoreleasePoolPop(v8);
  if (!a2)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager ref", "__WiFiManagerLocationManagerCallback"}];
    }

    goto LABEL_16;
  }

  if (!a4)
  {
    if (a1 == 1)
    {
      v11 = *(a2 + 32);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100093B2C;
      block[3] = &unk_10025EAD8;
      block[4] = a2;
      dispatch_async(v11, block);
      goto LABEL_17;
    }

    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: ignoring callback", "__WiFiManagerLocationManagerCallback"}];
    }

LABEL_16:
    objc_autoreleasePoolPop(v10);
    goto LABEL_17;
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: errored %@", "__WiFiManagerLocationManagerCallback", a4}];
  }

  objc_autoreleasePoolPop(v9);
  if (a1 == 3 && [a4 code] == 1)
  {
    sub_100088FF4(a2, 0);
  }

LABEL_17:
  objc_autoreleasePoolPop(v7);
}

void sub_100076AC8(uint64_t a1)
{
  v2 = +[WiFiAppStateManager sharedWiFiAppStateManager];
  if (v2)
  {
    *(*(a1 + 32) + 2352) = v2;
    [v2 registerCallbackFunctionPtr:sub_10000CB08 withContext:?];
    if (sub_100076C24(*(a1 + 32)))
    {
      [*(*(a1 + 32) + 2352) registerBundleCallbackFunctionPtr:sub_10000F900 withContext:?];
      [*(*(a1 + 32) + 2352) startMonitoringBundleId:@"com.apple.Preferences"];
    }

    [*(*(a1 + 32) + 2352) registerForegroundAppTrackerFunctionPtr:sub_100006628 withContext:?];
    [*(*(a1 + 32) + 2352) registerAppReporterCallbackFunctionPtr:sub_10001ECAC withContext:?];
    [*(*(a1 + 32) + 2352) registerAppUnregistrationFunctionPtr:sub_100076C50 withContext:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 2352);
    v5 = *(v3 + 32);

    [v4 scheduleWithQueue:v5];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:%d manager->appStateManager is NULL ", "WiFiManagerScheduleWithQueue_block_invoke", 4969}];
    }

    objc_autoreleasePoolPop(v6);
  }
}

uint64_t sub_100076C24(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 2360);
  }

  sub_10016BE60();
  return 0;
}

void sub_100076C50(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = sub_100020110(a1);
    if (v3)
    {
      v4 = v3;
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v5 = 0;
        v21 = v4;
        do
        {
          v23 = v5;
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
          if (ValueAtIndex)
          {
            v7 = ValueAtIndex;
            v8 = sub_1000A1D68(ValueAtIndex);
            v9 = [a2 objectForKeyedSubscript:@"bundleIDs"];
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v25;
              do
              {
                for (i = 0; i != v11; i = i + 1)
                {
                  if (*v25 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  if (v8 && CFStringCompare(v8, *(*(&v24 + 1) + 8 * i), 0) == kCFCompareEqualTo && sub_1000A1E74(v7) == 1)
                  {
                    v14 = sub_10001B368(v7);
                    if (v14 && ((v15 = v14, v16 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")], v17 = objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager, "sharedXPCManager"), "networkOfInterestWorkStateForKnownNetworkProfile:", v15), v15, (v16 & 0xFFFFFFFFFFFFFFFDLL) == 1) || v17 == 1))
                    {
                      v19 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: can't remove network as its type Home or Work", "__WiFiAppStateManagerAppUnregisteredCallbackFunctionPtr"}];
                      }

                      objc_autoreleasePoolPop(v19);
                    }

                    else
                    {
                      v18 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: removing network", "__WiFiAppStateManagerAppUnregisteredCallbackFunctionPtr"}];
                      }

                      objc_autoreleasePoolPop(v18);
                      sub_100081634(a1, v7, 15);
                    }
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
              }

              while (v11);
            }
          }

          v5 = v23 + 1;
          v4 = v21;
        }

        while (v23 + 1 != Count);
      }

      CFRelease(v4);
    }
  }

  else
  {
    sub_10016BFA4();
  }
}

void sub_100076EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [[NSDictionary alloc] initWithDictionary:a5];
  if (a2)
  {
    v7 = *(a2 + 32);
    if (v7)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100092BF4;
      v8[3] = &unk_10025F5F8;
      v8[4] = v6;
      v8[5] = a2;
      dispatch_async(v7, v8);
    }

    else
    {
      sub_10016C0E8();
    }
  }

  else
  {
    sub_10016C154();
  }
}

void sub_100076F74(uint64_t a1)
{
  if (a1)
  {
    if ([+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
    {
      if (*(a1 + 1408))
      {
        *(a1 + 348) = 0;
        v2 = objc_autoreleasePoolPush();
        if (objc_opt_class())
        {
          v3[0] = _NSConcreteStackBlock;
          v3[1] = 3221225472;
          v3[2] = sub_100094870;
          v3[3] = &unk_10025F5F8;
          v3[4] = sub_100089198(a1);
          v3[5] = a1;
          dispatch_async(qword_100298C50, v3);
        }

        objc_autoreleasePoolPop(v2);
      }

      else
      {
        sub_10016C22C();
      }
    }

    else
    {
      sub_10016C1C0();
    }
  }

  else
  {
    sub_10016C298();
  }
}

void sub_100077060(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    sub_100076F74(a2);
  }

  else
  {
    sub_10016C304();
  }
}

void sub_100077090(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_10006B32C(v1);
  }
}

void sub_1000770A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_1000770B4(v1, 0);
  }
}

void sub_1000770B4(uint64_t a1, int a2)
{
  v4 = (a1 + 816);
  v5 = *(a1 + 816);
  if (notify_get_state(*(a1 + 824), (a1 + 816)))
  {
    return;
  }

  if (byte_100298C78)
  {
    v6 = 1;
    *v4 = 1;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *v4;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v6)
  {
    return;
  }

LABEL_7:
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*v4)
    {
      v8 = "ON";
    }

    else
    {
      v8 = "OFF";
    }

    [off_100298C40 WFLog:3 message:{"Device display is %s", v8}];
  }

  objc_autoreleasePoolPop(v7);
  if (!*(a1 + 756))
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Ignoring display state"];
    }

    objc_autoreleasePoolPop(v18);
    return;
  }

  v9 = *(a1 + 1144);
  sub_10002B5D0(a1);
  v10 = *(a1 + 816);
  if (v10)
  {
    if (*(a1 + 832))
    {
      v11 = 1;
    }

    else
    {
      v11 = v5 == v6;
    }

    v12 = !v11;
    v13 = *(a1 + 756);
    if (a2)
    {
      v14 = 3;
    }

    else
    {
      v14 = 4;
    }

    if (v13 == 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    v16 = 1;
    if (v13 == 2)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if ((*(a1 + 800) & 0x11) != 0)
    {
      v16 = 0;
      v9 = *(a1 + 1136);
    }

    sub_10000D4C0(a1, 1);
    if ((*(a1 + 800) & 0xF) != 0)
    {
      sub_10000D278(a1);
    }

    else
    {
      sub_100006910(a1);
    }

    if (v5 != v6)
    {
      *(a1 + 848) = 0;
    }

    goto LABEL_46;
  }

  sub_1000927AC(a1);
  if ((*(a1 + 800) & 0x2A) == 0)
  {
    if (*(a1 + 1184))
    {
      v15 = 0;
      v9 = *(a1 + 1160);
      v16 = 3;
      goto LABEL_45;
    }

    if (!*(a1 + 1168))
    {
      sub_10000D4C0(a1, 0);
    }
  }

  v15 = 0;
  v16 = 1;
LABEL_45:
  v17 = 2;
LABEL_46:
  context[0] = a1;
  context[1] = 0xAAAAAAAA0000006CLL;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  if (v15)
  {
    sub_10000D1F8(a1, v15);
  }

  if (_os_feature_enabled_impl())
  {
    sub_1000084DC(a1);
    if (!v10)
    {
      return;
    }
  }

  else
  {
    sub_10000D0D8(a1, v9, v16);
    if (!v10)
    {
      return;
    }
  }

  if (_os_feature_enabled_impl())
  {
    sub_1000197A4(a1, 19);
  }

  else
  {
    sub_10007A1F4(a1, v17);
  }
}

void sub_100077390(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = (a1 + 2536);
    v5 = *(a1 + 2536);
    if (notify_get_state(*(a1 + 2544), (a1 + 2536)))
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: notify_get_state returned error", "__WiFiManagerSymptomsRecommendationUpdate"}];
      }

      objc_autoreleasePoolPop(v6);
    }

    v7 = *v4;
    if (a2 || v5 != v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v7 & 1;
      if (off_100298C40)
      {
        v10 = "TRUE";
        if (!v9)
        {
          v10 = "FALSE";
        }

        [off_100298C40 WFLog:3 message:{"%s: LQM-WiFi : symptoms cellular outrank recommendation is set to %s (state=0x%llx)", "__WiFiManagerSymptomsRecommendationUpdate", v10, *v4}];
      }

      objc_autoreleasePoolPop(v8);
      context[0] = a1;
      context[1] = 0xAAAAAAAA0000007FLL;
      context[2] = 0;
      context[3] = v9;
      context[4] = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    }
  }

  else
  {
    sub_10016C57C();
  }
}

void sub_1000774C8(uint64_t a1, io_iterator_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Enter", "__WiFiManagerWiFiHardwareHealthCallback"}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(v5, @"WiFiHardwareHealthy", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v8 = CFProperty;
        v9 = CFGetTypeID(CFProperty);
        if (v9 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v8))
          {
            v6 = 1;
          }

          else
          {
            v6 = 2;
          }
        }

        sub_10007C4E4(v6);
        CFRelease(v8);
      }

      else
      {
        sub_10016C5E8();
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Exit", "__WiFiManagerWiFiHardwareHealthCallback"}];
  }

  objc_autoreleasePoolPop(v10);
}

uint64_t sub_100077624(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    do
    {
      if (IORegistryEntryCreateCFProperty(v4, @"IOInterfaceName", kCFAllocatorDefault, 0))
      {
        sub_10016C654();
      }

      else
      {
        sub_10016C698();
      }

      IOObjectRelease(v4);
      result = IOIteratorNext(iterator);
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_1000776C0(uint64_t a1, io_iterator_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ENTER", "__WiFiManagerDriverPublishedCallback"}];
  }

  objc_autoreleasePoolPop(v4);
  if (a1)
  {
    v5 = IOIteratorNext(a2);
    v6 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
    if (v5)
    {
      v7 = v5;
      v42 = a1;
      v43 = a2;
      while (1)
      {
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"service matching:%u", v7}];
        }

        objc_autoreleasePoolPop(v8);
        *(a1 + 1949) = 1;
        v9 = IORegistryEntrySearchCFProperty(v7, "IOService", @"UnexpectedDextTermination", kCFAllocatorDefault, 3u);
        if (v9)
        {
          v10 = v9;
          TypeID = CFBooleanGetTypeID();
          if (TypeID == CFGetTypeID(v10))
          {
            v12 = v7;
            Value = CFBooleanGetValue(v10);
            v14 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: UnexpectedDextTermination: %u, dextCrashedAndRecoveryPending: %u", "__WiFiManagerDriverPublishedCallback", Value != 0, *(a1 + 2648)}];
            }

            objc_autoreleasePoolPop(v14);
            if (*(a1 + 2648) == 1 && Value)
            {
              sub_100169BE0(a1);
              v7 = v12;
            }

            else
            {
              *(a1 + 1950) = 1;
              v7 = v12;
            }
          }

          CFRelease(v10);
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Failed to find property UnexpectedDextTermination", "__WiFiManagerDriverPublishedCallback"}];
          }

          objc_autoreleasePoolPop(v15);
        }

        if (*(a1 + 960))
        {
          v16 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: watchdogMonitor already initialized, reinitializing ...", "__WiFiManagerDriverPublishedCallback"}];
          }

          objc_autoreleasePoolPop(v16);
        }

        *(a1 + 960) = [objc_alloc((v6 + 870)) initWithIOService:v7];
        if (!MGGetBoolAnswer())
        {
          goto LABEL_51;
        }

        connect = 0;
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: ENTER", "__WiFiManagerDownloadOCLAConfiguration"}];
        }

        objc_autoreleasePoolPop(v17);
        if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
        {
          goto LABEL_51;
        }

        v18 = [NSDictionary dictionaryWithContentsOfFile:@"/var/configs/wifi_profile.plist"];
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v20 = IOServiceOpen(v7, mach_task_self_, 0, &connect);
        if (!v20)
        {
          v21 = malloc_type_malloc(0x100CuLL, 0x10000407D34CE72uLL);
          if (v21)
          {
            v22 = v21;
            v44 = v7;
            v23 = [(NSDictionary *)v19 objectForKeyedSubscript:@"Commands"];
            bzero(v22, 0x100CuLL);
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v24 = [v23 countByEnumeratingWithState:&v45 objects:v54 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = 0;
              v27 = *v46;
              while (2)
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v46 != v27)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v29 = [*(*(&v45 + 1) + 8 * i) objectForKeyedSubscript:@"Value"];
                  [v29 bytes];
                  v30 = [v29 length];
                  if (v30 >= 0x100D)
                  {
                    a1 = v42;
                    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_48;
                    }

                    *buf = 136315394;
                    v51 = "__WiFiManagerDownloadOCLAConfiguration";
                    v52 = 2048;
                    v53 = v30;
                    v35 = "%s: Invalid data length %lu\n";
                    v36 = 22;
                    goto LABEL_55;
                  }

                  bzero(v22, 0x100CuLL);
                  __memcpy_chk();
                  *v22 = v26;
                  v31 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: Sending Configuration %u", "__WiFiManagerDownloadOCLAConfiguration", v26}];
                  }

                  objc_autoreleasePoolPop(v31);
                  v32 = IOConnectCallStructMethod(connect, 2u, v22, 0x100CuLL, 0, 0);
                  if (v32)
                  {
                    v34 = v32;
                    a1 = v42;
                    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_48;
                    }

LABEL_54:
                    *buf = 136315394;
                    v51 = "__WiFiManagerDownloadOCLAConfiguration";
                    v52 = 1024;
                    LODWORD(v53) = v34;
                    v35 = "%s: Fail to send command with err=%d";
                    v36 = 18;
LABEL_55:
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v35, buf, v36);
                    goto LABEL_48;
                  }

                  v26 = (v26 + 1);
                }

                v25 = [v23 countByEnumeratingWithState:&v45 objects:v54 count:16];
                if (v25)
                {
                  continue;
                }

                break;
              }

              a1 = v42;
              if (v26)
              {
                bzero(v22 + 1, 0x1008uLL);
                *v22 = -303174163;
                v33 = IOConnectCallStructMethod(connect, 2u, v22, 0x100CuLL, 0, 0);
                if (v33)
                {
                  v34 = v33;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_54;
                  }
                }
              }
            }

LABEL_48:
            free(v22);
            a2 = v43;
            v6 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
            LODWORD(v7) = v44;
          }

          else
          {
            sub_10016C6F0();
            v6 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
          }

          goto LABEL_49;
        }

        v39 = v20;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v54 = 136315394;
          v55 = "__WiFiManagerDownloadOCLAConfiguration";
          v56 = 1024;
          LODWORD(v57) = v39;
          v37 = "%s: Error: IOServiceOpen failed with err=%d";
          v38 = 18;
LABEL_60:
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v37, v54, v38);
        }

LABEL_49:
        if (connect)
        {
          IOServiceClose(connect);
        }

LABEL_51:
        IOObjectRelease(v7);
        v7 = IOIteratorNext(a2);
        if (!v7)
        {
          goto LABEL_62;
        }
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *v54 = 136315394;
      v55 = "__WiFiManagerDownloadOCLAConfiguration";
      v56 = 2112;
      v57 = @"/var/configs/wifi_profile.plist";
      v37 = "%s: Error: couldn't load ocla configuration from %@\n";
      v38 = 22;
      goto LABEL_60;
    }

LABEL_62:
    v40 = *(a1 + 960);
    if (v40 || (v40 = [objc_alloc((v6 + 870)) initWithServiceName:@"AppleWLANDriver"], (*(a1 + 960) = v40) != 0))
    {
      [v40 setWatchdogCallback:&stru_100260C28 context:a1];
    }
  }

  else
  {
    sub_10016C768();
  }

  v41 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: LEAVE", "__WiFiManagerDriverPublishedCallback"}];
  }

  objc_autoreleasePoolPop(v41);
}

void sub_100077E7C(uint64_t a1, io_iterator_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ENTER", "__WiFiManagerDriverTerminatedCallback"}];
  }

  objc_autoreleasePoolPop(v4);
  if (a1)
  {
    v5 = IOIteratorNext(a2);
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"service terminate:%u", v6}];
        }

        objc_autoreleasePoolPop(v7);
        v8 = *(a1 + 960);
        if (v8)
        {

          *(a1 + 960) = 0;
        }

        IOObjectRelease(v6);
        v6 = IOIteratorNext(a2);
      }

      while (v6);
    }
  }

  else
  {
    sub_10016C7D4();
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: LEAVE", "__WiFiManagerDriverTerminatedCallback"}];
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_100077FA8(uint64_t a1, io_iterator_t iterator)
{
  for (result = IOIteratorNext(iterator); result; result = IOIteratorNext(iterator))
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %s matched\n", "__WiFiManagerSunrisePublishedCallback", "AppleSunriseWLAN"}];
    }

    objc_autoreleasePoolPop(v5);
    *(a1 + 1948) = 1;
    sub_10008A738();
  }

  return result;
}

uint64_t sub_100078058(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    return sub_10016C840(a1, result, iterator);
  }

  return result;
}

void sub_100078110(uint64_t a1, io_iterator_t iterator)
{
  v4 = IOIteratorNext(iterator);
  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = v4;
  v6 = 0;
  do
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    memset(name, 0, sizeof(name));
    properties = 0;
    valuePtr = 0;
    IORegistryEntryCreateCFProperties(v5, &properties, kCFAllocatorDefault, 0);
    if (!properties)
    {
      v9 = "N";
      goto LABEL_19;
    }

    if (IORegistryEntryGetName(v5, name))
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s:%d Usb Host Notification: Failed to get device name \n", "__WiFiManagerhostNotificationUSBDeviceInserted", 4471}];
      }

      objc_autoreleasePoolPop(v7);
    }

    Value = CFDictionaryGetValue(properties, @"idVendor");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr == 1452)
      {
        *(a1 + 2704) = 1;
        v9 = "Y";
        goto LABEL_17;
      }

      *(a1 + 2704) = 0;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s:%d Usb Host Notification Insertion: Failed to get Vendor ID \n", "__WiFiManagerhostNotificationUSBDeviceInserted", 4477}];
      }

      objc_autoreleasePoolPop(v10);
    }

    v9 = "N";
LABEL_17:
    if (properties)
    {
      CFRelease(properties);
      properties = 0;
    }

LABEL_19:
    v11 = *(a1 + 2700);
    if (v11 >= 0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 1;
    }

    *(a1 + 2700) = v12;
    if (v6)
    {
      CFRelease(v6);
    }

    v6 = CFStringCreateWithCString(kCFAllocatorDefault, name, 0x8000100u);
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s - Usb Insertion Host Notification for %s isApple %s seqNum %d Total %d\n", "__WiFiManagerhostNotificationUSBDeviceInserted", name, v9, *(a1 + 2692), *(a1 + 2700)}];
    }

    objc_autoreleasePoolPop(v13);
    IOObjectRelease(v5);
    v14 = [WiFiUsageMonitor_UsbDevice alloc];
    v15 = [v14 initWithName:v6 vid:valuePtr isApple:*(a1 + 2704) != 0 locationID:0];
    if (v15)
    {
      v16 = v15;
      [*(a1 + 2728) addObject:v15];
    }

    v5 = IOIteratorNext(iterator);
  }

  while (v5);
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_31:
  if (*(a1 + 2700))
  {
    sub_10016C8D0(a1);
  }
}

void sub_1000783C4(uint64_t a1, io_iterator_t iterator)
{
  v14 = *(a1 + 2700);
  v4 = IOIteratorNext(iterator);
  if (!v4)
  {
    goto LABEL_38;
  }

  v5 = v4;
  v6 = 0;
  do
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    memset(name, 0, sizeof(name));
    properties = 0;
    valuePtr = 0;
    --*(a1 + 2700);
    IORegistryEntryCreateCFProperties(v5, &properties, kCFAllocatorDefault, 0);
    if (properties)
    {
      if (IORegistryEntryGetName(v5, name))
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s:%d Usb Host Notification: Failed to get IORegistryEntryGetName \n", "__WiFiManagerhostNotificationUSBDeviceRemoved", 4545}];
        }

        objc_autoreleasePoolPop(v7);
      }

      Value = CFDictionaryGetValue(properties, @"idVendor");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
        *(a1 + 2704) = valuePtr == 1452;
      }

      else
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s:%d Usb Host Notification Removal: Failed to get Vendor ID \n", "__WiFiManagerhostNotificationUSBDeviceRemoved", 4551}];
        }

        objc_autoreleasePoolPop(v9);
      }

      if (properties)
      {
        CFRelease(properties);
        properties = 0;
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v6 = CFStringCreateWithCString(kCFAllocatorDefault, name, 0x8000100u);
    if (!v6)
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s - Usb Removal Host Notification for %s failed CFStringCreateWithCString seqNum %d Total %d\n", "__WiFiManagerhostNotificationUSBDeviceRemoved", name, *(a1 + 2692), *(a1 + 2700)}];
      }

      goto LABEL_28;
    }

    if (![*(a1 + 2728) count])
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s - Usb Removal Host Notification for %s seqNum %d Total %d\n", "__WiFiManagerhostNotificationUSBDeviceRemoved", name, *(a1 + 2692), *(a1 + 2700)}];
      }

LABEL_28:
      objc_autoreleasePoolPop(v13);
      goto LABEL_35;
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = -1;
    v10 = *(a1 + 2728);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100090FC0;
    v15[3] = &unk_100260B60;
    v15[4] = &v16;
    v15[5] = v6;
    [v10 enumerateObjectsUsingBlock:v15];
    v11 = v17[3];
    LODWORD(v11) = v11 < [*(a1 + 2728) count];
    v12 = objc_autoreleasePoolPush();
    if (v11)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s - Usb Removal Host Notification for %s -- Removing device at index %lu from %@\n", "__WiFiManagerhostNotificationUSBDeviceRemoved", name, v17[3], *(a1 + 2728)}];
      }

      objc_autoreleasePoolPop(v12);
      [*(a1 + 2728) removeObjectAtIndex:v17[3]];
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s - Usb Removal Host Notification for %s seqNum %d managerTotal %d setTotal:%ld\n", "__WiFiManagerhostNotificationUSBDeviceRemoved", name, *(a1 + 2692), *(a1 + 2700), objc_msgSend(*(a1 + 2728), "count")}];
      }
    }

    else if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s - Usb Removal Host Notification for %s -- unable to find in %@\n", "__WiFiManagerhostNotificationUSBDeviceRemoved", name, *(a1 + 2728)}];
    }

    objc_autoreleasePoolPop(v12);
    _Block_object_dispose(&v16, 8);
LABEL_35:
    IOObjectRelease(v5);
    v5 = IOIteratorNext(iterator);
  }

  while (v5);
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_38:
  if (v14 > *(a1 + 2700))
  {
    sub_10016C990(a1);
  }
}

void sub_100078828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078848(uint64_t a1, int a2, uint64_t a3, NSObject **cf)
{
  if (a3)
  {
    sub_10016CAEC(a3);
    return;
  }

  if (!cf)
  {
    sub_10016CCA0();
    return;
  }

  v7 = CFGetTypeID(cf);
  v8 = qword_100298570;
  if (!qword_100298570)
  {
    pthread_once(&stru_100297890, sub_10006F794);
    v8 = qword_100298570;
  }

  if (v7 != v8)
  {
    sub_10016CB5C();
    return;
  }

  if (!cf[4])
  {
    sub_10016CC34();
    return;
  }

  if ((a2 - 1) < 2)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Mobile Bluetooth session terminated"];
    }

    objc_autoreleasePoolPop(v12);
    v13 = cf[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100092474;
    block[3] = &unk_100260C48;
    block[4] = cf;
    v21 = a2;
    v14 = block;
LABEL_17:
    dispatch_async(v13, v14);
    return;
  }

  if (a2 == 3)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Failed to attach to Mobile Bluetooth", v19}];
    }

    goto LABEL_21;
  }

  if (!a2)
  {
    if (!a1)
    {
      sub_10016CBC8();
      return;
    }

    v9 = BTServiceAddCallbacksWithFilter();
    if (v9)
    {
      v10 = v9;
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Failed to obtain Bluetooth AudioJack. result=0x%X", v10}];
      }

LABEL_21:

LABEL_23:
      objc_autoreleasePoolPop(v11);
      return;
    }

    v23 = 0xAAAAAAAAAAAAAAAALL;
    Default = BTLocalDeviceGetDefault();
    if (Default)
    {
      v16 = Default;
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Failed to obtain Bluetooth Local Device. result=0x%X", v16}];
      }

      goto LABEL_23;
    }

    v22[8] = 0;
    v22[9] = 0;
    v22[7] = sub_10009223C;
    v17 = BTLocalDeviceAddCallbacks();
    if (v17)
    {
      v18 = v17;
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Failed to set Bluetooth Local Device callbacks.  result=0x%X", v18}];
      }

      goto LABEL_23;
    }

    v13 = cf[4];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100092454;
    v22[3] = &unk_10025EEE8;
    v22[4] = cf;
    v22[5] = a1;
    v22[6] = v23;
    v14 = v22;
    goto LABEL_17;
  }
}

void sub_100078B58(uint64_t a1)
{
  if (a1 && *(a1 + 32))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000910B8;
    block[3] = &unk_10025EAD8;
    block[4] = a1;
    dispatch_async(qword_100298C50, block);
  }

  else
  {
    sub_10016CD0C();
  }
}

void sub_100078BF8(uint64_t a1)
{
  if ([+[WiFiUserInteractionMonitor ctServerConnection] sharedInstance]
  {
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
    v4 = *(a1 + 32);
    _CTServerConnectionRegisterBlockForNotification();
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
    v3 = *(a1 + 32);
    _CTServerConnectionRegisterBlockForNotification();
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
    v2 = *(a1 + 32);
    _CTServerConnectionRegisterBlockForNotification();
    sub_100078B58(*(a1 + 32));
  }
}

__CTServerConnection *sub_100078D70()
{
  v0 = +[WiFiUserInteractionMonitor sharedInstance];

  return [(WiFiUserInteractionMonitor *)v0 ctServerConnection];
}

void sub_100078DB8(uint64_t a1)
{
  v2 = (a1 + 1696);
  *(a1 + 1696) = -1;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10008621C;
  handler[3] = &unk_10025F5D0;
  handler[4] = a1;
  notify_register_dispatch("com.apple.system.lowpowermode", (a1 + 1696), qword_100298C50, handler);
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: battery save mode registered. Token=%d", "WiFiBatterySaveModeConfiguration", *v2}];
  }

  objc_autoreleasePoolPop(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086328;
  block[3] = &unk_10025EAD8;
  block[4] = a1;
  dispatch_async(qword_100298C50, block);
}

id sub_100078EF0(void *a1, uint64_t a2)
{
  v4 = 120.0;
  v5 = sub_100079008(a1, @"SoftErrorReportingTimeout", 120.0);
  if (v5 >= 0.0)
  {
    v4 = v5;
  }

  v6 = 86400.0;
  v7 = sub_100079008(a1, @"SoftErrorUIReportingTimeout", 86400.0);
  if (v7 >= 0.0)
  {
    v6 = v7;
  }

  v9[0] = @"intervalForMaxNonUIActions";
  v9[1] = @"intervalForMaxUIActions";
  v10[0] = [NSNumber numberWithDouble:v4];
  v10[1] = [NSNumber numberWithDouble:v6];
  return [[WiFiSoftError alloc] initWithName:a2 andParams:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v10, v9, 2)}];
}

double sub_100079008(void *a1, const __CFString *a2, double a3)
{
  v4 = sub_10001769C(a1, a2);
  valuePtr = a3;
  if (v4)
  {
    v5 = v4;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
      return valuePtr;
    }
  }

  return a3;
}

void sub_100079078(uint64_t a1)
{
  v2 = sub_100096D94(*(a1 + 32), *(*(a1 + 32) + 32), sub_10007911C);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000791B0;
    v5[3] = &unk_10025F5F8;
    v5[4] = v2;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

void sub_10007911C(uint64_t a1, __int16 a2, double a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a1)
  {
    *(a1 + 1488) = a2;
    *(a1 + 1496) = a3;
    context[0] = a1;
    context[1] = 0xAAAAAAAA0000003CLL;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000791B0(uint64_t a1)
{
  *(*(a1 + 40) + 48) = *(a1 + 32);
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiManagerMotionServices initialized", "WiFiManagerScheduleWithQueue_block_invoke_9"}];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_100079224(uint64_t a1, int a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a2 == 1)
    {
      if (a3 && [a3 objectForKeyedSubscript:@"CallActive"])
      {
        *(a1 + 1529) = [objc_msgSend(a3 objectForKeyedSubscript:{@"CallActive", "BOOLValue"}];
        context = a1;
        v11 = 0xAAAAAAAA00000090;
LABEL_20:
        v12 = 0;
        v13 = 1;
        v14 = 0;
        CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
      }
    }

    else if (a2 == 2)
    {
      if (_os_feature_enabled_impl())
      {
        if ([a3 isEqualToString:@"Short"])
        {
          v7 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: voicePromptStyle is Short", "__WiFiManagerAVSystemMonitorCallback"}];
          }

          v8 = 1;
LABEL_19:
          objc_autoreleasePoolPop(v7);
          *(a1 + 1528) = v8;
          context = a1;
          v11 = 0xAAAAAAAA00000077;
          goto LABEL_20;
        }

        if ([a3 isEqualToString:@"Normal"])
        {
          v7 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: voicePromptStyle is Normal", "__WiFiManagerAVSystemMonitorCallback"}];
          }

          v8 = 0;
          goto LABEL_19;
        }
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"Unknown notification from AVSystem monitor\n"];
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  objc_autoreleasePoolPop(v6);
}

id sub_1000793F0(uint64_t a1)
{
  [*(*(a1 + 32) + 72) initializeWithManager:*(a1 + 32) queue:*(*(a1 + 32) + 32)];
  v2 = *(*(a1 + 32) + 72);

  return [v2 startMonitoringCarSession];
}

void sub_100079438(uint64_t a1, int val)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 2640) == val)
  {
    state64 = 0;
    if (notify_is_valid_token(val))
    {
      notify_get_state(val, &state64);
    }

    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: received LPEM notification with reason code (%llu)", "WiFiManagerScheduleWithQueue_block_invoke_11", state64}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = *(a1 + 32);
    if (state64)
    {
      *(v6 + 2644) = 1;
      v7 = v6;
      v8 = 0;
    }

    else
    {
      if (!*(v6 + 2644))
      {
        return;
      }

      *(v6 + 2644) = 0;
      v8 = sub_100079A8C(v6);
      v7 = v6;
    }

    sub_100079528(v7, v8, @"LPEM");
  }
}

void sub_100079528(uint64_t a1, unsigned int a2, const void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    goto LABEL_62;
  }

  if (*(a1 + 1408))
  {
LABEL_3:
    v7 = *(a1 + 328);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 328) = 0;
    }

    goto LABEL_5;
  }

  if (!a3 || (v20 = [&off_1002826D0 containsObject:a3], a2 != 1) || !v20)
  {
    if (a2 || !*(a1 + 328))
    {
      goto LABEL_5;
    }

    v23 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: power turned OFF before first unlock by %@, overrides earlier power ON by %@", "WiFiManagerSetPowerExt", a3, *(a1 + 328)}];
    }

    objc_autoreleasePoolPop(v23);
    goto LABEL_3;
  }

  v21 = *(a1 + 328);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 328) = 0;
  }

  *(a1 + 328) = CFRetain(a3);
  v22 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: power turned ON before first unlock by %@", "WiFiManagerSetPowerExt", *(a1 + 328)}];
  }

  objc_autoreleasePoolPop(v22);
LABEL_5:
  v8 = a2;
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    v8 = a2;
    if (!*(a1 + 328))
    {
      v8 = a2;
      if (!*(a1 + 1408))
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: device hasn't been unlocked since boot. Overriding power state to OFF.", "WiFiManagerSetPowerExt"}];
        }

        objc_autoreleasePoolPop(v9);
        v8 = 0;
      }
    }
  }

  if (*(a1 + 324) != v8)
  {
    v16 = objc_autoreleasePoolPush();
    if (a3)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Turning WiFiManager %s by %@", sub_100058B44(v8), a3}];
      }

      objc_autoreleasePoolPop(v16);
      if (*(a1 + 2280))
      {
        CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
        if (CTGreenTeaOsLogHandle)
        {
          v18 = CTGreenTeaOsLogHandle;
          if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
          {
            v19 = "yes";
            *valuePtr = 138413314;
            *&valuePtr[4] = a3;
            *&v29[2] = "com.apple.wifi.manager";
            *v29 = 2080;
            if (!v8)
            {
              v19 = "no";
            }

            *&v29[10] = 2080;
            v30 = "wifid";
            *v31 = 2080;
            *&v31[2] = "WiFiManagerSetPowerExt";
            v32 = 2080;
            v33 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "<%@>[%s][%s]:[%s]WLAN enabled..%s", valuePtr, 0x34u);
          }
        }
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Turning WiFiManager %s", sub_100058B44(v8)}];
      }

      objc_autoreleasePoolPop(v16);
    }

    *(a1 + 324) = v8;
    if (*(a1 + 1408) == 1)
    {
      v24 = objc_autoreleasePoolPush();
      if (v8 == 1)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Registering with coex manager", "WiFiManagerSetPowerExt"}];
        }

        objc_autoreleasePoolPop(v24);
        sub_100127DE4(a1);
        [*(a1 + 200) determineAndSetLocale:0];
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Un-registering with coex manager", "WiFiManagerSetPowerExt"}];
        }

        objc_autoreleasePoolPop(v24);
        sub_10012819C((a1 + 1400));
        if (&_RDUpdateCountryCodeFromWiFiAPs)
        {
          sub_10007CDF0(a1, 0, 1);
        }
      }
    }

    *valuePtr = a1;
    *v29 = -1431655766;
    *&valuePtr[8] = 13;
    v25 = *(a1 + 324);
    *&v29[4] = 0;
    v30 = v25;
    *v31 = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, valuePtr);
    if (*(a1 + 324) == 1)
    {
      if (_os_feature_enabled_impl())
      {
        sub_1000197A4(a1, 8);
        if (a2)
        {
          goto LABEL_61;
        }

LABEL_64:
        v26 = sub_100159688(a1, a3);
        if (a3 && !v26)
        {
          v27 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: %@ is not a user-interactive client, not persisting its requested power state %s to disk", "WiFiManagerSetPowerExt", a3, sub_100058B44(0)}];
          }

          objc_autoreleasePoolPop(v27);
          goto LABEL_62;
        }

LABEL_61:
        sub_10007CB0C(a1, @"AllowEnable", a2, 0);
        goto LABEL_62;
      }

      sub_10007A1F4(a1, 2);
    }

    if (a2)
    {
      goto LABEL_61;
    }

    goto LABEL_64;
  }

  v10 = sub_10001769C(a1, @"AllowEnable");
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v11))
  {
    *valuePtr = -1431655766;
    CFNumberGetValue(v11, kCFNumberIntType, valuePtr);
    v13 = *valuePtr;
    if (*valuePtr >= 5u)
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Invalid saved power state: %d ", "WiFiManagerSetPowerExt", *valuePtr}];
      }

      objc_autoreleasePoolPop(v14);
      v13 = *valuePtr;
    }

    if (v13 != a2)
    {
LABEL_21:
      if (a2)
      {
        goto LABEL_61;
      }

      v15 = sub_100159688(a1, a3);
      if (!a3 || v15)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_62:
  objc_autoreleasePoolPop(v6);
}

BOOL sub_100079A8C(void *a1)
{
  valuePtr = 1;
  v2 = sub_10001769C(a1, @"AllowEnable");
  if (!v2)
  {
    return valuePtr;
  }

  v3 = v2;
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v3))
  {
    CFNumberGetValue(v3, kCFNumberCFIndexType, &valuePtr);
    return valuePtr;
  }

  v5 = CFBooleanGetTypeID();
  if (v5 != CFGetTypeID(v3))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: cannot read BOOLean value", "__WiFiManagerReadPowerState"}];
    }

    goto LABEL_9;
  }

  valuePtr = v3 == kCFBooleanTrue;
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    sub_10007393C(a1, @"AllowEnable", v6, 1);
    CFRelease(v7);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: error creating CFNumber", "__WiFiManagerReadPowerState"}];
    }

    objc_autoreleasePoolPop(v9);
  }

  v10 = CFPreferencesCopyAppValue(@"original-network-state", @"com.apple.preferences.network");
  if (v10)
  {
    v11 = v10;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v10);
    CFRelease(v11);
    if (MutableCopy)
    {
      v21 = 1;
      Value = CFDictionaryGetValue(MutableCopy, @"wifi-network");
      if (Value)
      {
        v14 = Value;
        v15 = CFBooleanGetTypeID();
        if (v15 == CFGetTypeID(v14))
        {
          v16 = 4;
          if (v14 == kCFBooleanTrue)
          {
            v16 = 1;
          }

          v21 = v16;
          v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &v21);
          if (v17)
          {
            v18 = v17;
            CFDictionarySetValue(MutableCopy, @"wifi-network", v17);
            CFPreferencesSetAppValue(@"original-network-state", MutableCopy, @"com.apple.preferences.network");
            CFRelease(v18);
          }

          else
          {
            v19 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: error creating CFNumber", "__WiFiManagerReadPowerState"}];
            }

            objc_autoreleasePoolPop(v19);
          }
        }
      }

      CFPreferencesAppSynchronize(@"com.apple.preferences.network");
      CFRelease(MutableCopy);
      return valuePtr;
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: no previousSettings", "__WiFiManagerReadPowerState"}];
    }

LABEL_9:
    objc_autoreleasePoolPop(v8);
  }

  return valuePtr;
}

void sub_100079D58(uint64_t a1)
{
  v2 = sub_10010A5F4(*(a1 + 32), *(*(a1 + 32) + 32), sub_100079E20);
  if (v2)
  {
    *(*(a1 + 32) + 56) = v2;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiManager Smart Cover Observer initialized", "WiFiManagerScheduleWithQueue_block_invoke_12"}];
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiManager Unable to register smartCoverCallback", "WiFiManagerScheduleWithQueue_block_invoke_12"}];
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100079E20(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    *(a1 + 1504) = a2;
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v6 = *(a1 + 1504);
      [off_100298C40 WFLog:3 message:{"%s: Smart Cover updated to %@", "__WiFiManagerCoverStateChangeCallback", NSStringFromSBSSmartCoverState()}];
    }

    objc_autoreleasePoolPop(v5);
    context[0] = a1;
    context[1] = 0xAAAAAAAA00000091;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100079EEC(uint64_t a1)
{
  if (a1)
  {
    context[0] = a1;
    context[1] = 0xAAAAAAAA00000090;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }
}

void sub_100079F48(id a1, CWFXPCEvent *a2)
{
  v3 = +[WiFiXPCManager sharedXPCManager];

  [v3 sendXPCEvent:a2];
}

void sub_100079F88(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v10 = objc_autoreleasePoolPush();
  if (a1)
  {
    *(a1 + 2586) = 0;
    *(a1 + 2632) = 0;
    if (a5)
    {

      *(a1 + 2608) = [a2 mutableCopy];
      *(a1 + 2616) = [a3 mutableCopy];
      *(a1 + 2624) = [a4 mutableCopy];
      *(a1 + 2632) = 1;
      *(a1 + 2586) = 1;
    }

    context[0] = a1;
    context[1] = 0xAAAAAAAA0000007ELL;
    context[2] = a1 + 2608;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }

  objc_autoreleasePoolPop(v10);
}

void sub_10007A07C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    SCDynamicStoreSetDispatchQueue(v2, 0);
    v3 = *(a1 + 80);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 80) = 0;
    }
  }
}

void sub_10007A0BC(uint64_t a1)
{
  [*(*(a1 + 32) + 72) stopMonitoringCarSession];

  *(*(a1 + 32) + 72) = 0;
}

uint64_t sub_10007A0FC(uint64_t a1)
{
  result = notify_is_valid_token(*(a1 + 1696));
  if (result)
  {
    result = notify_cancel(*(a1 + 1696));
    *(a1 + 1696) = -1;
  }

  return result;
}

void sub_10007A138(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s", "WiFiManagerEnable"}];
  }

  objc_autoreleasePoolPop(v2);
  if (a1 && !*(a1 + 25))
  {
    *(a1 + 25) = 1;

    sub_10000D4C0(a1, 1);
  }
}

void sub_10007A1D8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 25))
    {
      *(a1 + 25) = 0;
      sub_10000D4C0(a1, 0);
    }
  }
}

void sub_10007A1F4(uint64_t a1, int a2)
{
  v7 = a2;
  if (_os_feature_enabled_impl())
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s not allowed with Unified Auto-Join", "WiFiManagerAssociate"}];
    }

    objc_autoreleasePoolPop(v3);
  }

  else if (*(a1 + 24))
  {
    v4 = *(a1 + 2296);
    v5 = *(a1 + 2304);
    sub_100158DBC();
    context[0] = a1;
    context[1] = 0xAAAAAAAA0000000ELL;
    context[2] = &v7;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }
}

void sub_10007A2EC(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000013;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_10007A340(uint64_t a1, const void *a2, int a3)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v71 = a1;
  v6 = *(a1 + 1056);
  v77 = a2;
  v69 = sub_10000D83C("WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent");
  if (!a2)
  {
    sub_10016CDE4();
    if (Mutable)
    {
      goto LABEL_99;
    }

    goto LABEL_100;
  }

  if (!Mutable)
  {
    sub_10016CD78();
    goto LABEL_100;
  }

  if (!v6)
  {
    v64 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null preferences.", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent"}];
    }

    goto LABEL_125;
  }

  if (!sub_10014A48C(v6))
  {
    v64 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: prefLock failed", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent"}];
    }

LABEL_125:
    objc_autoreleasePoolPop(v64);
    goto LABEL_99;
  }

  v7 = SCNetworkSetCopyAll(v6);
  cf = v7;
  if (!v7)
  {
    v46 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null scSets.", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent"}];
    }

    v35 = 0;
    goto LABEL_84;
  }

  v8 = v7;
  v70 = v6;
  theArray = Mutable;
  if (CFArrayGetCount(v7) < 1)
  {
    goto LABEL_61;
  }

  v9 = 0;
  while (2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
    if (!ValueAtIndex)
    {
      goto LABEL_60;
    }

    v11 = ValueAtIndex;
    SetID = SCNetworkSetGetSetID(ValueAtIndex);
    Name = SCNetworkSetGetName(v11);
    if (Name)
    {
      v14 = CFEqual(@"Automatic", Name) != 0;
      if (!SetID)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = 0;
      if (!SetID)
      {
        goto LABEL_21;
      }
    }

    v15 = *(v71 + 216);
    if (v15)
    {
      v16 = CFDictionaryContainsValue(v15, SetID) != 0;
      if (v14 && v16)
      {
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: network set %@ is in both automatic and custom network sets", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", SetID}];
        }

        objc_autoreleasePoolPop(v17);
        v16 = 1;
        v8 = cf;
      }

      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

LABEL_21:
    v16 = 0;
    if (!v14)
    {
LABEL_22:
      if (a3 || !v16)
      {
        goto LABEL_60;
      }

      v18 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: examining <%@> network set %@ for a network service matching BSD name %@ and interface type %@", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", Name, SetID, v77, kSCNetworkInterfaceTypeIEEE80211}];
      }

      goto LABEL_26;
    }

LABEL_19:
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: examining <Automatic> network set %@ for a network service matching BSD name %@ and interface type %@", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", SetID, v77, kSCNetworkInterfaceTypeIEEE80211, v67}];
    }

LABEL_26:
    objc_autoreleasePoolPop(v18);
    v19 = SCNetworkSetCopyServices(v11);
    v20 = v19;
    v8 = cf;
    if (!v19 || CFArrayGetCount(v19) < 1)
    {
LABEL_51:
      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: ADDING examined network set to list for adding WiFi network service", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent"}];
      }

      objc_autoreleasePoolPop(v33);
      CFArrayAppendValue(Mutable, v11);
      goto LABEL_54;
    }

    v21 = 0;
    v73 = 1;
    do
    {
      v22 = CFArrayGetValueAtIndex(v20, v21);
      if (v22)
      {
        v23 = v22;
        Interface = SCNetworkServiceGetInterface(v22);
        if (Interface)
        {
          v25 = Interface;
          BSDName = SCNetworkInterfaceGetBSDName(Interface);
          InterfaceType = SCNetworkInterfaceGetInterfaceType(v25);
          v28 = InterfaceType;
          if (!BSDName)
          {
            if (!InterfaceType)
            {
              goto LABEL_49;
            }

            v31 = CFEqual(InterfaceType, kSCNetworkInterfaceTypeIEEE80211);
            goto LABEL_45;
          }

          v29 = CFEqual(BSDName, v77);
          v30 = v29;
          if (v28)
          {
            v31 = CFEqual(v28, kSCNetworkInterfaceTypeIEEE80211);
            if (v30 && v31)
            {
              v32 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: FOUND network service %@ with matching BSD name %@ and interface type %@", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", SCNetworkServiceGetServiceID(v23), BSDName, v28}];
              }

              v73 = 0;
LABEL_48:
              objc_autoreleasePoolPop(v32);
              goto LABEL_49;
            }

            if (v30)
            {
LABEL_43:
              v32 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: network service %@ with matching BSD name %@ but interface type %@ is present", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", SCNetworkServiceGetServiceID(v23), BSDName, v28}];
              }

              goto LABEL_48;
            }

LABEL_45:
            if (!v31)
            {
              goto LABEL_49;
            }

            v32 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: network service %@ with matching interface type %@ but BSD name %@ is present", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", SCNetworkServiceGetServiceID(v23), v28, BSDName}];
            }

            goto LABEL_48;
          }

          if (v29)
          {
            goto LABEL_43;
          }
        }
      }

LABEL_49:
      ++v21;
    }

    while (v21 < CFArrayGetCount(v20));
    v8 = cf;
    if (v73)
    {
      goto LABEL_51;
    }

LABEL_54:
    if (v20)
    {
      CFRelease(v20);
    }

    if (a3)
    {
      v34 = v14;
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
LABEL_60:
      if (++v9 >= CFArrayGetCount(v8))
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_61:
  if (!CFArrayGetCount(Mutable))
  {
    v47 = 0;
    v35 = 0;
LABEL_86:
    LOBYTE(v46) = 0;
    v6 = v70;
    goto LABEL_87;
  }

  v35 = SCNetworkInterfaceCopyAll();
  if (CFArrayGetCount(v35) < 1)
  {
    goto LABEL_81;
  }

  v36 = 0;
  while (2)
  {
    v37 = CFArrayGetValueAtIndex(v35, v36);
    if (!v37)
    {
LABEL_80:
      if (++v36 >= CFArrayGetCount(v35))
      {
        goto LABEL_81;
      }

      continue;
    }

    break;
  }

  v38 = v37;
  v39 = SCNetworkInterfaceGetBSDName(v37);
  v40 = SCNetworkInterfaceGetInterfaceType(v38);
  v41 = v40;
  if (!v39)
  {
    if (!v40 || !CFEqual(v40, kSCNetworkInterfaceTypeIEEE80211))
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

  v42 = CFEqual(v39, v77);
  v43 = v42;
  if (!v41)
  {
    if (v42)
    {
      goto LABEL_77;
    }

    goto LABEL_80;
  }

  v44 = CFEqual(v41, kSCNetworkInterfaceTypeIEEE80211);
  if (!v43 || !v44)
  {
    if (v43)
    {
LABEL_77:
      v45 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: network interface %@ with matching BSD name %@ but interface type %@ is present", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", SCNetworkInterfaceGetLocalizedDisplayName(v38), v39, v41}];
      }
    }

    else
    {
      if (!v44)
      {
        goto LABEL_80;
      }

LABEL_74:
      v45 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: network interface %@ with matching interface type %@ but BSD name %@ is present", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", SCNetworkInterfaceGetLocalizedDisplayName(v38), v41, v39}];
      }
    }

    objc_autoreleasePoolPop(v45);
    goto LABEL_80;
  }

  v52 = CFRetain(v38);
  if (!v52)
  {
LABEL_81:
    v46 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: failed to find any SC network interface matching BSD name %@ and interface type %@", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", v77, kSCNetworkInterfaceTypeIEEE80211}];
    }

    v6 = v70;
LABEL_84:
    objc_autoreleasePoolPop(v46);
    v47 = 0;
    LOBYTE(v46) = 0;
    goto LABEL_87;
  }

  v47 = v52;
  if (CFArrayGetCount(Mutable) < 1)
  {
    goto LABEL_86;
  }

  LODWORD(v46) = 0;
  v53 = 0;
  v6 = v70;
  do
  {
    v54 = CFArrayGetValueAtIndex(Mutable, v53);
    if (v54)
    {
      v55 = v54;
      v56 = SCNetworkServiceCreate(v6, v47);
      v57 = v56;
      if (v56)
      {
        SCNetworkServiceSetName(v56, @"Wi-Fi by wifid");
        SCNetworkServiceEstablishDefaultConfiguration(v57);
        v58 = SCNetworkSetAddService(v55, v57);
        LODWORD(v46) = (v46 | v58) != 0;
        v59 = "failure";
        if (v58)
        {
          v59 = "success";
        }
      }

      else
      {
        v59 = "failure";
      }

      v78 = v59;
      v60 = objc_autoreleasePoolPush();
      v61 = off_100298C40;
      if (off_100298C40)
      {
        cf2 = v46;
        v46 = v47;
        v62 = SCNetworkServiceGetName(v57);
        ServiceID = SCNetworkServiceGetServiceID(v57);
        v68 = SCNetworkSetGetName(v55);
        v65 = v62;
        v66 = ServiceID;
        v47 = v46;
        LODWORD(v46) = cf2;
        v6 = v70;
        Mutable = theArray;
        [v61 WFLog:4 message:{"%s: %s ADDING <%@> network service %@ to <%@> network set %@", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", v78, v65, v66, v68, SCNetworkSetGetSetID(v55)}];
      }

      objc_autoreleasePoolPop(v60);
      if (v57)
      {
        CFRelease(v57);
      }
    }

    ++v53;
  }

  while (v53 < CFArrayGetCount(Mutable));
LABEL_87:
  v48 = sub_1000587F4(v6, v46);
  v49 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v50 = "changes";
    if (!v46)
    {
      v50 = "no changes";
    }

    v51 = "successfully";
    if (!v48)
    {
      v51 = "unsuccessfully";
    }

    [off_100298C40 WFLog:3 message:{"%s: %s committed, prefs %s unlocked", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent", v50, v51}];
  }

  objc_autoreleasePoolPop(v49);
  if (v47)
  {
    CFRelease(v47);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_99:
  CFRelease(Mutable);
LABEL_100:
}

uint64_t sub_10007AC6C(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 322);
  }

  sub_10016CE50();
  return 0;
}

uint64_t sub_10007AC98(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 976);
  }

  sub_10016CEBC();
  return 0;
}

__CFArray *sub_10007ACD4(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (!v2 || !CFArrayGetCount(v2))
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 224));
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
  if (Mutable && CFArrayGetCount(*(a1 + 224)) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 224), v5);
      if (ValueAtIndex)
      {
        v7 = sub_10000C580(kCFAllocatorDefault, ValueAtIndex);
        CFArrayAppendValue(Mutable, v7);
        CFRelease(v7);
      }

      ++v5;
    }

    while (v5 < CFArrayGetCount(*(a1 + 224)));
  }

  return Mutable;
}

const __CFArray *sub_10007ADAC(uint64_t a1)
{
  result = sub_100020110(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_100058958(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

void sub_10007ADE8(uint64_t a1, const __CFDictionary *cf1)
{
  if (!cf1 || (v4 = *(a1 + 216)) == 0 || !CFEqual(cf1, v4))
  {
    v5 = *(a1 + 216);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 216) = 0;
    }

    if (cf1)
    {
      *(a1 + 216) = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, cf1);
    }

    context[0] = a1;
    context[1] = 0xAAAAAAAA00000004;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    if (cf1)
    {
      [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:cf1, @"Custom network settings"];
    }
  }
}

void sub_10007AEB8(uint64_t a1, uint64_t a2)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000050;
  context[2] = a2;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_10007AF0C(uint64_t a1, char a2)
{
  *(a1 + 1312) = a2;
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000027;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_10007AF64(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 312);
  if (v3 != a2)
  {
    *(a1 + 312) = a2;
    context[0] = a1;
    context[1] = 0xAAAAAAAA00000017;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    if (a2 == 5)
    {
      *(a1 + 312) = v3;
    }

    else
    {
      v7 = sub_100091F6C(a2);
      if (v7)
      {
        sub_10007393C(a1, kSCPropNetAirPortJoinMode, v7, a3);
      }
    }
  }
}

const __CFString *sub_10007B01C(int a1)
{
  if (a1 <= 251)
  {
    switch(a1)
    {
      case 0:
        return @"None";
      case 1:
        return @"Quality";
      case 2:
        return @"Captive";
    }

    return 0;
  }

  if (a1 > 253)
  {
    if (a1 == 254)
    {
      return @"InfrequentNetwork";
    }

    if (a1 == 255)
    {
      return @"All";
    }

    return 0;
  }

  if (a1 == 252)
  {
    return @"Public";
  }

  else
  {
    return @"NewLocation";
  }
}

void sub_10007B0BC(uint64_t a1, char a2)
{
  v3 = a2;
  v2[0] = a1;
  v2[1] = 0xAAAAAAAA0000008BLL;
  v2[2] = &v3;
  v2[3] = 1;
  v2[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, v2);
}

uint64_t sub_10007B118(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 1392);
  }

  sub_10016CF88();
  return 3;
}

void sub_10007B14C(uint64_t a1, unsigned int a2, int a3)
{
  if (byte_100298C79)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Lockdown Mode is enabled, ignoring set WiFiAskToJoinPreferenceType %ld", "WiFiManagerSetAskToJoinPreference", a2}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else if (*(a1 + 792) != a2)
  {
    *(a1 + 792) = a2;
    context[0] = a1;
    context[1] = 0xAAAAAAAA0000001BLL;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    valuePtr = a2;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v7)
    {
      v8 = v7;
      sub_10007393C(a1, @"ATJPreference", v7, a3);
      CFRelease(v8);
    }

    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  }
}

void sub_10007B29C(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 344) != a2)
  {
    v18 = v3;
    v19 = v4;
    *(a1 + 344) = a2;
    LODWORD(valuePtr) = a2;
    v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v8)
    {
      v9 = v8;
      sub_10007393C(a1, @"Compatibility", v8, a3);
      CFRelease(v9);
    }

    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: mode:%u", "WiFiManagerSet6ECompatibilityMode", a2}];
    }

    objc_autoreleasePoolPop(v10);
    v11 = *(a1 + 2656);
    if (v11)
    {
      [v11 updateWithCompatibilityMode:a2 == 0];
    }

    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    valuePtr = a1;
    v14 = 0xAAAAAAAA00000087;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, &valuePtr);
    if (v16)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return;
        }

        valuePtr = a1;
        v14 = 0xAAAAAAAAAAAAAAAALL;
        v12 = 136;
      }

      else
      {
        valuePtr = a1;
        v14 = 0xAAAAAAAAAAAAAAAALL;
        v12 = 137;
      }

      LODWORD(v14) = v12;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, &valuePtr);
    }
  }
}

uint64_t sub_10007B41C(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000087;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10007B478(uint64_t result, int a2)
{
  if (*(result + 316) != a2)
  {
    context[7] = v2;
    context[8] = v3;
    v5 = result;
    *(result + 316) = a2;
    context[0] = result;
    context[1] = 0xAAAAAAAA0000001DLL;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(result + 112), sub_100003B88, context);
    v6 = &kCFBooleanFalse;
    if (a2)
    {
      v6 = &kCFBooleanTrue;
    }

    return sub_10007393C(v5, @"mStageAutoJoin", *v6, 0);
  }

  return result;
}

void sub_10007B524(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFDateGetTypeID()))
  {
    v10 = 1;
    goto LABEL_6;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v10 = 0;
  if (Current - CFDateGetAbsoluteTime(cf) < 604800.0)
  {
LABEL_6:
    v11 = 1;
    v12 = "ENABLED";
    goto LABEL_7;
  }

  v11 = 0;
  v12 = "DISABLED";
LABEL_7:
  if (*(a1 + 317) != a2 || *(a1 + 318) != a3 || *(a1 + 319) != v11)
  {
    if (*(a1 + 319) != v11)
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Device updated learning phase to %s", v12}];
      }

      objc_autoreleasePoolPop(v13);
    }

    *(a1 + 317) = a2;
    *(a1 + 318) = a3;
    *(a1 + 319) = v11;
    context[0] = a1;
    context[1] = 0xAAAAAAAA0000001ELL;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    if (a2)
    {
      v14 = kCFBooleanTrue;
    }

    else
    {
      v14 = kCFBooleanFalse;
    }

    sub_10007393C(a1, @"optimizedAutoJoin", v14, 0);
    if (a3)
    {
      v15 = kCFBooleanTrue;
    }

    else
    {
      v15 = kCFBooleanFalse;
    }

    sub_10007393C(a1, @"Enable5GhzAutoJoinScan", v15, 0);
    if (v10)
    {
      v16 = CFAbsoluteTimeGetCurrent();
      v17 = CFDateCreate(kCFAllocatorDefault, v16);
      sub_10007393C(a1, @"deviceUpdatedDate", v17, 0);
      if (v17)
      {
        CFRelease(v17);
      }
    }
  }
}

void sub_10007B720(uint64_t a1, char a2)
{
  v3 = a2;
  v2[0] = a1;
  v2[1] = 0xAAAAAAAA00000076;
  v2[2] = &v3;
  v2[3] = 1;
  v2[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, v2);
}

void sub_10007B77C(uint64_t a1, const __CFString *a2, int a3)
{
  context = a1;
  v13 = 0xAAAAAAAA00000034;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
  v6 = v15;
  *(a1 + 1216) = v15;
  if (v6 == a3)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (*(a1 + 1216) == 1)
      {
        v8 = "enabled";
      }

      else
      {
        v8 = "disabled";
      }

      [off_100298C40 WFLog:3 message:{"MIS is already %s", v8}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    *(a1 + 1216) = a3;
    if (a3)
    {
      sub_10007B98C(a1, a2, a3, 0, 0, 0);
    }

    else
    {
      v11 = sub_10007BAF4(a1, a2, 0);
      context = a1;
      v13 = 0xAAAAAAAA00000020;
      v14 = &v11;
      v15 = 1;
      v16 = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
      *(a1 + 1217) = 0;
    }

    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (*(a1 + 1216) == 1)
      {
        v10 = "enabled";
      }

      else
      {
        v10 = "disabled";
      }

      [off_100298C40 WFLog:3 message:{"MIS state set to %s", v10}];
    }

    objc_autoreleasePoolPop(v9);
    if (objc_opt_class())
    {
      dispatch_async(qword_100298C50, &stru_100260830);
    }
  }
}

uint64_t sub_10007B938(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000034;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

void sub_10007B98C(uint64_t a1, const __CFString *a2, int a3, char a4, int a5, int a6)
{
  v11 = sub_10007BAF4(a1, a2, a6);
  if (a2 && sub_10000715C(a2))
  {
    if (a3)
    {
      v12 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSDate date](NSDate, "date"), @"DiscoveryRequestedAt", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v11), @"BringUpMethod", 0}];
      [*(a1 + 1296) setObject:v12 forKey:sub_10000715C(a2)];

      if (sub_10014B4C8(a2))
      {
        v13 = *(a1 + 1232);
        if (v13)
        {
          CFRelease(v13);
        }

        *(a1 + 1232) = a2;
        CFRetain(a2);
      }
    }

    else
    {
      [*(a1 + 1296) removeObjectForKey:sub_10000715C(a2)];
      if (sub_10014B4C8(a2))
      {
        v14 = *(a1 + 1232);
        if (v14)
        {
          CFRelease(v14);
          *(a1 + 1232) = 0;
        }
      }
    }
  }

  sub_10007BCF4(a1, v11, a3, a4, a5);
}

uint64_t sub_10007BAF4(uint64_t a1, const __CFString *a2, int a3)
{
  if (sub_10014B490(a2))
  {
    v6 = *(a1 + 348);
    v7 = _os_feature_enabled_impl();
    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 7;
    }

    if (v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 3;
    }

    if (v8)
    {
      v11 = 8;
    }

    else
    {
      v11 = 6;
    }

    if (v6 != 2)
    {
      v11 = v10;
    }

    if (v6 == 1)
    {
      return v9;
    }

    else
    {
      return v11;
    }
  }

  else if (sub_10014B420(a2))
  {
    return 2;
  }

  else if (sub_10014B3E8(a2))
  {
    return 1;
  }

  else if (sub_10014B4C8(a2))
  {
    return 9;
  }

  else if (sub_10014B500(a2))
  {
    return 10;
  }

  else if (sub_10014B538(a2))
  {
    return 11;
  }

  else
  {
    result = sub_10014B458(a2);
    if (result)
    {
      if (((a3 != 0) & _os_feature_enabled_impl()) != 0)
      {
        return 8;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10007BC20(id a1)
{
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Requesting PersonalHotspotControl extension to reload"];
  }

  objc_autoreleasePoolPop(v1);
  v2 = +[CHSControlService sharedInstance];

  [(CHSControlService *)v2 reloadControlsForExtension:@"com.apple.WiFiKit.PersonalHotspotControl" kind:@"PersonalHotspotControl" reason:@"wifi manager set MIS state request PH widget to reload"];
}

uint64_t sub_10007BCA0(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000082;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

void sub_10007BCF4(uint64_t a1, int a2, int a3, char a4, int a5)
{
  v5 = a5;
  v29 = a2;
  if (a3 && a5)
  {
LABEL_3:
    v9 = 0;
    *(a1 + 1219) = a3;
LABEL_18:
    *(a1 + 1218) = v9;
    *(a1 + 1220) = v5;
    *&context = a1;
    *(&context + 1) = 0xAAAAAAAA00000021;
    *&v18 = &v29;
    *(&v18 + 1) = 1;
    *&v19 = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v12 = "disabled";
      if (*(a1 + 1219) == 1)
      {
        v13 = "enabled";
      }

      else
      {
        v13 = "disabled";
      }

      if (*(a1 + 1217) == 1)
      {
        v12 = "enabled";
      }

      [off_100298C40 WFLog:3 message:{"MIS Discovery Req state %s Current state %s", v13, v12}];
    }

    objc_autoreleasePoolPop(v11);
    return;
  }

  if (*(a1 + 1217) != a3 || *(a1 + 1219) != a3)
  {
    *(a1 + 1219) = a3;
    if (a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = a4;
    }

    if (a3)
    {
      v5 = a5;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_18;
  }

  if (a3 && _os_feature_enabled_impl() && a2 == 8)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Bringing up NANPHS MIS Discovery is already enabled"];
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_3;
  }

  v14 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*(a1 + 1217) == 1)
    {
      v15 = "enabled";
    }

    else
    {
      v15 = "disabled";
    }

    [off_100298C40 WFLog:3 message:{"MIS Discovery is already %s", v15}];
  }

  objc_autoreleasePoolPop(v14);
  if (a3)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    context = 0u;
    v18 = 0u;
    LODWORD(context) = a2;
    v16[0] = a1;
    v16[1] = 0xAAAAAAAA0000004DLL;
    v16[2] = &context;
    v16[3] = 1;
    v16[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, v16);
  }
}

uint64_t sub_10007BF2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*(a1 + 1217))
    {
      v3 = "Enabled";
    }

    else
    {
      v3 = "Disabled";
    }

    [off_100298C40 WFLog:3 message:{"MIS Discovery is %s", v3}];
  }

  objc_autoreleasePoolPop(v2);
  return *(a1 + 1217);
}

void sub_10007BFA8(uint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = a5;
  LOBYTE(v6[0]) = a2;
  BYTE1(v6[0]) = a3;
  BYTE2(v6[0]) = a4;
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000022;
  context[2] = v6;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

uint64_t sub_10007C010(uint64_t a1, uint64_t a2)
{
  v4 = sub_100059668(a2);
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4))
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: removing hosted networks for client %@ - %@", "WiFiManagerRemoveHostedNetworks", sub_10000715C(a2), v5}];
      }

      objc_autoreleasePoolPop(v6);
      context[0] = a1;
      context[1] = 0xAAAAAAAA00000039;
      context[3] = 0;
      context[4] = 0;
      context[2] = v5;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    }
  }

  return 0;
}

uint64_t sub_10007C0E8(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000030;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10007C13C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*(a1 + 1184))
    {
      v3 = "Enabled";
    }

    else
    {
      v3 = "Disabled";
    }

    [off_100298C40 WFLog:3 message:{"LPAS is %s", v3}];
  }

  objc_autoreleasePoolPop(v2);
  return *(a1 + 1184);
}

uint64_t sub_10007C1B8(uint64_t a1, void *value, int a3)
{
  v5 = *(a1 + 1192);
  if (value)
  {
    v7 = CFSetContainsValue(*(a1 + 1200), value);
    if (a3)
    {
      if (v7)
      {
        goto LABEL_8;
      }

      CFSetAddValue(*(a1 + 1200), value);
      v8 = 1;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_8;
      }

      CFSetRemoveValue(*(a1 + 1200), value);
      v8 = -1;
    }

    *(a1 + 1208) += v8;
  }

LABEL_8:
  v9 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  Count = CFSetGetCount(*(a1 + 1200));
  v11 = (Count > 0) | v9 & 1;
  if (v5 == v11)
  {
    return 0;
  }

  v12 = Count;
  *(a1 + 1192) = v11;
  if (v11)
  {
    v13 = 0;
    *(a1 + 1212) = *(a1 + 324);
LABEL_12:
    v14 = sub_10000715C(value);
    sub_100079528(a1, v13, v14);
    goto LABEL_13;
  }

  v13 = *(a1 + 1212);
  if (v13 != *(a1 + 324))
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v16 = "unquiesced";
    if (v11)
    {
      v16 = "quiesced";
    }

    v17 = "no";
    if (v9)
    {
      v17 = "yes";
    }

    [off_100298C40 WFLog:3 message:{"WiFi is %s (clients=%ld activity=%s)", v16, v12, v17}];
  }

  objc_autoreleasePoolPop(v15);
  return 0;
}

uint64_t sub_10007C32C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*(a1 + 1192))
    {
      v3 = "quiesced";
    }

    else
    {
      v3 = "unquiesced";
    }

    [off_100298C40 WFLog:3 message:{"WiFi is %s (clients=%ld activity=%d)", v3, CFSetGetCount(*(a1 + 1200)), objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager, "sharedXPCManager"), "isQuiesceWiFiActivityRegistered")}];
  }

  objc_autoreleasePoolPop(v2);
  return *(a1 + 1192);
}

uint64_t sub_10007C3DC(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000032;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10007C430(void *a1)
{
  if (sub_10001769C(a1, @"SimulatedHardwareFailureStatus") == kCFBooleanTrue)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Simulating a hardware failure", "WiFiManagerGetHardwareStatus"}];
    }

    objc_autoreleasePoolPop(v4);
    return 2;
  }

  else
  {
    v5 = 0;
    v1 = sub_100052794(&v5);
    if (v5)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if (v1)
    {
      return 0;
    }

    else
    {
      return v2;
    }
  }
}

void sub_10007C4E4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: hwStatus %u", "WiFiManagerUpdateSystemHealthManager", a1}];
  }

  objc_autoreleasePoolPop(v2);
  if (a1 && objc_opt_class())
  {
    v3 = objc_alloc_init(SystemHealthManager);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10007C5CC;
    v4[3] = &unk_100260850;
    v5 = a1;
    [v3 postComponentStatusEventFor:3 status:a1 withReply:v4];
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void sub_10007C5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"hardware failure status -- error %@", a3, v7}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"hardware failure status -- success %d with status %d", a2, *(a1 + 32)}];
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_10007C664(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000031;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10007C6B8(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA0000003FLL;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10007C70C(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA0000003FLL;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10007C760(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000033;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10007C7B4(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000033;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10007C808(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000048;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10007C85C(uint64_t a1, CFStringRef theString)
{
  v4 = *(a1 + 1224);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 1224) = 0;
  }

  if (theString)
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, theString);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 1224) = Copy;
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000026;
  v8 = 0;
  v9 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v8;
}

CFStringRef sub_10007C8F4(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000035;
  memset(&context[2], 0, 24);
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  v2 = *(a1 + 1224);
  if (v2)
  {
    return CFStringCreateCopy(kCFAllocatorDefault, v2);
  }

  else
  {
    return 0;
  }
}

void sub_10007C970(uint64_t a1, int a2)
{
  *(a1 + 284) = a2;
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000023;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_10007C9D0(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 288) = a2;
  *(a1 + 296) = a3;
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000024;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_10007CA2C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000062;
  context[2] = a2;
  *&context[3] = a3;
  *&context[4] = a4;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_10007CA7C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 308) != a2)
  {
    context[7] = v2;
    context[8] = v3;
    *(a1 + 308) = a2;
    context[0] = a1;
    context[1] = 0xAAAAAAAA00000019;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    sub_10007CB0C(a1, @"Fallback Preference", a2, 0);
  }
}

void sub_10007CB0C(void *a1, const __CFString *a2, uint64_t a3, int a4)
{
  valuePtr = a3;
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  sub_10007393C(a1, a2, v7, a4);
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_10007CB84(uint64_t a1, double a2)
{
  if (*(a1 + 896) != a2)
  {
    *(a1 + 896) = a2;
    sub_10007CBA8(a1, @"DisassociationInterval", a2);
  }
}

void sub_10007CBA8(void *a1, const __CFString *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  sub_10007393C(a1, a2, v5, 0);
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_10007CC1C(uint64_t a1, double a2)
{
  if (*(a1 + 2104) != a2)
  {
    *(a1 + 2104) = a2;
    sub_10007CBA8(a1, @"DiagnosticsInterval", a2);
  }
}

void sub_10007CC40(uint64_t a1, double a2)
{
  if (*(a1 + 2344) != a2)
  {
    *(a1 + 2344) = a2;
    sub_10007CBA8(a1, @"HomeNetworkTransitionInterval", a2);
  }
}

void sub_10007CC64(uint64_t a1, int a2, const __CFString *a3)
{
  if (a1)
  {
    if ([*(a1 + 1584) isWiFiPowerModificationDisabled])
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: wifi power cannot be modified, since modification is disabled %d", "WiFiManagerSetPower", 1}];
      }

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      v7 = a2 != 0;
      v8 = *(a1 + 324);
      sub_100079528(a1, v7, a3);
      if (a3)
      {
        if (CFStringCompare(a3, @"Preferences", 1uLL) == kCFCompareEqualTo && v8 != v7)
        {
          context[0] = a1;
          context[1] = 0xAAAAAAAA00000034;
          v10 = 0;
          v11 = 0;
          context[2] = 0;
          CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
          if (!v10 && !*(a1 + 2441))
          {
            sub_10007CDC8(a1, v7);
          }
        }
      }
    }
  }
}

uint64_t sub_10007CD9C(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 2441);
  }

  sub_10016CFF4();
  return 0;
}

void sub_10007CDC8(void **a1, unsigned int a2)
{
  if (a2 <= 1)
  {
    if (a1[228])
    {
      sub_1000191F8(a1, a1[228], a2 == 1, 0);
    }
  }
}

void sub_10007CDF0(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (a2 || *(a1 + 2256))
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: countryCode %@, manager->ieCountryCode %@, force %d", "__WiFiManagerUpdateRegulatoryDomainCountryCode", a2, *(a1 + 2256), a3}];
    }

    objc_autoreleasePoolPop(v6);
    if (a2 && (v7 = *(a1 + 2256)) != 0 && CFStringCompare(a2, v7, 0) == kCFCompareEqualTo)
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Country code %@ refreshed.", "__WiFiManagerUpdateRegulatoryDomainCountryCode", *(a1 + 2256)}];
      }

      objc_autoreleasePoolPop(v15);
      *(a1 + 2264) = CFAbsoluteTimeGetCurrent();
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (a2 || (a3 & 1) != 0 || (v9 = Current - *(a1 + 2264), v9 >= 600.0))
      {
        v11 = *(a1 + 2256);
        if (v11)
        {
          CFRelease(v11);
          *(a1 + 2256) = 0;
        }

        if (a2)
        {
          Copy = CFStringCreateCopy(kCFAllocatorDefault, a2);
        }

        else
        {
          Copy = 0;
        }

        *(a1 + 2256) = Copy;
        *(a1 + 2264) = CFAbsoluteTimeGetCurrent();
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Updating CountryCodeFromWiFiAPs to %@", "__WiFiManagerUpdateRegulatoryDomainCountryCode", a2}];
        }

        objc_autoreleasePoolPop(v13);
        RDUpdateCountryCodeFromWiFiAPs();
        if ([*(a1 + 200) isDefaultCountryCode:{objc_msgSend(*(a1 + 200), "getLocaleCountryCode")}])
        {
          v14 = *(a1 + 200);

          [v14 determineAndSetLocale:0];
        }
      }

      else
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Country code %@ refreshed %.2fs ago < %ds, not resetting", "__WiFiManagerUpdateRegulatoryDomainCountryCode", *(a1 + 2256), *&v9, 600}];
        }

        objc_autoreleasePoolPop(v10);
      }
    }
  }
}

uint64_t sub_10007D044(uint64_t result, int a2)
{
  if (*(result + 336) != a2)
  {
    context[9] = v2;
    context[10] = v3;
    v5 = result;
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v7 = "Disabling";
      if (!a2)
      {
        v7 = "Enabling";
      }

      [off_100298C40 WFLog:3 message:{"%s BlackListing", v7}];
    }

    objc_autoreleasePoolPop(v6);
    *(v5 + 336) = a2;
    context[0] = v5;
    context[1] = 0xAAAAAAAA00000025;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(v5 + 112), sub_100003B88, context);
    v8 = &kCFBooleanTrue;
    if (!a2)
    {
      v8 = &kCFBooleanFalse;
    }

    return sub_10007393C(v5, @"DisableBlackList", *v8, 0);
  }

  return result;
}

void sub_10007D140(uint64_t a1, int a2)
{
  if (*(a1 + 1170) != a2)
  {
    *(a1 + 1170) = a2;
    v4 = &kCFBooleanTrue;
    if (!a2)
    {
      v4 = &kCFBooleanFalse;
    }

    sub_10007393C(a1, @"lpasEnable", *v4, 0);
    v5 = *(a1 + 1170);

    sub_10001F1EC(a1, 0, v5, 2);
  }
}

_DWORD *sub_10007D1C8(_DWORD *result, _DWORD *a2)
{
  *result = dword_1002985A4;
  *a2 = dword_1002985A8;
  return result;
}