void sub_1000D095C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = sub_100006F88(v4);
  v6 = sub_1000078F4(v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = sub_10000A604(v6) != 0;
  }

  else
  {
    v8 = 0;
  }

  *&v9 = CFAbsoluteTimeGetCurrent();
  v10 = *&v9;
  v11 = *(a1 + 6904);
  LODWORD(v9) = *(a1 + 5448);
  v12 = v10 + v9;
  if (a2)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = v11 > v12 && v13;
  if (v8 && v10 > v11)
  {
    context = dispatch_get_context(*(a1 + 6896));
    sub_1000B6814(context);
    v14 = 0;
  }

  if (v11 > v12 || v13)
  {
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_20:
    v18 = *(a1 + 6896);
    v19 = dispatch_time(0, 1000000000 * *(a1 + 5448));
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0);
    LODWORD(v20) = *(a1 + 5448);
    *(a1 + 6904) = v10 + v20;
    if (!v7)
    {
      return;
    }

    goto LABEL_16;
  }

  v16 = *(a1 + 6896);
  v17 = dispatch_time(0, 315360000000000000);
  dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
  *(a1 + 6904) = v10 + 315360000.0;
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!v7)
  {
    return;
  }

LABEL_16:

  CFRelease(v7);
}

uint64_t sub_1000D0AE8(uint64_t a1, int a2)
{
  v4 = sub_100006F88(*(a1 + 64));
  v5 = sub_100007D90(a1, v4, 1);
  if (!v5)
  {
    return 4294963366;
  }

  v6 = v5;
  if (sub_1000A158C(v5) - 1 <= 1 && *(a1 + 5568))
  {
    v7 = sub_10014EDCC(*(a1 + 64));
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v9 = "off";
      if (a2)
      {
        v9 = "on";
      }

      [off_100298C40 WFLog:3 message:{"%s: speech session is %s in CarPlay", "WiFiDeviceManagerSetSpeechSessionState", v9}];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v7 = 4294963366;
  }

  CFRelease(v6);
  return v7;
}

uint64_t sub_1000D0BD8(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*(a2 + 24))
    {
      v5 = "Y";
    }

    else
    {
      v5 = "N";
    }

    [off_100298C40 WFLog:3 message:{"%s: CarPlay session vehicle inform: model %@, manufacturer %@, hardware version %@, isSessionActive %s", "WiFiDeviceManagerSetCarPlaySessionState", *a2, *(a2 + 16), v5}];
  }

  objc_autoreleasePoolPop(v4);
  v7 = *(a2 + 24);
  *(a1 + 8904) = v7;
  if (v7 == 1)
  {
    v8 = *a2;
    *(a1 + 8880) = *a2;
    v9 = *(a2 + 8);
    *(a1 + 8888) = v9;
    v10 = *(a2 + 16);
    *(a1 + 8896) = v10;
    *(a1 + 948) = 1;
    v6.i64[0] = *(a1 + 712);
    v11 = ((*v6.i64 - *(a1 + 704)) * 1000.0);
    LODWORD(v36) = ((*v6.i64 - *(a1 + 704)) * 1000.0);
    v12 = vmovn_s64(vcvtq_u64_f64(vmulq_f64(vsubq_f64(*(a1 + 720), vzip1q_s64(v6, *(a1 + 720))), vdupq_n_s64(0x408F400000000000uLL))));
    HIDWORD(v36) = 43690;
    v37 = @"Unknown";
    v33 = v12;
    *(&v36 + 4) = v12;
    v13 = *(a1 + 736);
    BYTE12(v36) = *(a1 + 736);
    v38 = @"Unknown";
    v39 = @"Unknown";
    if (v8)
    {
      v37 = v8;
      v38 = v9;
      v39 = v10;
    }

    v14 = sub_100006F88(*(a1 + 64));
    v15 = sub_100007D90(a1, v14, 1);
    if (v15)
    {
      v16 = v15;
      v17 = sub_100014000(v15);
      if (v17)
      {
        LOWORD(valuePtr[0]) = -21846;
        CFNumberGetValue(v17, kCFNumberSInt16Type, valuePtr);
        v18 = LOWORD(valuePtr[0]);
        HIWORD(v36) = valuePtr[0];
      }

      else
      {
        v18 = 0;
      }

      CFRelease(v16);
    }

    else
    {
      v18 = 0;
    }

    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v20 = "no";
      if (v13)
      {
        v20 = "yes";
      }

      [off_100298C40 WFLog:3 message:{"%s: timeBasicAssocTaken %u ms, time4WayHSTaken %u ms, timeDhcpTaken %u ms, wasScanCanceled %s, channel %u", "__WiFiDeviceManagerSubmitCarPlayConnectMetrics", v11, v33.u32[0], v33.u32[1], v20, v18}];
    }

    objc_autoreleasePoolPop(v19);
    sub_100147D00();
    v21 = *(a1 + 976);
    if (v21)
    {
      v22 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(a1 + 712)];
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: CarPlay basic assoc date (%@), ", "__WiFiDeviceManagerSendCarConnectionTime", v22}];
      }

      objc_autoreleasePoolPop(v23);
      if (v22)
      {
        v24 = [CARConnectionEvent eventWithName:@"Basic assoc completed" type:2 date:v22 payload:0];
        *&v36 = _NSConcreteStackBlock;
        *(&v36 + 1) = 3221225472;
        v37 = sub_1000F2C10;
        v38 = &unk_100261C70;
        v39 = @"Basic assoc completed";
        [v21 sendConnectionEvent:v24 completion:&v36];
      }

      v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(a1 + 720)];
      if (v25)
      {
        v26 = [CARConnectionEvent eventWithName:@"WPA HS completed" type:2 date:v25 payload:0];
        valuePtr[0] = _NSConcreteStackBlock;
        valuePtr[1] = 3221225472;
        valuePtr[2] = sub_1000F2C9C;
        valuePtr[3] = &unk_100261C70;
        valuePtr[4] = @"WPA HS completed";
        [v21 sendConnectionEvent:v26 completion:valuePtr];
      }

      v27 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(a1 + 728)];
      if (v27)
      {
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000F2D28;
        v34[3] = &unk_100261C70;
        v34[4] = @"DHCP completed";
        [v21 sendConnectionEvent:+[CARConnectionEvent eventWithName:type:date:payload:](CARConnectionEvent completion:{"eventWithName:type:date:payload:", @"DHCP completed", 2, v27, 0), v34}];
      }
    }

    if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
    {
      v28 = *(a1 + 64);
      if (v28)
      {
        if (sub_100061204(v28))
        {
          v29 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: chipset supports LPC", "WiFiDeviceManagerSetCarPlaySessionState"}];
          }

          objc_autoreleasePoolPop(v29);
          v30 = *(a1 + 1096);
          v31 = dispatch_time(0, 600000000000);
          dispatch_source_set_timer(v30, v31, 0x8BB2C97000uLL, 0);
        }
      }
    }

    sub_1000D1094(a1, 0, 1);
  }

  else
  {
    dispatch_source_set_timer(*(a1 + 1096), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  return 0;
}

void sub_1000D1094(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    if ((*(a1 + 948) & 1) == 0 && (*(a1 + 9200) & 1) == 0)
    {
      v4 = *(a1 + 9208);
      v5 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
      sub_10014EDCC(*(a1 + 64));
      *(a1 + 9200) = 1;
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Deactivate power save", "__WiFiDeviceManagerDeferPowerSaveForCarPlayBonjourHS"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else if (*(a1 + 9200) == 1)
  {
    if (a3)
    {
      sub_10014EDCC(*(a1 + 64));
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Reactivate power save", "__WiFiDeviceManagerDeferPowerSaveForCarPlayBonjourHS"}];
      }

      objc_autoreleasePoolPop(v7);
    }

    *(a1 + 9200) = 0;
    v8 = *(a1 + 9208);

    dispatch_source_set_timer(v8, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

uint64_t sub_1000D120C(uint64_t a1, unsigned int *a2)
{
  v4 = sub_100006F88(*(a1 + 64));
  v5 = sub_100007D90(a1, v4, 1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (sub_1000A158C(v5) - 1 > 1 || !*(a1 + 5568))
  {
    goto LABEL_39;
  }

  v7 = 0;
  v8 = *a2;
  v9 = *(a2 + 1);
  if (v8 <= 2)
  {
    v10 = a2[1];
    if (v10 <= 0x1E)
    {
      if (*(a1 + 3408) == 4)
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 * 0.8;
      }

      Current = CFAbsoluteTimeGetCurrent();
      v13 = Current / 0x3C - 30 * ((143165577 * (Current / 0x3C)) >> 32);
      v14 = (Current - *(a1 + 8736));
      if (v14 >= 0x3C)
      {
        v15 = v14 / 0x3C;
        if (v14 / 0x3C >= 0x1E)
        {
          v15 = 30;
        }

        v16 = v15 + v13;
        if (v16 >= 0x1E)
        {
          v17 = 30;
        }

        else
        {
          v17 = v16;
        }

        v18 = v17 - (v16 > 0x1D);
        v19 = v16 - v18;
        if (v13 < v18)
        {
          v20 = *(a1 + 8876);
          v21 = (Current * 0x444444444444445uLL) >> 64;
          v22 = (Current * 0x2468ACF13579BFuLL) >> 64;
          v23 = v21 - 30 * v22;
          v24 = (a1 - 120 * v22 + 4 * v21 + 8760);
          do
          {
            v25 = *v24++;
            v20 -= v25;
            *(a1 + 8876) = v20;
            ++v23;
          }

          while (v18 > v23);
        }

        if (v19 >= 1)
        {
          v26 = (a1 + 8756);
          v27 = *(a1 + 8876);
          do
          {
            v28 = *v26++;
            v27 -= v28;
            *(a1 + 8876) = v27;
            --v19;
          }

          while (v19);
        }
      }

      *(a1 + 4 * v13 + 8756) += v10;
      v29 = *(a1 + 8876) + v10;
      *(a1 + 8876) = v29;
      v30 = dbl_1001CE770[v8 == 1];
      if (v8 == 2)
      {
        v30 = 540.0;
      }

      if (v30 < v29)
      {
        v11 = 0.0;
      }

      v31 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v32 = "no";
        if (v11 != 0.0)
        {
          v32 = "yes";
        }

        [off_100298C40 WFLog:3 message:{"%s: can relax power ? %s, current duration %u, total duration for past 30 minutes %u, current rate %.1lf", "__WiFiDeviceManagerAdjustDurationOfCarPlayHidSession", v32, v10, *(a1 + 8876), *(a1 + 8876) / 1800.0}];
      }

      objc_autoreleasePoolPop(v31);
      v7 = v11;
    }
  }

  v33 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: priority %d, adjusted duration %u, type %@, motion state %d", "__WiFiDeviceManagerAdjustDurationOfCarPlayHidSession", v8, v7, v9, *(a1 + 3408)}];
  }

  objc_autoreleasePoolPop(v33);
  if (v7 && ((v34 = CFAbsoluteTimeGetCurrent(), v36 = v34, *(a1 + 8752) != 1) || (LODWORD(v35) = *(a1 + 8728), *(a1 + 8736) - v34 + v35 < v7)))
  {
    v37 = sub_10014EDCC(*(a1 + 64));
    if (!v37)
    {
      v38 = *(a1 + 8744);
      v39 = dispatch_time(0, 1000000000 * v7);
      dispatch_source_set_timer(v38, v39, 0xFFFFFFFFFFFFFFFFLL, 0);
      v40 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: CarPlay HID session is active for %u seconds", "WiFiDeviceManagerSetCarPlayHidSessionState", v7}];
      }

      objc_autoreleasePoolPop(v40);
      v37 = 0;
      *(a1 + 8728) = v7;
      *(a1 + 8736) = v36;
      *(a1 + 8752) = 1;
    }
  }

  else
  {
LABEL_39:
    v37 = 0;
  }

  CFRelease(v6);
  return v37;
}

uint64_t sub_1000D15BC(uint64_t a1, int a2, double a3)
{
  if (!a1)
  {
    sub_1001A0278();
    return 4294963396;
  }

  v6 = *(a1 + 3408);
  if (a2 != 4 && v6 == 4)
  {
    if (![+[WiFiUserInteractionMonitor isCellularDataUsable] sharedInstance]
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: motion state changed from driving and no alternative network interface. Triggering auto-join", "WiFiDeviceManagerSetMotionState"}];
      }

      objc_autoreleasePoolPop(v9);
      if (!_os_feature_enabled_impl())
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    LOWORD(v6) = *(a1 + 3408);
  }

  if (v6 == 4)
  {
    if ((a2 | 2) != 6)
    {
      goto LABEL_13;
    }
  }

  else if (v6 == 6 && (a2 | 2) != 6)
  {
LABEL_13:
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: motion state changed from driving. Resetting auto-join intervals.", "WiFiDeviceManagerSetMotionState"}];
    }

    objc_autoreleasePoolPop(v8);
    if (!_os_feature_enabled_impl())
    {
      sub_1000BD310(a1, 2, "WiFiDeviceManagerSetMotionState");
      goto LABEL_21;
    }

LABEL_20:
    sub_100019814(a1, 0x38uLL);
  }

LABEL_21:
  *(a1 + 3408) = a2;
  *(a1 + 3416) = a3;
  sub_10013DBCC(*(a1 + 120), a2, a3);
  sub_100065800(*(a1 + 64), *(a1 + 3408) > 1u);
  sub_1000D179C(a1);
  v10 = *(a1 + 7480);
  if (v10)
  {
    [v10 setMotionState:sub_100014038(*(a1 + 3408))];
  }

  result = +[WiFiRoamManager sharedWiFiRoamManager];
  if (result)
  {
    [result setDeviceMotionState:*(a1 + 3408)];
    return 0;
  }

  return result;
}

uint64_t sub_1000D1D68(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1001A0344();
    return 4294963396;
  }

  keys[0] = @"APPLE80211KEY_ACCESSORY_STATE_VERSION";
  keys[1] = @"APPLE80211KEY_ACCESSORY_TYPE";
  keys[2] = @"APPLE80211KEY_ACCESSORY_STATUS";
  v3 = 1;
  v13 = 0;
  valuePtr = 1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      if (a2 != 3)
      {
LABEL_8:
        v12 = 0;
        goto LABEL_11;
      }

      v3 = 3;
    }
  }

  else if (a2 != 1)
  {
    goto LABEL_8;
  }

  v12 = v3;
LABEL_11:
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v13);
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v12);
  values[0] = v4;
  values[1] = v5;
  values[2] = v6;
  v7 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v7)
  {
    v8 = v7;
    v9 = *(a1 + 64);
    v10 = sub_100006F88(v9);
    sub_100006F94(v9, v10, 572, 0, v8);
    CFRelease(v8);
  }

  return 4294963396;
}

uint64_t sub_1000D1EE0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1001A03B0();
    return 4294963396;
  }

  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }

      goto LABEL_17;
    }

    if (a2 == 5)
    {
      v3 = 5;
      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v3 = 6;
      goto LABEL_17;
    }

LABEL_13:
    valuePtr = 0;
    goto LABEL_18;
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  if (a2 == 1)
  {
    v3 = 1;
    goto LABEL_17;
  }

  if (a2 != 2)
  {
    goto LABEL_13;
  }

  v3 = 2;
LABEL_17:
  valuePtr = v3;
LABEL_18:
  keys[0] = @"APPLE80211KEY_DEVICE_ORIENTATION_VERSION";
  keys[1] = @"APPLE80211KEY_DEVICE_ORIENTATION_INFO";
  v11 = 1;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v11);
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  values[0] = v4;
  values[1] = v5;
  v6 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 64);
    v9 = sub_100006F88(v8);
    sub_100006F94(v8, v9, 571, 0, v7);
    CFRelease(v7);
  }

  return 4294963396;
}

void sub_1000D2070(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_100009664(*(a1 + 64));
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 6872);

      sub_10008A188(v6, a1, v5, a2);
    }

    else
    {
      sub_1001A041C();
    }
  }

  else
  {
    sub_1001A0488();
  }
}

void sub_1000D20DC(uint64_t a1, int a2, int a3, int a4)
{
  v15 = a3;
  valuePtr = a2;
  if (sub_100061268(*(a1 + 64)))
  {
    keys[0] = @"IO80211InterfaceDualPowerCallInProgress";
    keys[1] = @"IO80211InterfaceDualPowerCellularTxStarted";
    keys[2] = @"IO80211InterfaceDualPowerCellularTxShort";
    memset(values, 170, sizeof(values));
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v15);
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!v6)
      {
LABEL_12:
        if (v8)
        {
          CFRelease(v8);
        }

        return;
      }
    }

    else
    {
      v10 = kCFBooleanTrue;
      if (!a4)
      {
        v10 = kCFBooleanFalse;
      }

      values[0] = v6;
      values[1] = v7;
      values[2] = v10;
      v11 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 64);
        v14 = sub_100006F88(v13);
        sub_100006F94(v13, v14, 499, 0, v12);
        CFRelease(v12);
      }

      *(a1 + 6248) = v15 == 1;
    }

    CFRelease(v6);
    goto LABEL_12;
  }
}

uint64_t sub_1000D2270(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  v3 = *v2;
  v4 = *(a1 + 64);
  v5 = sub_100006F88(v4);

  return sub_100006F94(v4, v5, 486, 0, v3);
}

uint64_t sub_1000D22D8(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  v3 = *v2;
  v4 = *(a1 + 64);
  v5 = sub_100006F88(v4);

  return sub_100006F94(v4, v5, 448, 0, v3);
}

void sub_1000D2340(uint64_t a1, double a2)
{
  if (a1)
  {
    if (*(a1 + 6864) != a2)
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: timeout %f", "WiFiDeviceManagerSetNANOffHeadConnectionExpiry", *&a2}];
      }

      objc_autoreleasePoolPop(v4);
      *(a1 + 6864) = a2;
    }
  }

  else
  {
    sub_1001A04F4();
  }
}

double sub_1000D23D0(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 6864);
  }

  sub_1001A0560();
  return 0.0;
}

void sub_1000D23FC(uint64_t a1, const void *a2, int a3)
{
  if (!a1)
  {
    sub_1001A0850(a2);
    return;
  }

  v5 = *(a1 + 6660);
  if (!v5)
  {
    sub_1001A07E4();
    return;
  }

  if (!*(a1 + 6672))
  {
    sub_1001A0778();
    return;
  }

  if (a2 && !a3)
  {
    v6 = sub_10000A878(*(a1 + 6672));
    v7 = sub_10000A878(a2);
    if (CFStringCompare(v6, v7, 0))
    {
      v8 = objc_autoreleasePoolPush();
      v9 = off_100298C40;
      if (off_100298C40)
      {
        v10 = sub_10000A878(a2);
        [v9 WFLog:4 message:{"%s: Bail out as Join Assertion was held for different network! network->ssid:%@ manager->autoJoinPMAssertionNetwork:%@ ", "__WiFiDeviceManagerReleaseWakeAssertionForAutoJoin", v10, sub_10000A878(*(a1 + 6672))}];
      }

LABEL_13:

      objc_autoreleasePoolPop(v8);
      return;
    }

    v5 = *(a1 + 6660);
  }

  v11 = IOPMAssertionRelease(v5);
  v8 = objc_autoreleasePoolPush();
  v12 = off_100298C40;
  if (v11)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: unable to release autojoin PM Assertion error=%d", "__WiFiDeviceManagerReleaseWakeAssertionForAutoJoin", v11, v15}];
    }

    goto LABEL_13;
  }

  if (off_100298C40)
  {
    v13 = sub_10000A878(a2);
    [v12 WFLog:3 message:{"%s: wake assertion released for network %@ current timestamp:%f", "__WiFiDeviceManagerReleaseWakeAssertionForAutoJoin", v13, CFAbsoluteTimeGetCurrent()}];
  }

  objc_autoreleasePoolPop(v8);
  *(a1 + 6660) = 0;
  *(a1 + 6664) = 0;
  v14 = *(a1 + 6672);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 6672) = 0;
  }
}

uint64_t sub_1000D25AC(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 3737) = a2 != 0;
    keys = @"IO80211InterfaceBatterySaveModeState";
    v3 = &kCFBooleanTrue;
    if (!a2)
    {
      v3 = &kCFBooleanFalse;
    }

    values = *v3;
    v4 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 64);
      v7 = sub_100006F88(v6);
      sub_100006F94(v6, v7, 472, 0, v5);
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: NULL Device Manager !", "WiFiDeviceManagerSetBatterySaverModeConfiguration"}];
    }

    objc_autoreleasePoolPop(v9);
    return 4294963396;
  }
}

uint64_t sub_1000D270C(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1 || !theDict)
  {
    sub_1001A0930();
    return 4294963396;
  }

  Value = CFDictionaryGetValue(theDict, @"appPolicyUUID");
  v5 = CFDictionaryGetValue(theDict, @"appPolicyState");
  v6 = CFBooleanGetValue(v5);
  v7 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isCoPresenceActive];
  if (Value)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    sub_1001A08C4();
    return 4294963396;
  }

  v9 = v7;
  if (CFStringCompare(Value, @"CB06911C-82BE-44A9-8359-F8C02AAF82DB", 0) == kCFCompareEqualTo)
  {
    if (*(a1 + 5569) == v6 && *(a1 + 5571) == v9)
    {
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Duplicate avc assertion (callState=%d), bail out", "WiFiDeviceManagerSetAppPolicy", v6}];
      }
    }

    else
    {
      if (!_os_feature_enabled_impl())
      {
        *(a1 + 3464) = v6;
        *(a1 + 5569) = v5 == kCFBooleanTrue;
        v27 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v38 = "WiFiDeviceManagerSetAppPolicy";
          v39 = v6;
          [off_100298C40 WFLog:3 message:"%s: FT call started/ended ? %d "];
        }

        objc_autoreleasePoolPop(v27);
        v28 = *(a1 + 7480);
        if (v28)
        {
          if (*(a1 + 3465))
          {
            v29 = 1;
          }

          else
          {
            v29 = *(a1 + 3464) != 0;
          }

          [v28 setCallState:v29];
        }

        sub_10013D5A4(*(a1 + 120), [+[WiFiUserInteractionMonitor isAVConferenceActive] sharedInstance];
        sub_1000D179C(a1);
        if (!v6)
        {
          if (_os_feature_enabled_impl())
          {
            sub_100019814(a1, 0x1AuLL);
          }

          else
          {
            sub_1000BBDEC(a1, 1);
          }
        }

        values = v5;
        keys[0] = @"IO80211InterfaceCallStatus";
        v34 = CFDictionaryCreate(kCFAllocatorDefault, keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v34)
        {
          v35 = v34;
          v36 = *(a1 + 64);
          v37 = sub_100006F88(v36);
          sub_100065818(v36, v37, v35);
          CFRelease(v35);
        }

        Value = @"FACETIME_UUID";
        goto LABEL_8;
      }

      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: avc assertion (callState=%d) not for infra, bail out", "WiFiDeviceManagerSetAppPolicy", v6}];
      }
    }

    objc_autoreleasePoolPop(v23);
    return 4294963396;
  }

LABEL_8:
  if (CFStringCompare(Value, @"WiFiCallingUUID", 0) == kCFCompareEqualTo)
  {
    if (*(a1 + 3464) != v6)
    {
      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v38 = "WiFiDeviceManagerSetAppPolicy";
        v39 = v6;
        [off_100298C40 WFLog:3 message:"%s: WiFi call started/ended ? %d "];
      }

      objc_autoreleasePoolPop(v24);
      *(a1 + 3464) = v6;
      v25 = *(a1 + 7480);
      if (v25)
      {
        [v25 setCallState:(*(a1 + 3465) | v6) != 0];
      }

      sub_1000D179C(a1);
      if (!v6)
      {
        if (_os_feature_enabled_impl())
        {
          sub_100019814(a1, 0x1AuLL);
        }

        else
        {
          sub_1000BBDEC(a1, 1);
        }
      }

      values = v5;
      keys[0] = @"IO80211InterfaceCallStatus";
      v30 = CFDictionaryCreate(kCFAllocatorDefault, keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v30)
      {
        v31 = v30;
        v32 = *(a1 + 64);
        v33 = sub_100006F88(v32);
        sub_100065818(v32, v33, v31);
        CFRelease(v31);
      }

      goto LABEL_9;
    }

    return 4294963396;
  }

LABEL_9:
  if (CFStringCompare(Value, @"airplay", 0) == kCFCompareEqualTo)
  {
    *(a1 + 5570) = v5 == kCFBooleanTrue;
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v38 = "WiFiDeviceManagerSetAppPolicy";
      v39 = *(a1 + 5570);
      [off_100298C40 WFLog:3 message:"%s manager->latencySensitiveServices.airplayOverInfra:%u"];
    }

    objc_autoreleasePoolPop(v10);
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor updateIsAirplayActiveOverInfra:"updateIsAirplayActiveOverInfra:", v5 == kCFBooleanTrue];
  }

  if (CFStringCompare(Value, @"kApple80211KeyGameModeUUIDString", 0) == kCFCompareEqualTo)
  {
    *(a1 + 5572) = v5 == kCFBooleanTrue;
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v38 = "WiFiDeviceManagerSetAppPolicy";
      v39 = *(a1 + 5572);
      [off_100298C40 WFLog:3 message:"%s manager->latencySensitiveServices.gameMode:%u"];
    }

    objc_autoreleasePoolPop(v11);
    sub_1000D22D8(a1, *(a1 + 5572));
  }

  if (CFStringCompare(Value, @"CARPLAY_UUID", 0) == kCFCompareEqualTo)
  {
    *(a1 + 5568) = v5 == kCFBooleanTrue;
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v38 = "WiFiDeviceManagerSetAppPolicy";
      v39 = *(a1 + 5568);
      [off_100298C40 WFLog:3 message:"%s manager->latencySensitiveServices.carPlay:%u"];
    }

    objc_autoreleasePoolPop(v12);
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor updateIsCarPlay:"updateIsCarPlay:", v5 == kCFBooleanTrue];
  }

  if (*(a1 + 3464) && sub_1000600FC(*(a1 + 64)))
  {
    sub_10014C1C0(*(a1 + 64), v13, v14, v15, v16, v17, v18, v19, v38, v39, v40, values, keys[0], keys[1], keys[2], keys[3], keys[4], keys[5]);
    sub_1000BCA70(a1, v20);
  }

  v21 = sub_10014E178(*(a1 + 64), Value, v5);
  sub_100021870(a1, 0);
  v22 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s()CATS App update: device=%p deviceManager:%p\n ", "WiFiDeviceManagerSetAppPolicy", a1, *(a1 + 64)}];
  }

  objc_autoreleasePoolPop(v22);
  if (*(a1 + 441))
  {
    sub_100008DCC(a1, 5);
  }

  return v21;
}

void sub_1000D2D40(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  if (v2)
  {
    v3 = [(NSUserDefaults *)v2 BOOLForKey:@"GameMode"];
    *(a1 + 5572) = v3;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: GameMode Saved:%d ", "WiFiDeviceManagerUpdateAppPolicyOnCrash", v3}];
    }

    objc_autoreleasePoolPop(v4);
    if (*(a1 + 441))
    {

      sub_100008DCC(a1, 5);
    }
  }
}

uint64_t sub_1000D2E38(uint64_t a1, __CFDictionary *a2, uint64_t a3, unsigned int *a4, unsigned int a5, unsigned int a6, const void *a7, uint64_t a8)
{
  if (!a1)
  {
    sub_1001A09FC();
    return 4294963394;
  }

  memset(v32, 170, sizeof(v32));
  if (!a3)
  {
    v16 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  v32[2] = a3;
  v16 = CFNumberCreate(0, kCFNumberCFIndexType, &v32[2]);
  if (!v16)
  {
    sub_1001A099C();
    return 4294963394;
  }

  if (a5)
  {
LABEL_5:
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: probeSizeArrRef is NULL !", "__WiFiDeviceManagerTriggerActiveProbe"}];
      }

      v25 = 0;
      v28 = 0;
      v18 = 0;
      goto LABEL_51;
    }

    v18 = Mutable;
    v31 = v16;
    v19 = a2;
    v20 = a8;
    v21 = a5;
    do
    {
      v22 = *a4++;
      v32[1] = v22;
      v23 = CFNumberCreate(0, kCFNumberCFIndexType, &v32[1]);
      if (!v23)
      {
        v26 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: probeSizeRef is NULL !", "__WiFiDeviceManagerTriggerActiveProbe"}];
        }

        v25 = 0;
        v28 = 0;
        v29 = 4294963394;
        v16 = v31;
        goto LABEL_29;
      }

      v24 = v23;
      CFArrayAppendValue(v18, v23);
      CFRelease(v24);
      --v21;
    }

    while (v21);
    a8 = v20;
    a2 = v19;
    v16 = v31;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_15:
  v18 = 0;
  if (!a6)
  {
LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

LABEL_10:
  v32[0] = a6;
  v25 = CFNumberCreate(0, kCFNumberCFIndexType, v32);
  if (!v25)
  {
    v26 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: probeTimeoutSecsRef is NULL !", "__WiFiDeviceManagerTriggerActiveProbe"}];
    }

    v25 = 0;
LABEL_45:
    v28 = 0;
LABEL_51:
    v29 = 4294963394;
    goto LABEL_29;
  }

LABEL_17:
  v27 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v27)
  {
    v26 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: probeOptions is NULL !", "__WiFiDeviceManagerTriggerActiveProbe"}];
    }

    goto LABEL_45;
  }

  v28 = v27;
  if (v16)
  {
    CFDictionarySetValue(v27, @"kWiFiLqaMgrNumProbes", v16);
  }

  if (v18)
  {
    CFDictionarySetValue(v28, @"kWiFiLqaMgrProbeSize", v18);
  }

  if (v25)
  {
    CFDictionarySetValue(v28, @"kWiFiLqaMgrProbeTimeoutSecs", v25);
  }

  if (a7)
  {
    CFDictionarySetValue(v28, @"kWiFiLqaMgrIpv4Addr", a7);
  }

  v29 = sub_100043F00(*(a1 + 120), v28, a2, a8, a1);
  if (!v29)
  {
    goto LABEL_30;
  }

  v26 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Failed to Enqueue active probing with %d probes", "__WiFiDeviceManagerTriggerActiveProbe", a3}];
  }

LABEL_29:
  objc_autoreleasePoolPop(v26);
LABEL_30:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v29;
}

void sub_1000D31B4(void *value, CFMutableArrayRef theArray, uint64_t a3, uint64_t a4)
{
  CFArrayAppendValue(theArray, value);
  v6 = *(a4 + 4440);
  if (v6)
  {
    v7 = *(a4 + 4448);

    v6(a4, 0, v7, 6, theArray);
  }
}

void sub_1000D321C(uint64_t a1, int a2)
{
  *(a1 + 5576) = a2;
  v3 = *(a1 + 5584);
  if (a2)
  {
    v4 = dispatch_time(0, 10000000000);
  }

  else
  {
    v4 = -1;
  }

  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  *(a1 + 696) = 0;
  *(a1 + 688) = 0;
}

void sub_1000D3284(uint64_t a1, int a2)
{
  *(a1 + 5592) = a2;
  *(a1 + 1104) = 0;
  if (a2 == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - *(a1 + 704) > 10.0)
    {
      *(a1 + 704) = Current;
      *(a1 + 736) = 0;
    }
  }

  else
  {
    *(a1 + 1112) = 0;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: priority service duration has ended.", "WiFiDeviceManagerSetPriorityService"}];
    }

    objc_autoreleasePoolPop(v4);
    if (*(a1 + 1120))
    {
      v5 = sub_100006F88(*(a1 + 64));
      v6 = sub_100007D90(a1, v5, 1);
      if (v6)
      {
        v7 = v6;
        if (!sub_10000A7CC(v6))
        {
          sub_1000D33C0(a1, 0, @"CarPlay join timed out", 0);
        }

        CFRelease(v7);
      }

      else
      {

        sub_1000D33C0(a1, 0, @"CarPlay join timed out", 0);
      }
    }
  }
}

void sub_1000D33C0(uint64_t a1, uint64_t a2, NSString *a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (a4)
  {
    v9 = [objc_msgSend(a4 "userInfo")];
LABEL_3:
    a3 = v9;
    goto LABEL_5;
  }

  if (!a3)
  {
    v9 = [NSString stringWithFormat:@"%d", a2];
    goto LABEL_3;
  }

LABEL_5:
  v10 = *(a1 + 1120);
  sub_1001485C4();
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: reasonStr (%@)", "__WiFiDeviceManagerSubmitCarPlayJoinFailureMetrics", a3}];
  }

  objc_autoreleasePoolPop(v11);
  objc_autoreleasePoolPop(v8);

  *(a1 + 1120) = 0;
}

uint64_t sub_1000D34B4(uint64_t a1)
{
  if (a1)
  {
    if (!sub_100025AB8(a1) && !*(a1 + 3470))
    {
      return 0;
    }

    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: wifid is hosting AWDL session.", "WiFiDeviceManagerIsHostingAwdlSession"}];
    }

    v3 = 1;
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerIsHostingAwdlSession"}];
    }

    v3 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

void sub_1000D3578(uint64_t a1, CFArrayRef theArray)
{
  v4 = *(a1 + 5656);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 5656) = 0;
  }

  if (theArray)
  {
    *(a1 + 5656) = CFArrayCreateCopy(kCFAllocatorDefault, theArray);
  }
}

void sub_1000D35C8(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      keys[0] = @"IO80211InterfaceProductType";
      keys[1] = @"IO80211InterfaceOSVersion";
      values[0] = v2;
      values[1] = v3;
      v5 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v5)
      {
        v6 = *(a1 + 64);
        v7 = sub_100006F88(v6);
        sub_100006F94(v6, v7, 490, 0, v5);
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: productType:%@ iosVersion:%@", "WiFiDeviceManagerSetDeviceInfo", v2, v4}];
        }

        objc_autoreleasePoolPop(v8);
      }

      else
      {
        sub_1001A0A68();
      }
    }

    else
    {
      sub_1001A0AC8();
      v5 = 0;
    }

    CFRelease(v2);
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001A0B34();
    v5 = 0;
    if (v4)
    {
LABEL_8:
      CFRelease(v4);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1000D3748(uint64_t a1, const void *a2)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (!a1)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerForgetNetwork"}];
    }

    goto LABEL_16;
  }

  if (!*(a1 + 64))
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null device.", "WiFiDeviceManagerForgetNetwork"}];
    }

LABEL_16:
    objc_autoreleasePoolPop(v13);
    goto LABEL_11;
  }

  v4 = sub_10000A878(a2);
  v5 = CFRetain(v4);
  v21[3] = v5;
  v6 = sub_100009664(*(a1 + 64));
  v7 = CFRetain(v6);
  v17[3] = v7;
  [*(a1 + 6720) removeAllDenyListEntriesWithNetworkName:v21[3]];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D3A2C;
  block[3] = &unk_100260908;
  block[4] = &v16;
  block[5] = &v20;
  dispatch_async(global_queue, block);
  if (!sub_10000A604(a2))
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiDeviceManagerForgetNetwork"}];
    }

    goto LABEL_19;
  }

  v9 = sub_10000A540(a2, @"AutoHotspotDisableWiFiAutoJoinUntilUserJoin");
  v10 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = CFGetTypeID(v9);
  if (v11 != CFBooleanGetTypeID())
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: invalid value type", "WiFiDeviceManagerForgetNetwork"}];
    }

LABEL_19:
    objc_autoreleasePoolPop(v14);
    goto LABEL_11;
  }

  if (CFBooleanGetValue(v10))
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Auto Hotspot Disable for %@", "WiFiDeviceManagerForgetNetwork", sub_10000A878(a2)}];
    }

    objc_autoreleasePoolPop(v12);
    CFArrayAppendValue(*(a1 + 7008), a2);
  }

LABEL_11:
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void sub_1000D3A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000D3A2C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(*(v2 + 8) + 24);
  IPConfigurationForgetNetwork();
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_1000D3AA4(uint64_t a1, const void *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (!a1)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerForgetPrivateMacNetworkLease"}];
    }

    goto LABEL_9;
  }

  if (!*(a1 + 64))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null device.", "WiFiDeviceManagerForgetPrivateMacNetworkLease"}];
    }

LABEL_9:
    objc_autoreleasePoolPop(v8);
    goto LABEL_4;
  }

  v3 = sub_10000A878(a2);
  v4 = CFRetain(v3);
  v15[3] = v4;
  v5 = sub_100009664(*(a1 + 64));
  v6 = CFRetain(v5);
  v11[3] = v6;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D3C40;
  block[3] = &unk_100260908;
  block[4] = &v10;
  block[5] = &v14;
  dispatch_async(global_queue, block);
LABEL_4:
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void sub_1000D3C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1000D3C40(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(*(v2 + 8) + 24);
  IPConfigurationForgetNetwork();
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_1000D3CB8(uint64_t a1, const __CFDictionary *a2)
{
  if (a1 && a2)
  {

    sub_1000D3D70(a1, a2, 0);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v4 = "manager";
      if (a1)
      {
        v4 = "network";
      }

      [off_100298C40 WFLog:3 message:{"%s: %s is NULL", "WiFiDeviceManagerForceBssidAssociation", v4}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t sub_1000D3D70(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v60 = 0;
  v61 = 0.0;
  _os_feature_enabled_impl();
  if (!sub_10000A540(a2, @"COLOCATED_NETWORK_SCOPE_ID"))
  {
    v6 = sub_100034EEC(a2, @"ASSOC_FLAGS");
    sub_10000C614(a2, @"ASSOC_FLAGS", v6 & 0xFFFFFFFE | 1);
  }

  v7 = sub_10000A540(a2, @"COLOCATED_NETWORK_SCOPE_ID") != 0;
  v9 = (a1 + 64);
  v8 = *(a1 + 64);
  *(a1 + 1256) = v7;
  if (sub_1000612C4(v8) && sub_10009EBA0(a2))
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_BEACON_PROTECTION because network is capable (%@)", "__WiFiDeviceManagerAssociateCandidate", a2}];
    }

    objc_autoreleasePoolPop(v10);
    v11 = sub_100034EEC(a2, @"ASSOC_FLAGS");
    sub_10000C614(a2, @"ASSOC_FLAGS", v11 & 0xFFFF7FFF | 0x8000);
  }

  if (sub_1000612E8(*v9))
  {
    v12 = sub_10009EBD4(a2);
    v13 = objc_autoreleasePoolPush();
    if (v12)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_SAE_PK because network is capable (%@)", "__WiFiDeviceManagerAssociateCandidate", a2}];
      }

      objc_autoreleasePoolPop(v13);
      v14 = sub_100034EEC(a2, @"ASSOC_FLAGS");
      sub_10000C614(a2, @"ASSOC_FLAGS", v14 & 0xFFFBFFFF | 0x40000);
      v15 = sub_100034EEC(a2, @"WSEC_FLAGS");
      v16 = sub_10009EBE4(a2);
      v13 = objc_autoreleasePoolPush();
      if (v16)
      {
        v17 = v15 | 0x20000;
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_SAE_PK_RESTRICT mode network is capable (%@)", "__WiFiDeviceManagerAssociateCandidate", a2}];
        }
      }

      else
      {
        v17 = v15 | 0x10000;
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_SAE_PK_ENABLE because network is capable (%@)", "__WiFiDeviceManagerAssociateCandidate", a2}];
        }
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_SAE_PK_DISABLE mode network is incapable (%@)", "__WiFiDeviceManagerAssociateCandidate", a2}];
      }

      v17 = 0;
    }

    objc_autoreleasePoolPop(v13);
    sub_10000C614(a2, @"WSEC_FLAGS", v17);
  }

  if (sub_1000612DC(*v9) && sub_100174A1C(a2))
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_OCV because network is capable (%@)", "__WiFiDeviceManagerAssociateCandidate", a2}];
    }

    objc_autoreleasePoolPop(v18);
    v19 = sub_100034EEC(a2, @"ASSOC_FLAGS");
    sub_10000C614(a2, @"ASSOC_FLAGS", v19 & 0xFFFDFFFF | 0x20000);
  }

  v20 = sub_10001B368(a2);
  v21 = sub_10001A904(a1);
  if (CWFKnownNetworkAssociatedDuringAWDLRealTimeMode())
  {
    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_PREFER_NON_6GHZ because AWDL real time mode was recently active while associated to this known network (%@)", "__WiFiDeviceManagerAssociateCandidate", v20}];
    }

    objc_autoreleasePoolPop(v22);
    v23 = sub_100034EEC(a2, @"ASSOC_FLAGS");
    sub_10000C614(a2, @"ASSOC_FLAGS", v23 & 0xFFFEFFFF | 0x10000);
  }

  v24 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v63 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v24);
  if (!sub_1000E0A04(a1, a2, 1))
  {
    v54 = 4294963366;
    goto LABEL_87;
  }

  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  v26 = *(a1 + 3936);
  if (v26)
  {
    v27 = sub_100006F88(*(a1 + 64));
    v26(a1, v27, a2, 0, 0, *(a1 + 3944));
  }

  sub_1000C0314(a1);
  if (*(a1 + 5267) || *(a1 + 5409) != -*(a1 + 5408))
  {
    *(a1 + 6412) = 1;
  }

  *(a1 + 3516) = 0;
  v28 = sub_10000A540(a2, @"TransitionDisabledFlags");
  if (v28)
  {
    CFNumberGetValue(v28, kCFNumberSInt32Type, (a1 + 3516));
  }

  *(a1 + 3504) = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 7440))
  {
    v29 = objc_autoreleasePoolPush();
    v30 = +[NSMutableDictionary dictionary];
    v31 = *(a1 + 7440);
    v32 = [v31 count];
    if ((v32 - 1) > 9)
    {
      v34 = v32;
      if (v32 < 0xB)
      {
        v33 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Unable to add BssBlacklist key to network for join. Count:%lu", v34, v56}];
        }
      }

      else
      {
        [v30 setObject:objc_msgSend(objc_msgSend(v31 forKey:{"allObjects"), "subarrayWithRange:", 0, 10), @"BSS_BLACKLIST_BSSIDS"}];
        sub_10000AD34(a2, @"BSS_BLACKLIST", v30);
        v33 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"BssBlacklist capped to 3. Count:%lu. %@", v34, sub_10000A540(a2, @"BSS_BLACKLIST"}];
        }
      }
    }

    else
    {
      [v30 setObject:objc_msgSend(v31 forKey:{"allObjects"), @"BSS_BLACKLIST_BSSIDS"}];
      sub_10000AD34(a2, @"BSS_BLACKLIST", v30);
      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"BssBlacklist: %@", sub_10000A540(a2, @"BSS_BLACKLIST", v56}];
      }
    }

    objc_autoreleasePoolPop(v33);
    objc_autoreleasePoolPop(v29);
  }

  sub_1000CC2F4(a1, a2);
  if (sub_10000A540(a2, @"COLOCATED_NETWORK_SCOPE_ID"))
  {
    v35 = 12;
  }

  else
  {
    v35 = 1;
  }

  if (!sub_10000A540(a2, @"COLOCATED_NETWORK_SCOPE_ID"))
  {
    sub_1000C90B4(a1);
    sub_10000AD34(a2, @"COLOCATED_NETWORK_SCOPE_ID", *(a1 + 3904));
  }

  if (sub_1000DFFFC(a1, a2, &v61, &v60))
  {
    [+[NSDate date](NSDate timeIntervalSince1970];
    v37 = v36 - v61;
    v38 = v60;
    if (v60 >= -80)
    {
      v38 = -80;
    }

    v39 = v38 + 10;
    if (v37 >= 60.0)
    {
      v40 = -70;
    }

    else
    {
      v40 = -65;
    }

    if (v37 >= 60.0)
    {
      v41 = v39;
    }

    else
    {
      v41 = -65;
    }

    buf[0] = v40;
    valuePtr = v41;
    v42 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Joining a trigger disconnected network - %@ - Adding RSSI limit info rssiLimit 2G %d:Others %d time since TD %f", "__WiFiDeviceManagerAssociateCandidate", sub_10000A878(a2), v40, v41, *&v37}];
    }

    objc_autoreleasePoolPop(v42);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v44 = Mutable;
      v45 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, buf);
      CFDictionarySetValue(v44, @"LOW_RSSI_LIMIT_2G", v45);
      if (v45)
      {
        CFRelease(v45);
      }

      v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
      CFDictionarySetValue(v44, @"LOW_RSSI_LIMIT_5G", v46);
      if (v46)
      {
        CFRelease(v46);
      }

      v47 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
      CFDictionarySetValue(v44, @"LOW_RSSI_LIMIT_6G", v47);
      if (v47)
      {
        CFRelease(v47);
      }

      v58 = 1;
      v48 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &v58);
      CFDictionarySetValue(v44, @"LOW_RSSI_LIMIT_CACHE", v48);
      if (v48)
      {
        CFRelease(v48);
      }

      v58 = 1;
      v49 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &v58);
      CFDictionarySetValue(v44, @"LOW_RSSI_LIMIT_PROBE", v49);
      if (v49)
      {
        CFRelease(v49);
      }

      sub_10000AD34(a2, @"LOW_RSSI_LIMIT", v44);
      CFRelease(v44);
    }
  }

  v50 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Auto Join with colocated scopeID (%@), network (%@)", sub_10000A540(a2, @"COLOCATED_NETWORK_SCOPE_ID", a2}];
  }

  objc_autoreleasePoolPop(v50);
  v51 = *(a1 + 64);
  v52 = sub_100006F88(v51);
  v53 = sub_100061AB4(v51, v52, a2, 0, a3, sub_1000F2DB4, a1, (a1 + 3368));
  if (v53)
  {
    v54 = v53;
    sub_1001A0BA0((a1 + 64), a2, v53);
LABEL_87:
    sub_1001A0BFC(v54);
    return v54;
  }

  sub_1000CD0F8(a1, a2);
  if (*(a1 + 7480))
  {
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1000F3330;
    v57[3] = &unk_100261720;
    v57[4] = a1;
    v57[5] = v35;
    sub_1000C4084(a1, a2, v57);
  }

  return 0;
}

void sub_1000D4A10(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = a1[786];
    v7 = objc_autoreleasePoolPush();
    if (v6)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: result %d", "__WiFiDeviceManagerDispatchUserForcedAssociationCallback", a3}];
      }

      objc_autoreleasePoolPop(v7);
      (a1[786])(a1, a3, a2, a1[787]);
      a1[786] = 0;
      a1[787] = 0;
      v8 = a1[788];
      if (v8)
      {
        CFRelease(v8);
        a1[788] = 0;
      }

      return;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null callback", "__WiFiDeviceManagerDispatchUserForcedAssociationCallback"}];
    }

    v10 = v7;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerDispatchUserForcedAssociationCallback"}];
    }

    v10 = v9;
  }

  objc_autoreleasePoolPop(v10);
}

void sub_1000D4B54(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!a6)
  {
    sub_1001A0E94();
    goto LABEL_14;
  }

  v8 = *a6;
  sub_100191FA0(*a6, a3);
  v9 = v8[788];
  if (!v9)
  {
    sub_1001A0E18();
    goto LABEL_14;
  }

  if (!a3 || !CFArrayGetCount(a3))
  {
    sub_1000D4A10(v8, v9, 1);
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: scan results were empty", "__WiFiDeviceManagerUserForcedAssociationScanCallback"}];
    }

    goto LABEL_13;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
  if (!CFEqual(v9, ValueAtIndex))
  {
    if (sub_10009E148(ValueAtIndex) && (sub_10009F418(v9) & 2) != 0)
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: scanned network is SAE, provided network is WPA capable", "__WiFiDeviceManagerUserForcedAssociationScanCallback"}];
      }

      objc_autoreleasePoolPop(v15);
      goto LABEL_6;
    }

    sub_1000D4A10(v8, v9, 1);
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: scanned network is not equal", "__WiFiDeviceManagerUserForcedAssociationScanCallback"}];
    }

LABEL_13:
    objc_autoreleasePoolPop(v14);
    goto LABEL_14;
  }

LABEL_6:
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: disabling device manager", "__WiFiDeviceManagerUserForcedAssociationScanCallback"}];
  }

  objc_autoreleasePoolPop(v11);
  sub_1000BCCD4(v8);
  sub_10009D854(ValueAtIndex, v9);
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: found matching network in scan results, proceeding with association", "__WiFiDeviceManagerUserForcedAssociationScanCallback"}];
  }

  objc_autoreleasePoolPop(v12);
  v13 = sub_100006F88(v8[8]);
  sub_1000C9DD4(v8, v13, ValueAtIndex, 0, 0, sub_1000F342C, 0, 1011);
LABEL_14:

  free(a6);
}

void sub_1000D4DA8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1001A1104();
    return;
  }

  if (!a2)
  {
    sub_1001A1098();
    return;
  }

  if (*(a1 + 6336))
  {
    sub_1001A0F00((a1 + 6336));
    return;
  }

  v8 = sub_100006F88(*(a1 + 64));
  v9 = sub_100007D90(a1, v8, 1);
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Currently associated to %@", "WiFiDeviceManagerAddNetworkScan", sub_10000A878(v9)}];
  }

  objc_autoreleasePoolPop(v10);
  CFRetain(a2);
  *(a1 + 6336) = a2;
  *(a1 + 6320) = a3;
  *(a1 + 6328) = a4;
  if (v9 && CFEqual(v9, a2))
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Already associated to requested network: %@", "WiFiDeviceManagerAddNetworkScan", sub_10000A878(a2)}];
    }

    objc_autoreleasePoolPop(v11);
    sub_1000D4F58(a1, a2, 3, 0);
  }

  else if (sub_1001A0F7C(a2, a1, v9 == 0, a1 + 64))
  {
    return;
  }

  CFRelease(v9);
}

void sub_1000D4F58(void *a1, uint64_t a2, uint64_t a3, const __CFArray *a4)
{
  if (a1)
  {
    v8 = a1[790];
    v9 = objc_autoreleasePoolPush();
    v10 = off_100298C40;
    if (v8)
    {
      if (off_100298C40)
      {
        if (a4)
        {
          Count = CFArrayGetCount(a4);
        }

        else
        {
          Count = 0;
        }

        [v10 WFLog:3 message:{"%s: result %d count %ld", "__WiFiDeviceManagerDispatchAddNetworkScanCallback", a3, Count}];
      }

      objc_autoreleasePoolPop(v9);
      (a1[790])(a1, a3, a4, a2, a1[791]);
      a1[790] = 0;
      a1[791] = 0;
      v14 = a1[792];
      if (v14)
      {
        CFRelease(v14);
        a1[792] = 0;
      }

      return;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null callback", "__WiFiDeviceManagerDispatchAddNetworkScanCallback"}];
    }

    v13 = v9;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerDispatchAddNetworkScanCallback"}];
    }

    v13 = v12;
  }

  objc_autoreleasePoolPop(v13);
}

void sub_1000D50D0(int a1, int a2, CFArrayRef theArray, uint64_t a4, int a5, void *a6)
{
  if (a6)
  {
    v9 = *a6;
    if (theArray && CFArrayGetCount(theArray) && (MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, theArray)) != 0)
    {
      v11 = MutableCopy;
      v13.length = CFArrayGetCount(MutableCopy);
      v13.location = 0;
      CFArraySortValues(v11, v13, sub_1000A0950, 0);
      sub_1000D4F58(v9, v9[792], a5 != 0, v11);
      CFRelease(v11);
    }

    else
    {
      sub_1000D4F58(v9, v9[792], a5 != 0, 0);
    }
  }

  else
  {
    sub_1001A1170();
  }

  free(a6);
}

void sub_1000D51B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_1001A13A8();
    goto LABEL_13;
  }

  if (*(a1 + 20) != 1)
  {
    sub_1001A11DC();
    goto LABEL_13;
  }

  if (sub_1000D34B4(a1))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: in AWDL session, not reporting no network soft-error", "WiFiDeviceManagerNoNetworksFoundNotification"}];
    }
  }

  else
  {
    v4 = sub_100009664(*(a1 + 64));
    if (sub_100007D90(a1, v4, 1))
    {
      sub_1001A1248();
      return;
    }

    v5 = *(a1 + 3424);
    if (!v5 || !CFArrayGetCount(v5))
    {
      sub_1001A133C();
      goto LABEL_13;
    }

    if (!sub_1000603B8(*(a1 + 64)))
    {
      sub_1001A12D0();
      goto LABEL_13;
    }

    v6 = *(a1 + 4616);
    if (v6)
    {
      v6(a1, 2, 0, *(a1 + 4624));
      goto LABEL_13;
    }

    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: softErrorManagerService callback is NULL!", "WiFiDeviceManagerNoNetworksFoundNotification"}];
    }
  }

  objc_autoreleasePoolPop(v3);
LABEL_13:

  objc_autoreleasePoolPop(v2);
}

void sub_1000D5318(uint64_t a1, const __CFString *a2, unint64_t a3, const void *a4, const void *a5, const void *a6)
{
  if (a1)
  {
    if (*(a1 + 64))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v13 = Mutable;
        if (a2 | a3)
        {
          if (a2)
          {
            Copy = CFStringCreateCopy(kCFAllocatorDefault, a2);
            if (Copy)
            {
              v15 = Copy;
              CFDictionaryAddValue(v13, @"BSSID", Copy);
              v16 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: bssidStrRef:%@ bssidLen:%ld ", "WiFiDeviceManagerSetRoam", v15, CFStringGetLength(v15)}];
              }

              objc_autoreleasePoolPop(v16);
              v17 = 0;
              if (!a3)
              {
                goto LABEL_35;
              }

              goto LABEL_22;
            }

            sub_1001A1474();
          }

          else
          {
            WORD2(bytes) = -1;
            LODWORD(bytes) = -1;
            v32 = CFDataCreate(kCFAllocatorDefault, &bytes, 6);
            if (v32)
            {
              v17 = v32;
              CFDictionaryAddValue(v13, @"BSSID", v32);
              v15 = 0;
              if (!a3)
              {
LABEL_35:
                if (a4)
                {
                  CFDictionaryAddValue(v13, @"BAND_FOR_CHANNEL", a4);
                }

                if (a5)
                {
                  CFDictionaryAddValue(v13, @"BAND_PREFERENCE", a5);
                }

                if (a6)
                {
                  CFDictionaryAddValue(v13, @"ROAM_FLAGS", a6);
                }

                v36 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s:calling DeviceSetRoam with :%@", "WiFiDeviceManagerSetRoam", v13}];
                }

                objc_autoreleasePoolPop(v36);
                sub_100064730(*(a1 + 64), v13);
                if (v15)
                {
                  CFRelease(v15);
                }

                if (v17)
                {
                  CFRelease(v17);
                }

                goto LABEL_47;
              }

LABEL_22:
              CFDictionaryAddValue(v13, @"CHANNEL", a3);
              goto LABEL_35;
            }

            sub_1001A1414();
          }

LABEL_47:
          CFRelease(v13);
          return;
        }

        v18 = *(a1 + 3560);
        if (v18)
        {
          v19 = *(a1 + 3576);
          if (!v19)
          {
LABEL_27:
            v34 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: isMultiAP:%u", "WiFiDeviceManagerSetRoam", v19}];
            }

            objc_autoreleasePoolPop(v34);
            if (!v18 || v19)
            {
              WORD2(v43) = -1;
              LODWORD(v43) = -1;
              v35 = CFDataCreate(kCFAllocatorDefault, &v43, 6);
            }

            else
            {
              v35 = sub_10009DF00(v18);
            }

            v17 = v35;
            if (v35)
            {
              CFDictionaryAddValue(v13, @"BSSID", v35);
              v15 = 0;
              goto LABEL_35;
            }

            sub_1001A1414();
            goto LABEL_47;
          }

          v52.length = CFArrayGetCount(*(a1 + 3576));
          v52.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v19, v52, v18);
          if (FirstIndexOfValue != -1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3576), FirstIndexOfValue);
            if (ValueAtIndex)
            {
              v29 = ValueAtIndex;
              sub_10017630C(ValueAtIndex, v22, v23, v24, v25, v26, v27, v28, v37, v38, HIDWORD(v38), v39, context, bytes, v43, v44, v45, v46, v47, v48, v49, v50, v51);
              v19 = v30;
              if (v30)
              {
                v31 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  contexta = v31;
                  [off_100298C40 WFLog:3 message:{"Detected multiAP environment for %@", sub_10000A878(v29)}];
                  v31 = contexta;
                }

                objc_autoreleasePoolPop(v31);
              }

              goto LABEL_27;
            }
          }
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: currentNetwork is NULL", "WiFiDeviceManagerSetRoam"}];
          }

          objc_autoreleasePoolPop(v33);
        }

        v19 = 0;
        goto LABEL_27;
      }

      sub_1001A14E0();
    }

    else
    {
      sub_1001A154C();
    }
  }

  else
  {
    sub_1001A15B8();
  }
}

void sub_1000D56CC(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      if (*(a1 + 38))
      {

        sub_10006554C(v3, a2);
      }

      else
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Debug CoreCapture is disabled", "WiFiDeviceManagerTriggerCoreCapture"}];
        }

        objc_autoreleasePoolPop(v4);
      }
    }

    else
    {
      sub_1001A1624();
    }
  }

  else
  {
    sub_1001A1690();
  }
}

void sub_1000D578C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 5616);
  if (v3 == 0.0 || Current - v3 > 1800.0)
  {
    *(a1 + 5616) = Current;
    v4 = 1;
    v3 = Current;
  }

  else
  {
    v4 = *(a1 + 5624) + 1;
  }

  *(a1 + 5624) = v4;
  v5 = Current - v3;
  v6 = Current - *(a1 + 5608);
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: timeSinceFirstDisassoc: %f minutes, link lost: %d times, timeSinceLastChipTrap: %f hour, lastChipTrapTime: %f \n", "WiFiDeviceManagerTriggerReport", v5 / 60.0, *(a1 + 5624), v6 / 3600.0, *(a1 + 5608)}];
  }

  objc_autoreleasePoolPop(v7);
  if (*(a1 + 5624) >= 0xAu && v5 <= 1800.0 && (v6 >= 36000.0 || *(a1 + 5608) == 0.0))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Trigger Watchdog at driver:%@", "WiFiDeviceManagerTriggerReport", @"AssocTimeoutWatchdog"}];
    }

    objc_autoreleasePoolPop(v8);
    sub_1000D56CC(a1, @"AssocTimeoutWatchdog");
    *(a1 + 5624) = 0;
    *(a1 + 5616) = 0;
    *(a1 + 5608) = Current;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Trigger CoreCapture at driver:%@", "WiFiDeviceManagerTriggerReport", @"AssocTimeoutCoreCapture"}];
    }

    objc_autoreleasePoolPop(v9);

    sub_1000D56CC(a1, @"AssocTimeoutCoreCapture");
  }
}

uint64_t sub_1000D5998(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 6272);
  }

  sub_1001A16FC();
  return 0;
}

uint64_t sub_1000D59C4(uint64_t a1)
{
  if (a1)
  {
    return a1 + 9152;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D59D8(uint64_t a1, CFArrayRef theArray, __CFArray *a3)
{
  if (a1 && theArray && a3)
  {
    if (CFArrayGetCount(theArray) >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
        v8 = *(a1 + 3584);
        v11.length = CFArrayGetCount(v8);
        v11.location = 0;
        LOBYTE(v8) = CFArrayContainsValue(v8, v11, ValueAtIndex);
        v9 = *(a1 + 3576);
        v12.length = CFArrayGetCount(v9);
        v12.location = 0;
        if (v8 | CFArrayContainsValue(v9, v12, ValueAtIndex))
        {
          CFArrayAppendValue(a3, ValueAtIndex);
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(theArray));
    }

    if (CFArrayGetCount(a3))
    {
      return 1;
    }
  }

  else
  {
    sub_1001A1768();
  }

  return 0;
}

BOOL sub_1000D5AD4(_BOOL8 result)
{
  if (result)
  {
    return *(result + 5468) == 102 && (*(result + 5464) & 1) != 0 || *(result + 50) != 0;
  }

  return result;
}

BOOL sub_1000D5B08(_BOOL8 result)
{
  if (result)
  {
    return *(result + 5468) == 102 && (*(result + 5464) & 2) != 0 || *(result + 49) != 0;
  }

  return result;
}

void sub_1000D5B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1001A17D4();
    return;
  }

  v8 = *(a1 + 64);
  v9 = sub_100006F88(v8);
  v10 = sub_1000078F4(v8, v9);
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: setting user auto join %d (trigger %d, locState %d)", "WiFiDeviceManagerSetUserAutoJoin", a2, a3, a4}];
  }

  objc_autoreleasePoolPop(v11);
  if (!a2 && v10 && !*(a1 + 6344))
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: new state is disabled while connected to network %@", "WiFiDeviceManagerSetUserAutoJoin", v10}];
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_11;
  }

  if (*(a1 + 6344) != a2)
  {
LABEL_11:
    *(a1 + 6344) = a2;
    v13 = *(a1 + 7480);
    if (v13)
    {
      [v13 setControlCenterState:a2 != 0 withKnownLocation:a4 != 3 forInterface:sub_100006F88(*(a1 + 64))];
    }

    sub_1000C8674(a1, 2, a2 != 0);
    if (a2)
    {
      sub_1000D5E78(a1);
      sub_1000BCD2C(a1);
      sub_10000D33C(a1, 1);
      *(a1 + 192) = 15;
      if (_os_feature_enabled_impl())
      {
        sub_100019814(a1, 0x28uLL);
      }

      else
      {
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        sub_1000BD310(a1, 2, "WiFiDeviceManagerSetUserAutoJoin");
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      if (v10)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: user auto join disabled, disconnecting from current network %@", "WiFiDeviceManagerSetUserAutoJoin", sub_10000A878(v10)}];
        }

        objc_autoreleasePoolPop(v14);
        if (sub_100009730(v10))
        {
          sub_100062654(*(a1 + 64), v10, 0);
        }

        v15 = sub_100006F88(*(a1 + 64));
        sub_1000B9DC8(a1, v15, 1011, "WiFiDeviceManagerSetUserAutoJoin", 35339);
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: No current network", "WiFiDeviceManagerSetUserAutoJoin"}];
        }

        objc_autoreleasePoolPop(v14);
      }

      if ([*(a1 + 6832) isClientAssociated])
      {
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: stopping Internet Relay over NAN", "WiFiDeviceManagerSetUserAutoJoin"}];
        }

        objc_autoreleasePoolPop(v16);
        [*(a1 + 6832) stopSubscriberForPHSOverNAN];
      }

      sub_1000D5E78(a1);
      sub_1000BCD2C(a1);
      sub_10000D33C(a1, 1);
      *(a1 + 192) = 15;
    }

    sub_1000C0CA0(a1);
  }

  if (v10)
  {

    CFRelease(v10);
  }
}

void sub_1000D5E78(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 4616);
    if (v1)
    {
      if (*(a1 + 6344))
      {
        v2 = 7;
      }

      else
      {
        v2 = 8;
      }

      v3 = *(a1 + 4624);

      v1(a1, v2, 0, v3);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: softErrorManagerService callback is NULL!", "__WiFiDeviceManagerUserAutoJoinPreferenceChangedNotification"}];
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    sub_1001A1840();
  }
}

void sub_1000D5F40(uint64_t a1, int a2, unsigned __int16 *a3, int a4, int a5)
{
  v6 = a1 + 4096;
  if (a2)
  {
    v8 = a4;
    if (a4 | a5 | sub_100058BB4(a3))
    {
      ++*(a1 + 6392);
      *(a1 + 6394) |= v8;
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      ++*(a1 + 6396);
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    v9 = *(v6 + 2344);
    if (*(v6 + 1170) > v9)
    {
      *(v6 + 2344) = v9 + 1;
    }
  }

  else
  {
    ++*(a1 + 6398);
    if (*(a1 + 5266) == -*(a1 + 5265))
    {
      *(a1 + 6528) = sub_100058B68();
    }
  }

LABEL_10:
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: PHSessionMetric: method=%d end=%d teardown=%d, misStart=%f softAPUp=%fsessionEnd=%f, appleDeviceConnectionCount=%d(%x) nonAppleDeviceConnectionCount=%ddeviceDisconnectCount=%d, lpmDuration=%llu, channel=%d nanPhNanStationCount=%d lastClientDisconnectedTime:%f", "WiFiDeviceManagerRecordPHMetricSTAAssocEvent", *(a1 + 6352), *(a1 + 6356), *(a1 + 6360), *(a1 + 6368), *(a1 + 6376), *(a1 + 6384), *(a1 + 6392), *(a1 + 6394), *(a1 + 6396), *(a1 + 6398), *(a1 + 6400), *(a1 + 6408), *(v6 + 2344), *(a1 + 6528)}];
  }

  objc_autoreleasePoolPop(v10);
}

void sub_1000D60A4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [[WiFiRecommendationStub alloc] initWithWiFiNetwork:a2];
    *(a1 + 3336) = sub_10018D064(a1, v3, 1);
    if (v3)
    {

      CFRelease(v3);
    }
  }

  else
  {
    sub_1001A18AC();
  }
}

void sub_1000D6120(uint64_t a1, const void *a2)
{
  if (a1)
  {
    sub_1001A1918(a2, a1);
  }

  else
  {
    sub_1001A1954();
  }
}

void sub_1000D6150(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (_os_feature_enabled_impl())
    {
      v4 = [*(a1 + 6776) dispatchNotificationWithAskToJoinHotspotRecommendation:sub_10000A878(a2)];
      if (v4)
      {
        v5 = v4;
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Hotspot Recommendation notification failed: %d", "WiFiDeviceManagerDispatchSimulatedAskToJoinHotspotNotification", v5}];
        }

        objc_autoreleasePoolPop(v6);
      }

      else
      {
        *(a1 + 3336) = 14;
      }
    }

    else
    {
      v7 = sub_100006F88(*(a1 + 64));
      *(a1 + 3336) = sub_1000D62B4(a1, v7, 10, 0, a2, 0);
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: state %@", "WiFiDeviceManagerDispatchSimulatedAskToJoinHotspotNotification", sub_1000AA864(*(a1 + 3336))}];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is nil", "WiFiDeviceManagerDispatchSimulatedAskToJoinHotspotNotification", v9}];
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1000D62B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: type=%@(%d)", "__WiFiDeviceManagerDispatchNotification", sub_1000591D8(a3), a3}];
  }

  objc_autoreleasePoolPop(v12);
  if (!*(a1 + 3984))
  {
LABEL_9:
    if (a3 == 2)
    {
      if (!a5)
      {
        return *(a1 + 3336);
      }

LABEL_25:
      if (sub_100009730(a5))
      {
        sub_100062654(*(a1 + 64), a5, 1);
      }

      return *(a1 + 3336);
    }

LABEL_17:
    v17 = sub_100174C78(a5);
    v19 = a3 == 1 || v17 != 0;
    if (!a5 || !v19)
    {
      return *(a1 + 3336);
    }

    goto LABEL_25;
  }

  v13 = sub_1000A1F04(a5);
  if ((a3 & 0xFFFFFFFD) == 1 && v13)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: network is carrier-bundle based. Suppressing user password prompt. (%@)", "__WiFiDeviceManagerDispatchNotification", a5, v23}];
    }

LABEL_8:
    objc_autoreleasePoolPop(v14);
    goto LABEL_9;
  }

  v15 = sub_10009ED84(a5);
  if (a3 == 1 && v15)
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: network is profile based. Suppressing user password prompt. (%@)", "__WiFiDeviceManagerDispatchNotification", sub_10000A878(a5)}];
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_17;
  }

  v21 = (*(a1 + 3984))(a1, a2, a3, a4, a5, a6, *(a1 + 3992));
  if (!v21)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failed to create notification for type %@(%d)", "__WiFiDeviceManagerDispatchNotification", sub_1000591D8(a3), a3}];
    }

    goto LABEL_8;
  }

  v22 = v21;
  if (!a3 && *(a1 + 108) != 2)
  {
    sub_1001AE5F8(*(a1 + 96));
  }

  sub_100099C90(v22, sub_100194B10, a1);
  sub_1000A5274(v22, *(a1 + 240));
  *(a1 + 224) = CFRetain(v22);
  sub_1000ED650(a1, @"autoJoinWaiting", a5, 0);
  return 14;
}

void sub_1000D652C(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v4 = sub_100006F88(*(a1 + 64));
    *(a1 + 3336) = sub_1000D62B4(a1, v4, 2, 0, a2, 0);
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: state %@", "WiFiDeviceManagerDispatchSimulatedEAPTrustNotification", sub_1000AA864(*(a1 + 3336))}];
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is nil", "WiFiDeviceManagerDispatchSimulatedEAPTrustNotification", v6}];
    }
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1000D6614(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(result + 4600);
    if (v3)
    {
      v3(result, a3, a2, *(result + 4608));
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000D6668(uint64_t a1)
{
  if (a1)
  {
    if (_os_feature_enabled_impl())
    {

      sub_100019814(a1, 0x1CuLL);
    }

    else
    {

      sub_1000BBDEC(a1, 6);
    }
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null manager", "WiFiDeviceManagerAttemptHomeNetworkTransition"}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t sub_1000D6744(const void *a1)
{
  if (a1)
  {
    if (sub_1000A1F04(a1))
    {
      v2 = objc_autoreleasePoolPush();
      v6 = off_100298C40;
      if (off_100298C40)
      {
        v7 = sub_10000A878(a1);
        v4 = 3;
        [v6 WFLog:3 message:{"%s Network with SSID: %@ is unshareable as it's carrier based.", "WiFiNetworkDetermineShareableStatusOfNetworkForNearbyDeviceSetup", v7}];
      }

      else
      {
        v4 = 3;
      }
    }

    else if (sub_10009EDC4(a1) && sub_100009730(a1))
    {
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s Network with SSID: %@ is unshareable as it was added by a third party (WiFiNetworkIsAppBased() is true)", "WiFiNetworkDetermineShareableStatusOfNetworkForNearbyDeviceSetup", sub_10000A878(a1)}];
      }

      v4 = 8;
    }

    else if (sub_100174C78(a1))
    {
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s Network with SSID: %@ is unshareable as it requires a one time password (WiFiNetworkRequiresOneTimePassword() is true)", "WiFiNetworkDetermineShareableStatusOfNetworkForNearbyDeviceSetup", sub_10000A878(a1)}];
      }

      v4 = 9;
    }

    else if (sub_10009ED84(a1) && !sub_100009730(a1))
    {
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s Network with SSID: %@ is unshareable as it's currently determined to be profile based and is not EAP (WPA/WPA2 Personal, Open and WEP configurations not supported for profile based networks)", "WiFiNetworkDetermineShareableStatusOfNetworkForNearbyDeviceSetup", sub_10000A878(a1)}];
      }

      v4 = 6;
    }

    else
    {
      if (!sub_100009730(a1) || ![+[ManagedConfigWrapper isEAPShareBlockedByManagedDefault] sharedInstance]
      {
        v2 = objc_autoreleasePoolPush();
        v3 = +[ManagedConfigWrapper sharedInstance];
        if ([(ManagedConfigWrapper *)v3 isMCInitialized])
        {
          if (![(ManagedConfigWrapper *)v3 isWiFiNetworkSubjectToMDM:a1])
          {
            v4 = 1;
            goto LABEL_13;
          }

          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s Network with SSID: %@ is unshareable as it's subject to MDM.", "WiFiNetworkDetermineShareableStatusOfNetworkForNearbyDeviceSetup", sub_10000A878(a1)}];
          }

          v4 = 2;
        }

        else
        {
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s Network with SSID: %@ is undetermined.", "WiFiNetworkDetermineShareableStatusOfNetworkForNearbyDeviceSetup", sub_10000A878(a1)}];
          }

          v4 = 0;
        }

        objc_autoreleasePoolPop(v8);
        goto LABEL_13;
      }

      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s Network with SSID: %@ is unshareable as it's EAP auth and the profile to block EAP credential sharing is installed", "WiFiNetworkDetermineShareableStatusOfNetworkForNearbyDeviceSetup", sub_10000A878(a1)}];
      }

      v4 = 7;
    }
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Can't determine shareable status, network argument is NULL", "WiFiNetworkDetermineShareableStatusOfNetworkForNearbyDeviceSetup"}];
    }

    v4 = 0;
  }

LABEL_13:
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1000D6A5C(const void *a1)
{
  valuePtr = sub_1000D6744(a1);
  Default = CFAllocatorGetDefault();
  v3 = CFNumberCreate(Default, kCFNumberIntType, &valuePtr);
  if (v3)
  {
    v4 = v3;
    sub_10000AD34(a1, @"ShareableStatus", v3);
    CFRelease(v4);
  }

  return valuePtr;
}

uint64_t sub_1000D6AC8(const void *a1)
{
  value = 0;
  if (!sub_100009730(a1))
  {
    sub_1001A1D88(a1);
    return 0;
  }

  if ([+[ManagedConfigWrapper isEAPShareBlockedByManagedDefault] sharedInstance]
  {
    sub_1001A1D0C(a1);
    return 0;
  }

  if (sub_10009EDC4(a1))
  {
    sub_1001A19C0(a1);
    return 0;
  }

  v2 = sub_10009D420(a1);
  if (!v2)
  {
    sub_1001A1C90(a1);
    return 0;
  }

  v3 = v2;
  Default = CFAllocatorGetDefault();
  v5 = sub_10000AD2C(Default, v3);
  if (!v5)
  {
    sub_1001A1C08(v3, a1);
    return 0;
  }

  v6 = v5;
  v7 = sub_10009D548(v5, 0);
  v8 = v7;
  if (v7)
  {
    CFDictionaryGetValueIfPresent(v7, @"EAPClientConfiguration", &value);
    if (value)
    {
      v9 = EAPClientConfigurationCopyShareable();
      if (v9)
      {
        v10 = v9;
        sub_10000AD34(a1, @"ShareableEAPConfig", v9);
        sub_10000A878(a1);
        v11 = EAPTLSCopyTrustExceptionBindings();
        if (v11)
        {
          v12 = v11;
          sub_10000AD34(a1, @"ShareableEAPTrustExceptions", v11);
          CFRelease(v12);
        }

        else
        {
          sub_1001A1A3C(a1);
        }

        CFRelease(v10);
        v13 = 1;
        goto LABEL_12;
      }

      sub_1001A1AAC(a1);
    }

    else
    {
      sub_1001A1B1C(a1);
    }
  }

  else
  {
    sub_1001A1B8C(a1);
  }

  v13 = 0;
LABEL_12:
  CFRelease(v3);
  CFRelease(v6);
  if (v8)
  {
    CFRelease(v8);
  }

  return v13;
}

uint64_t sub_1000D6C84(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    sub_1001A1E80();
    return 0;
  }

  v2 = sub_100007D90(a1, a2, 1);
  if (!sub_100009730(v2))
  {
    sub_1001A1E04(v2);
    v3 = 0;
    if (!v2)
    {
      return v3;
    }

    goto LABEL_5;
  }

  sub_10000A878(v2);
  EAPTLSSetTrustExceptionBindings();
  v3 = 1;
  if (v2)
  {
LABEL_5:
    CFRelease(v2);
  }

  return v3;
}

void sub_1000D6D10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      *(a1 + 5480) = a2;
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Battery Manager set ", "WiFiDeviceManagerSetBatteryManager"}];
      }
    }

    else
    {
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Battery manager is NULL", "WiFiDeviceManagerSetBatteryManager"}];
      }
    }
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetBatteryManager"}];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000D6DE8(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: enabled %d", "WiFiDeviceManagerSetAvailabilityEngineIsEnabled", a2}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 6784) = a2;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetAvailabilityEngineIsEnabled"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_1000D6EAC(uint64_t result)
{
  if (result)
  {
    return sub_100064A34(*(result + 64));
  }

  return result;
}

uint64_t sub_1000D6EBC(uint64_t result)
{
  if (result)
  {
    return sub_100064A40(*(result + 64));
  }

  return result;
}

uint64_t sub_1000D6ECC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = _os_feature_enabled_impl();
    if (result)
    {
      result = sub_100064A4C(*(v1 + 64));
      if (result)
      {
        return sub_1000611E0(*(v1 + 64)) != 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000D6F28(uint64_t result)
{
  if (result)
  {
    return sub_1000611E0(*(result + 64));
  }

  return result;
}

uint64_t sub_1000D6F38(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  sub_1001A1EEC();
  return 4294963393;
}

void sub_1000D7150(uint64_t a1)
{
  if (*(a1 + 4488))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v3 = Mutable;
      CFDictionarySetValue(Mutable, @"WiFiHostApStateIdentifier", kCFBooleanTrue);
      if ((*(a1 + 7153) & 4) != 0)
      {
        v4 = kCFBooleanTrue;
      }

      else
      {
        v4 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v3, @"WiFiHostApStateEnable", v4);
      if (*(a1 + 5308))
      {
        v5 = kCFBooleanTrue;
      }

      else
      {
        v5 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v3, @"WiFiHostApStateADHSMode", v5);
      v6 = *(a1 + 4488);
      v7 = sub_10014C450(*(a1 + 64));
      v6(a1, v7, *(a1 + 4496), v3);

      CFRelease(v3);
    }
  }
}

void sub_1000D726C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: test mode %d", "WiFiDeviceManagerAutoInstantHotspotTestMode", a2}];
    }

    objc_autoreleasePoolPop(v4);
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        *(a1 + 6912) = 0;
      }

      else if (a2 == 4)
      {
        *(a1 + 6912) = 1;
      }
    }

    else
    {
      if (a2 == 1)
      {
        v5 = a1;
        v6 = 1;
      }

      else
      {
        if (a2 != 2)
        {
          return;
        }

        v5 = a1;
        v6 = 0;
      }

      sub_100007600(v5, v6);
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerAutoInstantHotspotTestMode"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000D73A0(uint64_t a1, int a2)
{
  v4 = *(a1 + 3336);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if ([+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
    {
      if (*(a1 + 20) == 1 && sub_1000D7818(a1) && (v4 - 16) >= 5 && ([*(a1 + 3704) isTimeDeferredNetworksPresent] & 1) == 0 && v4 != 12)
      {
        v5 = 0.0;
        if (CFAbsoluteTimeGetCurrent() - *(a1 + 7024) <= 180.0)
        {
          v5 = *(a1 + 7024) - CFAbsoluteTimeGetCurrent() + 180.0;
        }

        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: autoHS mode = %d Primary Interface = %d AutoHotspotAssociated=%d wifiNetworkAutoJoinFailed=%d autoHotspotEnableRequest=%d RemainTimingout=%f", "__WiFiDeviceManagerScanForAutoInstantHotspot", *(a1 + 6884), sub_100064A78(*(a1 + 64)), *(a1 + 6976), *(a1 + 6977), *(a1 + 6880), *&v5}];
        }

        objc_autoreleasePoolPop(v6);
        if (!*(a1 + 6976) && *(a1 + 6977) && sub_1000D7818(a1) && (a2 || CFAbsoluteTimeGetCurrent() - *(a1 + 7024) > 180.0))
        {
          CFArrayRemoveAllValues(*(a1 + 6920));
          *(a1 + 6968) = 2;
          *(a1 + 6960) = 0x300000002;
          *(a1 + 7048) = 0;
          v7 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Scanning for Hotspot Devices: curr state %d next state %d", "__WiFiDeviceManagerScanForAutoInstantHotspot", *(a1 + 3336), 16}];
          }

          objc_autoreleasePoolPop(v7);
          if (*(a1 + 3336) == 16)
          {
            sub_1000B6E20(a1, 0);
          }

          *(a1 + 6972) = 0;
          *(a1 + 3336) = 16;
          *(a1 + 7024) = CFAbsoluteTimeGetCurrent();
          *(a1 + 6536) = 0u;
          *(a1 + 6552) = 0u;
          *(a1 + 6568) = 0u;
          *(a1 + 6584) = 0u;
          *(a1 + 6600) = 0u;
          *(a1 + 6616) = 0u;
          *(a1 + 6632) = 0u;
          v8 = *(a1 + 6888);
          v9 = dispatch_time(0, 30000000000);
          dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
          [*(a1 + 6824) startBrowsing];
          *(a1 + 7040) = CFAbsoluteTimeGetCurrent();
          ++*(a1 + 6236);
        }
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: setup not completed yet.", "__WiFiDeviceManagerScanForAutoInstantHotspot"}];
      }

      objc_autoreleasePoolPop(v10);
    }
  }
}

void sub_1000D767C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: enabled %@(%d)", "WiFiDeviceManagerSetAutoInstantHotspotMode", sub_100059188(a2), a2}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 6884) = a2;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetAutoInstantHotspotMode"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000D7750(uint64_t a1, double a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: interval %f", "WiFiDeviceManagerSetAutoInstantHotspotTriggerInterval", *&a2}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 6944) = a2;
    *(a1 + 6952) = a2;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetAutoInstantHotspotTriggerInterval"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

const __CFNumber *sub_1000D7818(uint64_t a1)
{
  if (!*(a1 + 6884))
  {
    return 0;
  }

  if (sub_100064A78(*(a1 + 64)) || *(a1 + 7104))
  {
    return 0;
  }

  if (CFAbsoluteTimeGetCurrent() - *(a1 + 7032) > 15.0 && (*(a1 + 6884) != 1 || *(a1 + 6880)) || (result = sub_1000D7904(a1), result))
  {
    if (![+[WiFiUserInteractionMonitor isAnyCallInProgress] sharedInstance]
    {
      return 1;
    }

    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: call is in progress, not scanning for auto hotspot.", "__WiFiDeviceManagerIsAutoHotspotTriggerStateValid"}];
    }

    objc_autoreleasePoolPop(v3);
    return 0;
  }

  return result;
}

const __CFNumber *sub_1000D7904(uint64_t a1)
{
  result = *(a1 + 3560);
  if (result)
  {
    result = sub_10000A604(result);
    if (result)
    {
      if (sub_10000A540(*(a1 + 3560), @"WiFiAutoInstantHotspotJoining") != kCFBooleanTrue)
      {
        return 0;
      }

      result = sub_10000A540(*(a1 + 3560), @"lastDisconnectReasonKey");
      if (result)
      {
        valuePtr = -1431655766;
        CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
        return (valuePtr <= 2 && CFAbsoluteTimeGetCurrent() - *(a1 + 7032) <= 600.0);
      }
    }
  }

  return result;
}

void sub_1000D79C8(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (a1)
  {
    v4 = *(a1 + 64);
    v5 = sub_100006F88(v4);
    sub_100006F94(v4, v5, 537, 0, v3);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1000D7A44(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_autoreleasePoolPush();
  if (!a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: 3bars source is nil", "WiFiDeviceManagerSet3BarsSource", v15}];
    }

    goto LABEL_10;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: setting 3bars source: %@", "WiFiDeviceManagerSet3BarsSource", a2}];
  }

  objc_autoreleasePoolPop(v5);
  if (!*(a1 + 240))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: queue not initialized yet!", "WiFiDeviceManagerSet3BarsSource"}];
    }

    v6 = v7;
    goto LABEL_14;
  }

  if (*(a1 + 6736))
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: availability engine already initialized: %@", "WiFiDeviceManagerSet3BarsSource", *(a1 + 6736)}];
    }

LABEL_10:
    v6 = v5;
LABEL_14:
    objc_autoreleasePoolPop(v6);
    goto LABEL_15;
  }

  v8 = objc_alloc_init(NSMutableSet);
  *(a1 + 6768) = a2;
  [v8 addObject:a2];
  v9 = objc_alloc_init(WiFiWalletSource);
  if (v9)
  {
    v10 = v9;
    *(a1 + 6760) = v9;
    [v8 addObject:v9];
    if (_os_feature_enabled_impl())
    {
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_1000F5060;
      v21 = &unk_100261790;
      v22 = a1;
      [v10 setRemovalHandler:&v18];
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_1000F54F8;
      v21 = &unk_100261CB0;
      v22 = a1;
      [v10 setChangeHandler:&v18];
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      if (_os_feature_enabled_impl())
      {
        v11 = objc_alloc_init(WiFiAvailabilityNearbySource);
        if (v11)
        {
          v12 = v11;
          *(a1 + 6752) = v11;
          [v8 addObject:v11];
          CFRetain(a1);
          v13 = *(a1 + 240);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000D7E00;
          block[3] = &unk_10025F5F8;
          block[4] = v12;
          block[5] = a1;
          dispatch_async(v13, block);
        }
      }
    }
  }

  *(a1 + 6736) = [[WiFiAvailabilityEngine alloc] initWithProviders:+[NSSet setWithObjects:](NSSet sources:{"setWithObjects:", *(a1 + 6744), 0), v8}];
  v14 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: initialized availability engine: %@", "WiFiDeviceManagerSet3BarsSource", *(a1 + 6736)}];
  }

  objc_autoreleasePoolPop(v14);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D8C24;
  v16[3] = &unk_100261790;
  v16[4] = a1;
  [*(a1 + 6736) setAvailabilityChangedCallback:v16];
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_15:
  objc_autoreleasePoolPop(v4);
}

void sub_1000D7E00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  CFRetain(*(a1 + 40));
  v4 = *(a1 + 40);
  *(v4 + 6792) = 1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D7F0C;
  v5[3] = &unk_100261770;
  v5[4] = *(a1 + 32);
  v5[5] = v3;
  v5[6] = v4;
  [v3 setEventHandler:v5 eventID:{+[CWFEventID eventIDWithType:interfaceName:](CWFEventID, "eventIDWithType:interfaceName:", 39, 0)}];
  [v3 startMonitoringEventType:39 error:0];
  [*(a1 + 32) setRecommendedNetworks:{objc_msgSend(v3, "nearbyRecommendedNetworks")}];
  CFRelease(*(a1 + 40));
  objc_autoreleasePoolPop(v2);
}

void sub_1000D7F0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Updated nearby recommended networks", "WiFiDeviceManagerSet3BarsSource_block_invoke_2"}];
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setRecommendedNetworks:{objc_msgSend(*(a1 + 40), "nearbyRecommendedNetworks")}];
  sub_1000D7FA8(*(a1 + 48), 0);
  v3 = *(a1 + 48);

  sub_100019814(v3, 0x11uLL);
}

const __CFArray *sub_1000D7FA8(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v74 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  if (a2)
  {
    if (a2 == 82)
    {
      sub_1000BCD2C(a1);
      return 0;
    }

    return sub_10018DA2C(a1);
  }

  v6 = *(a1 + 1160);
  if (v6 && *(a1 + 6976) && *(a1 + 7067) && *(a1 + 7056))
  {
    if (*(a1 + 3336) == 14)
    {
      sub_1001A2280();
    }

    else
    {
      Count = CFArrayGetCount(*(a1 + 1160));
      v8 = Count;
      if (Count < 1)
      {
        if (Count)
        {
          v14 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: null network.", "__WiFiDeviceManagerProcessAutoHotspotJoinRecommendedFromScanResults"}];
          }

          objc_autoreleasePoolPop(v14);
        }
      }

      else
      {
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
          if (ValueAtIndex)
          {
            v11 = ValueAtIndex;
            v12 = sub_10000A878(ValueAtIndex);
            v13 = sub_10000A878(*(a1 + 7056));
            if (CFEqual(v12, v13))
            {
              break;
            }
          }

          if (v8 == ++v9)
          {
            goto LABEL_22;
          }
        }

        if (v8 != v9)
        {
          v15 = sub_100006F88(*(a1 + 64));
          *(a1 + 3336) = sub_1000D62B4(a1, v15, 12, 0, v11, 0);
        }
      }
    }
  }

LABEL_22:
  if (*(a1 + 3336) == 14)
  {
    return 14;
  }

  v17 = *(a1 + 3408);
  switch(v17)
  {
    case 4:
      sub_1001A2678();
      return sub_10018DA2C(a1);
    case 6:
      sub_1001A26C4();
      return sub_10018DA2C(a1);
    case 3:
      sub_1001A2710();
      return sub_10018DA2C(a1);
  }

  if (!*(a1 + 6344))
  {
    sub_1001A262C();
    return sub_10018DA2C(a1);
  }

  if (!*(a1 + 108))
  {
    sub_1001A25CC();
    return sub_10018DA2C(a1);
  }

  if (*(a1 + 176) != 1)
  {
    sub_1001A22E0();
    return sub_10018DA2C(a1);
  }

  v68 = 0;
  if (sub_1000E6A7C(a1, &v68))
  {
    sub_1001A275C(&v68);
    return sub_10018DA2C(a1);
  }

  v18 = *(a1 + 1160);
  v19 = objc_autoreleasePoolPush();
  if (!*(a1 + 108))
  {
    sub_1001A24C0();
    goto LABEL_156;
  }

  if (*(a1 + 176) != 1)
  {
LABEL_156:
    v18 = 0;
    goto LABEL_157;
  }

  if (![+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isAskToJoinAllowed]&& ![+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isNetworkRecommendationAllowed]&& ![+[WiFiUserInteractionMonitor isNearbyDeviceRecommendationAllowed] sharedInstance]
  {
    sub_1001A2340();
    goto LABEL_156;
  }

  if (!v18)
  {
    sub_1001A2460();
LABEL_157:
    v21 = 0;
    goto LABEL_158;
  }

  if (!CFArrayGetCount(v18))
  {
    sub_1001A2400();
    goto LABEL_156;
  }

  v20 = sub_10018DF8C(a1);
  v21 = [[WiFiScanResultsPreparer alloc] initWithManager:a1 availabilityEngine:*(a1 + 6736) scanResults:v18 disableProminentFiltering:0 blacklistedSSIDs:v20];
  if (v20)
  {
    CFRelease(v20);
  }

  v22 = [(WiFiScanResultsPreparer *)v21 topRecommendableNetwork];
  if (v22)
  {
    v23 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: found recommended network %@", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults", v22}];
    }

    objc_autoreleasePoolPop(v23);
    v24 = [objc_msgSend(v22 "network")];
    v25 = +[WiFiUserInteractionMonitor sharedInstance];
    if (v24 == 3)
    {
      if ([(WiFiUserInteractionMonitor *)v25 isNearbyDeviceRecommendationAllowed])
      {
        v26 = 3;
LABEL_54:
        v28 = [(WiFiScanResultsPreparer *)v21 preparedScanResults];
        v62 = v19;
        cf = a1;
        v60 = v22;
        v61 = v21;
        v59 = v26;
        context = objc_autoreleasePoolPush();
        if (v28 && [(NSArray *)v28 count])
        {
          v29 = [NSMutableArray arrayWithArray:*(a1 + 3576)];
          [(NSMutableArray *)v29 addObjectsFromArray:*(a1 + 3584)];
          [(NSMutableArray *)v29 addObjectsFromArray:*(a1 + 3688)];
          if (v29 && [(NSMutableArray *)v29 count])
          {
            v65 = v29;
            v30 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s count %lu", "__WiFiDeviceManagerUpdateKnownNetworksWithPreparedScanResults", -[NSArray count](v28, "count")}];
            }

            objc_autoreleasePoolPop(v30);
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v31 = [(NSArray *)v28 countByEnumeratingWithState:&v69 objects:buf count:16];
            v32 = v29;
            if (v31)
            {
              v33 = v31;
              v34 = *v70;
              v35 = kCFBooleanTrue;
              while (1)
              {
                v36 = 0;
                v64 = v33;
                do
                {
                  if (*v70 != v34)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v37 = *(*(&v69 + 1) + 8 * v36);
                  if (v37)
                  {
                    if (v35 == sub_10000A540(*(*(&v69 + 1) + 8 * v36), @"WiFiNetworkAttributeIsKnown"))
                    {
                      v38 = [(NSMutableArray *)v32 indexOfObject:v37];
                      if (v38 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v39 = v28;
                        v40 = [(NSMutableArray *)v32 objectAtIndex:v38];
                        v41 = sub_10000A540(v37, @"WiFiNetworkAttributeIsPotentiallyCaptive");
                        v42 = sub_10000A540(v37, @"WiFiNetworkAttributeIsSuspicious");
                        v43 = sub_10000A540(v37, @"WiFiNetworkAttributeIsTCPGood");
                        v66 = sub_10000A540(v37, @"WiFiNetworkAttributeIsPotentiallyMoving");
                        v67 = sub_10000A540(v37, @"WiFiNetworkAttributeIsPublic");
                        v44 = sub_10000A540(v37, @"WiFiNetworkAttributeHighPopularity");
                        if (!v41 || v41 == sub_10000A540(v40, @"WiFiNetworkAttributeIsPotentiallyCaptive"))
                        {
                          v46 = 0;
                        }

                        else
                        {
                          sub_10000AD34(v40, @"WiFiNetworkAttributeIsPotentiallyCaptive", v41);
                          if (CFBooleanGetValue(v41))
                          {
                            v45 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:4 message:{"%s: '%@' isPotentiallyCaptive", "__WiFiDeviceManagerUpdateKnownNetworksWithPreparedScanResults", sub_10000A878(v40)}];
                            }

                            objc_autoreleasePoolPop(v45);
                          }

                          v46 = 1;
                        }

                        v28 = v39;
                        if (v42)
                        {
                          v35 = kCFBooleanTrue;
                          if (v42 != sub_10000A540(v40, @"WiFiNetworkAttributeIsSuspicious"))
                          {
                            sub_10000AD34(v40, @"WiFiNetworkAttributeIsSuspicious", v42);
                            if (CFBooleanGetValue(v42))
                            {
                              v47 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:4 message:{"%s: '%@' isSuspicious", "__WiFiDeviceManagerUpdateKnownNetworksWithPreparedScanResults", sub_10000A878(v40)}];
                              }

                              objc_autoreleasePoolPop(v47);
                            }

                            v46 = 1;
                          }

                          if (!v43)
                          {
LABEL_92:
                            if (v66)
                            {
                              v32 = v65;
                              if (v66 != sub_10000A540(v40, @"WiFiNetworkAttributeIsPotentiallyMoving"))
                              {
                                sub_10000AD34(v40, @"WiFiNetworkAttributeIsPotentiallyMoving", v66);
                                if (CFBooleanGetValue(v66))
                                {
                                  v49 = objc_autoreleasePoolPush();
                                  if (off_100298C40)
                                  {
                                    [off_100298C40 WFLog:4 message:{"%s: '%@' isPotentiallyMoving", "__WiFiDeviceManagerUpdateKnownNetworksWithPreparedScanResults", sub_10000A878(v40)}];
                                  }

                                  objc_autoreleasePoolPop(v49);
                                  v46 = 1;
                                  v32 = v65;
                                }

                                else
                                {
                                  v46 = 1;
                                }
                              }
                            }

                            else
                            {
                              v32 = v65;
                            }

                            if (v67)
                            {
                              v33 = v64;
                              if (v67 != sub_10000A540(v40, @"WiFiNetworkAttributeIsPublic"))
                              {
                                sub_10000AD34(v40, @"WiFiNetworkAttributeIsPublic", v67);
                                if (CFBooleanGetValue(v67))
                                {
                                  v50 = objc_autoreleasePoolPush();
                                  if (off_100298C40)
                                  {
                                    [off_100298C40 WFLog:4 message:{"%s: '%@' isPublic", "__WiFiDeviceManagerUpdateKnownNetworksWithPreparedScanResults", sub_10000A878(v40)}];
                                  }

                                  objc_autoreleasePoolPop(v50);
                                  v46 = 1;
                                  v35 = kCFBooleanTrue;
                                  if (!v44)
                                  {
                                    goto LABEL_115;
                                  }

LABEL_109:
                                  if (v44 != sub_10000A540(v40, @"WiFiNetworkAttributeHighPopularity"))
                                  {
                                    sub_10000AD34(v40, @"WiFiNetworkAttributeHighPopularity", v44);
                                    if (CFBooleanGetValue(v44))
                                    {
                                      v51 = objc_autoreleasePoolPush();
                                      if (off_100298C40)
                                      {
                                        [off_100298C40 WFLog:4 message:{"%s: '%@' isHighlyPopular", "__WiFiDeviceManagerUpdateKnownNetworksWithPreparedScanResults", sub_10000A878(v40)}];
                                      }

                                      objc_autoreleasePoolPop(v51);
                                      v35 = kCFBooleanTrue;
                                    }

LABEL_116:
                                    sub_1000C5B3C(cf, v40);
                                    goto LABEL_117;
                                  }
                                }

                                else
                                {
                                  v46 = 1;
                                  if (v44)
                                  {
                                    goto LABEL_109;
                                  }
                                }

LABEL_115:
                                if (!v46)
                                {
                                  goto LABEL_117;
                                }

                                goto LABEL_116;
                              }
                            }

                            else
                            {
                              v33 = v64;
                            }

                            if (v44)
                            {
                              goto LABEL_109;
                            }

                            goto LABEL_115;
                          }
                        }

                        else
                        {
                          v35 = kCFBooleanTrue;
                          if (!v43)
                          {
                            goto LABEL_92;
                          }
                        }

                        if (v43 != sub_10000A540(v40, @"WiFiNetworkAttributeIsTCPGood"))
                        {
                          sub_10000AD34(v40, @"WiFiNetworkAttributeIsTCPGood", v43);
                          if (CFBooleanGetValue(v43))
                          {
                            v46 = 1;
                          }

                          else
                          {
                            v48 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:4 message:{"%s: '%@' isTCPGood is false", "__WiFiDeviceManagerUpdateKnownNetworksWithPreparedScanResults", sub_10000A878(v40)}];
                            }

                            objc_autoreleasePoolPop(v48);
                            v46 = 1;
                          }
                        }

                        goto LABEL_92;
                      }
                    }
                  }

LABEL_117:
                  v36 = v36 + 1;
                }

                while (v33 != v36);
                v33 = [(NSArray *)v28 countByEnumeratingWithState:&v69 objects:buf count:16];
                if (!v33)
                {
                  goto LABEL_119;
                }
              }
            }

            goto LABEL_119;
          }

          v57 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: No known networks!", "__WiFiDeviceManagerUpdateKnownNetworksWithPreparedScanResults"}];
          }
        }

        else
        {
          v57 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Null preparedScanResults!", "__WiFiDeviceManagerUpdateKnownNetworksWithPreparedScanResults"}];
          }
        }

        objc_autoreleasePoolPop(v57);
LABEL_119:
        objc_autoreleasePoolPop(context);
        v19 = v62;
        a1 = cf;
        v18 = v60;
        v21 = v61;
        v52 = v59;
        goto LABEL_120;
      }
    }

    else if ([(WiFiUserInteractionMonitor *)v25 isNetworkRecommendationAllowed])
    {
      v26 = 1;
      goto LABEL_54;
    }
  }

  else
  {
    if (![(WiFiScanResultsPreparer *)v21 prominentScanResultsCount])
    {
      v26 = 0;
      goto LABEL_54;
    }

    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: prominent display network count: %ld", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults", -[WiFiScanResultsPreparer prominentScanResultsCount](v21, "prominentScanResultsCount")}];
    }

    objc_autoreleasePoolPop(v27);
    if ([+[WiFiUserInteractionMonitor isAskToJoinAllowed] sharedInstance]
    {
      v26 = 2;
      goto LABEL_54;
    }
  }

  sub_1001A23A0();
  v18 = 0;
LABEL_158:
  v52 = 0;
LABEL_120:

  objc_autoreleasePoolPop(v19);
  if (!v52)
  {
    sub_1001A256C();
    return sub_10018DA2C(a1);
  }

  if (!sub_1001ADBB8(*(a1 + 96), *(a1 + 1160), *(a1 + 3624), v52))
  {
    sub_1001A27BC(v52);
    return sub_10018DA2C(a1);
  }

  if (v52 == 2)
  {
    v53 = *(a1 + 64);
    v54 = sub_100006F88(v53);
    v55 = sub_1000078F4(v53, v54);
    if (v55)
    {
      sub_1001A2820(v55);
      return sub_10018DA2C(a1);
    }

    if (!sub_1001ADBAC(*(a1 + 96)) && !*(a1 + 104))
    {
      sub_1001A2520();
      return sub_10018DA2C(a1);
    }

    sub_1000BDEA8(a1, 0);
    v56 = sub_100006F88(*(a1 + 64));
    result = sub_1000D62B4(a1, v56, 0, 0, 0, 0);
  }

  else
  {
    result = sub_10018D064(a1, v18, 0);
  }

  if (result != 14)
  {
    return sub_10018DA2C(a1);
  }

  return result;
}

void sub_1000D8C24(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: recommendations found: %@", "__WiFiDeviceManagerHandleNetworkAvailabilityChange", a2}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_1000D8CA4(uint64_t a1)
{
  v1 = [[[WiFiScanResultsPreparer alloc] initWithManager:a1 availabilityEngine:*(a1 + 6736) scanResults:*(a1 + 1160) disableProminentFiltering:0 blacklistedSSIDs:sub_10018DF8C(a1)] topRecommendableNetwork];
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: found recommended network %@", "WiFiDeviceManagerCallTopRecommendableNetwork", v1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000D8D60(uint64_t a1, const __CFArray *a2, void *a3)
{
  if (!a1)
  {
    sub_1001A2A54();
    return;
  }

  if (!a2)
  {
    sub_1001A29E8();
    return;
  }

  v5 = sub_100009664(*(a1 + 64));
  if (!v5)
  {
    sub_1001A297C();
    return;
  }

  v12 = v5;
  v148 = a2;
  sub_100150054(*(a1 + 64), v5, v6, v7, v8, v9, v10, v11, v111, v112, v113, v114, v115, v117, a3, v120, v122, cf, v126, v127, theArray, v131, v132, v133, v135, theSet, allocator, v141, key, v146);
  if (!v13)
  {
    sub_1001A2910();
    return;
  }

  v14 = v13;
  Value = CFDictionaryGetValue(v13, @"DataUsageInterfacePeerList");
  v16 = *(a1 + 5360);
  v136 = a1;
  v147 = v12;
  if (v16)
  {
    if (CFSetGetCount(v16))
    {
      v17 = sub_1000C4AE4(a1);
      if (v17)
      {
        v18 = v17;
        if (Value)
        {
          MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, Value);
          if (!MutableCopy)
          {
            sub_1001A2898(v14);
LABEL_177:
            CFRelease(v18);
            return;
          }

          Value = MutableCopy;
          v156.length = CFArrayGetCount(v18);
          v156.location = 0;
          CFArrayAppendArray(Value, v18, v156);
          v121 = Value;
        }

        else
        {
          v121 = 0;
          Value = v17;
        }

        goto LABEL_13;
      }
    }
  }

  v18 = 0;
  if (Value)
  {
    v121 = 0;
LABEL_13:
    v123 = v18;
    if (CFArrayGetCount(Value) < 1)
    {
      v134 = 0;
      Mutable = 0;
    }

    else
    {
      v20 = 0;
      Mutable = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v20);
        if (ValueAtIndex)
        {
          v23 = CFDictionaryGetValue(ValueAtIndex, @"DataUsageInterfacePeerAddr");
          if (v23)
          {
            v24 = v23;
            if (Mutable || (Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks)) != 0)
            {
              CFSetAddValue(Mutable, v24);
            }
          }
        }

        ++v20;
      }

      while (v20 < CFArrayGetCount(Value));
      v134 = 0;
    }

    v18 = Value;
    goto LABEL_25;
  }

  v134 = 1;
  v121 = 0;
  v123 = 0;
  Mutable = 0;
LABEL_25:
  v25 = DHCPSDHCPLeaseListCreate();
  cfa = v14;
  theSeta = Mutable;
  if (v25)
  {
    v26 = v25;
    if (CFArrayGetCount(v25) < 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      keya = kDHCPSPropDHCPHWAddress;
      v29 = kDHCPSPropName;
      v142 = kDHCPSPropDHCPLease;
      do
      {
        v30 = CFArrayGetValueAtIndex(v26, v28);
        if (v30)
        {
          v31 = v30;
          if (v27 || (v27 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0)
          {
            v32 = CFDictionaryGetValue(v31, keya);
            v33 = CFDictionaryGetValue(v31, v29);
            ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v32, @",");
            if (ArrayBySeparatingStrings)
            {
              v35 = ArrayBySeparatingStrings;
              if (CFArrayGetCount(ArrayBySeparatingStrings) >= 2)
              {
                v36 = CFArrayGetValueAtIndex(v35, 1);
                if (v36 && v33)
                {
                  CFDictionaryAddValue(v27, v36, v33);
                }

                if (v36 && theSeta && CFSetContainsValue(theSeta, v36))
                {
                  v37 = CFDictionaryGetValue(v31, v142);
                  v38 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v39 = @"__Unavailable__";
                    if (v33)
                    {
                      v40 = v33;
                    }

                    else
                    {
                      v40 = @"__Unavailable__";
                    }

                    if (v37)
                    {
                      v39 = v37;
                    }

                    v41 = v38;
                    [off_100298C40 WFLog:3 message:{"%s: DHCP lease <MacAddr/HostName/Lease>: <%@/%@/%@>", "WiFiDeviceManagerGetInterfaceDataUsage", v36, v40, v39}];
                    v38 = v41;
                  }

                  objc_autoreleasePoolPop(v38);
                }
              }

              CFRelease(v35);
            }
          }
        }

        ++v28;
      }

      while (v28 < CFArrayGetCount(v26));
    }

    CFRelease(v26);
  }

  else
  {
    v27 = 0;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = -[NSCalendar dateFromComponents:](+[NSCalendar currentCalendar](NSCalendar, "currentCalendar"), "dateFromComponents:", [+[NSCalendar currentCalendar](NSCalendar components:"components:fromDate:" fromDate:28, +[NSDate date](NSDate, "date")]);
  v44 = v148;
  if (CFArrayGetCount(v148) < 1)
  {
    goto LABEL_61;
  }

  v45 = 0;
  while (1)
  {
    v46 = CFArrayGetValueAtIndex(v44, v45);
    if (v46)
    {
      v47 = v46;
      v48 = CFDictionaryGetValue(v46, @"DataUsageInterfaceName");
      v49 = CFDictionaryGetValue(v47, @"DataUsageDate");
      if (v48)
      {
        v50 = v49;
        if (v49)
        {
          if (CFEqual(v48, v147) && CFEqual(v50, v43))
          {
            break;
          }
        }
      }
    }

    ++v45;
    v44 = v148;
    if (v45 >= CFArrayGetCount(v148))
    {
      goto LABEL_61;
    }
  }

  allocatora = kCFAllocatorDefault;
  v110 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v47);
  v44 = v148;
  CFArrayRemoveValueAtIndex(v148, v45);
  if (v110)
  {
    v51 = v110;
  }

  else
  {
LABEL_61:
    allocatora = kCFAllocatorDefault;
    v51 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v51, @"DataUsageInterfaceName", v147);
    CFDictionarySetValue(v51, @"DataUsageDate", v43);
  }

  objc_autoreleasePoolPop(v42);
  v52 = CFDictionaryGetValue(v51, @"DataUsageInterfacePeerList");
  v53 = allocatora;
  if (v52)
  {
    v54 = CFArrayCreateMutableCopy(allocatora, 0, v52);
  }

  else
  {
    v54 = CFArrayCreateMutable(allocatora, 0, &kCFTypeArrayCallBacks);
  }

  v55 = v54;
  if (v134)
  {
    v56 = 0;
    if (!v54)
    {
      goto LABEL_160;
    }
  }

  else
  {
    v56 = CFArrayCreateMutableCopy(allocatora, 0, v18);
    if (!v55)
    {
      goto LABEL_160;
    }
  }

  theArraya = v56;
  v116 = v51;
  v128 = v55;
  if (CFArrayGetCount(v55) >= 1)
  {
    for (i = 0; i < CFArrayGetCount(v55); ++i)
    {
      valuePtr = 0;
      v150 = 0;
      v151 = 0;
      v149 = 0;
      v58 = CFArrayGetValueAtIndex(v55, i);
      if (!v58)
      {
        continue;
      }

      v59 = CFDictionaryCreateMutableCopy(v53, 0, v58);
      if (!v59)
      {
        continue;
      }

      v60 = v59;
      if (_os_feature_enabled_impl())
      {
        v61 = sub_100089CDC(*(v136 + 6872));
        v62 = CFDictionaryGetValue(v60, @"DataUsageInterfacePeerID");
        if (!v62)
        {
          goto LABEL_121;
        }

        v63 = CFDictionaryGetValue(v61, v62);
        if (!v63)
        {
          goto LABEL_121;
        }

        v64 = v63;
        CFRetain(v63);
        if (v61)
        {
          CFRelease(v61);
        }

        v61 = v64;
      }

      else
      {
        v65 = CFDictionaryGetValue(v60, @"DataUsageInterfacePeerAddr");
        if (!v65)
        {
          v61 = v60;
LABEL_124:
          CFRelease(v61);
          continue;
        }

        values = v65;
        v61 = CFArrayCreate(v53, &values, 1, &kCFTypeArrayCallBacks);
      }

      Count = CFArrayGetCount(v61);
      if (Count < 1)
      {
LABEL_86:
        v70 = 0;
      }

      else
      {
        v67 = Count;
        v68 = 0;
        while (1)
        {
          v69 = CFArrayGetValueAtIndex(v61, v68);
          if (v27)
          {
            v70 = v69;
            if (CFDictionaryGetValue(v27, v69))
            {
              break;
            }
          }

          if (v67 == ++v68)
          {
            goto LABEL_86;
          }
        }
      }

      if ((_os_feature_enabled_impl() & 1) == 0 && !CFDictionaryGetValue(v60, @"DataUsageInterfacePeerDisplayName") && v27 && CFDictionaryGetValue(v27, v70))
      {
        v71 = CFDictionaryGetValue(v27, v70);
        CFDictionarySetValue(v60, @"DataUsageInterfacePeerDisplayName", v71);
      }

      v72 = CFDictionaryGetValue(v60, @"DataUsageInterfacePeerLastBytes");
      if (v72)
      {
        CFNumberGetValue(v72, kCFNumberSInt64Type, &valuePtr);
      }

      v73 = CFDictionaryGetValue(v60, @"DataUsageInterfacePeerTotalBytes");
      if (v73)
      {
        CFNumberGetValue(v73, kCFNumberSInt64Type, &v151);
      }

      if ((v134 & 1) != 0 || CFArrayGetCount(v18) < 1)
      {
LABEL_113:
        v83 = 0;
        v151 += valuePtr;
        v44 = v148;
        v55 = v128;
        goto LABEL_114;
      }

      v74 = 0;
      while (1)
      {
        v75 = CFArrayGetValueAtIndex(v18, v74);
        if (!v75)
        {
          goto LABEL_112;
        }

        v76 = v75;
        v77 = CFDictionaryGetValue(v75, @"DataUsageInterfacePeerAddr");
        if (!v77)
        {
          goto LABEL_112;
        }

        v78 = v77;
        v79 = CFDictionaryGetValue(v76, @"DataUsageInterfacePeerLastBytes");
        if (v79)
        {
          CFNumberGetValue(v79, kCFNumberSInt64Type, &v150);
        }

        v80 = CFDictionaryGetValue(v76, @"DataUsageInterfacePeerTotalBytes");
        if (v80)
        {
          CFNumberGetValue(v80, kCFNumberSInt64Type, &v149);
        }

        v154.length = CFArrayGetCount(v61);
        v154.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v61, v154, v78);
        if (FirstIndexOfValue == -1)
        {
          v82 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"WiFiDeviceManagerGetInterfaceDataUsage", v78}];
          }

          objc_autoreleasePoolPop(v82);
          v53 = allocatora;
          if (!v70)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v70 = CFArrayGetValueAtIndex(v61, FirstIndexOfValue);
          if (!v70)
          {
            goto LABEL_112;
          }
        }

        if (CFEqual(v70, v78))
        {
          break;
        }

LABEL_112:
        if (++v74 >= CFArrayGetCount(v18))
        {
          goto LABEL_113;
        }
      }

      if (theArraya)
      {
        if (CFArrayGetCount(theArraya))
        {
          v155.length = CFArrayGetCount(theArraya);
          v155.location = 0;
          v92 = CFArrayGetFirstIndexOfValue(theArraya, v155, v76);
          if (v92 != -1)
          {
            CFArrayRemoveValueAtIndex(theArraya, v92);
          }
        }
      }

      v83 = v150;
      v44 = v148;
      v55 = v128;
      if (v150 < valuePtr)
      {
        v151 += valuePtr;
      }

LABEL_114:
      valuePtr = v83;
      if (_os_feature_enabled_impl())
      {
        v84 = objc_autoreleasePoolPush();
        v85 = [+[NSCalendar currentCalendar](NSCalendar components:"components:fromDate:" fromDate:252, +[NSDate date]];
        v86 = +[NSCalendar currentCalendar];
        v87 = v85;
        v53 = allocatora;
        CFDictionarySetValue(v60, @"DataUsageRecentDate", [(NSCalendar *)v86 dateFromComponents:v87]);
        objc_autoreleasePoolPop(v84);
      }

      v88 = CFNumberCreate(v53, kCFNumberSInt64Type, &valuePtr);
      if (v88)
      {
        v89 = v88;
        CFDictionarySetValue(v60, @"DataUsageInterfacePeerLastBytes", v88);
        CFRelease(v89);
      }

      v90 = CFNumberCreate(v53, kCFNumberSInt64Type, &v151);
      if (v90)
      {
        v91 = v90;
        CFDictionarySetValue(v60, @"DataUsageInterfacePeerTotalBytes", v90);
        CFRelease(v91);
      }

      CFArraySetValueAtIndex(v55, i, v60);
LABEL_121:
      CFRelease(v60);
      if (v61)
      {
        goto LABEL_124;
      }
    }
  }

  v51 = v116;
  v56 = theArraya;
  if (theArraya && CFArrayGetCount(theArraya))
  {
    if (_os_feature_enabled_impl())
    {
      v93 = sub_100089AD8(*(v136 + 6872));
      v94 = CFArrayGetCount(theArraya);
      if (v94 >= 1)
      {
        v95 = v94;
        v96 = 0;
        keyb = v94;
        do
        {
          v97 = CFArrayGetValueAtIndex(v56, v96);
          v98 = CFDictionaryCreateMutableCopy(v53, 0, v97);
          v99 = CFDictionaryGetValue(v98, @"DataUsageInterfacePeerAddr");
          v100 = CFDictionaryGetValue(v93, v99);
          if (v100)
          {
            v101 = CFUUIDCreateFromString(v53, v100);
          }

          else
          {
            v101 = CFUUIDCreate(v53);
          }

          v102 = v101;
          if (v101)
          {
            v103 = CFUUIDCreateString(v53, v101);
            if (v103)
            {
              v104 = v103;
              v105 = v93;
              CFDictionarySetValue(v98, @"DataUsageInterfacePeerID", v103);
              v106 = CFDictionaryCreateMutable(v53, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              valuePtr = v99;
              v107 = CFArrayCreate(v53, &valuePtr, 1, &kCFTypeArrayCallBacks);
              if (!CFDictionaryGetValue(v106, @"DataUsageInterfacePeerDisplayName"))
              {
                if (v27)
                {
                  v108 = CFDictionaryGetValue(v27, v99);
                  if (v108)
                  {
                    CFDictionarySetValue(v106, @"DataUsageInterfacePeerDisplayName", v108);
                  }
                }
              }

              CFDictionarySetValue(v106, @"DataUsageMACAddresses", v107);
              CFDictionarySetValue(theDicta, v104, v106);
              CFDictionaryRemoveValue(v98, @"DataUsageInterfacePeerAddr");
              CFArraySetValueAtIndex(theArraya, v96, v98);
              if (v107)
              {
                CFRelease(v107);
              }

              if (v106)
              {
                CFRelease(v106);
              }

              CFRelease(v104);
              v56 = theArraya;
              v93 = v105;
              v95 = keyb;
            }

            CFRelease(v102);
          }

          if (v98)
          {
            CFRelease(v98);
          }

          ++v96;
        }

        while (v95 != v96);
      }

      v44 = v148;
      v51 = v116;
      v55 = v128;
      if (v93)
      {
        CFRelease(v93);
      }
    }

    v157.length = CFArrayGetCount(v56);
    v157.location = 0;
    CFArrayAppendArray(v55, v56, v157);
  }

  CFDictionarySetValue(v51, @"DataUsageInterfacePeerList", v55);
LABEL_160:
  if (v51)
  {
    CFArrayAppendValue(v44, v51);
  }

  v109 = *(v136 + 7128);
  v18 = v123;
  if (v109)
  {
    CFRelease(v109);
    *(v136 + 7128) = 0;
  }

  *(v136 + 7128) = sub_10005BDB0(*(v136 + 64));
  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  CFRelease(cfa);
  if (v27)
  {
    CFRelease(v27);
  }

  if (theSeta)
  {
    CFRelease(theSeta);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v123)
  {
    goto LABEL_177;
  }
}

void sub_1000D9AEC(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Debug CoreCapture %d", "WiFiDeviceManagerSetDebugCoreCapture", a2}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 38) = a2;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetDebugCoreCapture"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000D9BAC(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CoreCapture On Assisted AJ Failure %d", "WiFiDeviceManagerSetCoreCaptureOnAssistedAJFailure", a2}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 39) = a2;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetCoreCaptureOnAssistedAJFailure"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000D9C74(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 6776);
    v3 = objc_autoreleasePoolPush();
    if (v2)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: reseting user notification states", "WiFiDeviceManagerResetAvailabilityEngine"}];
      }

      objc_autoreleasePoolPop(v3);
      v4 = *(a1 + 6776);

      [v4 reset];
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null user notification manager", "WiFiDeviceManagerResetAvailabilityEngine"}];
      }

      objc_autoreleasePoolPop(v3);
    }
  }

  else
  {
    sub_1001A2AC0();
  }
}

__CFDictionary *sub_1000D9D60(uint64_t a1, const __CFDictionary *a2)
{
  v4 = objc_autoreleasePoolPush();
  number = 0;
  value = 0;
  valuePtr = 13;
  v30 = 0;
  if (!a1)
  {
    sub_1001A2E30();
    goto LABEL_73;
  }

  if (!a2)
  {
    sub_1001A2DC4();
    goto LABEL_73;
  }

  CFDictionaryGetValueIfPresent(a2, @"command", &value);
  if (!value)
  {
    sub_1001A2D64();
    goto LABEL_73;
  }

  if (!sub_10006373C(*(a1 + 64)))
  {
    sub_1001A2D04();
    goto LABEL_73;
  }

  CFDictionaryGetValueIfPresent(a2, @"network", &v30);
  if (!v30)
  {
    v5 = 0;
    goto LABEL_22;
  }

  v6 = sub_10000AD2C(kCFAllocatorDefault, v30);
  if (!v6)
  {
    sub_1001A2B2C();
    goto LABEL_73;
  }

  v7 = v6;
  if (CFArrayGetCount(*(a1 + 3576)) < 1)
  {
LABEL_12:
    ValueAtIndex = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3576), v8);
      if (CFEqual(v7, ValueAtIndex))
      {
        break;
      }

      if (++v8 >= CFArrayGetCount(*(a1 + 3576)))
      {
        goto LABEL_12;
      }
    }
  }

  if (CFArrayGetCount(*(a1 + 3584)) < 1)
  {
LABEL_17:
    if (ValueAtIndex)
    {
LABEL_20:
      v5 = sub_10000C580(kCFAllocatorDefault, ValueAtIndex);
      v12 = sub_10000A540(v7, @"BSSID");
      sub_10000AD34(v5, @"BSSID", v12);
      goto LABEL_21;
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = CFArrayGetValueAtIndex(*(a1 + 3584), v10);
      if (CFEqual(v7, v11))
      {
        break;
      }

      if (++v10 >= CFArrayGetCount(*(a1 + 3584)))
      {
        goto LABEL_17;
      }
    }

    ValueAtIndex = v11;
    if (v11)
    {
      goto LABEL_20;
    }
  }

  v5 = 0;
LABEL_21:
  CFRelease(v7);
LABEL_22:
  if (CFStringCompare(value, @"kBssBlacklistSet", 0) == kCFCompareEqualTo)
  {
    CFDictionaryGetValueIfPresent(a2, @"reason", &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberLongType, &valuePtr);
    }

    if (v5)
    {
      v13 = valuePtr;
      v14 = objc_autoreleasePoolPush();
      if (v13 == 13)
      {
        sub_1001A2CAC();
        v19 = v33;
        goto LABEL_35;
      }

      v15 = sub_10001A9BC(v5);
      [*(a1 + 6720) setDenyListedStateExpiryIntervalInSec:1 state:60.0];
      if (v13 != 8)
      {
        v26 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s - unrecognized WiFiDenyListAddReason", "__WiFiDeviceManagerSetBssBlacklistedNetworkCondition"}];
        }

        objc_autoreleasePoolPop(v26);
        if (!v15)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v16 = sub_10000A540(v5, @"BSSID");
      v17 = sub_1000BE2EC(a1, 8, 0, v16, 2);
      [*(a1 + 6720) setNetworkDenyListInfo:v17 forScanResult:v15];
      [*(a1 + 6720) setNetworkDenyListInfo:v17 forScanResult:v15];
      [*(a1 + 6720) setNetworkDenyListInfo:v17 forScanResult:v15];
      v18 = *(a1 + 7480);
      if (v18)
      {
        [v18 addFaultEvent:9 forInterface:sub_100006F88(*(a1 + 64))];
        if (!v17)
        {
LABEL_30:
          if (!v15)
          {
LABEL_32:
            objc_autoreleasePoolPop(v14);
            if (v13 == 8)
            {
LABEL_36:
              v20 = sub_10018E710(a1, &off_100282700);
LABEL_60:
              CFRelease(v5);
              goto LABEL_61;
            }

            v19 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s - __WiFiDeviceManagerSetBssBlacklistedNetworkCondition %lu failed", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse", valuePtr}];
            }

LABEL_35:
            objc_autoreleasePoolPop(v19);
            goto LABEL_36;
          }

LABEL_31:

          goto LABEL_32;
        }
      }

      else if (!v17)
      {
        goto LABEL_30;
      }

      if (!v15)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    sub_1001A2C4C();
LABEL_73:
    v20 = sub_10018E710(a1, &off_100282700);
    goto LABEL_61;
  }

  v21 = CFDictionaryGetValue(a2, @"timeout");
  if (v21)
  {
    LODWORD(v33) = 0;
    v23 = CFNumberGetValue(v21, kCFNumberIntType, &v33);
    v22 = v23 == 0;
    if (v23)
    {
      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s - Configuring BssBlacklist Expiry interval to %d", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse", v33}];
      }

      objc_autoreleasePoolPop(v24);
      [*(a1 + 6720) setDenyListedStateExpiryIntervalInSec:2 state:v33];
    }
  }

  else
  {
    v22 = 1;
  }

  if (CFStringCompare(value, @"kBssBlacklistClear", 0))
  {
    if (CFStringCompare(value, @"kBssBlacklistRemove", 0))
    {
      if (CFStringCompare(value, @"kBssBlacklistExpire", 0) == kCFCompareEqualTo)
      {
        [*(a1 + 6720) removeExpiredDenyListedState:2];
        if (![*(a1 + 6720) denyListedNetworkCount])
        {
          sub_1001A2B8C();
          goto LABEL_59;
        }
      }
    }

    else
    {
      [*(a1 + 6720) removeDenyListStateWithDenyListRemoveReason:5];
      if (![*(a1 + 6720) denyListedNetworkCount])
      {
        sub_1001A2BEC();
        goto LABEL_59;
      }
    }
  }

  else
  {
    if (!v5)
    {
      sub_1001A2C4C();
      goto LABEL_73;
    }

    v25 = sub_10001A9BC(v5);
    [*(a1 + 6720) removeNetworkDenyListInfoWithReason:1 forScanResult:v25];
  }

  if (!v22)
  {
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s - Resetting BssBlacklist Expiry interval", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
    }

    objc_autoreleasePoolPop(v27);
    [*(a1 + 6720) setDenyListedStateExpiryIntervalInSec:2 state:300.0];
  }

LABEL_59:
  v20 = sub_10018E710(a1, &off_100282700);
  if (v5)
  {
    goto LABEL_60;
  }

LABEL_61:
  objc_autoreleasePoolPop(v4);
  return v20;
}

void sub_1000DA2EC(uint64_t a1, const void *a2)
{
  v4 = sub_10000A878(a2);
  v5 = sub_10000A540(a2, @"BSSID");
  v6 = v5;
  if (v4 && v5 && ([v4 isEqualToString:&stru_1002680F8] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", &stru_1002680F8) & 1) == 0)
  {
    v8 = ether_aton([v6 UTF8String]);
    if (v8)
    {
      v9 = [NSData dataWithBytes:v8 length:6];
      v10 = *(*(*(a1 + 32) + 8) + 40);

      [v10 addObject:v9];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Malformed ssid = %@ or bssid = %@", "WiFiDeviceManagerProcessBSSAndAutoJoinDenyListUpdate_block_invoke", v4, v6}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

uint64_t sub_1000DA428(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  v4 = sub_100006F88(v3);

  return sub_100061168(v3, v4, a2);
}

void sub_1000DA470(uint64_t a1, const __CFDictionary *a2)
{
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (objc_opt_class())
  {
    v5 = Mutable == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = 0;
    if (!Mutable)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(Mutable);
    goto LABEL_26;
  }

  v6 = CFDictionaryGetValue(a2, @"ADAPTIVE_ROAM_RSSI_TRIGGER");
  if (!v6)
  {
    v8 = 0;
    goto LABEL_25;
  }

  v7 = v6;
  CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
  *(a1 + 7496) = valuePtr;
  v8 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v8)
  {
    goto LABEL_25;
  }

  theDict = Mutable;
  v9 = *(a1 + 7504);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 7504) = 0;
  }

  v10 = CFDictionaryGetValue(a2, @"ADAPTIVE_ROAM_CHANNELS_INFO");
  *(a1 + 7504) = v10;
  if (!v10)
  {
    goto LABEL_25;
  }

  value = v7;
  CFRetain(v10);
  v22 = a1;
  obj = *(a1 + 7504);
  if (obj)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v16)
          {
            v17 = v16;
            CFDictionarySetValue(v16, @"IO80211Channel", +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v15 channel]));
            CFDictionarySetValue(v17, @"IO80211ChannelFlags", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 simplifiedChannelFlags] | 2));
            CFArrayAppendValue(v8, v17);
            CFRelease(v17);
          }
        }

        v12 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }
  }

  Mutable = theDict;
  CFDictionarySetValue(theDict, @"IO80211InterfaceAdaptiveRoamChanList", v8);
  CFDictionarySetValue(theDict, @"IO80211InterfaceAdaptiveRoamRSSITrigger", value);
  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Adaptive Roam Params %@", theDict}];
  }

  objc_autoreleasePoolPop(v18);
  v19 = *(v22 + 64);
  v20 = sub_100006F88(v19);
  sub_100006F94(v19, v20, 532, 0, theDict);
  if (*(v22 + 7480))
  {
    [*(v22 + 7480) setRoamingConfiguration:*(v22 + 7496) withChannelList:+[NSMutableSet setWithArray:](NSMutableSet forInterface:{"setWithArray:", v8), sub_100006F88(*(v22 + 64))}];
  }

  if (theDict)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_1000DA7E0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CATSInit %@: Enter device:%p deviceManager:%p manager:%p", "WifiDeviceManagerCatsInit", sub_1000095E0(a1), *(a1 + 64), a1, a2}];
  }

  objc_autoreleasePoolPop(v4);
  if (a1 && a2)
  {
    *(a1 + 432) = a2;
    *(a1 + 443) = 0;
    *(a1 + 441) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
    v5 = sub_100006F88(*(a1 + 64));
    v6 = sub_100009664(*(a1 + 64));
    v7 = 0;
    if (v5 && v6)
    {
      v7 = CFStringCompare(v5, v6, 0) == kCFCompareEqualTo;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v10 = *(a1 + 64);
      if (v10)
      {
        v10 = sub_100009664(v10);
      }

      [v9 WFLog:3 message:{"%s: CATS %@: Trace deviceManager:%p rc=%d\n", "WifiDeviceManagerCatsIsMainInterface", v10, a1, v7}];
    }

    objc_autoreleasePoolPop(v8);
    *(a1 + 440) = v7;
    if (v7)
    {
      sub_100008CA8(a1, 0);
      if ((sub_1000F7050(a1 + 432, 0, sub_10001DBAC) & 0x80000000) != 0)
      {
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: CATS Error registering P2P callback\n", "WifiDeviceManagerCatsRegisterClients"}];
        }

        objc_autoreleasePoolPop(v11);
      }

      if ((sub_1000F7050(a1 + 432, 1, sub_10001DEC0) & 0x80000000) != 0)
      {
        v12 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: CATS Error registering UCM callback\n", "WifiDeviceManagerCatsRegisterClients"}];
        }

        objc_autoreleasePoolPop(v12);
      }

      if ((sub_1000F7050(a1 + 432, 2, sub_10001E138) & 0x80000000) != 0)
      {
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: CATS Error registering Scan Manager callback\n", "WifiDeviceManagerCatsRegisterClients"}];
        }

        objc_autoreleasePoolPop(v13);
      }

      if (_os_feature_enabled_impl())
      {
        v14 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: CATS %@: Enable Trace deviceManager:%p\n", "WifiDeviceManagerEnableCats", sub_1000095E0(a1), a1}];
        }

        objc_autoreleasePoolPop(v14);
        if (!*(a1 + 441) && *(a1 + 440))
        {
          *(a1 + 441) = 1;
          sub_100008DCC(a1, 7);
        }
      }
    }

    *(a1 + 443) = 0;
    *(a1 + 448) = 0;
    v15 = (a1 + 664);
    *(a1 + 664) = +[NSUserDefaults standardUserDefaults];
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CATSInit userdefaults:%p firstboot:%d", "WifiDeviceManagerCatsInit", a1 + 664, sub_1000551DC()}];
    }

    objc_autoreleasePoolPop(v16);
    if (*v15 && !sub_1000551DC())
    {
      v17 = [*v15 dictionaryForKey:@"WiFiCatsDict"];
      v18 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: CATSInit CatsDict:%p", "WifiDeviceManagerCatsInit", v17}];
      }

      objc_autoreleasePoolPop(v18);
      if (v17)
      {
        valuePtr = 0;
        Value = CFDictionaryGetValue(v17, @"CATS_APP_PRIORITY");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberCharType, &valuePtr);
          v20 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: CATS restore appPolicy (%d)", "WifiDeviceManagerCatsInit", valuePtr}];
          }
        }

        else
        {
          v20 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: CATS restore APPLE80211KEY_CATS_APP_PRIORITY key not found, using default (%d)", "WifiDeviceManagerCatsInit", 0}];
          }
        }

        objc_autoreleasePoolPop(v20);
        v32 = 0;
        v22 = CFDictionaryGetValue(v17, @"CATS_APP_BITMAP");
        if (v22)
        {
          CFNumberGetValue(v22, kCFNumberLongLongType, &v32);
          v23 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: CATS restore appBitMap (0x%llx)", "WifiDeviceManagerCatsInit", v32}];
          }

          objc_autoreleasePoolPop(v23);
          v24 = v32;
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: CATS retore APPLE80211KEY_CATS_APP_BITMAP key not found, using default (0x%llx)", "WifiDeviceManagerCatsInit", 0}];
          }

          objc_autoreleasePoolPop(v25);
          v24 = 0;
        }

        *(a1 + 443) = valuePtr;
        *(a1 + 448) = v24;
        v26 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: CATS restore Updating clients", "WifiDeviceManagerCatsInit"}];
        }

        objc_autoreleasePoolPop(v26);
      }
    }

    v27 = objc_autoreleasePoolPush();
    v28 = off_100298C40;
    if (off_100298C40)
    {
      v29 = *(a1 + 64);
      if (v29)
      {
        v30 = sub_100009664(v29);
        v31 = *(a1 + 64);
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      [v28 WFLog:3 message:{"%s: CATSInit %@: Exit: device:%p deviceManager:%p manager:%p m:%d en:%d\n", "WifiDeviceManagerCatsInit", v30, v31, a1, a2, *(a1 + 440), _os_feature_enabled_impl()}];
    }

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATSInit Invalid deviceManager or manager handle", "WifiDeviceManagerCatsInit"}];
    }

    objc_autoreleasePoolPop(v21);
  }
}

void sub_1000DAD9C(uint64_t a1)
{
  if (a1 && *(a1 + 440))
  {
    v1 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s() CATS Trace: DeInit Enter\n", "WifiDeviceManagerCatsDeInit"}];
    }
  }

  else
  {
    v1 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATSDeInit Invalid deviceManager info", "WifiDeviceManagerCatsDeInit"}];
    }
  }

  objc_autoreleasePoolPop(v1);
}

void sub_1000DAE48(void *a1, void *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if ([a2 mode])
  {
    v7 = sub_10000D83C("WiFiDeviceManagerStartAutoJoinWithParams");
    CFRetain(a1);
    v8 = a1[1117];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000DAF30;
    v9[3] = &unk_1002617E0;
    v9[5] = a3;
    v9[6] = a1;
    v9[4] = v7;
    [v8 performAutoJoinWithParameters:a2 reply:v9];
  }

  else
  {
    sub_100019814(a1, [a2 trigger]);
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000DAF30(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  CFRelease(*(a1 + 48));

  objc_autoreleasePoolPop(v4);
}

void sub_1000DAFA0(const __CFDictionary *a1, const __CFArray *a2)
{
  if (a1 && a2)
  {
    if (sub_10009EB70(a2) && sub_10009EB80(a2) && !CFDictionaryGetValue(a1, @"RSN_IE"))
    {
      sub_10000AD34(a2, @"RSN_IE", 0);
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WPA1 only network but WPA2 property is existing in network profile. Removing WPA2 property for association ", "WiFiDeviceManagerAdjustSecurityTypeForKnownNetwork"}];
      }

      objc_autoreleasePoolPop(v4);
    }

    if (sub_10009DB7C(a2) && sub_100009730(a2) && !CFDictionaryGetValue(a1, @"RSN_IE") && !CFDictionaryGetValue(a1, @"WPA_IE"))
    {
      sub_10000AD34(a2, @"RSN_IE", 0);
      sub_10000AD34(a2, @"WPA_IE", 0);
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s Dynamic WEP but WPA property is existing in network profile. Removing WPA property for association ", "WiFiDeviceManagerAdjustSecurityTypeForKnownNetwork"}];
      }

      objc_autoreleasePoolPop(v5);
    }

    if (sub_10009DB7C(a2) && sub_10009EB70(a2) && !CFDictionaryGetValue(a1, @"WPA_IE"))
    {
      sub_10000AD34(a2, @"WPA_IE", 0);
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WEP only but WPA property is existing in network profile. Removing WPA property for association ", "WiFiDeviceManagerAdjustSecurityTypeForKnownNetwork"}];
      }

      objc_autoreleasePoolPop(v6);
    }

    if (sub_100009730(a2) && CFDictionaryGetValue(a1, @"WPA_IE") && !CFDictionaryGetValue(a1, @"RSN_IE"))
    {
      sub_10000AD34(a2, @"RSN_IE", 0);
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WPA1 only enterprise network but WPA2 property is existing in network profile. Removing WPA2 property for association ", "WiFiDeviceManagerAdjustSecurityTypeForKnownNetwork"}];
      }

      objc_autoreleasePoolPop(v7);
    }

    if (sub_10009EB70(a2) && sub_10009EB80(a2) && sub_10009E148(a2) && !CFDictionaryGetValue(a1, @"WPA_IE"))
    {
      sub_10000AD34(a2, @"WPA_IE", 0);
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WPA3 transition network but WPA1 property is existing in network profile. Removing WPA1 property for association ", "WiFiDeviceManagerAdjustSecurityTypeForKnownNetwork"}];
      }

      objc_autoreleasePoolPop(v8);
    }
  }
}

id sub_1000DB2A4(uint64_t a1)
{
  v1 = [*(a1 + 8936) metric];

  return [v1 copy];
}

id sub_1000DB2D0(uint64_t a1)
{
  v1 = [*(a1 + 8936) statistics];

  return [v1 copy];
}

void sub_1000DB314(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v5 = "allowing";
    if (!a2)
    {
      v5 = "disallowing";
    }

    [off_100298C40 WFLog:3 message:{"%s %s power save", "WiFiDeviceManagerAllowPowerSaveMode", v5}];
  }

  objc_autoreleasePoolPop(v4);
  v6 = *(a1 + 64);

  sub_10006490C(v6, a2);
}

void sub_1000DB3B4(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 3513) = a2;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v5 = "TRUE";
      if (!a2)
      {
        v5 = "FALSE";
      }

      [off_100298C40 WFLog:3 message:{"%s: isOutrankedByCellular=%s", "WiFiDeviceManagerSetSymptomsCellOutrankRecommendation", v5}];
    }

    objc_autoreleasePoolPop(v4);
    v6 = *(a1 + 7480);
    v7 = sub_100006F88(*(a1 + 64));

    [v6 setCellularOutrankingState:a2 != 0 forInterface:v7];
  }

  else
  {
    sub_1001A2E9C();
  }
}

void sub_1000DB48C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: networkQualityDict=%@", "WiFiDeviceManagerNotifyNetworkQualityResults", a2}];
    }

    objc_autoreleasePoolPop(v4);
    v5 = *(a1 + 7480);
    v6 = sub_100006F88(*(a1 + 64));

    [v5 notifyNetworkQualityResults:a2 forInterface:v6];
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null manager", "WiFiDeviceManagerNotifyNetworkQualityResults"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000DB570(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    sub_1001A2FC8();
    return;
  }

  v4 = objc_autoreleasePoolPush();
  if (!a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s dict is NULL", "WiFiDeviceManagerProcessBSPCommand"}];
    }

    objc_autoreleasePoolPop(v4);
    return;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:%d BSPCommand Dictionary %@", "WiFiDeviceManagerProcessBSPCommand", 47355, a2}];
  }

  objc_autoreleasePoolPop(v4);
  valuePtr = 0;
  Value = CFDictionaryGetValue(a2, @"BSP_CommandType");
  if (!Value)
  {
    return;
  }

  CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
  if (valuePtr != 2)
  {
    if (valuePtr == 4)
    {
      v6 = CFDictionaryGetValue(a2, @"BSP_CommandParams");
      v7 = *(a1 + 64);
      v8 = sub_100006F88(v7);
      sub_10001EA10(v7, v8, @"BSP_CommandParams", v6);
    }

    return;
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (!Mutable)
  {
    sub_1001A2F68();
    return;
  }

  v10 = Mutable;
  if (sub_100021394(*(a1 + 64)))
  {
    v31 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s cannot get countryCode", "__WiFiDeviceManagerSendBSPRegulatoryInfo"}];
    }

    goto LABEL_56;
  }

  v11 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v11)
  {
    v31 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s:cannot allocate dictRef", "__WiFiDeviceManagerSendBSPRegulatoryInfo"}];
    }

LABEL_56:
    objc_autoreleasePoolPop(v31);
    v30 = v10;
    goto LABEL_43;
  }

  v12 = v11;
  v36 = 3;
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v36);
  if (!v13)
  {
    v32 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s:cannot allocate eventTypeRef", "__WiFiDeviceManagerSendBSPRegulatoryInfo"}];
    }

    goto LABEL_61;
  }

  CFDictionarySetValue(v12, @"BSP_EventType", v13);
  v14 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v14)
  {
    v32 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s:cannot allocate eventParamsRef", "__WiFiDeviceManagerSendBSPRegulatoryInfo"}];
    }

LABEL_61:
    v15 = 0;
    goto LABEL_64;
  }

  v15 = v14;
  v35 = 0;
  v34 = 1;
  v16 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v16)
  {
    v17 = v16;
    v18 = *(a1 + 64);
    v19 = sub_100006F88(v18);
    v20 = sub_10005B6E4(v18, v19, v17);
    if (v20)
    {
      v21 = v20;
      v22 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Device return error %d for supported channels", "__WiFiDeviceManagerSendBSPRegulatoryInfo", v21}];
      }

      objc_autoreleasePoolPop(v22);
      v23 = 0;
LABEL_36:
      CFRelease(v17);
      goto LABEL_37;
    }

    if (CFArrayGetCount(v17) < 1)
    {
      v25 = 1;
LABEL_32:
      v28 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s:%d countryCode=%@, regulatoryInfo = 0x%llx", "__WiFiDeviceManagerSendBSPRegulatoryInfo", 47334, v10, v25}];
      }

      objc_autoreleasePoolPop(v28);
      v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v34);
      if (v23)
      {
        CFDictionarySetValue(v15, @"BSP_RegulatoryInfo", v23);
        CFDictionarySetValue(v12, @"BSP_EventParams", v15);
        v29 = sub_100009664(*(a1 + 64));
        sub_1000B16DC(v29, v29, a1, v12);
      }

      else
      {
        sub_1001A2F08();
      }

      goto LABEL_36;
    }

    v24 = 0;
    v25 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, v24);
      if (!ValueAtIndex)
      {
        goto LABEL_29;
      }

      v27 = CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL");
      if (!v27 || !CFNumberGetValue(v27, kCFNumberSInt32Type, &v35))
      {
        goto LABEL_29;
      }

      if ((v35 - 50) >= 0xFFFFFFF2)
      {
        break;
      }

      if ((v35 - 166) >= 0xFFFFFFEB)
      {
        v25 |= 0x10uLL;
LABEL_28:
        v34 = v25;
      }

LABEL_29:
      if (CFArrayGetCount(v17) <= ++v24)
      {
        goto LABEL_32;
      }
    }

    v25 |= 2uLL;
    goto LABEL_28;
  }

  v32 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: cannot allocate suppChannelList", "__WiFiDeviceManagerSendBSPRegulatoryInfo"}];
  }

LABEL_64:
  objc_autoreleasePoolPop(v32);
  v23 = 0;
LABEL_37:
  CFRelease(v10);
  CFRelease(v12);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v23)
  {
    v30 = v23;
LABEL_43:
    CFRelease(v30);
  }
}

uint64_t sub_1000DBA84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Sending link status %d", *(a1 + 3497)}];
  }

  objc_autoreleasePoolPop(v2);
  return *(a1 + 3497);
}

id sub_1000DBAE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 9088))
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    if ([*(a1 + 9088) status])
    {
      v5 = @"Settled";
    }

    else
    {
      v5 = @"Unsettled";
    }

    [v4 setObject:v5 forKey:@"description"];
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", objc_msgSend(*(a1 + 9088), "status")), @"status"}];
    [v4 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", objc_msgSend(*(a1 + 9088), "confidence")), @"confidence"}];
    if ([*(a1 + 9088) settledDate])
    {
      [v4 setObject:objc_msgSend(*(a1 + 9088) forKey:{"settledDate"), @"date"}];
    }

    [v3 setObject:v4 forKey:@"settlement"];
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:+[NSNumber numberWithUnsignedShort:](NSNumber forKey:{"numberWithUnsignedShort:", *(a1 + 3408)), @"state"}];
  [v6 setObject:+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate forKey:{"dateWithTimeIntervalSinceReferenceDate:", *(a1 + 3416)), @"startTime"}];
  [v6 setObject:sub_100014038(*(a1 + 3408)) forKey:@"description"];
  [v6 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", -[WiFiUserInteractionMonitor isCarModeActive](+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor, "sharedInstance"), "isCarModeActive")), @"carMode"}];
  [v3 setObject:v6 forKey:@"motion"];

  v7 = sub_10001A904(a1);
  if (v7)
  {
    v8 = v7;
    v9 = objc_alloc_init(NSMutableDictionary);
    v13 = 0;
    v10 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v13];
    if (v13)
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: failed to encode location", "WiFiDeviceManagerCopyMovementStates"}];
      }

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      [v9 setObject:v10 forKey:@"location"];
    }

    [v3 setObject:v9 forKey:@"location"];
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t sub_1000DBD94(uint64_t a1)
{
  v2 = (a1 + 4096);
  if ((sub_1000258E0(a1) & 1) == 0 && v2[1472] != 1 && v2[1473] != 1 && v2[1474] != 1 && v2[1475] != 1 && v2[1476] != 1 && (*(a1 + 176) - 1) >= 2 && (!sub_100025AB8(a1) || !sub_1000C905C(a1)) && *(a1 + 3470) != 1 && !sub_100025A5C(a1) && !sub_100025B90(a1))
  {
    return 1;
  }

  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Rejecting sensing: isSensing:%d carplay:%d faceTime:%d airplayOverInfra:%d coPresence:%d isCharging:%d userMode:%d gameMode:%d\n", sub_1000258E0(a1), v2[1472], v2[1473], v2[1474], v2[1475], *(a1 + 3512), *(a1 + 176), v2[1476]}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_1001A3034();
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t sub_1000DBEF8(uint64_t a1, const void *a2, void *a3, void (*a4)(uint64_t, const void *, void, uint64_t, uint64_t), uint64_t a5)
{
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = -1431655766;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = -1431655766;
  if ((MGGetBoolAnswer() & 1) == 0 || !_os_feature_enabled_impl() || !sub_1000657A8(*(a1 + 64)))
  {
    v9 = 0;
    v10 = 4294963389;
    goto LABEL_37;
  }

  v9 = 0;
  v10 = 4294963396;
  if (a2 && a3)
  {
    v11 = sub_1000657D0(*(a1 + 64));
    v12 = sub_1000657DC(*(a1 + 64));
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: ifName: %@ numReportsRem: %d, expectedTotalReports: %d, sensingParams: %@", "WiFiDeviceManagerSensingEnableAsync", a2, v11, v12, a3}];
    }

    objc_autoreleasePoolPop(v13);
    if (v11 | v12)
    {
      v9 = 0;
      v10 = 37;
      goto LABEL_37;
    }

    v14 = [a3 objectForKeyedSubscript:@"SENSING_PARAMS_SCHEDULE_ONCE_AFTER"];
    v15 = [v14 intValue];
    v16 = [a3 objectForKeyedSubscript:@"SENSING_PARAMS_SCHEDULE_DAILY_AT"];
    v17 = [v16 intValue];
    v18 = [a3 objectForKeyedSubscript:@"SENSING_PARAMS_NUMBER_OF_REPORTS"];
    v19 = [v18 intValue];
    *(v55 + 6) = v19;
    v20 = [v18 intValue];
    v9 = 0;
    *(v51 + 6) = v20;
    if (v14)
    {
      v10 = 0;
      if (v15 == -2)
      {
        goto LABEL_22;
      }

      if (!*(v55 + 6))
      {
        goto LABEL_21;
      }

      v21 = malloc_type_malloc(0x20uLL, 0xE00402064D7F7uLL);
      *v21 = a1;
      *(v21 + 1) = a4;
      *(v21 + 2) = CFRetain(a3);
      *(v21 + 3) = a5;
      v22 = *(a1 + 9104);
      if (v22)
      {
        dispatch_source_cancel(v22);
        dispatch_release(*(a1 + 9104));
        *(a1 + 9104) = 0;
      }

      if (v15 >= 1)
      {
        *(a1 + 9104) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 240));
        CFRetain(a2);
        CFRetain(a3);
        v23 = *(a1 + 9104);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1000DC630;
        handler[3] = &unk_100261808;
        handler[4] = &v54;
        handler[5] = a1;
        handler[6] = a2;
        handler[7] = a3;
        handler[8] = v21;
        dispatch_source_set_event_handler(v23, handler);
        v24 = *(a1 + 9104);
        v25 = dispatch_time(0, 1000000000 * v15);
        dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_activate(*(a1 + 9104));
        v10 = 0;
        goto LABEL_16;
      }

      if (v15)
      {
LABEL_21:
        v9 = 0;
        v10 = 0;
LABEL_22:
        if (!v16)
        {
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      sub_1000657B4(*(a1 + 64));
      v42 = *(v55 + 6) - 1;
      *(v55 + 6) = v42;
      sub_1000657C4(*(a1 + 64), v42);
      v43 = objc_alloc_init(NSDateFormatter);
      [v43 setDateFormat:@"yyyy/MM/dd hh:mm:ss:SSS"];
      [v43 setTimeZone:{+[NSTimeZone localTimeZone](NSTimeZone, "localTimeZone")}];
      if (sub_1000DBD94(a1))
      {
        v10 = sub_100150914(*(a1 + 64));
        context = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v44 = "failed to start";
          if (!v10)
          {
            v44 = "started";
          }

          [off_100298C40 WFLog:3 message:{"%s: One-time sensing data read %s (err: %d) (reads rem: %ld) [%@]", "WiFiDeviceManagerSensingEnableAsync", v44, v10, *(v55 + 6), objc_msgSend(v43, "stringFromDate:", +[NSDate date](NSDate, "date"))}];
        }

        objc_autoreleasePoolPop(context);
      }

      else
      {
        v45 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: rejecting sensing due to on-going high priority event\n", "WiFiDeviceManagerSensingEnableAsync"}];
        }

        objc_autoreleasePoolPop(v45);
        v10 = 16;
      }

      if (!v10)
      {
LABEL_16:
        v9 = 1;
        if (!v16)
        {
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      sub_1000657C4(*(a1 + 64), 0);
      CFRelease(*(v21 + 2));
      free(v21);
      v9 = 0;
      if (!v16)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v10 = 0;
      if (!v16)
      {
        goto LABEL_37;
      }
    }

LABEL_23:
    if (v17 != -2 && *(v51 + 6))
    {
      v26 = *(a1 + 9112);
      if (v26)
      {
        dispatch_source_cancel(v26);
        dispatch_release(*(a1 + 9112));
        *(a1 + 9112) = 0;
      }

      if (v17 != -1)
      {
        *(a1 + 9112) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 240));
        CFRetain(a2);
        CFRetain(a3);
        v27 = *(a1 + 9112);
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1000DC818;
        v48[3] = &unk_100261830;
        v48[4] = a3;
        v48[5] = &v50;
        v48[6] = a1;
        v48[7] = a2;
        v48[8] = a3;
        dispatch_source_set_event_handler(v27, v48);
        v28 = [+[NSCalendar currentCalendar](NSCalendar startOfDayForDate:"startOfDayForDate:", +[NSDate date]];
        [(NSDate *)v28 timeIntervalSince1970];
        v30 = v29;
        [+[NSDate date](NSDate timeIntervalSince1970];
        v32 = v31;
        v33 = [objc_msgSend(a3 objectForKeyedSubscript:{@"SENSING_PARAMS_COMMENT", "isEqualToString:", @"automatic collection scheduled"}];
        v34 = v30 + 86400.0;
        if (v33)
        {
          v35 = v34 - v32 + v17 + 86400.0;
        }

        else
        {
          v35 = v34 - v32 + v17;
        }

        if (v33)
        {
          v36 = 604800000000000;
        }

        else
        {
          v36 = 86400000000000;
        }

        v37 = *(a1 + 9112);
        v38 = dispatch_time(0, (v35 * 1000000000.0));
        dispatch_source_set_timer(v37, v38, v36, 0);
        dispatch_activate(*(a1 + 9112));
        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: midnightOfToday %@, midnightOfTomorrow %f, now %f, scheduledStartInSecondsAfterMidnight %d, dispatchTimerStart %f, interval %llu", "WiFiDeviceManagerSensingEnableAsync", v28, *&v34, *&v32, v17, *&v35, v36}];
        }

        objc_autoreleasePoolPop(v39);
      }
    }
  }

LABEL_37:
  if (a4 && (v9 & 1) == 0)
  {
    v40 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Invoking WiFiClientSensingCallback", "WiFiDeviceManagerSensingEnableAsync"}];
    }

    objc_autoreleasePoolPop(v40);
    a4(a1, a2, 0, v10, a5);
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  return v10;
}

void sub_1000DC5EC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000DC630(uint64_t a1)
{
  sub_1000657B4(*(*(a1 + 40) + 64));
  v2 = *(a1 + 40);
  sub_1000657C4(*(v2 + 64), --*(*(*(a1 + 32) + 8) + 24));
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy/MM/dd hh:mm:ss:SSS"];
  [v3 setTimeZone:{+[NSTimeZone localTimeZone](NSTimeZone, "localTimeZone")}];
  if (!sub_1000DBD94(*(a1 + 40)))
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: rejecting sensing due to on-going high priority event\n", "WiFiDeviceManagerSensingEnableAsync_block_invoke"}];
    }

    objc_autoreleasePoolPop(v10);

    goto LABEL_12;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = sub_100150914(*(*(a1 + 40) + 64));
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (v7)
    {
      v9 = "failed to start";
    }

    else
    {
      v9 = "started";
    }

    [off_100298C40 WFLog:3 message:{"%s: One-time delayed sensing data read %s (err: %d) (reads rem: %ld) [%@]", "WiFiDeviceManagerSensingEnableAsync_block_invoke", v9, v7, *(*(*(a1 + 32) + 8) + 24), objc_msgSend(v3, "stringFromDate:", +[NSDate date](NSDate, "date"))}];
  }

  objc_autoreleasePoolPop(v8);

  if (v7)
  {
LABEL_12:
    sub_1000657C4(*(*(a1 + 40) + 64), 0);
    CFRelease(*(*(a1 + 64) + 16));
    free(*(a1 + 64));
  }

  CFRelease(*(a1 + 48));
  v11 = *(a1 + 56);

  CFRelease(v11);
}

void sub_1000DC818(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"SENSING_PARAMS_COMMENT", "isEqualToString:", @"automatic collection scheduled"}];
  v3 = *(a1 + 48);
  if (v2 && !*(v3 + 3512))
  {
    return;
  }

  sub_1000657B4(*(v3 + 64));
  v4 = *(a1 + 48);
  sub_1000657C4(*(v4 + 64), --*(*(*(a1 + 40) + 8) + 24));
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy/MM/dd hh:mm:ss:SSS"];
  [v5 setTimeZone:{+[NSTimeZone localTimeZone](NSTimeZone, "localTimeZone")}];
  if (sub_1000DBD94(*(a1 + 48)))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = sub_100150914(*(*(a1 + 48) + 64));
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (v8)
      {
        v10 = "failed to start";
      }

      else
      {
        v10 = "started";
      }

      [off_100298C40 WFLog:3 message:{"%s: Daily sensing data read %s (err: %d) (reads rem: %ld) [%@]", "WiFiDeviceManagerSensingEnableAsync_block_invoke_2", v10, v8, *(*(*(a1 + 40) + 8) + 24), objc_msgSend(v5, "stringFromDate:", +[NSDate date](NSDate, "date"))}];
    }

    objc_autoreleasePoolPop(v9);

    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: rejecting sensing due to on-going high priority event\n", "WiFiDeviceManagerSensingEnableAsync_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v11);
  }

  sub_1000657C4(*(*(a1 + 48) + 64), 0);
LABEL_15:
  CFRelease(*(a1 + 56));
  v12 = *(a1 + 64);

  CFRelease(v12);
}

void sub_1000DCA30(uint64_t a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100006F88(*(a1 + 64));
  v6 = sub_1000078F4(*(a1 + 64), v5);
  v7 = objc_autoreleasePoolPush();
  v8 = off_100298C40;
  if (off_100298C40)
  {
    v9 = sub_10000A878(a2);
    [v8 WFLog:3 message:{"[NWTRANSIT]: %s: topNetwork: %@, current: %@", "__WiFiDeviceManagerTransitionToColocatedNetwork", v9, sub_10000A878(v6)}];
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    if (sub_10000A878(v6))
    {
      if (CFEqual(v6, a2))
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: no need for transition...", "__WiFiDeviceManagerTransitionToColocatedNetwork"}];
        }

        objc_autoreleasePoolPop(v10);
      }

      else
      {
        v11 = malloc_type_malloc(0x38uLL, 0x10E00402A548A24uLL);
        *(v11 + 24) = 0u;
        v12 = (v11 + 24);
        *(v11 + 40) = 0u;
        *v11 = a1;
        *(v11 + 1) = sub_1000F40F4;
        *(v11 + 2) = 0;
        *(v11 + 8) = 1013;
        sub_1000CC2F4(a1, v6);
        *(a1 + 3808) = 1;
        if (!sub_1000DD064(a1, v6) || *(a1 + 3792) != 1)
        {
          goto LABEL_23;
        }

        v13 = sub_10000A540(v6, @"COLOCATED_NETWORK_SCOPE_ID");
        v23 = sub_10000A540(a2, @"COLOCATED_NETWORK_SCOPE_ID");
        v14 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: SCOPE ID for %@ = %@ ", "__WiFiDeviceManagerMatchColocatedScopeID", sub_10000A878(v6), v13}];
        }

        objc_autoreleasePoolPop(v14);
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: SCOPE ID for %@ = %@ ", "__WiFiDeviceManagerMatchColocatedScopeID", sub_10000A878(a2), v23}];
        }

        objc_autoreleasePoolPop(v15);
        v12 = (v11 + 24);
        if (v13 && v23 && [v13 isEqualToString:v23])
        {
          v16 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: SCOPE ID Matches, Debounce the Link"}];
          }

          objc_autoreleasePoolPop(v16);
          v17 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"[NWTRANSIT] %s: Link down will be debounced", "__WiFiDeviceManagerTransitionToColocatedNetwork"}];
          }

          objc_autoreleasePoolPop(v17);
        }

        else
        {
LABEL_23:
          v18 = objc_autoreleasePoolPush();
          v19 = off_100298C40;
          if (off_100298C40)
          {
            v20 = sub_10000A878(v6);
            [v19 WFLog:3 message:{"[NWTRANSIT]: %s: Disconnect from '%@', attempting network transition to '%@'", "__WiFiDeviceManagerTransitionToColocatedNetwork", v20, sub_10000A878(v6)}];
          }

          objc_autoreleasePoolPop(v18);
          v21 = sub_100006F88(*(a1 + 64));
          sub_1000B9DC8(a1, v21, 1013, "__WiFiDeviceManagerTransitionToColocatedNetwork", 48973);
        }

        v22 = sub_100061A24(*(a1 + 64), v5, a2, 0, sub_1000F838C, v11, 1013);
        if (v22)
        {
          [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
          *(a1 + 3808) = 0;
          if (*v12)
          {
            CFRelease(*v12);
          }

          free(v11);
        }
      }
    }

    CFRelease(v6);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1000DCDF8(uint64_t a1, const __CFDictionary *a2)
{
  HIDWORD(v29[0]) = 0;
  if (!a1 || !a2)
  {
    goto LABEL_32;
  }

  v4 = (a1 + 64);
  v5 = sub_100006F88(*(a1 + 64));
  Value = CFDictionaryGetValue(a2, @"COLOCATED_NETWORK_GROUP");
  *(a1 + 3784) = Value;
  if (Value)
  {
    Count = CFArrayGetCount(Value);
  }

  else
  {
    Count = 0;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v26 = "WiFiDeviceManagerSetColocatedNetworks";
    v27 = Count;
    [off_100298C40 WFLog:3 message:"[NWTRANSIT]: %s: Colocated Network Count = %ld "];
  }

  objc_autoreleasePoolPop(v8);
  if (Count <= 1)
  {
    sub_1001A30B8(a1, a1 + 64, v9, v10, v11, v12, v13, v14, v26, v27, SHIDWORD(v27), v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6]);
  }

  v15 = sub_1000078F4(*v4, v5);
  if (v15)
  {
    v16 = v15;
    if (sub_10000A540(v15, @"COLOCATED_NETWORK_SCOPE_ID"))
    {
      v17 = 1;
    }

    else
    {
      v19 = *(a1 + 3800);
      sub_10000AD34(v16, @"COLOCATED_NETWORK_SCOPE_ID", v19);
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: Retrieved ColocatedScopeId for %@ - '%@'", "WiFiDeviceManagerSetColocatedNetworks", sub_10000A878(v16), v19}];
      }

      objc_autoreleasePoolPop(v20);
      v17 = v19 != 0;
    }

    v21 = sub_1000DD064(a1, v16);
    if (v17 && v21 && Count >= 2)
    {
      v22 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: Colocated Group already present", "WiFiDeviceManagerSetColocatedNetworks"}];
      }

      objc_autoreleasePoolPop(v22);
LABEL_29:
      v25 = CFDictionaryGetValue(a2, @"COLOCATED_NETWORK_GROUP_STATUS");
      if (v25)
      {
        CFNumberGetValue(v25, kCFNumberIntType, v29 + 4);
        *(a1 + 3792) = BYTE4(v29[0]);
        if (CFDictionaryGetValue(a2, @"COLOCATED_NETWORK_GROUP_SCOPE_ID"))
        {
          sub_1000CC2F4(a1, v16);
          return;
        }
      }

      goto LABEL_32;
    }

    v23 = *(a1 + 3784);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 3784) = 0;
    }

    v24 = CFDictionaryGetValue(a2, @"COLOCATED_NETWORK_GROUP");
    *(a1 + 3784) = v24;
    if (v24)
    {
      CFRetain(v24);
      goto LABEL_29;
    }

LABEL_32:
    sub_1001A3288(a1);
    return;
  }

  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Not Associated, Bail out"}];
  }

  objc_autoreleasePoolPop(v18);
}

const __CFArray *sub_1000DD064(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 3784);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3784), v7);
        if (ValueAtIndex)
        {
          if (sub_10009F648(a2, ValueAtIndex))
          {
            break;
          }
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1000DD0E4(uint64_t result)
{
  if (result)
  {
    return sub_1000657F4(*(result + 64));
  }

  return result;
}

uint64_t sub_1000DD0F4(uint64_t result)
{
  if (result)
  {
    return sub_100064D00(*(result + 64));
  }

  return result;
}

void sub_1000DD104(uint64_t a1, int a2)
{
  if (*(a1 + 64))
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v5 = "true";
      if (!a2)
      {
        v5 = "false";
      }

      [off_100298C40 WFLog:4 message:{"%s: iOS profile config for adaptive11r is set to %s", "WiFiDeviceManagerSetAdaptive11rOverride", v5}];
    }

    objc_autoreleasePoolPop(v4);
    v6 = *(a1 + 64);

    sub_100064D0C(v6, a2);
  }
}

void sub_1000DD1BC(uint64_t a1, const void *a2, int a3)
{
  if (!a1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_8;
    }

    v11 = "WiFiDeviceManagerEvaluateStandaloneNetworkForUserPrompts";
    v9 = "%s: null device manager";
    goto LABEL_16;
  }

  if (![+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
  {
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_8;
    }

    v9 = "suppressing standalone 6G notifications as setup is not complete";
LABEL_16:
    v10 = 4;
    goto LABEL_7;
  }

  v6 = sub_1000DD2D4(a1, a2);
  if (!a3 || v6)
  {
    return;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = off_100298C40;
  if (off_100298C40)
  {
    v11 = "WiFiDeviceManagerEvaluateStandaloneNetworkForUserPrompts";
    v12 = a2;
    v9 = "%s: no colocated candidate found for %@";
    v10 = 3;
LABEL_7:
    [v8 WFLog:v10 message:{v9, v11, v12}];
  }

LABEL_8:

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1000DD2D4(uint64_t a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a2)
  {
    sub_1001A33A4();
LABEL_36:
    v8 = 0;
    v10 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_31;
  }

  if (!a1)
  {
    sub_1001A3338();
    goto LABEL_36;
  }

  v5 = sub_1000DD6A8(a1);
  v6 = v5;
  if (v5 && CFArrayGetCount(v5))
  {
    v7 = sub_1000DD7BC(v6);
    if (v7)
    {
      v8 = v7;
      v9 = sub_1000C5420(a1);
      if (v9)
      {
        v10 = v9;
        [objc_msgSend(*(a1 + 8936) "knownNetworks")];
        v11 = CWFColocatedNetworksMatchingScanResult();
        if (v11)
        {
          v30 = a2;
          v32 = v8;
          v33 = v6;
          v34 = v4;
          v12 = [[WiFiColocatedNetworkManager alloc] initWithNetwork:v10 colocatedNetworks:v11];
          v13 = [(NSArray *)[(WiFiColocatedNetworkManager *)v12 colocatedNetworks] copy];
          context = objc_autoreleasePoolPush();
          v31 = v12;
          if (v13 && (v37 = 0u, v38 = 0u, v35 = 0u, v36 = 0u, (v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16]) != 0))
          {
            v15 = v14;
            Mutable = 0;
            v17 = *v36;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v36 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = sub_1000A2E44(*(*(&v35 + 1) + 8 * i));
                if (v19)
                {
                  v20 = v19;
                  if (!Mutable)
                  {
                    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                  }

                  CFArrayAppendValue(Mutable, v20);
                  CFRelease(v20);
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
            }

            while (v15);
          }

          else
          {
            Mutable = 0;
          }

          objc_autoreleasePoolPop(context);

          if ([objc_msgSend(v10 "channel")])
          {
            v21 = sub_10000A878(v30);
            if (v21)
            {
              v22 = v21;
              if (CFArrayGetCount(Mutable) >= 1)
              {
                v23 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v23);
                  sub_10000AD34(ValueAtIndex, @"LimitedCompatibilityNetworkName", v22);
                  ++v23;
                }

                while (v23 < CFArrayGetCount(Mutable));
              }
            }
          }

          v25 = v31;
          sub_1000DD878(a1, v30, v31);
          v26 = 1;
          v6 = v33;
          v4 = v34;
          v8 = v32;
          if (!v33)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        v28 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no candidates found", "WiFiDeviceManagerAttemptToShowColocatedJoinNotification"}];
        }
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: __WiFiDeviceManagerCopyCurrentCoreWiFiScanResult() returned NULL", "WiFiDeviceManagerAttemptToShowColocatedJoinNotification"}];
        }

        v10 = 0;
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: __WiFiDeviceManagerCreateCoreWiFiScanResultsFromNetworks() returned NULL", "WiFiDeviceManagerAttemptToShowColocatedJoinNotification"}];
      }

      v10 = 0;
      v8 = 0;
    }

    objc_autoreleasePoolPop(v28);
    v26 = 0;
    v25 = 0;
    Mutable = 0;
LABEL_28:
    CFRelease(v6);
    goto LABEL_29;
  }

  sub_1001A32CC();
  v8 = 0;
  v10 = 0;
  Mutable = 0;
  v25 = 0;
  v26 = 0;
  if (v6)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_31:

  objc_autoreleasePoolPop(v4);
  return v26;
}

uint64_t *sub_1000DD6A8(uint64_t *a1)
{
  v1 = a1;
  if (a1)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v3 = Mutable;
      sub_1000616F4(v1[8]);
      if (CFArrayGetCount(v3))
      {
        v1 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (CFArrayGetCount(v3) >= 1)
        {
          v4 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
            v6 = sub_10000AD2C(kCFAllocatorDefault, ValueAtIndex);
            if (v6)
            {
              v7 = v6;
              CFArrayAppendValue(v1, v6);
              CFRelease(v7);
            }

            ++v4;
          }

          while (v4 < CFArrayGetCount(v3));
        }
      }

      else
      {
        sub_1001A3410();
        v1 = 0;
      }

      CFRelease(v3);
    }

    else
    {
      sub_1001A347C();
      return 0;
    }
  }

  else
  {
    sub_1001A34E8();
  }

  return v1;
}

id sub_1000DD7BC(const __CFArray *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1 && CFArrayGetCount(a1) >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      if (ValueAtIndex)
      {
        v6 = sub_10001A9BC(ValueAtIndex);
        if (v6)
        {
          v7 = v6;
          if (!v4)
          {
            v4 = objc_alloc_init(NSMutableArray);
          }

          [v4 addObject:v7];
        }
      }

      ++v3;
    }

    while (CFArrayGetCount(a1) > v3);
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_1000DD878(void *a1, const void *a2, const void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_1001A37C4();
    goto LABEL_15;
  }

  if (![+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
  {
    sub_1001A3554();
    goto LABEL_15;
  }

  if (!a2)
  {
    sub_1001A3758();
    goto LABEL_15;
  }

  if (!a3)
  {
    sub_1001A36EC();
    goto LABEL_15;
  }

  v7 = sub_10000A878(a2);
  if (!v7)
  {
    sub_1001A3680();
    goto LABEL_15;
  }

  v8 = v7;
  CFRetain(a2);
  CFRetain(a3);
  a1[1143] = a2;
  a1[501] = a3;
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: dispatching user assisted colocated network join alert for candidate/s", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v9);
  values = v8;
  keys = @"SSID_STR";
  v10 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v10)
  {
    sub_1001A3620();
    goto LABEL_15;
  }

  v11 = v10;
  v12 = sub_100006F88(a1[8]);
  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: type=%@(%d)", "__WiFiDeviceManagerDispatchStandaloneLimitedNetworkNotification", sub_1000591D8(0xDu), 13}];
  }

  objc_autoreleasePoolPop(v13);
  v14 = a1[500];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14(a1, v12, 13, 0, a3, v11, a1[502]);
  if (!v15)
  {
    sub_1001A35AC();
LABEL_23:
    sub_1000DE9F4(a1, "__WiFiDeviceManagerDispatchStandaloneLimitedNetworkNotification");
    goto LABEL_14;
  }

  v16 = v15;
  sub_100099C90(v15, sub_100194B10, a1);
  sub_1000A5274(v16, a1[30]);
  a1[28] = CFRetain(v16);
  sub_1000ED650(a1, @"autoJoinWaiting", 0, 0);
LABEL_14:
  CFRelease(v11);
LABEL_15:
  objc_autoreleasePoolPop(v6);
}

void sub_1000DDAE0(void *a1, const __CFString *a2)
{
  if (!a1)
  {
    sub_1001A3988();
LABEL_24:
    v17 = 0;
    goto LABEL_21;
  }

  v4 = a1 + 8;
  v5 = sub_100006F88(a1[8]);
  v6 = sub_100007D90(a1, v5, 1);
  if (!v6)
  {
    sub_1001A391C();
    goto LABEL_24;
  }

  v7 = v6;
  v8 = *v4;
  v9 = sub_10014FED8();
  v10 = v9;
  if (v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [(__CFArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = sub_10000A878(v15);
          if (CFStringCompare(v16, a2, 0) == kCFCompareEqualTo)
          {
            v18 = sub_10000A878(v7);
            if (v18)
            {
              sub_10000AD34(v15, @"LimitedCompatibilityNetworkName", v18);
            }

            v19 = sub_10001A9BC(v15);
            v17 = [[NSArray alloc] initWithObjects:{v19, 0}];
            v20 = sub_1000C5420(a1);
            if (v20)
            {
              v21 = [[WiFiColocatedNetworkManager alloc] initWithNetwork:v20 colocatedNetworks:v17];
              sub_1000DD878(a1, v7, v21);
            }

            goto LABEL_19;
          }
        }

        v12 = [(__CFArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    sub_1001A3830(a2);
  }

  sub_1001A3894(a2, v4, a1);
  v17 = 0;
LABEL_19:
  CFRelease(v7);
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_21:
}

void sub_1000DDD08(int a1, int a2, CFArrayRef theArray, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a6)
  {
    sub_1001A3ACC();
    goto LABEL_17;
  }

  if (!theArray || !CFArrayGetCount(theArray))
  {
    sub_1001A3A60();
LABEL_17:
    v15 = 0;
    v11 = 0;
    v9 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v8 = sub_100006F88(a6[8]);
  v9 = sub_100007D90(a6, v8, 1);
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v11 = [[NSArray alloc] initWithObjects:{ValueAtIndex, CFArrayGetValueAtIndex(theArray, 1), 0}];
  v12 = CFArrayGetValueAtIndex(theArray, 0);
  v13 = CFArrayGetValueAtIndex(theArray, 1);
  v14 = sub_1000C5420(a6);
  if (v14)
  {
    v15 = [[WiFiColocatedNetworkManager alloc] initWithNetwork:v14 colocatedNetworks:v11];
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: simulating colocated join notification for %@", "__WiFiDeviceManagerSimulatedColocatedJoinNotificationScanCallback", -[WiFiColocatedNetworkManager colocatedNetworks](v15, "colocatedNetworks")}];
    }

    objc_autoreleasePoolPop(v16);
    v17 = sub_10000A878(v9);
    if (v17)
    {
      v18 = v17;
      sub_10000AD34(v12, @"LimitedCompatibilityNetworkName", v17);
      sub_10000AD34(v13, @"LimitedCompatibilityNetworkName", v18);
    }

    sub_1000DD878(a6, v9, v15);
  }

  else
  {
    sub_1001A39F4();
    v15 = 0;
  }

LABEL_10:

  if (v9)
  {

    CFRelease(v9);
  }
}

void sub_1000DDF10(uint64_t a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = sub_10000A878(a2);
    if (v5)
    {
      v6 = v5;
      if (sub_10000A540(a2, @"OriginatingApp"))
      {
        CFRetain(a2);
        *(a1 + 6312) = a2;
        v7 = sub_100177FFC(a2);
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: dispatching user forced association notify alert for network='%@'", "WiFiDeviceManagerDispatchAppJoinNotification", a2}];
        }

        objc_autoreleasePoolPop(v8);
        [*(a1 + 6776) dispatchAccessoryJoinAlertForNetwork:v6 unsecured:v7 != 0];
      }

      else
      {
        sub_1001A3B38();
      }
    }

    else
    {
      sub_1001A3BA4();
    }
  }

  else
  {
    sub_1001A3C10();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1000DE018(uint64_t a1)
{
  if ([+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
  {
    sub_1001A3DC0();
    v10 = 0;
    v2 = 0;
    goto LABEL_17;
  }

  v2 = sub_1000C5420(a1);
  if (!v2)
  {
    sub_1001A3D54();
LABEL_23:
    v10 = 0;
    goto LABEL_17;
  }

  v10 = sub_1000DE1B8(a1);
  if (!v10)
  {
    sub_1001A3CE8();
    goto LABEL_23;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = [objc_msgSend(v2 "channel")];
    if (v5 == 3)
    {
      CFDictionarySetValue(v4, @"infraBand", @"6");
      if ([(CFDictionaryRef *)v10 isStandalone6G])
      {
        v9 = kCFBooleanTrue;
      }

      else
      {
        v9 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v4, @"isSplitSSID", v9);
      v6 = @"suppressedBanner";
      v8 = v4;
      v7 = kCFBooleanTrue;
    }

    else
    {
      if (v5 == 2)
      {
        v6 = @"infraBand";
        v7 = @"5";
      }

      else
      {
        if (v5 != 1)
        {
LABEL_16:
          sub_100057634(@"com.apple.wifi.setup", v4);
          CFRelease(v4);
          goto LABEL_17;
        }

        v6 = @"infraBand";
        v7 = @"2";
      }

      v8 = v4;
    }

    CFDictionarySetValue(v8, v6, v7);
    goto LABEL_16;
  }

  sub_1001A3C7C();
LABEL_17:
}

CFDictionaryRef *sub_1000DE1B8(uint64_t a1)
{
  v2 = sub_100009664(*(a1 + 64));
  result = sub_100007D90(a1, v2, 1);
  if (result)
  {
    v4 = result;
    v5 = sub_10001B368(result);
    CFRelease(v4);
    return v5;
  }

  return result;
}

void sub_1000DE20C(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a1[501];
  v6 = sub_1000A5008(a2);
  v7 = sub_1000A2E44([v5 retrieveNextCandidate]);
  v8 = objc_autoreleasePoolPush();
  if (v7)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: ResponseType=%@", "__WiFiDeviceManagerProcessColocatedJoinNotification", sub_1000A5484(v6)}];
    }

    objc_autoreleasePoolPop(v8);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      sub_1001A4064();
      goto LABEL_17;
    }

    v10 = Mutable;
    CFDictionarySetValue(Mutable, @"BannerType", @"limitednetworkjoin");
    if (v6 - 2 >= 2)
    {
      if (v6 == 1)
      {
        CFDictionarySetValue(v10, @"UserAction", @"join");
        v11 = sub_100009664(a2);
        if (v11)
        {
          Value = CFDictionaryGetValue(v11, @"SSID_STR");
          if (Value)
          {
            v13 = Value;
            v14 = sub_1000DE52C(a1, Value);
            if (v14)
            {
              v15 = sub_100022854(v14, [v14 properties]);
              if (v15)
              {
                v16 = v15;
                if (sub_10009F2A4(v15))
                {
                  v17 = sub_10002A1CC(v16);
                  if (!v17)
                  {
                    sub_1001A3E2C(v13);
                    goto LABEL_16;
                  }

                  v18 = v17;
                  sub_10009FBF4(v7, v17);
                }

                else
                {
                  v18 = 0;
                }

                CFRelease(v16);
                v19 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: disabling device manager", "__WiFiDeviceManagerProcessColocatedJoinNotification"}];
                }

                objc_autoreleasePoolPop(v19);
                sub_1000BCCD4(a1);
                CFRetain(v7);
                a1[1142] = v7;
                v20 = a1[30];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1000DE6CC;
                block[3] = &unk_10025EE08;
                block[4] = a1;
                block[5] = v7;
                dispatch_async(v20, block);
                sub_100057634(@"com.apple.wifi.6eNotification", v10);
                if (v18)
                {
                  CFRelease(v18);
                }

                goto LABEL_16;
              }

              sub_1001A3E9C(v13);
            }

            else
            {
              sub_1001A3F0C(v13);
            }
          }

          else
          {
            sub_1001A3F7C();
          }
        }

        else
        {
          sub_1001A3FE8(v7);
        }

LABEL_16:
        CFRelease(v10);
LABEL_17:
        CFRelease(v7);
        goto LABEL_18;
      }
    }

    else
    {
      CFDictionarySetValue(v10, @"UserAction", @"dismissed");
    }

    sub_100057634(@"com.apple.wifi.6eNotification", v10);
    goto LABEL_16;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Could not create WiFiNetworkRef from scan result"];
  }

  objc_autoreleasePoolPop(v8);
LABEL_18:
  if (!a1[1142])
  {
    sub_1000DE9F4(a1, "__WiFiDeviceManagerProcessColocatedJoinNotification");
  }

  objc_autoreleasePoolPop(v4);
}

void *sub_1000DE52C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a1)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiDeviceManagerFindKnownNetworkMatchingNetworkName"}];
    }

    goto LABEL_17;
  }

  v5 = [objc_msgSend(*(a1 + 8936) "knownNetworks")];
  if (!v5)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: known network profiles is nil", "__WiFiDeviceManagerFindKnownNetworkMatchingNetworkName"}];
    }

LABEL_17:
    objc_autoreleasePoolPop(v13);
    goto LABEL_11;
  }

  v6 = v5;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  v9 = *v15;
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v14 + 1) + 8 * v10);
    if ([objc_msgSend(v11 "networkName")])
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  objc_autoreleasePoolPop(v4);
  return v11;
}

uint64_t sub_1000DE6CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100006F88(*(v2 + 64));
  v4 = *(a1 + 40);

  return sub_1000C9DD4(v2, v3, v4, 0, 0, sub_1000DE734, 0, 1026);
}

void sub_1000DE734(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 4008);
  v10 = *(a1 + 9136);
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: error %d reqInfo %@", "__WiFiDeviceManagerColocatedJoinAssociationCallback", a5, a4}];
  }

  objc_autoreleasePoolPop(v11);
  v12 = objc_autoreleasePoolPush();
  if (!v10)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: join candidate is null", "__WiFiDeviceManagerColocatedJoinAssociationCallback"}];
    }

    objc_autoreleasePoolPop(v12);
    goto LABEL_15;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: enabling device manager", "__WiFiDeviceManagerColocatedJoinAssociationCallback"}];
  }

  objc_autoreleasePoolPop(v12);
  sub_1000329B4(a1);
  if (a5)
  {
    if (sub_10009F2A4(v10))
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: removing password for %@ due to failed association", "__WiFiDeviceManagerColocatedJoinAssociationCallback", v10}];
      }

      objc_autoreleasePoolPop(v13);
      sub_10009FCF4(v10);
    }

    goto LABEL_12;
  }

  v14 = sub_10000A878(a3);
  v15 = sub_10000A878(v10);
  if (CFStringCompare(v14, v15, 0))
  {
LABEL_12:
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: launching settings to complete join for %@", "__WiFiDeviceManagerColocatedJoinAssociationCallback", v10}];
    }

    objc_autoreleasePoolPop(v16);
    sub_1000EC328(0, v10);
    goto LABEL_15;
  }

  sub_100159BD0(*(a1 + 6872), a3, 0x12);
  if ([v9 numberOfCandidates])
  {
    v17 = sub_1000A2E44([v9 retrieveNextCandidate]);
    if (v17)
    {
      v18 = v17;
      if (sub_10009F2A4(v17))
      {
        v19 = sub_10002A1CC(*(a1 + 9144));
        if (!v19)
        {
          sub_1001A40D0((a1 + 9144));
          goto LABEL_24;
        }

        v20 = v19;
        sub_10009FBF4(v18, v19);
        CFRelease(v20);
      }

      CFRetain(v18);
      *(a1 + 9136) = v18;
      CFRelease(v10);
      v21 = *(a1 + 240);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F85B0;
      block[3] = &unk_10025EE08;
      block[4] = v18;
      block[5] = a1;
      dispatch_async(v21, block);
LABEL_24:
      CFRelease(v18);
      return;
    }

    sub_1001A4144();
  }

LABEL_15:

  sub_1000DE9F4(a1, "__WiFiDeviceManagerColocatedJoinAssociationCallback");
}

void sub_1000DE9F4(void *a1, uint64_t a2)
{
  v4 = a1[1142];
  if (v4)
  {
    CFRelease(v4);
    a1[1142] = 0;
  }

  v5 = a1[1143];
  if (v5)
  {
    CFRelease(v5);
    a1[1143] = 0;
  }

  v6 = a1[501];
  if (v6)
  {
    CFRelease(v6);
    a1[501] = 0;
  }

  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: colocated join notification complete", a2}];
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1000DEAB0(void *a1, const void *a2, CFTypeRef cf1, const void *a4)
{
  if (CFEqual(cf1, @"IO80211InterfaceBGScanParams"))
  {
    v8 = (a1 + 693);
    v9 = a1[693];
    if (!v9)
    {
LABEL_4:
      *v8 = CFRetain(a4);
      goto LABEL_5;
    }

LABEL_3:
    CFRelease(v9);
    *v8 = 0;
    goto LABEL_4;
  }

  if (CFEqual(cf1, @"IO80211InterfaceBGDynamicProfileParams"))
  {
    v8 = (a1 + 694);
    v9 = a1[694];
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_5:
  v10 = a1[8];

  return sub_10001EA10(v10, a2, cf1, a4);
}

uint64_t sub_1000DEB6C(CFMutableArrayRef *a1, const void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_1001A4274();
LABEL_46:
    v27 = 4294963396;
    goto LABEL_42;
  }

  if (!a2)
  {
    sub_1001A4208();
    goto LABEL_46;
  }

  if (!a3)
  {
    sub_1001A419C();
    goto LABEL_46;
  }

  v7 = +[NSMutableDictionary dictionary];
  v32 = a2;
  v33 = v6;
  v30 = a3;
  v31 = a1;
  if ([a3 modifyMap])
  {
    v29 = v7;
    v8 = +[NSMutableArray array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [a3 channels];
    v9 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          v49[0] = @"CHANNEL";
          v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 channel]);
          v49[1] = @"CHANNEL_FLAGS";
          v50[0] = v14;
          v50[1] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 flags]);
          [v8 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v50, v49, 2)}];
        }

        v10 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v10);
    }

    v7 = v29;
    [v29 setObject:v8 forKeyedSubscript:@"SCAN_CHANNELS"];
    a2 = v32;
    v6 = v33;
  }

  if (([a3 modifyMap] & 4) != 0)
  {
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", objc_msgSend(a3, "cacheEnabled")), @"BGSCAN_CACHE"}];
  }

  if (([a3 modifyMap] & 8) != 0)
  {
    [v7 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", objc_msgSend(a3, "cacheRollover")), @"BGSCAN_CACHE_WSB_ROLLOVER"}];
  }

  if (![v7 count])
  {
    if (([a3 modifyMap] & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  sub_1000D02D0(a1, v7, 0);
  if (([a3 modifyMap] & 2) != 0)
  {
LABEL_21:
    v15 = +[NSMutableSet set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obja = [a3 networks];
    v16 = [obja countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(obja);
          }

          v20 = *(*(&v36 + 1) + 8 * j);
          v21 = +[NSMutableDictionary dictionary];
          [v21 setObject:objc_msgSend(v20 forKeyedSubscript:{"BSSID"), @"BSSID"}];
          [v21 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(v20, "channel"), "channel")), @"CHANNEL"}];
          [v21 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v20, "channel"), "flags")), @"CHANNEL_FLAGS"}];
          if ([v20 entry])
          {
            [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ENTRY_NETWORK"];
          }

          if ([v20 exit])
          {
            [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:@"EXIT_NETWORK"];
          }

          v22 = sub_10000AD2C(kCFAllocatorDefault, v21);
          if (v22)
          {
            v23 = v22;
            sub_10000AD34(v22, @"forceBGScanParamsCompare", kCFBooleanTrue);
            [v15 addObject:v23];
            CFRelease(v23);
          }
        }

        v17 = [obja countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v17);
    }

    v24 = [v15 allObjects];
    a1 = v31;
    sub_1000C2850(v31, v24, 0);
    a2 = v32;
    v6 = v33;
    a3 = v30;
  }

  sub_1000C0CA0(a1);
LABEL_36:
  if (([a3 modifyMap] & 0x10) != 0)
  {
    v46[0] = @"IO80211InterfaceBGScanDynamicProfileStartTime";
    v47[0] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 scanFrequency]);
    v46[1] = @"IO80211InterfaceBGScanDynamicProfileScanFreq";
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 scanFrequency]);
    v46[2] = @"IO80211InterfaceBGScanDynamicProfileDuration";
    v47[1] = v25;
    v47[2] = &off_100281860;
    v26 = sub_1000DEAB0(a1, a2, @"IO80211InterfaceBGDynamicProfileParams", [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:3]);
    if (v26)
    {
      goto LABEL_40;
    }
  }

  if (([a3 modifyMap] & 0x20) != 0 && (v44 = @"IO80211InterfaceBGScanLostNetTO", v45 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(a3, "lostNetworkScanCount")), v26 = sub_1000DEAB0(a1, a2, @"IO80211InterfaceBGScanParams", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1)), v26))
  {
LABEL_40:
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

LABEL_42:
  objc_autoreleasePoolPop(v6);
  return v27;
}

id sub_1000DF12C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = v2;
  if (a1)
  {
    context = v2;
    v4 = objc_alloc_init(CWFBackgroundScanConfiguration);
    v5 = *(a1 + 5552);
    if (v5)
    {
      [v4 setScanFrequency:{objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", @"IO80211InterfaceBGScanDynamicProfileScanFreq", "unsignedIntegerValue")}];
    }

    v6 = *(a1 + 5544);
    if (v6)
    {
      [v4 setLostNetworkScanCount:{objc_msgSend(objc_msgSend(v6, "objectForKeyedSubscript:", @"IO80211InterfaceBGScanLostNetTO", "unsignedIntegerValue")}];
    }

    [v4 setCacheEnabled:*(a1 + 5529) != 0];
    [v4 setCacheRollover:*(a1 + 5530) != 0];
    v7 = *(a1 + 5520);
    v31 = v4;
    if (v7)
    {
      v29 = a1;
      v8 = +[NSMutableArray array];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v33;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v32 + 1) + 8 * i);
            v14 = objc_alloc_init(CWFChannel);
            [v14 setChannel:{objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", @"CHANNEL", "unsignedIntegerValue")}];
            v15 = [v13 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
            if (v15)
            {
              v16 = [v15 unsignedIntValue];
            }

            else if ([v14 channel] <= 0xE)
            {
              v16 = 10;
            }

            else
            {
              v16 = 18;
            }

            [v14 setFlags:v16];
            [v8 addObject:v14];
          }

          v10 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v10);
      }

      [v4 setChannels:v8];
      a1 = v29;
    }

    v17 = *(a1 + 3640);
    if (v17)
    {
      v18 = +[NSMutableArray array];
      if (CFArrayGetCount(v17) >= 1)
      {
        v19 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v17, v19);
          v21 = objc_autoreleasePoolPush();
          if (ValueAtIndex && (v22 = sub_100017C00(ValueAtIndex)) != 0)
          {
            v23 = v22;
            v24 = objc_alloc_init(CWFBackgroundScanNetwork);
            CFDictionaryGetValue(v23, @"BSSID");
            [v24 setBSSID:CWFCorrectEthernetAddressString()];
            v25 = objc_alloc_init(CWFChannel);
            [v25 setChannel:{objc_msgSend(CFDictionaryGetValue(v23, @"CHANNEL", "unsignedIntegerValue")}];
            Value = CFDictionaryGetValue(v23, @"CHANNEL_FLAGS");
            if (Value)
            {
              v27 = [Value unsignedIntValue];
            }

            else if ([v25 channel] <= 0xE)
            {
              v27 = 10;
            }

            else
            {
              v27 = 18;
            }

            [v25 setFlags:v27];
            [v24 setChannel:v25];
            [v24 setEntry:{objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](v23, "objectForKeyedSubscript:", @"ENTRY_NETWORK", "BOOLValue")}];
            [v24 setExit:{objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](v23, "objectForKeyedSubscript:", @"EXIT_NETWORK", "BOOLValue")}];
            objc_autoreleasePoolPop(v21);
            CFRelease(v23);
            if (v24)
            {
              [v18 addObject:v24];
            }
          }

          else
          {
            objc_autoreleasePoolPop(v21);
          }

          ++v19;
        }

        while (v19 < CFArrayGetCount(v17));
      }

      v4 = v31;
      [v31 setNetworks:v18];
    }

    [v4 setModifyMap:0];
    v3 = context;
  }

  else
  {
    sub_1001A42E0();
    v4 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

NSMutableArray *sub_1000DF540(uint64_t a1)
{
  v2 = [*(a1 + 6720) networksInDenyListedState:1];
  if ([v2 count])
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  }

  else
  {
    v3 = 0;
  }

  context = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        -[NSMutableArray addObject:](v3, "addObject:", +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", [*(*(&v10 + 1) + 8 * v7) copy], @"network", objc_msgSend(objc_msgSend(*(a1 + 6720), "reasonsForNetworkInDenyListedState:state:timestamps:reasonData:", *(*(&v10 + 1) + 8 * v7), 1, 0, 0), "copy"), @"reasons", 0));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
  return v3;
}

uint64_t sub_1000DF6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10001A9BC(a3);
  [*(a1 + 6720) removeNetworkDenyListInfoWithReason:a2 forScanResult:v5];

  return 1;
}

uint64_t sub_1000DF744(uint64_t a1, int a2)
{
  v4 = sub_100150D84(*(a1 + 64), a2);
  if (a2 && !*(a1 + 9096))
  {
    v5 = objc_alloc_init(CWFJITTDImpactEstimator);
    *(a1 + 9096) = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000DF864;
    v8[3] = &unk_100261850;
    v8[4] = a1;
    [v5 setGatherCellularDataStats:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DF8A4;
    v7[3] = &unk_100261870;
    v7[4] = a1;
    [*(a1 + 9096) setScanForNetworkHandler:v7];
    sub_100150F20(*(a1 + 64), sub_1000DFFC0, a1);
  }

  return v4;
}

id sub_1000DF864(uint64_t a1, uint64_t a2)
{
  v3 = +[WiFiUserInteractionMonitor sharedInstance];

  return [(WiFiUserInteractionMonitor *)v3 getCellularData:a2];
}

void sub_1000DF8A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  v5 = v4;
  if (!v3)
  {
    sub_1001A4434();
LABEL_40:
    v29 = v45[0];
    goto LABEL_42;
  }

  if (!*(v3 + 9096))
  {
    sub_1001A43C0();
    goto LABEL_40;
  }

  if (!a2)
  {
    sub_1001A434C();
    goto LABEL_40;
  }

  context = v4;
  v6 = +[NSMutableDictionary dictionary];
  if ([a2 SSID] || _os_feature_enabled_impl())
  {
    [a2 setScanFlags:{objc_msgSend(a2, "scanFlags") | 0x800}];
  }

  v31 = v6;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = [a2 channels];
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v45 count:16];
  if (v8)
  {
    v10 = v8;
    v9 = 0;
    v11 = *v47;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        if (!v9)
        {
          v9 = +[NSMutableArray array];
        }

        v43[0] = @"CHANNEL";
        v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 channel]);
        v43[1] = @"CHANNEL_FLAGS";
        v44[0] = v14;
        v44[1] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 flags]);
        [v9 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v44, v43, 2)}];
      }

      v10 = [v7 countByEnumeratingWithState:&v46 objects:v45 count:16];
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  [v31 setObject:v9 forKeyedSubscript:@"SCAN_CHANNELS"];
  *v36 = 0u;
  v37 = 0u;
  *v34 = 0u;
  v35 = 0u;
  v15 = [v30 SSIDList];
  v16 = [v15 countByEnumeratingWithState:v34 objects:v42 count:16];
  if (v16)
  {
    v18 = v16;
    v17 = 0;
    v19 = *v35;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*&v34[2] + 8 * j);
        if (!v17)
        {
          v17 = +[NSMutableArray array];
        }

        v40 = @"SSID_STR";
        v41 = v21;
        [v17 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v41, &v40, 1)}];
      }

      v18 = [v15 countByEnumeratingWithState:v34 objects:v42 count:16];
    }

    while (v18);
  }

  else
  {
    v17 = 0;
  }

  if ([v17 count])
  {
    v38 = @"SSID_STR";
    v39 = &stru_1002680F8;
    [v17 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v39, &v38, 1)}];
  }

  [v31 setObject:v17 forKeyedSubscript:@"SCAN_SSID_LIST"];
  [v31 setObject:objc_msgSend(v30 forKeyedSubscript:{"SSID"), @"SSID_STR"}];
  [v31 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v30, "scanType")), @"SCAN_TYPE"}];
  [v31 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v30, "BSSType")), @"SCAN_BSS_TYPE"}];
  [v31 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v30, "PHYMode")), @"SCAN_PHY_MODE"}];
  [v31 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v30, "restTime")), @"SCAN_REST_TIME"}];
  [v31 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(v30, "dwellTime")), @"SCAN_DWELL_TIME"}];
  [v31 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", objc_msgSend(v30, "mergeScanResults")), @"SCAN_MERGE"}];
  if ([v30 numberOfScans])
  {
    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 numberOfScans]);
  }

  else
  {
    v22 = &off_1002818D8;
  }

  [v31 setObject:v22 forKeyedSubscript:@"SCAN_NUM_SCANS"];
  [v31 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v30, "scanFlags")), @"SCAN_FLAGS"}];
  if ([v30 shortSSID])
  {
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 shortSSID]);
  }

  else
  {
    v23 = 0;
  }

  [v31 setObject:v23 forKeyedSubscript:@"SCAN_SHORT_SSID"];
  [v31 setObject:objc_msgSend(v30 forKeyedSubscript:{"BSSID"), @"BSSID"}];
  [v31 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v30, "minimumTimestamp")), @"SCAN_MIN_TIMESTAMP"}];
  [v31 setObject:&__kCFBooleanFalse forKeyedSubscript:@"SCAN_MERGE"];
  [v31 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SCAN_CLOSED_NETWORKS"];
  [v31 setObject:-[NSProcessInfo processName](+[NSProcessInfo processInfo](NSProcessInfo forKeyedSubscript:{"processInfo"), "processName"), @"ScanReqClientName"}];
  [v31 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", -[NSProcessInfo processIdentifier](+[NSProcessInfo processInfo](NSProcessInfo, "processInfo"), "processIdentifier")), @"ScanReqClientPid"}];
  [v31 setObject:+[NSDate date](NSDate forKeyedSubscript:{"date"), @"ScanReqReceiptTimestamp"}];
  [v31 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", objc_msgSend(v30, "acceptableCacheAge") / 1000.0), @"SCAN_MAXAGE"}];
  v24 = sub_100006F88(*(v3 + 64));
  v25 = [+[NSProcessInfo processInfo](NSProcessInfo processName];
  sub_100024FE0(v3, v24, v31, v25, sub_1000F88A0, v3, v26, v27, v30, v31, v3, context, v34[0], v34[1], v34[2], v34[3], v35, *(&v35 + 1), v36[0], v36[1], v37, *(&v37 + 1), v38, v39, v40, v41, v42[0], v42[1]);
  v5 = contexta;
  if (v28)
  {
    CWFErrorDescription();
    v29 = CWFErrorWithDescription();
LABEL_42:
    if (v29)
    {
      [*(v3 + 9096) notifyScanResult:0 withError:?];
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1000DFFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a3 + 9096);
    if (v4)
    {

      [v4 stopAccounting];
    }
  }

  else
  {
    sub_1001A44A8();
  }
}

id sub_1000DFFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = sub_10001A9BC(a2);
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v9 RSSI:a4 timestamp:a3];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v11;
}

void sub_1000E0080(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      v5 = "DISABLE";
      if (a2)
      {
        v5 = "ENABLE";
      }

      [off_100298C40 WFLog:3 message:{"%s: Configuring MIS idle link test : %s", "WiFiDeviceManagerConfigureMISIdleLinkTest", v5}];
    }

    objc_autoreleasePoolPop(v4);
    if (a2)
    {
      *(a1 + 5448) = 0x12C00000078;
      v6 = 600;
    }

    else
    {
      *(a1 + 5448) = 0xE1000000384;
      v6 = 14400;
    }

    *(a1 + 5456) = v6;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiDeviceManagerConfigureMISIdleLinkTest"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000E0180(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Enter: %s %d\n", "__WiFiDeviceManagerRelease", 2640}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 240);
  if (v4)
  {
    sub_1000BA690(a1, v4);
  }

  v5 = *(a1 + 7336);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 7336) = 0;
  }

  v6 = *(a1 + 7464);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 7464) = 0;
  }

  v7 = *(a1 + 3560);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 3560) = 0;
  }

  v8 = *(a1 + 3696);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 3696) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 96) = 0;
  }

  v11 = *(a1 + 320);
  if (v11)
  {
    dispatch_release(v11);
    *(a1 + 320) = 0;
  }

  v12 = *(a1 + 368);
  if (v12)
  {
    dispatch_release(v12);
    *(a1 + 368) = 0;
  }

  v13 = *(a1 + 3552);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 3552) = 0;
  }

  v14 = *(a1 + 3584);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 3584) = 0;
  }

  v15 = *(a1 + 3576);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 3576) = 0;
  }

  v16 = *(a1 + 3600);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 3600) = 0;
  }

  v17 = *(a1 + 3592);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 3592) = 0;
  }

  v18 = *(a1 + 3624);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 3624) = 0;
  }

  v19 = *(a1 + 3632);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 3632) = 0;
  }

  v20 = *(a1 + 3640);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 3640) = 0;
  }

  v21 = *(a1 + 3616);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 3616) = 0;
  }

  v22 = *(a1 + 3608);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 3608) = 0;
  }

  v23 = *(a1 + 3704);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 3704) = 0;
  }

  v24 = *(a1 + 3648);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 3648) = 0;
  }

  v25 = *(a1 + 3656);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 3656) = 0;
  }

  v26 = *(a1 + 3384);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 3384) = 0;
  }

  v27 = *(a1 + 3392);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 3392) = 0;
  }

  v28 = *(a1 + 3672);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 3672) = 0;
  }

  v29 = *(a1 + 3680);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 3680) = 0;
  }

  v30 = *(a1 + 3688);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 3688) = 0;
  }

  v31 = *(a1 + 3344);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 3344) = 0;
  }

  v32 = *(a1 + 3376);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 3376) = 0;
  }

  v33 = *(a1 + 1160);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 1160) = 0;
  }

  v34 = *(a1 + 1224);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 1224) = 0;
  }

  v35 = *(a1 + 1168);
  if (v35)
  {
    CFRelease(v35);
    *(a1 + 1168) = 0;
  }

  v36 = *(a1 + 384);
  if (v36)
  {
    CFRelease(v36);
    *(a1 + 384) = 0;
  }

  v37 = *(a1 + 280);
  if (v37)
  {
    CFRelease(v37);
    *(a1 + 280) = 0;
  }

  v38 = *(a1 + 5512);
  if (v38)
  {
    CFRelease(v38);
    *(a1 + 5512) = 0;
  }

  v39 = *(a1 + 120);
  if (v39)
  {
    CFRelease(v39);
    *(a1 + 120) = 0;
  }

  v40 = *(a1 + 4984);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 4984) = 0;
  }

  v41 = *(a1 + 1016);
  if (v41)
  {
    CFRelease(v41);
    *(a1 + 1016) = 0;
  }

  v42 = *(a1 + 56);
  if (v42)
  {
    CFRelease(v42);
    *(a1 + 56) = 0;
  }

  v43 = *(a1 + 5584);
  if (v43)
  {
    dispatch_release(v43);
    *(a1 + 5584) = 0;
  }

  v44 = *(a1 + 8704);
  if (v44)
  {
    dispatch_release(v44);
    *(a1 + 8704) = 0;
  }

  v45 = *(a1 + 8744);
  if (v45)
  {
    dispatch_release(v45);
    *(a1 + 8744) = 0;
  }

  v46 = *(a1 + 1040);
  if (v46)
  {
    dispatch_release(v46);
    *(a1 + 1040) = 0;
  }

  v47 = *(a1 + 9208);
  if (v47)
  {
    dispatch_release(v47);
    *(a1 + 9208) = 0;
  }

  v48 = *(a1 + 1096);
  if (v48)
  {
    dispatch_release(v48);
    *(a1 + 1096) = 0;
  }

  v49 = *(a1 + 5600);
  if (v49)
  {
    dispatch_release(v49);
    *(a1 + 5600) = 0;
  }

  v50 = *(a1 + 4992);
  if (v50)
  {
    if (_MISDetach)
    {
      _MISDetach(v50);
    }

    *(a1 + 4992) = 0;
  }

  v51 = *(a1 + 5276);
  if (v51)
  {
    IOPMAssertionRelease(v51);
    *(a1 + 5276) = 0;
  }

  v52 = *(a1 + 6844);
  if (v52)
  {
    IOPMAssertionRelease(v52);
    *(a1 + 6844) = 0;
  }

  v53 = *(a1 + 5288);
  if (v53)
  {
    dispatch_release(v53);
    *(a1 + 5288) = 0;
  }

  v54 = *(a1 + 5368);
  if (v54)
  {
    dispatch_release(v54);
    *(a1 + 5368) = 0;
  }

  v55 = *(a1 + 5416);
  if (v55)
  {
    CFRelease(v55);
    *(a1 + 5416) = 0;
  }

  v56 = *(a1 + 5424);
  if (v56)
  {
    CFRelease(v56);
    *(a1 + 5424) = 0;
  }

  v57 = *(a1 + 5520);
  if (v57)
  {
    CFRelease(v57);
    *(a1 + 5520) = 0;
  }

  v58 = *(a1 + 5544);
  if (v58)
  {
    CFRelease(v58);
    *(a1 + 5544) = 0;
  }

  v59 = *(a1 + 5552);
  if (v59)
  {
    CFRelease(v59);
    *(a1 + 5552) = 0;
  }

  v60 = *(a1 + 5560);
  if (v60)
  {
    CFRelease(v60);
    *(a1 + 5560) = 0;
  }

  v61 = *(a1 + 3424);
  if (v61)
  {
    CFRelease(v61);
    *(a1 + 3424) = 0;
  }

  v62 = *(a1 + 3432);
  if (v62)
  {
    CFRelease(v62);
    *(a1 + 3432) = 0;
  }

  v63 = *(a1 + 3440);
  if (v63)
  {
    CFRelease(v63);
    *(a1 + 3440) = 0;
  }

  v64 = *(a1 + 3488);
  if (v64)
  {
    CFRelease(v64);
    *(a1 + 3488) = 0;
  }

  v65 = *(a1 + 3528);
  if (v65)
  {
    CFRelease(v65);
    *(a1 + 3528) = 0;
  }

  v66 = *(a1 + 6224);
  if (v66)
  {
    CFRelease(v66);
    *(a1 + 6224) = 0;
  }

  v67 = *(a1 + 6120);
  if (v67)
  {
    CFRelease(v67);
    *(a1 + 6120) = 0;
  }

  v68 = *(a1 + 6128);
  if (v68)
  {
    CFRelease(v68);
    *(a1 + 6128) = 0;
  }

  v69 = *(a1 + 5320);
  if (v69)
  {
    CFRelease(v69);
    *(a1 + 5320) = 0;
  }

  v70 = *(a1 + 5328);
  if (v70)
  {
    CFRelease(v70);
    *(a1 + 5328) = 0;
  }

  v71 = *(a1 + 5336);
  if (v71)
  {
    CFRelease(v71);
    *(a1 + 5336) = 0;
  }

  v72 = *(a1 + 5344);
  if (v72)
  {
    CFRelease(v72);
    *(a1 + 5344) = 0;
  }

  v73 = *(a1 + 5352);
  if (v73)
  {
    CFRelease(v73);
    *(a1 + 5352) = 0;
  }

  v74 = *(a1 + 5360);
  if (v74)
  {
    CFRelease(v74);
    *(a1 + 5360) = 0;
  }

  v75 = *(a1 + 3728);
  if (v75)
  {
    CFRelease(v75);
    *(a1 + 3728) = 0;
  }

  v76 = *(a1 + 6632);
  if (v76)
  {
    CFRelease(v76);
    *(a1 + 6632) = 0;
  }

  v77 = *(a1 + 6584);
  if (v77)
  {
    CFRelease(v77);
    *(a1 + 6584) = 0;
  }

  v78 = *(a1 + 6600);
  if (v78)
  {
    CFRelease(v78);
    *(a1 + 6600) = 0;
  }

  v79 = *(a1 + 6616);
  if (v79)
  {
    CFRelease(v79);
    *(a1 + 6616) = 0;
  }

  v80 = *(a1 + 6432);
  if (v80)
  {
    CFRelease(v80);
    *(a1 + 6432) = 0;
  }

  v81 = *(a1 + 6472);
  if (v81)
  {
    CFRelease(v81);
    *(a1 + 6472) = 0;
  }

  v82 = *(a1 + 6488);
  if (v82)
  {
    CFRelease(v82);
    *(a1 + 6488) = 0;
  }

  v83 = *(a1 + 6504);
  if (v83)
  {
    CFRelease(v83);
    *(a1 + 6504) = 0;
  }

  v84 = *(a1 + 6660);
  if (v84)
  {
    IOPMAssertionRelease(v84);
    *(a1 + 6660) = 0;
    *(a1 + 6664) = 0;
  }

  v85 = *(a1 + 6888);
  if (v85)
  {
    dispatch_release(v85);
    *(a1 + 6888) = 0;
  }

  v86 = *(a1 + 6896);
  if (v86)
  {
    dispatch_release(v86);
    *(a1 + 6896) = 0;
  }

  v87 = *(a1 + 6920);
  if (v87)
  {
    CFRelease(v87);
    *(a1 + 6920) = 0;
  }

  v88 = *(a1 + 6992);
  if (v88)
  {
    CFRelease(v88);
    *(a1 + 6992) = 0;
  }

  v89 = *(a1 + 7000);
  if (v89)
  {
    CFRelease(v89);
    *(a1 + 7000) = 0;
  }

  v90 = *(a1 + 7008);
  if (v90)
  {
    CFRelease(v90);
    *(a1 + 7008) = 0;
  }

  *(a1 + 7016) = 0;
  v91 = *(a1 + 7112);
  if (v91)
  {
    CFRelease(v91);
    *(a1 + 7112) = 0;
  }

  v92 = *(a1 + 7120);
  if (v92)
  {
    CFRelease(v92);
    *(a1 + 7120) = 0;
  }

  v93 = *(a1 + 6728);
  if (v93)
  {
    CFRelease(v93);
    *(a1 + 6728) = 0;
  }

  v94 = *(a1 + 7128);
  if (v94)
  {
    CFRelease(v94);
    *(a1 + 7128) = 0;
  }

  *(a1 + 6712) = 0;
  v95 = *(a1 + 7160);
  if (v95)
  {
    CFRelease(v95);
    *(a1 + 7160) = 0;
  }

  v96 = *(a1 + 6736);
  if (v96)
  {
    CFRelease(v96);
    *(a1 + 6736) = 0;
  }

  v97 = *(a1 + 6744);
  if (v97)
  {
    CFRelease(v97);
    *(a1 + 6744) = 0;
  }

  v98 = *(a1 + 6760);
  if (v98)
  {
    CFRelease(v98);
    *(a1 + 6760) = 0;
  }

  *(a1 + 6768) = 0;
  v99 = *(a1 + 6752);
  if (v99)
  {
    CFRelease(v99);
  }

  *(a1 + 6752) = 0;

  *(a1 + 6776) = 0;
  *(a1 + 6824) = 0;

  *(a1 + 6832) = 0;
  v100 = *(a1 + 7432);
  if (v100)
  {
    dispatch_release(v100);
    *(a1 + 7432) = 0;
    *(a1 + 7424) = 0;
  }

  v101 = *(a1 + 7456);
  if (v101)
  {
    dispatch_release(v101);
    *(a1 + 7456) = 0;
    *(a1 + 7448) = 0;
  }

  v102 = *(a1 + 7312);
  if (v102)
  {
    dispatch_release(v102);
    *(a1 + 7312) = 0;
  }

  v103 = *(a1 + 7352);
  if (v103)
  {
    dispatch_release(v103);
    *(a1 + 7352) = 0;
  }

  v104 = *(a1 + 3752);
  if (v104)
  {
    CFRelease(v104);
    *(a1 + 3752) = 0;
  }

  v105 = *(a1 + 3744);
  if (v105)
  {
    CFRelease(v105);
    *(a1 + 3744) = 0;
  }

  v106 = *(a1 + 3760);
  if (v106)
  {
    CFRelease(v106);
    *(a1 + 3760) = 0;
  }

  v107 = *(a1 + 7504);
  if (v107)
  {
    CFRelease(v107);
    *(a1 + 7504) = 0;
  }

  v108 = *(a1 + 9088);
  if (v108)
  {
    CFRelease(v108);
    *(a1 + 9088) = 0;
  }

  v109 = *(a1 + 3824);
  if (v109)
  {
    CFRelease(v109);
    *(a1 + 3824) = 0;
  }

  v110 = *(a1 + 3784);
  if (v110)
  {
    CFRelease(v110);
    *(a1 + 3784) = 0;
  }

  v111 = *(a1 + 3800);
  if (v111)
  {
    CFRelease(v111);
    *(a1 + 3800) = 0;
  }

  *(a1 + 3792) = 0;
  *(a1 + 3808) = 0;
  v112 = *(a1 + 3880);
  if (v112)
  {
    CFRelease(v112);
    *(a1 + 3880) = 0;
  }

  v113 = *(a1 + 7200);
  if (v113)
  {
    CFRelease(v113);
    *(a1 + 7200) = 0;
  }

  v114 = *(a1 + 7208);
  if (v114)
  {
    CFRelease(v114);
    *(a1 + 7208) = 0;
  }

  v115 = *(a1 + 7216);
  if (v115)
  {
    CFRelease(v115);
    *(a1 + 7216) = 0;
  }

  *(a1 + 3904) = 0;
  *(a1 + 3836) = 0u;
  *(a1 + 3852) = 0u;
  *(a1 + 3865) = 0;
  v116 = *(a1 + 976);
  if (v116)
  {

    *(a1 + 976) = 0;
  }

  v117 = *(a1 + 9104);
  if (v117)
  {
    dispatch_release(v117);
    *(a1 + 9104) = 0;
  }

  v118 = *(a1 + 9112);
  if (v118)
  {
    dispatch_release(v118);
    *(a1 + 9112) = 0;
  }

  v119 = *(a1 + 6720);
  if (v119)
  {

    *(a1 + 6720) = 0;
  }

  v120 = *(a1 + 9096);
  if (v120)
  {
    [v120 invalidate];

    *(a1 + 9096) = 0;
  }

  v121 = *(a1 + 9192);
  if (v121)
  {

    *(a1 + 9192) = 0;
  }

  qword_100298678 = 0;

  objc_autoreleasePoolPop(v3);
}