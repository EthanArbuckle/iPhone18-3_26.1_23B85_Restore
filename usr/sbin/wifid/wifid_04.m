void sub_10004B118(uint64_t a1)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  valuePtr = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if (!a1)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "__WiFiLQAMgrDiagProbeResultCallBack"}];
    }

    goto LABEL_45;
  }

  v2 = Current;
  v3 = *(a1 + 304);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B53C;
  block[3] = &unk_10025EFD8;
  block[4] = &v33;
  block[5] = a1;
  dispatch_sync(v3, block);
  v4 = v34[3];
  if (!v4)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CurrentProbe is NULL", "__WiFiLQAMgrDiagProbeResultCallBack"}];
    }

    goto LABEL_45;
  }

  Value = CFDictionaryGetValue(v4, @"kWiFiLqaMgrError");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
  }

  v6 = *(a1 + 312);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2 - v6;
  }

  v8 = CFDictionaryGetValue(v34[3], @"kWiFiLqaMgrProbeStats");
  v9 = objc_autoreleasePoolPush();
  if (!v8)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: probeResultsRef is NULL", "__WiFiLQAMgrDiagProbeResultCallBack"}];
    }

LABEL_45:
    objc_autoreleasePoolPop(v9);
    goto LABEL_36;
  }

  if (off_100298C40)
  {
    v10 = "";
    if (!valuePtr)
    {
      v10 = "no ";
    }

    [off_100298C40 WFLog:2 message:{"-------- DiagProbe finished in %f secs with %serror (%ld) ---------", *&v7, v10, valuePtr}];
  }

  objc_autoreleasePoolPop(v9);
  for (i = 0; i < CFArrayGetCount(v8); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
    v13 = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrNumProbesSent");
    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberCFIndexType, &v30);
    }

    v14 = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrNumProbesFail");
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberCFIndexType, &v29);
    }

    v15 = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrAverageRTT");
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberCFIndexType, &v28);
    }

    v16 = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrMinimumRTT");
    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberCFIndexType, &v27);
    }

    v17 = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrMaximumRTT");
    if (v17)
    {
      CFNumberGetValue(v17, kCFNumberCFIndexType, &v26);
    }

    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:2 message:{"Probes Sent %ld, Fail %ld Error %ld avgRtt %ld minRtt %ld maxRtt %ld", v30, v29, valuePtr, v28, v27, v26}];
    }

    objc_autoreleasePoolPop(v18);
  }

  v19 = CFDictionaryGetValue(v34[3], @"kWiFiLqaMgrDiagCallback");
  if (v19)
  {
    CFNumberGetValue(v19, kCFNumberCFIndexType, &v32);
  }

  v20 = CFDictionaryGetValue(v34[3], @"kWiFiLqaMgrDiagCbContext");
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberCFIndexType, &v31);
  }

  if (v32 && valuePtr != 2)
  {
    v21 = CFDictionaryGetValue(v34[3], @"kWiFiLqaMgrIpv4Addr");
    v32(v21, v8, valuePtr, v31);
  }

  sub_100048148(a1, 0);
LABEL_36:
  v22 = v34[3];
  if (v22)
  {
    CFRelease(v22);
    v34[3] = 0;
  }

  _Block_object_dispose(&v33, 8);
}

CFTypeRef sub_10004B53C(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = *(*(a1 + 40) + 320);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_10004B564(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  pthread_mutex_lock(&stru_100297A18);
  v9 = *(a1 + 32);
  v8 = (a1 + 32);
  v10 = *(v9 + 2992);
  v11 = objc_autoreleasePoolPush();
  if (v10)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s LQA manager is in closing\n", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback_block_invoke"}];
    }

    v12 = v11;
    goto LABEL_5;
  }

  if (off_100298C40)
  {
    v14 = "failure";
    if (!a2)
    {
      v14 = "success";
    }

    [off_100298C40 WFLog:2 message:{"%s Symptom Fetch Result %s", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback_block_invoke", v14}];
  }

  objc_autoreleasePoolPop(v11);
  *(*v8 + 516) = 0;
  v15 = +[WiFiUsageMonitor sharedInstance];
  if (!a2)
  {
    if (a3)
    {
      sub_100144738(v15, v8, a4, a3);
    }

    v16 = *v8;
    if (!*(*v8 + 16))
    {
      sub_100144A98();
      goto LABEL_6;
    }

    v17 = *(v16 + 20);
    switch(v17)
    {
      case 1:
        v19 = objc_autoreleasePoolPush();
        v20 = off_100298C40;
        if (!off_100298C40)
        {
LABEL_33:
          v12 = v19;
LABEL_5:
          objc_autoreleasePoolPop(v12);
LABEL_6:
          pthread_mutex_unlock(&stru_100297A18);
          v13 = *v8;

          CFRelease(v13);
          return;
        }

        v21 = "%s: Ignore SymptomFmwk Event in GoodLinkState";
        break;
      case 0:
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: SymptomFmwk Event in UnassociatedState", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback_block_invoke"}];
        }

        goto LABEL_33;
      case 4:
        v19 = objc_autoreleasePoolPush();
        v20 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_33;
        }

        v21 = "%s: Ignore SymptomFmwk Event in RoamwaitState";
        break;
      default:
        if (*(v16 + 516))
        {
          if (*(v16 + 653) && *(v16 + 654))
          {
            sub_1001449C0();
          }

          else
          {
            v18 = *(v16 + 1288);
            if (v18)
            {
              dispatch_async_f(v18, v16, sub_100142248);
            }
          }
        }

        else
        {
          sub_100144A2C();
        }

        goto LABEL_6;
    }

    [v20 WFLog:3 message:{v21, "__WiFiLQAMgrTriggetDisconnectSymptomsCallback_block_invoke"}];
    goto LABEL_33;
  }
}

void sub_10004B7AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!*(a1 + 2921))
  {
    *(a1 + 2921) = [*(a1 + 2984) __configureRapportDiscoveryClient];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10004B824(const __CFNumber *a1)
{

  return CFNumberGetValue(a1, kCFNumberIntType, (v1 - 116));
}

void sub_10004B8F0(id a1)
{
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: creating WiFiMaintenanceTaskManager", "+[WiFiMaintenanceTaskManager sharedWiFiMaintenanceTaskManager]_block_invoke"}];
  }

  objc_autoreleasePoolPop(v1);
  qword_1002984E0 = objc_alloc_init(WiFiMaintenanceTaskManager);
}

void sub_10004BBE0(uint64_t a1, _xpc_activity_s *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: state %ld", "-[WiFiMaintenanceTaskManager scheduleOrphanedSetsCleanUp]_block_invoke", xpc_activity_get_state(a2)}];
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 32) wifiManager])
  {
    if ([*(a1 + 32) queue])
    {
      v5 = [*(a1 + 32) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004BD58;
      block[3] = &unk_10025ED68;
      block[4] = *(a1 + 32);
      dispatch_async(v5, block);
      return;
    }

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Nil queue", "-[WiFiMaintenanceTaskManager scheduleOrphanedSetsCleanUp]_block_invoke"}];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null wifi manager ref", "-[WiFiMaintenanceTaskManager scheduleOrphanedSetsCleanUp]_block_invoke"}];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10004BD58(uint64_t a1)
{
  v1 = [*(a1 + 32) wifiManager];

  sub_100087174(v1);
}

void sub_10004BF94(uint64_t a1, _xpc_activity_s *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: state %ld", "-[WiFiMaintenanceTaskManager scheduleOutdatedListEntriesCleanUp]_block_invoke", xpc_activity_get_state(a2)}];
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 32) wifiManager])
  {
    if ([*(a1 + 32) queue])
    {
      v5 = [*(a1 + 32) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004C10C;
      block[3] = &unk_10025ED68;
      block[4] = *(a1 + 32);
      dispatch_async(v5, block);
      return;
    }

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Nil queue", "-[WiFiMaintenanceTaskManager scheduleOutdatedListEntriesCleanUp]_block_invoke"}];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null wifi manager ref", "-[WiFiMaintenanceTaskManager scheduleOutdatedListEntriesCleanUp]_block_invoke"}];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10004C10C(uint64_t a1)
{
  sub_100160A40([*(a1 + 32) wifiManager]);
  v2 = [*(a1 + 32) wifiManager];

  sub_100087844(v2);
}

void sub_10004C318(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: state %ld", "-[WiFiMaintenanceTaskManager schedule3BarsObserver]_block_invoke", state}];
  }

  objc_autoreleasePoolPop(v5);
  if (xpc_activity_should_defer(activity))
  {
    v6 = xpc_activity_set_state(activity, 3);
    v7 = objc_autoreleasePoolPush();
    if (v6)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Deferring 3Bars activity", "-[WiFiMaintenanceTaskManager schedule3BarsObserver]_block_invoke"}];
      }
    }

    else if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Failed to defer the periodic 3Bars xpc activity", "-[WiFiMaintenanceTaskManager schedule3BarsObserver]_block_invoke"}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else if (state == 2 && xpc_activity_set_state(activity, 4))
  {
    v8 = +[WiFi3BarsObserver sharedWiFi3BarsObserver];
    v9 = [*(a1 + 32) wifiManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004C4C0;
    v10[3] = &unk_10025ED40;
    v10[4] = activity;
    [v8 run3BarsObserver:v9 withActivity:activity withCompletion:v10];
  }
}

void sub_10004C754(uint64_t a1, _xpc_activity_s *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: state %ld", "-[WiFiMaintenanceTaskManager schedulePNLMigration]_block_invoke", xpc_activity_get_state(a2)}];
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 32) wifiManager])
  {
    if ([*(a1 + 32) queue])
    {
      v5 = [*(a1 + 32) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004C8CC;
      block[3] = &unk_10025ED68;
      block[4] = *(a1 + 32);
      dispatch_async(v5, block);
      return;
    }

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Nil queue", "-[WiFiMaintenanceTaskManager schedulePNLMigration]_block_invoke"}];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null wifi manager ref", "-[WiFiMaintenanceTaskManager schedulePNLMigration]_block_invoke"}];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10004C8CC(uint64_t a1)
{
  v1 = [*(a1 + 32) wifiManager];

  sub_100087BD8(v1);
}

id sub_10004CB20(uint64_t a1, _xpc_activity_s *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: state %ld", "-[WiFiMaintenanceTaskManager scheduleHistoricNetworkPerformanceFeedSync]_block_invoke", xpc_activity_get_state(a2)}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = *(a1 + 32);

  return [v5 networkPerformanceFeedSync];
}

intptr_t sub_10004CE2C(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: failed (error = %@ data = %@)", "-[WiFiMaintenanceTaskManager networkPerformanceFeedSync]_block_invoke", a3, a2}];
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:@"historical"];
    if (v6)
    {
      v7 = v6;
      v8 = [*(a1 + 32) objectForKeyedSubscript:kSymptomAnalyticsServiceNetworkAttachmentHistorical];
      if (v8)
      {
        v9 = v8;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = 0;
          v14 = *v26;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v7);
              }

              v16 = *(*(&v25 + 1) + 8 * i);
              if ([objc_msgSend(v16 commonPrefixWithString:v9 options:{0), "isEqualToString:", v9}])
              {
                v17 = [v7 objectForKey:v16];
                if (v17)
                {
                  v18 = v17;
                  if ([v17 objectForKeyedSubscript:@"isKnownGood"])
                  {
                    v19 = [objc_msgSend(v18 objectForKeyedSubscript:{@"isKnownGood", "BOOLValue"}];
                    v12 += v19 ^ 1;
                    v13 += v19;
                  }
                }
              }
            }

            v11 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v11);
        }

        else
        {
          v12 = 0;
          v13 = 0;
        }

        if (v13 | v12)
        {
          v22 = +[NSMutableDictionary dictionary];
          [v22 setObject:*(a1 + 40) forKey:@"ssid"];
          [v22 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v13 >= v12), @"isTCPGood"}];
          v23 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v24 = @"bad";
            if (v13 >= v12)
            {
              v24 = @"good";
            }

            [off_100298C40 WFLog:3 message:{"%s: step 2 - %@ is known %@", "-[WiFiMaintenanceTaskManager networkPerformanceFeedSync]_block_invoke", v9, v24}];
          }

          objc_autoreleasePoolPop(v23);
          [*(a1 + 48) addObject:v22];
        }
      }
    }
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

void sub_10004D1F0(id a1, OS_xpc_object *a2)
{
  state = xpc_activity_get_state(a2);
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: state %ld", "-[WiFiMaintenanceTaskManager scheduleWCADownloadObserver]_block_invoke", state}];
  }

  objc_autoreleasePoolPop(v4);
  if (xpc_activity_should_defer(a2))
  {
    v5 = xpc_activity_set_state(a2, 3);
    v6 = objc_autoreleasePoolPush();
    if (v5)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Deferring WCA download activity", "-[WiFiMaintenanceTaskManager scheduleWCADownloadObserver]_block_invoke"}];
      }
    }

    else if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Failed to defer the periodic WCA download xpc activity", "-[WiFiMaintenanceTaskManager scheduleWCADownloadObserver]_block_invoke"}];
    }

    objc_autoreleasePoolPop(v6);
  }

  else if (state == 2 && xpc_activity_set_state(a2, 4))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D370;
    block[3] = &unk_10025ED68;
    block[4] = a2;
    dispatch_async(qword_100298C50, block);
  }
}

BOOL sub_10004D370(uint64_t a1)
{
  [+[WCAClient sharedClient](WCAClient "sharedClient")];
  v2 = *(a1 + 32);

  return xpc_activity_set_state(v2, 5);
}

void sub_10004D480(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      WiFiCloudSyncEngineRegisterCallbacksWithQueue();
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s", "WiFiCloudSyncInitSyncEngine"}];
      }

      objc_autoreleasePoolPop(v2);
    }

    else
    {
      sub_100144E98();
    }
  }

  else
  {
    sub_100144F04();
  }
}

CFStringRef sub_10004D538(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s - for network %@", "__WiFiCloudSyncIsPasswordPresent", sub_10000A878(a1)}];
    }

    objc_autoreleasePoolPop(v2);

    return sub_10009FDE4(a1);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null networkRef", "__WiFiCloudSyncIsPasswordPresent"}];
    }

    objc_autoreleasePoolPop(v2);
    return 0;
  }
}

void sub_10004D60C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s - for network %@", "__WiFiCloudSyncSetPasswordSyncState", sub_10000A878(a1)}];
    }

    objc_autoreleasePoolPop(v2);

    sub_10009FE90();
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null networkRef", "__WiFiCloudSyncSetPasswordSyncState"}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

void *sub_10004D6F0(void **a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "__WiFiCloudSyncCopyAllNetworks"}];
  }

  objc_autoreleasePoolPop(v2);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a1)
  {
    v3 = sub_10000EEE0(a1);
    if (v3)
    {
      sub_100144F70(&block, &v8, a1, v3);
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null queue", "__WiFiCloudSyncCopyAllNetworks"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_10004D7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004D800(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%@", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10004D868(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = objc_autoreleasePoolPush();
    if (a2)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s", "WiFiCloudSyncAddNetworkToCloud"}];
      }

      objc_autoreleasePoolPop(v5);
      WiFiCloudSyncEngineAddNetworkToCloud();
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiCloudSyncAddNetworkToCloud"}];
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    sub_100144FD8();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10004D93C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = objc_autoreleasePoolPush();
    if (a2)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s", "WiFiCloudSyncRemoveNetworkFromCloud"}];
      }

      objc_autoreleasePoolPop(v5);
      WiFiCloudSyncEngineRemoveNetworkFromCloud();
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiCloudSyncRemoveNetworkFromCloud"}];
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    sub_100145044();
  }

  objc_autoreleasePoolPop(v4);
}

__CFArray *sub_10004DA28(uint64_t a1)
{
  result = sub_10007ACD4(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10004DA78(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4)
{
  if (!a1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v10 = "%s: Invalid device!";
LABEL_11:
      [v9 WFLog:4 message:{v10, "WiFiMetricsManagerSubmitAssociationFailure"}];
    }

LABEL_12:

    objc_autoreleasePoolPop(v8);
    return;
  }

  if (!a3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v10 = "%s: no Network object!";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!qword_1002984F8)
  {
    return;
  }

  if (sub_10007D728(*(qword_1002984F8 + 16)))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerSubmitAssociationFailure"}];
    }

    goto LABEL_12;
  }

  v11 = sub_10000A540(a3, @"BSSID");
  if (!sub_10009DB7C(a3))
  {
    theString = v11;
    v18 = 0;
    v19 = 0;
    v64 = kCFAllocatorDefault;
LABEL_30:
    v21 = 1;
LABEL_31:
    v65 = v21;
    v22 = sub_10001CB84(a3);
    v23 = "Hidden ";
    if (!v22)
    {
      v23 = "";
    }

    v63 = v23;
    if (sub_100009730(a3))
    {
      v24 = "EAP ";
    }

    else
    {
      v24 = "";
    }

    if (sub_10009E148(a3))
    {
      v25 = "SAE ";
    }

    else
    {
      v25 = "";
    }

    cf = v18;
    if (sub_10009E148(a3))
    {
      v26 = "WPA3 ";
    }

    else if (sub_10009EB80(a3))
    {
      v26 = "WPA2 ";
    }

    else if (sub_10009EB70(a3))
    {
      v26 = "WPA ";
    }

    else
    {
      v26 = "";
    }

    v66 = v19;
    if (!v19)
    {
      v19 = "";
    }

    if (sub_10009EC84(a3))
    {
      v29 = "WAPI PSK ";
    }

    else
    {
      v29 = "";
    }

    v30 = sub_10009ECB4(a3);
    v31 = "WAPI CERT ";
    if (!v30)
    {
      v31 = "";
    }

    v28 = CFStringCreateWithFormat(v64, 0, @"%s%s%s%s%s%s%s", v63, v24, v25, v26, v19, v29, v31);
    Length = CFStringGetLength(v28);
    v33 = malloc_type_malloc(Length + 27, 0x10000408DD1DBA6uLL);
    if (v33)
    {
      v34 = v33;
      bzero(v33, Length + 27);
      if (Length)
      {
        CFStringGetCString(v28, v34 + 26, Length + 1, 0);
      }

      *v34 = a2;
      *(v34 + 11) = sub_10009E59C(a3, @"CHANNEL");
      *(v34 + 17) = sub_10009E59C(a3, @"RSSI");
      *(v34 + 19) = a4;
      *(v34 + 13) = sub_10009E4E8(a3, @"CHANNEL_FLAGS");
      v35 = sub_100006F88(a1);
      v36 = sub_10005B2BC(a1, v35);
      if (v36)
      {
        v37 = v36;
        Value = CFDictionaryGetValue(v36, @"DEAUTH_EA");
        if (Value)
        {
          v39 = Value;
          v40 = CFStringGetLength(Value);
          v41 = malloc_type_malloc(v40 + 1, 0x100004077774924uLL);
          if (v41)
          {
            v42 = v41;
            bzero(v41, v40 + 1);
            if (CFStringGetCString(v39, v42, v40 + 1, 0))
            {
              v43 = ether_aton(v42);
              if (v43)
              {
                v44 = *v43->octet;
                *(v34 + 10) = v43->octet[2];
                *(v34 + 4) = v44;
              }
            }

            free(v42);
          }
        }

        v45 = CFDictionaryGetValue(v37, @"DEAUTH_REASON");
        if (v45)
        {
          LODWORD(valuePtr[0]) = -1431655766;
          CFNumberGetValue(v45, kCFNumberIntType, valuePtr);
          v34[1] = valuePtr[0];
        }

        CFRelease(v37);
      }

      if (theString)
      {
        v46 = CFStringGetLength(theString);
        v47 = malloc_type_malloc(v46 + 1, 0x100004077774924uLL);
        if (v47)
        {
          v48 = v47;
          bzero(v47, v46 + 1);
          if (CFStringGetCString(theString, v48, v46 + 1, 0))
          {
            v49 = ether_aton(v48);
            if (v49)
            {
              v50 = *v49->octet;
              *(v34 + 25) = v49->octet[2];
              *(v34 + 23) = v50;
            }
          }

          free(v48);
        }
      }

      v51 = objc_autoreleasePoolPush();
      if (objc_opt_class())
      {
        v52 = objc_autoreleasePoolPush();
        v53 = sub_10000A878(a3);
        v54 = sub_10000A540(a3, @"BSSID");
        if (v53)
        {
          v55 = v54;
          if (v54)
          {
            v56 = objc_opt_new();
            [v56 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *v34), @"error"}];
            [v56 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", v34[1]), @"deauthReason"}];
            [v56 setObject:+[WAClient ouiFromThreeBytes:](WAClient forKeyedSubscript:{"ouiFromThreeBytes:", v34 + 2), @"deauthSourceOUI"}];
            if ([v56 objectForKeyedSubscript:@"deauthSourceOUI"])
            {
              v57 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: Failed to append deauthSourceOUI to CA event", "__WiFiMetricsManagerUpdateDBAndSubmitAssociationFailure"}];
              }

              objc_autoreleasePoolPop(v57);
            }

            [v56 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *(v34 + 11)), @"channel"}];
            [v56 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *(v34 + 17)), @"rssi"}];
            [v56 setObject:+[WAClient ouiFromThreeBytes:](WAClient forKeyedSubscript:{"ouiFromThreeBytes:", v34 + 23), @"bssidOUI"}];
            if ([v56 objectForKeyedSubscript:@"bssidOUI"])
            {
              v58 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: Failed to append bssidOUI to CA event", "__WiFiMetricsManagerUpdateDBAndSubmitAssociationFailure"}];
              }

              objc_autoreleasePoolPop(v58);
            }

            [v56 setObject:+[NSString stringWithCString:encoding:](NSString forKeyedSubscript:{"stringWithCString:encoding:", v34 + 26, 1), @"security"}];
            [+[WAClient sharedClient](WAClient "sharedClient")];
            if (v56)
            {
            }

            v59 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
            v60 = +[NSDate now];
            valuePtr[0] = _NSConcreteStackBlock;
            valuePtr[1] = 3221225472;
            valuePtr[2] = sub_100057848;
            valuePtr[3] = &unk_10025F208;
            valuePtr[4] = v34;
            [v59 joinEventOnBssid:v55 ssid:v53 at:v60 with:valuePtr];
          }

          else
          {
            sub_100148738();
          }
        }

        else
        {
          sub_100148798();
        }

        objc_autoreleasePoolPop(v52);
      }

      free(v34);
      objc_autoreleasePoolPop(v51);
    }

    if (v65)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  if (sub_10000A540(a3, @"WEP_AUTH_Flags"))
  {
    v12 = sub_100034EEC(a3, @"WEP_AUTH_Flags");
    v13 = kCFAllocatorDefault;
    v14 = "40 Bit";
    if ((v12 & 1) == 0)
    {
      v14 = "104 Bit";
    }

    v15 = "Open";
    if ((v12 & 4) == 0)
    {
      v15 = "Shared";
    }

    v16 = "Hashed";
    if ((v12 & 2) == 0)
    {
      v16 = "Unhashed";
    }

    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"WEP network: %s %s %s (0x%lx)", v14, v15, v16, v12);
  }

  else
  {
    v13 = kCFAllocatorDefault;
    v17 = CFStringCreateWithCString(kCFAllocatorDefault, "WEP network", 0);
  }

  v18 = v17;
  if (!v17)
  {
    v64 = v13;
    theString = v11;
    v19 = 0;
    goto LABEL_30;
  }

  v20 = CFStringGetLength(v17);
  v19 = malloc_type_malloc(v20 + 1, 0x100004077774924uLL);
  bzero(v19, v20 + 1);
  if (CFStringGetCString(v18, v19, v20 + 1, 0))
  {
    v21 = 0;
    v64 = v13;
    theString = v11;
    goto LABEL_31;
  }

  v66 = v19;
  cf = v18;
  v27 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to retrieve WEP security string!", "WiFiMetricsManagerSubmitAssociationFailure"}];
  }

  objc_autoreleasePoolPop(v27);
  v28 = 0;
LABEL_92:
  CFRelease(cf);
LABEL_93:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v66)
  {
    free(v66);
  }
}

uint64_t sub_10004E308(uint64_t a1, int a2, int a3)
{
  if (a1 > 255)
  {
    if (a1 >= 0x2000)
    {
      if (a1 < 0x8000)
      {
        if (a1 != 0x2000)
        {
          if (a1 == 0x4000)
          {
            return 15;
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (a1 == 0x8000)
        {
          return 16;
        }

        if (a1 != 0x10000 && a1 != 0x20000)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      if (a1 <= 1023)
      {
        if (a1 == 256)
        {
          return 18;
        }

        if (a1 == 512)
        {
          return 20;
        }

        goto LABEL_46;
      }

      if (a1 == 1024)
      {
        return 9;
      }

      if (a1 == 2048)
      {
        return 8;
      }

      if (a1 != 4096)
      {
        goto LABEL_46;
      }
    }

LABEL_35:
    if (a3)
    {
      return 11;
    }

    else
    {
      return 5;
    }
  }

  if (a1 <= 7)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 3;
      }

      if (a1 == 4)
      {
        return 4;
      }
    }

    else
    {
      if (!a1)
      {
        return a2 != 0;
      }

      if (a1 == 1)
      {
        return 2;
      }
    }

    goto LABEL_46;
  }

  if (a1 > 31)
  {
    switch(a1)
    {
      case 0x20:
        return 19;
      case 0x40:
        return 17;
      case 0x80:
        return 6;
    }

    goto LABEL_46;
  }

  if (a1 == 8 || a1 == 16)
  {
    goto LABEL_35;
  }

LABEL_46:
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: unknownt auth type (%d)", "WiFiMetricEnhancedSecurityTypeFromAuthType", a1}];
  }

  objc_autoreleasePoolPop(v5);
  return 111;
}

void sub_10004E4C4(void *a1)
{
  if (!qword_1002984F8)
  {
    goto LABEL_8;
  }

  if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
  {
    sub_100148A40();
LABEL_8:
    sub_100148AAC(a1);
    return;
  }

  if (a1)
  {
    v2 = +[WiFiManagerAnalytics sharedInstance];

    [(WiFiManagerAnalytics *)v2 submitWiFiAnalyticsMessage:a1];
  }

  else
  {
    sub_1001489D4();
  }
}

void sub_10004E544(uint64_t a1, int a2, int a3, int a4, int a5, __int16 a6, const void *a7, int a8)
{
  v16 = objc_autoreleasePoolPush();
  HIDWORD(v43[0]) = 0;
  if (a1 && qword_1002984F8)
  {
    if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
    {
      sub_100148C04();
    }

    else
    {
      v17 = malloc_type_malloc(0xE0uLL, 0x1060040EB79B1ABuLL);
      if (v17)
      {
        v25 = v17;
        *(v17 + 2) = 0u;
        v17[13] = 0u;
        *(v17 + 194) = 0u;
        *(v17 + 178) = 0u;
        *(v17 + 162) = 0u;
        *(v17 + 146) = 0u;
        *(v17 + 130) = 0u;
        *(v17 + 114) = 0u;
        *(v17 + 98) = 0u;
        *(v17 + 82) = 0u;
        *(v17 + 66) = 0u;
        *(v17 + 50) = 0u;
        *(v17 + 34) = 0u;
        *(v17 + 18) = 0u;
        *v17 = a2 != 0;
        *(v17 + 1) = a3 != 0;
        *(v17 + 1) = a4;
        *(v17 + 2) = a5;
        *(v17 + 6) = a6;
        *(v17 + 54) = a8;
        sub_10014C1C0(a1, v18, v19, v20, v21, v22, v23, v24, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8]);
        if (sub_1000634F8(a1, v26, v43 + 1))
        {
          *(v25 + 36) = 16;
          *(v25 + 33) = BYTE4(v43[0]);
        }

        if (a7)
        {
          qword_1002984F0 = CFAbsoluteTimeGetCurrent();
          *(v25 + 104) = 0;
          sub_10004E80C(a1, v25, a7);
          sub_1001458A0(a1, a7, v25);
        }

        else if (a2)
        {
          sub_100148B38();
        }

        else
        {
          if (*&qword_1002984F0 == 0.0)
          {
            v27 = 0.0;
          }

          else
          {
            v27 = CFAbsoluteTimeGetCurrent() - *&qword_1002984F0;
          }

          *(v25 + 104) = v27;
          v28 = sub_100063B0C(a1);
          if (v28)
          {
            v41 = v28;
            sub_10004E80C(a1, v25, v28);
            sub_1001458A0(a1, v41, v25);
            CFRelease(v41);
          }
        }

        v29 = *(v25 + 112);
        if (v29)
        {
          CFRelease(v29);
          *(v25 + 112) = 0;
        }

        v30 = *(v25 + 120);
        if (v30)
        {
          CFRelease(v30);
          *(v25 + 120) = 0;
        }

        v31 = *(v25 + 128);
        if (v31)
        {
          CFRelease(v31);
          *(v25 + 128) = 0;
        }

        v32 = *(v25 + 136);
        if (v32)
        {
          CFRelease(v32);
          *(v25 + 136) = 0;
        }

        v33 = *(v25 + 144);
        if (v33)
        {
          CFRelease(v33);
          *(v25 + 144) = 0;
        }

        v34 = *(v25 + 152);
        if (v34)
        {
          CFRelease(v34);
          *(v25 + 152) = 0;
        }

        v35 = *(v25 + 160);
        if (v35)
        {
          CFRelease(v35);
          *(v25 + 160) = 0;
        }

        v36 = *(v25 + 168);
        if (v36)
        {
          CFRelease(v36);
          *(v25 + 168) = 0;
        }

        v37 = *(v25 + 176);
        if (v37)
        {
          CFRelease(v37);
          *(v25 + 176) = 0;
        }

        v38 = *(v25 + 184);
        if (v38)
        {
          CFRelease(v38);
          *(v25 + 184) = 0;
        }

        v39 = *(v25 + 192);
        if (v39)
        {
          CFRelease(v39);
          *(v25 + 192) = 0;
        }

        v40 = *(v25 + 200);
        if (v40)
        {
          CFRelease(v40);
        }

        free(v25);
      }

      else
      {
        sub_100148B98();
      }
    }
  }

  else
  {
    sub_100148C70();
  }

  objc_autoreleasePoolPop(v16);
}

void sub_10004E80C(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = sub_10000A540(a3, @"BSSID");
  v200 = sub_10000D83C("__WiFiMetricsManagerCopyLinkChangeNetworkParams");
  if (!qword_1002984F8)
  {
    sub_100148DEC();
    goto LABEL_224;
  }

  if (!v6)
  {
    sub_100148D80();
    goto LABEL_224;
  }

  v7 = sub_10000A540(a3, @"WPS_PROB_RESP_IE");
  v8 = sub_10000A540(a3, @"APPLE_IE");
  v9 = sub_10000A540(a3, @"80211D_IE");
  if (v7)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s QFA WPS PROBE RESPONSE IE found in link change metric", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
    }

LABEL_6:
    objc_autoreleasePoolPop(v10);
    goto LABEL_14;
  }

  v11 = sub_100072D44(*(qword_1002984F8 + 16));
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
    goto LABEL_13;
  }

  v207.length = Count;
  v207.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v12, v207, a3);
  if ((FirstIndexOfValue & 0x8000000000000000) == 0 && (ValueAtIndex = CFArrayGetValueAtIndex(v12, FirstIndexOfValue)) != 0 && (v16 = ValueAtIndex, (v17 = sub_10000A540(ValueAtIndex, @"BSSID")) != 0) && CFStringCompare(v6, v17, 1uLL) == kCFCompareEqualTo)
  {
    v7 = sub_10000A540(v16, @"WPS_PROB_RESP_IE");
    if (v7)
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s QFA WPS PROBE RESPONSE IE found in Known networks cache", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
      }

      goto LABEL_6;
    }
  }

  else
  {
LABEL_13:
    v7 = 0;
  }

LABEL_14:
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v19 = *(qword_1002984F8 + 16);
  sub_1000211F8();
  if (v20)
  {
    *(a2 + 112) = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v164 = sub_10015E060(*(qword_1002984F8 + 16));
  *(a2 + 120) = CFStringCreateWithFormat(0, 0, @"%d");
  v21 = sub_10009DF00(a3);
  if (v21)
  {
    v22 = v21;
    v208.location = 0;
    v208.length = 3;
    CFDataGetBytes(v21, v208, (a2 + 40));
    CFRelease(v22);
  }

  *(a2 + 16) = sub_10009E59C(a3, @"CHANNEL");
  v23 = sub_1000A028C(a3);
  if (v23)
  {
    CFNumberGetValue(v23, kCFNumberSInt32Type, (a2 + 20));
  }

  *(a2 + 24) = sub_1000365A0(a3);
  *(a2 + 28) = sub_1000A02C4(a3);
  v24 = sub_10009E6B8(a3);
  v25 = sub_10000AFE4(a3);
  if (v24)
  {
    v26 = 33;
  }

  else
  {
    v26 = 32;
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  if (sub_10009E67C(a3))
  {
    v27 |= 0x40u;
  }

  if (sub_10000A540(a3, @"80211D_IE"))
  {
    v27 |= 8u;
  }

  if (sub_100083D54(*(qword_1002984F8 + 16)))
  {
    v27 |= 0x80u;
  }

  if (sub_10000A7CC(a3))
  {
    v27 |= 0x100u;
  }

  if (sub_1000A1F04(a3))
  {
    v27 |= 0x800u;
  }

  if (sub_1000A18CC(a3))
  {
    v27 |= 0x400u;
  }

  v28 = sub_10000A540(a3, @"NetworkAtLocationOfInterestType");
  if (v28)
  {
    *valuePtr = 0;
    CFNumberGetValue(v28, kCFNumberSInt32Type, valuePtr);
    v29 = v27 | 0x1000;
    if (*valuePtr != 2)
    {
      v29 = v27;
    }

    if (*valuePtr == 5)
    {
      v27 = v29 | 0x2000;
    }

    else
    {
      v27 = v29;
    }
  }

  if (sub_1000A2774(a3))
  {
    v27 |= 0x4000u;
  }

  sub_10017630C(a3, v30, v31, v32, v33, v34, v35, v36, v164, v167, HIDWORD(v167), v170, v173, v176, v179, v182, v185, v188, v191, v194, v196, v198, v199);
  if (v37)
  {
    v27 |= 2u;
  }

  if (sub_10009E718(a3))
  {
    v27 |= 4u;
  }

  if (sub_10000A604(a3))
  {
    v27 |= 0x20000u;
  }

  if (sub_10000A540(a3, @"WiFiInstantHotspotJoining") == kCFBooleanTrue)
  {
    v27 |= 0x40000u;
  }

  if (sub_10000A540(a3, @"WiFiAutoInstantHotspotJoining") == kCFBooleanTrue)
  {
    if (sub_100088E40(*(qword_1002984F8 + 16)) == 2)
    {
      v38 = 0x100000;
    }

    else
    {
      v38 = 0x80000;
    }

    v27 |= v38;
  }

  if (sub_10000A540(a3, @"WiFiNetworkAttributeIsPublic"))
  {
    v27 |= 0x200000u;
  }

  if (sub_10000A540(a3, @"WiFiNetworkAttributeIsMoving"))
  {
    v27 |= 0x400000u;
  }

  v39 = sub_10000A540(a3, @"WiFiNetworkAttributeIsLowQuality");
  v40 = v27 | 0x800000;
  if (!v39)
  {
    v40 = v27;
  }

  *(a2 + 36) = v40;
  if (v7)
  {
    *(a2 + 36) = v40 | 0x8000;
    v41 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v165 = "__WiFiMetricsManagerCopyLinkChangeNetworkParams";
      [off_100298C40 WFLog:3 message:"%s QFALOG : wps in probe response present "];
    }

    objc_autoreleasePoolPop(v41);
  }

  if (v8)
  {
    *(a2 + 36) |= 0x10000u;
  }

  if (v9)
  {
    *(a2 + 36) |= 8u;
  }

  *(a2 + 44) = sub_10009F418(a3);
  if (sub_100064A34(a1))
  {
    v48 = sub_10009E148(a3) != 0;
  }

  else
  {
    v48 = 0;
  }

  *valuePtr = -1431655766;
  sub_10015043C(a1, valuePtr, v42, v43, v44, v45, v46, v47, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v197);
  v201 = a1;
  if (v49)
  {
    v50 = v49;
    v51 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v166 = "__WiFiGetAuthType";
      v169 = v50;
      [off_100298C40 WFLog:4 message:"%s: fail to get auth type (%d)"];
    }

    objc_autoreleasePoolPop(v51);
    v52 = 111;
  }

  else
  {
    v53 = *valuePtr;
    v54 = sub_10009DB7C(a3);
    v52 = sub_10004E308(v53, v54, v48);
  }

  *(a2 + 60) = v52;
  if (sub_10009EB14(a3) || sub_100009730(a3))
  {
    v55 = sub_10000A540(a3, @"WPA_IE");
    v56 = sub_10000A540(a3, @"RSN_IE");
    if (v56 | v55)
    {
      v57 = v56;
      if (v56)
      {
        *(a2 + 46) = 2;
        Value = CFDictionaryGetValue(v56, @"IE_KEY_RSN_MCIPHER");
        v59 = CFDictionaryGetValue(v57, @"IE_KEY_RSN_UCIPHERS");
        v60 = CFDictionaryGetValue(v57, @"IE_KEY_RSN_AUTHSELS");
        v61 = CFDictionaryGetValue(v57, @"IE_KEY_RSN_CAPS");
        if (!Value)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (!v55)
        {
          goto LABEL_109;
        }

        TypeID = CFDictionaryGetTypeID();
        if (!sub_100058AF8(TypeID, v55))
        {
          goto LABEL_109;
        }

        *(a2 + 46) = 1;
        Value = CFDictionaryGetValue(v55, @"IE_KEY_WPA_MCIPHER");
        v59 = CFDictionaryGetValue(v55, @"IE_KEY_WPA_UCIPHERS");
        v60 = CFDictionaryGetValue(v55, @"IE_KEY_WPA_AUTHSELS");
        v61 = 0;
        if (!Value)
        {
LABEL_88:
          if (v59)
          {
            goto LABEL_89;
          }

          goto LABEL_92;
        }
      }

      *(a2 + 48) = sub_1001486D8(Value);
      if (v59)
      {
LABEL_89:
        *(a2 + 50) = 0;
        if (CFArrayGetCount(v59) >= 1)
        {
          v62 = 0;
          do
          {
            v63 = CFArrayGetValueAtIndex(v59, v62);
            *(a2 + 50) |= sub_1001486D8(v63);
            ++v62;
          }

          while (v62 < CFArrayGetCount(v59));
        }
      }

LABEL_92:
      if (v60)
      {
        *(a2 + 52) = 0;
        if (CFArrayGetCount(v60) >= 1)
        {
          sub_100148CDC(v60, a2 + 52, v64, v65, v66, v67, v68, v69, v166, v169, SHIDWORD(v169), v172, v175, v178, v181, v184, v187, v190, v193);
        }
      }

      if (v61)
      {
        *(a2 + 56) = 0;
        v70 = CFDictionaryGetValue(v61, @"PRE_AUTH");
        if (v70)
        {
          v71 = v70;
          v72 = CFNumberGetTypeID();
          if (v72 == CFGetTypeID(v71))
          {
            if (CFBooleanGetValue(v71))
            {
              *(a2 + 56) |= 1u;
            }
          }
        }

        v73 = CFDictionaryGetValue(v61, @"NO_PAIRWISE");
        if (v73)
        {
          v74 = v73;
          v75 = CFNumberGetTypeID();
          if (v75 == CFGetTypeID(v74))
          {
            if (CFBooleanGetValue(v74))
            {
              *(a2 + 56) |= 2u;
            }
          }
        }
      }
    }
  }

LABEL_109:
  v77 = sub_10000A540(a3, @"HT_CAPS_IE");
  if (v77)
  {
    v78 = v77;
    v79 = CFDictionaryGetValue(v77, @"CAPS");
    if (v79)
    {
      CFNumberGetValue(v79, kCFNumberSInt16Type, (a2 + 64));
    }

    v80 = CFDictionaryGetValue(v78, @"AMPDU_PARAMS");
    if (v80)
    {
      CFNumberGetValue(v80, kCFNumberSInt8Type, (a2 + 73));
    }

    v81 = CFDictionaryGetValue(v78, @"TXBF_CAPS");
    if (v81)
    {
      CFNumberGetValue(v81, kCFNumberSInt32Type, (a2 + 68));
    }

    v82 = CFDictionaryGetValue(v78, @"EXT_CAPS");
    if (v82)
    {
      CFNumberGetValue(v82, kCFNumberSInt16Type, (a2 + 66));
    }

    v83 = CFDictionaryGetValue(v78, @"ASEL_CAPS");
    if (v83)
    {
      CFNumberGetValue(v83, kCFNumberSInt8Type, (a2 + 72));
    }

    v84 = CFDictionaryGetValue(v78, @"MCS_SET");
    if (v84)
    {
      v209.location = 0;
      v209.length = 16;
      CFDataGetBytes(v84, v209, (a2 + 74));
    }
  }

  if (!v7)
  {
    goto LABEL_180;
  }

  v85 = CFDictionaryGetValue(v7, @"IE_KEY_WPS_PRIMARY_DEV_TYPE");
  valuePtr[0] = -21846;
  v86 = CFDictionaryGetValue(v7, @"IE_KEY_WPS_CFG_METHODS");
  if (v86 && (v87 = v86, v88 = CFNumberGetTypeID(), v88 == CFGetTypeID(v87)))
  {
    CFNumberGetValue(v87, kCFNumberSInt16Type, valuePtr);
    v89 = CFStringCreateWithFormat(0, 0, @"%d", valuePtr[0]);
  }

  else
  {
    v90 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bad type for wpsConfigMethods. Not a CFNumber or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
    }

    objc_autoreleasePoolPop(v90);
    v89 = 0;
  }

  *(a2 + 200) = v89;
  v91 = CFDictionaryGetValue(v7, @"IE_KEY_WPS_MODEL_NAME");
  if (v91 && (v92 = v91, v93 = CFStringGetTypeID(), v93 == CFGetTypeID(v92)))
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, v92);
  }

  else
  {
    v95 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bad type for wpsModelName. Not a CFString or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
    }

    objc_autoreleasePoolPop(v95);
    Copy = 0;
  }

  *(a2 + 152) = Copy;
  v96 = CFDictionaryGetValue(v7, @"IE_KEY_WPS_MODEL_NUM");
  if (v96 && (v97 = v96, v98 = CFStringGetTypeID(), v98 == CFGetTypeID(v97)))
  {
    v99 = CFStringCreateCopy(kCFAllocatorDefault, v97);
  }

  else
  {
    v100 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bad type for wpsModelNumber. Not a CFString or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
    }

    objc_autoreleasePoolPop(v100);
    v99 = 0;
  }

  *(a2 + 160) = v99;
  v101 = CFDictionaryGetValue(v7, @"IE_KEY_WPS_MANUFACTURER");
  if (v101 && (v102 = v101, v103 = CFStringGetTypeID(), v103 == CFGetTypeID(v102)))
  {
    v104 = CFStringCreateCopy(kCFAllocatorDefault, v102);
  }

  else
  {
    v105 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bad type for wpsManufacturerElement. Not a CFString or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
    }

    objc_autoreleasePoolPop(v105);
    v104 = 0;
  }

  *(a2 + 144) = v104;
  v106 = CFDictionaryGetValue(v7, @"IE_KEY_WPS_DEV_NAME");
  if (v106 && (v107 = v106, v108 = CFStringGetTypeID(), v108 == CFGetTypeID(v107)))
  {
    v109 = CFStringCreateCopy(kCFAllocatorDefault, v107);
  }

  else
  {
    v110 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bad type for wpsDeviceNameElement. Not a CFString or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
    }

    objc_autoreleasePoolPop(v110);
    v109 = 0;
  }

  *(a2 + 184) = v109;
  v111 = CFDictionaryGetValue(v7, @"IE_KEY_WPS_DEV_NAME_DATA");
  if (!v111 || (v112 = v111, v113 = CFDataGetTypeID(), v113 != CFGetTypeID(v112)))
  {
    v117 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: wpsDeviceNameData value is NULL or bad type for wpsDeviceNameData. Not a CFDataType ", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
    }

    objc_autoreleasePoolPop(v117);
    *(a2 + 192) = 0;
    if (!v85)
    {
      goto LABEL_173;
    }

    goto LABEL_160;
  }

  Length = CFDataGetLength(v112);
  v115 = malloc_type_malloc(Length, 0x100004077774924uLL);
  v210.location = 0;
  v210.length = Length;
  CFDataGetBytes(v112, v210, v115);
  SystemEncoding = CFStringGetSystemEncoding();
  *(a2 + 192) = CFStringCreateWithBytes(kCFAllocatorDefault, v115, Length, SystemEncoding, 0);
  free(v115);
  if (v85)
  {
LABEL_160:
    v205 = -21846;
    v204 = -21846;
    v118 = CFDictionaryGetValue(v85, @"WPS_DEV_TYPE_CAT");
    if (v118 && (v119 = v118, v120 = CFNumberGetTypeID(), v120 == CFGetTypeID(v119)))
    {
      CFNumberGetValue(v119, kCFNumberSInt16Type, &v205);
      v121 = CFStringCreateWithFormat(0, 0, @"%d", v205);
    }

    else
    {
      v122 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: bad type for wpsPrimaryDeviceTypeCategory. Not a CFNumberType or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
      }

      objc_autoreleasePoolPop(v122);
      v121 = 0;
    }

    *(a2 + 168) = v121;
    v123 = CFDictionaryGetValue(v85, @"WPS_DEV_TYPE_SUB_CAT");
    if (v123 && (v124 = v123, v125 = CFNumberGetTypeID(), v125 == CFGetTypeID(v124)))
    {
      CFNumberGetValue(v124, kCFNumberSInt16Type, &v204);
      v126 = CFStringCreateWithFormat(0, 0, @"%d", v204);
    }

    else
    {
      v127 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: bad type for wpsPrimaryDeviceTypeSubCategory. Not a CFNumberType or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
      }

      objc_autoreleasePoolPop(v127);
      v126 = 0;
    }

    *(a2 + 176) = v126;
  }

LABEL_173:
  LOBYTE(v205) = -86;
  v128 = CFDictionaryGetValue(v7, @"IE_KEY_WPS_RESP_TYPE");
  if (v128 && (v129 = v128, v130 = CFNumberGetTypeID(), v130 == CFGetTypeID(v129)))
  {
    CFNumberGetValue(v129, kCFNumberSInt8Type, &v205);
    v131 = CFStringCreateWithFormat(0, 0, @"%d", v205);
  }

  else
  {
    v132 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bad type for wpsResponseType. Not a CFNumberType or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
    }

    objc_autoreleasePoolPop(v132);
    v131 = 0;
  }

  *(a2 + 136) = v131;
LABEL_180:
  v133 = v201;
  if (v8)
  {
    LOBYTE(valuePtr[0]) = -86;
    v134 = CFDictionaryGetValue(v8, @"APPLE_IE_PRODUCT_ID");
    if (v134 && (v135 = v134, v136 = CFNumberGetTypeID(), v136 == CFGetTypeID(v135)))
    {
      CFNumberGetValue(v135, kCFNumberSInt8Type, valuePtr);
      v137 = CFStringCreateWithFormat(0, 0, @"%d", LOBYTE(valuePtr[0]));
    }

    else
    {
      v138 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: bad type for wpsResponseType. Not a CFNumberType or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
      }

      objc_autoreleasePoolPop(v138);
      v137 = 0;
    }

    *(a2 + 160) = v137;
  }

  v139 = kCFAllocatorDefault;
  if (v9)
  {
    v140 = CFDictionaryGetValue(v9, @"IE_KEY_80211D_COUNTRY_CODE");
    if (v140 && (v141 = v140, v142 = CFStringGetTypeID(), v142 == CFGetTypeID(v141)))
    {
      v143 = CFStringCreateCopy(kCFAllocatorDefault, v141);
    }

    else
    {
      v144 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: bad type for countryCode. Not a CFString or NULL", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
      }

      objc_autoreleasePoolPop(v144);
      v143 = 0;
    }

    *(a2 + 128) = v143;
  }

  v145 = sub_10000A540(a3, @"VHT_CAPS_IE");
  if (v145)
  {
    v146 = v145;
    v147 = CFDictionaryGetValue(v145, @"VHT_CAPS");
    if (v147)
    {
      CFNumberGetValue(v147, kCFNumberSInt32Type, (a2 + 92));
    }

    v148 = CFDictionaryGetValue(v146, @"VHT_SUPPORTED_MCS_SET");
    if (v148)
    {
      v211.location = 0;
      v211.length = 8;
      CFDataGetBytes(v148, v211, (a2 + 96));
    }
  }

  v149 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v150 = *(a2 + 28);
    v133 = v201;
    v139 = kCFAllocatorDefault;
    [off_100298C40 WFLog:3 message:{"%s: OUI:%02x:%02x:%02x Channel:%d(%dMHz) Flags:0x%x PhyMode:%s Security:0x%x WPA:[Prot:0x%x McastCipher:0x%x UcastCipher:0x%x AKM:0x%x Caps:0x%x] HT:[Info:0x%x AMPDU:0x%x TXBF:0x%x Ext:0x%x ASEL:0x%x] VHT:[Info:0x%x]", "__WiFiMetricsManagerCopyLinkChangeNetworkParams", *(a2 + 40), *(a2 + 41), *(a2 + 42), *(a2 + 16), *(a2 + 24), *(a2 + 36), convertPhyTypeToString(), *(a2 + 44), *(a2 + 46), *(a2 + 48), *(a2 + 50), *(a2 + 52), *(a2 + 56), *(a2 + 64), *(a2 + 73), *(a2 + 68), *(a2 + 66), *(a2 + 72), *(a2 + 92)}];
  }

  objc_autoreleasePoolPop(v149);
  v151 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v152 = *(a2 + 152);
    [off_100298C40 WFLog:3 message:{"%s: QFALOG Metrics in link change metric: Metric Container has: Locale: %@ LocaleSource: %@ CountryCode: %@ wpsDeviceNameElement: %@ wpsManufacturerElement: %@ wpsModelName: %@ wpsModelNumber: %@ ", "__WiFiMetricsManagerCopyLinkChangeNetworkParams", *(a2 + 112), *(a2 + 120), *(a2 + 128), *(a2 + 184), *(a2 + 144), v152, *(a2 + 160)}];
  }

  objc_autoreleasePoolPop(v151);
  v153 = CFDictionaryCreateMutable(v139, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v154 = v153;
  v155 = *(a2 + 144);
  if (v155)
  {
    CFDictionaryAddValue(v153, @"ManufacturerElement", v155);
  }

  v156 = *(a2 + 152);
  if (v156)
  {
    CFDictionaryAddValue(v154, @"ModelName", v156);
  }

  v157 = *(a2 + 160);
  if (v157)
  {
    CFDictionaryAddValue(v154, @"ModelNumber", v157);
  }

  v158 = *(a2 + 184);
  if (v158)
  {
    CFDictionaryAddValue(v154, @"DeviceNameElement", v158);
  }

  v159 = *(a2 + 192);
  if (v159)
  {
    CFDictionaryAddValue(v154, @"DeviceNameData", v159);
  }

  v160 = CFDictionaryGetCount(v154);
  if (v133 && v160)
  {
    v161 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: updating AccessPointInfo: %@", "__WiFiMetricsManagerCopyLinkChangeNetworkParams", v154}];
    }

    objc_autoreleasePoolPop(v161);
    sub_100065430(v133, v154);
  }

  v202 = 0xAAAAAAAAAAAAAAAALL;
  v203 = 0xAAAAAAAAAAAAAAAALL;
  sub_10009E058(a3, &v203, &v202);
  v162 = v202;
  *(a2 + 208) = v203;
  *(a2 + 212) = v162;
  v163 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: minSupportDataRate %d, maxSupportDataRate %d", "__WiFiMetricsManagerCopyLinkChangeNetworkParams", *(a2 + 208), *(a2 + 212)}];
  }

  objc_autoreleasePoolPop(v163);
  if (v154)
  {
    CFRelease(v154);
  }

LABEL_224:
}

void sub_10004FA0C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (!a1)
  {
    sub_1001491B8();
    return;
  }

  if (!qword_1002984F8 || !*(qword_1002984F8 + 16))
  {
    sub_10014914C();
    return;
  }

  v8 = a1;
  sub_10014C1C0(a1, a2, a3, a4, a5, a6, a7, a8, v195, v197, v200, v202, v204, v206, v208, v210, v212, v214);
  if (!v9)
  {
    sub_1001490E0();
    return;
  }

  v10 = v9;
  if (CFArrayGetCount(*(qword_1002984F8 + 32)) < 1)
  {
LABEL_12:
    v38 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: AWDL interface not found in deviceMetricsArray.", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
    }

    objc_autoreleasePoolPop(v38);
    return;
  }

  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(qword_1002984F8 + 32), v11);
    if (ValueAtIndex)
    {
      v20 = ValueAtIndex;
      v21 = *ValueAtIndex;
      if (v21)
      {
        sub_10014C1C0(v21, v13, v14, v15, v16, v17, v18, v19, v196, v198, v201, v203, v205, v207, v209, v211, v213, v215);
        if (v29)
        {
          sub_10014C1C0(*v20, v22, v23, v24, v25, v26, v27, v28, v196, v198, v201, v203, v205, v207, v209, v211, v213, v215);
          if (CFEqual(v10, v30))
          {
            break;
          }
        }
      }
    }

    if (++v11 >= CFArrayGetCount(*(qword_1002984F8 + 32)))
    {
      goto LABEL_12;
    }
  }

  *(v20 + 11) = 0u;
  *(v20 + 58) = 0;
  *(v20 + 27) = 0u;
  *(v20 + 28) = 0u;
  *(v20 + 25) = 0u;
  *(v20 + 26) = 0u;
  *(v20 + 23) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 21) = 0u;
  *(v20 + 22) = 0u;
  *(v20 + 19) = 0u;
  *(v20 + 20) = 0u;
  *(v20 + 17) = 0u;
  *(v20 + 18) = 0u;
  *(v20 + 15) = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 13) = 0u;
  *(v20 + 14) = 0u;
  *(v20 + 12) = 0u;
  sub_10014C1C0(v8, v31, v32, v33, v34, v35, v36, v37, v196, v198, v201, v203, v205, v207, v209, v211, v213, v215);
  v40 = sub_100060CF4(v8, v39);
  if (!v40)
  {
    sub_100149074();
    return;
  }

  v41 = v40;
  Value = CFDictionaryGetValue(v40, @"AWDL_STATS_FLAGS");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, v20 + 48);
  }

  v43 = CFDictionaryGetValue(v41, @"AWDL_STATS_RXBYTES");
  if (v43)
  {
    CFNumberGetValue(v43, kCFNumberSInt32Type, v20 + 50);
  }

  v44 = CFDictionaryGetValue(v41, @"AWDL_STATS_TXBYTES");
  if (v44)
  {
    CFNumberGetValue(v44, kCFNumberSInt32Type, v20 + 51);
  }

  v45 = CFDictionaryGetValue(v41, @"AWDL_STATS_PACKET_FAILURES");
  if (v45)
  {
    CFNumberGetValue(v45, kCFNumberSInt32Type, v20 + 49);
  }

  v46 = CFDictionaryGetValue(v41, @"AWDL_STATS_SELF_INFRA_CHANNEL");
  if (v46)
  {
    CFNumberGetValue(v46, kCFNumberSInt32Type, v20 + 44);
  }

  v47 = CFDictionaryGetValue(v41, @"AWDL_STATS_SELF_INFRA_CHANNEL_FLAGS");
  if (v47)
  {
    CFNumberGetValue(v47, kCFNumberSInt32Type, v20 + 88);
  }

  v48 = CFDictionaryGetValue(v41, @"AWDL_STATS_PEER_INFRA_CHANNEL");
  if (v48)
  {
    CFNumberGetValue(v48, kCFNumberSInt8Type, v20 + 45);
  }

  v49 = CFDictionaryGetValue(v41, @"AWDL_STATS_PEER_INFRA_CHANNEL_FLAGS");
  if (v49)
  {
    CFNumberGetValue(v49, kCFNumberSInt32Type, v20 + 89);
  }

  v50 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_PEERS");
  if (v50)
  {
    CFNumberGetValue(v50, kCFNumberSInt8Type, v20 + 181);
  }

  v51 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_CACHED_PEERS");
  if (v51)
  {
    CFNumberGetValue(v51, kCFNumberSInt8Type, v20 + 182);
  }

  v52 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_CACHED_PEERS_2GHZ");
  if (v52)
  {
    CFNumberGetValue(v52, kCFNumberSInt8Type, v20 + 183);
  }

  v53 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_CACHED_PEERS_5GHZ");
  if (v53)
  {
    CFNumberGetValue(v53, kCFNumberSInt8Type, v20 + 46);
  }

  v54 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_CACHED_PEERS_DFS");
  if (v54)
  {
    CFNumberGetValue(v54, kCFNumberSInt8Type, v20 + 185);
  }

  v55 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_CACHED_PEERS_UNASSOC");
  if (v55)
  {
    CFNumberGetValue(v55, kCFNumberSInt8Type, v20 + 186);
  }

  v56 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_CACHED_PEERS_DIFF_INFRA");
  if (v56)
  {
    CFNumberGetValue(v56, kCFNumberSInt8Type, v20 + 187);
  }

  v57 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_CACHED_PEERS_SAME_INFRA");
  if (v57)
  {
    CFNumberGetValue(v57, kCFNumberSInt8Type, v20 + 47);
  }

  v58 = CFDictionaryGetValue(v41, @"AWDL_STATS_NO_SERVICE_IDLE_TIME");
  if (v58)
  {
    CFNumberGetValue(v58, kCFNumberSInt64Type, v20 + 56);
  }

  v59 = CFDictionaryGetValue(v41, @"AWDL_STATS_PEER_CHANNEL_STEER_BEFORE");
  if (v59)
  {
    CFNumberGetValue(v59, kCFNumberSInt32Type, v20 + 98);
  }

  v60 = CFDictionaryGetValue(v41, @"AWDL_STATS_PEER_CHANNEL_STEER_AFTER");
  if (v60)
  {
    CFNumberGetValue(v60, kCFNumberSInt32Type, v20 + 99);
  }

  v61 = CFDictionaryGetValue(v41, @"AWDL_STATS_STATS_DWELL_SESSION_COUNT");
  if (v61)
  {
    CFNumberGetValue(v61, kCFNumberSInt32Type, v20 + 100);
  }

  v62 = CFDictionaryGetValue(v41, @"AWDL_STATS_AWDL_STATS_SERVICE_COUNT");
  if (v62)
  {
    CFNumberGetValue(v62, kCFNumberSInt32Type, v20 + 62);
  }

  v63 = CFDictionaryGetValue(v41, @"AWDL_STATS_TOTAL_DURATION");
  if (v63)
  {
    CFNumberGetValue(v63, kCFNumberSInt32Type, v20 + 101);
  }

  v64 = CFDictionaryGetValue(v41, @"AWDL_STATS_STATS_INACTIVITY_DURATION");
  if (v64)
  {
    CFNumberGetValue(v64, kCFNumberSInt32Type, v20 + 102);
  }

  v65 = CFDictionaryGetValue(v41, @"AWDL_STATS_STATS_ACTIVITY_DURATION");
  if (v65)
  {
    CFNumberGetValue(v65, kCFNumberSInt32Type, v20 + 103);
  }

  v66 = CFDictionaryGetValue(v41, @"AWDL_STATS_PERCENTAGE_INACTIVITY");
  if (v66)
  {
    CFNumberGetValue(v66, kCFNumberSInt32Type, v20 + 104);
  }

  v67 = CFDictionaryGetValue(v41, @"AWDL_STATS_TIME_TO_SERVICE");
  if (v67)
  {
    CFNumberGetValue(v67, kCFNumberSInt32Type, v20 + 105);
  }

  v68 = CFDictionaryGetValue(v41, @"AWDL_STATS_PERCENTAGE_INFRA_IDLE");
  if (v68)
  {
    CFNumberGetValue(v68, kCFNumberSInt32Type, v20 + 106);
  }

  v69 = CFDictionaryGetValue(v41, @"AWDL_STATS_PERCENTAGE_INFRA_REAL");
  if (v69)
  {
    CFNumberGetValue(v69, kCFNumberSInt32Type, v20 + 107);
  }

  v70 = CFDictionaryGetValue(v41, @"AWDL_STATS_PERCENTAGE_INFRA_NONREAL");
  if (v70)
  {
    CFNumberGetValue(v70, kCFNumberSInt32Type, v20 + 108);
  }

  v71 = CFDictionaryGetValue(v41, @"AWDL_STATS_AIRPLAY_ACTIVE");
  if (v71)
  {
    *(v20 + 448) = CFBooleanGetValue(v71);
  }

  v72 = CFDictionaryGetValue(v41, @"AWDL_STATS_REMOTECAMERA_ACTIVE");
  if (v72)
  {
    *(v20 + 449) = CFBooleanGetValue(v72);
  }

  v73 = CFDictionaryGetValue(v41, @"AWDL_STATS_REMOTESCREEN_ACTIVE");
  if (v73)
  {
    *(v20 + 450) = CFBooleanGetValue(v73);
  }

  v74 = CFDictionaryGetValue(v41, @"AWDL_STATS_SIDECAR_ACTIVE");
  if (v74)
  {
    *(v20 + 451) = CFBooleanGetValue(v74);
  }

  v75 = CFDictionaryGetValue(v41, @"AWDL_STATS_TVREMOTECAMERA_ACTIVE");
  if (v75)
  {
    *(v20 + 452) = CFBooleanGetValue(v75);
  }

  v76 = CFDictionaryGetValue(v41, @"AWDL_STATS_UNIVERSALCONTROL_ACTIVE");
  if (v76)
  {
    *(v20 + 453) = CFBooleanGetValue(v76);
  }

  v77 = CFDictionaryGetValue(v41, @"AWDL_STATS_STEREOPAIR_ACTIVE ");
  if (v77)
  {
    *(v20 + 454) = CFBooleanGetValue(v77);
  }

  v78 = CFDictionaryGetValue(v41, @"AWDL_STATS_AIRDROP");
  if (v78)
  {
    *(v20 + 455) = CFBooleanGetValue(v78);
  }

  v79 = CFDictionaryGetValue(v41, @"AWDL_STATS_AIRPLAY-P2P");
  if (v79)
  {
    *(v20 + 456) = CFBooleanGetValue(v79);
  }

  v80 = CFDictionaryGetValue(v41, @"AWDL_STATS_AIRPLAY");
  if (v80)
  {
    *(v20 + 457) = CFBooleanGetValue(v80);
  }

  v81 = CFDictionaryGetValue(v41, @"AWDL_STATS_ATP");
  if (v81)
  {
    *(v20 + 458) = CFBooleanGetValue(v81);
  }

  v82 = CFDictionaryGetValue(v41, @"AWDL_STATS_COMPANION-LINK");
  if (v82)
  {
    *(v20 + 459) = CFBooleanGetValue(v82);
  }

  v83 = CFDictionaryGetValue(v41, @"AWDL_STATS_IEEE1588");
  if (v83)
  {
    *(v20 + 460) = CFBooleanGetValue(v83);
  }

  v84 = CFDictionaryGetValue(v41, @"AWDL_STATS_RAOP");
  if (v84)
  {
    *(v20 + 461) = CFBooleanGetValue(v84);
  }

  v85 = CFDictionaryGetValue(v41, @"AWDL_STATS_RDLINK");
  if (v85)
  {
    *(v20 + 462) = CFBooleanGetValue(v85);
  }

  v86 = CFDictionaryGetValue(v41, @"AWDL_STATS_DFSMON");
  if (v86)
  {
    *(v20 + 463) = CFBooleanGetValue(v86);
  }

  v87 = CFDictionaryGetValue(v41, @"AWDL_STATS_WIFID");
  if (v87)
  {
    *(v20 + 464) = CFBooleanGetValue(v87);
  }

  v88 = CFDictionaryGetValue(v41, @"AWDL_STATS_TEST");
  if (v88)
  {
    *(v20 + 465) = CFBooleanGetValue(v88);
  }

  v89 = CFDictionaryGetValue(v41, @"AWDL_TIME_SINCE_LAST_POST");
  if (v89)
  {
    CFNumberGetValue(v89, kCFNumberSInt32Type, v20 + 109);
  }

  v90 = CFDictionaryGetValue(v41, @"AWDL_STATS_OUI");
  if (v90)
  {
    v91 = v90;
    v217.length = CFDataGetLength(v90);
    v217.location = 0;
    CFDataGetBytes(v91, v217, v20 + 466);
  }

  v92 = CFDictionaryGetValue(v41, @"AWDL_STATS_STATES");
  if (v92)
  {
    v93 = v92;
    Count = CFArrayGetCount(v92);
    v95 = Count;
    if (Count >= 1)
    {
      v96 = malloc_type_calloc(Count, 0x10uLL, 0x1000040F7F8B94BuLL);
      *(v20 + 30) = v96;
      if (!v96)
      {
        sub_100148E58();
        goto LABEL_246;
      }

      v97 = 0;
      v98 = 0;
      do
      {
        v99 = CFArrayGetValueAtIndex(v93, v98);
        if (v99)
        {
          v100 = v99;
          v101 = CFDictionaryGetValue(v99, @"AWDL_STATS_STATE_COUNT");
          if (v101)
          {
            CFNumberGetValue(v101, kCFNumberSInt32Type, (*(v20 + 30) + v97));
          }

          v102 = CFDictionaryGetValue(v100, @"AWDL_STATS_STATE_DURATION");
          if (v102)
          {
            CFNumberGetValue(v102, kCFNumberSInt64Type, (*(v20 + 30) + v97 + 8));
          }
        }

        ++v98;
        v97 += 16;
      }

      while (v95 != v98);
    }

    v20[58] = v95;
  }

  v103 = CFDictionaryGetValue(v41, @"AWDL_STATS_SERVICES");
  v199 = v8;
  if (v103)
  {
    v104 = v103;
    v105 = CFArrayGetCount(v103);
    v106 = v105;
    if (v105 >= 1)
    {
      v107 = malloc_type_calloc(v105, 0x30uLL, 0x1000040634EFA27uLL);
      *(v20 + 32) = v107;
      if (!v107)
      {
        sub_100148EC4();
        goto LABEL_246;
      }

      v108 = 0;
      v109 = 0;
      do
      {
        v110 = CFArrayGetValueAtIndex(v104, v109);
        if (v110)
        {
          v111 = v110;
          v112 = CFDictionaryGetValue(v110, @"AWDL_STATS_SERVICE_DURATION");
          if (v112)
          {
            CFNumberGetValue(v112, kCFNumberSInt64Type, (*(v20 + 32) + v108 + 8));
          }

          v113 = CFDictionaryGetValue(v111, @"AWDL_STATS_SERVICE_ID");
          if (v113)
          {
            CFNumberGetValue(v113, kCFNumberSInt32Type, (*(v20 + 32) + v108 + 4));
          }

          v114 = CFDictionaryGetValue(v111, @"AWDL_STATS_SERVICE_TYPE");
          if (v114)
          {
            CFNumberGetValue(v114, kCFNumberSInt8Type, (*(v20 + 32) + v108 + 1));
          }

          v115 = CFDictionaryGetValue(v111, @"AWDL_STATS_SERVICE_OPCODE");
          if (v115)
          {
            CFNumberGetValue(v115, kCFNumberSInt8Type, (*(v20 + 32) + v108));
          }

          v116 = CFDictionaryGetValue(v111, @"AWDL_STATS_SERVICE_KEY");
          if (v116)
          {
            v117 = v116;
            Length = CFDataGetLength(v116);
            if (Length)
            {
              if (Length >= 32)
              {
                v119.length = 32;
              }

              else
              {
                v119.length = Length;
              }

              v119.location = 0;
              CFDataGetBytes(v117, v119, (*(v20 + 32) + v108 + 16));
            }
          }
        }

        ++v109;
        v108 += 48;
      }

      while (v106 != v109);
    }

    v20[62] = v106;
  }

  v120 = CFDictionaryGetValue(v41, @"AWDL_STATS_HOPCOUNT");
  if (v120)
  {
    v121 = v120;
    v122 = CFArrayGetCount(v120);
    v123 = v122;
    if (v122 >= 1)
    {
      v124 = malloc_type_calloc(v122, 0x18uLL, 0x1000040504FFAC1uLL);
      *(v20 + 39) = v124;
      if (!v124)
      {
        goto LABEL_256;
      }

      v125 = 0;
      v126 = 0;
      do
      {
        v127 = CFArrayGetValueAtIndex(v121, v126);
        if (v127)
        {
          v128 = v127;
          v129 = CFDictionaryGetValue(v127, @"AWDL_STATS_HISTOGRAM_BIN_START");
          if (v129)
          {
            CFNumberGetValue(v129, kCFNumberDoubleType, (*(v20 + 39) + v125));
          }

          v130 = CFDictionaryGetValue(v128, @"AWDL_STATS_HISTOGRAM_BIN_END");
          if (v130)
          {
            CFNumberGetValue(v130, kCFNumberDoubleType, (*(v20 + 39) + v125 + 8));
          }

          v131 = CFDictionaryGetValue(v128, @"AWDL_STATS_HISTOGRAM_BIN_VALUE");
          if (v131)
          {
            CFNumberGetValue(v131, kCFNumberDoubleType, (*(v20 + 39) + v125 + 16));
          }
        }

        ++v126;
        v125 += 24;
      }

      while (v123 != v126);
    }

    v20[80] = v123;
    v8 = v199;
  }

  v132 = CFDictionaryGetValue(v41, @"AWDL_STATS_PARENTRSSI");
  if (!v132)
  {
    goto LABEL_174;
  }

  v133 = v132;
  v134 = CFArrayGetCount(v132);
  v135 = v134;
  if (v134 >= 1)
  {
    v136 = malloc_type_calloc(v134, 0x18uLL, 0x1000040504FFAC1uLL);
    *(v20 + 41) = v136;
    if (v136)
    {
      v137 = 0;
      v138 = 0;
      do
      {
        v139 = CFArrayGetValueAtIndex(v133, v138);
        if (v139)
        {
          v140 = v139;
          v141 = CFDictionaryGetValue(v139, @"AWDL_STATS_HISTOGRAM_BIN_START");
          if (v141)
          {
            CFNumberGetValue(v141, kCFNumberDoubleType, (*(v20 + 41) + v137));
          }

          v142 = CFDictionaryGetValue(v140, @"AWDL_STATS_HISTOGRAM_BIN_END");
          if (v142)
          {
            CFNumberGetValue(v142, kCFNumberDoubleType, (*(v20 + 41) + v137 + 8));
          }

          v143 = CFDictionaryGetValue(v140, @"AWDL_STATS_HISTOGRAM_BIN_VALUE");
          if (v143)
          {
            CFNumberGetValue(v143, kCFNumberDoubleType, (*(v20 + 41) + v137 + 16));
          }
        }

        ++v138;
        v137 += 24;
      }

      while (v135 != v138);
      goto LABEL_173;
    }

LABEL_256:
    sub_100148F30();
    goto LABEL_246;
  }

LABEL_173:
  v20[84] = v135;
  v8 = v199;
LABEL_174:
  v144 = CFDictionaryGetValue(v41, @"AWDL_STATS_SUSPEND_DURATION");
  if (v144)
  {
    CFNumberGetValue(v144, kCFNumberSInt64Type, v20 + 110);
  }

  v145 = CFDictionaryGetValue(v41, @"AWDL_STATS_SUSPEND_COUNT");
  if (v145)
  {
    CFNumberGetValue(v145, kCFNumberSInt32Type, v20 + 91);
  }

  v146 = CFDictionaryGetValue(v41, @"AWDL_STATS_DFSP_CSA_PEER");
  if (v146)
  {
    CFNumberGetValue(v146, kCFNumberSInt32Type, v20 + 66);
  }

  v147 = CFDictionaryGetValue(v41, @"AWDL_STATS_DFSP_CSA_AP");
  if (v147)
  {
    CFNumberGetValue(v147, kCFNumberSInt32Type, v20 + 67);
  }

  v148 = CFDictionaryGetValue(v41, @"AWDL_STATS_DFSP_CSA_SUSPECT");
  if (v148)
  {
    CFNumberGetValue(v148, kCFNumberSInt32Type, v20 + 68);
  }

  v149 = CFDictionaryGetValue(v41, @"AWDL_STATS_DFSP_CSA_RESUME");
  if (v149)
  {
    CFNumberGetValue(v149, kCFNumberSInt32Type, v20 + 69);
  }

  v150 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_RT_SESSION");
  if (v150)
  {
    CFNumberGetValue(v150, kCFNumberSInt32Type, v20 + 76);
  }

  v151 = CFDictionaryGetValue(v41, @"AWDL_STATS_DFSPAIRPLAY_CONNECTED");
  if (v151)
  {
    CFNumberGetValue(v151, kCFNumberSInt32Type, v20 + 70);
  }

  v152 = CFDictionaryGetValue(v41, @"AWDL_STATS_DFSPAIRPLAY_FAILED");
  if (v152)
  {
    CFNumberGetValue(v152, kCFNumberSInt32Type, v20 + 70);
  }

  v153 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_SYNC_CHANGES");
  if (v153)
  {
    CFNumberGetValue(v153, kCFNumberSInt64Type, v20 + 72);
  }

  v154 = CFDictionaryGetValue(v41, @"APPLE80211KEY_AWDL_STATS_NUM_INPUT_PKTS_DROPPED");
  if (v154)
  {
    CFNumberGetValue(v154, kCFNumberSInt32Type, v20 + 74);
  }

  v155 = CFDictionaryGetValue(v41, @"APPLE80211KEY_AWDL_STATS_NUM_PEERS_ZERO_EXT_LEN");
  if (v155)
  {
    CFNumberGetValue(v155, kCFNumberSInt32Type, v20 + 75);
  }

  v156 = CFDictionaryGetValue(v41, @"AWDL_D2D_MIGRATION_STATS");
  if (v156)
  {
    v157 = v156;
    v158 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
    *(v20 + 43) = v158;
    if (!v158)
    {
      sub_100148F9C();
      goto LABEL_246;
    }

    v159 = CFDictionaryGetValue(v157, @"D2D_MIGRATION_SESSION_DURATION");
    if (v159)
    {
      CFNumberGetValue(v159, kCFNumberSInt64Type, *(v20 + 43));
    }

    v160 = CFDictionaryGetValue(v157, @"D2D_MIGRATION_TOTAL_TX_BYTES");
    if (v160)
    {
      CFNumberGetValue(v160, kCFNumberSInt64Type, (*(v20 + 43) + 8));
    }

    v161 = CFDictionaryGetValue(v157, @"D2D_MIGRATION_TOTAL_RX_BYTES");
    if (v161)
    {
      CFNumberGetValue(v161, kCFNumberSInt64Type, (*(v20 + 43) + 16));
    }

    v162 = CFDictionaryGetValue(v157, @"D2D_MIGRATION_AVG_RSSI");
    if (v162)
    {
      CFNumberGetValue(v162, kCFNumberSInt32Type, (*(v20 + 43) + 24));
    }

    v163 = CFDictionaryGetValue(v157, @"D2D_MIGRATION_ROLE");
    if (v163)
    {
      CFNumberGetValue(v163, kCFNumberSInt8Type, (*(v20 + 43) + 30));
    }

    v164 = CFDictionaryGetValue(v157, @"D2D_MIGRATION_ACTIVE_CHANNEL");
    if (v164)
    {
      CFNumberGetValue(v164, kCFNumberSInt8Type, (*(v20 + 43) + 28));
    }

    v165 = CFDictionaryGetValue(v157, @"D2D_MIGRATION_AVG_CCA");
    if (v165)
    {
      CFNumberGetValue(v165, kCFNumberSInt8Type, (*(v20 + 43) + 31));
    }

    v166 = CFDictionaryGetValue(v157, @"D2D_MIGRATION_TX_FAILURE_COUNT");
    if (v166)
    {
      CFNumberGetValue(v166, kCFNumberSInt8Type, (*(v20 + 43) + 29));
    }
  }

  v167 = CFDictionaryGetValue(v41, @"AWDL_STATS_PEER_CHANNEL_STEER_COUNT_2G");
  if (v167)
  {
    CFNumberGetValue(v167, kCFNumberSInt32Type, v20 + 96);
  }

  v168 = CFDictionaryGetValue(v41, @"AWDL_STATS_PEER_CHANNEL_STEER_COUNT_5G");
  if (v168)
  {
    CFNumberGetValue(v168, kCFNumberSInt32Type, v20 + 97);
  }

  v169 = CFDictionaryGetValue(v41, @"AWDL_STATS_NUM_CACHED_PEERS_6GHZ");
  if (v169)
  {
    CFNumberGetValue(v169, kCFNumberSInt8Type, v20 + 90);
  }

  v170 = CFDictionaryGetValue(v41, @"APPLE80211KEY_AWDL_STATS_SELF_6E_CAPABLE");
  if (v170)
  {
    CFNumberGetValue(v170, kCFNumberSInt8Type, v20 + 361);
  }

  v171 = CFDictionaryGetValue(v41, @"APPLE80211KEY_AWDL_STATS_PEER_6E_CAP_COUNT");
  if (v171)
  {
    CFNumberGetValue(v171, kCFNumberSInt8Type, v20 + 362);
  }

  v172 = CFDictionaryGetValue(v41, @"APPLE80211KEY_AWDL_STATS_LTE_RESTRICTED_CHANNELS");
  if (!v172)
  {
    goto LABEL_234;
  }

  v182 = v172;
  v183 = CFArrayGetCount(v172);
  v184 = v183;
  if (v183 < 1)
  {
LABEL_233:
    v20[92] = v184;
LABEL_234:
    v180.n128_u64[0] = 0;
    v181.n128_u64[0] = 0;
    sub_100050AA4(v8, v173, v174, v175, v176, v177, v178, v179, v180, v181);
    v189 = *(v20 + 30);
    if (v189)
    {
      free(v189);
      *(v20 + 30) = 0;
    }

    v190 = *(v20 + 32);
    if (v190)
    {
      free(v190);
      *(v20 + 32) = 0;
    }

    v191 = *(v20 + 39);
    if (v191)
    {
      free(v191);
      *(v20 + 39) = 0;
    }

    v192 = *(v20 + 41);
    if (v192)
    {
      free(v192);
      *(v20 + 41) = 0;
    }

    v193 = *(v20 + 43);
    if (v193)
    {
      free(v193);
      *(v20 + 43) = 0;
    }

    v194 = *(v20 + 47);
    if (v194)
    {
      free(v194);
      *(v20 + 47) = 0;
    }

    goto LABEL_246;
  }

  v185 = malloc_type_calloc(v183, 2uLL, 0x1000040BDFB0063uLL);
  *(v20 + 47) = v185;
  if (v185)
  {
    v186 = 0;
    v187 = 0;
    do
    {
      v188 = CFArrayGetValueAtIndex(v182, v187);
      if (v188)
      {
        CFNumberGetValue(v188, kCFNumberSInt16Type, (*(v20 + 47) + v186));
      }

      ++v187;
      v186 += 2;
    }

    while (v184 != v187);
    goto LABEL_233;
  }

  sub_100149008();
LABEL_246:

  CFRelease(v41);
}

void sub_100050AA4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, __n128 a10)
{
  sub_10014C1C0(a1, a2, a3, a4, a5, a6, a7, a8, v116, v118, v120, v122, v124, v126, a9.n128_i64[0], a9.n128_i64[1], a10.n128_i64[0], a10.n128_i64[1]);
  if (a1)
  {
    if (qword_1002984F8)
    {
      v12 = v11;
      if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
      {
        sub_100149368();
      }

      else
      {
        v13 = *(qword_1002984F8 + 32);
        if (v13)
        {
          if (v12)
          {
            if (CFArrayGetCount(v13) < 1)
            {
LABEL_13:
              v34 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: AWDL interface not found in deviceMetricsArray.", "WiFiMetricsManagerProcessAwdlUsageData"}];
              }

              objc_autoreleasePoolPop(v34);
            }

            else
            {
              v14 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(qword_1002984F8 + 32), v14);
                if (ValueAtIndex)
                {
                  v23 = ValueAtIndex;
                  v24 = *ValueAtIndex;
                  if (*ValueAtIndex)
                  {
                    sub_10014C1C0(*ValueAtIndex, v16, v17, v18, v19, v20, v21, v22, v117, v119, v121, v123, v125, v127, *&v128, v130, *&v131, v133);
                    if (v32)
                    {
                      sub_10014C1C0(v24, v25, v26, v27, v28, v29, v30, v31, v117, v119, v121, v123, v125, v127, *&v128, v130, *&v131, v133);
                      if (CFStringCompare(v12, v33, 0) == kCFCompareEqualTo)
                      {
                        break;
                      }
                    }
                  }
                }

                if (++v14 >= CFArrayGetCount(*(qword_1002984F8 + 32)))
                {
                  goto LABEL_13;
                }
              }

              Current = CFAbsoluteTimeGetCurrent();
              v36 = v23[21];
              if (v36 == 0.0)
              {
                v115 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: initializing AWDL metrics collection: timestamp:%f rx:%f bytes tx:%f bytes", "WiFiMetricsManagerProcessAwdlUsageData", *&Current, *&v128, *&v131}];
                }

                objc_autoreleasePoolPop(v115);
                v113 = v128;
                v114 = v131;
                goto LABEL_145;
              }

              if (Current <= v36)
              {
                *(v23 + 54) = 0;
              }

              else
              {
                v37 = ((Current - v36) / 60.0);
                *(v23 + 54) = v37;
                if (v37)
                {
                  v38.f64[0] = v128;
                  v38.f64[1] = v131;
                  v132 = vmovn_s64(vcvtq_u64_f64(v38));
                  v39 = vqsub_u32(v132, v23[20]);
                  *(v23 + 26) = vsra_n_u32(vand_s8(vshr_n_u32(v39, 9uLL), 0x100000001), v39, 0xAuLL);
                  v40 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: submitting AWDL metrics: duration:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 54)}];
                  }

                  objc_autoreleasePoolPop(v40);
                  v41 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL peerChannelsteerAttemptCount_2G:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 96)}];
                  }

                  objc_autoreleasePoolPop(v41);
                  v42 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL peerChannelsteerAttemptCount_5G:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 97)}];
                  }

                  objc_autoreleasePoolPop(v42);
                  v43 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL peerChannelsteerBefore:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 98)}];
                  }

                  objc_autoreleasePoolPop(v43);
                  v44 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL peerChannelsteerAfter:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 99)}];
                  }

                  objc_autoreleasePoolPop(v44);
                  v45 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL psfDwellSessionCount:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 100)}];
                  }

                  objc_autoreleasePoolPop(v45);
                  v46 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL serviceCount:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 62)}];
                  }

                  objc_autoreleasePoolPop(v46);
                  v47 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL totalDuration:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 101)}];
                  }

                  objc_autoreleasePoolPop(v47);
                  v48 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL inActiveDuration:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 102)}];
                  }

                  objc_autoreleasePoolPop(v48);
                  v49 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL activeDuration:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 103)}];
                  }

                  objc_autoreleasePoolPop(v49);
                  v50 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL percentageInactiveTime:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 104)}];
                  }

                  objc_autoreleasePoolPop(v50);
                  v51 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL timeToService:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 105)}];
                  }

                  objc_autoreleasePoolPop(v51);
                  v52 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL percentageInfraIdleTime:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 106)}];
                  }

                  objc_autoreleasePoolPop(v52);
                  v53 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL percentageInfraRealTime:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 107)}];
                  }

                  objc_autoreleasePoolPop(v53);
                  v54 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL percentageInfraNonRealTime:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 108)}];
                  }

                  objc_autoreleasePoolPop(v54);
                  v55 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isAirPlayActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 448)}];
                  }

                  objc_autoreleasePoolPop(v55);
                  v56 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isRemoteCameraActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 449)}];
                  }

                  objc_autoreleasePoolPop(v56);
                  v57 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isRemoteScreenActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 450)}];
                  }

                  objc_autoreleasePoolPop(v57);
                  v58 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isSideCarActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 451)}];
                  }

                  objc_autoreleasePoolPop(v58);
                  v59 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isTvRemoteCameraActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 452)}];
                  }

                  objc_autoreleasePoolPop(v59);
                  v60 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isUniversalControlActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 453)}];
                  }

                  objc_autoreleasePoolPop(v60);
                  v61 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isStereoPairActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 454)}];
                  }

                  objc_autoreleasePoolPop(v61);
                  v62 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isAirDropServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 455)}];
                  }

                  objc_autoreleasePoolPop(v62);
                  v63 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isAirplayP2PServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 456)}];
                  }

                  objc_autoreleasePoolPop(v63);
                  v64 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isAirplayServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 457)}];
                  }

                  objc_autoreleasePoolPop(v64);
                  v65 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isATPServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 458)}];
                  }

                  objc_autoreleasePoolPop(v65);
                  v66 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isCompanionLinkServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 459)}];
                  }

                  objc_autoreleasePoolPop(v66);
                  v67 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isIEEE1588ServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 460)}];
                  }

                  objc_autoreleasePoolPop(v67);
                  v68 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isRaopServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 461)}];
                  }

                  objc_autoreleasePoolPop(v68);
                  v69 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isRDLinkServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 462)}];
                  }

                  objc_autoreleasePoolPop(v69);
                  v70 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isDFSMonServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 463)}];
                  }

                  objc_autoreleasePoolPop(v70);
                  v71 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isWiFidServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 464)}];
                  }

                  objc_autoreleasePoolPop(v71);
                  v72 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL isTestServiceActive:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 465)}];
                  }

                  objc_autoreleasePoolPop(v72);
                  v73 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL timeSinceLastAwdlStatsPost:%d", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 109)}];
                  }

                  objc_autoreleasePoolPop(v73);
                  v74 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: AWDL peerChannelOui:%x:%x:%x", "WiFiMetricsManagerProcessAwdlUsageData", *(v23 + 466), *(v23 + 467), *(v23 + 468)}];
                  }

                  objc_autoreleasePoolPop(v74);
                  v75 = malloc_type_malloc(0x128uLL, 0x10300401FF98F06uLL);
                  memcpy(v75, v23 + 22, 0x128uLL);
                  *(v75 + 8) = 0;
                  *(v75 + 10) = 0;
                  *(v75 + 17) = 0;
                  *(v75 + 19) = 0;
                  if (*(v23 + 30))
                  {
                    v76 = *(v23 + 58);
                    if (v76)
                    {
                      v77 = malloc_type_calloc(v76, 0x10uLL, 0x1000040F7F8B94BuLL);
                      *(v75 + 8) = v77;
                      memcpy(v77, *(v23 + 30), 16 * *(v23 + 58));
                    }
                  }

                  if (*(v23 + 32))
                  {
                    v78 = *(v23 + 62);
                    if (v78)
                    {
                      v79 = malloc_type_calloc(v78, 0x30uLL, 0x1000040634EFA27uLL);
                      *(v75 + 10) = v79;
                      memcpy(v79, *(v23 + 32), 48 * *(v23 + 62));
                    }
                  }

                  if (*(v23 + 39))
                  {
                    v80 = *(v23 + 80);
                    if (v80)
                    {
                      v81 = malloc_type_calloc(v80, 0x18uLL, 0x1000040504FFAC1uLL);
                      *(v75 + 17) = v81;
                      memcpy(v81, *(v23 + 39), 24 * *(v23 + 80));
                    }
                  }

                  if (*(v23 + 41))
                  {
                    v82 = *(v23 + 84);
                    if (v82)
                    {
                      v83 = malloc_type_calloc(v82, 0x18uLL, 0x1000040504FFAC1uLL);
                      *(v75 + 19) = v83;
                      memcpy(v83, *(v23 + 41), 24 * *(v23 + 84));
                    }
                  }

                  if (*(v23 + 43))
                  {
                    v84 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
                    *(v75 + 21) = v84;
                    v85 = *(v23 + 43);
                    v86 = v85[1];
                    *v84 = *v85;
                    v84[1] = v86;
                  }

                  if (*(v23 + 47))
                  {
                    v87 = malloc_type_calloc(*(v23 + 92), 2uLL, 0x1000040BDFB0063uLL);
                    *(v75 + 25) = v87;
                    memcpy(v87, *(v23 + 47), 2 * *(v23 + 92));
                  }

                  v88 = objc_autoreleasePoolPush();
                  v89 = [WAMessage alloc];
                  v90 = [v89 initWithMetricName:kWAMessageMetricNameAwdlUsage options:1];
                  if (v90)
                  {
                    v91 = v90;
                    v129 = v88;
                    [v90 addFieldForKey:@"periodInMinutes" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[10]), 1}];
                    [v91 addFieldForKey:@"flags" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[4]), 1}];
                    [v91 addFieldForKey:@"cachedPeersOn24G" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 7)), 1}];
                    [v91 addFieldForKey:@"appTxBytes" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[9]), 1}];
                    [v91 addFieldForKey:@"appRxBytes" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[8]), 1}];
                    [v91 addFieldForKey:@"ifTxBytes" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[7]), 1}];
                    [v91 addFieldForKey:@"ifRxBytes" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[6]), 1}];
                    [v91 addFieldForKey:@"noServiceIdleTime" value:+[NSNumber numberWithUnsignedLongLong:](NSNumber options:{"numberWithUnsignedLongLong:", *(v75 + 6)), 1}];
                    [v91 addFieldForKey:@"suspendedDuration" value:+[NSNumber numberWithUnsignedLongLong:](NSNumber options:{"numberWithUnsignedLongLong:", *(v75 + 33)), 1}];
                    [v91 addFieldForKey:@"suspendCount" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[47]), 1}];
                    [v91 addFieldForKey:@"dfspCSAReceivedFromPeer" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[22]), 1}];
                    [v91 addFieldForKey:@"cachedPeersNotAssociated" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 10)), 1}];
                    [v91 addFieldForKey:@"dfspSuspect" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[24]), 1}];
                    [v91 addFieldForKey:@"dfspResume" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[25]), 1}];
                    [v91 addFieldForKey:@"numRTSessions" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[32]), 1}];
                    [v91 addFieldForKey:@"dfspAirplayFailed" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[27]), 1}];
                    [v91 addFieldForKey:@"peerInfraChannel" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 4)), 1}];
                    [v91 addFieldForKey:@"peerInfraChannelFlags" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[45]), 1}];
                    [v91 addFieldForKey:@"dfspCSAReceivedFromAP" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[23]), 1}];
                    [v91 addFieldForKey:@"cachedPeersDiffInfra" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 11)), 1}];
                    [v91 addFieldForKey:@"cachedPeersSameInfra" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 12)), 1}];
                    [v91 addFieldForKey:@"cachedPeersOn5G" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 8)), 1}];
                    [v91 addFieldForKey:@"numOfPeers" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 5)), 1}];
                    [v91 addFieldForKey:@"dfspAirplayConnected" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[26]), 1}];
                    [v91 addFieldForKey:@"numSyncChanges" value:+[NSNumber numberWithUnsignedLongLong:](NSNumber options:{"numberWithUnsignedLongLong:", *(v75 + 14)), 1}];
                    [v91 addFieldForKey:@"cachedPeersOnDFS" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 9)), 1}];
                    [v91 addFieldForKey:@"ifPacketFailures" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[5]), 1}];
                    [v91 addFieldForKey:@"selfInfraChannel" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *v75), 1}];
                    [v91 addFieldForKey:@"selfInfraChannelFlags" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[44]), 1}];
                    [v91 addFieldForKey:@"numOfCachedPeers" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 6)), 1}];
                    [v91 addFieldForKey:@"numInputPacketsDropped" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[30]), 1}];
                    [v91 addFieldForKey:@"numPeersWithZeroExtLen" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[31]), 1}];
                    [v91 addFieldForKey:@"peerChannelsteerBefore" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[54]), 1}];
                    [v91 addFieldForKey:@"peerChannelsteerAfter" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[55]), 1}];
                    [v91 addFieldForKey:@"psfDwellSessionCount" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[56]), 1}];
                    [v91 addFieldForKey:@"serviceCount" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[18]), 1}];
                    [v91 addFieldForKey:@"totalDuration" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[57]), 1}];
                    [v91 addFieldForKey:@"inActiveDuration" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[58]), 1}];
                    [v91 addFieldForKey:@"activeDuration" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[59]), 1}];
                    [v91 addFieldForKey:@"percentageInactiveTime" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[60]), 1}];
                    [v91 addFieldForKey:@"timeToService" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[61]), 1}];
                    [v91 addFieldForKey:@"percentageInfraIdleTime" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[62]), 1}];
                    [v91 addFieldForKey:@"percentageInfraRealTime" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[63]), 1}];
                    [v91 addFieldForKey:@"percentageInfraNonRealTime" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[64]), 1}];
                    [v91 addFieldForKey:@"isAirPlayActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 272) != 0), 1}];
                    [v91 addFieldForKey:@"isRemoteCameraActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 273) != 0), 1}];
                    [v91 addFieldForKey:@"isRemoteScreenActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 274) != 0), 1}];
                    [v91 addFieldForKey:@"isSideCarActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 275) != 0), 1}];
                    [v91 addFieldForKey:@"isTvRemoteCameraActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 276) != 0), 1}];
                    [v91 addFieldForKey:@"isUniversalControlActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 277) != 0), 1}];
                    [v91 addFieldForKey:@"isStereoPairActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 278) != 0), 1}];
                    [v91 addFieldForKey:@"isAirDropServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 279) != 0), 1}];
                    [v91 addFieldForKey:@"isAirplayP2PServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 280) != 0), 1}];
                    [v91 addFieldForKey:@"isAirplayServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 281) != 0), 1}];
                    [v91 addFieldForKey:@"isATPServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 282) != 0), 1}];
                    [v91 addFieldForKey:@"isCompanionLinkServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 283) != 0), 1}];
                    [v91 addFieldForKey:@"isIEEE1588ServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 284) != 0), 1}];
                    [v91 addFieldForKey:@"isRaopServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 285) != 0), 1}];
                    [v91 addFieldForKey:@"isRDLinkServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 286) != 0), 1}];
                    [v91 addFieldForKey:@"isDFSMonServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 287) != 0), 1}];
                    [v91 addFieldForKey:@"isWiFidServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 288) != 0), 1}];
                    [v91 addFieldForKey:@"isTestServiceActive" value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *(v75 + 289) != 0), 1}];
                    [v91 addFieldForKey:@"timeSinceLastAwdlStatsPost" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[65]), 1}];
                    v92 = +[NSMutableString string];
                    [v92 appendFormat:@"%02x", *(v75 + 290)];
                    for (i = 0; i != 2; ++i)
                    {
                      [v92 appendFormat:@":"];
                      [v92 appendFormat:@"%02x", *(v75 + i + 291)];
                    }

                    v94 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: returning %@", "__WiFiMetricsManagerGetColonHexdecFormat", v92}];
                    }

                    objc_autoreleasePoolPop(v94);
                    [v91 addFieldForKey:@"peerChannelsteerOUI" value:+[NSString stringWithString:](NSString options:{"stringWithString:", v92), 1}];
                    if (v75[36])
                    {
                      v95 = 0;
                      v96 = 0;
                      do
                      {
                        v97 = (*(v75 + 17) + v95);
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"hopCountHistogramBins_%u_binStart", v96), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *v97), 1}];
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"hopCountHistogramBins_%u_value", v96), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v97[2]), 1}];
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"hopCountHistogramBins_%u_binEnd", v96++), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v97[1]), 1}];
                        v95 += 24;
                      }

                      while (v96 < v75[36]);
                    }

                    if (v75[40])
                    {
                      v98 = 0;
                      v99 = 0;
                      do
                      {
                        v100 = (*(v75 + 19) + v98);
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"parentRSSIHistogramBins_%u_binStart", v99), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *v100), 1}];
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"parentRSSIHistogramBins_%u_value", v99), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v100[2]), 1}];
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"parentRSSIHistogramBins_%u_binEnd", v99++), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v100[1]), 1}];
                        v98 += 24;
                      }

                      while (v99 < v75[40]);
                    }

                    if (v75[18])
                    {
                      v101 = 0;
                      v102 = 0;
                      do
                      {
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"services_%u_serviceKey", v102), objc_msgSend([NSString alloc], "initWithData:encoding:", +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", *(v75 + 10) + v101 + 16, 32), 1), 1}];
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"services_%u_serviceId", v102), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(*(v75 + 10) + v101 + 4)), 1}];
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"services_%u_opCode", v102), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(*(v75 + 10) + v101)), 1}];
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"services_%u_type", v102), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(*(v75 + 10) + v101 + 1)), 1}];
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"services_%u_duration", v102++), +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(*(v75 + 10) + v101 + 8)), 1}];
                        v101 += 48;
                      }

                      while (v102 < v75[18]);
                    }

                    if (v75[14])
                    {
                      v103 = 0;
                      v104 = 0;
                      do
                      {
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"states_%u_count", v104), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(*(v75 + 8) + v103)), 1}];
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"states_%u_duration", v104++), +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(*(v75 + 8) + v103 + 8)), 1}];
                        v103 += 16;
                      }

                      while (v104 < v75[14]);
                    }

                    v105 = *(v75 + 21);
                    if (v105)
                    {
                      [v91 addFieldForKey:@"d2dMigrationStats_peerRssi" value:+[NSNumber numberWithInt:](NSNumber options:{"numberWithInt:", *(v105 + 24)), 1}];
                      [v91 addFieldForKey:@"d2dMigrationStats_rxBytes" value:+[NSNumber numberWithUnsignedLongLong:](NSNumber options:{"numberWithUnsignedLongLong:", *(*(v75 + 21) + 16)), 1}];
                      [v91 addFieldForKey:@"d2dMigrationStats_txBytes" value:+[NSNumber numberWithUnsignedLongLong:](NSNumber options:{"numberWithUnsignedLongLong:", *(*(v75 + 21) + 8)), 1}];
                      [v91 addFieldForKey:@"d2dMigrationStats_avgCCA" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(*(v75 + 21) + 31)), 1}];
                      [v91 addFieldForKey:@"d2dMigrationStats_channel" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(*(v75 + 21) + 28)), 1}];
                      [v91 addFieldForKey:@"d2dMigrationStats_txFailureCount" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(*(v75 + 21) + 29)), 1}];
                      [v91 addFieldForKey:@"d2dMigrationStats_sessionDuration" value:+[NSNumber numberWithUnsignedLongLong:](NSNumber options:{"numberWithUnsignedLongLong:", **(v75 + 21)), 1}];
                      [v91 addFieldForKey:@"d2dMigrationStats_migrationRole" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(*(v75 + 21) + 30)), 1}];
                    }

                    [v91 addFieldForKey:@"cachedPeersOn6G" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 184)), 1}];
                    [v91 addFieldForKey:@"self6ECapable" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 185)), 1}];
                    [v91 addFieldForKey:@"cachedPeers6ECapable" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v75 + 186)), 1}];
                    [v91 addFieldForKey:@"peerChannelsteerAttemptCount_2G" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[52]), 1}];
                    [v91 addFieldForKey:@"peerChannelsteerAttemptCount_5G" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", v75[53]), 1}];
                    if (v75[48])
                    {
                      v106 = 0;
                      do
                      {
                        [v91 addFieldForKey:+[NSString stringWithFormat:](NSString value:"stringWithFormat:" options:{@"lteRestrictedChannelsUsed_%u", v106), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(*(v75 + 25) + 2 * v106)), 1}];
                        ++v106;
                      }

                      while (v106 < v75[48]);
                    }

                    sub_10004E4C4(v91);

                    v107 = *(v75 + 10);
                    if (v107)
                    {
                      free(v107);
                    }

                    v108 = *(v75 + 8);
                    v88 = v129;
                    if (v108)
                    {
                      free(v108);
                    }

                    v109 = *(v75 + 19);
                    if (v109)
                    {
                      free(v109);
                    }

                    v110 = *(v75 + 17);
                    if (v110)
                    {
                      free(v110);
                    }

                    v111 = *(v75 + 21);
                    if (v111)
                    {
                      free(v111);
                    }

                    v112 = *(v75 + 25);
                    if (v112)
                    {
                      free(v112);
                    }
                  }

                  free(v75);
                  objc_autoreleasePoolPop(v88);
                  v113 = v132.i32[0];
                  v114 = v132.u32[1];
LABEL_145:
                  v23[21] = Current;
                  *(v23 + 40) = v113;
                  *(v23 + 41) = v114;
                  return;
                }
              }

              sub_100149224();
            }
          }

          else
          {
            sub_100149290();
          }
        }

        else
        {
          sub_1001492FC();
        }
      }
    }

    else
    {
      sub_1001493D4();
    }
  }

  else
  {
    sub_100149440();
  }
}

uint64_t sub_100052794(unsigned int *a1)
{
  valuePtr = 0;
  v2 = IOServiceNameMatching("centauri");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Bail out, init_failure will be updated from WiFiHardwareHealthy notification", "__WiFiMetricsManagerGetDeviceInitFailureReason"}];
    }

    objc_autoreleasePoolPop(v4);
    return 3758097095;
  }

  if (qword_1002984F8)
  {
    v6 = IOServiceNameMatching("wlan");
    if (v6)
    {
      v7 = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
      if (v7)
      {
        v8 = v7;
        v9 = IORegistryEntrySearchCFProperty(v7, "IOService", @"com.apple.wlan.init_failure", kCFAllocatorDefault, 3u);
        v10 = objc_autoreleasePoolPush();
        if (v9)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: data for com.apple.wlan.init_failure found", "__WiFiMetricsManagerGetDeviceInitFailureReason"}];
          }

          objc_autoreleasePoolPop(v10);
          TypeID = CFNumberGetTypeID();
          if (TypeID == CFGetTypeID(v9) && CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr))
          {
            v12 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: deviceInitFailureReason:0x%0x ", "__WiFiMetricsManagerGetDeviceInitFailureReason", valuePtr}];
            }

            objc_autoreleasePoolPop(v12);
          }

          CFRelease(v9);
        }

        else
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: WiFi: com.apple.wlan.init_failure property not found.", "__WiFiMetricsManagerGetDeviceInitFailureReason"}];
          }

          objc_autoreleasePoolPop(v10);
        }

        v16 = IORegistryEntrySearchCFProperty(v8, "IOService", @"com.apple.wlan.init_failure_string", kCFAllocatorDefault, 3u);
        if (v16)
        {
          v17 = v16;
          v18 = CFStringGetTypeID();
          if (v18 == CFGetTypeID(v17))
          {
            v19 = CFAbsoluteTimeGetCurrent() - *(qword_1002984F8 + 24);
            v20 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: deviceInitFailureReason:%@ ", "__WiFiMetricsManagerGetDeviceInitFailureReason", v17}];
            }

            objc_autoreleasePoolPop(v20);
            [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setDeviceInitializationFailureReason:"setDeviceInitializationFailureReason:timeSinceBoot:" timeSinceBoot:v17, v19];
          }

          CFRelease(v17);
        }

        else
        {
          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: WiFi: com.apple.wlan.init_failure property not found.", "__WiFiMetricsManagerGetDeviceInitFailureReason"}];
          }

          objc_autoreleasePoolPop(v21);
        }

        IOObjectRelease(v8);
        v15 = valuePtr;
        goto LABEL_38;
      }

      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: service for Class wlan NOT found ", "__WiFiMetricsManagerGetDeviceInitFailureReason"}];
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Class  wlan NOT found ", "__WiFiMetricsManagerGetDeviceInitFailureReason"}];
      }
    }

    objc_autoreleasePoolPop(v14);
    v15 = 0;
LABEL_38:
    result = 0;
    *a1 = v15;
    return result;
  }

  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null metrics", "__WiFiMetricsManagerGetDeviceInitFailureReason"}];
  }

  objc_autoreleasePoolPop(v13);
  return 0;
}

void sub_100052B38(uint64_t a1, const __CFDictionary *a2)
{
  if (qword_1002984F8)
  {
    v4 = sub_100006F88(a1);
    v5 = sub_1000078F4(a1, v4);
    v6 = v5;
    if (v5)
    {
      v7 = sub_10000A540(v5, @"BSSID");
      v8 = sub_10000A540(v6, @"WPS_PROB_RESP_IE");
      v9 = sub_10000A540(v6, @"APPLE_IE");
      if (v8)
      {
        goto LABEL_18;
      }

      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v189 = "WiFiMetricsManagerSubmitWatchdogEvent";
        [off_100298C40 WFLog:3 message:"%s QFA Watchdog metric WPS PROBE RESPONSE IE not found in driverAvailableEventDict. Looking in cache..."];
      }

      objc_autoreleasePoolPop(v10);
      v11 = sub_100072D44(*(qword_1002984F8 + 16));
      v8 = v11;
      if (!v11)
      {
LABEL_18:
        if (a1)
        {
          if (a2)
          {
            v17 = malloc_type_malloc(0x1310uLL, 0x10600406BF74C50uLL);
            if (v17)
            {
              v18 = v17;
              bzero(v17, 0x1310uLL);
              v19 = sub_100063B0C(a1);
              if (v19)
              {
                v20 = v19;
                v21 = sub_10009DF00(v19);
                if (v21)
                {
                  v22 = v21;
                  v23 = sub_10000A540(v20, @"BSSID");
                  *(v18 + 608) = CFStringCreateCopy(kCFAllocatorDefault, v23);
                  v330.location = 0;
                  v330.length = 3;
                  CFDataGetBytes(v22, v330, v18 + 4876);
                  CFRelease(v22);
                }

                CFRelease(v20);
              }

              Value = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE");
              if (Value)
              {
                *(v18 + 2) = CFBooleanGetValue(Value);
                v25 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_FLAGS");
                if (v25)
                {
                  CFNumberGetValue(v25, kCFNumberSInt32Type, v18 + 4);
                  if (!*(v18 + 2) || *(qword_1002984F8 + 80) != *(qword_1002984F8 + 24) && (*(v18 + 1218) = ((CFAbsoluteTimeGetCurrent() - *(qword_1002984F8 + 80)) * 1000.0), !*(v18 + 2)))
                  {
                    if ((v18[4] & 2) == 0)
                    {
                      *(qword_1002984F8 + 88) = ((CFAbsoluteTimeGetCurrent() - *(qword_1002984F8 + 80)) * 1000.0);
                      *(qword_1002984F8 + 80) = CFAbsoluteTimeGetCurrent();
                    }
                  }

                  v26 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_REASON");
                  if (v26)
                  {
                    CFNumberGetValue(v26, kCFNumberSInt32Type, v18 + 12);
                    v27 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_SUBREASON");
                    if (v27)
                    {
                      CFNumberGetValue(v27, kCFNumberSInt32Type, v18 + 16);
                      v28 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_VERSION");
                      if (v28)
                      {
                        CFNumberGetValue(v28, kCFNumberSInt32Type, v18);
                        v29 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_PROGRAM_COUNTER");
                        if (v29)
                        {
                          CFNumberGetValue(v29, kCFNumberSInt64Type, v18 + 160);
                        }

                        v30 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_LINK_REGISTER");
                        if (v30)
                        {
                          CFNumberGetValue(v30, kCFNumberSInt64Type, v18 + 168);
                        }

                        v31 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_LINENUMBER");
                        if (v31)
                        {
                          CFNumberGetValue(v31, kCFNumberSInt32Type, v18 + 208);
                        }

                        if (CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_HAVE_EXT_TRAP") == kCFBooleanTrue)
                        {
                          v18[244] = 1;
                          v132 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_TRAP_SEQUENCE");
                          if (v132)
                          {
                            CFNumberGetValue(v132, kCFNumberSInt32Type, v18 + 248);
                          }

                          sub_100145CDC(v18 + 252, v18 + 572, a2, @"DRIVER_AVAILABLE_TRAP_SIGNATURE", v133, v134, v135, v136, v189, v203, SHIDWORD(v203), v230, v244, v258, v272, v286, v300, v314, v328);
                          sub_100145CDC(v18 + 576, v18 + 896, a2, @"DRIVER_AVAILABLE_TRAP_STACK", v137, v138, v139, v140, v190, v204, v217, v231, v245, v259, v273, v287, v301, v315, v328);
                          sub_100145CDC(v18 + 900, v18 + 1220, a2, @"DRIVER_AVAILABLE_TRAP_MEMORY", v141, v142, v143, v144, v191, v205, v218, v232, v246, v260, v274, v288, v302, v316, v328);
                          sub_100145CDC(v18 + 1224, v18 + 1544, a2, @"DRIVER_AVAILABLE_TRAP_UCODE", v145, v146, v147, v148, v192, v206, v219, v233, v247, v261, v275, v289, v303, v317, v328);
                          sub_100145CDC(v18 + 1548, v18 + 1868, a2, @"DRIVER_AVAILABLE_TRAP_DEEP_SLEEP", v149, v150, v151, v152, v193, v207, v220, v234, v248, v262, v276, v290, v304, v318, v328);
                          sub_100145CDC(v18 + 1872, v18 + 2192, a2, @"DRIVER_AVAILABLE_TRAP_PSM_WD", v153, v154, v155, v156, v194, v208, v221, v235, v249, v263, v277, v291, v305, v319, v328);
                          sub_100145CDC(v18 + 2196, v18 + 2516, a2, @"DRIVER_AVAILABLE_TRAP_PHY", v157, v158, v159, v160, v195, v209, v222, v236, v250, v264, v278, v292, v306, v320, v328);
                          sub_100145CDC(v18 + 2520, v18 + 2840, a2, @"DRIVER_AVAILABLE_TRAP_BUS", v161, v162, v163, v164, v196, v210, v223, v237, v251, v265, v279, v293, v307, v321, v328);
                          sub_100145CDC(v18 + 2844, v18 + 3164, a2, @"DRIVER_AVAILABLE_TRAP_MAC", v165, v166, v167, v168, v197, v211, v224, v238, v252, v266, v280, v294, v308, v322, v328);
                          sub_100145CDC(v18 + 3168, v18 + 3488, a2, @"DRIVER_AVAILABLE_TRAP_BACKPLANE", v169, v170, v171, v172, v198, v212, v225, v239, v253, v267, v281, v295, v309, v323, v328);
                          sub_100145CDC(v18 + 3492, v18 + 3812, a2, @"DRIVER_AVAILABLE_KEY_PCIE_QUEUE", v173, v174, v175, v176, v199, v213, v226, v240, v254, v268, v282, v296, v310, v324, v328);
                          sub_100145CDC(v18 + 3816, v18 + 4136, a2, @"DRIVER_AVAILABLE_KEY_WLAN_STATE", v177, v178, v179, v180, v200, v214, v227, v241, v255, v269, v283, v297, v311, v325, v328);
                          sub_100145CDC(v18 + 4140, v18 + 4460, a2, @"DRIVER_AVAILABLE_KEY_MAC_ENAB", v181, v182, v183, v184, v201, v215, v228, v242, v256, v270, v284, v298, v312, v326, v328);
                          sub_100145CDC(v18 + 4464, v18 + 4784, a2, @"DRIVER_AVAILABLE_KEY_TX_ERR_THRESH", v185, v186, v187, v188, v202, v216, v229, v243, v257, v271, v285, v299, v313, v327, v328);
                        }

                        v32 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_REASON_STRING");
                        v33 = v32;
                        if (v32 && (v34 = CFGetTypeID(v32), v34 == CFStringGetTypeID()))
                        {
                          CFStringGetCString(v33, v18 + 28, 63, 0);
                        }

                        else
                        {
                          v35 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            v36 = "Not a string";
                            if (!v33)
                            {
                              v36 = "is Null or Key-not-present";
                            }

                            [off_100298C40 WFLog:3 message:{"%s: reasonString :%s", "WiFiMetricsManagerSubmitWatchdogEvent", v36}];
                          }

                          objc_autoreleasePoolPop(v35);
                        }

                        v37 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_KEY_SUBREASON_STRING");
                        v38 = v37;
                        if (v37 && (v39 = CFGetTypeID(v37), v39 == CFStringGetTypeID()))
                        {
                          CFStringGetCString(v38, v18 + 92, 63, 0);
                        }

                        else
                        {
                          v40 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            v41 = "Not a string";
                            if (!v38)
                            {
                              v41 = "is Null or Key-not-present";
                            }

                            [off_100298C40 WFLog:3 message:{"%s: subReasonString :%s", "WiFiMetricsManagerSubmitWatchdogEvent", v41}];
                          }

                          objc_autoreleasePoolPop(v40);
                        }

                        v42 = objc_autoreleasePoolPush();
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: reason:%s(0x%8x or %d), subreason:%s(0x%8x or %u) flag: %u", "WiFiMetricsManagerSubmitWatchdogEvent", v18 + 28, *(v18 + 3), *(v18 + 3), v18 + 92, *(v18 + 4), *(v18 + 4), *(v18 + 1)}];
                        }

                        objc_autoreleasePoolPop(v42);
                        v43 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_FILENAME");
                        v44 = v43;
                        if (v43 && (v45 = CFGetTypeID(v43), v45 == CFStringGetTypeID()))
                        {
                          CFStringGetCString(v44, v18 + 176, 31, 0);
                        }

                        else
                        {
                          v46 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            v47 = "Not a string";
                            if (!v44)
                            {
                              v47 = "is Null or Key-not-present";
                            }

                            [off_100298C40 WFLog:3 message:{"%s: Filename :%s", "WiFiMetricsManagerSubmitWatchdogEvent", v47}];
                          }

                          objc_autoreleasePoolPop(v46);
                        }

                        v48 = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE_FUNCTION ");
                        v49 = v48;
                        if (v48 && (v50 = CFGetTypeID(v48), v50 == CFStringGetTypeID()))
                        {
                          CFStringGetCString(v49, v18 + 212, 31, 0);
                          if (!v8)
                          {
LABEL_134:
                            if (v9)
                            {
                              LOBYTE(v328) = -86;
                              v101 = CFDictionaryGetValue(v9, @"APPLE_IE_PRODUCT_ID");
                              if (v101 && (v102 = v101, TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(v102)))
                              {
                                CFNumberGetValue(v102, kCFNumberSInt8Type, &v328);
                                v104 = CFStringCreateWithFormat(0, 0, @"%d", v328);
                              }

                              else
                              {
                                v105 = objc_autoreleasePoolPush();
                                if (off_100298C40)
                                {
                                  [off_100298C40 WFLog:4 message:{"%s: bad type for wpsResponseType. Not a CFNumberType or NULL", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                                }

                                objc_autoreleasePoolPop(v105);
                                v104 = 0;
                              }

                              *(v18 + 602) = v104;
                            }

                            v106 = objc_autoreleasePoolPush();
                            if (*(v18 + 2))
                            {
                              if (qword_1002984F8)
                              {
                                v107 = [WAMessage alloc];
                                v108 = [v107 initWithMetricName:kWAMessageMetricNameWatchdogEvent options:1];
                                if (v108)
                                {
                                  v109 = v108;
                                  [v108 addFieldForKey:@"reason" value:+[NSNumber numberWithInt:](NSNumber options:{"numberWithInt:", *(v18 + 3)), 1}];
                                  [v109 addFieldForKey:kWAMessageKeySubReason value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v18 + 4)), 1}];
                                  v110 = v18 + 28;
                                  [v109 addFieldForKey:kWAMessageKeyReasonString value:+[NSString stringWithFormat:](NSString options:{"stringWithFormat:", @"%s", v18 + 28), 1}];
                                  v111 = v18 + 92;
                                  [v109 addFieldForKey:kWAMessageKeySubReasonString value:+[NSString stringWithFormat:](NSString options:{"stringWithFormat:", @"%s", v18 + 92), 1}];
                                  if (*(v18 + 600))
                                  {
                                    [v109 addFieldForKey:kWAMessageKeyWPSMfgElement value:+[NSString stringWithString:](NSString options:{"stringWithString:"), 1}];
                                  }

                                  if (*(v18 + 601))
                                  {
                                    [v109 addFieldForKey:kWAMessageKeyWPSModelName value:+[NSString stringWithString:](NSString options:{"stringWithString:"), 1}];
                                  }

                                  if (*(v18 + 602))
                                  {
                                    [v109 addFieldForKey:kWAMessageKeyWPSModelNum value:+[NSString stringWithString:](NSString options:{"stringWithString:"), 1}];
                                  }

                                  if (*(v18 + 605))
                                  {
                                    [v109 addFieldForKey:kWAMessageKeyWPSPrimaryDeviceNameElement value:+[NSString stringWithString:](NSString options:{"stringWithString:"), 1}];
                                  }

                                  if (*(v18 + 606))
                                  {
                                    [v109 addFieldForKey:kWAMessageKeyWPSDeviceNameData value:+[NSString stringWithString:](NSString options:{"stringWithString:"), 1}];
                                  }

                                  [v109 addFieldForKey:kWAMessageKeyForegroundActivity value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", sub_100089A84(*(qword_1002984F8 + 16)) != 0), 1}];
                                  v112 = *(v18 + 1);
                                  [v109 addFieldForKey:kWAMessageKeyIsDriverAvailabilityNonFatal value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", (v112 >> 1) & 1), 1}];
                                  if ((v112 & 2) == 0)
                                  {
                                    [v109 addFieldForKey:kWAMessageKeyTimeBetweenFailure value:+[NSNumber numberWithUnsignedLongLong:](NSNumber options:{"numberWithUnsignedLongLong:", *(qword_1002984F8 + 88)), 1}];
                                  }

                                  if (*(qword_1002984F8 + 80) != *(qword_1002984F8 + 24))
                                  {
                                    [v109 addFieldForKey:kWAMessageKeyRecoveryLatency value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v18 + 1218)), 1}];
                                  }

                                  sub_100057E24(v109, kWAMessageKeyOUI, v18 + 4876);
                                  if (*(v18 + 608))
                                  {
                                    v113 = [WiFiUsageAccessPointProfile profileForBSSID:?];
                                    if (v113)
                                    {
                                      [v109 addFieldForKey:kWAMessageKeyApProfile value:v113 options:1];
                                    }
                                  }

                                  sub_10004E4C4(v109);
                                  if ((v112 & 2) == 0 && MGGetBoolAnswer() && (!*v110 || !*v111))
                                  {
                                    v114 = objc_autoreleasePoolPush();
                                    if (off_100298C40)
                                    {
                                      [off_100298C40 WFLog:4 message:{"%s: Fatal chip watchdog with missing reason or subreason", "__WiFiMetricsManagerWAMessageSubmitWatchdogEvent"}];
                                    }

                                    objc_autoreleasePoolPop(v114);
                                    v115 = objc_autoreleasePoolPush();
                                    if (off_100298C40)
                                    {
                                      if (*v110)
                                      {
                                        v116 = v18 + 28;
                                      }

                                      else
                                      {
                                        v116 = "zeroLen";
                                      }

                                      if (*v111)
                                      {
                                        v117 = v18 + 92;
                                      }

                                      else
                                      {
                                        v117 = "zeroLen";
                                      }

                                      [off_100298C40 WFLog:4 message:{"%s: reason: 0x%x reasonString: %s subreason: 0x%x subreasonString: %s", "__WiFiMetricsManagerWAMessageSubmitWatchdogEvent", *(v18 + 3), v116, *(v18 + 4), v117}];
                                    }

                                    objc_autoreleasePoolPop(v115);
                                    v118 = objc_autoreleasePoolPush();
                                    if (off_100298C40)
                                    {
                                      if (v18[176])
                                      {
                                        v119 = v18 + 176;
                                      }

                                      else
                                      {
                                        v119 = "zeroLen";
                                      }

                                      v120 = v18 + 212;
                                      if (!v18[212])
                                      {
                                        v120 = "zeroLen";
                                      }

                                      [off_100298C40 WFLog:4 message:{"%s: flags: 0x%x available: 0x%x minor_reason: 0x%x filename: %s function: %s", "__WiFiMetricsManagerWAMessageSubmitWatchdogEvent", *(v18 + 1), *(v18 + 2), *(v18 + 6), v119, v120}];
                                    }

                                    objc_autoreleasePoolPop(v118);
                                    v121 = objc_autoreleasePoolPush();
                                    if (off_100298C40)
                                    {
                                      [off_100298C40 WFLog:4 message:{"%s: hasExtTrapInfo: 0x%x sequenceNum: %d signatureCount: %d stackTraceCount: %d recoveryLatency: %d", "__WiFiMetricsManagerWAMessageSubmitWatchdogEvent", v18[244], *(v18 + 62), *(v18 + 143), *(v18 + 224), *(v18 + 1218)}];
                                    }

                                    objc_autoreleasePoolPop(v121);
                                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
                                    {
                                      sub_1001494AC();
                                    }
                                  }
                                }

                                else
                                {
                                  sub_1001494F4();
                                }
                              }

                              else
                              {
                                sub_100149554();
                              }
                            }

                            objc_autoreleasePoolPop(v106);
                            goto LABEL_189;
                          }
                        }

                        else
                        {
                          v51 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            v52 = "Not a string";
                            if (!v49)
                            {
                              v52 = "is Null or Key-not-present";
                            }

                            [off_100298C40 WFLog:3 message:{"%s: Function name :%s", "WiFiMetricsManagerSubmitWatchdogEvent", v52}];
                          }

                          objc_autoreleasePoolPop(v51);
                          if (!v8)
                          {
                            goto LABEL_134;
                          }
                        }

                        v53 = CFDictionaryGetValue(v8, @"IE_KEY_WPS_PRIMARY_DEV_TYPE");
                        HIWORD(v328) = -21846;
                        v54 = CFDictionaryGetValue(v8, @"IE_KEY_WPS_CFG_METHODS");
                        if (v54 && (v55 = v54, v56 = CFNumberGetTypeID(), v56 == CFGetTypeID(v55)))
                        {
                          CFNumberGetValue(v55, kCFNumberSInt16Type, &v328 + 6);
                          v57 = CFStringCreateWithFormat(0, 0, @"%d", HIWORD(v328));
                        }

                        else
                        {
                          v58 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:4 message:{"%s: bad type for wpsConfigMethods. Not a CFNumber or NULL", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                          }

                          objc_autoreleasePoolPop(v58);
                          v57 = 0;
                        }

                        *(v18 + 607) = v57;
                        v59 = CFDictionaryGetValue(v8, @"IE_KEY_WPS_MODEL_NAME");
                        if (v59 && (v60 = v59, v61 = CFStringGetTypeID(), v61 == CFGetTypeID(v60)))
                        {
                          Copy = CFStringCreateCopy(kCFAllocatorDefault, v60);
                        }

                        else
                        {
                          v63 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:4 message:{"%s: bad type for wpsModelName. Not a CFString or NULL", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                          }

                          objc_autoreleasePoolPop(v63);
                          Copy = 0;
                        }

                        *(v18 + 601) = Copy;
                        v64 = CFDictionaryGetValue(v8, @"IE_KEY_WPS_MODEL_NUM");
                        if (v64 && (v65 = v64, v66 = CFStringGetTypeID(), v66 == CFGetTypeID(v65)))
                        {
                          v67 = CFStringCreateCopy(kCFAllocatorDefault, v65);
                        }

                        else
                        {
                          v68 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:4 message:{"%s: bad type for wpsModelNumber. Not a CFString or NULL", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                          }

                          objc_autoreleasePoolPop(v68);
                          v67 = 0;
                        }

                        *(v18 + 602) = v67;
                        v69 = CFDictionaryGetValue(v8, @"IE_KEY_WPS_MANUFACTURER");
                        if (v69 && (v70 = v69, v71 = CFStringGetTypeID(), v71 == CFGetTypeID(v70)))
                        {
                          v72 = CFStringCreateCopy(kCFAllocatorDefault, v70);
                        }

                        else
                        {
                          v73 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:4 message:{"%s: bad type for wpsManufacturerElement. Not a CFString or NULL", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                          }

                          objc_autoreleasePoolPop(v73);
                          v72 = 0;
                        }

                        *(v18 + 600) = v72;
                        v74 = CFDictionaryGetValue(v8, @"IE_KEY_WPS_DEV_NAME");
                        if (v74 && (v75 = v74, v76 = CFStringGetTypeID(), v76 == CFGetTypeID(v75)))
                        {
                          v77 = CFStringCreateCopy(kCFAllocatorDefault, v75);
                        }

                        else
                        {
                          v78 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:4 message:{"%s: bad type for wpsDeviceNameElement. Not a CFString or NULL", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                          }

                          objc_autoreleasePoolPop(v78);
                          v77 = 0;
                        }

                        *(v18 + 605) = v77;
                        v79 = CFDictionaryGetValue(v8, @"IE_KEY_WPS_DEV_NAME_DATA");
                        if (v79 && (v80 = v79, v81 = CFDataGetTypeID(), v81 == CFGetTypeID(v80)))
                        {
                          Length = CFDataGetLength(v80);
                          v83 = malloc_type_malloc(Length, 0x100004077774924uLL);
                          v331.location = 0;
                          v331.length = Length;
                          CFDataGetBytes(v80, v331, v83);
                          SystemEncoding = CFStringGetSystemEncoding();
                          *(v18 + 606) = CFStringCreateWithBytes(kCFAllocatorDefault, v83, Length, SystemEncoding, 0);
                          free(v83);
                          if (!v53)
                          {
LABEL_127:
                            BYTE1(v328) = -86;
                            v96 = CFDictionaryGetValue(v8, @"IE_KEY_WPS_RESP_TYPE");
                            if (v96 && (v97 = v96, v98 = CFNumberGetTypeID(), v98 == CFGetTypeID(v97)))
                            {
                              CFNumberGetValue(v97, kCFNumberSInt8Type, &v328 + 1);
                              v99 = CFStringCreateWithFormat(0, 0, @"%d", BYTE1(v328));
                            }

                            else
                            {
                              v100 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:4 message:{"%s: bad type for wpsResponseType. Not a CFNumberType or NULL", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                              }

                              objc_autoreleasePoolPop(v100);
                              v99 = 0;
                            }

                            *(v18 + 599) = v99;
                            goto LABEL_134;
                          }
                        }

                        else
                        {
                          v85 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:4 message:{"%s: wpsDeviceNameData value is NULL or bad type for wpsDeviceNameData. Not a CFDataType ", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                          }

                          objc_autoreleasePoolPop(v85);
                          *(v18 + 606) = 0;
                          if (!v53)
                          {
                            goto LABEL_127;
                          }
                        }

                        *(&v328 + 2) = -1431655766;
                        v86 = CFDictionaryGetValue(v53, @"WPS_DEV_TYPE_CAT");
                        if (v86 && (v87 = v86, v88 = CFNumberGetTypeID(), v88 == CFGetTypeID(v87)))
                        {
                          CFNumberGetValue(v87, kCFNumberSInt16Type, &v328 + 4);
                          v89 = CFStringCreateWithFormat(0, 0, @"%d", WORD2(v328));
                        }

                        else
                        {
                          v90 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:4 message:{"%s: bad type for wpsPrimaryDeviceTypeCategory. Not a CFNumberType or NULL", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                          }

                          objc_autoreleasePoolPop(v90);
                          v89 = 0;
                        }

                        *(v18 + 603) = v89;
                        v91 = CFDictionaryGetValue(v53, @"WPS_DEV_TYPE_SUB_CAT");
                        if (v91 && (v92 = v91, v93 = CFNumberGetTypeID(), v93 == CFGetTypeID(v92)))
                        {
                          CFNumberGetValue(v92, kCFNumberSInt16Type, &v328 + 2);
                          v94 = CFStringCreateWithFormat(0, 0, @"%d", WORD1(v328));
                        }

                        else
                        {
                          v95 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:4 message:{"%s: bad type for wpsPrimaryDeviceTypeSubCategory. Not a CFNumberType or NULL", "WiFiMetricsManagerSubmitWatchdogEvent"}];
                          }

                          objc_autoreleasePoolPop(v95);
                          v94 = 0;
                        }

                        *(v18 + 604) = v94;
                        goto LABEL_127;
                      }

                      sub_1001495B4();
                    }

                    else
                    {
                      sub_100149620();
                    }
                  }

                  else
                  {
                    sub_10014968C();
                  }
                }

                else
                {
                  sub_1001496F8();
                }
              }

              else
              {
                sub_100149764();
              }

LABEL_189:
              v122 = *(v18 + 599);
              if (v122)
              {
                CFRelease(v122);
                *(v18 + 599) = 0;
              }

              v123 = *(v18 + 600);
              if (v123)
              {
                CFRelease(v123);
                *(v18 + 600) = 0;
              }

              v124 = *(v18 + 601);
              if (v124)
              {
                CFRelease(v124);
                *(v18 + 601) = 0;
              }

              v125 = *(v18 + 602);
              if (v125)
              {
                CFRelease(v125);
                *(v18 + 602) = 0;
              }

              v126 = *(v18 + 603);
              if (v126)
              {
                CFRelease(v126);
                *(v18 + 603) = 0;
              }

              v127 = *(v18 + 604);
              if (v127)
              {
                CFRelease(v127);
                *(v18 + 604) = 0;
              }

              v128 = *(v18 + 605);
              if (v128)
              {
                CFRelease(v128);
                *(v18 + 605) = 0;
              }

              v129 = *(v18 + 606);
              if (v129)
              {
                CFRelease(v129);
                *(v18 + 606) = 0;
              }

              v130 = *(v18 + 607);
              if (v130)
              {
                CFRelease(v130);
                *(v18 + 607) = 0;
              }

              v131 = *(v18 + 608);
              if (v131)
              {
                CFRelease(v131);
              }

              free(v18);
              goto LABEL_210;
            }

            sub_1001497D0();
          }

          else
          {
            sub_10014983C();
          }
        }

        else
        {
          sub_1001498A8();
        }

LABEL_210:
        if (v6)
        {
          CFRelease(v6);
        }

        return;
      }

      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v329.length = Count;
        v329.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v329, v6);
        if ((FirstIndexOfValue & 0x8000000000000000) == 0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, FirstIndexOfValue);
          v8 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            goto LABEL_18;
          }

          v15 = sub_10000A540(ValueAtIndex, @"BSSID");
          if (v15)
          {
            if (CFStringCompare(v7, v15, 1uLL) == kCFCompareEqualTo)
            {
              v8 = sub_10000A540(v8, @"WPS_PROB_RESP_IE");
              if (v8)
              {
                v16 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  v189 = "WiFiMetricsManagerSubmitWatchdogEvent";
                  [off_100298C40 WFLog:3 message:"%s QFA Watchdog metricWPS PROBE RESPONSE IE found in Known networks cache"];
                }

                objc_autoreleasePoolPop(v16);
              }

              goto LABEL_18;
            }
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v8 = 0;
    goto LABEL_18;
  }
}

void sub_100053F70(_BYTE *a1)
{
  if (!a1)
  {
    sub_100149980();
    return;
  }

  v2 = malloc_type_malloc(0x5A8uLL, 0x1000040C09493A1uLL);
  if (!v2)
  {
    sub_100149914();
    return;
  }

  v3 = v2;
  bzero(v2, 0x5A8uLL);
  memmove(v3, a1, 0x5A8uLL);
  v4 = objc_autoreleasePoolPush();
  v5 = objc_autoreleasePoolPush();
  if (*a1)
  {
    v6 = [WAMessage alloc];
    v7 = [v6 initWithMetricName:kWAMessageMetricNameLinkQualityStats options:1];
    if (v7)
    {
      v14 = v7;
      context = v5;
      v16 = v4;
      v18 = +[NSMutableString string];
      v19 = +[NSMutableString string];
      v20 = +[NSMutableString string];
      v21 = +[NSMutableString string];
      v22 = +[NSMutableString string];
      v23 = +[NSMutableString string];
      v31 = +[NSMutableString string];
      v17 = +[NSMutableString string];
      v24 = +[NSMutableString string];
      v25 = +[NSMutableString string];
      v26 = +[NSMutableString string];
      v27 = +[NSMutableString string];
      v28 = +[NSMutableString string];
      v29 = +[NSMutableString string];
      v30 = +[NSMutableString string];
      v32 = +[NSMutableString string];
      v33 = +[NSMutableString string];
      v34 = +[NSMutableString string];
      v35 = +[NSMutableString string];
      v36 = +[NSMutableString string];
      v37 = +[NSMutableString string];
      v38 = +[NSMutableString string];
      v39 = +[NSMutableString string];
      v40 = +[NSMutableString string];
      v41 = +[NSMutableString string];
      v42 = +[NSMutableString string];
      v43 = +[NSMutableString string];
      v44 = +[NSMutableString string];
      v45 = +[NSMutableString string];
      v46 = +[NSMutableString string];
      v47 = +[NSMutableString string];
      v48 = +[NSMutableString string];
      v49 = +[NSMutableString string];
      v50 = +[NSMutableString string];
      v51 = +[NSMutableString string];
      v52 = +[NSMutableString string];
      v8 = +[NSMutableString string];
      LODWORD(v9) = *a1;
      if (*a1)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (v11 >= (v9 - 1))
          {
            v12 = &stru_1002680F8;
          }

          else
          {
            v12 = @":";
          }

          [v18 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 8]), "stringValue"), v12];
          [v19 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 12]), "stringValue"), v12];
          [v20 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 16]), "stringValue"), v12];
          [v21 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 20]), "stringValue"), v12];
          [v22 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 24]), "stringValue"), v12];
          [v23 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 28]), "stringValue"), v12];
          [v17 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 32]), "stringValue"), v12];
          [v31 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 36]), "stringValue"), v12];
          [v24 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 40]), "stringValue"), v12];
          [v25 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithChar:](NSNumber, "numberWithChar:", a1[v10 + 44]), "stringValue"), v12];
          [v26 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 45]), "stringValue"), v12];
          [v27 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 46]), "stringValue"), v12];
          [v28 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 47]), "stringValue"), v12];
          [v29 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 48]), "stringValue"), v12];
          [v30 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 49]), "stringValue"), v12];
          [v32 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 50]), "stringValue"), v12];
          [v33 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 51]), "stringValue"), v12];
          [v34 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 52]), "stringValue"), v12];
          [v35 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 56]), "stringValue"), v12];
          [v36 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 60]), "stringValue"), v12];
          [v37 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 64]), "stringValue"), v12];
          [v38 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 68]), "stringValue"), v12];
          [v39 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 72]), "stringValue"), v12];
          [v40 appendFormat:@"%@%@", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%.2f", *&a1[v10 + 80]), v12];
          [v41 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 88]), "stringValue"), v12];
          [v42 appendFormat:@"%@%@", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%.2f", *&a1[v10 + 96]), v12];
          [v43 appendFormat:@"%@%@", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%.2f", *&a1[v10 + 104]), v12];
          [v44 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 112]), "stringValue"), v12];
          [v45 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *&a1[v10 + 116]), "stringValue"), v12];
          [v46 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *&a1[v10 + 120]), "stringValue"), v12];
          [v47 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *&a1[v10 + 128]), "stringValue"), v12];
          [v48 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *&a1[v10 + 136]), "stringValue"), v12];
          [v49 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 144]), "stringValue"), v12];
          [v50 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithChar:](NSNumber, "numberWithChar:", a1[v10 + 145]), "stringValue"), v12];
          [v51 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 146]), "stringValue"), v12];
          [v52 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 147]), "stringValue"), v12];
          [v8 appendFormat:@"%@%@", -[NSNumber stringValue](+[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", a1[v10 + 148]), "stringValue"), v12];
          ++v11;
          v9 = *a1;
          v10 += 144;
        }

        while (v11 < v9);
      }

      [v14 addFieldForKey:@"txFrames" value:v18 options:1];
      [v14 addFieldForKey:@"txFail" value:v19 options:1];
      [v14 addFieldForKey:@"txRetrans" value:v20 options:1];
      [v14 addFieldForKey:@"bcnSched" value:v21 options:1];
      [v14 addFieldForKey:@"bcnRcvs" value:v22 options:1];
      [v14 addFieldForKey:@"fwTxFrames" value:v23 options:1];
      [v14 addFieldForKey:@"fwTxFail" value:v17 options:1];
      [v14 addFieldForKey:@"fwTxRetrans" value:v31 options:1];
      [v14 addFieldForKey:@"rxFrames" value:v24 options:1];
      [v14 addFieldForKey:@"rssi" value:v25 options:1];
      [v14 addFieldForKey:@"trgDisc" value:v26 options:1];
      [v14 addFieldForKey:@"gwArpExpiry" value:v27 options:1];
      [v14 addFieldForKey:@"usrInput" value:v28 options:1];
      [v14 addFieldForKey:@"txPerSign" value:v29 options:1];
      [v14 addFieldForKey:@"fwTxPerSign" value:v30 options:1];
      [v14 addFieldForKey:@"bcnPerSign" value:v32 options:1];
      [v14 addFieldForKey:@"sympSign" value:v33 options:1];
      [v14 addFieldForKey:@"fgAppNetUsage" value:v34 options:1];
      [v14 addFieldForKey:@"sympUsrImpact" value:v35 options:1];
      [v14 addFieldForKey:@"sympAwdCode" value:v36 options:1];
      [v14 addFieldForKey:@"arpFailureCount" value:v37 options:1];
      [v14 addFieldForKey:@"dnsServersImpacted" value:v38 options:1];
      [v14 addFieldForKey:@"dnsServersTotal" value:v39 options:1];
      [v14 addFieldForKey:@"gateOpenTime" value:v40 options:1];
      [v14 addFieldForKey:@"trafficWatchRx" value:v41 options:1];
      [v14 addFieldForKey:@"trafficWatchDuration" value:v42 options:1];
      [v14 addFieldForKey:@"trafficWatchTime" value:v43 options:1];
      [v14 addFieldForKey:@"validState" value:v44 options:1];
      [v14 addFieldForKey:@"metricReason" value:v45 options:1];
      [v14 addFieldForKey:@"rapidLqmDuration" value:v46 options:1];
      [v14 addFieldForKey:@"tdEvalDuration" value:v47 options:1];
      [v14 addFieldForKey:@"roamWaitTime" value:v48 options:1];
      [v14 addFieldForKey:@"autoLeaveSign" value:v49 options:1];
      [v14 addFieldForKey:@"autoLeaveRssi" value:v50 options:1];
      [v14 addFieldForKey:@"actProbeSign" value:v51 options:1];
      [v14 addFieldForKey:@"probesSent" value:v52 options:1];
      [v14 addFieldForKey:@"probesFailed" value:v8 options:1];
      sub_10004E4C4(v14);

      v4 = v16;
      v5 = context;
      goto LABEL_12;
    }

    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Failed to alloc WAMessage for TriggerDisconnectData", "__WiFiMetricsManagerWAMessageSubmitTriggerDisconnectData"}];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: No records in data.. bailing", "__WiFiMetricsManagerWAMessageSubmitTriggerDisconnectData"}];
    }
  }

  objc_autoreleasePoolPop(v13);
LABEL_12:
  objc_autoreleasePoolPop(v5);
  objc_autoreleasePoolPop(v4);

  free(v3);
}

void sub_100054B50(__int128 *a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x38uLL, 0x10600406BF8FC03uLL);
    if (v2)
    {
      v3 = v2;
      *(v2 + 6) = 0;
      *(v2 + 1) = 0u;
      *(v2 + 2) = 0u;
      *v2 = 0u;
      v4 = *a1;
      v5 = a1[1];
      v6 = a1[2];
      *(v2 + 6) = *(a1 + 6);
      *(v2 + 1) = v5;
      *(v2 + 2) = v6;
      *v2 = v4;
      v7 = *(a1 + 5);
      if (v7)
      {
        *(v2 + 5) = CFStringCreateCopy(kCFAllocatorDefault, v7);
      }

      v8 = *(a1 + 6);
      if (v8)
      {
        *(v3 + 6) = CFStringCreateCopy(kCFAllocatorDefault, v8);
      }

      v9 = objc_autoreleasePoolPush();
      v10 = objc_autoreleasePoolPush();
      if (objc_opt_class())
      {
        v11 = [WAMessage alloc];
        v12 = [v11 initWithMetricName:kWAMessageMetricNameActionFrameEvent options:1];
        if (v12)
        {
          v13 = v12;
          sub_100057E24(v12, kWAMessageKeyOUI, v3);
          [v13 addFieldForKey:kWAMessageKeyEnvironmentType value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v3 + 1)), 1}];
          [v13 addFieldForKey:kWAMessageKeyCategoryCode value:+[NSNumber numberWithChar:](NSNumber options:{"numberWithChar:", v3[8]), 1}];
          [v13 addFieldForKey:kWAMessageKeyActionCode value:+[NSNumber numberWithChar:](NSNumber options:{"numberWithChar:", v3[9]), 1}];
          [v13 addFieldForKey:kWAMessageKeyDialogToken value:+[NSNumber numberWithChar:](NSNumber options:{"numberWithChar:", v3[10]), 1}];
          [v13 addFieldForKey:kWAMessageKeyStatus value:+[NSNumber numberWithChar:](NSNumber options:{"numberWithChar:", v3[11]), 1}];
          [v13 addFieldForKey:kWAMessageKeyFrameType value:+[NSNumber numberWithChar:](NSNumber options:{"numberWithChar:", v3[12]), 1}];
          [v13 addFieldForKey:kWAMessageKeyBtmDisassociationTimeout value:+[NSNumber numberWithShort:](NSNumber options:{"numberWithShort:", *(v3 + 7)), 1}];
          [v13 addFieldForKey:kWAMessageKeyBtmValidityInterval value:+[NSNumber numberWithChar:](NSNumber options:{"numberWithChar:", v3[16]), 1}];
          [v13 addFieldForKey:kWAMessageKeyBtmTerminationDuration value:+[NSNumber numberWithChar:](NSNumber options:{"numberWithChar:", v3[17]), 1}];
          [v13 addFieldForKey:kWAMessageKeyBtmHasPreferredCandidateList value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", v3[18] != 0), 1}];
          [v13 addFieldForKey:kWAMessageKeyBtmAbridged value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", v3[19] != 0), 1}];
          [v13 addFieldForKey:kWAMessageKeyBtmDisassociationImminent value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", v3[20] != 0), 1}];
          [v13 addFieldForKey:kWAMessageKeyBtmBssTerminationIncluded value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", v3[21] != 0), 1}];
          [v13 addFieldForKey:kWAMessageKeyBtmEssTerminationIncluded value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", v3[22] != 0), 1}];
          [v13 addFieldForKey:kWAMessageKeyChannel value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v3 + 6)), 1}];
          [v13 addFieldForKey:kWAMessageKeyChannelWidth value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v3 + 7)), 1}];
          [v13 addFieldForKey:kWAMessageKeyChannelFlags value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v3 + 9)), 1}];
          [v13 addFieldForKey:kWAMessageKeyPhyMode value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(v3 + 8)), 1}];
          if (*(v3 + 5))
          {
            [v13 addFieldForKey:kWAMessageKeyWPSModelName value:+[NSString stringWithString:](NSString options:{"stringWithString:"), 1}];
          }

          if (*(v3 + 6))
          {
            [v13 addFieldForKey:kWAMessageKeyWPSModelNum value:+[NSString stringWithString:](NSString options:{"stringWithString:"), 1}];
          }

          sub_10004E4C4(v13);
        }

        else
        {
          sub_1001499EC();
        }
      }

      objc_autoreleasePoolPop(v10);
      v14 = *(v3 + 6);
      if (v14)
      {
        CFRelease(v14);
        *(v3 + 6) = 0;
      }

      v15 = *(v3 + 5);
      if (v15)
      {
        CFRelease(v15);
      }

      free(v3);
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null afMetricCopy", "WiFiMetricsManagerSubmitActionFrameEvent"}];
      }
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null afMetric", "WiFiMetricsManagerSubmitActionFrameEvent"}];
    }
  }

  objc_autoreleasePoolPop(v9);
}

void sub_1000550C4(unsigned __int8 a1)
{
  v2 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
  if (v2)
  {
    v3 = v2;
    *v2 = a1;
    v4 = objc_autoreleasePoolPush();
    v5 = objc_autoreleasePoolPush();
    if (objc_opt_class())
    {
      v6 = [WAMessage alloc];
      v7 = [v6 initWithMetricName:kWAMessageMetricNameTxInhibit options:1];
      if (v7)
      {
        v8 = v7;
        [v7 addFieldForKey:kWAMessageKeyTxInhibitState value:+[NSNumber numberWithBool:](NSNumber options:{"numberWithBool:", *v3), 1}];
        sub_10004E4C4(v8);
      }

      else
      {
        sub_100149A58();
      }
    }

    objc_autoreleasePoolPop(v5);
    objc_autoreleasePoolPop(v4);

    free(v3);
  }
}

BOOL sub_1000551DC()
{
  *v8 = 0x1500000001;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 16;
  if (!qword_1002984F8)
  {
    sub_100149B24();
    return 0;
  }

  if (sysctl(v8, 2u, &v6, &v5, 0, 0) == -1)
  {
    sub_100149AC4();
    return 0;
  }

  v0 = v7 / 1000000.0 + v6 - kCFAbsoluteTimeIntervalSince1970;
  v1 = *(qword_1002984F8 + 24) - v0;
  v2 = v1 < 30.0;
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: managerBootTime %fsecs, managerInitTime: %f, bootTimestamp: %f, firstBoot %d", "WiFiMetricsManagerIsFirstBoot", *&v1, *(qword_1002984F8 + 24), *&v0, v1 < 30.0, v5}];
  }

  objc_autoreleasePoolPop(v3);
  return v2;
}

void sub_100055348(uint64_t a1, const __CFDictionary *a2, unsigned int a3, int a4)
{
  valuePtr = a3;
  if (a1)
  {
    if (qword_1002984F8)
    {
      if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
      {
        sub_100149CD4();
      }

      else if (*(qword_1002984F8 + 32))
      {
        if (a2)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v7 = MutableCopy;
        if (MutableCopy)
        {
          v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
          if (v8)
          {
            v9 = v8;
            CFDictionaryAddValue(v7, @"symptom", v8);
            v10 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Sending DPSNotification with symptom=%d!!", "WiFiMetricsManagerTriggerDPSNotification", valuePtr}];
            }

            objc_autoreleasePoolPop(v10);
            if (a4)
            {
              v11 = kCFBooleanTrue;
            }

            else
            {
              v11 = kCFBooleanFalse;
            }

            CFDictionaryAddValue(v7, @"facetimeCallInProgress", v11);
            v12 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v13 = "false";
              if (v11 == kCFBooleanTrue)
              {
                v13 = "true";
              }

              [off_100298C40 WFLog:3 message:{"%s: Sending DPSNotification with facetimeStatus: %s!!", "WiFiMetricsManagerTriggerDPSNotification", v13}];
            }

            objc_autoreleasePoolPop(v12);
            v14 = objc_autoreleasePoolPush();
            v19 = 0;
            v20 = &v19;
            v21 = 0x2020000000;
            v22 = CFRetain(v7);
            v15 = +[WiFiManagerAnalytics sharedInstance];
            v16 = v20[3];
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_100055620;
            v18[3] = &unk_10025F160;
            v18[4] = &v19;
            [(WiFiManagerAnalytics *)v15 prepareMessageForSubmission:11075584 withData:v16 andReply:v18];
            _Block_object_dispose(&v19, 8);
            objc_autoreleasePoolPop(v14);
            v17 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Done DPSNotification !!", "WiFiMetricsManagerTriggerDPSNotification"}];
            }

            objc_autoreleasePoolPop(v17);
            CFRelease(v7);
            CFRelease(v9);
            if (v11)
            {
              CFRelease(v11);
            }
          }

          else
          {
            sub_100149B90(v7);
          }
        }

        else
        {
          sub_100149BFC();
        }
      }

      else
      {
        sub_100149C68();
      }
    }

    else
    {
      sub_100149D40();
    }
  }

  else
  {
    sub_100149DAC();
  }
}

void sub_100055608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:  DPSNotification !!", "WiFiMetricsManagerTriggerDPSNotification_block_invoke"}];
  }

  objc_autoreleasePoolPop(v6);
  if (!a2 || a3)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Error back preparing DPSNotification for submission: %@, or null WAMessageAWD", "WiFiMetricsManagerTriggerDPSNotification_block_invoke", a3}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [+[WiFiManagerAnalytics sharedInstance](WiFiManagerAnalytics triggerDatapathDiagnosticsNoReply:"triggerDatapathDiagnosticsNoReply:", a2];
  }

  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_100055710(uint64_t a1, const __CFDictionary *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Sending SlowWiFi Notification !!", "WiFiMetricsManagerTriggerSlowWiFiNotification"}];
  }

  objc_autoreleasePoolPop(v4);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!a1)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiMetricsManagerTriggerSlowWiFiNotification"}];
    }

    goto LABEL_33;
  }

  if (!qword_1002984F8)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null metrics", "WiFiMetricsManagerTriggerSlowWiFiNotification"}];
    }

    goto LABEL_33;
  }

  if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerTriggerSlowWiFiNotification"}];
    }

    goto LABEL_33;
  }

  if (!*(qword_1002984F8 + 32))
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null deviceMetricsArray !!", "WiFiMetricsManagerTriggerSlowWiFiNotification"}];
    }

    goto LABEL_33;
  }

  if (([WiFiUsagePrivacyFilter canPerformActionWithSampleRate:3]& 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: skipping this metric submission", "WiFiMetricsManagerTriggerSlowWiFiNotification"}];
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no dict", "WiFiMetricsManagerTriggerSlowWiFiNotification"}];
    }

LABEL_33:
    objc_autoreleasePoolPop(v13);
    goto LABEL_20;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
  v16[3] = MutableCopy;
  if (sub_100065510(a1))
  {
    v6 = kCFBooleanTrue;
  }

  else
  {
    v6 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v16[3], @"facetimeCallInProgress", v6);
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v8 = "false";
    if (v6 == kCFBooleanTrue)
    {
      v8 = "true";
    }

    [off_100298C40 WFLog:3 message:{"%s: Sending SlowWiFiNotification with facetimeStatus: %s!!", "WiFiMetricsManagerTriggerSlowWiFiNotification", v8}];
  }

  objc_autoreleasePoolPop(v7);
  v9 = objc_autoreleasePoolPush();
  v10 = +[WiFiManagerAnalytics sharedInstance];
  v11 = v16[3];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100055A5C;
  v14[3] = &unk_10025F160;
  v14[4] = &v15;
  [(WiFiManagerAnalytics *)v10 prepareMessageForSubmission:11075588 withData:v11 andReply:v14];
  objc_autoreleasePoolPop(v9);
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Done SlowWiFi Notification !!", "WiFiMetricsManagerTriggerSlowWiFiNotification"}];
  }

  objc_autoreleasePoolPop(v12);
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_20:
  _Block_object_dispose(&v15, 8);
}

void sub_100055A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:  SlowWiFi Notification !!", "WiFiMetricsManagerTriggerSlowWiFiNotification_block_invoke"}];
  }

  objc_autoreleasePoolPop(v6);
  if (!a2 || a3)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Error back preparing SlowWiFi Notification for submission: %@, or null WAMessageAWD", "WiFiMetricsManagerTriggerSlowWiFiNotification_block_invoke", a3}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [+[WiFiManagerAnalytics sharedInstance](WiFiManagerAnalytics triggerDatapathDiagnosticsNoReply:"triggerDatapathDiagnosticsNoReply:", a2];
  }

  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_100055B4C(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (objc_opt_class() && qword_1002984F8)
  {
    if (*(qword_1002984F8 + 16))
    {
      if (!a1)
      {
        sub_100149EF0();
        goto LABEL_8;
      }

      if (a2)
      {
        v5 = sub_10000A540(a2, @"BSSID");
        if (v5)
        {
          v6 = v5;
          a1 = objc_opt_new();
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"BEACON_INT", @"beaconInt"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"AP_MODE", @"apMode"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"PHY_MODE", @"phyMode"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"CAPABILITIES", @"capabilities"}];
          [a1 setObject:objc_msgSend(sub_10000A540(a2 forKeyedSubscript:{@"RATES", "componentsJoinedByString:", @":", @"rates"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"WPA_IE", @"wpaIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"RSN_IE", @"rnsIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"WAPI", @"wapiPolicy"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"WEP", @"wep"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"SCAN_RESULT_FROM_PROBE_RSP", @"scanResultFromProbeRSP"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"APPLE_IE", @"appleIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"IOS_IE", @"iosIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"APPLE_DEVICE_IE", @"deviceIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"APPLE_SWAP_IE", @"swapIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"80211D_IE", @"dot11DIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"SES_IE", @"SESIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"HT_CAPS_IE", @"htCapsIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"HT_IE", @"htIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"VHT_CAPS_IE", @"vhtCapsIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"VHT_IE", @"vhtIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"11U_INTERWORKING_IE", @"dot11uInternetworkingIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"HOTSPOT20_IE", @"hotspotIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"QBSS_LOAD_IE", @"qBSSLoadIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"MOBILITY_DOMAIN_IE", @"mobilityDomainIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"EXT_CAPS", @"extendedCapabilityIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"FAST_ENTERPRISE_NETWORK", @"ftEnterpriseIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"HE_CAP", @"heCap"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"HE_OP", @"heOp"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"HE_MU_EDCA", @"heMuEdca"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"HE_QBSS_LOAD", @"heQBSSLoad"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"WPS_BEACON_IE", @"wpsBeaconIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"WPS_PROB_RESP_IE", @"wpsProbRespIE"}];
          [a1 setObject:sub_10000A540(a2 forKeyedSubscript:{@"CHANNEL_WIDTH", @"channelWidth"}];
          [+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient](WADeviceAnalyticsClient "sharedDeviceAnalyticsClient")];
          goto LABEL_8;
        }

        sub_100149E18();
      }

      else
      {
        sub_100149E84();
      }
    }

    else
    {
      sub_100149F5C();
    }
  }

  else
  {
    sub_100149FC8();
  }

  a1 = 0;
LABEL_8:

  objc_autoreleasePoolPop(v4);
}

void sub_1000560EC(_OWORD *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (!a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null stats", "WiFiMetricsManagerSubmitDpsProbeStats"}];
    }

    goto LABEL_5;
  }

  if (qword_1002984F8)
  {
    if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerSubmitDpsProbeStats"}];
      }
    }

    else
    {
      v2 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      v9[3] = v2;
      v3 = a1[1];
      *v2 = *a1;
      v2[1] = v3;
      v4 = objc_autoreleasePoolPush();
      v5 = +[WiFiManagerAnalytics sharedInstance];
      v6 = v9[3];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100056288;
      v7[3] = &unk_10025F160;
      v7[4] = &v8;
      [(WiFiManagerAnalytics *)v5 prepareMessageForSubmission:11075585 withData:v6 andReply:v7];
    }

LABEL_5:
    objc_autoreleasePoolPop(v4);
  }

  _Block_object_dispose(&v8, 8);
}

void sub_100056270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100056288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Error back preparing DPSActiveProbeStats for submission: %@, or null WAMessage", "WiFiMetricsManagerSubmitDpsProbeStats_block_invoke", a3}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    [+[WiFiManagerAnalytics sharedInstance](WiFiManagerAnalytics triggerDatapathDiagnosticsNoReply:"triggerDatapathDiagnosticsNoReply:", a2];
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24);
  if (v7)
  {
    free(v7);
    v6 = *(*(a1 + 32) + 8);
  }

  *(v6 + 24) = 0;
}

void sub_10005633C(_OWORD *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (!a1)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null stats", "WiFiMetricsManagerSubmitDpsLinkStateChangeEvent"}];
    }

    goto LABEL_5;
  }

  if (qword_1002984F8)
  {
    if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerSubmitDpsLinkStateChangeEvent"}];
      }
    }

    else
    {
      v2 = malloc_type_malloc(0x10uLL, 0x1000040A517B1A3uLL);
      v8[3] = v2;
      *v2 = *a1;
      v3 = objc_autoreleasePoolPush();
      v4 = +[WiFiManagerAnalytics sharedInstance];
      v5 = v8[3];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000564D8;
      v6[3] = &unk_10025F160;
      v6[4] = &v7;
      [(WiFiManagerAnalytics *)v4 prepareMessageForSubmission:11075586 withData:v5 andReply:v6];
    }

LABEL_5:
    objc_autoreleasePoolPop(v3);
  }

  _Block_object_dispose(&v7, 8);
}

void sub_1000564C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000564D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Error back preparing DPSLinkStateChangeEvent for submission: %@, or null WAMessage", "WiFiMetricsManagerSubmitDpsLinkStateChangeEvent_block_invoke", a3}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    [+[WiFiManagerAnalytics sharedInstance](WiFiManagerAnalytics triggerDatapathDiagnosticsNoReply:"triggerDatapathDiagnosticsNoReply:", a2];
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24);
  if (v7)
  {
    free(v7);
    v6 = *(*(a1 + 32) + 8);
  }

  *(v6 + 24) = 0;
}

void sub_10005658C(const __CFDictionary *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (!a1)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null info", "WiFiMetricsManagerSubmitDpsAccessPointInfo"}];
    }

    goto LABEL_5;
  }

  if (qword_1002984F8)
  {
    if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerSubmitDpsAccessPointInfo"}];
      }
    }

    else
    {
      Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, a1);
      v8[3] = Copy;
      v3 = objc_autoreleasePoolPush();
      v4 = +[WiFiManagerAnalytics sharedInstance];
      v5 = v8[3];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10005671C;
      v6[3] = &unk_10025F160;
      v6[4] = &v7;
      [(WiFiManagerAnalytics *)v4 prepareMessageForSubmission:11075587 withData:v5 andReply:v6];
    }

LABEL_5:
    objc_autoreleasePoolPop(v3);
  }

  _Block_object_dispose(&v7, 8);
}

void sub_100056704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005671C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Error back preparing DpsAccessPointInfo for submission: %@, or null WAMessage", "WiFiMetricsManagerSubmitDpsAccessPointInfo_block_invoke", a3}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    [+[WiFiManagerAnalytics sharedInstance](WiFiManagerAnalytics triggerDatapathDiagnosticsNoReply:"triggerDatapathDiagnosticsNoReply:", a2];
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

id sub_1000567D0(uint64_t a1)
{
  result = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  if (result != 1)
  {
    return ([+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")] == 3);
  }

  return result;
}

void sub_100056824(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [WAMessage alloc];
  v4 = [v3 initWithMetricName:kWAMessageMetricNameCarPlayLinkQualityMetrics options:1];
  if (v4)
  {
    v5 = v4;
    [v4 addFieldForKey:@"txRateMax" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 36)), 1}];
    [v5 addFieldForKey:@"txRateMin" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 32)), 1}];
    [v5 addFieldForKey:@"txRateAvg" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 40)), 1}];
    [v5 addFieldForKey:@"txRateLast" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 44)), 1}];
    [v5 addFieldForKey:@"rxRateMax" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 52)), 1}];
    [v5 addFieldForKey:@"rxRateMin" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 48)), 1}];
    [v5 addFieldForKey:@"rxRateAvg" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 56)), 1}];
    [v5 addFieldForKey:@"rxRateLast" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 60)), 1}];
    [v5 addFieldForKey:@"ccaMax" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 100)), 1}];
    [v5 addFieldForKey:@"ccaMin" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 96)), 1}];
    [v5 addFieldForKey:@"ccaAvg" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 104)), 1}];
    [v5 addFieldForKey:@"ccaLast" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 108)), 1}];
    [v5 addFieldForKey:@"snrMax" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 68)), 1}];
    [v5 addFieldForKey:@"snrMin" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 64)), 1}];
    [v5 addFieldForKey:@"snrAvg" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 72)), 1}];
    [v5 addFieldForKey:@"snrLast" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 76)), 1}];
    [v5 addFieldForKey:@"rssiMax" value:+[NSNumber numberWithInt:](NSNumber options:{"numberWithInt:", *(a1 + 84)), 1}];
    [v5 addFieldForKey:@"rssiMin" value:+[NSNumber numberWithInt:](NSNumber options:{"numberWithInt:", *(a1 + 80)), 1}];
    [v5 addFieldForKey:@"rssiAvg" value:+[NSNumber numberWithInt:](NSNumber options:{"numberWithInt:", *(a1 + 88)), 1}];
    [v5 addFieldForKey:@"rssiLast" value:+[NSNumber numberWithInt:](NSNumber options:{"numberWithInt:", *(a1 + 92)), 1}];
    [v5 addFieldForKey:@"linkDuration" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 24)), 1}];
    [v5 addFieldForKey:@"roamedCount" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 28)), 1}];
    [v5 addFieldForKey:@"channel" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 112)), 1}];
    [v5 addFieldForKey:@"bandWidth" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 114)), 1}];
    [v5 addFieldForKey:@"numberOfTxErrorEvents" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 116)), 1}];
    [v5 addFieldForKey:@"lqmInterval" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 120)), 1}];
    [v5 addFieldForKey:@"linkDownSubReason" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 136)), 1}];
    [v5 addFieldForKey:@"linkDownReason" value:+[NSString stringWithString:](NSString options:{"stringWithString:", *(a1 + 128)), 1}];
    [v5 addFieldForKey:@"phyMode" value:+[NSString stringWithString:](NSString options:{"stringWithString:", *(a1 + 144)), 1}];
    [v5 addFieldForKey:@"vehicleModelName" value:+[NSString stringWithString:](NSString options:{"stringWithString:", *a1), 1}];
    [v5 addFieldForKey:@"vehicleManufacturer" value:+[NSString stringWithString:](NSString options:{"stringWithString:", *(a1 + 8)), 1}];
    [v5 addFieldForKey:@"hardwareVersion" value:+[NSString stringWithString:](NSString options:{"stringWithString:", *(a1 + 16)), 1}];
    [v5 addFieldForKey:@"isLpcValid" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 152)), 1}];
    [v5 addFieldForKey:@"lpcMinOffset" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 160)), 1}];
    [v5 addFieldForKey:@"lpcTxOffset0" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 168)), 1}];
    [v5 addFieldForKey:@"lpcTxOffset1" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 172)), 1}];
    [v5 addFieldForKey:@"lpcTxOffset2" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 176)), 1}];
    [v5 addFieldForKey:@"lpcTxOffset3" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 180)), 1}];
    [v5 addFieldForKey:@"estimatedPowerReduction" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 192)), 1}];
    sub_10004E4C4(v5);
    CFRelease(v5);
  }

  else
  {
    sub_10014A034();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100056E3C(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [WAMessage alloc];
  v4 = [v3 initWithMetricName:kWAMessageMetricNameCarPlayLinkDownSuppressionMetrics options:1];
  if (v4)
  {
    v5 = v4;
    [v4 addFieldForKey:@"linkDownDuration" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *a1), 1}];
    [v5 addFieldForKey:@"linkDownSubReason" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", a1[4]), 1}];
    [v5 addFieldForKey:@"timedOut" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 20)), 1}];
    [v5 addFieldForKey:@"linkDebounceSucceeded" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 21)), 1}];
    [v5 addFieldForKey:@"SessionDownSuppressionSucceeded" value:+[NSNumber numberWithUnsignedInt:](NSNumber options:{"numberWithUnsignedInt:", *(a1 + 22)), 1}];
    [v5 addFieldForKey:@"linkDownReason" value:+[NSString stringWithString:](NSString options:{"stringWithString:", *(a1 + 1)), 1}];
    [v5 addFieldForKey:@"vehicleModelName" value:+[NSString stringWithString:](NSString options:{"stringWithString:", *(a1 + 3)), 1}];
    [v5 addFieldForKey:@"vehicleManufacturer" value:+[NSString stringWithString:](NSString options:{"stringWithString:", *(a1 + 4)), 1}];
    [v5 addFieldForKey:@"hardwareVersion" value:+[NSString stringWithString:](NSString options:{"stringWithString:", *(a1 + 5)), 1}];
    sub_10004E4C4(v5);
    CFRelease(v5);
  }

  else
  {
    sub_10014A0A0();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10005700C(uint64_t a1, void *a2, void *a3)
{
  context = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a2)
    {
      if (qword_1002984F8 && objc_opt_class())
      {
        v31 = a1;
        v6 = sub_10000A540(a1, @"BSSID");
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = a2;
        v7 = [a2 countByEnumeratingWithState:&v44 objects:v59 count:{16, context}];
        if (v7)
        {
          v8 = *v45;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v45 != v8)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v44 + 1) + 8 * i);
              v11 = sub_10000A878(v10);
              v12 = sub_10000A540(v10, @"BSSID");
              v13 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                v49 = "void WiFiMetricsManagerUpdateBeaconCacheResults(WiFiNetworkRef, CFArrayRef, CFArrayRef)";
                v50 = 1024;
                v51 = 5456;
                v52 = 2112;
                v53 = v12;
                v54 = 2112;
                v55 = v11;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:scan result: %@ [%@]", buf, 0x26u);
              }

              if (a3 && ([a3 containsObject:v11] & 1) == 0)
              {
                v18 = WALogCategoryDeviceStoreHandle();
                if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  continue;
                }

                *buf = 136446978;
                v49 = "void WiFiMetricsManagerUpdateBeaconCacheResults(WiFiNetworkRef, CFArrayRef, CFArrayRef)";
                v50 = 1024;
                v51 = 5459;
                v52 = 2112;
                v53 = v11;
                v54 = 2112;
                v55 = a3;
                v15 = v18;
                v16 = "%{public}s::%d:ssid:%@ is not in filtered list (%@) - skipping";
                v17 = 38;
              }

              else
              {
                if (!v6 || ![v6 isEqualToString:v12])
                {
                  [0 addObject:v10];
                  continue;
                }

                v14 = WALogCategoryDeviceStoreHandle();
                if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  continue;
                }

                *buf = 136446722;
                v49 = "void WiFiMetricsManagerUpdateBeaconCacheResults(WiFiNetworkRef, CFArrayRef, CFArrayRef)";
                v50 = 1024;
                v51 = 5464;
                v52 = 2112;
                v53 = v12;
                v15 = v14;
                v16 = "%{public}s::%d:bssid:%@ is current BSSID - skipping";
                v17 = 28;
              }

              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, v16, buf, v17);
            }

            v7 = [obj countByEnumeratingWithState:&v44 objects:v59 count:16];
          }

          while (v7);
        }

        if ([0 count])
        {
          v33 = sub_10009E59C(v31, @"RSSI");
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v19 = [0 countByEnumeratingWithState:&v40 objects:v58 count:16];
          if (v19)
          {
            v20 = *v41;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v41 != v20)
                {
                  objc_enumerationMutation(0);
                }

                v22 = *(*(&v40 + 1) + 8 * j);
                v36 = 0;
                v37 = &v36;
                v38 = 0x2020000000;
                v39 = v22;
                v23 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  v24 = sub_10000A540(v37[3], @"BSSID");
                  v25 = sub_10000A878(v37[3]);
                  *buf = 136447234;
                  v49 = "void WiFiMetricsManagerUpdateBeaconCacheResults(WiFiNetworkRef, CFArrayRef, CFArrayRef)";
                  v50 = 1024;
                  v51 = 5479;
                  v52 = 2112;
                  v53 = v24;
                  v54 = 2112;
                  v55 = v25;
                  v56 = 2112;
                  v57 = v6;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}s::%d:scanResultEventWith:%@ ssid:%@ whileOn::%@", buf, 0x30u);
                }

                v26 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
                v27 = sub_10000A540(v37[3], @"BSSID");
                v28 = sub_10000A878(v37[3]);
                v29 = +[NSDate date];
                v34[0] = _NSConcreteStackBlock;
                v34[1] = 3221225472;
                v34[2] = sub_100057574;
                v34[3] = &unk_10025F188;
                v34[4] = &v36;
                v35 = v33;
                [v26 scanResultEventWith:v27 ssid:v28 whileOn:v6 at:v29 with:v34];
                _Block_object_dispose(&v36, 8);
              }

              v19 = [0 countByEnumeratingWithState:&v40 objects:v58 count:16];
            }

            while (v19);
          }
        }

        else
        {
          sub_10014A10C();
        }
      }
    }

    else
    {
      sub_10014A16C();
    }
  }

  else
  {
    sub_10014A1D8();
  }

  objc_autoreleasePoolPop(context);
}

void sub_10005754C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100057574(uint64_t a1, void *a2)
{
  [a2 setBand:{+[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", objc_msgSend(sub_1000A028C(*(*(*(a1 + 32) + 8) + 24)), "intValue"))}];
  [a2 setChannel:{sub_10009E59C(*(*(*(a1 + 32) + 8) + 24), @"CHANNEL"}];
  [a2 setOriginRssi:*(a1 + 40)];
  v4 = sub_10009E59C(*(*(*(a1 + 32) + 8) + 24), @"RSSI");

  return [a2 setResultRssi:v4];
}

void sub_100057634(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1 && a2)
  {
    v5 = [[WAMessage alloc] initWithMetricName:a1 options:1];
    if (v5)
    {
      v6 = v5;
      [v5 addFieldsFromDictionary:a2 options:1];
      sub_10004E4C4(v6);
    }

    else
    {
      sub_10014A244(a1);
    }
  }

  else
  {
    sub_10014A2B4(a1, a2);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1000576D8()
{
  result = _CFRuntimeRegisterClass();
  qword_100298500 = result;
  return result;
}

void sub_100057700()
{
  v0 = qword_1002984F8;
  if (qword_1002984F8)
  {
    v1 = *(qword_1002984F8 + 32);
    if (v1)
    {
      if (CFArrayGetCount(v1) >= 1)
      {
        v2 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(qword_1002984F8 + 32), v2);
          v4 = ValueAtIndex[88];
          if (v4)
          {
            CFRelease(v4);
            ValueAtIndex[88] = 0;
          }

          v5 = ValueAtIndex[89];
          if (v5)
          {
            CFRelease(v5);
            ValueAtIndex[89] = 0;
          }

          if (*ValueAtIndex)
          {
            CFRelease(*ValueAtIndex);
            *ValueAtIndex = 0;
          }

          v6 = ValueAtIndex[30];
          if (v6)
          {
            free(v6);
            ValueAtIndex[30] = 0;
          }

          v7 = ValueAtIndex[32];
          if (v7)
          {
            free(v7);
            ValueAtIndex[32] = 0;
          }

          v8 = ValueAtIndex[39];
          if (v8)
          {
            free(v8);
            ValueAtIndex[39] = 0;
          }

          v9 = ValueAtIndex[41];
          if (v9)
          {
            free(v9);
            ValueAtIndex[41] = 0;
          }

          v10 = ValueAtIndex[43];
          if (v10)
          {
            free(v10);
            ValueAtIndex[43] = 0;
          }

          v11 = ValueAtIndex[47];
          if (v11)
          {
            free(v11);
          }

          free(ValueAtIndex);
          ++v2;
        }

        while (v2 < CFArrayGetCount(*(qword_1002984F8 + 32)));
      }

      v0 = qword_1002984F8;
      v12 = *(qword_1002984F8 + 32);
      if (v12)
      {
        CFRelease(v12);
        v0 = qword_1002984F8;
        *(qword_1002984F8 + 32) = 0;
      }
    }

    v13 = *(v0 + 56);
    if (v13)
    {
      CFRelease(v13);
      v0 = qword_1002984F8;
      *(qword_1002984F8 + 56) = 0;
    }

    v14 = *(v0 + 48);
    if (v14)
    {
      CFRelease(v14);
      *(qword_1002984F8 + 48) = 0;
    }
  }
}

void sub_100057848(uint64_t a1, void *a2)
{
  v6 = -21846;
  v5 = 0;
  v4 = sub_10008708C(*(qword_1002984F8 + 16), &v6, &v5);
  if (a2)
  {
    if (!v4)
    {
      [a2 setMotionState:v6];
    }

    [a2 setSuccess:0];
    [a2 setReason:**(a1 + 32)];
    [a2 setSubReason:*(*(a1 + 32) + 4)];
    [a2 setChannel:*(*(a1 + 32) + 11)];
    [a2 setBand:{+[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", *(*(a1 + 32) + 13))}];
    [a2 setRssi:*(*(a1 + 32) + 17)];
  }

  else
  {
    sub_10014A308();
  }
}

void sub_100057920(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (!*(a1 + 56))
    {
      [a2 setMotionState:*(a1 + 60)];
    }

    [a2 setSuccess:1];
    [a2 setReason:*(*(a1 + 40) + 4)];
    [a2 setSubReason:*(*(a1 + 40) + 8)];
    [a2 setNetworkAuthFlags:*(*(a1 + 40) + 44)];
    [a2 setApProfileID:{+[WiFiUsageAccessPointProfile profileForBSSID:](WiFiUsageAccessPointProfile, "profileForBSSID:", *(a1 + 32))}];
    [a2 setChannel:*(*(a1 + 40) + 16)];
    [a2 setBand:{+[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", *(*(a1 + 40) + 20))}];
    [a2 setNetworkIsHome:sub_1000567D0(*(a1 + 48))];
    [a2 setNetworkIsWork:{objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager, "sharedXPCManager"), "networkOfInterestWorkStateForKnownNetworkRef:", *(a1 + 48)) == 1}];
    [a2 setRssi:*(*(a1 + 40) + 12)];
    v4 = *(*(a1 + 40) + 36);

    [a2 setNetworkFlags:v4];
  }

  else
  {
    sub_10014A39C();
  }
}

void sub_100057A68(uint64_t a1, void *a2)
{
  [a2 setIsInVoluntary:*(*(a1 + 32) + 1)];
  [a2 setReason:*(*(a1 + 32) + 4)];
  [a2 setSubReason:*(*(a1 + 32) + 8)];
  if (!*(a1 + 48))
  {
    [a2 setMotionState:*(a1 + 52)];
  }

  [a2 setAssocDuration:*(*(a1 + 32) + 104)];
  [a2 setRssi:*(*(a1 + 32) + 12)];
  v4 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  sub_100057CA0(*(a1 + 40), &v6);
  if (*(&v6 + 1))
  {
    [a2 setHistoryCca:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", v6)}];
    [a2 setHistoryRssi:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", *(&v6 + 1))}];
    [a2 setHistorySnr:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", *(&v7 + 1))}];
    [a2 setHistoryTxPer:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", v8)}];
    [a2 setHistoryTxFrames:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", *(&v8 + 1))}];
    [a2 setHistoryFwTxPer:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", v9)}];
    [a2 setHistoryFwTxFrames:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", *(&v9 + 1))}];
    [a2 setHistoryBcnSched:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", v10)}];
    [a2 setHistoryBcnPer:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", *(&v10 + 1))}];
  }

  else
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = "void __WiFiMetricsManagerUpdateDBWithJoinOrLeave(WiFiDeviceRef, WiFiNetworkRef, WiFiMetricsManagerLinkChangeData *)_block_invoke";
      v13 = 1024;
      v14 = 4330;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to fetch lqm histograms", buf, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100057CA0(void *a1, uint64_t a2)
{
  if (a1)
  {
    *a2 = +[NSMutableArray array];
    *(a2 + 8) = +[NSMutableArray array];
    *(a2 + 24) = +[NSMutableArray array];
    *(a2 + 32) = +[NSMutableArray array];
    *(a2 + 40) = +[NSMutableArray array];
    *(a2 + 48) = +[NSMutableArray array];
    *(a2 + 56) = +[NSMutableArray array];
    *(a2 + 64) = +[NSMutableArray array];
    *(a2 + 72) = +[NSMutableArray array];
    if (sub_10005F66C(a1, a2))
    {
      if (sub_10005F870(a1, a2))
      {
        return;
      }

      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: tx rx history preparation failed", "__WiFiMetricsManagerPrepareLqmHistoryArray"}];
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: cca history preparation failed", "__WiFiMetricsManagerPrepareLqmHistoryArray"}];
      }
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: device is NULL", "__WiFiMetricsManagerPrepareLqmHistoryArray"}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100057E24(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v6;
    if (a3)
    {
      v8 = +[NSMutableString string];
      v10 = *a3;
      v9 = a3 + 1;
      [v8 appendFormat:@"%02x", v10];
      for (i = 0; i != 2; ++i)
      {
        [v8 appendFormat:@":"];
        [v8 appendFormat:@"%02x", v9[i]];
      }

      [a1 addFieldForKey:a2 value:v8 options:1];
    }

    else
    {
      sub_10014A430(v6, &v12);
      v7 = v12;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: waMsg is NULL", "__WiFiMetricsManagerWAMessageAppendFieldInColonHexdecFormat"}];
    }
  }

  objc_autoreleasePoolPop(v7);
}

id sub_100057F5C(uint64_t a1)
{

  return [v1 addFieldForKey:v2 value:a1 options:1];
}

id sub_100057F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 addFieldForKey:a3 value:a4 options:1];
}

void sub_100057FA0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

uint64_t sub_100058060(uint64_t a1)
{
  qword_100298508 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000583AC(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  sub_100079F88(v2, v3, v4, v5, 1);
}

void sub_1000584D0(uint64_t a1)
{
  v1 = [*(a1 + 32) manager];

  sub_100079F88(v1, 0, 0, 0, 0);
}

void sub_1000585F0(uint64_t a1)
{
  v2 = [*(a1 + 32) dndStatus];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100058680;
  v3[3] = &unk_10025F388;
  v3[4] = *(a1 + 32);
  [v2 fetchAutomaticDNDAssertionWithReply:v3];
}

void sub_100058680(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(a1 + 32) setCarDNDActive:a2];
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: updated DND status: %i", "-[WiFiManagerCarSessionMonitor _updateDNDStatus]_block_invoke_2", a2}];
  }

  objc_autoreleasePoolPop(v5);
  v6 = +[WiFiUserInteractionMonitor sharedInstance];
  [v6 setCarModeActive:{objc_msgSend(*(a1 + 32), "isCarDNDActive")}];
}

uint64_t sub_1000587F4(SCPreferencesRef prefs, int a2)
{
  if (qword_100298518)
  {
    dispatch_assert_queue_V2(qword_100298518);
  }

  if (a2)
  {
    if (SCPreferencesCommitChanges(prefs))
    {
      if (SCPreferencesApplyChanges(prefs))
      {
        goto LABEL_15;
      }

      v4 = SCError();
      v5 = SCErrorString(v4);
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v7 = "SCError Unavailable";
        if (v5)
        {
          v7 = v5;
        }

        [off_100298C40 WFLog:4 message:{"SCPreferencesApplyChanges() %s", v7}];
      }
    }

    else
    {
      v8 = SCError();
      v9 = SCErrorString(v8);
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v10 = "SCError Unavailable";
        if (v9)
        {
          v10 = v9;
        }

        [off_100298C40 WFLog:4 message:{"SCPreferencesCommitChanges() %s", v10}];
      }
    }

    objc_autoreleasePoolPop(v6);
  }

LABEL_15:
  v11 = SCPreferencesUnlock(prefs);
  if (!v11)
  {
    v12 = SCError();
    v13 = SCErrorString(v12);
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v15 = "SCError Unavailable";
      if (v13)
      {
        v15 = v13;
      }

      [off_100298C40 WFLog:4 message:{"SCPreferencesUnlock() %s", v15}];
    }

    objc_autoreleasePoolPop(v14);
  }

  return v11;
}

__CFArray *sub_10005896C(const __CFArray *a1, unsigned int (*a2)(void))
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        if (ValueAtIndex)
        {
          v9 = ValueAtIndex;
          if (a2())
          {
            CFArrayAppendValue(Mutable, v9);
          }
        }
      }
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

float sub_100058A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (a1 - a2) / (a3 - a2);
  if (result > 1.0)
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

void sub_100058A88(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

const char *sub_100058B44(unint64_t a1)
{
  if (a1 > 4)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_10025F3A8[a1];
  }
}

double sub_100058B68()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v1.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v1, 0);
  return v1.tv_usec + v1.tv_sec * 1000000.0;
}

uint64_t sub_100058BB4(unsigned __int16 *a1)
{
  v1 = 0;
  v4[0] = xmmword_1001CE220;
  v4[1] = xmmword_1001CE230;
  v5 = -13;
  while (*(v4 + v1) != *a1 || *(v4 + v1 + 2) != *(a1 + 2))
  {
    v1 += 3;
    if (v1 == 33)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_100058C58(void *a1, unint64_t a2, unint64_t a3)
{
  if (is_mul_ok(a2, a3))
  {
    v5 = a2 * a3;

    return malloc_type_realloc(a1, v5, 0xB5A6ADBEuLL);
  }

  else
  {
    *__error() = 12;
    return 0;
  }
}

const __CFString *sub_100058CA4(int a1)
{
  if (a1 <= 8)
  {
    if (a1 > 4)
    {
      if (a1 > 6)
      {
        if (a1 == 7)
        {
          return @"Colocated scope transition";
        }

        else
        {
          return @"Disassociate";
        }
      }

      else if (a1 == 5)
      {
        return @"Powered Off";
      }

      else
      {
        return @"Join Failure";
      }
    }

    else if (a1 > 2)
    {
      if (a1 == 3)
      {
        return @"Internal Error";
      }

      else
      {
        return @"System Sleep";
      }
    }

    else if (a1 == 1)
    {
      return @"Deauth";
    }

    else if (a1 == 2)
    {
      return @"Beacon Lost";
    }

    else
    {
LABEL_23:
      if (a1 > 0x3E7)
      {
        return @"Unknown";
      }

      else
      {
        v3 = convertLinkChangeReasonToString();

        return [NSString stringWithCString:v3 encoding:4];
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 1000:
        return @"Trigger Disconnect";
      case 1001:
        return @"Client Disconnect";
      case 1002:
        return @"Temporarily Disabled";
      case 1003:
        return @"Network Changed";
      case 1004:
        return @"Decryption Failure";
      case 1005:
        return @"Not Primary Interface";
      case 1006:
        return @"CLTM";
      case 1007:
        return @"Internet Sharing";
      case 1008:
        return @"User Preference";
      case 1009:
        return @"Misc.";
      case 1010:
        return @"EAP Restart";
      case 1011:
        return @"Control Center/3rd Party Client";
      case 1012:
        return @"802.1X Failure";
      case 1013:
        return @"Network Transition";
      case 1014:
        return @"Auto Unlock";
      case 1015:
        return @"Captive";
      case 1016:
        return @"Banner Association";
      case 1017:
        return @"BSS Steering";
      case 1018:
        return @"Auto Hotspot Association";
      case 1019:
        return @"Auto Hotspot Transition";
      case 1020:
        return @"Perf Roam";
      case 1021:
        return @"CarPlay Disabled";
      case 1022:
        return @"Battery Save Mode Enabled";
      case 1023:
        return @"AirPlay Started";
      case 1024:
        return @"Prefer 6E Off";
      case 1025:
        return @"Prefer 6E On";
      case 1026:
      case 1027:
      case 1028:
      case 1029:
      case 1030:
      case 1031:
      case 1032:
      case 1033:
        goto LABEL_23;
      case 1034:
        return @"Personal Hotspot Connection Inactive";
      case 1035:
        return @"Sharing Silent Repair";
      default:
        if (a1 == 9)
        {
          result = @"Invalid SSID";
        }

        else
        {
          if (a1 != 10)
          {
            goto LABEL_23;
          }

          result = @"Invalid AKMS (EAPOL Key timeout?)";
        }

        break;
    }
  }

  return result;
}

const __CFString *sub_100058F60(unsigned int a1)
{
  if (a1 < 9 && ((0x117u >> a1) & 1) != 0)
  {
    return off_10025F3D0[a1];
  }

  v2 = @"Unknown";
  if ((~a1 & 3) == 0)
  {
    v2 = @"STA + AWDL";
  }

  if ((~a1 & 5) == 0)
  {
    v2 = @"STA + SoftAP";
  }

  if ((~a1 & 6) == 0)
  {
    v2 = @"AWDL + SoftAP";
  }

  if ((~a1 & 7) == 0)
  {
    v2 = @"STA + AWDL + SoftAP";
  }

  if ((~a1 & 0xC) == 0)
  {
    v2 = @"SoftAp + NanPh";
  }

  if ((~a1 & 0xE) != 0)
  {
    return v2;
  }

  else
  {
    return @"AWDL + SoftAp + NanPh";
  }
}

const __CFString *sub_100059008(int a1, int a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return @"Unspecified";
      case 1:
        return @"Learning";
      case 2:
        return @"Single Band AP";
    }

    return @"Unknown";
  }

  if (a1 <= 4)
  {
    if (a1 == 3)
    {
      return @"Dual Band AP";
    }

    v2 = @"Multi AP";
    v3 = @"Multi AP Large";
    goto LABEL_12;
  }

  if (a1 == 5)
  {
    return @"Tri Band AP";
  }

  if (a1 != 6)
  {
    return @"Unknown";
  }

  v2 = @"Tri Band Multi AP";
  v3 = @"Tri Band Multi AP Large";
LABEL_12:
  if (a2 <= 9)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const __CFString *sub_1000590C4(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_10025F450[a1];
  }
}

const __CFString *sub_1000590E8(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_10025F470[a1 - 1];
  }
}

const __CFString *sub_100059110(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"Not Work";
  }

  if (a1 == 1)
  {
    return @"Work";
  }

  else
  {
    return v1;
  }
}

const __CFString *sub_10005913C(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_10025F488[a1];
  }
}

const __CFString *sub_100059160(int a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_10025F4A0[a1 - 1];
  }
}

const __CFString *sub_100059188(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_10025F4C8[a1];
  }
}

const __CFString *sub_1000591AC(int a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"Captive";
  }

  if (a1 == 1)
  {
    return @"Control Center";
  }

  else
  {
    return v1;
  }
}

const __CFString *sub_1000591D8(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return @"Unknown";
  }

  else
  {
    return off_10025F4E0[a1];
  }
}

const __CFString *sub_1000591FC(int a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"User";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"AutoJoin";
  }
}

uint64_t sub_100059260()
{
  result = _CFRuntimeRegisterClass();
  qword_100298520 = result;
  return result;
}

uint64_t sub_100059290(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, __int128 *a7)
{
  previous = -1431655766;
  name = 0;
  port_info_out = -1431655766;
  port_info_outCnt = 1;
  if (!a5)
  {
    v14 = 0;
LABEL_29:
    if (name)
    {
      mach_port_mod_refs(mach_task_self_, name, 1u, -1);
    }

    if (v14)
    {
      CFRelease(v14);
      return 0;
    }

    return v14;
  }

  if (!qword_100298520)
  {
    pthread_once(&stru_100297868, sub_100059260);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (!Instance)
  {
    sub_10014B9E8();
    goto LABEL_29;
  }

  *(Instance + 176) = 0;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 16) = a2;
  *(Instance + 96) = a6;
  mach_port_allocate(mach_task_self_, 1u, &name);
  if (mach_port_request_notification(mach_task_self_, name, 70, 1u, name, 0x15u, &previous))
  {
    sub_10014B86C();
    goto LABEL_29;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(v14 + 104) = Mutable;
  if (!Mutable)
  {
    sub_10014B99C();
    goto LABEL_29;
  }

  v16 = sub_100173D88(kCFAllocatorDefault, a5, name, 0);
  *(v14 + 88) = v16;
  if (!v16)
  {
    sub_10014B950();
    goto LABEL_29;
  }

  mach_port_insert_right(mach_task_self_, name, name, 0x14u);
  v17 = mach_task_self_;
  v18 = sub_10002ACC0(*(v14 + 88));
  if (mach_port_get_attributes(v17, v18, 1, &port_info_out, &port_info_outCnt))
  {
    sub_10014B8B8();
    goto LABEL_29;
  }

  port_info_out = 64;
  v19 = mach_task_self_;
  v20 = sub_10002ACC0(*(v14 + 88));
  if (mach_port_set_attributes(v19, v20, 1, &port_info_out, port_info_outCnt))
  {
    sub_10014B904();
    goto LABEL_29;
  }

  sub_100099C98(*(v14 + 88), sub_100059620, v14);
  *(v14 + 80) = a3;
  *(v14 + 56) = a4;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  buffer[0] = v21;
  buffer[1] = v21;
  if (proc_name(a4, buffer, 0x20u) < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = CFStringCreateWithCString(kCFAllocatorDefault, buffer, 0x8000100u);
  }

  *(v14 + 64) = v22;
  v23 = CFUUIDCreate(kCFAllocatorDefault);
  *(v14 + 72) = v23;
  if (!v23)
  {
    goto LABEL_29;
  }

  v24 = CFUUIDCreateString(kCFAllocatorDefault, v23);
  v25 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Creating client for %@ (%@)", v22, v24}];
  }

  objc_autoreleasePoolPop(v25);
  if (v24)
  {
    CFRelease(v24);
  }

  v26 = *a7;
  *(v14 + 36) = a7[1];
  *(v14 + 20) = v26;
  v27 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(v14 + 120) = v27;
  if (!v27)
  {
    goto LABEL_29;
  }

  v28 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v14 + 160) = v28;
  if (!v28)
  {
    goto LABEL_29;
  }

  v29 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v14 + 168) = v29;
  if (!v29)
  {
    goto LABEL_29;
  }

  return v14;
}

void sub_100059670(uint64_t a1, const __CFArray *a2)
{
  if (CFArrayGetCount(*(a1 + 160)))
  {
    CFArrayRemoveAllValues(*(a1 + 160));
  }

  if (a2 && CFArrayGetCount(a2))
  {
    v4 = *(a1 + 160);
    v5.length = CFArrayGetCount(a2);
    v5.location = 0;

    CFArrayAppendArray(v4, a2, v5);
  }
}

void sub_1000596F0(uint64_t a1, const __CFArray *a2)
{
  if (CFArrayGetCount(*(a1 + 168)))
  {
    CFArrayRemoveAllValues(*(a1 + 168));
  }

  if (a2 && CFArrayGetCount(a2))
  {
    v4 = *(a1 + 168);
    v5.length = CFArrayGetCount(a2);
    v5.location = 0;

    CFArrayAppendArray(v4, a2, v5);
  }
}

uint64_t sub_100059770(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 128) & 0x20) == 0)
  {
    return 4294963393;
  }

  if (!a2)
  {
    sub_10014BAAC();
    return 4294963396;
  }

  if (!sub_1000A5018(a2))
  {
    sub_10014BA40();
    return 4294963396;
  }

  v5 = sub_1000A5018(a2);
  v6 = sub_100010908(v5);
  v7 = sub_100009664(v6);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v8 = sub_10000EDD8(kCFAllocatorDefault, v7);
  v9 = v8;
  if (!v8)
  {
LABEL_9:
    Length = 0;
    BytePtr = 0;
    goto LABEL_10;
  }

  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v9);
LABEL_10:
  v10 = sub_10009A8E0(a2);
  if (v10 && (v11 = sub_100017C00(v10)) != 0)
  {
    v12 = v11;
    v13 = sub_10000EDD8(kCFAllocatorDefault, v11);
    v14 = v13;
    if (v13)
    {
      v15 = CFDataGetBytePtr(v13);
      v16 = CFDataGetLength(v14);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    CFRelease(v12);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v17 = sub_100009664(a2);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_21;
  }

  v18 = sub_10000EDD8(kCFAllocatorDefault, v17);
  v19 = v18;
  if (!v18)
  {
LABEL_21:
    v20 = 0;
    v21 = 0;
    goto LABEL_22;
  }

  v20 = CFDataGetBytePtr(v18);
  v21 = CFDataGetLength(v19);
LABEL_22:
  v22 = *(a1 + 96);
  v23 = sub_1000A5010(a2);
  v24 = sub_1000A4FF8(a2);
  sub_10012DFC8(v22, BytePtr, Length, v23, v24, v15, v16, v20, v21, 0);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

void sub_100059968(uint64_t a1, const void *a2, const __CFData *a3, const __CFData *value, const __CFData *a5, int a6)
{
  v8 = value;
  v11 = *(a1 + 104);
  if (value && a6 == -369033213)
  {
    CFDictionarySetValue(v11, a2, value);
  }

  else
  {
    CFDictionaryRemoveValue(v11, a2);
  }

  if (a3 && (v12 = sub_10000EDD8(kCFAllocatorDefault, a3), (a3 = v12) != 0))
  {
    BytePtr = CFDataGetBytePtr(v12);
    Length = CFDataGetLength(a3);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    BytePtr = 0;
    Length = 0;
    if (!v8)
    {
LABEL_14:
      v17 = 0;
      v18 = 0;
      if (!a5)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v14 = sub_100017C00(v8);
  if (!v14)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v15 = v14;
  v16 = sub_10000EDD8(kCFAllocatorDefault, v14);
  v8 = v16;
  if (v16)
  {
    v17 = CFDataGetBytePtr(v16);
    v18 = CFDataGetLength(v8);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  CFRelease(v15);
  if (!a5)
  {
    goto LABEL_20;
  }

LABEL_18:
  v19 = sub_10000EDD8(kCFAllocatorDefault, a5);
  a5 = v19;
  if (v19)
  {
    v20 = CFDataGetBytePtr(v19);
    v21 = CFDataGetLength(a5);
    goto LABEL_21;
  }

LABEL_20:
  v20 = 0;
  v21 = 0;
LABEL_21:
  sub_10012E0E8(*(a1 + 96), BytePtr, Length, v17, v18, v20, v21, a6, 0);
  if (v8)
  {
    CFRelease(v8);
  }

  if (a5)
  {
    CFRelease(a5);
  }

  if (a3)
  {

    CFRelease(a3);
  }
}

void sub_100059B54(uint64_t a1, uint64_t a2, const void *a3, const __CFArray *a4, int a5)
{
  if (!a3)
  {
    v9 = 0;
LABEL_6:
    BytePtr = 0;
    Length = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = sub_10000EDD8(kCFAllocatorDefault, a3);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v9);
  if (!a4)
  {
LABEL_12:
    sub_10012E4AC(*(a1 + 96), BytePtr, Length, 0, 0, a5, 0);
    if (!v9)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_7:
  v12 = sub_100035314(a4);
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = sub_10000EDD8(kCFAllocatorDefault, v12);
  if (!v14)
  {
    CFRelease(v13);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = CFDataGetBytePtr(v14);
  v17 = CFDataGetLength(v15);
  CFRelease(v13);
  sub_10012E4AC(*(a1 + 96), BytePtr, Length, v16, v17, a5, 0);
  CFRelease(v15);
  if (!v9)
  {
    return;
  }

LABEL_13:

  CFRelease(v9);
}

void sub_100059CB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = sub_100020030(v4);
    if (v5)
    {
      sub_10014BB18(a1, v5);
    }

    else
    {
      sub_10014BB58();
    }
  }

  else
  {
    sub_10014BBB0();
  }

  sub_1000102B4(a1, a2, 2u, 0);
}

void sub_100059D24(uint64_t a1, uint64_t a2)
{
  sub_1000102B4(a1, a2, 3u, 0);
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = sub_100020030(v3);
    if (v4)
    {
      sub_10014BB18(a1, v4);
    }

    else
    {
      sub_10014BB58();
    }
  }

  else
  {
    sub_10014BBB0();
  }
}

void sub_100059D7C(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = sub_100020030(v6);
    if (v7)
    {
      sub_10014BB18(a1, v7);
    }

    else
    {
      sub_10014BB58();
    }
  }

  else
  {
    sub_10014BC08();
  }

  sub_1000102B4(a1, a2, 0x11u, a3);
}

void sub_100059DF8(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (sub_1000B9130(a2))
  {
    v6 = 44;
  }

  else
  {
    v6 = 18;
  }

  sub_1000102B4(a1, a2, v6, a3);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = sub_100020030(v7);
    if (v8)
    {
      sub_10014BB18(a1, v8);
    }

    else
    {
      sub_10014BB58();
    }
  }

  else
  {
    sub_10014BC08();
  }
}

void sub_100059E7C(uint64_t a1, uint64_t a2, const void *a3, const void *a4, int a5)
{
  if (!a3)
  {
    v9 = 0;
LABEL_6:
    BytePtr = 0;
    Length = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = sub_10000EDD8(kCFAllocatorDefault, a3);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v9);
  if (!a4)
  {
LABEL_10:
    sub_10012E5A8(*(a1 + 96), BytePtr, Length, 0, 0, a5, 0);
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  v12 = sub_10000EDD8(kCFAllocatorDefault, a4);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = CFDataGetBytePtr(v12);
  v15 = CFDataGetLength(v13);
  sub_10012E5A8(*(a1 + 96), BytePtr, Length, v14, v15, a5, 0);
  CFRelease(v13);
  if (!v9)
  {
    return;
  }

LABEL_11:

  CFRelease(v9);
}

void sub_100059FF4(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  sub_1000102B4(a1, a2, 6u, a3);
  sub_1000102B4(a1, a2, 7u, a3);

  sub_1000102B4(a1, a2, 8u, a4);
}

void sub_10005A080(uint64_t a1, int a2, uint64_t a3)
{
  valuePtr = a2 != 0;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  sub_1000102B4(a1, a3, 0xCu, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_10005A120(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  sub_1000102B4(a1, a2, 0x26u, *v3);
}

void sub_10005A144(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    sub_1000102B4(a1, a2, 0x27u, v5);
    CFRelease(v6);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Could not allocate M1M4Handshake24GHzCountRef", "WiFiClientDispatchM1M4Handshake24GHzCountEvent"}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_10005A1F8(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    sub_1000102B4(a1, a2, 0x25u, v5);
    CFRelease(v6);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Could not allocate numRef", "WiFiClientDispatchCarPlayNetworkTypeChangeEvent"}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

uint64_t sub_10005A2D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 144) = a2;
  *(result + 152) = a3;
  return result;
}

void sub_10005A2DC(uint64_t a1)
{
  if (*(a1 + 144))
  {
    CFRetain(a1);
    v2 = *(a1 + 88);
    if (v2)
    {
      sub_100099C98(v2, 0, 0);
    }

    (*(a1 + 144))(a1, *(a1 + 152));

    CFRelease(a1);
  }
}

void sub_10005A37C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = sub_10002ACC0(v2);
    sub_100099D00(v3);
    v2 = *(a1 + 88);
  }

  sub_100099BE8(v2);
  v4 = *(a1 + 96);
  if (v4)
  {
    mach_port_deallocate(mach_task_self_, v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 112) = 0;
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 120) = 0;
  }

  v7 = CFUUIDCreateString(kCFAllocatorDefault, *(a1 + 72));
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Removing client for %@ (%@)", *(a1 + 64), v7}];
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 72) = 0;
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 160);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 160) = 0;
  }

  v13 = *(a1 + 168);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 168) = 0;
  }
}

CFStringRef sub_10005A4AC(void *cf)
{
  if (!cf)
  {
    return @"Invalid client ref";
  }

  v2 = qword_100298520;
  if (!qword_100298520)
  {
    pthread_once(&stru_100297868, sub_100059260);
    v2 = qword_100298520;
  }

  if (v2 == CFGetTypeID(cf))
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: pid=%d uuid=%@ type=%d", cf[8], *(cf + 14), cf[9], *(cf + 4));
  }

  else
  {
    return @"Invalid client ref";
  }
}

void sub_10005A558(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 180);
  v3 = objc_autoreleasePoolPush();
  if (v2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"link recovery from SSID transition did finish within %d seconds ", 4}];
    }

    objc_autoreleasePoolPop(v3);
    *(*(a1 + 32) + 180) = 0;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"link recovery did not complete within %d seconds, dispatching link down event to SpringBoard", 4}];
    }

    objc_autoreleasePoolPop(v3);
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    *(v5 + 181) = 0;
    v6 = *(v5 + 96);
    v7 = *(a1 + 56);
    v8 = *(a1 + 60);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);

    sub_10001073C(v6, v4, v7, v8, v9, v10, 0);
  }
}

uint64_t sub_10005A638(int a1, vm_address_t a2, int a3, uint64_t a4)
{

  return sub_10001073C(a1, a2, a3, a4, 0, 0, 0);
}

uint64_t sub_10005A654(uint64_t a1)
{
  if (qword_100298528)
  {
    CFRelease(qword_100298528);
    qword_100298528 = 0;
  }

  if (qword_100298530)
  {
    CFRelease(qword_100298530);
    qword_100298530 = 0;
  }

  v2 = SCDynamicStoreCopyValue(*(a1 + 152), qword_100298548);
  v3 = SCDynamicStoreCopyValue(*(a1 + 152), qword_100298550);
  v4 = v3;
  if (!v2)
  {
    v6 = 0;
    qword_100298528 = 0;
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v2, kSCDynamicStorePropNetPrimaryInterface);
  qword_100298528 = Value;
  if (!Value)
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_16:
    qword_100298530 = 0;
    goto LABEL_17;
  }

  v6 = CFEqual(Value, *(a1 + 112)) != 0;
  CFRetain(qword_100298528);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_10:
  v7 = CFDictionaryGetValue(v4, kSCDynamicStorePropNetPrimaryInterface);
  qword_100298530 = v7;
  if (v7)
  {
    if (CFEqual(v7, *(a1 + 112)))
    {
      v6 = 1;
    }

    else
    {
      v6 = v6;
    }

    CFRetain(qword_100298530);
  }

LABEL_17:
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

const void *sub_10005A8A4(int a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    return CFDictionaryGetValue(theDict, kSCDynamicStorePropNetPrimaryInterface);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_10005A8C8()
{
  if (qword_100298528)
  {
    return CFStringCreateCopy(kCFAllocatorDefault, qword_100298528);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_10005A8EC()
{
  if (qword_100298530)
  {
    return CFStringCreateCopy(kCFAllocatorDefault, qword_100298530);
  }

  else
  {
    return 0;
  }
}

BOOL sub_10005A910(uint64_t a1)
{
  if (*(a1 + 3568))
  {
    v2 = *(a1 + 3568) == 65193;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (v3)
    {
      v5 = "%s: interface is IPv4 not routable";
    }

    else
    {
      v5 = "%s: interface is IPv4 routable";
    }

    [off_100298C40 WFLog:3 message:{v5, "WiFiDeviceIsInterfaceRoutable"}];
  }

  objc_autoreleasePoolPop(v4);
  if (*(a1 + 3572))
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: interface is IPv6 routable", "WiFiDeviceIsInterfaceRoutable"}];
    }

    objc_autoreleasePoolPop(v6);
  }

  return !v3 || *(a1 + 3572) != 0;
}

BOOL sub_10005A9F8(uint64_t a1)
{
  if (*(a1 + 3568))
  {
    v1 = *(a1 + 3568) == 65193;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

__CFDictionary *sub_10005AA2C(uint64_t a1, const void *a2)
{
  v9 = 0;
  v3 = sub_100007060(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == sub_100006F40())
    {
      v6 = sub_1001AC428(v4, &v9);
      if (!v6)
      {
        return v9;
      }
    }

    else
    {
      v6 = 4294963393;
    }

    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: error %d", "WiFiDeviceCopyInterfaceStateInfo", v6}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    sub_1001523C8(a2);
  }

  return v9;
}

uint64_t sub_10005AAE0()
{
  result = qword_100298538;
  if (!qword_100298538)
  {
    pthread_once(&stru_100297878, sub_10005AB28);
    return qword_100298538;
  }

  return result;
}

CFStringRef sub_10005AB28()
{
  qword_100298538 = _CFRuntimeRegisterClass();
  IOMasterPort(0, &dword_100298540);
  qword_100298548 = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCEntNetIPv4);
  result = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCEntNetIPv6);
  qword_100298550 = result;
  return result;
}

uint64_t sub_10005ABC8(const __CFAllocator *a1, io_registry_entry_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: entering", "WiFiDeviceCreate"}];
  }

  objc_autoreleasePoolPop(v4);
  if (a2)
  {
    if (!qword_100298538)
    {
      pthread_once(&stru_100297878, sub_10005AB28);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      v7 = (Instance + 4096);
      bzero((Instance + 16), 0x1520uLL);
      v8 = 0;
      *(v6 + 248) = 7;
      *(v6 + 58) = 0;
      *(v6 + 240) = 0x41FFFFFFEDLL;
      *(v6 + 256) = 4294967277;
      do
      {
        CFProperty = IORegistryEntryCreateCFProperty(a2, @"IOInterfaceName", a1, 0);
        *(v6 + 112) = CFProperty;
        if (CFProperty)
        {
          goto LABEL_29;
        }

        usleep(0x2710u);
        v10 = *(v6 + 112);
        if (v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = v8 >= 0x1F;
        }

        ++v8;
      }

      while (!v11);
      if (v10)
      {
LABEL_28:
        if (*(v6 + 112))
        {
LABEL_29:
          IORegistryEntryGetParentEntry(a2, "IOService", (v6 + 24));
          if (!*(v6 + 24))
          {
            v34 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: No Matching Parent Service Found for interface %@", "WiFiDeviceCreate", *(v6 + 112)}];
            }

            goto LABEL_58;
          }

          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          *(v6 + 120) = Mutable;
          if (!Mutable)
          {
            goto LABEL_59;
          }

          v20 = IONotificationPortCreate(dword_100298540);
          *(v6 + 96) = v20;
          if (v20)
          {
            *(v6 + 144) = sub_1000F9168(a1, v6);
            v21 = sub_1001AB3EC(a1, 0);
            *(v6 + 176) = v21;
            if (v21)
            {
              v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              *(v6 + 200) = v22;
              if (v22)
              {
                v23 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                *(v6 + 5024) = v23;
                if (v23)
                {
                  v7[936] = 1;
                  v7[952] = 0;
                  v24 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                  *(v6 + 5080) = v24;
                  if (v24)
                  {
                    v7[992] = 1;
                    v7[1008] = 0;
                    v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                    *(v6 + 4984) = v25;
                    if (v25)
                    {
                      v26 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                      *(v6 + 4992) = v26;
                      if (v26)
                      {
                        sub_10010A144(*(v6 + 176), sub_100026744, v6);
                        v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (v6 + 248));
                        if (v27)
                        {
                          v28 = v27;
                          CFDictionarySetValue(*(v6 + 120), @"SignalStrengthThreshold", v27);
                          CFRelease(v28);
                        }

                        v29 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                        *(v6 + 5112) = v29;
                        if (v29)
                        {
                          CFDictionaryAddValue(v29, *(v6 + 112), v6);
                          sub_1001450B0(v6);
                          *(v6 + 3568) = 0;
                          *(v6 + 3572) = 0;
                          sub_10005B198(v6);
                          *(v6 + 208) = 0;
                          *(v6 + 216) = 0;
                          *(v6 + 5248) = 0;
                          *(v6 + 5256) = 0x6400000064;
                          *(v6 + 5264) = 0;
                          *(v6 + 224) = 257;
                          if (byte_100298C7A)
                          {
                            *(v6 + 224) = 0;
                          }

                          *(v6 + 232) = MGCopyAnswer();
                          *(v6 + 5272) = 0;
                          v30 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                          *(v6 + 5320) = v30;
                          if (v30)
                          {
                            v31 = [CWFBootArgs() copy];
                            *(v6 + 5344) = v31;
                            v7[1256] = [v31 containsObject:@"wlan.ranging.disablePhyErrDiscarding=1"];
                            v7[1320] = 0;
                            v32 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiDeviceCreate"}];
                            }

                            goto LABEL_46;
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_59:
              CFRelease(v6);
              goto LABEL_60;
            }

            v34 = objc_autoreleasePoolPush();
            v35 = off_100298C40;
            if (off_100298C40)
            {
              v36 = "%s: Error: WiFiCommandQueueCreate failed";
              goto LABEL_57;
            }

LABEL_58:
            objc_autoreleasePoolPop(v34);
            goto LABEL_59;
          }

          v34 = objc_autoreleasePoolPush();
          v35 = off_100298C40;
          if (!off_100298C40)
          {
            goto LABEL_58;
          }

          v36 = "%s: Error: IONotificationPortCreate failed";
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          v35 = off_100298C40;
          if (!off_100298C40)
          {
            goto LABEL_58;
          }

          v36 = "%s: Error: Could not obtain IO80211Interface bsd name";
        }

LABEL_57:
        [v35 WFLog:4 message:{v36, "WiFiDeviceCreate", v37}];
        goto LABEL_58;
      }

      v12 = IORegistryEntryCreateCFProperty(a2, @"IOInterfaceNamePrefix", a1, 0);
      v13 = IORegistryEntryCreateCFProperty(a2, @"IOInterfaceUnit", a1, 0);
      v14 = v13;
      if (v12 && v13 && (v15 = CFGetTypeID(v12), v15 == CFStringGetTypeID()) && (v16 = CFGetTypeID(v14), v16 == CFNumberGetTypeID()))
      {
        *(v6 + 112) = CFStringCreateWithFormat(0, 0, @"%@%@", v12, v14);
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: device->ifName : %@ ", "WiFiDeviceCreate", *(v6 + 112)}];
        }

        objc_autoreleasePoolPop(v17);
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Error: Could not obtain ifPrefix and ifUnit", "WiFiDeviceCreate"}];
        }

        objc_autoreleasePoolPop(v18);
        if (!v12)
        {
          goto LABEL_26;
        }
      }

      CFRelease(v12);
LABEL_26:
      if (v14)
      {
        CFRelease(v14);
      }

      goto LABEL_28;
    }

    sub_100152438();
  }

  else
  {
    sub_1001524A4();
  }

LABEL_60:
  v32 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: exiting, Error: Failed to create device ref", "WiFiDeviceCreate"}];
  }

  v6 = 0;
LABEL_46:
  objc_autoreleasePoolPop(v32);
  return v6;
}

void sub_10005B198(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 2288) = 0;
    *(a1 + 2272) = 0u;
    *(a1 + 2256) = 0u;
    *(a1 + 2240) = 0u;
    *(a1 + 2224) = 0u;
    *(a1 + 2208) = 0u;
    *(a1 + 2192) = 0u;
    *(a1 + 2176) = 0u;
    *(a1 + 2160) = 0u;
    *(a1 + 2144) = 0u;
    *(a1 + 2128) = 0u;
    *(a1 + 2112) = 0u;
    *(a1 + 2096) = 0u;
    *(a1 + 2080) = 0u;
    *(a1 + 2064) = 0u;
    *(a1 + 2048) = 0u;
    *(a1 + 2032) = 0u;
    *(a1 + 2016) = 0u;
    *(a1 + 2000) = 0u;
    *(a1 + 1984) = 0u;
    *(a1 + 1968) = 0u;
    *(a1 + 1952) = 0u;
    *(a1 + 1936) = 0u;
    *(a1 + 1920) = 0u;
    *(a1 + 1904) = 0u;
    *(a1 + 1888) = 0u;
    *(a1 + 1872) = 0u;
    *(a1 + 1856) = 0u;
    *(a1 + 1840) = 0u;
    *(a1 + 1824) = 0u;
    *(a1 + 1808) = 0u;
    *(a1 + 1792) = 0u;
    bzero((a1 + 304), 0x3D8uLL);
    *(a1 + 1784) = 0;
    *(a1 + 1752) = 0u;
    *(a1 + 1768) = 0u;
    *(a1 + 1720) = 0u;
    *(a1 + 1736) = 0u;
    *(a1 + 1688) = 0u;
    *(a1 + 1704) = 0u;
    *(a1 + 1656) = 0u;
    *(a1 + 1672) = 0u;
    *(a1 + 1624) = 0u;
    *(a1 + 1640) = 0u;
    *(a1 + 1592) = 0u;
    *(a1 + 1608) = 0u;
    *(a1 + 1560) = 0u;
    *(a1 + 1576) = 0u;
    *(a1 + 1528) = 0u;
    *(a1 + 1544) = 0u;
    *(a1 + 1496) = 0u;
    *(a1 + 1512) = 0u;
    *(a1 + 1464) = 0u;
    *(a1 + 1480) = 0u;
    *(a1 + 1432) = 0u;
    *(a1 + 1448) = 0u;
    *(a1 + 1400) = 0u;
    *(a1 + 1416) = 0u;
    *(a1 + 1368) = 0u;
    *(a1 + 1384) = 0u;
    *(a1 + 1336) = 0u;
    *(a1 + 1352) = 0u;
    *(a1 + 1304) = 0u;
    *(a1 + 1320) = 0u;
    *(a1 + 1288) = 0u;
    bzero((a1 + 2296), 0x3D0uLL);
    *(a1 + 3288) = 0;
    *(a1 + 3272) = 0u;
  }

  else
  {
    sub_100152820();
  }
}

CFNumberRef sub_10005B2BC(uint64_t a1, const void *a2)
{
  v12 = 0;
  v4 = sub_100007060(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == sub_100006F40())
    {
      sub_10010F400(v5, 29, 0, &v12);
    }

    else
    {
      for (i = 6; ; --i)
      {
        v9 = *(a1 + 16);
        v10 = Apple80211CopyValue();
        if (v10 != -3905 && v10 != 61 && v10 != 16)
        {
          break;
        }

        if (!i)
        {
          break;
        }

        usleep(0x7A120u);
      }
    }
  }

  else
  {
    sub_1001521B0(a2);
  }

  return v12;
}

uint64_t sub_10005B37C(uint64_t a1, CFStringRef theString, const char *a3, const char *a4, int a5, void *a6, unsigned int a7)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v14;
  v27 = v14;
  Length = CFStringGetLength(theString);
  v16 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (v16)
  {
    v17 = v16;
    v18 = CFStringGetLength(theString);
    CFStringGetCString(theString, v17, v18 + 1, 0);
    bzero(a6, a7);
    strcat(a6, a3);
    *(a6 + strlen(a3)) = 0;
    v19 = strlen(a3);
    strcat(a6 + v19 + 1, a4);
    v20 = strlen(a3);
    *(a6 + v20 + strlen(a4) + 1) = 32;
    v26 = 0u;
    v27 = 0u;
    __strlcpy_chk();
    if (a5)
    {
      v21 = 263;
    }

    else
    {
      v21 = 262;
    }

    LODWORD(v27) = -1;
    *(&v27 + 4) = __PAIR64__(a7, v21);
    v28 = a6;
    v22 = *(a1 + 16);
    v23 = Apple80211RawGet();
    free(v17);
    if (!v23)
    {
      return v23;
    }
  }

  else
  {
    sub_100152A90();
    v23 = 4294963395;
  }

  v24 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: error %d", "WiFiDeviceGetSetWLDump", v23, v26, v27, v28}];
  }

  objc_autoreleasePoolPop(v24);
  return v23;
}

uint64_t sub_10005B558(uint64_t a1, void *a2)
{
  v4 = *(a1 + 4992);
  if (v4 && CFArrayGetCount(v4))
  {
    [a2 addObjectsFromArray:*(a1 + 4992)];
    return 0;
  }

  else
  {
    v6 = sub_100007060(a1, *(a1 + 112));
    v5 = v6;
    if (v6)
    {
      theArray = 0;
      v7 = CFGetTypeID(v6);
      if (v7 == sub_100006F40())
      {
        v5 = sub_10010F400(v5, 207, 0, &theArray);
LABEL_18:
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v13 = Count;
            for (i = 0; i != v13; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
              if (ValueAtIndex)
              {
                v16 = ValueAtIndex;
                if (CFDictionaryGetValue(ValueAtIndex, @"CHANNELINFO_CH_NUM"))
                {
                  CFArrayAppendValue(a2, v16);
                }
              }
            }
          }

          if (theArray)
          {
            CFRelease(theArray);
          }
        }
      }

      else
      {
        for (j = 6; ; --j)
        {
          v9 = *(a1 + 16);
          v10 = Apple80211CopyValue();
          v5 = v10;
          if (v10 <= 15)
          {
            if (v10 != -3905)
            {
              break;
            }
          }

          else if (v10 != 61 && v10 != 16)
          {
            goto LABEL_29;
          }

          if (!j)
          {
            break;
          }

          usleep(0x7A120u);
        }

        if (!v10)
        {
          goto LABEL_18;
        }

LABEL_29:
        sub_100152AFC(v10);
      }
    }

    else
    {
      sub_100152B58((a1 + 112));
    }
  }

  return v5;
}

uint64_t sub_10005B6E4(uint64_t a1, const void *a2, __CFArray *a3)
{
  theArray = 0;
  if (!a3)
  {
    return 4294963396;
  }

  v6 = sub_100007060(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == sub_100006F40())
    {
      v7 = sub_10010F400(v7, 27, 0, &theArray);
LABEL_17:
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v14 = Count;
          for (i = 0; i != v14; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            if (ValueAtIndex)
            {
              v17 = ValueAtIndex;
              if (CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL"))
              {
                CFArrayAppendValue(a3, v17);
              }
            }
          }
        }

        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }

    else
    {
      for (j = 6; ; --j)
      {
        v10 = *(a1 + 16);
        v11 = Apple80211CopyValue();
        v7 = v11;
        if (v11 <= 15)
        {
          if (v11 != -3905)
          {
            break;
          }
        }

        else if (v11 != 61 && v11 != 16)
        {
          goto LABEL_28;
        }

        if (!j)
        {
          break;
        }

        usleep(0x7A120u);
      }

      if (!v11)
      {
        goto LABEL_17;
      }

LABEL_28:
      sub_100152BC4(v11);
    }
  }

  else
  {
    sub_1001521B0(a2);
  }

  return v7;
}

uint64_t sub_10005B85C(uint64_t a1, CFTypeRef cf, const void *a3, uint64_t a4, uint64_t a5)
{
  v10 = CFRetain(cf);
  v11 = CFRetain(a3);
  v12 = sub_100026144(a1, 3u, 0, v10, v11, a4, a5, 0, 0);
  if (v12)
  {
    if (a3)
    {
      CFRelease(a3);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v12;
}

uint64_t sub_10005B96C(uint64_t a1, CFTypeRef cf, const void *a3, uint64_t a4, uint64_t a5)
{
  v10 = CFRetain(cf);
  v11 = CFRetain(a3);
  v12 = sub_100026144(a1, 5u, 0, v10, v11, a4, a5, 0, 0);
  if (v12)
  {
    if (a3)
    {
      CFRelease(a3);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v12;
}

uint64_t sub_10005BA14(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (a1 && *(a1 + 3952))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: hostap never started. Invoking error callback.", "WiFiDeviceStopWiFiDirectGroup"}];
    }

    objc_autoreleasePoolPop(v8);
    sub_10005BAE0(a1, cf, 4294963391);
  }

  v9 = CFRetain(cf);
  return sub_100026144(a1, 6u, 0, v9, a3, a4, 0, 0, 0);
}

void sub_10005BAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 3952);
  v7 = *(a1 + 3952);
  v8 = *(a1 + 3960);
  v9 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Error %d starting WiFi Direct Group, requesting stop...", a3}];
    }

    objc_autoreleasePoolPop(v9);
    for (i = 6; ; --i)
    {
      v11 = *(a1 + 16);
      v12 = Apple80211Set();
      if (v12 != -3905 && v12 != 61 && v12 != 16)
      {
        break;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Successfully started WiFi Direct Group"];
    }

    objc_autoreleasePoolPop(v9);
    *(a1 + 60) = 1;
  }

  *v6 = 0;
  v6[1] = 0;
  if (v7)
  {
    v7(a1, a2, a3, v8);
  }

  sub_10002ECA0(a1);
  v14 = *(a1 + 4264);
  if (v14)
  {
    v15 = *(a1 + 4272);
    v16 = *(a1 + 60);

    v14(a1, 0, v15, v16);
  }
}

void sub_10005BC40(uint64_t a1, int a2)
{
  valuePtr = a2 != 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    for (i = 6; ; --i)
    {
      v6 = *(a1 + 16);
      v7 = Apple80211Get();
      if (v7 <= 15)
      {
        if (v7 != -3905)
        {
          break;
        }
      }

      else if (v7 != 61 && v7 != 16)
      {
        goto LABEL_27;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
    }

    if (v7)
    {
LABEL_27:
      sub_100152C84(v7);
      goto LABEL_25;
    }

    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v9)
    {
      v10 = v9;
      CFDictionaryReplaceValue(v4, @"SOFTAP_LOWPOWER_PS_STATE", v9);
      CFRelease(v10);
      for (j = 6; ; --j)
      {
        v12 = *(a1 + 16);
        v13 = Apple80211Set();
        if (v13 <= 15)
        {
          if (v13 != -3905)
          {
            break;
          }
        }

        else if (v13 != 61 && v13 != 16)
        {
          goto LABEL_28;
        }

        if (!j)
        {
          break;
        }

        usleep(0x7A120u);
      }

      if (!v13)
      {
        goto LABEL_25;
      }

LABEL_28:
      sub_100152C20(v13);
    }

LABEL_25:
    CFRelease(v4);
  }

  else
  {
    sub_100152CF4();
  }
}

CFMutableDictionaryRef sub_10005BDB0(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    for (i = 6; ; --i)
    {
      v4 = *(a1 + 16);
      v5 = Apple80211Get();
      v6 = v5;
      if (v5 <= 15)
      {
        if (v5 != -3905)
        {
          break;
        }
      }

      else if (v5 != 61 && v5 != 16)
      {
        goto LABEL_16;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
    }

    if (!v5)
    {
      return Mutable;
    }

LABEL_16:
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Failed to get SoftAP LowPower Stats: err %d", "WiFiDeviceCopyHotspotLowPowerStats", v6}];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Failed to create dict", "WiFiDeviceCopyHotspotLowPowerStats", v10}];
    }
  }

  objc_autoreleasePoolPop(v9);
  return Mutable;
}

void sub_10005BEDC(uint64_t a1, char a2, __int16 a3, const void *a4)
{
  valuePtr = a2;
  v16 = a3;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(v7, @"HostApBatteryLevel", v8);
      CFRelease(v9);
      if (!a4)
      {
        goto LABEL_6;
      }

      v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v16);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(v7, @"HostApWiFiNetworkFlag", v10);
        CFRelease(v11);
        CFDictionarySetValue(v7, @"SSID_STR", a4);
LABEL_6:
        for (i = 6; ; --i)
        {
          v13 = *(a1 + 16);
          v14 = Apple80211Set();
          if (v14 <= 15)
          {
            if (v14 != -3905)
            {
              break;
            }
          }

          else if (v14 != 61 && v14 != 16)
          {
            goto LABEL_19;
          }

          if (!i)
          {
            break;
          }

          usleep(0x7A120u);
        }

        if (!v14)
        {
          goto LABEL_17;
        }

LABEL_19:
        sub_100152D60(v14);
      }
    }

LABEL_17:
    CFRelease(v7);
    return;
  }

  sub_100152DC4();
}

void sub_10005C040(uint64_t a1)
{
  valuePtr = 1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(v3, @"HostApEnabled", v4);
      CFRelease(v5);
      if (*(a1 + 16))
      {
        for (i = 6; ; --i)
        {
          v7 = Apple80211Set();
          if (v7 <= 15)
          {
            if (v7 != -3905)
            {
              break;
            }
          }

          else if (v7 != 61 && v7 != 16)
          {
            goto LABEL_15;
          }

          if (!i)
          {
            break;
          }

          usleep(0x7A120u);
          v8 = *(a1 + 16);
        }

        if (!v7)
        {
          goto LABEL_13;
        }

LABEL_15:
        sub_100152E30(v7);
      }
    }

LABEL_13:
    CFRelease(v3);
  }

  else
  {
    sub_100152E94();
  }
}

void sub_10005C158(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10)
{
  v26 = *(a6 + 4792);
  v17 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s for ssid [%@] bssid [%@] rssi [%ld] ifname [%@] linkEvent %d", "WiFiDeviceSetNanNetworkAssociation", a2, a1, a3, a4, a10}];
  }

  objc_autoreleasePoolPop(v17);
  if (a10 == 1)
  {
    sub_10005C280(a6, a4, v18, v19, v20, v21, v22, v23);
  }

  if (v26)
  {
    v24 = *(a6 + 4800);

    v26(a6, a4, a3, a5, v24, a7, a8, a9);
  }
}

void sub_10005C280(uint64_t a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_10014E034(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, 10, a2, var28[1], var28[2], var28[3], var28[4], var28[5], var28[6]);
  if (v10)
  {
    sub_100152F00(a2);
  }

  else
  {
    v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
    if (v11)
    {
      v12 = v11;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v14 = Mutable;
        CFDictionaryAddValue(Mutable, @"VIRT_IF_ROLE", v12);
        CFDictionaryAddValue(v14, @"VIRT_IF_NAME", a2);
        v16 = sub_100062E94(a1, v15, v14, var28);
        v17 = objc_autoreleasePoolPush();
        if (v16)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"Error creating %@  interface %d", var28[0], v16}];
          }
        }

        else if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Created %@ interface", "__WiFiDeviceCreateInternetRelayInterface", var28[0]}];
        }

        objc_autoreleasePoolPop(v17);
        CFRelease(v12);
        CFRelease(v14);
      }

      else
      {
        sub_100152F70(v12);
      }
    }

    else
    {
      sub_100152FDC();
    }
  }
}

void sub_10005C3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 4808);
  if (v10)
  {
    v10(a6, a4, a3, a5, *(a6 + 4816));
  }

  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s for ssid [%@] bssid [%@] rssi [%ld] ifname [%@]", "WiFiDeviceSetNanNetworkTerminated", a2, a1, a3, a4}];
  }

  objc_autoreleasePoolPop(v11);
}

uint64_t sub_10005C48C(uint64_t a1, CFTypeRef cf, const void *a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v12 = CFRetain(cf);
  if (a3)
  {
    v13 = CFRetain(a3);
    if (a6)
    {
LABEL_3:
      v14 = CFRetain(a6);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = sub_100026144(a1, 0xAu, 0, v12, v13, a4, a5, v14, 0);
  if (v15)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    if (a3)
    {
      CFRelease(a3);
    }

    if (a6)
    {
      CFRelease(a6);
    }
  }

  return v15;
}

uint64_t sub_10005C570(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v36 = 72;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v35 = 0;
  if (!sub_10000E6B0(*(a1 + 176), &v37, &v36, &v35) && *(v37 + 56) == 1 && *v37 == 12)
  {
    v32 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Flushing out pending ranging request...", "WiFiDeviceStopAwdl"}];
    }

    objc_autoreleasePoolPop(v32);
    sub_10005C904(a1, a2, 0, 4294963365);
    sub_10014C858();
  }

  v10 = objc_autoreleasePoolPush();
  v11 = MGGetBoolAnswer();
  v12 = [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor lastRangingSessionMetric];
  v13 = *(a1 + 3984);
  if (v13)
  {
    Value = CFDictionaryGetValue(v13, @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC");
    if (v11)
    {
      if (v12 && Value)
      {
        v34 = [v12 objectForKeyedSubscript:@"LinkLatency"];
        v15 = [v12 objectForKeyedSubscript:@"RangingLatency"];
        v16 = [v12 objectForKeyedSubscript:@"MeasurementStatus"];
        v17 = [v12 objectForKeyedSubscript:@"MeasurementFlags"];
        Current = CFAbsoluteTimeGetCurrent();
        v19 = *(a1 + 4000);
        if (([v17 unsignedIntegerValue] & 0x8000) != 0)
        {
          v20 = [NSString stringWithFormat:@"Ranging Failure (Corrupted Sample)"];
        }

        else
        {
          v20 = 0;
        }

        if ([v16 integerValue])
        {
          v33 = [v16 integerValue];
          v21 = @"Ranging Failure (%d)";
        }

        else if ([v15 unsignedIntegerValue] < 0x3E9)
        {
          if ([v34 unsignedIntegerValue] < 0x3E9)
          {
            if (*(a1 + 4000) == 0.0 || Current - v19 <= 4.0)
            {
LABEL_19:
              if (v20)
              {
                v23 = +[NSMutableDictionary dictionary];
                if (v23)
                {
                  v24 = v23;
                  v25 = [NSNumber numberWithBool:1];
                  [v24 setObject:v20 forKey:@"CHIP_RESET_TRIGGER"];
                  [v24 setObject:v25 forKey:@"CHIP_RESET_NONFATAL"];
                  sub_10005D1BC(a1, v24);
                }
              }

              goto LABEL_22;
            }

            v22 = [NSString stringWithFormat:@"Slow PAU Attempt (%ds)", (Current - v19)];
LABEL_18:
            v20 = v22;
            goto LABEL_19;
          }

          v33 = [v34 unsignedIntegerValue];
          v21 = @"Slow PAU Bringup (%dms)";
        }

        else
        {
          v33 = [v15 unsignedIntegerValue];
          v21 = @"Slow PAU Ranging (%dms)";
        }

        v22 = [NSString stringWithFormat:v21, v33];
        goto LABEL_18;
      }
    }
  }

LABEL_22:
  objc_autoreleasePoolPop(v10);
  v26 = *(a1 + 3984);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 3984) = 0;
  }

  v27 = *(a1 + 3992);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 3992) = 0;
  }

  *(a1 + 4000) = 0;
  v28 = CFRetain(a2);
  if (a3)
  {
    v29 = CFRetain(a3);
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_100026144(a1, 0xBu, 0, v28, v29, a4, a5, 0, 0);
  if (v30)
  {
    if (a2)
    {
      CFRelease(a2);
    }

    if (a3)
    {
      CFRelease(a3);
    }
  }

  return v30;
}

void sub_10005C904(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4)
{
  v57 = *(a1 + 4440);
  v55 = *(a1 + 4448);
  v75 = 0;
  v76 = 72;
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Completed APPLE80211_IOC_RANGING_START on %@ (%d)", a2, a4}];
  }

  objc_autoreleasePoolPop(v8);
  if ((a4 + 3933) <= 1 && !*(a1 + 3984))
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ranging error while AWDL session not requested. Overriding error code to %d", "__WiFiDeviceProcessRangingDoneEvent", 4294963368}];
    }

    objc_autoreleasePoolPop(v9);
    a4 = 4294963368;
  }

  v58 = a2;
  v77 = 0xAAAAAAAAAAAAAAAALL;
  v56 = a4;
  if (a3 && (CFArrayGetCount(a3) > 4 ? (v10 = 4) : (v10 = CFArrayGetCount(a3)), v10 >= 1))
  {
    v11 = 0;
    v12 = 0;
    v59 = a4;
    v60 = v10;
    v61 = a3;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v12);
      if (ValueAtIndex)
      {
        v14 = ValueAtIndex;
        v62 = v11;
        Value = CFDictionaryGetValue(ValueAtIndex, @"STATION_MAC");
        v16 = CFDictionaryGetValue(v14, @"RANGING_DISTANCE");
        valuePtr = 0;
        v73 = 0;
        v72 = 0;
        v17 = CFDictionaryGetValue(v14, @"RANGING_VALID_COUNT");
        if (v17)
        {
          CFNumberGetValue(v17, kCFNumberSInt8Type, &valuePtr);
        }

        v18 = CFDictionaryGetValue(v14, @"RANGING_STATUS");
        if (v18)
        {
          CFNumberGetValue(v18, kCFNumberSInt16Type, &v72);
        }

        v19 = CFDictionaryGetValue(v14, @"RANGING_FLAGS");
        if (v19)
        {
          CFNumberGetValue(v19, kCFNumberSInt16Type, &v73);
        }

        v20 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: peer %@ status %d flags 0x%x distance %@m validSamples %d", "__WiFiDeviceProcessRangingDoneEvent", Value, v72, v73, v16, valuePtr}];
        }

        objc_autoreleasePoolPop(v20);
        if (*(a1 + 5352))
        {
          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"NOT checking ranging samples based on self/peer PHYErr/bitflips!"];
          }

          objc_autoreleasePoolPop(v21);
        }

        v22 = CFDictionaryGetValue(v14, @"RANGING_RESULTS");
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v14);
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (v22 && CFArrayGetCount(v22) >= 1)
        {
          v25 = 0;
          do
          {
            v26 = CFArrayGetValueAtIndex(v22, v25);
            if (v26)
            {
              v27 = v26;
              v71 = 0;
              v70 = 0;
              v69 = 0;
              v68 = 0;
              v66 = 0;
              v67 = 0;
              v64 = 0;
              v65 = 0;
              v63 = 0;
              v28 = CFDictionaryGetValue(v26, @"RANGING_RTT_STATUS");
              if (v28)
              {
                CFNumberGetValue(v28, kCFNumberSInt16Type, &v66);
              }

              v29 = CFDictionaryGetValue(v27, @"RANGING_RSSI");
              if (v29)
              {
                CFNumberGetValue(v29, kCFNumberSInt16Type, &v65 + 2);
              }

              v30 = CFDictionaryGetValue(v27, @"RANGING_RTT_FLAGS");
              if (v30)
              {
                CFNumberGetValue(v30, kCFNumberSInt16Type, &v65);
              }

              v31 = CFDictionaryGetValue(v27, @"RANGING_RTT");
              if (v31)
              {
                CFNumberGetValue(v31, kCFNumberSInt32Type, &v64);
              }

              v32 = CFDictionaryGetValue(v27, @"RANGING_CHANNEL");
              if (v32)
              {
                CFNumberGetValue(v32, kCFNumberSInt16Type, &v63);
              }

              v33 = CFDictionaryGetValue(v27, @"RANGING_PHY_ERROR");
              if (v33)
              {
                CFNumberGetValue(v33, kCFNumberSInt32Type, &v70);
              }

              v34 = CFDictionaryGetValue(v27, @"RANGING_CORE_ID");
              if (v34)
              {
                CFNumberGetValue(v34, kCFNumberSInt8Type, &v71 + 1);
              }

              v35 = CFDictionaryGetValue(v27, @"RANGING_BER");
              if (v35)
              {
                CFNumberGetValue(v35, kCFNumberSInt8Type, &v71);
              }

              v36 = CFDictionaryGetValue(v27, @"RANGING_SNR");
              if (v36)
              {
                CFNumberGetValue(v36, kCFNumberSInt16Type, &v69);
              }

              v37 = CFDictionaryGetValue(v27, @"RANGING_PEER_CORE_ID");
              if (v37)
              {
                CFNumberGetValue(v37, kCFNumberSInt8Type, &v68 + 1);
              }

              v38 = CFDictionaryGetValue(v27, @"RANGING_PEER_PHY_ERROR");
              if (v38)
              {
                CFNumberGetValue(v38, kCFNumberSInt32Type, &v67);
              }

              v39 = CFDictionaryGetValue(v27, @"RANGING_PEER_BER");
              if (v39)
              {
                CFNumberGetValue(v39, kCFNumberSInt8Type, &v68);
              }

              v40 = CFDictionaryGetValue(v27, @"RANGING_PEER_SNR");
              if (v40)
              {
                CFNumberGetValue(v40, kCFNumberSInt16Type, &v66 + 2);
              }

              memset(v79, 0, 64);
              memset(v78, 0, sizeof(v78));
              Apple80211GetRangingPhyErrorString();
              Apple80211GetRangingPhyErrorString();
              v41 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"RTT[%ld]: Status=%d, RTT=%d RSSI=%d SNR=%d Core=%d BitFlip=%d PHYErr=0x%x(%s) Peer-SNR=%d Peer-BitFlip=%d Peer-PHYErr=0x%x(%s)", v25, v66, v64, SHIWORD(v65), v69, SHIBYTE(v71), v71, v70, v79, SHIWORD(v66), v68, v67, v78}];
              }

              objc_autoreleasePoolPop(v41);
              v42 = v67;
              v43 = v67 & 0xFFFFFD13;
              v67 &= 0xFFFFFD13;
              if (v68 <= 0)
              {
                v43 = v42 & 0xFFFFFD03;
                v67 = v42 & 0xFFFFFD03;
              }

              if (*(a1 + 5352) || !v66 && !v43 && (v63 - 1 > 0xC || v71 <= 10) && (v63 - 36 >= 0x1D && v63 - 100 >= 0x2D && v63 - 142 > 0x17 || v71 <= 40))
              {
                CFArrayAppendValue(Mutable, v27);
              }

              v44 = +[WiFiUsageMonitor sharedInstance];
              [(WiFiUsageMonitor *)v44 addRangingRttSampleWithRssi:SHIWORD(v65) rtt:v64 snr:v69 flags:v65 channel:v63 coreId:SHIBYTE(v71) bitErrorRate:v71 phyError:v70 andPeerSnr:SHIWORD(v66) andPeerCoreId:SHIBYTE(v68) andPeerBitErrorRate:v68 andPeerPhyError:v67];
            }

            Count = CFArrayGetCount(v22);
            if (v25 > 7)
            {
              break;
            }

            ++v25;
          }

          while (v25 < Count);
        }

        if (Mutable)
        {
          v46 = CFArrayGetCount(Mutable);
        }

        else
        {
          v46 = 0;
        }

        a3 = v61;
        v11 = v62;
        LOWORD(v70) = v46;
        v47 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v70);
        CFDictionarySetValue(MutableCopy, @"RANGING_VALID_COUNT", v47);
        if (v47)
        {
          CFRelease(v47);
        }

        v48 = *(a1 + 3984);
        if (v48)
        {
          v79[0] = 0;
          v49 = CFDictionaryGetValue(v48, @"AWDL_INFO_SUPPORTED_CHANNEL_FLAGS");
          if (v49)
          {
            CFNumberGetValue(v49, kCFNumberSInt32Type, v79);
          }

          if (v79[0])
          {
            LODWORD(v78[0]) = HIWORD(v79[0]);
            v50 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v78);
            if (v50)
            {
              v51 = v50;
              v52 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: setting ranging feature flag to %@", "__WiFiDeviceProcessRangingDoneEvent", v51}];
              }

              objc_autoreleasePoolPop(v52);
              CFDictionarySetValue(MutableCopy, @"RANGING_FEATURES", v51);
              CFRelease(v51);
            }
          }
        }

        CFDictionarySetValue(MutableCopy, @"RANGING_RESULTS", Mutable);
        if (v62 || (v11 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks)) != 0)
        {
          CFArrayAppendValue(v11, MutableCopy);
        }

        v53 = +[WiFiUsageMonitor sharedInstance];
        [(WiFiUsageMonitor *)v53 rangingCompletedWithValidCount:valuePtr resultStatus:v59 resultFlags:v73];
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v10 = v60;
      }

      ++v12;
    }

    while (v12 < v10);
  }

  else
  {
    v11 = 0;
  }

  v54 = *(a1 + 4456);
  if (v54)
  {
    v54(a1, v58, v11, *(a1 + 4464));
  }

  *(a1 + 4440) = 0;
  *(a1 + 4448) = 0;
  if (v57)
  {
    v57(a1, v58, v11, v56, v55);
  }

  if (!sub_10000E6B0(*(a1 + 176), &v77, &v76, &v75) && *(v77 + 56) == 1 && *v77 == 12)
  {
    sub_10002ECA0(a1);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}