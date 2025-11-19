id sub_100002248(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleAppStateChange:a2];
  v3 = *(a1 + 32);

  return [v3 registerLPMNotifier];
}

void sub_100002454(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100002594(uint64_t a1)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v2 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  v3 = dword_1002B7640;
  [v2 setActiveSlot:{objc_msgSend(v2, "getUserDataPreferredSlot")}];
  [v2 getCTDataIndictor];
  v4 = [v2 getCurrentNRStatusDataSlot];
  v5 = [v2 getWiFiNRStatusDataSlot];
  v6 = [v2 isDeviceUsingFR2Radio];
  v7 = [v2 getBandWidthDataSlot];
  byte_1002B7B5D = [v2 isDataPreferredSlotCBRS];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003074;
  block[3] = &unk_10023E500;
  block[4] = v2;
  block[5] = &v31;
  block[6] = &v27;
  dispatch_sync([v2 getClientQueue], block);
  v8 = *(v32 + 24);
  [WCM_Logging logLevel:24 message:@"evaluateWiFiVersusCell: isCurrentCellNR: %d, iswifiCellNR: %d, isDeviceUsingFR2: %d, cellBandwidth: %d, cellScoreBad: %d", v4 != 0, v5 != 0, v6, v7, v8];
  v9 = [*(*(a1 + 32) + 40) wifiService];
  v10 = [v9 getWghtAverageRSSI];
  v11 = [v9 getCCA];
  [v9 getTxPer];
  v13 = v12;
  v14 = [v9 getWghtAverageSNR];
  [v9 isSlowWiFi];
  if (![*(*(a1 + 32) + 24) isWiFiPrimary])
  {
    byte_1002B7B5C = 0;
    goto LABEL_19;
  }

  v15 = (v13 * 100.0);
  if (!v3)
  {
    v24 = [*(a1 + 32) isWiFiAppEntryCriteriaMet];
    if (v14 >= 11 && v10 >= -75 && v11 <= 70)
    {
      v25 = v15 >= 0 ? v24 : 0;
      if (v25)
      {
        v20 = 1;
        dword_1002B7640 = 1;
        v21 = byte_1002B7B58;
        goto LABEL_30;
      }
    }

LABEL_19:
    v20 = 0;
    dword_1002B7640 = 0;
    v21 = byte_1002B7B58;
    goto LABEL_20;
  }

  v19 = v14 > 5 && v10 > -80 && v11 < 86 && v15 < 20;
  if (v8 == 3 || v19)
  {
    v20 = 1;
    dword_1002B7640 = 1;
    v21 = byte_1002B7B58;
    if (!v19)
    {
      goto LABEL_20;
    }

LABEL_30:
    v23 = WRM_IPTelephonyController;
    v22 = 1;
    goto LABEL_31;
  }

  v20 = 0;
  dword_1002B7640 = 0;
  v21 = byte_1002B7B58;
LABEL_20:
  v22 = 3;
  v23 = WRM_IPTelephonyController;
LABEL_31:
  byte_1002B7B58 = v22;
  byte_1002B7B59 = 2;
  [&v23[98] logLevel:24 message:{@"evaluateWiFiVersusCell:  mCellScore: %d, mWiFiScore: %d, mRecommendation: %d", byte_1002B7B5A, v22, v20}];
  if (v3 == dword_1002B7640 && *(v32 + 24) == byte_1002B7B5A && v21 == byte_1002B7B58)
  {
    [&v23[98] logLevel:24 message:@"evaluateWiFiVersusCell: no change in recommendation"];
  }

  else
  {
    [&v23[98] logLevel:24 message:@"evaluateWiFiVersusCell: recommendation changed"];
    byte_1002B7B5A = *(v32 + 24);
    byte_1002B7B5B = *(v28 + 24);
    if ([v2 deviceICheapFR2CoverageSync])
    {
      byte_1002B7B5C = 1;
    }

    [*(a1 + 32) notifyRecommendations];
    [&v23[98] logLevel:24 message:{@"evaluateWiFiVersusCell: m5GAvailable: %d", byte_1002B7B5C}];
  }

  if (v3 != dword_1002B7640)
  {
    [&v23[98] logLevel:24 message:{@"evaluateWiFiVersusCell: awd: eval link changed: %d", dword_1002B7640}];
    [*(a1 + 32) submitWiFiVersusCellAWDMetrics];
    v3 = dword_1002B7640;
  }

  [&v23[98] logLevel:24 message:{@"evaluateWiFiVersusCell: current recommended link: %d", v3}];
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
}

void sub_1000029BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_10000301C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100003074(void *a1)
{
  [WCM_Logging logLevel:24 message:@"evaluateWiFiVersusCell: start evaluateCellularScore, PrivateNetwork:%d", byte_1002B7B5D];
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  LOBYTE(v6) = byte_1002B7650;
  if (byte_1002B7B5D)
  {
    [v2 evaluateCellularScorePrivateNw:byte_1002B7B5A currnetConf:byte_1002B7B5B score:v3 + 24 conf:v4 + 24 evalMode:byte_1002B7B78 outrankExit:byte_1002B7B79 deviceCap:v6];
  }

  else
  {
    [v2 evaluateCellularScore:byte_1002B7B5A currnetConf:byte_1002B7B5B score:v3 + 24 conf:v4 + 24 evalMode:byte_1002B7B78 outrankExit:byte_1002B7B79 deviceCap:v6];
  }

  return [WCM_Logging logLevel:24 message:@"evaluateWiFiVersusCell: end evaluateCellularScore, PrivateNetwork enabled: %d", byte_1002B7B5D];
}

void sub_1000031BC(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  [WCM_Logging logLevel:18 message:@"WiFiS: callbackWiFiDeviceClientLQMCallback", a2];
  [WCM_Logging logLevel:19 message:@"%@", a2];
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  value = 0;
  v43 = 0;
  v41 = 0;
  valuePtr = -600;
  v38 = -600;
  v39 = -600;
  v36 = -600;
  v37 = -600;
  v35 = -600;
  v33 = -600;
  v34 = -600;
  v31 = -600;
  v32 = -600;
  v29 = -600;
  v30 = -600;
  v27 = -600;
  v28 = -600;
  v25 = -600;
  v26 = -600;
  v23 = -600;
  v24 = -600;
  v22 = 3;
  if (a2)
  {
    v5 = CFDictionaryGetValue(a2, @"RSSI");
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"SNR", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberLongLongType, &v39);
    }

    if ((valuePtr & 0x80000000) == 0)
    {
      [WCM_Logging logLevel:18 message:@"WiFiS: callbackWiFiDeviceClientLQMCallback, ignoring invalid RSSI value"];
      valuePtr = -600;
      v39 = -600;
    }

    v6 = CFDictionaryGetValue(a2, @"TXFAIL");
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberLongLongType, &v37);
    }

    v7 = CFDictionaryGetValue(a2, @"TXFRAMES");
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberLongLongType, &v36);
    }

    v8 = CFDictionaryGetValue(a2, @"TXRETRANS");
    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberLongLongType, &v35);
    }

    v9 = CFDictionaryGetValue(a2, @"TXFWFAIL");
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberLongLongType, &v34);
    }

    v10 = CFDictionaryGetValue(a2, @"TXFWFRAMES");
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberLongLongType, &v33);
    }

    v11 = CFDictionaryGetValue(a2, @"TXFWRETRANS");
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberLongLongType, &v32);
    }

    v12 = CFDictionaryGetValue(a2, @"RXFRAMES");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberLongLongType, &v31);
    }

    v13 = CFDictionaryGetValue(a2, @"RXRETRYFRMS");
    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberLongLongType, &v30);
    }

    v14 = CFDictionaryGetValue(a2, @"RXBEACONFRMS");
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberLongLongType, &v29);
    }

    v15 = CFDictionaryGetValue(a2, @"RXBEACONSCHED");
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberLongLongType, &v28);
    }

    v16 = CFDictionaryGetValue(a2, @"CCA");
    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberLongLongType, &v38);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"TXRATE", &v45) && v45)
    {
      CFNumberGetValue(v45, kCFNumberLongLongType, &v25);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"TXFBRATE", &v43) && v43)
    {
      CFNumberGetValue(v43, kCFNumberLongLongType, &v24);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"RXRATE", &v44) && v44)
    {
      CFNumberGetValue(v44, kCFNumberLongLongType, &v23);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"QBSS_STA_COUNT", &v47) && v47)
    {
      CFNumberGetValue(v47, kCFNumberLongLongType, &v26);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"QBSS_CHAN_UTIL", &v46) && v46)
    {
      CFNumberGetValue(v46, kCFNumberLongLongType, &v27);
    }

    ValueIfPresent = CFDictionaryGetValueIfPresent(a2, @"kLQM_HOME_WORK_STATUS", &v41);
    v18 = 3;
    if (ValueIfPresent && v41)
    {
      CFNumberGetValue(v41, kCFNumberLongLongType, &v22);
      v18 = v22;
    }

    [WCM_Logging logLevel:19 message:@"WiFiS: WiFiLQM rssi %d, snr %lld, txFail %lld, txFrame %lld, txRetran %lld, fwTxFail %lld, fwTxFrame %lld, fwTxRetran %lld, rxFrame %lld, rxRetry %lld, rxBeacon %lld, rxBeaconSched %lld, cca %lld, AP chn util %lld, station count %lld, TX Phy Rate %lld, TX FB Rate %lld, Rx PHY Rate %lld, POI %d", valuePtr, v39, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v38, v27, v26, v25, v24, v23, v18];
    [a3 updateLQMReceived];
    [a3 setRSSI:valuePtr];
    if (v39)
    {
      [a3 setSNR:?];
    }

    else
    {
      [WCM_Logging logLevel:17 message:@"WiFiS: Check WiFi reported SNR 0"];
    }

    [a3 updateTxStats:v36 :v35 :v37];
    [a3 updateTxPer];
    [a3 updateFwTxStats:v33 :v32 :v34];
    [a3 updateFwTxPer];
    [a3 updateRxStats:v31 :v30];
    [a3 updateRxRatio];
    [a3 updateRxBeacons:v29 :v28];
    [a3 updateRxBeaconPer];
    [a3 updateCCA:v38];
    if (v47)
    {
      [a3 updateChanUtilization:v27];
      [a3 updateStationCount:v26];
    }

    else
    {
      [a3 updateChanUtilization:0];
      [a3 resetStationCount:0];
    }

    if (v45)
    {
      [a3 updatePhyRates:v25 :v24 :v23];
    }

    if (v41)
    {
      [a3 updatePointOfInterest:v22];
    }

    if (v38 != -600)
    {
      [a3 setWiFiLinkUP];
      [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      [+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"setWiFiLinkDown:" FT:0HandoverManagerSingleton")];
    }

    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v19, "kWRMM_WIFI_NOTIFICATION_TYPE", 1);
    *keys = *off_100242270;
    values[0] = xpc_uint64_create(0x3EBuLL);
    values[1] = v19;
    v20 = xpc_dictionary_create(keys, values, 2uLL);
    *v49 = *off_100242280;
    v48[0] = xpc_uint64_create(0x3E8uLL);
    v48[1] = v20;
    v21 = xpc_dictionary_create(v49, v48, 2uLL);
    [WCM_Logging logLevel:19 message:@"%s: ready to send a xpc message: %@.", "NotifyiRATClients", v21];
    if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
    {
      [WCM_Logging logLevel:19 message:@"NotifyiRATClients - Sending to HandoverManager"];
      [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    }

    if ([+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")])
    {
      [WCM_Logging logLevel:19 message:@"NotifyiRATClients - Sending to IDS link Evaluator"];
      [+[WRM_IDSLinkEvalManager WRM_IDSLinkEvalManagerSingleton](WRM_IDSLinkEvalManager "WRM_IDSLinkEvalManagerSingleton")];
    }

    if ([+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")])
    {
      [WCM_Logging logLevel:19 message:@"NotifyiRATClients - Sending to BW Evaluator"];
      [+[WRM_BWEvalManager WRM_BWEvalManagerSingleton](WRM_BWEvalManager "WRM_BWEvalManagerSingleton")];
    }

    if ([+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"needWiFiLQM" FT:?HandoverManagerSingleton")])
    {
      [WCM_Logging logLevel:19 message:@"NotifyiRATClients - Sending to FaceTime link Evaluator"];
      [+[WRM_FT_HandoverManager WRM_FT_HandoverManagerSingleton](WRM_FT_HandoverManager "WRM:"updateControllerState:" FT:v21HandoverManagerSingleton")];
    }

    xpc_release(v48[0]);
    xpc_release(v21);
    xpc_release(values[0]);
    xpc_release(v20);
    xpc_release(v19);
  }
}

void sub_100003C00()
{
  v0 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];

  dispatch_async(v0, &stru_100241AF0);
}

void sub_1000041D8(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      sub_100004250(v6);
      if (v7)
      {

        sub_100006CF8(v5, (v5 + 136), a2);
      }
    }
  }
}

void sub_100004250(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

id sub_100004DE4(double *a1)
{
  if (a1[5] <= 30.0)
  {
    *(*(a1 + 4) + 332) = a1[6];
    *(*(a1 + 4) + 340) = a1[7];
    result = [+[NSDate date](NSDate timeIntervalSince1970];
    *(*(a1 + 4) + 348) = v3;
  }

  else
  {
    *(*(a1 + 4) + 332) = 0;
    *(*(a1 + 4) + 340) = 0;
    return [WCM_Logging logLevel:22 message:@"wrmSdmLocationController: invalidate location since speed %f> 30m/s", *(a1 + 5)];
  }

  return result;
}

void sub_100004EA8(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = [*(a1 + 32) queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004DE4;
  v12[3] = &unk_10023E1C8;
  v12[4] = *(a1 + 32);
  *&v12[5] = a7;
  *&v12[6] = a2;
  *&v12[7] = a3;
  dispatch_async(v11, v12);
}

BOOL sub_100004F50(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  [WCM_Logging logLevel:3 message:@"Location activeTechs contains %d elements", Count];
  if (Count < 1)
  {
    return 0;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    do
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      v6 = CFGetTypeID(ValueAtIndex);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        [WCM_Logging logLevel:3 message:@"Location activeTechs element at index %d is %s", v3, off_100241B10[valuePtr]];
        if ((valuePtr & 0xFFFFFFF7) == 1)
        {
          return v4;
        }
      }

      else
      {
        [WCM_Logging logLevel:0 message:@"Location activeTechs element at index %d is not number type", v3];
      }

      v4 = Count > ++v3;
    }

    while (Count != v3);
  }

  return v4;
}

void sub_10000507C(id a1)
{
  v1 = objc_autoreleasePoolPush();
  [WCM_Logging logLevel:3 message:@"Received locationd techstatus notifcation callback"];
  v2 = CLCopyTechnologiesInUse();
  if (v2)
  {
    v3 = v2;
    v4 = sub_100004F50(v2);
    CFRelease(v3);
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"activeTechs is null"];
    v4 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E4A88;
  block[3] = &unk_10023DCA0;
  v6 = v4;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
  objc_autoreleasePoolPop(v1);
}

id sub_10000523C(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  [WCM_Logging logLevel:2 message:@"WiFiS: callbackWiFiDeviceClientCatsUpdateCallback"];
  valuePtr = 0;
  v8 = 0;
  if (a2)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(a2, @"CATS_APP_PRIORITY", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberShortType, &valuePtr);
    }

    ValueIfPresent = CFDictionaryGetValueIfPresent(a2, @"CATS_APP_BITMAP", &value);
    v6 = 0;
    if (ValueIfPresent && value)
    {
      CFNumberGetValue(value, kCFNumberLongLongType, &v8);
      v6 = v8;
    }

    result = [WCM_Logging logLevel:2 message:@"WiFiS: Cats event: priority %d, bitmap 0x%x\n", valuePtr, v6];
    if (a3)
    {
      return [a3 setCatsState:valuePtr bitmap:v8];
    }
  }

  else
  {

    return [WCM_Logging logLevel:2 message:@"Cats update dictionary is null"];
  }

  return result;
}

void sub_100006CF8(uint64_t a1, _BYTE *a2, int a3)
{
  v3 = *a2;
  v4 = *(a1 + 32);
  if (v3 == a3)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    *a2 = a3;
    return;
  }

  if (a3 || v3 != 1)
  {
    *a2 = a3;

    sub_1000449D8(a1);
  }

  else
  {
    *a2 = 0;
    sub_100044CE4(&v14, a1);
    v7 = v14;
    v6 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004250(v6);
    }

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 1uLL, 0, *(a1 + 184));
    v9 = *(a1 + 32);
    *(a1 + 32) = v8;
    if (v9)
    {
      dispatch_release(v9);
      v8 = *(a1 + 32);
    }

    v10 = dispatch_time(0, 300000000);
    dispatch_source_set_timer(v8, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1312D00uLL);
    v11 = *(a1 + 32);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 1174405120;
    handler[2] = sub_100044D74;
    handler[3] = &unk_10023E6C0;
    handler[4] = a1;
    handler[5] = v7;
    v13 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_source_set_event_handler(v11, handler);
    dispatch_activate(*(a1 + 32));
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

id sub_1000070F0(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    [objc_msgSend(objc_msgSend(*(a1 + 32) "movingAverageSignalBars")];
    v6 = v5;
    v7 = [objc_msgSend(objc_msgSend(*(a1 + 32) "bars")];
    v8 = v7;
    v9 = (v7 + (v6 * 23.0)) / 24.0;
    v10 = [*(a1 + 32) movingAverageSignalBars];
    *&v11 = v9;
    [v10 replaceObjectAtIndex:v2 withObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v11)}];
    result = [WCM_Logging logLevel:24 message:@"%s Sampled Moving Average: %f, CurrentSignal Bars:%lld, Slot id: %d", "[WRM_EnhancedCTService updateMovAverageOfSignalBar]_block_invoke", v9, v8, (v2 + 1)];
    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  return result;
}

void sub_1000085E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008AA8(uint64_t a1)
{
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v2 = *(a1 + 32);
}

void sub_100009204(uint64_t a1)
{
  if (*(*(a1 + 32) + 512))
  {
    v2 = WiFiDeviceClientCopyCurrentNetwork();
    if (v2)
    {
      v3 = v2;
      *(*(*(a1 + 40) + 8) + 24) = WiFiNetworkIsCaptive() != 0;

      CFRelease(v3);
    }
  }
}

void sub_10000AEAC()
{
  [WCM_Logging logLevel:1 message:@"Received locationd bandstatus notifcation callback"];

  sub_10000AEE8();
}

void sub_10000AEE8()
{
  v0 = CLCopyGnssBandsInUse();
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"_getGpsBandInfo - bandInfo count %d", [v0 count]);
  v1 = v0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008AA8;
  block[3] = &unk_10023DB28;
  block[4] = v0;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
  CFRelease(v0);
}

id sub_10000B3B4(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  value = 0;
  valuePtr = 0;
  v9 = 0;
  v8 = 0;
  result = [WCM_Logging logLevel:18 message:@"WiFiS: callbackWiFiDeviceClientWeightAvgLQMCallback", a2];
  if (a2)
  {
    [WCM_Logging logLevel:19 message:@"%@", a2];
    if (CFDictionaryGetValueIfPresent(a2, @"WEIGHT_AVG_RSSI", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"WEIGHT_AVG_SNR", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v9);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"WEIGHT_AVG_TX_RATE", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v8 + 4);
    }

    ValueIfPresent = CFDictionaryGetValueIfPresent(a2, @"WEIGHT_AVG_RX_RATE", &value);
    v7 = 0;
    if (ValueIfPresent)
    {
      if (value)
      {
        CFNumberGetValue(value, kCFNumberSInt32Type, &v8);
        v7 = v8;
      }
    }

    [a3 updateWeightedAverageMetrics:valuePtr :v9 :HIDWORD(v8) :v7];
    return [WCM_Logging logLevel:3 message:@"WiFiS: weightedWiFiAvgLQM RSSI: %d SNR: %d TX Rate: %d Rx Rate: %d", valuePtr, v9, HIDWORD(v8), v8];
  }

  return result;
}

id sub_10000B5B4(_DWORD *a1, double a2, double a3)
{
  v6 = +[NSMutableArray array];
  v7 = a2 + a3;
  if (a2 + a3 <= 5000.0)
  {
    LODWORD(v9) = 0;
    v14 = a2 + a3 * 0.5;
    v15 = -1.0;
    v16 = 2402;
    v17 = 1;
    do
    {
      v18 = v16;
      if (a2 > v16)
      {
        v18 = a2;
      }

      v19 = (v16 + 20);
      if (v7 <= v19)
      {
        v19 = v7;
      }

      if (v18 < v19)
      {
        [v6 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v17)}];
        if (v17 <= 0xB && ((1 << v17) & 0x842) != 0)
        {
          v20 = v14 - (v16 + 10);
          if (v20 < 0.0)
          {
            v20 = -v20;
          }

          if (v20 > v15)
          {
            v15 = v20;
            LODWORD(v9) = v17;
          }
        }
      }

      v17 = (v17 + 1);
      v16 += 5;
    }

    while (v16 != 2467);
  }

  else
  {
    v8 = &word_1001981AC;
    v9 = 46;
    do
    {
      v10 = *v8;
      v11 = *(v8 - 1) + v10 * -0.5;
      if (v11 >= a2)
      {
        v12 = *(v8 - 1) + v10 * -0.5;
      }

      else
      {
        v12 = a2;
      }

      v13 = v11 + v10;
      if (v13 >= v7)
      {
        v13 = a2 + a3;
      }

      if (v12 < v13)
      {
        [v6 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(v8 - 2))}];
      }

      v8 += 3;
      --v9;
    }

    while (v9);
  }

  if (a1)
  {
    *a1 = v9;
  }

  return v6;
}

const char *sub_10000BF80(unsigned int a1)
{
  if (a1 == 999)
  {
    return "NO_ISSUE_TYPE";
  }

  if (a1 <= 0xE)
  {
    return off_10023FE88[a1];
  }

  return "<ISSUE_TYPE_INVALID>";
}

const char *sub_10000BFB8(unsigned int a1)
{
  if (a1 == 999)
  {
    return "NO_ISSUE_BAND";
  }

  if (a1 > 0xD2)
  {
    return "<ISSUE_BAND_INVALID: beyond the range>";
  }

  v2 = a1 - 200;
  if (a1 >= 0xC8)
  {
    v3 = off_10023FE08;
LABEL_9:
    v4 = &v3[v2];
    return *v4;
  }

  v2 = a1 - 100;
  if (a1 - 100 <= 0x10)
  {
    v3 = off_10023FD80;
    goto LABEL_9;
  }

  if (a1 <= 0x20)
  {
    v4 = &off_10023FC78[a1];
    return *v4;
  }

  return "<ISSUE_BAND_INVALID: Negative number.>";
}

void sub_10000E26C(int a1, CFDictionaryRef theDict)
{
  value = 0;
  valuePtr = 0;
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if (theDict)
  {
    if (CFDictionaryGetValueIfPresent(theDict, @"BTC_STATS_TDD_CNT", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"BTC_STATS_HYBRID_CNT", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v8);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"BTC_STATS_BT_DUR_MS", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v7 + 4);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"BTC_STATS_TOT_DUR_MS", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v7);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"BTC_STATS_PARALLEL_CNT", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v6 + 4);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"BTC_STATS_BT_DUR_AIR_MS", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v6);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"BTC_STATS_WLRSSI_COEX", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt8Type, &v5 + 1);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"BTC_STATS_BTRSSI_COEX", &value))
    {
      if (value)
      {
        CFNumberGetValue(value, kCFNumberSInt8Type, &v5);
      }
    }

    v3 = +[WCM_PolicyManager singleton];
    LOBYTE(v4) = HIBYTE(v5);
    BYTE1(v4) = v5;
    [v3 handleBTCoexStatsEvent_tddCnt:valuePtr hybridCnt:v8 btDurMs:HIDWORD(v7) totDurMs:v7 parallelCnt:HIDWORD(v6) btDurAirMs:v6 wlrssiCoex:v4 btrssiCoex:?];
  }
}

void sub_10000E5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000E5D4(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "isVoNRSupported")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000EA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000EAB4(uint64_t a1)
{
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v2 = "CTSubscriptionSlotOne";
    }

    else if ([*(a1 + 32) activeSlot] == 2)
    {
      v2 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v2 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v2 = "CTSubscriptionSlotUnknown";
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: active slot %s bars %@", "-[WRM_EnhancedCTService getCurrentSignalBars]_block_invoke", v2, [*(a1 + 32) bars]);
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "bars")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000EC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000EC7C(uint64_t a1)
{
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v2 = "CTSubscriptionSlotOne";
    }

    else if ([*(a1 + 32) activeSlot] == 2)
    {
      v2 = "CTSubscriptionSlotTwo";
    }

    else
    {
      v2 = "Unknown CTSubscriptionSlot!!!";
    }
  }

  else
  {
    v2 = "CTSubscriptionSlotUnknown";
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: active slot %s MovAvgSignalBars %@", "-[WRM_EnhancedCTService getCurrentMovAvgSignalBars]_block_invoke", v2, [*(a1 + 32) movingAverageSignalBars]);
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "movingAverageSignalBars")];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

void sub_10000FB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000FB7C(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "isWiFiCallingSupported")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000FC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000FC80(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "isWiFiCallingSupported")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_100010258(void *a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 intValue] == 1 || objc_msgSend(v7, "intValue") == 6 || objc_msgSend(v7, "intValue") == 11)
        {
          ++v4;
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
    return (v4 > 2);
  }

  return result;
}

NSMutableData *sub_100010994(void *a1)
{
  v17 = 0x8000;
  v16 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = [*(*(&v11 + 1) + 8 * v5) intValue];
        *(&v16 + (v6 >> 3)) |= 1 << (v6 & 7);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v7 = [NSMutableData dataWithCapacity:10];
  for (i = 0; i != 10; ++i)
  {
    v10 = ~*(&v16 + i);
    [(NSMutableData *)v7 appendBytes:&v10 length:1];
  }

  return v7;
}

NSMutableData *sub_100011168(void *a1, uint64_t a2)
{
  v4 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(a1);
        }

        [v4 addObject:*(*(&v22 + 1) + 8 * i)];
      }

      v6 = [a1 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

  if (a2 <= 127)
  {
    do
    {
      [v4 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", a2)}];
      a2 = (a2 + 1);
    }

    while (a2 != 128);
  }

  v27[0] = 0;
  v27[1] = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = [*(*(&v18 + 1) + 8 * j) intValue];
        *(v27 + (v13 >> 3)) |= 1 << (~v13 & 7);
      }

      v10 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = [NSMutableData dataWithCapacity:16];
  for (k = 0; k != 16; ++k)
  {
    v17 = ~*(v27 + k);
    [(NSMutableData *)v14 appendBytes:&v17 length:1];
  }

  return v14;
}

void sub_100012F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100012F58(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellRSRP")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) activeSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s RSRP %f", "[WRM_EnhancedCTService getServingCellRSRP]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_1000130F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100013108(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellSNR")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) activeSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s SNR %f", "[WRM_EnhancedCTService getServingCellSNR]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_1000132EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100013304(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellRSRQ")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) activeSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s RSRQ %f", "[WRM_EnhancedCTService getServingCellRSRQ]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

id sub_100014284(uint64_t a1)
{
  [*(*(a1 + 32) + 192) sacUpdateWiFiFreqInfo:1000000 * objc_msgSend(*(a1 + 40) Bandwidth:{"channelCenterFreqMHz"), 1000000 * objc_msgSend(*(a1 + 40), "channelBandwidthMHz")}];
  [*(*(a1 + 32) + 192) sacReportWifiVictimFreqListOnTargetSac:1 action:1];
  result = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (result)
  {
    v3 = *(*(a1 + 32) + 192);

    return [v3 sacReportWifiVictimFreqListOnTargetSac:2 action:1];
  }

  return result;
}

id sub_100014360()
{
  result = MKBGetDeviceLockState();
  if (result != 3)
  {
    v1 = sub_100014400();
    byte_1002B77B8 = v1;
    [WCM_Logging logLevel:24 message:@"Received handleDeviceLockChangedNotification event, unlock:%d", v1];
    v2 = byte_1002B77B8;
    v3 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    return [v3 postBBNotification:v4 :0];
  }

  return result;
}

void sub_100014440(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100049DAC();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100014594(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_100014594(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100049E98();
}

_BYTE **sub_1000145EC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100014648(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

_BYTE **sub_100014648(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

void sub_10001467C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000146E0(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000146CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000146E0(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_100014794(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B7BC0(a2);
  }
}

void sub_100014778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

qmi::ResponseBase *sub_100014794(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x5568u);
  return a1;
}

char *sub_1000147D8(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_100014514();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

void sub_100014948(uint64_t a1)
{
  if (qword_1002B7B40)
  {
    if (*(*(a1 + 32) + 300))
    {
      v2 = [qword_1002B7B40 copy];
      [WCM_Logging logLevel:22 message:@"CellStationManager: cell ID to check: %@", v2];
      v3 = *(a1 + 32);
      v4 = *(v3 + 300);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10003F5C4;
      v6[3] = &unk_10023E1A0;
      v6[4] = v3;
      [v4 isFR2:v2 completionHandler:v6];
      if (v2)
      {
      }

      return;
    }

    v5 = @"CellStationManager: cellStationManager is nil";
  }

  else
  {
    v5 = @"CellStationManager: cell ID to check is nil";
  }

  [WCM_Logging logLevel:22 message:v5];
}

id sub_100014AE8(uint64_t a1)
{
  result = *(*(a1 + 32) + 308);
  if (result)
  {
    return [result startMonitoring];
  }

  return result;
}

void *sub_100014B78(void *result)
{
  v2 = result[4];
  if (*(v2 + 16))
  {
    if (*(v2 + 24))
    {

      return [WCM_Logging logLevel:22 message:@"LocationController: already monitoring"];
    }

    else
    {
      v3 = result;
      *(v2 + 24) = 1;
      [*(result[4] + 16) startUpdatingLocation];
      [WCM_Logging logLevel:22 message:@"LocationController: startMonitoring"];
      v4 = v3[4];

      return [v4 updateLocationAuthorized_sync];
    }
  }

  return result;
}

void sub_100014C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100014C84(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_100014C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_100014C84(uint64_t a1@<X0>, qmi::MessageBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_100014D38(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B6278(a2);
  }
}

void sub_100014D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

qmi::MessageBase *sub_100014D38(qmi::MessageBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::MessageBase::MessageBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x51u);
  return a1;
}

uint64_t sub_100014D7C(uint64_t a1, qmi::MessageBase *a2)
{
  v4 = [*(a1 + 32) getUserDataPreferredSlot];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100015204;
  v16[3] = &unk_100240400;
  v17 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v18 = v16;
  v5 = sub_10001500C(a2, 20, &v18);
  if ((v5 & 1) == 0)
  {
    [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: received indication w/o LTE sig info.", *(*(a1 + 40) + 32)];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000154FC;
  v14[3] = &unk_100240428;
  v15 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v18 = v14;
  v6 = sub_100015458(a2, 23, &v18);
  if ((v6 & 1) == 0)
  {
    [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: received indication w/o New sig info.", *(*(a1 + 40) + 32)];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001578C;
  v12[3] = &unk_100240450;
  v13 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v18 = v12;
  v7 = sub_1000155F8(a2, 24, &v18);
  if ((v7 & 1) == 0)
  {
    [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: received indication w/o New_EXT sig info.", *(*(a1 + 40) + 32)];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AF214;
  v9[3] = &unk_100240478;
  v10 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v11 = v4;
  v18 = v9;
  result = sub_100015850(a2, 19, &v18);
  if ((result & 1) == 0)
  {
    result = [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: received indication w/o WCMDA sig info.", *(*(a1 + 40) + 32)];
  }

  if ((v5 | v6 | v7) == 1)
  {
    return [*(a1 + 32) evaluateCbrsInDualSimMode:0];
  }

  return result;
}

uint64_t sub_10001500C(qmi::MessageBase *a1, uint64_t a2, void *a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_1000150B0(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

BOOL sub_1000150B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a2;
  sub_1000151A4(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))(*a4);
  }

  return v5 != 0;
}

uint64_t sub_100015118(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1, v7);
  *(a3 + 1) = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2, v8);
  *(a3 + 2) = *(a1 + 2);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 2, v9);
  *(a3 + 4) = *(a1 + 4);
  return a1 + 6;
}

unint64_t sub_1000151A4(uint64_t *a1, int a2, uint64_t a3, unint64_t a4)
{
  v6 = 0;
  v5 = 0;
  *a1 = sub_100015118(*a1, (*a1 + a2), &v5, a4);
  return v5 | (v6 << 32);
}

void sub_1000151F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000151D8);
}

id sub_100015204(uint64_t a1, char *a2)
{
  [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: received LTE SigInfo rssi %d snr %d rsrq %d rsrp %d", *(*(a1 + 32) + 32), *a2, (((26215 * *(a2 + 2)) >> 18) + ((26215 * *(a2 + 2)) >> 31)), a2[1], *(a2 + 1)];
  v4 = *(a2 + 2) / 10.0;
  v5 = a2[1];
  v6 = *(a2 + 1);
  [*(a1 + 40) setServingCellRSSI:*(*(a1 + 32) + 32) forSim:*a2];
  [*(a1 + 40) setServingCellRSRP:*(*(a1 + 32) + 32) forSim:v6];
  [*(a1 + 40) setServingCellRSRQ:*(*(a1 + 32) + 32) forSim:v5];
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 32);

  return [v7 setServingCellSNR:v8 forSim:v4];
}

BOOL sub_100015378(uint64_t a1, tlv *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  sub_1000153D8(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

uint64_t sub_1000153D8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 2, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 2), v6, 2, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 4);
  return (v9 << 16) | v7;
}

void sub_100015444(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100015430);
}

uint64_t sub_100015458(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_100015378(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

id sub_1000154FC(uint64_t a1, __int16 *a2)
{
  result = [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: received New SigInfo snr %d rsrp %d", *(*(a1 + 32) + 32), (((26215 * a2[1]) >> 18) + ((26215 * a2[1]) >> 31)), *a2];
  v5 = *a2;
  if (v5 != 0x8000)
  {
    v6 = v5;
    v7 = a2[1] / 10.0;
    [*(a1 + 40) setServingCellRSRP:*(*(a1 + 32) + 32) forSim:v6];
    [*(a1 + 40) setNrRSRP:*(*(a1 + 32) + 32) forSim:v6];
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 32);

    return [v8 setNrSNR:v9 forSim:v7];
  }

  return result;
}

uint64_t sub_1000155F8(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_10001569C(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

BOOL sub_10001569C(uint64_t a1, tlv *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  sub_10001573C(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

uint64_t sub_10001573C(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100015778(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x10001576CLL);
}

id sub_10001578C(uint64_t a1, __int16 *a2)
{
  result = [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: received New_EXT SigInfo rsrq %d", *(*(a1 + 32) + 32), *a2];
  v5 = *a2;
  if (v5 != 0x8000)
  {
    v6 = v5;
    [*(a1 + 40) setServingCellRSRQ:*(*(a1 + 32) + 32) forSim:v6];
    [*(a1 + 40) setNrRSRQ:*(*(a1 + 32) + 32) forSim:v6];
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 32);
    [v7 getNrRSRQ];
    return [WCM_Logging logLevel:22 message:@"QMI.NAS.%d: rsrq %.2f", v8, v9];
  }

  return result;
}

uint64_t sub_100015850(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_1000B6218(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

id sub_100015A98(uint64_t a1)
{
  [*(a1 + 32) feedAWDCallEndStats];
  v2 = [*(*(a1 + 32) + 120) getAWDService];

  return [v2 submitMetricWiFiCallingEnd];
}

NSDictionary *sub_100015EC8(uint64_t a1)
{
  v9[0] = @"bSSLoad";
  v11[0] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 40)];
  v9[1] = @"lTERSRP";
  v11[1] = [NSNumber numberWithInt:*(*(a1 + 40) + 4)];
  v9[2] = @"lTEVoiceLQM";
  v11[2] = [NSNumber numberWithInt:*(*(a1 + 40) + 44)];
  v9[3] = @"captiveNetwork";
  v11[3] = [NSNumber numberWithBool:*(*(a1 + 40) + 24)];
  v9[4] = @"signalBar";
  v11[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 56)];
  v9[5] = @"lTEDataLQM";
  v11[5] = [NSNumber numberWithInt:*(*(a1 + 40) + 48)];
  v9[6] = @"latteNominalJitterBufferSize";
  v11[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 60)];
  v9[7] = @"latteRTPPacketLoss";
  v11[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 68)];
  v9[8] = @"latteErasures";
  v11[8] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 72)];
  v9[9] = @"latteDejitterBufferUnderflow";
  v2 = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 64)];
  v3 = *(a1 + 40);
  v4 = *(v3 + 11);
  if (!v4)
  {
    v4 = @"Unknown";
  }

  v11[9] = v2;
  v11[10] = v4;
  v9[10] = @"wRMRecommendedRAT";
  v9[11] = @"wiFiRSSI";
  v11[11] = [NSNumber numberWithInt:*v3];
  v9[12] = @"wiFiRxRetry";
  v11[12] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 28)];
  v9[13] = @"wiFiSINR";
  v11[13] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 12)];
  v9[14] = @"wiFiTxPER";
  v11[14] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 8)];
  v9[15] = @"hOCapability";
  v11[15] = [NSNumber numberWithBool:*(*(a1 + 40) + 76)];
  v9[16] = @"iWLANStatus";
  v11[16] = [NSNumber numberWithBool:*(*(a1 + 40) + 96)];
  v9[17] = @"wOWEnabled";
  v11[17] = [NSNumber numberWithBool:*(*(a1 + 40) + 25)];
  v9[18] = @"currentCellularAvailabilityStatus";
  if (*(a1 + 48) == 1)
  {
    v5 = [*(a1 + 32) getCurrentCellularAvailabilityStatus];
    v6 = *(a1 + 48);
    v12 = v5;
    v10 = @"lastDonatedCellularAvailabilityStatus";
    if (v6)
    {
      v7 = [*(a1 + 32) getPreviousCellularAvailabilityStatus];
    }

    else
    {
      v7 = @"Not Applicable";
    }
  }

  else
  {
    v7 = @"Not Applicable";
    v12 = @"Not Applicable";
    v10 = @"lastDonatedCellularAvailabilityStatus";
  }

  v13 = v7;
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v9 count:20];
}

id sub_1000162E0(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "PrevAudioErasurePercent")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) activeSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s Erasure %f", "[WRM_EnhancedCTService getCurrentAudioErasure]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_100016490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001650C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10015C830;
  v0 = qword_1002B8230;
  v7 = sub_10015C840;
  v8 = qword_1002B8230;
  if (!qword_1002B8230)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10015CA0C;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_10015CA0C(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000165E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000165F8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_100037E68;
  v0 = qword_1002B7D90;
  v7 = sub_100037E78;
  v8 = qword_1002B7D90;
  if (!qword_1002B7D90)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100041994;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_100041994(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000166CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000166E4()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10015C830;
  v0 = qword_1002B8238;
  v7 = sub_10015C840;
  v8 = qword_1002B8238;
  if (!qword_1002B8238)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10015CA64;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_10015CA64(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000167B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_100016800(uint64_t a1)
{
  result = *(*(a1 + 32) + 332);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_10001681C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10015C830;
  v0 = qword_1002B8220;
  v7 = sub_10015C840;
  v8 = qword_1002B8220;
  if (!qword_1002B8220)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10015C84C;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_10015C84C(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000168F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_100016AF8(uint64_t a1)
{
  result = *(*(a1 + 32) + 340);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100016BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_100016BE0(uint64_t a1)
{
  result = *(*(a1 + 32) + 348);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100016BFC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10015C830;
  v0 = qword_1002B8240;
  v7 = sub_10015C840;
  v8 = qword_1002B8240;
  if (!qword_1002B8240)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10015CABC;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_10015CABC(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100016CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017BD4(_Unwind_Exception *a1)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1000181CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000182E8()
{
  objc_opt_self();

  return objc_opt_class();
}

uint64_t sub_1000184F0(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v15 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v15 & 0x7F) << v6;
      if ((v15 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    if ((v12 >> 3) == 1)
    {
      if ((sub_10015D44C(a1, &v14, a2, &v15) & 1) == 0)
      {
        return v15;
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id sub_100018934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

void sub_100019A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_100019DD0(_Unwind_Exception *a1)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

id sub_10001A15C(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"Coex ARI Driver:  BB power on, configure cached camera and tuner state... "];
  [*(a1 + 32) sendBasebandCameraState:*(*(a1 + 32) + 104) SubId:0 BasebandPowerOnUpdate:1];
  [*(a1 + 32) sendBasebandCameraState:*(*(a1 + 32) + 104) SubId:1 BasebandPowerOnUpdate:1];
  [*(a1 + 32) handleTunerState:1 state:*(*(a1 + 32) + 112) useCase:*(*(a1 + 32) + 120) SubId:0];
  [*(a1 + 32) handleTunerState:1 state:*(*(a1 + 32) + 112) useCase:*(*(a1 + 32) + 120) SubId:1];
  [*(a1 + 32) handleTunerState:2 state:*(*(a1 + 32) + 128) useCase:*(*(a1 + 32) + 136) SubId:0];
  [*(a1 + 32) handleTunerState:2 state:*(*(a1 + 32) + 128) useCase:*(*(a1 + 32) + 136) SubId:1];
  [*(a1 + 32) handleTunerState:4 state:*(*(a1 + 32) + 144) useCase:*(*(a1 + 32) + 152) SubId:0];
  [*(a1 + 32) handleTunerState:4 state:*(*(a1 + 32) + 144) useCase:*(*(a1 + 32) + 152) SubId:1];
  [*(a1 + 32) handleTunerState:3 state:*(*(a1 + 32) + 160) useCase:*(*(a1 + 32) + 168) SubId:0];
  [*(a1 + 32) handleTunerState:3 state:*(*(a1 + 32) + 160) useCase:*(*(a1 + 32) + 168) SubId:1];
  [*(a1 + 32) handleTunerState:0 state:*(*(a1 + 32) + 176) useCase:*(*(a1 + 32) + 184) SubId:0];
  [*(a1 + 32) handleTunerState:0 state:*(*(a1 + 32) + 176) useCase:*(*(a1 + 32) + 184) SubId:1];

  return [WCM_Logging logLevel:2 message:@"Coex ARI Driver:  BB power on, configure cached camera and tuner state... completed "];
}

void sub_10001AE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_10001B274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  AriSdk::ARI_UtaIdcConfigEventReq_SDK::~ARI_UtaIdcConfigEventReq_SDK(va);
  AriSdk::ARI_UtaIdcConfigEventReq_SDK::~ARI_UtaIdcConfigEventReq_SDK((v16 - 120));
  _Unwind_Resume(a1);
}

void sub_10001B388(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::ARI_UtaIdcConfigEventRspCb_SDK(v10, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v10, 0x490A8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v10);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225424896 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::unpack(v10))
    {
      v7 = *(a1 + 40);
      v8 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v9 = *v11;
      v7 = *(a1 + 40);
      if (v9)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", 0, *(a1 + 40), v9];
        goto LABEL_6;
      }

      v8 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v8, 0, v7];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", 0, *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::~ARI_UtaIdcConfigEventRspCb_SDK(v10);
}

void sub_10001B48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::~ARI_UtaIdcConfigEventRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001B4AC(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::ARI_UtaIdcConfigEventRspCb_SDK(v10, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v10, 0x490A8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v10);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225424896 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::unpack(v10))
    {
      v7 = *(a1 + 40);
      v8 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v9 = *v11;
      v7 = *(a1 + 40);
      if (v9)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", 1, *(a1 + 40), v9];
        goto LABEL_6;
      }

      v8 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v8, 1, v7];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", 1, *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::~ARI_UtaIdcConfigEventRspCb_SDK(v10);
}

void sub_10001B5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcConfigEventRspCb_SDK::~ARI_UtaIdcConfigEventRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001BA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK::~ARI_UtaIdcSetTunerVoterConfigReq_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001BA98(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x49130000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225981952 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK::~ARI_UtaIdcSetTunerVoterConfigRspCb_SDK(v11);
}

void sub_10001BBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetTunerVoterConfigRspCb_SDK::~ARI_UtaIdcSetTunerVoterConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001C520(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491B8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226539008 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11);
}

void sub_10001C630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001C650(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491B8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226539008 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11);
}

void sub_10001C760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001C780(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491B8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226539008 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11);
}

void sub_10001C890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001C8B0(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491B8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226539008 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11);
}

void sub_10001C9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001C9E0(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491B8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226539008 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(v11);
}

void sub_10001CAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCameraStatusRspCbV2_SDK::~ARI_UtaIdcSetCameraStatusRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001CC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK::~ARI_UtaIdcGetLaaMeasInfoReq_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001CC54(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK(v9, a2, a3);
  if (ice::isARIResponseValid(v9, 0x490B0000, v4))
  {
    if (AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK::unpack(v9))
    {
      v5 = @"Coex ARI driver: Failed to get LAA Measurement Info (unpack error)";
    }

    else
    {
      if (!*v11)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver: get LAA Measurement Info (SUCCESS)"];
        v6 = v12;
        v7 = *v10;
        [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcGetLaaMeasInfoRspCb SubId=%u\n", v7];
        v8 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v8, "kWCMCellularLaaMeasInfo_LaaMeasConfigured", *v6 != 0);
        [*(a1 + 32) sendMessage:1233 withArgs:v8 withSubId:v7];

        goto LABEL_8;
      }

      v5 = @"Coex ARI driver: Failed to get LAA Measurement Info (result error)";
    }

    [WCM_Logging logLevel:3 message:v5];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: Failed to get LAA Measurement Info"];
  }

LABEL_8:
  AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK::~ARI_UtaIdcGetLaaMeasInfoRspCb_SDK(v9);
}

void sub_10001CD80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AriSdk::ARI_UtaIdcGetLaaMeasInfoRspCb_SDK::~ARI_UtaIdcGetLaaMeasInfoRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001CF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK::~ARI_UtaIdcConfigTxActParamReq_SDK(va);

  _Unwind_Resume(a1);
}

void sub_10001D004(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK::ARI_UtaIdcConfigTxActParamRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x49100000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225785344 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK::~ARI_UtaIdcConfigTxActParamRspCb_SDK(v11);
}

void sub_10001D10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcConfigTxActParamRspCb_SDK::~ARI_UtaIdcConfigTxActParamRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001D2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK::~ARI_UtaIdcConfigMiscParamReqV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001D310(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK::ARI_UtaIdcConfigMiscParamRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491A8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226473472 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK::~ARI_UtaIdcConfigMiscParamRspCbV2_SDK(v11);
}

void sub_10001D420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcConfigMiscParamRspCbV2_SDK::~ARI_UtaIdcConfigMiscParamRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001D68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK::~ARI_UtaIdcSetTxAntMappingTableReq_SDK(va);

  _Unwind_Resume(a1);
}

void sub_10001D6E8(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x49110000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225850880 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK::~ARI_UtaIdcSetTxAntMappingTableRspCb_SDK(v11);
}

void sub_10001D7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetTxAntMappingTableRspCb_SDK::~ARI_UtaIdcSetTxAntMappingTableRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001E1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxReqV3_SDK(&a32);
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK(&a42);

  _Unwind_Resume(a1);
}

void sub_10001E2F0(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x49198000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226407936 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK(v11);
}

void sub_10001E400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiTxRspCbV3_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001E420(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491A0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226440704 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK(v11);
}

void sub_10001E528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK::~ARI_UtaIdcSetRTFeatureSpmiRxRspCbV3_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001E99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK::~ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK(&a32);

  _Unwind_Resume(a1);
}

void sub_10001EA94(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x49138000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226014720 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK(v11);
}

void sub_10001EBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK::~ARI_UtaIdcSetCnvAntBlockPwrLmtConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK(va);

  _Unwind_Resume(a1);
}

void sub_10001F804(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491B0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226506240 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK(v11);
}

void sub_10001F90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK::~ARI_UtaIdcSetCamAntBlockPwrLmtConfigRspCbV3_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10001FF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK(&a33);

  _Unwind_Resume(a1);
}

void sub_100020044(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x49140000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226047488 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK(v11);
}

void sub_10002014C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK::~ARI_UtaIdcSetUwbAntBlockPwrLmtConfigRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100020548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK::~ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK(&a28);

  _Unwind_Resume(a1);
}

void sub_100020644(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x49178000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226276864 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK::~ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK(v11);
}

void sub_100020754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK::~ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10002090C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK::~ARI_UtaIdcSetTimeSharingConfigReq_SDK(va);
  _Unwind_Resume(a1);
}

void sub_1000209A8(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x490F0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225719808 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::~ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(v11);
}

void sub_100020AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::~ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100020DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK::~ARI_UtaIdcSetTimeSharingConfigReq_SDK(va);

  _Unwind_Resume(a1);
}

void sub_100020E58(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x490F0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225719808 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::~ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(v11);
}

void sub_100020F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetTimeSharingConfigRspCb_SDK::~ARI_UtaIdcSetTimeSharingConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10002183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK::~ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_1000218D0(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x49168000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226211328 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK::~ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK(v11);
}

void sub_1000219E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK::~ARI_UtaIdcSetCriticalCarrierConfigRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100021E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  AriSdk::ARI_UtaIdcSetTxBlankingConfigReq_SDK::~ARI_UtaIdcSetTxBlankingConfigReq_SDK(&a37);
  AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK::~ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK((v38 - 224));

  _Unwind_Resume(a1);
}

void sub_100021F94(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x490D0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225588736 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK::~ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK(v11);
}

void sub_10002209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK::~ARI_UtaIdcSetTxPowerLimitingConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_1000220BC(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x490C8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225555968 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK::~ARI_UtaIdcSetTxBlankingConfigRspCb_SDK(v11);
}

void sub_1000221CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetTxBlankingConfigRspCb_SDK::~ARI_UtaIdcSetTxBlankingConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_1000223D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK::~ARI_UtaIdcRTSetScanFreqReqV2_SDK(va);

  _Unwind_Resume(a1);
}

void sub_1000224B8(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x49158000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226145792 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK::~ARI_UtaIdcRTSetScanFreqRspCbV2_SDK(v11);
}

void sub_1000225C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV2_SDK::~ARI_UtaIdcRTSetScanFreqRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100022934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK::~ARI_UtaIdcSetLaaConfigReq_SDK(va);

  _Unwind_Resume(a1);
}

void sub_1000229DC(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::ARI_UtaIdcSetLaaConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x490E0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225654272 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::~ARI_UtaIdcSetLaaConfigRspCb_SDK(v11);
}

void sub_100022AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::~ARI_UtaIdcSetLaaConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100022E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK::~ARI_UtaIdcSetLaaConfigReq_SDK(va);

  _Unwind_Resume(a1);
}

void sub_100022E94(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::ARI_UtaIdcSetLaaConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x490E0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1225654272 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::~ARI_UtaIdcSetLaaConfigRspCb_SDK(v11);
}

void sub_100022F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetLaaConfigRspCb_SDK::~ARI_UtaIdcSetLaaConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10002387C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AriSdk::ARI_UtaIdcGetCellConfigReq_SDK::~ARI_UtaIdcGetCellConfigReq_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100023894(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK::ARI_UtaIdcGetCellConfigRspCb_SDK(v9, a2, a3);
  if (ice::isARIResponseValid(v9, 0x490A0000, v4))
  {
    if (AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK::unpack(v9))
    {
      v5 = @"Coex ARI driver: Failed to get cell config (unpack error)";
    }

    else
    {
      if (!*v11)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver: get cell config (SUCCESS)"];
        v6 = v12;
        v7 = *v10;
        [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcGetCellConfigRspCb SubId=%u\n", v7];
        v8 = [*(a1 + 32) assembleCellularConfigXpcMsg:v6];
        [*(a1 + 32) sendMessage:300 withArgs:v8 withSubId:v7];

        goto LABEL_8;
      }

      v5 = @"Coex ARI driver: Failed to get cell config (result error)";
    }

    [WCM_Logging logLevel:3 message:v5];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: Failed to get cell config"];
  }

LABEL_8:
  AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK::~ARI_UtaIdcGetCellConfigRspCb_SDK(v9);
}

void sub_1000239A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  AriSdk::ARI_UtaIdcGetCellConfigRspCb_SDK::~ARI_UtaIdcGetCellConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100023AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::~ARI_UtaIdcCellConfigEventIndCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100023D0C(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(v10, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v10, 0x25100000, v4);
  GMID = AriSdk::MsgBase::getGMID(v10);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:621805568 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::unpack(v10))
    {
      v7 = *(a1 + 40);
      v8 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v9 = *v11;
      v7 = *(a1 + 40);
      if (v9)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", 0, *(a1 + 40), v9];
        goto LABEL_6;
      }

      v8 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v8, 0, v7];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", 0, *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::~ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(v10);
}

void sub_100023E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::~ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100023E28(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(v10, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v10, 0x25100000, v4);
  GMID = AriSdk::MsgBase::getGMID(v10);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:621805568 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::unpack(v10))
    {
      v7 = *(a1 + 40);
      v8 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v9 = *v11;
      v7 = *(a1 + 40);
      if (v9)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", 1, *(a1 + 40), v9];
        goto LABEL_6;
      }

      v8 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v8, 1, v7];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", 1, *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::~ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(v10);
}

void sub_100023F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::~ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100023F50(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x25100000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:621805568 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::unpack(v11))
    {
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: Failed to set %s (unpack error)", *(a1 + 40)];
    }

    else
    {
      v7 = *v13;
      v8 = *(a1 + 40);
      if (v7)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver: Failed to set %s (error = %d)", *(a1 + 40), v7];
      }

      else
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set %s (SUCCESS)", *(a1 + 40)];
        v9 = *v12;
        v10 = [*(a1 + 32) assembleDesenseCellularConfigXpcMsgwithDownlinkFreq:v14 DownlinkFreqExt:v20 UlFreq:v15 UplinkFreqExt:v21 SearchFreq:v16 HoppingFreq:v17 NeighborFreq:v18 RPLMNFreq:v19];
        [*(a1 + 32) sendMessage:399 withArgs:v10 withSubId:v9];
      }
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 40)];
  }

  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::~ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(v11);
}

void sub_1000240A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::~ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10002472C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::~ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100025708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK(&a25);
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigReqV2_SDK(&a41);
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK(&a57);
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK(&STACK[0x200]);

  _Unwind_Resume(a1);
}

void sub_100025A18(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(v10, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v10, 0x49188000, v4);
  GMID = AriSdk::MsgBase::getGMID(v10);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226342400 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::unpack(v10))
    {
      v7 = *(a1 + 40);
      v8 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v9 = *v11;
      v7 = *(a1 + 40);
      if (v9)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", 0, *(a1 + 40), v9];
        goto LABEL_6;
      }

      v8 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v8, 0, v7];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", 0, *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(v10);
}

void sub_100025B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100025B3C(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(v10, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v10, 0x49188000, v4);
  GMID = AriSdk::MsgBase::getGMID(v10);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226342400 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::unpack(v10))
    {
      v7 = *(a1 + 40);
      v8 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v9 = *v11;
      v7 = *(a1 + 40);
      if (v9)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", 1, *(a1 + 40), v9];
        goto LABEL_6;
      }

      v8 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v8, 1, v7];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", 1, *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(v10);
}

void sub_100025C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK::~ARI_UtaIdcSetCellImdGnssMitigationConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100025C6C(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(v10, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v10, 0x491C8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v10);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226604544 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::unpack(v10))
    {
      v7 = *(a1 + 40);
      v8 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v9 = *v11;
      v7 = *(a1 + 40);
      if (v9)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", 0, *(a1 + 40), v9];
        goto LABEL_6;
      }

      v8 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v8, 0, v7];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", 0, *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(v10);
}

void sub_100025D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100025D90(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(v10, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v10, 0x491C8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v10);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226604544 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::unpack(v10))
    {
      v7 = *(a1 + 40);
      v8 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v9 = *v11;
      v7 = *(a1 + 40);
      if (v9)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", 1, *(a1 + 40), v9];
        goto LABEL_6;
      }

      v8 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v8, 1, v7];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", 1, *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(v10);
}

void sub_100025EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK::~ARI_UtaIdcSetTunerArbitrationConfigRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_1000263C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK(&a32);

  _Unwind_Resume(a1);
}

void sub_100026488(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491C0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226571776 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK(v11);
}

void sub_100026590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK::~ARI_UtaIdcSetUwbRtActivityMitigationConfigRspCbV2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_1000269B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK::~ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK(&a29);

  _Unwind_Resume(a1);
}

void sub_100026AAC(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491D0000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226637312 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK::unpack(v11))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = @"Coex ARI driver(subId %u): Failed to set %s (unpack error)";
    }

    else
    {
      v10 = *v12;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      if (v10)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s (error = %d)", v7, *(a1 + 40), v10];
        goto LABEL_6;
      }

      v9 = @"Coex ARI driver(subId %u): Set %s (SUCCESS)";
    }

    [WCM_Logging logLevel:3 message:v9, v7, v8];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(subId %u): Failed to set %s, invalid response (NACK or wrong GMID)", *(a1 + 48), *(a1 + 40)];
  }

LABEL_6:
  AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK::~ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK(v11);
}

void sub_100026BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK::~ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void *sub_100026CDC(void *a1, id *a2, OS_dispatch_object *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10023DA80;
  sub_100026DC0((a1 + 3), a2, a3);
  return a1;
}

void sub_100026D58(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10023DA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100026DAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004250(v1);
  }
}

uint64_t sub_100026DC0(uint64_t a1, id *a2, OS_dispatch_object *a3)
{
  v8 = *a2;
  v5.fObj.fObj = a3;
  sub_1000E4B70(a1, &v8, v5);
  v6 = v8;
  v8 = 0;

  return a1;
}

void sub_100026E40()
{
  v0 = objc_autoreleasePoolPush();
  v1[0] = &off_10026FA80;
  v1[1] = &off_10026FAB0;
  v2[0] = &off_10026FA98;
  v2[1] = &off_10026FA98;
  v1[2] = &off_10026FAC8;
  v1[3] = &off_10026FAE0;
  v2[2] = &off_10026FA98;
  v2[3] = &off_10026FAF8;
  v1[4] = &off_10026FB10;
  v1[5] = &off_10026FB28;
  v2[4] = &off_10026FAF8;
  v2[5] = &off_10026FAF8;
  v1[6] = &off_10026FB40;
  v1[7] = &off_10026FB58;
  v2[6] = &off_10026FAF8;
  v2[7] = &off_10026FAF8;
  v1[8] = &off_10026FB70;
  v1[9] = &off_10026FB88;
  v2[8] = &off_10026FAF8;
  v2[9] = &off_10026FAF8;
  v1[10] = &off_10026FBA0;
  v1[11] = &off_10026FBB8;
  v2[10] = &off_10026FAF8;
  v2[11] = &off_10026FAF8;
  v1[12] = &off_10026FBD0;
  v1[13] = &off_10026FBE8;
  v2[12] = &off_10026FAF8;
  v2[13] = &off_10026FC00;
  v1[14] = &off_10026FC18;
  v1[15] = &off_10026FC48;
  v2[14] = &off_10026FC30;
  v2[15] = &off_10026FC60;
  v1[16] = &off_10026FC78;
  v1[17] = &off_10026FC90;
  v2[16] = &off_10026FC60;
  v2[17] = &off_10026FCA8;
  v1[18] = &off_10026FCC0;
  v1[19] = &off_10026FCF0;
  v2[18] = &off_10026FCD8;
  v2[19] = &off_10026FD08;
  v1[20] = &off_10026FD20;
  v1[21] = &off_10026FD38;
  v2[20] = &off_10026FD08;
  v2[21] = &off_10026FD50;
  v1[22] = &off_10026FD68;
  v1[23] = &off_10026FD98;
  v2[22] = &off_10026FD80;
  v2[23] = &off_10026FD80;
  v1[24] = &off_10026FDB0;
  v2[24] = &off_10026FDC8;
  qword_1002B7AF0 = [NSDictionary dictionaryWithObjects:v2 forKeys:v1 count:25];
  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10002704C()
{
  objc_opt_self();

  return objc_opt_class();
}

uint64_t sub_10002733C(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v4 = [i position];
    if (v4 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v13 = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v13 & 0x7F) << v5;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      if (v6++ >= 9)
      {
        v11 = 0;
        goto LABEL_16;
      }
    }

    v11 = [a2 hasError] ? 0 : v7;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((v11 >> 3) == 2)
    {
      if ((sub_10015D950() & 1) == 0)
      {
        return v13;
      }
    }

    else if ((v11 >> 3) == 1)
    {
      if ((sub_10015D9D8() & 1) == 0)
      {
        return v13;
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id sub_10002798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return [v8 countByEnumeratingWithState:va objects:v9 - 200 count:16];
}

id sub_1000279AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return [v26 countByEnumeratingWithState:&a9 objects:&a26 count:16];
}

uint64_t sub_100027CAC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v63 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v63 & 0x7F) << v5;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 44) |= 0x10u;
            while (1)
            {
              v71 = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v71 & 0x7F) << v39;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v10 = v40++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_131;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v41;
            }

LABEL_131:
            v61 = 24;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_110;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 44) |= 0x20u;
            while (1)
            {
              v70 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v70 & 0x7F) << v24;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_119;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v26;
            }

LABEL_119:
            v61 = 28;
          }
        }

        else if (v12 == 1)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 44) |= 0x40u;
          while (1)
          {
            v65 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v65 & 0x7F) << v34;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_127;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v36;
          }

LABEL_127:
          v61 = 32;
        }

        else
        {
          if (v12 != 2)
          {
            goto LABEL_110;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v64 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v64 & 0x7F) << v19;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_115;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v21;
          }

LABEL_115:
          v61 = 12;
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v69 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v69 & 0x7F) << v50;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v10 = v51++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_137;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v52;
          }

LABEL_137:
          v61 = 8;
        }

        else
        {
          if (v12 != 6)
          {
LABEL_110:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_147;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            v68 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v68 & 0x7F) << v29;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_123;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v31;
          }

LABEL_123:
          v61 = 20;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 44) |= 0x100u;
            while (1)
            {
              v72 = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v72 & 0x7F) << v44;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v10 = v45++ >= 9;
              if (v10)
              {
                LOBYTE(v49) = 0;
                goto LABEL_133;
              }
            }

            v49 = (v46 != 0) & ~[a2 hasError];
LABEL_133:
            *(a1 + 40) = v49;
            goto LABEL_147;
          case 8:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 44) |= 0x80u;
            while (1)
            {
              v67 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v67 & 0x7F) << v55;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v10 = v56++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_145;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v57;
            }

LABEL_145:
            v61 = 36;
            break;
          case 9:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              v66 = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v66 & 0x7F) << v13;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_141;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_141:
            v61 = 16;
            break;
          default:
            goto LABEL_110;
        }
      }

      *(a1 + v61) = v18;
LABEL_147:
      v62 = [a2 position];
    }

    while (v62 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100028D30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + v3) = *(a2 + v3);
  v4 = *(result + *(a3 + 2472));
  return result;
}

uint64_t sub_100028D44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + v3) = *(result + v3);
  v4 = *(a2 + *(a3 + 2472));
  return result;
}

uint64_t sub_1000290D8(uint64_t a1, void *a2)
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
        v84 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v84 & 0x7F) << v5;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          String = PBReaderReadString();

          *(a1 + 16) = String;
          goto LABEL_191;
        case 2u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            v95 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v95 & 0x7F) << v51;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v53;
          }

LABEL_169:
          v82 = 12;
          goto LABEL_190;
        case 3u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 68) |= 0x40u;
          while (1)
          {
            v94 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v94 & 0x7F) << v36;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_157;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v38;
          }

LABEL_157:
          v82 = 40;
          goto LABEL_190;
        case 4u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 68) |= 0x80u;
          while (1)
          {
            v93 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v93 & 0x7F) << v41;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v43;
          }

LABEL_161:
          v82 = 44;
          goto LABEL_190;
        case 5u:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 68) |= 0x100u;
          while (1)
          {
            v92 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v92 & 0x7F) << v19;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_145;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v21;
          }

LABEL_145:
          v82 = 48;
          goto LABEL_190;
        case 6u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 68) |= 0x400u;
          while (1)
          {
            v91 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v91 & 0x7F) << v56;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_173;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v58;
          }

LABEL_173:
          v82 = 56;
          goto LABEL_190;
        case 7u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 68) |= 0x20u;
          while (1)
          {
            v90 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v90 & 0x7F) << v66;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_181;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v68;
          }

LABEL_181:
          v82 = 36;
          goto LABEL_190;
        case 8u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 68) |= 0x1000u;
          while (1)
          {
            v89 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v89 & 0x7F) << v46;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v10 = v47++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_165;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v48;
          }

LABEL_165:
          v82 = 64;
          goto LABEL_190;
        case 9u:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            v88 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v88 & 0x7F) << v76;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v10 = v77++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_189;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v78;
          }

LABEL_189:
          v82 = 24;
          goto LABEL_190;
        case 0xAu:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 68) |= 0x800u;
          while (1)
          {
            v87 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v87 & 0x7F) << v31;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v33;
          }

LABEL_153:
          v82 = 60;
          goto LABEL_190;
        case 0xBu:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v86 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v86 & 0x7F) << v71;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v10 = v72++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_185;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v73;
          }

LABEL_185:
          v82 = 8;
          goto LABEL_190;
        case 0xCu:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            v97 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v97 & 0x7F) << v13;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_141;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v15;
          }

LABEL_141:
          v24 = -(v18 & 1) ^ (v18 >> 1);
          v82 = 28;
          goto LABEL_190;
        case 0xDu:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            v96 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v96 & 0x7F) << v25;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v30 = 0;
              goto LABEL_149;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v27;
          }

LABEL_149:
          v24 = -(v30 & 1) ^ (v30 >> 1);
          v82 = 32;
          goto LABEL_190;
        case 0xEu:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 68) |= 0x200u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_191;
      }

      while (1)
      {
        v85 = 0;
        v64 = [a2 position] + 1;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v63 |= (v85 & 0x7F) << v61;
        if ((v85 & 0x80) == 0)
        {
          break;
        }

        v61 += 7;
        v10 = v62++ >= 9;
        if (v10)
        {
          v24 = 0;
          goto LABEL_177;
        }
      }

      v24 = [a2 hasError] ? 0 : v63;
LABEL_177:
      v82 = 52;
LABEL_190:
      *(a1 + v82) = v24;
LABEL_191:
      v83 = [a2 position];
    }

    while (v83 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id *sub_10002AAC8(id *result, int a2)
{
  if (dword_1002B7B30 == a2)
  {
    Weak = objc_loadWeak(result + 4);

    return [Weak updateLPMState];
  }

  return result;
}

id sub_10002AB08(uint64_t a1)
{
  result = [*(a1 + 32) getLPMState];
  byte_1002B7B34 = result != 0;
  return result;
}

void sub_10002AC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 72), 8);
  _Unwind_Resume(a1);
}

id sub_10002AC8C(void *a1)
{
  state64 = 0;
  notify_get_state(dword_1002B7450, &state64);
  *(*(a1[5] + 8) + 24) = 1;
  *(*(a1[6] + 8) + 24) = state64 != 0;
  if (*(*(a1[6] + 8) + 24))
  {
    v2 = (dword_1002B7B38 + 1);
  }

  else
  {
    v2 = (dword_1002B7B38 - 1);
  }

  dword_1002B7B38 = v2;
  if (v2 == 1)
  {
    [WCM_Logging logLevel:24 message:@"registerWebkitStreamingNotification: WebKit streaming Started"];
    v3 = a1[4];
    v4 = 1;
LABEL_9:
    [v3 notifyStreamingState:v4 :0];
    return [WCM_Logging logLevel:24 message:@"registerWebkitStreamingNotification isMediaStreamingChanged: %d, isMediaStreaming: %d", *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24)];
  }

  if (v2 <= 0)
  {
    dword_1002B7B38 = 0;
    [WCM_Logging logLevel:24 message:@"registerWebkitStreamingNotification: WebKit streaming Ended"];
    v3 = a1[4];
    v4 = 2;
    goto LABEL_9;
  }

  [WCM_Logging logLevel:24 message:@"registerWebkitStreamingNotification:refcount: %d", v2];
  return [WCM_Logging logLevel:24 message:@"registerWebkitStreamingNotification isMediaStreamingChanged: %d, isMediaStreaming: %d", *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24)];
}

void sub_10002B4E0(uint64_t a1)
{
  if (qword_1002B7B20)
  {
    dispatch_source_cancel(qword_1002B7B20);
    dispatch_release(qword_1002B7B20);
    qword_1002B7B20 = 0;
  }

  qword_1002B7B20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 32));
  v2 = dispatch_time(0, 0);
  dispatch_source_set_timer(qword_1002B7B20, v2, (*(a1 + 56) * 1000000000.0), 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002B5D8;
  handler[3] = &unk_10023DBC8;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  dispatch_source_set_event_handler(qword_1002B7B20, handler);
  dispatch_resume(qword_1002B7B20);
}

id sub_10002B5D8(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  v2 = [*(a1 + 32) getDeltaIPStats:&v10 :&v9 :&v8 :&v7];
  v3 = *(a1 + 48) * 1000.0;
  v4 = v7 / v3;
  v5 = v8 / v3;
  result = [WCM_Logging logLevel:24 message:@"Delta TX Rate: %f, RX Rate: %f", v5, v4];
  if (v2 != 1)
  {
    return (*(*(a1 + 40) + 16))(v5, v4);
  }

  return result;
}

void sub_10002B804(id a1, unint64_t a2, unint64_t a3, float a4, float a5)
{
  v9 = (a5 - a4);
  if (v9 >= 0)
  {
    v10 = (a5 - a4);
  }

  else
  {
    v10 = -v9;
  }

  v11 = v10;
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    [WCM_Logging logLevel:24 message:@"VoIP Delta: TX rate: %f, RX Rate: %f, VoIP active Diff: %f", a4, a5, v11];
  }

  else
  {
    [WCM_Logging logLevel:24 message:@"VoIP Delta: TX rate: %f, RX Rate: %f, Diff: %f", a4, a5, v11];
    if (a4 > 7.0 && a2 >= 0x64 && a3 >= 0x64 && a5 > 7.0 && v10 <= 0x1D)
    {
      v12 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

      [v12 rxVoIPAppNotification:1 callType:2];
    }
  }
}

id sub_10002BAE4(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002BBDC;
  v3[3] = &unk_10023DC58;
  v4 = *(a1 + 32);
  v5 = 0;
  [v4 getDeltaIPStats:&v8 :&v7 :&v5 :&v6];
  result = [*(a1 + 32) isCoreMediaStreamingActive];
  if ((result & 1) == 0 && byte_1002B7CF8 == 1)
  {
    if (v6 >= 0x7C830 && (byte_1002B7B34 & 1) == 0)
    {
      [*(a1 + 32) notifyStreamingState:1 :0];
      byte_1002B7B01 = 1;
    }

    return [*(a1 + 32) startPeriodicTask:v3 :10.0];
  }

  return result;
}

id sub_10002BBDC(uint64_t a1, float a2, float a3)
{
  result = [WCM_Logging logLevel:24 message:@"streaming Delta: TX rate: %f, RX Rate: %f", a2, a3];
  if (byte_1002B7CF8 == 1 && a3 > 50.0 && (byte_1002B7B01 & 1) == 0 && (byte_1002B7B34 & 1) == 0)
  {
    result = [*(a1 + 32) notifyStreamingState:1 :0];
    byte_1002B7B01 = 1;
  }

  return result;
}

id sub_10002C04C(uint64_t a1, unint64_t a2, unint64_t a3, float a4, float a5)
{
  v10 = vabds_f32(a5, a4);
  [WCM_Logging logLevel:24 message:@"handleVoIPandStreamingStateChange deltaTxCount: %llu, deltaRxCount: %llu, txRate: %f, rxRate: %f, DLULRateDiff: %f", a2, a3, a4, a5, v10];
  if ((byte_1002B7B01 & 1) != 0 || [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {

    return [WCM_Logging logLevel:24 message:@"handleVoIPandStreamingStateChange: voIP or streaming already detected, skip"];
  }

  if ([*(a1 + 32) isCameraStatusValid])
  {
    if (![*(a1 + 32) isCameraStatusValid])
    {
      goto LABEL_27;
    }

    v12 = [*(a1 + 32) isCameraOn];
    if (a2 < 0x12D || (v12 & 1) != 0)
    {
      goto LABEL_27;
    }
  }

  else if (a2 < 0x12D)
  {
    goto LABEL_27;
  }

  v15 = v10 < 6.0 && a4 < 20.0 && a4 > 1.0 && a5 < 20.0;
  if (v15 && a2 <= 0x2BB && a3 - 301 <= 0x18E && a5 > 1.0)
  {
    [WCM_Logging logLevel:24 message:@"handleVoIPandStreamingStateChange voIP audio call detected"];
    v16 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
    v17 = 1;
    goto LABEL_38;
  }

LABEL_27:
  if (![*(a1 + 32) isCameraStatusValid])
  {
    if (a2 < 0x3E9)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if ([*(a1 + 32) isCameraStatusValid])
  {
    v18 = [*(a1 + 32) isCameraOn];
    if (a2 >= 0x3E9 && (v18 & 1) != 0)
    {
LABEL_33:
      if (a4 <= 150.0 || a3 < 0x3E9 || a5 <= 150.0 || v10 >= 200.0)
      {
        goto LABEL_39;
      }

      [WCM_Logging logLevel:24 message:@"handleVoIPandStreamingStateChange voIP video call detected"];
      v16 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
      v17 = 2;
LABEL_38:
      result = [v16 rxVoIPAppNotification:1 callType:v17];
      byte_1002B7B02 = 1;
      return result;
    }
  }

LABEL_39:
  result = [*(a1 + 32) isCameraOn];
  if (a4 < 50.0 && a5 > 100.0 && !result && (byte_1002B7B34 & 1) == 0)
  {
    [WCM_Logging logLevel:24 message:@"handleVoIPandStreamingStateChange save to streamingRecord"];
    [*(a1 + 32) recordStreamingEvent];
    result = [*(a1 + 32) countStreamingEvent];
    if (result >= 4)
    {
      [WCM_Logging logLevel:24 message:@"handleVoIPandStreamingStateChange streaming detected"];
      [*(a1 + 32) notifyStreamingState:1 :0];
      byte_1002B7B01 = 1;
      v19 = *(a1 + 32);

      return [v19 resetStreamingRecord];
    }
  }

  return result;
}

void sub_10002C3E0(uint64_t a1)
{
  [WCM_Logging logLevel:24 message:@"Received handleAppStateChange changeInfo: %@", *(a1 + 32)];
  v2 = [*(a1 + 32) objectForKey:BKSApplicationStateDisplayIDKey];
  v3 = [*(a1 + 32) objectForKey:BKSApplicationStateKey];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {

    [WCM_Logging logLevel:24 message:@"invalid applicationBundleId or appState"];
  }

  else
  {
    v19 = [v3 unsignedIntValue];
    v5 = [*(a1 + 40) isCallKitAppInDenyList:v2];
    if ((v5 & 1) == 0)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3052000000;
      v33 = sub_10002CA6C;
      v6 = qword_1002B7D20;
      v34 = sub_10002CA7C;
      v35 = qword_1002B7D20;
      if (!qword_1002B7D20)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10002CA88;
        v29[3] = &unk_10023DCC8;
        v29[4] = &v30;
        sub_10002CA88(v29);
        v6 = v31[5];
      }

      _Block_object_dispose(&v30, 8);
      v7 = [[v6 alloc] initWithBundleIdentifier:v2 allowPlaceholder:0 error:0];
      v20 = v7;
      if (v7)
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"app category %@, genreID: %llu", [objc_msgSend(v7 "iTunesMetadata")], objc_msgSend(objc_msgSend(v7, "iTunesMetadata"), "genreIdentifier"));
        if ([objc_msgSend(v20 "iTunesMetadata")] == 6005 || objc_msgSend(v2, "isEqualToString:", @"com.linkedin.LinkedIn"))
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v8 = [objc_msgSend(v20 "infoDictionary")];
          v9 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v9)
          {
            v10 = *v26;
            while (2)
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v26 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v25 + 1) + 8 * i);
                [WCM_Logging logLevel:24 message:@"UIBackgroundModes: %@", v12];
                if (([v12 isEqualToString:@"voip"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"audio"))
                {
                  [*(a1 + 40) handleVoIPandStreamingStateChange:v19 appId:v2];
                  goto LABEL_26;
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
              v13 = 0;
              if (v9)
              {
                continue;
              }

              goto LABEL_45;
            }
          }

          goto LABEL_44;
        }

        if ([objc_msgSend(v20 "iTunesMetadata")] == 6000)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v14 = [objc_msgSend(v20 "infoDictionary")];
          v15 = [v14 countByEnumeratingWithState:&v21 objects:v36 count:16];
          if (v15)
          {
            v16 = *v22;
            while (2)
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v21 + 1) + 8 * j);
                [WCM_Logging logLevel:24 message:@"UIBackgroundModes: %@", v18];
                if (([v18 isEqualToString:@"voip"] & 1) != 0 || objc_msgSend(v18, "isEqualToString:", @"audio"))
                {
                  [*(a1 + 40) handleVoIPStateChangeConference:v19 appId:v2];
LABEL_26:
                  v13 = 2;
                  goto LABEL_45;
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v21 objects:v36 count:16];
              v13 = 0;
              if (v15)
              {
                continue;
              }

              goto LABEL_45;
            }
          }

          goto LABEL_44;
        }

        if ([objc_msgSend(v20 "iTunesMetadata")] == 6016 || objc_msgSend(objc_msgSend(v20, "iTunesMetadata"), "genreIdentifier") == 6008)
        {
          [*(a1 + 40) handleStreamingStateChange:v19 appId:v2];
          v13 = 1;
        }

        else
        {
          if ([objc_msgSend(v20 "iTunesMetadata")] != 6002)
          {
LABEL_44:
            v13 = 0;
            goto LABEL_45;
          }

          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 24, @"Speed NSAppTransportSecurity: %@", [objc_msgSend(v20 "infoDictionary")]);
          v13 = 4;
        }

LABEL_45:
        [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      }
    }
  }
}

Class sub_10002CA88(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1002B7D28)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10002CBB4;
    v3[4] = &unk_10023DD00;
    v3[5] = v3;
    v4 = off_10023DCE8;
    v5 = 0;
    qword_1002B7D28 = _sl_dlopen();
  }

  if (!qword_1002B7D28)
  {
    sub_10015EF60(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("LSApplicationRecord");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015EEF8();
  }

  qword_1002B7D20 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_10002CBB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B7D28 = result;
  return result;
}

id sub_10002D1FC(uint64_t a1)
{
  if (!qword_1002B7D38)
  {
    v2.receiver = *(a1 + 32);
    v2.super_class = &OBJC_METACLASS___WRM_EnhancedCTService;
    qword_1002B7D38 = [objc_msgSendSuper2(&v2 allocWithZone:{0), "init"}];
  }

  return +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s", "+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton]_block_invoke");
}

id sub_10002E70C(uint64_t a1)
{
  *(*(a1 + 32) + 428) = +[WRM_SCService WRM_SCServiceControllerSingleton];
  v2 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
  v3 = *(*(a1 + 32) + 428);

  return [v2 setSCService:v3];
}

void sub_10002F408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002F420(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "isWiFiCallingSupported")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10002F558(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    result = [objc_msgSend(objc_msgSend(*(a1 + 32) "isWiFiCallingSupported")];
    *(*(*(a1 + 40) + 8) + 24) = result;
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0);
  return result;
}

void sub_10002F818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002F938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002FA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002FB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002FC6C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"Cell_Outrank_WiFi_Bandwidth_Threshold"];
  if (v2)
  {
    *(*(a1 + 40) + 444) = [v2 intValue];
    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: setTrialParameters: mWRMCellOutrankWifiBWThreshold, value: %d", *(*(a1 + 40) + 444)];
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"Cell_Configured_Bandwidth_Threshold"];
  if (v3)
  {
    *(*(a1 + 40) + 448) = [v3 intValue];
    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: setTrialParameters: mCellConfiguredBandwidth, value: %d", *(*(a1 + 40) + 448)];
  }

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"Cell_RSRP_4G5GvsWiFi_Threshold"];
  if (v4)
  {
    *(*(a1 + 40) + 452) = [v4 intValue];
    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: setTrialParameters: mCellRSRP4G5GvsWiFiThreshold, value: %d", *(*(a1 + 40) + 452)];
  }

  result = [*(a1 + 32) objectForKeyedSubscript:@"Cell_RSRQ_4G5GvsWiFi_Threshold"];
  if (result)
  {
    *(*(a1 + 40) + 456) = [result intValue];
    return [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: setTrialParameters: mCellRSRQ4G5GvsWiFiThreshold, value: %d", *(*(a1 + 40) + 456)];
  }

  return result;
}

id sub_10002FF9C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "PrevAudioErasurePercent")];
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v2 = "CTSubscriptionSlotOne";
    }

    else
    {
      v3 = [*(a1 + 32) activeSlot];
      v2 = "Unknown CTSubscriptionSlot!!!";
      if (v3 == 2)
      {
        v2 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v2 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s Erasure %f", "[WRM_EnhancedCTService updateVoLTESpeechErasure:]_block_invoke", v2, *(a1 + 40)];
}

void sub_1000301E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100030200(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "VoiceLqmValue")];
  v3 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = v2;
  v4 = "CTSubscriptionSlotTwo";
  if (v3 != 2)
  {
    v4 = "Unknown CTSubscriptionSlot!!!";
  }

  if (v3 == 1)
  {
    v4 = "CTSubscriptionSlotOne";
  }

  if (!v3)
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"simSlot %s vLQM_sync %d", v4, *(*(*(a1 + 40) + 8) + 24)];
}

id sub_100030720(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "bars")];
  v3 = [*(a1 + 32) movingAverageSignalBars];
  *&v4 = v2;
  [v3 replaceObjectAtIndex:0 withObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v4)}];
  v5 = [objc_msgSend(objc_msgSend(*(a1 + 32) "bars")];
  v6 = [*(a1 + 32) movingAverageSignalBars];
  *&v7 = v5;
  v8 = [NSNumber numberWithFloat:v7];

  return [v6 replaceObjectAtIndex:1 withObject:v8];
}

id sub_10003085C(uint64_t a1)
{
  v2 = [*(a1 + 32) movingAverageSignalBars];
  LODWORD(v3) = 5.0;
  [v2 replaceObjectAtIndex:0 withObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v3)}];
  v4 = [*(a1 + 32) movingAverageSignalBars];
  LODWORD(v5) = 5.0;
  v6 = [NSNumber numberWithFloat:v5];

  return [v4 replaceObjectAtIndex:1 withObject:v6];
}

void sub_100030A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100030A90(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "stallDetected")];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

id sub_100030C0C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "servCellRSSI")];
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = *(a1 + 40);
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 != 1)
  {
    v3 = v5;
  }

  if (v4)
  {
    v2 = v3;
  }

  return [WCM_Logging logLevel:22 message:@"%s: slot %s RSSI %f", "[WRM_EnhancedCTService setServingCellRSSI:forSim:]_block_invoke", v2, *(a1 + 48)];
}

_DWORD *sub_100030D68(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "servCellRSRP")];
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = *(a1 + 40);
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 != 1)
  {
    v3 = v5;
  }

  if (v4)
  {
    v2 = v3;
  }

  [WCM_Logging logLevel:22 message:@"%s: slot %d RSRP %f", "[WRM_EnhancedCTService setServingCellRSRP:forSim:]_block_invoke", v2, *(a1 + 48)];
  result = *(a1 + 32);
  if (result[95] == 2)
  {
    v7 = *(a1 + 48);

    return [result monitorStrongSOSSignal:v7];
  }

  return result;
}

id sub_100030F04(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "servCellSNR")];
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = *(a1 + 40);
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 != 1)
  {
    v3 = v5;
  }

  if (v4)
  {
    v2 = v3;
  }

  return [WCM_Logging logLevel:22 message:@"%s: slot %s SNR %f", "[WRM_EnhancedCTService setServingCellSNR:forSim:]_block_invoke", v2, *(a1 + 48)];
}

id sub_100031060(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "servCellSINR")];
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = *(a1 + 40);
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 != 1)
  {
    v3 = v5;
  }

  if (v4)
  {
    v2 = v3;
  }

  return [WCM_Logging logLevel:22 message:@"%s: slot %s SNR %f", "[WRM_EnhancedCTService setServingCellSINR:forSim:]_block_invoke", v2, *(a1 + 48)];
}

id sub_1000311BC(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "servCellRSRQ")];
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = *(a1 + 40);
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 != 1)
  {
    v3 = v5;
  }

  if (v4)
  {
    v2 = v3;
  }

  return [WCM_Logging logLevel:22 message:@"%s: slot %s RSRQ %f", "[WRM_EnhancedCTService setServingCellRSRQ:forSim:]_block_invoke", v2, *(a1 + 48)];
}

void sub_10003133C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100031354(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellRSSI")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) activeSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s RSSI %f", "[WRM_EnhancedCTService getServingCellRSSI]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_1000314FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100031514(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellRSRP")];
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = "CTSubscriptionSlotTwo";
  if (v2 != 2)
  {
    v4 = "Unknown CTSubscriptionSlot!!!";
  }

  if (v2 == 1)
  {
    v4 = "CTSubscriptionSlotOne";
  }

  if (!v2)
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: sim slot %s RSRP %f", "[WRM_EnhancedCTService getServingCellRSRP:]_block_invoke", v4, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_100031694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000316AC(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellSNR")];
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = "CTSubscriptionSlotTwo";
  if (v2 != 2)
  {
    v4 = "Unknown CTSubscriptionSlot!!!";
  }

  if (v2 == 1)
  {
    v4 = "CTSubscriptionSlotOne";
  }

  if (!v2)
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: sim slot %s SNR %f", "[WRM_EnhancedCTService getServingCellSNR:]_block_invoke", v4, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_100031818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100031830(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellSINR")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) activeSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s SNR %f", "[WRM_EnhancedCTService getServingCellSINR]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_1000319D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000319F0(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellRSRQ")];
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = "CTSubscriptionSlotTwo";
  if (v2 != 2)
  {
    v4 = "Unknown CTSubscriptionSlot!!!";
  }

  if (v2 == 1)
  {
    v4 = "CTSubscriptionSlotOne";
  }

  if (!v2)
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: sim slot %s RSRQ %f", "[WRM_EnhancedCTService getServingCellRSRQ:]_block_invoke", v4, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_100031B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100031B74(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellRSCP")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) activeSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s RSCP %f", "[WRM_EnhancedCTService getServingCellRSCP]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_100031D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100031D34(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellRSCP")];
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = "CTSubscriptionSlotTwo";
  if (v2 != 2)
  {
    v4 = "Unknown CTSubscriptionSlot!!!";
  }

  if (v2 == 1)
  {
    v4 = "CTSubscriptionSlotOne";
  }

  if (!v2)
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: sim slot %s RSCP %f", "[WRM_EnhancedCTService getServingCellRSCP:]_block_invoke", v4, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_100031EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100031EB8(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellECIO")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) activeSlot])
  {
    if ([*(a1 + 32) activeSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) activeSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s ECIO %f", "[WRM_EnhancedCTService getServingCellECIO]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_100032060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100032078(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "servCellECIO")];
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = "CTSubscriptionSlotTwo";
  if (v2 != 2)
  {
    v4 = "Unknown CTSubscriptionSlot!!!";
  }

  if (v2 == 1)
  {
    v4 = "CTSubscriptionSlotOne";
  }

  if (!v2)
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: sim slot %s ECIO %f", "[WRM_EnhancedCTService getServingCellECIO:]_block_invoke", v4, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_1000321EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100032204(uint64_t a1)
{
  v2 = "CTSubscriptionSlotOne";
  v3 = *(a1 + 48);
  v4 = "Unknown CTSubscriptionSlot!!!";
  if (v3 == 2)
  {
    v4 = "CTSubscriptionSlotTwo";
  }

  if (v3 != 1)
  {
    v2 = v4;
  }

  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = "CTSubscriptionSlotUnknown";
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: sim slot %s bars %@", "-[WRM_EnhancedCTService getCurrentSignalBars:]_block_invoke", v5, [*(a1 + 32) bars]);
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "bars")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000324FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100032514(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) subscriptions];
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([v7 slotID])
        {
          if (*(a1 + 40))
          {
            if ([v7 uuid])
            {
              v8 = *(a1 + 40);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v7 uuid];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && ![*(a1 + 40) compare:{objc_msgSend(v7, "uuid")}])
                {
                  *(*(*(a1 + 48) + 8) + 24) = [v7 slotID];
                }
              }
            }
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_100032D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100032D24(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "isVoNRSupported")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_100033678(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: CTSignalStrengthInfo %@ error %@", CTSubscriptionSlotAsString(), a2, [a3 description]);
  if (a2 && !a3)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) slotID];

    return [v7 processSignalStrengthInfo:a2 :v8];
  }

  return result;
}

id sub_100033738(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: isDataAttached %d error %@", CTSubscriptionSlotAsString(), a2, [a3 localizedDescription]);
  if (!a3)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) slotID];

    return [v7 processDataAttached:a2 :v8];
  }

  return result;
}

id sub_1000337F4(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s:  Registration status %@ error %@", CTSubscriptionSlotAsString(), a2, [a3 localizedDescription]);
  if (a2 && !a3)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) slotID];

    return [v7 processRegistrationStatus:a2 :v8];
  }

  return result;
}

id sub_1000338B4(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s:  copyMobileCountryCode %@ error %@", CTSubscriptionSlotAsString(), a2, [a3 localizedDescription]);
  if (a2 && !a3)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) slotID];

    return [v7 processMobileCountryCode:a2 :v8];
  }

  return result;
}

id sub_100033974(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s:  copyMobileNetworkCode %@ error %@", CTSubscriptionSlotAsString(), a2, [a3 localizedDescription]);
  if (a2 && !a3)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) slotID];

    return [v7 processMobileNetworkCode:a2 :v8];
  }

  return result;
}

id sub_100033A34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: kCTCapabilityVoLTE %d info %@ error %@", CTSubscriptionSlotAsString(), a2, a3, [a4 localizedDescription]);
  if (!a4)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) slotID];

    return [v9 processVolteStatus:a2 :v10];
  }

  return result;
}

id sub_100033AF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: kCTCapabilityVoNR %d info %@ error %@", CTSubscriptionSlotAsString(), a2, a3, [a4 localizedDescription]);
  if (!a4)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) slotID];

    return [v9 processVoNRStatus:a2 :v10];
  }

  return result;
}

id sub_100033BB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: kCTCapabilityWiFiCalling %d info %@ error %@", CTSubscriptionSlotAsString(), a2, a3, [a4 localizedDescription]);
  if (!a4)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) slotID];

    return [v9 processWiFiCallingStatus:a2 :v10];
  }

  return result;
}

id sub_100033C74(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s:  RAT info %@ error %@", CTSubscriptionSlotAsString(), a2, [a3 localizedDescription]);
  if (a2 && !a3)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) slotID];

    return [v7 processRadioTechnologyInfo:a2 :v8];
  }

  return result;
}

id sub_100033D34(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s:  Voice linkQuality %@ error %@", CTSubscriptionSlotAsString(), a2, [a3 localizedDescription]);
  if (a2 && !a3)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) slotID];

    return [v7 processVoiceLinkQualityInfo:a2 :v8];
  }

  return result;
}

id sub_100033DF4(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) slotID];
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s:  Enhanced Voice linkQuality %@ error %@", CTSubscriptionSlotAsString(), a2, [a3 localizedDescription]);
  if (a2 && !a3)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) slotID];

    return [v7 processEnhancedVoiceLinkQualityBlob:a2 :v8];
  }

  return result;
}

id sub_100033F44(uint64_t a1)
{
  v2 = [*(a1 + 32) isDataAttached];
  v3 = *(a1 + 40) - 1;
  v4 = [NSNumber numberWithBool:*(a1 + 48)];

  return [v2 replaceObjectAtIndex:v3 withObject:v4];
}

id sub_10003403C(uint64_t a1)
{
  v2 = [*(a1 + 32) isVolteSupported];
  v3 = *(a1 + 40) - 1;
  v4 = [NSNumber numberWithBool:*(a1 + 48)];

  return [v2 replaceObjectAtIndex:v3 withObject:v4];
}

id sub_100034134(uint64_t a1)
{
  v2 = [*(a1 + 32) isVoNRSupported];
  v3 = *(a1 + 40) - 1;
  v4 = [NSNumber numberWithBool:*(a1 + 48)];

  return [v2 replaceObjectAtIndex:v3 withObject:v4];
}

id sub_10003423C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = @"expensive";
  }

  else
  {
    v2 = @"in-expensive";
  }

  [*(a1 + 32) slotID];
  [WCM_Logging logLevel:22 message:@"Interface cost is %@ for %s", v2, CTSubscriptionSlotAsString()];
  [objc_msgSend(*(a1 + 40) "isExpensive")];
  v3 = [*(a1 + 40) deviceICheapFR2Coverage];
  v4 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  return [v4 evalFR2CoverageLikely:v3];
}

id sub_1000343B8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = @"enabled";
  }

  else
  {
    v2 = @"disabled";
  }

  [*(a1 + 32) slotID];
  [WCM_Logging logLevel:22 message:@"smartDataModeChanged  %@ for %s", v2, CTSubscriptionSlotAsString()];
  v3 = [*(a1 + 40) CTClient];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100034490;
  v5[3] = &unk_10023DF90;
  return [v3 getMaxDataRate:*(a1 + 32) completion:v5];
}

id sub_100034490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [WCM_Logging logLevel:22 message:@"smartDataModeChanged: getMaxDataRate %@", a3];
  }

  v5 = a2 == 3;
  [WCM_Logging logLevel:22 message:@"smartDataModeChanged: contenxt: %@: data mode LTE %d", *(a1 + 32), v5];
  [objc_msgSend(*(a1 + 40) "dataModeLTE")];
  v6 = [*(a1 + 40) deviceICheapFR2Coverage];
  v7 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  return [v7 evalFR2CoverageLikely:v6];
}

id sub_100034610(uint64_t a1)
{
  v2 = [*(a1 + 32) isWiFiCallingSupported];
  v3 = *(a1 + 40) - 1;
  v4 = [NSNumber numberWithBool:*(a1 + 48)];

  return [v2 replaceObjectAtIndex:v3 withObject:v4];
}

id sub_100034708(uint64_t a1)
{
  v2 = [*(a1 + 32) isPrivateNetworkSim];
  v3 = *(a1 + 40) - 1;
  v4 = [NSNumber numberWithBool:*(a1 + 48)];

  return [v2 replaceObjectAtIndex:v3 withObject:v4];
}

id sub_100034800(uint64_t a1)
{
  v2 = [*(a1 + 32) isPrivateNetworkPreferredOverWifi];
  v3 = *(a1 + 40) - 1;
  v4 = [NSNumber numberWithBool:*(a1 + 48)];

  return [v2 replaceObjectAtIndex:v3 withObject:v4];
}

id sub_1000348F8(uint64_t a1)
{
  [*(*(a1 + 32) + 428) getAirPlaneMode];
  v2 = [*(*(a1 + 32) + 428) isAirPlaneModeEnabled];
  [+[NSDate date](NSDate timeIntervalSince1970];
  v4 = v3;
  if ([*(a1 + 40) isEqualToString:@"kCTRegistrationStatusRegisteredHome"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [*(a1 + 40) isEqualToString:@"kCTRegistrationStatusRegisteredRoaming"];
  }

  v6 = [*(a1 + 40) isEqualToString:@"kCTRegistrationStatusRegisteredRoaming"];
  [objc_msgSend(*(a1 + 32) "isDeviceRegistered")];
  [objc_msgSend(*(a1 + 32) "isRoaming")];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: isDeviceRegistered %@ isRoaming %@", "-[WRM_EnhancedCTService processRegistrationStatus::]_block_invoke", [*(a1 + 32) isDeviceRegistered], objc_msgSend(*(a1 + 32), "isRoaming"));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);

  return [v7 updateCellularAvailabilityStatus:v8 :v9 :v2 :v4];
}

_BYTE *sub_100034CBC(uint64_t a1)
{
  [*(*(a1 + 32) + 372) replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", objc_msgSend(*(a1 + 32), "parseRegistrationStatusForBiomeStream:", *(a1 + 40)))}];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: CTSubscriptionSlot %d mCellularAvailabilityStatus %@ (%@)", "-[WRM_EnhancedCTService updateCellularAvailabilityStatus::::]_block_invoke", *(a1 + 48), [*(*(a1 + 32) + 372) objectAtIndexedSubscript:*(a1 + 48) - 1], *(a1 + 40));
  result = *(a1 + 32);
  if ((result[420] & 1) != 0 || (*(*(a1 + 32) + 420) = [result isWatchAssociated], result = *(a1 + 32), result[420] == 1))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);

    return [result writeToCellularAvailabilityStatusBiomeStream:v4 :v3];
  }

  return result;
}

id sub_100034E60(uint64_t a1)
{
  result = [*(a1 + 32) intValue];
  if (result != 0xFFFF)
  {
    v3 = result;
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"slot %d processMobileCountryCode current self.mcc=%@, new mcc=%d", *(a1 + 48), [*(a1 + 40) mcc], result);
    v4 = [*(a1 + 40) mcc];
    v5 = *(a1 + 48) - 1;
    v6 = [NSNumber numberWithInt:v3];

    return [v4 replaceObjectAtIndex:v5 withObject:v6];
  }

  return result;
}

id sub_100034FB8(uint64_t a1)
{
  result = [*(a1 + 32) intValue];
  if (result != 0xFFFF)
  {
    v3 = result;
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"slot %d processMobileNetworkCode current self.mnc=%@, new mnc=%d", *(a1 + 48), [*(a1 + 40) mnc], result);
    v4 = [*(a1 + 40) mnc];
    v5 = *(a1 + 48) - 1;
    v6 = [NSNumber numberWithInt:v3];

    return [v4 replaceObjectAtIndex:v5 withObject:v6];
  }

  return result;
}

id sub_100035110(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "linkQuality")];
  v3 = [objc_msgSend(objc_msgSend(*(a1 + 40) "bars")];
  if (v2 != 10 || v3 < 3)
  {
    [WCM_Logging logLevel:22 message:@"%s: Rcvd Voice LQM from CT: %d", "[WRM_EnhancedCTService processVoiceLinkQualityInfo::]_block_invoke", v2];
    if (v2 && (v2 + 2) <= 0x66)
    {
      if (v2 != [objc_msgSend(objc_msgSend(*(a1 + 40) "VoiceLqmValue")])
      {
        [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      }

      [objc_msgSend(*(a1 + 40) "VoiceLqmValue")];
      [objc_msgSend(*(a1 + 40) "VoiceLqmIsValid")];
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"%s: Ignoring Rcvd Voice LQM from CT: %d since signalbars %d", "[WRM_EnhancedCTService processVoiceLinkQualityInfo::]_block_invoke", 10, v3];
  }

  return +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: vLQM valid %d vLQM %d", "-[WRM_EnhancedCTService processVoiceLinkQualityInfo::]_block_invoke", [objc_msgSend(objc_msgSend(*(a1 + 40) "VoiceLqmIsValid")], objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 40), "VoiceLqmValue"), "objectAtIndex:", *(a1 + 48) - 1), "intValue"));
}

id *sub_1000355F0(id *result)
{
  v13 = 0;
  v11 = 0;
  v10 = 0;
  if (result[6])
  {
    v1 = result;
    [result[4] checkAndScheduleSpeedTest];
    if (![v1[5] enhancedLinkQuality])
    {
      return [WCM_Logging logLevel:22 message:@"%s: Data LQM BLOB is empty", "[WRM_EnhancedCTService processEnhancedDataLQMBlob::]_block_invoke"];
    }

    v12 = 0;
    [objc_msgSend(v1[5] "enhancedLinkQuality")];
    if (v13 - 1 >= 2)
    {
      [WCM_Logging logLevel:22 message:@"%s Data LQM version is not supported ver=%u", "[WRM_EnhancedCTService processEnhancedDataLQMBlob::]_block_invoke", v13];
      goto LABEL_36;
    }

    if ([v1[5] metricType] != 1)
    {
      if ([v1[5] metricType])
      {
        if ([v1[5] metricType] == 1)
        {
          v3 = "CTEnhancedLQMIndicationTypeLinkState";
        }

        else if ([v1[5] metricType] == 2)
        {
          v3 = "CTEnhancedLQMIndicationTypeLinkQualityFingerprint";
        }

        else if ([v1[5] metricType] == 3)
        {
          v3 = "CTEnhancedLQMIndicationTypeTrafficClass";
        }

        else if ([v1[5] metricType] == 4)
        {
          v3 = "CTEnhancedLQMIndicationTypeDataTransferTime";
        }

        else
        {
          v9 = [v1[5] metricType];
          v3 = "Unknown CTEnhancedLQMIndicationType!!!";
          if (v9 == 5)
          {
            v3 = "CTEnhancedLQMIndicationTypeLinkPowerCost";
          }
        }
      }

      else
      {
        v3 = "CTEnhancedLQMIndicationTypeUnknown";
      }

      [WCM_Logging logLevel:22 message:@"%s: metricType %s", "[WRM_EnhancedCTService processEnhancedDataLQMBlob::]_block_invoke", v3];
      goto LABEL_36;
    }

    [objc_msgSend(v1[5] "enhancedLinkQuality")];
    if (v12)
    {
      v2 = 1;
      [objc_msgSend(v1[5] "enhancedLinkQuality")];
      if (HIBYTE(v11) > 9u)
      {
        goto LABEL_9;
      }

      [WCM_Logging logLevel:22 message:@"Discarding invalid data LQM %d", HIBYTE(v11)];
    }

    v2 = 0;
LABEL_9:
    if ((v12 & 2) != 0)
    {
      [objc_msgSend(v1[5] "enhancedLinkQuality")];
      v4 = [v1[4] rrcState];
      [v4 replaceObjectAtIndex:v1[6] - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v11)}];
      if ((v12 & 4) == 0)
      {
LABEL_11:
        if (!v2)
        {
LABEL_36:
          result = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
          if (result)
          {
            return [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
          }

          return result;
        }

LABEL_20:
        v5 = [v1[4] DataLqmValue];
        [v5 replaceObjectAtIndex:v1[6] - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", SHIBYTE(v11))}];
        [objc_msgSend(v1[4] "DataLqmIsValid")];
        [WCM_Logging logLevel:22 message:@"%s Received eLQM notification from BB, Version: %d, LQM: %d, RRC state: %d, Cell interface state: %d", "[WRM_EnhancedCTService processEnhancedDataLQMBlob::]_block_invoke", v13, SHIBYTE(v11), v11, v10];
        v6 = +[WCM_PolicyManager singleton];
        [v6 updateLqmState:SHIBYTE(v11) deviceRRCState:v11 subscriptionSlot:v1[6]];
        v7 = v1[4];
        if (v7[476] == 1 && HIBYTE(v11) == 10 && ([objc_msgSend(objc_msgSend(v7 "cbrsCoreAnalyticsMetricsSent")] & 1) == 0)
        {
          v8 = v1[4];
          if (v1[6] == *(v8 + 468) && [v8 numberofSubscriptions] >= 2)
          {
            [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
            [objc_msgSend(v1[4] "cbrsCoreAnalyticsMetricsSent")];
          }
        }

        goto LABEL_36;
      }
    }

    else if ((v12 & 4) == 0)
    {
      goto LABEL_11;
    }

    [objc_msgSend(v1[5] "enhancedLinkQuality")];
    if (!v2)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  return result;
}

id sub_100035A90(uint64_t a1)
{
  if (![*(a1 + 32) enhancedLinkQuality])
  {
    return [WCM_Logging logLevel:22 message:@"%s: LQM BLOB is empty", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v46, v48, v49, v50];
  }

  v2 = [objc_msgSend(*(a1 + 32) "enhancedLinkQuality")];
  v3 = v2;
  result = [WCM_Logging logLevel:22 message:@"%s Blob size: %d", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v2];
  if (!v2)
  {
    return result;
  }

  v55 = 0;
  v54 = 0;
  [objc_msgSend(*(a1 + 32) "enhancedLinkQuality")];
  if (v55 > 3u)
  {
    if (v55 != 4)
    {
      if (v55 != 240)
      {
        if (v55 == 241)
        {
          memset(v53, 0, 74);
          [WCM_Logging logLevel:22 message:@"%s Init BLOB Size: %d, Version: %d", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v2, 241];
          [objc_msgSend(*(a1 + 32) "enhancedLinkQuality")];
          v5 = BYTE1(v53[0]);
          if ([objc_msgSend(objc_msgSend(*(a1 + 40) "VoiceLqmValue")] != v5)
          {
            [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
          }

          [WCM_Logging logLevel:22 message:@" %s Version %d, Voice LQM: %d, PDCP TX SDU Count: %d, PDCP TX discard count: %d, RLC RX PDU count: %d, RLC RX missing pdu count: %d, LQE: %d ", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v55, v5, *(v53 + 2), *(v53 + 6), *(v53 + 10), *(v53 + 14), *(&v53[1] + 2)];
          [WCM_Logging logLevel:22 message:@"%s Meas Serving cell type : %d, SINR: %d, RSSI:%d, RSRP: %f, RSRQ: %f ", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", *(&v53[1] + 6), SLOBYTE(v53[4]), SWORD5(v53[1]), *(&v53[1] + 3), *&v53[2]];
          [WCM_Logging logLevel:22 message:@"CodecType: %d, Total Erasures: %d, Total PlayBacks:%d, Audio Erasure Speech:%d, Audio Erasure Silence: %d", DWORD1(v53[3]), HIDWORD(v53[2]), LODWORD(v53[3]), DWORD2(v53[3]), HIDWORD(v53[3])];
          [WCM_Logging logLevel:22 message:@"%s IMS preference : %d, WCDMA RSCP: %d, WCDMA ECIO:%d", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", *(&v53[4] + 1), DWORD2(v53[2]), DWORD1(v53[2])];
          [WCM_Logging logLevel:22 message:@"Voice LQM BLOB Version: %d, VoiceLQM: %d, ", v55, v5];
          [WCM_Logging logLevel:22 message:@"Voice LQM BLOB Cell load valid: %d, est cell load: %d, ", *(&v53[4] + 5), SBYTE9(v53[4])];
          if (*(&v53[4] + 5))
          {
            v6 = [*(a1 + 40) loads];
            [v6 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", SBYTE9(v53[4]))}];
          }

          v7 = [*(a1 + 40) servCellRSSI];
          [v7 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", SWORD5(v53[1]))}];
          v8 = [*(a1 + 40) servCellRSRP];
          [v8 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *(&v53[1] + 3))}];
          v9 = [*(a1 + 40) servCellSINR];
          [v9 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", SLOBYTE(v53[4]))}];
          v10 = [*(a1 + 40) servCellRSRQ];
          [v10 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *&v53[2])}];
          v11 = [*(a1 + 40) imsVoiceOverPSSupported];
          [v11 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", *(&v53[4] + 1) != 0)}];
          v12 = [*(a1 + 40) servCellRSCP];
          [v12 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", SDWORD2(v53[2]))}];
          v13 = [*(a1 + 40) servCellECIO];
          [v13 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", SDWORD1(v53[2]))}];
          v51 = *(&v53[2] + 12);
          v52 = HIDWORD(v53[3]);
          return [*(a1 + 40) updateAudioQualityKaroo:&v51 :*(a1 + 48)];
        }

        return [WCM_Logging logLevel:22 message:@"%s processVoiceLQMBlob: LQM version is not supported", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v47, v48, v49, v50];
      }

      memset(v53, 0, 37);
      [objc_msgSend(*(a1 + 32) "enhancedLinkQuality")];
      v34 = BYTE1(v53[0]);
      [WCM_Logging logLevel:22 message:@"%s Init BLOB Size: %d, Version: %d", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v3, v55];
      if ([objc_msgSend(objc_msgSend(*(a1 + 40) "VoiceLqmValue")] != v34)
      {
        [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
      }

      [objc_msgSend(*(a1 + 40) "VoiceLqmValue")];
      [objc_msgSend(*(a1 + 40) "VoiceLqmIsValid")];
      [WCM_Logging logLevel:22 message:@" %s Version %d, Voice LQM: %d, PDCP TX SDU Count: %d, PDCP TX discard count: %d, RLC RX PDU count: %d, RLC RX missing pdu count: %d, LQE: %d ", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v55, v34, *(v53 + 2), *(v53 + 6), *(v53 + 10), *(v53 + 14), *(&v53[1] + 2)];
      [WCM_Logging logLevel:22 message:@"%s Meas Serving cell type : %d, SINR: %d, RSSI:%d, RSRP: %f, RSRQ: %f ", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", *(&v53[1] + 6), SBYTE10(v53[1]), *(&v53[1] + 11), *(&v53[1] + 13), *(&v53[2] + 1)];
      [WCM_Logging logLevel:22 message:@"%s Voice LQM BLOB Version: %d, VoiceLQM: %d, ", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v55, v34];
      v35 = [*(a1 + 40) servCellRSSI];
      [v35 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *(&v53[1] + 11))}];
      v36 = [*(a1 + 40) servCellRSRP];
      [v36 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *(&v53[1] + 13))}];
      v37 = [*(a1 + 40) servCellSINR];
      [v37 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", SBYTE10(v53[1]))}];
      v38 = [*(a1 + 40) servCellRSRQ];
      v39 = *(a1 + 48) - 1;
      v40 = *(&v53[2] + 1);
      return [v38 replaceObjectAtIndex:v39 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v40)}];
    }

    memset(v53, 0, 32);
    [objc_msgSend(*(a1 + 32) "enhancedLinkQuality")];
    v24 = BYTE1(v53[0]);
    if ([objc_msgSend(objc_msgSend(*(a1 + 40) "VoiceLqmValue")] != v24)
    {
      v25 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
      [v25 notifyVoiceLqmUpdate:BYTE1(v53[0]) onSimSlot:*(a1 + 48)];
    }

    v26 = [*(a1 + 40) VoiceLqmValue];
    [v26 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", BYTE1(v53[0]))}];
    [objc_msgSend(*(a1 + 40) "VoiceLqmIsValid")];
    v27 = [*(a1 + 40) VoiceLqmReasonCode];
    [v27 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", BYTE2(v53[0]))}];
    [WCM_Logging logLevel:22 message:@"%s BLOB Size: %d, MavVoiceLqmBlob4: %d  Voice LQM BLOB Version: %d, VoiceLQM: %d, ReasonCode: %d", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v3, 32, LOBYTE(v53[0]), BYTE1(v53[0]), BYTE2(v53[0])];
    [WCM_Logging logLevel:22 message:@"%s IMS preference: %d, CodecType: %d, Total Erasures: %u, Total PlayBacks:%u", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", BYTE3(v53[0]), HIDWORD(v53[0]), DWORD1(v53[0]), DWORD2(v53[0])];
    v28 = [*(a1 + 40) imsVoiceOverPSSupported];
    [v28 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", BYTE3(v53[0]) != 0)}];
    if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 1)
    {
      v29 = SLODWORD(v53[1]) * 0.2 + -20.0;
      v30 = [*(a1 + 40) servCellRSRP];
      [v30 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", SDWORD1(v53[1]))}];
      [objc_msgSend(*(a1 + 40) "servCellSINR")];
      [objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRSRP")];
      v32 = v31;
      [objc_msgSend(objc_msgSend(*(a1 + 40) "servCellSINR")];
      [WCM_Logging logLevel:22 message:@"%s RSRP: %f, SINR: %f", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v32, v33];
    }

    else
    {
      [*(a1 + 40) dataPreferredSlot];
    }

    [WCM_Logging logLevel:22 message:@"%s: DLBW: %d, ULBW: %d", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", DWORD2(v53[1]), HIDWORD(v53[1])];
    [*(a1 + 40) updateAudioQuality:*(v53 + 4) :{HIDWORD(v53[0]), *(a1 + 48)}];
LABEL_34:
    result = [*(a1 + 40) dataPreferredSlot];
    if (result != *(a1 + 48))
    {
      return result;
    }

    v38 = [*(a1 + 40) dataBW];
    v39 = *(a1 + 48) - 1;
    LODWORD(v45) = DWORD2(v53[1]);
    v40 = v45;
    return [v38 replaceObjectAtIndex:v39 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v40)}];
  }

  if (v55 != 1)
  {
    if (v55 != 2)
    {
      return [WCM_Logging logLevel:22 message:@"%s processVoiceLQMBlob: LQM version is not supported", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v47, v48, v49, v50];
    }

    memset(v53, 0, 32);
    [objc_msgSend(*(a1 + 32) "enhancedLinkQuality")];
    v14 = BYTE1(v53[0]);
    if ([objc_msgSend(objc_msgSend(*(a1 + 40) "VoiceLqmValue")] != v14)
    {
      v15 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
      [v15 notifyVoiceLqmUpdate:BYTE1(v53[0]) onSimSlot:*(a1 + 48)];
    }

    v16 = [*(a1 + 40) VoiceLqmValue];
    [v16 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", BYTE1(v53[0]))}];
    [objc_msgSend(*(a1 + 40) "VoiceLqmIsValid")];
    v17 = [*(a1 + 40) VoiceLqmReasonCode];
    [v17 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", BYTE2(v53[0]))}];
    [WCM_Logging logLevel:22 message:@"%s BLOB Size: %d, Expected size: %d, Voice LQM BLOB Version: %d, VoiceLQM: %d, ReasonCode: %d", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v3, 32, LOBYTE(v53[0]), BYTE1(v53[0]), BYTE2(v53[0])];
    [WCM_Logging logLevel:22 message:@"%s IMS preference: %d, CodecType: %d, Total Erasures: %u, Total PlayBacks:%u", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", BYTE3(v53[0]), HIDWORD(v53[0]), DWORD1(v53[0]), DWORD2(v53[0])];
    v18 = [*(a1 + 40) imsVoiceOverPSSupported];
    [v18 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", BYTE3(v53[0]) != 0)}];
    if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 1)
    {
      v19 = SLODWORD(v53[1]) * 0.2 + -20.0;
      v20 = [*(a1 + 40) servCellRSRP];
      [v20 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", SDWORD1(v53[1]))}];
      [objc_msgSend(*(a1 + 40) "servCellSINR")];
      [objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRSRP")];
      v22 = v21;
      [objc_msgSend(objc_msgSend(*(a1 + 40) "servCellSINR")];
      [WCM_Logging logLevel:22 message:@"%s RSRP: %f, SINR: %f", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v22, v23];
    }

    else
    {
      [*(a1 + 40) dataPreferredSlot];
    }

    [*(a1 + 40) updateAudioQuality:*(v53 + 4) :{HIDWORD(v53[0]), *(a1 + 48)}];
    [WCM_Logging logLevel:22 message:@"%s: DLBW: %d, ULBW: %d", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", DWORD2(v53[1]), HIDWORD(v53[1])];
    goto LABEL_34;
  }

  LOBYTE(v53[0]) = 0;
  [objc_msgSend(*(a1 + 32) "enhancedLinkQuality")];
  v41 = LOBYTE(v53[0]);
  if ([objc_msgSend(objc_msgSend(*(a1 + 40) "VoiceLqmValue")] != v41)
  {
    v42 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];
    [v42 notifyVoiceLqmUpdate:LOBYTE(v53[0]) onSimSlot:*(a1 + 48)];
  }

  v43 = [*(a1 + 40) VoiceLqmValue];
  [v43 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", LOBYTE(v53[0]))}];
  [objc_msgSend(*(a1 + 40) "VoiceLqmIsValid")];
  [objc_msgSend(*(a1 + 32) "enhancedLinkQuality")];
  v44 = [*(a1 + 40) VoiceLqmReasonCode];
  [v44 replaceObjectAtIndex:*(a1 + 48) - 1 withObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v54)}];
  return [WCM_Logging logLevel:22 message:@"%s BLOB Size: %d, Voice LQM BLOB Version: %d, VoiceLQM: %d, ReasonCode: %d", "[WRM_EnhancedCTService processEnhancedVoiceLinkQualityBlob::]_block_invoke", v3, v55, LOBYTE(v53[0]), v54];
}

id sub_100036890(uint64_t a1)
{
  result = [WCM_Logging logLevel:24 message:@"nrSliceAppStateChanged: APPID : %@, State : %d, refCount:%d", *(a1 + 32), *(a1 + 40), dword_1002B7D40];
  if (*(a1 + 40))
  {
    v3 = dword_1002B7D40 + 1;
  }

  else
  {
    v3 = dword_1002B7D40 - 1;
  }

  dword_1002B7D40 = v3;
  if (v3 != 1)
  {
    if (v3 > 0)
    {
      return result;
    }

    dword_1002B7D40 = 0;
  }

  v4 = v3 == 1;
  v5 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  return [v5 triggerEnableSA:v4];
}

id sub_1000369DC(uint64_t a1)
{
  v2 = [*(a1 + 32) indicator];
  [objc_msgSend(*(a1 + 40) "dataIndicator")];
  v3 = [*(a1 + 32) attached];
  [objc_msgSend(*(a1 + 40) "isDataAttached")];
  v4 = *(a1 + 32);
  v5 = 4;
  if (objc_opt_respondsToSelector())
  {
    if ([*(a1 + 32) newRadioCoverage])
    {
      v5 = 1;
    }

    else
    {
      v5 = 4;
    }
  }

  v6 = *(a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) newRadioSaCoverage])
  {
    v5 = 2;
  }

  else
  {
    v7 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      if ([*(a1 + 32) newRadioNsaCoverage])
      {
        v5 = 3;
      }

      else
      {
        v5 = v5;
      }
    }
  }

  [objc_msgSend(*(a1 + 40) "radioCoverage")];
  v8 = [*(a1 + 32) dataBearerTechnology] == 4;
  if ([*(a1 + 32) dataBearerTechnology] == 6)
  {
    v9 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      if ([*(a1 + 32) newRadioMmWaveDataBearer])
      {
        v8 = 4;
      }

      else
      {
        v8 = v8;
      }
    }

    v10 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      if ([*(a1 + 32) newRadioSub6DataBearer])
      {
        v8 = 5;
      }

      else
      {
        v8 = v8;
      }
    }
  }

  if ([*(a1 + 32) dataBearerTechnology] == 5)
  {
    v11 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      if ([*(a1 + 32) newRadioMmWaveDataBearer])
      {
        v8 = 2;
      }

      else
      {
        v8 = v8;
      }
    }

    v12 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      if ([*(a1 + 32) newRadioSub6DataBearer])
      {
        v8 = 3;
      }

      else
      {
        v8 = v8;
      }
    }
  }

  [objc_msgSend(*(a1 + 40) "radioFrequency")];
  v13 = *(a1 + 32);
  v14 = (objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) newRadioMmWaveDataBearer] & 1) != 0;
  [objc_msgSend(*(a1 + 40) "isFR2Radio")];
  v15 = [*(a1 + 32) cellularDataPossible];
  [objc_msgSend(*(a1 + 40) "isDataEnabled")];
  if ((v3 & v15) == 1)
  {
    v16 = *(a1 + 48);
    if (v16 == [*(a1 + 40) dataPreferredSlot])
    {
      v17 = [objc_msgSend(objc_msgSend(*(a1 + 40) "isPrivateNetworkSim")];
      v18 = [objc_msgSend(objc_msgSend(*(a1 + 40) "isPrivateNetworkPreferredOverWifi")];
      [*(a1 + 40) setDataPreferredSlotOnCBRS:v17 & v18];
      v19 = *(a1 + 48);
      if (v19)
      {
        if (v19 == 1)
        {
          v20 = "CTSubscriptionSlotOne";
        }

        else if (v19 == 2)
        {
          v20 = "CTSubscriptionSlotTwo";
        }

        else
        {
          v20 = "Unknown CTSubscriptionSlot!!!";
        }
      }

      else
      {
        v20 = "CTSubscriptionSlotUnknown";
      }

      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: isPrivateNwSim %d, isPrivateNwPreferredOverWifi: %d, dataPreferredSlotOnPrivateNetwork %d", v20, v17, v18 & 1, [*(a1 + 40) dataPreferredSlotOnCBRS]);
    }
  }

  if ([*(a1 + 32) radioTechnology])
  {
    if ([*(a1 + 32) radioTechnology] == 2)
    {
      v21 = 2;
    }

    else if ([*(a1 + 32) radioTechnology] == 3)
    {
      v21 = 3;
    }

    else if ([*(a1 + 32) radioTechnology] == 4)
    {
      v21 = 4;
    }

    else if ([*(a1 + 32) radioTechnology] == 5)
    {
      v21 = 5;
    }

    else if ([*(a1 + 32) radioTechnology] == 7 || objc_msgSend(*(a1 + 32), "radioTechnology") == 8)
    {
      v21 = 1;
    }

    else if ([*(a1 + 32) radioTechnology] == 9)
    {
      v21 = 7;
    }

    else if ([*(a1 + 32) radioTechnology] == 10)
    {
      v21 = 9;
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"Unknown registered technology"];
      v21 = 10;
    }
  }

  else
  {
    v21 = 8;
  }

  [objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")];
  v22 = *(a1 + 48);
  if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 10)
  {
    v23 = "UNKNOWN_RADIO ";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 1)
  {
    v23 = "LTE Radio";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 2)
  {
    v23 = "UMTS_RADIO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 3)
  {
    v23 = "CDMA1X_RADIO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 4)
  {
    v23 = "CDMAEVDO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 5)
  {
    v23 = "CDMAHybrid";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 6)
  {
    v23 = "eHRPD_RADIO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 7)
  {
    v23 = "TDSCDMA_RADIO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 8)
  {
    v23 = "GSM_RADIO";
  }

  else
  {
    v24 = [objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")];
    v23 = "UNKNOWN_RADIO!!!";
    if (v24 == 9)
    {
      v23 = "N_RADIO";
    }
  }

  v25 = v2 - 12;
  if (v2 < 0xC && ((0xFF7u >> v2) & 1) != 0)
  {
    v26 = (&off_10023E368)[v2];
  }

  else if (v25 >= 7)
  {
    v26 = "Unknown kCTDataIndicatorStatusUnknown!!!";
    if (v2 == 19)
    {
      v26 = "5G_CA";
    }
  }

  else
  {
    v26 = (&off_10023E3C8)[v25];
  }

  [WCM_Logging logLevel:22 message:@"%s: SIM %d servCellRadioTechnologyType %s Data Attached %d Data enabled %d, data indicator: %s", "[WRM_EnhancedCTService processDataStatus::]_block_invoke", v22, v23, v3, v15 & 1, v26];
  v27 = *(a1 + 40);

  return [v27 evaluateCbrsInDualSimMode:0];
}

id sub_1000371A4(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyGSM"])
  {
    goto LABEL_2;
  }

  if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyTDSCDMA"])
  {
    v2 = 7;
  }

  else
  {
    if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyGSMCompact"])
    {
LABEL_2:
      v2 = 8;
      goto LABEL_5;
    }

    if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyUTRAN"])
    {
      v2 = 2;
    }

    else if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyCDMA1x"])
    {
      v2 = 3;
    }

    else if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyCDMAEVDO"])
    {
      v2 = 4;
    }

    else if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyCDMAHybrid"])
    {
      v2 = 5;
    }

    else if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyeHRPD"])
    {
      v2 = 6;
    }

    else if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyLTE"])
    {
      v2 = 1;
    }

    else if ([*(a1 + 32) isEqualToString:@"kCTRegistrationRadioAccessTechnologyNR"])
    {
      v2 = 9;
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"Unknown registered technology"];
      v2 = 10;
    }
  }

LABEL_5:
  [objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")];
  if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 10)
  {
    v3 = "UNKNOWN_RADIO ";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 1)
  {
    v3 = "LTE Radio";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 2)
  {
    v3 = "UMTS_RADIO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 3)
  {
    v3 = "CDMA1X_RADIO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 4)
  {
    v3 = "CDMAEVDO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 5)
  {
    v3 = "CDMAHybrid";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 6)
  {
    v3 = "eHRPD_RADIO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 7)
  {
    v3 = "TDSCDMA_RADIO";
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")] == 8)
  {
    v3 = "GSM_RADIO";
  }

  else
  {
    v4 = [objc_msgSend(objc_msgSend(*(a1 + 40) "servCellRadioTechnologyType")];
    v3 = "UNKNOWN_RADIO!!!";
    if (v4 == 9)
    {
      v3 = "N_RADIO";
    }
  }

  return [WCM_Logging logLevel:22 message:@"%s: servCellRadioTechnologyType %s", "[WRM_EnhancedCTService processRadioTechnologyInfo::]_block_invoke", v3];
}

id sub_1000375AC(uint64_t a1)
{
  if ([objc_msgSend(*(a1 + 32) "bars")])
  {
    [objc_msgSend(*(a1 + 40) "bars")];
    return +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: update  bars %d", "-[WRM_EnhancedCTService processSignalStrengthInfo::]_block_invoke", [objc_msgSend(objc_msgSend(*(a1 + 40) "bars")]);
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"set signal bar 5"];
    v3 = [*(a1 + 40) bars];
    v4 = *(a1 + 48) - 1;
    v5 = [NSNumber numberWithInt:5];

    return [v3 replaceObjectAtIndex:v4 withObject:v5];
  }
}

_BYTE *sub_100037744(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "subscriptions")];
  [*(a1 + 32) setNumberofSubscriptions:0];
  *(*(a1 + 32) + 484) = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 40) subscriptions];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([v7 slotID] && objc_msgSend(v7, "isSimPresent"))
        {
          if ([v7 slotID] == 1)
          {
            v8 = 1;
            goto LABEL_12;
          }

          if ([v7 slotID] == 2)
          {
            v8 = 2;
LABEL_12:
            *(*(a1 + 32) + 484) |= v8;
          }

          [objc_msgSend(*(a1 + 32) "subscriptions")];
          if ([v7 slotID])
          {
            v9 = "CTSubscriptionSlotOne";
            if ([v7 slotID] != 1)
            {
              if ([v7 slotID] == 2)
              {
                v9 = "CTSubscriptionSlotTwo";
              }

              else
              {
                v9 = "Unknown CTSubscriptionSlot!!!";
              }
            }
          }

          else
          {
            v9 = "CTSubscriptionSlotUnknown";
          }

          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s slotID %s current subscriptions %@", "-[WRM_EnhancedCTService processSubscriptionInfo::]_block_invoke", v9, [*(a1 + 32) subscriptions]);
          [*(a1 + 32) setNumberofSubscriptions:{objc_msgSend(*(a1 + 32), "numberofSubscriptions") + 1}];
          continue;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s total numberofSubscriptions=%lu", "-[WRM_EnhancedCTService processSubscriptionInfo::]_block_invoke", [*(a1 + 32) numberofSubscriptions]);
  [*(a1 + 32) setMSubscriptionInfoDidChange:1];
  if ([*(a1 + 32) numberofSubscriptions])
  {
    [*(a1 + 32) getCurrentEnhancedCTMetrics];
    [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  }

  result = *(a1 + 32);
  if (result[476] == 1)
  {
    v11 = [result numberofSubscriptions];
    v12 = *(a1 + 32);
    if (v11 == 1)
    {
      return [v12 evaluateCbrsInSingleSimMode];
    }

    else
    {
      result = [v12 numberofSubscriptions];
      if (result >= 2)
      {
        return [*(a1 + 32) evaluateCbrsInDualSimMode:1];
      }
    }
  }

  return result;
}

id sub_100037B40(uint64_t a1)
{
  if ([*(a1 + 32) CTClientInitDone])
  {

    return [WCM_Logging logLevel:22 message:@"enhancedCTService: Already initialized, returning"];
  }

  else
  {
    [*(a1 + 32) setCTClient:{objc_msgSend([CoreTelephonyClient alloc], "initWithQueue:", objc_msgSend(*(a1 + 32), "serverQueue"))}];
    [objc_msgSend(*(a1 + 32) "CTClient")];
    [*(a1 + 32) setMCTService:{+[WRM_CTService WRM_CTServiceControllerSingleton](WRM_CTService, "WRM_CTServiceControllerSingleton")}];
    v3 = [*(a1 + 32) CTClient];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100037CE8;
    v6[3] = &unk_10023E030;
    v6[4] = *(a1 + 32);
    [v3 getSubscriptionInfo:v6];
    v5 = 0;
    v4 = [objc_msgSend(*(a1 + 32) "CTClient")];
    if (v5 || !v4)
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"getCurrentDataSubscriptionContextSync error %@", [v5 localizedDescription]);
    }

    else
    {
      [*(a1 + 32) setDataPreferredSlot:{objc_msgSend(v4, "slotID")}];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"getCurrentDataSubscriptionContextSync dataPreferredSlot=%lu", [*(a1 + 32) dataPreferredSlot]);
    }

    return [*(a1 + 32) setCTClientInitDone:1];
  }
}

id sub_100037CE8(uint64_t a1, void *a2, void *a3)
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"getSubscriptionInfo Subscription info %@ count %lu error %@", a2, [objc_msgSend(a2 "subscriptions")], objc_msgSend(a3, "localizedDescription"));
  v6 = *(a1 + 32);

  return [v6 processSubscriptionInfo:a2 :a3];
}

void sub_100037E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100037F20(uint64_t a1)
{
  [WCM_Logging logLevel:22 message:@"dataConnectionStatusInfo %@", *(a1 + 32)];
  result = *(a1 + 32);
  if (result)
  {
    result = [result interfaceName];
    if (result)
    {
      v3 = *(*(a1 + 40) + 436);
      if (v3)
      {
      }

      *(*(a1 + 40) + 436) = [[NSString alloc] initWithString:{objc_msgSend(*(a1 + 32), "interfaceName")}];
      return [WCM_Logging logLevel:22 message:@"mInternetInterfaceName = %@", *(*(a1 + 40) + 436)];
    }
  }

  return result;
}

id sub_100038088(uint64_t a1, void *a2, void *a3)
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"getSubscriptionInfo Subscription info %@ count %lu error %@", a2, [objc_msgSend(a2 "subscriptions")], objc_msgSend(a3, "localizedDescription"));
  v6 = *(a1 + 32);

  return [v6 processSubscriptionInfo:a2 :a3];
}

id sub_1000382B0(uint64_t a1, uint64_t a2, void *a3)
{
  result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"copyRegistrationStatus:  Registration status %@ error %@", a2, [a3 localizedDescription]);
  if (a2 && !a3)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) slotID];

    return [v7 processRegistrationStatus:a2 :v8];
  }

  return result;
}

uint64_t sub_100038520(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = off_1002B7D60;
  v8 = off_1002B7D60;
  if (!off_1002B7D60)
  {
    v3 = sub_1000415E0();
    v6[3] = dlsym(v3, "BMDeviceCellularAvailabilityStatusStateAsString");
    off_1002B7D60 = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    sub_10015EFC8();
  }

  return v2(a1);
}

void sub_10003860C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100038F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100038FB4()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_100037E68;
  v0 = qword_1002B7D78;
  v7 = sub_100037E78;
  v8 = qword_1002B7D78;
  if (!qword_1002B7D78)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10004179C;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_10004179C(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100039088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100039130(id *a1)
{
  v2 = [objc_msgSend(a1[4] "instance")];
  v3 = v2 - 1;
  [objc_msgSend(a1[5] "mcc")];
  [objc_msgSend(a1[5] "mnc")];
  return +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: plmnChanged mcc=%s, mnc=%s, slot=%d", "-[WRM_EnhancedCTService plmnChanged:plmn:]_block_invoke", [objc_msgSend(a1[6] "mcc")], objc_msgSend(objc_msgSend(a1[6], "mnc"), "UTF8String"), v2);
}

id sub_1000392B8(uint64_t a1)
{
  [WCM_Logging logLevel:22 message:@"sendInitialVoiceLqmNotification"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) subscriptions];
  result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) slotID];
        if (v7)
        {
          v8 = v7;
          v9 = [objc_msgSend(objc_msgSend(*(a1 + 32) "VoiceLqmValue")];
          if (v9 == -1)
          {
            [WCM_Logging logLevel:22 message:@"sendInitialVoiceLqmNotification: no last known LQM"];
          }

          else
          {
            [WCM_Logging logLevel:22 message:@"sendInitialVoiceLqmNotification: last known voice LQM=%d, simSlot=%ld", v9, v8];
            [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_100039BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

char *sub_100039BD8(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = result;
    [WCM_Logging logLevel:22 message:@"CBRS ping-pong timer expired"];
    v3 = *(v2 + 460);
    if (v3)
    {
      [v3 invalidate];

      *(v2 + 460) = 0;
    }

    return [v2 evaluateCbrsInDualSimMode:0];
  }

  return result;
}

_BYTE *sub_100039CE4(uint64_t a1)
{
  *(*(a1 + 32) + 480) = *(a1 + 40);
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"anyCallStateChange: mWrmCbrsMonitorRequired=%d, numberofSubscriptions=%lu, anyCallState=%d", *(*(a1 + 32) + 476), [*(a1 + 32) numberofSubscriptions], *(*(a1 + 32) + 480));
  result = *(a1 + 32);
  if (result[476] == 1)
  {
    v3 = [result numberofSubscriptions];
    v4 = *(a1 + 32);
    if (v3 == 1)
    {

      return [v4 evaluateCbrsInSingleSimMode];
    }

    else
    {
      result = [v4 numberofSubscriptions];
      if (result >= 2)
      {
        v5 = *(a1 + 32);

        return [v5 evaluateCbrsInDualSimMode:1];
      }
    }
  }

  return result;
}

void *sub_100039E7C(void *result)
{
  if (*(result[4] + 476) != 1)
  {
    return result;
  }

  v1 = result;
  result = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if (!result)
  {
    return result;
  }

  if ([v1[4] numberofSubscriptions] != 2)
  {
    return +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"evaluateCbrsInDualSimMode error: not in dual sim mode : numberofSubscriptions=%lu", [v1[4] numberofSubscriptions]);
  }

  if ([objc_msgSend(objc_msgSend(v1[4] "isPrivateNetworkSim")])
  {
    v2 = 2;
    v3 = 1;
  }

  else
  {
    v2 = 1;
    if (([objc_msgSend(objc_msgSend(v1[4] "isPrivateNetworkSim")] & 1) == 0)
    {
      v11 = @"evaluateCbrsInDualSimMode error: CBRS/PNW sim not present in dual sim mode";
      goto LABEL_69;
    }

    v3 = 2;
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"evaluateCbrsInDualSimMode forceRecommendation=%u, (priNwSlot=%d, nonpriNwSlot=%d), currentDataSlot=%d", *(v1 + 40), v3, v2, [v1[4] dataPreferredSlot]);
  v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if (!v4)
  {
    v11 = @"evaluateCbrsInDualSimMode Error: invalid tempiRATConfig";
    goto LABEL_69;
  }

  v5 = v4;
  v37 = [objc_msgSend(objc_msgSend(v1[4] "mcc")];
  v36 = [objc_msgSend(objc_msgSend(v1[4] "mnc")];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s: self.mcc = %@, self.mnc=%@", "-[WRM_EnhancedCTService evaluateCbrsInDualSimMode:]_block_invoke", [v1[4] mcc], objc_msgSend(v1[4], "mnc"));
  v6 = [objc_msgSend(objc_msgSend(v1[4] "servCellRadioTechnologyType")];
  if (v6 == 9)
  {
    [objc_msgSend(objc_msgSend(v1[4] "nrCellRSRP")];
    v8 = v12;
    v10 = [v1[4] nrCellRSRQ];
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    if (v6 != 1)
    {
      goto LABEL_18;
    }

    [objc_msgSend(objc_msgSend(v1[4] "servCellRSRP")];
    v8 = v9;
    v10 = [v1[4] servCellRSRQ];
  }

  [objc_msgSend(v10 objectAtIndex:{v3 - 1), "doubleValue"}];
  v7 = v13;
LABEL_18:
  v14 = [objc_msgSend(objc_msgSend(v1[4] "servCellRadioTechnologyType")];
  if (v14 == 9)
  {
    [objc_msgSend(objc_msgSend(v1[4] "nrCellRSRP")];
    v16 = v19;
    v18 = [v1[4] nrCellRSRQ];
  }

  else
  {
    v15 = 0.0;
    v16 = 0.0;
    if (v14 != 1)
    {
      goto LABEL_23;
    }

    [objc_msgSend(objc_msgSend(v1[4] "servCellRSRP")];
    v16 = v17;
    v18 = [v1[4] servCellRSRQ];
  }

  [objc_msgSend(v18 objectAtIndex:{v2 - 1), "doubleValue"}];
  v15 = v20;
LABEL_23:
  v34 = v2;
  v21 = [objc_msgSend(objc_msgSend(v1[4] "isDataAttached")];
  v33 = [objc_msgSend(objc_msgSend(v1[4] "isDataEnabled")];
  v35 = v21;
  [WCM_Logging logLevel:22 message:@"%s privNwRSRP=%f, privNwRSRQ=%f, nonPrivNwRSRP=%f, nonPrivNwRSRQ=%f, isCbrsDataAttached=%d, isCbrsDataEnabled=%d", "[WRM_EnhancedCTService evaluateCbrsInDualSimMode:]_block_invoke", *&v8, *&v7, *&v16, *&v15, v21, v33];
  v22 = [v1[4] getBandInfoOnSlot:v3];
  v23 = [v5 cbrsEnterRsrqMin];
  v24 = [v5 cbrsEnterRsrpMin];
  v25 = [v5 cbrsExitRsrqMin];
  v26 = [v5 cbrsExitRsrpMin];
  if ([objc_msgSend(objc_msgSend(v1[4] "servCellRadioTechnologyType")] == 9 && v22 == 71)
  {
    v27 = v2 - 1;
    v24 = v24 + [v5 cbrsEnterRsrpOffset];
    v23 = v23 + [v5 cbrsEnterRsrqOffset];
    v26 = v26 + [v5 cbrsExitRsrpOffset];
    v25 = v25 + [v5 cbrsExitRsrqOffset];
    [WCM_Logging logLevel:22 message:@"Band 71, applied offset enterRsrp:%f enterRsrq:%f exitRsrp:%f, exitRsrq:%f", *&v24, *&v23, *&v26, *&v25];
  }

  else
  {
    v27 = v2 - 1;
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"%s cbrsEnterRsrpMin=%f, cbrsEnterRsrqMin=%f, nonCbrsExitRsrpMin=%lld, nonCbrsExitRsrqMin=%lld, cbrsExitRsrpMin=%f, cbrsExitRsrqMin=%f, nonCbrsEnterRsrpMin=%lld,nonCbrsEnterRsrqMin=%lld", "-[WRM_EnhancedCTService evaluateCbrsInDualSimMode:]_block_invoke", *&v24, *&v23, [v5 nonCbrsExitRsrpMin], objc_msgSend(v5, "nonCbrsExitRsrqMin"), *&v26, *&v25, objc_msgSend(v5, "nonCbrsEnterRsrpMin"), objc_msgSend(v5, "nonCbrsEnterRsrqMin"));
  if (v7 != 0.0 && v7 > v23 && v8 != 0.0 && v8 > v24 && v3 != [v1[4] dataPreferredSlot])
  {
    [WCM_Logging logLevel:22 message:@"evaluateCbrsInDualSimMode privateNw slot signal becomes good"];
    if (([objc_msgSend(objc_msgSend(v1[4] "isRoaming")] & 1) == 0 && ((v35 ^ 1) & 1) == 0 && ((v33 ^ 1) & 1) == 0)
    {
      v28 = v16 > [v5 nonCbrsExitRsrpMin] && v15 > objc_msgSend(v5, "nonCbrsExitRsrqMin");
      [WCM_Logging logLevel:22 message:@"evaluateCbrsInDualSimMode Recommend data on privateNwSlot %d, dataSlotQuality %llu, anyCallState %d", v3, v28, *(v1[4] + 480)];
      result = [v1[4] switchPrivateNwDataSim:v3 currentSlotQuality:v28 anyCallState:*(v1[4] + 480) forceRecommend:*(v1 + 40)];
      *(v1[4] + 468) = v3;
      return result;
    }

    [WCM_Logging logLevel:22 message:@"evaluateCbrsInDualSimMode PrivateNw SIM %d not attached yet", v3];
  }

  if (v37 && v36)
  {
    v29 = v7 > v25 ? v35 : 0;
    if ((v29 != 1 || v8 <= v26) && v15 != 0.0 && v15 >= [v5 nonCbrsEnterRsrqMin] && v16 != 0.0 && v16 >= objc_msgSend(v5, "nonCbrsEnterRsrpMin") && v34 != objc_msgSend(v1[4], "dataPreferredSlot"))
    {
      [WCM_Logging logLevel:22 message:@"evaluateCbrsInDualSimMode PrivateNw degrades while nonPrivateNw signal is good"];
      v30 = [objc_msgSend(objc_msgSend(v1[4] "isDataAttached")];
      v31 = [objc_msgSend(objc_msgSend(v1[4] "isDataEnabled")];
      if (v30 && v31)
      {
        [WCM_Logging logLevel:22 message:@"evaluateCbrsInDualSimMode Recommend data on nonPrivateNw SIM %d anyCallState %d", v34, *(v1[4] + 480)];
        result = [v1[4] switchPrivateNwDataSim:v34 currentSlotQuality:0 anyCallState:*(v1[4] + 480) forceRecommend:*(v1 + 40)];
        *(v1[4] + 468) = v34;
        return result;
      }

      [WCM_Logging logLevel:22 message:@"evaluateCbrsInDualSimMode nonPrivateNw SIM %d not attached yet", v34];
    }
  }

  if (*(v1 + 40) == 1)
  {
    if ([v1[4] dataPreferredSlot] == v3)
    {
      v32 = v8 > v26 && v7 > v25;
    }

    else
    {
      v32 = [v1[4] dataPreferredSlot] != v34 || v16 > objc_msgSend(v5, "nonCbrsExitRsrpMin") && v15 > objc_msgSend(v5, "nonCbrsExitRsrqMin");
    }

    [WCM_Logging logLevel:22 message:@"evaluateCbrsInDualSimMode Force Recommend dataSlotQuality=%d, anyCallState=%d", v32, *(v1[4] + 480)];
    [v1[4] switchPrivateNwDataSim:0 currentSlotQuality:v32 anyCallState:*(v1[4] + 480) forceRecommend:1];
  }

  v11 = @"evaluateCbrsInDualSimMode done";
LABEL_69:

  return [WCM_Logging logLevel:22 message:v11];
}

_DWORD *sub_10003B374(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "nrCellRSRP")];
  [WCM_Logging logLevel:22 message:@"%s: slot %d NrRSRP %f", "[WRM_EnhancedCTService setNrRSRP:forSim:]_block_invoke", *(a1 + 40), *(a1 + 48)];
  result = *(a1 + 32);
  if (result[95] == 2)
  {
    v3 = *(a1 + 48);

    return [result monitorStrongSOSSignal:v3];
  }

  return result;
}

void sub_10003B98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003B9A4(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "nrCellRSRP")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) dataPreferredSlot])
  {
    if ([*(a1 + 32) dataPreferredSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) dataPreferredSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active data slot %s RSRP %f", "[WRM_EnhancedCTService getNrRSRP]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_10003BB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003BB64(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "nrCellRSRP")];
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = "CTSubscriptionSlotTwo";
  if (v2 != 2)
  {
    v4 = "Unknown CTSubscriptionSlot!!!";
  }

  if (v2 == 1)
  {
    v4 = "CTSubscriptionSlotOne";
  }

  if (!v2)
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: sim slot %s NrRSRP %f", "[WRM_EnhancedCTService getNrRSRP:]_block_invoke", v4, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_10003BCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003BCE8(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "nrCellSNR")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) dataPreferredSlot])
  {
    if ([*(a1 + 32) dataPreferredSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) dataPreferredSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s SNR %f", "[WRM_EnhancedCTService getNrSNR]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_10003BE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003BEA8(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "nrCellSNR")];
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = "CTSubscriptionSlotTwo";
  if (v2 != 2)
  {
    v4 = "Unknown CTSubscriptionSlot!!!";
  }

  if (v2 == 1)
  {
    v4 = "CTSubscriptionSlotOne";
  }

  if (!v2)
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: sim slot %s SNR %f", "[WRM_EnhancedCTService getNrSNR:]_block_invoke", v4, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_10003C014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003C02C(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "nrCellRSRQ")];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  if ([*(a1 + 32) dataPreferredSlot])
  {
    if ([*(a1 + 32) dataPreferredSlot] == 1)
    {
      v3 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = [*(a1 + 32) dataPreferredSlot];
      v3 = "Unknown CTSubscriptionSlot!!!";
      if (v4 == 2)
      {
        v3 = "CTSubscriptionSlotTwo";
      }
    }
  }

  else
  {
    v3 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: active slot %s RSRQ %f", "[WRM_EnhancedCTService getNrRSRQ]_block_invoke", v3, *(*(*(a1 + 40) + 8) + 24)];
}

void sub_10003C1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003C1EC(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "nrCellRSRQ")];
  v2 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = "CTSubscriptionSlotTwo";
  if (v2 != 2)
  {
    v4 = "Unknown CTSubscriptionSlot!!!";
  }

  if (v2 == 1)
  {
    v4 = "CTSubscriptionSlotOne";
  }

  if (!v2)
  {
    v4 = "CTSubscriptionSlotUnknown";
  }

  return [WCM_Logging logLevel:22 message:@"%s: sim slot %s RSRQ %f", "[WRM_EnhancedCTService getNrRSRQ:]_block_invoke", v4, *(*(*(a1 + 40) + 8) + 24)];
}

unint64_t sub_10003C83C(unint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    v3 = "Unknown CTSubscriptionSlot!!!";
    if (v1 == 2)
    {
      v3 = "CTSubscriptionSlotTwo";
    }

    if (v1 == 1)
    {
      v4 = "CTSubscriptionSlotOne";
    }

    else
    {
      v4 = v3;
    }

    [WCM_Logging logLevel:22 message:@"%s: slot %s stall detected %d", "[WRM_EnhancedCTService updateDataStallState:stall:]_block_invoke", v4, *(result + 48)];
    [objc_msgSend(*(v2 + 32) "stallDetected")];
    result = *(v2 + 32);
    if (*(result + 476) == 1 && *(v2 + 48) == 1)
    {
      result = [objc_msgSend(objc_msgSend(result "cbrsCoreAnalyticsMetricsSent")];
      if ((result & 1) == 0)
      {
        result = *(v2 + 32);
        if (*(v2 + 40) == *(result + 468))
        {
          result = [result numberofSubscriptions];
          if (result >= 2)
          {
            [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
            v5 = [*(v2 + 32) cbrsCoreAnalyticsMetricsSent];
            v6 = *(v2 + 40) - 1;

            return [v5 replaceObjectAtIndex:v6 withObject:&__kCFBooleanTrue];
          }
        }
      }
    }
  }

  return result;
}

id sub_10003CA40(uint64_t a1)
{
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = *(a1 + 40);
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 != 1)
  {
    v3 = v5;
  }

  if (v4)
  {
    v2 = v3;
  }

  [WCM_Logging logLevel:22 message:@"%s: slot %s Current RAT %d", "[WRM_EnhancedCTService updateCurrentRatInfo:currentNRCell:]_block_invoke", v2, *(a1 + 48)];
  v6 = [*(a1 + 32) currentNRCellType];
  v7 = *(a1 + 40) - 1;
  v8 = [NSNumber numberWithInt:*(a1 + 48)];

  return [v6 replaceObjectAtIndex:v7 withObject:v8];
}

id sub_10003CBA8(uint64_t a1)
{
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = *(a1 + 40);
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 != 1)
  {
    v3 = v5;
  }

  if (v4)
  {
    v2 = v3;
  }

  [WCM_Logging logLevel:22 message:@"%s: slot %s DL Configued BW %d", "[WRM_EnhancedCTService updateLTEBandwidth:LTEBW:]_block_invoke", v2, *(a1 + 48)];
  v6 = [*(a1 + 32) cellBandwidth];
  v7 = *(a1 + 40) - 1;
  v8 = [NSNumber numberWithInt:*(a1 + 48)];

  return [v6 replaceObjectAtIndex:v7 withObject:v8];
}

id sub_10003CD14(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = "CTSubscriptionSlotOne";
  v4 = "Unknown CTSubscriptionSlot!!!";
  if (v2 == 2)
  {
    v4 = "CTSubscriptionSlotTwo";
  }

  if (v2 != 1)
  {
    v3 = v4;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: slot %s DL Configued BW %d, UL configued BW:%d", "[WRM_EnhancedCTService updateConfiguredMaxBW:dlbw:ulbw:]_block_invoke", v5, *(a1 + 48), *(a1 + 52)];
  [objc_msgSend(*(a1 + 32) "configuredMaxDLBW")];
  v6 = [*(a1 + 32) configuredMaxULBW];
  v7 = *(a1 + 40) - 1;
  v8 = [NSNumber numberWithInt:*(a1 + 52)];

  return [v6 replaceObjectAtIndex:v7 withObject:v8];
}

id sub_10003CEB4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = "CTSubscriptionSlotOne";
  v4 = "Unknown CTSubscriptionSlot!!!";
  if (v2 == 2)
  {
    v4 = "CTSubscriptionSlotTwo";
  }

  if (v2 != 1)
  {
    v3 = v4;
  }

  if (*(a1 + 48))
  {
    v5 = v3;
  }

  else
  {
    v5 = "CTSubscriptionSlotUnknown";
  }

  [WCM_Logging logLevel:22 message:@"%s: slot %s DL BW %d, Conf:%d", "[WRM_EnhancedCTService updateDownlinkEstimatedBW:bw:conf:lte:nr:]_block_invoke", v5, *(a1 + 40), *(a1 + 44)];
  [objc_msgSend(*(a1 + 32) "estimatedBWDL")];
  v6 = [*(a1 + 32) estimatedBWDLConf];
  v7 = *(a1 + 48) - 1;
  v8 = [NSNumber numberWithInt:*(a1 + 44)];

  return [v6 replaceObjectAtIndex:v7 withObject:v8];
}

id sub_10003D064(uint64_t a1)
{
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = "Unknown CTSubscriptionSlot!!!";
  v5 = *(a1 + 52);
  if (v5 == 2)
  {
    v4 = "CTSubscriptionSlotTwo";
  }

  if (v5 != 1)
  {
    v3 = v4;
  }

  if (*(a1 + 52))
  {
    v2 = v3;
  }

  [WCM_Logging logLevel:22 message:@"%s: slot %s, UL BW %d, Conf:%d, Queue:%d", "[WRM_EnhancedCTService updateUplinkEstimatedBW:bw:conf:queue:]_block_invoke", v2, *(a1 + 40), *(a1 + 44), *(a1 + 48)];
  [objc_msgSend(*(a1 + 32) "estimatedBWUL")];
  v6 = [*(a1 + 32) estimatedBWULConf];
  v7 = *(a1 + 52) - 1;
  v8 = [NSNumber numberWithInt:*(a1 + 44)];

  return [v6 replaceObjectAtIndex:v7 withObject:v8];
}

id sub_10003D204(uint64_t a1)
{
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = *(a1 + 40);
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 != 1)
  {
    v3 = v5;
  }

  if (v4)
  {
    v2 = v3;
  }

  [WCM_Logging logLevel:22 message:@"%s: slot %s, High rate indictor:%d", "[WRM_EnhancedCTService updateHighRateLikely:highrateIndicator:]_block_invoke", v2, *(a1 + 48)];
  v6 = [*(a1 + 32) highDataRateObserved];
  v7 = *(a1 + 40) - 1;
  v8 = [NSNumber numberWithBool:*(a1 + 48)];

  return [v6 replaceObjectAtIndex:v7 withObject:v8];
}

id sub_10003D36C(uint64_t a1)
{
  v2 = "CTSubscriptionSlotUnknown";
  v3 = "CTSubscriptionSlotOne";
  v4 = *(a1 + 40);
  v5 = "Unknown CTSubscriptionSlot!!!";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 != 1)
  {
    v3 = v5;
  }

  if (v4)
  {
    v2 = v3;
  }

  [WCM_Logging logLevel:22 message:@"%s: slot %s, NeighberNRCell %d", "[WRM_EnhancedCTService updateConnectedStateSummary:neighberNRCell:highrateIndicator:]_block_invoke", v2, *(a1 + 48)];
  v6 = [*(a1 + 32) neighberCellType];
  v7 = *(a1 + 40) - 1;
  v8 = [NSNumber numberWithInt:*(a1 + 48)];

  return [v6 replaceObjectAtIndex:v7 withObject:v8];
}

void sub_10003D5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003EDBC(uint64_t a1, char a2)
{
  v3 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EE3C;
  block[3] = &unk_10023DCA0;
  v5 = a2;
  dispatch_async(v3, block);
}

id sub_10003EE3C(uint64_t a1)
{
  result = [WCM_Logging logLevel:22 message:@"LocationController: ClientLocationAuthorized callback authorized: %d", *(a1 + 32)];
  byte_1002B7458 = *(a1 + 32);
  return result;
}

void sub_10003EE90(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = [*(a1 + 32) queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003EF38;
  v12[3] = &unk_10023E1C8;
  *&v12[5] = a2;
  *&v12[6] = a3;
  *&v12[7] = a7;
  v12[4] = *(a1 + 32);
  dispatch_async(v11, v12);
}

id sub_10003EF38(uint64_t a1)
{
  [WCM_Logging logLevel:22 message:@"LocationController: ClientLocationHandler callback, latitude=%f, longitude=%f, speed=%f", *(a1 + 40), *(a1 + 48), *(a1 + 56)];
  *(*(a1 + 32) + 316) = *(a1 + 40);
  *(*(a1 + 32) + 324) = *(a1 + 48);
  [*(a1 + 32) queryLocationdDBForHarvestingData:*(a1 + 40) :?];
  v2 = *(*(a1 + 32) + 308);

  return [v2 stopMonitoring];
}

void sub_10003F134(uint64_t a1, char a2)
{
  v3 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F1B4;
  block[3] = &unk_10023DCA0;
  v5 = a2;
  dispatch_async(v3, block);
}

char *sub_10003F284(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "locDbRequired")];
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "locDbRequired")];
  result = *(a1 + 32);
  if (v2)
  {
    if (!*(result + 356))
    {
      goto LABEL_8;
    }

LABEL_6:
    if ((result[364] & 1) == 0)
    {
      result[364] = 1;
      return [WCM_Logging logLevel:22 message:@"updateWrmSdmLocationDbInfoRegister for sub %d start location monitoring", *(a1 + 40)];
    }

    return result;
  }

  v4 = [objc_msgSend(objc_msgSend(result "locDbRequired")];
  result = *(a1 + 32);
  if (!*(result + 356))
  {
LABEL_8:

    return [WCM_Logging logLevel:22 message:@"updateWrmSdmLocationDbInfoRegister Failed: locationController not initialized"];
  }

  if (v4)
  {
    goto LABEL_6;
  }

  if (result[364] == 1)
  {
    result[364] = 0;
    return [WCM_Logging logLevel:22 message:@"updateWrmSdmLocationDbInfoRegister for sub %d stop location monitoring", *(a1 + 40)];
  }

  return result;
}

id sub_10003F490(uint64_t a1)
{
  v2 = [[NSDate alloc] initWithTimeIntervalSince1970:*(*(a1 + 32) + 348)];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(v5 + 332);
  v7 = *(v5 + 340);
  v8 = *(a1 + 56);
  v9 = *(a1 + 60);
  [v2 timeIntervalSinceNow];
  [WCM_Logging logLevel:22 message:@"fetchWrmSdmLocationDbInfoWithMcc from BB: mcc=%u, mnc=%u, cellId=%llu, simSlot=%d, lastKnown latitude=%f, longitude=%f location obtained from %fsec before", v8, v9, v4, v3, v6, v7, -v10];

  result = [*(a1 + 32) fetchSmartDataModeDataForLocation:*(a1 + 56) :*(a1 + 60) :*(a1 + 40) :*(a1 + 48) :*(*(a1 + 32) + 332) :*(*(a1 + 32) + 340)];
  v12 = *(a1 + 32);
  if (*(v12 + 356))
  {
    if ((*(v12 + 364) & 1) == 0)
    {
      *(v12 + 364) = 1;
      return [WCM_Logging logLevel:22 message:@"fetchSmartDataModeDataForLocation for sub %d start location monitoring", *(a1 + 48)];
    }
  }

  return result;
}

id sub_10003F5C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = @"triggerHarvestedCellEval, CellStationManager: FR2 cell found: 1";
  }

  else
  {
    v4 = @"triggerHarvestedCellEval, CellStationManager: FR2 cell found: 0";
  }

  [WCM_Logging logLevel:22 message:v4];
  v5 = [*(a1 + 32) currentHarvestedCellTypeFR2Capable];
  v6 = [*(a1 + 32) dataPreferredSlot] - 1;
  v7 = [NSNumber numberWithInt:a2];

  return [v5 replaceObjectAtIndex:v6 withObject:v7];
}

id sub_10003F704(uint64_t a1)
{
  if (qword_1002B7B40)
  {

    qword_1002B7B40 = 0;
  }

  dword_1002B7B50 = *(a1 + 48);
  qword_1002B7B40 = [*(a1 + 32) copy];
  qword_1002B7B48 = [qword_1002B7B40 substringToIndex:*(a1 + 48)];
  if ([objc_msgSend(+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    [WCM_Logging logLevel:22 message:@"triggerHarvestedCellEval, cell changed"];
    [*(a1 + 40) triggerHarvestedCellEval];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"resetting updateGlobalCellID"];
    [objc_msgSend(*(a1 + 40) "detectedFR1CellCountLocDB")];
    [objc_msgSend(*(a1 + 40) "detectedFR2CellCountLocDB")];
  }

  return [WCM_Logging logLevel:22 message:@"Global Cell ID: %@", qword_1002B7B40];
}

uint64_t sub_10003F928()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_100037E68;
  v0 = qword_1002B7DA0;
  v7 = sub_100037E78;
  v8 = qword_1002B7DA0;
  if (!qword_1002B7DA0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100041B54;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_100041B54(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10003F9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003FA14(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (![a2 count])
  {
    return +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"queryLocationdDBForHarvestingData: returned empty BLOB, lat:%f, lon:%f, error %@", *(a1 + 40), *(a1 + 48), [a3 description]);
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"queryLocationdDBForHarvestingData: results.count %lu, lat:%f, lon:%f", [v4 count], *(a1 + 40), *(a1 + 48));
  v6 = &xpc_release_ptr;
  [objc_msgSend(*(a1 + 32) "detectedFR1CellCountLocDB")];
  [objc_msgSend(*(a1 + 32) "detectedFR2CellCountLocDB")];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  result = [v4 countByEnumeratingWithState:&v43 objects:v47 count:16];
  v38 = result;
  if (result)
  {
    v40 = 0;
    v41 = 0;
    v36 = v4;
    v37 = *v44;
    v8 = (WRM_StreamingMetrics + 32);
    p_info = WRM_StreamingMetrics.info;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v37)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [[CellPreformanceTile alloc] initWithData:*(*(&v43 + 1) + 8 * v10)];
        if (v11)
        {
          v39 = v10;
          [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: tile %@", v11];
          [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: LTE CELL count: %lu", sub_10015D600(v11)];
          v42 = v11;
          if (sub_10015D600(v11))
          {
            v12 = v11;
            v13 = 0;
            do
            {
              v14 = sub_10015D614(v12, v13);
              [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: LTE CELL: %@", v14];
              if (p_info[360])
              {
                v15 = sub_10015EDE0(v14);
                if ([v15 isEqualToString:p_info[360]])
                {
                  v16 = v6;
                  v17 = sub_10015EE08(v14);
                  v18 = sub_10015EE1C(v14);
                  v19 = sub_10015EE58(v14) / 0xF4240uLL;
                  [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: GCI:%@ FR1 count: %d, FR2: %d, NRBW: %d", v15, v17, v18, v19];
                  v20 = [*(a1 + 32) detectedFR1CellCountLocDB];
                  v21 = [*(a1 + 32) dataPreferredSlot] - 1;
                  v22 = v17;
                  v6 = v16;
                  [v20 replaceObjectAtIndex:v21 withObject:{objc_msgSend(v16[151], "numberWithInt:", v22)}];
                  if (v18)
                  {
                    [objc_msgSend(*(a1 + 32) "detectedFR2CellCountLocDB")];
                  }

                  [objc_msgSend(*(a1 + 32) "detectedFR1CellBW")];
                  v8 = WRM_StreamingMetrics.info;
                  p_info = WRM_StreamingMetrics.info;
                  v12 = v42;
                }

                v23 = [(__objc2_class_ro *)p_info[360] substringToIndex:dword_1002B7B50];
                v8[361] = v23;
                if (v23 && [v15 containsString:v23])
                {
                  v24 = sub_10015EE1C(v14);
                  v40 = sub_10015EE08(v14) + v40;
                  v25 = (v24 + v41);
                  v12 = v42;
                  v41 = v25;
                }
              }

              ++v13;
            }

            while (sub_10015D600(v12) > v13);
          }

          [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: prefix GCI:%@ total FR2: %d, total FR1: %d", v8[361], v41, v40];
          if (v41 > v40)
          {
            [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: updating FR2 count:%d", v41];
            [objc_msgSend(*(a1 + 32) "detectedFR2CellCountLocDB")];
          }

          v26 = v42;
          [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: NR CELL count: %lu", sub_10015D6A8(v42)];
          if (sub_10015D6A8(v42))
          {
            v27 = 0;
            do
            {
              v28 = sub_10015D6BC(v26, v27);
              [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: NR CELL: %@", v28];
              v29 = [(__objc2_class_ro *)p_info[360] substringToIndex:dword_1002B7B50];
              v8[361] = v29;
              if (v29)
              {
                v30 = sub_10015EDE0(v28);
                if ([v30 containsString:v8[361]])
                {
                  v31 = sub_10015EE08(v28);
                  v32 = sub_10015EE1C(v28);
                  [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: NR GCI:%@ FR1 count: %d, FR2: %d, NRBW: %d", v30, v31, v32, sub_10015EEE4(v28)];
                  if ([*(a1 + 32) determineifSABWCriteriaMet])
                  {
                    v33 = *(a1 + 32);
                    v34 = v33[111];
                  }

                  else
                  {
                    v35 = sub_10015EEE4(v28);
                    v33 = *(a1 + 32);
                    v34 = v33[111];
                    if (v35 < v34)
                    {
                      v34 = 10;
                    }
                  }

                  p_info = (WRM_StreamingMetrics + 32);
                  [objc_msgSend(v33 "detectedFR1CellCountLocDB")];
                  [objc_msgSend(*(a1 + 32) "detectedFR1CellBW")];
                  v26 = v42;
                }
              }

              ++v27;
            }

            while (sub_10015D6A8(v26) > v27);
          }

          v4 = v36;
          v10 = v39;
        }

        else
        {
          [WCM_Logging logLevel:22 message:@"queryLocationdDBForHarvestingData: returned BLOB tile nil"];
        }

        v10 = v10 + 1;
      }

      while (v10 != v38);
      result = [v4 countByEnumeratingWithState:&v43 objects:v47 count:16];
      v38 = result;
    }

    while (result);
  }

  return result;
}

void sub_100040120(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "VoiceLqmValue")];
  [objc_msgSend(*(a1 + 32) "VoiceLqmIsValid")];
  [objc_msgSend(*(a1 + 32) "imsVoiceOverPSSupported")];
  [objc_msgSend(*(a1 + 32) "PrevAudioErasurePercent")];
  [objc_msgSend(*(a1 + 32) "servCellRSRP")];
  v2 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];

  dispatch_async(v2, &stru_10023E260);
}

void sub_100040250(id a1)
{
  v1 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  [v1 evaluateHandover];
}

id sub_100040554(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = WRM_IPTelephonyController;
  if ([a2 count])
  {
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"fetchSmartDataModeDataForLocation: results.count %lu, lat:%f, lon:%f", [v4 count], *(a1 + 40), *(a1 + 48));
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v32 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v32)
    {
      return [*(a1 + 32) sendWrmSdmLocationDbInfo:*(a1 + 56) dbAvailable:1 mcc:*(a1 + 72) mnc:*(a1 + 74) cellId:*(a1 + 64)];
    }

    v30 = v4;
    v31 = *v37;
    while (1)
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [[DYNAMICRATSELECTIONDynamicRatSelectionTile alloc] initWithData:*(*(&v36 + 1) + 8 * i)];
        if (v8)
        {
          v9 = v8;
          v33 = i;
          if (sub_10015D28C(v8))
          {
            v10 = 0;
            v34 = v9;
            while (1)
            {
              v11 = sub_10015D2A4(v9, v10);
              [&v6[98] logLevel:22 message:{@"fetchSmartDataModeDataForLocation: tile %@", v11}];
              if (sub_10015DA60(v11) == 1)
              {
                v12 = 0;
                goto LABEL_16;
              }

              if (sub_10015DA60(v11) == 3)
              {
                break;
              }

              if (sub_10015DA60(v11) == 2)
              {
                v12 = 3;
LABEL_16:
                if (sub_10015DBE0(v11) != 2)
                {
                  v13 = *(a1 + 32);
                  v35 = *(a1 + 56);
                  v14 = sub_10015E404(v11);
                  v15 = sub_10015E42C(v11);
                  v16 = v6;
                  v17 = sub_10015E418(v11);
                  v18 = a1;
                  v19 = sub_10015E44C(v11);
                  LODWORD(v29) = sub_10015E460(v11);
                  v20 = v14;
                  v9 = v34;
                  v21 = v17;
                  v6 = v16;
                  v22 = v19;
                  a1 = v18;
                  [v13 setWrmSdmLocationDbPushOneEntryForCellType:v35 cellType:v12 anchorCellBandwidth:v20 mmWavePresent:v15 downlinkThroughput:v21 sampleCount:v22 deploymentCount:v29];
                }

                goto LABEL_19;
              }

              [&v6[98] logLevel:22 message:@"fetchSmartDataModeDataForLocation: returned BLOB rat type not correct"];
LABEL_19:
              if (sub_10015D28C(v9) <= ++v10)
              {
                goto LABEL_20;
              }
            }

            v12 = 4;
            goto LABEL_16;
          }

LABEL_20:

          v4 = v30;
          i = v33;
        }

        else
        {
          [&v6[98] logLevel:22 message:@"fetchSmartDataModeDataForLocation: returned BLOB tile nil"];
        }
      }

      v32 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v32)
      {
        return [*(a1 + 32) sendWrmSdmLocationDbInfo:*(a1 + 56) dbAvailable:1 mcc:*(a1 + 72) mnc:*(a1 + 74) cellId:*(a1 + 64)];
      }
    }
  }

  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 22, @"fetchSmartDataModeDataForLocation: returned empty BLOB, lat:%f, lon:%f, error %@", *(a1 + 40), *(a1 + 48), [a3 description]);
  v24 = *(a1 + 32);
  v25 = *(a1 + 72);
  v26 = *(a1 + 74);
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);

  return [v24 sendWrmSdmLocationDbInfo:v27 dbAvailable:0 mcc:v25 mnc:v26 cellId:v28];
}