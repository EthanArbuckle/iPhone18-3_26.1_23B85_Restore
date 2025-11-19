void sub_10005D1BC(uint64_t a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (a2)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Calling ChipREset", "WiFiDeviceChipReset"}];
      }

      objc_autoreleasePoolPop(v4);
      for (i = 6; ; --i)
      {
        v6 = *(a1 + 16);
        v7 = Apple80211Set();
        v8 = v7;
        if (v7 != -3905 && v7 != 61 && v7 != 16)
        {
          break;
        }

        if (!i)
        {
          break;
        }

        usleep(0x7A120u);
      }

      if (_os_feature_enabled_impl())
      {
        v10 = objc_autoreleasePoolPush();
        if (CFDictionaryGetValue(a2, @"CHIP_RESET_TRIGGER"))
        {
          Value = CFDictionaryGetValue(a2, @"CHIP_RESET_TRIGGER");
        }

        else
        {
          Value = @"UnknownReason";
        }

        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100064860;
        v12[3] = &unk_10025F640;
        v12[4] = Value;
        v13 = v8;
        [+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient](WADeviceAnalyticsClient "sharedDeviceAnalyticsClient")];
        objc_autoreleasePoolPop(v10);
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: triggerReasonInfo is NULL!", "WiFiDeviceChipReset"}];
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    sub_10015303C();
  }
}

uint64_t sub_10005D3A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: entering", "WiFiDeviceOpen"}];
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 56))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: exiting, Error: already open", "WiFiDeviceOpen"}];
    }

LABEL_41:
    objc_autoreleasePoolPop(v3);
    return 1;
  }

  *(a1 + 56) = 1;
  v4 = Apple80211Open();
  if (v4)
  {
    v23 = v4;
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Error: Apple80211Open failed, %d", "WiFiDeviceOpen", v23}];
    }
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 112);
    v7 = Apple80211BindToInterfaceWithParams();
    if (!v7)
    {
      sub_10008A738();
      for (i = 6; ; --i)
      {
        v9 = *(a1 + 16);
        PowerState = Apple80211GetPowerState();
        if (PowerState != -3905 && PowerState != 61 && PowerState != 16)
        {
          break;
        }

        if (!i)
        {
          break;
        }

        usleep(0x7A120u);
      }

      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Device power state = %s", sub_100058B44(*(a1 + 52))}];
      }

      objc_autoreleasePoolPop(v12);
      for (j = 6; ; --j)
      {
        v14 = *(a1 + 16);
        v15 = Apple80211CopyValue();
        if (v15 != -3905 && v15 != 61 && v15 != 16)
        {
          break;
        }

        if (!j)
        {
          break;
        }

        usleep(0x7A120u);
      }

      for (k = 6; ; --k)
      {
        v18 = *(a1 + 16);
        v19 = Apple80211CopyValue();
        if (v19 != -3905 && v19 != 61 && v19 != 16)
        {
          break;
        }

        if (!k)
        {
          break;
        }

        usleep(0x7A120u);
      }

      sub_10001A6E4(a1, *(a1 + 112), *(a1 + 4984));
      sub_10005D930(a1);
      v21 = *(a1 + 64);
      if (v21)
      {
        sub_10005DB7C(a1, v21);
      }

      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiDeviceOpen"}];
      }

      goto LABEL_41;
    }

    v25 = v7;
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Error: Apple80211BindToInterface failed, %d", "WiFiDeviceOpen", v25}];
    }
  }

  objc_autoreleasePoolPop(v24);
  v26 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: exiting, Error: found", "WiFiDeviceOpen"}];
  }

  objc_autoreleasePoolPop(v26);
  return 0;
}

void sub_10005D7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Enter: %s:%d\n", "__WiFiDeviceServiceNotificationCallback", 4529}];
  }

  objc_autoreleasePoolPop(v6);
  if (a5)
  {
    sub_10014D294(a5, 0, "DextCrashed");
    v8 = a5[454];
    if (v8)
    {
      v8(a5, a5[14], a5[455]);
    }

    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Exit: %s:%d\n", "__WiFiDeviceServiceNotificationCallback", 4542}];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:%d\n", "__WiFiDeviceServiceNotificationCallback", 4532}];
    }
  }

  objc_autoreleasePoolPop(v7);
}

const __CFNumber *sub_10005D8C4(const __CFNumber *result, uint64_t a2)
{
  if (result)
  {
    valuePtr = -1431655766;
    result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr <= 0xA5)
    {
      *(a2 + (valuePtr >> 3)) |= 1 << (valuePtr & 7);
    }
  }

  return result;
}

CFMutableArrayRef sub_10005D930(void *a1)
{
  v2 = a1[624];
  if (v2)
  {
    CFRelease(v2);
    a1[624] = 0;
  }

  result = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  a1[624] = result;
  if (result)
  {
    v4 = result;
    v5 = a1[14];
    theArray = 0;
    v6 = sub_100007060(a1, v5);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == sub_100006F40())
      {
        v9 = sub_10010F400(v7, 207, 0, &theArray);
LABEL_18:
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v15 = Count;
            for (i = 0; i != v15; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
              if (ValueAtIndex)
              {
                v18 = ValueAtIndex;
                if (CFDictionaryGetValue(ValueAtIndex, @"CHANNELINFO_CH_NUM"))
                {
                  CFArrayAppendValue(v4, v18);
                }
              }
            }
          }

          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }
        }

        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: APPLE80211_IOC_CHANNELS_INFO returned %ld channels in list", "WiFiDeviceCopyChannelInfo", CFArrayGetCount(v4)}];
        }
      }

      else
      {
        for (j = 6; ; --j)
        {
          v11 = a1[2];
          v12 = Apple80211CopyValue();
          v9 = v12;
          if (v12 <= 15)
          {
            if (v12 != -3905)
            {
              break;
            }
          }

          else if (v12 != 61 && v12 != 16)
          {
            goto LABEL_36;
          }

          if (!j)
          {
            break;
          }

          usleep(0x7A120u);
        }

        if (!v12)
        {
          goto LABEL_18;
        }

LABEL_36:
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Could not read APPLE80211_IOC_CHANNELS_INFO err=%d", v9, v21}];
        }
      }

      objc_autoreleasePoolPop(v19);
      if (v9)
      {
        v20 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Device return error %d for supported channels\n", "WiFiDeviceUpdateChannelInfo", v9}];
        }

        objc_autoreleasePoolPop(v20);
        return 0;
      }
    }

    else
    {
      sub_1001530A8(&theArray, v5);
    }

    return 1;
  }

  return result;
}

void sub_10005DB7C(uint64_t a1, NSObject *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: entering", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v4);
  *(a1 + 64) = a2;
  if (*(a1 + 56))
  {
    v6 = *(a1 + 72);
    if (v6 || (v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2), (*(a1 + 72) = v6) != 0))
    {
      dispatch_set_context(v6, a1);
      dispatch_source_set_event_handler_f(*(a1 + 72), sub_10005FD38);
      dispatch_activate(*(a1 + 72));
    }

    v7 = *(a1 + 80);
    if (v7 || (v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2), (*(a1 + 80) = v7) != 0))
    {
      dispatch_set_context(v7, a1);
      dispatch_source_set_event_handler_f(*(a1 + 80), sub_10005FDF4);
      dispatch_activate(*(a1 + 80));
    }

    v8 = *(a1 + 88);
    if (v8 || (v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2), (*(a1 + 88) = v8) != 0))
    {
      dispatch_set_context(v8, a1);
      dispatch_source_set_event_handler_f(*(a1 + 88), sub_10005FEB4);
      dispatch_activate(*(a1 + 88));
    }

    v9 = *(a1 + 5040);
    if (v9 || (v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2), (*(a1 + 5040) = v9) != 0))
    {
      dispatch_set_context(v9, a1);
      dispatch_source_set_event_handler_f(*(a1 + 5040), sub_1000361A4);
      dispatch_activate(*(a1 + 5040));
    }

    v10 = *(a1 + 5096);
    if (v10 || (v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2), (*(a1 + 5096) = v10) != 0))
    {
      dispatch_set_context(v10, a1);
      dispatch_source_set_event_handler_f(*(a1 + 5096), sub_10014C918);
      dispatch_activate(*(a1 + 5096));
    }

    if (!*(a1 + 104) && IOServiceAddInterestNotification(*(a1 + 96), *(a1 + 24), "IOGeneralInterest", nullsub_5, a1, (a1 + 104)))
    {
      sub_100153110();
    }

    else
    {
      IONotificationPortSetDispatchQueue(*(a1 + 96), *(a1 + 64));
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10005FF0C;
      handler[3] = &unk_10025F5D0;
      handler[4] = a1;
      notify_register_dispatch("com.apple.os-eligibility-domain.change.lanthanum", (a1 + 5420), a2, handler);
      v11 = *(a1 + 16);
      v12 = *(a1 + 64);
      if (Apple80211EventMonitoringInit2())
      {
        sub_10015317C();
      }

      else
      {
        v13 = *(a1 + 16);
        if (Apple80211StartMonitoringEvent())
        {
          sub_1001531DC();
        }

        else
        {
          v14 = *(a1 + 16);
          if (Apple80211StartMonitoringEvent())
          {
            sub_10015323C();
          }

          else
          {
            v15 = *(a1 + 16);
            if (Apple80211StartMonitoringEvent())
            {
              sub_10015329C();
            }

            else
            {
              v16 = *(a1 + 16);
              if (Apple80211StartMonitoringEvent())
              {
                sub_1001532FC();
              }

              else
              {
                v17 = *(a1 + 16);
                if (Apple80211StartMonitoringEvent())
                {
                  sub_10015335C();
                }

                else
                {
                  v18 = *(a1 + 16);
                  if (Apple80211StartMonitoringEvent())
                  {
                    sub_1001533BC();
                  }

                  else
                  {
                    v19 = *(a1 + 16);
                    if (Apple80211StartMonitoringEvent())
                    {
                      sub_10015341C();
                    }

                    else
                    {
                      v20 = *(a1 + 16);
                      if (Apple80211StartMonitoringEvent())
                      {
                        sub_10015347C();
                      }

                      else
                      {
                        v21 = *(a1 + 16);
                        if (Apple80211StartMonitoringEvent())
                        {
                          sub_1001534DC();
                        }

                        else
                        {
                          v22 = *(a1 + 16);
                          if (Apple80211StartMonitoringEvent())
                          {
                            sub_10015353C();
                          }

                          else
                          {
                            v23 = *(a1 + 16);
                            if (Apple80211StartMonitoringEvent())
                            {
                              sub_10015359C();
                            }

                            else
                            {
                              v24 = *(a1 + 16);
                              if (Apple80211StartMonitoringEvent())
                              {
                                sub_1001535FC();
                              }

                              else
                              {
                                v25 = *(a1 + 16);
                                if (Apple80211StartMonitoringEvent())
                                {
                                  sub_10015365C();
                                }

                                else
                                {
                                  v26 = *(a1 + 16);
                                  if (Apple80211StartMonitoringEvent())
                                  {
                                    sub_1001536BC();
                                  }

                                  else
                                  {
                                    v27 = *(a1 + 16);
                                    if (Apple80211StartMonitoringEvent())
                                    {
                                      sub_10015371C();
                                    }

                                    else
                                    {
                                      v28 = *(a1 + 16);
                                      if (Apple80211StartMonitoringEvent())
                                      {
                                        sub_10015377C();
                                      }

                                      else
                                      {
                                        v29 = *(a1 + 16);
                                        if (Apple80211StartMonitoringEvent())
                                        {
                                          sub_1001537DC();
                                        }

                                        else
                                        {
                                          v30 = *(a1 + 16);
                                          if (Apple80211StartMonitoringEvent())
                                          {
                                            sub_10015383C();
                                          }

                                          else
                                          {
                                            v31 = *(a1 + 16);
                                            if (Apple80211StartMonitoringEvent())
                                            {
                                              sub_10015389C();
                                            }

                                            else
                                            {
                                              v32 = *(a1 + 16);
                                              if (Apple80211StartMonitoringEvent())
                                              {
                                                sub_1001538FC();
                                              }

                                              else
                                              {
                                                v33 = *(a1 + 16);
                                                if (Apple80211StartMonitoringEvent())
                                                {
                                                  sub_10015395C();
                                                }

                                                else
                                                {
                                                  v34 = *(a1 + 16);
                                                  if (Apple80211StartMonitoringEvent())
                                                  {
                                                    sub_1001539BC();
                                                  }

                                                  else
                                                  {
                                                    v35 = *(a1 + 16);
                                                    if (Apple80211StartMonitoringEvent())
                                                    {
                                                      sub_100153A1C();
                                                    }

                                                    else
                                                    {
                                                      v36 = *(a1 + 16);
                                                      if (Apple80211StartMonitoringEvent())
                                                      {
                                                        sub_100153A7C();
                                                      }

                                                      else
                                                      {
                                                        v37 = *(a1 + 16);
                                                        if (Apple80211StartMonitoringEvent())
                                                        {
                                                          sub_100153ADC();
                                                        }

                                                        else
                                                        {
                                                          v38 = *(a1 + 16);
                                                          if (Apple80211StartMonitoringEvent())
                                                          {
                                                            sub_100153B3C();
                                                          }

                                                          else
                                                          {
                                                            v39 = *(a1 + 16);
                                                            if (Apple80211StartMonitoringEvent())
                                                            {
                                                              sub_100153B9C();
                                                            }

                                                            else
                                                            {
                                                              v40 = *(a1 + 16);
                                                              if (Apple80211StartMonitoringEvent())
                                                              {
                                                                sub_100153BFC();
                                                              }

                                                              else
                                                              {
                                                                v41 = *(a1 + 16);
                                                                if (Apple80211StartMonitoringEvent())
                                                                {
                                                                  sub_100153C5C();
                                                                }

                                                                else
                                                                {
                                                                  v42 = *(a1 + 16);
                                                                  if (Apple80211StartMonitoringEvent())
                                                                  {
                                                                    sub_100153CBC();
                                                                  }

                                                                  else
                                                                  {
                                                                    v43 = *(a1 + 16);
                                                                    if (Apple80211StartMonitoringEvent())
                                                                    {
                                                                      sub_100153D1C();
                                                                    }

                                                                    else
                                                                    {
                                                                      v44 = *(a1 + 16);
                                                                      if (Apple80211StartMonitoringEvent())
                                                                      {
                                                                        sub_100153D7C();
                                                                      }

                                                                      else
                                                                      {
                                                                        v45 = *(a1 + 16);
                                                                        if (Apple80211StartMonitoringEvent())
                                                                        {
                                                                          sub_100153DDC();
                                                                        }

                                                                        else
                                                                        {
                                                                          v46 = *(a1 + 16);
                                                                          if (Apple80211StartMonitoringEvent())
                                                                          {
                                                                            sub_100153E3C();
                                                                          }

                                                                          else
                                                                          {
                                                                            v47 = *(a1 + 16);
                                                                            if (Apple80211StartMonitoringEvent())
                                                                            {
                                                                              sub_100153E9C();
                                                                            }

                                                                            else
                                                                            {
                                                                              v48 = *(a1 + 16);
                                                                              if (Apple80211StartMonitoringEvent())
                                                                              {
                                                                                sub_100153EFC();
                                                                              }

                                                                              else
                                                                              {
                                                                                v49 = *(a1 + 16);
                                                                                if (Apple80211StartMonitoringEvent())
                                                                                {
                                                                                  sub_100153F5C();
                                                                                }

                                                                                else
                                                                                {
                                                                                  v50 = *(a1 + 16);
                                                                                  if (Apple80211StartMonitoringEvent())
                                                                                  {
                                                                                    sub_100153FBC();
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v51 = *(a1 + 16);
                                                                                    if (Apple80211StartMonitoringEvent())
                                                                                    {
                                                                                      sub_10015401C();
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v52 = *(a1 + 16);
                                                                                      if (Apple80211StartMonitoringEvent())
                                                                                      {
                                                                                        sub_10015407C();
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v53 = *(a1 + 16);
                                                                                        if (Apple80211StartMonitoringEvent())
                                                                                        {
                                                                                          sub_1001540DC();
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v54 = *(a1 + 16);
                                                                                          if (Apple80211StartMonitoringEvent())
                                                                                          {
                                                                                            sub_10015413C();
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v55 = *(a1 + 16);
                                                                                            if (Apple80211StartMonitoringEvent())
                                                                                            {
                                                                                              sub_10015419C();
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v56 = *(a1 + 16);
                                                                                              if (Apple80211StartMonitoringEvent())
                                                                                              {
                                                                                                sub_1001541FC();
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v57 = *(a1 + 16);
                                                                                                if (Apple80211StartMonitoringEvent())
                                                                                                {
                                                                                                  sub_10015425C();
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v58 = *(a1 + 16);
                                                                                                  if (Apple80211StartMonitoringEvent())
                                                                                                  {
                                                                                                    sub_1001542BC();
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v59 = *(a1 + 16);
                                                                                                    if (Apple80211StartMonitoringEvent())
                                                                                                    {
                                                                                                      sub_10015431C();
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v60 = *(a1 + 16);
                                                                                                      if (Apple80211StartMonitoringEvent())
                                                                                                      {
                                                                                                        sub_10015437C();
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v61 = *(a1 + 16);
                                                                                                        if (Apple80211StartMonitoringEvent())
                                                                                                        {
                                                                                                          sub_1001543DC();
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v62 = *(a1 + 16);
                                                                                                          if (Apple80211StartMonitoringEvent())
                                                                                                          {
                                                                                                            sub_10015443C();
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v63 = *(a1 + 16);
                                                                                                            if (Apple80211StartMonitoringEvent())
                                                                                                            {
                                                                                                              sub_10015449C();
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v64 = *(a1 + 16);
                                                                                                              if (Apple80211StartMonitoringEvent())
                                                                                                              {
                                                                                                                sub_1001544FC();
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v65 = *(a1 + 16);
                                                                                                                if (Apple80211StartMonitoringEvent())
                                                                                                                {
                                                                                                                  sub_10015455C();
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v66 = *(a1 + 16);
                                                                                                                  if (Apple80211StartMonitoringEvent())
                                                                                                                  {
                                                                                                                    sub_1001545BC();
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v67 = *(a1 + 16);
                                                                                                                    if (Apple80211StartMonitoringEvent())
                                                                                                                    {
                                                                                                                      sub_10015461C();
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v68 = *(a1 + 16);
                                                                                                                      if (Apple80211StartMonitoringEvent())
                                                                                                                      {
                                                                                                                        sub_10015467C();
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v69 = *(a1 + 16);
                                                                                                                        if (Apple80211StartMonitoringEvent())
                                                                                                                        {
                                                                                                                          sub_1001546DC();
                                                                                                                        }

                                                                                                                        else if (_os_feature_enabled_impl() && (v70 = *(a1 + 16), Apple80211StartMonitoringEvent()))
                                                                                                                        {
                                                                                                                          sub_10015473C();
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v71 = *(a1 + 16);
                                                                                                                          if (Apple80211StartMonitoringEvent())
                                                                                                                          {
                                                                                                                            sub_10015479C();
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v72 = *(a1 + 16);
                                                                                                                            if (Apple80211StartMonitoringEvent())
                                                                                                                            {
                                                                                                                              sub_1001547FC();
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v73 = *(a1 + 16);
                                                                                                                              if (Apple80211StartMonitoringEvent())
                                                                                                                              {
                                                                                                                                sub_10015485C();
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v74 = *(a1 + 16);
                                                                                                                                if (Apple80211StartMonitoringEvent())
                                                                                                                                {
                                                                                                                                  sub_1001548BC();
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v75 = *(a1 + 16);
                                                                                                                                  if (Apple80211StartMonitoringEvent())
                                                                                                                                  {
                                                                                                                                    sub_10015491C();
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v76 = *(a1 + 16);
                                                                                                                                    if (Apple80211StartMonitoringEvent())
                                                                                                                                    {
                                                                                                                                      sub_10015497C();
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v77 = *(a1 + 16);
                                                                                                                                      if (Apple80211StartMonitoringEvent())
                                                                                                                                      {
                                                                                                                                        sub_1001549DC();
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v78 = *(a1 + 16);
                                                                                                                                        if (Apple80211StartMonitoringEvent())
                                                                                                                                        {
                                                                                                                                          sub_100154A3C();
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v79 = *(a1 + 16);
                                                                                                                                          if (Apple80211StartMonitoringEvent())
                                                                                                                                          {
                                                                                                                                            sub_100154A9C();
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v80 = *(a1 + 16);
                                                                                                                                            if (!Apple80211FilterMonitoringEvent())
                                                                                                                                            {
                                                                                                                                              sub_1000F9294(*(a1 + 144), sub_100060010, a1);
                                                                                                                                              sub_1000F92A0(*(a1 + 144), *(a1 + 64));
                                                                                                                                              if (!*(a1 + 152))
                                                                                                                                              {
                                                                                                                                                *context = 0;
                                                                                                                                                memset(&context[16], 0, 24);
                                                                                                                                                *&context[8] = a1;
                                                                                                                                                v81 = SCDynamicStoreCreate(kCFAllocatorDefault, @"WiFiDevice", sub_10002FF10, context);
                                                                                                                                                *(a1 + 152) = v81;
                                                                                                                                                if (v81)
                                                                                                                                                {
                                                                                                                                                  sub_10014C924(a1);
                                                                                                                                                  if (!SCDynamicStoreSetDispatchQueue(*(a1 + 152), *(a1 + 64)))
                                                                                                                                                  {
                                                                                                                                                    v83 = objc_autoreleasePoolPush();
                                                                                                                                                    if (off_100298C40)
                                                                                                                                                    {
                                                                                                                                                      [off_100298C40 WFLog:4 message:{"%s: Error setting dynamic store queue.", "WiFiDeviceScheduleWithQueue"}];
                                                                                                                                                    }

                                                                                                                                                    objc_autoreleasePoolPop(v83);
                                                                                                                                                  }

                                                                                                                                                  v84 = *(a1 + 152);
                                                                                                                                                  if (SCDynamicStoreSetDisconnectCallBack())
                                                                                                                                                  {
                                                                                                                                                    goto LABEL_108;
                                                                                                                                                  }

                                                                                                                                                  v82 = objc_autoreleasePoolPush();
                                                                                                                                                  if (off_100298C40)
                                                                                                                                                  {
                                                                                                                                                    [off_100298C40 WFLog:4 message:{"%s: Error subscribing to the dynamic store disconnect event.", "WiFiDeviceScheduleWithQueue"}];
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v82 = objc_autoreleasePoolPush();
                                                                                                                                                  if (off_100298C40)
                                                                                                                                                  {
                                                                                                                                                    [off_100298C40 WFLog:4 message:{"%s: SCDynamicStoreCreate failed", "WiFiDeviceScheduleWithQueue"}];
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                objc_autoreleasePoolPop(v82);
                                                                                                                                              }

LABEL_108:
                                                                                                                                              v85 = *(a1 + 176);
                                                                                                                                              if (v85)
                                                                                                                                              {
                                                                                                                                                sub_10010A1DC(v85, *(a1 + 64), sub_1000600F4, a1);
                                                                                                                                              }

                                                                                                                                              sub_10014CC2C(a1);
                                                                                                                                              if (*(a1 + 32))
                                                                                                                                              {
                                                                                                                                                *context = 6;
                                                                                                                                                v87 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, context);
                                                                                                                                                if (v87)
                                                                                                                                                {
                                                                                                                                                  v88 = v87;
                                                                                                                                                  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                                                                                                                                  if (Mutable)
                                                                                                                                                  {
                                                                                                                                                    v90 = Mutable;
                                                                                                                                                    CFDictionaryAddValue(Mutable, @"VIRT_IF_ROLE", v88);
                                                                                                                                                    v91 = *(a1 + 5328);
                                                                                                                                                    if (v91)
                                                                                                                                                    {
                                                                                                                                                      CFRelease(v91);
                                                                                                                                                      *(a1 + 5328) = 0;
                                                                                                                                                    }

                                                                                                                                                    *(a1 + 5328) = sub_10010E34C(a1, kCFAllocatorDefault, v90, *(a1 + 64), sub_10006AA4C);
                                                                                                                                                    CFRelease(v88);
                                                                                                                                                    CFRelease(v90);
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    sub_100154B5C(v88);
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  sub_100154BC8();
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v86 = objc_autoreleasePoolPush();
                                                                                                                                                if (off_100298C40)
                                                                                                                                                {
                                                                                                                                                  [off_100298C40 WFLog:3 message:{"%s: AWDL is not supported", "WiFiDeviceScheduleWithQueue"}];
                                                                                                                                                }

                                                                                                                                                objc_autoreleasePoolPop(v86);
                                                                                                                                              }

                                                                                                                                              if (*(a1 + 28) < 0)
                                                                                                                                              {
                                                                                                                                                *context = @"ap1";
                                                                                                                                                *&valuePtr[0] = 7;
                                                                                                                                                v92 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, valuePtr);
                                                                                                                                                if (v92)
                                                                                                                                                {
                                                                                                                                                  v93 = v92;
                                                                                                                                                  v94 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                                                                                                                                  if (v94)
                                                                                                                                                  {
                                                                                                                                                    v95 = v94;
                                                                                                                                                    CFDictionaryAddValue(v94, @"VIRT_IF_ROLE", v93);
                                                                                                                                                    CFDictionaryAddValue(v95, @"VIRT_IF_NAME", @"ap1");
                                                                                                                                                    v97 = sub_100062E94(a1, v96, v95, context);
                                                                                                                                                    v98 = objc_autoreleasePoolPush();
                                                                                                                                                    if (v97)
                                                                                                                                                    {
                                                                                                                                                      if (off_100298C40)
                                                                                                                                                      {
                                                                                                                                                        [off_100298C40 WFLog:4 message:{"Error creating %@  interface %d", *context, v97}];
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else if (off_100298C40)
                                                                                                                                                    {
                                                                                                                                                      [off_100298C40 WFLog:4 message:{"%s: Created %@ interface", "__WiFiDeviceCreateHostApInterface", *context}];
                                                                                                                                                    }

                                                                                                                                                    objc_autoreleasePoolPop(v98);
                                                                                                                                                    CFRelease(v93);
                                                                                                                                                    CFRelease(v95);
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    sub_100154C28(v93);
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  sub_100154C94();
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              sub_10014CEA0();
                                                                                                                                              *(a1 + 5232) = 1;
                                                                                                                                              v99 = *(a1 + 4248);
                                                                                                                                              if (v99)
                                                                                                                                              {
                                                                                                                                                v113 = 0;
                                                                                                                                                v111 = 0u;
                                                                                                                                                v112 = 0u;
                                                                                                                                                v109 = 0u;
                                                                                                                                                v110 = 0u;
                                                                                                                                                v108 = 0u;
                                                                                                                                                memset(context, 0, sizeof(context));
                                                                                                                                                if (v99(a1, *(a1 + 4256), context))
                                                                                                                                                {
                                                                                                                                                  if (context[0])
                                                                                                                                                  {
                                                                                                                                                    valuePtr[0] = *"FullChipReset-";
                                                                                                                                                    memset(&valuePtr[1], 0, 112);
                                                                                                                                                    v103 = strlen(valuePtr);
                                                                                                                                                    snprintf(valuePtr + v103, 128 - v103, "%s", &context[1]);
                                                                                                                                                    v102 = valuePtr;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v102 = "DextCrashed";
                                                                                                                                                  }

                                                                                                                                                  sub_10014D294(a1, 1, v102);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              v100 = objc_alloc_init(WiFiRemoteClientCountryCodeMonitor);
                                                                                                                                              *(a1 + 5360) = v100;
                                                                                                                                              v104[0] = _NSConcreteStackBlock;
                                                                                                                                              v104[1] = 3221225472;
                                                                                                                                              v104[2] = sub_100060114;
                                                                                                                                              v104[3] = &unk_10025F618;
                                                                                                                                              v104[4] = a1;
                                                                                                                                              [v100 setSetCountryCodeHandler:v104];
                                                                                                                                              [*(a1 + 5360) beginMonitoring];
                                                                                                                                              v101 = objc_autoreleasePoolPush();
                                                                                                                                              if (off_100298C40)
                                                                                                                                              {
                                                                                                                                                [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiDeviceScheduleWithQueue"}];
                                                                                                                                              }

LABEL_132:
                                                                                                                                              objc_autoreleasePoolPop(v101);
                                                                                                                                              return;
                                                                                                                                            }

                                                                                                                                            sub_100154AFC();
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
                  }
                }
              }
            }
          }
        }
      }
    }

    v101 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: exiting, Error: found", "WiFiDeviceScheduleWithQueue"}];
    }

    goto LABEL_132;
  }

  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: exiting, Error: already open", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v5);
}

void sub_10005EA44(uint64_t a1)
{
  if (*(a1 + 64))
  {
    sub_10005EAC8(a1);
  }

  if (*(a1 + 16))
  {
    Apple80211Close();
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 5248);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 5248) = 0;
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 128) = 0;
  }

  *(a1 + 56) = 0;
  sub_100145284(a1);
  v4 = *(a1 + 5112);
  v5 = *(a1 + 112);

  CFDictionaryRemoveValue(v4, v5);
}

void sub_10005EAC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v43 = "WiFiDeviceUnscheduleFromQueue";
    [off_100298C40 WFLog:4 message:"%s: entering"];
  }

  objc_autoreleasePoolPop(v2);
  SCDynamicStoreSetDispatchQueue(*(a1 + 152), 0);
  sub_1000F9294(*(a1 + 144), 0, 0);
  v3 = *(a1 + 64);
  sub_1000F95D4(*(a1 + 144));
  if (notify_is_valid_token(*(a1 + 5420)))
  {
    notify_cancel(*(a1 + 5420));
    *(a1 + 5420) = -1;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(a1 + 80));
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    dispatch_source_cancel(v6);
    dispatch_release(*(a1 + 88));
    *(a1 + 88) = 0;
  }

  v7 = *(a1 + 5040);
  if (v7)
  {
    dispatch_source_cancel(v7);
    dispatch_release(*(a1 + 5040));
    *(a1 + 5040) = 0;
  }

  v8 = *(a1 + 5096);
  if (v8)
  {
    dispatch_source_cancel(v8);
    dispatch_release(*(a1 + 5096));
    *(a1 + 5096) = 0;
  }

  IONotificationPortSetDispatchQueue(*(a1 + 96), 0);
  v9 = *(a1 + 16);
  Apple80211EventMonitoringHalt();
  if (*(a1 + 176))
  {
    sub_1000603DC(a1, 6);
    v10 = *(a1 + 64);
    sub_10010A2C4(*(a1 + 176));
  }

  v11 = *(a1 + 28);
  v12 = objc_autoreleasePoolPush();
  v13 = off_100298C40;
  if (v11 < 0)
  {
    if (off_100298C40)
    {
      valuePtr = 12701;
      Count = CFDictionaryGetCount(*(a1 + 5112));
      v43 = "__WiFiDeviceDeleteHostApInterface";
      [v13 WFLog:3 message:"Enter: %s:%d %ld \n"];
    }

    objc_autoreleasePoolPop(v12);
    sub_10014DEF0(a1, v19, v20, v21, v22, v23, v24, v25, v43, valuePtr, Count, v46, v47, v48, v49, v50, v51, v52);
    if (v26)
    {
      v27 = sub_10010ED7C(v26);
      if (v27)
      {
        v28 = v27;
        CFDictionaryRemoveValue(*(a1 + 5112), v27);
        v29 = *(a1 + 4392);
        if (v29)
        {
          v29(a1, v28, *(a1 + 4400), 0);
        }
      }
    }

    v12 = objc_autoreleasePoolPush();
    v30 = off_100298C40;
    if (off_100298C40)
    {
      valuePtr = 12716;
      Count = CFDictionaryGetCount(*(a1 + 5112));
      [v30 WFLog:3 message:{"Exit: %s:%d %ld \n", "__WiFiDeviceDeleteHostApInterface"}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: HostAP is not supported", "WiFiDeviceUnscheduleFromQueue"}];
  }

  objc_autoreleasePoolPop(v12);
  v14 = *(a1 + 32);
  v15 = objc_autoreleasePoolPush();
  v16 = off_100298C40;
  if (v14)
  {
    if (off_100298C40)
    {
      valuePtr = 12678;
      Count = CFDictionaryGetCount(*(a1 + 5112));
      v43 = "__WiFiDeviceDeleteAwdlInterface";
      [v16 WFLog:3 message:"Enter: %s:%d %ld \n"];
    }

    objc_autoreleasePoolPop(v15);
    v38 = *(a1 + 5328);
    if (v38)
    {
      CFRelease(v38);
      *(a1 + 5328) = 0;
    }

    sub_10014DDAC(a1, v31, v32, v33, v34, v35, v36, v37, v43, valuePtr, Count, v46, v47, v48, v49, v50, v51, v52);
    if (v39)
    {
      v40 = sub_10010ED7C(v39);
      if (v40)
      {
        v41 = v40;
        CFDictionaryRemoveValue(*(a1 + 5112), v40);
        v42 = *(a1 + 4392);
        if (v42)
        {
          v42(a1, v41, *(a1 + 4400), 0);
        }
      }
    }

    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Exit: %s:%d %ld \n", "__WiFiDeviceDeleteAwdlInterface", 12696, CFDictionaryGetCount(*(a1 + 5112))}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AWDL is not supported", "WiFiDeviceUnscheduleFromQueue", valuePtr, Count}];
  }

  objc_autoreleasePoolPop(v15);
  v17 = *(a1 + 5360);
  if (v17)
  {
    [v17 endMonitoring];

    *(a1 + 5360) = 0;
  }

  *(a1 + 64) = 0;
  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiDeviceUnscheduleFromQueue"}];
  }

  objc_autoreleasePoolPop(v18);
}

const __CFString *sub_10005EE58(int a1)
{
  if (a1 <= 130)
  {
    if (a1 > 54)
    {
      if (a1 <= 75)
      {
        if (a1 > 60)
        {
          switch(a1)
          {
            case '=':
              return @"APPLE80211_M_POWER_STATS_UPDATE";
            case '?':
              return @"APPLE80211_M_BGSCAN_CACHED_NETWORK_AVAILABLE";
            case 'K':
              return @"APPLE80211_M_PRUNE";
          }
        }

        else
        {
          switch(a1)
          {
            case '7':
              return @"APPLE80211_M_DRIVER_AVAILABLE";
            case '9':
              return @"APPLE80211_M_GAS_DONE";
            case '<':
              return @"APPLE80211_M_HOMECHAN_QUAL_CHANGED";
          }
        }
      }

      else if (a1 <= 80)
      {
        switch(a1)
        {
          case 'L':
            return @"APPLE80211_M_SUPPLICANT_EVENT";
          case 'O':
            return @"APPLE80211_M_DUMP_LOGS";
          case 'P':
            return @"APPLE80211_M_ROAM_STATUS";
        }
      }

      else if (a1 > 88)
      {
        if (a1 == 89)
        {
          return @"APPLE80211_M_TX_FAIL_HISTORY_EVENT";
        }

        if (a1 == 90)
        {
          return @"APPLE80211_M_SCAN_BACKOFF_REPORT";
        }
      }

      else
      {
        if (a1 == 81)
        {
          return @"APPLE80211_M_LEAKY_AP_STATS";
        }

        if (a1 == 83)
        {
          return @"APPLE80211_M_RANGING_MEASUREMENT_DONE";
        }
      }

      return @"Unknown";
    }

    v2 = a1 - 1;
    result = @"APPLE80211_M_ASSOC_DONE";
    switch(v2)
    {
      case 0:
        result = @"APPLE80211_M_POWER_CHANGED";
        break;
      case 2:
        result = @"APPLE80211_M_BSSID_CHANGED";
        break;
      case 3:
        result = @"APPLE80211_M_LINK_CHANGED";
        break;
      case 7:
        result = @"APPLE80211_M_MODE_CHANGED";
        break;
      case 8:
        return result;
      case 9:
        result = @"APPLE80211_M_SCAN_DONE";
        break;
      case 10:
        result = @"APPLE80211_M_COUNTRY_CODE_CHANGED";
        break;
      case 11:
        result = @"APPLE80211_M_STA_ARRIVE";
        break;
      case 12:
        result = @"APPLE80211_M_STA_LEAVE";
        break;
      case 13:
        result = @"APPLE80211_M_DECRYPTION_FAILURE";
        break;
      case 29:
        result = @"APPLE80211_M_WIFI_DIRECT_GROUP_STARTED";
        break;
      case 30:
        result = @"APPLE80211_M_BGSCAN_NET_DISCOVERED";
        break;
      case 31:
        result = @"APPLE80211_M_ROAMED";
        break;
      case 34:
        result = @"APPLE80211_M_BLACKLIST_NETWORK";
        break;
      case 35:
        result = @"APPLE80211_M_RESUME_SCAN";
        break;
      case 36:
        result = @"APPLE80211_M_BGSCAN_SUSPENDED";
        break;
      case 37:
        result = @"APPLE80211_M_BGSCAN_RESUMED";
        break;
      case 38:
        result = @"APPLE80211_M_RSSI_CHANGED";
        break;
      default:
        return @"Unknown";
    }

    return result;
  }

  if (a1 <= 175)
  {
    switch(a1)
    {
      case 131:
        result = @"APPLE80211_M_LSM_UPDATE";
        break;
      case 132:
        result = @"APPLE80211_M_LOW_POWER_MODE";
        break;
      case 133:
        result = @"APPLE80211_M_LPAS_STATE";
        break;
      case 134:
        result = @"APPLE80211_M_TEMP_DISABLE_NETWORK";
        break;
      case 140:
        result = @"APPLE80211_M_BSS_STEERING_REQUEST_EVENT";
        break;
      case 141:
        result = @"APPLE80211_M_SOFTAP_LPM";
        break;
      case 143:
        result = @"APPLE80211_M_ACTION_FRAME_EVENT";
        break;
      case 145:
        result = @"APPLE80211_M_WEIGHT_AVG_LQM_UPDATE";
        break;
      case 148:
        result = @"APPLE80211_M_WIFI_NETWORK_INFO_UPDATE";
        break;
      case 150:
        result = @"APPLE80211_M_DPS";
        break;
      case 151:
        result = @"APPLE80211_M_SLOW_WIFI";
        break;
      case 156:
        result = @"APPLE80211_M_REALTIME_SESSION_NOTIFICATION";
        break;
      case 164:
        result = @"APPLE80211_M_SLOWWIFI_PROBE_TRIGGER";
        break;
      case 165:
        result = @"APPLE80211_M_SLOWWIFI_USERINPUT_TRIGGER";
        break;
      case 166:
        result = @"APPLE80211_M_SLOWWIFI_PROBE_RESULT";
        break;
      case 167:
        result = @"APPLE80211_M_SLOWWIFI_USERINPUT_RESULT";
        break;
      case 169:
        result = @"APPLE80211_M_LQM_TX_STATS";
        break;
      default:
        return @"Unknown";
    }

    return result;
  }

  if (a1 > 204)
  {
    if (a1 > 237)
    {
      if (a1 > 239)
      {
        switch(a1)
        {
          case 240:
            return @"APPLE80211_M_SCAN_FWD_STATS_EVENT";
          case 244:
            return @"APPLE80211_M_RENEW_IP_REQ";
          case 245:
            return @"APPLE80211_M_RX_DATA_STALL";
        }

        return @"Unknown";
      }

      if (a1 == 238)
      {
        return @"APPLE80211_M_NDD_DONE";
      }

      else
      {
        return @"APPLE80211_M_NDD_REPORT";
      }
    }

    if (a1 > 216)
    {
      if (a1 == 217)
      {
        return @"APPLE80211_M_ENV_BSS_INFO";
      }

      if (a1 == 218)
      {
        return @"APPLE80211_M_OBSS_MIT_NOTIFICATION";
      }
    }

    else
    {
      if (a1 == 205)
      {
        return @"APPLE80211_M_ROAM_SUPPRESSION_STATUS";
      }

      if (a1 == 210)
      {
        return @"APPLE80211_M_P2P_PEER_COUNTRY_CODE";
      }
    }

    return @"Unknown";
  }

  if (a1 <= 190)
  {
    if (a1 > 188)
    {
      if (a1 == 189)
      {
        return @"APPLE80211_M_TE_CRITICAL_TRAFFIC_IND";
      }

      else
      {
        return @"APPLE80211_M_BT_COEX_MODE_STATS_EVENT";
      }
    }

    if (a1 == 176)
    {
      return @"APPLE80211_M_LQM_CRASHTRACER";
    }

    if (a1 == 180)
    {
      return @"APPLE80211_M_BEACON_CACHE_UPDATED";
    }

    return @"Unknown";
  }

  if (a1 > 192)
  {
    switch(a1)
    {
      case 193:
        return @"APPLE80211_M_SENSING_DONE";
      case 196:
        return @"APPLE80211_M_TRIGGER_TTR";
      case 199:
        return @"APPLE80211_M_COLOCATED_CACHE_EVENT";
    }

    return @"Unknown";
  }

  if (a1 == 191)
  {
    return @"APPLE80211_M_LINK_DOWN_DEBOUNCE_FAILED";
  }

  else
  {
    return @"APPLE80211_M_SIB_EVENT";
  }
}

CFMutableArrayRef sub_10005F338(uint64_t a1, int a2)
{
  v4 = *(a1 + 4992);
  if (v4 && CFArrayGetCount(v4) || (result = sub_10005D930(a1), result))
  {
    Count = CFArrayGetCount(*(a1 + 4992));
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        valuePtr = -1431655766;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 4992), v8);
        Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNELINFO_CH_NUM");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr == a2)
          {
            v11 = CFArrayGetValueAtIndex(*(a1 + 4992), v8);
            if (kCFBooleanTrue == CFDictionaryGetValue(v11, @"CHANNELINFO_DFS"))
            {
              break;
            }
          }
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

CFMutableArrayRef sub_10005F438(uint64_t a1, int a2)
{
  v4 = *(a1 + 4992);
  if (v4 && CFArrayGetCount(v4) || (result = sub_10005D930(a1), result))
  {
    Count = CFArrayGetCount(*(a1 + 4992));
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        valuePtr = -1431655766;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 4992), v8);
        Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNELINFO_CH_NUM");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr == a2)
          {
            break;
          }
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10005F500(uint64_t a1, int a2)
{
  v4 = *(a1 + 4992);
  if ((!v4 || !CFArrayGetCount(v4)) && !sub_10005D930(a1))
  {
    return 1;
  }

  Count = CFArrayGetCount(*(a1 + 4992));
  if (Count < 1)
  {
    return 1;
  }

  v6 = Count;
  v7 = 0;
  v8 = 1;
  do
  {
    valuePtr = 0;
    v17 = -1431655766;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 4992), v7);
    Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNELINFO_BAND_NUM");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    v11 = CFArrayGetValueAtIndex(*(a1 + 4992), v7);
    v12 = CFDictionaryGetValue(v11, @"CHANNELINFO_CH_NUM");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, &v17);
      if (v17 == a2 && valuePtr != 1)
      {
        v13 = CFArrayGetValueAtIndex(*(a1 + 4992), v7);
        if (kCFBooleanTrue == CFDictionaryGetValue(v13, @"CHANNELINFO_40MHZ"))
        {
          LODWORD(v8) = v8 | 2;
        }

        v14 = CFArrayGetValueAtIndex(*(a1 + 4992), v7);
        if (kCFBooleanTrue == CFDictionaryGetValue(v14, @"CHANNELINFO_80MHZ"))
        {
          v8 = v8 | 4;
        }

        else
        {
          v8 = v8;
        }
      }
    }

    ++v7;
  }

  while (v6 != v7);
  return v8;
}

uint64_t sub_10005F66C(void *a1, id *a2)
{
  if (a1)
  {
    v3 = a1[160] - 1;
    v4 = a1[159];
    v14 = a1 + 224;
    v15 = a1 + 38;
    v5 = a1[286] - 1;
    v6 = a1[285];
    v7 = 0.0;
    v8 = 30;
    v9 = 0.0;
    do
    {
      if (v4)
      {
        if (v3 < 0)
        {
          v3 = 29;
        }

        v10 = &v15[4 * v3];
        if (v9 == 0.0 || v9 - v10[3] <= 1.0)
        {
          [a2[1] addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *v10, v14)}];
          [a2[2] addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *(v10 + 1))}];
          [a2[3] addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", *(v10 + 2))}];
          v9 = v10[3];
        }

        else
        {
          [a2[1] addObject:{objc_msgSend(a2[1], "lastObject")}];
          [a2[2] addObject:{objc_msgSend(a2[2], "lastObject")}];
          [a2[3] addObject:{objc_msgSend(a2[3], "lastObject")}];
          v9 = v9 + -1.0;
        }

        --v4;
        --v3;
      }

      if (v6)
      {
        if (v5 >= 0)
        {
          v11 = v5;
        }

        else
        {
          v11 = 29;
        }

        v12 = &v14[2 * v11];
        if (v7 == 0.0 || v7 - v12[1] <= 1.0)
        {
          [*a2 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *v12, v14)}];
          v7 = v12[1];
        }

        else
        {
          [*a2 addObject:{objc_msgSend(*a2, "lastObject")}];
          v7 = v7 + -1.0;
        }

        --v6;
        v5 = v11 - 1;
      }

      --v8;
    }

    while (v8);
    return 1;
  }

  else
  {
    sub_100154CF4();
    return 0;
  }
}

uint64_t sub_10005F870(uint64_t a1, id *a2)
{
  if (!a1)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiDevicePrepareTxRxHistoryArray"}];
    }

    goto LABEL_21;
  }

  if (!a2)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: lqmHistory null", "WiFiDevicePrepareTxRxHistoryArray"}];
    }

LABEL_21:
    objc_autoreleasePoolPop(v11);
    return 0;
  }

  v3 = *(a1 + 3256);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 2296;
  v6 = *(a1 + 3264) - 1;
  v7 = 0.0;
  do
  {
    if (v6 < 0)
    {
      v6 = 29;
    }

    v8 = (v5 + 32 * v6);
    if (v7 == 0.0 || v7 - v8[3] <= 1.0)
    {
      [a2[5] addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *v8)}];
      [a2[4] addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(v8 + 4))}];
      [a2[7] addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(v8 + 2))}];
      [a2[6] addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(v8 + 12))}];
      [a2[8] addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(v8 + 4))}];
      [a2[9] addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(v8 + 20))}];
      v7 = v8[3];
      --v3;
      --v6;
    }

    else
    {
      [a2[5] addObject:{objc_msgSend(a2[5], "lastObject")}];
      [a2[4] addObject:{objc_msgSend(a2[4], "lastObject")}];
      [a2[7] addObject:{objc_msgSend(a2[7], "lastObject")}];
      [a2[6] addObject:{objc_msgSend(a2[6], "lastObject")}];
      [a2[8] addObject:{objc_msgSend(a2[8], "lastObject")}];
      [a2[9] addObject:{objc_msgSend(a2[9], "lastObject")}];
      v7 = v7 + -1.0;
    }

    result = 1;
    if (!v3)
    {
      break;
    }
  }

  while (v4++ < 0x1D);
  return result;
}

uint64_t sub_10005FB00(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return 1;
    }

    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: lqm null", "WiFiDevicePrepareEncodedPerCoreRssiHistoryArray"}];
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiDevicePrepareEncodedPerCoreRssiHistoryArray"}];
    }
  }

  objc_autoreleasePoolPop(v3);
  return 0;
}

uint64_t sub_10005FBA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_10005FBF8(a1, *(a1 + 3288));
      *(a2 + 576) = *(a1 + 3272);
      return 1;
    }

    sub_100154D60();
  }

  else
  {
    sub_100154DCC();
  }

  return 0;
}

void sub_10005FBF8(uint64_t a1, int a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (a1)
  {
    v5 = Current;
    v6 = *(a1 + 3280);
    if (v6 == 0.0)
    {
      *(a1 + 3288) = a2;
      *(a1 + 3280) = v5;
      *(a1 + 3272) = 0;
    }

    else
    {
      v7 = (v5 - v6);
      if (*(a1 + 3288) == 1)
      {
        if (!*(a1 + 3272))
        {
          [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor addFaultEvent:"addFaultEvent:forInterface:" forInterface:17, *(a1 + 112)];
        }

        if (v7 <= 0x1F)
        {
          if (v7 <= 1)
          {
            v9 = 1;
          }

          else
          {
            v9 = v7;
          }

          v10 = (v9 + 3) & 0x3C;
          v11 = (*(a1 + 3272) << v9);
          v12 = vdupq_n_s32(v9 - 1);
          v13 = xmmword_1001CE260;
          v14.i64[0] = 0x100000001;
          v14.i64[1] = 0x100000001;
          v15.i64[0] = 0x400000004;
          v15.i64[1] = 0x400000004;
          do
          {
            v16 = v11;
            v17 = v13;
            v11 = vorrq_s8(v11, vshlq_u32(v14, v13));
            v13 = vaddq_s32(v13, v15);
            v10 -= 4;
          }

          while (v10);
          v18 = vbslq_s8(vcgtq_u32(v17, v12), v16, v11);
          *v18.i8 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
          v8 = v18.i32[0] | v18.i32[1];
        }

        else
        {
          v8 = -1;
        }
      }

      else if (v7 <= 0x1F)
      {
        v8 = *(a1 + 3272) << v7;
      }

      else
      {
        v8 = 0;
      }

      *(a1 + 3272) = v8;
      *(a1 + 3288) = a2;
      *(a1 + 3280) = v5;
    }
  }

  else
  {
    sub_100154E38();
  }
}

void sub_10005FD38(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v3 = *(a1 + 5192);
      v4 = *(a1 + 5168);
      if (!v4)
      {
        v4 = @"Unknown";
      }

      [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : id mac address private : <%d> for network ? <%@>", "__WiFiDevicePrimaryTimerCallback", *(a1 + 5192), v4}];
    }

    objc_autoreleasePoolPop(v2);
    v5 = *(a1 + 3680);
    if (v5)
    {
      v6 = *(a1 + 112);
      v7 = *(a1 + 3688);

      v5(a1, v6, v7);
    }
  }
}

void sub_10005FDF4(uint64_t a1)
{
  if (!sub_10005A910(a1))
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v3 = *(a1 + 5192);
      v4 = *(a1 + 5168);
      if (!v4)
      {
        v4 = @"Unknown";
      }

      [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : is mac address private : <%d> for network ? <%@>", "__WiFiDeviceRoutableTimerCallback", *(a1 + 5192), v4}];
    }

    objc_autoreleasePoolPop(v2);
    v5 = *(a1 + 3696);
    if (v5)
    {
      v6 = *(a1 + 112);
      v7 = *(a1 + 3704);

      v5(a1, v6, v7);
    }
  }
}

CFMutableArrayRef sub_10005FEB4(void *a1)
{
  result = sub_10005D930(a1);
  v3 = a1[591];
  if (v3)
  {
    v4 = a1[14];
    v5 = a1[592];

    return v3(a1, v4, v5);
  }

  return result;
}

uint64_t sub_10005FF14(uint64_t a1)
{
  sub_10008AD8C(58);
  if (a1)
  {
    for (i = 6; ; --i)
    {
      v3 = *(a1 + 16);
      v4 = Apple80211Set();
      v5 = v4;
      if (v4 <= 15)
      {
        if (v4 != -3905)
        {
          break;
        }
      }

      else if (v4 != 61 && v4 != 16)
      {
        goto LABEL_13;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
    }

    if (!v4)
    {
      return v5;
    }

LABEL_13:
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: IOC %d returned error %d", "WiFiDeviceUpdateOsEligibility", 575, v5}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    sub_100154EA4();
    return 4294963396;
  }

  return v5;
}

void sub_100060010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 112);
  v8 = sub_100059640(a1);

  sub_100066A94(a4, v7, v8, a3, a2);
}

void sub_10006006C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10014C924(a2);

    sub_10014CC2C(a2);
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Cannot reconnect to the dynamic store - info is NULL"];
    }

    objc_autoreleasePoolPop(v2);
  }
}

void sub_100060114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = &sub_10014D62C;
  v4[3] = &unk_10025F5F8;
  v4[4] = a2;
  v4[5] = v2;
  dispatch_async(v3, v4);
}

uint64_t sub_100060188(uint64_t a1, unsigned __int16 a2, _WORD *a3)
{
  valuePtr = a2;
  if (!a1)
  {
    sub_100154F70();
    goto LABEL_26;
  }

  if (!*(a1 + 128))
  {
LABEL_26:
    v5 = 0;
    goto LABEL_28;
  }

  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
  if (!v5)
  {
    sub_100154F10();
    goto LABEL_28;
  }

  Value = CFDictionaryGetValue(*(a1 + 128), @"RANGING_SUPP_CHANNELS");
  if (!Value)
  {
LABEL_28:
    v13 = 0;
    v14 = a3 != 0;
    LOBYTE(v9) = 1;
    goto LABEL_29;
  }

  v7 = Value;
  if (CFArrayGetCount(Value) < 1)
  {
    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
      if (ValueAtIndex)
      {
        v11 = CFDictionaryGetValue(ValueAtIndex, @"RANGING_CHANNEL");
        if (v11)
        {
          v12 = v11;
          if (CFEqual(v11, v5))
          {
            goto LABEL_28;
          }

          if (a3 && !*a3)
          {
            CFNumberGetValue(v12, kCFNumberSInt16Type, a3);
          }

          v9 = 0;
        }
      }

      ++v8;
    }

    while (v8 < CFArrayGetCount(v7));
  }

  v13 = v9 == 0;
  v14 = a3 != 0;
  if (a3 && !v9)
  {
    v15 = *a3;
    if ((v15 - 12) > 0xFFFFFFF4)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: over-writing suggested channel from %d to fallback %d", "WiFiDeviceIsChannelSupportedForRanging", v15, 6}];
      }

      objc_autoreleasePoolPop(v16);
      LOBYTE(v9) = 0;
      *a3 = 6;
    }

    v14 = 1;
    v13 = 1;
  }

LABEL_29:
  v17 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v18 = "supported";
    if (v13)
    {
      v18 = "not supported";
    }

    if (v14)
    {
      v19 = *a3;
    }

    else
    {
      v19 = 0;
    }

    [off_100298C40 WFLog:3 message:{"%s: channel %d is %s for ranging, suggested channel %d", "WiFiDeviceIsChannelSupportedForRanging", valuePtr, v18, v19}];
  }

  objc_autoreleasePoolPop(v17);
  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

void sub_1000603DC(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    if (a1[22])
    {
      v12 = 0xAAAAAAAAAAAAAAAALL;
      *&v4 = 0xAAAAAAAAAAAAAAAALL;
      *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v10 = v4;
      v11 = v4;
      *cf = v4;
      *v9 = v4;
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Beginning command queue flush with error %d", a2}];
      }

      objc_autoreleasePoolPop(v5);
      sub_10010A1A0(a1[22]);
      sub_10010A144(a1[22], 0, 0);
      if (sub_10002EDD4(a1[22], cf, 0x48uLL, a1 + 23))
      {
LABEL_6:
        sub_10010A144(a1[22], sub_100026744, a1);
        goto LABEL_7;
      }

      while (1)
      {
        if (SLODWORD(cf[0]) <= 5)
        {
          if (SLODWORD(cf[0]) > 2)
          {
            if (LODWORD(cf[0]) == 3)
            {
              if (BYTE8(v11))
              {
                a1[492] = 0;
                a1[493] = 0;
              }
            }

            else
            {
              if (LODWORD(cf[0]) == 4)
              {
LABEL_48:
                if (v9[0])
                {
                  (v9[0])(a1, cf[1], a2, v9[1]);
                }

                goto LABEL_68;
              }

              if (BYTE8(v11))
              {
                a1[494] = 0;
                a1[495] = 0;
              }
            }

            v7 = v9[0];
            if (v9[1])
            {
              (v9[1])(a1, cf[1], a2, v10[0]);
            }

            goto LABEL_66;
          }

          if (!LODWORD(cf[0]))
          {
            if (BYTE8(v11))
            {
              a1[501] = 0;
              a1[502] = 0;
            }

LABEL_54:
            v7 = v9[0];
            if (v9[1])
            {
              (v9[1])(a1, cf[1], 0, 0, a2, v10[0]);
            }

LABEL_60:
            if (cf[1])
            {
              CFRelease(cf[1]);
              cf[1] = 0;
            }

LABEL_66:
            if (v7)
            {
              CFRelease(v7);
            }

            goto LABEL_68;
          }

          if (LODWORD(cf[0]) == 1)
          {
            if (BYTE8(v11))
            {
              a1[507] = 0;
              a1[508] = 0;
            }

            v7 = v9[0];
            if (v10[0])
            {
              (v10[0])(a1, cf[1], v9[0], 0, a2, v10[1]);
            }

            if (v9[1])
            {
              CFRelease(v9[1]);
              v9[1] = 0;
            }

            goto LABEL_60;
          }
        }

        else
        {
          if (SLODWORD(cf[0]) > 10)
          {
            if (LODWORD(cf[0]) != 12)
            {
              if (LODWORD(cf[0]) == 14)
              {
                if (BYTE8(v11))
                {
                  a1[595] = 0;
                  a1[596] = 0;
                }

                if (v9[1])
                {
                  (v9[1])(a1, cf[1], a2, v10[0]);
                }

                if (cf[1])
                {
                  CFRelease(cf[1]);
                  cf[1] = 0;
                }

                if (v9[0])
                {
                  CFRelease(v9[0]);
                  v9[0] = 0;
                }
              }

              else if (LODWORD(cf[0]) == 11)
              {
                sub_100151974(a1, cf[1], v9[0], v9[1], v10[0]);
                if (v9[0])
                {
                  CFRelease(v9[0]);
                  v9[0] = 0;
                }

                if (cf[1])
                {
                  CFRelease(cf[1]);
                  cf[1] = 0;
                }
              }

              goto LABEL_68;
            }

            if (BYTE8(v11))
            {
              a1[555] = 0;
              a1[556] = 0;
            }

            v7 = v9[0];
            if (v9[1])
            {
              (v9[1])(a1, cf[1], 0, a2, v10[0]);
            }

            goto LABEL_60;
          }

          switch(LODWORD(cf[0]))
          {
            case 6:
              goto LABEL_48;
            case 9:
              if (BYTE8(v11))
              {
                a1[535] = 0;
                a1[536] = 0;
              }

              goto LABEL_54;
            case 0xA:
              if (BYTE8(v11))
              {
                a1[496] = 0;
                a1[497] = 0;
              }

              if (v9[1])
              {
                (v9[1])(a1, cf[1], a2, v10[0]);
              }

              if (cf[1])
              {
                CFRelease(cf[1]);
                cf[1] = 0;
              }

              if (v9[0])
              {
                CFRelease(v9[0]);
                v9[0] = 0;
              }

              if (v10[1])
              {
                CFRelease(v10[1]);
                v10[1] = 0;
              }

              break;
          }
        }

LABEL_68:
        if (sub_10002EDD4(a1[22], cf, 0x48uLL, a1 + 23))
        {
          goto LABEL_6;
        }
      }
    }

    sub_100154FDC();
  }

  else
  {
    sub_100155048();
  }

LABEL_7:
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Finished command queue flush with error %d", a2}];
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1000607D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3632) = a2;
  *(result + 3640) = a3;
  return result;
}

uint64_t sub_1000607E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3664) = a2;
  *(result + 3672) = a3;
  return result;
}

uint64_t sub_1000607F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4232) = a2;
  *(result + 4240) = a3;
  return result;
}

uint64_t sub_1000607FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4248) = a2;
  *(result + 4256) = a3;
  return result;
}

uint64_t sub_100060808(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4264) = a2;
  *(result + 4272) = a3;
  return result;
}

uint64_t sub_100060814(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4392) = a2;
  *(result + 4400) = a3;
  return result;
}

uint64_t sub_100060820(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4024) = a2;
  *(result + 4032) = a3;
  return result;
}

uint64_t sub_10006082C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3712) = a2;
  *(result + 3720) = a3;
  return result;
}

uint64_t sub_100060838(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3728) = a2;
  *(result + 3736) = a3;
  return result;
}

uint64_t sub_100060844(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3744) = a2;
  *(result + 3752) = a3;
  return result;
}

uint64_t sub_100060850(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3808) = a2;
  *(result + 3816) = a3;
  return result;
}

uint64_t sub_10006085C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3872) = a2;
  *(result + 3880) = a3;
  return result;
}

uint64_t sub_100060868(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3824) = a2;
  *(result + 3832) = a3;
  return result;
}

uint64_t sub_100060874(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3840) = a2;
  *(result + 3848) = a3;
  return result;
}

uint64_t sub_100060880(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3648) = a2;
  *(result + 3656) = a3;
  return result;
}

uint64_t sub_10006088C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3680) = a2;
  *(result + 3688) = a3;
  return result;
}

uint64_t sub_100060898(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3696) = a2;
  *(result + 3704) = a3;
  return result;
}

uint64_t sub_1000608A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3888) = a2;
  *(result + 3896) = a3;
  return result;
}

uint64_t sub_1000608B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3904) = a2;
  *(result + 3912) = a3;
  return result;
}

uint64_t sub_1000608BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3920) = a2;
  *(result + 3928) = a3;
  return result;
}

uint64_t sub_1000608C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4072) = a2;
  *(result + 4080) = a3;
  return result;
}

uint64_t sub_1000608D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4088) = a2;
  *(result + 4096) = a3;
  return result;
}

uint64_t sub_1000608E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3760) = a2;
  *(result + 3768) = a3;
  return result;
}

uint64_t sub_1000608EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3776) = a2;
  *(result + 3784) = a3;
  return result;
}

uint64_t sub_1000608F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4104) = a2;
  *(result + 4112) = a3;
  return result;
}

uint64_t sub_100060904(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4120) = a2;
  *(result + 4128) = a3;
  return result;
}

uint64_t sub_100060910(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4152) = a2;
  *(result + 4160) = a3;
  return result;
}

uint64_t sub_10006091C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4168) = a2;
  *(result + 4176) = a3;
  return result;
}

uint64_t sub_100060928(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4744) = a2;
  *(result + 4752) = a3;
  return result;
}

uint64_t sub_100060934(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4776) = a2;
  *(result + 4784) = a3;
  return result;
}

uint64_t sub_100060940(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4184) = a2;
  *(result + 4192) = a3;
  return result;
}

uint64_t sub_10006094C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4136) = a2;
  *(result + 4144) = a3;
  return result;
}

uint64_t sub_100060958(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4200) = a2;
  *(result + 4208) = a3;
  return result;
}

uint64_t sub_100060964(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4216) = a2;
  *(result + 4224) = a3;
  return result;
}

uint64_t sub_100060970(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4296) = a2;
  *(result + 4304) = a3;
  return result;
}

uint64_t sub_10006097C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4312) = a2;
  *(result + 4320) = a3;
  return result;
}

uint64_t sub_100060988(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4328) = a2;
  *(result + 4336) = a3;
  return result;
}

uint64_t sub_100060994(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4344) = a2;
  *(result + 4352) = a3;
  return result;
}

uint64_t sub_1000609A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4408) = a2;
  *(result + 4416) = a3;
  return result;
}

uint64_t sub_1000609AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4424) = a2;
  *(result + 4432) = a3;
  return result;
}

uint64_t sub_1000609B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4456) = a2;
  *(result + 4464) = a3;
  return result;
}

uint64_t sub_1000609C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4472) = a2;
  *(result + 4480) = a3;
  return result;
}

uint64_t sub_1000609D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4488) = a2;
  *(result + 4496) = a3;
  return result;
}

uint64_t sub_1000609DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3856) = a2;
  *(result + 3864) = a3;
  return result;
}

uint64_t sub_1000609E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4504) = a2;
  *(result + 4512) = a3;
  return result;
}

uint64_t sub_1000609F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4520) = a2;
  *(result + 4528) = a3;
  return result;
}

uint64_t sub_100060A00(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4536) = a2;
  *(result + 4544) = a3;
  return result;
}

uint64_t sub_100060A0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4552) = a2;
  *(result + 4560) = a3;
  return result;
}

uint64_t sub_100060A18(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100007060(a1, a2);

  return sub_10010FB58(v6, a3, a4);
}

uint64_t sub_100060A58(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4568) = a2;
  *(result + 4576) = a3;
  return result;
}

uint64_t sub_100060A64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4584) = a2;
  *(result + 4592) = a3;
  return result;
}

uint64_t sub_100060A70(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4920) = a2;
  *(result + 4928) = a3;
  return result;
}

uint64_t sub_100060A7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4600) = a2;
  *(result + 4608) = a3;
  return result;
}

uint64_t sub_100060A88(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4616) = a2;
  *(result + 4624) = a3;
  return result;
}

uint64_t sub_100060A94(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4632) = a2;
  *(result + 4640) = a3;
  return result;
}

uint64_t sub_100060AA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4648) = a2;
  *(result + 4656) = a3;
  return result;
}

uint64_t sub_100060AAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4968) = a2;
  *(result + 4976) = a3;
  return result;
}

uint64_t sub_100060AB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4664) = a2;
  *(result + 4672) = a3;
  return result;
}

uint64_t sub_100060AC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4680) = a2;
  *(result + 4688) = a3;
  return result;
}

uint64_t sub_100060AD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4696) = a2;
  *(result + 4704) = a3;
  return result;
}

uint64_t sub_100060ADC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4712) = a2;
  *(result + 4720) = a3;
  return result;
}

uint64_t sub_100060AE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4728) = a2;
  *(result + 4736) = a3;
  return result;
}

uint64_t sub_100060AF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4792) = a2;
  *(result + 4800) = a3;
  return result;
}

uint64_t sub_100060B00(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4808) = a2;
  *(result + 4816) = a3;
  return result;
}

uint64_t sub_100060B0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4824) = a2;
  *(result + 4832) = a3;
  return result;
}

uint64_t sub_100060B18(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4856) = a2;
  *(result + 4864) = a3;
  return result;
}

uint64_t sub_100060B24(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4840) = a2;
  *(result + 4848) = a3;
  return result;
}

uint64_t sub_100060B30(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4872) = a2;
  *(result + 4880) = a3;
  return result;
}

uint64_t sub_100060B3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4888) = a2;
  *(result + 4896) = a3;
  return result;
}

uint64_t sub_100060B48(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4904) = a2;
  *(result + 4912) = a3;
  return result;
}

uint64_t sub_100060B54(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4936) = a2;
  *(result + 4944) = a3;
  return result;
}

uint64_t sub_100060B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = *(a1 + 4936);
  if (!v3)
  {
    return 0;
  }

  v3(a1, a2, *(a1 + 4944), a3, &v5);
  return v5;
}

uint64_t sub_100060BA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4952) = a2;
  *(result + 4960) = a3;
  return result;
}

void sub_100060BB8(uint64_t a1, uint64_t a2)
{
  v12 = 72;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0;
  if (!sub_10000E6B0(*(a1 + 176), &v13, &v12, &v11))
  {
    v10 = 0;
    *v8 = 0u;
    v9 = 0u;
    *v6 = 0u;
    *cf = 0u;
    if (v11 != a2 && !sub_10002D0DC(*(a1 + 176), v6, a2))
    {
      if (LODWORD(v6[0]) <= 0xE)
      {
        if (((1 << SLOBYTE(v6[0])) & 0x5228) != 0)
        {
LABEL_6:
          v4 = cf[0];
          if (!cf[0])
          {
            goto LABEL_10;
          }

          v5 = cf;
          goto LABEL_8;
        }

        if (LODWORD(v6[0]) == 1)
        {
          if (cf[1])
          {
            CFRelease(cf[1]);
            cf[1] = 0;
          }

          goto LABEL_6;
        }

        if (LODWORD(v6[0]) == 10)
        {
          if (cf[0])
          {
            CFRelease(cf[0]);
            cf[0] = 0;
          }

          v4 = v8[1];
          if (!v8[1])
          {
            goto LABEL_10;
          }

          v5 = &v8[1];
LABEL_8:
          CFRelease(v4);
LABEL_9:
          *v5 = 0;
LABEL_10:
          if (v6[1])
          {
            CFRelease(v6[1]);
          }

          return;
        }
      }

      if (LODWORD(v6[0]))
      {
        goto LABEL_10;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (!v8[0])
      {
        goto LABEL_10;
      }

      v5 = v8;
      free(v8[0]);
      goto LABEL_9;
    }
  }
}

CFTypeRef sub_100060CF4(uint64_t a1, const void *a2)
{
  cf = 0;
  v3 = sub_100007060(a1, a2);
  if (!v3)
  {
    sub_1001550B4(a2);
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != sub_100006F40())
  {
    return 0;
  }

  v6 = sub_1001110D8(v4, &cf);
  result = cf;
  if (v6 && cf)
  {
    CFRelease(cf);
    return 0;
  }

  return result;
}

void sub_100060D70(uint64_t a1, const void *a2, int a3)
{
  if (a1 && a2)
  {
    v5 = sub_10001CA74(a2);
    v6 = *(a1 + 5136);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 5136) = 0;
    }

    *(a1 + 5136) = CFDataCreateCopy(kCFAllocatorDefault, v5);
    if (v5)
    {
      v7 = *(a1 + 5144);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 5144) = 0;
      }
    }

    if (a3 == 1)
    {
      *(a1 + 5144) = CFDataCreateCopy(kCFAllocatorDefault, v5);
    }
  }

  else
  {
    sub_100155124(a2 == 0);
  }
}

void sub_100060E18(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = *(a1 + 5152);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 5152) = 0;
    }

    *(a1 + 5152) = sub_10000C580(kCFAllocatorDefault, a2);
  }

  else
  {
    sub_1001551AC(a2 == 0);
  }
}

uint64_t sub_100060E98(uint64_t a1, const void *a2)
{
  v12 = *(a1 + 52);
  v4 = sub_100007060(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == sub_100006F40())
    {
      sub_10010F828(v5, &v12);
    }

    else
    {
      for (i = 6; ; --i)
      {
        v8 = *(a1 + 16);
        PowerState = Apple80211GetPowerState();
        if (PowerState <= 15)
        {
          if (PowerState != -3905)
          {
            break;
          }
        }

        else if (PowerState != 61 && PowerState != 16)
        {
          return v12;
        }

        if (!i)
        {
          break;
        }

        usleep(0x7A120u);
      }

      if (!PowerState)
      {
        *(a1 + 52) = v12;
      }
    }
  }

  else
  {
    sub_1001521B0(a2);
  }

  return v12;
}

uint64_t sub_100060F68(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_100007060(a1, a2);
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Setting power to %s on interface %@", "WiFiDeviceSetPower", sub_100058B44(a3), a2}];
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v9 = CFGetTypeID(v7);
    if (v9 == sub_100006F40())
    {
      v10 = sub_1001AC940(v7);
    }

    else if (*(a1 + 52) == a3)
    {
      v10 = 0;
    }

    else
    {
      if (!a3)
      {
        *(a1 + 5240) = 0;
        v11 = *(a1 + 5248);
        if (v11)
        {
          CFRelease(v11);
          *(a1 + 5248) = 0;
        }
      }

      sub_1000603DC(a1, 82);
      for (i = 6; ; --i)
      {
        v13 = *(a1 + 16);
        v14 = Apple80211SetPowerState();
        v10 = v14;
        if (v14 <= 15)
        {
          if (v14 != -3905)
          {
            break;
          }
        }

        else if (v14 != 61 && v14 != 16)
        {
          goto LABEL_23;
        }

        if (!i)
        {
          break;
        }

        usleep(0x7A120u);
      }

      if (!v14)
      {
        v10 = 0;
        *(a1 + 52) = a3;
      }
    }
  }

  else
  {
    sub_1001521B0(a2);
    v10 = 4294963396;
  }

LABEL_23:
  objc_autoreleasePoolPop(v6);
  return v10;
}

uint64_t sub_1000610F8(uint64_t a1, CFTypeRef cf, unsigned int a3, unsigned int a4)
{
  v5 = a3;
  v6 = a4;
  v7 = CFRetain(cf);
  return sub_100026144(a1, 7u, 0, v7, v5 | 0xAAAAAAAA00000000, v6 | 0xAAAAAAAA00000000, 0, 0, 0);
}

uint64_t sub_100061168(uint64_t a1, CFTypeRef cf, unsigned int a3)
{
  v4 = a3;
  v5 = CFRetain(cf);
  return sub_100026144(a1, 0xDu, 0, v5, v4 | 0xAAAAAAAA00000000, 0, 0, 0, 0);
}

uint64_t sub_10006121C(uint64_t a1, BOOL *a2)
{
  if ((*(a1 + 34) & 0x20) == 0)
  {
    v2 = (*(a1 + 36) >> 1) & 1;
    if (!a2)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (a2)
  {
LABEL_5:
    *a2 = (*(a1 + 36) & 2) != 0;
  }

  return v2;
}

uint64_t sub_100061310(uint64_t a1, const void *a2)
{
  v4 = sub_100007060(a1, a2);
  if (!v4)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Unknown interface %@", a2}];
    }

    goto LABEL_5;
  }

  v5 = CFGetTypeID(v4);
  if (v5 == sub_100006F40())
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Set Background Scan is not supported by %@", a2}];
    }

LABEL_5:
    objc_autoreleasePoolPop(v6);
    return 4294963396;
  }

  for (i = 6; ; --i)
  {
    v9 = *(a1 + 16);
    result = Apple80211Set();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  return result;
}

uint64_t sub_10006140C(uint64_t a1, const void *a2, unsigned int a3)
{
  v5 = sub_100007060(a1, a2);
  if (!v5)
  {
    sub_1001521B0(a2);
    return 4294963396;
  }

  v6 = v5;
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    sub_100155234();
    return 4294963396;
  }

  v7 = CFGetTypeID(v6);
  if (v7 == sub_100006F40())
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Set scan backoff report is not supported by %@", a2}];
    }

    objc_autoreleasePoolPop(v8);
    return 4294963396;
  }

  for (i = 6; ; --i)
  {
    v11 = *(a1 + 16);
    v12 = Apple80211Set();
    v9 = v12;
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

  v14 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ifName %@, state 0x%x, error %d", "WiFiDeviceSetScanBackoffReport", a2, a3, v9}];
  }

  objc_autoreleasePoolPop(v14);
  return v9;
}

uint64_t sub_10006155C(uint64_t a1, int a2)
{
  if (a1)
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, *(a1 + 112), kSCEntNetInterfaceActiveDuringSleepRequested);
    if (NetworkInterfaceEntity)
    {
      v5 = NetworkInterfaceEntity;
      v6 = *(a1 + 152);
      if (v6)
      {
        v7 = SCDynamicStoreCopyValue(v6, v5);
        v8 = v7;
        if (!a2 || v7)
        {
          if (a2 || !v7)
          {
            v11 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v12 = "removed";
              if (a2)
              {
                v12 = "set";
              }

              [off_100298C40 WFLog:3 message:{"%s: ActiveDuringSleepRequested is already %s (%@).", "WiFiDeviceRequestAssociatedSleep", v12, v8}];
            }

            objc_autoreleasePoolPop(v11);
            CFRelease(v5);
            if (!v8)
            {
              return 0;
            }

            v10 = 1;
          }

          else
          {
            v10 = SCDynamicStoreRemoveValue(*(a1 + 152), v5);
            CFRelease(v5);
          }

          v5 = v8;
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v10 = SCDynamicStoreSetValue(*(a1 + 152), v5, Mutable);
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }
      }

      else
      {
        sub_10015528C();
        v10 = 0;
      }

      CFRelease(v5);
      if (v10)
      {
        return 0;
      }
    }

    else
    {
      sub_1001552F8();
    }
  }

  return 4294963396;
}

uint64_t sub_1000616F4(uint64_t a1)
{
  for (i = 6; ; --i)
  {
    v3 = *(a1 + 16);
    result = Apple80211Get();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  return result;
}

CFMutableArrayRef sub_100061768(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s beaconScanCache alloc cache failed", "WiFiDeviceCopyScanCache"}];
    }

    objc_autoreleasePoolPop(v5);
    return 0;
  }

  v3 = Mutable;
  sub_1000616F4(a1);
  if (!CFArrayGetCount(v3))
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s - beaconScanCache not available", "WiFiDeviceCopyScanCache"}];
    }

    objc_autoreleasePoolPop(v4);
    CFRelease(v3);
    return 0;
  }

  return v3;
}

void sub_100061858(uint64_t a1, uint64_t a2)
{
  v19 = 72;
  var28[0] = 0xAAAAAAAAAAAAAAAALL;
  number = 0;
  if (!sub_10000E6B0(*(a1 + 176), var28, &v19, &number) && *(var28[0] + 56) == 1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = off_100298C40;
    if (off_100298C40)
    {
      v15 = "__WiFiDeviceCommandAbort";
      v16 = sub_1000262B0(*var28[0]);
      [v5 WFLog:4 message:"%s: Flushing out pending command %@"];
    }

    objc_autoreleasePoolPop(v4);
    switch(*var28[0])
    {
      case 0:
        sub_10002E080(a1, *(a1 + 112), 0, 0, a2);
        return;
      case 1:
        sub_10006795C(a1, *(a1 + 112), 0, a2);
        sub_1000FA238(*(a1 + 144));
        return;
      case 2:
      case 7:
      case 8:
      case 0xD:
      case 0xF:
        goto LABEL_11;
      case 3:
        sub_1001517E8(a1, *(var28[0] + 8), a2, v6, v7, v8, v9, v10, v15, v16, v17, SHIDWORD(v17), number, v19, var28[0], var28[1], var28[2], var28[3], var28[4], var28[5], var28[6]);
        return;
      case 4:
      case 6:
        v11 = *(var28[0] + 16);
        if (!v11)
        {
          goto LABEL_11;
        }

        v12 = *(var28[0] + 8);
        v13 = *(var28[0] + 24);
        break;
      case 5:
        sub_10005BAE0(a1, *(var28[0] + 8), a2);
        return;
      case 9:
        sub_100067544(a1, *(var28[0] + 8), 0, a2);
        return;
      case 0xA:
      case 0xB:
        v11 = *(var28[0] + 24);
        if (!v11)
        {
          goto LABEL_11;
        }

        v12 = *(var28[0] + 8);
        v13 = *(var28[0] + 32);
        break;
      case 0xC:
        sub_10005C904(a1, *(var28[0] + 8), 0, a2);
        return;
      case 0xE:
        v14 = *(var28[0] + 8);
        sub_100151AD4();
        return;
      default:
        return;
    }

    v11(a1, v12, a2, v13);
LABEL_11:
    sub_10002ECA0(a1);
  }
}

uint64_t sub_100061A24(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a1)
  {
    *(a1 + 5264) = a7;

    return sub_100061AB4(a1, a2, a3, a4, a7, a5, a6, 0);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiDeviceAssociateAsync"}];
    }

    objc_autoreleasePoolPop(v9);
    return 4294963396;
  }
}

uint64_t sub_100061AB4(uint64_t a1, const void *a2, const void *a3, const void *a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1)
  {
    *(a1 + 5264) = a5;
    if (sub_10000D970(a3) && !*(a1 + 5224))
    {
      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: WAPI support is disabled. Error connecting to %@ ", "WiFiDeviceAssociateAsyncWithCommand", sub_10000A878(a3)}];
      }

      objc_autoreleasePoolPop(v21);
      return 4294963393;
    }

    else
    {
      v15 = CFRetain(a2);
      v16 = CFRetain(a3);
      if (a4)
      {
        v17 = CFRetain(a4);
      }

      else
      {
        v17 = 0;
      }

      v20 = sub_100026144(a1, 1u, 0, v15, v16, v17, a6, a7, a8);
      v19 = v20;
      if (a3 && v20)
      {
        CFRelease(a3);
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiDeviceAssociateAsyncWithCommand"}];
    }

    objc_autoreleasePoolPop(v18);
    return 4294963396;
  }

  return v19;
}

uint64_t sub_100061C30(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  context = objc_autoreleasePoolPush();
  v9 = sub_10000A878(a3);
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v68 = sub_10001B368(a3);
  v63 = sub_10001A9BC(a3);
  v10 = *(a1 + 5296);
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"(Simulated) Failed to associate with %@: %d", sub_10000A878(a3), v10}];
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_95;
  }

  v12 = *(a1 + 5280);
  if (v12)
  {
    v12(a1, a2, *(a1 + 5288));
  }

  v13 = sub_10009D404(a3);
  if (!v13)
  {
    v10 = 4294963396;
    goto LABEL_95;
  }

  if (sub_10000A154([+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")]))
  {
    v62 = 0;
  }

  else
  {
    Value = CFDictionaryGetValue(v13, @"PRIVATE_MAC_ADDRESS");
    if (Value && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(Value)))
    {
      v62 = CFDictionaryGetValue(Value, @"PRIVATE_MAC_ADDRESS_VALUE");
      v16 = CFDictionaryGetValue(Value, @"PRIVATE_MAC_ADDRESS_TYPE");
      v17 = sub_10000ABFC(v62);
      if (*(a1 + 224))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
        if (v17)
        {
          if (v16 && sub_10000AC54(v16) == 2)
          {
            v19 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Attempting association for network <%@>. Using Private Mac:  %@", "__WiFiDeviceAssociateLowLevel", v9, v62}];
            }

            objc_autoreleasePoolPop(v19);
            v20 = &kCFBooleanTrue;
          }

          else
          {
            v59 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Attempting association for network <%@>. Using Static Private Mac:  %@", "__WiFiDeviceAssociateLowLevel", v9, v62}];
            }

            objc_autoreleasePoolPop(v59);
            v20 = &kCFBooleanFalse;
          }

          CFDictionarySetValue(MutableCopy, @"PRIVATE_MAC_ADDRESS_VALID", *v20);
        }

        else
        {
          v60 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Attempting association for network <%@>. Not using Private Mac", "__WiFiDeviceAssociateLowLevel", v9}];
          }

          objc_autoreleasePoolPop(v60);
          CFDictionarySetValue(MutableCopy, @"PRIVATE_MAC_ADDRESS_VALID", kCFBooleanFalse);
          v62 = *(a1 + 232);
        }

        CFDictionarySetValue(v13, @"PRIVATE_MAC_ADDRESS", MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_24;
      }

      v56 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Global Feature is disabled for this type of network <%@>", "__WiFiDeviceAssociateLowLevel", v9}];
      }

      objc_autoreleasePoolPop(v56);
      if (v17)
      {
        v57 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"WFMacRandomisation : Randomisation Global Feature is disabled. Private Mac is is being used for the network"];
        }

        objc_autoreleasePoolPop(v57);
        v58 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
        CFDictionarySetValue(v58, @"PRIVATE_MAC_ADDRESS_VALID", kCFBooleanFalse);
        CFDictionarySetValue(v58, @"PRIVATE_MAC_ADDRESS", *(a1 + 232));
        CFDictionarySetValue(v13, @"PRIVATE_MAC_ADDRESS", v58);
        if (v58)
        {
          CFRelease(v58);
        }
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Using HW mac address. Network : %@", "__WiFiDeviceAssociateLowLevel", sub_10000A878(a3)}];
      }

      objc_autoreleasePoolPop(v21);
    }

    v62 = *(a1 + 232);
  }

LABEL_24:
  if (a3)
  {
    v22 = *(a1 + 5168);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 5168) = 0;
    }

    v23 = *(a1 + 5176);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 5176) = 0;
    }

    v24 = *(a1 + 5184);
    if (v24)
    {
      CFRelease(v24);
      *(a1 + 5184) = 0;
    }

    v25 = sub_10000A878(a3);
    *(a1 + 5168) = CFStringCreateCopy(kCFAllocatorDefault, v25);
    v26 = sub_10000A540(a3, @"BSSID");
    if (v26)
    {
      v27 = CFStringGetTypeID();
      if (v27 == CFGetTypeID(v26))
      {
        *(a1 + 5176) = CFStringCreateCopy(kCFAllocatorDefault, v26);
      }
    }

    v28 = sub_10000A540(a3, @"PRIVATE_MAC_ADDRESS");
    if (v28 && (v29 = CFDictionaryGetTypeID(), v29 == CFGetTypeID(v28)) && (v30 = CFDictionaryGetValue(v28, @"PRIVATE_MAC_ADDRESS_VALUE"), sub_10000ABFC(v30)))
    {
      *(a1 + 5192) = 1;
      if (v30)
      {
        v31 = CFDataGetTypeID();
        if (v31 == CFGetTypeID(v30))
        {
          *(a1 + 5184) = CFDataCreateCopy(kCFAllocatorDefault, v30);
        }
      }
    }

    else
    {
      *(a1 + 5192) = 0;
    }

    v32 = sub_10000A540(a3, @"MacAddressRandomisationTagMigratedNetwork");
    if (v32 && v32 == kCFBooleanTrue)
    {
      *(a1 + 5193) = 1;
      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Network <%@> we are associating to is a migrated network", "__WiFiDeviceRecordLastAttemptedMacInfo", sub_10000A878(a3)}];
      }

      objc_autoreleasePoolPop(v33);
    }

    else
    {
      *(a1 + 5193) = 0;
    }

    sub_100147640(a3, a1 + 5196);
  }

  if (!sub_10000A154([+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")]))
  {
    if (*(a1 + 64))
    {
      v34 = sub_10000A878(a3);
      v35 = sub_100177E90(v62, v34);
      v72[3] = v35;
      CFRetain(a1);
      v36 = *(a1 + 64);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006A7E0;
      block[3] = &unk_10025EFD8;
      block[4] = &v71;
      block[5] = a1;
      dispatch_async(v36, block);
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceAssociateLowLevel"}];
      }

      objc_autoreleasePoolPop(v37);
    }
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    v38 = &kCFBooleanTrue;
  }

  else
  {
    v38 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(v13, @"FT_ENABLED", *v38);
  if ((*(a1 + 34) & 0x10) != 0)
  {
    v39 = &kCFBooleanTrue;
  }

  else
  {
    v39 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(v13, @"80211W_ENABLED", *v39);
  if ((*(a1 + 35) & 8) != 0)
  {
    v40 = &kCFBooleanTrue;
  }

  else
  {
    v40 = &kCFBooleanFalse;
  }

  CFDictionarySetValue(v13, @"FAST_ENTERPRISE_NETWORK_SUPPORTED_DEVICE", *v40);
  if (sub_10000A540(a3, @"WiFiInstantHotspotJoining") == kCFBooleanTrue)
  {
    v41 = kCFBooleanTrue;
  }

  else
  {
    v41 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v13, @"INSTANT_HOTSPOT_ASSOC", v41);
  if (sub_10000A540(a3, @"WiFiAutoInstantHotspotJoining") == kCFBooleanTrue)
  {
    v42 = kCFBooleanTrue;
  }

  else
  {
    v42 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v13, @"AUTO_INSTANT_HOTSPOT_ASSOC", v42);
  valuePtr = sub_100034EEC(a3, @"TransitionDisabledFlags");
  if (byte_100298C79 && (!*(a1 + 5264) || [v63 isAllowedInLockdownMode]))
  {
    v43 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_TRANS_DISABLED_TKIP because lockdown mode is enabled while joining secure network (%@)", "__WiFiDeviceAssociateLowLevel", v63}];
    }

    objc_autoreleasePoolPop(v43);
    valuePtr |= 0x10uLL;
  }

  v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &valuePtr);
  if (v44)
  {
    CFDictionarySetValue(v13, @"TRANS_DISABLED_FLAGS_ASSOC", v44);
    CFRelease(v44);
  }

  sub_100060D70(a1, a3, 0);
  v45 = sub_100007060(a1, a2);
  v46 = v45;
  if (v45)
  {
    v47 = CFGetTypeID(v45);
    if (v47 == sub_100006F40())
    {
      v48 = sub_1001ACA3C(v46, a2, v13, a4, 1, a5, a6);
    }

    else
    {
      v49 = 0;
      v10 = 3766617154;
      *(a1 + 4040) = a5;
      *(a1 + 4048) = a6;
      while (1)
      {
        v50 = [v68 disable6EMode] == 2 ? kCFBooleanFalse : kCFBooleanTrue;
        CFDictionarySetValue(v13, @"ASSOC_6G_ENABLE", v50);
        v51 = *(a1 + 16);
        v48 = Apple80211AssociateAsync();
        if (v48 != -528350142)
        {
          break;
        }

        usleep(0xC8u);
        if (v49++ >= 5)
        {
          goto LABEL_88;
        }
      }
    }

    v10 = v48;
LABEL_88:
    v53 = *(a1 + 5160);
    if (v53)
    {
      CFRelease(v53);
      *(a1 + 5160) = 0;
    }

    *(a1 + 5160) = sub_10000C580(kCFAllocatorDefault, a3);
    if (v10)
    {
      v54 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Failed to associate with %@: %d", sub_10000A878(a3), v10}];
      }

      objc_autoreleasePoolPop(v54);
      sub_10004DA78(a1, v10, a3, *(a1 + 5200));
    }
  }

  else
  {
    v61 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Unknown interface %@", a2}];
    }

    objc_autoreleasePoolPop(v61);
    v10 = 0;
  }

  CFRelease(v13);
LABEL_95:
  _Block_object_dispose(&v71, 8);
  objc_autoreleasePoolPop(context);
  return v10;
}

void sub_100062664(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 5128) = a2;
    *(a1 + 5240) = 0;
    v3 = *(a1 + 5248);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 5248) = 0;
    }
  }
}

uint64_t sub_1000626A4(uint64_t a1, CFTypeRef cf, unsigned int a3, int a4)
{
  if (a1)
  {
    *(a1 + 5128) = a4;
    *(a1 + 5240) = 0;
    v8 = *(a1 + 5248);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 5248) = 0;
    }
  }

  if ((a4 - 1000) <= 0xB && ((1 << (a4 + 24)) & 0x80B) != 0)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: user-initiated disconnect or Trigger Disconnect (reason=%@)", "WiFiDeviceDisassociate", sub_100058CA4(a4)}];
    }

    objc_autoreleasePoolPop(v9);
    v11 = *(a1 + 5128);

    return sub_1000627E8(a1, cf, v10, v11, "WiFiDeviceDisassociate", 11263);
  }

  else
  {
    v13 = CFRetain(cf);
    return sub_100026144(a1, 2u, 0, v13, a3 | 0xAAAAAAAA00000000, 0, 0, 0, 0);
  }
}

uint64_t sub_1000627E8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v11 = objc_autoreleasePoolPush();
  v12 = sub_100007060(a1, a2);
  *(a1 + 5240) = 0;
  v13 = *(a1 + 5248);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 5248) = 0;
  }

  if (!v12)
  {
    sub_1001521B0(a2);
LABEL_49:
    v15 = 4294963396;
    goto LABEL_55;
  }

  v14 = CFGetTypeID(v12);
  if (v14 == sub_100006F40())
  {
    v15 = sub_1001ACBA8(v12);
    goto LABEL_55;
  }

  v16 = 9;
  if (a4 > 1004)
  {
    v17 = a4 + 16;
    if ((a4 - 1008) > 0x1B)
    {
      goto LABEL_20;
    }

    if (((1 << v17) & 0x8000006) != 0)
    {
      goto LABEL_26;
    }

    if (((1 << v17) & 0x21) == 0)
    {
      if (a4 == 1012)
      {
        v16 = 3;
        goto LABEL_26;
      }

LABEL_20:
      if ((a4 - 1006) < 2)
      {
        v16 = 7;
        goto LABEL_26;
      }

      if (a4 == 1005)
      {
        v16 = 1;
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_16:
    v16 = 8;
    goto LABEL_26;
  }

  if (a4 > 1001)
  {
    if (a4 == 1002)
    {
      v16 = 5;
    }

    else if (a4 != 1003)
    {
      v16 = 6;
    }
  }

  else if (a4 && a4 != 1000)
  {
    if (a4 != 1001)
    {
LABEL_25:
      v16 = 10;
      goto LABEL_26;
    }

    goto LABEL_16;
  }

LABEL_26:
  valuePtr = v16;
  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v19 = "";
    if (a5)
    {
      v19 = a5;
    }

    [off_100298C40 WFLog:3 message:{"asked to Disassociate by <%s:%d> reason =<%d:%d:%d> \n", v19, a6, v16, a4, *(a1 + 5128)}];
  }

  objc_autoreleasePoolPop(v18);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    goto LABEL_49;
  }

  v21 = Mutable;
  v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v22)
  {
    if (a4 && !*(a1 + 5128))
    {
      *(a1 + 5128) = a4;
    }

    CFDictionaryAddValue(v21, @"DISASSOC_REASON", v22);
    if (*(a1 + 5128) != 1000)
    {
      v24 = 0;
LABEL_39:
      for (i = 6; ; --i)
      {
        v26 = *(a1 + 16);
        v27 = Apple80211DisassociateExt();
        v15 = v27;
        if (v27 != -3905 && v27 != 61 && v27 != 16)
        {
          break;
        }

        if (!i)
        {
          break;
        }

        usleep(0x7A120u);
      }

      goto LABEL_51;
    }

    v30 = 1;
    v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v30);
    if (v23)
    {
      v24 = v23;
      CFDictionaryAddValue(v21, @"APPLE80211KEY_DISASSOC_FLUSH_SCAN_CACHE", v23);
      goto LABEL_39;
    }
  }

  v24 = 0;
  v15 = 4294963396;
LABEL_51:
  CFRelease(v21);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v24)
  {
    CFRelease(v24);
  }

LABEL_55:
  objc_autoreleasePoolPop(v11);
  return v15;
}

uint64_t sub_100062ADC(uint64_t a1, CFTypeRef cf, unsigned int a3)
{
  v5 = a3;
  v6 = CFRetain(cf);
  v7 = sub_100026144(a1, 0xFu, 0, v6, v5 | 0xAAAAAAAA00000000, 0, 0, 0, 0);
  v8 = v7;
  if (cf && v7)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t sub_100062B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s, mode: %d", "_WiFiDeviceSet6GDisableMode", a3}];
  }

  objc_autoreleasePoolPop(v6);
  for (i = 6; ; --i)
  {
    v8 = *(a1 + 16);
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

    usleep(0x7A120u);
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

uint64_t sub_100062C38(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 5120);
    if (!result)
    {
      for (i = 6; ; --i)
      {
        v4 = *(a1 + 16);
        v5 = Apple80211CopyValue();
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
          goto LABEL_14;
        }

        if (!i)
        {
          break;
        }

        usleep(0x7A120u);
      }

      if (!v5)
      {
        result = 0;
        *(a1 + 5120) = 0;
        return result;
      }

LABEL_14:
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Error copying hardware version %d", "WiFiDeviceGetHardwareVersion", v6}];
      }

      objc_autoreleasePoolPop(v8);
      return 0;
    }
  }

  else
  {
    sub_100155364();
    return 0;
  }

  return result;
}

void sub_100062D38(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"gasCache: Purging GAS cache"];
  }

  objc_autoreleasePoolPop(v2);
  if (CFArrayGetCount(*(a1 + 5080)))
  {
    CFArrayRemoveAllValues(*(a1 + 5080));
  }

  v3 = *(a1 + 5056);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 5056) = 0;
  }

  v4 = *(a1 + 5064);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 5064) = 0;
  }
}

double sub_100062DBC(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 3576);
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_100062DD0(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 3576) = a2;
    return 1;
  }

  return result;
}

uint64_t sub_100062DE0(uint64_t result)
{
  if (result)
  {
    return *(result + 3596);
  }

  return result;
}

uint64_t sub_100062DEC(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 3596) = a2;
    return 1;
  }

  return result;
}

uint64_t sub_100062DFC(uint64_t result)
{
  if (result)
  {
    return *(result + 3592);
  }

  return result;
}

uint64_t sub_100062E08(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 3592) = a2;
    return 1;
  }

  return result;
}

uint64_t sub_100062E18(uint64_t result, CFTypeRef cf, CFTypeRef a3)
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 3600);
    if (v6)
    {
      CFRelease(v6);
      *(v5 + 3600) = 0;
    }

    v7 = *(v5 + 3608);
    if (v7)
    {
      CFRelease(v7);
      *(v5 + 3608) = 0;
    }

    if (cf)
    {
      *(v5 + 3600) = CFRetain(cf);
    }

    if (a3)
    {
      *(v5 + 3608) = CFRetain(a3);
    }

    return 1;
  }

  return result;
}

uint64_t sub_100062E94(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  *a4 = 0;
  v6 = sub_10010E344(a1, kCFAllocatorDefault, a3, *(a1 + 64));
  v7 = v6;
  if (v6)
  {
    v8 = sub_10010ED7C(v6);
    *a4 = v8;
    CFDictionaryAddValue(*(a1 + 5112), v8, v7);
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Created Virtual Interface %@ with role %@", "WiFiDeviceVirtualInterfaceCreate", *a4, sub_100024FC0(v7)}];
    }

    objc_autoreleasePoolPop(v9);
    if (*(a1 + 64))
    {
      v10 = *a4;
      if (*a4)
      {
        v10 = CFRetain(v10);
      }

      v18[3] = v10;
      CFRetain(a1);
      v11 = *(a1 + 64);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006309C;
      block[3] = &unk_10025EFD8;
      block[4] = &v17;
      block[5] = a1;
      dispatch_async(v11, block);
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceVirtualInterfaceCreate"}];
      }

      objc_autoreleasePoolPop(v12);
    }

    CFRelease(v7);
    v13 = 0;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Error creating virtual interface instance"];
    }

    objc_autoreleasePoolPop(v15);
    v13 = 4294963394;
  }

  _Block_object_dispose(&v17, 8);
  return v13;
}

void sub_100063084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006309C(uint64_t a1)
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

uint64_t sub_100063150(uint64_t a1, const void *a2)
{
  v4 = sub_100007060(a1, a2);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (!v4)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Unknown interface %@", a2}];
    }

    goto LABEL_31;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 != sub_100006F40())
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%@ is not a virtual interface", a2}];
    }

LABEL_31:
    objc_autoreleasePoolPop(v20);
    goto LABEL_32;
  }

  if (!sub_10000EEE0(v5))
  {
LABEL_32:
    v10 = 4294963396;
    goto LABEL_22;
  }

  v7 = 7;
  while (1)
  {
    v8 = *(a1 + 16);
    v9 = Apple80211Set();
    v10 = v9;
    if (v9 <= 15)
    {
      if (v9 != -3905)
      {
        break;
      }
    }

    else if (v9 != 61 && v9 != 16)
    {
      goto LABEL_22;
    }

    if (!--v7)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (!v9)
  {
    v12 = *(a1 + 5112);
    v13 = sub_10010ED7C(v5);
    CFDictionaryRemoveValue(v12, v13);
    v14 = objc_autoreleasePoolPush();
    v15 = off_100298C40;
    if (off_100298C40)
    {
      v16 = sub_10010ED7C(v5);
      [v15 WFLog:3 message:{"WiFiDeviceDeleteWiFiDirectInterface: Deleting Virtual Interface %@ with role %@", v16, sub_100024FC0(v5)}];
    }

    objc_autoreleasePoolPop(v14);
    if (*(a1 + 64))
    {
      if (a2)
      {
        v19 = CFRetain(a2);
      }

      else
      {
        v19 = 0;
      }

      v23[3] = v19;
      CFRetain(a1);
      sub_1001553D0((a1 + 64), &v21, a1, &v22);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceVirtualInterfaceDelete"}];
      }

      objc_autoreleasePoolPop(v17);
    }

    v10 = 0;
  }

LABEL_22:
  _Block_object_dispose(&v22, 8);
  return v10;
}

void sub_100063398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000633B4(uint64_t a1)
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
        v3(v2, v4, v2[550], 0);
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

uint64_t sub_100063468(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 4360) = a3;
  *(result + 4368) = a4;
  return result;
}

uint64_t sub_100063474(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100007060(a1, a2);

  return sub_10010FB48(v6, a3, a4);
}

uint64_t sub_1000634B4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100007060(a1, a2);

  return sub_10010FB50(v6, a3, a4);
}

uint64_t sub_1000634F8(uint64_t a1, const void *a2, unsigned int *a3)
{
  v6 = sub_100007060(a1, a2);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == sub_100006F40())
    {

      return sub_10010F574(v7, a3);
    }

    else
    {
      for (i = 6; ; --i)
      {
        v11 = *(a1 + 16);
        v12 = Apple80211Get();
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

      return 0;
    }
  }

  else
  {
    sub_1001521B0(a2);
    return 0;
  }
}

uint64_t sub_1000635E4(uint64_t a1, CFTypeRef cf, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = CFRetain(cf);
  v14 = CFRetain(a3);
  v15 = sub_100026144(a1, 9u, a4, v13, v14, a5, a6, 0, a7);
  v16 = v15;
  if (a3 && v15)
  {
    CFRelease(a3);
  }

  return v16;
}

uint64_t sub_10006368C(uint64_t a1, CFTypeRef cf, const void *a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  v12 = a7;
  v13 = CFRetain(cf);
  v14 = CFRetain(a3);
  v15 = sub_100026144(a1, 0xCu, 0, v13, v14, a4, a5, v12 | 0xAAAAAAAA00000000, a6);
  v16 = v15;
  if (a3 && v15)
  {
    CFRelease(a3);
  }

  return v16;
}

CFMutableDictionaryRef sub_100063748(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    for (i = 6; ; --i)
    {
      v4 = *(a1 + 16);
      v5 = Apple80211Get();
      if (v5 <= 15)
      {
        if (v5 != -3905)
        {
          break;
        }
      }

      else if (v5 != 61 && v5 != 16)
      {
        goto LABEL_15;
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

LABEL_15:
    sub_100155430(Mutable, v5);
    return 0;
  }

  else
  {
    sub_1001554B4();
  }

  return Mutable;
}

uint64_t sub_100063814(uint64_t a1)
{
  for (i = 6; ; --i)
  {
    v3 = *(a1 + 16);
    v4 = Apple80211Set();
    v5 = v4;
    if (v4 <= 15)
    {
      if (v4 != -3905)
      {
        break;
      }
    }

    else if (v4 != 61 && v4 != 16)
    {
      goto LABEL_13;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (!v4)
  {
    return v5;
  }

LABEL_13:
  sub_100155520(v4);
  return v5;
}

void sub_1000638AC(uint64_t a1)
{
  for (i = 6; ; --i)
  {
    v3 = *(a1 + 16);
    v4 = Apple80211Set();
    v5 = v4;
    if (v4 <= 15)
    {
      if (v4 != -3905)
      {
        break;
      }
    }

    else if (v4 != 61 && v4 != 16)
    {
      goto LABEL_12;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (!v4)
  {
    return;
  }

LABEL_12:
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to set leaky ap SSID stats: err %d", "WiFiDeviceSetLeakyAPInfo", v5}];
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_100063998(uint64_t a1)
{
  v9 = 0;
  if (a1)
  {
    for (i = 6; ; --i)
    {
      v3 = *(a1 + 16);
      v4 = Apple80211CopyValue();
      v5 = v4;
      if (v4 != -3905 && v4 != 61 && v4 != 16)
      {
        break;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
    }

    result = v9;
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v9 == 0;
    }

    if (v8)
    {
      sub_100155590(&v9, v5, &v10);
      return v10;
    }
  }

  else
  {
    sub_100155614();
    return 0;
  }

  return result;
}

uint64_t sub_100063A40(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 5208);
  }

  sub_100155680();
  return 0;
}

uint64_t sub_100063A6C(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 5216);
  }

  sub_1001556EC();
  return 0;
}

void sub_100063A98(uint64_t a1, CFDataRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 5136);
      if (v4)
      {
        *a2 = CFDataCreateCopy(kCFAllocatorDefault, v4);
      }

      v5 = *(a1 + 5144);
      if (v5)
      {
        a2[1] = CFDataCreateCopy(kCFAllocatorDefault, v5);
      }
    }

    else
    {
      sub_100155758();
    }
  }

  else
  {
    sub_1001557C4();
  }
}

_WORD *sub_100063B0C(uint64_t a1)
{
  if (!a1)
  {
    sub_10015589C();
    return 0;
  }

  v1 = *(a1 + 5160);
  if (!v1)
  {
    sub_100155830();
    return 0;
  }

  if (*(a1 + 5152))
  {
    v1 = *(a1 + 5152);
  }

  return sub_10000C580(kCFAllocatorDefault, v1);
}

void sub_100063B6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {

      sub_100060E18(a1, a2);
    }

    else
    {
      sub_100155908();
    }
  }

  else
  {
    sub_100155974();
  }
}

void sub_100063BAC(uint64_t a1, int a2)
{
  *(a1 + 5224) = a2;
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v4 = "ENABLED";
    if (!a2)
    {
      v4 = "DISABLED";
    }

    [off_100298C40 WFLog:3 message:{"%s: Set WAPI %s", "WiFiDeviceSetWapiEnabled", v4}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100063C3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 224) != a2)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Toggled. Old = %d and New = %d", "WiFiDeviceConfigureMacRadomisationFeature", *(a1 + 224), a2}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 224) = a2;
  }
}

void sub_100063CC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 225) != a2)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : for Secure Networks Toggled. Old = %d and New = %d", "WiFiDeviceConfigureMacRadomisationFeatureSecureNetworks", *(a1 + 225), a2}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 225) = a2;
  }
}

void sub_100063D54(uint64_t a1, CFDictionaryRef theDict)
{
  valuePtr = 0;
  if (!a1)
  {
    sub_100155BF8();
    return;
  }

  if (!theDict)
  {
    sub_100155B8C();
    return;
  }

  v4 = *(a1 + 112);
  Value = CFDictionaryGetValue(theDict, @"WiFiTestCommandInterfaceName");
  if (CFStringCompare(Value, v4, 0))
  {
    sub_1001559E0(v4, Value);
    return;
  }

  v6 = CFDictionaryGetValue(theDict, @"WiFiTestCommandType");
  if (!v6)
  {
    sub_100155B20();
    return;
  }

  CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
  CFDictionaryRemoveValue(theDict, @"WiFiTestCommandType");
  if (valuePtr == 201)
  {
    v70 = 0;
    v7 = CFDictionaryGetValue(theDict, @"enable");
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberIntType, &v70);
      *(a1 + 208) = v70;
    }

    v8 = CFDictionaryGetValue(theDict, @"doNotDownsampleAnalytics");
    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberIntType, &v70);
      v9 = v70 != 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 4872);
    if (v10)
    {
      v10(a1, *(a1 + 112), *(a1 + 4880), *(a1 + 208), v9);
    }

    v11 = *(a1 + 216);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 216) = 0;
    }

    if (!*(a1 + 208))
    {
      v15 = 0;
      v13 = 0;
      goto LABEL_88;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      sub_100155AC0();
      goto LABEL_96;
    }

    v13 = Mutable;
    v14 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v14)
    {
      sub_100155A60();
      goto LABEL_96;
    }

    v15 = v14;
    v16 = CFDictionaryGetValue(theDict, @"rssi");
    if (v16)
    {
      CFDictionarySetValue(v13, @"RSSI", v16);
    }

    v17 = CFDictionaryGetValue(theDict, @"hasPerCoreRssi");
    if (v17)
    {
      v69 = 0;
      CFNumberGetValue(v17, kCFNumberIntType, &v69);
      if (v69)
      {
        v18 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (v18)
        {
          v19 = v18;
          v20 = CFDictionaryGetValue(theDict, @"rssicore0");
          if (v20)
          {
            v21 = v20;
          }

          else
          {
            v21 = &off_1002810E0;
          }

          CFArrayAppendValue(v19, v21);
          v22 = CFDictionaryGetValue(theDict, @"rssicore1");
          if (v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = &off_1002810E0;
          }

          CFArrayAppendValue(v19, v23);
          CFDictionarySetValue(v13, @"PER_CORE_RSSI", v19);
          CFRelease(v19);
        }
      }
    }

    v24 = CFDictionaryGetValue(theDict, @"snr");
    if (v24)
    {
      CFDictionarySetValue(v13, @"SNR", v24);
    }

    v25 = CFDictionaryGetValue(theDict, @"cca");
    if (v25)
    {
      CFDictionarySetValue(v13, @"CCA", v25);
    }

    v26 = CFDictionaryGetValue(theDict, @"ccaSelfTotal");
    if (v26)
    {
      CFDictionarySetValue(v15, @"CCA_SELF_TOTAL", v26);
    }

    v27 = CFDictionaryGetValue(theDict, @"ccaOtherWake");
    if (v27)
    {
      CFDictionarySetValue(v15, @"CCA_OTHER_WAKE", v27);
    }

    v28 = CFDictionaryGetValue(theDict, @"ccaIntfWake");
    if (v28)
    {
      CFDictionarySetValue(v15, @"CCA_INTERFERENCE_WAKE", v28);
    }

    if (CFDictionaryGetCount(v15))
    {
      CFDictionarySetValue(v13, @"CCA_STATS", v15);
    }

    v29 = CFDictionaryGetValue(theDict, @"noise");
    if (v29)
    {
      CFDictionarySetValue(v13, @"NOISE", v29);
    }

    v30 = CFDictionaryGetValue(theDict, @"txFail");
    if (v30)
    {
      CFDictionarySetValue(v13, @"TXFAIL", v30);
    }

    v31 = CFDictionaryGetValue(theDict, @"txFrames");
    if (v31)
    {
      CFDictionarySetValue(v13, @"TXFRAMES", v31);
    }

    v32 = CFDictionaryGetValue(theDict, @"txRetries");
    if (v32)
    {
      CFDictionarySetValue(v13, @"TXRETRANS", v32);
    }

    v33 = CFDictionaryGetValue(theDict, @"rxFrames");
    if (v33)
    {
      CFDictionarySetValue(v13, @"RXFRAMES", v33);
    }

    v34 = CFDictionaryGetValue(theDict, @"rxRetries");
    if (v34)
    {
      CFDictionarySetValue(v13, @"RXRETRYFRMS", v34);
    }

    v35 = CFDictionaryGetValue(theDict, @"bcnRecv");
    if (v35)
    {
      CFDictionarySetValue(v13, @"RXBEACONFRMS", v35);
    }

    v36 = CFDictionaryGetValue(theDict, @"bcnSched");
    if (v36)
    {
      CFDictionarySetValue(v13, @"RXBEACONSCHED", v36);
    }

    v37 = CFDictionaryGetValue(theDict, @"fwFrames");
    if (v37)
    {
      CFDictionarySetValue(v13, @"TXFWFRAMES", v37);
    }

    v38 = CFDictionaryGetValue(theDict, @"fwFail");
    if (v38)
    {
      CFDictionarySetValue(v13, @"TXFWFAIL", v38);
    }

    v39 = CFDictionaryGetValue(theDict, @"fwRetries");
    if (v39)
    {
      CFDictionarySetValue(v13, @"TXFWRETRANS", v39);
    }

    v40 = CFDictionaryGetValue(theDict, @"curBssRssi");
    if (!v40)
    {
LABEL_85:
      v62 = CFDictionaryGetValue(theDict, @"recommendationFlags");
      if (v62)
      {
        CFDictionarySetValue(v13, @"recommendationFlags", v62);
        v63 = 0;
        goto LABEL_89;
      }

LABEL_88:
      v63 = 1;
LABEL_89:
      *(a1 + 216) = v13;
      v64 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Simulated LQM Dict: %@", "__WiFiDeviceSetSimulateLinkTestParams", *(a1 + 216)}];
      }

      objc_autoreleasePoolPop(v64);
      if ((v63 & 1) == 0)
      {
        v65 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        sub_100014F88(a1, *(a1 + 112), v65);
        if (v65)
        {
          CFRelease(v65);
        }
      }

      if (!v15)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }

    v41 = v40;
    v42 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v42)
    {
LABEL_95:
      CFRelease(v15);
LABEL_96:
      v66 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (*(a1 + 208))
        {
          v67 = "ENABLED";
        }

        else
        {
          v67 = "DISABLED";
        }

        [off_100298C40 WFLog:4 message:{"Simulate Link Conditions is %s", v67}];
      }

      objc_autoreleasePoolPop(v66);
      return;
    }

    v43 = v42;
    CFDictionaryAddValue(v42, @"RSSI", v41);
    v44 = CFDictionaryGetValue(theDict, @"roamReason");
    if (v44)
    {
      CFDictionarySetValue(v43, @"ROAM_SCAN_REASON", v44);
    }

    v45 = CFDictionaryGetValue(theDict, @"roamScanAge");
    if (v45)
    {
      CFDictionarySetValue(v43, @"ROAM_SCAN_AGE", v45);
    }

    v46 = CFDictionaryGetValue(theDict, @"roamStatus");
    if (v46)
    {
      CFDictionarySetValue(v43, @"ROAM_LAST_STATUS", v46);
    }

    v47 = CFDictionaryGetValue(theDict, @"roamScanCount");
    if (v47)
    {
      CFDictionarySetValue(v43, @"ROAM_SCAN_COUNT", v47);
    }

    v48 = CFDictionaryGetValue(theDict, @"roamCand1Rssi");
    if (!v48)
    {
      goto LABEL_84;
    }

    v49 = v48;
    v50 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!v50)
    {
LABEL_110:
      CFRelease(v43);
      goto LABEL_95;
    }

    v51 = v50;
    v52 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v52)
    {
      v53 = v52;
      CFDictionaryAddValue(v52, @"RSSI", v49);
      CFArrayAppendValue(v51, v53);
      CFRelease(v53);
      v54 = CFDictionaryGetValue(theDict, @"roamCand2Rssi");
      if (!v54)
      {
LABEL_80:
        v58 = CFDictionaryGetValue(theDict, @"roamCand3Rssi");
        if (!v58)
        {
LABEL_83:
          CFDictionaryAddValue(v43, @"ROAM_CACHE", v51);
          CFRelease(v51);
LABEL_84:
          CFDictionaryAddValue(v13, @"ROAM_STATE", v43);
          CFRelease(v43);
          goto LABEL_85;
        }

        v59 = v58;
        v60 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v60)
        {
          v61 = v60;
          CFDictionaryAddValue(v60, @"RSSI", v59);
          CFArrayAppendValue(v51, v61);
          CFRelease(v61);
          goto LABEL_83;
        }

        goto LABEL_109;
      }

      v55 = v54;
      v56 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v56)
      {
        v57 = v56;
        CFDictionaryAddValue(v56, @"RSSI", v55);
        CFArrayAppendValue(v51, v57);
        CFRelease(v57);
        goto LABEL_80;
      }
    }

LABEL_109:
    CFRelease(v51);
    goto LABEL_110;
  }
}

void sub_100064634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Reporting Symptoms Event:failureCode:%llu", "WiFiDeviceReportSymptomsEvent", a3}];
    }

    objc_autoreleasePoolPop(v6);
    v7 = *(a1 + 4472);
    if (v7)
    {
      v8 = *(a1 + 4480);

      v7(a1, a2, v8, a3);
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: deviceRef is NULL!", "WiFiDeviceReportSymptomsEvent"}];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100064730(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      for (i = 6; ; --i)
      {
        v4 = *(a1 + 16);
        v5 = Apple80211Set();
        v6 = v5;
        if (v5 != -3905 && v5 != 61 && v5 != 16)
        {
          break;
        }

        if (!i)
        {
          break;
        }

        usleep(0x7A120u);
      }

      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s SetRoam status:%u\n", "WiFiDeviceSetRoam", v6}];
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: bssidInfo is NULL!", "WiFiDeviceSetRoam", v9}];
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: deviceRef is NULL!", "WiFiDeviceSetRoam", v9}];
    }
  }

  objc_autoreleasePoolPop(v8);
}

id sub_100064860(uint64_t a1, void *a2)
{
  [a2 setRecoveryType:@"APPLE80211_IOC_RESET_CHIP"];
  [a2 setRecoveryReason:*(a1 + 32)];
  v4 = *(a1 + 40);

  return [a2 setApple80211Return:v4];
}

uint64_t sub_1000648C0(uint64_t a1)
{
  result = *(a1 + 5264);
  if (result >= 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100155C64();
    }

    return 0x7FFFFFFFLL;
  }

  return result;
}

void sub_10006490C(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      v5 = "enabled";
      if (!a2)
      {
        v5 = "disabled";
      }

      [off_100298C40 WFLog:3 message:{"%s: %s power save mode", "WiFiDeviceAllowPowerSaveMode", v5}];
    }

    objc_autoreleasePoolPop(v4);
    for (i = 6; ; --i)
    {
      v7 = *(a1 + 16);
      v8 = Apple80211Set();
      if (v8 != -3905 && v8 != 61 && v8 != 16)
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
      [off_100298C40 WFLog:3 message:{"%s: deviceRef is NULL!", "WiFiDeviceAllowPowerSaveMode"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_100064A78(uint64_t a1)
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

    goto LABEL_13;
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

LABEL_13:
    qword_100298530 = 0;
    goto LABEL_14;
  }

  CFRetain(Value);
  v6 = 1;
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_10:
  v7 = CFDictionaryGetValue(v4, kSCDynamicStorePropNetPrimaryInterface);
  qword_100298530 = v7;
  if (v7)
  {
    CFRetain(v7);
    v6 = 1;
  }

LABEL_14:
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

uint64_t sub_100064CA8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100007060(a1, a2);

  return sub_100111128(v6, a3, a4);
}

void sub_100064D18(uint64_t a1)
{
  valuePtr = 0;
  v2 = objc_autoreleasePoolPush();
  v3 = off_100298C40;
  if (a1)
  {
    if (off_100298C40)
    {
      if (_os_feature_enabled_impl())
      {
        v4 = "enabled";
      }

      else
      {
        v4 = "disabled";
      }

      [v3 WFLog:3 message:{"%s: LBT is %s", "WiFiDeviceApplyFeatureFlags", v4}];
    }

    objc_autoreleasePoolPop(v2);
    if (_os_feature_enabled_impl())
    {
      v5 = 1;
      valuePtr = 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = off_100298C40;
    if (off_100298C40)
    {
      if (_os_feature_enabled_impl())
      {
        v8 = "enabled";
      }

      else
      {
        v8 = "disabled";
      }

      [v7 WFLog:3 message:{"%s: WiFi LQM CrashTracer is %s", "WiFiDeviceApplyFeatureFlags", v8}];
    }

    objc_autoreleasePoolPop(v6);
    if (_os_feature_enabled_impl())
    {
      v5 |= 2uLL;
      valuePtr = v5;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = off_100298C40;
    if (off_100298C40)
    {
      if (_os_feature_enabled_impl())
      {
        v11 = "enabled";
      }

      else
      {
        v11 = "disabled";
      }

      [v10 WFLog:3 message:{"%s: WiFi DNSSymptoms is %s", "WiFiDeviceApplyFeatureFlags", v11}];
    }

    objc_autoreleasePoolPop(v9);
    if (_os_feature_enabled_impl())
    {
      v5 |= 0x200uLL;
      valuePtr = v5;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (off_100298C40)
    {
      if (_os_feature_enabled_impl())
      {
        v14 = "enabled";
      }

      else
      {
        v14 = "disabled";
      }

      [v13 WFLog:3 message:{"%s: WiFi ViVoDatapathTuning is %s", "WiFiDeviceApplyFeatureFlags", v14}];
    }

    objc_autoreleasePoolPop(v12);
    if (_os_feature_enabled_impl())
    {
      v5 |= 0x100uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x1000uLL;
      valuePtr = v5;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = off_100298C40;
    if (off_100298C40)
    {
      if (_os_feature_enabled_impl())
      {
        v17 = "enabled";
      }

      else
      {
        v17 = "disabled";
      }

      [v16 WFLog:3 message:{"%s: WiFi One Core Tx is %s", "WiFiDeviceApplyFeatureFlags", v17}];
    }

    objc_autoreleasePoolPop(v15);
    if (_os_feature_enabled_impl())
    {
      v5 |= 0x800uLL;
      valuePtr = v5;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = off_100298C40;
    if (off_100298C40)
    {
      if (_os_feature_enabled_impl())
      {
        v20 = "enabled";
      }

      else
      {
        v20 = "disabled";
      }

      [v19 WFLog:3 message:{"%s: WiFi Sensing is %s", "WiFiDeviceApplyFeatureFlags", v20}];
    }

    objc_autoreleasePoolPop(v18);
    if (_os_feature_enabled_impl())
    {
      v5 |= 0x4000uLL;
      valuePtr = v5;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = off_100298C40;
    if (off_100298C40)
    {
      if (_os_feature_enabled_impl())
      {
        v23 = "enabled";
      }

      else
      {
        v23 = "disabled";
      }

      [v22 WFLog:3 message:{"%s: WiFi QoS MSCS is %s", "WiFiDeviceApplyFeatureFlags", v23}];
    }

    objc_autoreleasePoolPop(v21);
    if (_os_feature_enabled_impl())
    {
      v5 |= 0x2000uLL;
      valuePtr = v5;
    }

    v24 = objc_autoreleasePoolPush();
    v25 = off_100298C40;
    if (off_100298C40)
    {
      if (_os_feature_enabled_impl())
      {
        v26 = "enabled";
      }

      else
      {
        v26 = "disabled";
      }

      [v25 WFLog:3 message:{"%s: WiFi FCC VLP is %s", "WiFiDeviceApplyFeatureFlags", v26}];
    }

    objc_autoreleasePoolPop(v24);
    if (_os_feature_enabled_impl())
    {
      v5 |= 0x8000000uLL;
      valuePtr = v5;
    }

    v27 = objc_autoreleasePoolPush();
    v28 = off_100298C40;
    if (off_100298C40)
    {
      if (_os_feature_enabled_impl())
      {
        v29 = "enabled";
      }

      else
      {
        v29 = "disabled";
      }

      [v28 WFLog:3 message:{"%s: P2P Optimization for Ultra Low Latency Realtime Infra is %s", "WiFiDeviceApplyFeatureFlags", v29}];
    }

    objc_autoreleasePoolPop(v27);
    if (_os_feature_enabled_impl())
    {
      v5 |= 0x8000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x10000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x80000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x20000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x40000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x100000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x200000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x400000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x800000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x1000000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x2000000uLL;
      valuePtr = v5;
    }

    if (_os_feature_enabled_impl())
    {
      v5 |= 0x4000000uLL;
      valuePtr = v5;
    }

    if ((_os_feature_enabled_impl() & 1) != 0 || *(a1 + 5308) == 1)
    {
      valuePtr = v5 | 0x10000000;
    }

    v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v30)
    {
      v31 = v30;
      sub_100006F94(a1, *(a1 + 112), 469, 0, v30);
      v32 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: ifName %@ FeatureFlags 0x%llx error %d\n", "WiFiDeviceApplyFeatureFlags", *(a1 + 112), valuePtr, 4294963396}];
      }

      objc_autoreleasePoolPop(v32);
      CFRelease(v31);
    }

    else
    {
      sub_100155CAC();
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null device", "WiFiDeviceApplyFeatureFlags"}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t sub_1000653DC(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100007060(a1, a2);

  return sub_100111130(v6, a3, a4);
}

uint64_t sub_10006541C(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 5200);
  }

  else
  {
    return 4294967274;
  }
}

void sub_100065430(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (*(a1 + 120))
    {
      if (cf)
      {
        v4 = CFGetTypeID(cf);
        if (v4 == CFDictionaryGetTypeID())
        {
          v5 = *(a1 + 120);

          CFDictionarySetValue(v5, @"ApInfoParams", cf);
        }
      }
    }

    else
    {
      sub_100155D0C();
    }
  }

  else
  {
    sub_100155D78();
  }
}

const void *sub_1000654C0(uint64_t a1)
{
  if (!a1)
  {
    sub_100155E50();
    return 0;
  }

  v1 = *(a1 + 120);
  if (!v1)
  {
    sub_100155DE4();
    return 0;
  }

  return CFDictionaryGetValue(v1, @"ApInfoParams");
}

void sub_10006554C(uint64_t a1, const void *a2)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionaryAddValue(Mutable, @"CHIP_RESET_TRIGGER", a2);
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Trigger CoreCapture at driver:%@", "WiFiDeviceTriggerCoreCapture", a2}];
      }

      objc_autoreleasePoolPop(v6);
      sub_10005D1BC(a1, v5);

      CFRelease(v5);
    }

    else
    {
      sub_100155EBC();
    }
  }

  else
  {
    sub_100155F28();
  }
}

uint64_t sub_10006563C(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *(a1 + 112);
  }

  else
  {
    v2 = 0;
  }

  v3 = &kCFBooleanTrue;
  if (a2 != 1)
  {
    v3 = &kCFBooleanFalse;
  }

  return sub_100006F94(a1, v2, 507, 0, *v3);
}

void sub_100065678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7[0] = @"Auto";
    v7[1] = @"User";
    v7[2] = @"Roam";
    if (a3 > 2 || *(a1 + 5264) > 2u)
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: association type changed from %d to %d", "WiFiDeviceOverrideAssociationType", *(a1 + 5264), a3}];
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v6 = v7[*(a1 + 5264)];
        [off_100298C40 WFLog:3 message:{"%s: association type changed from %@ to %@", "WiFiDeviceOverrideAssociationType", v6, v7[a3]}];
      }
    }

    objc_autoreleasePoolPop(v5);
    *(a1 + 5264) = a3;
  }
}

void sub_1000657B4(uint64_t a1)
{
  if (a1)
  {
    CFArrayRemoveAllValues(*(a1 + 5320));
  }
}

uint64_t sub_1000657C4(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 5312) = a2;
  }

  return result;
}

uint64_t sub_1000657D0(uint64_t result)
{
  if (result)
  {
    return *(result + 5312);
  }

  return result;
}

uint64_t sub_1000657DC(uint64_t result)
{
  if (result)
  {
    return *(result + 5316);
  }

  return result;
}

uint64_t sub_1000657E8(uint64_t result)
{
  if (result)
  {
    return *(result + 5320);
  }

  return result;
}

uint64_t sub_10006580C(uint64_t result, char a2, char a3)
{
  *(result + 58) = a2;
  *(result + 59) = a3;
  return result;
}

uint64_t sub_100065818(uint64_t a1, const void *a2, const void *a3)
{
  v5 = sub_100006F94(a1, a2, 488, 0, a3);
  if (a3)
  {
    v6 = CFGetTypeID(a3);
    if (v6 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a3, @"IO80211InterfaceCallStatus");
      if (Value)
      {
        CFDictionarySetValue(*(a1 + 120), @"facetimeCallInProgress", Value);
      }
    }
  }

  return v5;
}

uint64_t sub_1000658A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4376) = a2;
  *(result + 4384) = a3;
  return result;
}

uint64_t sub_1000658B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    sub_100156070();
    return 0;
  }

  if (!a2)
  {
    sub_100156004();
    return 0;
  }

  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Setting TD imminent bit to roam manager %d \n", a3}];
  }

  objc_autoreleasePoolPop(v5);
  for (i = 6; ; --i)
  {
    v7 = *(a1 + 16);
    v8 = Apple80211Set();
    v9 = v8;
    if (v8 <= 15)
    {
      if (v8 != -3905)
      {
        break;
      }
    }

    else if (v8 != 61 && v8 != 16)
    {
      goto LABEL_16;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (!v8)
  {
    return v9;
  }

LABEL_16:
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: IOC %d returned error %d", "WiFiDeviceSetTDImminent", 565, v9}];
  }

  objc_autoreleasePoolPop(v11);
  return v9;
}

void sub_1000659F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 64) + 3620);
    -[NSDate timeIntervalSinceDate:](+[NSDate now](NSDate, "now"), "timeIntervalSinceDate:", [a2 date]);
    v6 = v4 - (v5 * 1000.0);
    if ((v6 - 501) <= 0xFFFFFFFFFFFFFC16)
    {
      v7 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [a2 date];
        -[NSDate timeIntervalSinceDate:](+[NSDate now](NSDate, "now"), "timeIntervalSinceDate:", [a2 date]);
        v10 = *(*(a1 + 64) + 3620);
        *buf = 136447490;
        v33 = "void __WiFiDeviceConditionallyUpdateStoreWithIPSignatures(WiFiDeviceRef, NSString *, NSString *, NSData *, NSData *)_block_invoke";
        v34 = 1024;
        v35 = 2424;
        v36 = 2112;
        *v37 = v8;
        *&v37[8] = 2048;
        *v38 = (v9 * 1000.0);
        *&v38[8] = 1024;
        v39 = v10;
        v40 = 2048;
        v41 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Updating mostRecentJoin(%@, %lu ms ago) with dhcpLatencyMilliSecs:%d - difference is larger than expected (|%ld| > 500) are we updating the proper record?", buf, 0x36u);
      }
    }

    [a2 setDhcpLatencyMs:*(*(a1 + 64) + 3620)];
    if (*(*(a1 + 64) + 3624) && [a2 networkAuthFlags] && *(*(a1 + 64) + 3624) != objc_msgSend(a2, "networkAuthFlags"))
    {
      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [WAClient WANetworkAuthFlagsLabel:*(*(a1 + 64) + 3624)];
        v13 = +[WAClient WANetworkAuthFlagsLabel:](WAClient, "WANetworkAuthFlagsLabel:", [a2 networkAuthFlags]);
        *buf = 136446978;
        v33 = "void __WiFiDeviceConditionallyUpdateStoreWithIPSignatures(WiFiDeviceRef, NSString *, NSString *, NSData *, NSData *)_block_invoke";
        v34 = 1024;
        v35 = 2429;
        v36 = 2112;
        *v37 = v12;
        *&v37[8] = 2112;
        *v38 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updating mostRecentJoin security type from %@ to %@", buf, 0x26u);
      }

      [a2 setNetworkAuthFlags:*(*(a1 + 64) + 3624)];
    }

    [a2 setDhcpLeaseMins:*(*(a1 + 64) + 3628)];
    [a2 setDhcpSuccess:1];
    [a2 setIpv4Addr:*(*(a1 + 64) + 3568)];
    v31.s_addr = 0;
    sub_100065E64(*(*(a1 + 64) + 3608), &v31);
    [a2 setIpv4routerAddr:v31.s_addr];
    v14 = *(*(a1 + 64) + 3600);
    if (v14)
    {
      v14 = [NSString stringWithString:?];
    }

    [a2 setRouterMAC:v14];
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [a2 ipv4Addr];
      v17 = [a2 ipv4routerAddr];
      v18 = [a2 routerMAC];
      *buf = 136447234;
      v33 = "void __WiFiDeviceConditionallyUpdateStoreWithIPSignatures(WiFiDeviceRef, NSString *, NSString *, NSData *, NSData *)_block_invoke";
      v34 = 1024;
      v35 = 2445;
      v36 = 1024;
      *v37 = v16;
      *&v37[4] = 1024;
      *&v37[6] = v17;
      *v38 = 2112;
      *&v38[2] = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updating mostRecentJoin with ipv4Addr:%d ipv4routerAddr:%d, routerMac:%@", buf, 0x28u);
    }

    v19 = *(*(a1 + 64) + 5384);
    if (v19)
    {

      *(*(a1 + 64) + 5384) = 0;
    }

    v20 = [*(a1 + 32) copy];
    v21 = *(a1 + 64);
    *(v21 + 5384) = v20;
    v22 = *(v21 + 5392);
    if (v22)
    {

      *(*(a1 + 64) + 5392) = 0;
    }

    v23 = [*(a1 + 40) copy];
    v24 = *(a1 + 64);
    *(v24 + 5392) = v23;
    v25 = *(v24 + 5400);
    if (v25)
    {

      *(*(a1 + 64) + 5400) = 0;
    }

    v26 = *(*(*(a1 + 48) + 8) + 40);
    v27 = *(a1 + 64);
    *(v27 + 5400) = v26;
    v28 = *(v27 + 5408);
    if (v28)
    {

      *(*(a1 + 64) + 5408) = 0;
    }

    *(*(a1 + 64) + 5408) = *(*(*(a1 + 56) + 8) + 40);
  }

  else
  {
    sub_1001560DC();
  }

  v29 = *(*(*(a1 + 48) + 8) + 40);
  if (v29)
  {

    *(*(*(a1 + 48) + 8) + 40) = 0;
  }

  v30 = *(*(*(a1 + 56) + 8) + 40);
  if (v30)
  {

    *(*(*(a1 + 56) + 8) + 40) = 0;
  }
}

void sub_100065E64(const __CFString *a1, in_addr *a2)
{
  memset(buffer, 170, sizeof(buffer));
  a2->s_addr = 0;
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    if (CFStringGetCString(a1, buffer, 16, 0x600u))
    {
      if (inet_aton(buffer, a2) == 1)
      {
        return;
      }

      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Error converting IPv4 address %@ to network type", "__WiFiDeviceConvertStrToIPv4Addr", a1}];
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Error converting IPv4 address %@ to ASCII", "__WiFiDeviceConvertStrToIPv4Addr", a1}];
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Not a valid CFString", "__WiFiDeviceConvertStrToIPv4Addr"}];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100065FF8(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = _SCNetworkInterfaceCreateWithBSDName();
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  IsQoSMarkingProfileInstalled = _SCNetworkInterfaceIsQoSMarkingProfileInstalled();
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"FASTLANE Profile installed: %d\n", IsQoSMarkingProfileInstalled}];
  }

  objc_autoreleasePoolPop(v6);
  CFRelease(v4);
  if (IsQoSMarkingProfileInstalled)
  {
    v7 = &kCFBooleanTrue;
  }

  else
  {
LABEL_6:
    v7 = &kCFBooleanFalse;
  }

  v8 = *v7;
  sub_100006F94(a1, *(a1 + 112), 480, 0, *v7);
  if (v8)
  {

    CFRelease(v8);
  }
}

void sub_1000660EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Enter: %s:%d\n", "__WiFiDeviceRelease", 2521}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 5112);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 5112) = 0;
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 176) = 0;
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 200) = 0;
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 144) = 0;
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    IOObjectRelease(v7);
    *(a1 + 104) = 0;
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 112) = 0;
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    IONotificationPortDestroy(v10);
    *(a1 + 96) = 0;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    IOObjectRelease(v11);
    *(a1 + 24) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 152) = 0;
  }

  v13 = *(a1 + 5024);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 5024) = 0;
  }

  v14 = *(a1 + 5080);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 5080) = 0;
  }

  v15 = *(a1 + 4984);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 4984) = 0;
  }

  v16 = *(a1 + 4992);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 4992) = 0;
  }

  v17 = *(a1 + 5120);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 5120) = 0;
  }

  v18 = *(a1 + 216);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 216) = 0;
  }

  v19 = *(a1 + 5136);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 5136) = 0;
  }

  v20 = *(a1 + 5144);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 5144) = 0;
  }

  v21 = *(a1 + 5168);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 5168) = 0;
  }

  v22 = *(a1 + 5176);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 5176) = 0;
  }

  v23 = *(a1 + 232);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 232) = 0;
  }

  v24 = *(a1 + 5320);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 5320) = 0;
  }

  v25 = *(a1 + 160);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 160) = 0;
  }

  v26 = *(a1 + 168);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 168) = 0;
  }

  v27 = *(a1 + 5152);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 5152) = 0;
  }

  v28 = *(a1 + 5160);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 5160) = 0;
  }

  v29 = *(a1 + 5248);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 5248) = 0;
  }

  v30 = *(a1 + 5208);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 5208) = 0;
  }

  v31 = *(a1 + 5216);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 5216) = 0;
  }

  v32 = *(a1 + 3608);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 3608) = 0;
  }

  v33 = *(a1 + 3600);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 3600) = 0;
  }

  v34 = *(a1 + 5344);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 5344) = 0;
  }

  v35 = *(a1 + 5384);
  if (v35)
  {

    *(a1 + 5384) = 0;
  }

  v36 = *(a1 + 5392);
  if (v36)
  {

    *(a1 + 5392) = 0;
  }

  v37 = *(a1 + 5400);
  if (v37)
  {

    *(a1 + 5400) = 0;
  }

  v38 = *(a1 + 5408);
  if (v38)
  {

    *(a1 + 5408) = 0;
  }

  v39 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Exit : %s:%d\n", "__WiFiDeviceRelease", 2594}];
  }

  objc_autoreleasePoolPop(v39);
}

void sub_1000663D8(uint64_t a1, CFTypeRef cf, char a3)
{
  v6 = *(a1 + 5008);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 5008) = 0;
  }

  *(a1 + 5016) = 0;
  if (cf)
  {
    *(a1 + 5008) = CFRetain(cf);
    *(a1 + 5016) = a3;
  }
}

void sub_100066434(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 64))
  {
    if (*(v1 + 5008))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v5 = Mutable;
        CFDictionarySetValue(Mutable, @"CompletedUsingBeaconCache", kCFBooleanTrue);
        sub_10002E080(v1, *(v1 + 112), *(v1 + 5008), v5, 0);
        CFRelease(v5);
      }

      else
      {
        sub_10002E080(v1, *(v1 + 112), *(v1 + 5008), 0, 0);
      }
    }

    v3 = *(a1 + 32);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  CFRelease(v3);
}

void sub_100066510(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 64))
  {
    if (*(v1 + 5008))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        sub_10015618C(Mutable, v1, (v1 + 5008));
      }

      else
      {
        sub_100156200(v1, (v1 + 5008));
      }
    }

    v3 = *(a1 + 32);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  CFRelease(v3);
}

void sub_1000665B4(const __CFArray *a1, double a2)
{
  Count = CFArrayGetCount(a1);
  Current = CFAbsoluteTimeGetCurrent();
  if (Count)
  {
    v6 = Current;
    if (Current != 0.0)
    {
      v7 = 0;
      v8 = Count & ~(Count >> 63);
      while (v8 != v7)
      {
        v9 = v7;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        if (ValueAtIndex)
        {
          v11 = sub_10010DB50(ValueAtIndex);
          v7 = v9 + 1;
          if (v6 - v11 > a2)
          {
            continue;
          }
        }

        if (!v9)
        {
          return;
        }

        goto LABEL_8;
      }

      v9 = v8;
      if (!v8)
      {
        return;
      }

LABEL_8:
      v12.location = 0;
      v12.length = v9;

      CFArrayReplaceValues(a1, v12, 0, 0);
    }
  }
}

void sub_100066680(uint64_t a1, CFDictionaryRef theDict, __CFArray *a3)
{
  valuePtr = 0;
  v22 = 0;
  if (a3 && theDict && *(a1 + 4984))
  {
    Value = CFDictionaryGetValue(theDict, @"SCAN_CHANNELS");
    if (Value)
    {
      v6 = Value;
      if (CFArrayGetCount(Value) >= 1 && CFArrayGetCount(v6) >= 1)
      {
        v7 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
          v9 = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL");
          CFNumberGetValue(v9, kCFNumberCFIndexType, &valuePtr);
          v10 = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL_FLAGS");
          CFNumberGetValue(v10, kCFNumberSInt32Type, &v22);
          if (valuePtr <= 14)
          {
            v11 = 8;
          }

          else
          {
            v11 = 16;
          }

          if ((v22 & 0x2018) != 0)
          {
            v11 = v22 & 0x2018;
          }

          v22 = v11;
          v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v22);
          keys = @"CHANNEL";
          v27 = @"CHANNEL_FLAGS";
          values = v9;
          v25 = v12;
          v13 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFRelease(v12);
          CFArrayAppendValue(a3, v13);
          CFRelease(v13);
          ++v7;
        }

        while (v7 < CFArrayGetCount(v6));
      }
    }

    if (!CFArrayGetCount(a3))
    {
      Count = CFArrayGetCount(*(a1 + 4984));
      if (!Count)
      {
        sub_10001A6E4(a1, *(a1 + 112), *(a1 + 4984));
        Count = CFArrayGetCount(*(a1 + 4984));
      }

      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v16 = CFArrayGetValueAtIndex(*(a1 + 4984), i);
          v17 = CFDictionaryGetValue(v16, @"SUP_CHANNEL");
          CFNumberGetValue(v17, kCFNumberCFIndexType, &valuePtr);
          v18 = CFDictionaryGetValue(v16, @"SUP_CHANNEL_FLAGS");
          CFNumberGetValue(v18, kCFNumberSInt32Type, &v22);
          if (valuePtr <= 14)
          {
            v19 = 8;
          }

          else
          {
            v19 = 16;
          }

          if ((v22 & 0x2018) != 0)
          {
            v19 = v22 & 0x2018;
          }

          v22 = v19;
          v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v22);
          keys = @"CHANNEL";
          v27 = @"CHANNEL_FLAGS";
          values = v17;
          v25 = v20;
          v21 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFRelease(v20);
          CFArrayAppendValue(a3, v21);
          CFRelease(v21);
        }
      }
    }
  }
}

void sub_10006698C(const __CFDictionary *a1, __CFArray *a2)
{
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, @"SCAN_SSID_LIST");
    if (Value && (v5 = Value, CFArrayGetCount(Value) >= 1))
    {
      if (CFArrayGetCount(v5) >= 1)
      {
        v6 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
          if (ValueAtIndex)
          {
            v8 = CFDictionaryGetValue(ValueAtIndex, @"SSID_STR");
            if (v8)
            {
              CFArrayAppendValue(a2, v8);
            }
          }

          ++v6;
        }

        while (v6 < CFArrayGetCount(v5));
      }
    }

    else
    {
      v9 = CFDictionaryGetValue(a1, @"SSID_STR");
      if (v9)
      {
        CFArrayAppendValue(a2, v9);
      }
    }

    if (!CFArrayGetCount(a2))
    {

      CFArrayAppendValue(a2, &stru_1002680F8);
    }
  }
}

void sub_100066A94(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 4056);
  v34 = *(a1 + 4064);
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v37 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v10);
  if (a3 && !a5)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v13 = *(a1 + 5264) ? "Manually" : "Auto";
      v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        *buf = 136446210;
        v37 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v12);
    a5 = 0;
    goto LABEL_41;
  }

  *(a1 + 5240) = 0;
  v16 = *(a1 + 5248);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 5248) = 0;
  }

  v17 = objc_autoreleasePoolPush();
  v33 = v9;
  if (a3)
  {
    v18 = sub_10000A540(a3, @"JOIN_EXTENDED_STATUS");
    v32 = a4;
    if (v18)
    {
      v19 = [v18 intValue];
    }

    else
    {
      v19 = 4294963393;
    }

    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v26 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        *buf = 136446210;
        v37 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v24);
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v29 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        *buf = 136446210;
        v37 = v29;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v27);
    a4 = v32;
  }

  else
  {
    if (off_100298C40)
    {
      v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v21 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        *buf = 136446210;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v17);
    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      LODWORD(v19) = -3902;
      v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v23 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      *buf = 136446210;
      v37 = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }

    LODWORD(v19) = -3902;
  }

LABEL_33:
  objc_autoreleasePoolPop(v17);
  if ((v19 + 3901) < 0xFFFFFFFE && (a5 & 0xFFFFFFFE) == -3906)
  {
    a5 = v19;
  }

  else
  {
    a5 = a5;
  }

  v9 = v33;
  if (a5)
  {
    sub_10004DA78(a1, a5, a3, *(a1 + 5200));
    v31 = 0;
    goto LABEL_42;
  }

LABEL_41:
  v31 = 1;
LABEL_42:
  *(a1 + 4056) = 0;
  *(a1 + 4064) = 0;
  if (v9)
  {
    v9(a1, a2, a3, a4, a5, v34);
  }

  sub_100060D70(a1, a3, v31);
  sub_10002ECA0(a1);
}

void sub_1000671E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 496;
  v7 = a1[496];
  v8 = a1[497];
  v9 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: error %d bringing AWDL up", "__WiFiDeviceProcessAwdlStartedEvent", a3}];
    }

    objc_autoreleasePoolPop(v9);
    v10 = a1[498];
    if (v10)
    {
      CFRelease(v10);
      a1[498] = 0;
    }

    v11 = a1[499];
    if (v11)
    {
      CFRelease(v11);
      a1[499] = 0;
    }

    a1[500] = 0;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: successfully started AWDL", "__WiFiDeviceProcessAwdlStartedEvent"}];
    }

    objc_autoreleasePoolPop(v9);
  }

  *v6 = 0;
  v6[1] = 0;
  if (v7)
  {
    v7(a1, a2, a3, v8);
  }

  sub_10002ECA0(a1);
}

void sub_1000672F4(const __CFArray *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v5 = Count;
    if (Count >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
          if (Value)
          {
            v10 = Value;
            if (CFArrayGetCount(a1) >= 1)
            {
              v11 = 0;
              while (1)
              {
                v12 = CFArrayGetValueAtIndex(a1, v11);
                if (v12)
                {
                  v13 = v12;
                  v14 = sub_10000A540(v12, @"BSSID");
                  if (CFEqual(v10, v14))
                  {
                    break;
                  }
                }

                if (++v11 >= CFArrayGetCount(a1))
                {
                  goto LABEL_13;
                }
              }

              sub_1000A127C(v13, v8);
            }
          }
        }

LABEL_13:
        ;
      }
    }
  }

  else
  {
    sub_100156218();
  }
}

void sub_1000673F8(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 5064);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 5064) = 0;
  }

  if (cf)
  {
    *(a1 + 5064) = CFRetain(cf);
  }
}

void sub_10006743C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8])
  {
    if (v1[633])
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v4 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"CompletedUsingCache", kCFBooleanTrue);
      }

      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: completing command with cached GAS response", "__WiFiDeviceGasCacheCallback"}];
      }

      objc_autoreleasePoolPop(v5);
      sub_1000676A0(v1, v1[14], v1[633], v4, 0);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    v6 = *(a1 + 32);
  }

  else
  {
    v6 = *(a1 + 32);
  }

  CFRelease(v6);
}

void sub_100067544(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Completed Apple80211GasRequest on %@ (%d)", a2, a4}];
  }

  objc_autoreleasePoolPop(v8);
  if (!a3)
  {
    goto LABEL_9;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFArrayGetTypeID())
  {
    goto LABEL_9;
  }

  if (!a4 && a1[632] && !a1[633] && CFArrayGetCount(a3))
  {
    sub_100067714(a1, a3);
  }

  v10 = a1[632];
  if (v10)
  {
    Value = CFDictionaryGetValue(v10, @"GAS_NETWORKS");
    v12 = Value;
    if (Value)
    {
      sub_1000672F4(Value, a3);
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  sub_1000676A0(a1, a2, v12, 0, a4);
}

void sub_10006765C(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 5056);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 5056) = 0;
  }

  if (cf)
  {
    *(a1 + 5056) = CFRetain(cf);
  }
}

void sub_1000676A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[535];
  v7 = a1[536];
  *(a1 + 535) = 0u;
  if (v6)
  {
    v6(a1, a2, a3, a4, a5, v7);
  }

  v8 = a1[632];
  if (v8)
  {
    CFRelease(v8);
    a1[632] = 0;
  }

  v9 = a1[633];
  if (v9)
  {
    CFRelease(v9);
    a1[633] = 0;
  }

  sub_10002ECA0(a1);
}

void sub_100067714(uint64_t a1, CFArrayRef theArray)
{
  if (*(a1 + 5088))
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      valuePtr = -21846;
      v21 = -21846;
      if (Count < 1)
      {
        goto LABEL_16;
      }

      v6 = 0;
      v7 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
        if (ValueAtIndex)
        {
          v9 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, @"ANQP_STATUS");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
            if (valuePtr)
            {
              v7 = 0;
            }

            v11 = CFDictionaryGetValue(v9, @"CHANNEL");
            if (v11)
            {
              CFNumberGetValue(v11, kCFNumberSInt16Type, &v21);
              v12 = CFDictionaryGetValue(v9, @"BSSID");
              if (v12)
              {
                v13 = v12;
                v14 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"GAS response from %@ ch %3d status %d", v13, v21, valuePtr}];
                }

                objc_autoreleasePoolPop(v14);
              }
            }
          }
        }

        ++v6;
      }

      while (v5 != v6);
      if (v7)
      {
LABEL_16:
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Adding GAS cache entry", "__WiFiDeviceUpdateGasCache"}];
        }

        objc_autoreleasePoolPop(v15);
        if (*(a1 + 5080))
        {
          v16 = *(a1 + 5056);
          if (v16)
          {
            v17 = sub_1001AC000();
            if (v17)
            {
              sub_100156270(v17, v16);
            }
          }
        }

        sub_1000665B4(*(a1 + 5080), 3600.0);
        v18 = *(a1 + 5096);
        v19 = dispatch_time(0, 3600000000000);
        dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: One or more GAS results status is not OK.", "__WiFiDeviceUpdateGasCache"}];
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }
}

void sub_10006795C(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 4040);
  v10 = *(a1 + 4048);
  *(a1 + 4040) = 0u;
  if (!a3)
  {
LABEL_4:
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = CFGetTypeID(a3);
  if (v11 == CFDictionaryGetTypeID())
  {
    a3 = sub_10000AD2C(kCFAllocatorDefault, a3);
    goto LABEL_4;
  }

  a3 = 0;
  if (v9)
  {
LABEL_5:
    v9(a1, a2, a3, 0, a4, v10);
  }

LABEL_6:
  if (a3)
  {
    CFRelease(a3);
  }

  objc_autoreleasePoolPop(v8);
}

void sub_100067A3C(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  valuePtr = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  if (!theDict)
  {
    sub_100156408();
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"LINK_CHANGED_IS_LINKDOWN");
  v7 = CFDictionaryGetValue(theDict, @"RSSI");
  if (!Value)
  {
    sub_10015639C();
    return;
  }

  v8 = v7;
  if (!v7)
  {
    sub_100156330();
    return;
  }

  CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
  CFNumberGetValue(v8, kCFNumberSInt32Type, &v68);
  if (valuePtr)
  {
    *(a1 + 5272) = 0;
    v11 = CFDictionaryGetValue(theDict, @"LINKDOWN_IS_INVOL");
    v12 = CFDictionaryGetValue(theDict, @"LINKDOWN_REASON_CODE");
    v13 = 0;
    if (v11)
    {
      v14 = v12;
      if (v12)
      {
        CFNumberGetValue(v11, kCFNumberSInt8Type, &v67);
        CFNumberGetValue(v14, kCFNumberIntType, &v66);
        if (v67)
        {
          v15 = kCFAllocatorDefault;
        }

        else
        {
          v15 = kCFAllocatorDefault;
          if (*(a1 + 5128))
          {
            if ((v66 & 0xFFFFFFF7) == 0)
            {
              v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (a1 + 5128));
              CFDictionarySetValue(theDict, @"LINKDOWN_REASON_CODE", v16);
              if (v16)
              {
                CFRelease(v16);
              }
            }
          }
        }

        v21 = *(a1 + 5128);
        if (v21 == 1015)
        {
          v22 = 2;
        }

        else
        {
          v22 = v21 == 1011;
        }

        *buf = v22;
        v23 = CFNumberCreate(v15, kCFNumberIntType, buf);
        CFDictionarySetValue(theDict, @"CLIENT_REASON", v23);
        if (v23)
        {
          CFRelease(v23);
        }

        v13 = 0;
      }
    }

LABEL_29:
    if (!valuePtr && *(a1 + 5300) && MGGetBoolAnswer())
    {
      v64 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: 3 2 1 crashing because of debug command", "__WiFiDeviceProcessLinkEvent"}];
      }

      objc_autoreleasePoolPop(v64);
      exit(14);
    }

    v24 = *(a1 + 4232);
    if (v24)
    {
      v24(a1, a2, *(a1 + 4240), theDict);
    }

    if (!valuePtr)
    {
      sub_10005B198(a1);
      sub_100010998(a1, a2, theDict);
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          *buf = 136446210;
          v74 = v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      v28 = 90000000000;
      v29 = 60000000000;
      objc_autoreleasePoolPop(v25);
      if (v13 && sub_10015056C(a1, v13))
      {
        v62 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Using aggressive timeouts for primary <%d seconds> and routable <%d seconds> timeouts for classification", "__WiFiDeviceProcessLinkEvent", 120, 30}];
        }

        objc_autoreleasePoolPop(v62);
        v28 = 120000000000;
        v29 = 30000000000;
      }

      v30 = *(a1 + 72);
      v31 = dispatch_time(0, v28);
      dispatch_source_set_timer(v30, v31, 0xFFFFFFFFFFFFFFFFLL, 0);
      v32 = *(a1 + 80);
      v33 = dispatch_time(0, v29);
      dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0);
      *(a1 + 3576) = CFAbsoluteTimeGetCurrent();
      *(a1 + 5128) = 0;
LABEL_74:
      if (v13)
      {
        CFRelease(v13);
      }

      return;
    }

    sub_100010998(a1, a2, theDict);
    dispatch_source_set_timer(*(a1 + 72), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_timer(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v34 = CFDictionaryGetValue(theDict, @"LINKDOWN_IS_INVOL");
    v35 = CFDictionaryGetValue(theDict, @"LINKDOWN_REASON_CODE");
    v36 = CFDictionaryGetValue(theDict, @"LINKDOWN_SUBREASON_CODE");
    if (!v34 || !v35 || (v37 = v36) == 0)
    {
      sub_1001562D0();
LABEL_64:
      kdebug_trace();
      v57 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"Disassociated."];
      }

      objc_autoreleasePoolPop(v57);
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 256) = *(a1 + 240);
      sub_10005B198(a1);
      v58 = *(a1 + 5384);
      if (v58)
      {

        *(a1 + 5384) = 0;
      }

      v59 = *(a1 + 5392);
      if (v59)
      {

        *(a1 + 5392) = 0;
      }

      v60 = *(a1 + 5400);
      if (v60)
      {

        *(a1 + 5400) = 0;
      }

      v61 = *(a1 + 5408);
      if (v61)
      {

        *(a1 + 5408) = 0;
      }

      goto LABEL_74;
    }

    v72 = -86;
    v70 = -1431655766;
    v71 = -1431655766;
    CFNumberGetValue(v34, kCFNumberSInt8Type, &v72);
    CFNumberGetValue(v35, kCFNumberIntType, &v71);
    CFNumberGetValue(v37, kCFNumberIntType, &v70);
    sub_10004E544(a1, 0, v72, v71, v70, *(a1 + 256), 0, *(a1 + 5200));
    *(a1 + 5416) = 0;
    if (v71 == 7)
    {
      v38 = sub_100063B0C(a1);
      if (v38)
      {
        v39 = v38;
        v40 = sub_10000A878(v38);
        Copy = CFStringCreateCopy(kCFAllocatorDefault, v40);
        CFRelease(v39);
LABEL_51:
        v48 = "went down";
        goto LABEL_52;
      }
    }

    else
    {
      v42 = *(a1 + 5144);
      if (v42)
      {
        BytePtr = CFDataGetBytePtr(v42);
        Length = CFDataGetLength(*(a1 + 5144));
        Copy = CFStringCreateWithBytes(kCFAllocatorDefault, BytePtr, Length, 0x8000100u, 0);
        goto LABEL_51;
      }

      v45 = *(a1 + 5136);
      if (v45)
      {
        v46 = CFDataGetBytePtr(v45);
        v47 = CFDataGetLength(*(a1 + 5136));
        Copy = CFStringCreateWithBytes(kCFAllocatorDefault, v46, v47, 0x8000100u, 0);
        v48 = "up failed";
LABEL_52:
        if (v71 == 3)
        {
          v49 = *(a1 + 16);
          v50 = sub_10006A620();
          v51 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v52 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v53 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
              *buf = 136446210;
              v74 = v53;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v51);
          if (v50)
          {
            CFRelease(v50);
          }
        }

        else
        {
          v54 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v55 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v56 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
              *buf = 136446210;
              v74 = v56;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v54);
        }

        if (Copy)
        {
          CFRelease(Copy);
        }

        goto LABEL_64;
      }
    }

    Copy = 0;
    goto LABEL_51;
  }

  v71 = 0;
  v9 = sub_10014E674(a1);
  v10 = objc_autoreleasePoolPush();
  if (v9)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s WFMacRandomisation : Cannot read APPLE80211_IOC_DEVICE_TYPE_IN_DHCP_ALLOW.", "__WiFiDeviceProcessLinkEvent", v65}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Device Type allowed in DHCP request ? [%d]", "__WiFiDeviceProcessLinkEvent", v71}];
  }

  objc_autoreleasePoolPop(v10);
  v17 = sub_1000078F4(a1, a2);
  if (v17)
  {
    v13 = v17;
    CFDictionaryAddValue(theDict, @"LINK_CHANGED_NETWORK", v17);
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        *buf = 136446210;
        v74 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_29;
  }

  v63 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Link up event with no current network detected. Dropping."];
  }

  objc_autoreleasePoolPop(v63);
}

void sub_100068574(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (a3)
  {
    v6 = sub_1000078F4(a1, a2);
    if (v6)
    {
      v7 = v6;
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v14 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v8);
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Reporting RoamStatus Event", "__WiFiDeviceReportRoamStatusEvent"}];
      }

      objc_autoreleasePoolPop(v10);
      v11 = *(a1 + 3856);
      if (v11)
      {
        v11(a1, a2, *(a1 + 3864), a3);
      }

      Value = CFDictionaryGetValue(a3, @"ROAMEDEVENT_STATUS");
      *buf = 0;
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, buf);
        if (!*buf)
        {
          sub_100065FF8(a1);
        }
      }

      CFRelease(v7);
    }
  }
}

void sub_100068784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 3712);
  if (v3)
  {
    v3(a1, a2, *(a1 + 3720));
  }

  if (*(a1 + 3588) == 2 || *(a1 + 3572))
  {
    v4 = *(a1 + 80);
    v5 = dispatch_time(0, 30000000000);

    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

void sub_100068810(uint64_t a1, const void *a2)
{
  v4 = sub_100060E98(a1, a2);
  *(a1 + 52) = v4;
  if (v4 != 1)
  {
    sub_1000603DC(a1, 82);
    dispatch_source_set_timer(*(a1 + 72), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_timer(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_timer(*(a1 + 88), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_timer(*(a1 + 5040), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    sub_1000361B4(a1, 0);
    dispatch_source_set_timer(*(a1 + 5096), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    sub_100062D38(a1);
  }

  v5 = *(a1 + 3664);
  if (v5)
  {
    v6 = *(a1 + 3672);

    v5(a1, a2, v6);
  }
}

void sub_1000688F8(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (cf && (v5 = cf, v6 = CFGetTypeID(cf), v6 == CFArrayGetTypeID()))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Discovered networks=%@", "__WiFiDeviceProcessBGScanNetworkDiscoveredEvent", v5}];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: NULL evendata", "__WiFiDeviceProcessBGScanNetworkDiscoveredEvent"}];
    }

    v5 = 0;
  }

  objc_autoreleasePoolPop(v7);
  v8 = *(a1 + 3888);
  if (v8)
  {
    v9 = *(a1 + 3896);

    v8(a1, a2, v5, v9);
  }
}

void sub_100068A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v6 = *(a3 + 8);
    v7 = *(a3 + 12);
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: staNum %d", "__WiFiDeviceProcessSTAArriveEvent", v6}];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v9 = *(a1 + 4072);
  if (v9)
  {
    v11 = -21846;
    v12 = -86;
    if (a3)
    {
      v10 = &v11;
    }

    else
    {
      v10 = 0;
    }

    v9(a1, a2, v6, v7, a3, v10, *(a1 + 4080));
  }
}

void sub_100068AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = -21846;
  v11 = -86;
  if (a3)
  {
    v6 = *(a3 + 8);
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: staNum %d", "__WiFiDeviceProcessSTALeaveEvent", v6}];
    }

    objc_autoreleasePoolPop(v7);
    v10 = *a3;
    v11 = *(a3 + 2);
  }

  else
  {
    v6 = 1;
  }

  v8 = *(a1 + 4088);
  if (v8)
  {
    if (a3)
    {
      v9 = &v10;
    }

    else
    {
      v9 = 0;
    }

    v8(a1, a2, v6, 0, a3, v9, *(a1 + 4096));
  }
}

void sub_100068BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 4744);
    if (v4)
    {
      v6 = *(a1 + 4752);

      v4(a1, a2, v6, a3);
    }
  }

  else
  {
    sub_100156668();
  }
}

void sub_100068BF4(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = objc_autoreleasePoolPush();
  v71 = 0;
  if (!a1)
  {
    sub_1001568F0();
    goto LABEL_84;
  }

  if (!a3)
  {
    sub_100156884();
    goto LABEL_84;
  }

  Value = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE");
  if (!Value)
  {
    sub_100156818();
    goto LABEL_84;
  }

  v8 = Value;
  v9 = *(a1 + 5168);
  if (v9)
  {
    CFDictionarySetValue(a3, @"SSID_STR", v9);
  }

  if (*(a1 + 5192))
  {
    v10 = *(a1 + 5200);
    v11 = v10 == 1 ? 1 : 2;
    v12 = v10 ? v11 : 3;
    v13 = sub_100059228(v12);
    CFDictionarySetValue(a3, @"PRIVATE_MAC_ADDRESS_TYPE", v13);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  v14 = *(a1 + 5184);
  if (v14)
  {
    CFDictionarySetValue(a3, @"PRIVATE_MAC_ADDRESS_VALUE", v14);
  }

  v15 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_REASON");
  v16 = v15;
  valuePtr = 0;
  if (v15)
  {
    CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr);
  }

  v17 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_SUBREASON");
  v18 = v17;
  v69 = 0;
  if (v17)
  {
    CFNumberGetValue(v17, kCFNumberSInt32Type, &v69);
  }

  v19 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_FLAGS");
  if (v19)
  {
    CFNumberGetValue(v19, kCFNumberSInt32Type, &v71);
  }

  if (v69)
  {
    v20 = *(a1 + 16);
    v21 = sub_10006A620();
    if (v21)
    {
      CFDictionarySetValue(a3, @"DRIVER_AVAILABLE_KEY_SUBREASON_STRING", v21);
    }
  }

  else
  {
    v21 = 0;
  }

  v68 = 0;
  if (CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_PROGRAM_COUNTER"))
  {
    CFNumberGetValue(v18, kCFNumberSInt32Type, &v68);
  }

  v22 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_LINK_REGISTER");
  v67 = 0;
  if (v22)
  {
    CFNumberGetValue(v22, kCFNumberSInt32Type, &v67);
  }

  v23 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_LINENUMBER");
  v66 = 0;
  if (v23)
  {
    CFNumberGetValue(v23, kCFNumberSInt32Type, &v66);
  }

  v24 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_REASON_STRING");
  v25 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: driver reason string: %@ \n", "__WiFiDeviceProcessDriverAvailableEvent", v24}];
  }

  objc_autoreleasePoolPop(v25);
  if (!v24 || CFStringCompare(v24, &stru_1002680F8, 0) == kCFCompareEqualTo)
  {
    if (valuePtr <= -528340991)
    {
      if (valuePtr > -528345085)
      {
        if (valuePtr == -528345084)
        {
          v29 = @"PowerOff";
          goto LABEL_70;
        }

        if (valuePtr == -528345083)
        {
          v29 = @"PoweringOff";
          goto LABEL_70;
        }

        if (valuePtr != -528340991)
        {
          goto LABEL_69;
        }

        v29 = @"OnThread";
      }

      else
      {
        if (valuePtr == -528345087)
        {
          v29 = @"ShutdownPending";
          goto LABEL_70;
        }

        if (valuePtr == -528345086)
        {
          v29 = @"UnInited";
          goto LABEL_70;
        }

        if (valuePtr != -528345085)
        {
          goto LABEL_69;
        }

        v29 = @"Initializing";
      }
    }

    else
    {
      if (valuePtr > -528336895)
      {
        if (valuePtr <= -528336893)
        {
          if (valuePtr == -528336894)
          {
            v29 = @"WDRunning";
          }

          else
          {
            v29 = @"WDTriggered";
          }

          goto LABEL_70;
        }

        if (valuePtr == -528336892)
        {
          v29 = @"WDFailed";
          goto LABEL_70;
        }

        if (valuePtr == -528336890)
        {
          v29 = @"FWTrap";
          goto LABEL_70;
        }

LABEL_69:
        v29 = [NSString stringWithFormat:@"Unknown=%d", valuePtr];
        goto LABEL_70;
      }

      if (valuePtr == -528340990)
      {
        v29 = @"NotInGate";
        goto LABEL_70;
      }

      if (valuePtr == -528340989)
      {
        v29 = @"BootedImage";
        goto LABEL_70;
      }

      if (valuePtr != -528336895)
      {
        goto LABEL_69;
      }

      v29 = @"Watchdog";
    }

LABEL_70:
    v27 = @"DRIVER_AVAILABLE_REASON_STRING";
    v28 = a3;
    goto LABEL_71;
  }

  if (!v69)
  {
    CFDictionarySetValue(a3, @"DRIVER_AVAILABLE_SUBREASON", v16);
    v26 = *(a1 + 16);
    v21 = sub_10006A620();
    if (v21)
    {
      v27 = @"DRIVER_AVAILABLE_KEY_SUBREASON_STRING";
      v28 = a3;
      v29 = v21;
LABEL_71:
      CFDictionarySetValue(v28, v27, v29);
    }
  }

  context = v6;
  v30 = CFBooleanGetValue(v8);
  if (!v30 && *(a1 + 3952))
  {
    v31 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: hostap never started. Invoking error callback on watchdog.", "__WiFiDeviceProcessDriverAvailableEvent"}];
    }

    objc_autoreleasePoolPop(v31);
    sub_10005BAE0(a1, a2, 4294963390);
  }

  v32 = +[WiFiUsageMonitor sharedInstance];
  v64 = a2;
  [(WiFiUsageMonitor *)v32 notifyDriverAvailability:a2 available:v30 != 0 version:0 flags:v71 eventID:0 reason:valuePtr subReason:v69 minorReason:0 reasonString:v24];
  v33 = objc_autoreleasePoolPush();
  v34 = off_100298C40;
  if (off_100298C40)
  {
    v63 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE");
    v35 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_REASON_STRING");
    v36 = valuePtr;
    v37 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_KEY_SUBREASON_STRING");
    [v34 WFLog:3 message:{"%s: driver availability:%@, reason:%@(0x%x), subreason:%@(0x%x) flag: %@ \n", "__WiFiDeviceProcessDriverAvailableEvent", v63, v35, v36, v37, v69, CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_FLAGS"}];
  }

  objc_autoreleasePoolPop(v33);
  v6 = context;
  if (valuePtr == -528345084)
  {
    goto LABEL_80;
  }

  v39 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_FUNCTION ");
  if (v39)
  {
    v40 = v39;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v40))
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = CFDictionaryGetValue(a3, @"DRIVER_AVAILABLE_FILENAME");
  if (v43)
  {
    v44 = v43;
    v45 = CFStringGetTypeID();
    if (v45 == CFGetTypeID(v44))
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  if (CFBooleanGetValue(v8) == 1)
  {
    for (i = 6; ; --i)
    {
      v48 = *(a1 + 16);
      v49 = *(a1 + 52);
      v50 = Apple80211SetPowerState();
      v51 = v50;
      if (v50 != -3905 && v50 != 61 && v50 != 16)
      {
        break;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
    }

    v53 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Setting power to %s[%d]", "__WiFiDeviceProcessDriverAvailableEvent", sub_100058B44(*(a1 + 52)), v51}];
    }

    objc_autoreleasePoolPop(v53);
    v54 = v71;
    if ((v71 & 0x10) != 0)
    {
      [+[WAClient sharedClientWithIdentifier:](WAClient sharedClientWithIdentifier:{@"wifid", "trapCrashMiniTracerDumpReadyForInterfaceWithName:andReply:", *(a1 + 112), &stru_10025F730}];
      v54 = v71;
    }

    if ((v54 & 8) != 0)
    {
      v55 = 2;
      v6 = context;
LABEL_113:
      v56 = *(a1 + 16);
      v57 = sub_100146060(v55, a3);
      if (v57)
      {
        v58 = v57;
        v59 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s WiFiMetricsManagerCheckQueryableWatchdogInfo() returned error %d", "__WiFiDeviceProcessDriverAvailableEvent", v58}];
        }

        objc_autoreleasePoolPop(v59);
      }

      goto LABEL_117;
    }

    v6 = context;
    if ((v54 & 4) != 0)
    {
      v55 = 1;
      goto LABEL_113;
    }
  }

LABEL_117:
  if (valuePtr != -528345085 || v68 || v67)
  {
    v62 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: driver programCounter:(0x%0x), linkRegister:(0x%x), fileName:%@ lineNumber:(%u) functionName:%@ \n", "__WiFiDeviceProcessDriverAvailableEvent", v68, v67, v46, v66, v42}];
    }

    objc_autoreleasePoolPop(v62);
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      sub_100052B38(a1, a3);
    }
  }

  else if (CFBooleanGetValue(v8))
  {
    if (sub_100033278())
    {
      v60 = sub_100022108(a1, v64, @"IO80211InterfaceWoWWakeUpParams");
      if (v60)
      {
        v61 = v60;
        CFDictionarySetValue(a3, @"IO80211InterfaceWoWWakeUpParams", v60);
        CFRelease(v61);
      }
    }
  }

LABEL_80:
  v38 = *(a1 + 4296);
  if (v38)
  {
    v38(a1, v64, a3, *(a1 + 4304));
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_84:
  objc_autoreleasePoolPop(v6);
}

CFTypeID sub_1000694FC(CFTypeID result, uint64_t a2, CFTypeRef cf)
{
  v4 = result;
  if (cf)
  {
    v5 = cf;
    v6 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v6 == result)
    {
      cf = v5;
    }

    else
    {
      cf = 0;
    }
  }

  v7 = *(v4 + 3920);
  if (v7)
  {
    v8 = *(v4 + 3928);

    return v7(v4, a2, cf, v8);
  }

  return result;
}

void sub_10006957C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 4408);
  if (v4)
  {
    v6 = *(a1 + 4416);

    v4(a1, a2, v6, a3);
  }

  else
  {
    sub_10015695C();
  }
}

void sub_1000695B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 4488);
    if (v4)
    {
      v6 = *(a1 + 4496);

      v4(a1, a2, v6, a3);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: eventData is NULL!", "__WiFiDeviceProcessTxFailEvent"}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_100069648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + 4552);
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"BSS steer event: %@\n", a3}];
  }

  objc_autoreleasePoolPop(v6);
  if (v8)
  {
    v7 = *(a1 + 4560);

    v8(a1, a2, a3, 0, v7);
  }
}

void sub_1000696FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = Mutable;
  if (!*(a3 + 40))
  {
    goto LABEL_8;
  }

  CFDictionaryAddValue(Mutable, @"kWiFiHostApWiFiNetworkIeValidKey", kCFBooleanTrue);
  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, (a3 + 2));
  if (v8)
  {
    v9 = v8;
    CFDictionarySetValue(v7, @"WiFiHostApWiFiNetworkIeBatteryKey", v8);
    CFRelease(v9);
    v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, a3);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v7, @"WiFiHostApWiFiNetworkIeFlagKey", v10);
      CFRelease(v11);
      if (!*(a3 + 3))
      {
LABEL_8:
        v14 = *(a3 + 36);
        if (v14)
        {
          if ((v14 & 2) != 0)
          {
            v15 = &kCFBooleanTrue;
          }

          else
          {
            v15 = &kCFBooleanFalse;
          }

          CFDictionaryAddValue(v7, @"DIRECTED_NETWORK", *v15);
          v14 = *(a3 + 36);
        }

        if ((v14 & 4) != 0)
        {
          if ((v14 & 8) != 0)
          {
            v16 = &kCFBooleanTrue;
          }

          else
          {
            v16 = &kCFBooleanFalse;
          }

          CFDictionaryAddValue(v7, @"INTERNET_ACCESS", *v16);
        }

        v17 = *(a1 + 4584);
        if (v17)
        {
          v17(a1, a2, v7, 0, *(a1 + 4592));
        }

        goto LABEL_20;
      }

      v12 = CFStringCreateWithCString(kCFAllocatorDefault, (a3 + 4), 0x8000100u);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(v7, @"WiFiHostApWiFiNetworkIeSsidKey", v12);
        CFRelease(v13);
        goto LABEL_8;
      }

      sub_1001569C8();
    }

    else
    {
      sub_100156A20();
    }
  }

  else
  {
    sub_100156A78();
  }

LABEL_20:
  if (v7)
  {

    CFRelease(v7);
  }
}

void sub_100069908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: DPS Received on AC ", "__WiFiDeviceProcessDPSEvent"}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = *(a1 + 4600);
  if (v7)
  {
    v7(a1, a2, *(a1 + 4608), a3);
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Sent DPS Notification ", "__WiFiDeviceProcessDPSEvent"}];
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1000699D8(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: SlowWiFi Received %@", "__WiFiDeviceProcessSlowWiFiEvent", a3}];
  }

  objc_autoreleasePoolPop(v6);
  sub_100055710(a1, a3);
  v7 = *(a1 + 4616);
  if (v7)
  {
    v7(a1, a2, *(a1 + 4624), a3);
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Sent SlowWiFi Notification ", "__WiFiDeviceProcessSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v8);
}

void sub_100069AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: SlowWiFiLinkProbeTrigger Received %@", "__WiFiDeviceProcessSlowWiFiLinkProbeTrigger", a3}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = *(a1 + 4632);
  if (v7)
  {
    v8 = *(a1 + 4640);

    v7(a1, a2, v8, a3);
  }
}

void sub_100069B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: SlowWiFiUserInputTrigger Received %@", "__WiFiDeviceProcessSlowWiFiUserInputTrigger", a3}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = *(a1 + 4648);
  if (v7)
  {
    v8 = *(a1 + 4656);

    v7(a1, a2, v8, a3);
  }
}

void sub_100069C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Rx Stall Received %@", "__WiFiDeviceProcessRxDataStallEvent", a3}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = *(a1 + 4968);
  if (v7)
  {
    v7(a1, a2, *(a1 + 4976), a3);
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Sent Rx Stall Notification ", "__WiFiDeviceProcessRxDataStallEvent"}];
  }

  objc_autoreleasePoolPop(v8);
}

void sub_100069CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 4664);
  if (v4)
  {
    v4(a1, a2, *(a1 + 4672), a3);
  }

  v5 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Prune Event Notification %@ ", "__WiFiDeviceProcessPruneEvent", a3}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Prune Event Notification with nil ", "__WiFiDeviceProcessPruneEvent", v6}];
  }

  objc_autoreleasePoolPop(v5);
}

void sub_100069D8C(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ", "__WiFiDeviceProcessCountryCodeChangedEvent"}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = a1[11];
  v6 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v8 = Mutable;
    valuePtr = 10;
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(v8, @"BSP_EventType", v9);
      v11 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v11)
      {
        v16 = 0;
        v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v16);
        if (v12)
        {
          CFDictionarySetValue(v11, @"dummy", v12);
          CFDictionarySetValue(v8, @"BSP_EventParams", v11);
          v13 = a1[593];
          if (v13)
          {
            v13(a1, a2, a1[594], v8);
          }
        }

        else
        {
          sub_100156AD0();
        }
      }

      else
      {
        sub_100156B30();
        v12 = 0;
      }

      CFRelease(v8);
      CFRelease(v10);
      if (v11)
      {
        CFRelease(v11);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      sub_100156B90(v8);
    }
  }

  else
  {
    sub_100156BFC();
  }

  v14 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:Country code changed, purging scan cache\n", "__WiFiDeviceProcessCountryCodeChangedEvent"}];
  }

  objc_autoreleasePoolPop(v14);
  sub_1000361B4(a1, 1);
  v15 = a1[466];
  if (v15)
  {
    v15(a1, a2, a1[467]);
  }
}