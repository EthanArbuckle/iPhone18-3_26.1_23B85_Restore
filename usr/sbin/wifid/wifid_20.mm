void sub_100172698()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: bssid is not present in Steering Dictionary", "__WiFiManagerBssSteerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001726F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Unable to copy known network", "__WiFiManagerBssSteerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100172758(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: %@ does not  exist", "__WiFiManagerBssSteerCallback", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001727C0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Channel not present", "__WiFiManagerBssSteerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100172820()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Known networks cache is Null!", "__WiFiManagerBssSteerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100172880()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Failed to get steering request type\n", "__WiFiManagerBssSteerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001728E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "__WiFiManagerP2pThreadCoexEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017294C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiManagerP2pThreadCoexEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001729B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: SSID is NULL!", "__WiFiManagerCreateColocatedNetworkGroup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100172A24()
{
  sub_10000D798();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"[NWTRANSIT]: Network %@ meets Colocated Privacy Guidelines"];
  }

  objc_autoreleasePoolPop(v6);
  *(v5 + 2672) = 1;
  if (sub_100021720(v5))
  {
    v7 = *v1;
  }

  else
  {
    if (v3)
    {
      sub_1000084B8();
      return;
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"[NWTRANSIT]: Invalidate Colocated Cache"];
    }

    objc_autoreleasePoolPop(v8);
    if (*v1)
    {
      CFRelease(*v1);
      *v1 = 0;
    }

    *(v5 + 2672) = 0;
    *(v5 + 2680) = 0;
  }

  sub_1000084B8();

  sub_10016A1F0();
}

void sub_100172B20()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerColocatedCacheEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100172B8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10015E160();
  result = 1;
  if (v3 && a2)
  {
    v5 = sub_100011328();
    if (CFStringCompare(v5, v6, v7) && (v8 = sub_100011328(), CFStringCompare(v8, v9, v10)) && (v11 = sub_100011328(), CFStringCompare(v11, v12, v13)) && (v14 = sub_100011328(), CFStringCompare(v14, v15, v16)) && (v17 = sub_100011328(), CFStringCompare(v17, v18, v19)))
    {
      v20 = sub_100011580();
      v22 = sub_1000C8018(v20, v21, 0);
      v23 = objc_autoreleasePoolPush();
      if (v22)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s WiFiCC : Successfully initilaized country to HW on boot : %@", "__WiFiManagerUpdateCountryOnInitCallback", a2}];
        }
      }

      else if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WiFiCC : Unable to initialize country to HW on boot : %@", "__WiFiManagerUpdateCountryOnInitCallback", a2}];
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{" WiFiCC : User Defaults does not have valid country code ", v24, v25}];
      }
    }

    objc_autoreleasePoolPop(v23);
    return 0;
  }

  return result;
}

void sub_100172CCC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerUpdateCountryOnInitCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100172D38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerPeerCountryEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100172DA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiManagerStopMonitoringSessionBasedApplication"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100172E10()
{
  sub_100008C40();
  Current = CFAbsoluteTimeGetCurrent();
  v2 = CFDateCreate(kCFAllocatorDefault, Current);
  if (v2)
  {
    v3 = v2;
    v4 = sub_10001EDA0();
    sub_1000A0170(v4, v5, v3);
    CFRelease(v3);
  }

  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v10 = sub_10000A878(v0);
    [sub_10000FC2C() WFLog:v10 message:?];
  }

  objc_autoreleasePoolPop(v6);
  v7 = sub_100011580();

  return sub_100159BD0(v7, v8, 6);
}

void sub_100172EC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null payload", "__WiFiManagerEventCoalesceUndispatchedEventData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100172F34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null serializedEventData", "__WiFiManagerEventCoalesceUndispatchedEventData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100172FA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Unable to get pending clients", "__WiFiManagerEventIsRateDispatchable"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173000()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null eventDict", "__WiFiManagerEventIsRateDispatchable"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173060(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerEventCopyCoalescedUndispatchedEventData"}];
  }

  objc_autoreleasePoolPop(v2);
  *a1 = 0;
}

void sub_1001730C8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s - Usb Removal Usb Host Notification for %@ seqNum %d Total %d\n", "__WiFiManagerhandleNotificationForService", a3, *(a1 + 2692), *a2}];
  }

  objc_autoreleasePoolPop(v6);
}

id sub_100173148()
{
  sub_10001131C();
  v3 = *(v2 + 2736);
  [NSNumber numberWithUnsignedLongLong:*v4];
  result = [sub_10000757C() objectForKeyedSubscript:?];
  if (result)
  {
    v6 = result;
    v7 = *(v1 + 2736);
    [NSNumber numberWithUnsignedLongLong:*v0];
    [sub_1000305C4() removeObjectForKey:?];
    result = [v6 unsignedIntValue];
    if (result)
    {
      return IOObjectRelease(result);
    }
  }

  return result;
}

void sub_1001731BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: nil manager queue.", "__WiFiManagerFrontBoardDisplayCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173228()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiManagerFrontBoardDisplayCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173294()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"FrontBoard Display Layout is Null!"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001732EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: IORegistryEntryCreateCFProperties failed with error %d", "__WiFiManagerGetBatteryLevel", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100173350(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: BT callback failure, result %d", "__WiFiManagerBluetoothServiceCallback", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001733C0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: BT callback failure, invalid userData type", "__WiFiManagerBluetoothServiceCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017342C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager queue null", "__WiFiManagerBluetoothServiceCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173498()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: BT callback failure, null userData", "__WiFiManagerBluetoothServiceCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173504(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: BT callback failure, result %d", "__WiFiManagerBluetoothLocalDeviceCallback", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100173574()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: BT callback failure, invalid userData type", "__WiFiManagerBluetoothLocalDeviceCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001735E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager queue null", "__WiFiManagerBluetoothLocalDeviceCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017364C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: BT callback failure, null userData", "__WiFiManagerBluetoothLocalDeviceCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001736B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: user auto join is not disabled, location update not required", "__WiFiManagerUserAutoJoinDisabledLocationUpdate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173724()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: user auto join is not waiting on a location update", "__WiFiManagerUserAutoJoinDisabledLocationUpdate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173790()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "__WiFiManagerUserAutoJoinDisabledLocationUpdate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001737FC(uint64_t a1, const __CFArray **a2)
{
  v7 = [objc_msgSend(*(a1 + 1792) "latestLocation")];
  v3 = sub_100095274();
  v5 = [v4 isLocationValid:v3 uptoSeconds:? isHighAccuracy:?];
  [WiFiLocationManager logLocation:v7 addPrefixString:@"__WiFiManagerLocationManagerCallback"];
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: isValid %d", "__WiFiManagerLocationManagerCallback_block_invoke", v5 != 0}];
  }

  objc_autoreleasePoolPop(v6);
  sub_100169E08(*a2, v7);
  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
}

void sub_1001738E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: [MOTION] this device does not support motion data", "-[WiFiManagerMotionServices init]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173950()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"motionStateChangeCb is NULL!"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001739A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: motionServices is null", "WiFiManagerMotionServicesInitialize"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173A14()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null motionStateChangeCb", "WiFiManagerMotionServicesInitialize"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173A80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerMotionServicesInitialize"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173AEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null motionServices", "WiFiManagerMotionServicesEnd"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173C80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"failed to create WiFiAwareSubscribeConfiguration"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173CD8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"networkMacAddr is NULL"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100173D30()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"networkSsid is NULL"];
  }

  objc_autoreleasePoolPop(v0);
}

void *sub_100173D88(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (!qword_1002985C8)
  {
    pthread_once(&stru_1002979C8, sub_100099B2C);
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    Instance[5] = 0u;
    Instance[6] = 0u;
    Instance[3] = 0u;
    Instance[4] = 0u;
    Instance[1] = 0u;
    Instance[2] = 0u;
    *(Instance + 4) = a3;
    if (!a4 || ((v11.version = 0, memset(&v11.retain, 0, 24), v11.info = Instance, !a3) ? (v9 = CFMachPortCreate(kCFAllocatorDefault, sub_100173EAC, &v11, 0)) : (v9 = sub_100058B38()), (v8[7] = v9) != 0))
    {
      v8[3] = a2;
      return v8;
    }

    CFRelease(v8);
    return 0;
  }

  return v8;
}

void sub_100173EAC(int a1, mach_msg_header_t *a2, int a3, CFTypeRef cf)
{
  if (!cf)
  {
    return;
  }

  CFRetain(cf);
  v6 = *(cf + 3);
  Typed = CFAllocatorAllocateTyped();
  if (Typed)
  {
    v8 = Typed;
    msgh_remote_port = a2->msgh_remote_port;
    *Typed = a2->msgh_bits & 0x1F;
    *(Typed + 4) = 36;
    *(Typed + 8) = msgh_remote_port;
    *(Typed + 20) = a2->msgh_id + 100;
    if (a2->msgh_id == 70)
    {
      *Typed = 0;
      *(Typed + 8) = 0;
      *(Typed + 32) = 0;
      v10 = (Typed + 32);
      v11 = *(cf + 12);
      if (v11)
      {
        v11(cf, *(cf + 13));
      }
    }

    else
    {
      v12 = NDR_record;
      *(Typed + 32) = -303;
      v10 = (Typed + 32);
      *(Typed + 24) = v12;
      v13 = *(cf + 10);
      if (v13)
      {
        v13(cf, a2, Typed, *(cf + 11));
      }
    }

    if ((v8->msgh_bits & 0x80000000) == 0 && *v10)
    {
      if (*v10 == -305)
      {
        goto LABEL_18;
      }

      a2->msgh_remote_port = 0;
      mach_msg_destroy(a2);
    }

    if (v8->msgh_remote_port)
    {
      if ((v8->msgh_bits & 0x1F) == 0x12)
      {
        v14 = 1;
      }

      else
      {
        v14 = 17;
      }

      if ((mach_msg(v8, v14, v8->msgh_size, 0, 0, 0, 0) - 268435459) > 1)
      {
        goto LABEL_18;
      }
    }

    else if ((v8->msgh_bits & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    mach_msg_destroy(v8);
LABEL_18:
    CFAllocatorDeallocate(0, v8);
  }

  CFRelease(cf);
}

void sub_100174038(uint64_t a1, CFRunLoopRef rl, CFRunLoopMode mode)
{
  *(a1 + 32) = rl;
  *(a1 + 40) = mode;
  RunLoopSource = *(a1 + 48);
  if (RunLoopSource || (RunLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, *(a1 + 56), 1), (*(a1 + 48) = RunLoopSource) != 0))
  {

    CFRunLoopAddSource(rl, RunLoopSource, mode);
  }
}

uint64_t sub_1001740C0(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  [a1[2] addObject:{objc_msgSend(a1, "handleSignal:onQueue:", 2, a2)}];
  [a1[2] addObject:{objc_msgSend(a1, "handleSignal:onQueue:", 15, a2)}];
  [a1[2] addObject:{objc_msgSend(a1, "handleSignal:onQueue:", 3, a2)}];
  sub_100074BFC(*a3, 0);
  sub_10007A138(*a3);
  sub_100074D14(*a3, a2, a4);

  return notify_post("com.apple.wifivelocity.trigger");
}

void sub_1001741DC(void ***block, void **a2)
{
  v3 = qword_100298C60;
  *block = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009A6D4;
  block[3] = &unk_1002608E0;
  block[4] = a2;
  dispatch_async(v3, block);
}

void sub_100174384()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Registration with CPMS/PPM failed!", "-[WiFiBatteryManager configureWiFiClientAndRegisterWithBatteryModule::::]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001743E4(void *a1)
{
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : NULL Request", "-[WiFiBatteryManager WiFiBatteryManagerHandlePowerAdmissionResponse:]"}];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_10017445C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : No Pending Admission Request", "-[WiFiBatteryManager WiFiBatteryManagerHandlePowerAdmissionResponse:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001744C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Self uninitialized.", "-[WiFiBatteryManager WiFiBatteryManagerHandlePowerAdmissionResponse:]"}];
  }

  objc_autoreleasePoolPop(v0);
}

_WORD *sub_100174534(uint64_t a1, uint64_t a2)
{
  result = sub_10000B0F4(kCFAllocatorDefault, *(a2 + 16), 1);
  result[12] = *(a2 + 24);
  return result;
}

CFDictionaryRef sub_100174574(CFDictionaryRef result, CFDictionaryRef theDict)
{
  if (result)
  {
    v3 = result;
    if (theDict && (Count = CFDictionaryGetCount(theDict), (v5 = Count) != 0))
    {
      v6 = 8 * Count;
      v7 = malloc_type_malloc(v6, 0x6004044C4A2DFuLL);
      v8 = malloc_type_malloc(v6, 0xC0040B8AA526DuLL);
      Default = CFAllocatorGetDefault();
      MutableCopy = CFDictionaryCreateMutableCopy(Default, 0, v3);
      CFDictionaryGetKeysAndValues(theDict, v7, v8);
      v11 = 0;
      v12 = 8 * v5;
      do
      {
        CFDictionaryGetValueIfPresent(MutableCopy, v7[v11 / 8], 0);
        CFDictionaryAddValue(MutableCopy, v7[v11 / 8], v8[v11 / 8]);
        v11 += 8;
      }

      while (v12 != v11);
      free(v8);
      free(v7);
      v13 = CFAllocatorGetDefault();
      Copy = CFDictionaryCreateCopy(v13, MutableCopy);
      CFRelease(MutableCopy);
      return Copy;
    }

    else
    {
      v15 = CFAllocatorGetDefault();

      return CFDictionaryCreateCopy(v15, v3);
    }
  }

  return result;
}

const void *sub_1001746AC(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return CFDictionaryGetValue(v1, @"DiagnosticsBssEnv");
  }

  else
  {
    return 0;
  }
}

const __CFData *sub_1001746D0(uint64_t a1, unsigned __int8 *a2)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"IE");
  LODWORD(v11) = 116528896;
  WORD2(v11) = 258;
  BYTE6(v11) = 6;
  if (result)
  {
    result = CFDataGetBytePtr(result);
    if (result)
    {
      v5 = sub_10000DACC();
      if (CFDataGetLength(v5) < 1)
      {
        return 0;
      }

      else
      {
        while (1)
        {
          sub_100008C80();
          if (v6)
          {
            if (*(v2 + 1) == 13 && !bcmp((v2 + 2), &v11, 7uLL))
            {
              break;
            }
          }

          sub_10000DB40();
          if (v7 == v8)
          {
            return 0;
          }
        }

        v9 = *(v2 + 9);
        *(a2 + 2) = *(v2 + 13);
        *a2 = v9;
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: BT MAC found in Apple IE %02X:%02X:%02X:%02X:%02X:%02X", "__WiFiNetworkGetBtMacFromIe", *a2, a2[1], a2[2], a2[3], a2[4], a2[5], v11}];
        }

        objc_autoreleasePoolPop(v10);
        return 1;
      }
    }
  }

  return result;
}

const UInt8 *sub_100174800(uint64_t a1)
{
  v2 = malloc_type_malloc(0x11uLL, 0x2C82D9B8uLL);
  Value = CFDictionaryGetValue(*(a1 + 16), @"IE");
  v21 = 116528896;
  if (!Value)
  {
LABEL_18:
    BytePtr = 0;
    goto LABEL_20;
  }

  v4 = Value;
  BytePtr = CFDataGetBytePtr(Value);
  if (BytePtr)
  {
    Length = CFDataGetLength(v4);
    if (Length >= 1)
    {
      v7 = &BytePtr[Length];
      do
      {
        sub_100008C80();
        v8 = BytePtr + 6;
        if (v9)
        {
          v10 = v8 > v7;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && !bcmp(BytePtr + 2, &v21, 4uLL))
        {
          for (i = BytePtr + 9; i <= v7; i = v18 + 6)
          {
            v14 = v8[2];
            v15 = sub_10000FC2C();
            if (!bcmp(v15, v16, v17) && (v8 + 21) <= v7)
            {
              v19 = *(v8 + 4);
              v2[16] = v8[20];
              *v2 = v19;
              BytePtr = [[NSString alloc] initWithFormat:@"%s", v2];
              goto LABEL_20;
            }

            v18 = &v8[v14];
            v8 += v14 + 3;
          }
        }

        sub_10001EDB8();
      }

      while (v11 != v12);
    }

    goto LABEL_18;
  }

LABEL_20:
  free(v2);
  return BytePtr;
}

const UInt8 *sub_100174960(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"IE");
  if (*a3 < 3u || Value == 0)
  {
    return 0;
  }

  v7 = Value;
  result = CFDataGetBytePtr(Value);
  if (!result)
  {
    return result;
  }

  v9 = result;
  Length = CFDataGetLength(v7);
  if (Length < 1)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = v9[1];
    if (*v9 == 7 && v12 >= 3)
    {
      break;
    }

    v14 = v12 + 2;
    v11 += v14;
    v9 += v14;
    if (v11 >= Length)
    {
      return 0;
    }
  }

  v15 = *(v9 + 1);
  *(a2 + 2) = v9[4];
  *a2 = v15;
  *a3 = 3;
  return 1;
}

CFDictionaryRef *sub_100174A1C(CFDictionaryRef *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result[2], @"RSN_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_RSN_CAPS");
      if (result)
      {
        result = CFDictionaryGetValue(result, @"OCV");
        if (result)
        {
          return (CFBooleanGetValue(result) == 1);
        }
      }
    }
  }

  return result;
}

BOOL sub_100174A78(uint64_t a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), @"IsWiFiNetworkShareble");
  if (!Value)
  {
    return 1;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  return valuePtr != 0;
}

double sub_100174AD4(uint64_t a1)
{
  valuePtr = 0.0;
  if (!a1)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetExpireDate"}];
    }

    objc_autoreleasePoolPop(v3);
    return 0.0;
  }

  v1 = sub_10000A540(a1, @"WiFiNetworkExpirationDate");
  if (!v1)
  {
    return 0.0;
  }

  CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
  return valuePtr;
}

uint64_t sub_100174B68(uint64_t a1)
{
  v17 = 18;
  valuePtr = 13;
  v2 = sub_100009730(a1);
  if (v2 && (v3 = sub_10000A540(a1, @"AcceptEAPTypes")) != 0 && (v4 = v3, (v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr)) != 0))
  {
    v6 = v5;
    CFArrayGetCount(v4);
    v7 = sub_10000757C();
    v19.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v19, v6);
    CFRelease(v6);
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v17);
    if (v9)
    {
      v10 = v9;
      CFArrayGetCount(v4);
      v11 = sub_10000757C();
      v20.location = 0;
      v12 = CFArrayGetFirstIndexOfValue(v11, v20, v10);
      CFRelease(v10);
      v13 = v12 == -1;
      goto LABEL_6;
    }
  }

  else
  {
    FirstIndexOfValue = -1;
  }

  v13 = 1;
LABEL_6:
  v15 = v2 && FirstIndexOfValue == -1;
  return v15 & v13;
}

const void *sub_100174C78(const void *result)
{
  if (result)
  {
    result = sub_10000A540(result, @"OneTimeUserPassword");
    if (result)
    {
      return (CFEqual(result, kCFBooleanTrue) != 0);
    }
  }

  return result;
}

uint64_t sub_100174CBC(int a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  if (a1 < 0xF)
  {
    return 1;
  }

  v2 = 0;
  while (dword_100297AA8[v2] != a1)
  {
    if (++v2 == 33)
    {
      return 0;
    }
  }

  return 2;
}

void sub_100174D08()
{
  sub_10000FC44();
  if (v0 && (v2 = v1) != 0 && (v3 = v0, CFArrayGetCount(v1) >= 1) && (v4 = sub_10000A540(v3, @"networkKnownBSSListKey")) != 0 && (v5 = v4, (Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks)) != 0))
  {
    v7 = Mutable;
    if (CFArrayGetCount(v5) >= 1)
    {
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        if (ValueAtIndex)
        {
          v10 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
          if (Value)
          {
            v12 = Value;
            CFArrayGetCount(v2);
            v13 = sub_100011340();
            if (CFArrayGetFirstIndexOfValue(v13, v21, v12) == -1)
            {
              CFArrayAppendValue(v7, v10);
            }

            else
            {
              v14 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:"%s: Removed known BSS from index %ld"];
              }

              objc_autoreleasePoolPop(v14);
            }
          }
        }

        ++v8;
      }

      while (v8 < CFArrayGetCount(v5));
    }

    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: updated known BSS list after removal - %@"];
    }

    objc_autoreleasePoolPop(v15);
    v16 = sub_10000D818();
    sub_10000AD34(v16, v17, v18);
    sub_1000113F8();

    CFRelease(v19);
  }

  else
  {
    sub_1000113F8();
  }
}

void sub_100174EB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *value, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000FDC0();
  v27 = v26;
  v29 = v28;
  Current = CFAbsoluteTimeGetCurrent();
  v31 = CFDateCreate(kCFAllocatorDefault, Current);
  if (v29 && v27)
  {
    v32 = sub_10000A540(v27, @"CHANNEL");
    v33 = sub_10000A540(v27, @"CHANNEL_FLAGS");
    v34 = sub_10000A540(v27, @"BSSID");
    if (!v34)
    {
      v69 = objc_autoreleasePoolPush();
      v70 = off_100298C40;
      if (off_100298C40)
      {
        sub_10000A878(v27);
        [v70 WFLog:3 message:"%s: failed to get BSSID from %@"];
      }

      objc_autoreleasePoolPop(v69);
      if (v31)
      {
        goto LABEL_31;
      }

LABEL_37:
      sub_100008690();
      return;
    }

    v35 = v34;
    v36 = sub_100011334();
    Mutable = CFArrayCreateMutable(v36, v37, v38);
    if (Mutable)
    {
      v40 = Mutable;
      v72 = v33;
      v41 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: BSS updated - current BSS: %@ (%@)"];
      }

      valuea = v32;
      objc_autoreleasePoolPop(v41);
      v42 = sub_10000A540(v29, @"networkKnownBSSListKey");
      if (!v42)
      {
        goto LABEL_20;
      }

      v43 = v42;
      v71 = v31;
      if (CFArrayGetCount(v42) < 1)
      {
        v44 = 0;
      }

      else
      {
        v44 = 0;
        v45 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v43, v45);
          if (ValueAtIndex)
          {
            v47 = ValueAtIndex;
            v48 = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
            if (v48)
            {
              if (CFEqual(v48, v35))
              {
                v44 = v47;
              }

              else
              {
                CFArrayAppendValue(v40, v47);
              }
            }
          }

          ++v45;
        }

        while (v45 < CFArrayGetCount(v43));
      }

      v31 = v71;
      if (v44)
      {
        v49 = sub_100011334();
        MutableCopy = CFDictionaryCreateMutableCopy(v49, v50, v44);
      }

      else
      {
LABEL_20:
        v52 = sub_100011334();
        MutableCopy = CFDictionaryCreateMutable(v52, v53, v54, v55);
      }

      v56 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionarySetValue(MutableCopy, @"BSSID", v35);
        CFDictionarySetValue(v56, @"CHANNEL", valuea);
        CFDictionarySetValue(v56, @"CHANNEL_FLAGS", v72);
        CFDictionarySetValue(v56, @"lastRoamed", v31);
        CFArrayAppendValue(v40, v56);
        if (CFArrayGetCount(v40) >= 21)
        {
          v57 = objc_autoreleasePoolPush();
          v58 = off_100298C40;
          if (off_100298C40)
          {
            v59 = sub_100034FE4();
            CFArrayGetValueAtIndex(v59, v60);
            [v58 WFLog:3 message:"%s: known BSS list has grown beyond maximum. Removing %@"];
          }

          objc_autoreleasePoolPop(v57);
          v61 = sub_100034FE4();
          CFArrayRemoveValueAtIndex(v61, v62);
        }

        v63 = objc_autoreleasePoolPush();
        v64 = off_100298C40;
        if (off_100298C40)
        {
          sub_10000A878(v29);
          CFArrayGetCount(v40);
          [v64 WFLog:2 message:"%s: known BSS stats for %@ - num. of BSS = %ld"];
        }

        objc_autoreleasePoolPop(v63);
        v65 = sub_100011580();
        sub_10000AD34(v65, v66, v40);
        sub_10000AD34(v29, @"networkKnownBSSListKey", v40);
        CFRelease(v56);
      }

      CFRelease(v40);
    }
  }

  if (!v31)
  {
    goto LABEL_37;
  }

LABEL_31:
  sub_100008690();

  CFRelease(v67);
}

void sub_100175228(const void *a1, const void *a2, double a3, double a4, double a5)
{
  if (!a1 || !a2)
  {
    goto LABEL_22;
  }

  v10 = sub_10000A540(a1, @"BSSID");
  if (v10)
  {
    v11 = v10;
    v12 = sub_100034FE4();
    Mutable = CFArrayCreateMutable(v12, v13, v14);
    if (Mutable)
    {
      v16 = Mutable;
      v17 = sub_10000A540(a1, @"networkKnownBSSListKey");
      if (v17)
      {
        v18 = v17;
        if (CFArrayGetCount(v17) >= 1)
        {
          v19 = 0;
          v20 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
            if (ValueAtIndex)
            {
              v22 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              if (Value)
              {
                if (CFEqual(Value, v11))
                {
                  v19 = v22;
                }

                else
                {
                  CFArrayAppendValue(v16, v22);
                }
              }
            }

            ++v20;
          }

          while (v20 < CFArrayGetCount(v18));
          if (v19)
          {
            v24 = sub_100034FE4();
            MutableCopy = CFDictionaryCreateMutableCopy(v24, v25, v19);
            if (MutableCopy)
            {
              v27 = MutableCopy;
              CFDictionarySetValue(MutableCopy, @"networkLocnLat", [NSNumber numberWithDouble:a3]);
              CFDictionarySetValue(v27, @"networkLocnLong", [NSNumber numberWithDouble:a4]);
              CFDictionarySetValue(v27, @"networkLocnAccuracy", [NSNumber numberWithDouble:a5]);
              CFDictionarySetValue(v27, @"networkLocnTimestamp", a2);
              v28 = sub_100003930();
              CFArrayAppendValue(v28, v29);
              v30 = sub_10000D818();
              sub_10000AD34(v30, v31, v32);
              CFRelease(v27);
            }
          }
        }
      }

      sub_100015E64();

      CFRelease(v33);
      return;
    }

LABEL_22:
    sub_100015E64();
    return;
  }

  v35 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to get BSSID from %@", "WiFiNetworkSetBSSLocation", sub_10000A878(a1)}];
  }

  sub_100015E64();

  objc_autoreleasePoolPop(v36);
}

void sub_100175490()
{
  sub_10000FC44();
  if (!v0)
  {
    goto LABEL_18;
  }

  v3 = v2;
  if (!v2)
  {
    goto LABEL_18;
  }

  v4 = v1;
  v5 = v0;
  sub_10000A878(v0);
  if (v4)
  {
    v6 = sub_100034FE4();
    Mutable = CFArrayCreateMutable(v6, v7, v8);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = sub_10000A540(v5, @"networkKnownBSSListKey");
      if (v11)
      {
        v12 = v11;
        if (CFArrayGetCount(v11) >= 1)
        {
          v13 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
            if (ValueAtIndex)
            {
              v15 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              if (Value)
              {
                if (CFStringCompare(Value, v4, 1uLL))
                {
                  CFArrayAppendValue(v10, v15);
                }

                else
                {
                  v17 = sub_100034FE4();
                  MutableCopy = CFDictionaryCreateMutableCopy(v17, v18, v15);
                  if (MutableCopy)
                  {
                    v20 = MutableCopy;
                    (*(v3 + 16))(v3, MutableCopy);
                    CFArrayAppendValue(v10, v20);
                    CFRelease(v20);
                  }
                }
              }
            }

            ++v13;
          }

          while (v13 < CFArrayGetCount(v12));
        }
      }

      sub_10000AD34(v5, @"networkKnownBSSListKey", v10);
      sub_1000113F8();

      CFRelease(v21);
      return;
    }

LABEL_18:
    sub_1000113F8();
    return;
  }

  objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: failed to get BSSID from %@"];
  }

  sub_1000113F8();

  objc_autoreleasePoolPop(v23);
}

void sub_100175658(const void *a1, const void *a2)
{
  if (!a1 || !a2)
  {
    goto LABEL_24;
  }

  v4 = sub_10000A540(a1, @"BSSID");
  if (v4)
  {
    v5 = v4;
    v6 = sub_100034FE4();
    Mutable = CFArrayCreateMutable(v6, v7, v8);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: BSS updated - current BSS: %@ (awdl=%@)", "WiFiNetworkSetBSSAWDLRealTimeModeTimestamp", v5, a2}];
      }

      objc_autoreleasePoolPop(v11);
      v12 = sub_10000A540(a1, @"networkKnownBSSListKey");
      if (v12)
      {
        v13 = v12;
        if (CFArrayGetCount(v12) >= 1)
        {
          v14 = 0;
          v15 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v15);
            if (ValueAtIndex)
            {
              v17 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              if (Value)
              {
                if (CFEqual(Value, v5))
                {
                  v14 = v17;
                }

                else
                {
                  CFArrayAppendValue(v10, v17);
                }
              }
            }

            ++v15;
          }

          while (v15 < CFArrayGetCount(v13));
          if (v14)
          {
            v19 = sub_100034FE4();
            MutableCopy = CFDictionaryCreateMutableCopy(v19, v20, v14);
            if (MutableCopy)
            {
              v22 = MutableCopy;
              CFDictionarySetValue(MutableCopy, @"AWDLRealTimeModeTimestamp", a2);
              v23 = sub_100003930();
              CFArrayAppendValue(v23, v24);
              v25 = sub_10000D818();
              sub_10000AD34(v25, v26, v27);
              CFRelease(v22);
            }
          }
        }
      }

      sub_10001091C();

      CFRelease(v28);
      return;
    }

LABEL_24:
    sub_10001091C();
    return;
  }

  v30 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to get BSSID from %@", "WiFiNetworkSetBSSAWDLRealTimeModeTimestamp", sub_10000A878(a1)}];
  }

  sub_10001091C();

  objc_autoreleasePoolPop(v31);
}

void sub_100175884(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int valuePtr, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_10000FDC0();
  a28 = v29;
  a29 = v34;
  a16 = v33;
  a17 = v32;
  if (!v30)
  {
    goto LABEL_45;
  }

  v35 = v31;
  if (!v31)
  {
    goto LABEL_45;
  }

  v36 = v33;
  v37 = v32;
  v38 = v30;
  v39 = sub_10000A540(v31, @"BSSID");
  if (v39)
  {
    v40 = v39;
    v41 = sub_100011334();
    Mutable = CFArrayCreateMutable(v41, v42, v43);
    v45 = objc_autoreleasePoolPush();
    v46 = off_100298C40;
    if (Mutable)
    {
      v91 = v36;
      a14 = v37;
      if (off_100298C40)
      {
        sub_10000A878(v35);
        [v46 WFLog:3 message:"%s: BSS late roam data - %@ current BSS: %@"];
      }

      objc_autoreleasePoolPop(v45);
      v47 = sub_10000A540(v38, @"networkKnownBSSListKey");
      if (!v47)
      {
        goto LABEL_44;
      }

      v48 = v47;
      if (CFArrayGetCount(v47) < 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = 0;
        v50 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v48, v50);
          if (ValueAtIndex)
          {
            v52 = ValueAtIndex;
            Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
            if (Value)
            {
              if (CFEqual(Value, v40))
              {
                v49 = v52;
              }

              else
              {
                CFArrayAppendValue(Mutable, v52);
              }
            }
          }

          ++v50;
        }

        while (v50 < CFArrayGetCount(v48));
      }

      if (!v49)
      {
        goto LABEL_44;
      }

      v54 = sub_100011334();
      MutableCopy = CFDictionaryCreateMutableCopy(v54, v55, v49);
      if (!MutableCopy)
      {
        v83 = objc_autoreleasePoolPush();
        v84 = sub_10001E7CC();
        if (v84)
        {
          [v84 WFLog:4 message:"%s: Failed to create newBssDict"];
        }

        objc_autoreleasePoolPop(v35);
        goto LABEL_44;
      }

      v57 = MutableCopy;
      v58 = CFDictionaryGetValue(v49, @"lateRoamInfo");
      if (v58)
      {
        v59 = v58;
        v60 = objc_autoreleasePoolPush();
        v61 = off_100298C40;
        if (off_100298C40)
        {
          sub_10000A878(v35);
          [v61 WFLog:4 message:"%s: Creating new Late Roam Info %@ - %@"];
        }

        objc_autoreleasePoolPop(v60);
        v62 = sub_100011334();
        v64 = CFDictionaryCreateMutableCopy(v62, v63, v59);
      }

      else
      {
        v65 = sub_100011334();
        v64 = CFDictionaryCreateMutable(v65, v66, v67, v68);
      }

      v69 = v64;
      if (!v64)
      {
        v85 = objc_autoreleasePoolPush();
        v86 = sub_10001E7CC();
        if (v86)
        {
          [v86 WFLog:4 message:"%s: Failed to create newLateRoamInfoDict"];
        }

        objc_autoreleasePoolPop(v35);
        goto LABEL_43;
      }

      v70 = CFDictionaryGetValue(v64, @"lateRoamMinDelta");
      if (v70 && (valuePtr = 0, CFNumberGetValue(v70, kCFNumberIntType, &valuePtr)) && valuePtr <= a14)
      {
        v72 = 0;
      }

      else
      {
        v71 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &a17);
        if (!v71)
        {
          v87 = objc_autoreleasePoolPush();
          v88 = sub_10001E7CC();
          if (v88)
          {
            [v88 WFLog:4 message:"%s: Failed to create newMinDeltaRef"];
          }

          objc_autoreleasePoolPop(v35);
          goto LABEL_42;
        }

        v72 = v71;
        CFDictionarySetValue(v69, @"lateRoamMinDelta", v71);
      }

      v73 = CFDictionaryGetValue(v69, @"lateRoamMaxDelta");
      if (v73 && (valuePtr = 0, CFNumberGetValue(v73, kCFNumberIntType, &valuePtr)) && valuePtr >= v91)
      {
        v75 = 0;
      }

      else
      {
        v74 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &a16);
        if (!v74)
        {
          v89 = objc_autoreleasePoolPush();
          v90 = sub_10001E7CC();
          if (v90)
          {
            [v90 WFLog:4 message:"%s: Failed to create newMaxDeltaRef"];
          }

          objc_autoreleasePoolPop(v35);
          v75 = 0;
          if (!v72)
          {
            goto LABEL_40;
          }

LABEL_39:
          CFRelease(v72);
LABEL_40:
          if (v75)
          {
            CFRelease(v75);
          }

LABEL_42:
          CFRelease(v69);
LABEL_43:
          CFRelease(v57);
LABEL_44:
          CFRelease(Mutable);
LABEL_45:
          sub_100008690();
          return;
        }

        v75 = v74;
        CFDictionarySetValue(v69, @"lateRoamMaxDelta", v74);
      }

      CFDictionarySetValue(v57, @"lateRoamInfo", v69);
      CFArrayAppendValue(Mutable, v57);
      v76 = objc_autoreleasePoolPush();
      v77 = off_100298C40;
      if (off_100298C40)
      {
        sub_10000A878(v35);
        [v77 WFLog:3 message:"%s: Updated BSS late roam data - %@ current BSS: %@"];
      }

      objc_autoreleasePoolPop(v76);
      sub_10000AD34(v35, @"networkKnownBSSListKey", Mutable);
      v78 = sub_100003930();
      sub_10000AD34(v78, v79, Mutable);
      if (!v72)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: Failed to create newBssList"];
    }
  }

  else
  {
    objc_autoreleasePoolPush();
    v80 = off_100298C40;
    if (off_100298C40)
    {
      sub_10000A878(v35);
      [v80 WFLog:4 message:"%s: Failed to get BSSID from %@"];
    }
  }

  sub_100008690();

  objc_autoreleasePoolPop(v81);
}

void sub_100175D84(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  valuePtr = 0;
  v45 = 0;
  if (!a1 || !a2)
  {
    return;
  }

  v7 = a3 - 3;
  if ((a3 - 3) >= 3)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Incorrect reason code, bailing out!"}];
    }

    objc_autoreleasePoolPop(v13);
    return;
  }

  v8 = Current;
  LODWORD(v40) = dword_1001CE5F4[v7];
  HIDWORD(v40) = dword_1001CE5E8[v7];
  v9 = sub_10000A540(a1, @"knownBSSUpdatedDate");
  v10 = CFDateCreate(kCFAllocatorDefault, v8);
  if (!v9)
  {
    v12 = 1;
    goto LABEL_14;
  }

  v11 = v8 - CFDateGetAbsoluteTime(v9);
  if (v11 > 2592000.0)
  {
    v12 = 0;
    LOBYTE(v9) = 1;
LABEL_14:
    sub_10000AD34(a1, @"knownBSSUpdatedDate", v10);
    v14 = v12;
    v43 = v9;
    goto LABEL_15;
  }

  LOBYTE(v9) = 0;
  v14 = 0;
  v12 = 1;
  v43 = 1;
  if (v11 > 1296000.0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v38 = a1;
  v15 = sub_10000A540(a1, @"networkKnownBSSListKey");
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v17 = Mutable;
    v41 = v12;
    v39 = v10;
    if (v15 && CFArrayGetCount(v15) >= 1)
    {
      v18 = 0;
      v42 = v14 | v9;
      v19 = @"BSSID";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
        if (!ValueAtIndex)
        {
          goto LABEL_48;
        }

        v21 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, v19);
        if (!Value)
        {
          goto LABEL_48;
        }

        v23 = Value;
        if (CFStringCompare(Value, a2, 0))
        {
          v45 = 0;
          if ((v42 & 1) == 0)
          {
            CFArrayAppendValue(v17, v21);
            goto LABEL_48;
          }
        }

        else
        {
          v45 = v40;
        }

        v24 = CFDictionaryGetValue(v21, @"beaconLossCount");
        if (v24)
        {
          CFNumberGetValue(v24, kCFNumberIntType, &valuePtr);
          if (v43)
          {
            if (!v41)
            {
              goto LABEL_31;
            }

            v25 = valuePtr & 0xFF00 | (BYTE4(v45) + valuePtr);
          }

          else
          {
            v25 = BYTE4(v45) | (valuePtr << 8);
          }

          HIDWORD(v45) = v25;
        }

LABEL_31:
        v26 = CFDictionaryGetValue(v21, @"trigDisconnectCount");
        if (!v26)
        {
          goto LABEL_37;
        }

        CFNumberGetValue(v26, kCFNumberIntType, &valuePtr);
        if (v43)
        {
          if (!v41)
          {
            goto LABEL_37;
          }

          v27 = valuePtr & 0xFF00 | (v45 + valuePtr);
        }

        else
        {
          v27 = v45 | (valuePtr << 8);
        }

        LODWORD(v45) = v27;
LABEL_37:
        v28 = CFEqual(v23, a2);
        if (a3 == 5 && v28)
        {
          v45 = 0;
        }

        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v21);
        if (!MutableCopy)
        {
          goto LABEL_50;
        }

        v30 = MutableCopy;
        v31 = a3;
        v32 = v19;
        v33 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v45 + 4);
        if (v33)
        {
          v34 = v33;
          CFDictionarySetValue(v30, @"beaconLossCount", v33);
          CFRelease(v34);
        }

        v35 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v45);
        if (v35)
        {
          v36 = v35;
          CFDictionarySetValue(v30, @"trigDisconnectCount", v35);
          CFRelease(v36);
        }

        CFArrayInsertValueAtIndex(v17, v18, v30);
        CFRelease(v30);
        v37 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: %@ - bcnloss:%d (%d %d) trgDisc:%d (%d %d)", "WiFiNetworkSetBssDisconnectReason", v23, BYTE5(v45) + BYTE4(v45), BYTE4(v45), BYTE5(v45), BYTE1(v45) + v45, v45, BYTE1(v45), v38}];
        }

        objc_autoreleasePoolPop(v37);
        v19 = v32;
        a3 = v31;
LABEL_48:
        ++v18;
      }

      while (v18 < CFArrayGetCount(v15));
    }

    sub_10000AD34(v38, @"networkKnownBSSListKey", v17);
LABEL_50:
    CFRelease(v17);
    v10 = v39;
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_100176200()
{
  sub_10000FC44();
  v1 = sub_10000A540(v0, @"networkKnownBSSListKey");
  if (v1)
  {
    v2 = v1;
    v3 = sub_100011340();
    Mutable = CFDictionaryCreateMutable(v3, v4, v5, v6);
    if (Mutable)
    {
      if (CFArrayGetCount(v2) >= 1)
      {
        v8 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, v8);
          if (ValueAtIndex)
          {
            v10 = ValueAtIndex;
            if (CFDictionaryGetValue(ValueAtIndex, @"CHANNEL"))
            {
              v11 = sub_100011340();
              v13 = CFStringCreateMutable(v11, v12);
              if (v13)
              {
                v14 = v13;
                CFStringAppendFormat(v13, 0, @"%@");
                CFDictionarySetValue(Mutable, v14, v10);
                CFRelease(v14);
              }
            }
          }

          ++v8;
        }

        while (v8 < CFArrayGetCount(v2));
      }
    }
  }

  sub_1000113F8();
}

void sub_10017630C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int valuePtr, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000FC44();
  a22 = v23;
  a23 = v24;
  valuePtr = 0;
  v26 = sub_10000A540(v25, @"networkKnownBSSListKey");
  if (v26)
  {
    v27 = v26;
    Count = CFArrayGetCount(v26);
    if (Count >= 2)
    {
      v29 = Count;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      a11 = -1431655766;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v27, v33);
        if (ValueAtIndex)
        {
          v35 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL");
          v37 = CFDictionaryGetValue(v35, @"CHANNEL_FLAGS");
          if (Value)
          {
            v38 = v37;
            if (v37)
            {
              CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
              CFNumberGetValue(v38, kCFNumberSInt32Type, &a11);
              if (valuePtr)
              {
                if (a11)
                {
                  if ((a11 & 8) != 0)
                  {
                    ++v32;
                  }

                  else if ((a11 & 0x10) != 0)
                  {
                    ++v31;
                  }

                  else
                  {
                    v30 += (a11 >> 13) & 1;
                  }
                }
              }
            }
          }
        }

        ++v33;
      }

      while (v29 != v33);
    }
  }

  sub_1000113F8();
}

uint64_t sub_100176434(uint64_t a1)
{
  if (!a1)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetForcedHomeFix"}];
    }

    goto LABEL_11;
  }

  v1 = sub_10000A540(a1, @"NetworkForcedHomeFix");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 != CFBooleanGetTypeID())
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: invalid value type", "WiFiNetworkGetForcedHomeFix"}];
    }

LABEL_11:
    objc_autoreleasePoolPop(v5);
    return 0;
  }

  return CFBooleanGetValue(v2);
}

void sub_10017651C(uint64_t a1, __CFString *a2)
{
  value = kCFBooleanFalse;
  if (a2)
  {
    v4 = CFDictionaryGetValue(*(a1 + 16), @"DomainName");
    if (v4)
    {
      v5 = v4;
      CFStringAppend(a2, @"\nDomain name ");
      CFStringAppend(a2, v5);
    }

    v6 = CFDictionaryGetValue(*(a1 + 16), @"RoamingConsortiumOIs");
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count)
      {
        v8 = Count;
        CFStringAppend(a2, @"\nRoaming Consortium OI ");
        if (v8 >= 1)
        {
          for (i = 0; i != v8; ++i)
          {
            v10 = sub_10002ACB4();
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
            CFStringAppend(a2, ValueAtIndex);
            CFStringAppend(a2, @" ");
          }
        }
      }
    }

    v13 = CFDictionaryGetValue(*(a1 + 16), @"NaiRealmName");
    if (v13)
    {
      v14 = CFArrayGetCount(v13);
      if (v14)
      {
        v15 = v14;
        CFStringAppend(a2, @"\nNAI Realm Name ");
        if (v15 >= 1)
        {
          for (j = 0; j != v15; ++j)
          {
            v17 = sub_10002ACB4();
            v19 = CFArrayGetValueAtIndex(v17, v18);
            CFStringAppend(a2, v19);
            CFStringAppend(a2, @" ");
          }
        }
      }
    }

    v20 = CFDictionaryGetValue(*(a1 + 16), @"MCCandMNC");
    if (v20)
    {
      v21 = CFArrayGetCount(v20);
      if (v21)
      {
        v22 = v21;
        CFStringAppend(a2, @"\n3GPP MCC&MNC ");
        if (v22 >= 1)
        {
          for (k = 0; k != v22; ++k)
          {
            v24 = sub_10002ACB4();
            v26 = CFArrayGetValueAtIndex(v24, v25);
            CFStringAppend(a2, v26);
            CFStringAppend(a2, @" ");
          }
        }
      }
    }

    v27 = CFDictionaryGetValue(*(a1 + 16), @"DisplayedOperatorName");
    if (v27)
    {
      v28 = v27;
      CFStringAppend(a2, @"\nFriendly Operator Name ");
      CFStringAppend(a2, v28);
    }

    if (CFDictionaryGetValueIfPresent(*(a1 + 16), @"SPRoaming", &value))
    {
      CFStringAppend(a2, @"\nRoaming set to: ");
      if (value)
      {
        v29 = @"true";
      }

      else
      {
        v29 = @"false";
      }

      CFStringAppend(a2, v29);
    }
  }
}

CFMutableDictionaryRef sub_100176794(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if (CFDictionaryGetValue(*(a1 + 16), @"DomainName"))
    {
      v3 = sub_100021488();
      CFDictionaryAddValue(v3, @"DomainName", v4);
    }

    if (CFDictionaryGetValue(*(a1 + 16), @"DisplayedOperatorName"))
    {
      v5 = sub_100021488();
      CFDictionaryAddValue(v5, @"DisplayedOperatorName", v6);
    }

    if (CFDictionaryGetValue(*(a1 + 16), @"RoamingConsortiumOIs"))
    {
      v7 = sub_100021488();
      CFDictionaryAddValue(v7, @"RoamingConsortiumOIs", v8);
    }

    if (CFDictionaryGetValue(*(a1 + 16), @"NaiRealmName"))
    {
      v9 = sub_100021488();
      CFDictionaryAddValue(v9, @"NaiRealmName", v10);
    }

    if (CFDictionaryGetValue(*(a1 + 16), @"MCCandMNC"))
    {
      v11 = sub_100021488();
      CFDictionaryAddValue(v11, @"MCCandMNC", v12);
    }
  }

  return Mutable;
}

const void *sub_1001768B4(uint64_t a1)
{
  v1 = sub_10000A540(a1, @"HS20GasResponse");
  if (!v1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v1, @"ANQP_OPERATOR_NAMES_LIST");
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  if (CFArrayGetCount(Value) < 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
  if (!ValueAtIndex)
  {
    return 0;
  }

  return CFDictionaryGetValue(ValueAtIndex, @"ANQP_OPERATOR_NAME");
}

const void *sub_100176938(uint64_t a1)
{
  v2 = sub_10000A540(a1, @"HS20GasResponse");
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"ANQP_DOMAIN_NAME_LIST");
    if (Value && (v4 = Value, CFArrayGetCount(Value) >= 1))
    {

      return CFArrayGetValueAtIndex(v4, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_10000A540(a1, @"DomainName");
  }
}

uint64_t sub_1001769DC(uint64_t a1)
{
  v1 = sub_10000A540(a1, @"CarrierPayloadIdentifierTelemetryApproved");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 != CFBooleanGetTypeID())
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: invalid value type", "WiFiNetworkGetCarrierPayloadIdentifierTelemetryApproved"}];
    }

    objc_autoreleasePoolPop(v5);
    return 0;
  }

  return CFBooleanGetValue(v2);
}

void sub_100176A90()
{
  sub_10000FDC0();
  if (v0)
  {
    v2 = v1;
    v65 = v0;
    if (v1)
    {
      v3 = sub_10000A540(v0, @"HS20GasResponse");
      if (v3)
      {
        v4 = v3;
        v5 = sub_10000A540(v2, @"DomainName");
        Value = CFDictionaryGetValue(v4, @"ANQP_DOMAIN_NAME_LIST");
        if (Value && (v7 = Value, CFArrayGetCount(Value) >= 1))
        {
          v8 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
            if (ValueAtIndex)
            {
              if (v5 && CFEqual(ValueAtIndex, v5))
              {
                break;
              }
            }

            if (++v8 >= CFArrayGetCount(v7))
            {
              goto LABEL_11;
            }
          }

          v29 = objc_autoreleasePoolPush();
          v30 = off_100298C40;
          if (off_100298C40)
          {
            if (sub_10000AFE4(v65))
            {
              sub_100176938(v65);
            }

            else
            {
              sub_10000A878(v65);
            }

            [v30 WFLog:3 message:{"%s: found matching domain name %@ in GAS response from scannedNetwork, marking %@ provisioned"}];
          }

          objc_autoreleasePoolPop(v29);
          v11 = 0;
          LODWORD(v10) = 1;
        }

        else
        {
LABEL_11:
          LODWORD(v10) = 0;
          v11 = 1;
        }

        v12 = sub_10000A540(v2, @"SPRoaming");
        v13 = objc_autoreleasePoolPush();
        v14 = off_100298C40;
        if (off_100298C40)
        {
          if (v12 == kCFBooleanFalse)
          {
            v15 = "%s: roaming is disabled for account %@";
          }

          else
          {
            v15 = "%s: roaming is enabled for account %@";
          }

          sub_10000A878(v2);
          [v14 WFLog:3 message:v15];
        }

        objc_autoreleasePoolPop(v13);
        v16 = sub_10000A540(v2, @"MCCandMNC");
        if (v16)
        {
          v17 = v16;
          Count = CFArrayGetCount(v16);
          v19 = v11 ^ 1;
          if (Count < 1)
          {
            v19 = 1;
          }

          if ((v19 & 1) == 0)
          {
            v20 = 0;
            while (1)
            {
              v21 = CFArrayGetValueAtIndex(v17, v20);
              if (v21)
              {
                v22 = v21;
                v23 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  sub_10001EC70();
                  [v24 WFLog:? message:?];
                }

                objc_autoreleasePoolPop(v23);
                v25 = CFDictionaryGetValue(v4, @"ANQP_CELL_NETWORK_INFO");
                if (v25)
                {
                  v26 = v25;
                  v27 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    CFArrayGetCount(v26);
                    [sub_1000A3FD8() WFLog:? message:?];
                  }

                  objc_autoreleasePoolPop(v27);
                  CFArrayGetCount(v26);
                  v28 = sub_100021488();
                  v66.location = 0;
                  if (CFArrayContainsValue(v28, v66, v22))
                  {
                    break;
                  }
                }
              }

              if (++v20 >= CFArrayGetCount(v17))
              {
                LODWORD(v10) = 0;
                goto LABEL_39;
              }
            }

            v31 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_10000A878(v65);
              [sub_10000FC2C() WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v31);
            LODWORD(v10) = 1;
          }
        }

LABEL_39:
        v32 = sub_10000A540(v2, @"NaiRealmName");
        if (v32)
        {
          v33 = v32;
          v34 = CFArrayGetCount(v32);
          if (!v10 && v34 >= 1)
          {
            v35 = 0;
            while (1)
            {
              v10 = CFArrayGetValueAtIndex(v33, v35);
              if (v10)
              {
                v36 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  sub_10001EC70();
                  [v37 WFLog:? message:?];
                }

                objc_autoreleasePoolPop(v36);
                v38 = CFDictionaryGetValue(v4, @"ANQP_NAI_REALM_LIST");
                if (v38)
                {
                  v39 = v38;
                  v40 = objc_autoreleasePoolPush();
                  v41 = off_100298C40;
                  if (off_100298C40)
                  {
                    CFArrayGetCount(v39);
                    [v41 WFLog:3 message:"%s:%d found NaiRealmArray count %ld %@"];
                  }

                  objc_autoreleasePoolPop(v40);
                  if (CFArrayGetCount(v39) >= 1)
                  {
                    v42 = 0;
                    while (1)
                    {
                      v43 = CFArrayGetValueAtIndex(v39, v42);
                      if (v43)
                      {
                        v44 = CFDictionaryGetValue(v43, @"ANQP_NAI_REALM_NAME");
                        if (v44)
                        {
                          if (CFEqual(v44, v10))
                          {
                            break;
                          }
                        }
                      }

                      if (++v42 >= CFArrayGetCount(v39))
                      {
                        goto LABEL_55;
                      }
                    }

                    v47 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      sub_10000A878(v65);
                      [sub_10000FC2C() WFLog:? message:?];
                    }

                    objc_autoreleasePoolPop(v47);
                    v45 = 0;
                    LODWORD(v10) = 1;
                    goto LABEL_57;
                  }
                }

LABEL_55:
                LODWORD(v10) = 0;
              }

              v45 = 1;
LABEL_57:
              v46 = CFArrayGetCount(v33);
              if (v45)
              {
                if (++v35 < v46)
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        v48 = sub_10000A540(v2, @"RoamingConsortiumOIs");
        if (v48)
        {
          v49 = v48;
          v50 = CFArrayGetCount(v48);
          if (!v10 && v50 >= 1)
          {
            for (i = 0; i < v63; ++i)
            {
              v52 = sub_10002ACB4();
              v54 = CFArrayGetValueAtIndex(v52, v53);
              if (!v54)
              {
                goto LABEL_78;
              }

              v55 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                sub_10001EC70();
                [v56 WFLog:? message:?];
              }

              objc_autoreleasePoolPop(v55);
              v57 = CFDictionaryGetValue(v4, @"ANQP_ROAMING_CONSORTIUM_OI_LIST");
              if (!v57)
              {
                goto LABEL_78;
              }

              v58 = v57;
              v59 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                CFArrayGetCount(v58);
                [sub_1000A3FD8() WFLog:? message:?];
              }

              objc_autoreleasePoolPop(v59);
              if (CFArrayGetCount(v58) >= 1)
              {
                v60 = 0;
                while (1)
                {
                  v61 = CFArrayGetValueAtIndex(v58, v60);
                  if (v61)
                  {
                    if (CFStringCompare(v61, v54, 1uLL) == kCFCompareEqualTo)
                    {
                      break;
                    }
                  }

                  if (++v60 >= CFArrayGetCount(v58))
                  {
                    goto LABEL_78;
                  }
                }

                v64 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  sub_10000A878(v65);
                  [sub_1000A3FD8() WFLog:? message:?];
                }

                objc_autoreleasePoolPop(v64);
                v62 = 0;
              }

              else
              {
LABEL_78:
                v62 = 1;
              }

              v63 = CFArrayGetCount(v49);
              if (!v62)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  sub_100008690();
}

const __CFDictionary *sub_100177158(const __CFDictionary *result)
{
  valuePtr = 0;
  v4 = 0;
  if (result)
  {
    v2 = sub_10001D1DC(result);
    result = CFDictionaryGetValue(v2, @"EXT_CAPS");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"BSS_TRANS_MGMT");
      if (result)
      {
        CFNumberGetValue(result, kCFNumberSInt8Type, &valuePtr);
        if (valuePtr)
        {
          result = CFDictionaryGetValue(*(v1 + 16), @"QBSS_LOAD_IE");
          if (result)
          {
            v3 = result;
            result = CFDictionaryGetValue(result, @"QBSS_CHAN_UTIL");
            if (result)
            {
              CFNumberGetValue(result, kCFNumberSInt8Type, &valuePtr + 1);
              result = CFDictionaryGetValue(v3, @"QBSS_STA_COUNT");
              if (result)
              {
                CFNumberGetValue(result, kCFNumberSInt16Type, &v4);
                return (v4 == -1);
              }
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

CFIndex sub_100177228(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      for (i = 0; i < result; ++i)
      {
        v3 = sub_1000086AC();
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          v7 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v8 = v6[2];
            sub_10001EC70();
            [v9 WFLog:? message:?];
          }

          objc_autoreleasePoolPop(v7);
        }

        result = CFArrayGetCount(v1);
      }
    }
  }

  return result;
}

const __CFDictionary *sub_1001772D4(uint64_t a1)
{
  result = sub_10000A540(a1, @"11U_INTERWORKING_IE");
  if (result)
  {
    result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_NETWORK_TYPE");
    if (result)
    {
      sub_100011598(result);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100177324(uint64_t a1)
{
  if (!a1)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkIsAutoJoinDisabledUntilFirstUserJoin"}];
    }

    goto LABEL_11;
  }

  v1 = sub_10000A540(a1, @"DisableWiFiAutoJoinUntilFirstUserJoin");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 != CFBooleanGetTypeID())
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: invalid value type", "WiFiNetworkIsAutoJoinDisabledUntilFirstUserJoin"}];
    }

LABEL_11:
    objc_autoreleasePoolPop(v5);
    return 0;
  }

  return CFBooleanGetValue(v2);
}

const __CFBoolean *sub_10017740C(uint64_t a1)
{
  if (!a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkIsInfrequentlyJoinedPublicNetwork"}];
    }

    goto LABEL_12;
  }

  v2 = sub_10001D1DC(a1);
  if (sub_10000BBE0(v2))
  {
    return 0;
  }

  result = sub_10000A540(v1, @"WiFiNetworkAttributeIsPublic");
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = CFGetTypeID(result);
  if (v5 != CFBooleanGetTypeID())
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: invalid value type", "WiFiNetworkIsInfrequentlyJoinedPublicNetwork"}];
    }

LABEL_12:
    objc_autoreleasePoolPop(v6);
    return 0;
  }

  result = CFBooleanGetValue(v4);
  if (result)
  {
    return (sub_1000A0208(v1) > 1209600.0);
  }

  return result;
}

uint64_t sub_100177510(const __CFArray *a1, uint64_t a2)
{
  v2 = -1;
  if (a1 && a2 && CFArrayGetCount(a1) >= 1)
  {
    v2 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v2);
      if (ValueAtIndex)
      {
        v6 = ValueAtIndex;
        v7 = CFGetTypeID(ValueAtIndex);
        v8 = qword_1002985E0;
        if (!qword_1002985E0)
        {
          sub_1000083FC();
          pthread_once(&stru_100297B30, v9);
          v8 = qword_1002985E0;
        }

        if (v7 == v8 && sub_10000B9E0(v6[2], *(a2 + 16), @"SSID_STR"))
        {
          break;
        }
      }

      if (++v2 >= CFArrayGetCount(a1))
      {
        return -1;
      }
    }
  }

  return v2;
}

CFDictionaryRef *sub_1001775F0(CFDictionaryRef *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result[2], @"11U_INTERWORKING_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_VENTURE_GRP");
      if (result)
      {
        sub_100011598(result);
        return 0;
      }
    }
  }

  return result;
}

CFDictionaryRef *sub_10017764C(CFDictionaryRef *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result[2], @"11U_INTERWORKING_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_VENTURE_GRP");
      if (result)
      {
        sub_100011598(result);
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *sub_1001776A8(uint64_t a1)
{
  valuePtr = -1;
  result = CFDictionaryGetValue(*(a1 + 16), @"11U_INTERWORKING_IE");
  if (result)
  {
    result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_NETWORK_TYPE");
    if (result)
    {
      CFNumberGetValue(result, kCFNumberSInt8Type, &valuePtr);
      if (valuePtr + 1) < 0x13u && ((0x6007Fu >> (valuePtr + 1)))
      {
        return dword_1001CE600[(valuePtr + 1)];
      }

      else
      {
        v2 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s unhandled type trying to convert from apple8021_access_network_t -> WiFiAdvertisedNetworkType", "WiFiNetworkGetAdvertisedNetworkType"}];
        }

        objc_autoreleasePoolPop(v2);
        return 0;
      }
    }
  }

  return result;
}

void sub_10017777C(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = &kCFBooleanFalse;
    if (a2)
    {
      v3 = &kCFBooleanTrue;
    }

    sub_10000AD34(a1, @"NetworkForcedHomeFix", *v3);
    if (a2)
    {
      Current = CFAbsoluteTimeGetCurrent();
      CFDateCreate(kCFAllocatorDefault, Current);
      v5 = sub_100011430();
      sub_1000A24B4(v5, kCFAllocatorDefault);
      if (kCFAllocatorDefault)
      {

        CFRelease(kCFAllocatorDefault);
      }
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetForcedHomeFix"}];
    }

    objc_autoreleasePoolPop(v6);
  }
}

const __CFNumber *sub_100177880(uint64_t a1)
{
  if (a1 && *(a1 + 16))
  {
    return sub_1000333E8(a1, @"ShareableStatus");
  }

  else
  {
    return 0;
  }
}

void sub_1001778A4(uint64_t a1, const void *a2)
{
  if (a1)
  {
    sub_10000AD34(a1, @"WalletIdentifier", a2);
  }
}

const void *sub_1001778C0(const void *result)
{
  if (result)
  {
    return sub_10000A540(result, @"WalletIdentifier");
  }

  return result;
}

const __CFDictionary *sub_1001778D8(const __CFDictionary *result)
{
  if (result)
  {
    result = sub_10000A540(result, @"WPS_PROB_RESP_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_WPS_MANUFACTURER");
      if (result)
      {
        v2 = result;
        CFStringGetTypeID();
        v3 = sub_100011430();
        if (v1 == CFGetTypeID(v3))
        {
          return v2;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const __CFDictionary *sub_100177934(const __CFDictionary *result)
{
  if (result)
  {
    result = sub_10000A540(result, @"WPS_PROB_RESP_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_WPS_MODEL_NAME");
      if (result)
      {
        v2 = result;
        CFStringGetTypeID();
        v3 = sub_100011430();
        if (v1 == CFGetTypeID(v3))
        {
          return v2;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

const __CFDictionary *sub_100177990(const __CFDictionary *result)
{
  if (result)
  {
    result = sub_10000A540(result, @"WPS_PROB_RESP_IE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_WPS_MODEL_NUM");
      if (result)
      {
        v2 = result;
        CFStringGetTypeID();
        v3 = sub_100011430();
        if (v1 == CFGetTypeID(v3))
        {
          return v2;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001779EC(uint64_t a1)
{
  if (a1)
  {
    sub_10000A540(a1, @"WPS_PROB_RESP_IE");
  }

  return 0;
}

CFDataRef sub_100177A18(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFString *a4)
{
  v5 = 0;
  *md = 0u;
  v37 = 0u;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  bytes[0] = v6;
  bytes[1] = v6;
  if (a1 && a3)
  {
    if (a4)
    {
      v10 = kCFAllocatorDefault;
      sub_1000086DC(kCFAllocatorDefault, a4);
    }

    else
    {
      if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes))
      {
        return 0;
      }

      v10 = kCFAllocatorDefault;
      CFDataCreate(kCFAllocatorDefault, bytes, 32);
    }

    v11 = sub_100011430();
    Mutable = CFDataCreateMutable(v11, 0);
    if (Mutable)
    {
      BytePtr = CFDataGetBytePtr(v4);
      v14 = CFDataGetBytePtr(a1);
      v15 = CFDataGetBytePtr(a3);
      if (a2)
      {
        v16 = CFDataGetBytePtr(a2);
      }

      else
      {
        v16 = 0;
      }

      CFDataGetLength(a1);
      v17 = sub_100024F1C();
      CFDataAppendBytes(v17, v14, v18);
      CFDataAppendBytes(Mutable, v15, 6);
      CFDataGetLength(v4);
      v19 = sub_100024F1C();
      CFDataAppendBytes(v19, BytePtr, v20);
      if (a2 && v16)
      {
        CFDataGetLength(a2);
        v21 = sub_100024F1C();
        CFDataAppendBytes(v21, v16, v22);
      }

      Length = CFDataGetLength(a1);
      v24 = Length + CFDataGetLength(v4) + 6;
      if (a2)
      {
        LODWORD(v24) = CFDataGetLength(a2) + v24;
      }

      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      sub_1000A3F9C(MutableBytePtr, v26, v27, v28, v29, v30, v31, v32, *v34.count, *&v34.hash[2], *&v34.hash[6], *&v34.wbuf[2], *&v34.wbuf[6], *&v34.wbuf[10], *&v34.wbuf[14]);
      CC_SHA256_Update(&v34, MutableBytePtr, v24);
      CC_SHA256_Final(md, &v34);
    }

    v34.count[0] = *md;
    LOWORD(v34.count[1]) = *&md[4];
    LOBYTE(v34.count[0]) = md[0] & 0xFC | 2;
    v5 = CFDataCreate(v10, &v34, 6);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v5;
}

CFDataRef sub_100177C58(const __CFData *a1, const __CFData *a2, const __CFString *a3)
{
  v3 = 0;
  v32 = 0;
  *v31 = 0;
  *md = 0u;
  v37 = 0u;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  bytes[0] = v4;
  bytes[1] = v4;
  *v33 = v4;
  v34 = v4;
  if (a1 && a2)
  {
    if (a3)
    {
      v7 = kCFAllocatorDefault;
      v8 = sub_1000086DC(kCFAllocatorDefault, a3);
      v9 = kSecRandomDefault;
    }

    else
    {
      v9 = kSecRandomDefault;
      if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, v33))
      {
        return 0;
      }

      v7 = kCFAllocatorDefault;
      v8 = CFDataCreate(kCFAllocatorDefault, v33, 32);
    }

    if (SecRandomCopyBytes(v9, 0x20uLL, bytes))
    {
      v3 = 0;
    }

    else
    {
      v10 = sub_100011340();
      Mutable = CFDataCreateMutable(v10, v11);
      if (Mutable)
      {
        BytePtr = CFDataGetBytePtr(v8);
        v14 = CFDataGetBytePtr(a1);
        v15 = CFDataGetBytePtr(a2);
        CFDataGetLength(a1);
        v16 = sub_100024F1C();
        CFDataAppendBytes(v16, v14, v17);
        CFDataAppendBytes(Mutable, v15, 6);
        CFDataGetLength(v8);
        v18 = sub_100024F1C();
        CFDataAppendBytes(v18, BytePtr, v19);
        CFDataAppendBytes(Mutable, bytes, 32);
        Length = CFDataGetLength(a1);
        LODWORD(v15) = Length + CFDataGetLength(v8);
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        sub_1000A3F9C(MutableBytePtr, v22, v23, v24, v25, v26, v27, v28, *v30.count, *&v30.hash[2], *&v30.hash[6], *&v30.wbuf[2], *&v30.wbuf[6], *&v30.wbuf[10], *&v30.wbuf[14]);
        CC_SHA256_Update(&v30, MutableBytePtr, v15 + 38);
        CC_SHA256_Final(md, &v30);
      }

      *v31 = *md;
      v32 = *&md[4];
      v31[0] = md[0] & 0xFC | 2;
      v3 = CFDataCreate(v7, v31, 6);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v3;
}

void *sub_100177E90(const __CFData *a1, const __CFString *a2)
{
  v2 = 0;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *bytes = v3;
  v29 = v3;
  *md = 0u;
  v27 = 0u;
  if (a1 && a2)
  {
    v2 = kCFAllocatorDefault;
    v5 = sub_1000086DC(kCFAllocatorDefault, a2);
    v6 = sub_100011340();
    Mutable = CFDataCreateMutable(v6, v7);
    if (!Mutable)
    {
      *bytes = 0u;
      v29 = 0u;
      v2 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
      if (!v5)
      {
        return v2;
      }

      goto LABEL_5;
    }

    v9 = Mutable;
    BytePtr = CFDataGetBytePtr(v5);
    v11 = CFDataGetBytePtr(a1);
    CFDataAppendBytes(v9, v11, 6);
    CFDataGetLength(v5);
    v12 = sub_10000757C();
    CFDataAppendBytes(v12, BytePtr, v13);
    Length = CFDataGetLength(v5);
    MutableBytePtr = CFDataGetMutableBytePtr(v9);
    sub_1000A3F9C(MutableBytePtr, v16, v17, v18, v19, v20, v21, v22, *v25.count, *&v25.hash[2], *&v25.hash[6], *&v25.wbuf[2], *&v25.wbuf[6], *&v25.wbuf[10], *&v25.wbuf[14]);
    CC_SHA256_Update(&v25, MutableBytePtr, Length + 6);
    CC_SHA256_Final(md, &v25);
    *bytes = *md;
    v29 = v27;
    CFDataCreate(kCFAllocatorDefault, bytes, 32);
    v23 = sub_10000DACC();
    CFRelease(v23);
    if (v5)
    {
LABEL_5:
      CFRelease(v5);
    }
  }

  return v2;
}

uint64_t sub_100177FFC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    return !sub_100009730(result) && CFDictionaryGetValue(*(v1 + 16), @"WEP") != kCFBooleanTrue && !sub_10001CF3C(v1) && !sub_10000D970(v1) && !sub_10000A754(*(v1 + 16)) && sub_100009780(*(v1 + 16)) == 0;
  }

  return result;
}

uint64_t sub_10017808C(uint64_t a1)
{
  if (a1)
  {
    return sub_10001D200(a1) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1001780B8(const void *a1)
{
  v16 = 0x8FE4AC15BC6D3674;
  v17 = 52;
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = &v16 + 2;
  do
  {
    v4 = sub_10009DF00(a1);
    if (v4)
    {
      v5 = v4;
      memset(buffer, 170, 6);
      v18.location = 0;
      v18.length = 6;
      CFDataGetBytes(v4, v18, buffer);
      if (buffer[0] == *(v3 - 2) && buffer[1] == *(v3 - 1) && buffer[2] == *v3)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v6 = sub_10000A878(a1);
          *buf = 136315650;
          v11 = "WiFiNetworkIsProblematicForEncryptedDNS";
          v12 = 2112;
          v13 = v6;
          v14 = 2112;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: network %@ (%@) is known to be problematic for DoT/DoH", buf, 0x20u);
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v7 = 0;
    }

    if (v2 > 1)
    {
      break;
    }

    ++v2;
    v3 += 3;
  }

  while (!v7);
  return v7;
}

void sub_100178268(uint64_t a1, CFDictionaryRef *a2, const void *a3)
{
  if (!a1 || !a2)
  {
    return;
  }

  if (CFDictionaryGetValue(a2[2], @"DomainName"))
  {
    if (sub_100176938(a2))
    {
      v15 = sub_10000A540(a1, @"userPreferredPasspointDomains");
      v16 = v15 ? CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v15) : CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v8 = v16;
      if (v16)
      {
        v17 = sub_100003930();
        if (a3)
        {
          CFDictionaryAddValue(v17, v18, a3);
        }

        else
        {
          CFDictionaryRemoveValue(v17, v18);
        }

        Count = CFDictionaryGetCount(v8);
        v12 = @"userPreferredPasspointDomains";
        if (Count)
        {
          goto LABEL_13;
        }

        goto LABEL_24;
      }
    }
  }

  else if (sub_10000A878(a2))
  {
    v6 = sub_10000A540(a1, @"userPreferredNetworkNames");
    v7 = v6 ? CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v6) : CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v8 = v7;
    if (v7)
    {
      v9 = sub_100003930();
      if (a3)
      {
        CFDictionarySetValue(v9, v10, a3);
      }

      else
      {
        CFDictionaryRemoveValue(v9, v10);
      }

      v11 = CFDictionaryGetCount(v8);
      v12 = @"userPreferredNetworkNames";
      if (v11)
      {
LABEL_13:
        v13 = sub_10000D818();
LABEL_25:
        sub_10000AD34(v13, v12, v14);

        CFRelease(v8);
        return;
      }

LABEL_24:
      v13 = a1;
      v14 = 0;
      goto LABEL_25;
    }
  }
}

const void *sub_100178408(uint64_t a1, CFDictionaryRef *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  if (CFDictionaryGetValue(a2[2], @"DomainName"))
  {
    v9 = sub_100176938(a2);
    if (!v9)
    {
      return 0;
    }

    v5 = v9;
    v6 = @"userPreferredPasspointDomains";
  }

  else
  {
    v4 = sub_10000A878(a2);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = @"userPreferredNetworkNames";
  }

  v7 = sub_10000A540(a1, v6);
  if (!v7)
  {
    return 0;
  }

  return CFDictionaryGetValue(v7, v5);
}

const __CFString *sub_1001784B0(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (+[CWFInterface logRedactionDisabled])
    {

      return sub_10000A878(v1);
    }

    else
    {
      return @"<redacted>";
    }
  }

  return result;
}

const __CFArray *sub_10017850C(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    if (+[CWFInterface logRedactionDisabled])
    {

      return sub_100013F70(v1);
    }

    else
    {
      return @"<redacted>";
    }
  }

  return result;
}

void sub_100178568()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networkRecord", "WiFiNetworkCreateWithSsid"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001785D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null ssid", "WiFiNetworkCreateWithSsid"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100178640()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network record", "WiFiNetworkGetProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001786AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network record", "WiFiNetworkSetProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100178718()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100178784()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetNetworkOfInterestHomeType"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001787F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetChannel"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017885C(CFDictionaryRef *a1, BOOL *a2)
{
  CFDictionaryGetValue(*a1, @"IE");
  sub_100008BE0();
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDataGetTypeID())
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bad ieList type %ld", "__WiFiNetworkIsWoWAllowed", CFGetTypeID(v4)}];
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_14;
  }

  if (!CFDataGetBytePtr(v4) || (v6 = sub_10000DACC(), CFDataGetLength(v6) < 1))
  {
LABEL_14:
    v11 = 1;
    goto LABEL_15;
  }

  while (1)
  {
    sub_100008C80();
    if (v7)
    {
      if (v5[1] == 10 && !bcmp(v5 + 2, v12, 7uLL))
      {
        break;
      }
    }

    sub_10000DB40();
    if (v8 == v9)
    {
      goto LABEL_14;
    }
  }

  v11 = (v5[9] & 3) != 1;
LABEL_15:
  *a2 = v11;
}

void sub_100178980(CFDictionaryRef *a1, char *a2)
{
  Value = CFDictionaryGetValue(*a1, @"IE");
  v20 = 116528896;
  v21 = 260;
  v22 = 18;
  if (Value)
  {
    if (CFDataGetBytePtr(Value))
    {
      v5 = sub_10000DACC();
      Length = CFDataGetLength(v5);
      if (Length >= 1)
      {
        v7 = v2 + Length;
        do
        {
          sub_100008C80();
          v8 = v2 + 6;
          if (v9)
          {
            v10 = v8 > v7;
          }

          else
          {
            v10 = 1;
          }

          if (!v10 && !bcmp((v2 + 2), &v20, 4uLL))
          {
            for (i = v2 + 9; i <= v7; i = v18 + 6)
            {
              v14 = *(v8 + 2);
              v15 = sub_10000FC2C();
              if (!bcmp(v15, v16, v17))
              {
                v19 = 1;
                goto LABEL_19;
              }

              v18 = v14 + v8;
              v8 += v14 + 3;
            }
          }

          sub_10001EDB8();
        }

        while (v11 != v12);
      }
    }
  }

  v19 = 0;
LABEL_19:
  *a2 = v19;
}

const __CFDictionary *sub_100178A88(uint64_t a1, BOOL *a2)
{
  v3 = *(a1 + 16);
  number = 0;
  valuePtr = 0;
  result = CFDictionaryGetValue(v3, @"EXT_CAPS");
  if (result && (result = CFDictionaryGetValueIfPresent(result, @"BEACON_PROTECTION", &number), result) && (result = number) != 0)
  {
    result = CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
    v5 = valuePtr == 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100178B0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkIsExpirable"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100178B78(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v45 = sub_10000BBE0(*(a1 + 16));
  v44 = sub_10000BBE0(*(a2 + 16));
  v6 = sub_10000A754(*(a1 + 16)) && (v5 = *(a1 + 16), !sub_10000B044(v5)) && sub_10000B0AC(v5) == 0;
  v47 = sub_10000A754(*(a2 + 16)) && (v7 = *(a2 + 16), !sub_10000B044(v7)) && sub_10000B0AC(v7) == 0;
  v8 = sub_100009780(*(a1 + 16));
  v9 = sub_100009780(*(a2 + 16));
  Value = CFDictionaryGetValue(*(a1 + 16), @"ALLOW_WPA2_PSK");
  v11 = CFDictionaryGetValue(*(a2 + 16), @"ALLOW_WPA2_PSK");
  v12 = CFDictionaryGetValue(*(a1 + 16), @"ALLOW_OWE_TSN");
  v13 = CFDictionaryGetValue(*(a2 + 16), @"ALLOW_OWE_TSN");
  v14 = v12;
  v15 = (Value | v12) == 0;
  v16 = (v11 | v13) == 0;
  if (v15 == v16)
  {
    v27 = v6 == v47 && v8 == v9;
    v24 = a3;
    if (!v27)
    {
      v21 = 0;
      goto LABEL_34;
    }

LABEL_29:
    if (!v45 || !v44 || (v21 = v45 & v44, (v45 & v44) != 0))
    {
      v21 = (v44 != 0) ^ (v45 == 0);
    }

    goto LABEL_34;
  }

  v17 = v13;
  v42 = v9;
  v18 = v47;
  if (v6)
  {
    v28 = v14;
    v29 = sub_100018030(a1);
    v18 = v47;
    v14 = v28;
    v19 = v29 != 3;
  }

  else
  {
    v19 = 0;
  }

  v43 = v6;
  if (v18)
  {
    v30 = v14;
    v31 = sub_100018030(a2);
    v18 = v47;
    v14 = v30;
    v20 = v31 != 3;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  v22 = Value == kCFBooleanTrue && v20;
  v23 = v11 == kCFBooleanTrue;
  if (v22)
  {
    v24 = a3;
    goto LABEL_34;
  }

  v24 = a3;
  if (!v23 || !v19)
  {
    if ((v15 & v43) == 1)
    {
      v32 = v14;
      v33 = sub_100018030(a1);
      v18 = v47;
      v34 = v45;
      v14 = v32;
      if (v33 == 3)
      {
        v34 = v45 | 2;
      }

      v45 = v34;
    }

    if ((v16 & v18) == 1)
    {
      v35 = v14;
      v36 = sub_100018030(a2);
      v37 = v44;
      v14 = v35;
      if (v36 == 3)
      {
        v37 = v44 | 2;
      }

      v44 = v37;
    }

    if (v8)
    {
      v38 = v14;
      v39 = sub_100018030(a1);
      v14 = v38;
      v25 = v39 != 3;
      if (!v42)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
      if (!v42)
      {
LABEL_20:
        v26 = 0;
LABEL_21:
        v21 = 0;
        if (v14 == kCFBooleanTrue && v26 || v17 == kCFBooleanTrue && v25)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      }
    }

    v40 = v14;
    v41 = sub_100018030(a2);
    v14 = v40;
    v26 = v41 != 3;
    goto LABEL_21;
  }

LABEL_34:
  *v24 = v21;
  sub_10001091C();
}

void sub_100178E94(const void *a1, char a2, uint64_t a3)
{
  v5 = sub_10000A878(a1);
  v6 = "enabled";
  v7 = 136315906;
  v8 = "WiFiNetworkSetStateWithReason";
  v10 = v5;
  v9 = 2112;
  v11 = 2080;
  if (!a2)
  {
    v6 = "disabled";
  }

  v12 = v6;
  v13 = 2112;
  v14 = a3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Network '%@' %s for auto-join due to %@", &v7, 0x2Au);
}

void sub_100178F68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetChannelFlags"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100178FD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null APPLE80211KEY_CHANNEL_WIDTH", "WiFiNetworkGetChannelWidthInMHz"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179040()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetLastHomeForceFixDate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001790AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null modDate", "WiFiNetworkSetPasswordModificationDate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179118()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetPasswordModificationDate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179184()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetPasswordModificationDate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001791F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkCopyKeychainModDate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017925C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkIsCarPlay"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001792C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no knownBssids", "WiFiNetworkCopyLeakyStatus"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179334()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null knownBssids", "WiFiNetworkCopyLeakyStatus"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001793A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null bssidFromNetwork", "WiFiNetworkCopyLeakyStatus"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017940C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null bssid", "WiFiNetworkCopyLeakyStatus"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179478()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkCopyLeakyStatus"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001794E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null leaky number", "WiFiNetworkIsAPLeaky"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179550()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetBundleIdentifier"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001795BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetOriginatorName"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179628()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetOriginator"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179694()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkIsCarrierBundleBased"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179700()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetDisabledUntilDate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017976C(const void *a1, BOOL *a2)
{
  if (!sub_10000D8DC(a1, 18) && !sub_10000D8DC(a1, 23) && !sub_10000D8DC(a1, 50))
  {
    goto LABEL_17;
  }

  v4 = sub_10000A540(a1, @"EnterpriseProfile");
  if (!v4)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v13 = sub_10000A878(a1);
      [sub_10000FC2C() WFLog:"WiFiNetworkCanExposeIMSI" message:v13];
    }

    v10 = v9;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v4, @"EAPClientConfiguration");
  v6 = CFGetTypeID(Value);
  if (v6 != CFDictionaryGetTypeID())
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: invalid EAP client configuration", "WiFiNetworkCanExposeIMSI"}];
    }

    v10 = v11;
LABEL_16:
    objc_autoreleasePoolPop(v10);
LABEL_17:
    v8 = 0;
    goto LABEL_6;
  }

  if (CFDictionaryContainsKey(Value, @"EAPSIMAKAEncryptedIdentityEnabled"))
  {
    v7 = CFDictionaryGetValue(Value, @"EAPSIMAKAEncryptedIdentityEnabled");
    v8 = sub_10001CD48(v7) == 0;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: missing encrypted identity key", "WiFiNetworkCanExposeIMSI"}];
    }

    objc_autoreleasePoolPop(v12);
    v8 = 1;
  }

LABEL_6:
  *a2 = v8;
}

void sub_10017990C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkCanExposeIMSI"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179978()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkRemoveInternalProperties"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001799E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetNetworkOfInterestWorkType"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179A50()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null modDate", "WiFiNetworkSetLastHomeForceFixDate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179ABC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetLastHomeForceFixDate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179B28()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null stateRef", "WiFiNetworkGetLOIType"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179B94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetLOIType"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179C00()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetHarvestSSIDStatus"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179C6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkRemoveAutoJoinProperties"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100179D40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetPrivacyProxyBlockedReason"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100179E84(void *a1, void *a2, void *a3, void *a4)
{
  [a2 addEntriesFromDictionary:{objc_msgSend(a1, "OSSpecificAttributes")}];
  if (!sub_10000B0F4(kCFAllocatorDefault, a2, 0))
  {
    return 1;
  }

  v8 = [sub_10000DACC() matchingKnownNetworkProfile];
  if (v8)
  {
    v18 = sub_100022854(v8, 0);
    v10 = v18;
    if (v18 && (Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v18[2])) != 0)
    {
      v20 = Copy;
      v21 = [a2 copy];
      [a2 setDictionary:v20];
      [a2 addEntriesFromDictionary:v21];
      v9 = sub_10000B0F4(kCFAllocatorDefault, a2, 0);
      CFRelease(v20);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = CFRetain(v4);
    v10 = 0;
  }

  *a4 = v9;
  v11 = sub_100003930();
  v13 = sub_10000A540(v11, v12);
  v14 = sub_10000A540(v4, @"WPA_IE");
  v15 = sub_10000A540(v10, @"RSN_IE");
  v16 = sub_10000A540(v4, @"RSN_IE");
  if (v15 && v13 && v16 && !v14)
  {
    sub_10000AD34(v9, @"WPA_IE", 0);
  }

  if (!sub_10000A540(v4, @"BSSID"))
  {
    sub_10000AD34(v9, @"BSSID", 0);
  }

  objc_autoreleasePoolPop(a3);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(v4);
  return 0;
}

uint64_t sub_10017A048(uint64_t a1, char a2, BOOL *a3)
{
  result = sub_10000DA34(a1);
  if (result)
  {
    goto LABEL_2;
  }

  if (a1)
  {
    result = CFDictionaryGetValue(*(a1 + 16), @"DomainName");
    if (result)
    {
      goto LABEL_2;
    }

    result = CFDictionaryContainsKey(*(a1 + 16), @"BundleIdentifier");
    if (result)
    {
      goto LABEL_2;
    }

    result = sub_1000A1F04(a1);
    if (result)
    {
      goto LABEL_2;
    }

    result = sub_10000A540(a1, @"WalletIdentifier");
    if (result)
    {
      goto LABEL_2;
    }
  }

  else
  {
    result = sub_1000A1F04(0);
    if (result)
    {
      goto LABEL_2;
    }
  }

  result = sub_10001D200(a1);
  if (!result)
  {
    result = sub_10000A604(a1);
    if (!result)
    {
      result = sub_1000227F8(a1);
      v7 = (result | a2 & 0xC) != 0;
      goto LABEL_3;
    }
  }

LABEL_2:
  v7 = 1;
LABEL_3:
  *a3 = v7;
  return result;
}

void sub_10017A124()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetPrivacyProxyEnabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017A190()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetPrivacyProxyBlockedReason"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017A1FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetPublicAirPlayNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017A268()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkIs6EModeOff"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017A2D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetDisplayFriendlyName"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017A340()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetDisplayFriendlyName"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017A3AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkSetAccessoryIdentifier"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017A418()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetAccessoryIdentifier"}];
  }

  objc_autoreleasePoolPop(v0);
}

CFStringRef sub_10017A484(const __CFDictionary **a1, unsigned int *a2, CFStringRef *a3)
{
  v5 = sub_100014000(a1);
  if (v5)
  {
    CFNumberGetValue(v5, kCFNumberSInt32Type, a2);
  }

  v28 = sub_10000A540(a1, @"networkIsAllowedBeforeFirstUnlock");
  v33 = sub_10000A878(a1);
  v32 = sub_10001CB84(a1);
  v31 = sub_100009730(a1);
  v30 = sub_10000A754(a1[2]);
  v29 = sub_10001CF3C(a1) != 0;
  v27 = CFDictionaryGetValue(a1[2], @"WEP") == kCFBooleanTrue;
  v26 = sub_10000D89C(a1[2]);
  v25 = sub_1000A158C(a1);
  v24 = sub_10000A540(a1, @"enabled");
  v23 = sub_10000A540(a1, @"SaveDataMode");
  v22 = sub_10000A540(a1, @"NetworkQualityResponsiveness");
  v21 = sub_10000A540(a1, @"NetworkQualityDate");
  v6 = sub_10000FC60(a1);
  if (v6 >= 4)
  {
    v7 = @"?";
  }

  else
  {
    v7 = off_100261308[v6];
  }

  v20 = v7;
  v19 = sub_100176434(a1);
  v8 = sub_10000A540(a1, @"TransitionDisabledFlags");
  v9 = sub_10009E958(a1);
  v10 = sub_10000A604(a1);
  v11 = sub_10001D200(a1);
  v12 = sub_1000A3898(a1);
  v13 = sub_10000AFE4(a1);
  v14 = *a2;
  v15 = CFDictionaryContainsKey(a1[2], @"BundleIdentifier") != 0;
  if (v28)
  {
    v16 = v28 == kCFBooleanTrue;
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  v17 = sub_10000A540(a1, @"PolicyUUID");
  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: isHidden=%d, isEAP=%d, isSAE=%d, isWPA=%d, isWEP=%d, WAPI=%d, type=%d, enabled=%@, saveData=%@, responsiveness=%@ (%@) isHome=%@, isForceFixed=%d, transitionDisabledFlags=%@, foundNanIe=%d, isPH=%d, isPublicAirPlayNetwork=%d, is6EDisabled=%d, hs20=%d, Channel=%d, isBundleIdentifierPresent=%d, allowedBeforeFirstUnlock=%d, PolicyUUID=%@", v33, v32, v31, v30, v29, v27, v26, v25, v24, v23, v22, v21, v20, v19, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  *a3 = result;
  return result;
}

void sub_10017AA30()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"AVSystemMonitorCb is NULL!"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017AA88()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"sharedController is NULL!"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017AAE0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"nc is NULL!"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017AB38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AVSystemMonitor allocation failed!", "WiFiManagerAVSystemMonitorStart"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017ABA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null AVSystemMonitorCb", "WiFiManagerAVSystemMonitorStart"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017AC10()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerAVSystemMonitorStart"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017AC7C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null AVSystemMonitor", "WiFiManagerAVSystemMonitorStop"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017ACE8()
{
  sub_1000086C4();
  v1 = v0;
  v3 = v2;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = Mutable;
    if (sub_10010E220())
    {
      sub_10010E234(@"WIFI_ASK_TO_JOIN_TITLE");
      v7 = sub_10010E234(@"WIFI_ASK_TO_JOIN_CANCEL_BUTTON");
      v8 = v7;
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: localization not available"];
      }

      objc_autoreleasePoolPop(v6);
      v8 = @"Cancel";
    }

    sub_100024F28(v7, kCFUserNotificationAlertHeaderKey);
    CFDictionarySetValue(v5, kCFUserNotificationDefaultButtonTitleKey, v8);
    CFDictionarySetValue(v5, SBUserNotificationExtensionIdentifierKey, @"com.apple.framework.WiFiKit.WiFiPickerExtension");
    if (sub_10017AE6C(v3, 0, 0, v1, v5, 0, 0))
    {
      CFRelease(v5);
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: failed to create notification of type ask to join"];
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  sub_100010944();
}

uint64_t sub_10017AE6C(uint64_t a1, int a2, int a3, const void *a4, __CFDictionary *a5, CFOptionFlags a6, const void *a7)
{
  if (!a5)
  {
    return 0;
  }

  add_explicit = atomic_fetch_add_explicit(dword_100297B50, 1u, memory_order_relaxed);
  v11 = add_explicit + 1;
  v12 = sub_10017B3AC(a1, a2, a3, a4, a7, add_explicit + 1);
  if (!v12)
  {
    return v12;
  }

  error = -1431655766;
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.wifi.manager");
  if (BundleWithIdentifier)
  {
    v14 = CFBundleCopyBundleURL(BundleWithIdentifier);
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(a5, kCFUserNotificationLocalizationURLKey, v14);
      CFRelease(v15);
    }
  }

  if (SBUserNotificationDismissOnLock)
  {
    CFDictionarySetValue(a5, SBUserNotificationDismissOnLock, kCFBooleanTrue);
    CFDictionarySetValue(a5, SBUserNotificationAlertMessageDelimiterKey, &stru_1002680F8);
  }

  if (a2)
  {
    goto LABEL_18;
  }

  v16 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: adding extensionItem for ask to join notification (id: %d)", "__WiFiNotificationCreateCFUN", v11}];
  }

  objc_autoreleasePoolPop(v16);
  v17 = objc_alloc_init(NSExtensionItem);
  v18 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v11), @"notificationId", 0}];
  [v17 setUserInfo:v18];
  v25 = 0;
  v27 = v17;
  v19 = [NSKeyedArchiver archivedDataWithRootObject:[NSArray arrayWithObjects:&v27 count:1] requiringSecureCoding:1 error:&v25];
  if (v25)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: error archiving extensionItem %@", "__WiFiNotificationCreateCFUN", v25}];
    }

    objc_autoreleasePoolPop(v20);
    if (!v17)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  CFDictionarySetValue(a5, SBUserNotificationExtensionItemsKey, v19);
  if (v17)
  {
LABEL_15:
    CFRelease(v17);
  }

LABEL_16:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_18:
  v21 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, a6, &error, a5);
  *(v12 + 120) = v21;
  if (!v21 || (v22 = v21, pthread_mutex_lock(&stru_100297B58), CFDictionarySetValue(qword_100298648, v22, v12), pthread_mutex_unlock(&stru_100297B58), RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, *(v12 + 120), sub_1000A55EC, 0), (*(v12 + 56) = RunLoopSource) == 0))
  {
    CFRelease(v12);
    return 0;
  }

  return v12;
}

void sub_10017B168()
{
  sub_1000086C4();
  if (!v2)
  {
    goto LABEL_13;
  }

  v5 = v3;
  if (!v3)
  {
    goto LABEL_13;
  }

  v6 = v4;
  v7 = v2;
  v8 = v1;
  v9 = v0;
  if (CFDictionaryGetValue(v3, @"TLSServerCertificateChain"))
  {
    if (v6 != 2)
    {
      v23 = sub_10017B3AC(v9, 2, v6, v8, v5, atomic_fetch_add_explicit(dword_100297B50, 1u, memory_order_relaxed) + 1);
      if (!v23)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v10 = sub_1000113AC();
    Mutable = CFDictionaryCreateMutable(v10, v11, v12, v13);
    if (Mutable)
    {
      v15 = Mutable;
      v16 = sub_10010E234(@"WIFI_OPEN_SETTINGS_CERTIFICATE_TITLE");
      sub_10000A878(v7);
      v17 = sub_1000113AC();
      v19 = CFStringCreateWithFormat(v17, v18, v16);
      CFDictionarySetValue(v15, kCFUserNotificationAlertHeaderKey, v19);
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = sub_10010E234(@"WIFI_OPEN_SETTINGS_CERTIFICATE_ACCEPT_BUTTON");
      sub_10000DB58(v20);
      v21 = sub_10010E234(@"WIFI_OPEN_SETTINGS_CERTIFICATE_VIEW_BUTTON");
      sub_10000DB58(v21);
      v22 = sub_10010E234(@"WIFI_CANCEL");
      sub_10000DB58(v22);
      v23 = sub_10017AE6C(v9, 2, 2, v8, v15, 0, 0);
      CFRelease(v15);
      if (v23)
      {
        *(v23 + 24) = CFRetain(v7);
        *(v23 + 112) = CFRetain(v5);
LABEL_10:
        v24 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v26 = *(v23 + 40);
          [off_100298C40 WFLog:3 message:"Dispatching EAP Trust panel(%d)"];
        }

        objc_autoreleasePoolPop(v24);
        *(v23 + 24) = CFRetain(v7);
      }
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: server certificate chain is null"];
    }

    objc_autoreleasePoolPop(v25);
  }

LABEL_13:
  sub_100010944();
}

uint64_t sub_10017B3AC(uint64_t a1, int a2, int a3, const void *a4, const void *a5, int a6)
{
  if (!qword_100298640)
  {
    pthread_once(&stru_100297B40, sub_1000A47EC);
  }

  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 32) = a2;
    *(Instance + 36) = a3;
    *(Instance + 40) = a6;
    if (a4)
    {
      *(Instance + 16) = CFRetain(a4);
    }

    if (a5)
    {
      *(v12 + 112) = CFRetain(a5);
    }
  }

  return v12;
}

uint64_t sub_10017B480(uint64_t a1, const void *a2, uint64_t a3, CFDictionaryRef *a4, int a5)
{
  if (!a4 || !sub_10009F2A4(a4))
  {
    return 0;
  }

  v8 = sub_10002A1CC(a4);
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = sub_10009FB64(a4);
  if (v9)
  {
    v8 = v9;
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: found password with non-syncable attribute for network %@.", "WiFiNotificationCreatePassword", sub_10000A878(a4)}];
    }

    objc_autoreleasePoolPop(v10);
LABEL_8:
    CFRelease(v8);
    v11 = 0;
    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:
  v12 = sub_1000113AC();
  Mutable = CFDictionaryCreateMutable(v12, v13, v14, v15);
  if (!Mutable)
  {
    return 0;
  }

  v17 = Mutable;
  v18 = sub_10010E220();
  v19 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: localizationAvailable=%d", "WiFiNotificationCreatePassword", v18}];
  }

  objc_autoreleasePoolPop(v19);
  if (!v18)
  {
    if (a5 == 2)
    {
      sub_100174B68(a4);
      v93 = sub_10000A878(a4);
      v58 = sub_1000113AC();
      v61 = CFStringCreateWithFormat(v58, v59, v60, v93);
      sub_100024F28(v61, kCFUserNotificationAlertHeaderKey);
      if (v61)
      {
        CFRelease(v61);
      }

      if (sub_100174B68(a4))
      {
        v31 = @"Enter Credentials";
      }

      else
      {
        v31 = @"Enter Password";
      }
    }

    else
    {
      if (a5 != 1)
      {
LABEL_56:
        CFDictionarySetValue(v17, kCFUserNotificationAlternateButtonTitleKey, @"Cancel");
        v95 = sub_10000A878(a4);
        v62 = sub_1000113AC();
        v57 = CFStringCreateWithFormat(v62, v63, v64, v95);
        v54 = v57;
        v49 = 0;
        if (v57)
        {
          goto LABEL_57;
        }

        v89 = 0;
LABEL_80:
        CFRelease(v17);
        return v89;
      }

      if (sub_100174C78(a4))
      {
        v29 = 1;
      }

      else
      {
        v29 = v11;
      }

      if (v29)
      {
        v30 = @"Wi-Fi Password";
      }

      else
      {
        v30 = @"Incorrect Wi-Fi Password";
      }

      CFDictionarySetValue(v17, kCFUserNotificationAlertHeaderKey, v30);
      v31 = @"Join";
    }

    CFDictionarySetValue(v17, kCFUserNotificationDefaultButtonTitleKey, v31);
    goto LABEL_56;
  }

  v20 = sub_1000D9C6C(a2);
  if (a5 == 2)
  {
    if (sub_100174B68(a4))
    {
      v32 = @"WIFI_OPEN_SETTINGS_CREDENTIALS_TITLE";
      v33 = @"WIFI_OPEN_SETTINGS_CREDENTIALS_TITLE_CH";
    }

    else
    {
      v32 = @"WIFI_OPEN_SETTINGS_PASSWORD_TITLE";
      v33 = @"WIFI_OPEN_SETTINGS_PASSWORD_TITLE_CH";
    }

    if (v20)
    {
      v34 = v33;
    }

    else
    {
      v34 = v32;
    }

    v35 = sub_10010E234(v34);
    v94 = sub_10000A878(a4);
    v36 = sub_1000113AC();
    v38 = CFStringCreateWithFormat(v36, v37, v35, v94);
    sub_100024F28(v38, kCFUserNotificationAlertHeaderKey);
    if (v38)
    {
      CFRelease(v38);
    }

    if (sub_100174B68(a4))
    {
      v28 = @"WIFI_OPEN_SETTINGS_CREDENTIALS_BUTTON";
    }

    else
    {
      v28 = @"WIFI_OPEN_SETTINGS_PASSWORD_BUTTON";
    }
  }

  else
  {
    if (a5 != 1)
    {
      goto LABEL_47;
    }

    v21 = sub_100174C78(a4);
    v22 = @"WIFI_PASSWORD_TITLE";
    if (v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = v11;
    }

    v24 = v23 == 0;
    v25 = @"WIFI_PASSWORD_TITLE_CH";
    if (!v24)
    {
      v22 = @"WIFI_OTP_PASSWORD_TITLE";
      v25 = @"WIFI_OTP_PASSWORD_TITLE_CH";
    }

    if (v20)
    {
      v26 = v25;
    }

    else
    {
      v26 = v22;
    }

    v27 = sub_10010E234(v26);
    CFDictionarySetValue(v17, kCFUserNotificationAlertHeaderKey, v27);
    v28 = @"WIFI_JOIN";
  }

  sub_10010E234(v28);
  v39 = sub_10000D80C();
  CFDictionarySetValue(v39, v40, v41);
LABEL_47:
  sub_10010E234(@"WIFI_CANCEL");
  v42 = sub_10000D80C();
  CFDictionarySetValue(v42, v43, v44);
  v96 = sub_10000A878(a4);
  v45 = sub_1000113AC();
  v48 = CFStringCreateWithFormat(v45, v46, v47, 8, v96, 127);
  if (!v48)
  {
    v89 = 0;
    goto LABEL_80;
  }

  v49 = v48;
  v50 = sub_1000113AC();
  v53 = CFArrayCreateMutable(v50, v51, v52);
  if (v53)
  {
    v54 = v53;
    v55 = sub_10010E234(@"WIFI_PASSWORD_MESSAGE_PREFIX");
    CFArrayAppendValue(v54, v55);
    CFArrayAppendValue(v54, v49);
    v56 = sub_10010E234(@"WIFI_PASSWORD_MESSAGE_SUFFIX");
    CFArrayAppendValue(v54, v56);
LABEL_57:
    v65 = v18;
    sub_100024F28(v57, kCFUserNotificationAlertMessageKey);
    CFRelease(v54);
    v66 = sub_10000D80C();
    CFDictionarySetValue(v66, v67, &stru_1002680F8);
    v68 = sub_100174B68(a4);
    if (a5 == 1 && v68)
    {
      v69 = sub_1000113AC();
      v72 = CFArrayCreateMutable(v69, v70, v71);
      v73 = v72;
      if (!v72)
      {
        goto LABEL_83;
      }

      if (v65)
      {
        v74 = sub_10010E234(@"WIFI_USERNAME_TEXT_TITLE");
        CFArrayAppendValue(v73, v74);
        v75 = sub_10010E234(@"WIFI_PASSWORD_TEXT_TITLE");
      }

      else
      {
        CFArrayAppendValue(v72, @"Username");
        v75 = @"Password";
      }

      CFArrayAppendValue(v73, v75);
      v76 = sub_10000D80C();
      CFDictionarySetValue(v76, v77, v73);
      v78 = sub_1000113AC();
      v81 = CFArrayCreateMutable(v78, v79, v80);
      if (!v81)
      {
LABEL_83:
        v88 = 0;
        v89 = 0;
        goto LABEL_75;
      }

      v82 = v81;
      v83 = sub_10000A540(a4, @"UserName");
      if (v83)
      {
        v84 = v83;
      }

      else
      {
        v84 = &stru_1002680F8;
      }

      CFArrayAppendValue(v82, v84);
      CFArrayAppendValue(v82, &stru_1002680F8);
      sub_100024F28(v85, kCFUserNotificationTextFieldValuesKey);
      v86 = 1;
    }

    else
    {
      v82 = 0;
      v73 = 0;
      v86 = 0;
      v88 = 0;
      v87 = 0;
      if (a5 != 1)
      {
LABEL_69:
        v89 = sub_10017AE6C(a1, 1, a5, a2, v17, v87, 0);
        if (v89)
        {
          v90 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v91 = "no";
            if (v11)
            {
              v91 = "yes";
            }

            [off_100298C40 WFLog:3 message:{"Dispatching password panel(%d), missing password=%s", *(v89 + 40), v91}];
          }

          objc_autoreleasePoolPop(v90);
          *(v89 + 24) = CFRetain(a4);
        }

LABEL_75:
        CFRelease(v17);
        v17 = v88;
        if (!v49)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }
    }

    v87 = 0x10000 << v86;
    v88 = v82;
    goto LABEL_69;
  }

  CFRelease(v17);
  v89 = 0;
  v88 = 0;
  v73 = 0;
LABEL_76:
  CFRelease(v49);
  v17 = v88;
LABEL_77:
  if (v73)
  {
    CFRelease(v73);
  }

  if (v17)
  {
    goto LABEL_80;
  }

  return v89;
}

void sub_10017BB30()
{
  sub_1000086C4();
  if (!v1)
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: null network."];
    }

    goto LABEL_13;
  }

  v2 = v1;
  v3 = v0;
  v4 = sub_1000083D0();
  Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
  if (!Mutable)
  {
    goto LABEL_14;
  }

  v9 = Mutable;
  if (sub_10010E220())
  {
    v16 = sub_10010E234(@"WIFI_JOIN_NETWORK_FAILURE_CAPTIVE_TITLE");
    sub_10000A878(v2);
    v17 = sub_1000083D0();
    v14 = CFStringCreateWithFormat(v17, v18, v16);
    v15 = sub_10010E234(@"WIFI_FAILURE_OK");
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: localization not available"];
    }

    objc_autoreleasePoolPop(v10);
    sub_10000A878(v2);
    v11 = sub_1000083D0();
    v14 = CFStringCreateWithFormat(v11, v12, v13);
    v15 = @"OK";
  }

  CFDictionarySetValue(v9, kCFUserNotificationAlertHeaderKey, v14);
  if (v14)
  {
    CFRelease(v14);
  }

  CFDictionarySetValue(v9, kCFUserNotificationDefaultButtonTitleKey, v15);
  v19 = sub_1000A598C(v3, 6);
  if (v19)
  {
    v20 = v19;
    CFRelease(v9);
    *(v20 + 24) = CFRetain(v2);
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v23 = *(v20 + 40);
      [off_100298C40 WFLog:3 message:"Dispatching Join Failure Captive Notification(%d)"];
    }

LABEL_13:
    objc_autoreleasePoolPop(v21);
    goto LABEL_14;
  }

  v22 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: failed to create notification of type join failure captive"];
  }

  objc_autoreleasePoolPop(v22);
  CFRelease(v9);
LABEL_14:
  sub_100010944();
}

void sub_10017BD58()
{
  sub_1000086C4();
  if (!v1)
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: null network."];
    }

    goto LABEL_13;
  }

  v2 = v1;
  v3 = v0;
  v4 = sub_1000083D0();
  Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
  if (!Mutable)
  {
    goto LABEL_14;
  }

  v9 = Mutable;
  if (sub_10010E220())
  {
    v16 = sub_10010E234(@"WIFI_JOIN_NETWORK_FAILURE_TITLE");
    sub_10000A878(v2);
    v17 = sub_1000083D0();
    v14 = CFStringCreateWithFormat(v17, v18, v16);
    v15 = sub_10010E234(@"WIFI_FAILURE_OK");
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: localization not available"];
    }

    objc_autoreleasePoolPop(v10);
    sub_10000A878(v2);
    v11 = sub_1000083D0();
    v14 = CFStringCreateWithFormat(v11, v12, v13);
    v15 = @"OK";
  }

  CFDictionarySetValue(v9, kCFUserNotificationAlertHeaderKey, v14);
  if (v14)
  {
    CFRelease(v14);
  }

  CFDictionarySetValue(v9, kCFUserNotificationDefaultButtonTitleKey, v15);
  v19 = sub_1000A598C(v3, 7);
  if (v19)
  {
    v20 = v19;
    CFRelease(v9);
    *(v20 + 24) = CFRetain(v2);
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v23 = *(v20 + 40);
      [off_100298C40 WFLog:3 message:"Dispatching Join Failure Notification(%d)"];
    }

LABEL_13:
    objc_autoreleasePoolPop(v21);
    goto LABEL_14;
  }

  v22 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: failed to create notification of type join failure"];
  }

  objc_autoreleasePoolPop(v22);
  CFRelease(v9);
LABEL_14:
  sub_100010944();
}

uint64_t sub_10017BF80(uint64_t a1, uint64_t a2, int a3, void *a4, CFDictionaryRef theDict)
{
  if (!a4)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = sub_1000113EC();
    if (v61)
    {
      [v61 WFLog:4 message:{"%s: nil networks manager.", "WiFiNotificationCreateColocatedJoin"}];
    }

    goto LABEL_59;
  }

  if (!theDict)
  {
    v62 = objc_autoreleasePoolPush();
    v63 = sub_1000113EC();
    if (v63)
    {
      [v63 WFLog:4 message:{"%s: additional inforation is null", "WiFiNotificationCreateColocatedJoin"}];
    }

    goto LABEL_59;
  }

  Value = CFDictionaryGetValue(theDict, @"SSID_STR");
  if (!Value)
  {
    v64 = objc_autoreleasePoolPush();
    v65 = sub_1000113EC();
    if (v65)
    {
      [v65 WFLog:4 message:{"%s: network SSID string is null", "WiFiNotificationCreateColocatedJoin"}];
    }

LABEL_59:
    objc_autoreleasePoolPop(v5);
    return 0;
  }

  v11 = Value;
  v12 = sub_1000083D0();
  Mutable = CFDictionaryCreateMutable(v12, v13, v14, v15);
  if (!Mutable)
  {
    return 0;
  }

  v17 = Mutable;
  v18 = sub_10010E220();
  v73 = sub_1000D9C6C(a2);
  v19 = [a4 numberOfCandidates];
  if (!v19)
  {
    v66 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"No colocated candidates"];
    }

    v40 = 0;
LABEL_66:
    objc_autoreleasePoolPop(v66);
    CFRelease(v17);
    v56 = 0;
    if (!v40)
    {
      return v56;
    }

    goto LABEL_51;
  }

  v20 = v19;
  v74 = a1;
  v21 = [a4 colocatedNetworks];
  v22 = v21;
  v75 = a2;
  if (v20 == 1)
  {
    v23 = sub_1000A2E44([v21 objectAtIndex:0]);
    v24 = sub_10000A878(v23);
    v25 = 0;
    v26 = 0;
    if (!v23)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v20 == 2)
  {
    v23 = sub_1000A2E44([v21 objectAtIndex:0]);
    v25 = sub_1000A2E44([v22 objectAtIndex:1]);
    v24 = sub_10000A878(v23);
    v26 = sub_10000A878(v25);
    if (!v23)
    {
LABEL_9:
      if (v25)
      {
        CFRelease(v25);
        if (!v18)
        {
          goto LABEL_11;
        }
      }

      else if (!v18)
      {
LABEL_11:
        if (v20 == 1)
        {
          CFDictionarySetValue(v17, kCFUserNotificationAlertHeaderKey, @"Related Wi-Fi Network Available");
          v27 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: localization not available", "WiFiNotificationCreateColocatedJoin"}];
          }

          goto LABEL_14;
        }

        CFDictionarySetValue(v17, kCFUserNotificationAlertHeaderKey, @"Related Wi-Fi Networks Available");
        v32 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: localization not available", "WiFiNotificationCreateColocatedJoin"}];
        }

        objc_autoreleasePoolPop(v32);
        v70 = v24;
        v68 = v11;
LABEL_34:
        v37 = sub_1000083D0();
        v40 = CFStringCreateWithFormat(v37, v38, v39, v68, v70);
        goto LABEL_39;
      }

      if (v20 == 1)
      {
        sub_10010E234(@"WIFI_LIMITED_COMPATIBILITY_JOIN_ONE_TITLE");
        v28 = sub_1000083D0();
        v31 = CFStringCreateWithFormat(v28, v29, v30);
        sub_100021494(v31, kCFUserNotificationAlertHeaderKey);
        if (v31)
        {
          CFRelease(v31);
        }

        sub_100007588(@"WIFI_LIMITED_COMPATIBILITY_JOIN_ONE_BODY", v24, v69, v71, v72, v73);
      }

      else
      {
        sub_10010E234(@"WIFI_LIMITED_COMPATIBILITY_JOIN_TWO_TITLE");
        v33 = sub_1000083D0();
        v36 = CFStringCreateWithFormat(v33, v34, v35);
        sub_100021494(v36, kCFUserNotificationAlertHeaderKey);
        if (v36)
        {
          CFRelease(v36);
        }

        sub_100007588(@"WIFI_LIMITED_COMPATIBILITY_JOIN_TWO_BODY", v24, v26, v71, v72, v73);
      }

      v68 = v11;
      v70 = v24;
      goto LABEL_34;
    }

LABEL_8:
    CFRelease(v23);
    goto LABEL_9;
  }

  if (v18)
  {
    sub_10010E234(@"WIFI_LIMITED_COMPATIBILITY_JOIN_MANY_TITLE");
    v41 = sub_1000083D0();
    v44 = CFStringCreateWithFormat(v41, v42, v43);
    sub_100021494(v44, kCFUserNotificationAlertHeaderKey);
    if (v44)
    {
      CFRelease(v44);
    }

    sub_100007588(@"WIFI_LIMITED_COMPATIBILITY_JOIN_MANY_BODY", 0, v69, v71, v72, v73);
    v67 = v11;
    goto LABEL_38;
  }

  CFDictionarySetValue(v17, kCFUserNotificationAlertHeaderKey, @"Related Wi-Fi Networks Available");
  v27 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: localization not available", "WiFiNotificationCreateColocatedJoin"}];
  }

LABEL_14:
  objc_autoreleasePoolPop(v27);
  v67 = v11;
LABEL_38:
  v45 = sub_1000083D0();
  v40 = CFStringCreateWithFormat(v45, v46, v47, v67);
LABEL_39:
  v48 = sub_10010E220();
  if (v48)
  {
    v49 = sub_10010E234(@"WIFI_LIMITED_COMPATIBILITY_JOIN_BUTTON_OK");
  }

  else
  {
    v49 = @"Join";
  }

  v50 = [[SBSMutableUserNotificationButtonDefinition alloc] initWithTitle:v49];
  [v50 setIsPreferredButton:1];
  [v50 setPresentationStyle:0];
  if (v48)
  {
    v51 = sub_10010E234(@"WIFI_LIMITED_COMPATIBILITY_JOIN_BUTTON_CANCEL");
  }

  else
  {
    v51 = @"Not Now";
  }

  v52 = [[SBSMutableUserNotificationButtonDefinition alloc] initWithTitle:v51];
  v53 = [[NSArray alloc] initWithObjects:{objc_msgSend(v52, "build"), objc_msgSend(v50, "build"), 0}];

  sub_100021494(v54, SBSUserNotificationButtonDefinitionsKey);
  if (v53)
  {
    CFRelease(v53);
  }

  CFDictionarySetValue(v17, kCFUserNotificationAlertMessageKey, v40);
  v55 = sub_10017AE6C(v74, 13, 0, v75, v17, 0, theDict);
  if (!v55)
  {
    v66 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failed to create notification of limited compatibility assisted join", "WiFiNotificationCreateColocatedJoin"}];
    }

    goto LABEL_66;
  }

  v56 = v55;
  CFRelease(v17);
  v57 = objc_autoreleasePoolPush();
  v58 = sub_1000113EC();
  if (v58)
  {
    [v58 WFLog:3 message:{"Dispatching colocated join Notification(%d)", *(v56 + 40)}];
  }

  objc_autoreleasePoolPop(v17);
  if (v40)
  {
LABEL_51:
    CFRelease(v40);
  }

  return v56;
}

void sub_10017C5BC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null messageString.", "WiFiNotificationCreateJoinRecommendation"}];
  }

  objc_autoreleasePoolPop(v2);

  CFRelease(a1);
}

void sub_10017C634()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null alert.", "WiFiNotificationCreateJoinRecommendation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017C6A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null network.", "WiFiNotificationCreateJoinRecommendation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017C70C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null messageString.", "WiFiNotificationCreateAutoHotspotError"}];
  }

  objc_autoreleasePoolPop(v2);

  CFRelease(a1);
}

void sub_10017C784()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null alert.", "WiFiNotificationCreateAutoHotspotError"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017C7F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null network.", "WiFiNotificationCreateAutoHotspotError"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017C85C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null messageString.", "WiFiNotificationCreateAskToJoinHotspot"}];
  }

  objc_autoreleasePoolPop(v2);

  CFRelease(a1);
}

void sub_10017C8D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null alert.", "WiFiNotificationCreateAskToJoinHotspot"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017C940()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null network.", "WiFiNotificationCreateAskToJoinHotspot"}];
  }

  objc_autoreleasePoolPop(v0);
}

__CFString *sub_10017C9AC(const __CFString *a1, const __CFData *a2)
{
  Mutable = 0;
  if (a1 && a2)
  {
    *bytes = 0u;
    v10 = 0u;
    CFStringGetCStringPtr(a1, 0x8000100u);
    CFDataGetBytePtr(a2);
    CFDataGetLength(a2);
    if (Apple80211ParseWPAPassword())
    {
      return 0;
    }

    v4 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
    if (!v4)
    {
      return 0;
    }

    else
    {
      v5 = v4;
      BytePtr = CFDataGetBytePtr(v4);
      if (CFDataGetLength(v5) == 32)
      {
        Mutable = CFStringCreateMutable(kCFAllocatorDefault, 64);
        for (i = 0; i != 32; ++i)
        {
          CFStringAppendFormat(Mutable, 0, @"%02x", BytePtr[i]);
        }
      }

      else
      {
        Mutable = 0;
      }

      CFRelease(v5);
    }
  }

  return Mutable;
}

void sub_10017CB00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create query for %@", "__WiFiSecurityCreateQuery", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10017CB70()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null account", "__WiFiSecurityCreateQuery"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017CC04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Cannot get keychain attributes for %@. Device wasn't unlocked yet", "WiFiSecurityCopyPasswordModificationDate", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10017CC74()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null account", "WiFiSecurityCopyPasswordModificationDate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017CCE0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null query", "WiFiSecuritySetPasswordWithTimeout"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017CD4C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: Empty password for account %@", "WiFiSecuritySetPasswordWithTimeout", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10017CDBC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null password", "WiFiSecuritySetPasswordWithTimeout"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017CE28()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null account", "WiFiSecuritySetPasswordWithTimeout"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017CE94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null query", "__WiFiSecuritySetPassword"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017CF00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: Empty password for account %@", "__WiFiSecuritySetPassword", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10017CF70()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null password", "__WiFiSecuritySetPassword"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017CFDC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null account", "__WiFiSecuritySetPassword"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017D048()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null query", "__WiFiSecurityRemovePassword"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017D0B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null account", "__WiFiSecurityRemovePassword"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017D120(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Cannot get keychain attributes for %@. Device wasn't unlocked yet", "WiFiSecurityIsPasswordSyncing", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10017D190()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null account", "WiFiSecurityIsPasswordSyncing"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017D1FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Cannot get all airport keychain attributes. Device wasn't unlocked yet", "WiFiSecurityCopyAttributesForAllAirPortEntries"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017D27C()
{
  sub_10001131C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v2, "%s: error: empty ssid hash", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

void sub_10017D31C()
{
  sub_10001131C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = *v0;
    v2 = 136315394;
    v3 = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
    v4 = 2112;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: error: empty password for ssid %@", &v2, 0x16u);
  }

  sub_100024F40();
}

void sub_10017D3D4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v0, "%s: error: empty ssid", v1, v2, v3, v4, 2u);
  }

  sub_100024F40();
}

void sub_10017D470()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v0, "%s: null password", v1, v2, v3, v4, 2u);
  }

  sub_100024F40();
}

void sub_10017D50C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v0, "%s: null ssid", v1, v2, v3, v4, 2u);
  }

  sub_100024F40();
}

void sub_10017D5A8()
{
  sub_10001131C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v2, "%s: error: empty ssid hash", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

void sub_10017D648()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v0, "%s: error: empty ssid", v1, v2, v3, v4, 2u);
  }

  sub_100024F40();
}

void sub_10017D6E4()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v0, "%s: null ssid", v1, v2, v3, v4, 2u);
  }

  sub_100024F40();
}

void sub_10017D780()
{
  sub_10001131C();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v2, "%s: error: empty ssid hash", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

void sub_10017D820()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v0, "%s: error: empty ssid", v1, v2, v3, v4, 2u);
  }

  sub_100024F40();
}

void sub_10017D8BC()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_100008410(&_mh_execute_header, &_os_log_default, v0, "%s: null ssid", v1, v2, v3, v4, 2u);
  }

  sub_100024F40();
}

double sub_10017D958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    if (!qword_100298660)
    {
      pthread_once(&stru_100297B98, sub_1000A7E38);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      result = 0.0;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 16) = a3;
      *(Instance + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_10017D9E4()
{
  v0 = sub_10000FFF0();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    sub_10005A2DC(v1);
    CFRelease(v2);
  }

  return 0;
}

void sub_10017DA24()
{
  sub_10000D798();
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_1000A9B18();
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v7);
        v8 = sub_10000715C(v3);
        sub_10007CC64(v6, v0, v8);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  sub_1000084B8();
}

uint64_t sub_10017DB28(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_100020FDC(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_power(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_10017DBD4()
{
  sub_10000D798();
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_1000A9B18();
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v7);
        v8 = sub_10000715C(v3);
        sub_100079528(v6, v0, v8);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  sub_1000084B8();
}

uint64_t sub_10017DCD8(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007ACC4(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_ask_to_join_state(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t sub_10017DD84()
{
  sub_100015E88();
  *v1 = 0;
  v2 = sub_10000FFF0();
  v3 = sub_10001D1E8(v2);
  if (v3)
  {
    v4 = v3;
    if (sub_100010038(v3))
    {
      v6 = sub_100029A10(v4);
      if (!v6)
      {
LABEL_10:
        CFRelease(v4);
        return 0;
      }

      *v0 = sub_10007BCA0(v6);
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v4);
        v7 = *v0;
        sub_1000A9B08();
        [sub_10000FC2C() WFLog:v9 message:v10];
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v11 = sub_10000715C(v4);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_nanclient_assoc_status(mach_port_t message:{int *)", v11}];
      }
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_10017DE7C()
{
  v1 = sub_1000A9CB0();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v9 = sub_10000715C(v3);
          [sub_10000FC2C() WFLog:v9 message:*&v0];
        }

        objc_autoreleasePoolPop(v7);
        sub_100085434(v6, v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v10 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_set_nan_off_head_connection_expiry(mach_port_t message:{double)", v10}];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  return 0;
}

uint64_t sub_10017DF78()
{
  sub_100015E88();
  *v1 = 0;
  v2 = sub_10000FFF0();
  v3 = sub_10001D1E8(v2);
  if (v3)
  {
    v4 = v3;
    if (sub_100010038(v3))
    {
      v6 = sub_100029A10(v4);
      if (!v6)
      {
LABEL_9:
        CFRelease(v4);
        return 0;
      }

      *v0 = sub_10015ED20(v6);
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v7 = sub_10000715C(v4);
        [sub_10000FC2C() WFLog:v7 message:*v0];
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v4);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_nan_off_head_connection_expiry(mach_port_t message:{double *)", v9}];
      }
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_9;
  }

  return 0;
}

void sub_10017E064()
{
  sub_10000D798();
  v0 = sub_10001095C();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_1000A9B18();
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v4);
        v5 = sub_100021DA8();
        sub_10007B77C(v5, v6, v7);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  sub_1000084B8();
}

uint64_t sub_10017E15C()
{
  sub_100015E88();
  *v1 = 0;
  v2 = sub_10000FFF0();
  v3 = sub_10001D1E8(v2);
  if (v3)
  {
    v4 = v3;
    if (sub_100010038(v3))
    {
      v6 = sub_100029A10(v4);
      if (!v6)
      {
LABEL_10:
        CFRelease(v4);
        return 0;
      }

      *v0 = sub_10007B938(v6);
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v4);
        v7 = *v0;
        sub_1000A9B08();
        [sub_10000FC2C() WFLog:v9 message:v10];
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v11 = sub_10000715C(v4);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_mis_state(mach_port_t message:{int *)", v11}];
      }
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_10017E41C(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007BF2C(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_mis_discovery_state(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_10017E4C8()
{
  sub_10000D798();
  v0 = sub_10001095C();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_1000A9B18();
          [sub_1000A9AFC() WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v4);
        v5 = sub_100021DA8();
        sub_10001F1EC(v5, v6, v7, 2);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  sub_1000084B8();
}

uint64_t sub_10017E5C8(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = sub_100024F4C(a1, a2, a3);
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029A10(v6);
      if (v8)
      {
        v9 = sub_100164C30(v8);
        if (v9)
        {
          sub_10000393C(v9);
          CFRelease(v3);
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v11 = sub_10000715C(v6);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_mac_randomisation_parameters(mach_port_t message:{vm_offset_t *, mach_msg_type_number_t *)", v11}];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  return 0;
}

void sub_10017E680()
{
  sub_10000D798();
  v1 = v0;
  sub_10000DB74();
  v2 = sub_10000FFF0();
  v3 = sub_10001D1E8(v2);
  if (v3)
  {
    v4 = v3;
    if ((sub_100010038(v3) & 1) == 0)
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v4);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v5);
      goto LABEL_8;
    }

    if (!sub_100029A10(v4) || (v6 = sub_100015EC4(), v8 = sub_100017AC4(v6, v7), sub_100164E18(), *v1 = v9, CFRelease(v4), (v4 = v8) != 0))
    {
LABEL_8:
      CFRelease(v4);
    }
  }

  sub_1000084B8();
}

void sub_10017E75C()
{
  sub_1000086C4();
  v1 = v0;
  v3 = v2;
  *v0 = 0;
  v4 = sub_10000FFF0();
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029A10(v6);
      if (v8)
      {
        v9 = v8;
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v6);
          sub_1000A9B70();
        }

        objc_autoreleasePoolPop(v10);
        *v1 = sub_10007C1B8(v9, v6, v3);
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v6);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  sub_100010944();
}

uint64_t sub_10017E878(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007C32C(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_quiesce_state(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_10017E924()
{
  sub_10000D798();
  v2 = v1;
  sub_10000842C();
  *v3 = 0;
  v4 = sub_10000FFF0();
  v5 = sub_10000D824(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      if (sub_100029A10(v6))
      {
        v8 = sub_100029DC0();
        if (sub_100017AC4(v8, v9))
        {
          v10 = sub_1000A9AEC();
          *v2 = sub_100083510(v10, v11);
          CFRelease(v0);
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v6);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  v12 = sub_100029DC0();
  sub_100017CC0(v12, v13);
  sub_1000084B8();
}

uint64_t sub_10017EA00(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007C760(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_tethering_supported(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_10017EAAC()
{
  sub_10000D798();
  v3 = sub_100024F4C(v0, v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        v8 = sub_10008ACCC(v7);
        if (v8)
        {
          v9 = v8;
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000715C(v5);
            sub_1000A9B70();
          }

          objc_autoreleasePoolPop(v10);
          sub_1000A9B40(v9);
        }
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v5);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  sub_1000084B8();
}

uint64_t sub_10017EBA4()
{
  v0 = sub_10000FFF0();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      v4 = sub_100029A10(v2);
      if (!v4)
      {
LABEL_9:
        CFRelease(v2);
        return 0;
      }

      sub_10008AD28(v4);
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v7 = sub_10000715C(v2);
        [sub_10000DAC0() WFLog:"_wifi_manager_reset_mis_stats" message:v7];
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v6 = sub_10000715C(v2);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_reset_mis_stats(mach_port_t)" message:v6];
      }
    }

    objc_autoreleasePoolPop(v3);
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_10017EC88(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007C808(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_is_always_on_wifi_supported(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t sub_10017ED34(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = sub_100024F4C(a1, a2, a3);
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029A10(v6);
      if (!v8)
      {
        goto LABEL_9;
      }

      v9 = sub_100083D60(v8);
      if (v9)
      {
        sub_10000393C(v9);
        CFRelease(v6);
        v6 = v3;
        goto LABEL_9;
      }

      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Null localeStatsDict", "_wifi_manager_copy_locale_stats", v11}];
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_manager_copy_locale_stats(mach_port_t, vm_offset_t *, mach_msg_type_number_t *)", sub_10000715C(v6)}];
      }
    }

    objc_autoreleasePoolPop(v7);
LABEL_9:
    CFRelease(v6);
  }

  return 0;
}

void sub_10017EE24()
{
  sub_10000D798();
  v1 = v0;
  sub_10000842C();
  *v2 = 0;
  v3 = sub_10000FFF0();
  v4 = sub_10000D824(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      if (sub_100029A10(v5))
      {
        v7 = sub_100029DC0();
        v9 = sub_100017AC4(v7, v8);
        if (v9)
        {
          v10 = v9;
          v11 = sub_10001098C();
          if (!sub_10007C85C(v11, v12))
          {
            v13 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:"Unable to set mis password"];
            }

            objc_autoreleasePoolPop(v13);
          }

          CFRelease(v10);
        }
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v5);
        sub_1000A9BA0();
      }

      objc_autoreleasePoolPop(v6);
      *v1 = 1;
    }

    CFRelease(v5);
  }

  v14 = sub_100029DC0();
  sub_100017CC0(v14, v15);
  sub_1000084B8();
}

uint64_t sub_10017EF38(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = sub_100024F4C(a1, a2, a3);
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if ((sub_100010038(v5) & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_manager_mis_copy_password(mach_port_t, vm_offset_t *, mach_msg_type_number_t *)", sub_10000715C(v6)}];
      }

LABEL_10:
      objc_autoreleasePoolPop(v7);
      goto LABEL_11;
    }

    v8 = sub_100029A10(v6);
    if (v8)
    {
      v9 = sub_10007C8F4(v8);
      if (!v9)
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Unable to copy mis password", v11, v12}];
        }

        goto LABEL_10;
      }

      sub_10000393C(v9);
      CFRelease(v3);
    }

LABEL_11:
    CFRelease(v6);
  }

  return 0;
}

uint64_t sub_10017F018()
{
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        sub_10007C970(v5, v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v7 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_set_retry_cap(mach_port_t message:{int)", v7}];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  return 0;
}

uint64_t sub_10017F0C4(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007C9C8(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_retry_cap(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_10017F170()
{
  sub_1000086C4();
  v1 = v0;
  v3 = v2;
  sub_10000842C();
  v9 = sub_100017AA0(v4, v5, v6, v7, v8);
  v10 = sub_10000D824(v9);
  if (v10)
  {
    v11 = v10;
    if ((sub_100010038(v10) & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v11);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_17;
    }

    v13 = sub_100029A10(v11);
    if (!v13 || (v14 = v13, v15 = sub_100029DC0(), (v17 = sub_100017AC4(v15, v16)) == 0))
    {
LABEL_17:
      CFRelease(v11);
      goto LABEL_18;
    }

    v18 = v17;
    v19 = CFGetTypeID(v17);
    TypeID = CFStringGetTypeID();
    if (v19 != TypeID)
    {
      goto LABEL_16;
    }

    v21 = sub_1000A9C98(TypeID, @"carplayParameters");
    if (v21)
    {
      v22 = sub_1000A9C98(v21, @"HotspotDataUsage");
      if (v22)
      {
        if (sub_1000A9C98(v22, @"Custom network settings"))
        {
          v23 = sub_10002D3B4();
          v25 = sub_10007C4E0(v23, v24);
          if (v25)
          {
            sub_100017C18(v25, v3, v1);
          }

          goto LABEL_16;
        }

        v26 = sub_10008944C(v14);
        if (!v26)
        {
LABEL_16:
          CFRelease(v18);
          goto LABEL_17;
        }
      }

      else
      {
        v26 = sub_1000894A0(v14);
        if (!v26)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v26 = sub_10015F178(v14);
      if (!v26)
      {
        goto LABEL_16;
      }
    }

    sub_10001DB90(v26);
    CFRelease(v14);
    goto LABEL_16;
  }

LABEL_18:
  v27 = sub_100029DC0();
  sub_100017CC0(v27, v28);
  sub_100010944();
}

void sub_10017F2E8()
{
  sub_100011520();
  sub_1000075A4();
  *v0 = 0;
  v1 = sub_10000FFF0();
  v2 = sub_10002A0AC(v1);
  if (v2)
  {
    v3 = v2;
    if ((sub_100010038(v2) & 1) == 0)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = off_100298C40;
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [v5 WFLog:4 message:"%s Client %@ has no entitlement"];
      }

      objc_autoreleasePoolPop(v4);
      sub_100024B98();
      goto LABEL_36;
    }

    v6 = sub_100029A10(v3);
    if (!v6)
    {
LABEL_36:
      CFRelease(v3);
      goto LABEL_37;
    }

    v7 = v6;
    v8 = sub_100015EC4();
    v10 = sub_100017AC4(v8, v9);
    v11 = sub_100029DC0();
    v13 = sub_100017AC4(v11, v12);
    if (!v10)
    {
LABEL_34:
      if (v13)
      {
        CFRelease(v13);
      }

      goto LABEL_36;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = off_100298C40;
    if (off_100298C40)
    {
      sub_10000715C(v3);
      [v15 WFLog:3 message:"ManagerClient[%@] setProperty[%@] = %@"];
    }

    objc_autoreleasePoolPop(v14);
    v17 = sub_1000A9B88(v16, @"carplayParameters");
    if (v17)
    {
      v18 = sub_1000A9B88(v17, @"HotspotDataUsage");
      if (v18)
      {
        v19 = sub_1000A9B88(v18, @"FamilyHotspotPreferences");
        if (v19 == kCFCompareEqualTo)
        {
          v25 = sub_100029EAC();
          sub_10008933C(v25, v26);
          goto LABEL_27;
        }

        v20 = sub_1000A9B88(v19, @"Custom network settings");
        if (v20 == kCFCompareEqualTo)
        {
          v27 = sub_100029EAC();
          v21 = sub_100089454(v27, v28);
          goto LABEL_27;
        }

        if (sub_1000A9B88(v20, @"PerpetualWiFiScanEnabled") == kCFCompareEqualTo)
        {
          v29 = sub_100029EAC();
          sub_10008A384(v29, v30);
          goto LABEL_27;
        }

        v21 = sub_10007D6E8(v7, v10, v13);
        if (!v21)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = off_100298C40;
          if (off_100298C40)
          {
            v24 = "Unable to Set Property";
LABEL_22:
            [v23 WFLog:4 message:v24];
            goto LABEL_23;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v21 = sub_1001619E0(v7);
        if (!v21)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = off_100298C40;
          if (off_100298C40)
          {
            v24 = "Unable to Reset Hotspot Data Usage";
            goto LABEL_22;
          }

LABEL_23:
          objc_autoreleasePoolPop(v22);
        }
      }
    }

    else
    {
      sub_100029EAC();
      sub_10015F000();
    }

LABEL_27:
    v31 = sub_1000A9B88(v21, @"IsNewInstall");
    if (v31 == kCFCompareEqualTo)
    {
      sub_100157124(v7);
    }

    if (sub_1000A9B88(v31, @"SimulatedHardwareFailureStatus") == kCFCompareEqualTo)
    {
      v32 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Posting hardware failure status in _wifi_manager_set_property"];
      }

      objc_autoreleasePoolPop(v32);
      sub_100074BD4(v7);
    }

    CFRelease(v10);
    goto LABEL_34;
  }

LABEL_37:
  v33 = sub_100015EC4();
  sub_100017CC0(v33, v34);
  v35 = sub_100029DC0();
  sub_100017CC0(v35, v36);
  sub_10001091C();
}

void sub_10017F598()
{
  sub_10000D798();
  v3 = sub_100024F4C(v0, v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        v8 = sub_100020030(v7);
        if (v8)
        {
          v9 = v8;
          v10 = sub_10014AA18(v5, v8);
          if (v10)
          {
            v11 = v10;
            sub_1000A9B40(v10);
            CFRelease(v11);
          }

          CFRelease(v9);
        }
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v5);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  sub_1000084B8();
}

void sub_10017F670()
{
  sub_10000D798();
  v1 = v0;
  *v2 = 0;
  *v3 = 0;
  v4 = sub_10000FFF0();
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v8 = sub_100029A10(v6);
      if (v8)
      {
        v9 = v1 ? sub_10007ADAC(v8) : sub_100020110(v8);
        v10 = v9;
        if (v9)
        {
          v11 = sub_100035314(v9);
          if (v11)
          {
            v12 = v11;
            sub_1000A9B40(v11);
            CFRelease(v12);
          }

          CFRelease(v10);
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v6);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  sub_1000084B8();
}

uint64_t sub_10017F768()
{
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if ((sub_100010038(v2) & 1) == 0)
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v24 = sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:"kern_return_t _wifi_manager_add_network(mach_port_t message:{vm_offset_t, mach_msg_type_number_t)", v24}];
      }

      objc_autoreleasePoolPop(v4);
      goto LABEL_18;
    }

    if (!sub_100029A10(v3) || (v5 = sub_1000086AC(), (v7 = sub_10017F938(v5, v6)) == 0))
    {
LABEL_18:
      CFRelease(v3);
      goto LABEL_19;
    }

    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000A878(v8);
      v10 = sub_100010980();
      v25 = sub_10000715C(v10);
      [sub_10002D390() WFLog:v0 message:v25];
    }

    v26 = -1431655766;
    objc_autoreleasePoolPop(v9);
    if (sub_1000A8250(v8, &v26))
    {
      v11 = v26;
      v12 = sub_10001098C();
      sub_100159BD0(v12, v13, v11);
      if (v11 != 17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = sub_10000715C(v3);
      if (CFStringCompare(v14, @"profiled", 0))
      {
        v15 = sub_10000715C(v3);
        CFStringCompare(v15, @"mobilewifitool", 0);
        v16 = sub_10001098C();
        sub_100159BD0(v16, v17, v18);
LABEL_17:
        CFRelease(v8);
        goto LABEL_18;
      }

      v19 = sub_10001098C();
      sub_100159BD0(v19, v20, 0x11);
    }

    sub_10000AD34(v8, @"UpdateReason", @"ProfileAddition");
    sub_10001098C();
    sub_100164F6C();
    goto LABEL_17;
  }

LABEL_19:
  v21 = sub_100029DC0();
  sub_100017CC0(v21, v22);
  return 0;
}

_WORD *sub_10017F938(UInt8 *a1, CFIndex length)
{
  v2 = sub_100017AC4(a1, length);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFDictionaryGetTypeID())
  {
    v5 = sub_10000AD2C(kCFAllocatorDefault, v3);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

void sub_10017F9AC()
{
  sub_10000FC44();
  sub_1000075A4();
  v4 = sub_10000FFF0();
  v5 = sub_10002A0AC(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      v9 = sub_100029A10(v6);
      if (v9)
      {
        v10 = v9;
        v11 = sub_10017F938(v2, v3);
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          if (!v0 || !v1 || (v14 = sub_100029DC0(), v13 = sub_100017AC4(v14, v15), v16 = CFGetTypeID(v13), v16 == CFDictionaryGetTypeID()))
          {
            sub_100080058(v10, v6, v12, v13, 0, 0);
          }

          CFRelease(v12);
          if (v13)
          {
            CFRelease(v13);
          }
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = off_100298C40;
      if (off_100298C40)
      {
        sub_10000715C(v6);
        [v8 WFLog:4 message:"%s Client %@ has no entitlement"];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  v17 = sub_100015EC4();
  sub_100017CC0(v17, v18);
  v19 = sub_100029DC0();
  sub_100017CC0(v19, v20);
  sub_1000113F8();
}

void sub_10017FADC()
{
  sub_10000FC44();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      if (sub_100029A10(v3))
      {
        v5 = sub_1000214F4();
        if (sub_10017F938(v5, v6))
        {
          v7 = sub_10002D09C();
          sub_10000715C(v7);
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(v0);
            sub_1000A9BB8();
          }

          objc_autoreleasePoolPop(v8);
          if (sub_1000A9C98(v9, @"configd") == kCFCompareEqualTo)
          {
            v10 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:"%s: removing internal properties from network"];
            }

            objc_autoreleasePoolPop(v10);
            sub_1000A1FB4(v0);
          }

          v11 = sub_10000DAB4();
          sub_100081EDC(v11, v12, 1);
          CFRelease(v0);
        }
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v13 = sub_100029DC0();
  sub_100017CC0(v13, v14);
  sub_1000113F8();
}

void sub_10017FC3C()
{
  sub_10000FC44();
  v1 = v0;
  sub_10000842C();
  v2 = sub_10000FFF0();
  v3 = sub_10000D824(v2);
  if (v3)
  {
    v4 = v3;
    if (sub_100010038(v3))
    {
      if (sub_100029A10(v4))
      {
        v6 = sub_1000086AC();
        v8 = sub_10017F938(v6, v7);
        if (v8)
        {
          v9 = v8;
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(v9);
            sub_10000715C(v4);
            sub_1000A9BB8();
          }

          objc_autoreleasePoolPop(v10);
          v11 = sub_10001EDAC();
          sub_100081634(v11, v12, v1);
          CFRelease(v9);
        }
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v4);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v5);
    }

    CFRelease(v4);
  }

  v13 = sub_100029DC0();
  sub_100017CC0(v13, v14);
  sub_1000113F8();
}

void sub_10017FD5C()
{
  sub_1000086C4();
  sub_10000842C();
  v0 = sub_10000FFF0();
  v1 = sub_10000D824(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = sub_1000214F4();
        v6 = sub_10017F938(v4, v5);
        if (v6)
        {
          v7 = v6;
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(v7);
            v9 = sub_100010980();
            sub_10000715C(v9);
            [sub_10002D390() WFLog:? message:?];
          }

          objc_autoreleasePoolPop(v8);
          sub_10000DAB4();
          sub_10015D864();
          CFRelease(v7);
        }
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  v10 = sub_100029DC0();
  sub_100017CC0(v10, v11);
  sub_100010944();
}

void sub_10017FE70()
{
  sub_10000D798();
  sub_10000842C();
  v0 = sub_10000FFF0();
  v1 = sub_10000D824(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = sub_100029DC0();
        v6 = sub_100017AC4(v4, v5);
        if (v6)
        {
          v7 = v6;
          v8 = CFGetTypeID(v6);
          if (v8 == CFStringGetTypeID())
          {
            sub_10000DAB4();
            sub_10015D740();
          }

          CFRelease(v2);
          v2 = v7;
        }
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  v9 = sub_100029DC0();
  sub_100017CC0(v9, v10);
  sub_1000084B8();
}

void sub_10017FF5C()
{
  sub_10000FC44();
  v1 = v0;
  sub_10000842C();
  v2 = sub_10000FFF0();
  v3 = sub_10000D824(v2);
  if (v3)
  {
    v4 = v3;
    if (sub_100010038(v3))
    {
      v6 = sub_100029A10(v4);
      if (v6)
      {
        v7 = v6;
        v8 = sub_100029DC0();
        v10 = sub_100017AC4(v8, v9);
        if (v10)
        {
          v11 = v10;
          v12 = CFGetTypeID(v10);
          if (v12 == CFStringGetTypeID())
          {
            v13 = sub_10001EDAC();
            v15 = sub_1001590AC(v13, v14);
            if (v15)
            {
              v16 = v15;
              Count = CFArrayGetCount(v15);
              if (Count >= 1)
              {
                v18 = Count;
                for (i = 0; i != v18; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
                  if (ValueAtIndex)
                  {
                    sub_100082CC4(v7, ValueAtIndex, v1, 0);
                  }
                }
              }

              CFRelease(v16);
            }
          }

          CFRelease(v11);
        }
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v4);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v5);
    }

    CFRelease(v4);
  }

  v21 = sub_100029DC0();
  sub_100017CC0(v21, v22);
  sub_1000113F8();
}

uint64_t sub_10018009C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  sub_10000842C();
  v7 = sub_10000FFF0();
  v8 = sub_10000D824(v7);
  if (v8)
  {
    v9 = v8;
    if ((sub_100010038(v8) & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v24 = sub_10000715C(v9);
        [sub_1000A9AFC() WFLog:"kern_return_t _wifi_manager_set_network_state(mach_port_t message:{vm_offset_t, mach_msg_type_number_t, int, int)", v24}];
      }

      objc_autoreleasePoolPop(v10);
      goto LABEL_17;
    }

    v11 = sub_100029A10(v9);
    if (!v11 || (v12 = v11, v13 = sub_1000086AC(), (v15 = sub_10017F938(v13, v14)) == 0))
    {
LABEL_17:
      CFRelease(v9);
      goto LABEL_18;
    }

    v16 = v15;
    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (a4)
      {
        v18 = "ENABLED";
      }

      else
      {
        v18 = "DISABLED";
      }

      [off_100298C40 WFLog:4 message:{"Auto join %s by %@ for %@", v18, sub_10000715C(v9), v16}];
    }

    objc_autoreleasePoolPop(v17);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v23 = "ENABLED";
      }

      else
      {
        v23 = "DISABLED";
      }

      *buf = 136315650;
      v26 = v23;
      v27 = 2112;
      v28 = sub_10000715C(v9);
      v29 = 2112;
      v30 = v16;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Auto join %s by %@ for %@", buf, 0x20u);
      if (a4)
      {
        goto LABEL_16;
      }
    }

    else if (a4)
    {
LABEL_16:
      sub_100082CC4(v12, v16, a4, a5);
      CFRelease(v16);
      goto LABEL_17;
    }

    v19 = sub_10000715C(v9);
    sub_10000AD34(v16, @"networkDisabledClientName", v19);
    goto LABEL_16;
  }

LABEL_18:
  v20 = sub_100029DC0();
  sub_100017CC0(v20, v21);
  return 0;
}

void sub_1001802D8()
{
  sub_10000D798();
  v2 = v1;
  sub_10000842C();
  *v3 = 0;
  v4 = sub_10000FFF0();
  v5 = sub_10000D824(v4);
  if (v5)
  {
    v6 = v5;
    if (sub_100010038(v5))
    {
      if (sub_100029A10(v6))
      {
        v8 = sub_1000086AC();
        if (sub_10017F938(v8, v9))
        {
          v10 = sub_1000A9AEC();
          *v2 = sub_10015D8A8(v10);
          CFRelease(v0);
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v6);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v7);
    }

    CFRelease(v6);
  }

  v11 = sub_100029DC0();
  sub_100017CC0(v11, v12);
  sub_1000084B8();
}

void sub_1001803B4()
{
  sub_1000086C4();
  v0 = sub_1000A9BD0();
  v1 = sub_10000D824(v0);
  if (v1)
  {
    v2 = v1;
    if ((sub_100010038(v1) & 1) == 0)
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
      goto LABEL_12;
    }

    if (sub_100029A10(v2))
    {
      v4 = sub_100029DC0();
      v6 = sub_100017AC4(v4, v5);
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFStringGetTypeID())
        {
          v9 = sub_100035034();
          sub_10007D858(v9, v10, v11, v7);
          CFRelease(v7);
          goto LABEL_12;
        }

        CFRelease(v7);
      }

      v12 = sub_100035034();
      sub_10007D858(v12, v13, v14, 0);
    }

LABEL_12:
    CFRelease(v2);
  }

  v15 = sub_100029DC0();
  sub_100017CC0(v15, v16);
  sub_100010944();
}

void sub_1001804B4()
{
  sub_1000086C4();
  v0 = sub_1000A9BD0();
  v1 = sub_10000D824(v0);
  if (v1)
  {
    v2 = v1;
    if ((sub_100010038(v1) & 1) == 0)
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
      goto LABEL_12;
    }

    if (sub_100029A10(v2))
    {
      v4 = sub_100029DC0();
      v6 = sub_100017AC4(v4, v5);
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFDictionaryGetTypeID())
        {
          v9 = sub_100035034();
          sub_10007D744(v9, v10, v11, v7);
          CFRelease(v7);
          goto LABEL_12;
        }

        CFRelease(v7);
      }

      v12 = sub_100035034();
      sub_10007D744(v12, v13, v14, 0);
    }

LABEL_12:
    CFRelease(v2);
  }

  v15 = sub_100029DC0();
  sub_100017CC0(v15, v16);
  sub_100010944();
}

uint64_t sub_1001805B4()
{
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (!v5)
      {
LABEL_17:
        CFRelease(v3);
        return 0;
      }

      v6 = v5;
      if (v0)
      {
        v7 = sub_100021DA8();
        sub_10002AFE0(v7, v8);
        if (_os_feature_enabled_impl())
        {
          sub_1000197A4(v6, 15);
        }

        else
        {
          sub_10007A1F4(v6, 2);
        }
      }

      else
      {
        v9 = sub_100021DA8();
        sub_10007D65C(v9, v10);
      }

      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (v0)
        {
          v11 = "ENABLED";
        }

        else
        {
          v11 = "DISABLED";
        }

        v14 = sub_10000715C(v3);
        [sub_10000FC2C() WFLog:v11 message:v14];
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v13 = sub_10000715C(v3);
        [sub_100008C8C() WFLog:"kern_return_t _wifi_manager_set_enable_state(mach_port_t message:{int)", v13}];
      }
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_17;
  }

  return 0;
}

void sub_1001806F0()
{
  sub_10000D798();
  v0 = sub_10001095C();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v2);
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v4);
        v5 = sub_100029EE8();
        sub_10007AF64(v5, v6, v7);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  sub_1000084B8();
}

uint64_t sub_1001807D8()
{
  sub_100008C40();
  v3 = sub_1000A9CC8(v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v0 = sub_10007B144(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_association_mode(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_100180888()
{
  sub_10000D798();
  v0 = sub_10001095C();
  v1 = sub_10001D1E8(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      if (sub_100029A10(v2))
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v2);
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v4);
        v5 = sub_100029EE8();
        sub_10007B14C(v5, v6, v7);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  sub_1000084B8();
}

uint64_t sub_100180974()
{
  sub_100008C40();
  v3 = sub_1000A9CC8(v1, v2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v0 = sub_10007B294(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_asktojoin_preference(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t sub_100180A24()
{
  sub_100008C40();
  v1 = sub_10000FFF0();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      sub_10005A2C4(v3, v0);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v6 = sub_10000715C(v3);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_set_event_mask(mach_port_t message:{uint64_t)", v6}];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  return 0;
}

void sub_100180ACC()
{
  sub_10000D798();
  sub_10000842C();
  v0 = sub_10000FFF0();
  v1 = sub_10000D824(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_100010038(v1))
    {
      v4 = sub_100029A10(v2);
      if (v4)
      {
        v5 = v4;
        v6 = sub_100029DC0();
        v8 = sub_100017AC4(v6, v7);
        if (v8)
        {
          v9 = v8;
          v10 = CFGetTypeID(v8);
          if (v10 == CFArrayGetTypeID() && (v11 = sub_10005894C(v9)) != 0)
          {
            v12 = v11;
            sub_1001595CC(v5);
            CFRelease(v9);
            v13 = v12;
          }

          else
          {
            v13 = v9;
          }

          CFRelease(v13);
        }
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v2);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
    }

    CFRelease(v2);
  }

  v14 = sub_100029DC0();
  sub_100017CC0(v14, v15);
  sub_1000084B8();
}

uint64_t sub_100180BD8(uint64_t a1, _DWORD *a2)
{
  v3 = sub_10001134C(a1, a2);
  v4 = sub_10001D1E8(v3);
  if (v4)
  {
    v5 = v4;
    if (sub_100010038(v4))
    {
      v7 = sub_100029A10(v5);
      if (v7)
      {
        *v2 = sub_10007C6B8(v7);
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = sub_10000715C(v5);
        [sub_100011424() WFLog:"kern_return_t _wifi_manager_get_bgscancache_state(mach_port_t message:{int *)", v9}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

void sub_100180C84()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100029A10(v2))
    {
      v4 = sub_100010938();
      if (sub_100010038(v4))
      {
        v6 = sub_100029DC0();
        if (sub_100017AC4(v6, v7))
        {
          v8 = sub_1000A9ADC();
          sub_10015E428(v8);
          CFRelease(v0);
        }
      }

      else
      {
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v3);
          [sub_1000A9AFC() WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    CFRelease(v3);
  }

  v9 = sub_100029DC0();
  sub_100017CC0(v9, v10);
  sub_1000084B8();
}

void sub_100180D50()
{
  sub_10000D798();
  v1 = sub_10001095C();
  v2 = sub_10001D1E8(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029A10(v3);
      if (v5)
      {
        v6 = v5;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v3);
          sub_1000A9B58();
        }

        objc_autoreleasePoolPop(v7);
        sub_10015E470(v6, v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_100011424() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  sub_1000084B8();
}

void sub_100180E54()
{
  sub_10000D798();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100029A10(v2))
    {
      v4 = sub_100010938();
      if (sub_100010038(v4))
      {
        v6 = sub_100029DC0();
        if (sub_100017AC4(v6, v7))
        {
          v8 = sub_1000A9ADC();
          sub_100084310(v8, v9);
          CFRelease(v0);
        }
      }

      else
      {
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000715C(v3);
          [sub_1000A9AFC() WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    CFRelease(v3);
  }

  v10 = sub_100029DC0();
  sub_100017CC0(v10, v11);
  sub_1000084B8();
}

uint64_t sub_100180F20(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = sub_100024F4C(a1, a2, a3);
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if ((sub_100010038(v5) & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_manager_copy_version_info(mach_port_t, vm_offset_t *, mach_msg_type_number_t *)", sub_10000715C(v6)}];
      }

LABEL_10:
      objc_autoreleasePoolPop(v7);
      goto LABEL_11;
    }

    if (sub_100029A10(v6))
    {
      v8 = sub_100083C6C();
      if (!v8)
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Unable to copy client names", v10, v11}];
        }

        goto LABEL_10;
      }

      sub_10000393C(v8);
      CFRelease(v3);
    }

LABEL_11:
    CFRelease(v6);
  }

  return 0;
}

uint64_t sub_100181000(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = sub_100024F4C(a1, a2, a3);
  v5 = sub_10001D1E8(v4);
  if (v5)
  {
    v6 = v5;
    if ((sub_100010038(v5) & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_manager_copy_client_names(mach_port_t, vm_offset_t *, mach_msg_type_number_t *)", sub_10000715C(v6)}];
      }

LABEL_10:
      objc_autoreleasePoolPop(v7);
      goto LABEL_11;
    }

    v8 = sub_100029A10(v6);
    if (v8)
    {
      v9 = sub_10015E360(v8);
      if (!v9)
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Unable to copy client names", v11, v12}];
        }

        goto LABEL_10;
      }

      sub_10000393C(v9);
      CFRelease(v3);
    }

LABEL_11:
    CFRelease(v6);
  }

  return 0;
}

void sub_100181278()
{
  sub_1000086C4();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029DC0();
      if (sub_100017AC4(v5, v6))
      {
        v7 = sub_100010938();
        if (sub_100010040(v7, v0))
        {
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000715C(v3);
            [sub_10002D390() WFLog:? message:?];
          }

          objc_autoreleasePoolPop(v8);
          v9 = sub_10001098C();
          sub_1000B9DC8(v9, v10, 1001, v11, 2987);
        }

        CFRelease(v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v12 = sub_100029DC0();
  sub_100017CC0(v12, v13);
  sub_100010944();
}

void sub_100181398()
{
  sub_1000086C4();
  sub_10000842C();
  v1 = sub_10000FFF0();
  v2 = sub_10000D824(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_100010038(v2))
    {
      v5 = sub_100029DC0();
      if (sub_100017AC4(v5, v6))
      {
        v7 = sub_10002D09C();
        if (sub_100010040(v7, v0))
        {
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000715C(v3);
            sub_1000A9BB8();
          }

          objc_autoreleasePoolPop(v8);
          v9 = sub_10009502C();
          sub_1000B9DC8(v9, v10, v11, v12, 3033);
        }

        CFRelease(v0);
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v3);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
    }

    CFRelease(v3);
  }

  v13 = sub_100029DC0();
  sub_100017CC0(v13, v14);
  sub_100010944();
}

void sub_1001814D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000FDC0();
  a26 = v27;
  a27 = v28;
  sub_10000DB74();
  *v29 = 0;
  v30 = sub_10000FFF0();
  v31 = sub_10001D1E8(v30);
  if (v31)
  {
    v32 = v31;
    if (sub_100010038(v31))
    {
      v34 = sub_100015EC4();
      v36 = sub_100017AC4(v34, v35);
      v37 = sub_1000A9BF4();
      v39 = sub_100017AC4(v37, v38);
      v40 = v39;
      if (v36 && v39)
      {
        v41 = sub_100010040(v32, v36);
        if (v41 && (v42 = v41, (v43 = sub_10000AD2C(kCFAllocatorDefault, v40)) != 0))
        {
          v44 = v43;
          v45 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000715C(v32);
            [sub_1000A9C38() WFLog:? message:?];
          }

          objc_autoreleasePoolPop(v45);
          v46 = sub_10002CF28(v32);
          if ((v46 & 2) != 0)
          {
            v49 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"Already associating, will not queue request. "}];
            }

            objc_autoreleasePoolPop(v49);
            sub_100059968(v32, v42, v36, v44, 0, 37);
          }

          else
          {
            v47 = v46;
            sub_10002D0CC(v32, v46 | 2);
            sub_1000BCD2C(v42);
            sub_1000BCCD4(v42);
            a15 = -1431655766;
            if (sub_1000A8250(v44, &a15) && a15 == 30)
            {
              v48 = 1035;
            }

            else
            {
              v48 = 1008;
            }

            v71 = v48;
            if (sub_10000715C(v32))
            {
              v50 = sub_10000715C(v32);
              if (CFEqual(v50, @"mobilewifitool"))
              {
                v51 = 1;
              }

              else
              {
                v52 = sub_10000715C(v32);
                v51 = CFEqual(v52, @"Setup") != 0;
              }
            }

            else
            {
              v51 = 0;
            }

            v53 = _os_feature_enabled_impl();
            if (v71 == 1008 && v53 && v51 && sub_10014B788(v32, @"com.apple.wifi.manager-assoc-find-and-join-network"))
            {
              v54 = sub_1000A9C18();
              v59 = sub_1000CD404(v54, v55, v56, v57, v58, v32);
            }

            else
            {
              sub_10000715C(v32);
              v60 = sub_1000A9C18();
              v59 = sub_1000C9DD4(v60, v61, v62, v63, v64, v65, v32, v71);
            }

            if (v59)
            {
              v66 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:"Error returned by Associate Async %d"];
              }

              objc_autoreleasePoolPop(v66);
              sub_10002D0CC(v32, v47);
            }

            else
            {
              CFRetain(v32);
            }
          }

          CFRelease(v36);
        }

        else
        {
          v44 = v36;
        }

        CFRelease(v44);
      }

      else
      {
        if (v36)
        {
          CFRelease(v36);
        }

        if (!v40)
        {
          goto LABEL_39;
        }
      }

      CFRelease(v40);
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v32);
        [sub_1000A9B34() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v33);
      sub_100024B98();
    }

LABEL_39:
    CFRelease(v32);
  }

  v67 = sub_100015EC4();
  sub_100017CC0(v67, v68);
  v69 = sub_1000A9BF4();
  sub_100017CC0(v69, v70);
  sub_100008690();
}

void sub_10018183C()
{
  sub_100011520();
  v1 = v0;
  v3 = v2;
  sub_10000842C();
  *v4 = 0;
  v5 = sub_10000FFF0();
  v6 = sub_10000D824(v5);
  if (v6)
  {
    v7 = v6;
    if (sub_100010038(v6))
    {
      v9 = sub_100029DC0();
      if (sub_100017AC4(v9, v10))
      {
        v11 = sub_10002D09C();
        if (sub_100010040(v11, v1))
        {
          v12 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000715C(v7);
            sub_1000A9BB8();
          }

          objc_autoreleasePoolPop(v12);
          v13 = sub_10009502C();
          if (sub_10018B148(v13, v14, v3))
          {
            v15 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:"Unable to set power state(%d) to %d. deviceManager=%p"];
            }

            objc_autoreleasePoolPop(v15);
          }
        }

        CFRelease(v1);
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v7);
        sub_1000A9BA0();
      }

      objc_autoreleasePoolPop(v8);
      *v1 = 1;
    }

    CFRelease(v7);
  }

  v16 = sub_100029DC0();
  sub_100017CC0(v16, v17);
  sub_10001091C();
}

uint64_t sub_1001819AC(uint64_t a1, UInt8 *a2, unsigned int a3, uint64_t a4, uint64_t a5, UInt8 *a6, unsigned int a7, _DWORD *a8)
{
  *a8 = -3900;
  v13 = sub_10000FFF0();
  v14 = sub_10001D1E8(v13);
  if (v14)
  {
    v15 = v14;
    if ((sub_100010038(v14) & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v37 = sub_10000715C(v15);
        [sub_100008C8C() WFLog:"kern_return_t _wifi_device_gas_start_async(mach_port_t message:{vm_offset_t, mach_msg_type_number_t, vm_offset_t, mach_msg_type_number_t, vm_offset_t, mach_msg_type_number_t, int *)", v37}];
      }

      objc_autoreleasePoolPop(v16);
LABEL_31:
      CFRelease(v15);
      goto LABEL_32;
    }

    v41 = a3;
    v17 = sub_100017AC4(a2, a3);
    v18 = sub_100017AC4(a6, a7);
    v19 = sub_10001E7D8();
    v21 = sub_100017AC4(v19, v20);
    cf = v18;
    v40 = v21;
    if (v17 && v18 && (v22 = v21) != 0)
    {
      v38 = a2;
      v23 = sub_100010040(v15, v17);
      if (v23)
      {
        v24 = v23;
        v25 = sub_10005894C(v22);
        if (v25)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v18);
          v27 = MutableCopy;
          if (MutableCopy)
          {
            CFDictionaryAddValue(MutableCopy, @"GAS_NETWORKS", v25);
            v28 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_10000715C(v15);
              sub_1000A9B70();
            }

            objc_autoreleasePoolPop(v28);
            *a8 = 0;
            v29 = sub_10002CF28(v15);
            if ((v29 & 4) != 0)
            {
              v32 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"Already GAS querying, will not queue request. "}];
              }

              objc_autoreleasePoolPop(v32);
              sub_100059B54(v15, v24, v17, 0, 37);
            }

            else
            {
              v30 = v29;
              sub_10002D0CC(v15, v29 | 4);
              v31 = sub_1000CEF6C(v24, v17, v27, sub_1000A9724, v15);
              *a8 = v31;
              if (v31)
              {
                sub_10002D0CC(v15, v30);
              }

              else
              {
                CFRetain(v15);
              }
            }
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: unable to find device manager for interface %@", "_wifi_device_gas_start_async", v17}];
        }

        objc_autoreleasePoolPop(v36);
        v27 = 0;
        v25 = 0;
      }

      a2 = v38;
    }

    else
    {
      v27 = 0;
      v25 = 0;
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    CFRelease(v17);
LABEL_23:
    if (cf)
    {
      CFRelease(cf);
    }

    a3 = v41;
    if (v27)
    {
      CFRelease(v27);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    goto LABEL_31;
  }

LABEL_32:
  sub_100017CC0(a2, a3);
  sub_100017CC0(a6, a7);
  v33 = sub_10001E7D8();
  sub_100017CC0(v33, v34);
  return 0;
}

void sub_100181EE4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, UInt8 *bytes, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100011520();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10000DB74();
  *v32 = 0;
  v33 = sub_10000FFF0();
  v34 = sub_10001D1E8(v33);
  if (v34)
  {
    v35 = v34;
    if ((sub_100010038(v34) & 1) == 0)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = off_100298C40;
      if (off_100298C40)
      {
        sub_10000715C(v35);
        [v37 WFLog:4 message:"%s Client %@ has no entitlement"];
      }

      objc_autoreleasePoolPop(v36);
      sub_100024B98();
      goto LABEL_22;
    }

    v38 = sub_100015EC4();
    v40 = sub_100017AC4(v38, v39);
    if (!v40)
    {
LABEL_22:
      CFRelease(v35);
      goto LABEL_23;
    }

    v41 = v40;
    bytesa = v29;
    v42 = sub_100010040(v35, v40);
    if (v42)
    {
      v43 = v42;
      if (!v31)
      {
        MutableCopy = 0;
        v45 = 0;
        goto LABEL_13;
      }

      v44 = sub_100017AC4(v29, v27);
      if (v44)
      {
        v45 = v44;
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v44);
        if (!MutableCopy)
        {
LABEL_20:
          CFRelease(v45);
          goto LABEL_21;
        }

LABEL_13:
        v47 = sub_1000CF24C(v43, v41, v31, MutableCopy);
        *v25 = v47;
        if (v47)
        {
          v48 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v51 = *v25;
            [off_100298C40 WFLog:4 message:"Unable to set ranging identifier(%d). deviceManager=%p"];
          }

          objc_autoreleasePoolPop(v48);
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (!v45)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

LABEL_21:
    CFRelease(v41);
    v29 = bytesa;
    goto LABEL_22;
  }

LABEL_23:
  v49 = sub_100015EC4();
  sub_100017CC0(v49, v50);
  sub_100017CC0(v29, v27);
  sub_10001091C();
}