void sub_100004B00(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [a3 elements];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v26;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v25 + 1) + 8 * i);
      v11 = [v10 identifier];
      if (v11)
      {
        v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
        v13 = v12;
        v14 = v12 != 0;
        if (v12)
        {
          v7 = [v12 unsignedIntValue] | v7;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = [v10 bundleIdentifier];
      if (v15 && ([*(a1 + 32) objectForKeyedSubscript:v15], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = v16;
        v7 = [v16 unsignedIntValue]| v7;
      }

      else
      {
        if (v14)
        {
          goto LABEL_18;
        }

        v17 = daemon_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v30 = v11;
          v31 = 2112;
          v32 = v15;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "SystemUI unknown identifier: '%@'/ '%@'", buf, 0x16u);
        }
      }

LABEL_18:
    }

    v6 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  }

  while (v6);
LABEL_22:

  pthread_mutex_lock(&stru_100972F48);
  v24 = *(*(a1 + 40) + 496);
  v18 = NSPrintF();
  v19 = NSPrintF();
  v20 = daemon_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SystemUI changed: %@ -> %@", buf, 0x16u);
  }

  v21 = *(a1 + 40);
  v22 = *(v21 + 496);
  *(v21 + 496) = v7;
  pthread_mutex_unlock(&stru_100972F48);
  if (v22 != v7)
  {
    v23 = [NSNotificationCenter defaultCenter:v7];
    [v23 postNotificationName:@"com.apple.sharingd.SystemUIChanged" object:0];
  }
}

uint64_t sub_100004E00(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      if ([v5 count])
      {
        v29 = +[NSMutableArray array];
        if (v29)
        {
          v26 = a3;
          v27 = v6;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          obj = v6;
          v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (!v7)
          {
            v9 = 0;
            v10 = 0;
            goto LABEL_26;
          }

          v8 = v7;
          v9 = 0;
          v10 = 0;
          v11 = *v31;
          while (1)
          {
            v12 = 0;
            v13 = v10;
            do
            {
              if (*v31 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v14 = [*(*(&v30 + 1) + 8 * v12) lowercaseString];

              if (a2)
              {
                v15 = v14;
                v14 = +[NSMutableString string];
                v16 = [v15 length];
                v17 = v16 - 1;
                if ((v16 - 1) >= 0)
                {
                  do
                  {
                    v18 = [v15 substringWithRange:{v17, 1}];
                    [v14 appendString:v18];

                    --v17;
                  }

                  while (v17 != -1);
                }
              }

              v9 = v14;
              v19 = [NSMutableData dataWithLength:32];
              if (v19)
              {
                v20 = [v9 dataUsingEncoding:4];
                CC_SHA256([v20 bytes], objc_msgSend(v20, "length"), objc_msgSend(v19, "mutableBytes"));
                v21 = malloc_type_malloc((2 * [v19 length]) | 1, 0x100004077774924uLL);
                if (v21)
                {
                  v22 = v21;
                  [v19 bytes];
                  [v19 length];
                  DataToHexCStringEx();
                  v10 = [NSString stringWithUTF8String:v22];
                  free(v22);
                  goto LABEL_17;
                }
              }

              else
              {
                v20 = 0;
              }

              v10 = 0;
LABEL_17:

              if (v10)
              {
                [v29 addObject:v10];
              }

              v12 = v12 + 1;
              v13 = v10;
            }

            while (v12 != v8);
            v23 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
            v8 = v23;
            if (!v23)
            {
LABEL_26:

              a3 = v26;
              v6 = v27;
              goto LABEL_27;
            }
          }
        }

        a3 = 4294960568;
      }

      else
      {
        v29 = 0;
        v9 = 0;
        v10 = 0;
LABEL_27:
        v24 = v29;
        *a3 = v29;

        a3 = 0;
      }
    }
  }

  else
  {
    a3 = 4294960591;
  }

  return a3;
}

void sub_1000051CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = qword_1009735E0;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v13 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v11;

  sub_1002B3098(0, 0, v8, a4, v14);
}

uint64_t sub_100005358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000053A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000053E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000054C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005508(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10028088C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_100005568(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 systemUIFlags];

  if ((v3 & 2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) wasInLockScreen];
  }

  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if ((v3 & 2) != 0)
    {
      v6 = @"YES";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "on lock screen: %@", &v9, 0xCu);
  }

  result = [*(a1 + 32) setWasInLockScreen:(v3 >> 1) & 1];
  if (v4)
  {
    v8 = paired_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transitioned out of lock screen.", &v9, 2u);
    }

    return [*(a1 + 32) beginUnlockIfNotOnLockScreen];
  }

  return result;
}

uint64_t sub_100005798(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005DF0;

  return v7(a1);
}

uint64_t sub_100005890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100005944(a1, v4, v5, v6);
}

uint64_t sub_100005944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1000059E0, v5, 0);
}

uint64_t sub_1000059E0()
{
  v1 = *(v0 + 16);
  v2 = [*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus) systemUIFlags];
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if ((v2 & 0x80000) != 0)
  {
    if (v3)
    {
      if (qword_100973548 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000C4AC(v9, qword_100975E80);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "SDAirDropNearFieldService Buddy visible, stopping", v12, 2u);
      }

      v13 = *(v0 + 16);

      sub_1002B9D54();
    }
  }

  else if (!v3)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100975E80);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "SDAirDropNearFieldService Buddy not visible, attempting to start", v7, 2u);
    }

    v8 = *(v0 + 16);

    sub_1000286E8(0, 1, 0, 0);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100005C04()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005CF8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100006190(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000067C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 256), 8);
  _Block_object_dispose((v41 - 208), 8);
  _Block_object_dispose((v41 - 160), 8);
  _Block_object_dispose((v41 - 112), 8);
  _Block_object_dispose((v41 - 64), 8);
  _Unwind_Resume(a1);
}

id sub_100007080(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(*(a1 + 32) + 168) systemUIFlags];
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_100007118(v1);
  }

  if (([*v1 _systemCanTrigger] & 1) == 0)
  {
    [*(*v1 + 18) requestRemoveAll];
  }

  v2 = *v1;

  return [v2 _update];
}

void sub_100007694(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (dword_1009731D8 <= 20)
  {
    if (dword_1009731D8 != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      sub_100007730();
      v5 = v7;
    }
  }

  [*(a1 + 32) _deviceDiscoveryBLEDeviceChanged:v5 type:15 changes:a3];
}

uint64_t sub_1000087C8(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void sub_1000087F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100008814(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100008880(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void sub_1000088A0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000088E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100008908(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100008948(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

double sub_100008A24()
{
  result = 1.0;
  if (v0 <= 1.0)
  {
    return v0;
  }

  return result;
}

void sub_100008F7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v10, v4))
    {
      sub_100009068();
      v3 = v10;
    }
  }

  v5 = *(a1 + 32);
  if (!v5[30])
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = *(a1 + 32);
    v8 = *(v7 + 240);
    *(v7 + 240) = v6;

    v3 = v10;
    v5 = *(a1 + 32);
  }

  [v5 _deviceDiscoveryBLEDeviceFound:v3 type:16];
  v9 = [v10 identifier];
  if (v9)
  {
    [*(*(a1 + 32) + 240) setObject:v10 forKeyedSubscript:v9];
  }
}

void sub_100009C74(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_1009731D8 <= 50 && (dword_1009731D8 != -1 || _LogCategory_Initialize()))
  {
    sub_100009D28();
  }

  v3 = [v4 identifier];
  if (v3)
  {
    [*(*(a1 + 32) + 160) removeObjectForKey:v3];
  }

  [*(a1 + 32) _deviceDiscoveryBLEDeviceLost:v4 type:15];
}

void sub_10000A4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10000B694(uint64_t a1, const void *a2)
{
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100232660();
  }

  if (!CFEqual(a2, SBSEventObserverEventDimmed) && !CFEqual(a2, SBSEventObserverEventUndimmed))
  {
    if (CFEqual(a2, SBSEventObserverEventContinuityUIWasObscured))
    {
      v5 = &__kCFBooleanFalse;
LABEL_9:
      v6 = *(a1 + 32);
      v7 = *(v6 + 232);
      *(v6 + 232) = v5;

      [*(a1 + 32) postNotification:@"com.apple.sharingd.HandoffVisibilityChanged"];
      goto LABEL_10;
    }

    if (CFEqual(a2, SBSEventObserverEventContinuityUIBecameVisible))
    {
      v5 = &__kCFBooleanTrue;
      goto LABEL_9;
    }

    v9 = daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SDStatusMonitor: SBSEventObserved unknown event %@", &v10, 0xCu);
    }
  }

LABEL_10:
  if (CFEqual(a2, SBSEventObserverEventContinuityUIBecameVisible))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.sharing.SpringBoard.startDiscovery", 0, 0, 1u);
  }
}

uint64_t sub_10000C1F8(const __CFString *a1, uint64_t a2)
{
  v3 = sub_10000C2C4(a1);
  if (v3)
  {
    v4 = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v9 = sub_100118270;
    v10 = &unk_1008D0D20;
    v11 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v4);
    }

    else
    {
      if (v5 != CFStringGetTypeID())
      {
LABEL_7:
        v9(v8);
        return a2;
      }

      Value = sub_10011814C(v4);
    }

    a2 = Value;
    goto LABEL_7;
  }

  return a2;
}

CFPropertyListRef sub_10000C2C4(const __CFString *a1)
{
  result = CFPreferencesCopyAppValue(a1, @"/private/var/Managed Preferences/mobile/com.apple.Sharing");
  if (!result)
  {

    return CFPreferencesCopyAppValue(a1, @"com.apple.Sharing");
  }

  return result;
}

id sub_10000C344(void *a1)
{
  v1 = a1;
  v16 = 0u;
  v17 = 0u;
  xpc_connection_get_audit_token();
  memset(&v15, 0, sizeof(v15));
  v2 = SecTaskCreateWithAuditToken(0, &v15);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", 0);
    if (v4)
    {
      v5 = v4;
      if ([v4 length] < 0xB || objc_msgSend(v5, "characterAtIndex:", 10) != 46)
      {
        goto LABEL_19;
      }

      v6 = 0;
      do
      {
        v7 = [v5 characterAtIndex:v6];
        v9 = v7 - 65 < 0x1A || v7 - 48 < 0xA;
      }

      while (v9 && v6++ < 9);
      if (!v9 || ([v5 substringWithRange:{11, objc_msgSend(v5, "length") - 11}], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_19:
        v11 = v5;
      }
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    pid = xpc_connection_get_pid(v1);
    v13 = daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001F3A54(pid, v13);
    }

    v11 = 0;
  }

  return v11;
}

uint64_t sub_10000C4AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C4E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C658(v11, 0, 0, 1, a1, a2);
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
    sub_10000C5B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C60C(v11);
  return v7;
}

uint64_t sub_10000C5B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C60C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000C658(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100016134(a5, a6);
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

uint64_t sub_10000C764(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return qword_100808A20[a1 - 1];
  }
}

uint64_t sub_10000C788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10028088C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C7F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&qword_100976308, &unk_1007F94E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SDAuthenticationSessionMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &qword_100976308, &unk_1007F94E0);
    sub_1000122F0(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100005508(v8, &qword_100976308, &unk_1007F94E0);
  }

  else
  {
    sub_10000CA10(a1, v12, type metadata accessor for SDAuthenticationSessionMetadata);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10000E9A8(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_10000CA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CA78(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = a5(0);
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  v15 = a4[7];
  v16 = a6(0);
  result = sub_100581708(a3, v15 + *(*(v16 - 8) + 72) * a1, a7);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

Swift::Int sub_10000CB70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009772C8, &qword_1007FA180);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

char *sub_10000CCAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100974F58, &qword_1007F8360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10000CDB0(char *a1, int64_t a2, char a3)
{
  result = sub_10000CCAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000CDD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_10000CDE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000CE2C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_10000CEB0(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_10000CF7C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100973C50 != -1)
  {
    v26 = a1;
    swift_once();
    a1 = v26;
  }

  if (!qword_1009A10A8)
  {
    return 0;
  }

  if ((a1 - 3) > 0x14)
  {
    v5 = 0;
  }

  else
  {
    v5 = byte_1007F90FA[a1 - 3];
  }

  v7 = *(v3 + 112);
  isa = qword_1009A10A8;
  if (sub_10000D2C0(v5, v7))
  {
    if (SFDeviceIsRealityDevice())
    {
      if (qword_100973540 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000C4AC(v9, qword_100975CC0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Manually triggering state change for urgent arming path on companion device", v12, 2u);
      }

      v13 = [objc_opt_self() standardUserDefaults];
      v14 = String._bridgeToObjectiveC()();
      v6 = 1;
      [v13 setBool:1 forKey:v14];

      sub_1002ABCDC(1);
    }

    else
    {
      if (qword_100973540 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_100975CC0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "autool authenticate on iPhone is unsupported. Run the command on the companion device", v18, 2u);
      }

      v19 = isa;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v20 = sub_100010F88(19, 0, 0xE000000000000000);
      v22 = v21;
      sub_1000115C8();
      swift_allocError();
      *v23 = v20;
      *(v23 + 8) = v22;
      v24 = _convertErrorToNSError(_:)();
      [a3 manager:v19 didFailAuthenticationFor:isa error:v24];

      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_10000D2C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x636F6C6E5563616DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEE00656E6F68506BLL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6C436B636F6C6E75;
    v5 = 0xEC00000043737361;
  }

  else if (a1 == 3)
  {
    v4 = 0x646F4D7473657567;
    v5 = 0xEF6B636F6C6E5565;
  }

  else
  {
    v4 = 0x6E556E6F69736976;
    v5 = 0xEF534F696B636F6CLL;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x636F6C6E5563616DLL;
    v8 = 0xEE00656E6F68506BLL;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6C436B636F6C6E75;
    v6 = 0xEC00000043737361;
    v7 = 0x646F4D7473657567;
    v8 = 0xEF6B636F6C6E5565;
    if (a2 != 3)
    {
      v7 = 0x6E556E6F69736976;
      v8 = 0xEF534F696B636F6CLL;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10000D494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D4DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000D524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10000D494(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

Swift::Int sub_10000D6C4(unint64_t a1)
{
  if (a1 > 0x17)
  {
    return sub_10000CB70(&off_1008D74E0);
  }

  else
  {
    return sub_10000CB70(off_1008E5CC0[a1]);
  }
}

unint64_t sub_10000DA98(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_10000F068(a1, v4);
}

void sub_10000DB04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v127 = a8;
  v129 = a7;
  v131 = a6;
  v133 = a5;
  v134 = a4;
  v130 = a9;
  v13 = type metadata accessor for UTType();
  v135 = *(v13 - 8);
  v136 = v13;
  v14 = *(v135 + 64);
  __chkstk_darwin(v13);
  v16 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL.DirectoryHint();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for URL();
  v137 = *(v142 - 8);
  v22 = *(v137 + 64);
  v23 = __chkstk_darwin(v142);
  v25 = (&v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v139 = (&v125 - v26);
  v27 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
  swift_beginAccess();
  v132 = v27;
  v28 = *(a1 + v27);
  v29 = *(v28 + 16);
  v140 = a3;
  v138 = a2;
  if (v29)
  {

    v30 = sub_100012854(a2, a3);
    if (v31)
    {
      v128 = a1;
      v32 = *(*(v28 + 56) + 8 * v30);

      v34 = &v125;
      v35 = *(v32 + 112);
      __chkstk_darwin(v33);
      *(&v125 - 2) = sub_1004F6624;
      *(&v125 - 1) = v32;
      v126 = v32;

      os_unfair_lock_lock(v35 + 4);
      v36 = v141;
      sub_1000156CC(v143);
      v141 = v36;
      v37 = v35 + 4;
      if (v36)
      {
        os_unfair_lock_unlock(v37);
        __break(1u);
        goto LABEL_74;
      }

      os_unfair_lock_unlock(v37);
      if (v143[0])
      {
        v39 = v140;
        v40 = v141;
        v41 = v128;
        v42 = v138;
        v43 = v126;
        if ((v131 & 1) == 0)
        {
LABEL_6:
          v128 = v41;
          if (qword_100973998 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000C4AC(v44, qword_100981A10);

          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v143[0] = v48;
            *v47 = 136315138;

            v50 = sub_10031E940(v49);
            v51 = v42;
            v53 = v52;

            v54 = sub_10000C4E4(v50, v53, v143);
            v42 = v51;

            *(v47 + 4) = v54;
            _os_log_impl(&_mh_execute_header, v45, v46, "Loaded LocalLTK %s, return it for non-pairing flows", v47, 0xCu);
            sub_10000C60C(v48);

            v39 = v140;
          }

          v55 = v128;
LABEL_11:
          v56 = v132;
          swift_beginAccess();

          v57 = *(v55 + v56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v144 = *(v55 + v56);
          *(v55 + v56) = 0x8000000000000000;
          sub_10057BEDC(v43, v42, v39, isUniquelyReferenced_nonNull_native);

          *(v55 + v56) = v144;
          swift_endAccess();

          *v130 = v43;
          return;
        }

        goto LABEL_55;
      }

      a1 = v128;
      swift_beginAccess();
      v59 = v140;

      sub_1002B21EC(0, v138, v59);
      swift_endAccess();
    }

    else
    {
    }
  }

  v42 = v138;
  v60 = v140;
  v143[0] = v138;
  v143[1] = v140;
  (*(v18 + 104))(v21, enum case for URL.DirectoryHint.notDirectory(_:), v17);
  sub_10001229C();
  URL.appending<A>(path:directoryHint:)();
  (*(v18 + 8))(v21, v17);
  static UTType.propertyList.getter();
  v61 = v139;
  URL.appendingPathExtension(for:)();
  (*(v135 + 8))(v16, v136);
  v62 = *(v137 + 8);
  v62(v25, v142);
  v63 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v64 = a1;
  v65 = String._bridgeToObjectiveC()();

  v66 = [v63 fileExistsAtPath:v65];

  if (v66)
  {
    v67 = v141;
    v43 = sub_1004F57A4(v61);
    v68 = v61;
    v40 = v67;
    if (!v67)
    {
      v41 = v64;
      v42 = v138;
      v39 = v140;
      if (*(v43 + 16) == v138 && *(v43 + 24) == v140 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v69 = *(v43 + 32);

        if ((sub_10000D2C0(v69, v134) & 1) != 0 && *(v43 + 33) == (v133 & 1))
        {
          v62(v139, v142);

          goto LABEL_54;
        }
      }

      else
      {
      }

      if (qword_100973998 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_10000C4AC(v76, qword_100981A10);

      v77 = Logger.logObject.getter();
      v74 = v39;
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v128 = v41;
        v79 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v143[0] = v141;
        *v79 = 136315906;

        v81 = sub_10031E940(v80);
        v82 = v43;
        v83 = v42;
        v85 = v84;
        v126 = v82;

        v86 = sub_10000C4E4(v81, v85, v143);

        *(v79 + 4) = v86;
        *(v79 + 12) = 2080;
        v87 = sub_10000C4E4(v83, v140, v143);
        v88 = v134;
        *(v79 + 14) = v87;
        v89 = 0xE700000000000000;
        v90 = 0x6E776F6E6B6E75;
        *(v79 + 22) = 2080;
        v91 = 0xEC00000043737361;
        v92 = 0x6C436B636F6C6E75;
        v93 = 0xEF6B636F6C6E5565;
        v94 = 0x646F4D7473657567;
        if (v88 != 3)
        {
          v94 = 0x6E556E6F69736976;
          v93 = 0xEF534F696B636F6CLL;
        }

        if (v88 != 2)
        {
          v92 = v94;
          v91 = v93;
        }

        if (v88)
        {
          v90 = 0x636F6C6E5563616DLL;
          v89 = 0xEE00656E6F68506BLL;
        }

        if (v88 <= 1)
        {
          v95 = v90;
        }

        else
        {
          v95 = v92;
        }

        if (v88 <= 1)
        {
          v96 = v89;
        }

        else
        {
          v96 = v91;
        }

        v97 = sub_10000C4E4(v95, v96, v143);

        *(v79 + 24) = v97;
        *(v79 + 32) = 2080;
        if (v133)
        {
          v98 = 7955787;
        }

        else
        {
          v98 = 1801678668;
        }

        if (v133)
        {
          v99 = 0xE300000000000000;
        }

        else
        {
          v99 = 0xE400000000000000;
        }

        v100 = sub_10000C4E4(v98, v99, v143);

        *(v79 + 34) = v100;
        _os_log_impl(&_mh_execute_header, v77, v78, "Loaded LocalLTK %s has different identifier:%s or feature:%s or role:%s", v79, 0x2Au);
        swift_arrayDestroy();

        v43 = v126;

        v62(v139, v142);
        v41 = v128;
        v39 = v140;
        v42 = v138;
LABEL_54:

        if ((v131 & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_55:
        if (v129)
        {
          v55 = v41;
        }

        else
        {
          v55 = v41;
          v25 = *(v43 + 112);
          __chkstk_darwin(v38);
          *(&v125 - 2) = sub_1003FC51C;
          *(&v125 - 1) = v43;
          os_unfair_lock_lock(v25 + 4);
          sub_100012268(v143);
          if (v40)
          {
LABEL_75:
            os_unfair_lock_unlock(v25 + 4);
            __break(1u);
            return;
          }

          v40 = 0;
          v102 = a10;
          os_unfair_lock_unlock(v25 + 4);
          v103 = v143[0];
          if (a10)
          {
            v102 = (sub_100569230(v127, a10, v143[0]) & 1) != 0 && *(v103 + 16) == 1;
          }

          v109 = *(v103 + 16);

          if (v109 && !v102)
          {
            if (qword_100973998 != -1)
            {
              swift_once();
            }

            v110 = type metadata accessor for Logger();
            sub_10000C4AC(v110, qword_100981A10);

            v111 = Logger.logObject.getter();
            v112 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              v114 = swift_slowAlloc();
              v143[0] = v114;
              *v113 = 136315138;

              v116 = sub_10031E940(v115);
              v141 = 0;
              v117 = v42;
              v119 = v118;

              v120 = sub_10000C4E4(v116, v119, v143);
              v42 = v117;

              *(v113 + 4) = v120;
              _os_log_impl(&_mh_execute_header, v111, v112, "Found loaded LocalLTK %s, return it for pairing", v113, 0xCu);
              sub_10000C60C(v114);

              v39 = v140;
            }

            goto LABEL_11;
          }
        }

        v25 = &v125;
        v34 = *(v43 + 112);
        __chkstk_darwin(v38);
        *(&v125 - 2) = sub_1004F6608;
        *(&v125 - 1) = v43;
        os_unfair_lock_lock(v34 + 4);
        sub_1002F5418(v101);
        if (!v40)
        {
          os_unfair_lock_unlock(v34 + 4);
          v41 = v55;
          swift_beginAccess();
          sub_1002D3D04(v42, v39);
          swift_endAccess();

          v75 = v134;
          v70 = v133 & 1;
          goto LABEL_59;
        }

LABEL_74:
        os_unfair_lock_unlock(v34 + 4);
        __break(1u);
        goto LABEL_75;
      }

      v62(v139, v142);
LABEL_53:
      v39 = v74;
      goto LABEL_54;
    }

LABEL_24:
    v62(v68, v142);
    return;
  }

  v70 = v133 & 1;
  v71 = v141;
  v72 = sub_10000F2E0(v42, v60, v134, v133 & 1);
  v40 = v71;
  if (v71)
  {
    v68 = v139;
    goto LABEL_24;
  }

  v73 = v72;
  v41 = v64;
  v74 = v60;
  v62(v139, v142);
  if (v73)
  {
    v43 = v73;
    goto LABEL_53;
  }

  v75 = v134;
  if (v131)
  {
    v39 = v60;
LABEL_59:
    v104 = sub_1004F5BA4(v42, v39, v75, v70);
    v105 = v39;
    v106 = v132;
    swift_beginAccess();

    v107 = *(v41 + v106);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v144 = *(v41 + v106);
    *(v41 + v106) = 0x8000000000000000;
    sub_10057BEDC(v104, v42, v105, v108);

    *(v41 + v106) = v144;
    swift_endAccess();

    *v130 = v104;
    return;
  }

  v121 = sub_100010F88(10, 0xD00000000000001ELL, 0x8000000100793E80);
  v123 = v122;
  sub_1000115C8();
  swift_allocError();
  *v124 = v121;
  *(v124 + 8) = v123;
  swift_willThrow();
}

uint64_t sub_10000E9A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10000EBD4(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for SDAuthenticationSessionMetadata(0);
      return sub_100581638(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for SDAuthenticationSessionMetadata);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1002D0718();
    goto LABEL_7;
  }

  sub_1005752E4(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_10000EBD4(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_10000CA78(v15, v12, a1, v21, &type metadata accessor for UUID, type metadata accessor for SDAuthenticationSessionMetadata, type metadata accessor for SDAuthenticationSessionMetadata);
}

unint64_t sub_10000EBD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10000D494(&qword_100976170, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10000D524(a1, v5, &type metadata accessor for UUID, &qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

uint64_t sub_10000ECA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000ED10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000ED78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EDE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EE48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EEB0(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return qword_1007F4E88[(a1 - 1)];
  }
}

uint64_t sub_10000EEDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SFAutoUnlockDeviceType(0);
  sub_10000CE2C(&qword_100974F50, type metadata accessor for SFAutoUnlockDeviceType);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000CE74(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

BOOL sub_10000EF9C(Swift::UInt8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

unint64_t sub_10000F068(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10000F0D8()
{
  sub_10028088C(&qword_100974CD0, &qword_1007F8230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  sub_10000FE00();
  v1 = kSecClass;
  v2 = kSecClassGenericPassword;
  AnyHashable.init<A>(_:)();
  *(inited + 80) = kSecAttrAccessGroup;
  v3 = kSecAttrAccessGroup;
  AnyHashable.init<A>(_:)();
  *(inited + 128) = kSecAttrAccount;
  v4 = kSecAttrAccount;
  AnyHashable.init<A>(_:)();
  *(inited + 176) = kSecAttrService;
  v5 = kSecAttrService;

  AnyHashable.init<A>(_:)();
  *(inited + 224) = kSecAttrIsInvisible;
  v6 = kSecAttrIsInvisible;
  AnyHashable.init<A>(_:)();
  v7 = sub_10000FE58(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009746A8, &qword_1007F6588);
  swift_arrayDestroy();
  return v7;
}

id sub_10000F2E0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = sub_10000F0D8();
  sub_100010204(v9);
  v10 = sub_100010858();
  v12 = v11;

  if (v12 >> 60 == 15)
  {
    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100981A10);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v79[0] = v17;
      *v16 = 136315138;
      type metadata accessor for CFString(0);
      sub_100010F40(&qword_100975630, type metadata accessor for CFString);
      v18 = Dictionary.description.getter();
      v20 = v19;

      v21 = sub_10000C4E4(v18, v20, v79);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to query keychain with %s", v16, 0xCu);
      sub_10000C60C(v17);
    }

    else
    {
    }

    goto LABEL_16;
  }

  v77 = a3;
  v22 = objc_allocWithZone(SDAutoUnlockLTKInfo);
  sub_100294008(v10, v12);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10028BCC0(v10, v12);
  v24 = [v22 initWithData:isa];

  if (!v24)
  {

    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100981A10);
    sub_100294008(v10, v12);
    v14 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    sub_10028BCC0(v10, v12);
    if (!os_log_type_enabled(v14, v33))
    {

      sub_10028BCC0(v10, v12);
      return 0;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79[0] = v35;
    *v34 = 136315138;
    sub_100294008(v10, v12);
    v36 = Data.description.getter();
    v38 = v37;
    sub_10028BCC0(v10, v12);
    v39 = sub_10000C4E4(v36, v38, v79);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v14, v33, "Failed to deserialize SDAutoUnlockLTKInfo with %s", v34, 0xCu);
    sub_10000C60C(v35);

    sub_10028BCC0(v10, v12);
LABEL_16:

    return 0;
  }

  v73 = a4;
  v74 = v10;
  v25 = &selRef_loadManaged;
  v76 = v24;
  result = [v24 ltk];
  if (!result)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v27 = result;
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      memset(v79, 0, 14);
      goto LABEL_29;
    }

    v40 = *(v28 + 16);
    v70 = *(v28 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v40, __DataStorage._offset.getter()))
    {
      goto LABEL_46;
    }

    if (!__OFSUB__(v70, v40))
    {
LABEL_27:
      __DataStorage._length.getter();
      sub_100310E8C(v77 == 2, v79);
      v41 = LODWORD(v79[0]);
      v25 = &selRef_loadManaged;
      goto LABEL_30;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v31)
  {
    if (v28 >> 32 >= v28)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v28, __DataStorage._offset.getter()))
      {
        goto LABEL_27;
      }

LABEL_47:
      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }

  v79[0] = v28;
  LOWORD(v79[1]) = v30;
  BYTE2(v79[1]) = BYTE2(v30);
  BYTE3(v79[1]) = BYTE3(v30);
  BYTE4(v79[1]) = BYTE4(v30);
  BYTE5(v79[1]) = BYTE5(v30);
LABEL_29:
  sub_100310E8C(v77 == 2, &v78);
  v41 = v78;
LABEL_30:
  sub_100311810(v41, 0xD000000000000020, 0x8000000100793EA0);
  if (v4)
  {

    sub_100026AC0(v28, v30);
    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000C4AC(v42, qword_100981A10);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to validate previously saved local LTK, error: %@, will try to re-generate", v45, 0xCu);
      sub_10028924C(v46);

      sub_10028BCC0(v74, v12);
    }

    else
    {
      sub_10028BCC0(v74, v12);
    }

    return 0;
  }

  sub_100026AC0(v28, v30);
  result = [v76 v25[88]];
  if (!result)
  {
    goto LABEL_49;
  }

  v48 = result;
  v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v49;

  result = [v76 ltkID];
  if (!result)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  v50 = result;
  v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v52;
  v71 = v51;

  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  swift_weakInit();
  _s8LocalLTKCMa();
  v55 = swift_allocObject();
  *(v55 + 104) = &_swiftEmptyDictionarySingleton;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v56 = swift_allocObject();
  *(v56 + 16) = 0;

  *(v55 + 112) = v56;
  *(v55 + 120) = 1;
  *(v55 + 16) = a1;
  *(v55 + 24) = a2;
  *(v55 + 32) = v77;
  *(v55 + 33) = v73 & 1;
  *(v55 + 72) = v75;
  *(v55 + 80) = v72;
  *(v55 + 88) = v71;
  *(v55 + 96) = v69;
  *(v55 + 40) = sub_1004F66C0;
  *(v55 + 48) = v53;
  *(v55 + 56) = sub_1004F66C4;
  *(v55 + 64) = v54;
  v57 = v55;

  if (qword_100973998 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_10000C4AC(v58, qword_100981A10);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v79[0] = v62;
    *v61 = 136315138;
    v63 = v57;

    v65 = sub_10031E940(v64);
    v67 = v66;

    v68 = sub_10000C4E4(v65, v67, v79);

    *(v61 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v59, v60, "Loaded from keychain: %s", v61, 0xCu);
    sub_10000C60C(v62);

    sub_10028BCC0(v74, v12);

    return v63;
  }

  else
  {
    sub_10028BCC0(v74, v12);

    return v55;
  }
}

uint64_t sub_10000FDB4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000FE00()
{
  result = qword_100975630;
  if (!qword_100975630)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975630);
  }

  return result;
}

unint64_t sub_10000FE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009746A0, &qword_1007F6580);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v14, &qword_1009746A8, &qword_1007F6588);
      v5 = v14;
      result = sub_10000FFF8(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
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

uint64_t sub_10000FF90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10028088C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000FFF8(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10000D494(&qword_100975420, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000100F8(a1, v4);
}

uint64_t sub_1000100AC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

unint64_t sub_1000100F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10000D494(&qword_100975420, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100010204(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&qword_100974630, &unk_1007F6570);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  type metadata accessor for CFString(0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v32 >= v26)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v32);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v34 = v33 | (v32 << 6);
          v35 = *(*(a1 + 48) + 8 * v34);
          sub_100010684(*(a1 + 56) + 40 * v34, v43);
          v42 = v35;
          v45 = v43[0];
          v46 = v43[1];
          v47 = v44;
          v36 = v35;
          swift_dynamicCast();
          sub_1000106E0((v48 + 8), v50);
          sub_1000106E0(v50, v41);
          sub_1000106E0(v41, &v49);
          result = sub_10000FFF8(v36);
          if (v37)
          {
            v28 = v2[6];
            v29 = *(v28 + 8 * result);
            *(v28 + 8 * result) = v36;
            v30 = result;

            v31 = (v2[7] + 32 * v30);
            sub_10000C60C(v31);
            result = sub_1000106E0(&v49, v31);
            v27 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v2[2] >= v2[3])
            {
              goto LABEL_41;
            }

            *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
            *(v2[6] + 8 * result) = v36;
            result = sub_1000106E0(&v49, (v2[7] + 32 * result));
            v38 = v2[2];
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_42;
            }

            v2[2] = v40;
            v27 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v32 = v27;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 8);

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = __clz(__rbit64(v7)) | (v12 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      sub_100010684(*(a1 + 56) + 40 * v15, v50);
      v49 = v16;
      v45 = v50[0];
      v46 = v50[1];
      v47 = v51;
      v17 = v16;
      swift_dynamicCast();
      sub_1000106E0((v48 + 8), v43);
      sub_1000106E0(v43, v48);
      v18 = v2[5];
      Hasher.init(_seed:)();
      sub_100010780(&qword_100975420, type metadata accessor for CFString);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*&v10[8 * (v20 >> 6)]) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *&v10[8 * v21];
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*&v10[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *&v10[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      v7 &= v7 - 1;
      *(v2[6] + 8 * v13) = v17;
      result = sub_1000106E0(v48, (v2[7] + 32 * v13));
      ++v2[2];
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

_OWORD *sub_1000106E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000106F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000107C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010858()
{
  v18 = &type metadata for Bool;
  LOBYTE(v17) = 1;
  sub_1000106E0(&v17, result);

  v0 = kSecReturnData;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100010B44(result, v0, isUniquelyReferenced_nonNull_native);

  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_10000FE00();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = SecItemCopyMatching(isa, result);

  if (v3 == -25300)
  {
    if (qword_100973510 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100974CB8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v17 = v8;
      *v7 = 136315138;

      v9 = Dictionary.description.getter();
      v11 = v10;

      v12 = sub_10000C4E4(v9, v11, &v17);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Could not find keychain item, query: %s", v7, 0xCu);
      sub_10000C60C(v8);
    }

    v13 = 0;
  }

  else
  {
    if (result[0])
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  swift_unknownObjectRelease();
  return v13;
}

_OWORD *sub_100010B44(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10000FFF8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100010C84();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1005712AC(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_10000FFF8(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_10000C60C(v20);

    return sub_1000106E0(a1, v20);
  }

  else
  {
    sub_100010E04(v8, a2, a1, v19);

    return a2;
  }
}

id sub_100010C84()
{
  v1 = v0;
  sub_10028088C(&qword_100974630, &unk_1007F6570);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000C5B0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000106E0(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

_OWORD *sub_100010E04(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000106E0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

Swift::Int sub_100010E6C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100010ED4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100010F40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011040(&_swiftEmptyArrayStorage);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v13 = &type metadata for String;
  *&v12 = a2;
  *(&v12 + 1) = a3;
  sub_1000106E0(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100011170(v11, v6, v8, isUniquelyReferenced_nonNull_native);

  return a1;
}

unint64_t sub_100011040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_100975640, &unk_1007F64E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v13, &qword_1009744D0, &qword_1007F8A20);
      v5 = v13;
      v6 = v14;
      result = sub_100012854(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000106E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_100011170(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1002CDFF4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100011310(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000C60C(v23);

    return sub_1000106E0(a1, v23);
  }

  else
  {
    sub_100011FD8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_100011310(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10028088C(&unk_100975640, &unk_1007F64E0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1000106E0(v25, v37);
      }

      else
      {
        sub_10000C5B0(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1000106E0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_1000115C8()
{
  result = qword_100981980;
  if (!qword_100981980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981980);
  }

  return result;
}

uint64_t sub_100011630(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011678(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_1000116BC(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v5 = sub_100012854(v3, v4);
    v7 = v6;

    if (v7)
    {
      sub_10000C5B0(*(a2 + 56) + 32 * v5, v10);
      if (swift_dynamicCast())
      {
        return v9;
      }
    }
  }

  else
  {
  }

  return 0xD000000000000015;
}

uint64_t sub_100011780(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_100011814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1000118CC(int a1)
{
  if (a1 <= 18)
  {
    if (a1 <= 11)
    {
      goto LABEL_20;
    }

    if (a1 == 12)
    {
      goto LABEL_37;
    }

    if (a1 == 17)
    {
LABEL_28:
      v14 = String._bridgeToObjectiveC()();
      v15 = SFLocalizedStringForKey();

      if (v15)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = String._bridgeToObjectiveC()();
        v4 = SFLocalizedStringForKey();

        if (v4)
        {
          goto LABEL_48;
        }

        __break(1u);
        goto LABEL_31;
      }

      goto LABEL_51;
    }

    if (a1 != 18)
    {
      goto LABEL_46;
    }

    v1 = String._bridgeToObjectiveC()();
    v2 = SFLocalizedStringForKey();

    if (!v2)
    {
      goto LABEL_52;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    if (v4)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_14:
    if (a1 == 25)
    {
      goto LABEL_43;
    }

    if (a1 == 26)
    {
LABEL_34:
      v20 = String._bridgeToObjectiveC()();
      v21 = SFLocalizedStringForKey();

      if (v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = String._bridgeToObjectiveC()();
        v4 = SFLocalizedStringForKey();

        if (v4)
        {
          goto LABEL_48;
        }

        __break(1u);
LABEL_37:
        v23 = String._bridgeToObjectiveC()();
        v24 = SFLocalizedStringForKey();

        if (v24)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = String._bridgeToObjectiveC()();
          v4 = SFLocalizedStringForKey();

          if (v4)
          {
            goto LABEL_48;
          }

          __break(1u);
LABEL_40:
          v26 = String._bridgeToObjectiveC()();
          v27 = SFLocalizedStringForKey();

          if (v27)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v28 = String._bridgeToObjectiveC()();
            v4 = SFLocalizedStringForKey();

            if (v4)
            {
              goto LABEL_48;
            }

            __break(1u);
LABEL_43:
            v29 = String._bridgeToObjectiveC()();
            v30 = SFLocalizedStringForKey();

            if (v30)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v31 = String._bridgeToObjectiveC()();
              v4 = SFLocalizedStringForKey();

              if (!v4)
              {
                __break(1u);
LABEL_46:
                v32 = String._bridgeToObjectiveC()();
                v33 = SFLocalizedStringForKey();

                if (v33)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  v34 = String._bridgeToObjectiveC()();
                  v4 = SFLocalizedStringForKey();

                  if (v4)
                  {
                    goto LABEL_48;
                  }

LABEL_60:
                  __break(1u);
                  return;
                }

LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

LABEL_48:
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              return;
            }

LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (a1 != 27)
    {
      goto LABEL_46;
    }

    v5 = String._bridgeToObjectiveC()();
    v6 = SFLocalizedStringForKey();

    if (!v6)
    {
      goto LABEL_55;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String._bridgeToObjectiveC()();
    v4 = SFLocalizedStringForKey();

    if (v4)
    {
      goto LABEL_48;
    }

    __break(1u);
LABEL_20:
    if (a1 != 4)
    {
      if (a1 != 5)
      {
        goto LABEL_46;
      }

      v8 = String._bridgeToObjectiveC()();
      v9 = SFLocalizedStringForKey();

      if (!v9)
      {
        goto LABEL_50;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_48;
      }

      __break(1u);
    }

    v11 = String._bridgeToObjectiveC()();
    v12 = SFLocalizedStringForKey();

    if (v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_48;
      }

      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (a1 > 24)
  {
    goto LABEL_14;
  }

  if (a1 == 19)
  {
    goto LABEL_40;
  }

  if (a1 == 20)
  {
LABEL_31:
    v17 = String._bridgeToObjectiveC()();
    v18 = SFLocalizedStringForKey();

    if (v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_48;
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a1 != 23)
  {
    goto LABEL_46;
  }
}

_OWORD *sub_100011FD8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000106E0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100012044(uint64_t a1)
{
  v2 = sub_100012080();

  return Error<>._domain.getter(a1, v2);
}

unint64_t sub_100012080()
{
  result = qword_100982078;
  if (!qword_100982078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982078);
  }

  return result;
}

uint64_t sub_1000120D4()
{
  if (qword_1009739B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1009A0C10;

  return v0;
}

uint64_t sub_10001213C(uint64_t a1)
{
  v2 = sub_100012080();

  return Error<>._code.getter(a1, v2);
}

__n128 sub_100012184(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000121F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10001229C()
{
  result = qword_10097A960;
  if (!qword_10097A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A960);
  }

  return result;
}

uint64_t sub_1000122F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10000EBD4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002D0718();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for SDAuthenticationSessionMetadata(0);
    v22 = *(v15 - 8);
    sub_10000CA10(v14 + *(v22 + 72) * v8, a2, type metadata accessor for SDAuthenticationSessionMetadata);
    sub_1000124A8(v8, v11, type metadata accessor for SDAuthenticationSessionMetadata);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for SDAuthenticationSessionMetadata(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_1000124A8(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_100005358(&qword_100976170, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

id sub_100012880(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 200) & 1) == 0)
  {
    v3 = MKBDeviceUnlockedSinceBoot();
    v2 = *(a1 + 32);
    if (v3 == 1)
    {
      *(v2 + 200) = 1;
      [*(a1 + 32) installContactsMonitor];
      [*(a1 + 32) postNotification:@"com.apple.sharingd.KeyBagFirstUnlock"];
      v2 = *(a1 + 32);
    }
  }

  v4 = *(v2 + 664);
  v5 = [NSNumber numberWithInt:MKBGetDeviceLockState()];
  v6 = *(a1 + 32);
  v7 = *(v6 + 176);
  *(v6 + 176) = v5;

  if ([*(a1 + 32) deviceKeyBagUnlocked])
  {
    pthread_mutex_lock(&stru_100972F48);
    v8 = +[NSDate now];
    v9 = *(a1 + 32);
    v10 = *(v9 + 704);
    *(v9 + 704) = v8;

    pthread_mutex_unlock(&stru_100972F48);
  }

  v11 = *(a1 + 32);

  return [v11 postNotification:@"com.apple.sharingd.KeyBagLockStatusChanged"];
}

id sub_100012AB0(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [NSString stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = *(&off_1008D3BC0 + a1);
  }

  return v2;
}

uint64_t sub_100013454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = qword_1009735E0;
  v18 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;
  v20 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v18;

  sub_1002B3098(0, 0, v10, a5, v21);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100013728(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a2;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18[1] = &_swiftEmptyArrayStorage;
  sub_100013E70(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_1000139D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013AF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013E70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100013EB8()
{
  result = qword_100976150;
  if (!qword_100976150)
  {
    sub_100280938(&unk_1009765A0, &qword_1007F97B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976150);
  }

  return result;
}

uint64_t sub_100013F58()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = *(v0 + 40);
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000171D0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DC650;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_10001429C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_100014210()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001429C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000142E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001432C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000143BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001444C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000144DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1000145D8(a1, v4, v5, v6);
}

uint64_t sub_1000145D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_1000146AC, v6, 0);
}

id sub_1000146AC()
{
  v1 = objc_opt_self();
  result = [v1 sharedMonitor];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  v4 = [result deviceKeyBagLocked];

  if (v4)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100975E80);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "SDAirDropNearFieldService: device locked", v8, 2u);
    }

    v10 = v0[2];
    v9 = v0[3];

    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_1002B4888(v9);
    sub_100005508(v9, &unk_100976120, &qword_1007F9260);
    goto LABEL_10;
  }

  result = [v1 sharedMonitor];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v12 = result;
  [result deviceUIUnlocked];

LABEL_10:
  v13 = v0[3];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100014A88()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceLockState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, enum case for DeviceLockState.unlocked(_:), v2);
  v7 = static DeviceLockState.== infix(_:_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_1009737C8 != -1)
    {
LABEL_19:
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_10097B740);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unlocked, start LTK checkup", v12, 2u);
    }

    v1 = *(v1 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
    v13 = 1 << *(v1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v1 + 64);
    v16 = (v13 + 63) >> 6;

    v18 = 0;
    while (v15)
    {
LABEL_14:
      v20 = *(*(v1 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v15)))));
      v21 = *(v20 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
      __chkstk_darwin(v17);
      *&v22[-16] = sub_1000155F0;
      *&v22[-8] = v20;

      os_unfair_lock_lock(v21 + 4);
      sub_1000156B4(&v23);
      os_unfair_lock_unlock(v21 + 4);
      if (v23 == 1)
      {
        sub_100014D7C();
      }

      v15 &= v15 - 1;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v19 >= v16)
      {
      }

      v15 = *(v1 + 64 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_14;
      }
    }
  }

  return result;
}

void sub_100014D7C()
{
  v64 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v64 - 8);
  v2 = v1[8];
  __chkstk_darwin(v64);
  v63 = (&v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = type metadata accessor for DispatchQoS();
  v4 = *(v62 - 8);
  v5 = v4[8];
  __chkstk_darwin(v62);
  v61 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedTransport];
  v65 = v7;
  if (!v7)
  {
    return;
  }

  if (qword_100973C50 != -1)
  {
    goto LABEL_39;
  }

LABEL_3:
  if (qword_1009A10A8)
  {
    v8 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltkLock);
    __chkstk_darwin(v7);
    *(&v46 - 2) = sub_10001560C;
    *(&v46 - 1) = v0;
    v59 = v9;
    os_unfair_lock_lock(v8 + 4);
    v0 = &v46 - 4;
    v10 = 0;
    sub_100012284(aBlock);
    os_unfair_lock_unlock(v8 + 4);
    v13 = aBlock[0];
    v14 = 0;
    v15 = aBlock[0] + 64;
    v16 = 1 << *(aBlock[0] + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(aBlock[0] + 64);
    v58 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue;
    v19 = (v16 + 63) >> 6;
    v57 = v69;
    v56 = (v1 + 1);
    v55 = v4 + 1;
    *&v12 = 136315138;
    v54 = v12;
    v49 = aBlock[0];
    v48 = aBlock[0] + 64;
    v47 = v19;
    while (1)
    {
      while (1)
      {
        if (!v18)
        {
          while (1)
          {
            v20 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v20 >= v19)
            {

              return;
            }

            v18 = *(v15 + 8 * v20);
            ++v14;
            if (v18)
            {
              v14 = v20;
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_39:
          v7 = swift_once();
          goto LABEL_3;
        }

LABEL_12:
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v22 = *(*(v13 + 56) + ((v14 << 9) | (8 * v21)));
        v23 = *(v22 + 32);
        if (v23 <= 1)
        {
          break;
        }

        if (v23 != 2)
        {
          v52 = v14;
          v53 = v18;
          v24 = v23 == 3;
          v25 = 10;
          if (!v24)
          {
            v25 = 18;
          }

LABEL_19:
          v60 = v25;
          v26 = *(v22 + 112);
          __chkstk_darwin(v11);
          *(&v46 - 2) = sub_1004F6678;
          *(&v46 - 1) = v22;

          os_unfair_lock_lock(v26 + 4);
          sub_1004F66A8(aBlock);
          os_unfair_lock_unlock(v26 + 4);
          v0 = aBlock[0];
          v27 = *(aBlock[0] + 16);
          if (v27)
          {
            v51 = v10;
            v50 = aBlock[0];
            v28 = (aBlock[0] + 40);
            do
            {
              v4 = *(v28 - 1);
              v38 = *v28;

              v39 = String._bridgeToObjectiveC()();
              v40 = [v65 idsDeviceForUniqueID:v39];

              if (v40)
              {

                v29 = *(v22 + 33);
                v71[3] = sub_100479FF4();
                v71[4] = &off_1008EA2C0;
                v71[0] = v40;
                v30 = v59;
                v66 = *&v59[v58];
                sub_1002A9938(v71, &v70);
                v31 = swift_allocObject();
                *(v31 + 16) = v60;
                sub_1002AF998(&v70, v31 + 24);
                *(v31 + 64) = v29;
                *(v31 + 72) = v30;
                v69[2] = sub_1004F6694;
                v69[3] = v31;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                v69[0] = sub_100011678;
                v69[1] = &unk_1008E56B8;
                v32 = _Block_copy(aBlock);
                v33 = v30;
                v4 = v40;
                v34 = v61;
                static DispatchQoS.unspecified.getter();
                v67 = _swiftEmptyArrayStorage;
                sub_100010F40(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
                sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
                sub_100013EB8();
                v1 = v63;
                v35 = v22;
                v36 = v64;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v32);

                v37 = v36;
                v22 = v35;
                (*v56)(v1, v37);
                (*v55)(v34, v62);

                sub_10000C60C(v71);
              }

              else
              {
                if (qword_100973998 != -1)
                {
                  swift_once();
                }

                v41 = type metadata accessor for Logger();
                sub_10000C4AC(v41, qword_100981A10);

                v42 = Logger.logObject.getter();
                v43 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  v1 = swift_slowAlloc();
                  aBlock[0] = v1;
                  *v44 = v54;
                  v4 = sub_10000C4E4(v4, v38, aBlock);

                  *(v44 + 4) = v4;
                  _os_log_impl(&_mh_execute_header, v42, v43, "Could not find idsDevice %s for registration", v44, 0xCu);
                  sub_10000C60C(v1);
                }

                else
                {
                }
              }

              v28 += 2;
              --v27;
            }

            while (v27);

            v10 = v51;
            v13 = v49;
            v15 = v48;
            v19 = v47;
            v0 = v50;
          }

          else
          {
          }

          v18 = v53;
          v14 = v52;
        }
      }

      if (*(v22 + 32))
      {
        v52 = v14;
        v53 = v18;
        v25 = 8;
        goto LABEL_19;
      }
    }
  }

  v45 = v65;
}

uint64_t sub_1000155B0()
{
  sub_10000C60C((v0 + 24));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001560C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_100015670@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void sub_1000156E8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded;
  if ((*(a1 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded) & 1) == 0)
  {
    sub_1004F4E10();
    if (v2)
    {
      if (qword_100973998 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_100981A10);
      swift_errorRetain();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        swift_errorRetain();
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v11;
        *v10 = v11;
        _os_log_impl(&_mh_execute_header, v7, v8, "failed to load LTKS, error:%@", v9, 0xCu);
        sub_10028924C(v10);
      }

      else
      {
      }

      if (*(a1 + v5) != 1)
      {
        v12 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      *(a1 + v5) = 1;
    }
  }

  *(a1 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_checkAndStartRegistration) = 0;
  v12 = 1;
LABEL_11:
  *a2 = v12;
}

void sub_100015A8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
    if (v2)
    {
      v3 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8);

      v5 = v2(v4);
      sub_100015D04(v2);
    }

    else
    {
      v5 = 0;
    }

    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_10097A228);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      if (v5)
      {
        v11 = 0x64656B636F6C6E75;
      }

      else
      {
        v11 = 0x64656B636F6CLL;
      }

      if (v5)
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v12 = 0xE600000000000000;
      }

      v13 = sub_10000C4E4(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Key bag state changed to %s", v9, 0xCu);
      sub_10000C60C(v10);
    }

    sub_1000163C8();
    sub_100016640();
    v14 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes];
    *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes] = &_swiftEmptyArrayStorage;

    v15 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator];
    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator + 8];

      v18 = v15(v17);
      sub_100015D04(v15);
      v19 = 0;
      if (v5 & 1) == 0 || (v18)
      {
        goto LABEL_23;
      }

      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((v5 & 1) == 0)
    {
      v19 = 0;
      goto LABEL_23;
    }

    v19 = 1;
LABEL_23:
    v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions] = v19;
    sub_100016CD0();
LABEL_24:
  }
}

uint64_t sub_100015D04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_100015D1C(uint64_t *a1, SEL *a2, SEL *a3)
{
  v4 = *a1;
  result = [objc_opt_self() *a2];
  if (result)
  {
    v6 = result;
    v7 = [result *a3];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100015E10(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10028088C(&unk_100987410, &unk_1007FB010);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100016004(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100015E10(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100015E10(v10, 0);
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

char *sub_100016134(uint64_t a1, unint64_t a2)
{
  v4 = sub_100016004(a1, a2);
  sub_1000162DC(&off_1008D6888);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t sub_1000162DC(uint64_t result)
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

  result = sub_10028F9C0(result, v12, 1, v3);
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

uint64_t sub_1000163C8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
    if (v14)
    {
      v15 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8);

      v17 = v14(v16);
      result = sub_100015D04(v14);
      v18 = v17 ^ 1;
    }

    else
    {
      v18 = 1;
    }

    v19 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator);
    if (v19)
    {
      v20 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator + 8);

      v22 = v19(v21);
      result = sub_100015D04(v19);
      if (!(v18 & 1 | (v22 != 3)))
      {
        Date.init()();
        v23 = type metadata accessor for Date();
        (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
        v24 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedAndOnWristDate;
        swift_beginAccess();
        sub_1000168F4(v5, v1 + v24);
        swift_endAccess();
        sub_10034F628();
        return sub_100016C08(v5);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016640()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
    if (v13 && (v14 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8), v15 = , v16 = v13(v15), sub_100015D04(v13), (v16 & 1) != 0))
    {
      Date.init()();
      v17 = type metadata accessor for Date();
      (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
      v18 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
      swift_beginAccess();
      sub_1000168F4(v4, v0 + v18);
      swift_endAccess();
      sub_100016964();
    }

    else
    {
      Date.init()();
      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
      v20 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastLockDate;
      swift_beginAccess();
      sub_1000168F4(v4, v0 + v20);
      swift_endAccess();
      sub_10034F36C();
    }

    return sub_100016C08(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000168F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100016964()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973660 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_10097A228);
  v7 = v0;
  v19 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    if ((*(v2 + 48))(&v7[v11], 1, v1))
    {
      v12 = 0x800000010078D230;
      v13 = 0xD000000000000018;
    }

    else
    {
      (*(v2 + 16))(v5, &v7[v11], v1);
      v15 = Date.description.getter();
      v12 = v16;
      (*(v2 + 8))(v5, v1);
      v13 = v15;
    }

    v17 = sub_10000C4E4(v13, v12, &v20);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v19, v8, "Storing last device unlock as %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  else
  {
    v14 = v19;
  }
}

uint64_t sub_100016C08(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100016CD0()
{
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions) == 1)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097A228);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Allowing lenient motion conditions";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);
    }
  }

  else
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_10097A228);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Denying lenient motion conditions";
      goto LABEL_10;
    }
  }
}

unsigned __int8 *sub_1000170E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_100973C50 != -1)
    {
      swift_once();
    }

    if (qword_1009A10A8)
    {
      result = [objc_opt_self() sharedMonitor];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v2 = result;
      v3 = [result deviceKeyBagLocked];

      if (v3 != v1[48])
      {
        sub_100344728();
      }
    }
  }

  return result;
}

void sub_100017200()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v41 - v3;
  v5 = objc_opt_self();
  v6 = [v5 sharedMonitor];
  if (!v6)
  {
    __break(1u);
    goto LABEL_35;
  }

  v7 = v6;
  v8 = [v6 deviceKeyBagDisabled];

  v9 = [v5 sharedMonitor];
  if (!v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = v9;
  v11 = [v9 deviceKeyBagUnlocked];

  v12 = [v5 sharedMonitor];
  if (!v12)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 screenOn];

  if (SFDeviceClassCodeGet() == 1)
  {
    if (((v14 ^ 1 | v8) & 1) != 0 && *(v0 + 216) == 1)
    {
      v15 = v0;
      if (qword_100973540 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000C4AC(v16, qword_100975CC0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109376;
        *(v19 + 4) = v14 ^ 1;
        *(v19 + 8) = 1024;
        *(v19 + 10) = v8;
        _os_log_impl(&_mh_execute_header, v17, v18, "Dismissing unlock request notification on screen off: %{BOOL}d, passcode disable: %{BOOL}d", v19, 0xEu);
      }

      v20 = [objc_opt_self() sharedManager];
      [v20 dismissRequestToUnlockNotification];

      v0 = v15;
      *(v15 + 216) = 0;
    }

    if (v11)
    {
      if (*(v0 + 216) == 1)
      {
        swift_beginAccess();
        sub_10000FF90(v0 + 176, &v42, &qword_100982080, &unk_1007FDD30);
        if (*(&v43 + 1))
        {
          v21 = v0;
          sub_1000121F8(&v42, v45);
          if (qword_100973540 != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for Logger();
          sub_10000C4AC(v22, qword_100975CC0);
          sub_1002A9938(v45, &v42);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v41[0] = v26;
            *v25 = 136315138;
            v27 = *(&v43 + 1);
            v28 = v44;
            sub_10002CDC0(&v42, *(&v43 + 1));
            v29 = (*(v28 + 8))(v27, v28);
            if (v30)
            {
              v31 = v29;
            }

            else
            {
              v31 = 0xD000000000000015;
            }

            if (v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0x8000000100789F30;
            }

            sub_10000C60C(&v42);
            v33 = sub_10000C4E4(v31, v32, v41);

            *(v25 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v23, v24, "Trying to authenticate with device that previously failed due to expired escrow %s", v25, 0xCu);
            sub_10000C60C(v26);
          }

          else
          {

            sub_10000C60C(&v42);
          }

          v34 = type metadata accessor for TaskPriority();
          (*(*(v34 - 8) + 56))(v4, 1, 1, v34);
          sub_1002A9938(v45, &v42);
          v36 = sub_1002AF520(&qword_100975E60, v35, _s19UnlockClassCManagerCMa);
          v37 = swift_allocObject();
          v37[2] = v21;
          v37[3] = v36;
          v37[4] = v21;
          sub_1000121F8(&v42, (v37 + 5));
          swift_retain_n();
          sub_1002B3098(0, 0, v4, &unk_1007F90C0, v37);

          sub_10000C60C(v45);
          v44 = 0;
          v42 = 0u;
          v43 = 0u;
          swift_beginAccess();
          sub_1002AF74C(&v42, v21 + 176);
          swift_endAccess();
        }

        else
        {
          sub_100005508(&v42, &qword_100982080, &unk_1007FDD30);
        }
      }

      v38 = [objc_opt_self() standardUserDefaults];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v40 = String._bridgeToObjectiveC()();
      [v38 setValue:isa forKey:v40];
    }
  }

  else if (SFDeviceIsRealityDevice())
  {

    sub_1002ABCDC(0);
  }
}

uint64_t sub_100017838()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10000C60C(v0 + 5);

  return _swift_deallocObject(v0, 80, 7);
}

void *sub_100017880(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[20];
  if (!v3)
  {
    return result;
  }

  if (dword_100970E30 <= 40)
  {
    if (dword_100970E30 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = result[20];
    }

    [v3 screenLocked];
    LogPrintF();
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _update];
}

void sub_100019B80(void *a1)
{
  v1 = [a1 localDeviceID];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100019C18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

uint64_t sub_100019C4C()
{

  return LogPrintF();
}

uint64_t sub_100019C6C()
{

  return LogPrintF();
}

void sub_100019D00(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

double sub_100019D28(double result, double a2)
{
  if (result < a2)
  {
    return a2;
  }

  return result;
}

void sub_100019D70(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

uint64_t sub_100019DA8()
{

  return LogPrintF();
}

void sub_100019DC4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100019E14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_100019E78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t SDAutoUnlockLTKInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadData();
        v15 = 16;
LABEL_44:
        v31 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_51;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_51;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        v35 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v35 & 0x7F) << v16;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_46;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_46:
      *(a1 + 28) = v22;
LABEL_51:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        v34 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v34 & 0x7F) << v24;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_50;
        }
      }

      if ([a2 hasError])
      {
        v30 = 0;
      }

      else
      {
        v30 = v26;
      }

LABEL_50:
      *(a1 + 24) = v30;
      goto LABEL_51;
    }

    if (v13 != 2)
    {
      goto LABEL_32;
    }

    v14 = PBReaderReadData();
    v15 = 8;
    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001DBC0(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if ((a2 - 1) >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = (a2 + 8);
  }

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v15 = 134218499;
    v16 = v6;
    if (a3)
    {
      v8 = @"YES";
    }

    v17 = 2112;
    v18 = v8;
    v19 = 2113;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validating local LTK (aks keyclass: %ld, touch bar: %@, local LTK: %{private}@)", &v15, 0x20u);
  }

  [v5 bytes];
  [v5 length];
  v9 = aks_validate_local_key();
  v10 = auto_unlock_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 67109120;
    LODWORD(v16) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Validated local LTK (status: %d)", &v15, 8u);
  }

  v11 = 0;
  if (v9 != -536362989 && v9 != -536362984)
  {
    v11 = 0;
    v12 = v9 == -536870212 ? a3 : 0;
    if ((v12 & 1) == 0 && v9 != -536362971)
    {
      if (v9)
      {
        v13 = auto_unlock_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 67109120;
          LODWORD(v16) = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Validating local LTK returned unexpected status (status: %d)", &v15, 8u);
        }
      }

      v11 = 1;
    }
  }

  return v11;
}

void sub_10001ED70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (a1)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating enable state in dynamic store: %@", buf, 0xCu);
  }

  v9 = sub_10001F124(0);
  v10 = [v9 mutableCopy];

  v11 = [(__CFString *)v10 objectForKeyedSubscript:v5];
  v12 = v11;
  if (!v11 || [v11 BOOLValue] != a1)
  {
    v13 = [NSNumber numberWithBool:a1];
    [(__CFString *)v10 setObject:v13 forKeyedSubscript:v5];

    v14 = auto_unlock_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    v16 = SFAutoUnlockDynamicStoreSharingDomainKey;
    if (v15)
    {
      *buf = 138412546;
      v26 = SFAutoUnlockDynamicStoreSharingDomainKey;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating global dynamic store (key: %@, value: %@)", buf, 0x16u);
    }

    if (!SCDynamicStoreSetValue(0, v16, v10))
    {
      v17 = auto_unlock_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100113708();
      }
    }
  }

  v18 = sub_10001F124(v6);
  v19 = [v18 mutableCopy];

  v20 = [NSString stringWithFormat:@"%d", getuid()];
  v21 = [(__CFString *)v19 objectForKeyedSubscript:v20];

  if (v21 && [v21 BOOLValue] == a1)
  {
    v24 = auto_unlock_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Enabled dictionary exists %@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  v22 = [NSNumber numberWithBool:a1];
  [(__CFString *)v19 setObject:v22 forKeyedSubscript:v20];

  v23 = auto_unlock_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updating enabled dynamic store (key: %@, value: %@)", buf, 0x16u);
  }

  if (!SCDynamicStoreSetValue(0, v6, v19))
  {
    v24 = auto_unlock_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100113708();
    }

LABEL_22:
  }
}

void *sub_10001F124(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = SFAutoUnlockDynamicStoreSharingDomainKey;
  }

  v2 = SCDynamicStoreCopyValue(0, v1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFDictionaryGetTypeID())
    {
      CFRelease(v3);
      v3 = 0;
    }
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = v5;

  return v5;
}

id sub_10001F47C(void *a1)
{
  v1 = a1;
  v2 = [v1 aa_primaryAppleAccount];

  return v2;
}

uint64_t sub_100021BD4(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040020F6587uLL);
  if (v2)
  {
    v3 = v2;
    [v1 bytes];
    [v1 length];
    state = aks_remote_peer_get_state();
    v5 = state;
    if (state && state != -536870184)
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100021DE0();
      }

      v7 = 100;
    }

    else
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = *v3;
        v11 = v3[2];
        *&v17[16] = v3[1];
        v18 = v11;
        *v17 = v10;
        v12 = v3[3];
        v13 = v3[4];
        v14 = v3[5];
        v22 = *(v3 + 12);
        v20 = v13;
        v21 = v14;
        v19 = v12;
        v15 = sub_10005C980(v17);
        v16 = *(v3 + 3);
        *v17 = 67109634;
        *&v17[4] = v5;
        *&v17[8] = 2112;
        *&v17[10] = v15;
        *&v17[18] = 1024;
        *&v17[20] = v16;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Status %d, Peer State: %@, flags %d", v17, 0x18u);
      }

      v19 = v3[3];
      v20 = v3[4];
      v21 = v3[5];
      v22 = *(v3 + 12);
      *v17 = *v3;
      *&v17[16] = v3[1];
      v18 = v3[2];
      v7 = sub_10005CAB4(v17);
    }

    free(v3);
  }

  else
  {
    v7 = 100;
  }

  return v7;
}

void sub_100021DE0()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

uint64_t *sub_100021F10@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id sub_100021F1C()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

uint64_t sub_100022E18()
{
  v0 = CFPreferencesCopyAppValue(@"allowAutoUnlock", @"com.apple.applicationaccess");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(v1);
    }

    CFRelease(v1);
  }

  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 isAutoUnlockAllowed];

  return v4 ^ 1;
}

void sub_100022FD8(uint64_t a1)
{
  state64 = 0;
  state = notify_get_state(*(*(a1 + 32) + 500), &state64);
  v3 = daemon_log();
  v4 = v3;
  if (state)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1002327E4();
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = state64;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UI locked state changed %llu", buf, 0xCu);
    }

    v5 = [NSNumber numberWithInt:state64 == 0];
    v6 = *(a1 + 32);
    v7 = *(v6 + 192);
    *(v6 + 192) = v5;

    if (state64)
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 480);
      *(v8 + 480) = 0;
    }

    [*(a1 + 32) postNotification:@"com.apple.sharingd.UILockStatusChanged"];
  }
}

void *sub_100023F20()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

id sub_100023F44()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

void sub_100023F5C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

double sub_100023FB4()
{
  result = 1.0;
  if (v0 <= 1.0)
  {
    return v0;
  }

  return result;
}

id sub_1000240D0(uint64_t a1)
{
  [*(a1 + 32) setAutoUnlockEnabledUpdatedAfterFirstUnlock:1];
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 deviceKeyBagUnlocked];

  if (v3 && ([*(a1 + 32) shouldUseTwoPartPill] & 1) == 0 && objc_msgSend(*(a1 + 32), "waitingForAutoUnlockStateUpdateToStartPairedUnlock"))
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Auto Unlock not enabled. Starting unlock", v11, 2u);
    }

    *(*(a1 + 32) + 68) = [*(a1 + 32) startUnlockIfNeeded];
    v5 = paired_unlock_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    if (*(*(a1 + 32) + 68))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *v11 = 138412290;
    *&v11[4] = v6;
    v7 = "Paired Unlock started: %@";
    v8 = v5;
    v9 = 12;
    goto LABEL_14;
  }

  if ([*(a1 + 32) waitingForAutoUnlockStateUpdateToStartPairedUnlock])
  {
    v5 = paired_unlock_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:

      return [*(a1 + 32) setWaitingForAutoUnlockStateUpdateToStartPairedUnlock:{0, *v11}];
    }

    *v11 = 0;
    v7 = "Auto Unlock enabled. Not performing Paired Unlock";
    v8 = v5;
    v9 = 2;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, v11, v9);
    goto LABEL_15;
  }

  return [*(a1 + 32) setWaitingForAutoUnlockStateUpdateToStartPairedUnlock:{0, *v11}];
}

id sub_100024974(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v3 = +[NSLocale autoupdatingCurrentLocale];
    [v2 setLocale:v3];

    v4 = [v2 components:2097404 fromDate:v1];

    v5 = [v4 year];
    v6 = [v4 month];
    v7 = [v4 day];
    v8 = [v4 hour];
    v9 = [v4 minute];
    v10 = [v4 second];
    v11 = [v4 timeZone];
    v12 = [v11 abbreviation];
    v13 = [NSString stringWithFormat:@"%02ld-%02ld-%02ld %02ld:%02ld:%02ld %@", v5, v6, v7, v8, v9, v10, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_100025310()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000255E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000255F8(uint64_t a1)
{
  v2 = [*(a1 + 32) onqueue_devicesWithLTKs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_100025E8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

void *sub_100025F00()
{
  sub_100026178();
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();

  v19 = 0;
  v2 = [v0 dataWithPropertyList:v1 format:200 options:0 error:&v19];

  v3 = v19;
  if (!v2)
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v12 = *(v4 + 16);
  v11 = *(v4 + 24);
  v13 = __OFSUB__(v11, v12);
  v8 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_10:
    LODWORD(v8) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v8 = v8;
  }

LABEL_13:
  if (__OFADD__(v8, 200))
  {
    __break(1u);
    goto LABEL_37;
  }

  v14 = calloc(v8 + 200, 1uLL);
  if (!v14)
  {
    sub_100026AC0(v4, v6);
    return 0;
  }

  *v14 = 1;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
LABEL_31:
      *(v14 + 1) = 0;
      goto LABEL_32;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    v13 = __OFSUB__(v15, v16);
    v17 = v15 - v16;
    if (!v13)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_23:
    LODWORD(v17) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v17 = v17;
LABEL_25:
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v17))
      {
        *(v14 + 1) = v17;
        strcpy(v14 + 136, "SDAirDropContactHashManager State");
        if (v7 == 2)
        {
          if (!__OFSUB__(*(v4 + 24), *(v4 + 16)))
          {
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_31;
        }

        if (!__OFSUB__(HIDWORD(v4), v4))
        {
          goto LABEL_34;
        }

LABEL_41:
        __break(1u);
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7)
  {
    goto LABEL_23;
  }

  *(v14 + 1) = BYTE6(v6);
LABEL_32:
  strcpy(v14 + 136, "SDAirDropContactHashManager State");
LABEL_34:
  v18 = v14;
  Data.copyBytes(to:count:)();
  sub_100026AC0(v4, v6);
  return v18;
}

uint64_t sub_100026178()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v19)
  {
    v60 = v3;
    v58 = v2;
    v62 = 10;
    v63 = 0xE100000000000000;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v21 = swift_allocObject();
    v61 = xmmword_1007F5670;
    *(v21 + 16) = xmmword_1007F5670;
    v22 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated;
    v23 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated);
    v24 = sub_100026764();
    v25 = v24;
    v26 = 28526;
    if (v23)
    {
      v26 = 7562617;
      v27 = 0xE300000000000000;
    }

    else
    {
      v27 = 0xE200000000000000;
    }

    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = v24;
    *(v21 + 32) = v26;
    *(v21 + 40) = v27;
    v28._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v28);

    if (*(v1 + v22) != 1)
    {
      return v62;
    }

    v29 = swift_allocObject();
    v30 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully);
    *(v29 + 16) = v61;
    v31 = v30 == 0;
    v32 = 28526;
    if (v31)
    {
      v33 = 0xE200000000000000;
    }

    else
    {
      v32 = 7562617;
      v33 = 0xE300000000000000;
    }

    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = v25;
    *(v29 + 32) = v32;
    *(v29 + 40) = v33;
    v34._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v34);

    v35 = swift_allocObject();
    *(v35 + 16) = v61;
    sub_1000267B8(v11);
    v36 = v60;
    v37 = v58;
    v56 = *(v60 + 48);
    if (v56(v11, 1, v58))
    {
      sub_100005508(v11, &qword_10097A7F0, &unk_1007FB600);
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v40 = v57;
      (*(v36 + 16))(v57, v11, v37);
      sub_100005508(v11, &qword_10097A7F0, &unk_1007FB600);
      v38 = Date.description.getter();
      v39 = v41;
      (*(v36 + 8))(v40, v37);
    }

    v42 = 0x3E6C696E3CLL;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = v25;
    if (v39)
    {
      v43 = v38;
    }

    else
    {
      v43 = 0x3E6C696E3CLL;
    }

    v44 = 0xE500000000000000;
    if (v39)
    {
      v44 = v39;
    }

    *(v35 + 32) = v43;
    *(v35 + 40) = v44;
    v45._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v45);

    v46 = swift_allocObject();
    *(v46 + 16) = v61;
    v47 = v59;
    sub_10002693C(v59);
    if (v56(v47, 1, v37))
    {
      sub_100005508(v47, &qword_10097A7F0, &unk_1007FB600);
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = v25;
    }

    else
    {
      v49 = v60;
      v50 = v57;
      (*(v60 + 16))(v57, v47, v37);
      sub_100005508(v47, &qword_10097A7F0, &unk_1007FB600);
      v51 = Date.description.getter();
      v48 = v52;
      (*(v49 + 8))(v50, v37);
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = v25;
      if (v48)
      {
        v42 = v51;
        goto LABEL_22;
      }
    }

    v48 = 0xE500000000000000;
LABEL_22:
    *(v46 + 32) = v42;
    *(v46 + 40) = v48;
    v53._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v53);

    v54._countAndFlagsBits = 0xD000000000000027;
    v54._object = 0x8000000100795490;
    String.append(_:)(v54);
    return v62;
  }

  __break(1u);
  return result;
}

unint64_t sub_100026764()
{
  result = qword_10097F3A0;
  if (!qword_10097F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F3A0);
  }

  return result;
}

uint64_t sub_1000267B8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_100005508(v11, &unk_1009746F0, &qword_1007F90B0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_10002693C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_100005508(v11, &unk_1009746F0, &qword_1007F90B0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100026AC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100026B14(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005CF8;

  return v7(a1);
}

uint64_t sub_100026C0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1006E2A48(a1, v4, v5, v7);
}

uint64_t sub_100026CD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100005C00;

  return sub_1006E2960(v2, v3, v5);
}

uint64_t sub_100026DBC()
{
  v1[5] = v0;
  v2 = *(*(sub_10028088C(&qword_1009799D0, &unk_1007FCB10) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100026EB4, 0, 0);
}

uint64_t sub_100026EB4()
{
  v38 = v0;
  v1 = [objc_opt_self() sharedMonitor];
  if (!v1)
  {
    __break(1u);
    goto LABEL_32;
  }

  v4 = v1;
  v5 = [v1 deviceKeyBagUnlocked];

  if ((v5 & 1) == 0)
  {
    v1 = [objc_opt_self() sharedManager];
    if (v1)
    {
      v6 = v1;
      v7 = [v1 localAttestedLTK];

      if (v7)
      {
        v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        sub_100026AC0(v8, v10);
        goto LABEL_6;
      }

      if (qword_1009737D0 != -1)
      {
LABEL_30:
        swift_once();
      }

      v15 = 0;
      v16 = *(qword_1009A0B08 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
      v17 = -1;
      v18 = -1 << *(v16 + 32);
      if (-v18 < 64)
      {
        v17 = ~(-1 << -v18);
      }

      v19 = v17 & *(v16 + 64);
      do
      {
        if (!v19)
        {
          while (1)
          {
            v20 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v20 >= ((63 - v18) >> 6))
            {
              goto LABEL_6;
            }

            v19 = *(v16 + 64 + 8 * v20);
            ++v15;
            if (v19)
            {
              v15 = v20;
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v20 = v15;
LABEL_19:
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
      }

      while ((*(*(*(v16 + 56) + ((v20 << 9) | (8 * v21))) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded) & 1) != 0);
      if (qword_100973640 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      v0[10] = sub_10000C4AC(v22, qword_100979048);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[5];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v37 = v27;
        *v26 = 136315138;
        v0[4] = v25;
        sub_10028088C(&qword_1009799D8, &qword_1007FCB20);
        v28 = String.init<A>(describing:)();
        v30 = sub_10000C4E4(v28, v29, &v37);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "%s: Waiting for keys to be loaded", v26, 0xCu);
        sub_10000C60C(v27);
      }

      v31 = [objc_opt_self() defaultCenter];
      if (qword_100973678 != -1)
      {
        swift_once();
      }

      v32 = v0[9];
      v0[11] = NSNotificationCenter.notifications(named:object:)();

      NSNotificationCenter.Notifications.makeAsyncIterator()();
      v33 = sub_10001429C(&unk_10097F040, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
      v34 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v35 = swift_task_alloc();
      v0[12] = v35;
      *v35 = v0;
      v35[1] = sub_100340678;
      v36 = v0[9];
      v1 = v0[6];
      v2 = v0[7];
      v3 = v33;

      return dispatch thunk of AsyncIteratorProtocol.next()(v1, v2, v3);
    }

LABEL_32:
    __break(1u);
    return dispatch thunk of AsyncIteratorProtocol.next()(v1, v2, v3);
  }

LABEL_6:
  v11 = v0[9];
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

Swift::Int sub_100027628(unint64_t a1)
{
  if (a1 > 0x17)
  {
    return sub_10000CB70(&off_1008D7238);
  }

  else
  {
    return sub_10000CB70(off_1008E5D80[a1]);
  }
}

unint64_t sub_10002764C()
{
  result = qword_100974F68;
  if (!qword_100974F68)
  {
    sub_1000276B4(255, &qword_100974F60, SFAutoUnlockDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974F68);
  }

  return result;
}

uint64_t sub_1000276B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000276FC(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_100027A84(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = (*(v3 + 0x18) >> 1) - v14;
  result = sub_100027B24(&v36, (v3 + 8 * v14 + 32), v15, v8);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_100027D64();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= v39 + 1)
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_100027A84(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void *sub_100027B24(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
  sub_100027D9C(&qword_100974F68, &qword_100974F60, SFAutoUnlockDevice_ptr);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_100027D9C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000276B4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027DEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100027E50()
{
  if (qword_1009738C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097F240);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus] screenOn];

    _os_log_impl(&_mh_execute_header, v4, v5, "Screen state changed %{BOOL}d", v7, 8u);
  }

  else
  {

    v4 = *(v0 + 16);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_10002AB0C, v8, 0);
}

uint64_t sub_100028244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_100028318, v6, 0);
}

uint64_t sub_100028318()
{
  if ([*(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus) screenOn])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100975E80);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService: switch Screen ON", v4, 2u);
    }

    v5 = v0[2];

    sub_1000286E8(0, 1, 0, 0);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100975E80);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "SDAirDropNearFieldService: switch Screen OFF", v9, 2u);
    }

    v11 = v0[2];
    v10 = v0[3];

    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    sub_1002B4888(v10);
    sub_100005508(v10, &unk_100976120, &qword_1007F9260);
    sub_1002B9D54();
  }

  v13 = v0[3];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100028580(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100027E30(a1, v4, v5, v6);
}

uint64_t sub_100028634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100028244(a1, v4, v5, v6);
}

uint64_t sub_1000286E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100975E80);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "SDAirDropNearFieldService: start", v13, 2u);
  }

  if (a2)
  {
    a1 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_defaultPollingType);
  }

  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = 0x800000010078A3E0;
  }

  if (a4)
  {
    v15 = a3;
  }

  else
  {
    v15 = 0xD000000000000013;
  }

  sub_10002887C(a1, v15, v14, 0, 0, 0xF000000000000000);
}

void sub_10002887C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v102 = a6;
  v101 = a5;
  LODWORD(v119) = a4;
  v122 = a1;
  v115 = type metadata accessor for DispatchWorkItemFlags();
  v109 = *(v115 - 8);
  v10 = *(v109 + 64);
  (__chkstk_darwin)();
  v113 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchQoS();
  v112 = *(v114 - 8);
  v12 = *(v112 + 64);
  (__chkstk_darwin)();
  v111 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*(sub_10028088C(&qword_100976130, &qword_1007F92B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v103 = &v99 - v15;
  v120 = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v117 = *(v120 - 8);
  v16 = *(v117 + 64);
  v17 = (__chkstk_darwin)();
  v107 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v105 = &v99 - v20;
  v21 = __chkstk_darwin(v19);
  v104 = &v99 - v22;
  v23 = __chkstk_darwin(v21);
  v118 = (&v99 - v24);
  v106 = v25;
  __chkstk_darwin(v23);
  v116 = &v99 - v26;
  v27 = type metadata accessor for SFClientAccessLevel();
  v100 = *(v27 - 8);
  v28 = *(v100 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v99 - v32;
  v34 = type metadata accessor for SFClientIdentity();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryClientForLabel;
  swift_beginAccess();
  v121 = v7;
  v40 = *(v7 + v39);
  v41 = *(v40 + 16);
  v110 = a3;
  v108 = a2;
  if (v41 && (v42 = sub_100012854(a2, a3), (v43 & 1) != 0))
  {
    (*(v35 + 16))(v38, *(v40 + 56) + *(v35 + 72) * v42, v34);
    swift_endAccess();
    SFClientIdentity.accessLevel.getter();
    static SFClientAccessLevel.allowRestrictedBoop.getter();
    sub_100005358(&unk_1009761B0, &type metadata accessor for SFClientAccessLevel);
    v44 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v45 = *(v100 + 8);
    v45(v31, v27);
    v45(v33, v27);
    (*(v35 + 8))(v38, v34);
  }

  else
  {
    swift_endAccess();
    v44 = 0;
  }

  v47 = v121;
  v46 = v122;
  v48 = sub_10002968C(v122, v119 & 1, v44 & 1);
  v49 = v120;
  v50 = v118;
  if ((v48 & 1) == 0)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_10000C4AC(v61, qword_100975E80);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_18;
    }

    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = "SDAirDropNearFieldService: Near field Controller is not available.";
    goto LABEL_17;
  }

  sub_1002D6EA4();
  v51 = *(v47 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (!v51)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_10000C4AC(v66, qword_100975E80);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_18;
    }

    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = "SDAirDropNearFieldService: missing Near field Controller, will not start polling";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v62, v63, v65, v64, 2u);

LABEL_18:

    return;
  }

  v52 = *(v49 + 24);
  *(v50 + v52) = 0;
  v119 = v51;
  v53 = v101;
  v54 = v102;
  sub_1002A9924(v101, v102);
  UUID.init()();
  if (v54 >> 60 == 15)
  {
    v55 = sub_1001BBEF4(kSecAttrKeyTypeECSECPrimeRandom, 256);
    v56 = sub_1001BC0FC(v55);
    v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = (v50 + *(v49 + 20));
    *v60 = v57;
    v60[1] = v59;
    *(v50 + v52) = v55;
  }

  else
  {
    v67 = (v50 + *(v49 + 20));
    *v67 = v53;
    v67[1] = v54;
  }

  v68 = v116;
  v69 = v105;
  v70 = v104;
  sub_10000CA10(v50, v116, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  v71 = v103;
  sub_1002D7388(v68, v103, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  (*(v117 + 56))(v71, 0, 1, v49);
  v72 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
  swift_beginAccess();
  sub_10000C788(v71, v47 + v72, &qword_100976130, &qword_1007F92B0);
  swift_endAccess();
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_10000C4AC(v73, qword_100975E80);
  sub_1002D7388(v68, v70, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  sub_1002D7388(v68, v69, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    aBlock[0] = v118;
    *v76 = 138412546;
    v78 = (v70 + *(v49 + 20));
    v79 = *v78;
    v80 = v78[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1002D6414(v70, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    *(v76 + 4) = isa;
    *v77 = isa;
    *(v76 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    sub_1002D6414(v69, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v85 = sub_10000C4E4(v82, v84, aBlock);

    *(v76 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v74, v75, "SDAirDropNearFieldService: Starting to poll with public key: %@ listener ID: %s", v76, 0x16u);
    sub_100005508(v77, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v118);
    v68 = v116;
  }

  else
  {

    sub_1002D6414(v69, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    sub_1002D6414(v70, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  }

  v86 = v110;
  v87 = v108;
  v88 = *(v47 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue);
  v89 = v107;
  sub_1002D7388(v68, v107, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  v90 = (*(v117 + 80) + 48) & ~*(v117 + 80);
  v91 = swift_allocObject();
  v92 = v119;
  v91[2] = v119;
  v91[3] = v46;
  v91[4] = v87;
  v91[5] = v86;
  sub_10000CA10(v89, v91 + v90, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  aBlock[4] = sub_1002D70C8;
  aBlock[5] = v91;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008D9D70;
  v93 = _Block_copy(aBlock);
  v94 = v92;

  v95 = v111;
  static DispatchQoS.unspecified.getter();
  v123 = &_swiftEmptyArrayStorage;
  sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  v96 = v68;
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  v97 = v113;
  v98 = v115;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v93);

  (*(v109 + 8))(v97, v98);
  (*(v112 + 8))(v95, v114);
  sub_1002D6414(v96, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
}

uint64_t sub_10002952C()
{
  v1 = (type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + 40);

  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_100026AC0(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));
  v7 = *(v0 + v3 + v1[8]);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100029654(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002968C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v8 = static NSUserDefaults.airdrop.getter();
  v9 = SFAirDropUserDefaults.nearFieldSharingEnabled.getter();

  if ((v9 & 1) == 0 && a1 != 2)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - feature disabled";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

LABEL_18:

    return 0;
  }

  v15 = static NSUserDefaults.airdrop.getter();
  v16 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if ((v16 & 1) == 0)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - BoopToAction feature flag disabled";
    goto LABEL_17;
  }

  v17 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus);
  if ([v17 isClarityBoardEnabled])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - ClarityBoard Enabled";
    goto LABEL_17;
  }

  if ((a2 & 1) == 0 && [v17 lowPowerModeEnabled])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - Low power mode enabled";
    goto LABEL_17;
  }

  if ((a3 & 1) == 0 && ([v17 isAirDropAllowed] & 1) == 0)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - AirDrop is restricted";
    goto LABEL_17;
  }

  if (SFStoreDemoMode())
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - Store Demo Mode Enabled";
    goto LABEL_17;
  }

  if (![v17 screenOn])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - screen is off";
    goto LABEL_17;
  }

  if (![v17 wirelessEnabled])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - wifi is off";
    goto LABEL_17;
  }

  if (BYSetupAssistantNeedsToRun())
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - device in Buddy";
    goto LABEL_17;
  }

  if (([v17 systemUIFlags] & 0x80000) != 0)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_100975E80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "SDAirDropNearFieldService.startNearFieldController SKIP - Buddy is visible";
    goto LABEL_17;
  }

  return 1;
}

uint64_t sub_100029D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  swift_retain_n();
  sub_1002B3098(0, 0, v10, a5, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100029F5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10002A1D4(a1, v4, v5, v6);
}

uint64_t sub_10002A010()
{
  if (qword_1009736A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097A3F0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    v8 = *(v6 + 48);
    *(v7 + 4) = [v8 screenOn];
    *(v7 + 8) = 1024;
    *(v7 + 10) = [v8 isMirroringActive];

    _os_log_impl(&_mh_execute_header, v3, v4, "Screen state changed %{BOOL}d - mirroring state %{BOOL}d", v7, 0xEu);
  }

  else
  {
    v9 = *(v0 + 16);
  }

  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  *(v0 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10002A690, v10, 0);
}

void sub_10002A290()
{
  v1 = v0;
  v2 = type metadata accessor for SFPlatform();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = &_swiftEmptySetSingleton;
  v7 = *(v0 + 48);
  if (![v7 discoverableLevel])
  {
    sub_10002A73C();
  }

  if (![v7 screenStateSupportsAirDrop] || !objc_msgSend(v7, "discoverableLevel") || !objc_msgSend(v7, "wirelessEnabled") || (objc_msgSend(v7, "bluetoothEnabledIncludingRestricted") & 1) == 0)
  {
    sub_10002B150(v18, 0);
  }

  if ([v7 discoverableLevel])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002A73C();
  }

  if (![v7 screenStateSupportsAirDrop] || (v8 & 1) == 0 || !objc_msgSend(v7, "wirelessEnabled") || (objc_msgSend(v7, "bluetoothEnabledIncludingRestricted") & 1) == 0)
  {
    sub_10002B150(v18, 1);
  }

  if (![v7 discoverableLevel])
  {
    sub_10002A73C();
  }

  if (![v7 screenStateSupportsAirDrop] || (objc_msgSend(v7, "wirelessEnabled") & 1) == 0)
  {
    sub_10002B150(v18, 2);
  }

  v9 = v19;
  if (v19[2])
  {
    if (sub_10002B804(1u, v19))
    {
      sub_10002B8D0(1, 0);
    }

    if (sub_10002B804(0, v9))
    {
      sub_10002B8D0(0, 0);
    }

    if (sub_10002B804(2u, v9))
    {
      sub_10002B8D0(2, 0);
    }
  }

  v10 = sub_10002B804(1u, v9);

  static SFPlatform.watchOS.getter();
  v11 = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v6, v2);
  if (v10)
  {
    if ((v11 & 1) == 0)
    {
      v12 = *(v1 + 120);
      sub_1005C1F44(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID);
      v13 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleHashes;
      swift_beginAccess();
      v14 = *(v1 + v13);
      *(v1 + v13) = &_swiftEmptySetSingleton;
    }

    goto LABEL_32;
  }

  if (v11)
  {
LABEL_32:

    goto LABEL_34;
  }

  v15 = *(v1 + 120);
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bleScannerID;

  sub_1005C1F1C(v1 + v16, sub_1003710F0, v1);

LABEL_34:
  v17 = sub_10002B804(0, v9);

  if (!v17)
  {
    sub_100359850(0);
  }
}

uint64_t sub_10002A690()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_10002A290();

  return _swift_task_switch(sub_10002C54C, v1, 0);
}

id sub_10002A73C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    v2 = [v3 BOOLForKey:v4];
  }

  return v2;
}

uint64_t sub_10002A81C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    a2 = result;
  }

  *v2 = a2;
  return result;
}

double sub_10002A838()
{
  result = 1.0;
  if (v0 <= 1.0)
  {
    return v0;
  }

  return result;
}

uint64_t *sub_10002A848(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *result;
  v4 = *a2;
  return result;
}

void sub_10002A874(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[19];
  if (!v3)
  {
    return;
  }

  if (dword_100970E30 <= 40)
  {
    if (dword_100970E30 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_8;
      }

      v3 = v2[19];
    }

    v4 = [v3 screenOn];
    v5 = "off";
    if (v4)
    {
      v5 = "on";
    }

    v17 = v5;
    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_8:
  [v2 _update];
  v7 = *(a1 + 32);
  if (*(v7 + 56) != 1)
  {
    return;
  }

  v8 = *(v7 + 48);
  if (!v8)
  {
    return;
  }

  if (dword_100970E30 > 30)
  {
    goto LABEL_14;
  }

  if (dword_100970E30 == -1)
  {
    v9 = _LogCategory_Initialize();
    v7 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_14;
    }

    v8 = *(v7 + 48);
  }

  v18 = v8;
  LogPrintF();
  v7 = *(a1 + 32);
LABEL_14:
  v10 = [*(v7 + 48) allValues];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        if (dword_100970E30 <= 10 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          sub_10012EF30(v15);
        }

        [*(a1 + 32) _deviceFound:v15 andIsABufferedDevice:1];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v16 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v12 = v16;
    }

    while (v16);
  }

  [*(a1 + 32) ensureTimerStartedForBufferedDevicesPurge];
}

uint64_t sub_10002AB0C()
{
  v1 = *(v0 + 16);
  sub_10002AB6C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002AB6C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v43 - v7;
  if (qword_1009738C0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000C4AC(v8, qword_10097F240);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs;
    swift_beginAccess();
    *(v13 + 4) = *(*&v10[v14] + 16);
    *(v13 + 12) = 1024;
    *(v13 + 14) = [*&v10[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus] currentConsoleUser];

    _os_log_impl(&_mh_execute_header, v11, v12, "Browse device state - client count %ld - current user %{BOOL}d", v13, 0x12u);
  }

  else
  {
  }

  v15 = *&v10[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_deviceStatus];
  if (([v15 screenOn] & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_browseClientIDs;
    swift_beginAccess();
    if (*(*&v10[v16] + 16))
    {
      if ([v15 currentConsoleUser])
      {
        v56 = v9;
        v45 = v10;
        v44 = v16;
        v17 = *&v10[v16];
        v18 = v17 + 56;
        v19 = 1 << *(v17 + 32);
        v20 = -1;
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        v21 = v20 & *(v17 + 56);
        v22 = (v19 + 63) >> 6;
        v54 = v2 + 2;
        v55 = v17;
        swift_bridgeObjectRetain_n();
        v23 = 0;
        *&v24 = 136315138;
        v47 = v24;
        v53 = (v2 + 1);
        v0 = ((v2 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v52 = v0;
        v48 = v2;
        v46 = v6;
        while (v21)
        {
LABEL_18:
          v27 = v2[2];
          v28 = v57;
          v27(v57, *(v55 + 48) + v2[9] * (__clz(__rbit64(v21)) | (v23 << 6)), v1);
          v27(v6, v28, v1);
          v0 = v6;
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v50 = v31;
            v51 = swift_slowAlloc();
            v58 = v51;
            *v31 = v47;
            sub_100005430(&qword_100978CE0, &type metadata accessor for UUID);
            v49 = v30;
            v32 = v0;
            v33 = dispatch thunk of CustomStringConvertible.description.getter();
            v34 = v1;
            v36 = v35;
            v25 = *v53;
            (*v53)(v32, v34);
            v37 = sub_10000C4E4(v33, v36, &v58);
            v1 = v34;
            v2 = v48;

            v38 = v50;
            *(v50 + 1) = v37;
            v0 = v38;
            _os_log_impl(&_mh_execute_header, v29, v49, "Browse client %s still present after screen off", v38, 0xCu);
            sub_10000C60C(v51);

            v6 = v46;
          }

          else
          {

            v25 = *v53;
            (*v53)(v0, v1);
            v6 = v0;
          }

          v21 &= v21 - 1;
          v25(v57, v1);
        }

        while (1)
        {
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_25;
          }

          if (v26 >= v22)
          {
            break;
          }

          v21 = *(v18 + 8 * v26);
          ++v23;
          if (v21)
          {
            v23 = v26;
            goto LABEL_18;
          }
        }

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Removing delinquent browsers", v41, 2u);
        }

        v42 = *&v45[v44];
        *&v45[v44] = &_swiftEmptySetSingleton;

        sub_10047E40C();
      }
    }
  }
}

uint64_t sub_10002B150(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10002B248(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_10002B248(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002B5B4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10036CCBC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10002B394(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002B394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10028088C(&unk_10097F0B0, &qword_1007FD8D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_10002B5B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10028088C(&unk_10097F0B0, &qword_1007FD8D0);
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
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
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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