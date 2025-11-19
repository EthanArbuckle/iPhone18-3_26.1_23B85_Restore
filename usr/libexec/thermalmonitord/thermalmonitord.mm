void sub_100001908()
{
  if (dword_1000AAED4 >= 1)
  {
    qword_1000AADA8 = mach_absolute_time();
    v0 = [qword_1000AAC48 canaryTempSensorIndex];
    if ((v0 & 0x80000000) == 0)
    {
      v1 = v0;
      v2 = [+[HidSensors sharedInstance](HidSensors hidSensorKeys];
      if (v2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v1);
        if (ValueAtIndex)
        {
          v4 = [+[HidSensors sharedInstance](HidSensors temperatureForKey:"temperatureForKey:", ValueAtIndex];
          if (byte_1000AB2F8 == 1)
          {
            v5 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "timerCallBackHID";
              *&buf[12] = 1024;
              *&buf[14] = v4;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> %s: canary %d", buf, 0x12u);
            }
          }

          if (v4 > [qword_1000AAC48 canaryTempThreshold])
          {
            [qword_1000AAC48 canaryModeExitEarly:dword_1000AAED4];
            dword_1000AAED4 = 0;
            goto LABEL_16;
          }
        }

        else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100054868();
        }
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005489C();
      }
    }

    if (dword_1000AAED4 >= 1)
    {
      --dword_1000AAED4;
      return;
    }
  }

LABEL_16:
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper readKeysFromSensorDispatcher];
  v6 = [+[HidSensors sharedInstance](HidSensors getHIDSensorDict];
  if (v6)
  {
    v7 = v6;
    v8 = [+[HidSensors sharedInstance](HidSensors hidSensorKeys];
    if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFArrayGetTypeID()))
    {
      v34 = sub_100003064();
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v13 = Count;
        v14 = 0;
        *&v12 = 138412290;
        v33 = v12;
        do
        {
          v15 = CFArrayGetValueAtIndex(v9, v14);
          if ([+[HidSensors isPowerSensor:"isPowerSensor:"]
          {
            *buf = 0;
            sub_100002A20(v7, v15, kCFNumberDoubleType, buf);
            v16 = [+[HidSensors sharedInstance](HidSensors getPowerSensorIndex:"getPowerSensorIndex:", v15];
            dbl_1000ABC40[v16] = *buf;
          }

          else
          {
            Value = CFDictionaryGetValue(v7, v15);
            if (Value)
            {
              *buf = 0;
              CFNumberGetValue(Value, kCFNumberSInt32Type, buf);
              v18 = [qword_1000AAC48 useTcalAdjust:v14];
              sub_100003208(v14, *buf, v18);
            }

            else
            {
              v19 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
              {
                *buf = v33;
                *&buf[4] = v15;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "<Error> Could not get value for %@", buf, 0xCu);
              }
            }
          }

          ++v14;
        }

        while (v13 != v14);
      }

      v20 = qword_1000AADD0;
      v21 = qword_1000AADD8;
      v22 = qword_1000AAD98;
      if ((qword_1000AADD8 & qword_1000AADD0) == qword_1000AAD98)
      {
        if (byte_1000AB2F8 == 1)
        {
          v23 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            sub_10002EAD4(dword_1000AAD64);
            *buf = 136315138;
            *&buf[4] = byte_1000AAED8;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "<Notice> sensors: %s", buf, 0xCu);
          }
        }

        dword_1000AAED0 = 0;
        qword_1000AADA8 = mach_absolute_time();
        [qword_1000AAC48 updateSystemLoad:v34];
        [qword_1000AAC48 probeAllSupervisorControlLoadingIndex];
        sub_1000048A0();
        v24 = [qword_1000AAC48 desiredLoopInterval];
        if (v24 >= 1)
        {
          v25 = v24 / 5u;
          if (v24 / 5u <= 1)
          {
            v25 = 1;
          }

          v26 = v25 - 1;
          dword_1000AAED4 = v25 - 1;
          if (byte_1000AB2F8 == 1)
          {
            v27 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "timerCallBackHID";
              *&buf[12] = 1024;
              *&buf[14] = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "<Notice> %s: setting numCanaryOnlyPeriodsRemaining to %d", buf, 0x12u);
            }
          }
        }
      }

      else
      {
        v28 = dword_1000AAED0 + 1;
        dword_1000AAED0 = v28;
        if ((v28 & 3) == 0)
        {
          v29 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109888;
            *&buf[4] = v28;
            *&buf[8] = 2048;
            *&buf[10] = v20;
            v36 = 2048;
            v37 = v21;
            v38 = 2048;
            v39 = v22;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "<Error> partial sensors: count %d, current %llx, mask %llx, expected %llx", buf, 0x26u);
          }

          [+[HidSensors resetHIDSensorDictionary:v33]];
        }
      }

      [qword_1000AAC48 hintComponentControlTakeAction];
      [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager iterateAndUpdateContexts];
      if (byte_1000ABC38 == 1)
      {
        [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper updateAllSensorExchangeData];
        [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper sendSensorExchangeDataToSMC];
      }

      if (byte_1000AAD7C == 1)
      {
        sub_100006E10(2);
      }

      [+[TGraphSampler sharedInstance](TGraphSampler logToPowerlog];
      if (byte_1000AAD91 == 1)
      {
        CStringPtr = CFStringGetCStringPtr(@"/var/log/tgraph.csv", 0);
        if (sub_10000816C(CStringPtr) > 5.0)
        {
          v31 = CFStringGetCStringPtr(@"/var/log/tgraph.csv", 0);
          remove(v31, v32);
          sub_10002D7B4(qword_1000AB930);
        }
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000548D0();
    }
  }
}

uint64_t sub_100002A20(CFDictionaryRef theDict, void *key, CFNumberType a3, void *a4)
{
  result = 0;
  if (theDict)
  {
    if (key)
    {
      if (a4)
      {
        result = CFDictionaryContainsKey(theDict, key);
        if (result)
        {
          Value = CFDictionaryGetValue(theDict, key);
          if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFNumberGetTypeID()))
          {
            return CFNumberGetValue(v10, a3, a4) != 0;
          }

          else
          {
            result = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
            if (result)
            {
              sub_100055450();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100002AF0(uint64_t result, int a2, int a3, int a4)
{
  qword_1000AADD0 |= 1 << result;
  if (dword_1000AAC50 == result)
  {
    dword_1000AAC58 = dword_1000AAC54 - a2;
  }

  else if (a4)
  {
    a2 += dword_1000AAC58;
  }

  if (byte_1000AAC5C)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (byte_1000AB720 == 1)
  {
    dword_1000AB724[result] = v4;
  }

  else
  {
    a3 = v4;
  }

  if (byte_1000AB308)
  {
    v5 = result;
    if ((qword_1000AB928 & (1 << result)) != 0)
    {
      a3 = *(&qword_1000AB824 + result);
    }

    else
    {
      *(&qword_1000AB824 + result) = a3;
    }
  }

  else
  {
    v5 = result;
    *(&qword_1000AB824 + result) = a3;
  }

  dword_1000AAC60[v5] = a3;
  return result;
}

CFNumberRef sub_100002FB4(__CFDictionary *a1, const void *a2, CFNumberType theType, void *valuePtr)
{
  if (a1 && a2 && valuePtr)
  {
    result = CFNumberCreate(kCFAllocatorDefault, theType, valuePtr);
    if (result)
    {
      v7 = result;
      CFDictionarySetValue(a1, a2, result);
      CFRelease(v7);
      return 1;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000555A0();
      return 0;
    }
  }

  return result;
}

BOOL sub_100003064()
{
  v0 = time(0);
  if (v0 == -1)
  {
    return 0;
  }

  v1 = v0;
  v2 = qword_1000A22B0;
  v4 = v0 < qword_1000A22B0 || v0 > qword_1000A22B0 + 59;
  if (v4)
  {
    v5 = dword_1000AAD64;
    if (dword_1000AAD64 >= 1)
    {
      v6 = 0;
      v7 = byte_1000AB308;
      v8 = (qword_1000AAD68 + 4);
      v9 = qword_1000AB928;
      do
      {
        if (!v7 || ((v9 >> v6) & 1) == 0)
        {
          *(&qword_1000AB824 + v6) = -32768;
          dword_1000AB724[v6] = -32768;
          *v8 = 0x80000000;
        }

        dword_1000AAC60[v6] = *(&qword_1000AB824 + v6);
        ++v6;
        v8 += 2;
      }

      while (v5 != v6);
    }

    qword_1000AADD0 = 0;
    dword_1000AAD70 = 0;
    dword_1000AAD74 = 0;
    if (byte_1000AB2F8 == 1)
    {
      v10 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v1;
        v14 = 2048;
        v15 = v2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> resetting temps: now = %ld, last update = %ld", &v12, 0x16u);
      }
    }
  }

  qword_1000A22B0 = v1;
  return v4;
}

uint64_t sub_100003208(uint64_t a1, unsigned int a2, int a3)
{
  v4 = a2;
  if (!qword_1000AAD68)
  {
    goto LABEL_14;
  }

  v5 = (qword_1000AAD68 + 8 * a1);
  if (!*v5)
  {
    goto LABEL_14;
  }

  v6 = v5[1];
  if (v6 == 0x80000000)
  {
    if (dword_1000AAC50 == a1)
    {
      if (dword_1000AAD78)
      {
        ++dword_1000AAD70;
        dword_1000AAD74 += a2;
      }

      else
      {
        v4 = dword_1000AAC54;
      }
    }

    goto LABEL_13;
  }

  if (dword_1000AAC50 == a1)
  {
    v7 = dword_1000AAD70;
    if (dword_1000AAD70 < dword_1000AAD78)
    {
      ++dword_1000AAD70;
      dword_1000AAD74 += a2;
      v4 = dword_1000AAD74 / (v7 + 1);
LABEL_13:
      v5[1] = v4 << 16;
LABEL_14:
      v9 = v4;
      return sub_100002AF0(a1, v9, v4, a3);
    }
  }

  v8 = v6 + (327680 / (*v5 + 5)) * (a2 - (v6 >> 16));
  v5[1] = v8;
  v9 = v8 >> 16;
  return sub_100002AF0(a1, v9, v4, a3);
}

BOOL sub_1000032F4()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

uint64_t sub_100004420(uint64_t a1)
{
  ChannelID = IOReportChannelGetChannelID();
  IntegerValue = IOReportSimpleGetIntegerValue();
  if (ChannelID == 0x505A454E47414745)
  {
    *(*(a1 + 32) + 96) = IntegerValue / *(a1 + 40);
  }

  return 0;
}

uint64_t sub_10000449C()
{
  result = dword_1000A2320;
  if (dword_1000A2320 == -1)
  {
    IOPSGetPercentRemaining();
    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1000048A0()
{
  if (qword_1000AB2F0 < 12)
  {
    sub_100004D20();
    v3 = qword_1000AAD88;

    sub_100004CA0(0, v3, @"wake", &qword_1000AAD80);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (*&qword_1000AAD80 >= Current + 60.0)
    {
      if (byte_1000AB2F8 == 1)
      {
        v4 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138412290;
          v10 = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> not setting timer: already set to wake at %@", &v9, 0xCu);
        }
      }
    }

    else
    {
      *&qword_1000AAD80 = Current + 600.0;
      if (byte_1000AB2F8 == 1)
      {
        v1 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          if (byte_1000A22A0)
          {
            v2 = "";
          }

          else
          {
            v2 = "Disabled: ";
          }

          v9 = 136315394;
          v10 = v2;
          v11 = 1024;
          v12 = 600;
          _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "<Notice> %ssetting wake up timer for %d secs from now", &v9, 0x12u);
        }
      }

      if (byte_1000A22A0 == 1)
      {
        sub_10003214C(0, qword_1000AAD88, @"wake", *&qword_1000AAD80);
      }
    }

    if (qword_1000AB2F0 < 16)
    {
      sub_100004D20();
    }

    else
    {
      v5 = qword_1000AB718;
      v6 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT);
      v7 = byte_1000A22A0;
      if (v6)
      {
        if (byte_1000A22A0)
        {
          v8 = "";
        }

        else
        {
          v8 = "Disabled: ";
        }

        v9 = 136315138;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> %sthermal status level critical -- cooling down", &v9, 0xCu);
        v7 = byte_1000A22A0;
      }

      if (v7)
      {
        qword_1000AADD0 = 0;
        if (byte_1000AB308 == 1)
        {
          byte_1000AB308 = 0;
          qword_1000AB928 = 0;
        }

        if (byte_1000ABC39 == 1)
        {
          byte_1000ABC39 = 0;
        }

        sub_1000320B4();
      }
    }
  }
}

CFTimeInterval sub_100004CA0(const __CFDate *a1, const __CFString *a2, const __CFString *a3, CFTimeInterval *a4)
{
  if (a1)
  {
    if (IOPMCancelScheduledPowerEvent(a1, a2, a3))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100055964();
      }
    }

    CFRelease(a1);
    result = -kCFAbsoluteTimeIntervalSince1970;
    *a4 = -kCFAbsoluteTimeIntervalSince1970;
  }

  return result;
}

void sub_100004D20()
{
  if (dword_1000AADE4)
  {
    if (IOPMAssertionRelease(dword_1000AADE4))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100054070();
      }
    }

    else if (byte_1000AB2F8 == 1)
    {
      v0 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v1[0] = 67109120;
        v1[1] = dword_1000AADE4;
        _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "<Notice> cleared idle sleep assertion: 0x%08x", v1, 8u);
      }
    }

    dword_1000AADE4 = 0;
  }
}

void sub_1000051A4(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == -528318202)
  {
    if (byte_1000AB2F8 == 1)
    {
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = a4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> CPMS Helper, peak pressure %lld", buf, 0xCu);
      }
    }

    v6 = [a1 cpmsHelperQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100019420;
    v9[3] = &unk_1000851A0;
    v9[4] = a1;
    v9[5] = a4;
    v7 = v9;
  }

  else
  {
    if (a3 != -528318205)
    {
      return;
    }

    v6 = [a1 cpmsHelperQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000192C0;
    v10[3] = &unk_1000858F8;
    v11 = a4;
    v10[4] = a1;
    v7 = v10;
  }

  dispatch_async(v6, v7);
}

uint64_t sub_10000533C(uint64_t a1, uint64_t a2)
{
  sub_100002AF0(a1, a2, a2, 0);
  [+[HidSensors sharedInstance](HidSensors sendVirtualTemp:"sendVirtualTemp:temperature:" temperature:a1, a2];
  return a2;
}

uint64_t sub_100005390(uint64_t a1, char **a2)
{
  if (byte_1000AB2F8 == 1)
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> wd_endpoint getalive_func\n", &buf, 2u);
    }
  }

  qword_1000AADB0 = qword_1000AADD0;
  if (qword_1000AADA0 != 1 || (v5 = &byte_1000A24F8[31496], v6 = &byte_1000A24F8[31496], (qword_1000AADD8 & qword_1000AADD0) == qword_1000AAD98))
  {
    byte_1000AADE0 = 0;
    result = 1;
LABEL_7:
    qword_1000AADD0 = 0;
    return result;
  }

  if (byte_1000AADC0)
  {
LABEL_9:
    v8 = qword_1000AADD0;
    v9 = *(v6 + 435);
    Count = CFArrayGetCount([+[HidSensors sensorFourCharCode] sharedInstance];
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        if ((v9 & 1) != 0 && (v8 & 1) == 0)
        {
          [*(a1 + 32) addObject:{CFArrayGetValueAtIndex(-[HidSensors sensorFourCharCode](+[HidSensors sharedInstance](HidSensors, "sharedInstance"), "sensorFourCharCode"), i)}];
        }

        v8 >>= 1;
        v9 >>= 1;
      }
    }

    v13 = [*(a1 + 32) count];
    v14 = v13;
    if (v13)
    {
      v15 = malloc_type_malloc((5 * v13) + 1, 0x100004077774924uLL);
      if (v15)
      {
        v16 = v15;
        *v15 = 0;
        if (v14 >= 1)
        {
          v17 = 0;
          v18 = v14 & 0x7FFFFFFF;
          do
          {
            v19 = strcat(v16, [objc_msgSend(*(a1 + 32) objectAtIndex:{v17), "cStringUsingEncoding:", 4}]);
            *&v16[strlen(v19)] = 32;
            ++v17;
          }

          while (v18 != v17);
        }

        WORD4(buf) = 0;
        *&buf = 540689491;
        [+[HidSensors sharedInstance](HidSensors isSensorDataValid];
        __strcat_chk();
        v36 = 0;
        v35 = 540689218;
        sub_100033A78();
        __strcat_chk();
        v20 = sub_100033DCC();
        v21 = sub_100033DFC();
        asprintf(a2, "current %llx, mask %llx, expected %llx. %s %s RC: %d BS: %d, Missing sensor(s): %s", qword_1000AADD0, *(v5 + 443), *(v6 + 435), &buf, &v35, v20, v21, v16);
        free(v16);
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100054800();
      }
    }

    [*(a1 + 32) removeAllObjects];
    result = 0;
    goto LABEL_7;
  }

  v33 = 8;
  v34 = 0;
  if (sysctlbyname("kern.wake_abs_time", &v34, &v33, 0, 0))
  {
    v22 = __error();
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000546A0(v22);
    }
  }

  if (IOPMGetLastWakeTime())
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100054718();
    }
  }

  else
  {
    v24 = v34;
    if (v34)
    {
      v25 = (0.0 * 1000000000.0) * *algn_1000AADC8 / dword_1000AADC4;
      *&buf = 0;
      v35 = 0;
      mach_get_times();
      v23 = v25 - (v24 + v35) + buf;
      goto LABEL_30;
    }

    v35 = 0;
    buf = 0uLL;
    if (!mach_get_times())
    {
      v23 = ((buf - kCFAbsoluteTimeIntervalSince1970 + *(&buf + 1) / 1000000000.0 - 0.0) * (1000000000 * *algn_1000AADC8 / dword_1000AADC4)) - v35;
      goto LABEL_30;
    }

    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005478C();
    }
  }

  v23 = 0;
LABEL_30:
  v26 = mach_continuous_time();
  v28 = dword_1000AADC4;
  v27 = *algn_1000AADC8;
  v29 = byte_1000AADE0;
  v30 = qword_1000AB718;
  v31 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT);
  if ((v29 & 1) != 0 || (v32 = (v26 + v23) * v28 / v27, v32 > 0x2540BE3FFLL))
  {
    v5 = byte_1000A24F8 + 31496;
    v6 = byte_1000A24F8 + 31496;
    if (v29)
    {
      if (v31)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "<Notice> thermalmonitord: found previous error sensor result, do not ignore", &buf, 2u);
      }
    }

    else
    {
      if (v31)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "<Notice> thermalmonitord: found error sensor result", &buf, 2u);
      }

      byte_1000AADE0 = 1;
    }

    goto LABEL_9;
  }

  if (v31)
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v32 / 0x3B9ACA00;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "<Notice> thermalmonitord: ignore current sensor result cause system just woke up %lld second(s)ago", &buf, 0xCu);
  }

  return 1;
}

uint64_t sub_100005EBC(uint64_t a1)
{
  ChannelName = IOReportChannelGetChannelName();
  IntegerValue = IOReportSimpleGetIntegerValue();
  if ([ChannelName isEqualToString:@"power"])
  {
    *&v4 = IntegerValue / *(a1 + 32) / 1000.0;
    dword_1000AB978 = v4;
  }

  return 0;
}

uint64_t sub_1000067F0(io_registry_entry_t a1, const __CFString *a2, _DWORD *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, a3);
  if (v7 && (v8 = v7, CFDictionaryAddValue(Mutable, a2, v7), CFRelease(v8), !IORegistryEntrySetCFProperties(a1, Mutable)))
  {
    v9 = sub_1000068B4(a1, a2, a3, 1);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(Mutable);
  return v9;
}

uint64_t sub_1000068B4(io_registry_entry_t a1, const __CFString *a2, _DWORD *a3, int a4)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v8 = CFProperty;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v8))
    {
      if (CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr))
      {
        *a3 = valuePtr;
        v10 = 1;
LABEL_23:
        CFRelease(v8);
        return v10;
      }

      v15 = qword_1000AB718;
      if (a4)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100055680();
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = a2;
        v13 = "<Notice> %@ could not be converted to kCFNumberSInt32Type";
        v14 = v15;
        goto LABEL_21;
      }
    }

    else
    {
      v12 = qword_1000AB718;
      if (a4)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100055610();
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v8;
        v13 = "<Notice> %@ not a CFNumber";
        v14 = v12;
LABEL_21:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      }
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v11 = qword_1000AB718;
  if (a4)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000556F0();
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = a2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> could not find %@ property", buf, 0xCu);
  }

  return 0;
}

void sub_100006E10(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = kCFAllocatorDefault;
    v3 = @"Time, Epoch Time, Mach Absolute Time, TestCase Number, TestCase Name, Gas gauge average power, Battery capacity, ";
  }

  else
  {
    v17 = time(0);
    v4 = ctime(&v17);
    v4[24] = 0;
    v2 = kCFAllocatorDefault;
    v5 = v17;
    v6 = mach_absolute_time();
    v7 = dword_1000AADE8;
    v8 = sub_100006FB4();
    v9 = sub_10000449C();
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s, %ld, %llu, %d, %s, %lld, %d", v4, v5, v6, v7, &byte_1000AADEC, v8, v9);
    if (!v10)
    {
      return;
    }

    v3 = v10;
  }

  v11 = CFStringCreateWithFormat(v2, 0, @"%@%@", v3, [qword_1000AAC48 getTGraphData:a1]);
  CFRelease(v3);
  if (v11)
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(v2, v11, 0, 0x3Fu);
    if (ExternalRepresentation)
    {
      v13 = ExternalRepresentation;
      v14 = dword_1000A22B8;
      BytePtr = CFDataGetBytePtr(ExternalRepresentation);
      Length = CFDataGetLength(v13);
      if (write(v14, BytePtr, Length) < 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100054834();
      }

      write(dword_1000A22B8, "\n", 1uLL);
      CFRelease(v13);
    }

    CFRelease(v11);
  }
}

uint64_t sub_100006FB4()
{
  LOWORD(result) = [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getValueFromSMCForKey:"getValueFromSMCForKey:", @"B0AP"];
  if (result != 0xFFFF)
  {
    return result;
  }

  sub_100007118();
  v5 = 0;
  v4 = 0;
  if (sub_1000068B4(dword_1000AB220, @"Voltage", &v5, 1))
  {
    if (sub_1000071BC(dword_1000AB220, @"InstantAmperage", &v4))
    {
      return v4 * v5 / 1000;
    }

    if (byte_1000AB2F8 != 1)
    {
      return 0;
    }

    v1 = qword_1000AB718;
    if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *v3 = 0;
    v2 = "<Notice> getGasGaugeAveragePower: Failed to find InstantAmperage";
  }

  else
  {
    if (byte_1000AB2F8 != 1)
    {
      return 0;
    }

    v1 = qword_1000AB718;
    if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *v3 = 0;
    v2 = "<Notice> getGasGaugeAveragePower: Failed to find Voltage";
  }

  _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
  return 0;
}

void sub_100007118()
{
  if (!dword_1000AB220)
  {
    dword_1000AB220 = sub_100031CAC("IOPMPowerSource", 0, 0);
    if (!dword_1000AB220 && byte_1000AB2F8 == 1)
    {
      v0 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v1 = 0;
        _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "<Notice> initPowerSource: Failed to Match IOPMPowerSource", v1, 2u);
      }
    }
  }
}

uint64_t sub_1000071BC(io_registry_entry_t a1, const __CFString *a2, void *a3)
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v6))
    {
      if (CFNumberGetValue(v6, kCFNumberSInt64Type, &valuePtr))
      {
        *a3 = valuePtr;
        v8 = 1;
LABEL_14:
        CFRelease(v6);
        return v8;
      }

      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100055760();
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100055610();
    }

    v8 = 0;
    goto LABEL_14;
  }

  if (byte_1000AB2F8 == 1)
  {
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> could not find %@ property", buf, 0xCu);
    }
  }

  return 0;
}

void sub_1000077C8(__CFArray *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, format, a3);
  CFArrayAppendValue(a1, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t sub_1000078F0(void *a1, int *a2, int a3)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    return 4294934528;
  }

  v7 = v6;
  v8 = *v17;
  LODWORD(v9) = -32768;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(a1);
      }

      v11 = [*(*(&v16 + 1) + 8 * i) intValue];
      if (a3)
      {
        v12 = dword_1000AB724;
      }

      else
      {
        v12 = a2;
      }

      v13 = v12[v11];
      if (v9 <= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9;
      }

      if (v13 == 3000)
      {
        v9 = v9;
      }

      else
      {
        v9 = v14;
      }
    }

    v7 = [a1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);
  return v9;
}

id sub_100007EA8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 392) isEqualToArray:*(*(a1 + 32) + 400)];
  if ((result & 1) == 0)
  {
    v3 = [[NSMutableArray alloc] initWithObjects:{&off_10008D128, @"ThermalMiscState", 0}];
    [v3 addObjectsFromArray:*(*(a1 + 32) + 392)];
    logEventForAppleCare();
    if (byte_1000AB2F8 == 1)
    {
      v4 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v6 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> Logged for AC: %@", buf, 0xCu);
      }
    }

    result = [*(*(a1 + 32) + 392) copy];
    *(*(a1 + 32) + 400) = result;
  }

  return result;
}

id sub_1000080D4(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 368) "cacheArray")];
  if (a1[5])
  {
    v3 = result == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    result = [*(a1[4] + 368) logToPowerlogLite];
    *(a1[4] + 56) = a1[6];
  }

  return result;
}

float sub_10000816C(const char *a1)
{
  v1 = fopen(a1, "r");
  if (v1)
  {
    v2 = v1;
    fseek(v1, 0, 2);
    v3 = ftell(v2) / 1000000.0;
    fclose(v2);
  }

  else
  {
    puts("File Not Found!");
    return -1.0;
  }

  return v3;
}

void sub_1000081E8(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  if (a3 == -536870288)
  {
    v11 = [qword_1000AAC48 canSystemSleep];
    v12 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<Notice> <PMCallback> Can System Sleep (reply: %d)", &v15, 8u);
    }

    if (v11)
    {
LABEL_20:
      IOAllowPowerChange(dword_1000AAEA0, a4);
      return;
    }

    if (byte_1000AB2F8 == 1)
    {
      v13 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<Notice> Preventing system sleep", &v15, 2u);
      }
    }

    IOCancelPowerChange(dword_1000AAEA0, a4);
  }

  else
  {
    HIDWORD(v6) = a3 + 536870288;
    LODWORD(v6) = a3 + 536870288;
    v5 = v6 >> 4;
    if (v5 != 11)
    {
      if (v5 != 1)
      {
        return;
      }

      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> <PMCallback> System Will Sleep", &v15, 2u);
      }

      [qword_1000AAC48 updateSystemPowerState:0];
      goto LABEL_20;
    }

    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> <PMCallback> System Will Power On", &v15, 2u);
    }

    if (qword_1000AB2F0 >= 12)
    {
      v9 = dword_1000AADE4;
      if (dword_1000AADE4)
      {
        v10 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 67109120;
          v16 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> clearing orphaned sleep assertion: 0x%08x", &v15, 8u);
        }

        sub_100004D20();
      }

      if (IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, qword_1000AAD88, &dword_1000AADE4))
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100054904();
        }
      }

      else if (byte_1000AB2F8 == 1)
      {
        v14 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 67109120;
          v16 = dword_1000AADE4;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<Notice> created idle sleep assertion 0x%08x", &v15, 8u);
        }
      }
    }

    [qword_1000AAC48 updateSystemPowerState:1];
  }
}

NSDictionary *sub_100008BB8(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev3";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"PMU_Tdev5";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"PMU2_Tdev1";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"PMU2_Tdev2";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"PMU2_Tdev3";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSBM";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSFD";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSBQ";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Die_Temp_MaxAverage";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Die_Temp_MaxMax";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"maxLI_PackagePower";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"maxLI_Speaker";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[15] = @"BackLight_maxLI";
  v4[15] = [NSNumber numberWithInt:*(a1 + 92)];
  v3[16] = @"Solar_Context";
  v4[16] = [NSNumber numberWithInt:*(a1 + 112)];
  v3[17] = @"Pressure_Level";
  v4[17] = [NSNumber numberWithInt:*(a1 + 96)];
  v3[18] = @"Gas_Gauge_avg_Power";
  v4[18] = [NSNumber numberWithInt:*(a1 + 100)];
  v3[19] = @"Charger_State";
  v4[19] = [NSNumber numberWithInt:*(a1 + 104)];
  v3[20] = @"Package_Power";
  v4[20] = [NSNumber numberWithInt:*(a1 + 108)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:21];
}

NSDictionary *sub_100009134(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev3";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"PMU_Tdev4";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"PMU_Tdev5";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"PMU2_Tdev1";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"PMU2_Tdev2";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"PMU2_Tdev3";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSBM";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSFD";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"TSBQ";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"TSBR";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Die_Temp_MaxAverage";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Die_Temp_MaxMax";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[15] = @"maxLI_PackagePower";
  v4[15] = [NSNumber numberWithInt:*(a1 + 92)];
  v3[16] = @"maxLI_Speaker";
  v4[16] = [NSNumber numberWithInt:*(a1 + 96)];
  v3[17] = @"BackLight_maxLI";
  v4[17] = [NSNumber numberWithInt:*(a1 + 100)];
  v3[18] = @"Solar_Context";
  v4[18] = [NSNumber numberWithInt:*(a1 + 120)];
  v3[19] = @"Pressure_Level";
  v4[19] = [NSNumber numberWithInt:*(a1 + 104)];
  v3[20] = @"Gas_Gauge_avg_Power";
  v4[20] = [NSNumber numberWithInt:*(a1 + 108)];
  v3[21] = @"Charger_State";
  v4[21] = [NSNumber numberWithInt:*(a1 + 112)];
  v3[22] = @"Package_Power";
  v4[22] = [NSNumber numberWithInt:*(a1 + 116)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:23];
}

uint64_t sub_1000095B8(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  if (!result)
  {
    return (*(*(a1 + 32) + 16))();
  }

  return result;
}

NSDictionary *sub_1000098E0(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev2";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev3";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev5";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSFD";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBH";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"Die_Temp_MaxAverage";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"maxLI_PackagePower";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Solar_Context";
  v4[8] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[9] = @"Pressure_Level";
  v4[9] = [NSNumber numberWithInt:*(a1 + 64)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:10];
}

NSDictionary *sub_100009C58(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev3";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"PMU_Tdev5";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBH";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSFD";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"Die_Temp_MaxAverage";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"maxLI_PackagePower";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Solar_Context";
  v4[9] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[10] = @"Pressure_Level";
  v4[10] = [NSNumber numberWithInt:*(a1 + 68)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:11];
}

NSDictionary *sub_10000A03C(uint64_t a1)
{
  v3[0] = @"TSBM";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFG";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TS1B";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TR1d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSBR";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxAverage";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Die_Temp_MaxMax";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Package_Power";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Gas_Gauge_avg_Power";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Charger_State";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Solar_Context";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
}

NSDictionary *sub_10000A430(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev4";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev7";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev8";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSFD";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBH";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSBR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"Die_Temp_MaxAverage";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"maxLI_PackagePower";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Solar_Context";
  v4[9] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[10] = @"Pressure_Level";
  v4[10] = [NSNumber numberWithInt:*(a1 + 68)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:11];
}

NSDictionary *sub_10000AA24(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSBQ";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBM";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBR";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP4d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TP5d";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"batteryVT";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Die_Temp_MaxAverage";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Die_Temp_MaxMax";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"maxLI_CPU";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"maxLI_GPU";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Gas_Gauge_avg_Power";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Charger_State";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[15] = @"Solar_Context";
  v4[15] = [NSNumber numberWithInt:*(a1 + 92)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:16];
}

NSDictionary *sub_10000AE68(uint64_t a1)
{
  v3[0] = @"TSBM";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFG";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TS1B";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP5d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSBR";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxAverage";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Die_Temp_MaxMax";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Charger_State";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Solar_Context";
  v4[11] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[12] = @"Pressure_Level";
  v4[12] = [NSNumber numberWithInt:*(a1 + 76)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:13];
}

void sub_10000B3D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 120));
  _Unwind_Resume(a1);
}

float sub_10000B430(uint64_t a1, uint64_t a2)
{
  state64 = 0;
  Weak = objc_loadWeak((a1 + 32));
  [Weak handleStateChangeNotification:a2 temperatureSensorIndex:{objc_msgSend(Weak, "rearCameraSensorIdx")}];
  if (!notify_get_state(a2, &state64))
  {
    result = state64;
    *&dword_1000AB984 = state64;
  }

  return result;
}

id sub_10000B4A0(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak rearCameraSensorIdx];

  return [Weak handleTemperatureChangeNotification:a2 temperatureSensorIndex:v4];
}

float sub_10000B4EC(uint64_t a1, uint64_t a2)
{
  state64 = 0;
  Weak = objc_loadWeak((a1 + 32));
  [Weak handleStateChangeNotification:a2 temperatureSensorIndex:{objc_msgSend(Weak, "frontCameraSensorIdx")}];
  if (!notify_get_state(a2, &state64))
  {
    result = state64;
    *&dword_1000AB990 = state64;
  }

  return result;
}

id sub_10000B55C(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak frontCameraSensorIdx];

  return [Weak handleTemperatureChangeNotification:a2 temperatureSensorIndex:v4];
}

id sub_10000B5A8(uint64_t a1, int a2)
{
  Weak = objc_loadWeak((a1 + 32));
  state64 = 0;
  result = notify_get_state(a2, &state64);
  if (!result)
  {
    [Weak setTorchState:state64];
    *&dword_1000AB958 = state64;
    v5 = +[TGraphSampler sharedInstance];
    if (state64)
    {
      v6 = 100;
    }

    else
    {
      v6 = 0;
    }

    return [(TGraphSampler *)v5 updatePowerlogMiscState:4 value:v6];
  }

  return result;
}

void sub_10000B764(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

float sub_10000B790(uint64_t a1, uint64_t a2)
{
  state64 = 0;
  Weak = objc_loadWeak((a1 + 32));
  [Weak handleStateChangeNotification:a2 temperatureSensorIndex:{objc_msgSend(Weak, "rearCameraTeleSensorIdx")}];
  if (!notify_get_state(a2, &state64))
  {
    result = state64;
    *&dword_1000AB988 = state64;
  }

  return result;
}

id sub_10000B800(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak rearCameraTeleSensorIdx];

  return [Weak handleTemperatureChangeNotification:a2 temperatureSensorIndex:v4];
}

void sub_10000B97C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

float sub_10000B9A8(uint64_t a1, uint64_t a2)
{
  state64 = 0;
  Weak = objc_loadWeak((a1 + 32));
  [Weak handleStateChangeNotification:a2 temperatureSensorIndex:{objc_msgSend(Weak, "rearCameraSuperWideSensorIdx")}];
  if (!notify_get_state(a2, &state64))
  {
    result = state64;
    *&dword_1000AB98C = state64;
  }

  return result;
}

id sub_10000BA18(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak rearCameraSuperWideSensorIdx];

  return [Weak handleTemperatureChangeNotification:a2 temperatureSensorIndex:v4];
}

void sub_10000BB94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

float sub_10000BBC0(uint64_t a1, uint64_t a2)
{
  state64 = 0;
  Weak = objc_loadWeak((a1 + 32));
  [Weak handleStateChangeNotification:a2 temperatureSensorIndex:{objc_msgSend(Weak, "rearCameraJasperSensorIdx")}];
  if (!notify_get_state(a2, &state64))
  {
    result = state64;
    *&dword_1000AB994 = state64;
  }

  return result;
}

id sub_10000BC30(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak rearCameraJasperSensorIdx];

  return [Weak handleTemperatureChangeNotification:a2 temperatureSensorIndex:v4];
}

void sub_10000BDAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_10000BDD8(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak frontIRCameraSensorIdx];

  return [Weak handleTemperatureChangeNotification:a2 temperatureSensorIndex:v4];
}

id sub_10000BE24(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak frontIRCameraSensorIdx];

  return [Weak handleStateChangeNotification:a2 temperatureSensorIndex:v4];
}

void sub_10000BFA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_10000BFCC(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak frontRomeoNTCSensorIdx];

  return [Weak handleTemperatureChangeNotification:a2 temperatureSensorIndex:v4];
}

id sub_10000C018(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak frontRomeoNTCSensorIdx];

  return [Weak handleStateChangeNotification:a2 temperatureSensorIndex:v4];
}

void sub_10000C194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_10000C1C0(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak frontRigelDieSensorIdx];

  return [Weak handleTemperatureChangeNotification:a2 temperatureSensorIndex:v4];
}

id sub_10000C20C(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [Weak frontRigelDieSensorIdx];

  return [Weak handleStateChangeNotification:a2 temperatureSensorIndex:v4];
}

id sub_10000C5C4(void *a1, uint64_t a2, uint64_t a3)
{
  if (IOHIDEventGetType() == 15 || (result = IOHIDEventGetType(), result == 31))
  {
    IOHIDEventGetFloatValue();

    return [a1 handleTemperatureEvent:(v6 * 100.0) service:a3];
  }

  return result;
}

void sub_10000D37C(id a1)
{
  dword_1000A2498 = sub_100031CAC("AppleVTempDispatcher", 0, 0);
  if (!dword_1000A2498 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100050CD0();
  }
}

BOOL sub_10000DB94(uint64_t a1, IOHIDServiceClientRef service)
{
  v4 = IOHIDServiceClientCopyProperty(service, @"Product");
  valuePtr = -1;
  v5 = IOHIDServiceClientCopyProperty(service, @"LocationID");
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
      CFRelease(v6);
      if (valuePtr != -1)
      {
        [*(a1 + 32) addObject:sub_100031F34(valuePtr)];
      }
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      if (v4)
      {
        v14 = CFGetTypeID(v4);
        if (v14 == CFStringGetTypeID() && ([v13 isEqualToString:v4] & 1) != 0)
        {
          goto LABEL_23;
        }
      }

      if ([v13 length] == 4)
      {
        v15 = [v13 cStringUsingEncoding:4];
        if (v15)
        {
          v16 = v15;
          if (strlen(v15) == 4)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              v18 = v16[v17++] + (v18 << 8);
            }

            while (v17 != 4);
            if (v18 == valuePtr)
            {
              goto LABEL_22;
            }
          }
        }
      }

      if (++v12 == v10)
      {
        v10 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v13 = 0;
LABEL_22:
  if (v4)
  {
LABEL_23:
    CFRelease(v4);
  }

  if (v13)
  {
    CFDictionaryAddValue(*(*(a1 + 48) + 672), service, v13);
    v19 = [*(a1 + 48) callbackSensorInterval:v13];
    if (v19 >= 1)
    {
      v20 = v19;
      v21 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = v13;
        v33 = 1024;
        v34 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<Notice> callback interval for %@: %d", buf, 0x12u);
      }

      IOHIDServiceClientSetProperty(service, @"ReportInterval", [NSNumber numberWithInt:v20]);
      v22 = *(a1 + 48);
      v23 = *(v22 + 104);
      if (v23)
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10000DEB4;
        v25[3] = &unk_1000851A0;
        v25[4] = v22;
        v25[5] = v13;
        dispatch_async(v23, v25);
      }
    }
  }

  return v13 != 0;
}

CFNumberRef sub_10000DEB4(uint64_t a1)
{
  valuePtr = -12700;
  if ([+[HidSensors readFailuresExpected:"readFailuresExpected:"]
  {
    valuePtr = 3000;
  }

  return sub_100002FB4(*(*(a1 + 32) + 80), *(a1 + 40), kCFNumberSInt32Type, &valuePtr);
}

void sub_10000DF18(uint64_t a1)
{
  sub_100002A20(*(*(a1 + 32) + 80), *(a1 + 48), kCFNumberSInt32Type, (*(*(a1 + 40) + 8) + 24));
  v2 = *(*(a1 + 32) + 80);
  v3 = *(a1 + 48);

  CFDictionaryRemoveValue(v2, v3);
}

CFNumberRef sub_10000E354(uint64_t a1)
{
  result = CFDictionaryGetValue(*(*(a1 + 32) + 672), *(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = *(*(a1 + 32) + 80);

    return sub_100002FB4(v4, v3, kCFNumberSInt32Type, (a1 + 48));
  }

  return result;
}

_BYTE *sub_10000E75C(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_10000E778(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

NSDictionary *sub_10000EC2C(uint64_t a1)
{
  v3[0] = @"TSBM";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFG";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TS1B";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP5d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"Die_Temp_MaxAverage";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxMax";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Charger_State";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Solar_Context";
  v4[10] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[11] = @"Pressure_Level";
  v4[11] = [NSNumber numberWithInt:*(a1 + 72)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
}

_UNKNOWN **sub_10000F5D0(uint64_t a1)
{
  result = &off_10008D7D0;
  *(*(a1 + 32) + 424) = result;
  return result;
}

_UNKNOWN **sub_10000F6AC(uint64_t a1)
{
  result = &off_10008D7E8;
  *(*(a1 + 32) + 432) = result;
  return result;
}

NSDictionary *sub_10000FC3C(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"Die_Temp_MaxAverage";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"Die_Temp_MaxMax";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSFC";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSBR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TS0A";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSFD";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSRM";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSFG";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Charger_State";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Solar_Context";
  v4[12] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[13] = @"Pressure_Level";
  v4[13] = [NSNumber numberWithInt:*(a1 + 80)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
}

void sub_1000102A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

NSDictionary *sub_100010584(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev4";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev7";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev8";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSFD";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBH";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"Die_Temp_MaxAverage";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"maxLI_PackagePower";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Solar_Context";
  v4[8] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[9] = @"Pressure_Level";
  v4[9] = [NSNumber numberWithInt:*(a1 + 64)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:10];
}

void sub_100013B08(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

NSDictionary *sub_100013DA4(uint64_t a1)
{
  v3[0] = @"TT7D";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TG0B";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFD";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFL";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSFG";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBH";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSBR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"Die_Temp_MaxAverage";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxMax";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"maxLI_CPU";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"maxLI_GPU";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"maxLI_RR";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Gas_Gauge_avg_Power";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Charger_State";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Solar_Context";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:15];
}

NSDictionary *sub_10001638C(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TG0V";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev1";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev2";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBR";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBE";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSRR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSRM";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSFL";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSFC";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSFD";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"TSBQ";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Die_Temp_MaxAverage";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Die_Temp_MaxMax";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Package_Power";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[15] = @"Charger_State";
  v4[15] = [NSNumber numberWithInt:*(a1 + 92)];
  v3[16] = @"Solar_Context";
  v4[16] = [NSNumber numberWithInt:*(a1 + 100)];
  v3[17] = @"Pressure_Level";
  v4[17] = [NSNumber numberWithInt:*(a1 + 96)];
  v3[18] = @"Accessory";
  v4[18] = [NSNumber numberWithInt:*(a1 + 101)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:19];
}

void sub_100016618(id a1)
{
  if (byte_1000ABCA2 == 1)
  {
    qword_1000A24C8 = objc_alloc_init(PowerZoneTelemetry);
  }
}

_UNKNOWN **sub_100017344(uint64_t a1)
{
  result = &off_10008D830;
  *(*(a1 + 32) + 400) = result;
  return result;
}

_UNKNOWN **sub_100017420(uint64_t a1)
{
  result = &off_10008D848;
  *(*(a1 + 32) + 408) = result;
  return result;
}

NSDictionary *sub_1000175F0(uint64_t a1)
{
  v3[0] = @"TT7D";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TG0B";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFD";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFL";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSFG";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBH";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"Die_Temp_MaxAverage";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"Die_Temp_MaxMax";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"maxLI_CPU";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"maxLI_GPU";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"maxLI_RR";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Gas_Gauge_avg_Power";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Charger_State";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Solar_Context";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
}

NSDictionary *sub_100018080(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSBQ";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBM";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBR";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP4d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TP5d";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"batteryVT";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Die_Temp_MaxAverage";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Die_Temp_MaxMax";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"maxLI_CPU";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"maxLI_GPU";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Gas_Gauge_avg_Power";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Charger_State";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[15] = @"Solar_Context";
  v4[15] = [NSNumber numberWithInt:*(a1 + 92)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:16];
}

NSDictionary *sub_100018490(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev3";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev4";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev5";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"PMU_Tdev7";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"Die_Temp_MaxAverage";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSFD";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSBH";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSBR";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Solar_Context";
  v4[9] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[10] = @"Pressure_Level";
  v4[10] = [NSNumber numberWithInt:*(a1 + 68)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:11];
}

void sub_100018FCC(void *a1, int a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 4)
  {
    if (a2)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000522D8();
      }
    }

    else
    {
      v6 = [a1 getMitigationTypeForClientID:*a3];
      if (v6 != -1)
      {
        v7 = v6;
        v8 = a1[69];
        if (v8)
        {
          v9 = *&byte_100085740[24 * v7 + 16];
          v10 = [v8 findComponent:?];
          v11 = *&a3[8 * v9];

          [v10 setCurrentPower:v11];
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100052254();
  }
}

void *sub_1000192C0(void *result, __n128 a2)
{
  v2 = result;
  v3 = 0;
  v4 = &off_100085748;
  a2.n128_u64[0] = 67109634;
  v9 = a2;
  do
  {
    if (*(v4 - 8) == *(v2 + 40))
    {
      result = [*(v2[4] + 552) findComponent:v3];
      if (result)
      {
        v5 = result;
        if (byte_1000AB2F8 == 1)
        {
          v6 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(v2 + 40);
            v8 = *v4;
            *buf = v9.n128_u32[0];
            v11 = v7;
            v12 = 1024;
            v13 = v3;
            v14 = 2080;
            v15 = v8;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> registration call back for clientID: %u MitigationType:%d clientName:%s", buf, 0x18u);
          }
        }

        result = [v5 setCPMSMitigationState:{objc_msgSend(v5, "isCPMSControlEnabled", *&v9)}];
      }
    }

    ++v3;
    v4 += 3;
  }

  while (v3 != 18);
  return result;
}

void sub_100019420(uint64_t a1)
{
  if (byte_1000A22A0 == 1)
  {
    [+[TGraphSampler sharedInstance](TGraphSampler updateAppleCareState:"updateAppleCareState:value:" value:4, *(a1 + 40)];
    if (notify_set_state(*(*(a1 + 32) + 560), *(a1 + 40)))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000523D4();
      }
    }

    else if (notify_post("com.apple.system.peakpowerpressurelevel") && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100052414();
    }
  }
}

uint64_t sub_1000194E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

NSDictionary *sub_10001A3F0(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"Die_Temp_MaxAverage";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"Die_Temp_MaxMax";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSFC";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSRR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSFD";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSRM";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Charger_State";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Solar_Context";
  v4[10] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[11] = @"Pressure_Level";
  v4[11] = [NSNumber numberWithInt:*(a1 + 72)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
}

_UNKNOWN **sub_10001B918(uint64_t a1)
{
  result = &off_10008D860;
  *(*(a1 + 32) + 408) = result;
  return result;
}

_UNKNOWN **sub_10001B9F4(uint64_t a1)
{
  result = &off_10008D878;
  *(*(a1 + 32) + 416) = result;
  return result;
}

NSDictionary *sub_10001C1F8(uint64_t a1)
{
  v5[0] = @"TG0B";
  v6[0] = [NSNumber numberWithInt:*(a1 + 40)];
  v5[1] = @"TG0V";
  v6[1] = [NSNumber numberWithInt:*(a1 + 44)];
  v5[2] = @"PMU_Tdev1";
  v6[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v5[3] = @"PMU_Tdev2";
  v6[3] = [NSNumber numberWithInt:*(a1 + 52)];
  v5[4] = @"TSRR";
  v6[4] = [NSNumber numberWithInt:*(a1 + 56)];
  v5[5] = @"TSBR";
  v6[5] = [NSNumber numberWithInt:*(a1 + 60)];
  v5[6] = @"TSRM";
  v6[6] = [NSNumber numberWithInt:*(a1 + 64)];
  v5[7] = @"TSFL";
  v6[7] = [NSNumber numberWithInt:*(a1 + 68)];
  v5[8] = @"TSFC";
  v6[8] = [NSNumber numberWithInt:*(a1 + 72)];
  v5[9] = @"TSFD";
  v6[9] = [NSNumber numberWithInt:*(a1 + 76)];
  v5[10] = @"mic2";
  v6[10] = [NSNumber numberWithInt:*(a1 + 80)];
  v5[11] = @"TSBQ";
  v6[11] = [NSNumber numberWithInt:*(a1 + 84)];
  v5[12] = @"TSFG";
  v6[12] = [NSNumber numberWithInt:*(a1 + 88)];
  v5[13] = @"Die_Temp_MaxAverage";
  v6[13] = [NSNumber numberWithInt:*(a1 + 92)];
  v5[14] = @"Die_Temp_MaxMax";
  v6[14] = [NSNumber numberWithInt:*(a1 + 96)];
  v5[15] = @"Package_Power";
  v6[15] = [NSNumber numberWithInt:*(a1 + 100)];
  v5[16] = @"Charger_State";
  v6[16] = [NSNumber numberWithInt:*(a1 + 104)];
  v5[17] = @"Solar_Context";
  v6[17] = [NSNumber numberWithInt:*(a1 + 112)];
  v5[18] = @"Pressure_Level";
  v2 = [NSNumber numberWithInt:*(a1 + 108)];
  v5[19] = @"Device_Activity";
  v3 = *(a1 + 32);
  v6[18] = v2;
  v6[19] = v3;
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:20];
}

NSDictionary *sub_10001C8F4(uint64_t a1)
{
  v3[0] = @"TSBM";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFG";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TS1B";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP5d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"Die_Temp_MaxAverage";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxMax";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Charger_State";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Solar_Context";
  v4[10] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[11] = @"Pressure_Level";
  v4[11] = [NSNumber numberWithInt:*(a1 + 72)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
}

void sub_10001E044(__CFArray *a1, CFStringRef format, double a3)
{
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, format, *&a3);
  CFArrayAppendValue(a1, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

id sub_10001E36C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 368) cacheArray];
  v3 = *(a1 + 40);

  return [v2 addObject:v3];
}

id sub_10001E610(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 44)];
  v3 = *(*(a1 + 32) + 392);
  v4 = *(a1 + 40);

  return [v3 setObject:v2 atIndexedSubscript:v4];
}

void sub_10001E660(uint64_t a1)
{
  v2 = PLShouldLogRegisteredEvent();
  if (v2 || *(*(a1 + 32) + 49) == 1)
  {
    v8.tv_sec = 0;
    *&v8.tv_usec = 0;
    if (!gettimeofday(&v8, 0))
    {
      v3 = CFStringCreateWithFormat(0, 0, @"%0.2f", v8.tv_usec / 1000000.0 + v8.tv_sec);
      if (v3)
      {
        v4 = v3;
        if (v2)
        {
          v5 = *(a1 + 32);
          if (*(v5 + 48) == 1)
          {
            [v5 updateSubkeyController:*(v5 + 328) forControlList:*(v5 + 24)];
            [*(a1 + 32) updateSubkeyController:*(*(a1 + 32) + 336) forControlList:*(*(a1 + 32) + 16)];
            [*(*(a1 + 32) + 328) logToPowerlog:v4];
            [*(*(a1 + 32) + 336) logToPowerlog:v4];
            [*(*(a1 + 32) + 352) logToPowerlog:v4];
            v5 = *(a1 + 32);
          }

          [v5 updatePowerLogDictionaryForSensors];
          [*(*(a1 + 32) + 344) logToPowerlog:v4];
          [*(*(a1 + 32) + 360) logToPowerlog:v4];
        }

        v6 = *(a1 + 32);
        if (*(v6 + 49) == 1)
        {
          [*(v6 + 384) logToPowerlog:v4];
          *(*(a1 + 32) + 49) = 0;
        }

        CFRelease(v4);
      }
    }
  }

  else if (byte_1000AB2F8 == 1)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v8.tv_sec) = 136315138;
      *(&v8.tv_sec + 4) = "[TGraphSampler logToPowerlog]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> %s: denied", &v8, 0xCu);
    }
  }
}

NSDictionary *sub_10001F7F8(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TG0V";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev1";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev2";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBR";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBE";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSRR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSRM";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSFL";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSFC";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSFD";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"TSBQ";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Die_Temp_MaxAverage";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Die_Temp_MaxMax";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Package_Power";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[15] = @"Charger_State";
  v4[15] = [NSNumber numberWithInt:*(a1 + 92)];
  v3[16] = @"Solar_Context";
  v4[16] = [NSNumber numberWithInt:*(a1 + 100)];
  v3[17] = @"Pressure_Level";
  v4[17] = [NSNumber numberWithInt:*(a1 + 96)];
  v3[18] = @"Accessory";
  v4[18] = [NSNumber numberWithInt:*(a1 + 101)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:19];
}

NSDictionary *sub_10001FD2C(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TS0A";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSBH";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TP6D";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"Die_Temp_MaxAverage";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"Die_Temp_MaxMax";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"maxLI_CPU";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"maxLI_GPU";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"maxLI_RR";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Gas_Gauge_avg_Power";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Charger_State";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Solar_Context";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:13];
}

NSDictionary *sub_1000205C4(uint64_t a1)
{
  v3[0] = @"TSBM";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFG";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TS1B";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP5d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"Die_Temp_MaxAverage";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxMax";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Package_Power";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Gas_Gauge_avg_Power";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Charger_State";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Solar_Context";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:13];
}

NSDictionary *sub_1000213E0(uint64_t a1)
{
  v3[0] = @"TSBM";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFG";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TS1B";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TR1d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"Die_Temp_MaxAverage";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxMax";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Package_Power";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Gas_Gauge_avg_Power";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Charger_State";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Solar_Context";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:13];
}

void sub_1000223B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000223FC(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(*(*v1 + 8) + 40) mitigationState];
    v9 = 136315394;
    v10 = "[AgingController initWithParams:currentWRa:currentUPOCount:]_block_invoke";
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Notification callback called. Mitigation state %d\n", &v9, 0x12u);
  }

  if ([*(*(*v1 + 8) + 40) mitigationState] != 1)
  {
    v5 = *(*(*v1 + 8) + 40);
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100052A9C(v1, v6);
    }
  }

  [*(*(*v1 + 8) + 40) updateMitigationStateAndNotify:3];
  [objc_msgSend(*(*(*v1 + 8) + 40) "defaults")];
  v7 = *(*(*v1 + 8) + 40);
  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100052B54(v1);
  }
}

void sub_100022C6C(uint64_t a1)
{
  v2 = IOServiceMatching("ApplePPM");
  *(*(a1 + 32) + 16) = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (!*(*(a1 + 32) + 16))
  {
    v3 = [objc_opt_class() log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100053114();
    }
  }
}

void sub_100022D5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100053150();
  }

  mach_service = xpc_connection_create_mach_service("com.apple.thermalMonitor.displayMitigationsEnabledNote", *(*(a1 + 32) + 32), 2uLL);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v5, "postNotification", 1);
  v6 = dispatch_semaphore_create(0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100022F50;
  handler[3] = &unk_100085B70;
  handler[4] = *(a1 + 32);
  xpc_connection_set_event_handler(mach_service, handler);
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100022FAC;
  v13[3] = &unk_100085B98;
  v13[4] = v6;
  v13[5] = v7;
  xpc_connection_send_message_with_reply(mach_service, v5, v8, v13);
  xpc_connection_activate(mach_service);
  v9 = *(a1 + 32);
  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000531D0();
  }

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v11 = *(a1 + 32);
  v12 = [objc_opt_class() log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10005320C();
  }

  xpc_connection_cancel(mach_service);
  if (v5)
  {
    xpc_release(v5);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (mach_service)
  {
    xpc_release(mach_service);
  }
}

void sub_100022F50(uint64_t a1, void *a2)
{
  if (a2 == &_xpc_error_connection_interrupted)
  {
    v2 = *(a1 + 32);
    v3 = [objc_opt_class() log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100053248();
    }
  }
}

void sub_100022FAC(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100053284();
  }
}

id sub_1000232A8(uint64_t a1)
{
  for (i = 0; i != 17; ++i)
  {
    result = [*(a1 + 32) getReleaseRateForComponent:i];
    *(*(a1 + 32) + 4 * i + 60) = result;
  }

  return result;
}

NSDictionary *sub_100023630(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TP4H";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFD";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFL";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBM";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSBR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"batteryVT";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TP5d";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"maxLI_PackagePower";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Die_Temp_MaxAverage";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Charger_State";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Solar_Context";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:13];
}

id sub_1000250EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 84) & ~(*(v1 + 84) >> 31);
  if (v2 >= 100)
  {
    v2 = 100;
  }

  *(v1 + 172) = dword_100067184[v2];
  return [*(a1 + 32) calculateAdditionalRadioMitigations];
}

void sub_1000252E0(int a1, CFStringRef theString1, uint64_t a3, void *a4)
{
  if (CFStringCompare(theString1, kCTDaemonReadyNotification, 0))
  {
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000537CC(theString1, v6);
    }
  }

  else
  {
    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> CoreTelephony is ready", v8, 2u);
      }
    }

    [a4 initializeRadio];
  }
}

void sub_100025484(uint64_t a1)
{
  sub_100031E78(*(*(a1 + 32) + 140), kCTThermalTxBackoff, kCFNumberSInt32Type, (*(a1 + 32) + 172));
  [*(a1 + 32) setAdditionalRadioMitigations];
  v2 = *(a1 + 32);
  v3 = *(v2 + 156);
  v4 = *(v2 + 140);
  v5 = _CTServerConnectionConfigMaxRadioPower();
  if (v5)
  {
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053844(v5, SHIDWORD(v5), v6);
    }
  }
}

float sub_100025D70(uint64_t a1)
{
  *(*(a1 + 32) + 28) = *(a1 + 40);
  if (byte_1000AB2F8 == 1)
  {
    v2 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 28);
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<Notice> _currentSemanticAmbientLightLevel %d", v5, 8u);
    }
  }

  [*(a1 + 32) processPotentialSolarStateChange:0];
  result = *(*(a1 + 32) + 28);
  *&dword_1000AB968 = result;
  return result;
}

void sub_100026430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

id sub_100026454(void *a1, uint64_t a2, void *a3)
{
  result = [a3 BOOLValue];
  v5 = *(a1[5] + 8);
  if (*(v5 + 24) != result || (*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *(v5 + 24) = result;
    *(*(a1[6] + 8) + 24) = 1;
    v6 = *(a1[4] + 16);

    return v6();
  }

  return result;
}

NSDictionary *sub_100026D8C(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev3";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"PMU_Tdev4";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"PMU_Tdev5";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"PMU2_Tdev1";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"PMU2_Tdev2";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"PMU2_Tdev3";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSBM";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSFD";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"TSBQ";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"TSBR";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Die_Temp_MaxAverage";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Die_Temp_MaxMax";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[15] = @"maxLI_PackagePower";
  v4[15] = [NSNumber numberWithInt:*(a1 + 92)];
  v3[16] = @"maxLI_Speaker";
  v4[16] = [NSNumber numberWithInt:*(a1 + 96)];
  v3[17] = @"BackLight_maxLI";
  v4[17] = [NSNumber numberWithInt:*(a1 + 100)];
  v3[18] = @"Solar_Context";
  v4[18] = [NSNumber numberWithInt:*(a1 + 120)];
  v3[19] = @"Pressure_Level";
  v4[19] = [NSNumber numberWithInt:*(a1 + 104)];
  v3[20] = @"Gas_Gauge_avg_Power";
  v4[20] = [NSNumber numberWithInt:*(a1 + 108)];
  v3[21] = @"Charger_State";
  v4[21] = [NSNumber numberWithInt:*(a1 + 112)];
  v3[22] = @"Package_Power";
  v4[22] = [NSNumber numberWithInt:*(a1 + 116)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:23];
}

uint64_t sub_100027EFC(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100027F08(uint64_t a1)
{
  dispatch_release(*(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100028CE8(v2);
  }

  return a1;
}

void sub_100027F44(uint64_t *a1, uint64_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  a1[3] = dispatch_queue_create("com.apple.ThermalMonitor.radioSensorQueue", v4);
  sub_100028210(__p, "cltm");
  v5 = a1[3];
  abm::client::CreateManager();
  v6 = *v25;
  v25[0] = 0;
  v25[1] = 0;
  v7 = a1[1];
  *a1 = v6;
  if (v7)
  {
    sub_100028CE8(v7);
    if (v25[1])
    {
      sub_100028CE8(v25[1]);
    }
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = a1[1];
  v35 = *a1;
  v36 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100028210(__p, abm::kEventBasebandBootStateChange);
  v29 = _NSConcreteStackBlock;
  v30 = 0x40000000;
  v31 = sub_1000282C8;
  v32 = &unk_100085CF0;
  v33 = a2;
  v34 = a1;
  abm::client::RegisterEventHandler();
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v36)
  {
    sub_100028CE8(v36);
  }

  v9 = a1[1];
  v27 = *a1;
  v28 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOn();
  if (v28)
  {
    sub_100028CE8(v28);
  }

  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v10 = a1[1];
  v20 = *a1;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::GetBasebandBootState();
  if (v21)
  {
    sub_100028CE8(v21);
  }

  if (LODWORD(__p[0]))
  {
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_100053AFC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    if (v26 >= 0)
    {
      v19 = v25;
    }

    else
    {
      v19 = v25[0];
    }

    if (!strcmp(v19, abm::kBasebandBootStateIsReady))
    {
      *(a1 + 16) = 1;
    }
  }

  if (*(a1 + 16) == 1)
  {
    (*(a2 + 16))(a2, 1);
  }

  if (v24 < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_100028180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100028210(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100028C0C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_1000282C8(uint64_t a1, xpc_object_t xdict)
{
  v3 = *(a1 + 40);
  string = xpc_dictionary_get_string(xdict, abm::kKeyBasebandBootState);
  if (!strcmp(string, abm::kBasebandBootStateIsReady))
  {
    *(v3 + 16) = 1;
    sub_1000283CC(v3);
    v5 = *(v3 + 8);
    v11 = *v3;
    v12 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    abm::client::EventsOff();
    if (v12)
    {
      sub_100028CE8(v12);
    }

    v6 = *(v3 + 8);
    v9 = *v3;
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    abm::client::EventsOn();
    if (v10)
    {
      sub_100028CE8(v10);
    }
  }

  else
  {
    *(v3 + 16) = 0;
  }

  v7 = *(v3 + 16);
  return (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_1000283A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100028CE8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000283CC(uint64_t *a1)
{
  keys = abm::kKeyFrequency;
  values = xpc_int64_create(5000);
  if (xpc_dictionary_create(&keys, &values, 1uLL))
  {
    v2 = a1[1];
    v13 = *a1;
    v14 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100028210(&__p, abm::kConfigThermalReportFrequency);
    abm::client::PerformCommand();
    if (v12 < 0)
    {
      operator delete(__p);
    }

    if (v14)
    {
      sub_100028CE8(v14);
    }
  }

  else
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_100053B38(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1000284D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_100028CE8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100028508(uint64_t *a1)
{
  v1 = a1[1];
  v4 = *a1;
  v5 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100028210(&__p, abm::kQueryThermalIDs);
  abm::client::PerformCommand();
  if (v3 < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    sub_100028CE8(v5);
  }
}

void sub_1000285D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    sub_100028CE8(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_100028604(uint64_t a1, int *a2, xpc_object_t object)
{
  if (!object || *a2)
  {
    v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      sub_100053B74(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = *(a1 + 32);
    v52 = 0;
    v53 = 0;
    v51 = 0;
    (*(v24 + 16))();
  }

  else
  {
    v5 = xpc_retain(object);
    if (v5)
    {
      v6 = v5;
      if (xpc_get_type(v5) == &_xpc_type_dictionary)
      {
        value = xpc_dictionary_get_value(v6, abm::kKeyThermalIDs);
        bytes_ptr = xpc_data_get_bytes_ptr(value);
        length = xpc_data_get_length(value);
        v42 = 0;
        v43 = 0;
        v44 = 0;
        sub_100028D54(&v42, 0, bytes_ptr, &bytes_ptr[length], length);
        v37 = *(a1 + 32);
        v38 = *a2;
        v40 = 0;
        v41 = 0;
        __p = 0;
        sub_100028F94(&__p, v42, v43, v43 - v42);
        (*(v37 + 16))(v37, v38 == 0, &__p);
        if (__p)
        {
          v40 = __p;
          operator delete(__p);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }
      }

      else
      {
        v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          sub_100053BB0(v7, v8, v9, v10, v11, v12, v13, v14);
        }

        v15 = *(a1 + 32);
        v46 = 0;
        v47 = 0;
        v45 = 0;
        (*(v15 + 16))();
      }
    }

    else
    {
      v25 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v25)
      {
        sub_100053BEC(v25, v26, v27, v28, v29, v30, v31, v32);
      }

      v33 = *(a1 + 32);
      v49 = 0;
      v50 = 0;
      v48 = 0;
      (*(v33 + 16))();
    }
  }
}

void sub_1000287F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100028864(id a1, Result *a2)
{
  if (a2->var0)
  {
    v2 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      sub_100053C28(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void sub_1000288A0(uint64_t *a1)
{
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100028210(&v9, abm::kEventThermalReport);
  abm::client::RegisterEventHandler();
  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v12)
  {
    sub_100028CE8(v12);
  }

  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v8)
  {
    sub_100028CE8(v8);
  }

  v4 = a1[1];
  v5 = *a1;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOn();
  if (v6)
  {
    sub_100028CE8(v6);
  }
}

void sub_1000289C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100028CE8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100028A14(uint64_t a1, xpc_object_t object)
{
  v3 = xpc_retain(object);
  if (v3)
  {
    v4 = v3;
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      value = xpc_dictionary_get_value(v4, abm::kKeyThermalData);
      bytes_ptr = xpc_data_get_bytes_ptr(value);
      length = xpc_data_get_length(value);
      v30 = 0;
      v31 = 0;
      v32 = 0;
      sub_100029060(&v30, 0, bytes_ptr, &bytes_ptr[length & 0xFFFFFFFFFFFFFFF8], length >> 3);
      v26 = *(a1 + 32);
      v28 = 0;
      v29 = 0;
      __p = 0;
      sub_1000292A8(&__p, v30, v31, (v31 - v30) >> 3);
      (*(v26 + 16))(v26, 1, &__p);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }
    }

    else
    {
      v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        sub_100053BB0(v5, v6, v7, v8, v9, v10, v11, v12);
      }

      v13 = *(a1 + 32);
      v34 = 0;
      v35 = 0;
      v33 = 0;
      (*(v13 + 16))();
    }
  }

  else
  {
    v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      sub_100053BEC(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    v22 = *(a1 + 32);
    v37 = 0;
    v38 = 0;
    v36 = 0;
    (*(v22 + 16))();
  }
}

void sub_100028BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100028C24(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100028C80(exception, a1);
}

std::logic_error *sub_100028C80(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100028CB4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100028CE8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

char *sub_100028D54(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_100028F7C();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_100028F94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100029010(result, a4);
  }

  return result;
}

void sub_100028FF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100029010(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100028F7C();
}

char *sub_100029060(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      sub_100028F7C();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_100029260(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void sub_100029260(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100028CB4();
}

uint64_t sub_1000292A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100029324(result, a4);
  }

  return result;
}

void sub_100029308(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100029324(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100029260(a1, a2);
  }

  sub_100028F7C();
}

void sub_10002989C(uint64_t a1, int a2)
{
  if (byte_1000AB2F8 == 1)
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"not ";
      if (a2)
      {
        v5 = &stru_1000891D8;
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> Baseband is %@ready", &v6, 0xCu);
    }
  }

  if (a2)
  {
    [*(a1 + 32) queryThermalSensorInfo];
  }
}

void sub_100029A38(uint64_t a1, int a2, unsigned __int8 **a3)
{
  if (!a2 || (v3 = *a3, v4 = a3[1], v5 = *a3, *a3 == v4))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053D14();
    }
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v8 = sub_100029B0C;
    v9 = &unk_100085DF0;
    v10 = *(a1 + 32);
    do
    {
      v6 = *v5++;
      v8(v7, v6);
    }

    while (v5 != v4);
  }
}

void sub_100029B0C(uint64_t a1, int a2)
{
  if (byte_1000AB2F8 == 1)
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> Got info for Baseband Thermal ID: %d", v5, 8u);
    }
  }

  if (a2 != 255)
  {
    *(*(a1 + 32) + 20) = 1;
  }
}

void sub_100029C54(uint64_t a1, int a2, unint64_t **a3)
{
  if (!a2 || (v3 = *a3, v4 = a3[1], v5 = *a3, *a3 == v4))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053D48();
    }
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v8 = sub_100029D28;
    v9 = &unk_100085E40;
    v10 = *(a1 + 32);
    do
    {
      v6 = *v5++;
      v8(v7, v6);
    }

    while (v5 != v4);
  }
}

void sub_100029D28(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = HIDWORD(a2);
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109376;
      v7[1] = v2;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Baseband sensor ID: %d temperature %d", v7, 0xEu);
    }
  }

  switch(v2)
  {
    case 2u:
      v6 = *(*(a1 + 32) + 16);
      if ((v6 & 0x80000000) != 0)
      {
        return;
      }

      goto LABEL_10;
    case 1u:
      v6 = *(*(a1 + 32) + 12);
      if ((v6 & 0x80000000) != 0)
      {
        return;
      }

      goto LABEL_10;
    case 0u:
      v6 = *(*(a1 + 32) + 8);
      if ((v6 & 0x80000000) == 0)
      {
LABEL_10:
        sub_10000533C(v6, v4);
      }

      break;
  }
}

NSDictionary *sub_10002A488(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"Die_Temp_MaxAverage";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"Die_Temp_MaxMax";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSFC";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSRR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSFD";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSRM";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Charger_State";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Solar_Context";
  v4[10] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[11] = @"Pressure_Level";
  v4[11] = [NSNumber numberWithInt:*(a1 + 72)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
}

NSDictionary *sub_10002A88C(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev3";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev4";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev5";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"PMU_Tdev7";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"Die_Temp_MaxAverage";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSFD";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSBH";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Solar_Context";
  v4[8] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[9] = @"Pressure_Level";
  v4[9] = [NSNumber numberWithInt:*(a1 + 64)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:10];
}

NSDictionary *sub_10002B0B8(uint64_t a1)
{
  v5[0] = @"TG0B";
  v6[0] = [NSNumber numberWithInt:*(a1 + 40)];
  v5[1] = @"TG0V";
  v6[1] = [NSNumber numberWithInt:*(a1 + 44)];
  v5[2] = @"PMU_Tdev1";
  v6[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v5[3] = @"PMU_Tdev2";
  v6[3] = [NSNumber numberWithInt:*(a1 + 52)];
  v5[4] = @"TSRR";
  v6[4] = [NSNumber numberWithInt:*(a1 + 56)];
  v5[5] = @"TSBR";
  v6[5] = [NSNumber numberWithInt:*(a1 + 60)];
  v5[6] = @"TSRM";
  v6[6] = [NSNumber numberWithInt:*(a1 + 64)];
  v5[7] = @"TSFL";
  v6[7] = [NSNumber numberWithInt:*(a1 + 68)];
  v5[8] = @"TSFC";
  v6[8] = [NSNumber numberWithInt:*(a1 + 72)];
  v5[9] = @"TSFD";
  v6[9] = [NSNumber numberWithInt:*(a1 + 76)];
  v5[10] = @"mic2";
  v6[10] = [NSNumber numberWithInt:*(a1 + 80)];
  v5[11] = @"TSBQ";
  v6[11] = [NSNumber numberWithInt:*(a1 + 84)];
  v5[12] = @"Die_Temp_MaxAverage";
  v6[12] = [NSNumber numberWithInt:*(a1 + 88)];
  v5[13] = @"Die_Temp_MaxMax";
  v6[13] = [NSNumber numberWithInt:*(a1 + 92)];
  v5[14] = @"Package_Power";
  v6[14] = [NSNumber numberWithInt:*(a1 + 96)];
  v5[15] = @"Charger_State";
  v6[15] = [NSNumber numberWithInt:*(a1 + 100)];
  v5[16] = @"Solar_Context";
  v6[16] = [NSNumber numberWithInt:*(a1 + 108)];
  v5[17] = @"Pressure_Level";
  v2 = [NSNumber numberWithInt:*(a1 + 104)];
  v5[18] = @"Device_Activity";
  v3 = *(a1 + 32);
  v6[17] = v2;
  v6[18] = v3;
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:19];
}

void sub_10002BBC0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void *sub_10002BBEC()
{
  v7 = 1024;
  v0 = sysctlbyname("kern.bootargs", &unk_1000AB318, &v7, 0, 0);
  v1 = qword_1000AB718;
  v2 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT);
  if (v0)
  {
    if (v2)
    {
      v3 = __error();
      v4 = strerror(*v3);
      *buf = 136315138;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "<Notice> could not retrieve device boot-args, failed with error: %s", buf, 0xCu);
    }

    return &unk_100067424;
  }

  else
  {
    v5 = &unk_1000AB318;
    if (v2)
    {
      *buf = 136315138;
      v9 = &unk_1000AB318;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "<Notice> retrieved current device boot-args: %s", buf, 0xCu);
    }
  }

  return v5;
}

id sub_10002BD14(uint64_t a1)
{
  [qword_1000AB300 updateNotifyTokens];
  v2 = [qword_1000AAC48 getMaxSensorValue];
  [qword_1000AB300 updateMaxValueToken:v2];
  v3 = qword_1000AB300;

  return [v3 updateThermalNotification:a1];
}

id sub_10002BD70(uint64_t a1)
{
  v2 = qword_1000AB300;
  v3 = [qword_1000AAC48 getPotentialForcedThermalPressureLevel];

  return [v2 updateThermalPressureLevelNotification:a1 shouldForceThermalPressure:v3];
}

BOOL sub_10002BDF0(CFStringRef key, const char *a2)
{
  v4 = dword_1000AAD60;
  if (!dword_1000AAD60)
  {
    v4 = sub_100031CAC(a2, 0, 0);
    dword_1000AAD60 = v4;
    if (!v4)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005403C();
      }

      return 0;
    }
  }

  v5 = sub_100005E68(key, v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  v9 = v7 == CFBooleanGetTypeID() && kCFBooleanTrue == v6;
  CFRelease(v6);
  return v9;
}

id sub_10002BEB4()
{
  if (byte_1000AAD90)
  {
    v0 = 0;
  }

  else
  {
    v0 = byte_1000AAD7C;
  }

  [+[HidSensors sharedInstance](HidSensors setInfoOnlySensorsActive:"setInfoOnlySensorsActive:", v0];
  v1 = +[ContextAwareThermalManager sharedInstance];

  return [(ContextAwareThermalManager *)v1 setInfoOnlySensorsActive:v0];
}

void sub_10002BF24(const __SCPreferences *a1)
{
  if (SCPreferencesGetValue(a1, @"thermalUseRawValuesPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"thermalUseRawValues", kCFBooleanFalse);
  }

  if (SCPreferencesGetValue(a1, @"forceSkipInfoOnlySensorsPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"forceSkipInfoOnlySensors", kCFBooleanFalse);
  }

  if (SCPreferencesGetValue(a1, @"hipPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"hipOverride", kCFBooleanTrue);
  }

  SCPreferencesSetValue(a1, @"simulateHip", kCFBooleanFalse);
  SCPreferencesSetValue(a1, @"forceHIPWhenConnected", kCFBooleanFalse);
  SCPreferencesSetValue(a1, @"BacklightStatus", kCFBooleanTrue);
  if (SCPreferencesGetValue(a1, @"sunlightOverridePersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"sunlightOverride");
  }

  if (SCPreferencesGetValue(a1, @"OSThermalNotificationPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"OSThermalNotificationEnabled", kCFBooleanTrue);
  }

  if (SCPreferencesGetValue(a1, @"candidateControlLoopsEnabledPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"candidateControlLoopsEnabled", kCFBooleanFalse);
  }

  if (SCPreferencesGetValue(a1, @"engageBehaviorPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"engageBehavior", kCFBooleanTrue);
  }

  if (SCPreferencesGetValue(a1, @"overrideControlEffortPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"overrideControlEffort", kCFBooleanFalse);
  }

  if (SCPreferencesGetValue(a1, @"overrideSensorLIPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"overrideSensorLI", kCFBooleanFalse);
  }

  if (SCPreferencesGetValue(a1, @"overrideTxMaxLimitPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"overrideTxMaxLimitKey", kCFBooleanFalse);
  }

  if (SCPreferencesGetValue(a1, @"tGraphTestCaseNumberPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"tGraphTestCaseNumber");
  }

  if (SCPreferencesGetValue(a1, @"tGraphTestCaseNamePersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"tGraphTestCaseName");
  }

  if (SCPreferencesGetValue(a1, @"LifetimeServoIntegratorState_P_PersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"LifetimeServoIntegratorState_P");
  }

  if (SCPreferencesGetValue(a1, @"LifetimeServoDieTempMaxMaxPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"LifetimeServoDieTempMaxMax");
  }

  if (SCPreferencesGetValue(a1, @"LifetimeServoDieTempMaxAveragePersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"LifetimeServoDieTempMaxAverage");
  }

  if (SCPreferencesGetValue(a1, @"LifetimeServoInstantaneousAF_P_PersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"LifetimeServoInstantaneousAF_P");
  }

  if (SCPreferencesGetValue(a1, @"LifetimeServoIntegratorState_E_PersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"LifetimeServoIntegratorState_E");
  }

  if (SCPreferencesGetValue(a1, @"LifetimeServoInstantaneousAF_E_PersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"LifetimeServoInstantaneousAF_E");
  }

  if (SCPreferencesGetValue(a1, @"LifetimeServoIntegratorState_G_PersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"LifetimeServoIntegratorState_G");
  }

  if (SCPreferencesGetValue(a1, @"LifetimeServoInstantaneousAF_G_PersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"LifetimeServoInstantaneousAF_G");
  }

  if (SCPreferencesGetValue(a1, @"LifetimeServoDieTempTarget_PersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"LifetimeServoDieTempTarget");
  }

  if (SCPreferencesGetValue(a1, @"ArcModuleThresholdKeyPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"ArcModuleThresholdKey");
  }

  if (SCPreferencesGetValue(a1, @"ArcVirtualThresholdKeyPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesRemoveValue(a1, @"ArcVirtualThresholdKey");
  }

  if (SCPreferencesGetValue(a1, @"OSThermalNotificationLoggingEnabledPersistentlyEnabled") != kCFBooleanTrue)
  {
    SCPreferencesSetValue(a1, @"OSThermalNotificationLoggingEnabled", kCFBooleanFalse);
  }

  v2 = sub_10002BBEC();
  if (strstr(v2, "default_tgraph_disabled"))
  {
    v3 = a1;
LABEL_58:
    SCPreferencesRemoveValue(v3, @"tGraphLogFile");
    goto LABEL_59;
  }

  if (!sub_1000032F4())
  {
    v3 = a1;
    goto LABEL_58;
  }

  Value = SCPreferencesGetValue(a1, @"tGraphLogFile");
  if (!Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFStringGetTypeID()) || SCPreferencesGetValue(a1, @"tGraphLogFilePersistentlyEnabled") != kCFBooleanTrue || CFStringCompare(v5, @"/var/log/tgraph.csv", 0) == kCFCompareEqualTo)
  {
    SCPreferencesSetValue(a1, @"tGraphLogFilePersistentlyEnabled", kCFBooleanTrue);
    SCPreferencesSetValue(a1, @"tGraphLogFile", @"/var/log/tgraph.csv");
    SCPreferencesSetValue(a1, @"forceSkipInfoOnlySensors", kCFBooleanTrue);
    v7 = 1;
    goto LABEL_60;
  }

LABEL_59:
  v7 = 0;
LABEL_60:
  byte_1000AAD91 = v7;
  v8 = SCPreferencesGetValue(a1, @"OSThermalNotificationLoggingEnabled");
  byte_1000AB2F8 = v8 == kCFBooleanTrue;
  if (v8 == kCFBooleanTrue)
  {
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "en";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> sensor status logging %sabled", &v10, 0xCu);
    }
  }

  if (!SCPreferencesCommitChanges(a1) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051514();
  }
}

void sub_10002C640(SCPreferencesRef prefs, uint64_t a2, int a3)
{
  if (!a3)
  {
    goto LABEL_33;
  }

  byte_1000AB2F8 = SCPreferencesGetValue(prefs, @"OSThermalNotificationLoggingEnabled") == kCFBooleanTrue;
  if (byte_1000AB2F8)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "en";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> sensor status logging %sabled", buf, 0xCu);
    }
  }

  Value = SCPreferencesGetValue(prefs, @"overrideSensor");
  byte_1000AB308 = Value == kCFBooleanTrue;
  if (byte_1000AB2F8 == 1)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "dis";
      if (Value == kCFBooleanTrue)
      {
        v8 = "en";
      }

      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> sensor status thermalOverrideSensor %sabled", buf, 0xCu);
      if (byte_1000AB308)
      {
        goto LABEL_11;
      }

LABEL_32:
      sub_100032828();
      goto LABEL_33;
    }
  }

  if (Value != kCFBooleanTrue)
  {
    goto LABEL_32;
  }

LABEL_11:
  LODWORD(valuePtr) = 0;
  LODWORD(values) = 0;
  v9 = SCPreferencesGetValue(prefs, @"setSensorID");
  v10 = SCPreferencesGetValue(prefs, @"overrideSensorPersistentlyEnabled");
  if (v9)
  {
    v11 = v10;
    v12 = CFGetTypeID(v9);
    if (v12 == CFArrayGetTypeID() && CFArrayGetCount(v9) == 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      v14 = CFArrayGetValueAtIndex(v9, 1);
      CFNumberGetValue(v14, kCFNumberIntType, &values);
      v15 = valuePtr;
      if (valuePtr <= 0x3F)
      {
        v16 = values;
        *(&qword_1000AB824 + valuePtr) = values;
        v17 = qword_1000AB928 | (1 << v15);
        qword_1000AB928 = v17;
        log = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = v15;
          *&buf[8] = 1024;
          *&buf[10] = v16;
          *&buf[14] = 2048;
          *&v103 = v17;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "<Notice> sensor ID: %d set with temperature: %d - Overridemask %llx", buf, 0x18u);
        }
      }

      if (v11 != kCFBooleanTrue)
      {
        SCPreferencesRemoveValue(prefs, @"setSensorID");
        if (!SCPreferencesCommitChanges(prefs) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100051514();
        }
      }
    }
  }

  v18 = SCPreferencesGetValue(prefs, @"setSensor4CCID");
  v19 = SCPreferencesGetValue(prefs, @"setSensor4CCVAL");
  if (v18)
  {
    v20 = v19;
    v21 = CFGetTypeID(v18);
    if (v21 == CFStringGetTypeID() && v20 != 0)
    {
      v23 = CFGetTypeID(v20);
      if (v23 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v20, kCFNumberIntType, &values);
        sub_10003270C(v18, values);
        if (SCPreferencesGetValue(prefs, @"override4CCPersistentlyEnabled") != kCFBooleanTrue)
        {
          SCPreferencesRemoveValue(prefs, @"setSensor4CCID");
          SCPreferencesRemoveValue(prefs, @"setSensor4CCVAL");
          if (!SCPreferencesCommitChanges(prefs) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100051514();
          }
        }
      }
    }
  }

LABEL_33:
  v24 = SCPreferencesGetValue(prefs, @"hipOverride");
  byte_1000A22A1 = v24 != kCFBooleanFalse;
  if (byte_1000AB2F8 == 1)
  {
    v25 = v24;
    v26 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v27 = "dis";
      if (v25 != kCFBooleanFalse)
      {
        v27 = "en";
      }

      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "<Notice> HIP feature %sabled", buf, 0xCu);
    }
  }

  v28 = SCPreferencesGetValue(prefs, @"simulateHip");
  byte_1000AB309 = v28 != kCFBooleanFalse;
  if (byte_1000AB2F8 == 1)
  {
    v29 = v28;
    v30 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v31 = "dis";
      if (v29 != kCFBooleanFalse)
      {
        v31 = "en";
      }

      *buf = 136315138;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "<Notice> HIP simulation %sabled", buf, 0xCu);
    }
  }

  v32 = SCPreferencesGetValue(prefs, @"forceHIPWhenConnected");
  byte_1000AB30A = v32 != kCFBooleanFalse;
  if (byte_1000AB2F8 == 1)
  {
    v33 = v32;
    v34 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v35 = "dis";
      if (v33 != kCFBooleanFalse)
      {
        v35 = "en";
      }

      *buf = 136315138;
      *&buf[4] = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "<Notice> HIP force when connected %sabled", buf, 0xCu);
    }
  }

  v36 = SCPreferencesGetValue(prefs, @"engageBehavior");
  byte_1000A22A0 = v36 != kCFBooleanFalse;
  if (byte_1000AB2F8 == 1)
  {
    v37 = v36;
    v38 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v39 = "dis";
      if (v37 != kCFBooleanFalse)
      {
        v39 = "en";
      }

      *buf = 136315138;
      *&buf[4] = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "<Notice> mitigation behavior %sabled", buf, 0xCu);
    }
  }

  v40 = SCPreferencesGetValue(prefs, @"candidateControlLoopsEnabled");
  byte_1000AB312 = v40 == kCFBooleanTrue;
  if (byte_1000AB2F8 == 1)
  {
    v41 = v40;
    v42 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v43 = "dis";
      if (v41 == kCFBooleanTrue)
      {
        v43 = "en";
      }

      *buf = 136315138;
      *&buf[4] = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "<Notice> candidate control loops %sabled", buf, 0xCu);
    }
  }

  v44 = SCPreferencesGetValue(prefs, @"OSThermalNotificationEnabled");
  if (byte_1000AB2F8 == 1)
  {
    v45 = v44;
    v46 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v47 = "dis";
      if (v45 == kCFBooleanTrue)
      {
        v47 = "en";
      }

      *buf = 136315138;
      *&buf[4] = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "<Notice> thermal monitoring %sabled", buf, 0xCu);
    }
  }

  if (a3)
  {
    v48 = SCPreferencesGetValue(prefs, @"tGraphTestCaseNumber");
    v49 = SCPreferencesGetValue(prefs, @"tGraphTestCaseName");
    if (v48 && (v50 = CFGetTypeID(v48), v50 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(v48, kCFNumberIntType, &dword_1000AADE8);
      if (!v49)
      {
        goto LABEL_72;
      }
    }

    else
    {
      dword_1000AADE8 = 0;
      if (!v49)
      {
        goto LABEL_72;
      }
    }

    if (CFStringGetCString(v49, &byte_1000AADEC, 32, 0))
    {
LABEL_73:
      sub_10002D7B4(prefs);
      v51 = +[TGraphSampler sharedInstance];
      if (byte_1000A22A0)
      {
        v52 = 100;
      }

      else
      {
        v52 = 0;
      }

      [(TGraphSampler *)v51 updatePowerlogMiscState:5 value:v52];
      goto LABEL_77;
    }

    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000540F8();
    }

LABEL_72:
    byte_1000AADEC = 0;
    goto LABEL_73;
  }

LABEL_77:
  v53 = SCPreferencesGetValue(prefs, @"sunlightOverride");
  if (!v53)
  {
    v56 = 0;
LABEL_83:
    dword_1000AB314 = v56;
    goto LABEL_84;
  }

  v54 = v53;
  v55 = CFGetTypeID(v53);
  if (v55 == CFBooleanGetTypeID())
  {
    if (v54 == kCFBooleanTrue)
    {
      v56 = 1;
    }

    else
    {
      v56 = -1;
    }

    goto LABEL_83;
  }

LABEL_84:
  if (byte_1000AB2F8 == 1)
  {
    v57 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = dword_1000AB314;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "<Notice> sunlight override: %d", buf, 8u);
    }
  }

  v58 = SCPreferencesGetValue(prefs, @"thermalUseRawValues");
  byte_1000AAC5C = v58 == kCFBooleanTrue;
  if (byte_1000AB2F8 == 1)
  {
    v59 = v58;
    v60 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v61 = "dis";
      if (v59 == kCFBooleanTrue)
      {
        v61 = "en";
      }

      *buf = 136315138;
      *&buf[4] = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "<Notice> Raw Value Mode %sabled", buf, 0xCu);
    }
  }

  v62 = SCPreferencesGetValue(prefs, @"forceSkipInfoOnlySensors");
  if (v62)
  {
    v63 = v62;
    v64 = v62 == kCFBooleanTrue;
    byte_1000AAD90 = v62 == kCFBooleanTrue;
    if (byte_1000AB2F8 == 1)
    {
      v65 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v66 = "off";
        if (v63 == kCFBooleanTrue)
        {
          v66 = "on";
        }

        *buf = 136315138;
        *&buf[4] = v66;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "<Notice> Force Skip Info Only Sensors %s", buf, 0xCu);
        v64 = byte_1000AAD90;
      }
    }

    if (v64)
    {
      v67 = 0;
    }

    else
    {
      v67 = byte_1000AAD7C;
    }

    [+[HidSensors sharedInstance](HidSensors setInfoOnlySensorsActive:"setInfoOnlySensorsActive:", v67];
    [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager setInfoOnlySensorsActive:"setInfoOnlySensorsActive:", v67];
  }

  if (byte_1000A22A0 != 1 || !notify_post(kOSThermalNotificationName))
  {
    v68 = SCPreferencesGetValue(prefs, @"setExpectedSensorMask");
    if (v68)
    {
      v69 = v68;
      v70 = CFGetTypeID(v68);
      if (v70 == CFNumberGetTypeID())
      {
        v71 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = qword_1000AAD98;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "<Notice> Old Expected Sensor Mask: %llx ", buf, 0xCu);
        }

        CFNumberGetValue(v69, kCFNumberLongLongType, &qword_1000AAD98);
        v72 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = qword_1000AAD98;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "<Notice> New Expected Sensor Mask: %llx ", buf, 0xCu);
        }

        if (SCPreferencesGetValue(prefs, @"setExpectedSensorMaskPersistentlyEnabled") != kCFBooleanTrue)
        {
          SCPreferencesRemoveValue(prefs, @"setExpectedSensorMask");
          if (!SCPreferencesCommitChanges(prefs) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100051514();
          }
        }
      }
    }

    if (SCPreferencesGetValue(prefs, @"getCurrentSensorSet") == kCFBooleanTrue)
    {
      SCPreferencesSetValue(prefs, @"getCurrentSensorSet", kCFBooleanFalse);
      *buf = qword_1000AADB0;
      v73 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
      SCPreferencesSetValue(prefs, @"expectedSensorMaskValue", v73);
      if (!SCPreferencesCommitChanges(prefs) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }

      CFRelease(v73);
    }

    if (SCPreferencesGetValue(prefs, @"hipStates") == kCFBooleanTrue)
    {
      SCPreferencesSetValue(prefs, @"hipStates", kCFBooleanFalse);
      v74 = byte_1000AB30B ? kCFBooleanTrue : kCFBooleanFalse;
      SCPreferencesSetValue(prefs, @"BacklightStatus", v74);
      v75 = byte_1000AB30C ? kCFBooleanTrue : kCFBooleanFalse;
      SCPreferencesSetValue(prefs, @"ConnectedExternallyStatus", v75);
      v76 = byte_1000AB30D ? kCFBooleanTrue : kCFBooleanFalse;
      SCPreferencesSetValue(prefs, @"SystemToppingOffStatus", v76);
      v77 = byte_1000AB30E ? kCFBooleanTrue : kCFBooleanFalse;
      SCPreferencesSetValue(prefs, @"AaudioStatus", v77);
      v78 = byte_1000AB30F ? kCFBooleanTrue : kCFBooleanFalse;
      SCPreferencesSetValue(prefs, @"CarSessionStatus", v78);
      v79 = byte_1000AB310 ? kCFBooleanTrue : kCFBooleanFalse;
      SCPreferencesSetValue(prefs, @"WakeInProgressStatus", v79);
      v80 = byte_1000AB311 ? kCFBooleanTrue : kCFBooleanFalse;
      SCPreferencesSetValue(prefs, @"StockholmFieldDetectInProgressStatus", v80);
      if (!SCPreferencesCommitChanges(prefs) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051514();
      }
    }

    v81 = SCPreferencesGetValue(prefs, @"overrideTxMaxLimitKey");
    if (byte_1000AB2F8 == 1)
    {
      v82 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v83 = "dis";
        if (v81 == kCFBooleanTrue)
        {
          v83 = "en";
        }

        *buf = 136315138;
        *&buf[4] = v83;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "<Notice> Override Tx Max Limit %sabled", buf, 0xCu);
      }
    }

    if (v81 != kCFBooleanTrue)
    {
      goto LABEL_152;
    }

    v84 = SCPreferencesGetValue(prefs, @"setTxMaxLimit");
    if (!v84)
    {
      goto LABEL_152;
    }

    v85 = v84;
    v86 = CFGetTypeID(v84);
    if (v86 != CFArrayGetTypeID())
    {
      goto LABEL_152;
    }

    v97 = 0;
    v98 = 0;
    v87 = CFArrayGetValueAtIndex(v85, 0);
    CFNumberGetValue(v87, kCFNumberIntType, &v98);
    v88 = CFArrayGetValueAtIndex(v85, 1);
    CFNumberGetValue(v88, kCFNumberIntType, &v97);
    v89 = v98;
    v99 = v97;
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v99);
    if (v89 > 3)
    {
      if (v89 <= 5)
      {
        if (v89 == 4)
        {
          v90 = &kCTMaxTransmitPowerPercentageUTRAN2;
        }

        else
        {
          v90 = &kCTMaxThroughputPercentageUTRAN3;
        }

        goto LABEL_173;
      }

      if (v89 == 6)
      {
        v90 = &kCTThermalTxBackoff;
        goto LABEL_173;
      }

      if (v89 == 7)
      {
        v90 = &kCTThermalTxDutyCycle;
        goto LABEL_173;
      }
    }

    else
    {
      if (v89 > 1)
      {
        if (v89 == 2)
        {
          v90 = &kCTMaxTransmitPowerPercentageUMTS;
        }

        else
        {
          v90 = &kCTMaxThroughputPercentageLTE;
        }

        goto LABEL_173;
      }

      if (!v89)
      {
        v90 = &kCTMaxTransmitPowerPercentage2G;
        goto LABEL_173;
      }

      if (v89 == 1)
      {
        v90 = &kCTMaxTransmitPowerPercentageC2K;
LABEL_173:
        valuePtr = *v90;
        goto LABEL_174;
      }
    }

    valuePtr = kCTMaxThroughputPercentageLTE;
    v89 = 3;
LABEL_174:
    v91 = CFDictionaryCreate(kCFAllocatorDefault, &valuePtr, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRelease(values);
    v104 = 0;
    *buf = 0u;
    v103 = 0u;
    v92 = _CTServerConnectionCreateWithIdentifier();
    if (!v92)
    {
      fwrite("_CTServerConnectionCreate() failed", 0x22uLL, 1uLL, __stderrp);
    }

    v93 = _CTServerConnectionConfigMaxRadioPower();
    v94 = qword_1000AB718;
    v95 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
    if (v93)
    {
      if (v95)
      {
        sub_100054160(v93, SHIDWORD(v93));
        if (!v92)
        {
          goto LABEL_183;
        }

        goto LABEL_182;
      }
    }

    else if (v95)
    {
      sub_1000541F0(&v99, v89, v94);
      if (!v92)
      {
        goto LABEL_183;
      }

      goto LABEL_182;
    }

    if (!v92)
    {
LABEL_183:
      CFRelease(v91);
      if (SCPreferencesGetValue(prefs, @"overrideTxMaxLimitPersistentlyEnabled") != kCFBooleanTrue)
      {
        SCPreferencesRemoveValue(prefs, @"setTxMaxLimit");
        if (!SCPreferencesCommitChanges(prefs) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100051514();
        }
      }

LABEL_152:
      SCPreferencesSynchronize(prefs);
      return;
    }

LABEL_182:
    CFRelease(v92);
    goto LABEL_183;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005412C();
  }
}

void sub_10002D7B4(const __SCPreferences *a1)
{
  Value = SCPreferencesGetValue(a1, @"tGraphLogFile");
  memset(&v13, 0, sizeof(v13));
  if (!Value)
  {
    v6 = dword_1000A22B8;
    if (dword_1000A22B8 < 0)
    {
      if (byte_1000AB2F8)
      {
        v8 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> no tGraph log", buffer, 2u);
        }
      }
    }

    else
    {
      if (byte_1000AB2F8)
      {
        v7 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Closing tGraph log file", buffer, 2u);
          v6 = dword_1000A22B8;
        }
      }

      byte_1000AAD7C = 0;
      close(v6);
      dword_1000A22B8 = -1;
    }

LABEL_31:
    if (byte_1000AAD90)
    {
      v10 = 0;
    }

    else
    {
      v10 = byte_1000AAD7C;
    }

    [+[HidSensors sharedInstance](HidSensors setInfoOnlySensorsActive:"setInfoOnlySensorsActive:", v10];
    [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager setInfoOnlySensorsActive:"setInfoOnlySensorsActive:", v10];
    if (byte_1000AB2F8 == 1)
    {
      v11 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        if (byte_1000AAD7C)
        {
          v12 = "en";
        }

        else
        {
          v12 = "dis";
        }

        *buf = 136315138;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> tGraph log %sabled", buf, 0xCu);
      }
    }

    return;
  }

  if (CFStringGetFileSystemRepresentation(Value, buffer, 1024))
  {
    v2 = open(buffer, 522, 420);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = v2;
      if (fstat(v2, &v13) < 0)
      {
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005427C();
        }

        goto LABEL_25;
      }

      v4 = dword_1000A22B8;
      if ((dword_1000A22B8 & 0x80000000) == 0)
      {
        if (*byte_1000AAE10 == v13.st_dev && *&byte_1000AAE10[8] == v13.st_ino)
        {
          if (byte_1000AB2F8 == 1)
          {
            v5 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> tGraph log to same file", buf, 2u);
            }
          }

LABEL_25:
          close(v3);
          return;
        }

        if (byte_1000AB2F8 == 1)
        {
          v9 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> tGraph log to new file", buf, 2u);
            v4 = dword_1000A22B8;
          }
        }

        close(v4);
      }

      dword_1000A22B8 = v3;
      *byte_1000AAE10 = v13;
      byte_1000AAD7C = 1;
      sub_100006E10(1);
      goto LABEL_31;
    }

    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000542FC();
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005437C();
  }
}

uint64_t getThermalUpdateTime()
{
  if (byte_1000A22A2)
  {
    return qword_1000AADA8;
  }

  else
  {
    return 0;
  }
}

const char *sub_10002DBC8(char *a1)
{
  v2 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<Notice> Model name = %s", &v5, 0xCu);
  }

  v3 = "mac";
  if (!strstr(a1, "Mac") && strcmp(a1, "eperm-d995af6e429c4224"))
  {
    return "";
  }

  return v3;
}

void thermalMonitor_init()
{
  v48 = 64;
  qword_1000AB930 = SCPreferencesCreate(0, @"OSThermalStatus", @"OSThermalStatus.plist");
  if (qword_1000AB930)
  {
    if (sysctlbyname("hw.model", cStr, &v48, 0, 0) < 0)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000545EC();
      }
    }

    else
    {
      v0 = os_log_create("com.apple.cltm", "thermalmonitor");
      qword_1000AB718 = v0;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.version) = 136315138;
        *(&buf.version + 4) = cStr;
        _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "<Notice> Model name = %s", &buf, 0xCu);
      }

      v1 = 0;
      v2 = 1;
      while (v1 > 0x3C || cStr[v1] != 68 || cStr[v1 + 1] != 69 || cStr[v1 + 2] != 86)
      {
        v2 = v1++ < 0x3F;
        if (v1 == 64)
        {
          goto LABEL_11;
        }
      }

      strcpy(&cStr[v1], "AP");
      if (v2)
      {
        byte_1000AB2FA = 1;
        v40 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.version) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "<Notice> Detected Dev board.", &buf, 2u);
        }
      }

LABEL_11:
      v3 = +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [objc_msgSend(@"/System/Library/ThermalMonitor/" stringByAppendingString:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", cStr)), "stringByAppendingString:", @"-Info.plist"}]);
      if (v3)
      {
        v3 = v3;
      }

      qword_1000AADB8 = v3;
      *&buf.version = xmmword_1000673F0;
      *&buf.retain = xmmword_100067400;
      buf.copyDescription = 0x100000000CLL;
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      for (i = 0; i != 40; i += 4)
      {
        v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf + i);
        CFArrayAppendValue(Mutable, v6);
        if (v6)
        {
          CFRelease(v6);
        }
      }

      if (Mutable)
      {
        v7 = CFGetTypeID(Mutable);
        if (v7 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(Mutable);
          if (Count >= 1)
          {
            v10 = Count;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            *&v9 = 67109376;
            v47 = v9;
            do
            {
              valuePtr = -1;
              ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v11);
              v15 = CFGetTypeID(ValueAtIndex);
              if (v15 == CFNumberGetTypeID() && (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr), _OSThermalNotificationSetLevelForBehavior(), v16 = _OSThermalNotificationLevelForBehavior(), v17 = valuePtr, v16 != valuePtr))
              {
                v19 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                {
                  v53.version = __PAIR64__(v12, v47);
                  LOWORD(v53.info) = 1024;
                  *(&v53.info + 2) = v17;
                  _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "<Error> Failed to set OSThermalNotificationLevel %d with %d", &v53, 0xEu);
                }

                v18 = (v13 + 1);
                if (v13 > 10)
                {
                  v20 = qword_1000AB718;
                  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000543B0(&v49, v50, v20);
                  }
                }

                else
                {
                  --v12;
                }
              }

              else
              {
                v18 = v13;
              }

              v11 = ++v12;
              v13 = v18;
            }

            while (v10 > v12);
          }

          if (byte_1000AB2F8 == 1)
          {
            v21 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v53.version) = 138412290;
              *(&v53.version + 4) = Mutable;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<Notice> mitigation levels: %@", &v53, 0xCu);
            }
          }
        }

        CFRelease(Mutable);
      }

      v22 = qword_1000AADB8;
      if (qword_1000AADB8)
      {
        v23 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, kCFAllocatorNull);
        if (v23)
        {
          v24 = v23;
          Length = CFStringGetLength(v23);
          if (Length < 1)
          {
            v28 = 0;
          }

          else
          {
            v26 = Length;
            v27 = 0;
            LODWORD(v28) = 0;
            v29 = 1;
            do
            {
              CharacterAtIndex = CFStringGetCharacterAtIndex(v24, v27);
              if (v29)
              {
                v28 = (v28 + CharacterAtIndex);
              }

              else
              {
                v28 = (CharacterAtIndex * v28);
              }

              v29 ^= 1u;
              ++v27;
            }

            while (v26 != v27);
          }

          CFRelease(v24);
          qword_1000AAC48 = [[ThermalManager alloc] initWithConfig:v22];
          [qword_1000AAC48 SaveProductString:v28];
          sub_10002E804(3);
        }

        if (byte_1000AB2FA == 1)
        {
          qword_1000AADA0 = -1;
        }

        v32 = sub_10002BBEC();
        byte_1000A22A2 = strstr(v32, "wdt_test=thermal") == 0;
        qword_1000AAD88 = off_1000A22A8;
        Current = CFRunLoopGetCurrent();
        qword_1000AB2E8 = CFRetain(Current);
        sub_10002BF24(qword_1000AB930);
        memset(&v53, 0, sizeof(v53));
        if (SCPreferencesSetCallback(qword_1000AB930, sub_10002EA8C, &v53))
        {
          if (SCPreferencesScheduleWithRunLoop(qword_1000AB930, qword_1000AB2E8, kCFRunLoopDefaultMode))
          {
            *&qword_1000AAD80 = -kCFAbsoluteTimeIntervalSince1970;
            [qword_1000AAC48 updatePrefs:qword_1000AB930 :0];
            [qword_1000AAC48 createNewProduct:qword_1000AB2E8];
            [qword_1000AAC48 initDataCollection];
            sub_10002D7B4(qword_1000AB930);
            v34 = +[TGraphSampler sharedInstance];
            if (byte_1000A22A0)
            {
              v35 = 100;
            }

            else
            {
              v35 = 0;
            }

            [(TGraphSampler *)v34 updatePowerlogMiscState:5 value:v35, v47];
            if (dword_1000AAEA0)
            {
              if (byte_1000AB2F8 == 1)
              {
                v36 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.version) = 0;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "<Notice> deregistering for wake notification before re-registering", &buf, 2u);
                }
              }

              if (qword_1000AAEB8)
              {
                CFRunLoopRemoveSource(qword_1000AB2E8, qword_1000AAEB8, kCFRunLoopDefaultMode);
                qword_1000AAEB8 = 0;
              }

              if (dword_1000AAEB0)
              {
                IODeregisterForSystemPower(&dword_1000AAEB0);
                dword_1000AAEB0 = 0;
              }

              if (dword_1000AAEA0)
              {
                IOServiceClose(dword_1000AAEA0);
                dword_1000AAEA0 = 0;
              }

              if (qword_1000AAEA8)
              {
                IONotificationPortDestroy(qword_1000AAEA8);
                qword_1000AAEA8 = 0;
              }

              if (byte_1000AB2F8 == 1)
              {
                v37 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.version) = 0;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "<Notice> deregistered for wake notification", &buf, 2u);
                }
              }

              sub_100004D20();
            }

            dword_1000AAEA0 = IORegisterForSystemPower(0, &qword_1000AAEA8, sub_1000081E8, &dword_1000AAEB0);
            if (dword_1000AAEA0 && qword_1000AAEA8)
            {
              qword_1000AAEB8 = IONotificationPortGetRunLoopSource(qword_1000AAEA8);
              CFRunLoopAddSource(qword_1000AB2E8, qword_1000AAEB8, kCFRunLoopDefaultMode);
              if (byte_1000AB2F8 == 1)
              {
                v38 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.version) = 0;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "<Notice> registered for wake notification", &buf, 2u);
                }
              }
            }

            else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_1000543F0();
            }

            [qword_1000AAC48 createConnectionToCT];
            v39 = [qword_1000AAC48 getProductTotalSensors];
            dword_1000AAD64 = v39;
            if (v39)
            {
              if (v39 >= 65 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
              {
                sub_100054424();
              }
            }

            else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_100054458();
            }

            if ([qword_1000AAC48 getProductTotalPowerSensors] >= 11 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_10005448C();
            }

            qword_1000AB928 = 0;
            dword_1000AAEC0 = dword_1000AAD64 - 1;
            if (dword_1000AAD64 >= 1)
            {
              v41 = 4 * dword_1000AAD64;
              memset_pattern16(&qword_1000AB824, &unk_100067410, v41);
              memset_pattern16(dword_1000AB724, &unk_100067410, v41);
              memset_pattern16(dword_1000AAC60, &unk_100067410, v41);
            }

            qword_1000AAD98 = [+[HidSensors sharedInstance](HidSensors getWatchDogMask];
            qword_1000AADD8 = qword_1000AAD98;
            dword_1000AAC50 = [qword_1000AAC48 getProductCalibrationSensorID];
            dword_1000AAC54 = [qword_1000AAC48 getProductCalibrationDefault];
            dword_1000AAD78 = [qword_1000AAC48 getRequiredCalibrationResistorSamples];
            qword_1000AAD68 = [qword_1000AAC48 getProductFilterValues];
            if (!qword_1000AAD68 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              sub_1000544C0();
            }

            if ((byte_1000AB2FA & 1) == 0)
            {
              qword_1000AADA0 = 1;
            }

            v42 = [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager getContextState:"getContextState:", 0]!= -1;
            v43 = [qword_1000AAC48 getModeratePressureVersion];
            v44 = [NotificationManager alloc];
            qword_1000AB300 = [(NotificationManager *)v44 init:dword_1000AAEC0 withSolarInfo:v42 withModeratePressureVersion:v43];
            [qword_1000AAC48 initializeReadPrefs:qword_1000AB930];
            sub_1000336D0(@"/Library/Preferences/SystemConfiguration/OSThermalStatus.plist");
            v45 = qword_1000AAC48;
            v46 = CFAbsoluteTimeGetCurrent();
            buf.version = 0;
            memset(&buf.retain, 0, 24);
            buf.info = v45;
            if (qword_1000AAEC8)
            {
              CFRunLoopTimerInvalidate(qword_1000AAEC8);
              CFRelease(qword_1000AAEC8);
            }

            qword_1000AAEC8 = CFRunLoopTimerCreate(kCFAllocatorDefault, v46, 5.0, 0, 0, sub_100001908, &buf);
            CFRunLoopAddTimer(qword_1000AB2E8, qword_1000AAEC8, kCFRunLoopDefaultMode);
          }

          else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_1000544F4();
          }
        }

        else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100054570();
        }
      }

      else
      {
        v31 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.version) = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "<Notice> no thermal model for device", &buf, 2u);
        }

        qword_1000AADA0 = -1;
        sub_10002E804(0);

        qword_1000AB718 = 0;
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005466C();
  }
}

uint64_t sub_10002E804(int a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v1)
  {
    v2 = v1;
    SCPreferencesSetValue(qword_1000AB930, @"CLTMStatus", v1);
    CFRelease(v2);
  }

  return SCPreferencesCommitChanges(qword_1000AB930);
}

uint64_t sub_10002E878()
{
  objc_alloc_init(NSMutableArray);
  mach_timebase_info(&dword_1000AADC4);
  v0 = sub_10002BBEC();
  if (strstr(v0, "tmd_disable_111276880"))
  {
    byte_1000AADC0 = 1;
  }

  wd_endpoint_register();
  wd_endpoint_add_queue();
  wd_endpoint_set_alive_func();
  return wd_endpoint_activate();
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  pthread_set_qos_class_self_np(QOS_CLASS_USER_INITIATED, 0);
  sub_10002E878();
  thermalMonitor_init();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100085F28);
  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  v1 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "<Error> main thread exiting", v2, 2u);
  }

  exit(0);
}

void sub_10002E9E4(id a1, OS_xpc_object *a2)
{
  if (a2)
  {
    string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
    if (string)
    {
      if (!strcasecmp("com.apple.ManagedConfiguration.profileListChanged", string))
      {
        sleep(2u);
        v3 = qword_1000AB930;

        sub_10002BF24(v3);
      }
    }
  }
}

void sub_10002EA8C(const __SCPreferences *a1)
{
  [qword_1000AAC48 updatePrefs:a1 :1];

  SCPreferencesSynchronize(a1);
}

size_t sub_10002EAD4(int a1)
{
  v2 = &byte_1000AAED8[__sprintf_chk(byte_1000AAED8, 0, 0x340uLL, "[")];
  v3 = &v2[sprintf(v2, "%d", dword_1000AAC60[0])];
  if (a1 >= 2)
  {
    v4 = a1 - 1;
    v5 = &dword_1000AAC64;
    do
    {
      strcpy(v3, ", ");
      v6 = *v5++;
      v3 += sprintf(v3 + 2, "%d", v6) + 2;
      --v4;
    }

    while (v4);
  }

  result = strlen(v3);
  *&v3[result] = 93;
  return result;
}

id sub_10002F378(uint64_t a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = *v11;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v6 = v9 + 1;
        *(a1 + 4 * v9) = [*(*(&v10 + 1) + 8 * v8) intValue];
        v8 = v8 + 1;
        ++v9;
      }

      while (v5 != v8);
      result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

id sub_10002F47C(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a2);
        }

        [*(*(&v11 + 1) + 8 * v8) floatValue];
        v6 = v9 + 1;
        *(a1 + 4 * v9) = v10;
        v8 = v8 + 1;
        ++v9;
      }

      while (v5 != v8);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_10002FB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10002FB44(uint64_t a1, int a2)
{
  state64 = 0;
  Weak = objc_loadWeak((a1 + 32));
  result = notify_get_state(a2, &state64);
  if (!result)
  {
    [Weak setLowerPowerModeActive:state64 != 0];
    return [Weak updatePowerSaveActive];
  }

  return result;
}

id sub_10002FBA8(uint64_t a1, int a2)
{
  state64 = 0;
  Weak = objc_loadWeak((a1 + 32));
  result = notify_get_state(a2, &state64);
  if (!result)
  {
    [Weak setProModeActive:state64 != 0];
    *&dword_1000AB9A4 = [Weak proModeActive];
    return [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper forceSensorExchangeDataToSMC];
  }

  return result;
}

void sub_10002FF70(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 229) == 1)
  {
    *(*(a1 + 32) + 329) = [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 1];
    v3 = *(a1 + 32);
    v4 = 100;
    v5 = 64;
    do
    {
      if (v4 >= *(v3 + v5))
      {
        v4 = *(v3 + v5);
      }

      v5 += 4;
    }

    while (v5 != 88);
    v6 = 0;
    v7 = 136;
    do
    {
      if (v6 <= *(v3 + v7))
      {
        v6 = *(v3 + v7);
      }

      v7 += 4;
    }

    while (v7 != 160);
    if (v4 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    if (*(v3 + 296) == 1)
    {
      v9 = *(v3 + 320);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100030310;
      v27[3] = &unk_100085BE8;
      v27[4] = v3;
      v28 = v8;
      dispatch_async(v9, v27);
      return;
    }

    if (*(v3 + 209) == 1)
    {
      v11 = *(v3 + 216);
    }

    else
    {
      v11 = 65000;
    }

    [v3 setCPULowPowerTarget:v11];
    v24 = *(a1 + 32);
    if (v8 != v24[84])
    {
      v24[84] = v8;
      [*(a1 + 32) setCPUPowerZoneTarget:v8];
      v24 = *(a1 + 32);
    }

    v25 = v24[60];
    v26 = v24[62];
  }

  else
  {
    if (*(v2 + 209) == 1)
    {
      v10 = *(v2 + 212);
    }

    else
    {
      v10 = 101;
    }

    v12 = 0;
    v13 = 0;
    *(v2 + 288) = v10;
    v14 = *(a1 + 32);
    do
    {
      if (v13 <= *(v14 + 136 + v12))
      {
        v13 = *(v14 + 136 + v12);
      }

      v12 += 4;
    }

    while (v12 != 24);
    *(v14 + 332) = 101;
    v15 = off_100085F48;
    for (i = 67; i != 75; i += 2)
    {
      v17 = *(a1 + 32);
      v18 = v17[i - 1];
      if (v18 <= v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = v18;
      }

      if (v17[83] > v19)
      {
        v17[83] = v19;
        v17 = *(a1 + 32);
      }

      if (v17[i] != v19)
      {
        [v17 setServiceProperty:v17[8] key:*v15 value:v19 scaleToFixedPoint:1];
        *(*(a1 + 32) + i * 4) = v19;
      }

      ++v15;
    }

    *(*(a1 + 32) + 332);
    kdebug_trace();
    v20 = *(a1 + 32);
    v21 = v20[67];
    v22 = v20[69];
    v23 = (v20[71] << 16) / 100;
    LODWORD(v20) = v20[73];
  }

  kdebug_trace();
}

uint64_t sub_1000302C8(int *a1, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    do
    {
      v4 = *a1++;
      v3 = v4;
      if (a3 >= v4)
      {
        a3 = v3;
      }

      else
      {
        a3 = a3;
      }

      --a2;
    }

    while (a2);
  }

  return a3;
}

uint64_t sub_1000302EC(int *a1, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    do
    {
      v4 = *a1++;
      v3 = v4;
      if (a3 <= v4)
      {
        a3 = v3;
      }

      else
      {
        a3 = a3;
      }

      --a2;
    }

    while (a2);
  }

  return a3;
}

uint64_t sub_100030310(uint64_t a1)
{
  [*(a1 + 32) setPackageLowPowerTarget];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 != v3[84])
  {
    v3[84] = v2;
    [*(a1 + 32) setPackagePowerZoneTarget];
    v3 = *(a1 + 32);
  }

  v4 = v3[75];
  v5 = v3[77];

  return kdebug_trace();
}

void sub_100030384(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 32);
  v4 = 100;
  do
  {
    if (v4 >= *(v3 + 88 + v2))
    {
      v4 = *(v3 + 88 + v2);
    }

    v2 += 4;
  }

  while (v2 != 24);
  v5 = 0;
  v6 = 0;
  do
  {
    if (v6 <= *(v3 + 160 + v5))
    {
      v6 = *(v3 + 160 + v5);
    }

    v5 += 4;
  }

  while (v5 != 24);
  if (v4 <= v6)
  {
    v4 = v6;
  }

  if (*(v3 + 209) == 1 && v4 >= *(v3 + 220))
  {
    v4 = *(v3 + 220);
  }

  if (v4 != *(v3 + 340))
  {
    *(v3 + 340) = v4;
    v7 = *(a1 + 32);
    if (*(v7 + 229) == 1)
    {
      if (*(v7 + 296) == 1)
      {
        v8 = *(v7 + 320);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100030514;
        block[3] = &unk_100085260;
        block[4] = v7;
        dispatch_async(v8, block);
      }

      else
      {
        [v7 setGPUPowerZoneTarget:*(v7 + 340)];
        v10 = *(*(a1 + 32) + 260);

        kdebug_trace();
      }
    }

    else
    {
      v9 = *(v7 + 340);

      [v7 setDieTempControllerProperty:@"GPUMaxPower" level:v9 scaleToFixedPoint:0];
    }
  }
}

uint64_t sub_100030514(uint64_t a1)
{
  [*(a1 + 32) setPackagePowerZoneTarget];
  v2 = *(a1 + 32);
  v3 = *(v2 + 300);
  v4 = *(v2 + 308);

  return kdebug_trace();
}

id sub_1000309A8(uint64_t a1)
{
  *(*(a1 + 32) + 329) = [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 1];
  v2 = *(a1 + 32);
  v3 = 65000;
  v4 = 112;
  do
  {
    if (v3 >= *&v2[v4])
    {
      v3 = *&v2[v4];
    }

    v4 += 4;
  }

  while (v4 != 136);
  v5 = 0;
  v6 = 184;
  do
  {
    if (v5 <= *&v2[v6])
    {
      v5 = *&v2[v6];
    }

    v6 += 4;
  }

  while (v6 != 208);
  if (v3 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  result = [v2 setPackageLowPowerTarget];
  v10 = *(a1 + 32);
  if (v7 != *(v10 + 308))
  {
    if (byte_1000AB2F8 == 1)
    {
      v11 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v17[0] = 67109120;
        v17[1] = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> New Package power target: %d", v17, 8u);
        v10 = *(a1 + 32);
      }
    }

    LODWORD(v9) = vcvtd_n_s64_f64(v7 / 1000.0, 0x18uLL);
    if (*(v10 + 329) == 1 && *(v10 + 244) != v7)
    {
      v13 = v7;
    }

    else
    {
      if (*(v10 + 328) == 1)
      {
        [+[CPMSHelper sharedInstance](CPMSHelper addToCPMSMitigationArray:"addToCPMSMitigationArray:forComponent:" forComponent:v7, 13];
      }

      else
      {
      }

      v12 = *(a1 + 32);
      if (v12[61] == 65000)
      {
        goto LABEL_25;
      }

      v13 = 65000;
    }

    *(*(a1 + 32) + 244) = v13;
LABEL_25:
    *(*(a1 + 32) + 308) = v7;
    v14 = *(a1 + 32);
    v15 = *(v14 + 300);
    v16 = *(v14 + 308);
    return kdebug_trace();
  }

  return result;
}

BOOL sub_100031760()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_100031C44(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100031C78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xEu);
}

BOOL sub_100031C94()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

CFMutableDictionaryRef sub_100031CAC(const char *a1, void *a2, const void *a3)
{
  v7 = a3;
  keys = a2;
  result = IOServiceMatching(a1);
  if (result)
  {
    v5 = result;
    if (a2)
    {
      v6 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &v7, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v5, @"IOPropertyMatch", v6);
      CFRelease(v6);
    }

    return IOServiceGetMatchingService(kIOMainPortDefault, v5);
  }

  return result;
}

BOOL sub_100031D64(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    if (CFDictionaryContainsKey(a1, a2))
    {
      Value = CFDictionaryGetValue(a1, a2);
      if (Value)
      {
        v7 = Value;
        v8 = CFGetTypeID(Value);
        if (v8 == CFBooleanGetTypeID())
        {
          return CFBooleanGetValue(v7) != 0;
        }
      }
    }
  }

  return a3;
}

uint64_t sub_100031DDC(const __CFDictionary *a1, const void *a2, void *a3)
{
  result = CFDictionaryContainsKey(a1, a2);
  if (result)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFStringGetTypeID()))
    {
      *a3 = v8;
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1000554C0();
        return 0;
      }
    }
  }

  return result;
}

CFNumberRef sub_100031E78(__CFDictionary *a1, void *key, CFNumberType a3, const void *a4)
{
  if (a1 && key && (v8 = CFDictionaryContainsKey(a1, key), a4) && v8)
  {
    result = CFNumberCreate(kCFAllocatorDefault, a3, a4);
    if (result)
    {
      v10 = result;
      CFDictionaryReplaceValue(a1, key, result);
      CFRelease(v10);
      return 1;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100055530();
      return 0;
    }
  }

  return result;
}

CFStringRef sub_100031F34(int a1)
{
  for (i = 3; i != -1; --i)
  {
    cStr[i] = a1;
    a1 >>= 8;
  }

  cStr[4] = 0;
  return CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
}

uint64_t sub_100031F8C(io_registry_entry_t a1, const __CFString *a2, void *a3, id a4)
{
  result = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (result)
  {
    v7 = result;
    if ([result length] == a4)
    {
      memcpy(a3, [v7 bytes], a4);
      CFRelease(v7);
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1000557D0(v7);
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_10003203C(io_registry_entry_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v3 = CFProperty;
  v4 = CFGetTypeID(CFProperty);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

void sub_1000320B4()
{
  v0 = IOPMFindPowerManagement(kIOMainPortDefault);
  if (v0)
  {
    v1 = v0;
    if (IOPMSleepSystem(v0))
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100055874();
      }
    }

    IOServiceClose(v1);
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000558B0();
  }
}

void sub_10003214C(const void *a1, const __CFString *a2, const __CFString *a3, CFAbsoluteTime a4)
{
  v7 = CFDateCreate(0, a4);
  if (v7)
  {
    v8 = v7;
    if (IOPMSchedulePowerEvent(v7, a2, a3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000558EC();
      if (!a1)
      {
        goto LABEL_6;
      }
    }

    else if (!a1)
    {
LABEL_6:
      CFRelease(v8);
      return;
    }

    CFRelease(a1);
    goto LABEL_6;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100055928();
  }
}

void sub_100032208(int a1, int a2, IOHIDServiceClientRef service)
{
  RegistryID = IOHIDServiceClientGetRegistryID(service);
  valuePtr = 0;
  if (RegistryID)
  {
    v5 = RegistryID;
    v6 = CFGetTypeID(RegistryID);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
    }
  }

  v7 = IOHIDServiceClientCopyProperty(service, @"Product");
  v8 = v7;
  if (!v7 || (v9 = CFGetTypeID(v7), v9 != CFStringGetTypeID()))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000559A0();
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else if (!v8)
    {
LABEL_9:
      v8 = @"unknown Sensor";
      goto LABEL_10;
    }

    CFRelease(v8);
    goto LABEL_9;
  }

LABEL_10:
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000559DC(v8, &valuePtr);
  }

  CFRelease(v8);
}

void sub_100032310()
{
  if (!dword_1000AB224)
  {
    dword_1000AB224 = sub_100031CAC("AppleC26Charger", 0, 0);
    if (!dword_1000AB224 && byte_1000AB2F8 == 1)
    {
      v0 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v1 = 0;
        _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "<Notice> initC26Service: Failed to Match AppleC26Charger", v1, 2u);
      }
    }
  }
}

uint64_t sub_1000323B4()
{
  valuePtr = 0;
  sub_100007118();
  if (dword_1000AB220)
  {
    CFProperty = IORegistryEntryCreateCFProperty(dword_1000AB220, @"Temperature", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v1 = CFProperty;
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      CFRelease(v1);
      return valuePtr;
    }

    else
    {
      sub_100055A74(&v4);
      return v4;
    }
  }

  else
  {
    sub_100055AD8(&v5);
    return v5;
  }
}

uint64_t sub_100032464()
{
  valuePtr = 0;
  sub_100007118();
  if (!dword_1000AB220)
  {
    sub_100055AD8(buf);
    return *buf;
  }

  CFProperty = IORegistryEntryCreateCFProperty(dword_1000AB220, @"AppleRawCurrentCapacity", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    sub_100055BA4(buf);
    return *buf;
  }

  v1 = CFProperty;
  v2 = IORegistryEntryCreateCFProperty(dword_1000AB220, @"AppleRawMaxCapacity", kCFAllocatorDefault, 0);
  if (v2)
  {
    v3 = v2;
    CFNumberGetValue(v1, kCFNumberIntType, &valuePtr + 4);
    CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
    v4 = valuePtr;
    if (valuePtr < 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = (SHIDWORD(valuePtr) * 100.0 / valuePtr + 0.5);
    }

    if (dword_1000A2324 == -1)
    {
      v6 = v5;
    }

    else
    {
      v6 = dword_1000A2324;
    }

    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        v11 = HIDWORD(valuePtr);
        v12 = 1024;
        v13 = v4;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> raw current %d, raw max %d ==> raw SOC %d", buf, 0x14u);
      }
    }

    CFRelease(v1);
    CFRelease(v3);
  }

  else
  {
    sub_100055B3C(v1);
    return 0;
  }

  return v6;
}

void sub_100032648(int a1)
{
  v2 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<Notice> Overiding chemical state of charge to %d\n", v3, 8u);
  }
}

void sub_10003270C(uint64_t a1, int a2)
{
  v3 = [+[HidSensors sharedInstance](HidSensors getSensorIndexFrom4CC:"getSensorIndexFrom4CC:", a1];
  if (v3 <= 0x3F)
  {
    v4 = v3;
    byte_1000AB308 = 1;
    *(&qword_1000AB824 + v3) = a2;
    v5 = qword_1000AB928 | (1 << v3);
    qword_1000AB928 = v5;
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109632;
      v7[1] = v4;
      v8 = 1024;
      v9 = a2;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> sensor ID: %d set with temperature: %d - Overridemask %llx", v7, 0x18u);
    }
  }
}

CFTypeRef sub_100032844()
{
  sub_100007118();
  if (!dword_1000AB220)
  {
    sub_100055C6C(&v1);
    return v1;
  }

  result = IORegistryEntryCreateCFProperty(dword_1000AB220, @"BatteryData", kCFAllocatorDefault, 0);
  if (!result)
  {
    sub_100055C08(&v1);
    return v1;
  }

  return result;
}

uint64_t sub_1000328AC(const void *a1)
{
  valuePtr = 0;
  if (a1)
  {
    v2 = sub_100032844();
    if (v2)
    {
      v3 = v2;
      Value = CFDictionaryGetValue(v2, a1);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }

      else
      {
        sub_100055CD0();
      }

      CFRelease(v3);
      return valuePtr;
    }

    else
    {
      sub_100055D68(&v7);
      return v7;
    }
  }

  else
  {
    sub_100055E0C(&v8);
    return v8;
  }
}

uint64_t sub_100032938(void *a1)
{
  v2 = sub_1000328AC(a1);
  if (byte_1000AB2F8 == 1)
  {
    v3 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = [a1 UTF8String];
      v7 = 1024;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<Notice> %s %d", &v5, 0x12u);
    }
  }

  return v2;
}

uint64_t sub_100032A18()
{
  result = sub_100032938(@"AlgoChemID");
  if (!result)
  {

    return sub_100032938(@"ChemID");
  }

  return result;
}

uint64_t sub_100032A5C()
{
  valuePtr = 0;
  result = dword_1000A2328;
  if (dword_1000A2328 == -1)
  {
    v1 = sub_100032844();
    if (v1)
    {
      v2 = v1;
      Value = CFDictionaryGetValue(v1, @"WeightedRa");
      TypeID = CFArrayGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
        v6 = CFNumberGetTypeID();
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v6)
        {
          CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
          if (byte_1000AB2F8 == 1)
          {
            v7 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v10 = valuePtr;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Weighted Ra %d", buf, 8u);
            }
          }
        }

        else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100055E70();
        }
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100055EAC();
      }

      CFRelease(v2);
      return valuePtr;
    }

    else
    {
      sub_100055EE8(buf);
      return *buf;
    }
  }

  return result;
}

uint64_t sub_100032C14()
{
  valuePtr = -1;
  v0 = sub_100032844();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, @"RaTableRaw");
    TypeID = CFArrayGetTypeID();
    if (!Value || CFGetTypeID(Value) != TypeID)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000560DC();
      }

      goto LABEL_18;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    if (ValueAtIndex)
    {
      v5 = ValueAtIndex;
      if (CFDataGetLength(ValueAtIndex) == 32)
      {
        BytePtr = CFDataGetBytePtr(v5);
        v7 = 0;
        v8 = -1;
        do
        {
          v9 = *&BytePtr[v7];
          if (v8 < (bswap32(v9) >> 16))
          {
            v8 = __rev16(v9);
            valuePtr = v8;
          }

          v7 += 2;
        }

        while (v7 != 18);
        goto LABEL_16;
      }

      sub_100055F8C();
    }

    else
    {
      v10 = CFDictionaryGetValue(v1, @"LifetimeData");
      if (v10)
      {
        v11 = CFDictionaryGetValue(v10, @"MaximumRa0-8");
        if (v11)
        {
          CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
LABEL_16:
          if (dword_1000A232C != -1)
          {
            valuePtr = dword_1000A232C;
          }

          goto LABEL_18;
        }

        sub_100056024();
      }

      else
      {
        sub_100056080();
      }
    }

LABEL_18:
    CFRelease(v1);
    return valuePtr;
  }

  sub_100056118(&v14);
  return v14;
}

void sub_100032D78(int a1)
{
  v2 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<Notice> Overriding Ra to %d", v3, 8u);
  }

  dword_1000A232C = a1;
}

void sub_100032E34(int a1)
{
  v2 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<Notice> Overriding Weighted Ra to %d", v3, 8u);
  }

  dword_1000A2328 = a1;
}

uint64_t sub_100032EF0()
{
  v8 = 0;
  v0 = dword_1000AB24C;
  if (!dword_1000AB24C)
  {
    v1 = IOServiceMatching("IOService");
    if (v1)
    {
      v2 = v1;
      valuePtr = 0;
      qword_1000AB250 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
      v3 = CFDictionaryCreate(kCFAllocatorDefault, &off_1000A2340, &qword_1000AB250, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v3)
      {
        v4 = v3;
        CFDictionarySetValue(v2, @"IOPropertyMatch", v3);
        CFRelease(v4);
        dword_1000AB24C = IOServiceGetMatchingService(kIOMainPortDefault, v2);
      }

      else
      {
        CFRelease(v2);
      }
    }

    v0 = dword_1000AB24C;
    if (!dword_1000AB24C)
    {
      sub_100056224(&valuePtr);
      return valuePtr;
    }
  }

  CFProperty = IORegistryEntryCreateCFProperty(v0, @"IOPMUBootUPOCounter", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    sub_1000561C0(&valuePtr);
    return valuePtr;
  }

  v6 = CFProperty;
  CFNumberGetValue(CFProperty, kCFNumberIntType, &v8);
  if (dword_1000A2330 != -1)
  {
    v8 = dword_1000A2330;
  }

  CFRelease(v6);
  return v8;
}

uint64_t sub_100033098(io_registry_entry_t a1)
{
  if (dword_1000A2338 != -1)
  {
    return dword_1000A2338 != 0;
  }

  if (a1)
  {
    return sub_10003203C(a1, @"ExternalConnected");
  }

  return 1;
}

void sub_1000330D8(uint64_t a1, const __CFArray *cf)
{
  if (a1 && cf && (v4 = CFGetTypeID(cf), v4 == CFArrayGetTypeID()))
  {
    if (CFArrayGetCount(cf) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v5);
        v7 = CFGetTypeID(ValueAtIndex);
        if (v7 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(ValueAtIndex, kCFNumberCharType, &valuePtr);
          *(a1 + v5) = valuePtr;
        }

        ++v5;
      }

      while (CFArrayGetCount(cf) > v5);
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100056288();
  }
}

BOOL sub_1000331C8()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

uint64_t sub_10003323C()
{
  v0 = MGGetSInt32Answer();
  if (v0 == -1 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100056308();
  }

  return v0;
}

uint64_t sub_1000332A0()
{
  v0 = sub_10003323C() - 12;
  if (v0 < 0x18 && ((0xC2C033u >> v0) & 1) != 0)
  {
    v1 = 0x7DBFDEu >> v0;
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100056344();
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

BOOL sub_100033324(char *a1, const char *a2, size_t a3)
{
  v6 = strlen(a1);
  v7 = v6 + strlen(a2) + 1;
  if (v7 > a3)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000563B8();
    }
  }

  else
  {
    strcat(a1, a2);
  }

  return v7 <= a3;
}

uint64_t sub_1000333D4(char *name, int *out_token, NSObject *a3, void *a4)
{
  if (!a3 || !name || !out_token || !a4)
  {
    sub_10005656C();
    return block[6];
  }

  if (notify_register_check(name, out_token))
  {
    sub_10005642C();
    return block[6];
  }

  if (notify_register_dispatch(name, out_token, a3, a4))
  {
    sub_1000564CC();
    return block[6];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000334C8;
  block[3] = &unk_100086020;
  block[4] = a4;
  block[5] = out_token;
  dispatch_async(a3, block);
  return 0;
}

uint64_t sub_1000334E0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0 || (v2 = 0x8000000000000000, (0x8000000000000000 - a2) <= a1))
  {
    v3 = (a2 ^ 0x7FFFFFFFFFFFFFFFLL) >= a1 || a2 <= 0;
    v2 = a2 + a1;
    if (!v3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v2;
}

CFDictionaryRef sub_100033514(int a1, int a2)
{
  v4 = a2;
  valuePtr = a1;
  *keys = *&off_100086040;
  values = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  cf = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v4);
  v2 = CFDictionaryCreate(kCFAllocatorDefault, keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(values);
  CFRelease(cf);
  return v2;
}

uint64_t sub_1000335E8(__IOHIDServiceClient *a1, const __CFString *a2)
{
  valuePtr = 0;
  v2 = IOHIDServiceClientCopyProperty(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005660C();
      }

      goto LABEL_8;
    }
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100056680();
    if (v3)
    {
      goto LABEL_8;
    }
  }

  else if (v3)
  {
LABEL_8:
    CFRelease(v3);
    return valuePtr;
  }

  return 0;
}

void sub_1000336D0(uint64_t a1)
{
  v1 = [NSURL fileURLWithPath:a1];
  v2 = 0;
  if (![(NSURL *)v1 setResourceValue:[NSNumber numberWithBool:?], NSURLIsExcludedFromBackupKey, &v2]&& os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000566F4(v1, &v2);
  }
}

id sub_10003376C()
{
  v0 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  properties = 0;
  IORegistryEntryCreateCFProperties(MatchingService, &properties, 0, 0);
  v2 = properties;
  v3 = [-[__CFDictionary objectForKeyedSubscript:](properties objectForKeyedSubscript:{@"BatteryShutdownReason", "copy"}];

  return v3;
}

void sub_1000337EC(unsigned int *a1, unsigned int *a2)
{
  v8 = sub_10003376C();
  v4 = [v8 objectForKeyedSubscript:@"uiSOC"];
  v5 = [v8 objectForKeyedSubscript:@"temperature"];
  if (a1)
  {
    if (v4)
    {
      v6 = [v4 intValue];
    }

    else
    {
      v6 = -1;
    }

    *a1 = v6;
  }

  if (a2)
  {
    if (v5)
    {
      v7 = [v5 intValue];
    }

    else
    {
      v7 = -1;
    }

    *a2 = v7;
  }
}

void sub_100033898(int a1)
{
  valuePtr = a1;
  if (qword_1000AB230 != -1)
  {
    sub_100056788();
  }

  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (dword_1000AB238 && IORegistryEntrySetCFProperty(dword_1000AB238, @"UseBaselineSystemCapability", v1) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005679C();
    if (!v1)
    {
      return;
    }
  }

  else if (!v1)
  {
    return;
  }

  CFRelease(v1);
}

uint64_t sub_10003397C()
{
  v1 = 0;
  sub_100032310();
  if ((sub_1000068B4(dword_1000AB224, @"ThermalProfile", &v1, 1) & 1) == 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000567D8();
  }

  return v1;
}

float sub_1000339F4()
{
  [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:0 atSMCIndex:@"zETN", 0];
  [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:1 atSMCIndex:@"zETN", 1];
  *dword_1000ABA38 = MGGetSInt32Answer();
  result = sub_1000332A0();
  *&dword_1000ABA3C = result;
  return result;
}

uint64_t sub_100033A78()
{
  if ((byte_1000AB23C & 1) == 0)
  {
    v0 = IOReportCopyChannelsInGroup();
    if (v0)
    {
      v1 = v0;
      Subscription = IOReportCreateSubscription();
      CFRelease(v1);
      if (Subscription)
      {
        CFRelease(Subscription);
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100056814();
    }
  }

  return dword_1000AB240;
}

int sub_100033B8C(id a1, __CFDictionary *a2)
{
  ChannelName = IOReportChannelGetChannelName();
  dword_1000AB240 = IOReportSimpleGetIntegerValue();
  result = [ChannelName isEqualToString:@"BatteryIDChanged"];
  if (result)
  {
    byte_1000AB23C = 1;
    return dword_1000AB240;
  }

  return result;
}

void sub_100033BF0()
{
  v0 = IOHIDEventSystemClientCreateWithType();
  theArray = IOHIDEventSystemClientCopyServices(v0);
  if (theArray && CFArrayGetCount(theArray))
  {
    v1 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "<Notice> IOHID Event System State", buf, 2u);
    }

    v2 = 0;
    v12 = v0;
    do
    {
      v3 = IOHIDEventSystemClientCopyProperty(v0, off_1000860B0[v2]);
      if (v3)
      {
        v4 = v3;
        v5 = CFGetTypeID(v3);
        if (v5 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(v4);
          if (Count >= 1)
          {
            v7 = Count;
            for (i = 0; i != v7; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
              v10 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v14 = ValueAtIndex;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> dict: %@", buf, 0xCu);
              }
            }
          }

          CFRelease(v4);
          v0 = v12;
        }
      }

      ++v2;
    }

    while (v2 != 3);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

uint64_t sub_100033DFC()
{
  if (byte_1000AB244)
  {
    return dword_1000AB248;
  }

  v1 = IOServiceMatching("IOPMPowerSource");
  v2 = IOServiceMatching("AppleAuthCPRelay");
  v3 = v2;
  if (!v2 || !v1)
  {
    if (v2)
    {
      CFRelease(v2);
    }

    if (v1)
    {
      CFRelease(v1);
    }

LABEL_16:
    result = 0xFFFFFFFFLL;
    dword_1000AB248 = -1;
    return result;
  }

  CFDictionarySetValue(v2, @"IOParentMatch", v1);
  CFRelease(v1);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  if (!MatchingService)
  {
    return dword_1000AB248;
  }

  properties = 0;
  IORegistryEntryCreateCFProperties(MatchingService, &properties, 0, 0);
  v5 = properties;
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  if (![(__CFDictionary *)v5 objectForKey:@"isTrustedForUI"])
  {
    goto LABEL_16;
  }

  if ([-[__CFDictionary objectForKey:](v6 objectForKey:{@"isTrustedForUI", "BOOLValue"}])
  {
    result = 1;
  }

  else
  {
    result = 2;
  }

  dword_1000AB248 = result;
  byte_1000AB244 = 1;
  return result;
}

void sub_100033F34(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

NSDictionary *sub_1000343F4(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev3";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"PMU_Tdev5";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"PMU2_Tdev1";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"PMU2_Tdev2";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"PMU2_Tdev3";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSBM";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSFD";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSBQ";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Die_Temp_MaxAverage";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Die_Temp_MaxMax";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"maxLI_PackagePower";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"maxLI_Speaker";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[15] = @"BackLight_maxLI";
  v4[15] = [NSNumber numberWithInt:*(a1 + 92)];
  v3[16] = @"Solar_Context";
  v4[16] = [NSNumber numberWithInt:*(a1 + 112)];
  v3[17] = @"Pressure_Level";
  v4[17] = [NSNumber numberWithInt:*(a1 + 96)];
  v3[18] = @"Gas_Gauge_avg_Power";
  v4[18] = [NSNumber numberWithInt:*(a1 + 100)];
  v3[19] = @"Charger_State";
  v4[19] = [NSNumber numberWithInt:*(a1 + 104)];
  v3[20] = @"Package_Power";
  v4[20] = [NSNumber numberWithInt:*(a1 + 108)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:21];
}

_UNKNOWN **sub_100034CBC(uint64_t a1)
{
  result = &off_10008D8D8;
  *(*(a1 + 32) + 400) = result;
  return result;
}

_UNKNOWN **sub_100034D98(uint64_t a1)
{
  result = &off_10008D8F0;
  *(*(a1 + 32) + 408) = result;
  return result;
}

NSDictionary *sub_100035604(uint64_t a1)
{
  v5[0] = @"TG0B";
  v6[0] = [NSNumber numberWithInt:*(a1 + 40)];
  v5[1] = @"TG0V";
  v6[1] = [NSNumber numberWithInt:*(a1 + 44)];
  v5[2] = @"PMU_Tdev1";
  v6[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v5[3] = @"PMU_Tdev2";
  v6[3] = [NSNumber numberWithInt:*(a1 + 52)];
  v5[4] = @"TSRR";
  v6[4] = [NSNumber numberWithInt:*(a1 + 56)];
  v5[5] = @"TSBR";
  v6[5] = [NSNumber numberWithInt:*(a1 + 60)];
  v5[6] = @"TSFL";
  v6[6] = [NSNumber numberWithInt:*(a1 + 64)];
  v5[7] = @"TSRM";
  v6[7] = [NSNumber numberWithInt:*(a1 + 68)];
  v5[8] = @"TSFC";
  v6[8] = [NSNumber numberWithInt:*(a1 + 72)];
  v5[9] = @"TSFD";
  v6[9] = [NSNumber numberWithInt:*(a1 + 76)];
  v5[10] = @"mic2";
  v6[10] = [NSNumber numberWithInt:*(a1 + 80)];
  v5[11] = @"TSBQ";
  v6[11] = [NSNumber numberWithInt:*(a1 + 84)];
  v5[12] = @"TSFG";
  v6[12] = [NSNumber numberWithInt:*(a1 + 88)];
  v5[13] = @"Die_Temp_MaxAverage";
  v6[13] = [NSNumber numberWithInt:*(a1 + 92)];
  v5[14] = @"Die_Temp_MaxMax";
  v6[14] = [NSNumber numberWithInt:*(a1 + 96)];
  v5[15] = @"Package_Power";
  v6[15] = [NSNumber numberWithInt:*(a1 + 100)];
  v5[16] = @"Charger_State";
  v6[16] = [NSNumber numberWithInt:*(a1 + 104)];
  v5[17] = @"Solar_Context";
  v6[17] = [NSNumber numberWithInt:*(a1 + 112)];
  v5[18] = @"Pressure_Level";
  v2 = [NSNumber numberWithInt:*(a1 + 108)];
  v5[19] = @"Device_Activity";
  v3 = *(a1 + 32);
  v6[18] = v2;
  v6[19] = v3;
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:20];
}

NSDictionary *sub_100036948(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TG0V";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev1";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"PMU_Tdev2";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBR";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBE";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSRR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSRM";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSFL";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSFC";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSFD";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"TSBQ";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Die_Temp_MaxAverage";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Die_Temp_MaxMax";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Package_Power";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  v3[15] = @"Charger_State";
  v4[15] = [NSNumber numberWithInt:*(a1 + 92)];
  v3[16] = @"Solar_Context";
  v4[16] = [NSNumber numberWithInt:*(a1 + 100)];
  v3[17] = @"Pressure_Level";
  v4[17] = [NSNumber numberWithInt:*(a1 + 96)];
  v3[18] = @"Accessory";
  v4[18] = [NSNumber numberWithInt:*(a1 + 101)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:19];
}

void sub_100036F00(uint64_t a1)
{
  v2 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<Notice> Arc control: AVAudioSession reset", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036FC8;
    block[3] = &unk_100085260;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void sub_100038018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

id sub_100038054(uint64_t a1, int a2)
{
  Weak = objc_loadWeak((a1 + 32));
  state64 = 0;
  result = notify_get_state(a2, &state64);
  if (!result)
  {
    return [Weak handleRearCameraPowerStateNotification:state64];
  }

  return result;
}

id sub_1000380A8(uint64_t a1, int a2)
{
  Weak = objc_loadWeak((a1 + 32));
  state64 = 0;
  result = notify_get_state(a2, &state64);
  if (!result)
  {
    return [Weak handleFrontCameraPowerStateNotification:state64];
  }

  return result;
}

NSDictionary *sub_100038C7C(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSBQ";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBM";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TP4d";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP5d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"batteryVT";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxAverage";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Die_Temp_MaxMax";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"maxLI_CPU";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"maxLI_GPU";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Gas_Gauge_avg_Power";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Charger_State";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Solar_Context";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:15];
}

NSDictionary *sub_1000390BC(uint64_t a1)
{
  v3[0] = @"TSBM";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFG";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TS1B";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP5d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSBR";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxAverage";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Die_Temp_MaxMax";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Charger_State";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Solar_Context";
  v4[11] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[12] = @"Pressure_Level";
  v4[12] = [NSNumber numberWithInt:*(a1 + 76)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:13];
}

NSDictionary *sub_10003BC3C(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"Die_Temp_MaxAverage";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"Die_Temp_MaxMax";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSFC";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSBR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TS0A";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSFD";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSRM";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSFL";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Charger_State";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Solar_Context";
  v4[12] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[13] = @"Pressure_Level";
  v4[13] = [NSNumber numberWithInt:*(a1 + 80)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
}

NSDictionary *sub_10003C054(uint64_t a1)
{
  v3[0] = @"TSBM";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFG";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TS1B";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP5d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TSBR";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxAverage";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Die_Temp_MaxMax";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Package_Power";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Gas_Gauge_avg_Power";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Charger_State";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Solar_Context";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
}

NSDictionary *sub_10003CAB4(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TS0A";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSBH";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TP6D";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBR";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"Die_Temp_MaxAverage";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"Die_Temp_MaxMax";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"maxLI_CPU";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"maxLI_GPU";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"maxLI_RR";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Gas_Gauge_avg_Power";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Charger_State";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Solar_Context";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
}

void sub_10003D870(uint64_t a1)
{
  v2 = [*(a1 + 32) copyUpdatedLTSState];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) saveLTSStateToNand:v2];
    v4 = *(a1 + 32);

    [v4 safeFreeUpdatedLTSState:v3];
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100057BE4();
  }
}

id sub_1000449A0(uint64_t a1)
{
  [*(*(a1 + 32) + 24) updatePersistedState];
  [*(*(a1 + 32) + 32) updatePersistedState];
  v2 = *(*(a1 + 32) + 40);

  return [v2 updatePersistedState];
}

uint64_t sub_10004552C(uint64_t a1)
{
  Count = IOReportStateGetCount();
  v4 = Count;
  if (Count < 17)
  {
    if (Count < 1)
    {
      return 0;
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005A618();
  }

  v5 = 0;
  *&v3 = 138412546;
  v15 = v3;
  do
  {
    IOReportStateGetDutyCycle();
    if (v6 > 0.0)
    {
      v7 = v6;
      NameForIndex = IOReportStateGetNameForIndex();
      if (NameForIndex)
      {
        v9 = NameForIndex;
        if (CFStringGetCharacterAtIndex(NameForIndex, 0) == 86)
        {
          if (byte_1000AB2F8 == 1)
          {
            v10 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v17 = v9;
              v18 = 2048;
              v19 = v7;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> LSController: %@, fraction %f", buf, 0x16u);
            }
          }

          v11 = [-[__CFString substringFromIndex:](v9 substringFromIndex:{1, v15), "intValue"}];
          v12 = v11 & ~(v11 >> 31);
          if (v12 >= 15)
          {
            v12 = 15;
          }

          v13 = v7;
          *(*(a1 + 32) + 4 * v12 + 136) = v13;
        }
      }
    }

    ++v5;
  }

  while (v4 != v5);
  return 0;
}

uint64_t sub_1000456E8(uint64_t a1)
{
  Count = IOReportStateGetCount();
  v4 = Count;
  if (Count < 17)
  {
    if (Count < 1)
    {
      return 0;
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005A690();
  }

  v5 = 0;
  *&v3 = 138412546;
  v15 = v3;
  do
  {
    IOReportStateGetDutyCycle();
    if (v6 > 0.0)
    {
      v7 = v6;
      NameForIndex = IOReportStateGetNameForIndex();
      if (NameForIndex)
      {
        v9 = NameForIndex;
        if (CFStringGetCharacterAtIndex(NameForIndex, 0) == 80)
        {
          if (byte_1000AB2F8 == 1)
          {
            v10 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v17 = v9;
              v18 = 2048;
              v19 = v7;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> LSController: %@, fraction %f", buf, 0x16u);
            }
          }

          v11 = [-[__CFString substringFromIndex:](v9 substringFromIndex:{1, v15), "intValue"}];
          v12 = v11 & ~(v11 >> 31);
          if (v12 >= 15)
          {
            v12 = 15;
          }

          v13 = v7;
          *(*(a1 + 32) + 4 * v12 + 296) = v13;
        }
      }
    }

    ++v5;
  }

  while (v4 != v5);
  return 0;
}

NSDictionary *sub_100045FC4(uint64_t a1)
{
  v3[0] = @"ECore_Die_Temp_Target";
  v4[0] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 32) + 24) dieTempTarget]);
  v3[1] = @"PCore_Die_Temp_Target";
  v4[1] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 32) + 32) dieTempTarget]);
  v3[2] = @"GCore_Die_Temp_Target";
  v4[2] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 32) + 40) dieTempTarget]);
  v3[3] = @"ECore_Die_Temp_Delta";
  v4[3] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[4] = @"PCore_Die_Temp_Delta";
  v4[4] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[5] = @"GCore_Die_Temp_Delta";
  v4[5] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[6] = @"Fast_Die_Engaged";
  v4[6] = [NSNumber numberWithInt:*(a1 + 52)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
}

_UNKNOWN **sub_1000474A0(uint64_t a1)
{
  result = &off_10008D968;
  *(*(a1 + 32) + 416) = result;
  return result;
}

_UNKNOWN **sub_10004757C(uint64_t a1)
{
  result = &off_10008D980;
  *(*(a1 + 32) + 424) = result;
  return result;
}

NSDictionary *sub_100047AB8(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"PMU_Tdev1";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"PMU_Tdev2";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"Die_Temp_MaxAverage";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"Die_Temp_MaxMax";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSFC";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TSBR";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TS0A";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"TSFD";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"TSRM";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"TSFG";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Charger_State";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Solar_Context";
  v4[12] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[13] = @"Pressure_Level";
  v4[13] = [NSNumber numberWithInt:*(a1 + 80)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
}

id sub_100049BA8(uint64_t a1)
{
  result = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.cltm"];
  *(*(a1 + 32) + 392) = result;
  return result;
}

void sub_10004A860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10004A87C(uint64_t a1, int a2)
{
  Weak = objc_loadWeak((a1 + 32));
  state64 = 0;
  notify_get_state(a2, &state64);
  return [Weak setIsBackLightOn:state64 != 0];
}

void sub_10004A98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004A9A8(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  valuePtr = 0;
  v2 = IOPSCopyExternalPowerAdapterDetails();
  if (!v2)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v3 = v2;
  if (!CFDictionaryContainsKey(v2, @"FamilyCode"))
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v3, @"FamilyCode");
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
      if ((valuePtr + 536723455) > 7)
      {
        v5 = 10;
      }

      else
      {
        v5 = dword_100067A40[valuePtr + 536723455];
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  CFRelease(v3);
LABEL_10:
  [Weak setChargerState:v5];
  v7 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Charger type is %d", buf, 8u);
  }
}

id sub_10004BB8C(uint64_t a1)
{
  v2 = *(a1 + 44);
  v3 = (*(a1 + 40) + *(a1 + 48) * v2);
  if (byte_1000AB2F8 == 1)
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109376;
      v6[1] = v2;
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> TSFD blend %d, %d", v6, 0xEu);
    }
  }

  return [*(a1 + 32) writeAllCornerTemperatures:v3];
}

NSDictionary *sub_10004D4B0(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TP4H";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFD";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSFL";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBQ";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TSBM";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"batteryVT";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"TP5d";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"maxLI_PackagePower";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Die_Temp_MaxAverage";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"Charger_State";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"Solar_Context";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
}

void sub_10004DB0C(void *a1, io_iterator_t iterator)
{
  if (a1)
  {
    v4 = IOIteratorNext(iterator);
    if (v4)
    {
      v5 = v4;
      do
      {
        [a1 updateKeyboardState];
        IOObjectRelease(v5);
        v5 = IOIteratorNext(iterator);
      }

      while (v5);
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_10005B37C();
  }
}

id sub_10004E198(void *a1)
{
  result = IOHIDEventGetType();
  if (result == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    result = IOHIDEventGetIntegerValue();
    if (IntegerValue == 65289 && result == 17)
    {
      v4 = IOHIDEventGetIntegerValue() == 1;

      return [a1 updateFolioState:v4];
    }
  }

  return result;
}

NSDictionary *sub_10004EC18(uint64_t a1)
{
  v3[0] = @"TG0B";
  v4[0] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[1] = @"TSFD";
  v4[1] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[2] = @"TSFL";
  v4[2] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[3] = @"TSBQ";
  v4[3] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[4] = @"TSBM";
  v4[4] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[5] = @"TP4d";
  v4[5] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[6] = @"TP5d";
  v4[6] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[7] = @"batteryVT";
  v4[7] = [NSNumber numberWithInt:*(a1 + 60)];
  v3[8] = @"Die_Temp_MaxAverage";
  v4[8] = [NSNumber numberWithInt:*(a1 + 64)];
  v3[9] = @"Die_Temp_MaxMax";
  v4[9] = [NSNumber numberWithInt:*(a1 + 68)];
  v3[10] = @"maxLI_CPU";
  v4[10] = [NSNumber numberWithInt:*(a1 + 72)];
  v3[11] = @"maxLI_GPU";
  v4[11] = [NSNumber numberWithInt:*(a1 + 76)];
  v3[12] = @"Gas_Gauge_avg_Power";
  v4[12] = [NSNumber numberWithInt:*(a1 + 80)];
  v3[13] = @"Charger_State";
  v4[13] = [NSNumber numberWithInt:*(a1 + 84)];
  v3[14] = @"Solar_Context";
  v4[14] = [NSNumber numberWithInt:*(a1 + 88)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:15];
}

void sub_100050A64(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> Bad camera sensor index %d", v2, 8u);
}

void sub_100050B1C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050C08()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050C44()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050C80()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100050D50(mach_error_t a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = mach_error_string(a1);
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> Could not send temperature %s", &v3, 0xCu);
}

void sub_100050DDC(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[HidSensors indexForTempSensorKey:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> %s: key not found", buf, 0xCu);
}

void sub_100050E2C(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[HidSensors indexForTempSensorKey:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> %s: null service", buf, 0xCu);
}

void sub_100051070(uint64_t a1, int a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> sensor: %@, value = %d out of bounds", &v3, 0x12u);
}

void sub_1000510F8()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100051134()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100051170()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000511AC()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000511E8()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100051424(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> brightness set %@ failed for Siri", &v2, 0xCu);
}

void sub_10005149C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> brightness set %@ failed for Icon", &v2, 0xCu);
}

void sub_100051514()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100013B28();
  sub_100013B08(&_mh_execute_header, v1, v2, "<Error> SCPreferencesCommitChanges() failed: %s", v3, v4, v5, v6, v7);
}

void sub_100051694(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> no HID services (%d)", v1, 8u);
}

void sub_100051748(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> notify_register_check failed", buf, 2u);
}

void sub_100051F58(int a1)
{
  v1 = &byte_100085740[24 * a1];
  v7 = *v1;
  v8 = *(v1 + 1);
  sub_10000E76C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_1000520E4(uint64_t a1)
{
  sub_1000194E0(a1, __stack_chk_guard);
  sub_10000E76C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100052158(uint64_t a1)
{
  sub_1000194E0(a1, __stack_chk_guard);
  sub_10000E76C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000521CC(uint64_t a1)
{
  sub_1000194E0(a1, __stack_chk_guard);
  v4 = 134218242;
  v5 = v1;
  v6 = 2080;
  v7 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "<Error> Client id: %llu is invalid for client name:%s", &v4, 0x16u);
}

void sub_10005234C(uint64_t a1)
{
  sub_1000194E0(a1, __stack_chk_guard);
  v4 = 136315394;
  v5 = v1;
  v6 = 1024;
  v7 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "<Error> Could not get CPMS client state for clientID %s. Error code 0x%x", &v4, 0x12u);
}

void sub_100052454(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> Unable to set the refresh rate %x", v2, 8u);
}

void sub_100052554(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[LinkChargerCC updateCloakingState:]";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> %s: IORegistryEntrySetCFProperties(0x%08x)\n", &v2, 0x12u);
}

void sub_100052624(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> Read a bad maxLI value from the WiFi Manager %d", v2, 8u);
}

void sub_1000526F4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TGraphSampler genTGraphData]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> %s: could not create fieldValues array", &v1, 0xCu);
}

void sub_1000527BC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CpuPiecewiseCC initWithParams:listID:needspowerZones:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> %s: data array size mismatch", &v1, 0xCu);
}

void sub_100052854(void *a1)
{
  v6 = *a1;
  sub_100023108();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000529E0()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100052A9C(uint64_t a1, NSObject *a2)
{
  v3 = [*(*(*a1 + 8) + 40) mitigationState];
  v4 = 136315650;
  v5 = "[AgingController initWithParams:currentWRa:currentUPOCount:]_block_invoke";
  v6 = 2048;
  v7 = 1;
  v8 = 2048;
  v9 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, " %s <Error> Inconsistent mitigation state. Expected %lu, found %lu\n", &v4, 0x20u);
}

void sub_100052B54(uint64_t a1)
{
  [objc_msgSend(*(*(*a1 + 8) + 40) "defaults")];
  sub_100023114();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100052BFC(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> Saved upo count %d > new UPO Count %d. Resetting state\n", v3, 0xEu);
}

void sub_100052CF8(int *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Current WRa %d less than threshold %d. Skipping UPO\n", v4, 0xEu);
}

void sub_100052DF8()
{
  sub_100023124();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100052E78(void *a1)
{
  [a1 mitigationState];
  sub_100023124();
  sub_100023114();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_100052F94(void *a1)
{
  [a1 mitigationState];
  sub_100023124();
  sub_100023114();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100053024(int *a1)
{
  v6 = *a1;
  sub_100023108();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005309C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000530D8()
{
  sub_10000E794();
  sub_100023108();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100053114()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000531D0()
{
  sub_10000E794();
  sub_100023108();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005320C()
{
  sub_10000E794();
  sub_100023108();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100053248()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100053284()
{
  sub_10000E794();
  sub_100023108();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_1000533A0(uint64_t result)
{
  if (byte_1000AAC08)
  {
    v1 = 0;
  }

  else
  {
    v1 = 10;
  }

  byte_1000AAC08 = BYTE5(qword_1000ABC90) - *(result + 46) > v1;
  return result;
}

void sub_1000533D8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> LifetimeServoAFLUT data improperly sorted", buf, 2u);
}

void sub_1000534E0(int *a1)
{
  v6 = *a1;
  sub_10000E76C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100053558(int *a1)
{
  v6 = *a1;
  sub_10000E76C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100053754(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> could not register for %@", &v2, 0xCu);
}

void sub_1000537CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> unknown CT notification: %@", &v2, 0xCu);
}

void sub_100053844(int a1, int __errnum, NSObject *a3)
{
  if (a1 == 1)
  {
    v4 = strerror(__errnum);
  }

  else
  {
    v4 = mach_error_string(__errnum);
  }

  v5 = 136315138;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "<Error> CT max Tx power failed: %s", &v5, 0xCu);
}

void sub_100053960(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SolarDetectorSemantic init]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> %s:: brightnessSystemClient nil", &v1, 0xCu);
}

void sub_100053A3C(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> Could not create solar context (%d)", v2, 8u);
}

void sub_100054160(int a1, int __errnum)
{
  if (a1 == 1)
  {
    strerror(__errnum);
  }

  else
  {
    mach_error_string(__errnum);
  }

  sub_100013B28();
  sub_100013B08(&_mh_execute_header, v2, v3, "<Error> CTServerConnectionConfigMaxRadioPower() failed: %s", v4, v5, v6, v7, v8);
}

void sub_1000541F0(int *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> Setting CTServerConnectionConfigMaxRadioPower Tech %d level %d\n", v4, 0xEu);
}

void sub_10005427C()
{
  v0 = __error();
  strerror(*v0);
  sub_100013B28();
  sub_100013B08(&_mh_execute_header, v1, v2, "<Error> tGraph fstat: %s", v3, v4, v5, v6, v7);
}

void sub_1000542FC()
{
  v0 = __error();
  strerror(*v0);
  sub_100013B28();
  sub_100013B08(&_mh_execute_header, v1, v2, "<Error> tGraph open: %s", v3, v4, v5, v6, v7);
}

void sub_1000543B0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> Failed SetLevel 10 times", buf, 2u);
}

void sub_1000544F4()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100013B28();
  sub_100013B08(&_mh_execute_header, v1, v2, "<Error> SCPreferencesScheduleWithRunLoop() failed: %s", v3, v4, v5, v6, v7);
}

void sub_100054570()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_100013B28();
  sub_100013B08(&_mh_execute_header, v1, v2, "<Error> SCPreferencesSetCallBack() failed: %s", v3, v4, v5, v6, v7);
}

void sub_1000545EC()
{
  v0 = __error();
  strerror(*v0);
  sub_100013B28();
  sub_100013B08(&_mh_execute_header, v1, v2, "<Error> sysctlbyname(hw.model) failed: %s", v3, v4, v5, v6, v7);
}

void sub_1000546A0(int *a1)
{
  v6 = *a1;
  sub_10000E76C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100054B4C(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0x8000100u);
  sub_100031750();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100054BD8()
{
  CFStringGetCStringPtr(@"~pkg-power-split-cpu-fraction", 0x8000100u);
  sub_100031750();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100054CD4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MitigationController setPackagePowerBudgetDirect:withDetails:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> %s should not be called without CPMS enablement", &v1, 0xCu);
}

void sub_100054D58()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  }
}

void sub_100054DF0(int *a1)
{
  if (sub_100031760())
  {
    v7 = *a1;
    sub_100031750();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100054EC8(int *a1)
{
  if (sub_100031760())
  {
    v7 = *a1;
    sub_100031750();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100054F6C()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100055008(uint64_t a1, mach_error_t a2)
{
  if (sub_100031760())
  {
    mach_error_string(a2);
    sub_100031750();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1000550C0(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    v7 = *a2;
    v8 = 138412546;
    v9 = a1;
    v10 = 1024;
    v11 = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<Error> Could not create number from %@ dithering level %d", &v8, 0x12u);
  }

  *a3 = 5;
}

void sub_1000552E0(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100031C44(&_mh_execute_header, v2, v3, "<Error> Clamp: bad element count", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_10005533C(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100031C44(&_mh_execute_header, v2, v3, "<Error> Clamp: bad array sorting", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100055398(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100031C44(&_mh_execute_header, v2, v3, "<Error> Clamp: null array", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_1000553F4(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100031C44(&_mh_execute_header, v2, v3, "<Error> Clamp: bad inputs", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
}

void sub_100055450()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000554C0()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100055530()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000555A0()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100055610()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100055680()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000556F0()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100055760()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000557D0(void *a1)
{
  [a1 length];
  sub_100031750();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100055874()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000558B0()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000558EC()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100055928()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100055964()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000559A0()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000559DC(const __CFString *a1, uint64_t *a2)
{
  CFStringGetCStringPtr(a1, 0);
  v3 = *a2;
  sub_100013B28();
  sub_100031750();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100055A74(_DWORD *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100055AD8(_DWORD *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100055B3C(const void *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  CFRelease(a1);
}

void sub_100055BA4(_DWORD *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100055C08(void *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100055C6C(void *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100055CD0()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

void sub_100055D68(_DWORD *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  *a1 = 0;
}

void sub_100055E0C(_DWORD *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100055E70()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100055EAC()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100055EE8(_DWORD *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  *a1 = 0;
}

void sub_100055F8C()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  }
}

void sub_100056024()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100056080()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_1000560DC()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056118(_DWORD *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  *a1 = -1;
}

void sub_1000561C0(_DWORD *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100056224(_DWORD *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100056308()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000563B8()
{
  sub_100013B28();
  WORD2(v3) = 2080;
  HIWORD(v3) = v0;
  sub_100033F34(&_mh_execute_header, v0, v1, "<Error> %s + %s length too long", v2, v3);
}

void sub_10005642C()
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_100033F54();
}

void sub_1000564CC()
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_100033F54();
}

void sub_10005656C()
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_100033F54();
}

void sub_1000566F4(void *a1, uint64_t *a2)
{
  [a1 lastPathComponent];
  v3 = *a2;
  sub_100013B28();
  sub_100031750();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10005679C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000567D8()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056814()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000569E0()
{
  sub_100038788();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100056A5C()
{
  sub_100038788();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100056AD8()
{
  sub_100038788();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100056B54()
{
  sub_100038788();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100056BD0()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056C0C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056C48()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056C84()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056CC0()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056CFC()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056D38()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056DE8()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056E24()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056E60()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056E9C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056FF4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> No properties available for endpoint: %@", &v2, 0xCu);
}