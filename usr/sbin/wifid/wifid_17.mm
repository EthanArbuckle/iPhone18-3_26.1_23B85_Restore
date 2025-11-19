uint64_t sub_1001418B8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 1296))
    {
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Notification already pending. Ignoring it", "__WiFiLQAMgrCheckUsrInput"}];
      }

      objc_autoreleasePoolPop(v2);
      v3 = 0;
    }

    else
    {
      v4 = sub_10000836C();
      Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
      v3 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, @"WiFi Trigger Disconnect");
        CFDictionarySetValue(v3, kCFUserNotificationDefaultButtonTitleKey, @"Accept");
        CFDictionarySetValue(v3, kCFUserNotificationAlternateButtonTitleKey, @"Tap To Radar");
        if (SBUserNotificationDismissOnLock)
        {
          CFDictionarySetValue(v3, SBUserNotificationDismissOnLock, kCFBooleanTrue);
          CFDictionarySetValue(v3, SBUserNotificationAlertMessageDelimiterKey, &stru_1002680F8);
        }

        v9 = sub_10000836C();
        *(a1 + 1296) = CFUserNotificationCreate(v9, v12, v10, v11, v3);
      }
    }

    if (!*(a1 + 1280))
    {
      v13 = *(a1 + 1296);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 1296) = 0;
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  return 1;
}

uint64_t sub_100141ADC(uint64_t a1)
{
  if (!a1)
  {
    return 255;
  }

  result = *(a1 + 2760);
  if (result >= 0xA)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid curRecord %d", "__WiFiLQAMgrGetCurrentLQAMetricsRecordIdx", *(a1 + 2760)}];
    }

    goto LABEL_10;
  }

  if (!*(a1 + 2761))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: curRecord %d is not busy", "__WiFiLQAMgrGetCurrentLQAMetricsRecordIdx", *(a1 + 2760)}];
    }

LABEL_10:
    objc_autoreleasePoolPop(v3);
    return 255;
  }

  return result;
}

void sub_100141BA4(_BYTE *a1, int a2)
{
  if (a1)
  {
    if (a1[2761])
    {
      if (a2 != 255)
      {
        a1[2760] = (a1[2760] + 1) % 0xA;
        ++a1[1312];
        a1[2761] = 0;
        return;
      }

      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:2 message:{"%s: recordIdx invalid", "__WiFiLQAMgrFinishCurLQAMetricsRecord"}];
      }

      v4 = v5;
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: curRecord %d is not busy", "__WiFiLQAMgrFinishCurLQAMetricsRecord", a1[2760]}];
      }

      v4 = v3;
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_100141CA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100141ADC(v2);
  if (v3 != 255)
  {
    v12 = v3;
    sub_100141BA4(*(a1 + 32), v3);
    v13 = v2 + 144 * v12;
    v14 = *(v13 + 1357);
    v2 = *(v13 + 1360);
    v15 = *(v13 + 1361);
    v16 = *(v13 + 1362);
    v17 = *(v13 + 1363);
    v18 = *(v13 + 1358);
    Current = CFAbsoluteTimeGetCurrent();
    v20 = *(a1 + 32);
    v21 = 0.0;
    if (*(v20 + 2768) == 1)
    {
      v21 = Current - *(v20 + 2776);
    }

    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v23 = v14 | (2 * v2) | (4 * v15) | (8 * v16) | (16 * v17) | (v18 << 6);
      v2 = v22;
      [off_100298C40 WFLog:3 message:{"%s: TrgDiscStatus %u [Rssi %d TxFrms %ld TxFail %ld TxRet %ld fwFrms %ld fwFail %ld fwRtry %ld RxFrms %ld BcnSch %ld BcnRx %ld PrSent %ld PrFail %ld Awd %ld initPr %ld UnGw %f FgApp %ld SympScore %ld UsrInput %ld]", "__WiFiLQAMgrTrgDiscUsrNotificationCallback_block_invoke", v23, *(v13 + 1356), *(v13 + 1320), *(v13 + 1324), *(v13 + 1328), *(v13 + 1340), *(v13 + 1344), *(v13 + 1348), *(v13 + 1352), *(v13 + 1332), *(v13 + 1336), 0, 0, *(v13 + 1372), 0, *&v21, *(v13 + 1364), *(v13 + 1368), *(v13 + 1359)}];
      v22 = v2;
    }

    objc_autoreleasePoolPop(v22);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 1296))
  {
    if (*(v4 + 20))
    {
      if (*(v4 + 652))
      {
        v5 = *(a1 + 40) & 3;
        v6 = objc_autoreleasePoolPush();
        v7 = sub_100008340();
        if (v5 == 1)
        {
          if (v7)
          {
            [v7 WFLog:4 message:{"%s: UserCancelled Trigger Disconnect", "__WiFiLQAMgrTrgDiscUsrNotificationCallback_block_invoke"}];
          }

          objc_autoreleasePoolPop(v2);
          *(*(a1 + 32) + 1304) = 1;
        }

        else
        {
          if (v7)
          {
            [v7 WFLog:4 message:{"%s: User Response %d", "__WiFiLQAMgrTrgDiscUsrNotificationCallback_block_invoke", *(a1 + 40) & 3}];
          }

          objc_autoreleasePoolPop(v2);
          v24 = *(a1 + 32);
          *(v24 + 2836) = 11;
          sub_10013D1C4(v24);
        }

        goto LABEL_9;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = sub_100008340();
      if (v28)
      {
        [v28 WFLog:4 message:{"%s: AskTo TrigDisc is FALSE", "__WiFiLQAMgrTrgDiscUsrNotificationCallback_block_invoke"}];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = sub_100008340();
      if (v26)
      {
        [v26 WFLog:4 message:{"%s: TDUsr Callback in UnassociatedState", "__WiFiLQAMgrTrgDiscUsrNotificationCallback_block_invoke"}];
      }
    }

    objc_autoreleasePoolPop(v2);
  }

LABEL_9:
  v8 = *(a1 + 32);
  if (*(v8 + 1280))
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, *(*(a1 + 32) + 1280), kCFRunLoopDefaultMode);
    v8 = *(a1 + 32);
  }

  v10 = *(v8 + 1296);
  if (v10)
  {
    CFRelease(v10);
    *(*(a1 + 32) + 1296) = 0;
    v8 = *(a1 + 32);
  }

  v11 = *(v8 + 1280);
  if (v11)
  {
    CFRelease(v11);
    *(*(a1 + 32) + 1280) = 0;
    v8 = *(a1 + 32);
  }

  *(v8 + 169) = 0;
}

void sub_100141F48(int a1, CFArrayRef theArray, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  valuePtr = 0;
  if (a4 && *(a4 + 648))
  {
    *(a4 + 364) = 0;
    ++*(a4 + 368);
    if (a3)
    {
      v28 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Active Probe gave an error %ld", "__WiFiLQAMgrActiveProbeResultCallBack", a3}];
      }
    }

    else if (theArray)
    {
      if (CFArrayGetCount(theArray))
      {
        v6 = sub_10000836C();
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        Value = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrNumProbesSent");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
        }

        v10 = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrNumProbesFail");
        if (v10)
        {
          CFNumberGetValue(v10, kCFNumberCFIndexType, &v30);
        }

        if (*(a4 + 400))
        {
          v11 = 3000000000;
        }

        else
        {
          v11 = 10000000000;
        }

        if (*(a4 + 20) != 3)
        {
          v15 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10002AC9C();
            if (!v19 & v18)
            {
              v20 = @"Bogus";
            }

            else
            {
              v20 = *(&off_10025F018 + v17);
            }

            [v16 WFLog:4 message:{"%s: Called from lqaState: %@", "__WiFiLQAMgrActiveProbeResultCallBack", v20}];
          }

          goto LABEL_30;
        }

        v12 = valuePtr;
        if (valuePtr)
        {
          *(a4 + 2836) = 9;
          if (sub_100046718(a4, v12, v30))
          {
            v27 = sub_100008684();
            sub_10013D1C4(v27);
            return;
          }

          v13 = *(a4 + 344);
          v14 = dispatch_time(0, v11);
          sub_10002DC58(v14);
          *(a4 + 20) = 2;
          v15 = objc_autoreleasePoolPush();
          if (!off_100298C40)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: LQA mgr No Probes sent\n", "__WiFiLQAMgrActiveProbeResultCallBack"}];
          }

          objc_autoreleasePoolPop(v21);
          v22 = *(a4 + 344);
          v23 = dispatch_time(0, v11);
          sub_10002DC58(v23);
          *(a4 + 20) = 2;
          v15 = objc_autoreleasePoolPush();
          if (!off_100298C40)
          {
            goto LABEL_30;
          }
        }

        sub_10002AC9C();
        if (!v19 & v18)
        {
          v26 = @"Bogus";
        }

        else
        {
          v26 = *(&off_10025F018 + v25);
        }

        [v24 WFLog:3 message:{"%s: %@", "__WiFiLQAMgrSetState", v26}];
LABEL_30:
        objc_autoreleasePoolPop(v15);
        return;
      }

      v28 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: zero elements in probeResultRef", "__WiFiLQAMgrActiveProbeResultCallBack", v29}];
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: probeResultRef is null", "__WiFiLQAMgrActiveProbeResultCallBack", v29}];
      }
    }

    objc_autoreleasePoolPop(v28);
  }
}

void sub_100142248(uint64_t a1)
{
  if (!&_managed_event_fetch)
  {
    return;
  }

  if (!a1)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "__WiFiLQAMgrSymptomsDNSFailureInputCallBack"}];
    }

    goto LABEL_25;
  }

  v2 = *(a1 + 20);
  if (v2 == 1)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Trigger Disconnect in GoodLinkState", "__WiFiLQAMgrSymptomsDNSFailureInputCallBack"}];
    }

    goto LABEL_25;
  }

  if (!v2)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Trigger Disconnect in UnassociatedState", "__WiFiLQAMgrSymptomsDNSFailureInputCallBack"}];
    }

LABEL_25:
    v11 = v10;
    goto LABEL_29;
  }

  if (*(a1 + 2804) < -84)
  {
    ++*(a1 + 496);
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Symptoms Notification, failcredits %d", "__WiFiLQAMgrSymptomsDNSFailureInputCallBack", *(a1 + 496)}];
    }

    objc_autoreleasePoolPop(v3);
    v4 = *(a1 + 16);
    if (v4 == 1)
    {
      v5 = sub_100008684();
      if (sub_100046718(v5, v6, 0))
      {
        v9 = sub_100008684();
        sub_10013D1C4(v9);
      }

      v4 = *(a1 + 16);
    }

    if (v4 == 2)
    {
      sub_10004A508(a1);
    }

    if (*(a1 + 524) == *(a1 + 528))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);

      sub_100064634(v7, v8, 3);
    }

    return;
  }

  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Discarding DNS symptom in rssi %d", "__WiFiLQAMgrSymptomsDNSFailureInputCallBack", *(a1 + 2804)}];
  }

  v11 = v12;
LABEL_29:

  objc_autoreleasePoolPop(v11);
}

void sub_100142454()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create roamTimer", "WiFiLQAMgrCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001424B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create activeProbe.timer", "WiFiLQAMgrCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142520()
{
  sub_100008C40();
  v3 = *(v2 + 304);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = v0[69];
  if (v4)
  {
    dispatch_release(v4);
    v0[69] = 0;
  }

  v5 = v0[43];
  if (v5)
  {
    dispatch_release(v5);
    v0[43] = 0;
  }

  v6 = v0[364];
  if (v6)
  {
    dispatch_release(v6);
    v0[364] = 0;
  }

  v7 = v0[366];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v1)
  {
    CFRelease(*v1);
    *v1 = 0;
  }

  v8 = v0[41];
  if (v8)
  {
    CFRelease(v8);
    v0[41] = 0;
  }

  v9 = v0[15];
  if (v9)
  {
    CFRelease(v9);
    v0[15] = 0;
  }

  v10 = v0[8];
  if (v10)
  {
    CFRelease(v10);
    v0[8] = 0;
  }

  CFRelease(v0);
}

void sub_1001425D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQA mgr is null", "__WiFiLQAMgrActiveProbeTimerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014263C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQA mgr is null", "__WiFiLQAMgrTrafficEngTimerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001426A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrSetXCTestMode"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142714(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, systemPowerOn was set to %d", "WiFiLQAMgrSetSystemWakeState", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100142784()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrSetSystemWakeState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001427F0(void *context)
{
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "__WiFiLQAMgrTrafficEngInvalidateRapportDiscovery"}];
  }

  objc_autoreleasePoolPop(context);
}

void sub_100142858()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrSetAppNetworkUsageState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001428C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: probeSizeArr is NULL", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142924()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: probeSizeDefRef is NULL", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142984()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: numProbesDefRef is NULL", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001429E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: probeHandle is NULL or incorrect type", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142A50()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Ignoring diagnostic probe in unassociated state and submitting empty metric", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142ABC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, Triggered Disconnect Callback is NULL", "WiFiLQAMgrRegisterTriggerDisconnectCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142B28()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrRegisterTriggerDisconnectCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142B94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrRegisterTDConfirmedCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142C00()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, GetApEnvironment Callback is NULL", "WiFiLQAMgrRegisterGetAPEnvironmentCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142C6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrRegisterGetAPEnvironmentCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142CD8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: lqaMgr null", "WiFiLQAMgrCopyColocatedScopeSsids"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142D9C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManager: Latest LQM Report is NULL", "__WiFiLQAMgrMonitorBeaconPER"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142DFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM table is NULL", "__WiFiLQAMgrMonitorBeaconPER"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142E5C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s LqmSampleLocalTimestamp Value is NULL at index:%ld!", "__WiFiLQAMgrAddLQMEntry", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100142EC0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s LqmSampleLocalTimestamp numberRef is NULL at index:%ld!", "__WiFiLQAMgrAddLQMEntry", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100142F24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM Report at %ld index is NULL", "__WiFiLQAMgrAddLQMEntry", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100142F88()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManager: CFNumberCreate for timestamp failed", "__WiFiLQAMgrAddLQMEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100142FE8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManager: CFDictionaryCreateMutableCopy failed", "__WiFiLQAMgrAddLQMEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143054()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM table is NULL", "__WiFiLQAMgrAddLQMEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001430C0(double a1)
{
  sub_100008C40();
  v5 = 0.0;
  if (*(v4 + 653) && *(v1 + 654) && *(v1 + 3257) && (Current = CFAbsoluteTimeGetCurrent(), [0 lastRoamStatusTs], v5 = Current - v7, v5 < 6.0))
  {
    v8 = [0 didLastRoamSucceed] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s didRoamFail: %d, lastRoamAge: %2.2f", "__WiFiLQAMgrRecentRoamFail", v8, *&v5}];
  }

  objc_autoreleasePoolPop(v9);
  if ((v8 & 1) != 0 || *v2 == 0.0 || a1 > *(v1 + 696))
  {
    return 1;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = sub_10001D1AC();
  if (v12)
  {
    [v12 WFLog:3 message:{"%s: Bypassed, Link established just before %2.2f secs", "__WiFiLQAMgrCheckTriggerDisconnect", *&a1}];
  }

  objc_autoreleasePoolPop(v1);
  return 0;
}

void sub_1001431F0(unsigned __int8 *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"%s: curRecord %d is busy", "__WiFiLQAMgrGetNextLQAMetricsRecordIdx", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100143258(unsigned __int8 *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Err total records %d", "__WiFiLQAMgrGetNextLQAMetricsRecordIdx", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001432C0(unsigned __int8 *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Invalid curRecord %d", "__WiFiLQAMgrGetNextLQAMetricsRecordIdx", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100143328()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"%s: LQA is disabled", "__WiFiLQAMgrCheckTriggerDisconnect"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143394()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQAMgrRef is null", "__WiFiLQAMgrCheckTriggerDisconnect"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143400()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: curNetwork is NULL", "__WiFiLQAMgrGetCurBssid"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014346C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: txStatsRef is null", "WiFiLQAMgrLqmTxNotify"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001434D8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "WiFiLQAMgrTrgDiscPnoRssiThres"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143544()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: rssi is 0", "WiFiLQAMgrAllowNetworkForAutoJoinLegacy"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001435B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is NULL", "WiFiLQAMgrAllowNetworkForAutoJoinLegacy"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014361C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "WiFiLQAMgrAllowNetworkForAutoJoinLegacy"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143688()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "WiFiLQAMgrForegroundAppUsesWiFi"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001436F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"ERROR: %s: LQM table is empty", "__WiFiLQAMgrIsIntervalChangeAllowed"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143760()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"ERROR: %s: LQM table is NULL", "__WiFiLQAMgrIsIntervalChangeAllowed"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001437CC(uint64_t a1, _DWORD *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Disabling Rapid LQM", "WiFiLQAMgrSetLQMInterval"}];
  }

  objc_autoreleasePoolPop(v4);
  result = sub_10013CFC8(a1, 5.0);
  *a2 = result;
  return result;
}

void sub_10014384C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: WiFiLQAMgrRef is NULL", "WiFiLQAMgrSetLQMInterval"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001438B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Failed to create CFData", "WiFiLQAMgrCaptureInstantaneousLQForMetricsReporting"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143918()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQAManager: LQM table is empty", "WiFiLQAMgrCaptureInstantaneousLQForMetricsReporting"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143984()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: WiFiLQAMgrRef is NULL", "WiFiLQAMgrCaptureInstantaneousLQForMetricsReporting"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001439F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: CFData not allocated", "WiFiLQAMgrGetInstantaneousLQForMetricsReporting"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143A5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: WiFiLQAMgrRef is NULL", "WiFiLQAMgrGetInstantaneousLQForMetricsReporting"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143AC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: coalescedUndispatchedLQMEvent create failed", "WiFiLQAMgrCoalesceUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143B34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: lqmDictCopy is NULL", "WiFiLQAMgrCoalesceUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143BA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: lqmDict is NULL", "WiFiLQAMgrCoalesceUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143C0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: WiFiLQAMgrRef is NULL", "WiFiLQAMgrCoalesceUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143C78()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: WiFiLQAMgrRef is NULL", "WiFiLQAMgrAwdlRealTimeModeStatus"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143CE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: WiFiLQAMgrRef is NULL", "WiFiLQAMgrResetCoalescedUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100143DA8(uint64_t a1, uint64_t a2, char *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (!sub_1000141C0(a2, a1))
  {
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Failed to extract metrics from Lqm, exiting!", "__WiFiLQAMgrCheckReassocRequiredMacStatsBased"}];
    }

    goto LABEL_30;
  }

  if (*(a2 + 2804) <= -66)
  {
    if (!*(a2 + 2842))
    {
      v7 = *(a1 + 44);
      v8 = *(a1 + 45);
      v9 = v7 - v8;
      if (v7 <= v8 || !*(a2 + 936) || *(a2 + 937) > v9)
      {
        goto LABEL_39;
      }

      v10 = 0;
      v11 = *a1;
      v12 = *(a1 + 4);
      v13 = v12;
      v14 = (a2 + 744);
      v15 = 1;
      while (!*(v14 - 12) || v12 < *(v14 - 2) || (*(v14 - 1) * v13) > v11 || *(a1 + 8) <= *v14 * v12)
      {
        v15 = v10 < 3;
        v14 += 4;
        if (++v10 == 4)
        {
          v16 = 0;
          goto LABEL_14;
        }
      }

      v16 = 1;
LABEL_14:
      if (*(a2 + 876) && (v17 = *(a1 + 28), v17 > *(a2 + 880)) && ((1.0 - *(a2 + 884)) * v17) > *(a1 + 32) && (v12 < *(a2 + 888) || (*(a2 + 892) * v13) <= v11))
      {
        v18 = 1;
        *(a2 + 2832) = 1;
      }

      else
      {
        v18 = 0;
      }

      v19 = 0;
      v20 = *(a1 + 20);
      v21 = (a2 + 812);
      v22 = 1;
      while (!*(v21 - 16) || v20 < *(v21 - 3) || (*(v21 - 2) * v20) > *(a1 + 16) || v12 >= *(v21 - 1) && (*v21 * v13) > v11)
      {
        v22 = v19 < 3;
        v21 += 5;
        if (++v19 == 4)
        {
          v23 = 0;
          goto LABEL_32;
        }
      }

      v23 = 1;
LABEL_32:
      v26 = 0.0;
      if (*(a2 + 2768) == 1)
      {
        v26 = Current - *(a2 + 2776);
      }

      v27 = *(a2 + 912) && (v26 >= *(a2 + 920));
      if (((v15 | v18 | v22) & 1) == 0 && !v27)
      {
        goto LABEL_39;
      }

      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v28 = v23;
        v25 = 1;
        [off_100298C40 WFLog:4 message:{"%s: isReassocRequired:%d cca:%d txPerDecision:%d bcnPerDecision:%d fwPerDecision:%d gwArpDecision:%d", "__WiFiLQAMgrCheckReassocRequiredMacStatsBased", 1, v9, v16, v18, v28, v27}];
      }

      else
      {
        v25 = 1;
      }

LABEL_43:
      objc_autoreleasePoolPop(v24);
      goto LABEL_44;
    }

    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: isAwdlRealTimeModeActive", "__WiFiLQAMgrCheckReassocRequiredMacStatsBased"}];
    }

LABEL_30:
    v25 = 0;
    goto LABEL_43;
  }

LABEL_39:
  v25 = 0;
LABEL_44:
  *a3 = v25;
}

void sub_1001440CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "__WiFiLQAMgrCheckReassocRequiredMacStatsBased"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144138()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Fast Disconnect not enabled", "__WiFiLQAMgrShouldPerformFastDisconnect"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001441A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Fast Disconnect not supported on CarPlay/Personal Hotspot networks", "__WiFiLQAMgrShouldPerformFastDisconnect"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144210()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Fast Disconnect not triggered - FaceTime call active", "__WiFiLQAMgrShouldPerformFastDisconnect"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014427C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Fast Disconnect not triggered - neither realtime app active nor cheap 5g available", "__WiFiLQAMgrShouldPerformFastDisconnect"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001442E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManager: Latest LQM Report is NULL", "__WiFiLQAMgrDetectPoor24GHzLink"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144348()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to extract metrics from LQM, exiting!", "__WiFiLQAMgrShouldPerformFastDisconnect"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001443A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQAMgrRef is null", "__WiFiLQAMgrShouldPerformFastDisconnect"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144414()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Null probe size or Null probeSizeRef", "__WiFiLQAMgrDoActiveProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144474()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQA mgr is disabled", "__WiFiLQAMgrDoActiveProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001444E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: errRef is null", "__WiFiLQAMgrDoDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144540()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: probeResult is null", "__WiFiLQAMgrDoDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001445A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: numProbes is null", "__WiFiLQAMgrDoDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144600()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Probe Options is null", "__WiFiLQAMgrDoDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144660()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: resultArrRef is null", "__WiFiLQAMgrDoDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001446CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Probe Context is null", "__WiFiLQAMgrDoDiagnosticProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144738(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = (a3 + 48);
  do
  {
    v8 = CFDateCreate(0, *(v7 - 3));
    v9 = CFLocaleCreate(0, @"en_US");
    v10 = CFDateFormatterCreate(0, v9, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
    StringWithDate = CFDateFormatterCreateStringWithDate(0, v10, v8);
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v22 = *(v7 - 1);
      v23 = *(v7 - 2);
      v21 = *(v7 - 4);
      v20 = *(v7 - 5);
      sub_10004B898();
      [v13 WFLog:? message:?];
    }

    objc_autoreleasePoolPop(v12);
    if (*v7)
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Symptoms Event Details: %@", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback_block_invoke", *v7}];
      }

      objc_autoreleasePoolPop(v14);
    }

    v15 = *a2;
    switch(*(v7 - 2))
    {
      case 1:
        ++*(v15 + 480);
        *(v15 + 2836) = 4;
        v16 = 1;
        v17 = 4;
        break;
      case 2:
        *(v15 + 2836) = 2;
        v16 = 1;
        v17 = 2;
        break;
      case 3:
        ++*(v15 + 464);
        v16 = 1;
        *(v15 + 516) = 1;
        *(v15 + 2836) = 3;
        v17 = 1;
        break;
      case 4:
        ++*(v15 + 484);
        *(v15 + 2836) = 5;
        v16 = 1;
        v17 = 5;
        break;
      case 7:
        ++*(v15 + 492);
        *(v15 + 2836) = 6;
        v16 = 1;
        v17 = 3;
        break;
      default:
        v16 = 0;
        v17 = 0;
        ++*(v15 + 488);
        break;
    }

    v18 = sub_100141ADC(v15);
    if (v18 != 255)
    {
      *(*a2 + 144 * v18 + 1372) = *(v7 - 2);
    }

    v19 = v16 ^ 1;
    if (!a1)
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      [a1 addFaultEvent:v17 forInterface:*(*a2 + 40)];
    }

    CFRelease(v8);
    CFRelease(v9);
    CFRelease(v10);
    CFRelease(StringWithDate);
    v7 += 7;
    --a4;
  }

  while (a4);
}

void sub_1001449C0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Ignore SymptomFmwk Event when WiFi-Assist enabled ", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback_block_invoke"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144A2C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Ignore SymptomFmwk Event ", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback_block_invoke"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144A98()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"%s: Ignore SymptomFmwk Event in MacStatsBased Mode", "__WiFiLQAMgrTriggetDisconnectSymptomsCallback_block_invoke"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144C78(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "__WiFiCloudSyncAddNetworkToPlist"}];
  }

  objc_autoreleasePoolPop(v4);
  if (a2)
  {
    if (sub_10000EEE0(a2))
    {
      sub_10000834C();
      v8 = 3221225472;
      v9 = sub_10004DA10;
      v10 = &unk_10025EE08;
      v11 = a1;
      v12 = a2;
      dispatch_sync(v5, block);
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null queue", "__WiFiCloudSyncAddNetworkToPlist"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

void sub_100144D88(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "__WiFiCloudSyncRemoveNetworkFromPlist"}];
  }

  objc_autoreleasePoolPop(v4);
  if (a2)
  {
    if (sub_10000EEE0(a2))
    {
      sub_10000834C();
      v8 = 3221225472;
      v9 = sub_10004DA1C;
      v10 = &unk_10025EE08;
      v11 = a1;
      v12 = a2;
      dispatch_sync(v5, block);
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null queue", "__WiFiCloudSyncRemoveNetworkFromPlist"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

void sub_100144E98()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null syncEngine", "WiFiCloudSyncInitSyncEngine"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144F04()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiCloudSyncInitSyncEngine"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100144F70(void ***block, void **a2, void **a3, dispatch_queue_t queue)
{
  *block = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DA28;
  block[3] = &unk_10025EFD8;
  block[4] = a2;
  block[5] = a3;
  dispatch_sync(queue, block);
}

void sub_100144FD8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null syncEngine", "WiFiCloudSyncAddNetworkToCloud"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100145044()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null syncEngine", "WiFiCloudSyncRemoveNetworkFromCloud"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001450B0(const void *a1)
{
  if (a1)
  {
    if (qword_1002984F8)
    {
      if (*(qword_1002984F8 + 32))
      {
        v2 = malloc_type_malloc(0x570uLL, 0x1030040EF99E315uLL);
        if (!v2)
        {
          return;
        }

        v3 = v2;
        bzero(v2, 0x570uLL);
        v3[1] = CFAbsoluteTimeGetCurrent();
        *v3 = a1;
        CFRetain(a1);
        *(v3 + 88) = sub_10009A7C8(kCFAllocatorDefault, 10, 216);
        bzero(v3 + 61, 0xD8uLL);
        *(v3 + 89) = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
        CFArrayAppendValue(*(qword_1002984F8 + 32), v3);
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s # %ld", "WiFiMetricsManagerRegisterDevice", CFArrayGetCount(*(qword_1002984F8 + 32))}];
        }
      }

      else
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: null deviceMetricsArray !!", "WiFiMetricsManagerRegisterDevice", v5}];
        }
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null metrics !!", "WiFiMetricsManagerRegisterDevice", v5}];
      }
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device !!", "WiFiMetricsManagerRegisterDevice", v5}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100145284(const void *a1)
{
  if (a1)
  {
    if (qword_1002984F8)
    {
      v2 = *(qword_1002984F8 + 32);
      if (v2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
        if (ValueAtIndex)
        {
          v4 = ValueAtIndex;
          v5 = *ValueAtIndex;
          if (v5)
          {
            if (v5 == a1)
            {
              CFRelease(v5);
            }

            v6 = v4[88];
            if (v6)
            {
              CFRelease(v6);
              v4[88] = 0;
            }

            v7 = v4[89];
            if (v7)
            {
              CFRelease(v7);
              v4[89] = 0;
            }

            CFArrayRemoveValueAtIndex(*(qword_1002984F8 + 32), 0);

            free(v4);
          }
        }

        return;
      }

      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null deviceMetricsArray !!", "WiFiMetricsManagerUnRegisterDevice"}];
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null metrics !!", "WiFiMetricsManagerUnRegisterDevice"}];
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device !!", "WiFiMetricsManagerUnRegisterDevice"}];
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_100145404()
{
  sub_100029ED0();
  v1 = objc_autoreleasePoolPush();
  if (v0 && objc_opt_class())
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s", "WiFiMetricsManagerCreate"}];
    }

    objc_autoreleasePoolPop(v2);
    if (!qword_100298500)
    {
      pthread_once(&stru_1002977F8, sub_1000576D8);
    }

    Instance = _CFRuntimeCreateInstance();
    qword_1002984F8 = Instance;
    if (Instance)
    {
      Instance[4] = 0u;
      Instance[5] = 0u;
      Instance[2] = 0u;
      Instance[3] = 0u;
      Instance[1] = 0u;
      Current = CFAbsoluteTimeGetCurrent();
      v5 = qword_1002984F8;
      *(qword_1002984F8 + 24) = Current;
      *(v5 + 16) = v0;
      *(v5 + 80) = Current;
      *(v5 + 88) = 0;
      v6 = MGGetBoolAnswer();
      v7 = qword_1002984F8;
      *(qword_1002984F8 + 40) = v6;
      *(v7 + 48) = 0;
      dispatch_async(qword_100298C50, &stru_10025F138);
      memset(&callBacks, 0, sizeof(callBacks));
      v8 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &callBacks);
      v9 = qword_1002984F8;
      *(qword_1002984F8 + 32) = v8;
      if (v8)
      {
        *(v9 + 72) = qword_100298C50;
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: null metrics->deviceMetricsArray !!", "WiFiMetricsManagerCreate"}];
        }

        objc_autoreleasePoolPop(v12);
      }
    }
  }

  v10 = qword_1002984F8;
  objc_autoreleasePoolPop(v1);
  return v10;
}

void sub_1001455B4()
{
  sub_10000D798();
  if (v0 && (v1 = v0, (v2 = malloc_type_malloc(3uLL, 0x100004033FC2DF1uLL)) != 0))
  {
    v3 = v2;
    *v2 = *v1;
    v2[2] = *(v1 + 2);
    v4 = objc_autoreleasePoolPush();
    v5 = objc_autoreleasePoolPush();
    if (objc_opt_class())
    {
      v6 = [WAMessage alloc];
      v7 = [v6 initWithMetricName:kWAMessageMetricNameHotspotTransportUsed options:1];
      if (v7)
      {
        v8 = v7;
        sub_100008378([NSNumber numberWithUnsignedChar:*v3]);
        sub_100008378([NSNumber numberWithUnsignedChar:v3[1]]);
        sub_100008378([NSNumber numberWithUnsignedChar:v3[2]]);
        sub_10004E4C4(v8);
      }

      else
      {
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"%s: Failed to alloc WAMessage for HotspotTransportType"];
        }

        objc_autoreleasePoolPop(v11);
      }
    }

    objc_autoreleasePoolPop(v5);
    objc_autoreleasePoolPop(v4);
    sub_1000084B8();

    free(v9);
  }

  else
  {
    sub_1000084B8();
  }
}

void sub_10014573C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  if (objc_opt_class())
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current != 0.0)
    {
      v9 = Current;
      v10 = sub_100062DBC(a1);
      if (v10 != 0.0 && v9 > v10)
      {
        v12 = v10;
        sub_100062DD0(a1, 0.0);
        if (a4)
        {
          *a4 = ((v9 - v12) * 1000.0);
          *(a4 + 2) = sub_10009F418(a2);
          a4[2] = a3;
          v13 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = *a4;
            v15 = *(a4 + 2);
            v16 = a4[2];
            v17 = 136447234;
            v18 = "void WiFiMetricsManagerFillIPv4DHCPLatency(WiFiDeviceRef, WiFiNetworkRef, uint32_t, WiFiMetricsManagerIPv4DHCPLatency *)";
            v19 = 1024;
            v20 = 878;
            v21 = 1024;
            v22 = v14;
            v23 = 1024;
            v24 = v15;
            v25 = 1024;
            v26 = v16;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:dhcpLatencyMetrics: dhcpLatencyMilliSecs (%d), securityType (%X), dhcpLeaseMins:%d", &v17, 0x24u);
          }
        }
      }
    }
  }
}

void sub_1001458A0(uint64_t a1, const void *a2, unsigned __int8 *a3)
{
  v7 = objc_autoreleasePoolPush();
  if (!objc_opt_class())
  {
    goto LABEL_16;
  }

  if (!a1)
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (!sub_10000FC04(v20))
    {
      goto LABEL_16;
    }

    sub_100007520("void __WiFiMetricsManagerUpdateDBWithJoinOrLeave(WiFiDeviceRef, WiFiNetworkRef, WiFiMetricsManagerLinkChangeData *)");
    v36 = 4250;
    v21 = "%{public}s::%d:null device";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, v21, buf, 0x12u);
    goto LABEL_16;
  }

  if (!a3)
  {
    v22 = WALogCategoryDeviceStoreHandle();
    if (!sub_10000FC04(v22))
    {
      goto LABEL_16;
    }

    sub_100007520("void __WiFiMetricsManagerUpdateDBWithJoinOrLeave(WiFiDeviceRef, WiFiNetworkRef, WiFiMetricsManagerLinkChangeData *)");
    v36 = 4251;
    v21 = "%{public}s::%d:wifiLinkChangeDataMetric null";
    goto LABEL_25;
  }

  v3 = sub_10000A878(a2);
  v8 = sub_10000A540(a2, @"BSSID");
  if (!v8)
  {
    v23 = WALogCategoryDeviceStoreHandle();
    if (!sub_10000FC04(v23))
    {
      goto LABEL_16;
    }

    sub_100007520("void __WiFiMetricsManagerUpdateDBWithJoinOrLeave(WiFiDeviceRef, WiFiNetworkRef, WiFiMetricsManagerLinkChangeData *)");
    v36 = 4256;
    v21 = "%{public}s::%d:null bssid";
    goto LABEL_25;
  }

  if (!v3)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (!sub_10000FC04(v24))
    {
      goto LABEL_16;
    }

    sub_100007520("void __WiFiMetricsManagerUpdateDBWithJoinOrLeave(WiFiDeviceRef, WiFiNetworkRef, WiFiMetricsManagerLinkChangeData *)");
    v36 = 4257;
    v21 = "%{public}s::%d:null ssid";
    goto LABEL_25;
  }

  v9 = v8;
  v32 = -21846;
  v31 = 0;
  v10 = sub_10008708C(*(qword_1002984F8 + 16), &v32, &v31);
  v11 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  v12 = *a3;
  v13 = WALogCategoryDeviceStoreHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12 == 1)
  {
    if (v14)
    {
      *buf = 136447490;
      v34 = "void __WiFiMetricsManagerUpdateDBWithJoinOrLeave(WiFiDeviceRef, WiFiNetworkRef, WiFiMetricsManagerLinkChangeData *)";
      v35 = 1024;
      v36 = 4268;
      v37 = 2160;
      v38 = 1752392040;
      v39 = 2112;
      v40 = v9;
      v41 = 2160;
      v42 = 1752392040;
      v43 = 2112;
      v44 = v3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:LinkUp: Preparing WADeviceAnalyticsEventJoinNetwork for %{mask.hash}@ [%{mask.hash}@]", buf, 0x3Au);
    }

    v15 = [objc_msgSend(+[WAClient sharedClient](WAClient "sharedClient")];
    v16 = +[NSDate now];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100057920;
    v28[3] = &unk_10025F230;
    v29 = v10;
    v30 = v32;
    v28[4] = v9;
    v28[5] = a3;
    v28[6] = a2;
    if (v15)
    {
      [v15 doubleValue];
      v18 = v17 < 1.0;
    }

    else
    {
      v18 = 0;
    }

    [v11 joinEventOnBssid:v9 ssid:v3 at:v16 with:v28 andDeferReclaimMem:0 andRunPostProcessing:v18];
  }

  else
  {
    if (v14)
    {
      *buf = 136446466;
      v34 = "void __WiFiMetricsManagerUpdateDBWithJoinOrLeave(WiFiDeviceRef, WiFiNetworkRef, WiFiMetricsManagerLinkChangeData *)";
      v35 = 1024;
      v36 = 4304;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:LinkDown: Preparing WADeviceAnalyticsEventLeaveNetwork", buf, 0x12u);
    }

    v19 = +[NSDate now];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100057A68;
    v25[3] = &unk_10025F250;
    v26 = v10;
    v27 = v32;
    v25[4] = a3;
    v25[5] = a1;
    [v11 leaveEventOnBssid:v9 ssid:v3 at:v19 with:v25];
  }

LABEL_16:
  objc_autoreleasePoolPop(v7);
}

void sub_100145CDC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int valuePtr, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10000D798();
  a18 = v19;
  a19 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (CFDictionaryContainsKey(v23, v21))
  {
    Value = CFDictionaryGetValue(v24, v22);
    if (Value)
    {
      v30 = Value;
      Count = CFArrayGetCount(Value);
      v32 = Count;
      if ((4 * Count) >= 0x50)
      {
        v33 = 80;
      }

      else
      {
        v33 = 4 * Count;
      }

      bzero(v28, v33);
      if (v32 >= 1)
      {
        for (i = 0; i != v32; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v30, i);
          valuePtr = 0;
          if (ValueAtIndex)
          {
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
            v36 = valuePtr;
          }

          else
          {
            v36 = 0;
          }

          *(v28 + i) = v36;
        }
      }

      *v26 = v32;
    }
  }

  sub_1000084B8();
}

void sub_100145DA8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (a2)
  {
    sub_100029ED0();
    v6 = objc_autoreleasePoolPush();
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    if (objc_opt_class())
    {
      v7 = [[WAEventRoamStatus alloc] initWithDriverEvent:v3 andDeviceCapabilities:sub_100064A64(v4)];
      [v7 setCcaTotal:*a3];
      [v7 setCcaOthers:a3[2]];
      [v7 setCcaInt:a3[3]];
      [v7 setOriginChannelScore:*(a3 + 16)];
      [v7 setOriginTxPer:*(a3 + 3)];
      [v7 setOriginBcnPer:*(a3 + 6)];
      [v7 setOriginFwTxPer:*(a3 + 7)];
      [v7 setAssociatedDur:*(a3 + 4)];
      [v7 setHostReason:*(a3 + 20)];
      [v7 setMotionState:*(a3 + 21)];
      [v7 setVoipActive:*(a3 + 44)];
      [v7 setLateRoam:*(a3 + 45)];
      if (v4)
      {
        sub_100057CA0(v4, &v14);
        [v7 setCcaHistory:v14];
        [v7 setRssiHistory:*(&v14 + 1)];
        [v7 setNoiseHistory:v15];
        [v7 setSnrHistory:*(&v15 + 1)];
        [v7 setTxPerHistory:v16];
        [v7 setTxFrameHistory:*(&v16 + 1)];
        [v7 setFwTxPerHistory:v17];
        [v7 setFwTxFramesHistory:*(&v17 + 1)];
        [v7 setBeaconSchedHistory:v18];
        [v7 setBeaconPerHistory:*(&v18 + 1)];
      }

      if (![v7 status] && objc_msgSend(v7, "targetBssid"))
      {
        [v7 setTargetApProfile:{+[WiFiUsageAccessPointProfile profileForBSSID:](WiFiUsageAccessPointProfile, "profileForBSSID:", objc_msgSend(v7, "targetBssid"))}];
      }

      v8 = [objc_msgSend(+[WAClient sharedClient](WAClient "sharedClient")];
      v9 = +[WAClient sharedClient];
      v10 = +[NSDate date];
      if (v8)
      {
        [v8 doubleValue];
        v12 = v11 < 1.0;
      }

      else
      {
        v12 = 0;
      }

      [v9 submitEvent:v7 at:v10 andDeferReclaimMem:0 andRunPostProcessing:v12 withError:&v19];
      if (v19)
      {
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: WAClient failed to process roamevent: %@", "__WiFiMetricsManagerUpdateDBWithRoamAndSubmitRoamStatus", v19}];
        }

        objc_autoreleasePoolPop(v13);
      }

      if (v7)
      {
      }
    }

    objc_autoreleasePoolPop(v6);
  }
}

uint64_t sub_100146060(uint64_t a1, CFDictionaryRef theDict)
{
  valuePtr = 0;
  value = 0;
  v71 = 0;
  if (!a1)
  {
    v51 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s received invalid type (%d)", "WiFiMetricsManagerCheckQueryableWatchdogInfo", 0}];
    }

    objc_autoreleasePoolPop(v51);
    return 0;
  }

  v4 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_FLAGS");
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr + 4);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  v70 = a1 - 1;
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v70);
  if (v8)
  {
    CFDictionarySetValue(v7, @"APPLE80211KEY_AWD_TRAP_TYPE", v8);
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v63 = v70;
    v64 = v7;
    v62 = "WiFiMetricsManagerCheckQueryableWatchdogInfo";
    [off_100298C40 WFLog:4 message:"%s requesting info type (%d) - trap dict: %@"];
  }

  objc_autoreleasePoolPop(v9);
  for (i = 6; ; --i)
  {
    v11 = Apple80211Get();
    v12 = v11;
    v13 = v11 == -3905 || v11 == 16;
    if (!v13 && v11 != 61 || !i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v11)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = sub_1000113E0();
    if (v53)
    {
      [v53 WFLog:4 message:{"%s Apple80211Get(APPLE80211_IOC_TRAP_INFO) failed: %d", "WiFiMetricsManagerCheckQueryableWatchdogInfo", v12}];
    }

    objc_autoreleasePoolPop(theDict);
    if (v12)
    {
      v54 = objc_autoreleasePoolPush();
      v55 = sub_1000113E0();
      if (v55)
      {
        [v55 WFLog:4 message:{"%s WiFiMetricsManagerCheckQueryableWatchdogInfo() finished with error: %d", "WiFiMetricsManagerCheckQueryableWatchdogInfo", v12}];
      }

      objc_autoreleasePoolPop(theDict);
    }

    goto LABEL_61;
  }

  CFDictionaryGetValueIfPresent(v7, @"TRAP_SEQUENECE_NUM", &value);
  if (!value)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = sub_1000113E0();
    if (v57)
    {
      [v57 WFLog:4 message:{"%s trap dict didn't contain a sequence number", "WiFiMetricsManagerCheckQueryableWatchdogInfo", v63, v64}];
    }

    goto LABEL_59;
  }

  CFNumberGetValue(value, kCFNumberSInt32Type, &v71);
  CFDictionaryGetValueIfPresent(theDict, @"DRIVER_AVAILABLE_TRAP_SEQUENCE", &value);
  if (!value)
  {
    v58 = objc_autoreleasePoolPush();
    v59 = sub_1000113E0();
    if (v59)
    {
      [v59 WFLog:4 message:{"%s driver availability didn't contain a sequence number", "WiFiMetricsManagerCheckQueryableWatchdogInfo", v63, v64}];
    }

    goto LABEL_59;
  }

  v14 = CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
  if (v71 != valuePtr)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = sub_1000113E0();
    if (v61)
    {
      [v61 WFLog:4 message:{"%s driver availability sequence (%u) vs trap dict sequence (%u) mismatch", "WiFiMetricsManagerCheckQueryableWatchdogInfo", valuePtr, v71}];
    }

    goto LABEL_59;
  }

  if (a1 == 2)
  {
    v69[0] = 10;
    do
    {
      v40 = sub_1000214CC(v14, v15, v16, v17, v18, v19, v20, v21, v62, v63, v64, v65, v66, v69[0]);
      if (v40)
      {
        v41 = v40;
        v42 = sub_100057F7C();
        if (CFDictionaryContainsKey(v42, v43))
        {
          v44 = sub_100057F7C();
          v46 = CFDictionaryGetValue(v44, v45);
          if (v46)
          {
            if ((*v69 - 10) <= 4)
            {
              sub_100015E28(v46, *v69 - 10);
            }
          }
        }

        CFRelease(v41);
      }

      sub_10001130C();
    }

    while (v47 < 0xF);
    if (CFDictionaryContainsKey(v7, @"TRAP_SEQUENECE_NUM"))
    {
      v5 = CFDictionaryGetValue(v7, @"TRAP_SEQUENECE_NUM");
    }

    if (v5)
    {
      CFDictionaryAddValue(theDict, @"DRIVER_AVAILABLE_JOIN_TIMEOUT_SEQUENCE", v5);
    }

    v38 = kCFBooleanTrue;
    v39 = @"DRIVER_AVAILABLE_HAVE_JOIN_TIMEOUT_INFO";
    goto LABEL_56;
  }

  if (a1 != 1)
  {
    v48 = objc_autoreleasePoolPush();
    v49 = sub_1000113E0();
    if (v49)
    {
      [v49 WFLog:4 message:{"%s unrecognized kWiFiMetricsManagerExtWatchDogInfoType (%d)", "WiFiMetricsManagerCheckQueryableWatchdogInfo", a1, v64}];
    }

LABEL_59:
    objc_autoreleasePoolPop(theDict);
    goto LABEL_60;
  }

  v67[0] = 1;
  do
  {
    v22 = sub_1000214CC(v14, v15, v16, v17, v18, v19, v20, v21, v62, v63, v64, v65, v66, v67[0]);
    if (v22)
    {
      v23 = v22;
      v24 = sub_100057F7C();
      if (CFDictionaryContainsKey(v24, v25))
      {
        v26 = sub_100057F7C();
        v28 = CFDictionaryGetValue(v26, v27);
        if (v28)
        {
          if ((*v67 - 1) <= 8)
          {
            sub_100015E28(v28, *v67 - 1);
          }
        }
      }

      CFRelease(v23);
    }

    sub_10001130C();
  }

  while (v29 < 0xA);
  v68[0] = 15;
  do
  {
    v30 = sub_1000214CC(v14, v15, v16, v17, v18, v19, v20, v21, v62, v63, v64, v65, v66, v68[0]);
    if (v30)
    {
      v31 = v30;
      v32 = sub_100057F7C();
      if (CFDictionaryContainsKey(v32, v33))
      {
        v34 = sub_100057F7C();
        v36 = CFDictionaryGetValue(v34, v35);
        if (v36)
        {
          if ((*v68 - 15) <= 3)
          {
            sub_100015E28(v36, *v68 - 15);
          }
        }
      }

      CFRelease(v31);
    }

    sub_10001130C();
  }

  while (v37 < 0x13);
  if (CFDictionaryContainsKey(v7, @"TRAP_SEQUENECE_NUM"))
  {
    v5 = CFDictionaryGetValue(v7, @"TRAP_SEQUENECE_NUM");
  }

  if (v5)
  {
    CFDictionaryAddValue(theDict, @"DRIVER_AVAILABLE_TRAP_SEQUENCE", v5);
  }

  v38 = kCFBooleanTrue;
  v39 = @"DRIVER_AVAILABLE_HAVE_EXT_TRAP";
LABEL_56:
  CFDictionaryAddValue(theDict, v39, v38);
LABEL_60:
  v12 = 0;
LABEL_61:
  CFRelease(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_100146540(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    sub_1000113F8();
    return;
  }

  if (!qword_1002984F8 || CFArrayGetCount(*(qword_1002984F8 + 32)) < 1)
  {
LABEL_20:
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s WiFiMetricsManagerRecordColocatedSSIDData: Failed to find WiFiMetricsDeviceMetricsRef for event", "WiFiMetricsManagerRecordColocatedSSIDData"}];
    }

    sub_1000113F8();

    objc_autoreleasePoolPop(v14);
    return;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(qword_1002984F8 + 32), v5);
    if (!ValueAtIndex)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_19;
      }

      v12 = "WiFiMetricsManagerGetDeviceMetricsFromInterfaceName: Couldn't get WiFiMetricsDeviceMetricsRef";
LABEL_18:
      [v11 WFLog:3 message:v12];
      goto LABEL_19;
    }

    v7 = ValueAtIndex;
    v8 = *ValueAtIndex;
    if (!v8)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_19;
      }

      v12 = "WiFiMetricsManagerGetDeviceMetricsFromInterfaceName: Couldn't get WiFiDeviceRef";
      goto LABEL_18;
    }

    v9 = sub_100006F88(v8);
    if (!v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = off_100298C40;
      if (off_100298C40)
      {
        v12 = "WiFiMetricsManagerGetDeviceMetricsFromInterfaceName: Couldn't get WiFiDevice ifname";
        goto LABEL_18;
      }

LABEL_19:
      objc_autoreleasePoolPop(v10);
      goto LABEL_10;
    }

    if (CFStringCompare(v9, a2, 0) == kCFCompareEqualTo)
    {
      break;
    }

LABEL_10:
    if (++v5 >= CFArrayGetCount(*(qword_1002984F8 + 32)))
    {
      goto LABEL_20;
    }
  }

  v16 = v7[89];
  if (a3)
  {
    sub_1000113F8();

    CFSetAddValue(v17, v18);
  }

  else
  {
    sub_1000113F8();

    CFSetRemoveAllValues(v20);
  }
}

void sub_100146724(double *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v4 = [WAMessage alloc];
    v5 = [v4 initWithMetricName:kWAMessageMetricNameSoftAP options:1];
    if (v5)
    {
      v6 = v5;
      sub_100008378([NSNumber numberWithInt:*a1]);
      sub_100008378([NSNumber numberWithInt:*(a1 + 1)]);
      sub_100008378([NSNumber numberWithInt:*(a1 + 2)]);
      sub_100008378([NSNumber numberWithDouble:a1[2]]);
      sub_100008378([NSNumber numberWithDouble:a1[3]]);
      sub_100008378([NSNumber numberWithDouble:a1[4]]);
      sub_100008378([NSNumber numberWithUnsignedShort:*(a1 + 20)]);
      sub_100008378([NSNumber numberWithUnsignedShort:*(a1 + 21)]);
      sub_100008378([NSNumber numberWithUnsignedShort:*(a1 + 22)]);
      sub_100008378([NSNumber numberWithUnsignedShort:*(a1 + 23)]);
      sub_100008378([NSNumber numberWithUnsignedLongLong:*(a1 + 6)]);
      sub_100008378([NSNumber numberWithUnsignedInt:*(a1 + 72)]);
      sub_100008378([NSNumber numberWithUnsignedInt:*(a1 + 88)]);
      sub_100008378([NSNumber numberWithDouble:a1[12]]);
      sub_100008378([NSNumber numberWithDouble:a1[13]]);
      v7 = (a1[13] - a1[12]) / 1000000.0;
      v8 = a1[4] - a1[2];
      v9 = v8 / 1000000.0;
      if (v8 / 1000000.0 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        *&v8 = v7;
        v10 = v9;
        *&v8 = *&v8 / v10;
        v11 = *&v8;
        sub_100008378([NSNumber numberWithFloat:v8]);
        v12 = v11;
      }

      sub_100008378([NSNumber numberWithDouble:v7]);
      sub_100008378([NSNumber numberWithUnsignedInt:*(a1 + 28)]);
      v13 = sub_100015E94(NSNumber, *(a1 + 160));
      sub_100008378(v13);
      sub_100008378([NSNumber numberWithUnsignedInt:*(a1 + 128)]);
      v14 = sub_100008378([NSNumber numberWithUnsignedInt:*(a1 + 144)]);
      if (*(a1 + 19))
      {
        sub_100008378([NSString stringWithString:?]);
        v17 = *(a1 + 19);
        if (v17)
        {
          CFRelease(v17);
          a1[19] = 0.0;
        }
      }

      else
      {
        v17 = sub_10000DAF0(v14, v15, 0, @"N/A");
      }

      if (*(a1 + 17))
      {
        sub_100008378([NSString stringWithString:?]);
        v19 = *(a1 + 17);
        if (v19)
        {
          CFRelease(v19);
          a1[17] = 0.0;
        }
      }

      else
      {
        v19 = sub_10000DAF0(v17, v16, 0, @"N/A");
      }

      if (*(a1 + 15))
      {
        sub_100008378([NSString stringWithString:?]);
        v21 = *(a1 + 15);
        if (v21)
        {
          CFRelease(v21);
          a1[15] = 0.0;
        }
      }

      else
      {
        v21 = sub_10000DAF0(v19, v18, 0, @"N/A");
      }

      if (*(a1 + 10))
      {
        sub_100008378([NSString stringWithString:?]);
        v22 = *(a1 + 10);
        if (v22)
        {
          CFRelease(v22);
          a1[10] = 0.0;
        }
      }

      else
      {
        sub_10000DAF0(v21, v20, 0, @"N/A");
      }

      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s nanPhPublisherFailureReason=%d nanPhNanStationCount=%d nanPhNanSessionStartTime=%f nanPhNanSessionEndTime=%f nanSessionTime=%f softapSessionTime=%f kWAMessageKeyNanPhNanSessionOverSoftApSessionTime=%f nanPhPublisherTeardownReason=%d awdlStartedWhileInSession=%d nanPhPublisherTerminateP2pReasonCode=%d nanPhPublisherDataSessionTerminateP2pReasonCode=%d", "__WiFiMetricsManagerWAMessageSubmitPHSessionMetric", *(a1 + 72), *(a1 + 88), *(a1 + 12), *(a1 + 13), *&v7, *&v9, *&v12, *(a1 + 28), *(a1 + 160), *(a1 + 128), *(a1 + 144)}];
      }

      objc_autoreleasePoolPop(v23);
      if (*(a1 + 14))
      {
        sub_100008378([NSNumber numberWithUnsignedLong:?]);
      }

      sub_100008378([NSNumber numberWithUnsignedLong:*(a1 + 15)]);
      v24 = sub_100015E94(NSNumber, *(a1 + 64));
      sub_100008378(v24);
      sub_100008378([NSNumber numberWithUnsignedLong:*(a1 + 17)]);
      sub_10004E4C4(v6);
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Failed to alloc WAMessage for SoftAPEvent", "__WiFiMetricsManagerWAMessageSubmitPHSessionMetric"}];
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  objc_autoreleasePoolPop(v3);
  objc_autoreleasePoolPop(v2);

  bzero(a1, 0xB8uLL);
}

double sub_100146CAC(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: PHClientMetric: failureReason=%ld rssi=%d isFamily=%d isAutoJoin=%d switchedToAnotherNetwork=%d enhancedSecurityType 0x%X nanPhClientSessionTime=%f nanPhSubscriberEndState=%d nanPhSubscriberDatapathEndState=%d  wifip2pdCrashWhileInNanPhSession=%d", "WiFiMetricsManagerSubmitPHClientMetric", *a1, a1[1], *(a1 + 8), *(a1 + 9), *(a1 + 10), a1[3], *(a1 + 3), a1[18], a1[10], *(a1 + 16)}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    if (a1)
    {
      v5 = [WAMessage alloc];
      v6 = [v5 initWithMetricName:kWAMessageMetricNameSoftAPClient options:1];
      if (v6)
      {
        v7 = v6;
        sub_100008378([NSNumber numberWithInteger:*a1]);
        sub_100008378([NSNumber numberWithUnsignedInt:a1[1]]);
        v8 = sub_100015E94(NSNumber, *(a1 + 8));
        sub_100008378(v8);
        v9 = sub_100015E94(NSNumber, *(a1 + 9));
        sub_100008378(v9);
        v10 = sub_100015E94(NSNumber, *(a1 + 10));
        sub_100008378(v10);
        sub_100008378([NSNumber numberWithUnsignedInt:a1[3]]);
        sub_100008378([NSNumber numberWithDouble:*(a1 + 3)]);
        sub_100008378([NSNumber numberWithDouble:*(a1 + 4)]);
        v11 = (*(a1 + 4) - *(a1 + 3)) / 1000000.0;
        sub_100008378([NSNumber numberWithDouble:v11]);
        sub_100008378([NSNumber numberWithUnsignedInt:a1[18]]);
        sub_100008378([NSNumber numberWithUnsignedInt:a1[10]]);
        v12 = sub_100015E94(NSNumber, *(a1 + 16));
        sub_100008378(v12);
        v13 = sub_100015E94(NSNumber, *(a1 + 104));
        sub_100008378(v13);
        sub_100008378([NSNumber numberWithUnsignedInt:a1[22]]);
        sub_100008378([NSNumber numberWithUnsignedInt:a1[14]]);
        v14 = sub_100015E94(NSNumber, *(a1 + 105));
        v15 = sub_100008378(v14);
        if (*(a1 + 12))
        {
          sub_100008378([NSString stringWithString:?]);
          v18 = *(a1 + 12);
          if (v18)
          {
            CFRelease(v18);
            *(a1 + 12) = 0;
          }
        }

        else
        {
          v18 = sub_10000DAF0(v15, v16, 0, @"N/A");
        }

        if (*(a1 + 10))
        {
          sub_100008378([NSString stringWithString:?]);
          v20 = *(a1 + 10);
          if (v20)
          {
            CFRelease(v20);
            *(a1 + 10) = 0;
          }
        }

        else
        {
          v20 = sub_10000DAF0(v18, v17, 0, @"N/A");
        }

        if (*(a1 + 8))
        {
          sub_100008378([NSString stringWithString:?]);
          v22 = *(a1 + 8);
          if (v22)
          {
            CFRelease(v22);
            *(a1 + 8) = 0;
          }
        }

        else
        {
          v22 = sub_10000DAF0(v20, v19, 0, @"SUCCESS");
        }

        if (*(a1 + 6))
        {
          sub_100008378([NSString stringWithString:?]);
          v23 = *(a1 + 6);
          if (v23)
          {
            CFRelease(v23);
            *(a1 + 6) = 0;
          }
        }

        else
        {
          sub_10000DAF0(v22, v21, 0, @"N/A");
        }

        v24 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s kWAMessageKeyNanPhClientSessionStartTime=%f kWAMessageKeyNanPhClientSessionEndTime=%f kWAMessageKeyNanPhClientSessionTime=%f kWAMessageKeyNanPhSubscriberEndState=%d nanPhSubscriberDatapathEndState=%d wifip2pdCrashWhileInNanPhSession=%d copresenceStartedDuringSession=%d nanPhClientTeardownReason=%d nanPhSubscriberStartError=%d awdlStartedDuringSession=%d", "__WiFiMetricsManagerWAMessageSubmitPHClientMetric", *(a1 + 3), *(a1 + 4), *&v11, a1[18], a1[10], *(a1 + 16), *(a1 + 104), a1[22], a1[14], *(a1 + 105)}];
        }

        objc_autoreleasePoolPop(v24);
        sub_10004E4C4(v7);

        goto LABEL_25;
      }

      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Failed to alloc WAMessage for SoftAPClient", "__WiFiMetricsManagerWAMessageSubmitPHClientMetric"}];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: pHClientMetric null", "__WiFiMetricsManagerWAMessageSubmitPHClientMetric"}];
      }
    }

    objc_autoreleasePoolPop(v26);
  }

LABEL_25:
  objc_autoreleasePoolPop(v4);
  objc_autoreleasePoolPop(v3);
  result = 0.0;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  return result;
}

void sub_100147190()
{
  sub_100029ED0();
  if ([WiFiLocationManager isLocationValid:v2 uptoSeconds:1 isHighAccuracy:60.0]&& objc_opt_class())
  {
    if (v0)
    {
      if (v1)
      {
        v3 = objc_autoreleasePoolPush();
        v4 = sub_10000A878(v1);
        v5 = sub_10000A540(v1, @"BSSID");
        if (v4)
        {
          v6 = v5;
          if (v5)
          {
            v7 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
            [v0 coordinate];
            v9 = v8;
            [v0 coordinate];
            [v7 geoTagEventOnBssid:v6 ssid:v4 lat:objc_msgSend(v0 lon:"timestamp") at:{v9, v10}];
LABEL_8:
            objc_autoreleasePoolPop(v3);
            return;
          }

          v13 = WALogCategoryDeviceStoreHandle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_8;
          }

          sub_100024ED8();
          v16 = 4145;
          v14 = "%{public}s::%d:bssid is NULL";
        }

        else
        {
          v13 = WALogCategoryDeviceStoreHandle();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_8;
          }

          sub_100024ED8();
          v16 = 4144;
          v14 = "%{public}s::%d:ssid is NULL";
        }

        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, v15, 0x12u);
        goto LABEL_8;
      }

      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100024ED8();
        v16 = 4138;
        v12 = "%{public}s::%d:network null";
        goto LABEL_14;
      }
    }

    else
    {
      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100024ED8();
        v16 = 4137;
        v12 = "%{public}s::%d:location null";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, v15, 0x12u);
      }
    }
  }
}

void sub_1001473EC(unsigned int *a1)
{
  if (a1 && qword_1002984F8)
  {
    v2 = sub_10007D728(*(qword_1002984F8 + 16));
    v3 = objc_autoreleasePoolPush();
    if (v2 == 1)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerSubmitPrivateMacStats"}];
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Submitting PrivateMacStats for WA. event type <%u>, private mac type <%u>, toggled? <%d>, underClassification? <%d>, disabledByProfile? <%d>", "WiFiMetricsManagerSubmitPrivateMacStats", *a1, a1[1], *(a1 + 8), *(a1 + 9), *(a1 + 10)}];
      }

      objc_autoreleasePoolPop(v3);
      v3 = objc_autoreleasePoolPush();
      v4 = objc_autoreleasePoolPush();
      if (objc_opt_class())
      {
        v5 = [WAMessage alloc];
        v6 = [v5 initWithMetricName:kWAMessageMetricNamePrivateMacStats options:1];
        if (v6)
        {
          v7 = v6;
          v8 = *a1;
          if (v8 > 7)
          {
            v9 = @"UnknownEvent";
          }

          else
          {
            v9 = off_10025F300[v8];
          }

          sub_100008378([NSString stringWithString:v9]);
          v10 = a1[1];
          if (v10 > 2)
          {
            v11 = @"UnknownAddr";
          }

          else
          {
            v11 = off_10025F340[v10];
          }

          sub_100008378([NSString stringWithString:v11]);
          sub_100008378([NSNumber numberWithUnsignedChar:*(a1 + 8)]);
          sub_100008378([NSNumber numberWithUnsignedChar:*(a1 + 9)]);
          sub_100008378([NSNumber numberWithUnsignedChar:*(a1 + 10)]);
          sub_10004E4C4(v7);
        }

        else
        {
          v12 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Failed to alloc WAMessage for PrivateMacStats", "__WiFiMetricsManagerWAMessageSubmitPrivateMacStats"}];
          }

          objc_autoreleasePoolPop(v12);
        }
      }

      objc_autoreleasePoolPop(v4);
    }

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t sub_100147640(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v3 = result;
  *(a2 + 4) = 1;
  result = sub_10000A540(result, @"PRIVATE_MAC_ADDRESS");
  if (!result)
  {
    return result;
  }

  v4 = result;
  TypeID = CFDictionaryGetTypeID();
  result = CFGetTypeID(v4);
  if (TypeID != result)
  {
    return result;
  }

  Value = CFDictionaryGetValue(v4, @"PRIVATE_MAC_ADDRESS_TYPE");
  v7 = sub_10000AC54(Value);
  if (v7 == 3)
  {
    *(a2 + 4) = 0;
  }

  else
  {
    if (v7 == 2)
    {
      v8 = 2;
    }

    else
    {
      if (v7 != 1)
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"WFMacRandomisation : Unknow private MAC type for network [%@]", sub_10000A878(v3)}];
        }

        objc_autoreleasePoolPop(v9);
        goto LABEL_15;
      }

      v8 = 1;
    }

    *(a2 + 4) = v8;
  }

LABEL_15:
  v10 = sub_10000A540(v3, @"MacAddressRandomisationTagMigratedNetwork");
  if (v10)
  {
    *(a2 + 9) = v10 == kCFBooleanTrue;
  }

  v11 = sub_10000A540(v3, @"PrivateMacFeatureToggled");
  if (v11)
  {
    v12 = v11 == kCFBooleanTrue;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  *(a2 + 8) = v13;
  v14 = sub_10000A540(v3, @"PrivateMacDefaultToOFF");
  if (v14)
  {
    v15 = v14 == kCFBooleanTrue;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  *(a2 + 10) = v16;
  result = sub_1000567D0(v3);
  *(a2 + 11) = result;
  return result;
}

void sub_1001477C4()
{
  sub_100029ED0();
  v2 = objc_autoreleasePoolPush();
  if (!v1)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_25;
    }

    v30 = "%s: null Companion Info";
LABEL_21:
    v31 = 3;
LABEL_24:
    [v29 WFLog:v31 message:{v30, "__WiFiMetricsManagerWAMessageSubmitCompanionAssistedAJInfo"}];
    goto LABEL_25;
  }

  if (!qword_1002984F8)
  {
    goto LABEL_16;
  }

  if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_25;
    }

    v30 = "%s: Camera is in Foreground";
    goto LABEL_21;
  }

  v3 = [WAMessage alloc];
  v4 = [v3 initWithMetricName:kWAMessageMetricNameCompanionAssistedAJ options:1];
  if (!v4)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = off_100298C40;
    if (off_100298C40)
    {
      v30 = "%s: Failed to alloc WAMessage for Companion Assisted AJ";
      v31 = 4;
      goto LABEL_24;
    }

LABEL_25:
    objc_autoreleasePoolPop(v28);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [NSNumber numberWithInt:*(v1 + 8)];
  sub_1000038F4(v6, v7, @"CompanionRSSI", v6);
  v8 = [NSNumber numberWithInt:*(v1 + 12)];
  sub_1000038F4(v8, v9, @"CompanionChannel", v8);
  if (v0)
  {
    v10 = sub_10000A878(v0);
    if (CFStringCompare(v10, *v1, 0))
    {
      v11 = 0;
      v12 = 0;
      v13 = 1;
    }

    else
    {
      valuePtr = 0;
      v14 = sub_100014000(v0);
      if (v14)
      {
        CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
        v15 = valuePtr;
      }

      else
      {
        v15 = 0;
      }

      v12 = v15 == *(v1 + 12);
      v13 = 1;
      v11 = 1;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v12 = 0;
  }

  v16 = [NSNumber numberWithInt:v13];
  sub_1000038F4(v16, v17, @"GizmoConnected", v16);
  v18 = [NSNumber numberWithInt:v11];
  sub_1000038F4(v18, v19, @"GizmoConnectedToSameSSID", v18);
  v20 = [NSNumber numberWithInt:v12];
  sub_1000038F4(v20, v21, @"GizmoConnectedToSameChannel", v20);
  v22 = objc_autoreleasePoolPush();
  v23 = off_100298C40;
  if (off_100298C40)
  {
    v24 = *v1;
    v25 = *(v1 + 8);
    v26 = *(v1 + 12);
    v27 = sub_10000A878(v0);
    [v23 WFLog:3 message:{"%s: CompanionSSID %@, CompanionRSSI %d, CompanionChannel %d, GizmoSSID %@, GizmoChannel %@", "__WiFiMetricsManagerWAMessageSubmitCompanionAssistedAJInfo", v24, v25, v26, v27, sub_100014000(v0)}];
  }

  objc_autoreleasePoolPop(v22);
  sub_10004E4C4(v5);

LABEL_16:
  objc_autoreleasePoolPop(v2);
}

void sub_100147A7C(double a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v3 = [WAMessage alloc];
    v4 = [v3 initWithMetricName:kWAMessageMetricName11axAsrDuration options:1];
    if (v4)
    {
      v5 = v4;
      sub_100029D7C([NSNumber numberWithDouble:a1]);
      sub_10004E4C4(v5);
      CFRelease(v5);
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Null message", "WiFiMetricsManagerSubmit11axAsrDuration"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100147B78(const __CFDictionary *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!qword_1002984F8)
  {
    goto LABEL_9;
  }

  if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerSubmitCatsScanManagerMetrics"}];
    }

    goto LABEL_14;
  }

  v3 = [WAMessage alloc];
  v4 = [v3 initWithMetricName:kWAMessageMetricNameCatsScanMetrics options:1];
  if (!v4)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Null message", "WiFiMetricsManagerSubmitCatsScanManagerMetrics"}];
    }

LABEL_14:
    objc_autoreleasePoolPop(v8);
    goto LABEL_9;
  }

  v5 = v4;
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"CATS_SCAN_METRIC_CACHE_HITS");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  v9 = 0;
  v7 = CFDictionaryGetValue(a1, @"CATS_SCAN_METRIC_CACHE_MISS");
  if (v7)
  {
    CFNumberGetValue(v7, kCFNumberSInt32Type, &v9);
  }

  sub_100029D7C([NSNumber numberWithInt:valuePtr]);
  sub_100029D7C([NSNumber numberWithInt:v9]);
  sub_10004E4C4(v5);
  CFRelease(v5);
LABEL_9:
  objc_autoreleasePoolPop(v2);
}

void sub_100147D00()
{
  sub_10000D798();
  v2 = v1;
  objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v3 = [WAMessage alloc];
    v4 = [v3 initWithMetricName:kWAMessageMetricNameCarPlayConnectMetrics options:1];
    if (v4)
    {
      v5 = v4;
      v6 = sub_10000DA98();
      sub_100057F5C(v6);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 4)]);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 8)]);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 12)]);
      v7 = [*(v0 + 3640) numberWithUnsignedInt:*(v2 + 14)];
      sub_100057F88(v7, v8, @"Channel", v7);
      v9 = [NSString stringWithString:*(v2 + 16)];
      sub_100057F88(v9, v10, @"vehicleModelName", v9);
      v11 = [NSString stringWithString:*(v2 + 24)];
      sub_100057F88(v11, v12, @"vehicleManufacturer", v11);
      v13 = [NSString stringWithString:*(v2 + 32)];
      sub_100057F88(v13, v14, @"hardwareVersion", v13);
      sub_10004E4C4(v5);
      CFRelease(v5);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: Null message"];
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  sub_1000084B8();

  objc_autoreleasePoolPop(v15);
}

void sub_100147EB0()
{
  sub_10000D798();
  v2 = v1;
  objc_autoreleasePoolPush();
  if (qword_1002984F8)
  {
    if (sub_10007D728(*(qword_1002984F8 + 16)) == 1)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = off_100298C40;
      if (!off_100298C40)
      {
LABEL_13:
        objc_autoreleasePoolPop(v13);
        goto LABEL_5;
      }

      v15 = "%s: Camera is in Foreground";
    }

    else
    {
      v3 = [WAMessage alloc];
      v4 = [v3 initWithMetricName:kWAMessageMetricNameInfraConnectionMetrics options:1];
      if (v4)
      {
        v5 = v4;
        v6 = sub_10000DA98();
        sub_100057F5C(v6);
        v7 = [*(v0 + 3640) numberWithUnsignedInt:*(v2 + 4)];
        sub_100057F88(v7, v8, @"Channel", v7);
        v9 = [*(v0 + 3640) numberWithUnsignedInt:*(v2 + 6)];
        sub_100057F88(v9, v10, @"Band", v9);
        sub_10004E4C4(v5);
        CFRelease(v5);
        goto LABEL_5;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_13;
      }

      v15 = "%s: Null message";
    }

    [v14 WFLog:3 message:v15];
    goto LABEL_13;
  }

LABEL_5:
  sub_1000084B8();

  objc_autoreleasePoolPop(v11);
}

void sub_10014800C()
{
  sub_10000D798();
  v2 = v1;
  objc_autoreleasePoolPush();
  if (qword_1002984F8)
  {
    v3 = [WAMessage alloc];
    v4 = [v3 initWithMetricName:kWAMessageMetricNameDetailedInfraConnectionMetrics options:1];
    if (v4)
    {
      v5 = v4;
      v6 = sub_10000DA98();
      sub_100057F5C(v6);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 4)]);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 8)]);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 12)]);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 16)]);
      v7 = [*(v0 + 3640) numberWithUnsignedInt:*(v2 + 20)];
      sub_100057F88(v7, v8, @"Channel", v7);
      v9 = [*(v0 + 3640) numberWithUnsignedInt:*(v2 + 22)];
      sub_100057F88(v9, v10, @"Band", v9);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 24)]);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 25)]);
      sub_100057F5C([*(v0 + 3640) numberWithInt:*(v2 + 28)]);
      sub_100057F5C([NSString stringWithString:*(v2 + 32)]);
      sub_100057F5C([*(v0 + 3640) numberWithUnsignedInt:*(v2 + 40)]);
      sub_10004E4C4(v5);
      CFRelease(v5);
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: Null message"];
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  sub_1000084B8();

  objc_autoreleasePoolPop(v11);
}

void sub_100148228(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v3 = [WAMessage alloc];
    v4 = [v3 initWithMetricName:kWAMessageMetricNameSidekickMetrics options:1];
    if (v4)
    {
      v5 = v4;
      sub_100057F5C([NSNumber numberWithUnsignedInt:*a1]);
      sub_10004E4C4(v5);
      CFRelease(v5);
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Null message", "WiFiMetricsManagerSubmitSidekickMetrics"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10014831C(void *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Null param (faultName:%@, timestamp:%@)", "WiFiMetricsManagerSubmitManagedFault", a1, a2}];
    }

    goto LABEL_30;
  }

  if (!objc_opt_class())
  {
    return;
  }

  v4 = objc_autoreleasePoolPush();
  if (![a1 isEqual:WiFiUsageFaultReasonStringMap()])
  {
    goto LABEL_19;
  }

  v5 = sub_10007D734(*(qword_1002984F8 + 16));
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Got kWiFiUsageFaultReasonAirplayConnectionStall, checking audio state", "WiFiMetricsManagerSubmitManagedFault"}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (v5)
    {
      v8 = "%s: linkRecoveryDisabled == TRUE implies Audio Playing, this is a ManagedFault";
    }

    else
    {
      v8 = "%s: linkRecoveryDisabled == FALSE implies No Audio Playing, not a ManagedFault";
    }

    [off_100298C40 WFLog:3 message:{v8, "WiFiMetricsManagerSubmitManagedFault"}];
  }

  objc_autoreleasePoolPop(v7);
  if ([+[NSUserDefaults objectForKey:"objectForKey:"]
  {
    v9 = [-[NSUserDefaults objectForKey:](+[NSUserDefaults standardUserDefaults](NSUserDefaults "standardUserDefaults")];
    v10 = objc_autoreleasePoolPush();
    v11 = v9 ^ 1;
    if (off_100298C40)
    {
      if (v9)
      {
        v12 = "%s: Found NSUserDefaults kManagedFaultConnectionStallOverrideAllow TRUE, %@ is a ManagedFault";
      }

      else
      {
        v12 = "%s: Found NSUserDefaults kManagedFaultConnectionStallOverrideAllow FALSE, %@ is not a ManagedFault";
      }

      [off_100298C40 WFLog:3 message:{v12, "WiFiMetricsManagerSubmitManagedFault", a1}];
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
LABEL_19:
    v11 = 1;
  }

  if ([+[NSUserDefaults objectForKey:"objectForKey:"]
  {
    v13 = [-[NSUserDefaults objectForKey:](+[NSUserDefaults standardUserDefaults](NSUserDefaults "standardUserDefaults")];
    v14 = objc_autoreleasePoolPush();
    if (!v13)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Found NSUserDefaults kManagedFaultOverrideAll FALSE, removing WiFiAnalyticsMessageTypeManagedFault for %@", "WiFiMetricsManagerSubmitManagedFault", a1}];
      }

      objc_autoreleasePoolPop(v14);
      goto LABEL_30;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Found NSUserDefaults kManagedFaultOverrideAll TRUE, setting WiFiAnalyticsMessageTypeManagedFault for %@", "WiFiMetricsManagerSubmitManagedFault", a1}];
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_26;
  }

  if ((v11 & 1) == 0)
  {
LABEL_26:
    [+[WAManagedFaultsHandler sharedManagedFaultsHandler](WAManagedFaultsHandler "sharedManagedFaultsHandler")];
  }

LABEL_30:

  objc_autoreleasePoolPop(v4);
}

void sub_1001485C4()
{
  sub_10000D798();
  v1 = v0;
  v3 = v2;
  objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v4 = [WAMessage alloc];
    v5 = [v4 initWithMetricName:kWAMessageMetricNameCarPlayJoinFailureMetrics options:1];
    if (v5)
    {
      v6 = v5;
      v7 = [NSString stringWithString:v3];
      sub_100057F88(v7, v8, @"ppid", v7);
      v9 = [NSString stringWithString:v1];
      sub_100057F88(v9, v10, @"reason", v9);
      sub_10004E4C4(v6);
      CFRelease(v6);
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: Null message"];
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  sub_1000084B8();

  objc_autoreleasePoolPop(v11);
}

const __CFNumber *sub_1001486D8(const __CFNumber *result)
{
  if (result)
  {
    valuePtr = -1431655766;
    result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    if (result)
    {
      if ((valuePtr - 1) > 8)
      {
        return 0;
      }

      else
      {
        return word_1001CE1FC[valuePtr - 1];
      }
    }
  }

  return result;
}

void sub_100148738()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: bssid is NULL", "__WiFiMetricsManagerUpdateDBAndSubmitAssociationFailure"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148798()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ssid is NULL", "__WiFiMetricsManagerUpdateDBAndSubmitAssociationFailure"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001487F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null waMsg", "WiFiMetricsManagerSubmitWiFiAJPowerMetrics"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148858()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Inital metrics dictionary not present"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001488A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Failed to get property"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001488F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Device not present"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014893C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"metrics not present"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148988()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Device manager not present"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001489D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null message", "__WiFiMetricsManagerSubmitWAMessage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148A40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "__WiFiMetricsManagerSubmitWAMessage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148AAC(void *a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Failed to submit message: %@", "__WiFiMetricsManagerSubmitWAMessage", objc_msgSend(a1, "metricName")}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

void sub_100148B38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: QFALOG Link up event but there is no valid network. Nothing to submit here.", "WiFiMetricsManagerUpdateDBWithJoinOrLeaveData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148B98()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null wifiLinkChangeDataMetric", "WiFiMetricsManagerUpdateDBWithJoinOrLeaveData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148C04()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerUpdateDBWithJoinOrLeaveData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148C70()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device or metrics", "WiFiMetricsManagerUpdateDBWithJoinOrLeaveData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148CDC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int valuePtr, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_10000D798();
  a18 = v19;
  a19 = v20;
  v22 = v21;
  v24 = v23;
  v25 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v24, v25);
    if (ValueAtIndex && (valuePtr = -1431655766, CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr)) && (valuePtr - 1) < 0x19)
    {
      v27 = dword_1001CE198[valuePtr - 1];
    }

    else
    {
      v27 = 0;
    }

    *v22 |= v27;
    ++v25;
  }

  while (v25 < CFArrayGetCount(v24));
  sub_1000084B8();
}

void sub_100148D80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networkBSSID", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148DEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null metrics", "__WiFiMetricsManagerCopyLinkChangeNetworkParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148E58()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null states", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148EC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null services", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148F30()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null hop count histogram container", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100148F9C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null D2D migration statistics container", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149008()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null LTE restricted channels used list", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149074()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null stats", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001490E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null awdlIfName", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014914C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null metrics manager", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001491B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiMetricsManagerCollectAwdlUsageAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149224()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not submitting zero duration AWDL metrics.", "WiFiMetricsManagerProcessAwdlUsageData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149290()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null awdlIfName", "WiFiMetricsManagerProcessAwdlUsageData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001492FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceMetricsArray !!", "WiFiMetricsManagerProcessAwdlUsageData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149368()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerProcessAwdlUsageData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001493D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null metrics", "WiFiMetricsManagerProcessAwdlUsageData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149440()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiMetricsManagerProcessAwdlUsageData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001494F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Failed to alloc WAMessage for WatchdogEvent", "__WiFiMetricsManagerWAMessageSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149554()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: metrics null", "__WiFiMetricsManagerWAMessageSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001495B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null version", "WiFiMetricsManagerSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149620()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null subreason", "WiFiMetricsManagerSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014968C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null reason", "WiFiMetricsManagerSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001496F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null flags", "WiFiMetricsManagerSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149764()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null available BOOLRef", "WiFiMetricsManagerSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001497D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null watchdogEventMetric", "WiFiMetricsManagerSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014983C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null driverAvailableEventDict", "WiFiMetricsManagerSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001498A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiMetricsManagerSubmitWatchdogEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149914()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null linkStatsMetric", "WiFiMetricsManagerSubmitTriggerDisconnectData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149980()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null stats", "WiFiMetricsManagerSubmitTriggerDisconnectData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001499EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Failed to alloc WAMessage for ActionFrameEvent", "__WiFiMetricsManagerWAMessageSubmitActionFrameEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149A58()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Failed to alloc WAMessage for TxInhibit", "__WiFiMetricsManagerWAMessageSubmitTxInhibitState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149AC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to get boot timestamp", "WiFiMetricsManagerIsFirstBoot"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149B24()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null metrics", "WiFiMetricsManagerIsFirstBoot"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149B90(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null symptomRef", "WiFiMetricsManagerTriggerDPSNotification"}];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_100149BFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null symptomDict", "WiFiMetricsManagerTriggerDPSNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149C68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceMetricsArray !!", "WiFiMetricsManagerTriggerDPSNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149CD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Camera is in Foreground", "WiFiMetricsManagerTriggerDPSNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149D40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null metrics", "WiFiMetricsManagerTriggerDPSNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149DAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiMetricsManagerTriggerDPSNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149E18()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: bssid is NULL", "WiFiMetricsManagerUpdateDBWithParsedBeaconInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149E84()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null WiFiNetworkRef", "WiFiMetricsManagerUpdateDBWithParsedBeaconInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149EF0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null WiFiManagerRef", "WiFiMetricsManagerUpdateDBWithParsedBeaconInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149F5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null metrics manager", "WiFiMetricsManagerUpdateDBWithParsedBeaconInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100149FC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null metrics", "WiFiMetricsManagerUpdateDBWithParsedBeaconInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014A034()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null message", "WiFiMetricsManagerSubmitCarPlayLinkQualityMetrics"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014A0A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null message", "WiFiMetricsManagerSubmitCarPlayLinkDownSuppressionMetrics"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014A10C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Not enough trimmedResults", "WiFiMetricsManagerUpdateBeaconCacheResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014A16C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null beaconCacheResults", "WiFiMetricsManagerUpdateBeaconCacheResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014A1D8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null network", "WiFiMetricsManagerUpdateBeaconCacheResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014A244(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Failed to alloc WAMessage for %@", "WiFiMetricsManagerWAMessageSubmitFromDictionary", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

id sub_10014A2B4(uint64_t a1, uint64_t a2)
{
  result = off_100298C40;
  if (off_100298C40)
  {
    return [off_100298C40 WFLog:3 message:{"%s: Null param (name:%@ dict:%@)", "WiFiMetricsManagerWAMessageSubmitFromDictionary", a1, a2}];
  }

  return result;
}

void sub_10014A308()
{
  v0 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100024ED8();
    sub_100057FA0(&_mh_execute_header, v1, v2, "%{public}s::%d:joinRecord nil", v3, v4, v5, v6, v7);
  }
}

void sub_10014A39C()
{
  v0 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100024ED8();
    sub_100057FA0(&_mh_execute_header, v1, v2, "%{public}s::%d:joinRecord nil", v3, v4, v5, v6, v7);
  }
}

id sub_10014A430(uint64_t a1, void *a2)
{
  result = off_100298C40;
  if (off_100298C40)
  {
    result = [off_100298C40 WFLog:3 message:{"%s: addr is NULL", "__WiFiMetricsManagerWAMessageAppendFieldInColonHexdecFormat"}];
  }

  *a2 = a1;
  return result;
}

const __SCPreferences *sub_10014A48C(const __SCPreferences *prefs)
{
  if (prefs)
  {
    v1 = prefs;
    if (qword_100298518)
    {
      dispatch_assert_queue_V2(qword_100298518);
    }

    prefs = SCPreferencesLock(v1, 1u);
    if (!prefs)
    {
      SCPreferencesSynchronize(v1);
      prefs = SCPreferencesLock(v1, 1u);
      if (!prefs)
      {
        v2 = SCError();
        v3 = SCErrorString(v2);
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v5 = "SCError Unavailable";
          if (v3)
          {
            v5 = v3;
          }

          [off_100298C40 WFLog:4 message:{"SCPreferencesLock() %s", v5}];
        }

        objc_autoreleasePoolPop(v4);
        return 0;
      }
    }
  }

  return prefs;
}

CFMutableArrayRef sub_10014A548(const __CFDictionary *a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    CFDictionaryApplyFunction(a1, sub_100058A30, Mutable);
  }

  return Mutable;
}

CFMutableArrayRef sub_10014A5AC(const __CFSet *a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    CFSetApplyFunction(a1, sub_100058A38, Mutable);
  }

  return Mutable;
}

CFMutableSetRef sub_10014A610(const __CFArray *a1)
{
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  if (Mutable)
  {
    v4.length = CFArrayGetCount(a1);
    v4.location = 0;
    CFArrayApplyFunction(a1, v4, sub_100058A48, Mutable);
  }

  return Mutable;
}

NSDate *sub_10014A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(NSAutoreleasePool);
  v10 = objc_opt_new();
  [v10 setHour:a2];
  [v10 setMinute:a3];
  [v10 setSecond:a4];
  v11 = [+[NSCalendar currentCalendar](NSCalendar nextDateAfterDate:"nextDateAfterDate:matchingComponents:options:" matchingComponents:a1 options:v10, 1024];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  [v9 drain];
  objc_autoreleasePoolPop(v8);
  return v12;
}

void sub_10014A750()
{
  v0 = 136315138;
  v1 = "_WiFiCopyUnserialized";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Invalid buffer/buffersize.", &v0, 0xCu);
}

void sub_10014A7D8(uint64_t *a1)
{
  v1 = *a1;
  v2[0] = 136315394;
  sub_100008398();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: CFPropertyListCreateWithData returned with error %@", v2, 0x16u);
}

void sub_10014A864(uint64_t *a1)
{
  v1 = *a1;
  v2[0] = 136315394;
  sub_100008398();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: CFPropertyListWrite returned with error %@", v2, 0x16u);
}

uint64_t sub_10014A8F0(uint64_t a1)
{
  error = 0;
  v2 = *(a1 + 36);
  *token.val = *(a1 + 20);
  *&token.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  v4 = v3;
  if (!v3)
  {
LABEL_17:
    v8 = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.wifi.manager-access", &error);
  if (!v5)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Client %@ has no entitlement", *(a1 + 64)}];
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_17;
  }

  v6 = v5;
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(v6) && CFEqual(v6, kCFBooleanTrue))
  {
    v8 = 1;
    *(a1 + 136) = 1;
  }

  else
  {
    v8 = 0;
  }

LABEL_6:
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

void sub_10014ABA0(uint64_t a1, const void *a2, const void *a3)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    CFDictionaryAddValue(v3, a2, a3);
  }
}

void sub_10014ABB0(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    CFDictionaryRemoveValue(v2, a2);
  }
}

void sub_10014ABC0(uint64_t a1, uint64_t a2, const void *a3, int a4, uint64_t a5, const __CFData *a6)
{
  if (!a3)
  {
    return;
  }

  v10 = sub_10000EDD8(kCFAllocatorDefault, a3);
  if (!v10)
  {
    return;
  }

  v11 = v10;
  if (!a5)
  {
    v13 = 0;
    v15 = 0;
    BytePtr = 0;
    goto LABEL_8;
  }

  v12 = sub_100017C00(a5);
  if (v12)
  {
    v13 = v12;
    v14 = sub_10000EDD8(kCFAllocatorDefault, v12);
    if (!v14)
    {
LABEL_17:
      CFRelease(v13);
      goto LABEL_18;
    }

    v15 = v14;
    BytePtr = CFDataGetBytePtr(v14);
    LODWORD(a5) = CFDataGetLength(v15);
LABEL_8:
    v24 = v13;
    if (a6)
    {
      v17 = sub_10000EDD8(kCFAllocatorDefault, a6);
      if (!v17)
      {
        goto LABEL_14;
      }

      a6 = v17;
      v18 = a4;
      v19 = CFDataGetBytePtr(v17);
      Length = CFDataGetLength(a6);
    }

    else
    {
      v18 = a4;
      v19 = 0;
      Length = 0;
    }

    v21 = *(a1 + 96);
    v22 = CFDataGetBytePtr(v11);
    v23 = CFDataGetLength(v11);
    sub_10012E204(v21, v22, v23, v18, BytePtr, a5, v19, Length, 0);
    v13 = v24;
    if (a6)
    {
      CFRelease(a6);
    }

LABEL_14:
    if (v15)
    {
      CFRelease(v15);
    }

    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:

  CFRelease(v11);
}

void sub_10014AD64(uint64_t a1, uint64_t a2, const void *a3, int a4, const __CFData *a5)
{
  if (!a3)
  {
    return;
  }

  v8 = sub_10000EDD8(kCFAllocatorDefault, a3);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (!a5)
  {
    v11 = 0;
    v12 = 0;
LABEL_7:
    v13 = *(a1 + 96);
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(v9);
    sub_10012E320(v13, BytePtr, Length, a4, v11, v12, 0);
    if (a5)
    {
      CFRelease(a5);
    }

    goto LABEL_9;
  }

  v10 = sub_10000EDD8(kCFAllocatorDefault, a5);
  if (v10)
  {
    a5 = v10;
    v11 = CFDataGetBytePtr(v10);
    v12 = CFDataGetLength(a5);
    goto LABEL_7;
  }

LABEL_9:

  CFRelease(v9);
}

void sub_10014AE70(uint64_t a1, uint64_t a2, void *key, const void *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !key)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, key);
    if (!Value)
    {
      goto LABEL_20;
    }

    CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    if ((valuePtr & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    if ((*(a1 + 52) & 0x10) != 0)
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Already ranging, will not dispatch report."}];
      }

      objc_autoreleasePoolPop(v11);
      goto LABEL_20;
    }

    v9 = sub_10000EDD8(kCFAllocatorDefault, key);
    v10 = v9;
    if (v9)
    {
      CFDataGetBytePtr(v9);
      CFDataGetLength(v10);
      if (!a4)
      {
        goto LABEL_18;
      }
    }

    else if (!a4)
    {
      goto LABEL_18;
    }

    v12 = sub_10000EDD8(kCFAllocatorDefault, a4);
    if (v12)
    {
      v13 = v12;
      BytePtr = CFDataGetBytePtr(v12);
      CFDataGetLength(v13);
      v15 = sub_1000083AC();
      sub_10001073C(v15, v16, v17, 24, BytePtr, v18, 0);
      CFRelease(v13);
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    v19 = sub_1000083AC();
    sub_10005A638(v19, v20, v21, 24);
    if (!v10)
    {
LABEL_20:
      sub_1000084B8();
      return;
    }

LABEL_19:
    CFRelease(v10);
    goto LABEL_20;
  }

  v22 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null deviceEventMasks", "WiFiClientDispatchRangingReportEvent", valuePtr}];
  }

  sub_1000084B8();

  objc_autoreleasePoolPop(v23);
}

void sub_10014B02C(uint64_t a1, uint64_t a2, void *key, const void *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !key)
  {
    goto LABEL_16;
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, key);
    if (!Value)
    {
      goto LABEL_16;
    }

    CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    if ((valuePtr & 0x400000000000) == 0)
    {
      goto LABEL_16;
    }

    v8 = sub_10000EDD8(kCFAllocatorDefault, key);
    v9 = v8;
    if (v8)
    {
      CFDataGetBytePtr(v8);
      CFDataGetLength(v9);
      if (!a4)
      {
        goto LABEL_14;
      }
    }

    else if (!a4)
    {
      goto LABEL_14;
    }

    v10 = sub_10000EDD8(kCFAllocatorDefault, a4);
    if (v10)
    {
      v11 = v10;
      BytePtr = CFDataGetBytePtr(v10);
      CFDataGetLength(v11);
      v13 = sub_1000083AC();
      sub_10001073C(v13, v14, v15, 46, BytePtr, v16, 0);
      CFRelease(v11);
      if (!v9)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    v17 = sub_1000083AC();
    sub_10005A638(v17, v18, v19, 46);
    if (!v9)
    {
LABEL_16:
      sub_1000084B8();
      return;
    }

LABEL_15:
    CFRelease(v9);
    goto LABEL_16;
  }

  v20 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null deviceEventMasks", "WiFiClientDispatchTdConfirmedEvent", valuePtr}];
  }

  sub_1000084B8();

  objc_autoreleasePoolPop(v21);
}

void sub_10014B1AC(uint64_t a1, uint64_t a2, void *key, const void *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !key)
  {
    goto LABEL_16;
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, key);
    if (!Value)
    {
      goto LABEL_16;
    }

    CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    if ((valuePtr & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    v8 = sub_10000EDD8(kCFAllocatorDefault, key);
    v9 = v8;
    if (v8)
    {
      CFDataGetBytePtr(v8);
      CFDataGetLength(v9);
      if (!a4)
      {
        goto LABEL_14;
      }
    }

    else if (!a4)
    {
      goto LABEL_14;
    }

    v10 = sub_10000EDD8(kCFAllocatorDefault, a4);
    if (v10)
    {
      v11 = v10;
      BytePtr = CFDataGetBytePtr(v10);
      CFDataGetLength(v11);
      v13 = sub_1000083AC();
      sub_10001073C(v13, v14, v15, 22, BytePtr, v16, 0);
      CFRelease(v11);
      if (!v9)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    v17 = sub_1000083AC();
    sub_10005A638(v17, v18, v19, 22);
    if (!v9)
    {
LABEL_16:
      sub_1000084B8();
      return;
    }

LABEL_15:
    CFRelease(v9);
    goto LABEL_16;
  }

  v20 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null deviceEventMasks", "WiFiClientDispatchVirtInterfaceStateChangeEvent", valuePtr}];
  }

  sub_1000084B8();

  objc_autoreleasePoolPop(v21);
}

void sub_10014B32C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v6 = sub_100017C00(a3);
    if (v6)
    {
      v7 = v6;
      v8 = sub_10000EDD8(kCFAllocatorDefault, v6);
      if (v8)
      {
        v9 = v8;
        BytePtr = CFDataGetBytePtr(v8);
        Length = CFDataGetLength(v9);
        sub_10012E6A4(*(a1 + 96), BytePtr, Length, a4, 0);
        CFRelease(v9);
      }

      CFRelease(v7);
    }
  }
}

const __CFString *sub_10014B3E8(const __CFString *result)
{
  if (result)
  {
    result = result[2].isa;
    if (result)
    {
      v1 = CFStringCompare(result, @"SpringBoard", 0);
      return sub_100024EEC(v1);
    }
  }

  return result;
}

const __CFString *sub_10014B420(const __CFString *result)
{
  if (result)
  {
    result = result[2].isa;
    if (result)
    {
      v1 = CFStringCompare(result, @"Preferences", 1uLL);
      return sub_100024EEC(v1);
    }
  }

  return result;
}

const __CFString *sub_10014B458(const __CFString *result)
{
  if (result)
  {
    result = result[2].isa;
    if (result)
    {
      v1 = CFStringCompare(result, @"mobilewifitool", 1uLL);
      return sub_100024EEC(v1);
    }
  }

  return result;
}

const __CFString *sub_10014B490(const __CFString *result)
{
  if (result)
  {
    result = result[2].isa;
    if (result)
    {
      v1 = CFStringCompare(result, @"sharingd", 1uLL);
      return sub_100024EEC(v1);
    }
  }

  return result;
}

const __CFString *sub_10014B4C8(const __CFString *result)
{
  if (result)
  {
    result = result[2].isa;
    if (result)
    {
      v1 = CFStringCompare(result, @"PersonalHotspotControlExtension", 1uLL);
      return sub_100024EEC(v1);
    }
  }

  return result;
}

const __CFString *sub_10014B500(const __CFString *result)
{
  if (result)
  {
    result = result[2].isa;
    if (result)
    {
      v1 = CFStringCompare(result, @"BundledIntentHandler", 1uLL);
      return sub_100024EEC(v1);
    }
  }

  return result;
}

const __CFString *sub_10014B538(const __CFString *result)
{
  if (result)
  {
    result = result[2].isa;
    if (result)
    {
      v1 = CFStringCompare(result, @"assistant_service", 1uLL);
      return sub_100024EEC(v1);
    }
  }

  return result;
}

void sub_10014B570(uint64_t a1, int a2, const void *a3)
{
  if ((*(a1 + 131) & 4) != 0)
  {
    if (a3)
    {
      v5 = sub_10000EDD8(kCFAllocatorDefault, a3);
      v6 = v5;
      if (v5)
      {
        BytePtr = CFDataGetBytePtr(v5);
        Length = CFDataGetLength(v6);
      }

      else
      {
        BytePtr = 0;
        Length = 0;
      }
    }

    else
    {
      BytePtr = 0;
      Length = 0;
      v6 = 0;
    }

    sub_10012E774(*(a1 + 96), a2, BytePtr, Length, 0);
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

void sub_10014B634(uint64_t a1, const void *a2)
{
  if ((*(a1 + 131) & 0x20) != 0)
  {
    if (a2 && (v2 = sub_10000EDD8(kCFAllocatorDefault, a2)) != 0)
    {
      v3 = v2;
      CFDataGetBytePtr(v2);
      CFDataGetLength(v3);
      v4 = sub_10000DB0C();
      sub_10012E844(v4, v5, v6, v7);

      CFRelease(v3);
    }

    else
    {
      v8 = sub_100007534();

      sub_10012E844(v8, v9, v10, v11);
    }
  }
}

void sub_10014B6E0(uint64_t a1, const void *a2)
{
  if ((*(a1 + 132) & 2) != 0)
  {
    v2 = sub_10000EDD8(kCFAllocatorDefault, a2);
    if (v2)
    {
      v3 = v2;
      CFDataGetBytePtr(v2);
      CFDataGetLength(v3);
      v4 = sub_10000DB0C();
      sub_10012E9A4(v4, v5, v6, v7);

      CFRelease(v3);
    }

    else
    {
      v8 = sub_100007534();

      sub_10012E9A4(v8, v9, v10, v11);
    }
  }
}

BOOL sub_10014B788(uint64_t a1, const __CFString *a2)
{
  error = 0;
  v3 = *(a1 + 36);
  *v11.val = *(a1 + 20);
  *&v11.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v11);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopyValueForEntitlement(v4, a2, &error);
    if (v6)
    {
      v7 = v6;
      TypeID = CFBooleanGetTypeID();
      v9 = TypeID == CFGetTypeID(v7) && CFEqual(v7, kCFBooleanTrue) != 0;
      CFRelease(v5);
    }

    else
    {
      v9 = 0;
      v7 = v5;
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  if (error)
  {
    CFRelease(error);
  }

  return v9;
}

void sub_10014B86C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Failed to request MACH_NOTIFY_NO_SENDERS"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014B8B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Unable to allocate acquire client reply port attributes"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014B904()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Unable to allocate set client reply port attributes"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014B950()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Failed to allocate client port"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014B99C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Failed to allocate device client backing store"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014B9E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Failed to create WiFiClientRef in CFRuntime"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014BA40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device manager.", "WiFiClientDispatchNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014BAAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null notification.", "WiFiClientDispatchNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014BB18(uint64_t a1, const void *a2)
{
  v3 = sub_10014AA18();
  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(a2);
}

void sub_10014BB58()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Error copying devices"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014BBB0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Error gettitng manager"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014BC08()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Error getting manager"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014BC60()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null ifName.", "WiFiClientGetDeviceEventMask"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014BCCC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceRef.", "WiFiClientGetDeviceEventMask"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014BD38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device.", "WiFiClientGetDeviceEventMask"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10014BDA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, int valuePtr, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_10002183C();
  a31 = v32;
  a32 = v38;
  v67 = v39;
  a20 = v37;
  if (!v33)
  {
    goto LABEL_37;
  }

  v40 = v37;
  v41 = v36;
  v42 = v35;
  v43 = v34;
  v44 = v33;
  v45 = kCFAllocatorDefault;
  v46 = sub_1000083D0();
  Mutable = CFDictionaryCreateMutable(v46, v47, v48, v49);
  if (!Mutable)
  {
    goto LABEL_37;
  }

  v51 = Mutable;
  switch(v43)
  {
    case 2u:
      v52 = 1;
      goto LABEL_12;
    case 3u:
      v52 = 2;
      goto LABEL_12;
    case 4u:
      v52 = 3;
      goto LABEL_12;
    case 5u:
      v52 = 7;
      goto LABEL_12;
    case 6u:
      v52 = 8;
      goto LABEL_12;
    case 7u:
      v52 = 9;
      goto LABEL_12;
    case 8u:
      v52 = 10;
LABEL_12:
      valuePtr = v52;
      break;
    default:
      valuePtr = 0;
      break;
  }

  v53 = *(v44 + 5268);
  if ((v53 & v41) != 0)
  {
    v54 = objc_autoreleasePoolPush();
    v55 = off_100298C40;
    if (off_100298C40)
    {
      sub_1000590C4(v41);
      sub_10000A878(v67);
      [v55 WFLog:4 message:"%s: Clearing roam offset %@(%d) for %@"];
    }

    objc_autoreleasePoolPop(v54);
    v53 = *(v44 + 5268);
  }

  if ((v53 & v42) != 0)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = off_100298C40;
    if (off_100298C40)
    {
      sub_1000590C4(v42);
      sub_10000A878(v67);
      [v57 WFLog:4 message:"%s: Setting roam offset %@(%d) for %@"];
    }

    objc_autoreleasePoolPop(v56);
    v53 = *(v44 + 5268);
    v45 = kCFAllocatorDefault;
  }

  *(v44 + 5268) = v53 & ~v41 | v42;
  v58 = CFNumberCreate(v45, kCFNumberIntType, &valuePtr);
  if (!v58)
  {
    goto LABEL_36;
  }

  v59 = v58;
  CFDictionarySetValue(v51, @"IO80211InterfaceRoamProfile", v58);
  v60 = *(v44 + 5268);
  if (v60)
  {
    CFDictionarySetValue(v51, @"IO80211InterfaceRoamProfilePoorLinkQuality", kCFBooleanTrue);
    v60 = *(v44 + 5268);
  }

  if ((v60 & 2) == 0)
  {
    v61 = 0;
LABEL_29:
    if (v43 <= 8 && ((1 << v43) & 0x150) != 0)
    {
      CFDictionarySetValue(v51, @"IO80211InterfaceRoamMultiAP", kCFBooleanTrue);
    }

    v63 = objc_autoreleasePoolPush();
    v64 = off_100298C40;
    if (off_100298C40)
    {
      sub_10000A878(v67);
      sub_10000F2A0(v43);
      sub_1000590C4(*(v44 + 5268));
      v66 = *(v44 + 5268);
      [v64 WFLog:3 message:"%s: setting roam profile for %@ to type %@(%d) with offsets %@(0x%x)"];
    }

    objc_autoreleasePoolPop(v63);
    sub_100006F94(v44, *(v44 + 112), 531, 0, v51);
    *(v44 + 5272) = v43;
    goto LABEL_35;
  }

  if (v40)
  {
    CFDictionarySetValue(v51, @"IO80211InterfaceRoamProfileMotion", kCFBooleanTrue);
    v62 = CFNumberCreate(v45, kCFNumberIntType, &a20);
    v61 = v62;
    if (!v62)
    {
      goto LABEL_35;
    }

    sub_100008BBC(v62, @"IO80211InterfaceRoamProfileMotionRssiDelta");
    goto LABEL_29;
  }

  v65 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"%s: motionRssiDelta is 0. Exiting!"];
  }

  objc_autoreleasePoolPop(v65);
  v61 = 0;
LABEL_35:
  CFRelease(v59);
  CFRelease(v51);
  v51 = v61;
  if (v61)
  {
LABEL_36:
    CFRelease(v51);
  }

LABEL_37:
  sub_10000FDDC();
}

void sub_10014C1C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t valuePtr, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10000D798();
  a17 = v18;
  a18 = v20;
  valuePtr = 6;
  if (v19)
  {
    Count = CFDictionaryGetCount(*(v19 + 5112));
    if (Count)
    {
      v22 = Count;
      v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
      if (v23)
      {
        v24 = v23;
        if (!(v22 >> 61))
        {
          v25 = (8 * v22);
          v26 = sub_10006ACC8();
          if (v26)
          {
            v27 = v26;
            v28 = sub_10006ACC8();
            if (v28)
            {
              sub_100021D7C(v28);
              v29 = 0;
              while (1)
              {
                v30 = CFGetTypeID(v25[v29]);
                if (v30 == sub_100006F40())
                {
                  v31 = sub_100024FC0(v25[v29]);
                  if (CFEqual(v31, v24))
                  {
                    break;
                  }
                }

                if (v22 == ++v29)
                {
                  goto LABEL_14;
                }
              }

              v32 = v27[v29];
LABEL_14:
              free(v25);
            }

            free(v27);
          }
        }

        CFRelease(v24);
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"%s: no virtual interfaces found."];
      }

      objc_autoreleasePoolPop(v33);
    }
  }

  sub_1000084B8();
}

void sub_10014C308(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t valuePtr, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10000D798();
  a17 = v18;
  a18 = v20;
  valuePtr = 8;
  if (v19)
  {
    Count = CFDictionaryGetCount(*(v19 + 5112));
    if (Count)
    {
      v22 = Count;
      v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
      if (v23)
      {
        v24 = v23;
        if (!(v22 >> 61))
        {
          v25 = (8 * v22);
          v26 = sub_10006ACC8();
          if (v26)
          {
            v27 = v26;
            v28 = sub_10006ACC8();
            if (v28)
            {
              sub_100021D7C(v28);
              v29 = 0;
              while (1)
              {
                v30 = CFGetTypeID(v25[v29]);
                if (v30 == sub_100006F40())
                {
                  v31 = sub_100024FC0(v25[v29]);
                  if (CFEqual(v31, v24))
                  {
                    break;
                  }
                }

                if (v22 == ++v29)
                {
                  goto LABEL_14;
                }
              }

              v32 = v27[v29];
LABEL_14:
              free(v25);
            }

            free(v27);
          }
        }

        CFRelease(v24);
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"%s: no virtual interfaces found."];
      }

      objc_autoreleasePoolPop(v33);
    }
  }

  sub_1000084B8();
}

uint64_t sub_10014C450(uint64_t a1)
{
  valuePtr = 7;
  if (!a1)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(*(a1 + 5112));
  if (!Count)
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: no virtual interfaces found.", "WiFiDeviceGetHostApInterfaceName", valuePtr}];
    }

    objc_autoreleasePoolPop(v16);
    return 0;
  }

  v2 = Count;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = (8 * v2);
  sub_100024EF8();
  v7 = malloc_type_malloc(8 * v2, v6);
  if (v7)
  {
    v8 = v7;
    sub_1000083BC();
    v10 = malloc_type_malloc(8 * v2, v9);
    if (v10)
    {
      sub_10006ACE8(v10);
      if (v2 < 1)
      {
        v2 = 0;
      }

      else
      {
        v11 = v8;
        while (1)
        {
          v12 = CFGetTypeID(*v5);
          if (v12 == sub_100006F40())
          {
            v13 = sub_100024FC0(*v5);
            if (CFEqual(v13, v4))
            {
              break;
            }
          }

          ++v11;
          sub_10006AD20();
          if (v14)
          {
            goto LABEL_15;
          }
        }

        v2 = *v11;
      }

LABEL_15:
      free(v5);
    }

    else
    {
      v2 = 0;
    }

    free(v8);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v4);
  return v2;
}

void sub_10014C5C0()
{
  sub_100024B78();
  if (v0)
  {
    v1 = v0;
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: Setting host ap to %s mode"];
    }

    objc_autoreleasePoolPop(v2);
    for (i = 6; ; --i)
    {
      v4 = *(v1 + 16);
      sub_10002ACA8();
      Apple80211Set();
      sub_100015EAC();
      v6 = v6 || v5 == 16;
      if (!v6 && v2 != 61 || !i)
      {
        break;
      }

      sub_10000390C();
    }

    if (v2)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Error setting host ap to %s mode, %d"}];
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  sub_10006AD5C();
}

void sub_10014C6CC(uint64_t a1, char a2, const void *a3)
{
  valuePtr = a2;
  if (a3)
  {
    v5 = sub_100034FE4();
    Mutable = CFDictionaryCreateMutable(v5, v6, v7, v8);
    if (Mutable)
    {
      v10 = Mutable;
      v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
      if (v11)
      {
        v12 = v11;
        sub_10006AD08(v11, @"HostSoftapNanCapabilityFlag");
        CFRelease(v12);
        CFDictionarySetValue(v10, @"HostSoftapNanServiceName", a3);
        for (i = 6; ; --i)
        {
          v14 = *(a1 + 16);
          sub_100029EDC();
          Apple80211Set();
          sub_10002A194();
          v16 = v16 || v15 == 16;
          if (!v16 && a3 != 61 || !i)
          {
            break;
          }

          sub_10000390C();
        }

        if (a3)
        {
          v18 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s Failed to set SoftAP NAN IE config: err %d", "WiFiDeviceSetNanCapabilityInHotspotIe", a3}];
          }

          objc_autoreleasePoolPop(v18);
        }
      }

      CFRelease(v10);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Failed to create dict", "WiFiDeviceSetNanCapabilityInHotspotIe"}];
      }

      objc_autoreleasePoolPop(v17);
    }
  }
}

void sub_10014C858()
{
  sub_100024B78();
  if (v0 && v1)
  {
    v2 = v0;
    for (i = 6; ; --i)
    {
      v4 = *(v2 + 16);
      Apple80211RangingStopAsync();
      sub_100015EAC();
      if (!v5 || !i)
      {
        break;
      }

      sub_10000390C();
    }

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: ifName %@, error %d"}];
    }

    objc_autoreleasePoolPop(v6);
  }

  sub_10006AD5C();
}

void sub_10014C918(uint64_t a1)
{
  if (a1)
  {
    sub_100062D38(a1);
  }
}

void sub_10014C924(uint64_t a1)
{
  v2 = sub_10000DB20();
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v2, v3, v4, v5);
  v7 = sub_10000DB20();
  v10 = SCDynamicStoreKeyCreateNetworkServiceEntity(v7, v8, v9, kSCEntNetIPv6);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, *(a1 + 112), kSCEntNetIPv6);
  v12 = sub_10000DB20();
  cf = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v12, v13, v14, v15);
  v16 = sub_10000DB20();
  v20 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v16, v17, v18, v19);
  v21 = sub_10000DB20();
  v25 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v21, v22, v23, v24);
  v26 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, *(a1 + 112), @"IPConfigurationBusy");
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v28 = Mutable;
  if (Mutable)
  {
    if (qword_100298548)
    {
      CFArrayAppendValue(Mutable, qword_100298548);
    }

    if (qword_100298550)
    {
      CFArrayAppendValue(v28, qword_100298550);
    }

    v29 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v30 = v29;
    if (!v29)
    {
LABEL_26:
      if (!NetworkServiceEntity)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (NetworkServiceEntity)
    {
      CFArrayAppendValue(v29, NetworkServiceEntity);
    }

    if (v10)
    {
      CFArrayAppendValue(v30, v10);
    }

    if (cf)
    {
      CFArrayAppendValue(v30, cf);
      v39 = sub_100034FE4();
      sub_100151EF0(v39, v40);
      if (!v26)
      {
LABEL_13:
        if (!v20)
        {
LABEL_15:
          if (v25)
          {
            CFArrayAppendValue(v30, v25);
          }

          if (NetworkInterfaceEntity)
          {
            CFArrayAppendValue(v30, NetworkInterfaceEntity);
          }

          if (CFArrayGetCount(v28) >= 1 && CFArrayGetCount(v30) >= 1)
          {
            SCDynamicStoreSetNotificationKeys(*(a1 + 152), v28, v30);
            v31 = *(a1 + 160);
            if (v31)
            {
              CFRelease(v31);
              *(a1 + 160) = 0;
            }

            v32 = *(a1 + 168);
            if (v32)
            {
              CFRelease(v32);
              *(a1 + 168) = 0;
            }

            v33 = sub_1000113AC();
            *(a1 + 160) = CFArrayCreateMutableCopy(v33, v34, v28);
            v35 = sub_1000113AC();
            *(a1 + 168) = CFArrayCreateMutableCopy(v35, v36, v30);
          }

          goto LABEL_26;
        }

LABEL_14:
        CFArrayAppendValue(v30, v20);
        goto LABEL_15;
      }
    }

    else if (!v26)
    {
      goto LABEL_13;
    }

    CFArrayAppendValue(v30, v26);
    v41 = sub_100034FE4();
    sub_100030394(v41);
    if (!v20)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v30 = 0;
  if (NetworkServiceEntity)
  {
LABEL_27:
    CFRelease(NetworkServiceEntity);
  }

LABEL_28:
  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v28)
  {
    sub_1000113F8();

    CFRelease(v37);
  }

  else
  {
    sub_1000113F8();
  }
}

void sub_10014CC2C(uint64_t a1)
{
  cf = 0;
  if (a1 && *(a1 + 16) && *(a1 + 112))
  {
    for (i = 6; ; --i)
    {
      InfoCopy = Apple80211GetInfoCopy();
      if (InfoCopy != -3905 && InfoCopy != 61 && InfoCopy != 16)
      {
        break;
      }

      if (!i)
      {
        break;
      }

      sub_10000390C();
      v5 = *(a1 + 16);
    }
  }
}

void sub_10014CEA0()
{
  sub_10000FDC0();
  v1 = v0;
  if (v0)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1000078F4(v0, v2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10000D83C("__copyAirPortService");
    v6 = SCPreferencesCreate(0, @"WIFID-DEVICE", 0);
    if (v6)
    {
      v7 = v6;
      if (sub_10014A48C(v6))
      {
        v8 = SCNetworkSetCopyCurrent(v7);
        v9 = v8;
        if (v8)
        {
          v10 = SCNetworkSetCopyServices(v8);
          if (v10)
          {
            v11 = v10;
            Count = CFArrayGetCount(v10);
            if (Count >= 1)
            {
              v13 = Count;
              v35 = v4;
              v14 = v5;
              v15 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v11, v15);
                Interface = SCNetworkServiceGetInterface(ValueAtIndex);
                InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
                if (InterfaceType)
                {
                  if (CFStringCompare(InterfaceType, kSCNetworkInterfaceTypeIEEE80211, 0) == kCFCompareEqualTo)
                  {
                    break;
                  }
                }

                if (v13 == ++v15)
                {
                  goto LABEL_14;
                }
              }

              BSDName = SCNetworkInterfaceGetBSDName(Interface);
              if (v1)
              {
                v19 = 0;
                v5 = v14;
                if (BSDName)
                {
                  v21 = *(v1 + 112);
                  v4 = v35;
                  if (v21)
                  {
                    if (CFStringCompare(BSDName, v21, 0))
                    {
                      v19 = 0;
                    }

                    else
                    {
                      CFRetain(ValueAtIndex);
                      v19 = ValueAtIndex;
                    }
                  }

LABEL_46:
                  sub_1000587F4(v7, 0);
                  CFRelease(v7);
                  if (v11)
                  {
                    CFRelease(v11);
                  }

                  if (v9)
                  {
                    CFRelease(v9);
                  }

                  if (v19)
                  {
                    SCNetworkServiceGetServiceID(v19);
                    v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@/%@/%@/%@");
                    v32 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:"%s - ipv4 state key: %@"];
                    }

                    objc_autoreleasePoolPop(v32);
                    sub_1000305D0(v1, v31);
                    CFRelease(v4);
                    CFRelease(v19);
                    if (!v31)
                    {
                      sub_100008690();
                      return;
                    }

                    goto LABEL_54;
                  }

LABEL_36:
                  v27 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:"%s: No airportService"];
                  }

                  objc_autoreleasePoolPop(v27);
LABEL_54:
                  sub_100008690();

                  CFRelease(v33);
                  return;
                }
              }

              else
              {
LABEL_14:
                v19 = 0;
                v5 = v14;
              }

              v4 = v35;
              goto LABEL_46;
            }

LABEL_45:
            v19 = 0;
            goto LABEL_46;
          }

          v28 = objc_autoreleasePoolPush();
          v29 = off_100298C40;
          if (off_100298C40)
          {
            v30 = "%s: failed to get services";
            goto LABEL_43;
          }
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = off_100298C40;
          if (off_100298C40)
          {
            v30 = "%s: failed to get currentSet";
LABEL_43:
            [v29 WFLog:3 message:v30];
          }
        }

        objc_autoreleasePoolPop(v28);
        v11 = 0;
        goto LABEL_45;
      }

      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: failed to get prefs lock"];
      }

      objc_autoreleasePoolPop(v26);
      CFRelease(v7);
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = off_100298C40;
      if (off_100298C40)
      {
        SCError();
        [v25 WFLog:3 message:"Unable to create preferences %d"];
      }

      objc_autoreleasePoolPop(v24);
    }

    goto LABEL_36;
  }

  objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: Not associated"];
  }

  sub_100008690();

  objc_autoreleasePoolPop(v22);
}

void sub_10014D294(uint64_t a1, int a2, char *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: entering \n", "__WiFiDevicePrepareAndSendDriverAvailableEvent"}];
  }

  objc_autoreleasePoolPop(v6);
  bzero(&v62, 0xF8uLL);
  v62 = 3;
  v63[1] = a2;
  v65 = -528340989;
  v7 = sub_10000836C();
  Mutable = CFDictionaryCreateMutable(v7, v8, v9, v10);
  v12 = Mutable;
  if (!Mutable)
  {
    goto LABEL_28;
  }

  v13 = &kCFBooleanTrue;
  if (!a2)
  {
    v13 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(Mutable, @"DRIVER_AVAILABLE", *v13);
  v16 = sub_100008C4C(v14, v15, &v65);
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = v16;
  sub_100008BBC(v16, @"DRIVER_AVAILABLE_REASON");
  CFRelease(v17);
  v20 = sub_100008C4C(v18, v19, &v66);
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = v20;
  sub_100008BBC(v20, @"DRIVER_AVAILABLE_SUBREASON");
  CFRelease(v21);
  v24 = sub_100008C4C(v22, v23, &v67);
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = v24;
  sub_100008BBC(v24, @"DRIVER_AVAILABLE_MINORREASON");
  CFRelease(v25);
  v28 = sub_100008C4C(v26, v27, &v62);
  if (!v28)
  {
    goto LABEL_28;
  }

  v29 = v28;
  sub_100008BBC(v28, @"DRIVER_AVAILABLE_VERSION");
  CFRelease(v29);
  v32 = sub_100008C4C(v30, v31, v63);
  if (!v32)
  {
    goto LABEL_28;
  }

  v33 = v32;
  sub_100008BBC(v32, @"DRIVER_AVAILABLE_FLAGS");
  CFRelease(v33);
  v36 = sub_100008C4C(v34, v35, &v64);
  if (!v36)
  {
    goto LABEL_28;
  }

  v37 = v36;
  sub_100008BBC(v36, @"DRIVER_AVAILABLE_EVENTID");
  CFRelease(v37);
  v39 = a3 ? a3 : &v67 + 4;
  v40 = sub_10001EC48(v38, v39);
  if (!v40)
  {
    goto LABEL_28;
  }

  v41 = v40;
  sub_10006AD08(v40, @"DRIVER_AVAILABLE_REASON_STRING");
  CFRelease(v41);
  v42 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v68);
  if (!v42)
  {
    goto LABEL_28;
  }

  v43 = v42;
  sub_10006AD08(v42, @"DRIVER_AVAILABLE_PROGRAM_COUNTER");
  CFRelease(v43);
  v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v69);
  if (!v44)
  {
    goto LABEL_28;
  }

  v45 = v44;
  sub_10006AD08(v44, @"DRIVER_AVAILABLE_LINK_REGISTER");
  CFRelease(v45);
  v47 = sub_10001EC48(v46, v70);
  if (!v47)
  {
    goto LABEL_28;
  }

  v48 = v47;
  sub_10006AD08(v47, @"DRIVER_AVAILABLE_FILENAME");
  CFRelease(v48);
  v51 = sub_100008C4C(v49, v50, &v71);
  if (!v51)
  {
    goto LABEL_28;
  }

  v52 = v51;
  sub_10006AD08(v51, @"DRIVER_AVAILABLE_LINENUMBER");
  CFRelease(v52);
  v54 = sub_10001EC48(v53, &v71 + 4);
  if (!v54)
  {
    goto LABEL_28;
  }

  v55 = v54;
  sub_10006AD08(v54, @"DRIVER_AVAILABLE_FUNCTION ");
  CFRelease(v55);
  v58 = sub_100008C4C(v56, v57, &v72);
  if (v58)
  {
    v59 = v58;
    CFDictionarySetValue(v12, @"DRIVER_AVAILABLE_TRAP_SEQUENCE", v58);
    CFRelease(v59);
    sub_100068BF4(a1, *(a1 + 112), v12);
    v60 = 0;
  }

  else
  {
LABEL_28:
    v60 = 4294963395;
  }

  v61 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: exiting, err:0x%x \n", "__WiFiDevicePrepareAndSendDriverAvailableEvent", v60}];
  }

  objc_autoreleasePoolPop(v61);
  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t sub_10014D880(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 128);
    if (v1)
    {
      Value = CFDictionaryGetValue(v1, @"RANGING_FEATURES");
      if (Value)
      {
        sub_10006ADA8(Value, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, 0);
        v10 = (valuePtr >> 2) & 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null device", "WiFiDeviceIsVisionResponderForRanging"}];
    }

    objc_autoreleasePoolPop(v11);
  }

  v10 = 0;
LABEL_9:
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: isVisionResponder %d", "WiFiDeviceIsVisionResponderForRanging", v10}];
  }

  objc_autoreleasePoolPop(v12);
  return v10;
}

uint64_t sub_10014D94C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 128);
    if (v1)
    {
      Value = CFDictionaryGetValue(v1, @"RANGING_FEATURES");
      if (Value)
      {
        sub_10006ADA8(Value, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, 0);
        v10 = (valuePtr >> 3) & 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null device", "WiFiDeviceIsEnableIotBehavior"}];
    }

    objc_autoreleasePoolPop(v11);
  }

  v10 = 0;
LABEL_9:
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: isEnableIotBehavior %d", "WiFiDeviceIsEnableIotBehavior", v10}];
  }

  objc_autoreleasePoolPop(v12);
  return v10;
}

void sub_10014DDAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t valuePtr, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10000D798();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  valuePtr = 6;
  v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
  Count = CFDictionaryGetCount(*(v21 + 5112));
  if (!Count)
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"No virtual interfaces found"];
    }

    objc_autoreleasePoolPop(v35);
LABEL_19:
    if (!v22)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v24 = Count;
  v25 = (8 * Count);
  sub_100024EF8();
  v27 = malloc_type_malloc(v25, v26);
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = v27;
  sub_1000083BC();
  v30 = malloc_type_malloc(v25, v29);
  if (v30)
  {
    sub_10006ACE8(v30);
    if (v24 >= 1)
    {
      while (1)
      {
        v31 = CFGetTypeID(*v25);
        if (v31 == sub_100006F40())
        {
          v32 = sub_100024FC0(*v25);
          if (CFEqual(v32, v22))
          {
            break;
          }
        }

        sub_10006AD20();
        if (v33)
        {
          goto LABEL_12;
        }
      }

      v34 = *v25;
    }

LABEL_12:
    free(v25);
  }

  free(v28);
  if (v22)
  {
LABEL_14:
    CFRelease(v22);
  }

LABEL_15:
  sub_1000084B8();
}

void sub_10014DEF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t valuePtr, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10000D798();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  valuePtr = 7;
  v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
  Count = CFDictionaryGetCount(*(v21 + 5112));
  if (!Count)
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"No virtual interfaces found"];
    }

    objc_autoreleasePoolPop(v35);
LABEL_19:
    if (!v22)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v24 = Count;
  v25 = (8 * Count);
  sub_100024EF8();
  v27 = malloc_type_malloc(v25, v26);
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = v27;
  sub_1000083BC();
  v30 = malloc_type_malloc(v25, v29);
  if (v30)
  {
    sub_10006ACE8(v30);
    if (v24 >= 1)
    {
      while (1)
      {
        v31 = CFGetTypeID(*v25);
        if (v31 == sub_100006F40())
        {
          v32 = sub_100024FC0(*v25);
          if (CFEqual(v32, v22))
          {
            break;
          }
        }

        sub_10006AD20();
        if (v33)
        {
          goto LABEL_12;
        }
      }

      v34 = *v25;
    }

LABEL_12:
    free(v25);
  }

  free(v28);
  if (v22)
  {
LABEL_14:
    CFRelease(v22);
  }

LABEL_15:
  sub_1000084B8();
}

void sub_10014E034(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t valuePtr, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10000D798();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  valuePtr = 10;
  v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
  Count = CFDictionaryGetCount(*(v21 + 5112));
  if (!Count)
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"No virtual interfaces found"];
    }

    objc_autoreleasePoolPop(v35);
LABEL_19:
    if (!v22)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v24 = Count;
  v25 = (8 * Count);
  sub_100024EF8();
  v27 = malloc_type_malloc(v25, v26);
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = v27;
  sub_1000083BC();
  v30 = malloc_type_malloc(v25, v29);
  if (v30)
  {
    sub_10006ACE8(v30);
    if (v24 >= 1)
    {
      while (1)
      {
        v31 = CFGetTypeID(*v25);
        if (v31 == sub_100006F40())
        {
          v32 = sub_100024FC0(*v25);
          if (CFEqual(v32, v22))
          {
            break;
          }
        }

        sub_10006AD20();
        if (v33)
        {
          goto LABEL_12;
        }
      }

      v34 = *v25;
    }

LABEL_12:
    free(v25);
  }

  free(v28);
  if (v22)
  {
LABEL_14:
    CFRelease(v22);
  }

LABEL_15:
  sub_1000084B8();
}

uint64_t sub_10014E374(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = 4294963396;
  if (a1 && a3)
  {
    v5 = sub_100007060(a1, a2);
    if (!v5)
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Unknown interface %@", a2}];
      }

      v3 = 4294963396;
      goto LABEL_13;
    }

    v6 = CFGetTypeID(v5);
    if (v6 == sub_100006F40())
    {
      v7 = sub_1000086AC();
      v3 = sub_10010FD74(v7, v8);
      if (v3)
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Error setting LTE restricted channels %d", v3}];
        }

LABEL_13:
        objc_autoreleasePoolPop(v9);
      }
    }

    else
    {
      return 4294963396;
    }
  }

  return v3;
}

uint64_t sub_10014E458(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    sub_10000D7AC();
    while (1)
    {
      v4 = *(v2 + 16);
      sub_10002146C();
      Apple80211Set();
      sub_1000214E8();
      v6 = v6 || v5 == 16;
      if (!v6 || !v3)
      {
        break;
      }

      sub_10000390C();
      --v3;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = v8;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Error setting Usb Host Notification %d", 196}];
    }

    objc_autoreleasePoolPop(v9);
  }

  return 196;
}

uint64_t sub_10014E50C(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    sub_10000D7AC();
    while (1)
    {
      v4 = *(v2 + 16);
      sub_10002146C();
      Apple80211Get();
      sub_1000214E8();
      v6 = v6 || v5 == 16;
      if (!v6 || !v3)
      {
        break;
      }

      sub_10000390C();
      --v3;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = v8;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Could not read APPLE80211_IOC_WIFI_NOISE_PER_ANT err=%d", 4294963396}];
    }

    objc_autoreleasePoolPop(v9);
  }

  return 4294963396;
}

uint64_t sub_10014E5C0(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    sub_10000D7AC();
    while (1)
    {
      v4 = *(v2 + 16);
      sub_10002146C();
      Apple80211Set();
      sub_1000214E8();
      v6 = v6 || v5 == 16;
      if (!v6 || !v3)
      {
        break;
      }

      sub_10000390C();
      --v3;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = v8;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Error setting locale %d", 4294963396}];
    }

    objc_autoreleasePoolPop(v9);
  }

  return 4294963396;
}

uint64_t sub_10014E674(uint64_t a1)
{
  v3 = _os_feature_enabled_impl();
  if (!a1)
  {
    return 4294963396;
  }

  if (!v3)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"WFMacRandomisation Rotation disabled "];
    }

    v1 = 4294963396;
    goto LABEL_14;
  }

  for (i = 6; ; --i)
  {
    v5 = *(a1 + 16);
    sub_100015E44();
    Apple80211Get();
    sub_1000214E8();
    v7 = v7 || v6 == 16;
    if (!v7 && v1 != 61 || !i)
    {
      break;
    }

    sub_10000390C();
  }

  if (v1)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"WiFiMC : Error getting APPLE80211_IOC_DEVICE_TYPE_IN_DHCP_ALLOW %d", v1}];
    }

LABEL_14:
    objc_autoreleasePoolPop(v8);
  }

  return v1;
}

void sub_10014E778(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, int valuePtr, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_10000FDC0();
  a28 = v29;
  a29 = v34;
  if (v30)
  {
    if (v31)
    {
      v35 = v30;
      if ((*(v30 + 35) & 0x44) != 0)
      {
        v36 = v33;
        Mutable = 0;
        if (v32 && v33)
        {
          if (CFArrayGetCount(v33) && (v38 = *(v35 + 3984)) != 0 && (valuePtr = 0, (Value = CFDictionaryGetValue(v38, @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC")) != 0) && (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr), valuePtr == 2))
          {
            v40 = sub_1000113AC();
            Mutable = CFArrayCreateMutable(v40, v41, v42);
            if (Mutable)
            {
              if (CFArrayGetCount(v36) < 1)
              {
                v36 = Mutable;
              }

              else
              {
                v43 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v36, v43);
                  if (ValueAtIndex)
                  {
                    v45 = ValueAtIndex;
                    v46 = CFGetTypeID(ValueAtIndex);
                    if (v46 == CFDictionaryGetTypeID())
                    {
                      v47 = sub_1000113AC();
                      MutableCopy = CFDictionaryCreateMutableCopy(v47, v48, v45);
                      if (!CFDictionaryGetValue(MutableCopy, @"RANGING_PEER_FLAGS"))
                      {
                        a16 = 1;
                        v50 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &a16);
                        CFDictionarySetValue(MutableCopy, @"RANGING_PEER_FLAGS", v50);
                        if (v50)
                        {
                          CFRelease(v50);
                        }

                        v51 = objc_autoreleasePoolPush();
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:"%s: setting peer flag to indicate Phone Auto Unlock"];
                        }

                        objc_autoreleasePoolPop(v51);
                      }

                      if (MutableCopy)
                      {
                        v52 = MutableCopy;
                      }

                      else
                      {
                        v52 = v45;
                      }

                      CFArrayAppendValue(Mutable, v52);
                      if (MutableCopy)
                      {
                        CFRelease(MutableCopy);
                      }
                    }

                    else
                    {
                      CFArrayAppendValue(Mutable, v45);
                    }
                  }

                  ++v43;
                }

                while (v43 < CFArrayGetCount(v36));
                v36 = Mutable;
              }
            }
          }

          else
          {
            Mutable = 0;
          }
        }

        for (i = 6; ; --i)
        {
          v54 = *(v35 + 16);
          if (v36)
          {
            CFArrayGetCount(v36);
          }

          v55 = Apple80211Set();
          if (v55 != -3905 && v55 != 61 && v55 != 16)
          {
            break;
          }

          if (!i)
          {
            break;
          }

          sub_10000390C();
        }

        v57 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: ifName %@, set %d, error %d"}];
        }

        objc_autoreleasePoolPop(v57);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }
  }

  sub_100008690();
}

uint64_t sub_10014EA30(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, double a6)
{
  result = 4294963396;
  if (a1 && a2)
  {
    if ((*(a1 + 35) & 0x44) != 0)
    {
      return sub_10006368C(a1, a2, a3, a4, a5, 0, a6);
    }

    else
    {
      return 4294963389;
    }
  }

  return result;
}

uint64_t sub_10014EA60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 4294963396;
  if (a1 && a2)
  {
    if ((*(a1 + 35) & 0x44) != 0)
    {
      for (i = 6; ; --i)
      {
        v10 = *(a1 + 16);
        Apple80211Set();
        sub_10002A194();
        if (!v11 || !i)
        {
          break;
        }

        sub_10000390C();
      }

      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v13 = "Removed";
        if (a3)
        {
          v13 = " Added";
        }

        [off_100298C40 WFLog:3 message:{"%s: Identifier %s on ifName %@: %@, error %d", "WiFiDeviceSetRangingIdentifier", v13, a2, a4, 4294963396}];
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      return 4294963389;
    }
  }

  return v4;
}

uint64_t sub_10014EB74(uint64_t a1)
{
  if (!a1)
  {
    return 4294963396;
  }

  sub_10001131C();
  for (i = 6; ; --i)
  {
    v3 = *(v1 + 16);
    sub_100029EDC();
    result = Apple80211Set();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  return result;
}

uint64_t sub_10014EBE8(uint64_t a1, unsigned int a2)
{
  v5 = *(a1 + 112);
  if (!v5)
  {
    return 4294963396;
  }

  sub_10006AD38();
  while (1)
  {
    v6 = *(v2 + 16);
    sub_10002ACA8();
    Apple80211Set();
    sub_100015EAC();
    if (!v7)
    {
      v7 = v3 == 61 || v3 == 16;
      if (!v7)
      {
        break;
      }
    }

    if (!v4)
    {
      break;
    }

    sub_10000390C();
    --v4;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ifName %@, set %d, error %d", "WiFiDeviceSetThermalIndex", v5, a2, v3}];
  }

  objc_autoreleasePoolPop(v8);
  *(v2 + 5260) = a2;
  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setPowerBudget:"setPowerBudget:andThermalIndex:forInterface:" andThermalIndex:*(v2 + 5256) forInterface:*(v2 + 5260), *(v2 + 112)];
  return v3;
}

uint64_t sub_10014ECD0(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 112))
  {
    return 4294963396;
  }

  sub_10006AD38();
  while (1)
  {
    v5 = *(v2 + 16);
    sub_100015E44();
    result = Apple80211Get();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!v3)
    {
      break;
    }

    sub_10000390C();
    --v3;
  }

  if (a2)
  {
    *(v2 + 5260) = *a2;
  }

  return result;
}

uint64_t sub_10014ED54(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    return 4294963396;
  }

  sub_10001131C();
  for (i = 6; ; --i)
  {
    v3 = *(v1 + 16);
    sub_100029EDC();
    result = Apple80211Get();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  return result;
}

uint64_t sub_10014EDCC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 4294963396;
  }

  for (i = 6; ; --i)
  {
    v5 = *(a1 + 16);
    sub_10002ACA8();
    Apple80211Set();
    sub_1000214E8();
    if (!v6)
    {
      v6 = v1 == 61 || v1 == 16;
      if (!v6)
      {
        break;
      }
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ifName %@, error %d", "WiFiDeviceSetPmMode", v2, v1}];
  }

  objc_autoreleasePoolPop(v7);
  return v1;
}

uint64_t sub_10014EE90(uint64_t a1, unsigned int a2)
{
  v5 = *(a1 + 112);
  if (!v5)
  {
    return 4294963396;
  }

  sub_10006AD38();
  while (1)
  {
    v6 = *(v2 + 16);
    sub_10002ACA8();
    Apple80211Set();
    sub_100015EAC();
    if (!v7)
    {
      v7 = v3 == 61 || v3 == 16;
      if (!v7)
      {
        break;
      }
    }

    if (!v4)
    {
      break;
    }

    sub_10000390C();
    --v4;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ifName %@, set %d, error %d", "WiFiDeviceSetPowerBudget", v5, a2, v3}];
  }

  objc_autoreleasePoolPop(v8);
  *(v2 + 5256) = a2;
  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setPowerBudget:"setPowerBudget:andThermalIndex:forInterface:" andThermalIndex:*(v2 + 5256) forInterface:*(v2 + 5260), *(v2 + 112)];
  return v3;
}

uint64_t sub_10014EF78(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 4294963396;
  }

  for (i = 6; ; --i)
  {
    v5 = *(a1 + 16);
    Apple80211Set();
    sub_1000214E8();
    if (!v6)
    {
      v6 = v1 == 61 || v1 == 16;
      if (!v6)
      {
        break;
      }
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ifName %@, error %d", "WiFiDeviceAbortScan", v2, v1}];
  }

  objc_autoreleasePoolPop(v7);
  return v1;
}

uint64_t sub_10014F03C(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    return 4294963396;
  }

  sub_10001131C();
  for (i = 6; ; --i)
  {
    v3 = *(v1 + 16);
    sub_100029EDC();
    result = Apple80211Get();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  return result;
}

uint64_t sub_10014F0B4(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    return 4294963396;
  }

  sub_10001131C();
  for (i = 6; ; --i)
  {
    v3 = *(v1 + 16);
    sub_100029EDC();
    result = Apple80211Get();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  return result;
}

uint64_t sub_10014F12C(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 5256);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_10014F140(uint64_t a1, int a2, CFDictionaryRef theDict, CFMutableDictionaryRef *a4)
{
  Value = CFDictionaryGetValue(theDict, @"DebugModule");
  if (!Value)
  {
    goto LABEL_139;
  }

  valuePtr = -1431655766;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  switch(valuePtr)
  {
    case 9u:
      v57 = 0;
      if (a1)
      {
        if (theDict)
        {
          v8 = CFDictionaryGetValue(theDict, @"DebugCommandValueDict");
          if (v8)
          {
            v9 = CFDictionaryGetValue(v8, @"errorCode");
            if (v9)
            {
              CFNumberGetValue(v9, kCFNumberIntType, &v57);
              v10 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: received request to simulate join failure with error code %d", "__WiFiDeviceSimulateJoinFailure", v57}];
              }

              objc_autoreleasePoolPop(v10);
              *(a1 + 5296) = v57;
              goto LABEL_139;
            }

            v21 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: errorCodeRef is NULL", "__WiFiDeviceSimulateJoinFailure"}];
            }
          }

          else
          {
            v21 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: joinFailureDict is NULL", "__WiFiDeviceSimulateJoinFailure"}];
            }
          }
        }

        else
        {
          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: request is NULL", "__WiFiDeviceSimulateJoinFailure"}];
          }
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: device is NULL", "__WiFiDeviceSimulateJoinFailure"}];
        }
      }

      goto LABEL_74;
    case 0xAu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
      goto LABEL_27;
    case 0xBu:
      v22 = objc_autoreleasePoolPush();
      v23 = +[NSMutableDictionary dictionary];
      if (!theDict)
      {
        v49 = objc_autoreleasePoolPush();
        v52 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_137;
        }

        v53 = "__WiFiDeviceSimulateJoinOrRoamStatusSubState";
        goto LABEL_112;
      }

      v24 = v23;
      v25 = [(__CFDictionary *)theDict objectForKey:@"DebugCommandValueDict"];
      if (!v25)
      {
        v49 = objc_autoreleasePoolPush();
        v54 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_137;
        }

        v55 = "__WiFiDeviceSimulateJoinOrRoamStatusSubState";
        goto LABEL_117;
      }

      v26 = v25;
      v27 = [v25 objectForKey:@"mode"];
      v28 = [v26 objectForKey:@"type"];
      if (v28)
      {
        v29 = v28;
        if ([v27 isEqualToString:@"clear"])
        {
          v30 = [NSNumber numberWithBool:1];
          v31 = @"IO80211InterfaceSimulateSubStateClear";
LABEL_58:
          [v24 setObject:v30 forKey:v31];
          v42 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: %@", "__WiFiDeviceSimulateJoinOrRoamStatusSubState", v24}];
          }

          objc_autoreleasePoolPop(v42);
          if ([v29 isEqualToString:@"join"])
          {
            if (a1)
            {
              v43 = *(a1 + 112);
            }

            else
            {
              v43 = 0;
            }

            v45 = @"IO80211InterfaceSimulateJoinStatusSubStateParams";
          }

          else
          {
            if (![v29 isEqualToString:@"roam"])
            {
              goto LABEL_138;
            }

            if (a1)
            {
              v43 = *(a1 + 112);
            }

            else
            {
              v43 = 0;
            }

            v45 = @"IO80211InterfaceSimulateRoamStatusSubStateParams";
          }

          sub_10001EA10(a1, v43, v45, v24);
          goto LABEL_138;
        }

        if ([v26 objectForKey:@"type"])
        {
          if (![v26 objectForKey:@"subState"])
          {
            v49 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: subState is nil", "__WiFiDeviceSimulateJoinOrRoamStatusSubState"}];
            }

            goto LABEL_137;
          }

          if (![v26 objectForKey:@"idx"])
          {
            v49 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: idx is nil", "__WiFiDeviceSimulateJoinOrRoamStatusSubState"}];
            }

            goto LABEL_137;
          }

          if (![v26 objectForKey:@"status"])
          {
            v49 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: status is nil", "__WiFiDeviceSimulateJoinOrRoamStatusSubState"}];
            }

            goto LABEL_137;
          }

          if (![v26 objectForKey:@"reason"])
          {
            v49 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: reason is nil", "__WiFiDeviceSimulateJoinOrRoamStatusSubState"}];
            }

            goto LABEL_137;
          }

          [v24 setObject:objc_msgSend(v26 forKey:{"objectForKey:", @"subState", @"IO80211InterfaceSimulateSubStateType"}];
          [v24 setObject:objc_msgSend(v26 forKey:{"objectForKey:", @"idx", @"IO80211InterfaceSimulateSubStateIdx"}];
          [v24 setObject:objc_msgSend(v26 forKey:{"objectForKey:", @"status", @"IO80211InterfaceSimulateSubStateStatus"}];
          v30 = [v26 objectForKey:@"reason"];
          v31 = @"IO80211InterfaceSimulateSubStateReason";
          goto LABEL_58;
        }
      }

      v49 = objc_autoreleasePoolPush();
      v50 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_137;
      }

      v51 = "__WiFiDeviceSimulateJoinOrRoamStatusSubState";
      goto LABEL_122;
    case 0xCu:
      v22 = objc_autoreleasePoolPush();
      v32 = +[NSMutableDictionary dictionary];
      if ((*(a1 + 38) & 0x10) != 0)
      {
        if (theDict)
        {
          v33 = v32;
          v34 = [(__CFDictionary *)theDict objectForKey:@"DebugCommandValueDict"];
          if (v34)
          {
            v35 = v34;
            if ([v34 objectForKey:@"type"])
            {
              v36 = [v35 objectForKey:@"type"];
              if ([v36 isEqualToString:@"set"])
              {
                if ([v35 objectForKey:@"mode"])
                {
                  if ([v35 objectForKey:@"bssids"])
                  {
                    v37 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v35 objectForKey:@"bssids"]);
                    [v33 setObject:objc_msgSend(v35 forKey:{"objectForKey:", @"mode", @"IO80211InterfaceBssidBlacklistMode"}];
                    v38 = @"IO80211InterfaceBssidBlacklistBssids";
                    v39 = v33;
                    v40 = v37;
LABEL_66:
                    [v39 setObject:v40 forKey:v38];
                    v44 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: %@", "__WiFiDeviceConfigBssBlacklist", v33}];
                    }

                    objc_autoreleasePoolPop(v44);
                    sub_100006F94(a1, *(a1 + 112), 372, 0, v33);
                    goto LABEL_138;
                  }

                  v49 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:4 message:{"%s: bssids nil", "__WiFiDeviceConfigBssBlacklist"}];
                  }

                  goto LABEL_137;
                }
              }

              else
              {
                if (![v36 isEqualToString:@"clear"])
                {
                  goto LABEL_138;
                }

                if ([v35 objectForKey:@"mode"])
                {
                  v40 = [v35 objectForKey:@"mode"];
                  v38 = @"IO80211InterfaceBssidBlacklistMode";
                  v39 = v33;
                  goto LABEL_66;
                }
              }

              v49 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: mode is nil", "__WiFiDeviceConfigBssBlacklist"}];
              }

              goto LABEL_137;
            }

            v49 = objc_autoreleasePoolPush();
            v50 = off_100298C40;
            if (!off_100298C40)
            {
              goto LABEL_137;
            }

            v51 = "__WiFiDeviceConfigBssBlacklist";
LABEL_122:
            [v50 WFLog:4 message:{"%s: type is nil", v51}];
          }

          else
          {
            v49 = objc_autoreleasePoolPush();
            v54 = off_100298C40;
            if (!off_100298C40)
            {
              goto LABEL_137;
            }

            v55 = "__WiFiDeviceConfigBssBlacklist";
LABEL_117:
            [v54 WFLog:4 message:{"%s: valuesDict is nil", v55}];
          }
        }

        else
        {
          v49 = objc_autoreleasePoolPush();
          v52 = off_100298C40;
          if (!off_100298C40)
          {
            goto LABEL_137;
          }

          v53 = "__WiFiDeviceConfigBssBlacklist";
LABEL_112:
          [v52 WFLog:4 message:{"%s: request is nil", v53}];
        }
      }

      else
      {
        v49 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: BssBlacklist not supported.. Bailing!", "__WiFiDeviceConfigBssBlacklist"}];
        }
      }

LABEL_137:
      objc_autoreleasePoolPop(v49);
LABEL_138:
      objc_autoreleasePoolPop(v22);
LABEL_139:
      sub_10001ED88();
      return;
    case 0x12u:
      *(a1 + 5300) = 1;
      goto LABEL_139;
    default:
      if (valuePtr == 23)
      {
        -[WiFiUsageMonitor addFaultEvent:forInterface:](+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor, "sharedInstance"), "addFaultEvent:forInterface:", [-[__CFDictionary objectForKeyedSubscript:](theDict objectForKeyedSubscript:{@"faultReason", "unsignedIntegerValue"}], *(a1 + 112));
        goto LABEL_139;
      }

      if (valuePtr != 4)
      {
        if (!valuePtr)
        {
          v11 = CFDictionaryGetValue(theDict, @"DebugCommand");
          if (!v11)
          {
            goto LABEL_139;
          }

          v57 = &xpc_dictionary_set_uint64_ptr;
          CFNumberGetValue(v11, kCFNumberIntType, &v57);
          switch(v57)
          {
            case 0u:
              if (*(a1 + 5088))
              {
                Count = CFArrayGetCount(*(a1 + 5080));
                if (Count)
                {
                  v13 = Count;
                  if (Count >= 1)
                  {
                    for (i = 0; i != v13; ++i)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 5080), i);
                      if (ValueAtIndex)
                      {
                        v16 = ValueAtIndex;
                        v17 = sub_1000A5018(ValueAtIndex);
                        v18 = sub_10009A8E0(v16);
                        if (v17)
                        {
                          v19 = v18;
                          if (v18)
                          {
                            v20 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:3 message:{"%@ %@", v17, v19}];
                            }

                            objc_autoreleasePoolPop(v20);
                          }
                        }
                      }
                    }
                  }

                  goto LABEL_139;
                }

                v46 = objc_autoreleasePoolPush();
                v47 = off_100298C40;
                if (off_100298C40)
                {
                  v48 = "GAS cache is empty";
                  goto LABEL_92;
                }
              }

              else
              {
                v46 = objc_autoreleasePoolPush();
                v47 = off_100298C40;
                if (off_100298C40)
                {
                  v48 = "GAS cache is disabled";
LABEL_92:
                  [v47 WFLog:3 message:v48];
                }
              }

LABEL_93:
              objc_autoreleasePoolPop(v46);
              goto LABEL_139;
            case 1u:
              sub_100062D38(a1);
              goto LABEL_139;
            case 2u:
              *(a1 + 5088) = 0;
              sub_100062D38(a1);
              v46 = objc_autoreleasePoolPush();
              v47 = off_100298C40;
              if (!off_100298C40)
              {
                goto LABEL_93;
              }

              v48 = "Disabled GAS cache";
              goto LABEL_92;
            case 3u:
              *(a1 + 5088) = 1;
              v46 = objc_autoreleasePoolPush();
              v47 = off_100298C40;
              if (!off_100298C40)
              {
                goto LABEL_93;
              }

              v48 = "Enabled GAS cache";
              goto LABEL_92;
            default:
              goto LABEL_72;
          }
        }

LABEL_27:
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Unknown debug module %d", valuePtr}];
        }

LABEL_74:
        objc_autoreleasePoolPop(v21);
        goto LABEL_139;
      }

      if (a1)
      {
        if (!theDict)
        {
          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceDebugLqmConfig"}];
          }

          goto LABEL_74;
        }

        v41 = CFDictionaryGetValue(theDict, @"DebugCommand");
        if (!v41)
        {
          goto LABEL_139;
        }

        v57 = &xpc_dictionary_set_uint64_ptr;
        if (!CFNumberGetValue(v41, kCFNumberIntType, &v57))
        {
          goto LABEL_139;
        }

        if (v57 == 1)
        {
          if (CFDictionaryGetValue(theDict, @"DebugCommandValueDict"))
          {
            sub_100063814(a1);
          }

          goto LABEL_139;
        }

        if (v57)
        {
LABEL_72:
          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"Unknown debug command %d", v57}];
          }

          goto LABEL_74;
        }

        if (a4)
        {
          *a4 = sub_100063748(a1);
          goto LABEL_139;
        }
      }

      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Device is NULL", "__WiFiDeviceDebugLqmConfig"}];
      }

      goto LABEL_74;
  }
}

uint64_t sub_10014FCC8(uint64_t a1, uint64_t a2, int a3)
{
  keys = @"LEAKY_AP_LEARNING_MODE";
  v4 = &kCFBooleanTrue;
  if (!a3)
  {
    v4 = &kCFBooleanFalse;
  }

  values = *v4;
  v5 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v5)
  {
    return 4294963395;
  }

  v6 = v5;
  for (i = 6; ; --i)
  {
    v8 = *(a1 + 16);
    sub_100015E44();
    v9 = Apple80211Set();
    v10 = v9;
    if (v9 != -3905 && v9 != 61 && v9 != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  CFRelease(v6);
  return v10;
}

__CFArray *sub_10014FDD8(uint64_t a1)
{
  if (!CFArrayGetCount(*(a1 + 5024)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable && CFArrayGetCount(*(a1 + 5024)) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 5024), v3);
      if (ValueAtIndex)
      {
        v5 = sub_10009A8E0(ValueAtIndex);
        if (v5)
        {
          v6 = v5;
          if (CFArrayGetCount(v5) >= 1)
          {
            v7 = 0;
            do
            {
              v8 = CFArrayGetValueAtIndex(v6, v7);
              v9 = sub_10009D404(v8);
              CFArrayAppendValue(Mutable, v9);
              if (v9)
              {
                CFRelease(v9);
              }

              ++v7;
            }

            while (v7 < CFArrayGetCount(v6));
          }
        }
      }

      ++v3;
    }

    while (v3 < CFArrayGetCount(*(a1 + 5024)));
  }

  return Mutable;
}

__CFArray *sub_10014FED8()
{
  sub_10001131C();
  if (!CFArrayGetCount(*(v2 + 5024)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable && CFArrayGetCount(*(v1 + 5024)) >= 1)
  {
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 5024), v4);
      if (ValueAtIndex)
      {
        v6 = ValueAtIndex;
        v7 = sub_10010DB50(ValueAtIndex);
        Current = CFAbsoluteTimeGetCurrent();
        v9 = Current <= v7 ? 0.0 : (Current - v7) * 1000.0;
        v10 = sub_10009A8E0(v6);
        if (v10)
        {
          v11 = v10;
          if (CFArrayGetCount(v10) >= 1)
          {
            v12 = 0;
            do
            {
              v13 = CFArrayGetValueAtIndex(v11, v12);
              if (v13)
              {
                v14 = v13;
                v15 = sub_100034EEC(v13, @"ORIG_AGE") + v9;
                if (!v0 || v15 <= v0)
                {
                  sub_10000C614(v14, @"AGE", v15);
                  CFArrayAppendValue(Mutable, v14);
                }
              }

              ++v12;
            }

            while (v12 < CFArrayGetCount(v11));
          }
        }
      }

      ++v4;
    }

    while (v4 < CFArrayGetCount(*(v1 + 5024)));
  }

  return Mutable;
}

void sub_100150054(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *value, void *a14, void *key, uint64_t a16, uint64_t valuePtr, CFArrayRef theArray, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10002183C();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  theArray = 0;
  v36 = sub_100007060(v34, v32);
  v37 = "WiFiDeviceCopyInterfaceDataUsage";
  if (!v36)
  {
    v74 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: unknown interface %@"];
    }

    objc_autoreleasePoolPop(v74);
    v40 = 0;
    v71 = 0;
    goto LABEL_54;
  }

  v38 = v36;
  v39 = CFGetTypeID(v36);
  if (v39 == sub_100006F40())
  {
    v40 = sub_10010F400(v38, 42, 0, &theArray);
  }

  else
  {
    for (i = 6; ; --i)
    {
      v64 = *(v35 + 16);
      v65 = Apple80211CopyValue();
      v40 = v65;
      if (v65 != -3905 && v65 != 61 && v65 != 16)
      {
        break;
      }

      if (!i)
      {
        break;
      }

      sub_10000390C();
    }
  }

  if (theArray)
  {
    valuea = v33;
    if (CFArrayGetCount(theArray) < 1)
    {
      Mutable = 0;
    }

    else
    {
      v41 = 0;
      Mutable = 0;
      do
      {
        if (CFArrayGetValueAtIndex(theArray, v41))
        {
          v43 = sub_1000113AC();
          MutableCopy = CFDictionaryCreateMutableCopy(v43, v44, v45);
          v47 = CFGetTypeID(v38);
          if (v47 == sub_100006F40())
          {
            v40 = sub_10010F400(v38, 79, 0, MutableCopy);
          }

          else
          {
            for (j = 6; ; --j)
            {
              v60 = *(v35 + 16);
              v61 = Apple80211CopyValue();
              v40 = v61;
              if (v61 != -3905 && v61 != 61 && v61 != 16)
              {
                break;
              }

              if (!j)
              {
                break;
              }

              sub_10000390C();
            }
          }

          if (!v40)
          {
            if (!Mutable)
            {
              v48 = sub_1000113AC();
              Mutable = CFArrayCreateMutable(v48, v49, &kCFTypeArrayCallBacks);
            }

            v50 = sub_1000113AC();
            v52 = CFDictionaryCreateMutable(v50, v51, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v53 = CFDictionaryGetValue(MutableCopy, @"STATION_MAC");
            CFDictionarySetValue(v52, @"DataUsageInterfacePeerAddr", v53);
            a16 = 0;
            valuePtr = 0;
            v54 = CFDictionaryGetValue(MutableCopy, @"STA_RXBYTES");
            if (v54)
            {
              CFNumberGetValue(v54, kCFNumberSInt32Type, &valuePtr + 4);
            }

            v55 = v37;
            v56 = CFDictionaryGetValue(MutableCopy, @"STA_TXBYTES");
            if (v56)
            {
              CFNumberGetValue(v56, kCFNumberSInt32Type, &valuePtr);
            }

            a16 = (valuePtr + HIDWORD(valuePtr));
            v57 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &a16);
            CFDictionarySetValue(v52, @"DataUsageInterfacePeerLastBytes", v57);
            if (v57)
            {
              CFRelease(v57);
            }

            CFArrayAppendValue(Mutable, v52);
            if (v52)
            {
              CFRelease(v52);
            }

            v37 = v55;
          }

          v58 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: err=%d, client stats %@"}];
          }

          objc_autoreleasePoolPop(v58);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }
        }

        ++v41;
      }

      while (v41 < CFArrayGetCount(theArray));
    }

    v67 = sub_1000113AC();
    v71 = CFDictionaryCreateMutable(v67, v68, v69, v70);
    CFDictionarySetValue(v71, @"DataUsageInterfaceName", valuea);
    if (Mutable)
    {
      Count = CFArrayGetCount(Mutable);
      if (Count)
      {
        sub_100008BBC(Count, @"DataUsageInterfacePeerList");
      }
    }

    v73 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: interface data usage %@"];
    }

    objc_autoreleasePoolPop(v73);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

LABEL_54:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (v40 && v71)
    {
      CFRelease(v71);
    }
  }

  sub_10000FDDC();
}

void sub_10015043C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const __CFNumber *value, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100024B78();
  a19 = v21;
  a20 = v24;
  value = 0;
  if (v23)
  {
    v25 = v22;
    if (*(v22 + 112))
    {
      v26 = v23;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v28 = Mutable;
        *v26 = 0;
        for (i = 6; ; --i)
        {
          v30 = *(v25 + 16);
          sub_100029EDC();
          Apple80211Get();
          sub_100015EAC();
          v32 = v32 || v31 == 16;
          if (!v32 && v20 != 61 || !i)
          {
            break;
          }

          sub_10000390C();
        }

        if (v20)
        {
          v33 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:"%s Apple80211Get(APPLE80211_IOC_AUTH_TYPE) failed: %d"];
          }

          objc_autoreleasePoolPop(v33);
        }

        else
        {
          CFDictionaryGetValueIfPresent(v28, @"AUTH_UPPER", &value);
          if (value)
          {
            CFNumberGetValue(value, kCFNumberSInt32Type, v26);
          }
        }

        CFRelease(v28);
      }
    }
  }

  sub_10006AD5C();
}

const void *sub_10015056C(uint64_t a1, const void *a2)
{
  v4 = sub_10000A154([+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")]);
  result = 0;
  if (a2 && a1 && !v4)
  {
    if (!*(a1 + 5168) || !*(a1 + 5176))
    {
      return 0;
    }

    result = sub_10000A878(a2);
    if (result)
    {
      result = sub_10000A540(a2, @"BSSID");
      if (result)
      {
        v6 = *(a1 + 5168);
        sub_10000A878(a2);
        v7 = sub_10000D800();
        if (CFStringCompare(v7, v8, 0) == kCFCompareEqualTo)
        {
          v9 = *(a1 + 5176);
          sub_10000A540(a2, @"BSSID");
          v10 = sub_10000D800();
          if (CFStringCompare(v10, v11, 0) == kCFCompareEqualTo)
          {
            if (*(a1 + 5192))
            {
              return (*(a1 + 5193) != 0);
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_100150650(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v5 = "enabled";
      if (!a2)
      {
        v5 = "disabled";
      }

      [off_100298C40 WFLog:3 message:{"%s: ranging log dump is %s", "WiFiDeviceSetEnableRangingLogDump", v5}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 5304) = a2;
  }
}

void sub_1001506E8(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v5 = "Enabled";
      if (!a2)
      {
        v5 = "Disabled";
      }

      [off_100298C40 WFLog:3 message:{"%s: BT A2DP LLA Traffic Status = %s", "WiFiDeviceUpdateBTA2DPLLATrafficStatus", v5}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 5305) = a2;
  }
}

uint64_t sub_100150780(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    sub_100006F94(a1, *(a1 + 112), 514, 0, v3);
    CFRelease(v4);
  }

  return 1;
}

void sub_1001507F0()
{
  sub_100024B78();
  if (v0)
  {
    if (v1)
    {
      v3 = v2;
      if (v2)
      {
        v4 = v0;
        if (*(v0 + 46))
        {
          v5 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"Attempting APPLE80211_IOC_NDD_REQ on %@"];
          }

          objc_autoreleasePoolPop(v5);
          for (i = 6; ; --i)
          {
            v7 = *(v4 + 16);
            CFDataGetBytePtr(v3);
            CFDataGetLength(v3);
            Apple80211Set();
            sub_10002A194();
            v9 = v9 || v8 == 16;
            if (!v9 && v7 != 61 || !i)
            {
              break;
            }

            sub_10000390C();
          }

          if (v7)
          {
            v10 = objc_autoreleasePoolPush();
            v11 = sub_10001D1AC();
            if (v11)
            {
              [v11 WFLog:4 message:"%s: IOC %d returned error %d"];
            }

            objc_autoreleasePoolPop(v3);
          }
        }
      }
    }
  }

  sub_10006AD5C();
}

void sub_100150ACC()
{
  sub_100024B78();
  if (!v0)
  {
    goto LABEL_20;
  }

  v2 = v1;
  if (!v1)
  {
    goto LABEL_20;
  }

  v3 = v0;
  if ((*(v0 + 40) & 2) == 0)
  {
    goto LABEL_20;
  }

  CFArrayRemoveAllValues(*(v0 + 5320));
  *(v3 + 5312) = 0;
  v4 = sub_100007060(v3, v2);
  if (!v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (off_100298C40)
    {
      v13 = "%s: unknown interface %@";
LABEL_26:
      [v8 WFLog:4 message:v13];
    }

LABEL_19:
    objc_autoreleasePoolPop(v7);
    goto LABEL_20;
  }

  v5 = CFGetTypeID(v4);
  v6 = sub_100006F40();
  v7 = objc_autoreleasePoolPush();
  v8 = off_100298C40;
  if (v5 == v6)
  {
    if (off_100298C40)
    {
      v13 = "%s: unsupported interface %@";
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Attempting APPLE80211_IOC_SENSING_DISABLE on %@"];
  }

  objc_autoreleasePoolPop(v7);
  for (i = 6; ; --i)
  {
    v10 = *(v3 + 16);
    Apple80211Set();
    sub_10002A194();
    v12 = v12 || v11 == 16;
    if (!v12 && v5 != 61 || !i)
    {
      break;
    }

    sub_10000390C();
  }

  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: IOC %d returned error %d"];
    }

    goto LABEL_19;
  }

LABEL_20:
  sub_10006AD5C();
}

void sub_100150C60(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    sub_100006F94(a1, *(a1 + 112), 345, 0, v3);
    CFRelease(v4);
  }
}

uint64_t sub_100150CCC(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    sub_10000D7AC();
    while (1)
    {
      v5 = *(v2 + 16);
      sub_100029EDC();
      Apple80211Set();
      sub_100015EAC();
      v7 = v7 || v6 == 16;
      if (!v7 || !v3)
      {
        break;
      }

      sub_10000390C();
      --v3;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = v9;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Error %d setting blocked bands %@", 6, a2}];
    }

    objc_autoreleasePoolPop(v10);
  }

  return 6;
}

uint64_t sub_100150D84(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 5368) = a2;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v4 = "yes";
      if (!a2)
      {
        v4 = "no";
      }

      [off_100298C40 WFLog:3 message:{"%s: enable %s", "WiFiDeviceSetAssertiveTD", v4}];
    }

    objc_autoreleasePoolPop(v3);
  }

  return 4294963396;
}

BOOL sub_100150E14(uint64_t a1)
{
  number = 0;
  valuePtr = 0;
  if (!a1)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error: null device", "WiFiDeviceIsHostApTerminated", v8}];
    }

    goto LABEL_20;
  }

  sub_10006AD38();
  while (1)
  {
    sub_10006AD70();
    sub_100015EAC();
    v4 = v4 || v3 == 16;
    if (!v4 && v1 != 61 || !v2)
    {
      break;
    }

    sub_10000390C();
    --v2;
  }

  if (v1)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiError: %d ", "WiFiDeviceIsHostApTerminated", v1}];
    }

LABEL_20:
    objc_autoreleasePoolPop(v7);
    goto LABEL_21;
  }

  if (CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
  {
    v5 = (valuePtr & 8) == 0;
    goto LABEL_13;
  }

LABEL_21:
  v5 = 0;
LABEL_13:
  if (number)
  {
    CFRelease(number);
  }

  return v5;
}

uint64_t sub_100150F20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 5280) = a2;
    *(result + 5288) = a3;
  }

  return result;
}

void sub_100150F34(void *a1)
{
  context = objc_autoreleasePoolPush();
  v4 = a1[7];
  if (v4)
  {
    v5 = *(v4 + 112);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000078F4(v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = sub_10000A878(v6);
    v9 = sub_10000A540(v7, @"BSSID");
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v11 = *(*(a1[4] + 8) + 40);
      [off_100298C40 WFLog:3 message:{"%s: v4:%@ v6:%@", "WiFiDeviceConditionallyUpdateStoreWithIPSignatures_block_invoke", v11, *(*(a1[5] + 8) + 40)}];
    }

    objc_autoreleasePoolPop(v10);
    v12 = a1[7];
    v13 = *(*(a1[4] + 8) + 40);
    v14 = *(*(a1[5] + 8) + 40);
    v47 = 0;
    v48 = &v47;
    v49 = 0x3052000000;
    sub_100029D9C();
    v50 = v15;
    sub_100007548();
    v51 = v16;
    v52 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = v17;
    sub_100029D9C();
    v44 = v18;
    sub_100007548();
    v45 = v19;
    v46 = 0;
    if (!v12 || !objc_opt_class() || !+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient]|| !(v13 | v14))
    {
      goto LABEL_33;
    }

    if (v9)
    {
      if (v8)
      {
        if (+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient])
        {
          if (v12[673] && v12[674] && (v12[675] || v12[676]))
          {
            v2 = [v8 isEqual:?];
            if (v2 & [v9 isEqual:v12[674]])
            {
              v20 = v12[675];
              if (v13)
              {
                if (!v20 || ([v20 isEqualToData:v13] & 1) != 0)
                {
LABEL_22:
                  v21 = v12[676];
                  if (v14)
                  {
                    if (v21 && ([v21 isEqualToData:v14] & 1) == 0)
                    {
LABEL_57:
                      v34 = WALogCategoryDeviceStoreHandle();
                      if (sub_10006AD90(v34))
                      {
                        *buf = 136446466;
                        sub_10006ACB8();
                        *(&v54 + 6) = 2358;
                        v23 = "%{public}s::%d:ipv6 signature changed: update the DB";
                        goto LABEL_59;
                      }

LABEL_60:
                      v39 = [WADeviceAnalytics_DHCPServerInfo dhcpServerInfoWithv4Signature:[CWFNetworkSignature createHexStringFromBytes:v13] v6Signature:[CWFNetworkSignature createHexStringFromBytes:v14]];
                      v24 = objc_autoreleasePoolPush();
                      if (v39)
                      {
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: updating DB with LAN signature for %@(%@) IPv4NetworkSignature:%@ IPv6NetworkSignature:%@", "__WiFiDeviceConditionallyUpdateStoreWithIPSignatures", v8, v9, -[WADeviceAnalytics_DHCPServerInfo ipv4networkSignature](v39, "ipv4networkSignature"), -[WADeviceAnalytics_DHCPServerInfo ipv6networkSignature](v39, "ipv6networkSignature")}];
                        }

                        objc_autoreleasePoolPop(v24);
                        if (v13)
                        {
                          v35 = v13;
                        }

                        else
                        {
                          v35 = 0;
                        }

                        v48[5] = v35;
                        if (v14)
                        {
                          v36 = v14;
                        }

                        else
                        {
                          v36 = 0;
                        }

                        v42[5] = v36;
                        v37 = +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
                        v38 = +[NSDate now];
                        *buf = _NSConcreteStackBlock;
                        *&v54 = 3221225472;
                        *(&v54 + 1) = sub_1000659F4;
                        v55 = &unk_10025F690;
                        v56 = v8;
                        v57 = v9;
                        v58 = &v47;
                        v59 = &v41;
                        v60 = v12;
                        [v37 dhcpEventOnBssid:v9 ssid:v8 serverInfo:v39 at:v38 with:buf];
                        goto LABEL_33;
                      }

                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:4 message:{"%s: unable to create LAN signature from %@ %@", "__WiFiDeviceConditionallyUpdateStoreWithIPSignatures", v13, v14}];
                      }

LABEL_32:
                      objc_autoreleasePoolPop(v24);
LABEL_33:
                      _Block_object_dispose(&v41, 8);
                      _Block_object_dispose(&v47, 8);
                      goto LABEL_34;
                    }
                  }

                  else if (v21)
                  {
                    goto LABEL_57;
                  }

LABEL_30:
                  v24 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: network signatures didn't change. Not updating DB", "__WiFiDeviceConditionallyUpdateStoreWithIPSignatures"}];
                  }

                  goto LABEL_32;
                }
              }

              else if (!v20)
              {
                goto LABEL_22;
              }

              v22 = WALogCategoryDeviceStoreHandle();
              if (!sub_10006AD90(v22))
              {
                goto LABEL_60;
              }

              *buf = 136446466;
              sub_10006ACB8();
              *(&v54 + 6) = 2353;
              v23 = "%{public}s::%d:ipv4 signature changed: update the DB";
            }

            else
            {
              v33 = WALogCategoryDeviceStoreHandle();
              if (!sub_10006AD90(v33))
              {
                goto LABEL_60;
              }

              *buf = 136446466;
              sub_10006ACB8();
              *(&v54 + 6) = 2348;
              v23 = "%{public}s::%d:cached SSID or BSSID differs from current: update the DB";
            }
          }

          else
          {
            v28 = WALogCategoryDeviceStoreHandle();
            if (!sub_10006AD90(v28))
            {
              goto LABEL_60;
            }

            *buf = 136446466;
            sub_10006ACB8();
            *(&v54 + 6) = 2344;
            v23 = "%{public}s::%d:No cached signatures: update the DB";
          }

LABEL_59:
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, v23, buf, 0x12u);
          goto LABEL_60;
        }

        v31 = WALogCategoryDeviceStoreHandle();
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        *buf = 136446466;
        sub_10006ACB8();
        *(&v54 + 6) = 2341;
        v32 = "%{public}s::%d:null sharedDeviceAnalyticsClient";
      }

      else
      {
        v31 = WALogCategoryDeviceStoreHandle();
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        *buf = 136446466;
        sub_10006ACB8();
        *(&v54 + 6) = 2340;
        v32 = "%{public}s::%d:null ssid";
      }
    }

    else
    {
      v31 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *buf = 136446466;
      sub_10006ACB8();
      *(&v54 + 6) = 2339;
      v32 = "%{public}s::%d:null bssid";
    }

    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x12u);
    goto LABEL_30;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = sub_10006AD2C();
  if (v30)
  {
    [v30 WFLog:3 message:{"%s: Not associated", "WiFiDeviceConditionallyUpdateStoreWithIPSignatures_block_invoke"}];
  }

  objc_autoreleasePoolPop(v1);
LABEL_34:
  v25 = *(*(a1[6] + 8) + 24);
  if (v25)
  {
    CFRelease(v25);
    *(*(a1[6] + 8) + 24) = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v26 = *(*(a1[4] + 8) + 40);
  if (v26)
  {

    *(*(a1[4] + 8) + 40) = 0;
  }

  v27 = *(*(a1[5] + 8) + 40);
  if (v27)
  {

    *(*(a1[5] + 8) + 40) = 0;
  }

  objc_autoreleasePoolPop(context);
}

uint64_t sub_1001515F4(uint64_t a1, const __CFDictionary *a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 1;
  }

  v5 = Mutable;
  sub_100066680(a1, a2, Mutable);
  if (CFArrayGetCount(v5) < 1)
  {
LABEL_6:
    v11 = 1;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = sub_100021D58();
      CFArrayGetValueAtIndex(v7, v8);
      v9 = sub_100015EB8();
      if (!CFSetContainsValue(v9, v10))
      {
        break;
      }

      if (++v6 >= CFArrayGetCount(v5))
      {
        goto LABEL_6;
      }
    }

    v11 = 0;
  }

  CFRelease(v5);
  return v11;
}

__CFDictionary *sub_1001516B4(uint64_t a1)
{
  valuePtr = 0;
  v17 = 0;
  v2 = sub_10000A540(a1, @"CHANNEL");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CFNumberGetValue(v2, kCFNumberCFIndexType, &v17);
  Value = sub_10000A540(a1, @"CHANNEL_FLAGS");
  if (Value)
  {
    Value = CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    if (v17 <= 14)
    {
      v6 = 8;
    }

    else
    {
      v6 = 16;
    }

    v7 = valuePtr & 0x2018;
    if ((valuePtr & 0x2018) == 0)
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = v17 <= 14 ? 8 : 16;
  }

  valuePtr = v7;
  v8 = sub_100008C4C(Value, v5, &valuePtr);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_10000836C();
  Mutable = CFDictionaryCreateMutable(v10, v11, v12, v13);
  v15 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"CHANNEL", v3);
    CFDictionarySetValue(v15, @"CHANNEL_FLAGS", v9);
  }

  CFRelease(v9);
  return v15;
}

void sub_1001517E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int valuePtr, CFNumberRef number, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100024B78();
  a20 = v21;
  a21 = v23;
  v25 = v24;
  v26 = v22;
  v27 = (v22 + 3936);
  v28 = *(v22 + 3936);
  v29 = *(v22 + 3944);
  if (!v24 && v28)
  {
    sub_10002ECA0(v22);
    *v27 = 0;
    v27[1] = 0;
LABEL_4:
    v30 = sub_100021D58();
    v28(v30);
    goto LABEL_5;
  }

  *v27 = 0;
  *(v22 + 3944) = 0;
  if (v28)
  {
    goto LABEL_4;
  }

LABEL_5:
  number = 0;
  valuePtr = 0;
  if (*(v26 + 4264))
  {
    for (i = 6; ; --i)
    {
      sub_10006AD70();
      sub_100015EAC();
      v33 = v33 || v32 == 16;
      if (!v33 && v25 != 61 || !i)
      {
        break;
      }

      sub_10000390C();
    }

    if (v25)
    {
      v40 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: WiFiError: %d "];
      }

      objc_autoreleasePoolPop(v40);
    }

    else if (CFNumberGetValue(number, kCFNumberIntType, &valuePtr) && (valuePtr & 8) == 0)
    {
      if (*(v26 + 60))
      {
        *(v26 + 60) = 0;
        v34 = *(v26 + 4264);
        v35 = *(v26 + 4240);
        v36 = sub_100008684();
        v37(v36);
      }
    }

    sub_10006AD5C();
  }

  else
  {
    objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: Error: null callback"];
    }

    sub_10006AD5C();

    objc_autoreleasePoolPop(v38);
  }
}

CFMutableArrayRef sub_100151A2C(const __CFArray *a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        if (ValueAtIndex && sub_10000A540(ValueAtIndex, @"BSSID"))
        {
          v7 = sub_100015EB8();
          CFArrayAppendValue(v7, v8);
        }
      }
    }
  }

  return Mutable;
}

void sub_100151AD4()
{
  sub_100011520();
  v3 = v0;
  v4 = *(v0 + 5316);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v2;
  v6 = v1;
  v7 = (v0 + 4760);
  v8 = *(v0 + 4760);
  v9 = *(v0 + 4768);
  *(v0 + 5316) = v4 - 1;
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v19 = *(v3 + 5316);
    [off_100298C40 WFLog:3 message:{"Received APPLE80211_M_SENSING_DONE on %@ (%d), expected remaing result[%d]"}];
  }

  objc_autoreleasePoolPop(v10);
  *v7 = 0;
  *(v3 + 4768) = 0;
  if (!v6 || v5 || !CFDictionaryGetCount(v6))
  {
    goto LABEL_15;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v6);
  if (MutableCopy)
  {
    v12 = MutableCopy;
    if (*(v3 + 5306))
    {
      v13 = kCFBooleanTrue;
    }

    else
    {
      v13 = kCFBooleanFalse;
    }

    CFDictionaryAddValue(MutableCopy, @"SENSING_RESULTS_DATA_DEVICE_MOTION_STATE", v13);
    if (*(v3 + 5307))
    {
      v14 = kCFBooleanTrue;
    }

    else
    {
      v14 = kCFBooleanFalse;
    }

    CFDictionaryAddValue(v12, @"SENSING_RESULTS_DATA_DEVICE_CHARGING_STATE", v14);
    CFArrayAppendValue(*(v3 + 5320), v12);
    CFRelease(v12);
LABEL_15:
    if (v8)
    {
      v15 = sub_100021D58();
      v8(v15);
    }

    goto LABEL_17;
  }

  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"%s: null sensingUpdateResult"];
  }

  objc_autoreleasePoolPop(v18);
LABEL_17:
  sub_10001091C();

  sub_10002ECA0(v16);
}

void sub_100151C68(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    sub_10000D798();
    v4 = v3[615];
    if (v4)
    {
      v5 = v3[616];
      v6 = v3[2];
      sub_10002ACA8();
      if (Apple80211Get())
      {
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Apple80211Get(..., APPLE80211_IOC_OP_MODE) failed. error = %i\n"}];
        }

        objc_autoreleasePoolPop(v8);
      }

      else
      {
        v7 = sub_100011580();
        v4(v7);
      }
    }

    sub_1000084B8();
  }
}