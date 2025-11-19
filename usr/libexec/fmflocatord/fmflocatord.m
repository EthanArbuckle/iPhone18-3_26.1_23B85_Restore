uint64_t sub_100002198()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_10002CD64;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_100002330;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_100002330()
{
  v1 = v0[22];

  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_100002394, v2, v3);
}

uint64_t sub_100002394()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[11];
    v8 = v0[7];
    v7 = v0[8];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[4];
    v12 = (*(v3 + 32))(v0[11], v1, v2);
    v13 = (*((swift_isaMask & *v11) + 0x60))(v12);
    if (v13)
    {
      v14 = v13;
      v15 = v0[11];
      updated = Fence.UpdateStream.Snapshot.fences.getter();
      v17 = *(updated + 16);
      if (v17)
      {
        v34 = v14;
        v18 = v0[6];
        v0[3] = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        type metadata accessor for FMLFence();
        v19 = updated + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        v21 = *(v18 + 16);
        do
        {
          v22 = v0[7];
          v23 = v0[8];
          v25 = v0[5];
          v24 = v0[6];
          v21(v23, v19, v25);
          v21(v22, v23, v25);
          sub_100031F54(v22);
          (*(v24 + 8))(v23, v25);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v26 = *(v0[3] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v19 += v20;
          --v17;
        }

        while (v17);

        v14 = v34;
        v34(v0[3]);
      }

      else
      {

        v14(&_swiftEmptyArrayStorage);
      }

      sub_1000028D4(v14);
    }

    (*(v0[10] + 8))(v0[11], v0[9]);
    v27 = v0[16];
    v0[22] = static MainActor.shared.getter();
    v28 = sub_1000028E4(&qword_10006FE80, &type metadata accessor for Fence.UpdateStream.AsyncIterator);
    v29 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v30 = swift_task_alloc();
    v0[23] = v30;
    *v30 = v0;
    v30[1] = sub_100002198;
    v31 = v0[15];
    v32 = v0[12];
    v33 = v0[13];

    return dispatch thunk of AsyncIteratorProtocol.next()(v32, v33, v28);
  }
}

uint64_t sub_10000272C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000273C()
{
  v1 = (v0 + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_fencesUpdateCallback);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_10000272C(v3);
  return v3;
}

void sub_1000027BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMLFence();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_100002830()
{
  if (qword_100070260 != -1)
  {
    sub_100038170();
  }

  v1 = qword_100070268;

  return v1;
}

uint64_t sub_1000028D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000028E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000292C()
{
  byte_1000700E9 = 0;
  if (qword_1000700F0)
  {
    CFRunLoopTimerInvalidate(qword_1000700F0);
    CFRelease(qword_1000700F0);
    qword_1000700F0 = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  qword_1000700F0 = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + 5.0, 0.0, 0, 0, sub_100005B9C, 0);
  v1 = CFRunLoopGetCurrent();
  v2 = qword_1000700F0;

  CFRunLoopAddTimer(v1, v2, kCFRunLoopDefaultMode);
}

uint64_t sub_1000029D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002A14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002A50()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002A94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002ACC()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100004330(id a1)
{
  qword_1000700D0 = objc_alloc_init(FMFLocatorDaemon);

  _objc_release_x1();
}

NSDictionary *__cdecl sub_100004418(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v18[0] = @"com.apple.icloud.fmflocatord";
  v18[1] = @"com.apple.icloud.fmflocatord.notbackedup";
  [NSArray arrayWithObjects:v18 count:2];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = CFPreferencesCopyMultiple(0, v7, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        v15 = v7;
        v16 = v8;
        v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1, v11];
        [v1 addEntriesFromDictionary:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  return v1;
}

void sub_100004B1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) apsHandlerForEnvironment:v3];
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checked in APS mach handlder %@:%@", &v6, 0x16u);
  }
}

void sub_100004F60(id a1)
{
  v1 = +[SystemConfig sharedInstance];
  [v1 updateLocationServicesStatus];
}

void sub_100004FA8(id a1)
{
  v1 = +[SystemConfig sharedInstance];
  [v1 updateShareMyLocationSystemServiceStatus];
}

void sub_100004FF0(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FMFRestrictionsMayHaveChangedNotification" object:0];
}

void sub_100005048(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"DeviceNameMayHaveChangedNotification" object:0];
}

void sub_1000050A0(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"DeviceLocaleMayHaveChangedNotification" object:0];
}

void sub_1000050F8(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"purplebuddy.setupdone" object:0];
}

void sub_100005150(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"nano.devicedidpair" object:0];
}

void sub_1000051A8(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"nano.devicedidunpair" object:0];
}

void sub_1000052D0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMFAppStateObserver: Detected app state event: register.", v7, 2u);
  }

  v4 = [CommonUtil userInfoFrom:v2];

  v5 = [NSNotification notificationWithName:off_10006FA80 object:0 userInfo:v4];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotification:v5];
}

void sub_1000053B4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMFAppStateObserver: Detected app state event: unregister.", v7, 2u);
  }

  v4 = [CommonUtil userInfoFrom:v2];

  v5 = [NSNotification notificationWithName:off_10006FA80 object:0 userInfo:v4];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotification:v5];
}

void sub_1000058F8()
{
  if (!qword_1000700E0)
  {
    memset(&v34, 0, sizeof(v34));
    qword_1000700E0 = SCDynamicStoreCreate(0, @"com.apple.icloud.fmflocatord", sub_10000292C, &v34);
    if (qword_1000700E0)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v1 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
      CFArrayAppendValue(Mutable, NetworkGlobalEntity);
      CFRelease(NetworkGlobalEntity);
      v3 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv6);
      CFArrayAppendValue(Mutable, v3);
      CFRelease(v3);
      NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
      CFArrayAppendValue(v1, NetworkInterfaceEntity);
      CFRelease(NetworkInterfaceEntity);
      v5 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6);
      CFArrayAppendValue(v1, v5);
      CFRelease(v5);
      v6 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetDNS);
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v6);
      RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, qword_1000700E0, 0);
      if (RunLoopSource)
      {
        v8 = RunLoopSource;
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, v8, kCFRunLoopDefaultMode);
        if (!SCDynamicStoreSetNotificationKeys(qword_1000700E0, Mutable, v1))
        {
          v10 = sub_100002830();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            sub_100036708(v10, v11, v12, v13, v14, v15, v16, v17);
          }
        }

        CFRelease(v8);
      }

      else
      {
        v26 = sub_100002830();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_100036740(v26, v27, v28, v29, v30, v31, v32, v33);
        }
      }

      CFRelease(Mutable);
      CFRelease(v1);
      byte_1000700E8 = sub_100005CB0();
    }

    else
    {
      v18 = sub_100002830();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100036778(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }
  }
}

void sub_100005B9C(uint64_t a1)
{
  if (qword_1000700F0 == a1)
  {
    byte_1000700E8 = sub_100005CB0();
    CFRelease(qword_1000700F0);
    qword_1000700F0 = 0;
  }

  valuePtr = byte_1000700E8;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v1)
  {
    v2 = v1;
    values = v1;
    keys = @"IsNetworkAvailable";
    v3 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v3)
    {
      v4 = v3;
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(LocalCenter, @"com.apple.icloud.fmflocatord.networkChanged", 0, v4, 0);
      CFRelease(v4);
    }

    CFRelease(v2);
  }
}

uint64_t sub_100005CB0()
{
  v0 = 0;
  v1 = &unk_100070000;
  if ((byte_1000700E9 & 1) == 0 && qword_1000700E0)
  {
    NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
    if (!NetworkInterface)
    {
      goto LABEL_21;
    }

    v3 = NetworkInterface;
    v4 = SCDynamicStoreCopyValue(qword_1000700E0, NetworkInterface);
    if (!v4)
    {
      v0 = 0;
LABEL_24:
      CFRelease(v3);
      goto LABEL_25;
    }

    v5 = v4;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v5))
    {
      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(v5, kSCDynamicStorePropNetInterfaces);
    if (!Value)
    {
      goto LABEL_10;
    }

    v8 = CFArrayGetTypeID();
    if (v8 == CFGetTypeID(Value))
    {
      Value = CFArrayCreateCopy(0, Value);
    }

    else
    {
LABEL_9:
      Value = 0;
    }

LABEL_10:
    CFRelease(v5);
    CFRelease(v3);
    if (Value)
    {
      Count = CFArrayGetCount(Value);
      if (Count < 1)
      {
        v0 = 0;
        v3 = Value;
      }

      else
      {
        v10 = Count;
        v0 = 0;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
          if (ValueAtIndex)
          {
            v13 = ValueAtIndex;
            if (CFStringFind(ValueAtIndex, @"lo", 8uLL).location == -1)
            {
              NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v13, kSCEntNetIPv4);
              v15 = SCDynamicStoreCopyKeyList(qword_1000700E0, NetworkInterfaceEntity);
              if (v15)
              {
                v16 = v15;
                v0 |= CFArrayGetCount(v15) > 0;
                CFRelease(v16);
              }

              if (NetworkInterfaceEntity)
              {
                CFRelease(NetworkInterfaceEntity);
              }
            }
          }
        }

        v3 = Value;
        v1 = &unk_100070000;
      }

      goto LABEL_24;
    }

LABEL_21:
    v0 = 0;
LABEL_25:
    v1[233] = 1;
  }

  return v0 & 1;
}

void sub_100005EA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100006140(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v6 = [v3 objectForKeyedSubscript:@"account"];

  v4 = [*(a1 + 32) account];

  v5 = v6;
  if (v6 == v4)
  {
    [*(a1 + 32) accountDeactivated];
    v5 = v6;
  }
}

void sub_1000061D0(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v6 = [v3 objectForKeyedSubscript:@"account"];

  v4 = [*(a1 + 32) account];

  v5 = v6;
  if (v6 == v4)
  {
    [*(a1 + 32) accountDidChange];
    v5 = v6;
  }
}

void sub_100006570(uint64_t a1)
{
  v2 = [*(a1 + 32) locManager];
  [*(a1 + 32) setLocManager:0];
  [v2 setDelegate:0];
  [v2 stopUpdatingLocation];
}

id sub_100006B80(uint64_t a1)
{
  v2 = [*(a1 + 32) locManager];
  [v2 setDelegate:0];

  v3 = [*(a1 + 32) locManager];
  [v3 stopUpdatingLocation];

  v4 = *(a1 + 32);

  return [v4 setLocManager:0];
}

void sub_100007D84(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100007EC4(id a1)
{
  v1 = sub_100002830();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100036A04(v1);
  }

  v2 = [[ServiceProviderMgr alloc] initSingleton];
  v3 = qword_1000700F8;
  qword_1000700F8 = v2;
}

void sub_1000082AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accountTypeToServiceProviderType];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 objectForKeyedSubscript:v6];

  v8 = objc_alloc_init(v7);
  v9 = v8;
  if (v8)
  {
    [v8 setAccount:v3];
    v10 = [*(a1 + 32) accountUUIDToServiceProvider];
    v11 = [v3 uuid];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  else
  {
    v10 = sub_100002830();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100036A8C();
    }
  }
}

void sub_100008730(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuid];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v3 uuid];
    [v7 removeObjectForKey:v8];
  }

  else
  {
    v9 = [*(a1 + 40) accountTypeToServiceProviderType];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 objectForKeyedSubscript:v11];

    v13 = objc_alloc_init(v12);
    if (v13)
    {
      v6 = v13;
      [v13 setAccount:v3];
      v14 = [*(a1 + 40) accountUUIDToServiceProvider];
      v15 = [v3 uuid];
      [v14 setObject:v6 forKeyedSubscript:v15];

      v16 = sub_100002830();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v6 fm_logID];
        v18 = 138412290;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Created new service provider : %@", &v18, 0xCu);
      }

      [v6 start];
    }

    else
    {
      v6 = sub_100002830();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100036A8C();
      }
    }
  }
}

void sub_100008930(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v5 stop];
  v7 = sub_100002830();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 fm_logID];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removing service provider : %@", &v10, 0xCu);
  }

  v9 = [*(a1 + 32) accountUUIDToServiceProvider];
  [v9 removeObjectForKey:v6];
}

id sub_100008B3C(id a1)
{

  return a1;
}

void sub_100008B60(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1000096A4(id a1, BOOL a2)
{
  if (a2)
  {
    v2 = +[StartupRegisterManager sharedInstance];
    [v2 eventDidOccur:10];
  }
}

void sub_10000A424(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(v1);
  if (v1)
  {
    v2 = [v1 apsToken];

    if (!v2)
    {
      v3 = sub_100002830();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [v1 serviceName];
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ is not functional as an APS token is not available.", &v5, 0xCu);
      }
    }
  }

  objc_sync_exit(v1);
}

void sub_10000B928(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200)
  {
  }

  else if ([v3 httpResponseStatus] <= 399)
  {
    v5 = sub_100002830();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v6 = [*(a1 + 32) serviceName];
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = [v3 httpResponseStatus];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: Fence trigger was sent successfully with status %ld", &v9, 0x16u);
    goto LABEL_6;
  }

  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) serviceName];
    v7 = [v3 httpResponseStatus];
    v8 = [v3 httpResponseError];
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error %ld sending fence trigger: %@", &v9, 0x20u);

LABEL_6:
  }

LABEL_7:
}

void sub_10000BC90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200)
  {

    goto LABEL_4;
  }

  if ([v3 httpResponseStatus] > 399)
  {
LABEL_4:
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) serviceName];
      v7 = [v3 httpResponseStatus];
      v8 = [v3 httpResponseError];
      v14 = 138412802;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error %ld sending ack for fences command: %@", &v14, 0x20u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_8:
      v10();
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v11 = sub_100002830();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 32) serviceName];
    v14 = 138412546;
    v15 = v12;
    v16 = 2048;
    v17 = [v3 httpResponseStatus];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@: Fences command was acked successfully with status %ld", &v14, 0x16u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v10 = *(v13 + 16);
    goto LABEL_8;
  }

LABEL_9:
}

void sub_10000C0E4(uint64_t a1)
{
  v2 = +[SystemConfig sharedInstance];
  v3 = [v2 isBuddyDone];

  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(a1 + 32) name:@"purplebuddy.setupdone" object:0];

    v5 = [*(a1 + 32) buddyWaitTimer];

    if (v5)
    {
      v6 = [*(a1 + 32) buddyWaitTimer];
      [v6 invalidate];

      [*(a1 + 32) setBuddyWaitTimer:0];
    }

    [*(a1 + 32) setWaitingForBuddy:0];
    v7 = +[AccountManager sharedInstance];
    v8 = [v7 activeAccountsOfType:objc_opt_class()];

    v9 = +[FMXPCTransactionManager sharedInstance];
    [v9 endTransaction:@"FMFWaitingForBuddy"];

    v10 = *(a1 + 32);

    [v10 performInitialSetup];
  }

  else
  {
    if (([*(a1 + 32) waitingForBuddy] & 1) == 0)
    {
      [*(a1 + 32) setWaitingForBuddy:1];
      v11 = +[FMXPCTransactionManager sharedInstance];
      [v11 beginTransaction:@"FMFWaitingForBuddy"];

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 addObserver:*(a1 + 32) selector:"buddyDidComplete:" name:@"purplebuddy.setupdone" object:0];
    }

    v13 = [*(a1 + 32) buddyWaitTimer];
    [v13 invalidate];

    v14 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_buddyCompletionCheckTimerFired:" selector:0 userInfo:0 repeats:10.0];
    [*(a1 + 32) setBuddyWaitTimer:v14];

    v15 = sub_100002830();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "FMF is not active yet since buddy is yet to complete.", v16, 2u);
    }
  }
}

void sub_10000C3CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request %@ to send paired device data", &v14, 0xCu);
  }

  v7 = objc_alloc_init(FMFIDSSupportProtoDeviceInformation);
  v8 = +[SystemConfig sharedInstance];
  v9 = [v8 deviceUDID];
  [(FMFIDSSupportProtoDeviceInformation *)v7 setUdid:v9];

  v10 = [IDSProtobuf alloc];
  v11 = [(FMFIDSSupportProtoDeviceInformation *)v7 data];
  v12 = [v10 initWithProtobufData:v11 type:1 isResponse:1];

  v13 = [*(a1 + 32) idsManager];
  [v13 sendMessageWithProtobuf:v12 inResponseToRequest:v5 withPriority:0 timeout:1 bypassingDuet:0 requestAcceptedHandler:0 responseHandler:0.0];
}

void sub_10000CB2C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002830();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100036E34(v5, v7);
    }

LABEL_4:

    goto LABEL_5;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if ((a2 & 1) == 0)
  {
    if (v8)
    {
      v9 = 136315138;
      v10 = "[FMFServiceProvider fenceTriggered:atLocation:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: NOT triggering as this device is NOT used to share location", &v9, 0xCu);
    }

    goto LABEL_4;
  }

  if (v8)
  {
    v9 = 136315138;
    v10 = "[FMFServiceProvider fenceTriggered:atLocation:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: triggering as it a valid device that is used to share location", &v9, 0xCu);
  }

  [*(a1 + 32) sendTriggeredFence:*(a1 + 40) withTriggerLocation:*(a1 + 48)];
LABEL_5:
}

void sub_10000EFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000EFDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000EFF4(uint64_t a1)
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) fm_logID];
    v4 = v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    *buf = 138412802;
    if (v6)
    {
      v7 = @"yes";
    }

    else
    {
      v7 = @"no";
    }

    v17 = v3;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ - registerDeviceWithCause %@ %@", buf, 0x20u);
  }

  if (*(a1 + 64) == 1)
  {
    v8 = sub_100002830();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 32) fm_logID];
      v10 = *(a1 + 40);
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ Register for cause %@ is being forced", buf, 0x16u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = [NSString stringWithFormat:@"Forced-%@", *(a1 + 40)];
    }

    else
    {
      v12 = @"Forced";
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v12);
    if (v11)
    {
    }

    v13 = [*(a1 + 32) lastForcedRegisterTimePrefKey];
    v14 = +[NSDate date];
    [FMPreferencesUtil setDate:v14 forKey:v13 inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  }

  return [*(a1 + 32) _registerDeviceWithCause:*(*(*(a1 + 48) + 8) + 40) includeKeys:*(a1 + 56)];
}

void sub_10000F8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F91C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = qword_100070128;
  if (qword_100070128 == *(a1 + 32))
  {
    qword_100070128 = 0;
  }

  v6 = [v3 httpResponseError];
  if (v6 || [v3 httpResponseStatus] < 200)
  {

LABEL_6:
    v7 = sub_100002830();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [WeakRetained serviceName];
      v9 = [v3 httpResponseStatus];
      v10 = [v3 httpResponseError];
      *buf = 138412802;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Error %ld during register device: %@", buf, 0x20u);
    }

    [WeakRetained registerDidFail];
    goto LABEL_9;
  }

  if ([v3 httpResponseStatus] > 399)
  {
    goto LABEL_6;
  }

  v11 = sub_100002830();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [WeakRetained serviceName];
    *buf = 138412546;
    v17 = v12;
    v18 = 2048;
    v19 = [v3 httpResponseStatus];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@: Register device was successful with status %ld", buf, 0x16u);
  }

  [FMPreferencesUtil setData:*(a1 + 32) forKey:*(a1 + 40) inDomain:@"com.apple.icloud.fmflocatord.notbackedup"];
  if (([*(a1 + 48) completedStartupRegister] & 1) == 0)
  {
    [*(a1 + 48) setCompletedStartupRegister:1];
  }

  [WeakRetained registerDidSucceed];
  if ([v3 httpResponseStatus] == 200)
  {
    v13 = +[StartupRegisterManager sharedInstance];
    [v13 eventDidOccur:2];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FC08;
    block[3] = &unk_10005D2B0;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if ([v3 httpResponseStatus] == 204)
  {
    v14 = +[StartupRegisterManager sharedInstance];
    [v14 eventDidOccur:3];
  }

LABEL_9:
}

void sub_10000FCBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200)
  {

LABEL_4:
    v5 = sub_100002830();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v6 = [*(a1 + 32) serviceName];
    v7 = [v3 httpResponseStatus];
    v8 = [v3 httpResponseError];
    *buf = 138412802;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error %ld during unregister device: %@", buf, 0x20u);

    goto LABEL_6;
  }

  if ([v3 httpResponseStatus] > 399)
  {
    goto LABEL_4;
  }

  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) serviceName];
    *buf = 138412546;
    v11 = v6;
    v12 = 2048;
    v13 = [v3 httpResponseStatus];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: Unregister device was successful with status %ld.", buf, 0x16u);
LABEL_6:
  }

LABEL_7:

  if (([v3 willRetry] & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FED8;
    block[3] = &unk_10005D2B0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_10000FED8(uint64_t a1)
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) serviceName];
    v4 = [*(a1 + 32) account];
    v5 = [v4 uniqueId];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@: Removing the account : %@", &v9, 0x16u);
  }

  v6 = +[AccountManager sharedInstance];
  v7 = [*(a1 + 32) account];
  [v6 removeInactiveAccount:v7];

  return [RealmSupport setServerContextHeaderString:0];
}

void sub_1000100EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200)
  {

    goto LABEL_4;
  }

  if ([v3 httpResponseStatus] <= 399)
  {
    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) serviceName];
      v15 = 138412546;
      v16 = v10;
      v17 = 2048;
      v18 = [v3 httpResponseStatus];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Queue check was successful with status %ld.", &v15, 0x16u);
    }

    if ([v3 httpResponseStatus] == 200)
    {
      v11 = 5;
    }

    else if ([v3 httpResponseStatus] == 204)
    {
      v11 = 6;
    }

    else
    {
      if ([v3 httpResponseStatus] != 210)
      {
LABEL_17:
        v13 = *(a1 + 32);
        v14 = [v3 httpResponseStatus];
        v5 = [v3 httpResponseBody];
        [v13 handleQueueCheckResponseWithStatus:v14 andBody:v5];
        goto LABEL_6;
      }

      v11 = 7;
    }

    v12 = +[StartupRegisterManager sharedInstance];
    [v12 eventDidOccur:v11];

    goto LABEL_17;
  }

LABEL_4:
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) serviceName];
    v7 = [v3 httpResponseStatus];
    v8 = [v3 httpResponseError];
    v15 = 138412802;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error %ld during queue check: %@", &v15, 0x20u);
  }

LABEL_6:
}

void sub_100010594(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200)
  {
  }

  else if ([v3 httpResponseStatus] <= 399)
  {
    v5 = sub_100002830();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v6 = [*(a1 + 32) serviceName];
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = [v3 httpResponseStatus];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: Current location was sent successfully with status %ld", &v9, 0x16u);
    goto LABEL_6;
  }

  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) serviceName];
    v7 = [v3 httpResponseStatus];
    v8 = [v3 httpResponseError];
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error %ld sending current location: %@", &v9, 0x20u);

LABEL_6:
  }

LABEL_7:
}

void sub_1000108FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200)
  {

    goto LABEL_4;
  }

  if ([v3 httpResponseStatus] > 399)
  {
LABEL_4:
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) serviceName];
      v7 = [v3 httpResponseStatus];
      v8 = [v3 httpResponseError];
      v14 = 138412802;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error %ld sending ack for register command: %@", &v14, 0x20u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_8:
      v10();
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v11 = sub_100002830();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 32) serviceName];
    v14 = 138412546;
    v15 = v12;
    v16 = 2048;
    v17 = [v3 httpResponseStatus];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@: Register command was acked successfully with status %ld", &v14, 0x16u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v10 = *(v13 + 16);
    goto LABEL_8;
  }

LABEL_9:
}

void sub_100010CBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 httpResponseError];
  if (v4 || [v3 httpResponseStatus] < 200)
  {

    goto LABEL_4;
  }

  if ([v3 httpResponseStatus] > 399)
  {
LABEL_4:
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) serviceName];
      v7 = [v3 httpResponseStatus];
      v8 = [v3 httpResponseError];
      v14 = 138412802;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Error %ld sending ack for locate command: %@", &v14, 0x20u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_8:
      v10();
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v11 = sub_100002830();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 32) serviceName];
    v14 = 138412546;
    v15 = v12;
    v16 = 2048;
    v17 = [v3 httpResponseStatus];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@: Locate command was acked successfully with status %ld", &v14, 0x16u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v10 = *(v13 + 16);
    goto LABEL_8;
  }

LABEL_9:
}

id sub_100011A54(uint64_t a1)
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "OK button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 40)];
}

id sub_100011B0C(uint64_t a1)
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Cancel button tapped. Performing action %@", &v5, 0xCu);
  }

  return [CommonUtil handleAlertAction:*(a1 + 40)];
}

void sub_100011BC4(uint64_t a1)
{
  v2 = +[FMAlertManager sharedInstance];
  [v2 activateAlert:*(a1 + 32)];
}

void sub_100012C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = sub_100002830();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 description];
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Exception while trying to load FMF accounts: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100012BD8);
  }

  _Unwind_Resume(exception_object);
}

void sub_100012DD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 appAuthTokenStatus])
  {
    v4 = sub_100002830();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 username];
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Re-reading app auth token for account %@", buf, 0xCu);
    }

    [*(a1 + 32) _fetchAppAuthToken:v3];
  }

  if ([v3 internalAuthTokenStatus])
  {
    v6 = sub_100002830();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 username];
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Re-reading internal auth token for account %@", buf, 0xCu);
    }

    [*(a1 + 32) _fetchInternalAuthToken:v3];
    v10 = @"account";
    v11 = v3;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"AccountStoreUpdatedAccountNotification" object:0 userInfo:v8];
  }
}

void sub_1000135DC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100070130;
  qword_100070130 = v1;

  v3 = objc_alloc_init(FMConcurrentMutableDictionary);
  [qword_100070130 setAssertionsDict:v3];
}

void sub_100013AF4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    v14 = sub_100002830();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Exception caught while attempting to take power assertion: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100013A54);
  }

  _Unwind_Resume(a1);
}

void sub_100013D2C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = sub_100002830();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Exception caught while attempting to release power assertion: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100013CECLL);
  }

  _Unwind_Resume(a1);
}

void sub_100013FAC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

const __CFString *sub_100014A90(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"enter";
  }

  else
  {
    return *(&off_10005D818 + a1 - 1);
  }
}

const __CFString *sub_100014AB8(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"in";
  }

  else
  {
    return *(&off_10005D830 + a1);
  }
}

uint64_t sub_100014ADC(void *a1)
{
  v1 = a1;
  if ([@"enter" isEqualToString:v1])
  {
    v2 = 0;
  }

  else if ([@"exit" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"both" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"scheduled" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100015978(id a1)
{
  qword_100070148 = objc_alloc_init(FMFFencesMgr);

  _objc_release_x1();
}

void sub_100015B58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100002830();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100037314();
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100015C48;
    v8[3] = &unk_10005D6E0;
    v9 = *(a1 + 32);
    v10 = v5;
    dispatch_async(&_dispatch_main_q, v8);

    v7 = v9;
  }
}

void sub_100015C48(uint64_t a1)
{
  [*(a1 + 32) setAllFences:*(a1 + 40)];
  [*(a1 + 32) setInitializationCompleted:1];
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMFFencesMgr initialization completed", v5, 2u);
  }

  v3 = [*(a1 + 32) onInitializationCompletion];

  if (v3)
  {
    v4 = [*(a1 + 32) onInitializationCompletion];
    v4[2]();

    [*(a1 + 32) setOnInitializationCompletion:0];
  }
}

id sub_100015DA4(uint64_t a1)
{
  if ([*(a1 + 32) initializationCompleted])
  {
    v2 = *(*(a1 + 40) + 16);

    return v2();
  }

  else
  {
    v4 = [*(a1 + 32) onInitializationCompletion];

    if (v4)
    {
      v5 = sub_100002830();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100037384();
      }
    }

    return [*(a1 + 32) setOnInitializationCompletion:*(a1 + 40)];
  }
}

id sub_100015F1C(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_100070150;
  qword_100070150 = v2;

  v4 = *(a1 + 32);
  v5 = qword_100070150;

  return [v4 setupSessionCallbacks:v5];
}

void sub_100016160(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  v5 = [NSString stringWithUTF8String:string];
  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[FMFFencesMgr registerAlarms]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: XPC Alarm fired with name: %@", &v9, 0x16u);
  }

  if (!strcmp(string, *(a1 + 40)))
  {
    v7 = [*(a1 + 32) scheduler];
    [v7 notifyDelegateThatCurrentSchedulesDidChange];

    v8 = *(a1 + 40);
  }

  xpc_dictionary_get_string(v3, _xpc_event_key_name);
  xpc_set_event();
}

void sub_1000164A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_1000164CC(uint64_t a1)
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Continuing FMFFenceMgr start up...", &v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _readFencesToMonitorCache];
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [WeakRetained fencesToMonitor];
    v6 = [v5 count];
    v7 = [WeakRetained locMgr];
    v8 = [v7 monitoredRegions];
    v9 = [v8 count];
    v10 = 134218240;
    v11 = v6;
    v12 = 2048;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Monitoring %ld fences in fmflocatord & %ld fences in CoreLocation", &v10, 0x16u);
  }
}

void sub_100016AE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002830();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 136315394;
      v9 = "[FMFFencesMgr triggerFence:atLocation:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: error: %@", &v8, 0x16u);
    }
  }

  else if (v5)
  {
    v6 = [*(a1 + 32) identifier];
    v7 = sub_100014AB8([*(a1 + 40) lastTrigger]);
    v8 = 136315650;
    v9 = "[FMFFencesMgr triggerFence:atLocation:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: triggered fence: %@ trigger: %@", &v8, 0x20u);
  }
}

id sub_1000170AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 length] < 4 || objc_msgSend(*(a1 + 32), "length") < 4)
  {
    v7 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 identifier];
    v7 = [v5 hasPrefix:v6];
  }

  return v7;
}

MonitoredFence *__cdecl sub_1000181A4(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[MonitoredFence alloc] initWithDictionary:v2];

  return v3;
}

BOOL sub_100018378(id a1, NSString *a2, MonitoredFence *a3)
{
  v3 = a3;
  if ([(MonitoredFence *)v3 triggerType]== 3)
  {
    v4 = [(MonitoredFence *)v3 schedule];
    v5 = +[NSDate date];
    v6 = [v4 isCurrentAt:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_10001856C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100018588(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [NSSet setWithArray:v3];

  [WeakRetained setAllFences:v4];
}

void sub_100018D04(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_100070160 = [v1 BOOLForKey:@"FMFFenceTriggerDebugAlertEnabled"];

  if (byte_100070160)
  {
    v2 = +[FMSystemInfo sharedInstance];
    byte_100070160 = [v2 isInternalBuild];
  }

  else
  {
    byte_100070160 = 0;
  }
}

void sub_100018FC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

MonitoredFence *__cdecl sub_1000191C8(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [[MonitoredFence alloc] initWithDictionary:v2];

  return v3;
}

void sub_100019220(uint64_t a1)
{
  v2 = +[FMFFencesMgr sharedInstance];
  [v2 setFencesToMonitor:*(a1 + 32) withFenceVersion:*(a1 + 40) triggerValidityDuration:*(a1 + 48) andTriggerURL:*(a1 + 56)];
}

void sub_100019340(id a1)
{
  qword_100070170 = objc_alloc_init(PreferencesMgr);

  _objc_release_x1();
}

void sub_100019B1C(id a1)
{
  qword_100070180 = [[SystemConfig alloc] initSingleton];

  _objc_release_x1();
}

void sub_100019E54(uint64_t a1)
{
  v2 = +[CLLocationManager locationServicesEnabled];
  v3 = [*(a1 + 32) isLocationServicesEnabled];
  if (v2 == v3)
  {
    v6 = sub_100002830();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100037E78(v3, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    [*(a1 + 32) setIsLocationServicesEnabled:v2];
    v4 = sub_100002830();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v14 = v3;
      v15 = 1024;
      v16 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LS auth status changed from: %d to: %d", buf, 0xEu);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"LocationServicesStateChangedNotification" object:0];

    AnalyticsSendEventLazy();
  }
}

id sub_100019FF0(uint64_t a1)
{
  v5 = @"Change";
  if (*(a1 + 32))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = [NSNumber numberWithInt:v1];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_10001A138(uint64_t a1)
{
  v2 = [*(a1 + 32) shareMyLocationSystemServiceStatus];
  v3 = [*(a1 + 32) fmfLocationManager];
  v4 = [v3 authorizationStatus];

  if (v2 == v4)
  {
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100037EE4(v2, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    [*(a1 + 32) setShareMyLocationSystemServiceStatus:v4];
    v12 = sub_100002830();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v17 = v2;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Share My Location system service status changed from: %d to: %d", buf, 0xEu);
    }

    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) isShareMyLocationSystemServiceEnabled];
      *buf = 67109120;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "smlLS == %d", buf, 8u);
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:@"ShareMyLocationInLocationServicesStatusChanged" object:0];

    AnalyticsSendEventLazy();
  }
}

id sub_10001A338(uint64_t a1)
{
  v4 = @"Change";
  v1 = [NSNumber numberWithInt:(*(a1 + 36) + 100 * *(a1 + 32))];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_10001A654(id a1)
{
  qword_100070198 = dispatch_queue_create("SystemConfig-deviceName", 0);

  _objc_release_x1();
}

uint64_t sub_10001A694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10001A6AC(uint64_t a1)
{
  if ([*(a1 + 32) deviceNameUpToDate])
  {
    v2 = qword_100070190;
    v3 = (*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v4 = [*(a1 + 32) _stringGestaltQueryForKey:@"UserAssignedDeviceName"];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v2 = *(*(*(a1 + 40) + 8) + 40);
    v3 = &qword_100070190;
  }

  v7 = v2;
  v8 = *v3;
  *v3 = v7;

  v9 = *(a1 + 32);

  return [v9 setDeviceNameUpToDate:1];
}

uint64_t sub_10001A91C(uint64_t a1)
{
  qword_1000701A8 = [*(a1 + 32) _stringGestaltQueryForKey:@"DeviceClass"];

  return _objc_release_x1();
}

uint64_t sub_10001AA88(uint64_t a1)
{
  qword_1000701B8 = [*(a1 + 32) _stringGestaltQueryForKey:@"UniqueDeviceID"];

  return _objc_release_x1();
}

uint64_t sub_10001ABDC(uint64_t a1)
{
  qword_1000701D0 = [*(a1 + 32) _stringGestaltQueryForKey:@"ProductType"];

  return _objc_release_x1();
}

uint64_t sub_10001ACB4(uint64_t a1)
{
  qword_1000701E0 = [*(a1 + 32) _stringGestaltQueryForKey:@"ProductName"];

  return _objc_release_x1();
}

void sub_10001AD8C(uint64_t a1)
{
  v2 = [*(a1 + 32) preferencesMgr];
  v3 = [v2 overriddenOSVersion];

  if (!v3)
  {
    v3 = [*(a1 + 32) _stringGestaltQueryForKey:@"ProductVersion"];
  }

  v4 = qword_1000701F0;
  qword_1000701F0 = v3;
}

void sub_10001AEA0(uint64_t a1)
{
  v2 = [*(a1 + 32) preferencesMgr];
  v3 = [v2 overriddenBuildVersion];

  if (!v3)
  {
    v3 = [*(a1 + 32) _stringGestaltQueryForKey:@"BuildVersion"];
  }

  v4 = qword_100070200;
  qword_100070200 = v3;
}

uint64_t sub_10001AFDC(uint64_t a1)
{
  qword_100070210 = [*(a1 + 32) _stringGestaltQueryForKey:@"DeviceColor"];

  return _objc_release_x1();
}

uint64_t sub_10001B0B4(uint64_t a1)
{
  qword_100070220 = [*(a1 + 32) _stringGestaltQueryForKey:@"DeviceEnclosureColor"];

  return _objc_release_x1();
}

uint64_t sub_10001B18C(uint64_t a1)
{
  qword_100070230 = [*(a1 + 32) _stringGestaltQueryForKey:@"SerialNumber"];

  return _objc_release_x1();
}

id sub_10001B438(uint64_t a1)
{
  result = [*(a1 + 32) _BOOLGestaltQueryForKey:@"eQd5mlz0BN0amTp/2ccMoA"];
  byte_100070240 = result;
  return result;
}

id sub_10001B4F4(uint64_t a1)
{
  result = [*(a1 + 32) _BOOLGestaltQueryForKey:@"DeviceSupportsUltraLowPowerNetworking"];
  byte_100070250 = result;
  return result;
}

void sub_10001B9F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_10001BA14(id a1)
{
  qword_100070268 = os_log_create("com.apple.icloud.fmflocatord", "_");

  _objc_release_x1();
}

id sub_10001BA58()
{
  if (qword_100070270 != -1)
  {
    sub_100038184();
  }

  v1 = qword_100070278;

  return v1;
}

void sub_10001BA9C(id a1)
{
  qword_100070278 = os_log_create("com.apple.icloud.fmflocatord", "Locations");

  _objc_release_x1();
}

id sub_10001BAE0()
{
  if (qword_100070280 != -1)
  {
    sub_100038198();
  }

  v1 = qword_100070288;

  return v1;
}

void sub_10001BB24(id a1)
{
  qword_100070288 = os_log_create("com.apple.icloud.fmflocatord", "Traffic");

  _objc_release_x1();
}

id sub_10001BB68()
{
  if (qword_100070290 != -1)
  {
    sub_1000381AC();
  }

  v1 = qword_100070298;

  return v1;
}

void sub_10001BBAC(id a1)
{
  qword_100070298 = os_log_create("com.apple.icloud.fmflocatord", "secureLocations");

  _objc_release_x1();
}

id sub_10001BBF0()
{
  if (qword_1000702A0 != -1)
  {
    sub_1000381C0();
  }

  v1 = qword_1000702A8;

  return v1;
}

void sub_10001BC34(id a1)
{
  qword_1000702A8 = os_log_create("com.apple.icloud.fmflocatord", "Fences");

  _objc_release_x1();
}

void sub_10001BD98(id a1)
{
  v1 = sub_100002830();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1000381E8(v1);
  }

  v2 = [[FMFConfig alloc] initSingleton];
  v3 = qword_1000702B0;
  qword_1000702B0 = v2;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100002830();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "fmflocatord has been launched", v5, 2u);
  }

  v2 = +[FMFLocatorDaemon sharedInstance];
  [v2 initialize];

  objc_autoreleasePoolPop(v0);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  return 0;
}

void sub_10001C1E8(id a1)
{
  v1 = sub_100002830();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "FMFAppStateObserver: Creating shared instance of FMFAppStateObserver", v4, 2u);
  }

  v2 = objc_alloc_init(FMFAppStateObserver);
  v3 = qword_1000702C8;
  qword_1000702C8 = v2;
}

void sub_10001CC7C(id a1)
{
  v1 = sub_100002830();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100038328();
  }

  v2 = [[AccountManager alloc] initSingleton];
  v3 = qword_1000702D8;
  qword_1000702D8 = v2;
}

void sub_10001CF84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 accounts];
  [*(a1 + 32) addObjectsFromArray:v4];
}

void sub_10001D248(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != a2)
  {
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = objc_opt_class();
    v6 = [v4 uniqueId];

    [v3 deactivateAccountOfType:v5 havingUniqueId:v6];
  }
}

void sub_10001D2D0(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"AccountListDidChangeNotification" object:0];
}

void sub_10001D324(uint64_t a1)
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10003839C();
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"AccountDidUpdateNotification" object:0 userInfo:*(a1 + 32)];
}

void sub_10001D56C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v5 = @"account";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"AccountDidDeactivateNotificationKey" object:0 userInfo:v4];
}

void sub_10001D85C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v5 = @"account";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"AccountDidDeactivateNotificationKey" object:0 userInfo:v4];
}

void sub_10001DA70(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([v4 isActive])
  {
    v5 = sub_100002830();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000383D0(v4, v5);
    }

    [v4 setIsActive:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001DB4C;
    block[3] = &unk_10005D2B0;
    v7 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10001DB4C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v5 = @"account";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"AccountDidDeactivateNotificationKey" object:0 userInfo:v4];
}

void sub_10001DD70(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"AccountListDidChangeNotification" object:0];
}

void sub_10001DF50(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isActive])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_10001E2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E2C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001E2DC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 uniqueId];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10001E4CC(uint64_t a1)
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100038498();
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"AccountDidUpdateNotification" object:0 userInfo:*(a1 + 32)];
}

void sub_10001E6FC(uint64_t a1)
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000384CC();
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"AccountDidUpdateNotification" object:0 userInfo:*(a1 + 32)];
}

void sub_10001E9F8(id a1)
{
  v1 = sub_100002830();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100038514(v1);
  }

  v2 = [[AppleAccountManager alloc] initSingleton];
  v3 = qword_1000702E8;
  qword_1000702E8 = v2;
}

void sub_10001F0BC(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_10005DFA8 + a2);
  }

  v7 = sub_100002830();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) iCloudACAccount];
    v9 = [v8 aa_personID];
    v10 = @" Error: ";
    v13 = 138413058;
    v14 = v9;
    v11 = &stru_10005FAB8;
    v15 = 2112;
    if (!v5)
    {
      v10 = &stru_10005FAB8;
    }

    v16 = v6;
    if (v5)
    {
      v11 = v5;
    }

    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Renew account credentials for account %@ - status %@.%@%@", &v13, 0x2Au);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }
}

void sub_10001FB7C(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  [v2 registerDeviceWithCause:@"RegisterCommand" force:1];
  [*(a1 + 32) _endXPCTransaction];
}

void sub_100020098(id a1)
{
  v1 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v2 = [v1 objectAtIndex:0];
  v3 = [v2 stringByAppendingPathComponent:@"com.apple.icloud.fmflocatord"];
  v20 = [v3 stringByAppendingPathComponent:@"cookies"];

  v4 = v20;
  v5 = [v20 UTF8String];
  v6 = strlen(v5);
  v7 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, v5, v6, 1u);
  v8 = CFHTTPCookieStorageCreateFromFile();
  v9 = [[NSHTTPCookieStorage alloc] _initWithCFHTTPCookieStorage:v8];
  v10 = qword_100070318;
  qword_100070318 = v9;

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v11 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v12 = qword_100070310;
  qword_100070310 = v11;

  [qword_100070310 setHTTPCookieStorage:qword_100070318];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 bundleIdentifier];

  v15 = [[AKAppleIDSession alloc] initWithIdentifier:v14];
  [qword_100070310 set_appleIDContext:v15];
  [qword_100070310 set_alternativeServicesStorage:0];
  v16 = qword_100070310;
  v17 = +[NSOperationQueue mainQueue];
  v18 = [FMFURLSessionFactory sessionWithConfiguration:v16 delegate:0 delegateQueue:v17];
  v19 = qword_100070308;
  qword_100070308 = v18;
}

void sub_1000210D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    _Block_object_dispose(&a23, 8);
    objc_begin_catch(exception_object);
    JUMPOUT(0x100020CF8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000211A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000211BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = (a1 + 32);
  if ([*(a1 + 32) cancelled])
  {
    goto LABEL_38;
  }

  v11 = v8;
  v12 = sub_100002830();
  v55 = v11;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) fm_logID];
    v53 = v7;
    v14 = v8;
    v15 = [v11 statusCode];
    v16 = [*(a1 + 40) domain];
    v17 = [*(a1 + 40) code];
    v18 = [v11 allHeaderFields];
    [v18 description];
    v19 = v54 = v9;
    *buf = 138413314;
    v58 = v13;
    v59 = 2048;
    v60 = v15;
    v8 = v14;
    v7 = v53;
    v61 = 2112;
    v62 = v16;
    v63 = 2048;
    v64 = v17;
    v65 = 2112;
    v66 = v19;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ received response with status %ld, error %@:%ld, headers: \n%@", buf, 0x34u);

    v11 = v55;
    v9 = v54;
  }

  if (v7)
  {
    v20 = [[NSString alloc] initWithData:v7 encoding:4];
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_10001BAE0();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*v10 fm_logID];
    *buf = 138412546;
    v58 = v22;
    v59 = 2112;
    v60 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ raw response body : %@", buf, 0x16u);
  }

  [*v10 setHttpResponseStatus:{objc_msgSend(v11, "statusCode")}];
  v23 = [v11 allHeaderFields];
  [*v10 setHttpResponseHeaders:v23];

  [*v10 setHttpResponseError:v9];
  if ([v7 length])
  {
    v56 = 0;
    v24 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v56];
    v25 = v56;
    v26 = v25;
    if (v24 || !v25)
    {
      [*v10 setHttpResponseBody:v24];
      if (!v24)
      {
LABEL_18:

        goto LABEL_19;
      }

      v27 = sub_10001BAE0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [*v10 fm_logID];
        v29 = [v24 description];
        *buf = 138412546;
        v58 = v28;
        v59 = 2112;
        v60 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@ response body dictionary : \n%@", buf, 0x16u);

        v11 = v55;
      }
    }

    else
    {
      v27 = sub_100002830();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100038784((a1 + 32), v26, v27);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  v30 = [*v10 httpResponseBody];

  if (v30)
  {
    v31 = [*v10 httpResponseBody];
    v32 = [v31 objectForKeyedSubscript:@"alert"];
    [*v10 setAlertFromServerResponse:v32];

    v11 = v55;
    v33 = [*v10 alertFromServerResponse];

    if (v33)
    {
      v34 = sub_100002830();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_100038834((a1 + 32));
      }
    }
  }

  [*v10 setCurrentDataTask:0];
  [*v10 setIsComplete:{objc_msgSend(*v10, "responseErrorType") == 0}];
  if ([*v10 responseErrorType] == 769)
  {
    v35 = [*(a1 + 32) httpResponseHeaders];
    v36 = [v35 stringForCaseInsensitiveStringKey:@"X-Apple-MMe-Host"];
    v37 = *(*(a1 + 64) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v39 = v9;
      v40 = [*(a1 + 32) requestUrl];
      v41 = [v40 host];

      v42 = *(*(*(a1 + 64) + 8) + 40);
      v43 = [*(a1 + 48) account];
      v44 = [v43 authId];
      [RealmSupport setRedirectedHost:v42 forHost:v41 withContext:v44];

      v45 = sub_100002830();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = *(*(*(a1 + 64) + 8) + 40);
        v47 = [*(a1 + 48) account];
        v48 = [v47 authId];
        *buf = 138412802;
        v58 = v41;
        v59 = 2112;
        v60 = v46;
        v61 = 2112;
        v62 = v48;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Realm redirection from %@ to %@ for %@", buf, 0x20u);
      }

      v9 = v39;
      v11 = v55;
    }
  }

  v49 = [v11 allHeaderFields];
  v50 = [v49 objectForKey:@"X-Apple-Ctx"];

  if (v50)
  {
    [RealmSupport setServerContextHeaderString:v50];
  }

  [*(a1 + 32) checkAndScheduleRetries];
  [*(a1 + 32) setInProgress:0];
  v51 = *(a1 + 56);
  if (v51)
  {
    (*(v51 + 16))(v51, *v10);
  }

  if (([*v10 willRetry] & 1) == 0)
  {
    v52 = sub_100002830();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "endXPCTransaction because no retries", buf, 2u);
    }

    [*v10 _endXPCTransaction];
  }

  [*(a1 + 32) _disablePowerAssertion];
  [*(a1 + 48) didReceiveResponseFor:*(a1 + 32)];

LABEL_38:
}

void sub_1000236D0(id a1)
{
  qword_100070328 = objc_alloc_init(StartupRegisterManager);

  _objc_release_x1();
}

void sub_100023978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100023990(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

void sub_100023D90(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  [v2 removeObjectForKey:@"qcPendingEpoch"];

  v3 = [*(a1 + 32) infoAtStartup];
  v4 = [v3 count];

  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [*(a1 + 32) infoAtStartup];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v11 = [*(a1 + 32) info];
          v12 = [v11 objectForKeyedSubscript:v10];

          v13 = [*(a1 + 32) infoAtStartup];
          v14 = [v13 objectForKeyedSubscript:v10];

          if (v12)
          {
            if ([v12 isEqualToNumber:v14])
            {
              v15 = [*(a1 + 32) info];
              [v15 removeObjectForKey:v10];
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [*(a1 + 32) setInfoAtStartup:0];
    [*(a1 + 32) _saveInfo];
  }
}

id sub_100023FEC(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) setInfo:v2];

  v3 = *(a1 + 32);

  return [v3 _saveInfo];
}

id sub_10002411C(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = *(a1 + 32);

  return [v3 _saveInfo];
}

id sub_100024220(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _saveInfo];
}

void sub_100024F34(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 removeObjectsForKeys:*(a1 + 32)];
  [*(a1 + 40) addObject:v3];
}

uint64_t sub_10002524C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100025264(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = a1[7];
  if (objc_opt_isKindOfClass() & 1) != 0 || (v7 = a1[8], (objc_opt_isKindOfClass()))
  {
    v9 = a1[4];
    v8 = a1[5];
    v10 = [*(*(a1[6] + 8) + 40) arrayByAddingObject:v14];
    v11 = [v8 flattenedArrayFromObject:v5 parentIndices:v10];
    [v9 addObjectsFromArray:v11];
  }

  else
  {
    v12 = a1[4];
    v10 = [*(*(a1[6] + 8) + 40) arrayByAddingObject:v14];
    v11 = [v10 componentsJoinedByString:@"_"];
    v13 = [NSString stringWithFormat:@"%@_%@", v11, v5];
    [v12 addObject:v13];
  }
}

void sub_10002539C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = a2;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v8 = [v5 arrayByAddingObject:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) flattenedArrayFromObject:v6 parentIndices:*(*(*(a1 + 48) + 8) + 40)];

  [v11 addObjectsFromArray:v12];
}

const __CFString *sub_100026CCC(uint64_t a1)
{
  v1 = @"scheduled";
  if (a1 == 1)
  {
    v1 = @"exit";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"enter";
  }
}

void sub_100028D4C(id a1)
{
  qword_100070338 = objc_alloc_init(FMFAutomationHelperFactory);

  _objc_release_x1();
}

void sub_100029098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = sub_100002830();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Exception caught in -URLByReplacingHost: -- %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x10002904CLL);
  }

  _Unwind_Resume(exception_object);
}

id *sub_100029360(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = result;
    v6 = (a2 + a3);
    do
    {
      v7 = *v6++;
      result = [v5[4] appendFormat:@"%02lx", v7];
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_100029464(id a1)
{
  v1 = sub_100002830();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100038CE4(v1);
  }

  v2 = [[XPCManager alloc] initSingleton];
  v3 = qword_100070348;
  qword_100070348 = v2;
}

void sub_100029D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029D54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ServiceProviderMgr sharedInstance];
  v5 = [v4 serviceProviderForAccount:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = v5;
    if ([v3 isMemberOfClass:objc_opt_class()])
    {
      v7 = *(a1 + 32);
      v8 = v3;
      v9 = [v6 serviceIdentifierInURL];
      v10 = [v7 substituteStandardURLPlaceholders:@"${scheme}://${hostname}/fmipservice/${service}/${dsid}/${udid}/ackLocate" withAccount:v8 withServiceIdentifier:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];

    v19[0] = @"ackURL";
    v19[1] = @"cmd";
    v20[0] = v10;
    v20[1] = @"locate";
    v19[2] = @"decayFactor";
    v19[3] = @"desiredAccuracy";
    v20[2] = @"0.7";
    v20[3] = &off_100062FE8;
    v19[4] = @"distanceThresholdInMeters";
    v19[5] = @"endThreshold";
    v20[4] = &off_100063000;
    v20[5] = &off_100063018;
    v19[6] = @"enqueueTimestamp";
    v19[7] = @"findMyiPhone";
    v20[6] = &off_100063030;
    v20[7] = &off_100063048;
    v19[8] = @"id";
    v19[9] = @"includeTrackingInfo";
    v20[8] = v12;
    v20[9] = &off_100063048;
    v19[10] = @"locationTimeout";
    v19[11] = @"locationValidityDuration";
    v20[10] = &off_100063060;
    v20[11] = &off_100063078;
    v19[12] = @"overriddenCommandDomain";
    v19[13] = @"piggypack";
    v20[12] = @"fmf";
    v20[13] = &off_100063090;
    v19[14] = @"pollDurationInSecs";
    v19[15] = @"pollIntervalInSecs";
    v20[14] = &off_1000630A8;
    v20[15] = &off_1000630C0;
    v19[16] = @"requestingUserPrsId";
    v19[17] = @"responseTimeStamp";
    v20[16] = &stru_10005FAB8;
    v20[17] = &off_1000630D8;
    v19[18] = @"scanDurationInSeconds";
    v19[19] = @"startThreshold";
    v20[18] = &off_1000630F0;
    v20[19] = &off_100063108;
    v19[20] = @"timeThresholdInSecs";
    v19[21] = @"udid";
    v20[20] = &off_100063120;
    v20[21] = &stru_10005FAB8;
    [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:22];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002A114;
    v15[3] = &unk_10005E550;
    v17 = v16 = v6;
    v18 = *(a1 + 40);
    v13 = v17;
    v14 = v6;
    dispatch_async(&_dispatch_main_q, v15);
  }
}

void sub_10002A114(uint64_t a1)
{
  v4 = [*(a1 + 32) copyHandlerForCommand:@"locate" params:*(a1 + 40)];
  if (v4)
  {
    [v4 executeCommand];
    (*(*(a1 + 48) + 16))();
  }

  v2 = *(a1 + 48);
  v3 = +[NSError fm_genericError];
  (*(v2 + 16))(v2, v3);
}

BOOL sub_10002A70C(id a1, FenceScheduleProtocol *a2)
{
  v2 = a2;
  v3 = +[NSDate date];
  v4 = [(FenceScheduleProtocol *)v2 isCurrentAt:v3];

  return v4;
}

void sub_10002AC48(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_10002ACA0, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_10002ACA0()
{
  v0 = +[NSNotificationCenter defaultCenter];
  [v0 postNotificationName:@"FMFLocatorSchedulerSignificantTimeChangeNotification" object:0 userInfo:0];
}

void sub_10002B5F0(id a1)
{
  v1 = sub_100002830();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100038EB4(v1);
  }

  v2 = objc_alloc_init(APSTokenWatcher);
  v3 = qword_100070360;
  qword_100070360 = v2;
}

uint64_t FMFIDSSupportProtoRequestDeviceInformationReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t FMFIDSSupportProtoDeviceInformationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10002C2D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for FMLFence();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10002C408(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_fencesUpdateCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000028D4(v6);
}

id sub_10002C4CC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10002C500()
{
  v1 = v0;
  v2 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for ClientOrigin();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v0[OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_fencesUpdateCallback];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_session;
  type metadata accessor for Session();
  (*(v7 + 104))(v10, enum case for ClientOrigin.other(_:), v6);
  v13 = static Session.sharedSession(origin:)();
  (*(v7 + 8))(v10, v6);
  *&v1[v12] = v13;
  Session = type metadata accessor for FindMyLocateSession();
  v21.receiver = v1;
  v21.super_class = Session;
  v15 = objc_msgSendSuper2(&v21, "init");
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v15;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  sub_10002CE84(0, 0, v5, &unk_100044DA0, v19);

  return v17;
}

uint64_t sub_10002C750(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002C7BC()
{
  v0 = type metadata accessor for ClientOrigin();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Session();
  (*(v1 + 104))(v4, enum case for ClientOrigin.other(_:), v0);
  v5 = static Session.sharedSession(origin:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_10002C8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for Fence();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  updated = type metadata accessor for Fence.UpdateStream.Snapshot();
  v4[9] = updated;
  v9 = *(updated - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(sub_10002C750(&qword_10006FE78, &qword_100044FA0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = type metadata accessor for Fence.UpdateStream.AsyncIterator();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v16;
  v4[19] = v15;

  return _swift_task_switch(sub_10002CAAC, v16, v15);
}

uint64_t sub_10002CAAC()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_session);
  v2 = async function pointer to Session.fenceUpdateStream()[1];
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_10002CB4C;

  return Session.fenceUpdateStream()();
}

uint64_t sub_10002CB4C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = a1;

  v4 = *(v2 + 152);
  v5 = *(v2 + 144);

  return _swift_task_switch(sub_10002CC74, v5, v4);
}

uint64_t sub_10002CC74()
{
  v1 = v0[21];
  v2 = v0[15];
  Fence.UpdateStream.makeAsyncIterator()();
  v3 = v0[16];
  v0[22] = static MainActor.shared.getter();
  v4 = sub_1000028E4(&qword_10006FE80, &type metadata accessor for Fence.UpdateStream.AsyncIterator);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_100002198;
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_10002CD64()
{
  *(v0 + 16) = *(v0 + 192);
  sub_10002C750(&qword_10006FDC8, &qword_100044DC8);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_10002CDF0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100031CAC;

  return sub_10002C8B8(v3, v4, v5, v2);
}

uint64_t sub_10002CE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100030C8C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100030CFC(v12, &qword_10006FDA8, &qword_100044D90);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100030CFC(a3, &qword_10006FDA8, &qword_100044D90);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100030CFC(a3, &qword_10006FDA8, &qword_100044D90);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10002D198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Fence.TriggerPosition();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for Fence.ID();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = *(*(sub_10002C750(&qword_10006FDB8, &qword_100044DB0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_10002D364, 0, 0);
}

uint64_t sub_10002D364()
{
  v54 = v0;
  if (qword_100070370 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_10002F924(v6, qword_100070378);
  v7 = *(v3 + 16);
  v7(v1, v5, v2);
  v8 = v4;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[17];
  v14 = v0[14];
  v13 = v0[15];
  if (v11)
  {
    v52 = v10;
    v15 = v0[4];
    v16 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v16 = 136446466;
    log = v9;
    v17 = v7;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v13 + 8))(v12, v14);
    v21 = v18;
    v7 = v17;
    v22 = sub_100030248(v21, v20, &v53);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2114;
    *(v16 + 14) = v15;
    *v50 = v15;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, log, v52, "triggerFenceWithID: %{public}s, location: %{public}@", v16, 0x16u);
    sub_100030CFC(v50, &qword_10006FDC0, &qword_100044DB8);

    sub_1000307F0(v51);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v24 = v0[12];
  v25 = v0[3];
  v26 = *(v0[5] + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_session);
  v7(v0[16], v0[2], v0[14]);
  Fence.ID.init(id:)();
  if (v25 >= 4)
  {
    v39 = v0[3];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_10002F95C();
    swift_allocError();
    *v40 = v39;
    *(v40 + 8) = 0;
    *(v40 + 16) = 1;
    swift_willThrow();
    v42 = v0[16];
    v41 = v0[17];
    v44 = v0[12];
    v43 = v0[13];
    v46 = v0[8];
    v45 = v0[9];

    v47 = v0[1];

    return v47();
  }

  else
  {
    v27 = *(&off_10005EA50 + v25);
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[6];
    v31 = v0[7];
    v32 = v0[4];
    *v29 = v32;
    (*(v31 + 104))(v29, *v27, v30);
    (*(v31 + 32))(v28, v29, v30);
    v33 = async function pointer to Session.triggerFence(id:position:)[1];
    v34 = v32;
    v35 = swift_task_alloc();
    v0[18] = v35;
    *v35 = v0;
    v35[1] = sub_10002D78C;
    v37 = v0[12];
    v36 = v0[13];
    v38 = v0[9];

    return Session.triggerFence(id:position:)(v36, v37, v38);
  }
}

uint64_t sub_10002D78C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 152) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v11 = sub_10002DA28;
  }

  else
  {
    sub_100030CFC(*(v2 + 104), &qword_10006FDB8, &qword_100044DB0);
    v11 = sub_10002D984;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10002D984()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002DA28()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[8];
  v6 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002DC6C(uint64_t a1, uint64_t a2, void *a3, const void *a4, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v10 = type metadata accessor for UUID();
  v5[4] = v10;
  v11 = *(v10 - 8);
  v5[5] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[6] = v13;
  v5[7] = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  a5;
  v15 = swift_task_alloc();
  v5[8] = v15;
  *v15 = v5;
  v15[1] = sub_10002DDBC;

  return sub_10002D198(v13, a2, v14);
}

uint64_t sub_10002DDBC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *(*v1 + 16);
  v11 = *v1;

  (*(v7 + 8))(v6, v8);

  v12 = *(v3 + 56);
  if (v2)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 56), 0);
  }

  v15 = v4 + 48;
  v14 = *(v4 + 48);
  _Block_release(*(v15 + 8));

  v16 = *(v11 + 8);

  return v16();
}

uint64_t sub_10002DFC4()
{
  v1[3] = v0;
  v2 = type metadata accessor for PreferenceError();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for Device();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10002E110, 0, 0);
}

uint64_t sub_10002E110()
{
  v0[14] = *(v0[3] + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_session);
  v1 = async function pointer to Session.activeLocationSharingDevice(cached:)[1];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_10002E1C0;
  v3 = v0[12];

  return Session.activeLocationSharingDevice(cached:)(v3, 1);
}

uint64_t sub_10002E1C0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10002E3D8;
  }

  else
  {
    v3 = sub_10002E2D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002E2D4()
{
  (*(v0[10] + 32))(v0[13], v0[12], v0[9]);
  v1 = v0[13];
  if (Device.isThisDevice.getter())
  {
    v2 = 1;
  }

  else
  {
    v3 = v0[13];
    v2 = Device.isCompanion.getter();
  }

  v4 = v0[12];
  v5 = v0[11];
  v6 = v0[8];
  v8 = v0[6];
  v7 = v0[7];
  (*(v0[10] + 8))(v0[13], v0[9]);

  v9 = v0[1];

  return v9(v2 & 1);
}

uint64_t sub_10002E3D8()
{
  v0[2] = v0[16];
  v1 = v0[8];
  v2 = v0[4];
  swift_errorRetain();
  sub_10002C750(&qword_10006FDC8, &qword_100044DC8);
  if (swift_dynamicCast())
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    (*(v4 + 32))(v0[7], v0[8], v5);
    (*(v4 + 104))(v3, enum case for PreferenceError.missingMeDevice(_:), v5);
    v6 = static PreferenceError.== infix(_:_:)();
    v7 = *(v4 + 8);
    v0[17] = v7;
    v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v8 = v0[16];
    if (v6)
    {
      v9 = v0[16];

      v10 = async function pointer to Session.activeLocationSharingDevice(cached:)[1];
      v11 = swift_task_alloc();
      v0[19] = v11;
      *v11 = v0;
      v11[1] = sub_10002E60C;
      v12 = v0[14];
      v13 = v0[11];

      return Session.activeLocationSharingDevice(cached:)(v13, 0);
    }

    v15 = v0[18];
    (v0[17])(v0[7], v0[4]);
  }

  else
  {
    v14 = v0[16];
  }

  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[11];
  v20 = v0[7];
  v19 = v0[8];
  v21 = v0[6];
  v22 = v0[2];

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_10002E60C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_10002E84C;
  }

  else
  {
    v3 = sub_10002E720;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002E720()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  (*(v0 + 136))(*(v0 + 56), *(v0 + 32));
  (*(v4 + 32))(v2, v3, v5);
  v6 = *(v0 + 16);

  v7 = *(v0 + 104);
  if (Device.isThisDevice.getter())
  {
    v8 = 1;
  }

  else
  {
    v9 = *(v0 + 104);
    v8 = Device.isCompanion.getter();
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64);
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  (*(*(v0 + 80) + 8))(*(v0 + 104), *(v0 + 72));

  v15 = *(v0 + 8);

  return v15(v8 & 1);
}

uint64_t sub_10002E84C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  (*(v0 + 136))(*(v0 + 56), *(v0 + 32));
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_10002EA90(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10002EB38;

  return sub_10002DFC4();
}

uint64_t sub_10002EB38(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

id sub_10002ED90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002EE14(uint64_t a1, uint64_t a2)
{
  v5 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v2;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;
  sub_10002CE84(0, 0, v8, &unk_100044DD8, v12);
}

uint64_t sub_10002EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Fence();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[11] = v11;
  v6[12] = v10;

  return _swift_task_switch(sub_10002F058, v11, v10);
}

uint64_t sub_10002F058()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC11fmflocatord19FindMyLocateSession_session);
  v2 = async function pointer to Session.fences()[1];
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_10002F0F8;

  return Session.fences()();
}

uint64_t sub_10002F0F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 96);
  v8 = *(v3 + 88);
  if (v1)
  {
    v9 = sub_10002F4AC;
  }

  else
  {
    v9 = sub_10002F23C;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10002F23C()
{
  v1 = v0[14];
  v2 = v0[10];

  v23 = v1;
  v3 = *(v1 + 16);
  v4 = v0[14];
  if (v3)
  {
    v5 = v0[7];
    sub_100030F34(0, v3, 0);
    v22 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    result = type metadata accessor for FMLFence();
    v7 = 0;
    while (v7 < *(v23 + 16))
    {
      v8 = v0[8];
      v9 = v0[9];
      v10 = v0[6];
      v11 = *(v5 + 16);
      v11(v9, v22 + *(v5 + 72) * v7, v10);
      v11(v8, v9, v10);
      v0[2] = sub_100031F54(v8);
      sub_1000028E4(&qword_10006FE58, type metadata accessor for FMLFence);
      AnyHashable.init<A>(_:)();
      result = (*(v5 + 8))(v9, v10);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100030F34((v12 > 1), v13 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[5 * v13];
      *(v14 + 8) = v26;
      *(v14 + 2) = v24;
      *(v14 + 3) = v25;
      if (v3 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v15 = v0[14];

    v17 = v0[4];
    v16 = v0[5];
    v18 = sub_10003193C(_swiftEmptyArrayStorage);

    v17(v18, 0);

    v20 = v0[8];
    v19 = v0[9];

    v21 = v0[1];

    return v21();
  }

  return result;
}

uint64_t sub_10002F4AC()
{
  v1 = v0[15];
  v2 = v0[10];
  v4 = v0[4];
  v3 = v0[5];

  swift_errorRetain();
  v4(&_swiftEmptySetSingleton, v1);

  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

void sub_10002F6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

unint64_t sub_10002F774(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(38);

    v9 = 0xD000000000000024;
    type metadata accessor for FMFMonitoredFenceTrigger();
    v4._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v4);
  }

  else
  {
    _StringGuts.grow(_:)(35);

    v9 = 0xD000000000000011;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    v7._object = 0x8000000100048130;
    v7._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v7);
  }

  return v9;
}

uint64_t sub_10002F8A4()
{
  v0 = type metadata accessor for Logger();
  sub_100031AD8(v0, qword_100070378);
  sub_10002F924(v0, qword_100070378);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002F924(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10002F95C()
{
  result = qword_100070390[0];
  if (!qword_100070390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100070390);
  }

  return result;
}

uint64_t sub_10002F9B0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002FAA8;

  return v7(a1);
}

uint64_t sub_10002FAA8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002FBA0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100031CAC;

  return v7();
}

uint64_t sub_10002FC88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10002FD70;

  return v8();
}

uint64_t sub_10002FD70()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002FE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100030C8C(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100030CFC(v12, &qword_10006FDA8, &qword_100044D90);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100030CFC(a3, &qword_10006FDA8, &qword_100044D90);

    return v23;
  }

LABEL_8:
  sub_100030CFC(a3, &qword_10006FDA8, &qword_100044D90);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100030150(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100031CB0;

  return v7(a1);
}

uint64_t sub_100030248(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100030314(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100031A7C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000307F0(v11);
  return v7;
}

unint64_t sub_100030314(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100030420(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100030420(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003046C(a1, a2);
  sub_10003059C(&off_10005E678);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_10003046C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100030688(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100030688(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10003059C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000306FC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100030688(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002C750(&qword_10006FE70, &qword_100044F80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000306FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002C750(&qword_10006FE70, &qword_100044F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000307F0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10003083C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100031CAC;

  return sub_10002EF54(v5, v6, v7, v2, v3, v4);
}

__n128 sub_1000308F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100030904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003094C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void type metadata accessor for FMFMonitoredFenceTrigger()
{
  if (!qword_10006FE88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10006FE88);
    }
  }
}

uint64_t sub_100030A0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100030A54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100031CAC;

  return sub_10002EA90(v2, v3);
}

uint64_t sub_100030B00()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100031CAC;

  return sub_10002FBA0(v2, v3, v5);
}

uint64_t sub_100030BC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031CAC;

  return sub_10002FC88(a1, v4, v5, v7);
}

uint64_t sub_100030C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002C750(&qword_10006FDA8, &qword_100044D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030CFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002C750(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100030D5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100031CAC;

  return sub_100030150(a1, v5);
}

uint64_t sub_100030E14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002FD70;

  return sub_10002DC6C(v2, v3, v4, v5, v6);
}

uint64_t sub_100030EDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100030F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100030F34(char *a1, int64_t a2, char a3)
{
  result = sub_100030F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100030F54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002C750(&qword_10006FE68, &qword_100044F78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100031074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1000319C8(*(v6 + 48) + 40 * v9, v17);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_100031A24(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100031A24(a2);
    sub_1000319C8(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000319C8(a2, v17);
    v16 = *v3;
    sub_100031420(v17, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1000311C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002C750(&qword_10006FE60, &qword_100044F70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v29 = *v19;
      v30 = *(v19 + 16);
      v31 = *(v19 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v29;
      *(v15 + 16) = v30;
      *(v15 + 32) = v31;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100031420(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000311C0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100031598();
      goto LABEL_12;
    }

    sub_100031710(v7 + 1);
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1000319C8(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_100031A24(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100031598()
{
  v1 = v0;
  sub_10002C750(&qword_10006FE60, &qword_100044F70);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_1000319C8(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100031710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10002C750(&qword_10006FE60, &qword_100044F70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_1000319C8(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v28);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v28[0];
      v16 = v28[1];
      *(v14 + 32) = v29;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10003193C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1000319C8(v4, v5);
      sub_100031074(v6, v5);
      sub_100031A24(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100031A7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100031AD8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100031B3C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100031CAC;

  return sub_10002F9B0(a1, v5);
}

uint64_t sub_100031BF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002FD70;

  return sub_10002F9B0(a1, v5);
}

uint64_t sub_100031D14()
{
  v1 = *(v0 + OBJC_IVAR____TtC11fmflocatord8FMLFence_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC11fmflocatord8FMLFence_identifier + 8);

  return v1;
}

id sub_100031DF4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC11fmflocatord8FMLFence_identifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v13[OBJC_IVAR____TtC11fmflocatord8FMLFence_latitude] = a4;
  *&v13[OBJC_IVAR____TtC11fmflocatord8FMLFence_longitude] = a5;
  *&v13[OBJC_IVAR____TtC11fmflocatord8FMLFence_radius] = a6;
  *&v13[OBJC_IVAR____TtC11fmflocatord8FMLFence_schedule] = a3;
  v16.receiver = v13;
  v16.super_class = v6;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_100031EA4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC11fmflocatord8FMLFence_identifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v6[OBJC_IVAR____TtC11fmflocatord8FMLFence_latitude] = a4;
  *&v6[OBJC_IVAR____TtC11fmflocatord8FMLFence_longitude] = a5;
  *&v6[OBJC_IVAR____TtC11fmflocatord8FMLFence_radius] = a6;
  *&v6[OBJC_IVAR____TtC11fmflocatord8FMLFence_schedule] = a3;
  v16.receiver = v6;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_100031F54(uint64_t a1)
{
  v2 = type metadata accessor for Fence.Schedule();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  v4 = (__chkstk_darwin)();
  v62 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v62 - v6;
  v7 = type metadata accessor for Fence.Variant();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  __chkstk_darwin(v7);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002C750(&qword_10006FF18, &unk_100044FD0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v70 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v62 - v14;
  v65 = type metadata accessor for Fence.MonitorRegion();
  v15 = *(v65 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v65);
  v66 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v62 - v20;
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  object = type metadata accessor for UUID();
  v24 = *(object - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(object);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Fence.ID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  Fence.id.getter();
  Fence.ID.id.getter();
  (*(v29 + 8))(v32, v28);
  v33 = v64;
  UUID.uuidString.getter();
  (*(v24 + 8))(v27, object);
  v34 = String.lowercased()();
  object = v34._object;

  Fence.region.getter();
  Fence.MonitorRegion.center.getter();
  v36 = v35;
  v37 = *(v15 + 8);
  v38 = v65;
  v37(v23, v65);
  Fence.region.getter();
  Fence.MonitorRegion.center.getter();
  v40 = v39;
  v41 = v21;
  v42 = v67;
  v37(v41, v38);
  v43 = v66;
  Fence.region.getter();
  Fence.MonitorRegion.radius.getter();
  v45 = v44;
  v37(v43, v38);
  Fence.variant.getter();
  v46 = v68;
  v47 = (*(v42 + 88))(v33, v68);
  if (v47 == enum case for Fence.Variant.oneTime(_:) || v47 == enum case for Fence.Variant.recurring(_:))
  {
    (*(v42 + 8))(v33, v46);
    v49 = v71;
    v48 = v72;
    v50 = v73;
    (*(v72 + 56))(v71, 1, 1, v73);
  }

  else if (v47 == enum case for Fence.Variant.scheduled(_:))
  {
    (*(v42 + 96))(v33, v46);
    v49 = v71;
    v48 = v72;
    v50 = v73;
    (*(v72 + 32))(v71, v33, v73);
    (*(v48 + 56))(v49, 0, 1, v50);
  }

  else
  {
    v49 = v71;
    v48 = v72;
    v50 = v73;
    (*(v72 + 56))(v71, 1, 1, v73);
    (*(v42 + 8))(v33, v46);
  }

  v51 = v70;
  sub_1000326AC(v49, v70);
  if ((*(v48 + 48))(v51, 1, v50) == 1)
  {
    sub_10003271C(v49);
    v52 = 0;
  }

  else
  {
    v53 = v63;
    (*(v48 + 32))(v63, v51, v50);
    type metadata accessor for FMLSchedule();
    v54 = v62;
    (*(v48 + 16))(v62, v53, v50);
    v52 = sub_100033554(v54);
    (*(v48 + 8))(v53, v50);
    sub_10003271C(v49);
  }

  v55 = v74;
  v56 = objc_allocWithZone(v74);
  v57 = &v56[OBJC_IVAR____TtC11fmflocatord8FMLFence_identifier];
  v58 = object;
  *v57 = v34._countAndFlagsBits;
  v57[1] = v58;
  *&v56[OBJC_IVAR____TtC11fmflocatord8FMLFence_latitude] = v36;
  *&v56[OBJC_IVAR____TtC11fmflocatord8FMLFence_longitude] = v40;
  *&v56[OBJC_IVAR____TtC11fmflocatord8FMLFence_radius] = v45;
  *&v56[OBJC_IVAR____TtC11fmflocatord8FMLFence_schedule] = v52;
  v75.receiver = v56;
  v75.super_class = v55;
  v59 = objc_msgSendSuper2(&v75, "init");
  v60 = type metadata accessor for Fence();
  (*(*(v60 - 8) + 8))(a1, v60);
  return v59;
}

uint64_t sub_1000326AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002C750(&qword_10006FF18, &unk_100044FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003271C(uint64_t a1)
{
  v2 = sub_10002C750(&qword_10006FF18, &unk_100044FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003280C()
{
  _StringGuts.grow(_:)(55);
  v1._countAndFlagsBits = 0x636E65464C4D463CLL;
  v1._object = 0xEB00000000203A65;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC11fmflocatord8FMLFence_identifier));
  v2._countAndFlagsBits = 0x203A74616C20;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  v3 = *(v0 + OBJC_IVAR____TtC11fmflocatord8FMLFence_latitude);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 0x203A676E6F6C20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = *(v0 + OBJC_IVAR____TtC11fmflocatord8FMLFence_longitude);
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 0x3A73756964617220;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7 = *(v0 + OBJC_IVAR____TtC11fmflocatord8FMLFence_radius);
  Double.write<A>(to:)();
  v8._countAndFlagsBits = 0x6C75646568637320;
  v8._object = 0xEB00000000203A65;
  String.append(_:)(v8);
  v9 = *(v0 + OBJC_IVAR____TtC11fmflocatord8FMLFence_schedule);
  if (v9)
  {
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0;
}

id sub_100032A48()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100032D20()
{
  v0 = type metadata accessor for Fence.DaysOfWeek();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Fence.Schedule();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.daysOfWeek.getter();
  (*(v6 + 8))(v9, v5);
  v10 = Fence.DaysOfWeek.rawValue.getter();
  (*(v1 + 8))(v4, v0);
  return v10;
}

uint64_t sub_100032F2C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v22 = a4;
  v6 = type metadata accessor for Fence.TimeOfDay();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Fence.Schedule();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = Fence.Schedule.Matcher.schedule.getter();
  a3(v17);
  v18 = (*(v12 + 8))(v15, v11);
  v19 = v22(v18);

  (*(v7 + 8))(v10, v6);
  return v19;
}

uint64_t sub_100033110(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Fence.TimeOfDay();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Fence.Schedule();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Fence.Schedule.Matcher.schedule.getter();
  a1(v14);
  v15 = (*(v10 + 8))(v13, v9);
  v16 = a2(v15);
  (*(v5 + 8))(v8, v4);
  return v16;
}

uint64_t sub_100033470()
{
  v0 = type metadata accessor for Fence.Schedule();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.timeZone.getter();
  return (*(v1 + 8))(v4, v0);
}

id sub_100033554(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Fence.Schedule();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Fence.Schedule.Matcher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v2);
  (*(v5 + 16))(v8, a1, v4);
  Fence.Schedule.Matcher.init(schedule:)();
  (*(v10 + 32))(v14 + OBJC_IVAR____TtC11fmflocatord11FMLSchedule_matcher, v13, v9);
  v17.receiver = v14;
  v17.super_class = v2;
  v15 = objc_msgSendSuper2(&v17, "init");
  (*(v5 + 8))(a1, v4);
  return v15;
}

id sub_100033720(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Fence.Schedule();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Fence.Schedule.Matcher();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  Fence.Schedule.Matcher.init(schedule:)();
  (*(v11 + 32))(v2 + OBJC_IVAR____TtC11fmflocatord11FMLSchedule_matcher, v14, v10);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "init");
  (*(v6 + 8))(a1, v5);
  return v15;
}

uint64_t sub_100033A18@<X0>(uint64_t a1@<X8>)
{
  Fence.Schedule.Matcher.nextStartOrEndDate(from:)();
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100033D0C()
{
  v0 = type metadata accessor for Fence.Schedule();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Fence.Schedule.Matcher.schedule.getter();
  v5 = Fence.Schedule.description.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_100033EC4()
{
  v1 = type metadata accessor for TimeZone();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  __chkstk_darwin(v1);
  v40 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Fence.DaysOfWeek();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v37 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Fence.TimeOfDay();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v48);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Fence.Schedule();
  v36[0] = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C750(&qword_100070070, &qword_100045030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045000;
  v49 = 0x756F487472617473;
  v50 = 0xE900000000000072;
  AnyHashable.init<A>(_:)();
  v36[1] = OBJC_IVAR____TtC11fmflocatord11FMLSchedule_matcher;
  v43 = v0;
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.start.getter();
  v46 = *(v12 + 8);
  v47 = v12 + 8;
  v46(v15, v11);
  v17 = Fence.TimeOfDay.hour.getter();
  v18 = v7 + 8;
  v19 = *(v7 + 8);
  v20 = v48;
  v19(v10, v48);
  v44 = v18;
  v45 = v19;
  *(inited + 96) = &type metadata for UInt;
  *(inited + 72) = v17;
  v49 = 0x6E694D7472617473;
  v50 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.start.getter();
  v21 = v36[0];
  v46(v15, v36[0]);
  v22 = Fence.TimeOfDay.minute.getter();
  v19(v10, v20);
  *(inited + 168) = &type metadata for UInt;
  *(inited + 144) = v22;
  v49 = 0x72756F48646E65;
  v50 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.end.getter();
  v23 = v21;
  v24 = v21;
  v25 = v46;
  v46(v15, v23);
  v26 = Fence.TimeOfDay.hour.getter();
  v45(v10, v48);
  *(inited + 240) = &type metadata for UInt;
  *(inited + 216) = v26;
  v49 = 0x6E694D646E65;
  v50 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.end.getter();
  v25(v15, v24);
  v27 = Fence.TimeOfDay.minute.getter();
  v45(v10, v48);
  *(inited + 312) = &type metadata for UInt;
  *(inited + 288) = v27;
  v49 = 0x737961446E617073;
  v50 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for Int;
  *(inited + 360) = 0;
  v49 = 0x6557664F73796164;
  v50 = 0xEA00000000006B65;
  AnyHashable.init<A>(_:)();
  Fence.Schedule.Matcher.schedule.getter();
  v28 = v37;
  Fence.Schedule.daysOfWeek.getter();
  v25(v15, v24);
  LOBYTE(v27) = Fence.DaysOfWeek.rawValue.getter();
  (*(v38 + 8))(v28, v39);
  *(inited + 456) = &type metadata for UInt;
  *(inited + 432) = v27;
  v49 = 0x7A5465636E6566;
  v50 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  Fence.Schedule.Matcher.schedule.getter();
  v29 = v40;
  Fence.Schedule.timeZone.getter();
  v25(v15, v24);
  v30 = v29;
  v31 = TimeZone.identifier.getter();
  v33 = v32;
  (*(v41 + 8))(v30, v42);
  *(inited + 528) = &type metadata for String;
  *(inited + 504) = v31;
  *(inited + 512) = v33;
  v34 = sub_100035F68(inited);
  swift_setDeallocating();
  sub_10002C750(&qword_100070078, &qword_100045038);
  swift_arrayDestroy();
  return v34;
}

id sub_1000345FC()
{
  v1 = objc_allocWithZone(v0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithDictionary:isa];

  return v3;
}

id sub_100034680(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Fence.Schedule.Matcher();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  __chkstk_darwin(v2);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002C750(&unk_100070080, &unk_100045040);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v84 = &v66 - v7;
  v83 = type metadata accessor for TimeZone();
  v78 = *(v83 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v83);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Fence.DaysOfWeek();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  __chkstk_darwin(v10);
  v82 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Fence.TimeOfDay();
  v81 = *(v13 - 8);
  v14 = *(v81 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v66 - v18;
  v20 = type metadata accessor for Fence.Schedule();
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v66 - v26;
  __chkstk_darwin(v25);
  v29 = &v66 - v28;
  v71 = sub_100035104(0, a1);
  v67 = v24;
  v68 = v29;
  v69 = v27;
  v70 = v17;
  v31 = v82;
  v30 = v83;
  v32 = v84;
  sub_100035104(1u, a1);
  Fence.TimeOfDay.init(hour:minute:)();
  sub_100035104(3u, a1);
  sub_100035104(4u, a1);
  v71 = v13;
  Fence.TimeOfDay.init(hour:minute:)();
  sub_100035330(a1);
  Fence.DaysOfWeek.init(rawValue:)();
  v43 = sub_100034F60(a1);
  v45 = v81;
  v46 = v44;
  v47 = v43;

  v48 = v32;
  v49 = v47;
  TimeZone.init(identifier:)();
  v50 = v78;
  if ((*(v78 + 48))(v48, 1, v30) == 1)
  {
    (*(v79 + 8))(v31, v80);
    v51 = *(v45 + 8);
    v52 = v71;
    v51(v70, v71);
    v51(v19, v52);
    sub_100030CFC(v48, &unk_100070080, &unk_100045040);
    sub_100036084();
    swift_allocError();
    *v53 = v49;
    *(v53 + 8) = v46;
    *(v53 + 16) = 0x80;
    swift_willThrow();
    if (qword_1000704A0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10002F924(v33, qword_1000704A8);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to decode Fence schedule form dictionary: %@", v36, 0xCu);
      sub_100030CFC(v37, &qword_10006FDC0, &qword_100044DB8);
    }

    else
    {
    }

    v39 = v85;
    swift_getObjectType();
    v40 = *((swift_isaMask & *v39) + 0x30);
    v41 = *((swift_isaMask & *v39) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {

    (*(v50 + 32))(v73, v48, v30);
    v54 = v68;
    Fence.Schedule.init(start:end:daysOfWeek:timeZone:)();
    v55 = v72;
    v56 = *(v72 + 16);
    v57 = v69;
    v56(v69, v54, v20);
    v58 = ObjectType;
    v59 = objc_allocWithZone(ObjectType);
    v56(v67, v57, v20);
    v60 = v74;
    Fence.Schedule.Matcher.init(schedule:)();
    (*(v75 + 32))(v59 + OBJC_IVAR____TtC11fmflocatord11FMLSchedule_matcher, v60, v76);
    v86.receiver = v59;
    v86.super_class = v58;
    v61 = objc_msgSendSuper2(&v86, "init");
    v62 = *(v55 + 8);
    v62(v57, v20);
    v62(v54, v20);
    v63 = v85;
    swift_getObjectType();
    v64 = *((swift_isaMask & *v63) + 0x30);
    v65 = *((swift_isaMask & *v63) + 0x34);
    swift_deallocPartialClassInstance();
    return v61;
  }
}

uint64_t sub_100034F60(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = sub_100035E5C(v10), (v3 & 1) != 0))
  {
    sub_100031A7C(*(a1 + 56) + 32 * v2, v11);
    sub_100031A24(v10);
    sub_100031A7C(v11, v10);
    if (swift_dynamicCast())
    {
      sub_1000307F0(v11);
      return 0x7A5465636E6566;
    }

    else
    {
      sub_1000362A8(v11, v11[3]);
      v10[0] = swift_getDynamicType();
      sub_10002C750(&qword_1000700C0, &qword_100045178);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      sub_100036084();
      swift_allocError();
      *v9 = v6;
      *(v9 + 8) = v8;
      *(v9 + 16) = 70;
      swift_willThrow();
      return sub_1000307F0(v11);
    }
  }

  else
  {
    sub_100031A24(v10);
    sub_100036084();
    swift_allocError();
    *v5 = xmmword_100045010;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100035104(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x756F487472617473;
  v3 = 0x6557664F73796164;
  v4 = 0x72756F48646E65;
  if (a1 != 3)
  {
    v4 = 0x6E694D646E65;
  }

  if (a1 != 2)
  {
    v3 = v4;
  }

  if (a1)
  {
    v2 = 0x6E694D7472617473;
  }

  if (a1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  v16 = v5;
  AnyHashable.init<A>(_:)();
  if (*(a2 + 16) && (v8 = sub_100035E5C(v17), (v9 & 1) != 0))
  {
    sub_100031A7C(*(a2 + 56) + 32 * v8, v18);
    sub_100031A24(v17);
    sub_100031A7C(v18, v17);
    if (swift_dynamicCast())
    {
      sub_1000307F0(v18);
      return v16;
    }

    else
    {
      sub_1000362A8(v18, v18[3]);
      v17[0] = swift_getDynamicType();
      sub_10002C750(&qword_1000700C0, &qword_100045178);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      sub_100036084();
      swift_allocError();
      *v15 = v12;
      *(v15 + 8) = v14;
      *(v15 + 16) = a1 | 0x40;
      swift_willThrow();
      return sub_1000307F0(v18);
    }
  }

  else
  {
    sub_100031A24(v17);
    sub_100036084();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100035330(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = sub_100035E5C(v10), (v3 & 1) != 0))
  {
    sub_100031A7C(*(a1 + 56) + 32 * v2, v11);
    sub_100031A24(v10);
    sub_100031A7C(v11, v10);
    if (swift_dynamicCast())
    {
      sub_1000307F0(v11);
      return 100;
    }

    else
    {
      sub_1000362A8(v11, v11[3]);
      v10[0] = swift_getDynamicType();
      sub_10002C750(&qword_1000700C0, &qword_100045178);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      sub_100036084();
      swift_allocError();
      *v9 = v6;
      *(v9 + 8) = v8;
      *(v9 + 16) = 66;
      swift_willThrow();
      return sub_1000307F0(v11);
    }
  }

  else
  {
    sub_100031A24(v10);
    sub_100036084();
    swift_allocError();
    *v5 = xmmword_100045020;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100035530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x756F487472617473;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x737961446E617073;
  v7 = 0xE700000000000000;
  if (a1 != 5)
  {
    v6 = 0x7A5465636E6566;
    v5 = 0xE700000000000000;
  }

  v8 = 0x72756F48646E65;
  if (a1 != 3)
  {
    v8 = 0x6E694D646E65;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6E694D7472617473;
  if (a1 != 1)
  {
    v10 = 0x6557664F73796164;
    v9 = 0xEA00000000006B65;
  }

  if (!a1)
  {
    v10 = 0x756F487472617473;
    v9 = 0xE900000000000072;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6E694D7472617473)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEA00000000006B65;
        if (v11 != 0x6557664F73796164)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x737961446E617073)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x7A5465636E6566)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x72756F48646E65)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE600000000000000;
    v3 = 0x6E694D646E65;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_100035758()
{
  *v0;
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100035870()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100035994@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100036534(*a1);
  *a2 = result;
  return result;
}

void sub_1000359C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x756F487472617473;
  v5 = 0xE800000000000000;
  v6 = 0x737961446E617073;
  v7 = 0xE700000000000000;
  if (v2 != 5)
  {
    v6 = 0x7A5465636E6566;
    v5 = 0xE700000000000000;
  }

  v8 = 0x72756F48646E65;
  if (v2 != 3)
  {
    v8 = 0x6E694D646E65;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6E694D7472617473;
  if (v2 != 1)
  {
    v10 = 0x6557664F73796164;
    v9 = 0xEA00000000006B65;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100035AA4()
{
  v0 = type metadata accessor for Logger();
  sub_100031AD8(v0, qword_1000704A8);
  sub_10002F924(v0, qword_1000704A8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100035E5C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100035EA0(a1, v4);
}

unint64_t sub_100035EA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000319C8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100031A24(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100035F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002C750(&qword_1000700C8, &qword_100045180);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000362EC(v4, v13);
      result = sub_100035E5C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10003635C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100036084()
{
  result = qword_1000704C8;
  if (!qword_1000704C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000704C8);
  }

  return result;
}

uint64_t type metadata accessor for FMLSchedule()
{
  result = qword_1000704D0;
  if (!qword_1000704D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003612C()
{
  result = type metadata accessor for Fence.Schedule.Matcher();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000361C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 17))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10003621C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 16) = 0;
    *result = a2 - 30;
    *(result + 8) = 0;
    if (a3 >= 0x1E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

void *sub_1000362A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000362EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002C750(&qword_100070078, &qword_100045038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10003635C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t getEnumTagSinglePayload for FMLSchedule.DictionaryKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMLSchedule.DictionaryKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000364E0()
{
  result = qword_100070660[0];
  if (!qword_100070660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100070660);
  }

  return result;
}

unint64_t sub_100036534(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005EA70, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_100036594(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Bug in fmflocatord configuration. Please raise a radar with this message - %@", &v2, 0xCu);
}

void sub_10003660C(NSObject *a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 environment];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "Environment:\n%@", &v4, 0xCu);
}

void sub_1000367B0(void *a1, NSObject *a2)
{
  v3 = [a1 fm_logID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No account for provider %@", &v4, 0xCu);
}

void sub_100036848(void *a1)
{
  v1 = [a1 fm_logID];
  sub_100007D84(&_mh_execute_header, v2, v3, "%@ deallocating...", v4, v5, v6, v7, 2u);
}

void sub_1000368D0(void *a1)
{
  v1 = [a1 fm_logID];
  sub_100007D84(&_mh_execute_header, v2, v3, "%@ BUG: Locator is not running, but we received a location", v4, v5, v6, v7, 2u);
}

void sub_100036958(void *a1, NSObject *a2)
{
  v3 = [a1 fm_logID];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ deallocating...", &v4, 0xCu);
}

void sub_100036A8C()
{
  v0 = objc_opt_class();
  v1 = sub_100008B3C(v0);
  sub_100008B60(&_mh_execute_header, v2, v3, "Unable to create instance of %@ (%@)", v4, v5, v6, v7, v8);
}

void sub_100036B10(void *a1, NSObject *a2)
{
  v4 = [a1 fm_logID];
  v5 = [a1 commandID];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Handling %@ with command id %@", &v6, 0x16u);
}

void sub_100036BD4(void *a1, NSObject *a2)
{
  v3 = [a1 fm_logID];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ already seen before. Ignoring this & sending the same ack as last time...", &v4, 0xCu);
}

void sub_100036C6C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 serviceName];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@: No command handler found for commandType: %@", &v6, 0x16u);
}

void sub_100036D60(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 serviceName];
  v6 = [a2 description];
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = @"com.apple.mobileme.fmf";
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%@: Received APS message (topic: %@) : \n%@", &v7, 0x20u);
}

void sub_100036E34(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[FMFServiceProvider fenceTriggered:atLocation:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: error: %@", &v2, 0x16u);
}

void sub_100036F04(void *a1, NSObject *a2)
{
  v3 = [a1 serviceName];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@: Publishing location now", &v4, 0xCu);
}

void sub_100036F9C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Showing alert : %@", &v2, 0xCu);
}

void sub_100037014(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No credential found for FMF account: %@!", &v2, 0xCu);
}

void sub_100037108(uint64_t a1, _DWORD *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = *a2;
  sub_100013FAC(&_mh_execute_header, a2, a3, "Successfully created assertion %@ with ID 0x%x", *v3, *&v3[8], *&v3[16]);
}

void sub_100037314()
{
  sub_100018FA4();
  sub_100018FBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000373C4(void *a1)
{
  v1 = [a1 fm_logID];
  sub_100018FA4();
  sub_100007D84(&_mh_execute_header, v2, v3, "%@ deallocating...", v4, v5, v6, v7, v8);
}

void sub_100037448(void *a1)
{
  v1 = [a1 identifier];
  sub_100018F90();
  sub_100018FB0();
  sub_100018FC8(v2, v3, v4, v5, v6);
}

void sub_1000374DC(void *a1)
{
  v1 = [a1 fenceId];
  sub_100018F90();
  sub_100018FB0();
  sub_100018FC8(v2, v3, v4, v5, v6);
}

void sub_100037570()
{
  sub_100018F90();
  sub_100018FBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000375EC()
{
  sub_100018FA4();
  sub_100018FBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000376A0()
{
  sub_100018FA4();
  v3 = 2112;
  v4 = v0;
  sub_100018FC8(&_mh_execute_header, v1, v1, "Could not delete fmf fences file (%@): %@", v2);
}

void sub_10003771C(void *a1)
{
  v1 = [a1 fencesToMonitor];
  sub_100018FA4();
  sub_100007D84(&_mh_execute_header, v2, v3, "Read the following cached FMF fences:  %@", v4, v5, v6, v7, v8);
}

void sub_1000377A0()
{
  sub_100018FA4();
  sub_100018FBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000378C8(void *a1)
{
  v1 = [a1 identifier];
  sub_100018FA4();
  sub_100007D84(&_mh_execute_header, v2, v3, "Received didEnterRegion from CoreLocation for region: %@", v4, v5, v6, v7, v8);
}

void sub_10003794C(void *a1)
{
  v1 = [a1 identifier];
  sub_100018FA4();
  sub_100007D84(&_mh_execute_header, v2, v3, "Received didExitRegion from CoreLocation for region: %@", v4, v5, v6, v7, v8);
}

void sub_1000379D0(void *a1)
{
  v1 = [a1 identifier];
  sub_100018FA4();
  sub_100007D84(&_mh_execute_header, v2, v3, "Received didDetermineState from CoreLocation for region: %@", v4, v5, v6, v7, v8);
}

void sub_100037A54(void *a1)
{
  v1 = [a1 identifier];
  sub_100018F90();
  sub_100018FB0();
  sub_100018FC8(v2, v3, v4, v5, v6);
}

void sub_100037B5C(void *a1)
{
  v1 = [a1 identifier];
  sub_100018FA4();
  sub_100018FB0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

void sub_100037C04(void *a1)
{
  v1 = [a1 identifier];
  sub_100018FA4();
  sub_100007D84(&_mh_execute_header, v2, v3, "Monitoring started for region: %@", v4, v5, v6, v7, v8);
}

void sub_100037C9C(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[CommandHandlerFences handleCommand]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: %@", &v2, 0x16u);
}

void sub_100037D3C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unknown type returned for type = %d", v2, 8u);
}

void sub_100037DB4(void *a1, NSObject *a2)
{
  v3 = [a1 standardLocator];
  v4 = [v3 fm_logID];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Removing standard locator %@", &v5, 0xCu);
}

void sub_100037F50(uint64_t a1, int a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error fetching %@: %d", &v3, 0x12u);
}

void sub_100038074(char a1, char a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Device Cellular capable : %i Activated : %i", v3, 0xEu);
}

void sub_100038270(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412546;
  v4 = @"FMFAllowed";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching %@: %d", &v3, 0x12u);
}

void sub_1000383D0(void *a1, NSObject *a2)
{
  v4 = objc_opt_class();
  v5 = v4;
  v6 = [a1 uniqueId];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Found an active account of type %@ with uniqueId %@. Deactivating it...", &v7, 0x16u);
}

void sub_10003859C(void *a1)
{
  v1 = [a1 fm_logID];
  sub_100018FA4();
  sub_100023664();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003863C(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  v6 = @"(not-nil)";
  if (!a2)
  {
    v6 = @"(nil)";
  }

  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v6;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Using authId %@ & authToken %@", buf, 0x16u);
}

void sub_1000386C4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "NULL body data while sending %@", buf, 0xCu);
}

void sub_10003871C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error serializing the request body into JSON for %@ : %@", buf, 0x16u);
}

void sub_100038784(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 fm_logID];
  sub_100018FA4();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error trying to deserialize JSON response into dictionary for %@. Error :  %@", v6, 0x16u);
}

void sub_100038834(id *a1)
{
  v2 = [*a1 fm_logID];
  v3 = [*a1 alertFromServerResponse];
  sub_100023674();
  sub_100023664();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100038958(void *a1)
{
  v1 = [a1 fm_logID];
  sub_100018FA4();
  sub_100023664();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000389E4(void *a1)
{
  v2 = [a1 fm_logID];
  v3 = [a1 nextRetryTime];
  sub_100023674();
  sub_100023664();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100038AA4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Creating digest out of %@", &v2, 0xCu);
}

void sub_100038B1C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 fm_logID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error serializing volatile device info into JSON for %@ : %@", &v6, 0x16u);
}

void sub_100038BCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered a serializing error for the volatile device info : %@", &v2, 0xCu);
}

void sub_100038C58(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find class %@ in the automation bundle", &v2, 0xCu);
}

void sub_100038DB0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_100038E28(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No credential found for aa_fmfAccount : %@", &v2, 0xCu);
}

void sub_100038EF8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown APSConnection: %@", &v2, 0xCu);
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
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

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}