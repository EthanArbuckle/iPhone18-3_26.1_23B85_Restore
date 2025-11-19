id *sub_100040990(id *result)
{
  if (result[5])
  {
    v1 = result;
    v2 = [result[4] cbrsCoreAnalyticsMetricsSent];
    v3 = v1[5] - 1;

    return [v2 replaceObjectAtIndex:v3 withObject:&__kCFBooleanFalse];
  }

  return result;
}

void sub_100040D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100040D34(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) subscriptions];
  result = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
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
                  v9 = *(*(*(a1 + 48) + 8) + 24);
                  if (v9)
                  {
                    if (v9 == 1)
                    {
                      v10 = "CTSubscriptionSlotOne";
                    }

                    else
                    {
                      v11 = v9 == 2;
                      v10 = "Unknown CTSubscriptionSlot!!!";
                      if (v11)
                      {
                        v10 = "CTSubscriptionSlotTwo";
                      }
                    }
                  }

                  else
                  {
                    v10 = "CTSubscriptionSlotUnknown";
                  }

                  [WCM_Logging logLevel:22 message:@"feedCellularMetricsWithUUID found matching slot=%s", v10];
                }
              }
            }
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void *sub_100041590(uint64_t a1)
{
  v2 = sub_1000415E0();
  result = dlsym(v2, "BMDeviceCellularAvailabilityStatusStateAsString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002B7D60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000415E0()
{
  v2[0] = 0;
  if (!qword_1002B7D68)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_1000416D8;
    v2[4] = &unk_10023DD00;
    v2[5] = v2;
    v3 = off_10023E2D0;
    v4 = 0;
    qword_1002B7D68 = _sl_dlopen();
  }

  v0 = qword_1002B7D68;
  if (!qword_1002B7D68)
  {
    sub_10015F0AC(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_1000416D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B7D68 = result;
  return result;
}

void *sub_10004174C(uint64_t a1)
{
  v2 = sub_1000415E0();
  result = dlsym(v2, "__BMRootLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002B7D70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10004179C(uint64_t a1)
{
  sub_1000415E0();
  result = objc_getClass("BMDeviceCellularAvailabilityStatus");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015F114();
  }

  qword_1002B7D78 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_1000417F4(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1002B7D88)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100041920;
    v3[4] = &unk_10023DD00;
    v3[5] = v3;
    v4 = off_10023E2E8;
    v5 = 0;
    qword_1002B7D88 = _sl_dlopen();
  }

  if (!qword_1002B7D88)
  {
    sub_10015F1E4(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("OSASystemConfiguration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015F17C();
  }

  qword_1002B7D80 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_100041920(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B7D88 = result;
  return result;
}

Class sub_100041994(uint64_t a1)
{
  sub_1000419EC();
  result = objc_getClass("GEOLocation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015F24C();
  }

  qword_1002B7D90 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_1000419EC()
{
  v0[0] = 0;
  if (!qword_1002B7D98)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_100041AE0;
    v0[4] = &unk_10023DD00;
    v0[5] = v0;
    v1 = off_10023E300;
    v2 = 0;
    qword_1002B7D98 = _sl_dlopen();
  }

  if (!qword_1002B7D98)
  {
    sub_10015F2B4(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_100041AE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B7D98 = result;
  return result;
}

Class sub_100041B54(uint64_t a1)
{
  sub_1000419EC();
  result = objc_getClass("GEOGeographicMetadataRequester");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015F31C();
  }

  qword_1002B7DA0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

id sub_100041FD8(uint64_t a1)
{
  [WCM_Logging logLevel:24 message:@"registerSFOutrankDecisionNotification: received notification"];
  state64 = 0;
  notify_get_state(dword_1002B7C74, &state64);
  if (state64)
  {
    byte_1002B7C84 = 1;
    v2 = dispatch_time(0, (*&qword_1002B7648 * 1000000000.0));
    [WCM_Logging logLevel:24 message:@"evaluateWiFiVersusCell: received cellular outrank notification from Symptoms, submit AWD metrics after waiting for %d seconds", qword_1002B7648];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004212C;
    block[3] = &unk_10023DB28;
    block[4] = v3;
    dispatch_after(v2, v4, block);
  }

  else
  {
    byte_1002B7C84 = 0;
    [*(a1 + 32) triggerEnableSA:0];
  }

  return [WCM_Logging logLevel:24 message:@"registerSFOutrankDecisionNotification: state : %d, trigger reason: %d", state64, byte_1002B7C84];
}

id sub_10004212C(uint64_t a1)
{
  [*(a1 + 32) triggerEnableSA:1];
  [*(a1 + 32) evalExitForceOutranking];
  result = [*(a1 + 32) submitWiFiVersusCellAWDMetrics];
  byte_1002B7C84 = 0;
  return result;
}

id sub_100042210(uint64_t a1)
{
  [*(a1 + 32) notifyRecommendations];

  return [WCM_Logging logLevel:24 message:@"registerSFRestartNotification:Detected symptomsd restart"];
}

void sub_100042334(id a1, int a2)
{
  [WCM_Logging logLevel:24 message:@"registerThermalTimeToThrottleNotification:Detected time to throttle high temperature"];
  state64 = 0;
  notify_get_state(dword_1002B7C7C, &state64);
  v3 = state64 <= 0x1E && ((1 << state64) & 0x40100400) != 0;
  byte_1002B7B7A = v3;
  [WCM_Logging logLevel:24 message:@"registerThermalTimeToThrottleNotification: time : %d, %d", state64, v3];
}

id sub_1000423CC()
{
  state64 = 0;
  notify_get_state(dword_1002B7C7C, &state64);
  v1 = state64 <= 0x1E && ((1 << state64) & 0x40100400) != 0;
  byte_1002B7B7A = v1;
  return [WCM_Logging logLevel:24 message:@"registerThermalTimeToThrottleNotification: time : notifyCallback(): %d, %d", state64, v1];
}

void sub_10004251C(id a1, int a2)
{
  [WCM_Logging logLevel:24 message:@"registerThermalNotificationReasonToThrottle:Detected reason to throttle high teperature"];
  state64 = 0;
  notify_get_state(dword_1002B7C78, &state64);
  [WCM_Logging logLevel:24 message:@"registerThermalNotificationReasonToThrottle: reason : %d", state64];
}

void sub_100042588()
{
  state64 = 0;
  notify_get_state(dword_1002B7C78, &state64);
  NSLog(@"notifyCallback(): %d", state64);
}

id sub_100042B04(uint64_t a1)
{
  v2 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  v3 = [v2 getConfiguredMaxBW];
  v4 = [v2 getCellConfiguredBandwidthThreshold];
  if (v3)
  {
    v5 = v3 >= v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {

    return [WCM_Logging logLevel:24 message:@"evaluateWiFiVersusCell: do not evalExitForceOutranking"];
  }

  else
  {
    result = [WCM_Logging logLevel:24 message:@"evaluateWiFiVersusCell: evalExitForceOutranking, wifi state: %d", byte_1002B7B58];
    if (byte_1002B7B58 == 1)
    {
      byte_1002B7B79 = 1;
      v7 = *(a1 + 32);

      return [v7 evaluateWiFiVersusCell];
    }
  }

  return result;
}

uint64_t sub_100042C94(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_queue_create("CoexMgr.IOKit.Camera", 0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  if (v4)
  {
    v5 = v4;
    dispatch_retain(v4);
    *(a1 + 24) = 0;
    dispatch_release(v5);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
  ctu::iokit::Controller::create();
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v7 = dispatch_queue_create("com.apple.CoexManager.Camera", v6);
  v8 = *(a1 + 184);
  *(a1 + 184) = v7;
  if (v8)
  {
    dispatch_release(v8);
  }

  *(a1 + 168) = 0;
  *(a1 + 172) = 0;
  return a1;
}

void sub_100042D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004250(a10);
  }

  v12 = v10[4];
  if (v12)
  {
    dispatch_release(v12);
  }

  sub_100042F30(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_100042DB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t sub_100042DF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t sub_100042E30(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t sub_100042E70(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t sub_100042EB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t sub_100042EF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void *sub_100042F30(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_100042FEC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void sub_100043070(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 120);
  *(a1 + 120) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 128);
  *(a1 + 128) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void sub_1000430F4(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 72);
  *(a1 + 72) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 80);
  *(a1 + 80) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void sub_100043178(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 88);
  *(a1 + 88) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 96);
  *(a1 + 96) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void sub_1000431FC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 104);
  *(a1 + 104) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 112);
  *(a1 + 112) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void sub_100043280(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 152);
  *(a1 + 152) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 160);
  *(a1 + 160) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

uint64_t sub_100043304(uint64_t a1)
{
  sub_100044CE4(&v13, a1);
  v3 = v13;
  v2 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004250(v2);
  }

  if (*(a1 + 173) != 1)
  {
    v7 = 0x1000000;
    if (!v2)
    {
      return v7;
    }

LABEL_10:
    std::__shared_weak_count::__release_weak(v2);
    return v7;
  }

  *(a1 + 144) = 1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_100043454;
  aBlock[3] = &unk_10023E520;
  aBlock[4] = a1;
  aBlock[5] = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _Block_copy(aBlock);
  v5 = v4;
  v6 = *(a1 + 184);
  if (!v6)
  {
    v11 = v4;
    v12 = 0;
    sub_100043280(a1, &v11);
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  dispatch_retain(*(a1 + 184));
  v11 = v5;
  v12 = v6;
  sub_100043280(a1, &v11);
  dispatch_release(v6);
  if (v5)
  {
LABEL_13:
    _Block_release(v5);
  }

LABEL_14:
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v7 = 16;
  if (v2)
  {
    goto LABEL_10;
  }

  return v7;
}

void sub_100043454(void *a1, uint64_t a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = a1[5];
      sub_100004250(v8);
      if (v9)
      {

        sub_1000434D0(v7, a2, a3);
      }
    }
  }
}

void sub_1000434D0(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 & 0xFFFFFFFF00000000) == &_mh_execute_header && a2 == 1 && a3 == 257)
  {
    v3 = 2;
    goto LABEL_9;
  }

  if ((a2 & 0xFFFFFFFF00000000) == &_mh_execute_header && a2 == 2 && a3 == 257)
  {
    v3 = 4;
LABEL_9:
    if (v3 != *(a1 + 144))
    {
      *(a1 + 144) = v3;
      sub_100044A7C(a1);
    }
  }
}

uint64_t sub_100043530(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10004354C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10004355C(uint64_t a1)
{
  sub_100044CE4(&v45, a1);
  v3 = v45;
  v2 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004250(v2);
  }

  if (*(a1 + 168) != 1)
  {
    v7 = 0x100000;
    goto LABEL_15;
  }

  *(a1 + 136) = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_1000041D8;
  aBlock[3] = &unk_10023E550;
  aBlock[4] = a1;
  aBlock[5] = v3;
  v42 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _Block_copy(aBlock);
  v5 = v4;
  v6 = *(a1 + 184);
  if (v6)
  {
    dispatch_retain(*(a1 + 184));
    v43 = v5;
    v44 = v6;
    sub_100042FEC(a1, &v43);
    dispatch_release(v6);
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v43 = v4;
  v44 = 0;
  sub_100042FEC(a1, &v43);
  if (v5)
  {
LABEL_11:
    _Block_release(v5);
  }

LABEL_12:
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  v7 = 1;
LABEL_15:
  if (*(a1 + 172) != 1)
  {
    v11 = v7 | 0x2000000;
    goto LABEL_26;
  }

  *(a1 + 140) = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1174405120;
  v37[2] = sub_100043A48;
  v37[3] = &unk_10023E580;
  v37[4] = a1;
  v37[5] = v3;
  v38 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = _Block_copy(v37);
  v9 = v8;
  v10 = *(a1 + 184);
  if (!v10)
  {
    v39 = v8;
    v40 = 0;
    sub_100043070(a1, &v39);
    if (!v9)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  dispatch_retain(*(a1 + 184));
  v39 = v9;
  v40 = v10;
  sub_100043070(a1, &v39);
  dispatch_release(v10);
  if (v9)
  {
LABEL_23:
    _Block_release(v9);
  }

LABEL_24:
  v11 = v7 | 0x20;
  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_26:
  if (*(a1 + 169) != 1)
  {
    v15 = v11 | 0x200000;
    goto LABEL_37;
  }

  *(a1 + 137) = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 1174405120;
  v33[2] = sub_100043C58;
  v33[3] = &unk_10023E5B0;
  v33[4] = a1;
  v33[5] = v3;
  v34 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = _Block_copy(v33);
  v13 = v12;
  v14 = *(a1 + 184);
  if (!v14)
  {
    v35 = v12;
    v36 = 0;
    sub_1000430F4(a1, &v35);
    if (!v13)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  dispatch_retain(*(a1 + 184));
  v35 = v13;
  v36 = v14;
  sub_1000430F4(a1, &v35);
  dispatch_release(v14);
  if (v13)
  {
LABEL_34:
    _Block_release(v13);
  }

LABEL_35:
  v15 = v11 | 2;
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_37:
  if (*(a1 + 170) != 1)
  {
    v19 = v15 | 0x400000;
    goto LABEL_48;
  }

  *(a1 + 138) = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1174405120;
  v29[2] = sub_100043E68;
  v29[3] = &unk_10023E5E0;
  v29[4] = a1;
  v29[5] = v3;
  v30 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = _Block_copy(v29);
  v17 = v16;
  v18 = *(a1 + 184);
  if (!v18)
  {
    v31 = v16;
    v32 = 0;
    sub_100043178(a1, &v31);
    if (!v17)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  dispatch_retain(*(a1 + 184));
  v31 = v17;
  v32 = v18;
  sub_100043178(a1, &v31);
  dispatch_release(v18);
  if (v17)
  {
LABEL_45:
    _Block_release(v17);
  }

LABEL_46:
  v19 = v15 | 4;
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

LABEL_48:
  if (*(a1 + 171) != 1)
  {
    v23 = v19 | 0x800000u;
    goto LABEL_59;
  }

  *(a1 + 139) = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1174405120;
  v25[2] = sub_100044078;
  v25[3] = &unk_10023E610;
  v25[4] = a1;
  v25[5] = v3;
  v26 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = _Block_copy(v25);
  v21 = v20;
  v22 = *(a1 + 184);
  if (!v22)
  {
    v27 = v20;
    v28 = 0;
    sub_1000431FC(a1, &v27);
    if (!v21)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  dispatch_retain(*(a1 + 184));
  v27 = v21;
  v28 = v22;
  sub_1000431FC(a1, &v27);
  dispatch_release(v22);
  if (v21)
  {
LABEL_56:
    _Block_release(v21);
  }

LABEL_57:
  v23 = v19 | 8u;
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

LABEL_59:
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return v23;
}

void sub_100043A48(void *a1, int a2)
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

        sub_100043AC0(v5, (v5 + 140), a2);
      }
    }
  }
}

void sub_100043AC0(uint64_t a1, _BYTE *a2, int a3)
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
    handler[2] = sub_100044DEC;
    handler[3] = &unk_10023E6F0;
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

void sub_100043C58(void *a1, int a2)
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

        sub_100043CD0(v5, (v5 + 137), a2);
      }
    }
  }
}

void sub_100043CD0(uint64_t a1, _BYTE *a2, int a3)
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
    handler[2] = sub_100044E64;
    handler[3] = &unk_10023E720;
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

void sub_100043E68(void *a1, int a2)
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

        sub_100043EE0(v5, (v5 + 138), a2);
      }
    }
  }
}

void sub_100043EE0(uint64_t a1, _BYTE *a2, int a3)
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
    handler[2] = sub_100044EDC;
    handler[3] = &unk_10023E750;
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

void sub_100044078(void *a1, int a2)
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

        sub_1000440F0(v5, (v5 + 139), a2);
      }
    }
  }
}

void sub_1000440F0(uint64_t a1, _BYTE *a2, int a3)
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
    handler[2] = sub_100044F54;
    handler[3] = &unk_10023E780;
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

uint64_t sub_100044288(void *a1)
{
  v2 = a1[5];
  if (!v2)
  {
    return 0x40000;
  }

  v3 = a1[7];
  if (v3 && a1[8])
  {
    goto LABEL_25;
  }

  v4 = a1[9];
  if ((!v4 || !a1[10]) && (!a1[11] || !a1[12]) && (!a1[13] || !a1[14]) && (!a1[19] || !a1[20]) && (!a1[15] || !a1[16]))
  {
    return 0x80000;
  }

  if (v3)
  {
    if (a1[8])
    {
LABEL_25:
      if (!ctu::iokit::Controller::setupCameraService(v2))
      {
        return 0x20000;
      }

      v5 = a1[7];
      if (v5 && a1[8])
      {
        v6 = a1[5];
        v7 = _Block_copy(v5);
        v8 = a1[8];
        v47 = v7;
        v48 = v8;
        if (v8)
        {
          dispatch_retain(v8);
        }

        v9 = ctu::iokit::Controller::setFaceIDCallback();
        if (v48)
        {
          dispatch_release(v48);
        }

        if (v47)
        {
          _Block_release(v47);
        }

        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = 0x100000;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = a1[9];
      if (v11 && a1[10])
      {
        v12 = a1[5];
        v13 = _Block_copy(v11);
        v14 = a1[10];
        aBlock = v13;
        object = v14;
        if (v14)
        {
          dispatch_retain(v14);
        }

        v15 = ctu::iokit::Controller::setFrontCameraCallback();
        if (object)
        {
          dispatch_release(object);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v15)
        {
          v10 = v10 | 2;
        }

        else
        {
          v10 = v10 | 0x200000;
        }
      }

      v16 = a1[15];
      if (v16 && a1[16])
      {
        v17 = a1[5];
        v18 = _Block_copy(v16);
        v19 = a1[16];
        v43 = v18;
        v44 = v19;
        if (v19)
        {
          dispatch_retain(v19);
        }

        v20 = ctu::iokit::Controller::setBackCameraCallback();
        if (v44)
        {
          dispatch_release(v44);
        }

        if (v43)
        {
          _Block_release(v43);
        }

        if (v20)
        {
          v10 = v10 | 0x20;
        }

        else
        {
          v10 = v10 | 0x2000000;
        }
      }

      v21 = a1[11];
      if (v21 && a1[12])
      {
        v22 = a1[5];
        v23 = _Block_copy(v21);
        v24 = a1[12];
        v41 = v23;
        v42 = v24;
        if (v24)
        {
          dispatch_retain(v24);
        }

        v25 = ctu::iokit::Controller::setBackTeleCameraCallback();
        if (v42)
        {
          dispatch_release(v42);
        }

        if (v41)
        {
          _Block_release(v41);
        }

        if (v25)
        {
          v10 = v10 | 4;
        }

        else
        {
          v10 = v10 | 0x400000;
        }
      }

      v26 = a1[13];
      if (v26 && a1[14])
      {
        v27 = a1[5];
        v28 = _Block_copy(v26);
        v29 = a1[14];
        v39 = v28;
        v40 = v29;
        if (v29)
        {
          dispatch_retain(v29);
        }

        v30 = ctu::iokit::Controller::setBackSuperWideCameraCallback();
        if (v40)
        {
          dispatch_release(v40);
        }

        if (v39)
        {
          _Block_release(v39);
        }

        if (v30)
        {
          v10 = v10 | 8;
        }

        else
        {
          v10 = v10 | 0x800000;
        }
      }

      goto LABEL_86;
    }

    v4 = a1[9];
  }

  if (v4 && a1[10] || a1[11] && a1[12] || a1[13] && a1[14] || a1[15] && a1[16])
  {
    goto LABEL_25;
  }

  v10 = 0;
LABEL_86:
  v31 = a1[19];
  if (v31 && a1[20])
  {
    v32 = a1[5];
    v33 = _Block_copy(v31);
    v34 = a1[20];
    v37 = v33;
    v38 = v34;
    if (v34)
    {
      dispatch_retain(v34);
    }

    v35 = ctu::iokit::Controller::setAccessoryCallback();
    if (v38)
    {
      dispatch_release(v38);
    }

    if (v37)
    {
      _Block_release(v37);
    }

    if (v35)
    {
      return v10 | 0x10;
    }

    else
    {
      return v10 | 0x1000000;
    }
  }

  return v10;
}

void sub_10004460C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100042E30(va);
  _Unwind_Resume(a1);
}

void sub_100044688(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_100004250(v2);
  }

  v3 = *(a1 + 176);
  if (v3 && CFRunLoopIsWaiting(v3))
  {
    v4 = dispatch_group_create();
    v5 = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(v5);
    }

    v6 = *(a1 + 176);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = nullsub_2;
    block[3] = &unk_10023E640;
    group = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(group);
    }

    CFRunLoopPerformBlock(v6, kCFRunLoopDefaultMode, block);
    CFRunLoopWakeUp(*(a1 + 176));
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (v5)
    {
      dispatch_group_leave(v5);
      dispatch_release(v5);
      dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v5);
    }

    else
    {
      dispatch_group_wait(0, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void sub_1000447CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100044814(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_100044868(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void *sub_1000448B8(void *a1)
{
  sub_100044688(a1);
  v2 = a1[23];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[20];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[16];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = a1[14];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = a1[12];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = a1[11];
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = a1[10];
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = a1[9];
  if (v12)
  {
    _Block_release(v12);
  }

  v13 = a1[8];
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = a1[7];
  if (v14)
  {
    _Block_release(v14);
  }

  v15 = a1[6];
  if (v15)
  {
    sub_100004250(v15);
  }

  v16 = a1[4];
  if (v16)
  {
    dispatch_release(v16);
  }

  return sub_100042F30(a1);
}

void sub_1000449D8(uint64_t a1)
{
  sub_100044CE4(&v3, a1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004250(v2);
  }

  sub_100047404(((*(a1 + 138) & 7) << 6) & 0x81C0 | ((*(a1 + 139) & 7) << 9) & 0x8FF8 | (8 * (*(a1 + 137) & 7)) | ((*(a1 + 140) & 7) << 12) | *(a1 + 136) & 7u);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100044A64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100044A7C(uint64_t a1)
{
  sub_100044CE4(&v3, a1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004250(v2);
  }

  sub_10004759C(*(a1 + 144));
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100044AE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100044B7C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10023E680;
  sub_100042C94((a1 + 3), *a2);
  return a1;
}

void sub_100044BFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10023E680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100044C5C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_100004250(v5);
      }
    }
  }
}

void *sub_100044CE4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_100044D28();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_100044D28()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_100044D74(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      sub_100004250(v4);
      if (v5)
      {
        sub_1000449D8(v3);
        dispatch_source_cancel(*(v3 + 32));
        v6 = *(v3 + 32);
        *(v3 + 32) = 0;
        if (v6)
        {

          dispatch_release(v6);
        }
      }
    }
  }
}

void sub_100044DEC(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      sub_100004250(v4);
      if (v5)
      {
        sub_1000449D8(v3);
        dispatch_source_cancel(*(v3 + 32));
        v6 = *(v3 + 32);
        *(v3 + 32) = 0;
        if (v6)
        {

          dispatch_release(v6);
        }
      }
    }
  }
}

void sub_100044E64(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      sub_100004250(v4);
      if (v5)
      {
        sub_1000449D8(v3);
        dispatch_source_cancel(*(v3 + 32));
        v6 = *(v3 + 32);
        *(v3 + 32) = 0;
        if (v6)
        {

          dispatch_release(v6);
        }
      }
    }
  }
}

void sub_100044EDC(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      sub_100004250(v4);
      if (v5)
      {
        sub_1000449D8(v3);
        dispatch_source_cancel(*(v3 + 32));
        v6 = *(v3 + 32);
        *(v3 + 32) = 0;
        if (v6)
        {

          dispatch_release(v6);
        }
      }
    }
  }
}

void sub_100044F54(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      sub_100004250(v4);
      if (v5)
      {
        sub_1000449D8(v3);
        dispatch_source_cancel(*(v3 + 32));
        v6 = *(v3 + 32);
        *(v3 + 32) = 0;
        if (v6)
        {

          dispatch_release(v6);
        }
      }
    }
  }
}

const char *sub_1000457B8(int a1)
{
  v1 = "kGood";
  v2 = "Unknown";
  if (a1 == 50)
  {
    v2 = "kPoor";
  }

  if (a1 != 100)
  {
    v1 = v2;
  }

  if (a1 == 10)
  {
    return "kBad";
  }

  else
  {
    return v1;
  }
}

const char *sub_1000457F4(int a1)
{
  if (a1 <= 3)
  {
    if (!a1)
    {
      return "kNone";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "kRlc_Downlink";
      }

      return "Unknown";
    }

    return "kPdcp_Uplink";
  }

  else if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return "kNWReject";
      }

      return "Unknown";
    }

    return "kRF";
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return "kRach";
      }

      return "Unknown";
    }

    return "kLqe";
  }
}

const char *sub_100045898(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 255)
      {
        return "kMax";
      }

      return "Unknown";
    }

    return "kEVS";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return "kWBAMR";
      }

      return "Unknown";
    }

    return "kNBAMR";
  }
}

const char *sub_1000458F8(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_10023E7B0[a1];
  }
}

id sub_1000460CC(id result)
{
  if (!qword_1002B7DB0)
  {
    v1.receiver = *(result + 4);
    v1.super_class = &OBJC_METACLASS___WRM_IDSP2PController;
    result = [objc_msgSendSuper2(&v1 allocWithZone:{0), "init"}];
    qword_1002B7DB0 = result;
  }

  return result;
}

id sub_100046500(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
  if ([*(a1 + 32) ConnectedDevices] && objc_msgSend(objc_msgSend(*(a1 + 32), "ConnectedDevices"), "count") && (sub_1000466E0(objc_msgSend(*(a1 + 32), "ConnectedDevices")), v16 = 0u, v17 = 0u, v14 = 0u, v15 = 0u, v2 = objc_msgSend(*(a1 + 32), "ConnectedDevices"), (v3 = objc_msgSend(v2, "countByEnumeratingWithState:objects:count:", &v14, v20, 16)) != 0))
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = IDSCopyIDForDevice();
        v9 = [NSSet setWithObject:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v4);
  }

  else
  {
    v9 = 0;
  }

  [WCM_Logging logLevel:27 message:@"IDSP2PSync: Destination count is %d device(s)", [(NSSet *)v9 count]];
  if (v9)
  {
    if ([objc_msgSend(*(a1 + 32) "service")])
    {
      return [WCM_Logging logLevel:27 message:@"IDSP2PSync: Requested IDS to send message with uuid %@", v18, v13];
    }

    v12 = v18;
    v13 = v19;
    v11 = @"IDSP2PSync: Failed to send with uuid %@ error %@";
  }

  else
  {
    v11 = @"IDSP2PSync: Not sending message due to issue with destination!!!";
  }

  return [WCM_Logging logLevel:27 message:v11, v12, v13];
}

void sub_1000466E0(void *a1)
{
  context = objc_autoreleasePoolPush();
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v10;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(a1);
          }

          v6 = *(*(&v9 + 1) + 8 * i);
          v7 = IDSCopyIDForDevice();
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"WRM_IDSP2PController (%p) - %s %s %s (%s)", v6, [objc_msgSend(v6 "uniqueIDOverride")], objc_msgSend(v7, "UTF8String"), objc_msgSend(objc_msgSend(v6, "name"), "UTF8String"), objc_msgSend(objc_msgSend(v6, "modelIdentifier"), "UTF8String"), context);
        }

        v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v3);
    }
  }

  else
  {
    [WCM_Logging logLevel:27 message:@"WRM_IDSP2PController: No Devices !!"];
  }

  objc_autoreleasePoolPop(context);
}

void sub_100046D5C(uint64_t a1)
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"IDSP2PSync: Set of registered devices changed: %lu device(s)", [*(a1 + 32) count]);
  v2 = objc_opt_new();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v8 + 1) + 8 * i))
        {
          [v2 addObject:?];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) setConnectedDevices:v2];
  [*(a1 + 40) setDevicePaired:{objc_msgSend(*(a1 + 40), "updateDevicePairingState")}];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"IDSP2PSync: Set of registered devices changed (devicesChanged): %lu device(s)", [objc_msgSend(*(a1 + 40) "ConnectedDevices")]);
  sub_1000466E0([*(a1 + 40) ConnectedDevices]);
}

void sub_100046F88(uint64_t a1)
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"IDSP2PSync: Set of connected devices changed: %lu device(s)", [*(a1 + 32) count]);
  v2 = *(a1 + 32);
}

void sub_100047130(uint64_t a1)
{
  if ([*(a1 + 32) IsIDSInitDone] == 1)
  {

    [WCM_Logging logLevel:27 message:@"IDSP2PSync: Already initialized, returning"];
  }

  else
  {
    [*(a1 + 32) setService:{objc_msgSend([IDSService alloc], "initWithService:", @"com.apple.private.alloy.iratmanager"}];
    [objc_msgSend(*(a1 + 32) "service")];
    [*(a1 + 32) setServiceInitDone:1];
    v2 = [objc_msgSend(*(a1 + 32) "service")];
    v3 = objc_opt_new();
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v2);
          }

          if (*(*(&v8 + 1) + 8 * i))
          {
            [v3 addObject:?];
          }
        }

        v5 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [*(a1 + 32) setConnectedDevices:v3];
    [*(a1 + 32) setDevicePaired:{objc_msgSend(*(a1 + 32), "updateDevicePairingState")}];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"IDSP2PSync: Initial set of connected devices: %lu devices", [v3 count]);
    sub_1000466E0([*(a1 + 32) ConnectedDevices]);
  }
}

void sub_100047404(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:3 message:@"IOKIT callback camera state = %d", a1];
  if (v2)
  {
    v3 = +[WCM_PolicyManager singleton];
    v4 = v3;
    if (v3 && [v3 cameraState] != a1)
    {
      [v4 setCameraState:a1];
      v5 = +[WCM_Server singleton];
      v6 = [v5 getQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100047590;
      block[3] = &unk_10023D9C0;
      v10 = v4;
      dispatch_async(v6, block);
    }

    v7 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];
    v8 = v7;
    if (v7)
    {
      [v7 updateCameraState:a1];
    }
  }
}

void sub_10004759C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:3 message:@"YYDebug_ IOKIT callback pencil state [state = %d]", a1];
  if (v2)
  {
    v3 = +[WCM_PolicyManager singleton];
    if (a1 == 4)
    {
      [WCM_Logging logLevel:3 message:@"YYDebug_ Pencil state detached"];
      v5 = 0;
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (a1 != 2)
      {
        if (a1 == 1)
        {
          v4 = @"YYDebug_ Pencil state unknown";
        }

        else
        {
          v4 = @"YYDebug_ Cannot determine pencil state. This should never happen.";
        }

        [WCM_Logging logLevel:3 message:v4];
        v5 = 100;
        if (!v3)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      [WCM_Logging logLevel:3 message:@"YYDebug_ Pencil state attached"];
      v5 = 1;
      if (!v3)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

LABEL_12:
    if ([v3 pencilState] != v5)
    {
      [v3 setPencilState:v5];
      v6 = +[WCM_Server singleton];
      v7 = [v6 getQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100047760;
      block[3] = &unk_10023D9C0;
      v9 = v3;
      dispatch_async(v7, block);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void sub_100048160(uint64_t a1)
{
  [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: checkTreatmentUpdate: Trial Treatment Updated"];
  [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: checkTreatmentUpdate: trialCallbackReceived : YES"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v9 = off_1002B76B8;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
    v6 = v3[2];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004829C;
    v8[3] = &unk_10023E7E0;
    v7 = *(a1 + 32);
    v8[4] = v3;
    v8[5] = v7;
    [v4 downloadLevelsForFactors:v5 withNamespace:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" queue:v6 options:0 progress:0 completion:v8];
  }
}

id sub_10004829C(uint64_t a1, int a2)
{
  if (a2)
  {
    [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: checkTreatmentUpdate: Downloaded modified asset"];
    result = [*(a1 + 32) updateTreatment];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {

    return [WCM_Logging logLevel:22 message:@"CellularProductExperimentsManager: checkTreatmentUpdate: downloadLevelsForFactors failed"];
  }

  return result;
}

char *sub_100048A90(tlv *a1, const unsigned __int8 *a2, _WORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2, a4);
  *a3 = *a1;
  return a1 + 2;
}

uint64_t sub_100048AD8(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 2, v7);
  *(a3 + 2) = *(a1 + 1);
  return a1 + 3;
}

uint64_t sub_100048B34(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 2);
  return a1 + 3;
}

uint64_t sub_100048B54(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 2, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 3);
  return (v9 << 16) | v7;
}

void sub_100048BC0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100048BACLL);
}

uint64_t *sub_100048BDC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 2);
  *result = v2 + 3;
  return result;
}

uint64_t sub_100048BFC(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 2, v7);
  *(a3 + 2) = *(a1 + 1);
  tlv::throwIfNotEnoughBytes((a1 + 3), a2, 1, v8);
  *(a3 + 4) = *(a1 + 3);
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4, v9);
  *(a3 + 8) = *(a1 + 4);
  return a1 + 8;
}

uint64_t sub_100048C88(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 4);
  *(a1 + 4) = *(a2 + 8);
  return a1 + 8;
}

uint64_t sub_100048CB8(uint64_t *a1, int a2, uint64_t a3, unint64_t a4)
{
  LOBYTE(v5) = 0;
  WORD1(v5) = 0;
  BYTE4(v5) = 0;
  v6 = 0;
  *a1 = sub_100048BFC(*a1, (*a1 + a2), &v5, a4);
  return v5;
}

void sub_100048D0C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100048CF4);
}

uint64_t *sub_100048D24(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 2);
  *(v2 + 3) = *(a2 + 4);
  *(v2 + 4) = *(a2 + 8);
  *result = v2 + 8;
  return result;
}

char *sub_100048D54(tlv *a1, const unsigned __int8 *a2, _BYTE *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1;
  return a1 + 1;
}

uint64_t sub_100048DA0(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1, a4);
  result = *v5;
  *a1 = (v5 + 1);
  return result;
}

void sub_100048DDC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100048DD0);
}

_BYTE **sub_100048DF8(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t sub_100048E0C(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 2, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 3);
  return (v9 << 16) | v7;
}

void sub_100048E78(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100048E64);
}

uint64_t sub_100048E8C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 4) = *(a2 + 4);
  return a1 + 6;
}

uint64_t *sub_100048EBC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 1) = *(a2 + 1);
  *(v2 + 2) = *(a2 + 2);
  *(v2 + 4) = *(a2 + 4);
  *result = v2 + 6;
  return result;
}

uint64_t sub_100048EEC(uint64_t a1, const unsigned __int8 *a2, _WORD *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 2), a2, 2, v7);
  a3[1] = *(a1 + 2);
  return a1 + 4;
}

_WORD *sub_100048F48(_WORD *a1, _WORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

_WORD **sub_100048F68(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

_WORD **sub_100048F94(_WORD **result, _WORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t sub_100048FA8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 2, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 3);
  return (v9 << 16) | v7;
}

void sub_100049014(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049000);
}

uint64_t sub_100049028(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049064(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049058);
}

uint64_t sub_100049078(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_1000490B4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000490A8);
}

uint64_t sub_1000490C8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049104(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000490F8);
}

uint64_t sub_100049118(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049154(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049148);
}

uint64_t sub_100049168(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_1000491A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049198);
}

uint64_t sub_1000491B8(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_1000491F4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000491E8);
}

uint64_t sub_100049208(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049244(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049238);
}

uint64_t sub_100049258(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049294(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049288);
}

tlv *sub_1000492A8(tlv *a1, const unsigned __int8 *a2, void *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  v8 = *a1;
  v7 = (a1 + 1);
  sub_100049C54(a3, v8);
  v11 = *a3;
  v10 = a3[1];
  while (v11 != v10)
  {
    tlv::throwIfNotEnoughBytes(v7, a2, 2, v9);
    v12 = *v7;
    v7 = (v7 + 2);
    *v11++ = v12;
  }

  return v7;
}

_WORD *sub_100049318(_BYTE *a1, _DWORD *a2)
{
  *a1 = (a2[2] - *a2) >> 1;
  result = a1 + 1;
  v3 = *a2;
  v4 = *(a2 + 1);
  while (v3 != v4)
  {
    v5 = *v3++;
    *result++ = v5;
  }

  return result;
}

uint64_t sub_100049348(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 1;
  }

  else
  {
    return v1 - *a1 + 1;
  }
}

tlv *sub_10004935C@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000492A8(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_10004939C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049390);
}

void sub_1000493AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000493C8(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 4;
  }

  else
  {
    return v1 - *a1 + 4;
  }
}

_BYTE **sub_1000493E0(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = (a2[2] - *a2) >> 1;
  v3 = v2 + 1;
  v4 = *a2;
  v5 = *(a2 + 1);
  while (v4 != v5)
  {
    v6 = *v4++;
    *v3++ = v6;
  }

  *result = v3;
  return result;
}

uint64_t sub_100049418(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049454(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049448);
}

tlv *sub_100049468@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000492A8(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_1000494A8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x10004949CLL);
}

void sub_1000494B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000494D4(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049510(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049504);
}

tlv *sub_100049524@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000492A8(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_100049564(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049558);
}

void sub_100049574(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100049590(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_1000495CC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000495C0);
}

tlv *sub_1000495E0@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000492A8(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_100049620(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049614);
}

void sub_100049630(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004964C(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049688(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x10004967CLL);
}

tlv *sub_10004969C@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000492A8(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_1000496DC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000496D0);
}

void sub_1000496EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100049708(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049744(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049738);
}

tlv *sub_100049758@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000492A8(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_100049798(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x10004978CLL);
}

void sub_1000497A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000497C4(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049800(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000497F4);
}

uint64_t sub_100049814(uint64_t a1, const unsigned __int8 *a2, _BYTE *a3, unint64_t a4)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1, a4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1, v7);
  a3[1] = *(a1 + 1);
  return a1 + 2;
}

_BYTE *sub_100049870(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

uint64_t sub_100049888(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_1000498F0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000498DCLL);
}

tlv *sub_100049904@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000492A8(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_100049944(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049938);
}

void sub_100049954(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100049970(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_1000499AC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000499A0);
}

tlv *sub_1000499C0@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000492A8(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_100049A00(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1000499F4);
}

void sub_100049A10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100049A2C(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049A68(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049A5CLL);
}

uint64_t sub_100049A7C(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1, a4);
  v7 = *v5;
  tlv::throwIfNotEnoughBytes((v5 + 1), v6, 1, v8);
  v9 = *(v5 + 1);
  *a1 = (v5 + 2);
  return v7 | (v9 << 8);
}

void sub_100049AE4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049AD0);
}

tlv *sub_100049AF8@<X0>(tlv **a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = sub_1000492A8(*a1, *a1 + a2, a4, a3);
  *a1 = result;
  return result;
}

void sub_100049B38(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049B2CLL);
}

void sub_100049B48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100049B64(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049BA0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049B94);
}

uint64_t sub_100049BB4(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049BF0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049BE4);
}

uint64_t sub_100049C04(tlv **a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2, a4);
  result = *v5;
  *a1 = (v5 + 2);
  return result;
}

void sub_100049C40(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x100049C34);
}

void sub_100049C54(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_100049C84(a1, a2 - v2);
  }
}

void sub_100049C84(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_100049DAC();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_100049E54(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sub_100049DC4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100049E20(exception, a1);
}

std::logic_error *sub_100049E20(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100049E54(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100049E98();
}

void sub_100049E98()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_10004B5B8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D3F8;
  block[3] = &unk_10023E8D0;
  block[4] = a1;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

id sub_10004B640(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s powerState=0x%x isFWReset=0x%x", "[WCM_BSPMonitorIOS handleWiFiStatusUpdateEvent:isFWReset:]_block_invoke", *(a1 + 40), *(a1 + 41)];
  [*(a1 + 32) printStatus:"Before WiFiStatusUpdate"];
  *(*(a1 + 32) + 8) = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v2[41];
  [v2 updateBSPState];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1 && (*(a1 + 40) & 1) == 0)
      {
        [*(a1 + 32) initWiFiStatus];
      }
    }

    else if (*(a1 + 40) == 1)
    {
      [*(a1 + 32) sendGetRegulatoryInfoToWiFi];
      [*(a1 + 32) sendGetNanPhsStateToWiFi];
      [*(a1 + 32) sendGetBandSwitchStatusToWiFi];
      [*(a1 + 32) sendGetChannelQualityInfoToWiFi];
      [*(a1 + 32) sendBTStatusToWiFi];
    }
  }

  else
  {
    if (v3 == 2)
    {
      if (*(a1 + 40) != 1)
      {
        goto LABEL_18;
      }

      [*(a1 + 32) sendGetRegulatoryInfoToWiFi];
      [*(a1 + 32) sendGetNanPhsStateToWiFi];
      [*(a1 + 32) sendGetBandSwitchStatusToWiFi];
      [*(a1 + 32) sendGetChannelQualityInfoToWiFi];
      [*(a1 + 32) sendBTStatusToWiFi];
      goto LABEL_13;
    }

    if (v3 == 3)
    {
      if ((*(a1 + 40) & 1) == 0)
      {
        [*(a1 + 32) initWiFiStatus];
        [*(a1 + 32) sendWiFiStatusToBT];
        [*(a1 + 32) updateFrequencyBandForBT];
      }
    }

    else if (v3 == 4 && (*(a1 + 40) & 1) == 0)
    {
      [*(a1 + 32) initWiFiStatus];
LABEL_13:
      [*(a1 + 32) sendWiFiStatusToBT];
    }
  }

LABEL_18:
  if (*(a1 + 41) == 1)
  {
    if (*(*(a1 + 32) + 164) == 4)
    {
      [WCM_Logging logLevel:2 message:@"WCMBSP:%s force enabling SibCoex Mode due to WiFi FW reset", "[WCM_BSPMonitorIOS handleWiFiStatusUpdateEvent:isFWReset:]_block_invoke"];
      [*(a1 + 32) didEnterBSPActiveState];
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"WCMBSP:%s force disabling SibCoex Mode due to WiFi FW reset.", "[WCM_BSPMonitorIOS handleWiFiStatusUpdateEvent:isFWReset:]_block_invoke"];
      [*(a1 + 32) willLeaveBSPActiveState];
    }
  }

  v4 = *(a1 + 32);

  return [v4 printStatus:"After WiFiStatusUpdate"];
}

id sub_10004B8B4(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s band=0x%x", "[WCM_BSPMonitorIOS handleWiFiFrequencyBandForBTEvent:]_block_invoke", *(a1 + 40)];
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    return [WCM_Logging logLevel:1 message:@"WCMBSP:%s unexpected event, mBSPState=%d", "[WCM_BSPMonitorIOS handleWiFiFrequencyBandForBTEvent:]_block_invoke", *(v2 + 164)];
  }

  [v2 printStatus:"Before WiFiFrequencyBandForBT"];
  *(*(a1 + 32) + 32) = *(a1 + 40);
  +[NSDate timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 40) = v3;
  v4 = *(a1 + 32);
  if (*(v4 + 128) == 1 && *(v4 + 164) != 4)
  {
    [v4 sendSetFrequencyBandToBT:*(v4 + 32)];
    v4 = *(a1 + 32);
  }

  return [v4 printStatus:"After WiFiFrequencyBandForBT"];
}

id sub_10004BA54(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s band=0x%x, quality=0x%x", "[WCM_BSPMonitorIOS handleWiFiChannelQualityEvent:quality:]_block_invoke", *(a1 + 48), *(a1 + 40)];
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    return [WCM_Logging logLevel:1 message:@"WCMBSP:%s unexpected event, mBSPState=%d", "[WCM_BSPMonitorIOS handleWiFiChannelQualityEvent:quality:]_block_invoke", *(v2 + 164)];
  }

  [v2 printStatus:"Before WiFiChannelQuality"];
  v3 = *(a1 + 48);
  switch(v3)
  {
    case 16:
      v9 = *(a1 + 40);
      *(*(a1 + 32) + 96) = 16;
      *(*(a1 + 32) + 104) = v9;
      +[NSDate timeIntervalSinceReferenceDate];
      *(*(a1 + 32) + 112) = v10;
      break;
    case 2:
      v7 = *(a1 + 40);
      *(*(a1 + 32) + 72) = 2;
      *(*(a1 + 32) + 80) = v7;
      +[NSDate timeIntervalSinceReferenceDate];
      *(*(a1 + 32) + 88) = v8;
      break;
    case 1:
      v4 = *(a1 + 40);
      *(*(a1 + 32) + 48) = 1;
      *(*(a1 + 32) + 56) = v4;
      +[NSDate timeIntervalSinceReferenceDate];
      *(*(a1 + 32) + 64) = v5;
      break;
    default:
      [WCM_Logging logLevel:1 message:@"WCMBSP:%s unknown band=0x%x, quality=0x%x", "[WCM_BSPMonitorIOS handleWiFiChannelQualityEvent:quality:]_block_invoke", *(a1 + 48), *(a1 + 40)];
      break;
  }

  v11 = *(a1 + 32);
  if (v11[128] == 1)
  {
    [v11 sendChannelQualityToBT:*(a1 + 48) quality:*(a1 + 40)];
    v11 = *(a1 + 32);
  }

  return [v11 printStatus:"After WiFiChannelQuality"];
}

id sub_10004BCA0(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s regulatoryInfo=0x%x", "[WCM_BSPMonitorIOS handleWiFiRegulatoryInfoEvent:]_block_invoke", *(a1 + 40)];
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    return [WCM_Logging logLevel:1 message:@"WCMBSP:%s unexpected event, mBSPState=%d", "[WCM_BSPMonitorIOS handleWiFiRegulatoryInfoEvent:]_block_invoke", *(v2 + 164)];
  }

  [v2 printStatus:"Before WiFiRegulatoryInfo"];
  v3 = *(a1 + 40);
  if (v3)
  {
    *(*(a1 + 32) + 24) = v3;
  }

  [*(a1 + 32) updateBSPState];
  [*(a1 + 32) updateFrequencyBandForBT];
  v4 = *(a1 + 32);

  return [v4 printStatus:"After WiFiRegulatoryInfo"];
}

id sub_10004BE08(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 4)
  {
    if (v2 == 4)
    {
      v3 = "ASSOCIATED_6G";
    }

    else
    {
      v3 = "INVALID_STATE!!!";
    }
  }

  else
  {
    v3 = (&off_10023E8F0)[v2];
  }

  [WCM_Logging logLevel:2 message:@"WCMBSP:%s wifiState=%s, wifiChannel=%u, isNanPhs=%u", "[WCM_BSPMonitorIOS handleWiFiStateEvent:wifiChannel:isNanPhs:]_block_invoke", v3, *(a1 + 44), *(a1 + 48)];
  [*(a1 + 32) printStatus:"Before WiFiStateEvent"];
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (v4 > 1 || *(v5 + 20) == v6)
  {
    *(v5 + 12) = v4;
    *(*(a1 + 32) + 16) = *(a1 + 44);
    *(*(a1 + 32) + 20) = v6;
    [*(a1 + 32) updateFrequencyBandForBT];
  }

  else
  {
    if (v4)
    {
      v7 = "ENABLED";
    }

    else
    {
      v7 = "DISABLED";
    }

    [WCM_Logging logLevel:2 message:@"WCMBSP:%s ignoring Wifi disassociated / disabled update due to isNanPhs state doesn't match: wifiState=%s, wifiChannel=%u, isNanPhs=%u", "[WCM_BSPMonitorIOS handleWiFiStateEvent:wifiChannel:isNanPhs:]_block_invoke", v7, *(a1 + 44), v6];
  }

  v8 = *(a1 + 32);

  return [v8 printStatus:"After WiFiStateEvent"];
}

id sub_10004BFC8(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s", "[WCM_BSPMonitorIOS handleWiFiCountryCodeChangedEvent]_block_invoke"];
  v2 = *(a1 + 32);

  return [v2 sendGetRegulatoryInfoToWiFi];
}

void sub_10004C0E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = dispatch_time(0, 1000000 * a1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D408;
    block[3] = &unk_10023E8D0;
    block[4] = a2;
    dispatch_after(v3, [+[WCM_Server singleton](WCM_Server "singleton")], block);
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10004D418;
    v4[3] = &unk_10023E8D0;
    v4[4] = a2;
    dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], v4);
  }
}

id sub_10004C1F0(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s", "[WCM_BSPMonitorIOS handleBandSwitchStatusUpdatedEvent]_block_invoke"];
  [*(a1 + 32) sendGetBandSwitchStatusToWiFi];
  result = +[NSDate timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 184) = v3;
  return result;
}

id sub_10004C318(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s", "[WCM_BSPMonitorIOS handleChannelQualityInfoUpdatedEvent]_block_invoke"];
  [*(a1 + 32) sendGetChannelQualityInfoToWiFi];
  result = +[NSDate timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 192) = v3;
  return result;
}

id sub_10004C400(uint64_t a1)
{
  result = [WCM_Logging logLevel:2 message:@"WCMBSP:%s coexMode=%d, btSubband=0x%x, successCount=%llu, failCount=%llu", "[WCM_BSPMonitorIOS handleBandSwitchStatusEvent:btSubband:successCount:failCount:]_block_invoke", *(a1 + 60), *(a1 + 56), *(a1 + 40), *(a1 + 48)];
  *(*(a1 + 32) + 120) = *(a1 + 60);
  *(*(a1 + 32) + 124) = *(a1 + 56);
  return result;
}

void sub_10004C644(uint64_t a1)
{
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  [*(a1 + 32) updateChannelQualityInfo:*(a1 + 32) + 48 bandCode:0 chqInfoDict:*(a1 + 40) ts:?];
  [*(a1 + 32) updateChannelQualityInfo:*(a1 + 32) + 72 bandCode:1 chqInfoDict:*(a1 + 40) ts:v3];
  [*(a1 + 32) updateChannelQualityInfo:*(a1 + 32) + 96 bandCode:4 chqInfoDict:*(a1 + 40) ts:v3];
  v4 = *(a1 + 40);

  CFRelease(v4);
}

id sub_10004C74C(uint64_t a1)
{
  result = [WCM_Logging logLevel:2 message:@"WCMBSP:%s reasonCode=0x%x, btSubband=0x%x", "[WCM_BSPMonitorIOS handleCoexModeFailEvent:btSubband:]_block_invoke", *(a1 + 40), *(a1 + 44)];
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v14 = *(a1 + 32);
    v15 = v14[6];
    v16 = v14[40];
    v8 = [v14 getTimeToTSTForULLAMode:v14[34]];
    v9 = v14;
    v10 = 0;
    v11 = v15;
    v12 = v16;
    v13 = 1;
  }

  else
  {
    if (v3 != 1)
    {
      return result;
    }

    if (*(a1 + 44) == 2)
    {
      v4 = 16;
    }

    else
    {
      v4 = 2;
    }

    [*(a1 + 32) sendSetFrequencyBandToBT:v4 forced:1];
    v5 = *(a1 + 32);
    v6 = v5[6];
    v7 = v5[40];
    v8 = [v5 getTimeToTSTForULLAMode:v5[34]];
    v9 = v5;
    v10 = 1;
    v11 = v6;
    v12 = v7;
    v13 = 0;
  }

  return [v9 sendSetCoexModeToWiFi:v10 wifiSupportedBands:v11 btCurrentBand:v12 btSupportedBands:19 setTimeToTSTOnly:v13 timeToTST:v8];
}

id sub_10004C91C(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s reasonCode=0x%x, btTargetBand=0x%x", "[WCM_BSPMonitorIOS handleBandSwitchRejectEvent:btTargetBand:]_block_invoke", *(a1 + 40), *(a1 + 44)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);

  return [v2 sendBandSwitchRejectToBT:v3 targetBand:v4];
}

id sub_10004C9F4(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s", "[WCM_BSPMonitorIOS requestBTStatus]_block_invoke"];
  v2 = *(a1 + 32);

  return [v2 sendBTStatusRequestToBT];
}

id sub_10004CAC0(uint64_t a1)
{
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  [*(a1 + 32) printStatus:"Show Status"];
  return [WCM_Logging logLevel:2 message:@"coexMode=%d, btSubband=0x%x, Chq_2_4G=0x%x, %llums, Chq_5G_Low=0x%x, %llums, Chq_5g_High=0x%x, %llums", *(*(a1 + 32) + 120), *(*(a1 + 32) + 124), *(*(a1 + 32) + 56), ((v3 - *(*(a1 + 32) + 64)) * 1000.0), *(*(a1 + 32) + 80), ((v3 - *(*(a1 + 32) + 88)) * 1000.0), *(*(a1 + 32) + 104), ((v3 - *(*(a1 + 32) + 112)) * 1000.0)];
}

id sub_10004CC74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = v2[33];
  v3 = v2[34];
  v6 = *(a1 + 40);
  v5 = *(a1 + 44);
  v7 = v2[41] == 4 && v3 == v5;
  v8 = !v7;
  v9 = *(a1 + 48);
  if (v7)
  {
    [WCM_Logging logLevel:3 message:@"WCMBSP:%s powerState=0x%x, band=0x%x, ullaMode=%d", "[WCM_BSPMonitorIOS handleBTStatusUpdateEvent:frequencyBand:ullaMode:]_block_invoke", v9, v6, v3];
    [*(a1 + 32) printStatus:"Before BTStatusUpdate" withLogLevel:3];
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"WCMBSP:%s powerState=0x%x, band=0x%x, ullaMode=%d", "[WCM_BSPMonitorIOS handleBTStatusUpdateEvent:frequencyBand:ullaMode:]_block_invoke", v9, v6, v5];
    [*(a1 + 32) printStatus:"Before BTStatusUpdate"];
  }

  [*(a1 + 32) checkBTRegulatoryInfo];
  v10 = *(*(a1 + 32) + 136);
  if (v10)
  {
    v11 = *(a1 + 44);
    if (v11)
    {
      v12 = v10 == v11;
    }

    else
    {
      v12 = 1;
    }

    LOBYTE(v10) = !v12;
  }

  *(*(a1 + 32) + 156) = v10;
  v13 = *(a1 + 32);
  if (*(v13 + 156) == 1)
  {
    [WCM_Logging logLevel:2 message:@"WCMBSP:%s ullaModeTransitioned=%d", "[WCM_BSPMonitorIOS handleBTStatusUpdateEvent:frequencyBand:ullaMode:]_block_invoke", 1];
    v13 = *(a1 + 32);
  }

  *(v13 + 128) = *(a1 + 48);
  *(*(a1 + 32) + 132) = *(a1 + 40);
  *(*(a1 + 32) + 136) = *(a1 + 44);
  v14 = *(a1 + 32);
  v15 = v14[41];
  [v14 updateBSPState];
  if (v15 > 2)
  {
    if ((v15 == 3 || v15 == 4) && (*(a1 + 48) != 1 || v4 != v6 || v3 != v5))
    {
      goto LABEL_29;
    }
  }

  else if (v15)
  {
    if (v15 == 1 && *(a1 + 48) == 1)
    {
      [*(a1 + 32) sendWiFiStatusToBT];
LABEL_29:
      [*(a1 + 32) sendBTStatusToWiFi];
    }
  }

  else if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) sendWiFiStatusToBT];
  }

  [*(a1 + 32) updateFrequencyBandForBT];
  v16 = *(a1 + 32);
  if (v8)
  {

    return [v16 printStatus:"After BTStatusUpdate"];
  }

  else
  {

    return [v16 printStatus:"After BTStatusUpdate" withLogLevel:3];
  }
}

id sub_10004CF34(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s currentBand=0x%x, targetBand=0x%x", "[WCM_BSPMonitorIOS handleBTBandSwitchRequestEvent:targetBand:]_block_invoke", *(a1 + 40), *(a1 + 44)];
  v2 = *(a1 + 32);
  if ((*(v2 + 128) & 1) == 0)
  {
    return [WCM_Logging logLevel:1 message:@"WCMBSP:%s unexpected event, mBSPState=%d", "[WCM_BSPMonitorIOS handleBTBandSwitchRequestEvent:targetBand:]_block_invoke", *(v2 + 164)];
  }

  [v2 printStatus:"Before BTBandSwitchRequest"];
  v3 = [*(a1 + 32) selectBandWithPreferredBands:*(a1 + 44)];
  v4 = *(a1 + 32);
  if (v3 != *(a1 + 44))
  {
LABEL_6:
    [v4 sendBandSwitchRejectToBT:1 targetBand:?];
    goto LABEL_7;
  }

  v5 = *(a1 + 40);
  if (v4[41] != 4)
  {
    if (v5 != 64)
    {
      [v4 sendSetFrequencyBandToBT:v3];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v4 sendBandSwitchRequestToWiFi:v5 targetBand:v3];
LABEL_7:
  v7 = *(a1 + 32);

  return [v7 printStatus:"After BTBandSwitchRequest"];
}

id sub_10004D0E4(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s countryCode=%@, allowedBands=0x%x", "[WCM_BSPMonitorIOS handleBTRegulatoryInfoEvent:allowedBands:]_block_invoke", *(a1 + 32), *(a1 + 48)];
  [*(a1 + 40) printStatus:"Before BTRegulatoryInfoEvent"];
  v2 = *(a1 + 32);
  if (v2 && [v2 length] && ((objc_msgSend(*(a1 + 32), "hasPrefix:", @"CC:") & 1) != 0 || (objc_msgSend(*(a1 + 32), "hasPrefix:", @"RC:") & 1) != 0 || objc_msgSend(*(a1 + 32), "hasPrefix:", @"LKC:")))
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 144);
    if (v4)
    {
      v5 = [v4 length];
      v3 = *(a1 + 40);
      if (v5)
      {
        if ([*(v3 + 144) hasPrefix:@"CC:"] & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 144), "hasPrefix:", @"RC:") & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 144), "hasPrefix:", @"LKC:"))
        {
          v6 = [*(*(a1 + 40) + 144) isEqualToString:*(a1 + 32)];
          v3 = *(a1 + 40);
          if (v6 && *(v3 + 152) == *(a1 + 48))
          {
            goto LABEL_23;
          }
        }

        else
        {
          v3 = *(a1 + 40);
        }
      }
    }

    v9 = *(v3 + 144);
    if (v9)
    {

      v3 = *(a1 + 40);
    }

    v10 = v3 + 128;
    if (*(v10 + 4) != -1)
    {
      *(v10 + 4) = 0;
    }

    *(*(a1 + 40) + 144) = [NSString stringWithString:*(a1 + 32)];
    *(*(a1 + 40) + 152) = *(a1 + 48);
    [*(a1 + 40) updateBSPState];
    [*(a1 + 40) updateFrequencyBandForBT];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(v7 + 144);
    if (v8)
    {

      *(*(a1 + 40) + 144) = 0;
      v7 = *(a1 + 40);
    }

    *(v7 + 152) = 0;
  }

LABEL_23:
  [*(a1 + 40) checkBTRegulatoryInfo];
  v11 = *(a1 + 40);

  return [v11 printStatus:"After BTRegulatoryInfoEvent"];
}

id sub_10004D370(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WCMBSP:%s", "[WCM_BSPMonitorIOS handleRDCountryCodeChangedEvent]_block_invoke"];
  [*(a1 + 32) printStatus:"Before RDCountryCodeChangedEvent"];
  [*(a1 + 32) readRDCountryCode];
  [*(a1 + 32) checkBTRegulatoryInfo];
  v2 = *(a1 + 32);

  return [v2 printStatus:"After RDCountryCodeChangedEvent"];
}

void sub_100051484(id a1)
{
  v1 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  [v1 evaluateHandover];
}

uint64_t sub_1000524EC(int a1)
{
  if (a1)
  {
    return 2 * (a1 == 1);
  }

  else
  {
    return 1;
  }
}

void sub_100052938()
{
  if (*(v0 - 105) < 0)
  {
    operator delete(*(v0 - 128));
  }

  if (*(v0 - 81) < 0)
  {
    operator delete(*(v0 - 104));
  }

  operator delete();
}

_BYTE *sub_100052980(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10005428C();
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

void sub_100052A50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v4 = a2[2];
  v5[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  [v2 handleDataSystemStatusInd:v5];
  qmi::MessageBase::~MessageBase(v5);
}

void sub_100052AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_100052ABC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v4 = a2[2];
  v5[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  [v2 handleBandwidthEstimationInd:v5];
  qmi::MessageBase::~MessageBase(v5);
}

void sub_100052B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void *sub_100052D00(void *result, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(a2 + 8);
    if (*(a2 + 16) == v2)
    {
      sub_1000542A4();
    }

    v3 = *(result[4] + 32);
    v4 = sub_10007F424(*v2);
    v5 = *v2;
    v6 = sub_10007F448(v2[1]);
    return [WCM_Logging logLevel:22 message:@"QMI.DSD Data System status sim %d: Technology: %s (0x%x), rat value: %s (0x%x), service option mask: %s (0x%lx)", v3, v4, v5, v6, v2[1], sub_10007F5AC(*(v2 + 1)), *(v2 + 1)];
  }

  return result;
}

void sub_100053218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose((v66 - 232), 8);
  _Block_object_dispose((v66 - 200), 8);
  _Block_object_dispose((v66 - 168), 8);
  _Block_object_dispose((v66 - 136), 8);
  _Unwind_Resume(a1);
}

id sub_100053260(void *a1, _DWORD *a2)
{
  *(*(a1[4] + 8) + 24) = 1;
  *(*(a1[5] + 8) + 24) = *a2;
  return [WCM_Logging logLevel:22 message:@"QMI.DSD.%u 5G TAC %u", *(*(a1[6] + 8) + 24), *(*(a1[5] + 8) + 24)];
}

id sub_1000532D0(uint64_t a1, unsigned int *a2)
{
  *(*(*(a1 + 56) + 8) + 24) = a2[1];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u RAT Info: %s, MCC %u, MNC %u, TAC %u, cell_id %llu", *(*(*(a1 + 56) + 8) + 24), sub_10007FC54(*a2), a2[2], a2[3], *(a2 + 8), *(a2 + 3)];
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = *(a2 + 8);
    [WCM_Logging logLevel:22 message:@"QMI.DSD.%u using non-5g TAC %u", *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 72) + 8) + 24)];
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 3);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (*(v4 + 48) == v5)
    {
      goto LABEL_9;
    }

    v6 = 48;
  }

  else
  {
    if (*(v4 + 40) == v5)
    {
      goto LABEL_9;
    }

    v6 = 40;
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
  *(*(a1 + 32) + v6) = v5;
LABEL_9:
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v7 = [NSString stringWithFormat:@"%u.%u.%u.%llu", a2[2], a2[3], *(*(*(a1 + 72) + 8) + 24), *(a2 + 3)];
    v8 = [NSString stringWithFormat:@"%u.%u", a2[2], a2[3]];
    [WCM_Logging logLevel:22 message:@"QMI.DSD.%u GCI: %@", *(*(*(a1 + 56) + 8) + 24), v7];
    [*(a1 + 40) updateGlobalCellID:*(*(*(a1 + 56) + 8) + 24) gci:v7 cellprefix:{-[NSString length](v8, "length")}];
  }

  v9 = *a2;
  if (v9 >= 8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x101000101010000uLL >> (8 * v9);
  }

  *(*(*(a1 + 88) + 8) + 24) = v10;
  v11 = *a2;
  if (*a2 > 4)
  {
    if (v11 - 6 >= 2)
    {
      if (v11 == 5)
      {
        v12 = 4;
        goto LABEL_23;
      }

LABEL_32:
      v13 = 0;
      v12 = 0;
      goto LABEL_24;
    }

LABEL_20:
    v12 = 3;
    goto LABEL_23;
  }

  if (v11 == 2)
  {
    goto LABEL_20;
  }

  if (v11 == 3)
  {
    v13 = 1;
    v12 = 1;
    goto LABEL_24;
  }

  if (v11 != 4)
  {
    goto LABEL_32;
  }

  v12 = 2;
LABEL_23:
  v13 = 1;
LABEL_24:
  result = [WCM_Logging logLevel:22 message:@"updateCurrentRatInfo %d, Cell Changed %d, nrCellType: %d", *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 80) + 8) + 24), v12];
  if ((v13 & 1) != 0 || *(*(*(a1 + 80) + 8) + 24))
  {
    [WCM_Logging logLevel:22 message:@"Callling updateCurrentRatInfo %d, Cell Changed %d, nrCellType: %d", *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 80) + 8) + 24), v12];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v15 = 2 * (*(*(*(a1 + 56) + 8) + 24) == 1);
    }

    else
    {
      v15 = 1;
    }

    [*(a1 + 40) updateCurrentRatInfo:v15 currentNRCell:v12];
    v16 = *(a1 + 48);

    return [v16 evaluateWiFiVersusCell];
  }

  return result;
}

id sub_100053628(uint64_t a1, unsigned int *a2)
{
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Configured Uplink Throughput: %ukbps", *(*(*(a1 + 40) + 8) + 24), *a2];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Configured Downlink Throughput: %ukbps", *(*(*(a1 + 40) + 8) + 24), a2[1]];
  v4 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = 2 * (*(*(*(a1 + 40) + 8) + 24) == 1);
  }

  else
  {
    v5 = 1;
  }

  v7 = *a2;
  v6 = a2[1];

  return [v4 updateConfiguredMaxBW:v5 dlbw:v6 ulbw:v7];
}

id sub_1000536E4(uint64_t a1, unsigned int *a2)
{
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Downlink Allowed Rate: %ukbps", *(*(*(a1 + 48) + 8) + 24), *a2];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Downlink Confidence Level: %u", *(*(*(a1 + 48) + 8) + 24), *(a2 + 4)];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Downlink Split LTE: %u%", *(*(*(a1 + 48) + 8) + 24), *(a2 + 5)];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Downlink Split 5G: %u%", *(*(*(a1 + 48) + 8) + 24), *(a2 + 6)];
  [*(a1 + 32) updateDownlinkEstimatedBW:(*(*(*(a1 + 48) + 8) + 24) + 1) bw:*a2 conf:*(a2 + 4) lte:*(a2 + 5) nr:*(a2 + 6)];
  [*(a1 + 40) forceActiveModeEval:1];
  [*(a1 + 40) evaluateWiFiVersusCell];
  v4 = *(a1 + 40);

  return [v4 forceActiveModeEval:0];
}

id sub_100053814(uint64_t a1, unsigned int *a2)
{
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Uplink Allowed Rate: %ukbps", *(*(*(a1 + 48) + 8) + 24), *a2];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Uplink Confidence Level: %u", *(*(*(a1 + 48) + 8) + 24), *(a2 + 4)];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Uplink Queue Size: %u%", *(*(*(a1 + 48) + 8) + 24), *(a2 + 5)];
  [*(a1 + 32) updateUplinkEstimatedBW:(*(*(*(a1 + 48) + 8) + 24) + 1) bw:*a2 conf:*(a2 + 4) queue:*(a2 + 5)];
  [*(a1 + 40) forceActiveModeEval:1];
  [*(a1 + 40) evaluateWiFiVersusCell];
  v4 = *(a1 + 40);

  return [v4 forceActiveModeEval:0];
}

id sub_100053918(uint64_t a1, unsigned __int8 *a2)
{
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Max UE Rank: %u", *(*(*(a1 + 48) + 8) + 24), *a2];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Max Network MIMO Layer: %u", *(*(*(a1 + 48) + 8) + 24), a2[1]];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Max Scheduled MIMO Layer: %u%", *(*(*(a1 + 48) + 8) + 24), a2[2]];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Max Downlink Modulation Scheme: %s", *(*(*(a1 + 48) + 8) + 24), sub_10007FC78(*(a2 + 1))];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Max Uplink Modulation Scheme: %s", *(*(*(a1 + 48) + 8) + 24), sub_10007FC78(*(a2 + 2))];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Total Downlink MIMO Layers: %u", *(*(*(a1 + 48) + 8) + 24), a2[12]];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Total Num of Component Carriers: %u", *(*(*(a1 + 48) + 8) + 24), a2[13]];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Downlink Bandwidth: %umHz", *(*(*(a1 + 48) + 8) + 24), *(a2 + 4)];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u Uplink Bandwidth %umHz", *(*(*(a1 + 48) + 8) + 24), *(a2 + 5)];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u 5G Neighbor Cell RAT: %s", *(*(*(a1 + 48) + 8) + 24), sub_10007FC9C(*(a2 + 6))];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u RSRP: %d", *(*(*(a1 + 48) + 8) + 24), *(a2 + 14)];
  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u SINR 10xDB: %u", *(*(*(a1 + 48) + 8) + 24), a2[30]];
  v4 = *(a2 + 4);
  v5 = [*(a1 + 32) getWRMCellOutrankWifiBWThreshold];
  v6 = *(a2 + 6);
  if (v6 > 3)
  {
    if (v6 == 5)
    {
      v7 = 0;
      v8 = 0;
      v10 = 4;
    }

    else
    {
      if (v6 != 4)
      {
LABEL_8:
        v9 = 0;
        v7 = 0;
        v10 = 0;
        v8 = 1;
        goto LABEL_12;
      }

      v7 = 0;
      v8 = 0;
      v10 = 2;
    }

    v9 = 1;
    goto LABEL_12;
  }

  if (v6 == 2)
  {
    v8 = 0;
    v10 = 3;
    v9 = 1;
    v7 = 1;
    goto LABEL_12;
  }

  if (v6 != 3)
  {
    goto LABEL_8;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  v10 = 1;
LABEL_12:
  [WCM_Logging logLevel:22 message:@"updateConnectedStateSummary %d, Cell Changed %d, nrCellType: %d", *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 24), v10];
  v11 = *(*(*(a1 + 56) + 8) + 24);
  if ((v9 & 1) != 0 || *(*(*(a1 + 56) + 8) + 24))
  {
    [WCM_Logging logLevel:22 message:@"Calling updateConnectedStateSummary %d, Cell Changed %d, nrCellType: %d", *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 56) + 8) + 24), v10];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v12 = 2 * (*(*(*(a1 + 48) + 8) + 24) == 1);
    }

    else
    {
      v12 = 1;
    }

    [*(a1 + 32) updateConnectedStateSummary:v12 neighberNRCell:v10 highrateIndicator:v4 >= v5];
    [*(a1 + 40) evaluateWiFiVersusCell];
    v11 = *(*(*(a1 + 56) + 8) + 24);
  }

  if ((v7 | v8) & 1) != 0 || (v11)
  {
    v13 = v4 >= v5;
    [WCM_Logging logLevel:22 message:@"Calling updateHighRateLikely %d, Cell Changed %d, nrCellType: %d", *(*(*(a1 + 48) + 8) + 24), v11, v10];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v14 = 2 * (*(*(*(a1 + 48) + 8) + 24) == 1);
    }

    else
    {
      v14 = 1;
    }

    [*(a1 + 32) updateHighRateLikely:v14 highrateIndicator:v13];
  }

  v15 = +[WRM_BWEvalManager WRM_BWEvalManagerSingleton];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v16 = *(a2 + 4);
    v17 = a2[2];
    v18 = *(a2 + 1);

    return [v15 updateNRQSHMetrics:v16 :v17 :v18];
  }

  else
  {
    [v15 updateQSHMetrics:a2[13] :*(a2 + 4) :a2[12] :a2[2]];
    v20 = *(a1 + 32);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v21 = 2 * (*(*(*(a1 + 48) + 8) + 24) == 1);
    }

    else
    {
      v21 = 1;
    }

    v22 = *(a2 + 4);

    return [v20 updateLTEBandwidth:v21 LTEBW:v22];
  }
}

id sub_100053DC0(uint64_t a1, unsigned __int8 *a2)
{
  [*(a1 + 32) updateDataStallState:*(*(*(a1 + 48) + 8) + 24) + 1 stall:*a2];
  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (*a2)
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  [WCM_Logging logLevel:22 message:@"QMI.DSD.%u isCongested: %s", *(*(*(a1 + 48) + 8) + 24), v5];
  v6 = *(a1 + 40);

  return [v6 evaluateWiFiVersusCell];
}

void sub_100053F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_100054008(&a9);
  qmi::MutableMessageBase::~MutableMessageBase(&a14);
  _Unwind_Resume(a1);
}

void sub_100053F88(id a1, const void *a2)
{
  if (*(a2 + 1))
  {
    [WCM_Logging logLevel:22 message:@"QMI.DSD dsd::RegisterIndication::Response failed: %s", qmi::asString()];
  }

  else
  {

    [WCM_Logging logLevel:22 message:@"QMI.DSD dsd::RegisterIndication::Response success"];
  }
}

uint64_t *sub_100054008(uint64_t *a1)
{
  if (a1[1])
  {
    v2 = *a1;
    qmi::Client::send();
  }

  v3 = a1[4];
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void sub_1000541C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_100054008(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

id sub_100054200(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    return [WCM_Logging logLevel:22 message:@"QMI.DSD bindQMIClientToSlotType failed: %s", qmi::asString()];
  }

  [WCM_Logging logLevel:22 message:@"QMI.DSD bindQMIClientToSlotType success"];
  v4 = *(a1 + 32);

  return [v4 sendRegisterIndicationRequest];
}

void sub_1000542BC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100054318(exception, a1);
}

std::logic_error *sub_100054318(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10005434C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000543B0(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_10005439C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000543B0(uint64_t a1@<X0>, qmi::MessageBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000544A8(a2, __p, v6 - __p);
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

    sub_100054464(a2);
  }
}

void sub_100054448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100054464(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x26u);
  return a1;
}

qmi::MessageBase *sub_1000544A8(qmi::MessageBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::MessageBase::MessageBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x26u);
  return a1;
}

void sub_1000544EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100054550(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_10005453C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_100054550(uint64_t a1@<X0>, qmi::MessageBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_100054648(a2, __p, v6 - __p);
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

    sub_100054604(a2);
  }
}

void sub_1000545E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100054604(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x5551u);
  return a1;
}

qmi::MessageBase *sub_100054648(qmi::MessageBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::MessageBase::MessageBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x5551u);
  return a1;
}

uint64_t sub_10005468C(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_100054730(a1, result, v7, a3))
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

BOOL sub_100054730(uint64_t a1, tlv *a2, int a3, unint64_t a4)
{
  v10 = a2;
  sub_1000AD5D0(&v10, a3, a4, v7);
  v5 = v10;
  if (v10)
  {
    (*(*a4 + 16))();
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5 != 0;
}

void sub_1000547A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000547BC(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_100054860(a1, result, v7, a3))
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

BOOL sub_100054860(uint64_t a1, tlv *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  sub_1000ADA54(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

uint64_t sub_1000548C0(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_100054964(a1, result, v7, a3))
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

BOOL sub_100054964(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v8 = a2;
  sub_1000ACE14(&v8, a3, a4, v7);
  v5 = v8;
  if (v8)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

uint64_t sub_1000549C4(qmi::MessageBase *a1, uint64_t a2, void *a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_100054A68(a1, result, v7, a3))
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

BOOL sub_100054A68(uint64_t a1, tlv *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  sub_1000ACEC0(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))(*a4);
  }

  return v5 != 0;
}

uint64_t sub_100054AC8(qmi::MessageBase *a1, uint64_t a2, void *a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_100054B6C(a1, result, v7, a3))
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

BOOL sub_100054B6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a2;
  sub_1000ACFF8(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))(*a4);
  }

  return v5 != 0;
}

uint64_t sub_100054BDC(qmi::MessageBase *a1, uint64_t a2, void *a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_100054C80(a1, result, v7, a3))
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

BOOL sub_100054C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a2;
  sub_1000AD11C(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))(*a4);
  }

  return v5 != 0;
}

uint64_t sub_100054CE8(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_100054D8C(a1, result, v7, a3))
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

BOOL sub_100054D8C(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v8 = a2;
  sub_1000AD358(&v8, a3, a4, v7);
  v5 = v8;
  if (v8)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

uint64_t sub_100054DEC(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_100054E90(a1, result, v7, a3))
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

BOOL sub_100054E90(uint64_t a1, tlv *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  sub_1000AD3FC(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

char *sub_100054EF0(uint64_t a1, int a2)
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

    sub_100054FA0();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_100055040(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

void sub_1000550F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10005515C(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_100055148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_10005515C(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_100055254(a2, __p, v6 - __p);
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

    sub_100055210(a2);
  }
}

void sub_1000551F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100055210(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x38u);
  return a1;
}

qmi::ResponseBase *sub_100055254(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x38u);
  return a1;
}

char *sub_100055298(uint64_t a1, int a2)
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

    sub_100055348();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 12;
}

_DWORD **sub_1000553E8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000AC6A4(a2, (a1 + 12));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

void sub_1000554A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10005550C(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000554F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_10005550C(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_100055604(a2, __p, v6 - __p);
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

    sub_1000555C0(a2);
  }
}

void sub_1000555A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000555C0(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x27u);
  return a1;
}

qmi::ResponseBase *sub_100055604(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x27u);
  return a1;
}

void sub_1000558BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000558DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    [WeakRetained[1] refresh];
    [WCM_Logging logLevel:25 message:@"trial mRLHandoverPolicyEnabled refreshed"];
    v3 = [*(*(a1 + 32) + 8) experimentIdentifiersWithNamespaceName:@"TELEPHONY_WIFI_CELLULAR_HANDOVER_POLICY"];
    v4 = v10[3];
    v10[3] = v3;

    v5 = [v10[1] levelForFactor:@"RLHandoverPolicyEnabled" withNamespaceName:@"TELEPHONY_WIFI_CELLULAR_HANDOVER_POLICY"];
    v6 = v5;
    if (v5)
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 25, @"trial mRLHandoverPolicyEnabled value updated from %d to %d", *(v10 + 16), [v5 BOOLeanValue]);
      v7 = [v10[3] experimentId];
      v8 = [v10[3] deploymentId];
      v9 = [v10[3] treatmentId];
      [WCM_Logging logLevel:25 message:@"trial trialExperimentId=%@, deployID=%d, treatmentID=%@", v7, v8, v9];

      *(v10 + 16) = [v6 BOOLeanValue];
    }

    WeakRetained = v10;
  }
}

uint64_t sub_100055A48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100055C6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    [WCM_Logging logLevel:22 message:@"DataStoreManager: persistentContainer not initiated."];

    objc_end_catch();
    JUMPOUT(0x100055B78);
  }

  _Unwind_Resume(exception_object);
}

void sub_100055CCC(id a1, NSPersistentStoreDescription *a2, NSError *a3)
{
  if (a3)
  {
    v4 = a2;
    v7 = [(NSError *)a3 description];
    v5 = [(NSPersistentStoreDescription *)v4 URL];

    v6 = [v5 absoluteString];
    [WCM_Logging logLevel:22 message:@"DataStoreManager: persistentContainer not created %@ %@", v7, v6];
  }
}

int64_t sub_100057828(id a1, FreqRangeInfo *a2, FreqRangeInfo *a3)
{
  v4 = a3;
  v5 = [(FreqRangeInfo *)a2 FreqStart];
  v6 = [(FreqRangeInfo *)v4 FreqStart];

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_1000578E0(id a1, FreqRangeInfo *a2, FreqRangeInfo *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(FreqRangeInfo *)v5 Priority];
  if (v6 == [(FreqRangeInfo *)v4 Priority])
  {
    v7 = [(FreqRangeInfo *)v5 FreqStart];

    if (v7 > [(FreqRangeInfo *)v4 FreqStart])
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v9 = [(FreqRangeInfo *)v5 Priority];

    if (v9 < [(FreqRangeInfo *)v4 Priority])
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

id sub_10005A070(uint64_t a1)
{
  result = [*(a1 + 32) sacCreateRawFreqList:*(a1 + 40) bufferSize:64 buffer:v5];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    return TelephonyBasebandRemoveFreqListExt();
  }

  return result;
}

id sub_10005A0F0(uint64_t a1)
{
  result = [*(a1 + 32) sacCreateRawFreqList:*(a1 + 40) bufferSize:64 buffer:v5];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    return TelephonyBasebandRemoveFreqListExt();
  }

  return result;
}

id sub_10005A170(uint64_t a1)
{
  result = [*(a1 + 32) sacCreateRawFreqList:*(a1 + 40) bufferSize:64 buffer:v5];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    return TelephonyBasebandAddFreqListExt();
  }

  return result;
}

id sub_10005A5E0(uint64_t a1)
{
  result = [*(a1 + 32) sacCreateRawFreqList:*(a1 + 40) bufferSize:64 buffer:v5];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    return TelephonyBasebandRemoveFreqListExt();
  }

  return result;
}

id sub_10005A660(uint64_t a1)
{
  result = [*(a1 + 32) sacCreateRawFreqList:*(a1 + 40) bufferSize:64 buffer:v5];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    return TelephonyBasebandAddFreqListExt();
  }

  return result;
}

id sub_10005AAE8(uint64_t a1)
{
  result = [*(a1 + 32) sacCreateRawFreqList:*(a1 + 40) bufferSize:64 buffer:v5];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    return TelephonyBasebandRemoveFreqListExt();
  }

  return result;
}

id sub_10005AB68(uint64_t a1)
{
  result = [*(a1 + 32) sacCreateRawFreqList:*(a1 + 40) bufferSize:64 buffer:v5];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    return TelephonyBasebandAddFreqListExt();
  }

  return result;
}

uint64_t sub_10005BA3C(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = [off_1002B76C8 objectForKeyedSubscript:v1];

  if (!v2)
  {
    [WCM_Logging logLevel:0 message:@"RC1 channel type %@ is not defined", v1];
LABEL_5:
    v4 = 1024;
    goto LABEL_6;
  }

  v3 = [off_1002B76C8 objectForKeyedSubscript:v1];
  v4 = [v3 intValue];

LABEL_6:
  return v4;
}

void sub_10005DF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AriSdk::ARI_IBICallPsStartBandwidthEstimationReq_SDK::~ARI_IBICallPsStartBandwidthEstimationReq_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005DF6C(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK(v5, a2, a3);
  if (ice::isARIResponseValid(v5, 0xD228000, v3))
  {
    if (AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK::unpack(v5))
    {
      v4 = @"ICE ERROR: Unpack IBICallPsStartBandwidthEstimationRspCb";
    }

    else
    {
      v4 = @"ICE Rsp OK: IBICallPsStartBandwidthEstimationRspCb";
    }

    [WCM_Logging logLevel:22 message:v4];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsStartBandwidthEstimationRspCb"];
  }

  AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK::~ARI_IBICallPsStartBandwidthEstimationRspCb_SDK(v5);
}

void sub_10005E004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AriSdk::ARI_IBICallPsStartBandwidthEstimationRspCb_SDK::~ARI_IBICallPsStartBandwidthEstimationRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AriSdk::ARI_IBICallPsStopBandwidthEstimationReq_SDK::~ARI_IBICallPsStopBandwidthEstimationReq_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E11C(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK(v5, a2, a3);
  if (ice::isARIResponseValid(v5, 0xD230000, v3))
  {
    if (AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK::unpack(v5))
    {
      v4 = @"ICE ERROR: Unpack IBICallPsStopBandwidthEstimationRspCb";
    }

    else
    {
      v4 = @"ICE Rsp OK: IBICallPsStopBandwidthEstimationRspCb";
    }

    [WCM_Logging logLevel:22 message:v4];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsStopBandwidthEstimationRspCb"];
  }

  AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK::~ARI_IBICallPsStopBandwidthEstimationRspCb_SDK(v5);
}

void sub_10005E1B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  AriSdk::ARI_IBICallPsStopBandwidthEstimationRspCb_SDK::~ARI_IBICallPsStopBandwidthEstimationRspCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::~ARI_IBICallPsWrmSdmInfoReq_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E2C0(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7, a2, a3);
  if (ice::isARIResponseValid(v7, 0xD250000, v3))
  {
    v4 = AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::unpack(v7);
    v5 = asString();
    if (v4)
    {
      v6 = @"ICE ERROR: Unpack IBICallPsWrmSdmInfoRsp_V2 in notifyBBLockState:  %s (%u)";
    }

    else
    {
      v6 = @"ICE Rsp OK: IBICallPsWrmSdmInfoRsp_V2 in notifyBBLockState:  %s (%u)";
    }

    [WCM_Logging logLevel:22 message:v6, v5, v4];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSdmInfoRsp_V2 in notifyBBLockState"];
  }

  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7);
}

void sub_10005E36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::~ARI_IBICallPsWrmSdmInfoReq_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E4AC(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7, a2, a3);
  if (ice::isARIResponseValid(v7, 0xD250000, v3))
  {
    v4 = AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::unpack(v7);
    v5 = asString();
    if (v4)
    {
      v6 = @"ICE ERROR: Unpack IBICallPsWrmSdmInfoRsp_V2 in notifyBBCallState:  %s (%u)";
    }

    else
    {
      v6 = @"ICE Rsp OK: IBICallPsWrmSdmInfoRsp_V2 in notifyBBCallState:  %s (%u)";
    }

    [WCM_Logging logLevel:22 message:v6, v5, v4];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSdmInfoRsp_V2 in notifyBBCallState"];
  }

  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7);
}

void sub_10005E558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::~ARI_IBICallPsWrmSdmInfoReq_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E6F4(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7, a2, a3);
  if (ice::isARIResponseValid(v7, 0xD250000, v3))
  {
    v4 = AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::unpack(v7);
    v5 = asString();
    if (v4)
    {
      v6 = @"ICE ERROR: Unpack IBICallPsWrmSdmInfoRsp_V2 in notifyAVStatus:  %s (%u)";
    }

    else
    {
      v6 = @"ICE Rsp OK: IBICallPsWrmSdmInfoRsp_V2 in notifyAVStatus:  %s (%u)";
    }

    [WCM_Logging logLevel:22 message:v6, v5, v4];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSdmInfoRsp_V2 in notifyAVStatus"];
  }

  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7);
}

void sub_10005E7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::~ARI_IBICallPsWrmSdmInfoReq_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005E8B0(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7, a2, a3);
  if (ice::isARIResponseValid(v7, 0xD250000, v3))
  {
    v4 = AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::unpack(v7);
    v5 = asString();
    if (v4)
    {
      v6 = @"ICE ERROR: Unpack IBICallPsWrmSdmInfoRsp_V2 in notifyFTDupelicationState:  %s (%u)";
    }

    else
    {
      v6 = @"ICE Rsp OK: IBICallPsWrmSdmInfoRsp_V2 in notifyFTDupelicationState:  %s (%u)";
    }

    [WCM_Logging logLevel:22 message:v6, v5, v4];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSdmInfoRsp_V2 in notifyFTDupelicationState"];
  }

  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7);
}

void sub_10005E95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005EA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AriSdk::ARI_IBICallPsWrmSdmInfoReq_V2_SDK::~ARI_IBICallPsWrmSdmInfoReq_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005EA6C(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7, a2, a3);
  if (ice::isARIResponseValid(v7, 0xD250000, v3))
  {
    v4 = AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::unpack(v7);
    v5 = asString();
    if (v4)
    {
      v6 = @"ICE ERROR: Unpack IBICallPsWrmSdmInfoRsp_V2 in notifyStreamingEBHState:  %s (%u)";
    }

    else
    {
      v6 = @"ICE Rsp OK: IBICallPsWrmSdmInfoRsp_V2 in notifyStreamingEBHState:  %s (%u)";
    }

    [WCM_Logging logLevel:22 message:v6, v5, v4];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSdmInfoRsp_V2 in notifyStreamingEBHState"];
  }

  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(v7);
}

void sub_10005EB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AriSdk::ARI_IBICallPsWrmSdmInfoRsp_V2_SDK::~ARI_IBICallPsWrmSdmInfoRsp_V2_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005EC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  AriSdk::ARI_IBICallPsWrmSAInfoReq_SDK::~ARI_IBICallPsWrmSAInfoReq_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005ECA4(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK::ARI_IBICallPsWrmSAInfoRsp_SDK(v7, a2, a3);
  if (ice::isARIResponseValid(v7, 0xD240000, v3))
  {
    v4 = AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK::unpack(v7);
    v5 = asString();
    if (v4)
    {
      v6 = @"ICE ERROR: Unpack IBICallPsWrmSAInfoRsp in setBBSAState:  %s (%u)";
    }

    else
    {
      v6 = @"ICE Rsp OK: IBICallPsWrmSAInfoRsp in setBBSAState:  %s (%u)";
    }

    [WCM_Logging logLevel:22 message:v6, v5, v4];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSAInfoRsp in setBBSAState"];
  }

  AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK::~ARI_IBICallPsWrmSAInfoRsp_SDK(v7);
}

void sub_10005ED50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AriSdk::ARI_IBICallPsWrmSAInfoRsp_SDK::~ARI_IBICallPsWrmSAInfoRsp_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005F0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  AriSdk::ARI_IBINetRadioSignalIndCb_SDK::~ARI_IBINetRadioSignalIndCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005F9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  AriSdk::ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK::~ARI_IBICallPsWrmSdmLocationDBFetchInfoIndCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005FB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegIndCb_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005FD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegReq_SDK(va);
  _Unwind_Resume(a1);
}

void sub_10005FDA8(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK(v6, a2, a3);
  if (ice::isARIResponseValid(v6, 0xD260000, v3))
  {
    if (AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK::unpack(v6))
    {
      [WCM_Logging logLevel:22 message:@"ICE ERROR: Unpack IBICallPsWrmSdmLocationDBInfoRegRsp"];
    }

    else
    {
      v4 = *v8;
      [WCM_Logging logLevel:22 message:@"ICE Rsp OK: IBICallPsWrmSdmLocationDBInfoRegRsp:: locationDbRequired = %d", *v8 != 0];
      v5 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
      [v5 updateWrmSdmLocationDbInfoRegister:v4 != 0 forSim:sub_1000524EC(*v7)];
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSdmLocationDBInfoRegRsp"];
  }

  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK(v6);
}

void sub_10005FE94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRegRsp_SDK(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_10005FFA0(_DWORD *result)
{
  v1 = result[13];
  v2 = result[12] << 10;
  v4 = result[14];
  v3 = result[15];
  v5 = *(result + 68);
  v6 = result[16];
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v16 = *(result + 4);
      v17 = v16[13];
      v18 = v16[14];
      if (v18 == v17)
      {
        v22 = v16[15];
        if (v18 >= v22)
        {
          v35 = 0xCCCCCCCCCCCCCCCDLL * (v18 - v17);
          v36 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v17) >> 2);
          if (2 * v36 <= v35 + 1)
          {
            v37 = v35 + 1;
          }

          else
          {
            v37 = 2 * v36;
          }

          if (v36 >= 0x666666666666666)
          {
            v38 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v38 = v37;
          }

          sub_100060B10((v16 + 13), v38);
        }

        *v18 = v2;
        v18[1] = v1;
        v18[2] = v4;
        v18[3] = v3;
        v18[4] = v5;
        v16[14] = v18 + 5;
      }

      else
      {
        return [WCM_Logging logLevel:22 message:@"IBI simSlot %d: setWrmSdmLocationDbPushOneEntryForCellType LTENSA entry exceeds max limit", *(result + 5)];
      }
    }

    else
    {
      if (v6 != 5)
      {
        return [WCM_Logging logLevel:22 message:@"IBI simSlot %d: setLocationDbInfoPushOneEntryForCellType ERROR: invalid CellType, has to be CellTypeLTE, CellType5GSA, or CellType5GNSA", *(result + 5)];
      }

      v10 = *(result + 4);
      v11 = v10[19];
      v12 = v10[20];
      if (v12 == v11)
      {
        v20 = v10[21];
        if (v12 >= v20)
        {
          v27 = 0xCCCCCCCCCCCCCCCDLL * (v12 - v11);
          v28 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v11) >> 2);
          if (2 * v28 <= v27 + 1)
          {
            v29 = v27 + 1;
          }

          else
          {
            v29 = 2 * v28;
          }

          if (v28 >= 0x666666666666666)
          {
            v30 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v30 = v29;
          }

          sub_100060B10((v10 + 19), v30);
        }

        *v12 = v2;
        v12[1] = v1;
        v12[2] = v4;
        v12[3] = v3;
        v12[4] = v5;
        v10[20] = v12 + 5;
      }

      else
      {
        return [WCM_Logging logLevel:22 message:@"IBI simSlot %d: setWrmSdmLocationDbPushOneEntryForCellType SADC entry exceeds max limit", *(result + 5)];
      }
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 3)
      {
        v7 = *(result + 4);
        v8 = v7[16];
        v9 = v7[17];
        if (v9 != v8)
        {
          return [WCM_Logging logLevel:22 message:@"IBI simSlot %d: setWrmSdmLocationDbPushOneEntryForCellType SA entry exceeds max limit", *(result + 5)];
        }

        v19 = v7[18];
        if (v9 >= v19)
        {
          v23 = 0xCCCCCCCCCCCCCCCDLL * (v9 - v8);
          v24 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v8) >> 2);
          if (2 * v24 <= v23 + 1)
          {
            v25 = v23 + 1;
          }

          else
          {
            v25 = 2 * v24;
          }

          if (v24 >= 0x666666666666666)
          {
            v26 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v26 = v25;
          }

          sub_100060B10((v7 + 16), v26);
        }

        *v9 = v2;
        v9[1] = v1;
        v9[2] = v4;
        v9[3] = v3;
        v9[4] = v5;
        v7[17] = v9 + 5;
        return result;
      }

      return [WCM_Logging logLevel:22 message:@"IBI simSlot %d: setLocationDbInfoPushOneEntryForCellType ERROR: invalid CellType, has to be CellTypeLTE, CellType5GSA, or CellType5GNSA", *(result + 5)];
    }

    v13 = *(result + 4);
    v14 = v13[10];
    v15 = v13[11];
    if (v15 == v14)
    {
      v21 = v13[12];
      if (v15 >= v21)
      {
        v31 = 0xCCCCCCCCCCCCCCCDLL * (v15 - v14);
        v32 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v14) >> 2);
        if (2 * v32 <= v31 + 1)
        {
          v33 = v31 + 1;
        }

        else
        {
          v33 = 2 * v32;
        }

        if (v32 >= 0x666666666666666)
        {
          v34 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v34 = v33;
        }

        sub_100060B10((v13 + 10), v34);
      }

      *v15 = v2;
      v15[1] = v1;
      v15[2] = v4;
      v15[3] = v3;
      v15[4] = v5;
      v13[11] = v15 + 5;
    }

    else
    {
      return [WCM_Logging logLevel:22 message:@"IBI simSlot %d: setWrmSdmLocationDbPushOneEntryForCellType LTE entry exceeds max limit", *(result + 5)];
    }
  }

  return result;
}

void sub_1000604CC(uint64_t a1)
{
  *(*(a1 + 32) + 56) = *(a1 + 64);
  *(*(a1 + 32) + 60) = *(a1 + 56);
  *(*(a1 + 32) + 64) = *(a1 + 60);
  *(*(a1 + 32) + 72) = *(a1 + 40);
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK(v3);
  LODWORD(v2) = sub_100087E60(*(a1 + 48));
  sub_10001B2B0();
}

void sub_100060958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoReq_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100060990(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK(v7, a2, a3);
  if (ice::isARIResponseValid(v7, 0xD258000, v3))
  {
    v4 = AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK::unpack(v7);
    v5 = asString();
    if (v4)
    {
      v6 = @"ICE ERROR: Unpack IBICallPsWrmSdmLocationDBInfoRsp in sendWrmSdmLocationDbInfo:  %s (%u)";
    }

    else
    {
      v6 = @"ICE Rsp OK: IBICallPsWrmSdmLocationDBInfoRsp in sendWrmSdmLocationDbInfo:  %s (%u)";
    }

    [WCM_Logging logLevel:22 message:v6, v5, v4];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"ICE ERROR: Invalid IBICallPsWrmSdmLocationDBInfoRsp in sendWrmSdmLocationDbInfo"];
  }

  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK(v7);
}

void sub_100060A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AriSdk::ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK::~ARI_IBICallPsWrmSdmLocationDBInfoRsp_SDK(va);
  _Unwind_Resume(a1);
}

void sub_100060B10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_100049E98();
}

__n128 sub_100060B64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, __n128 result)
{
LABEL_1:
  v12 = a2;
LABEL_2:
  a2 = v12;
  while (1)
  {
    v13 = a2 - a4;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a4) >> 2);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a4 + 8) < *(a2 - 12))
        {
          v238 = *(a2 - 4);
          v222 = *(a2 - 20);
          v136 = *a4;
          *(a2 - 4) = *(a4 + 16);
          *(a2 - 20) = v136;
LABEL_115:
          result = v222;
          *a4 = v222;
          *(a4 + 16) = v238;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v127 = (a2 - 20);
      v128 = (a2 - 40);
      v129 = *(a2 - 32);
      if (v129 >= *(a2 - 12))
      {
        if (*(a2 - 52) < v129)
        {
          v188 = *(a2 - 24);
          result = *v128;
          v189 = *(a2 - 44);
          *(a2 - 40) = *(a2 - 60);
          *(a2 - 24) = v189;
          *(a2 - 60) = result;
          *(a2 - 44) = v188;
          if (*(a2 - 32) < *(a2 - 12))
          {
            v240 = *(a2 - 4);
            v224 = *v127;
            v190 = *v128;
            *(a2 - 4) = *(a2 - 24);
            *v127 = v190;
            result = v224;
            *v128 = v224;
            *(a2 - 24) = v240;
          }
        }
      }

      else
      {
        v130 = (a2 - 60);
        if (*(a2 - 52) < v129)
        {
          v237 = *(a2 - 4);
          v221 = *v127;
          v131 = *v130;
          *(a2 - 4) = *(a2 - 44);
          *v127 = v131;
          result = v221;
          *v130 = v221;
          v132 = v237;
          goto LABEL_186;
        }

        v241 = *(a2 - 4);
        v225 = *v127;
        v201 = *v128;
        *(a2 - 4) = *(a2 - 24);
        *v127 = v201;
        result = v225;
        *v128 = v225;
        *(a2 - 24) = v241;
        if (*(a2 - 52) < *(a2 - 32))
        {
          v132 = *(a2 - 24);
          result = *v128;
          v202 = *(a2 - 44);
          *v128 = *v130;
          *(a2 - 24) = v202;
          *v130 = result;
LABEL_186:
          *(a2 - 44) = v132;
        }
      }

      if (*(a4 + 8) >= *(a2 - 52))
      {
        return result;
      }

      v203 = (a2 - 60);
      v204 = *(a2 - 44);
      result = *(a2 - 60);
      v205 = *(a4 + 16);
      *v203 = *a4;
      v203[1].n128_u32[0] = v205;
      *a4 = result;
      *(a4 + 16) = v204;
      if (*(a2 - 52) >= *(a2 - 32))
      {
        return result;
      }

      v206 = *(a2 - 24);
      result = *v128;
      v207 = *(a2 - 44);
      *v128 = *v203;
      *(a2 - 24) = v207;
      *v203 = result;
      *(a2 - 44) = v206;
LABEL_190:
      if (*(a2 - 32) < *(a2 - 12))
      {
        v242 = v127[1].n128_u32[0];
        v226 = *v127;
        v208 = *v128;
        v127[1].n128_u32[0] = v128[1].n128_u32[0];
        *v127 = v208;
        result = v226;
        *v128 = v226;
        v128[1].n128_u32[0] = v242;
      }

      return result;
    }

    if (v14 == 5)
    {
      result.n128_u64[0] = sub_100061AC8(result, a1, a2, a2 - 20, a2 - 20, a2 - 40, a2 - 40, a2 - 60, a2 - 60, a3, a4 + 20).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v13 <= 479)
    {
      if (a6)
      {
        if (a2 != a4)
        {
          v137 = a2 - 20;
          if (a2 - 20 != a4)
          {
            v138 = 0;
            do
            {
              v139 = *(v137 - 12);
              if (v139 < *(v137 + 8))
              {
                v140 = *(v137 - 20);
                v141 = *(v137 - 8);
                v142 = v138;
                do
                {
                  v143 = a2 + v142;
                  result = *(a2 + v142 - 20);
                  *(v143 - 40) = result;
                  *(v143 - 24) = *(a2 + v142 - 4);
                  if (!v142)
                  {
                    break;
                  }

                  v142 += 20;
                }

                while (v139 < *(v143 + 8));
                *(v143 - 20) = v140;
                *(v143 - 12) = v139;
                *(v143 - 8) = v141;
              }

              v137 -= 20;
              v138 -= 20;
            }

            while (v137 != a4);
          }
        }
      }

      else if (a2 != a4)
      {
        for (i = a2 - 20; i != a4; i -= 20)
        {
          v194 = *(i - 12);
          if (v194 < *(i + 8))
          {
            v195 = i + 20;
            v196 = *(i - 20);
            v197 = *(i - 8);
            v198 = i - 20;
            v199 = i;
            do
            {
              result = *(v198 + 20);
              *(v199 - 4) = *(v198 + 36);
              *(v199 - 20) = result;
              v200 = *(v198 + 48);
              v198 += 20;
              v199 = v195;
              v195 += 20;
            }

            while (v194 < v200);
            *v198 = v196;
            *(v198 + 8) = v194;
            *(v198 + 12) = v197;
          }
        }
      }

      return result;
    }

    if (!a5)
    {
      if (a2 != a4)
      {
        v144 = (v14 - 2) >> 1;
        v145 = v144;
        do
        {
          v146 = v145;
          v147 = 0xCCCCCCCCCCCCCCCDLL * ((20 * v145) >> 2);
          if (v144 >= v147)
          {
            v148 = 2 * v147;
            v149 = (2 * v147) | 1;
            v150 = a2 - 20 * v149;
            v151 = v148 + 2;
            if (v151 < v14)
            {
              v152 = *(v150 - 12);
              v153 = *(v150 - 32);
              v154 = v152 >= v153;
              v155 = v152 >= v153 ? 0 : -20;
              v150 += v155;
              if (!v154)
              {
                v149 = v151;
              }
            }

            v156 = a2 - 20 * v146;
            v157 = *(v156 - 12);
            if (*(v150 - 12) >= v157)
            {
              v158 = *(v156 - 20);
              v159 = *(v156 - 8);
              do
              {
                v160 = v156;
                v156 = v150;
                v161 = *(v150 - 20);
                *(v160 - 4) = *(v150 - 4);
                *(v160 - 20) = v161;
                if (v144 < v149)
                {
                  break;
                }

                v162 = (2 * v149) | 1;
                v150 = a2 - 20 * v162;
                v149 = 2 * v149 + 2;
                if (v149 >= v14)
                {
                  v149 = v162;
                }

                else
                {
                  v163 = *(v150 - 12);
                  v164 = *(v150 - 32);
                  v165 = v163 >= v164;
                  if (v163 >= v164)
                  {
                    v166 = 0;
                  }

                  else
                  {
                    v166 = -20;
                  }

                  v150 += v166;
                  if (v165)
                  {
                    v149 = v162;
                  }
                }
              }

              while (*(v150 - 12) >= v157);
              *(v156 - 20) = v158;
              *(v156 - 12) = v157;
              *(v156 - 8) = v159;
            }
          }

          v145 = v146 - 1;
        }

        while (v146);
        v167 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 2);
        do
        {
          v168 = 0;
          v239 = *(a2 - 4);
          v223 = *(a2 - 20);
          v169 = a2;
          do
          {
            v170 = v169 + 20 * ~v168;
            v171 = (2 * v168) | 1;
            v172 = 2 * v168 + 2;
            if (v172 < v167)
            {
              v173 = *(v170 - 12);
              v174 = *(v170 - 32);
              v175 = v173 >= v174;
              v176 = v173 >= v174 ? 0 : -20;
              v170 += v176;
              if (!v175)
              {
                v171 = v172;
              }
            }

            v177 = *(v170 - 20);
            *(v169 - 4) = *(v170 - 4);
            *(v169 - 20) = v177;
            v169 = v170;
            v168 = v171;
          }

          while (v171 <= ((v167 - 2) >> 1));
          v178 = (v170 - 20);
          if (v170 == a4 + 20)
          {
            result = v223;
            *(v170 - 4) = v239;
            *v178 = v223;
          }

          else
          {
            v179 = *a4;
            *(v170 - 4) = *(a4 + 16);
            *v178 = v179;
            result = v223;
            *a4 = v223;
            *(a4 + 16) = v239;
            v180 = a2 - v178;
            if (v180 >= 21)
            {
              v181 = (-2 - 0x3333333333333333 * (v180 >> 2)) >> 1;
              v182 = a2 - 20 * v181;
              v183 = *(v170 - 12);
              if (*(v182 - 12) < v183)
              {
                v184 = *(v170 - 20);
                v185 = *(v170 - 8);
                do
                {
                  v186 = v182;
                  result = *(v182 - 20);
                  *(v170 - 4) = *(v182 - 4);
                  *(v170 - 20) = result;
                  if (!v181)
                  {
                    break;
                  }

                  v181 = (v181 - 1) >> 1;
                  v182 = a2 - 20 * v181;
                  v170 = v186;
                }

                while (*(v182 - 12) < v183);
                *(v186 - 20) = v184;
                *(v186 - 12) = v183;
                *(v186 - 8) = v185;
              }
            }
          }

          a4 += 20;
        }

        while (v167-- > 2);
      }

      return result;
    }

    v15 = -20 * (v14 >> 1);
    v16 = v15 + a2;
    if (v14 >= 0x81)
    {
      v17 = (v16 - 20);
      v18 = (a2 - 20);
      v19 = *(v16 - 12);
      if (v19 >= *(a2 - 12))
      {
        if (*(a4 + 8) < v19)
        {
          v27 = *(v16 - 4);
          v28 = *v17;
          v29 = *(a4 + 16);
          *v17 = *a4;
          *(v16 - 4) = v29;
          *a4 = v28;
          *(a4 + 16) = v27;
          if (*(v16 - 12) < *(a2 - 12))
          {
            v229 = *(a2 - 4);
            v214 = *v18;
            v30 = *v17;
            *(a2 - 4) = *(v16 - 4);
            *v18 = v30;
            *v17 = v214;
            *(v16 - 4) = v229;
          }
        }
      }

      else
      {
        if (*(a4 + 8) < v19)
        {
          v228 = *(a2 - 4);
          v213 = *v18;
          v20 = *a4;
          *(a2 - 4) = *(a4 + 16);
          *v18 = v20;
          *a4 = v213;
          v21 = v228;
          goto LABEL_27;
        }

        v232 = *(a2 - 4);
        v216 = *v18;
        v33 = *v17;
        *(a2 - 4) = *(v16 - 4);
        *v18 = v33;
        *v17 = v216;
        *(v16 - 4) = v232;
        if (*(a4 + 8) < *(v16 - 12))
        {
          v21 = *(v16 - 4);
          v34 = *v17;
          v35 = *(a4 + 16);
          *v17 = *a4;
          *(v16 - 4) = v35;
          *a4 = v34;
LABEL_27:
          *(a4 + 16) = v21;
        }
      }

      v36 = a2 + v15;
      v37 = (a2 - 40);
      v38 = *(a2 + v15 + 8);
      if (v38 >= *(a2 - 32))
      {
        if (*(a4 + 28) < v38)
        {
          v42 = *(v36 + 16);
          v43 = *v36;
          v44 = *(a4 + 36);
          *v36 = *(a4 + 20);
          *(v36 + 16) = v44;
          *(a4 + 20) = v43;
          *(a4 + 36) = v42;
          if (*(v36 + 8) < *(a2 - 32))
          {
            v45 = *(a2 - 24);
            v46 = *v37;
            v47 = *(v36 + 16);
            *v37 = *v36;
            *(a2 - 24) = v47;
            *v36 = v46;
            *(v36 + 16) = v45;
          }
        }
      }

      else
      {
        if (*(a4 + 28) < v38)
        {
          v39 = *(a2 - 24);
          v40 = *v37;
          v41 = *(a4 + 36);
          *v37 = *(a4 + 20);
          *(a2 - 24) = v41;
          goto LABEL_39;
        }

        v51 = *(a2 - 24);
        v52 = *v37;
        v53 = *(v36 + 16);
        *v37 = *v36;
        *(a2 - 24) = v53;
        *v36 = v52;
        *(v36 + 16) = v51;
        if (*(a4 + 28) < *(v36 + 8))
        {
          v39 = *(v36 + 16);
          v40 = *v36;
          v54 = *(a4 + 36);
          *v36 = *(a4 + 20);
          *(v36 + 16) = v54;
LABEL_39:
          *(a4 + 20) = v40;
          *(a4 + 36) = v39;
        }
      }

      v55 = v18 + v15;
      v56 = &v18[-1] + v15 - 4;
      v57 = (a2 - 60);
      v58 = *(v55 - 3);
      if (v58 >= *(a2 - 52))
      {
        if (*(a4 + 48) < v58)
        {
          v62 = *(v56 + 16);
          v63 = *v56;
          v64 = *(a4 + 56);
          *v56 = *(a4 + 40);
          *(v56 + 16) = v64;
          *(a4 + 40) = v63;
          *(a4 + 56) = v62;
          if (*(v55 - 3) < *(a2 - 52))
          {
            v65 = *(a2 - 44);
            v66 = *v57;
            v67 = *(v56 + 16);
            *v57 = *v56;
            *(a2 - 44) = v67;
            *v56 = v66;
            *(v56 + 16) = v65;
          }
        }
      }

      else
      {
        if (*(a4 + 48) < v58)
        {
          v59 = *(a2 - 44);
          v60 = *v57;
          v61 = *(a4 + 56);
          *v57 = *(a4 + 40);
          *(a2 - 44) = v61;
          goto LABEL_48;
        }

        v68 = *(a2 - 44);
        v69 = *v57;
        v70 = *(v56 + 16);
        *v57 = *v56;
        *(a2 - 44) = v70;
        *v56 = v69;
        *(v56 + 16) = v68;
        if (*(a4 + 48) < *(v55 - 3))
        {
          v59 = *(v56 + 16);
          v60 = *v56;
          v71 = *(a4 + 56);
          *v56 = *(a4 + 40);
          *(v56 + 16) = v71;
LABEL_48:
          *(a4 + 40) = v60;
          *(a4 + 56) = v59;
        }
      }

      v72 = *(v16 - 12);
      v73 = *(v55 - 3);
      if (v72 >= *(v36 + 8))
      {
        if (v73 < v72)
        {
          v77 = *(v16 - 4);
          v78 = *v17;
          v79 = *(v56 + 16);
          *v17 = *v56;
          *(v16 - 4) = v79;
          *v56 = v78;
          *(v56 + 16) = v77;
          if (*(v16 - 12) < *(v36 + 8))
          {
            v80 = *(v36 + 16);
            v81 = *v36;
            v82 = v17[1].n128_i32[0];
            *v36 = *v17;
            *(v36 + 16) = v82;
            *v17 = v81;
            v17[1].n128_u32[0] = v80;
          }
        }
      }

      else
      {
        if (v73 < v72)
        {
          v74 = *(v36 + 16);
          v75 = *v36;
          v76 = *(v56 + 16);
          *v36 = *v56;
          *(v36 + 16) = v76;
          goto LABEL_57;
        }

        v83 = *(v36 + 16);
        v84 = *v36;
        v85 = *(v16 - 4);
        *v36 = *v17;
        *(v36 + 16) = v85;
        *v17 = v84;
        *(v16 - 4) = v83;
        if (*(v55 - 3) < *(v16 - 12))
        {
          v74 = *(v16 - 4);
          v75 = *v17;
          v86 = *(v56 + 16);
          *v17 = *v56;
          v17[1].n128_u32[0] = v86;
LABEL_57:
          *v56 = v75;
          *(v56 + 16) = v74;
        }
      }

      v234 = *(a2 - 4);
      v218 = *v18;
      v87 = *v17;
      *(a2 - 4) = v17[1].n128_u32[0];
      *v18 = v87;
      result = v218;
      *v17 = v218;
      v17[1].n128_u32[0] = v234;
      goto LABEL_59;
    }

    v22 = (a2 - 20);
    v23 = (v16 - 20);
    v24 = *(a2 - 12);
    if (v24 >= *(v16 - 12))
    {
      if (*(a4 + 8) < v24)
      {
        v230 = *(a2 - 4);
        v215 = *v22;
        v31 = *a4;
        *(a2 - 4) = *(a4 + 16);
        *v22 = v31;
        result = v215;
        *a4 = v215;
        *(a4 + 16) = v230;
        if (*(a2 - 12) < *(v16 - 12))
        {
          result = *v23;
          v231 = *(v16 - 4);
          v32 = *(a2 - 4);
          *v23 = *v22;
          *(v16 - 4) = v32;
          *(a2 - 4) = v231;
          *v22 = result;
        }
      }
    }

    else
    {
      if (*(a4 + 8) >= v24)
      {
        result = *v23;
        v48 = *(v16 - 4);
        v49 = *(a2 - 4);
        *v23 = *v22;
        v23[1].n128_u32[0] = v49;
        *(a2 - 4) = v48;
        *v22 = result;
        if (*(a4 + 8) >= *(a2 - 12))
        {
          goto LABEL_59;
        }

        v233 = *(a2 - 4);
        v217 = *v22;
        v50 = *a4;
        *(a2 - 4) = *(a4 + 16);
        *v22 = v50;
        result = v217;
        *a4 = v217;
        v25 = v233;
      }

      else
      {
        v25 = *(v16 - 4);
        result = *v23;
        v26 = *(a4 + 16);
        *v23 = *a4;
        v23[1].n128_u32[0] = v26;
        *a4 = result;
      }

      *(a4 + 16) = v25;
    }

LABEL_59:
    --a5;
    if (a6)
    {
      v88 = *(a2 - 12);
LABEL_81:
      v103 = 0;
      v104 = a1;
      v105 = *(a2 - 20);
      v106 = *(a2 - 8);
      do
      {
        v107 = *(a2 + v103 - 32);
        v103 -= 20;
      }

      while (v107 < v88);
      v108 = a2 + v103;
      v109 = a4;
      if (v103 == -20)
      {
        v110 = a4;
        while (v108 > v110)
        {
          v111 = v110 + 20;
          v112 = *(v110 + 8);
          v110 += 20;
          if (v112 < v88)
          {
            goto LABEL_91;
          }
        }

        v111 = v110;
      }

      else
      {
        do
        {
          v111 = v109 + 20;
          v113 = *(v109 + 8);
          v109 += 20;
        }

        while (v113 >= v88);
      }

LABEL_91:
      if (v108 <= v111)
      {
        v117 = v108 + 20;
      }

      else
      {
        v114 = v108;
        v115 = v111;
        do
        {
          v236 = *(v114 - 4);
          v220 = *(v114 - 20);
          v116 = *(v115 - 20);
          *(v114 - 4) = *(v115 - 4);
          *(v114 - 20) = v116;
          result = v220;
          *(v115 - 4) = v236;
          *(v115 - 20) = v220;
          v117 = v114 + 20;
          do
          {
            v118 = *(v114 - 32);
            v114 -= 20;
            v117 -= 20;
          }

          while (v118 < v88);
          do
          {
            v119 = *(v115 + 8);
            v115 += 20;
          }

          while (v119 >= v88);
        }

        while (v114 > v115);
      }

      if (v117 != a2)
      {
        result = *(v117 - 20);
        *(a2 - 4) = *(v117 - 4);
        *(a2 - 20) = result;
      }

      *(v117 - 20) = v105;
      v12 = v117 - 20;
      *(v117 - 12) = v88;
      *(v117 - 8) = v106;
      if (v108 > v111)
      {
LABEL_104:
        v124 = v104;
        v125 = a2;
        v126 = a3;
        sub_100060B64(v124, v125, v117, v117, a5, a6 & 1);
        a3 = v126;
        a6 = 0;
        a1 = v117;
        goto LABEL_2;
      }

      v212 = a1;
      v120 = a1;
      v121 = a3;
      v122 = sub_100061D2C(a1, a2, v117, v117, result);
      if (!sub_100061D2C(v117 - 20, v117 - 20, v121, a4, v123))
      {
        a1 = v117;
        a3 = v121;
        v104 = v120;
        if (v122)
        {
          goto LABEL_2;
        }

        goto LABEL_104;
      }

      a3 = v117;
      a4 = v117;
      a1 = v212;
      if (v122)
      {
        return result;
      }

      goto LABEL_1;
    }

    v88 = *(a2 - 12);
    if (*(a2 + 8) < v88)
    {
      goto LABEL_81;
    }

    if (v88 >= *(a4 + 8))
    {
      v92 = (a2 - 32);
      do
      {
        v90 = v92 + 3;
        if ((v92 + 3) <= a4)
        {
          break;
        }

        v93 = *v92;
        v92 -= 5;
      }

      while (v88 >= v93);
    }

    else
    {
      v89 = a2;
      do
      {
        v90 = (v89 - 20);
        v91 = *(v89 - 32);
        v89 -= 20;
      }

      while (v88 >= v91);
    }

    v94 = a4;
    if (v90 > a4)
    {
      v95 = a4;
      do
      {
        v94 = v95 + 20;
        v96 = *(v95 + 8);
        v95 += 20;
      }

      while (v88 < v96);
    }

    v97 = *(a2 - 20);
    v98 = *(a2 - 8);
    while (v90 > v94)
    {
      v235 = *(v90 - 1);
      v219 = *(v90 - 5);
      v99 = *(v94 - 20);
      *(v90 - 1) = *(v94 - 4);
      *(v90 - 5) = v99;
      result = v219;
      *(v94 - 4) = v235;
      *(v94 - 20) = v219;
      do
      {
        v100 = *(v90 - 8);
        v90 -= 5;
      }

      while (v88 >= v100);
      do
      {
        v101 = *(v94 + 8);
        v94 += 20;
      }

      while (v88 < v101);
    }

    if (v90 + 5 != a2)
    {
      v102 = (a2 - 20);
      result = *v90;
      v102[1].n128_u32[0] = v90[4];
      *v102 = result;
    }

    a6 = 0;
    *v90 = v97;
    v90[2] = v88;
    a2 = v90;
    *(v90 + 3) = v98;
  }

  v127 = (a2 - 20);
  v128 = (a2 - 40);
  v133 = *(a2 - 32);
  v134 = *(a4 + 8);
  if (v133 >= *(a2 - 12))
  {
    if (v134 >= v133)
    {
      return result;
    }

    v191 = *(a2 - 24);
    result = *v128;
    v192 = *(a4 + 16);
    *v128 = *a4;
    *(a2 - 24) = v192;
    *a4 = result;
    *(a4 + 16) = v191;
    goto LABEL_190;
  }

  if (v134 < v133)
  {
    v238 = *(a2 - 4);
    v222 = *v127;
    v135 = *a4;
    *(a2 - 4) = *(a4 + 16);
    *v127 = v135;
    goto LABEL_115;
  }

  v243 = *(a2 - 4);
  v227 = *v127;
  v209 = *v128;
  *(a2 - 4) = *(a2 - 24);
  *v127 = v209;
  result = v227;
  *v128 = v227;
  *(a2 - 24) = v243;
  if (*(a4 + 8) < *(a2 - 32))
  {
    v210 = *(a2 - 24);
    result = *v128;
    v211 = *(a4 + 16);
    *v128 = *a4;
    *(a2 - 24) = v211;
    *a4 = result;
    *(a4 + 16) = v210;
  }

  return result;
}

__n128 sub_100061AC8(__n128 result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = (a5 - 20);
  v12 = (a3 - 20);
  v13 = *(a5 - 12);
  if (v13 >= *(a3 - 12))
  {
    if (*(a7 - 12) < v13)
    {
      v17 = *(a5 - 4);
      result = *v11;
      v18 = *(a7 - 4);
      *v11 = *(a7 - 20);
      *(a5 - 4) = v18;
      *(a7 - 20) = result;
      *(a7 - 4) = v17;
      if (*(a5 - 12) < *(a3 - 12))
      {
        v19 = *(a3 - 4);
        result = *v12;
        v20 = *(a5 - 4);
        *v12 = *v11;
        *(a3 - 4) = v20;
        *v11 = result;
        *(a5 - 4) = v19;
      }
    }
  }

  else
  {
    v14 = (a7 - 20);
    if (*(a7 - 12) < v13)
    {
      v15 = *(a3 - 4);
      result = *v12;
      v16 = *(a7 - 4);
      *v12 = *v14;
      *(a3 - 4) = v16;
LABEL_9:
      *v14 = result;
      *(a7 - 4) = v15;
      goto LABEL_10;
    }

    v21 = *(a3 - 4);
    result = *v12;
    v22 = *(a5 - 4);
    *v12 = *v11;
    *(a3 - 4) = v22;
    *v11 = result;
    *(a5 - 4) = v21;
    if (*(a7 - 12) < *(a5 - 12))
    {
      v15 = *(a5 - 4);
      result = *v11;
      v23 = *(a7 - 4);
      *v11 = *v14;
      *(a5 - 4) = v23;
      goto LABEL_9;
    }
  }

LABEL_10:
  v24 = (a7 - 20);
  if (*(a9 - 12) < *(a7 - 12))
  {
    v25 = *(a7 - 4);
    result = *v24;
    v26 = *(a9 - 4);
    *v24 = *(a9 - 20);
    *(a7 - 4) = v26;
    *(a9 - 20) = result;
    *(a9 - 4) = v25;
    if (*(a7 - 12) < *(a5 - 12))
    {
      v27 = *(a5 - 4);
      result = *v11;
      v28 = *(a7 - 4);
      *v11 = *v24;
      *(a5 - 4) = v28;
      *v24 = result;
      *(a7 - 4) = v27;
      if (*(a5 - 12) < *(a3 - 12))
      {
        v29 = *(a3 - 4);
        result = *v12;
        v30 = *(a5 - 4);
        *v12 = *v11;
        *(a3 - 4) = v30;
        *v11 = result;
        *(a5 - 4) = v29;
      }
    }
  }

  if (*(a11 - 12) < *(a9 - 12))
  {
    v31 = (a9 - 20);
    v32 = *(a9 - 4);
    result = *(a9 - 20);
    v33 = *(a11 - 4);
    *v31 = *(a11 - 20);
    v31[1].n128_u32[0] = v33;
    *(a11 - 20) = result;
    *(a11 - 4) = v32;
    if (*(a9 - 12) < *(a7 - 12))
    {
      v34 = *(a7 - 4);
      result = *v24;
      v35 = *(a9 - 4);
      *v24 = *v31;
      *(a7 - 4) = v35;
      *v31 = result;
      *(a9 - 4) = v34;
      if (*(a7 - 12) < *(a5 - 12))
      {
        v36 = *(a5 - 4);
        result = *v11;
        v37 = *(a7 - 4);
        *v11 = *v24;
        *(a5 - 4) = v37;
        *v24 = result;
        *(a7 - 4) = v36;
        if (*(a5 - 12) < *(a3 - 12))
        {
          v38 = *(a3 - 4);
          result = *v12;
          v39 = *(a5 - 4);
          *v12 = *v11;
          *(a3 - 4) = v39;
          *v11 = result;
          *(a5 - 4) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_100061D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a4) >> 2);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = (a2 - 20);
      v10 = (a2 - 40);
      v11 = *(a2 - 32);
      v12 = *(a4 + 8);
      if (v11 >= *(a2 - 12))
      {
        if (v12 < v11)
        {
          v28 = *(a2 - 24);
          v29 = *v10;
          v30 = *(a4 + 16);
          *v10 = *a4;
          *(a2 - 24) = v30;
          *a4 = v29;
          *(a4 + 16) = v28;
          if (*(a2 - 32) < *(a2 - 12))
          {
            v31 = *(a2 - 4);
            v32 = *v9;
            v33 = *(a2 - 24);
            *v9 = *v10;
            *(a2 - 4) = v33;
            *v10 = v32;
            *(a2 - 24) = v31;
          }
        }

        return 1;
      }

      if (v12 >= v11)
      {
        v46 = *(a2 - 4);
        v47 = *v9;
        v48 = *(a2 - 24);
        *v9 = *v10;
        *(a2 - 4) = v48;
        *v10 = v47;
        *(a2 - 24) = v46;
        if (*(a4 + 8) < *(a2 - 32))
        {
          v49 = *(a2 - 24);
          v50 = *v10;
          v51 = *(a4 + 16);
          *v10 = *a4;
          *(a2 - 24) = v51;
          *a4 = v50;
          *(a4 + 16) = v49;
        }

        return 1;
      }

      v6 = *(a2 - 4);
      v7 = *v9;
      v13 = *(a4 + 16);
      *v9 = *a4;
      *(a2 - 4) = v13;
      goto LABEL_13;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        sub_100061AC8(a5, a1, a2, a2 - 20, a2 - 20, a2 - 40, a2 - 40, a2 - 60, a2 - 60, a3, a4 + 20);
        return 1;
      }

      goto LABEL_14;
    }

    v21 = (a2 - 20);
    v22 = (a2 - 40);
    v23 = *(a2 - 32);
    if (v23 >= *(a2 - 12))
    {
      if (*(a2 - 52) < v23)
      {
        v40 = *(a2 - 24);
        v41 = *v22;
        v42 = *(a2 - 44);
        *(a2 - 40) = *(a2 - 60);
        *(a2 - 24) = v42;
        *(a2 - 60) = v41;
        *(a2 - 44) = v40;
        if (*(a2 - 32) < *(a2 - 12))
        {
          v43 = *(a2 - 4);
          v44 = *v21;
          v45 = *(a2 - 24);
          *v21 = *v22;
          *(a2 - 4) = v45;
          *v22 = v44;
          *(a2 - 24) = v43;
        }
      }

      goto LABEL_45;
    }

    v24 = (a2 - 60);
    if (*(a2 - 52) >= v23)
    {
      v67 = *(a2 - 4);
      v68 = *v21;
      v69 = *(a2 - 24);
      *v21 = *v22;
      *(a2 - 4) = v69;
      *v22 = v68;
      *(a2 - 24) = v67;
      if (*(a2 - 52) >= *(a2 - 32))
      {
LABEL_45:
        if (*(a4 + 8) < *(a2 - 52))
        {
          v71 = a2 - 60;
          v72 = *(a2 - 44);
          v73 = *(a2 - 60);
          v74 = *(a4 + 16);
          *v71 = *a4;
          *(v71 + 16) = v74;
          *a4 = v73;
          *(a4 + 16) = v72;
          if (*(a2 - 52) < *(a2 - 32))
          {
            v75 = *(a2 - 24);
            v76 = *v22;
            v77 = *(a2 - 44);
            *v22 = *v71;
            *(a2 - 24) = v77;
            *v71 = v76;
            *(a2 - 44) = v75;
            if (*(a2 - 32) < *(a2 - 12))
            {
              v78 = *(a2 - 4);
              v79 = *v21;
              v80 = *(a2 - 24);
              *v21 = *v22;
              *(a2 - 4) = v80;
              *v22 = v79;
              *(a2 - 24) = v78;
            }
          }
        }

        return 1;
      }

      v25 = *(a2 - 24);
      v26 = *v22;
      v70 = *(a2 - 44);
      *v22 = *v24;
      *(a2 - 24) = v70;
    }

    else
    {
      v25 = *(a2 - 4);
      v26 = *v21;
      v27 = *(a2 - 44);
      *v21 = *v24;
      *(a2 - 4) = v27;
    }

    *v24 = v26;
    *(a2 - 44) = v25;
    goto LABEL_45;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    if (*(a4 + 8) < *(a2 - 12))
    {
      v6 = *(a2 - 4);
      v7 = *(a2 - 20);
      v8 = *(a4 + 16);
      *(a2 - 20) = *a4;
      *(a2 - 4) = v8;
LABEL_13:
      *a4 = v7;
      *(a4 + 16) = v6;
    }

    return 1;
  }

LABEL_14:
  v14 = (a2 - 40);
  v15 = (a2 - 20);
  v16 = *(a2 - 32);
  if (v16 >= *(a2 - 12))
  {
    if (*(a2 - 52) < v16)
    {
      v34 = *(a2 - 24);
      v35 = *v14;
      v36 = *(a2 - 44);
      *(a2 - 40) = *(a2 - 60);
      *(a2 - 24) = v36;
      *(a2 - 60) = v35;
      *(a2 - 44) = v34;
      if (*(a2 - 32) < *(a2 - 12))
      {
        v37 = *(a2 - 4);
        v38 = *v15;
        v39 = *(a2 - 24);
        *v15 = *v14;
        *(a2 - 4) = v39;
        *v14 = v38;
        *(a2 - 24) = v37;
      }
    }
  }

  else
  {
    v17 = (a2 - 60);
    if (*(a2 - 52) >= v16)
    {
      v52 = *(a2 - 4);
      v53 = *v15;
      v54 = *(a2 - 24);
      *v15 = *v14;
      *(a2 - 4) = v54;
      *v14 = v53;
      *(a2 - 24) = v52;
      if (*(a2 - 52) < *(a2 - 32))
      {
        v55 = *(a2 - 24);
        v56 = *v14;
        v57 = *(a2 - 44);
        *v14 = *v17;
        *(a2 - 24) = v57;
        *v17 = v56;
        *(a2 - 44) = v55;
      }
    }

    else
    {
      v18 = *(a2 - 4);
      v19 = *v15;
      v20 = *(a2 - 44);
      *v15 = *v17;
      *(a2 - 4) = v20;
      *v17 = v19;
      *(a2 - 44) = v18;
    }
  }

  v58 = (a2 - 60);
  if (a2 - 60 == a4)
  {
    return 1;
  }

  v59 = 0;
  while (1)
  {
    v60 = v58 - 20;
    v61 = *(v58 - 3);
    if (v61 < *(v14 - 3))
    {
      v62 = *(v58 - 20);
      v63 = *(v58 - 1);
      v64 = v58;
      do
      {
        v65 = v14;
        v66 = *(v14 - 20);
        *(v64 - 1) = *(v14 - 1);
        *(v64 - 20) = v66;
        if (v14 == a2)
        {
          break;
        }

        v14 = (v14 + 20);
        v64 = v65;
      }

      while (v61 < *(v65 + 2));
      *(v65 - 20) = v62;
      *(v65 - 3) = v61;
      *(v65 - 1) = v63;
      if (++v59 == 8)
      {
        break;
      }
    }

    v14 = v58;
    v58 = (v58 - 20);
    if (v60 == a4)
    {
      return 1;
    }
  }

  return v60 == a4;
}

void *sub_100062274(void *a1, id *a2, OS_dispatch_object *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10023DA80;
  sub_1000622D0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_1000622D0(uint64_t a1, id *a2, OS_dispatch_object *a3)
{
  v8 = *a2;
  v5.fObj.fObj = a3;
  sub_1000E4B70(a1, &v8, v5);
  v6 = v8;
  v8 = 0;

  return a1;
}

void sub_10006254C(uint64_t a1)
{
  [+[NSDate date](NSDate timeIntervalSince1970];
  v3 = v2;
  if (v2 - *&qword_1002B7DC0 >= 330.0)
  {
    [WCM_Logging logLevel:22 message:@"CellularThroughput: RAT: %d", *(a1 + 48)];
    if (*(a1 + 48) == 1)
    {
      [WCM_Logging logLevel:22 message:@"CellularThroughput lastScheduledTestTime before starting test: %0.2f", qword_1002B7DC0];
      [WCM_Logging logLevel:22 message:@"CellularThroughput timeDifferenceFromLastTestScheduled on RAT %d: %0.2f", *(a1 + 48), v3 - *&qword_1002B7DC0];
      v4 = *(a1 + 32);
      v5 = v4[1];
      if (v3 - *&qword_1002B7DC0 >= v5)
      {
        if ([v4 ifNoActiveVoiceCall])
        {
          *(*(a1 + 32) + 16) = objc_alloc_init(WRM_SpeedTestConfigIOS);
          v6 = *(*(a1 + 32) + 16);
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_100062748;
          v12[3] = &unk_10023EFC8;
          *&v12[5] = v3;
          v12[4] = *(a1 + 40);
          [v6 startDownloadTest:v12];

          return;
        }
      }

      else
      {
        [WCM_Logging logLevel:22 message:@"CellularThroughput: Cannot start download test since timeDifferenceFromLastTestScheduled on RAT %d is %0.2f < %0.2f", *(a1 + 48), v3 - *&qword_1002B7DC0, *&v5];
      }
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"CellularThroughput: Cannot start download test since timeDifferenceFromLastTestScheduled < 5.5 min", v9, v10, v11];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(v7 + 16);

    v8();
  }
}

uint64_t sub_100062748(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:@"YES"])
  {
    qword_1002B7DC0 = *(a1 + 40);
    [WCM_Logging logLevel:22 message:@"CellularThroughput lastScheduledTestTime for Cellular RAT 1 after starting test: %0.2f", qword_1002B7DC0];
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }

    v4 = *(result + 16);
  }

  else
  {
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }

    v4 = *(result + 16);
  }

  return v4();
}

id sub_10006288C(id result)
{
  if (!qword_1002B7DD0)
  {
    v1.receiver = *(result + 4);
    v1.super_class = &OBJC_METACLASS___WRM_FT_HandoverManager;
    result = [objc_msgSendSuper2(&v1 allocWithZone:{0), "init"}];
    qword_1002B7DD0 = result;
  }

  return result;
}

id sub_100063530(id result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 <= 10)
  {
    if (v2 == 1)
    {
      [WCM_Logging logLevel:29 message:@"FT Handover Manager: Receivd WiFi controller event controller %p", *(result + 4)];
      v4 = *(*(v1 + 5) + 32);
      if (v4)
      {

        *(*(v1 + 5) + 32) = 0;
      }

      v5 = *(v1 + 4);
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        *(*(v1 + 5) + 32) = v6;
      }

      else
      {
        v7 = 1;
      }

      byte_1002B7DD9 = v7;
      goto LABEL_40;
    }

    if (v2 == 4)
    {
      [WCM_Logging logLevel:27 message:@"VoIP LinkEval: Receivd BT controller event controller %p", *(result + 4)];
      v8 = *(*(v1 + 5) + 40);
      if (v8)
      {
      }

      *(*(v1 + 5) + 40) = *(v1 + 4);
      goto LABEL_40;
    }

    if (v2 != 7)
    {
      return result;
    }

    if (*(result + 4))
    {
      [*(result + 5) addiRatClient:?];
      v3 = @"FT Handover Manager:Added iRAT Client (WRMCommCenter) to FT Handover Manager ";
      goto LABEL_23;
    }

    [WCM_Logging logLevel:29 message:@"FT Handover Manager:remove Client (WRMCommCenter) from VoIP link evaluator"];
    v9 = *(v1 + 5);
    v10 = 1;
LABEL_39:
    [v9 deleteiRATClient:v10];
    goto LABEL_40;
  }

  if (v2 > 13)
  {
    if (v2 == 14)
    {
      if (*(result + 4))
      {
        [*(result + 5) addiRatClient:?];
        [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
        [WCM_Logging logLevel:29 message:@"FT Handover Manager:Added iRAT Client (WRMFaceTimeCalling) to FT Handover Manager "];
        [*(v1 + 5) toggleFastLQMReport:1];
        *(*(v1 + 5) + 178) = 0;
      }

      else
      {
        [WCM_Logging logLevel:29 message:@"FT Handover Manager:remove iRAT Client (WRMFaceTimeCalling) from FT Handover Manager "];
        [*(v1 + 5) deleteiRATClient:7];
        byte_1002B7DDD = 0;
        if ([*(*(v1 + 5) + 56) mobilityStateAwarenessEnabled])
        {
          [*(*(v1 + 5) + 64) stopAllAlarms];
        }

        [*(*(v1 + 5) + 56) revertFaceTimeThToAzul];
        [*(v1 + 5) toggleFastLQMReport:0];
      }

      [objc_msgSend(*(v1 + 5) "getAVConferenceController")];
      [*(v1 + 5) resetActiveCallEvaluationMetrics];
      goto LABEL_40;
    }

    if (v2 != 22)
    {
      return result;
    }

    [WCM_Logging logLevel:29 message:@"Recevied Subscribe Message from SIRI: %p", *(result + 4)];
    if (*(v1 + 4))
    {
      [*(v1 + 5) addiRatClient:?];
      v3 = @"updateControllerSession:Added Client (WRMSiri) to VoIP link evaluator ";
      goto LABEL_23;
    }

    [WCM_Logging logLevel:29 message:@"updateControllerSession:remove Client (WRMSiri) from VoIP link evaluator"];
    v9 = *(v1 + 5);
    v10 = 14;
    goto LABEL_39;
  }

  if (v2 == 11)
  {
    [WCM_Logging logLevel:29 message:@"IDS LinkEval Mgr: Receivd WRMIdsClient controller event controller %p", *(result + 4)];
    if (*(v1 + 4))
    {
      [*(v1 + 5) addiRatClient:?];
      v3 = @"updateControllerSession:Added Client (WRMIdsClient) to IDS LinkEval Manager ";
      goto LABEL_23;
    }

    [WCM_Logging logLevel:29 message:@"updateControllerSession:remove Client (WRMIdsClient) from IDS LinkEval Manager "];
    v9 = *(v1 + 5);
    v10 = 4;
    goto LABEL_39;
  }

  if (v2 != 12)
  {
    return result;
  }

  [WCM_Logging logLevel:29 message:@"IDS LinkEval Mgr: Receivd WRMIdsTool controller event controller %p", *(result + 4)];
  if (!*(v1 + 4))
  {
    [WCM_Logging logLevel:29 message:@"updateControllerSession:remove Client (WRMIdsTool) from IDS LinkEval Manager "];
    v9 = *(v1 + 5);
    v10 = 5;
    goto LABEL_39;
  }

  [*(v1 + 5) addiRatClient:?];
  v3 = @"updateControllerSession:Added Client (WRMIdsTool) to IDS LinkEval Manager ";
LABEL_23:
  [WCM_Logging logLevel:29 message:v3];
LABEL_40:
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);

  return [v11 handleControllerAvailability:v12];
}

void sub_100064F48(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = [*(*(a1 + 32) + 32) wifiService];
  v4 = [v3 isAssociated];
  if ([*(*(a1 + 32) + 40) isBTMetricsValid])
  {
    xpc_dictionary_set_uint64(v2, "kWRMProximityBtRssi", [*(*(a1 + 32) + 40) getMovingAvgBTRssi]);
    [*(*(a1 + 32) + 40) getBtTxPer];
    xpc_dictionary_set_uint64(v2, "kWRMProximityBtRetransmissionRateRx", (v5 * 100.0));
    [*(*(a1 + 32) + 40) getBtRxPer];
    xpc_dictionary_set_uint64(v2, "kWRMProximityBtRetransmissionRateRx", (v6 * 100.0));
    v7 = 100 * [*(*(a1 + 32) + 40) getBtActivePhy];
  }

  else
  {
    xpc_dictionary_set_uint64(v2, "kWRMProximityBtRssi", 0);
    xpc_dictionary_set_uint64(v2, "kWRMProximityBtRetransmissionRateRx", 0);
    xpc_dictionary_set_uint64(v2, "kWRMProximityBtRetransmissionRateRx", 0);
    v7 = 0;
  }

  xpc_dictionary_set_uint64(v2, "kWRMProximityBtTech", v7);
  if (v4)
  {
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiRssi", [v3 getRSSI]);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiSnr", [v3 getSNR]);
    [v3 getBeaconPer];
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiBeaconPer", (v8 * 100.0));
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiNwType", [v3 getPointOfInterest]);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiLSMBeRecommendation", [v3 getBEDecision]);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiExpectedThroughputVIBE", [v3 getTxThroughputVI]);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiPacketLifetimeVIBE", [v3 getLifeTimeVI]);
    v9 = [v3 getTxLossRateVI];
  }

  else
  {
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiRssi", -600);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiSnr", -600);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiBeaconPer", 0);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiNwType", 3);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiLSMBeRecommendation", -1);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiExpectedThroughputVIBE", 0);
    xpc_dictionary_set_int64(v2, "kWRMProximityWifiPacketLifetimeVIBE", 0);
    v9 = 0;
  }

  xpc_dictionary_set_int64(v2, "kWRMProximityWifiPacketLossRateVIBE", v9);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(*(a1 + 32) + 104);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) sendMessage:1308 withArgs:v2];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  xpc_release(v2);
}

id sub_100067584(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != 1)
  {
    result = [v2 setLQMReportInterval:0];
    goto LABEL_5;
  }

  result = [v2 setLQMReportInterval:1];
  if (result)
  {
LABEL_5:
    byte_1002B7DDC = v1;
  }

  return result;
}

void sub_100067DD0(uint64_t a1)
{
  if (objc_loadWeak((a1 + 48)))
  {
    [WCM_Logging logLevel:29 message:@"handleCallNotification callType=%d, disconnectedReason=%d", *(*(*(a1 + 40) + 88) + 156), *(a1 + 56)];
    [*(a1 + 40) feedAWDMetricsWiFiStats];
    [*(a1 + 40) feedAWDMetricsCellularStatsWithUUID:*(a1 + 32)];

    v2 = *(a1 + 56);
    if (v2 <= 0x17 && ((1 << v2) & 0x8A6000) != 0)
    {
      v3 = [*(*(a1 + 40) + 80) getAWDService];
      v4 = 1;
    }

    else
    {
      v3 = [*(*(a1 + 40) + 80) getAWDService];
      v4 = 0;
    }

    [v3 submitMetricsTelephonyOrFtCallEnd:v4];
  }

  else
  {
    v5 = *(a1 + 32);
  }
}

id sub_1000685B0(uint64_t a1)
{
  [WCM_Logging logLevel:28 message:@"Submit Music Streaming AWD Metrics"];
  [*(a1 + 32) feedAWDRadioStats];
  result = [objc_msgSend(*(*(a1 + 32) + 240) "getAWDService")];
  *(*(*(a1 + 32) + 248) + 381) = 0;
  return result;
}

void sub_100068EF0(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  if ([v3 isWiFiPrimaryInterface])
  {
    v4 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    xpc_dictionary_set_double(v2, "wghtRSSI", [v3 getWghtAverageRSSI]);
    xpc_dictionary_set_double(v2, "wghtSNR", [v3 getWghtAverageSNR]);
    xpc_dictionary_set_double(v2, "wghtPhyRate", [v3 getWghtAverageRXPhyRate]);
    [v4 getTCPMinRTT];
    xpc_dictionary_set_double(v2, "tcpRTT", v5 * 1000.0);
    xpc_dictionary_set_uint64(v2, "chType", [v3 getChannelType]);
    xpc_dictionary_set_BOOL(v2, "isCaptive", [v3 isWiFiNetworkCaptive]);
    xpc_dictionary_set_uint64(v2, "CCA", [v3 getCCA]);
  }

  else
  {
    [WCM_Logging logLevel:27 message:@"%s: WiFi not primary NAN", "[WRM_BWEvalManager(privateFunctions) handleWiFiMetricsRequest:]_block_invoke"];
    xpc_dictionary_set_double(v2, "wghtRSSI", NAN);
    xpc_dictionary_set_double(v2, "wghtSNR", NAN);
    xpc_dictionary_set_double(v2, "wghtPhyRate", NAN);
    xpc_dictionary_set_double(v2, "tcpRTT", NAN);
    xpc_dictionary_set_uint64(v2, "chType", v6);
    xpc_dictionary_set_BOOL(v2, "isCaptive", 1);
    xpc_dictionary_set_double(v2, "CCA", NAN);
  }

  v7 = xpc_copy_description(v2);
  [WCM_Logging logLevel:27 message:@"%s: XPC args - %p %s", "[WRM_BWEvalManager(privateFunctions) handleWiFiMetricsRequest:]_block_invoke", v2, v7];
  free(v7);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(*(a1 + 32) + 272);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"Sending back XPC object for client: %@", [v13 description]);
        [v13 sendMessage:2100 withArgs:v2];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  xpc_release(v2);
}

void sub_100069310(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = +[WRM_SCService WRM_SCServiceControllerSingleton];
  if (MGGetBoolAnswer())
  {
    v4 = [v3 getCellularDataLQM];
  }

  else
  {
    [WCM_Logging logLevel:27 message:@"%s: Not a cellular device. Returning 0", "[WRM_BWEvalManager(privateFunctions) handleCellularDataMetricsRequest:]_block_invoke"];
    v4 = 0;
  }

  xpc_dictionary_set_uint64(v2, "cellularDataLQM", v4);
  v5 = xpc_copy_description(v2);
  [WCM_Logging logLevel:27 message:@"%s: XPC args - %p %s", "[WRM_BWEvalManager(privateFunctions) handleCellularDataMetricsRequest:]_block_invoke", v2, v5];
  free(v5);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(*(a1 + 32) + 272);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"Sending back XPC object for client: %@", [v11 description]);
        [v11 sendMessage:2001 withArgs:v2];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  xpc_release(v2);
}

void sub_1000695E0(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  [v3 setActiveSlot:{objc_msgSend(v3, "getUserDataPreferredSlot")}];
  if (MGGetBoolAnswer())
  {
    [v3 getNrRSRP];
    xpc_dictionary_set_double(v2, "nrRSRP", v4);
    [v3 getNrRSRQ];
    xpc_dictionary_set_double(v2, "nrRSRQ", v5);
    [v3 getNrSNR];
    v7 = v6;
  }

  else
  {
    [WCM_Logging logLevel:27 message:@"%s: Not a cellular device. Returning NAN", "[WRM_BWEvalManager(privateFunctions) handleNrPhyMetricsRequest:]_block_invoke"];
    v7 = NAN;
    xpc_dictionary_set_double(v2, "nrRSRP", NAN);
    xpc_dictionary_set_double(v2, "nrRSRQ", NAN);
  }

  xpc_dictionary_set_double(v2, "nrSNR", v7);
  v8 = xpc_copy_description(v2);
  [WCM_Logging logLevel:27 message:@"%s: XPC args - %p %s", "[WRM_BWEvalManager(privateFunctions) handleNrPhyMetricsRequest:]_block_invoke", v2, v8];
  free(v8);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(*(a1 + 32) + 272);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 27, @"Sending back XPC object for client: %@", [v14 description]);
        [v14 sendMessage:2000 withArgs:v2];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  xpc_release(v2);
}

id sub_10006A5AC(uint64_t a1)
{
  [WCM_Logging logLevel:28 message:@"Submit Music Streaming AWD Metrics"];
  result = [objc_msgSend(*(*(a1 + 32) + 240) "getAWDService")];
  *(*(*(a1 + 32) + 248) + 381) = 0;
  byte_1002B7B7C = 0;
  return result;
}

id sub_10006AD34(id result)
{
  if (!qword_1002B7DF0)
  {
    v1 = result;
    [WCM_Logging logLevel:28 message:@"Allocating WRM_BWEvalManagerSingleton"];
    v2.receiver = *(v1 + 4);
    v2.super_class = &OBJC_METACLASS___WRM_BWEvalManager;
    result = [objc_msgSendSuper2(&v2 allocWithZone:{0), "init"}];
    qword_1002B7DF0 = result;
  }

  return result;
}

void *sub_10006B128(void *result)
{
  v1 = result;
  v2 = result[6];
  if (v2 <= 19)
  {
    if (v2 == 1)
    {
      [WCM_Logging logLevel:28 message:@"IMG Video Mgr: Receivd WiFi controller event controller %p", result[4]];
      v4 = *(v1[5] + 24);
      if (v4)
      {
      }

      v5 = v1[4];
      if (v5)
      {
        *(v1[5] + 24) = v5;
      }

      else
      {
        *(v1[5] + 24) = 0;
      }

      goto LABEL_27;
    }

    if (v2 != 13)
    {
      return result;
    }

    [WCM_Logging logLevel:28 message:@"IMG Video Mgr: Receivd WRMIMGVideo controller event controller %p", result[4]];
    *(v1[5] + 112) = 0;
    *(v1[5] + 72) = 0;
    *(v1[5] + 120) = 36000;
    if (v1[4])
    {
      [v1[5] addiRatClient:?];
      v3 = @"updateControllerSession:Added Client (WRMIMGVideo) to IMG BW  Manager ";
      goto LABEL_15;
    }

    [WCM_Logging logLevel:24 message:@"updateControllerSession:remove Client (WRMIMGVideo) from IMG Video Manager "];
    v6 = v1[5];
    v7 = 6;
LABEL_26:
    [v6 deleteiRATClient:v7];
    goto LABEL_27;
  }

  if (v2 == 20)
  {
    [WCM_Logging logLevel:28 message:@"IMG Video Mgr: Receivd WRMIMGVideoTest controller event controller %p", result[4]];
    if (v1[4])
    {
      [v1[5] addiRatClient:?];
      v3 = @"updateControllerSession:Added Client (WRMIMGVideoTest) to IMG BW  Manager ";
      goto LABEL_15;
    }

    [WCM_Logging logLevel:24 message:@"updateControllerSession:remove Client (WRMIMGVideoTest) from IMG Video Manager "];
    v6 = v1[5];
    v7 = 12;
    goto LABEL_26;
  }

  if (v2 == 34)
  {
    [WCM_Logging logLevel:28 message:@"Received WRMCoreMediaStreaming controller event controller %p", result[4]];
    if (v1[4])
    {
      [v1[5] addiRatClient:?];
      v3 = @"updateControllerSession:Added Client (WRMCoreMediaStreaming) to BW Eval Manager Controller";
      goto LABEL_15;
    }

    [WCM_Logging logLevel:24 message:@"updateControllerSession: Remove Client (WRMCoreMediaStreaming)"];
    v6 = v1[5];
    v7 = 22;
    goto LABEL_26;
  }

  if (v2 != 33)
  {
    return result;
  }

  [WCM_Logging logLevel:28 message:@"Received Baseband Metrics controller event controller %p", result[4]];
  if (!v1[4])
  {
    [WCM_Logging logLevel:24 message:@"updateControllerSession: Remove Client (WRMNPT)"];
    v6 = v1[5];
    v7 = 21;
    goto LABEL_26;
  }

  [v1[5] addiRatClient:?];
  v3 = @"updateControllerSession:Added Client (WRMNPT) to BB Eval Manager Controller";
LABEL_15:
  [WCM_Logging logLevel:28 message:v3];
LABEL_27:
  v8 = v1[5];
  v9 = v1[6];

  return [v8 handleControllerAvailability:v9];
}

uint64_t sub_10006B830()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10006D038;
  v0 = qword_1002B7DF8;
  v7 = sub_10006D048;
  v8 = qword_1002B7DF8;
  if (!qword_1002B7DF8)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10006D054;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_10006D054(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10006B904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006BE8C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_10006D038;
  v0 = qword_1002B7E08;
  v7 = sub_10006D048;
  v8 = qword_1002B7E08;
  if (!qword_1002B7E08)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10006D214;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_10006D214(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10006BF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10006D054(uint64_t a1)
{
  sub_10006D0AC();
  result = objc_getClass("MLModel");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015F3E8();
  }

  qword_1002B7DF8 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_10006D0AC()
{
  v0[0] = 0;
  if (!qword_1002B7E00)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_10006D1A0;
    v0[4] = &unk_10023DD00;
    v0[5] = v0;
    v1 = off_10023F1A8;
    v2 = 0;
    qword_1002B7E00 = _sl_dlopen();
  }

  if (!qword_1002B7E00)
  {
    sub_10015F450(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_10006D1A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B7E00 = result;
  return result;
}

Class sub_10006D214(uint64_t a1)
{
  sub_10006D0AC();
  result = objc_getClass("MLDictionaryFeatureProvider");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015F4B8();
  }

  qword_1002B7E08 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

id sub_10006D380(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  qword_1002B7E10 = v1;

  return [v1 resetIDSMetrics];
}

id sub_10006F368(uint64_t a1)
{
  [WCM_Logging logLevel:27 message:@"%s:handleBTLQMEval called", "[WRM_IDSLinkEvalManager(privateFunctions) handleBTLQMEval:]_block_invoke"];
  [*(a1 + 32) updateBTLQMScore];
  *(*(a1 + 32) + 68) = 1;
  v2 = *(a1 + 32);

  return [v2 postBluetoothLQMScore:1];
}

id sub_10006F68C(uint64_t a1)
{
  value = xpc_dictionary_get_value(*(a1 + 32), "kMessageArgs");
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "kClientType");
  if ((uint64 - 1) >= 0x15)
  {
    v4 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
    if (uint64 == 22)
    {
      v4 = "ClientCoreMediaStreaming";
    }
  }

  else
  {
    v4 = off_10023F3D8[(uint64 - 1)];
  }

  [WCM_Logging logLevel:27 message:@"%s Message received from client %d(%s) ", "[WRM_IDSLinkEvalManager(privateFunctions) handleTerminusLinkPrefSubscribe:]_block_invoke", uint64, v4];
  v5 = [*(a1 + 40) getiRATProximityClientFromList:uint64];
  result = xpc_dictionary_get_value(value, "kWRMSubscriptionType");
  if (result)
  {
    result = xpc_dictionary_get_uint64(value, "kWRMSubscriptionType");
    v7 = result != 0;
  }

  else
  {
    v7 = 0;
  }

  if ((uint64 - 19) >= 0xFFFFFFFA && !v7)
  {
    [v5 setRxClientType:uint64];
    if (xpc_dictionary_get_value(value, "kWRMProximityGetProximityLinkRecommendation"))
    {
      [objc_msgSend(v5 "mTerminusContext")];
    }

    if (xpc_dictionary_get_value(value, "kWRMProximityLinkRecommendationSubscriptionValid"))
    {
      [objc_msgSend(v5 "mTerminusContext")];
    }

    if (xpc_dictionary_get_value(value, "kWRMProximityLinkRecommendationIsRetry"))
    {
      [objc_msgSend(v5 "mTerminusContext")];
    }

    [objc_msgSend(v5 "mTerminusContext")];
    [v5 setRxClientType:uint64];
    if (uint64 == 14)
    {
      [objc_msgSend(v5 "mTerminusContext")];
    }

    v8 = *(a1 + 40);

    return [v8 evaluateBTWiFiLinkForTerminus];
  }

  return result;
}

id sub_10006FC14(uint64_t a1)
{
  value = xpc_dictionary_get_value(*(a1 + 32), "kMessageArgs");
  LODWORD(v3) = xpc_dictionary_get_uint64(value, "kWRMProximityLinkRecommendationType");
  v4 = xpc_dictionary_get_BOOL(value, "kWRMProximityAppLinkPreferenceActive");
  if (v3 >= 3)
  {
    v5 = "INVALID_AppLinkPreferenceType!!!";
    if (v3 == 3)
    {
      v5 = "Cellular";
    }
  }

  else
  {
    v5 = off_10023F308[v3 & 3];
  }

  v6 = "No";
  if (v4)
  {
    v6 = "Yes";
  }

  [WCM_Logging logLevel:27 message:@"%s: Terminus appLinkPrefType %s, Preference is active %s", "[WRM_IDSLinkEvalManager(privateFunctions) handleTerminusSubscribeStatusUpdate:]_block_invoke", v5, v6];
  [WCM_Logging logLevel:27 message:@"Terminus Link Eval Manager: handleTerminusSubscribeStatusUpdate."];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [*(a1 + 40) miRATProximityClientContexts];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    if (v4)
    {
      v3 = v3;
    }

    else
    {
      v3 = 0;
    }

    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (v12 && [*(*(&v14 + 1) + 8 * i) mTerminusContext])
        {
          [objc_msgSend(v12 "mTerminusContext")];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return [*(a1 + 40) evaluateBTWiFiLinkForTerminus];
}

id sub_100070DB4(uint64_t a1)
{
  v2 = [*(a1 + 32) miRATProximityClientContexts];
  v3 = *(a1 + 40);

  return [v2 addObject:v3];
}

id sub_100070EF0(uint64_t a1)
{
  v2 = [*(a1 + 32) getiRATProximityClientFromList:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);

    return [v4 removeProximityiRatClient:v3];
  }

  else
  {
    v5 = *(a1 + 40);
    if ((v5 - 1) >= 0x15)
    {
      if (v5 == 22)
      {
        v6 = "ClientCoreMediaStreaming";
      }

      else
      {
        v6 = "UNKNOWN_WRM_CLIENT_TYPE!!!";
      }
    }

    else
    {
      v6 = off_10023F3D8[v5 - 1];
    }

    return [WCM_Logging logLevel:27 message:@"%s Proximity iRAT client context not found for %s!!", "[WRM_IDSLinkEvalManager(privateFunctions) deleteProximityiRATClient:]_block_invoke", v6];
  }
}

id sub_1000713B4(id result)
{
  if (!qword_1002B7E28)
  {
    v1.receiver = *(result + 4);
    v1.super_class = &OBJC_METACLASS___WRM_IDSLinkEvalManager;
    result = [objc_msgSendSuper2(&v1 allocWithZone:{0), "init"}];
    qword_1002B7E28 = result;
  }

  return result;
}

void *sub_100071724(void *result)
{
  v1 = result;
  v2 = result[6];
  if (v2 > 22)
  {
    if (v2 <= 24)
    {
      if (v2 == 23)
      {
        [WCM_Logging logLevel:27 message:@"Proximity LinkEval Mgr: Received WRMWebkit controller event controller %p ", result[4]];
        if (v1[4])
        {
          [v1[5] addProximityiRatClient:?];
          v3 = @"Proximity LinkEval Mgr: Initializing Webkit Context";
          goto LABEL_35;
        }

        [WCM_Logging logLevel:27 message:@"updateControllerSession:remove context for (WRMWebkit) from Proximity LinkEval Manager "];
        v6 = v1[5];
        v7 = 15;
      }

      else
      {
        [WCM_Logging logLevel:27 message:@"Proximity LinkEval Mgr: Received WRMWebkitMail controller event controller %p ", result[4]];
        if (v1[4])
        {
          [v1[5] addProximityiRatClient:?];
          v3 = @"Proximity LinkEval Mgr: Initializing WebkitMail Context";
          goto LABEL_35;
        }

        [WCM_Logging logLevel:27 message:@"updateControllerSession:remove context for (WRMWebkitMail) from Proximity LinkEval Manager "];
        v6 = v1[5];
        v7 = 16;
      }
    }

    else
    {
      switch(v2)
      {
        case 25:
          [WCM_Logging logLevel:27 message:@"Proximity LinkEval Mgr: Received WRMWebkitNotification controller event controller %p ", result[4]];
          if (v1[4])
          {
            [v1[5] addProximityiRatClient:?];
            v3 = @"Proximity LinkEval Mgr: Initializing WRMWebkitNotification Context";
            goto LABEL_35;
          }

          [WCM_Logging logLevel:27 message:@"updateControllerSession:remove context for (WRMWebkitNotification) from Proximity LinkEval Manager "];
          v6 = v1[5];
          v7 = 17;
          break;
        case 26:
          [WCM_Logging logLevel:27 message:@"Proximity LinkEval Mgr: Received WRMWirelessStress controller event controller %p ", result[4]];
          if (v1[4])
          {
            [v1[5] addProximityiRatClient:?];
            v3 = @"Proximity LinkEval Mgr: Initializing WRMWirelessStress Context";
            goto LABEL_35;
          }

          [WCM_Logging logLevel:27 message:@"updateControllerSession:remove context for (WRMWirelessStress) from Proximity LinkEval Manager "];
          v6 = v1[5];
          v7 = 18;
          break;
        case 28:
          [WCM_Logging logLevel:27 message:@"Proximity LinkEval Mgr: Received WRMCoreDuet controller event controller %p ", result[4]];
          if (v1[4])
          {
            [v1[5] addProximityiRatClient:?];
            v3 = @"Proximity LinkEval Mgr: Initializing WRMCoreDuet Context";
            goto LABEL_35;
          }

          [WCM_Logging logLevel:27 message:@"updateControllerSession:remove context for (WRMCoreDuet) from Proximity LinkEval Manager "];
          v6 = v1[5];
          v7 = 19;
          break;
        default:
          return result;
      }
    }

LABEL_46:
    [v6 deleteProximityiRATClient:v7];
    goto LABEL_47;
  }

  if (v2 > 10)
  {
    switch(v2)
    {
      case 11:
        [WCM_Logging logLevel:27 message:@"IDS LinkEval Mgr: Receivd WRMIdsClient controller event controller %p", result[4]];
        if (v1[4])
        {
          [v1[5] addiRatClient:?];
          v3 = @"updateControllerSession:Added Client (WRMIdsClient) to IDS LinkEval Manager ";
          goto LABEL_35;
        }

        [WCM_Logging logLevel:27 message:@"updateControllerSession:remove Client (WRMIdsClient) from IDS LinkEval Manager "];
        v8 = v1[5];
        v9 = 4;
        break;
      case 12:
        [WCM_Logging logLevel:27 message:@"IDS LinkEval Mgr: Receivd WRMIdsTool controller event controller %p", result[4]];
        if (v1[4])
        {
          [v1[5] addiRatClient:?];
          v3 = @"updateControllerSession:Added Client (WRMIdsTool) to IDS LinkEval Manager ";
          goto LABEL_35;
        }

        [WCM_Logging logLevel:24 message:@"updateControllerSession:remove Client (WRMIdsTool) from IDS LinkEval Manager "];
        v8 = v1[5];
        v9 = 5;
        break;
      case 19:
        [WCM_Logging logLevel:27 message:@"Proximity LinkEval Mgr: Receivd WRMTerminus controller event controller %p ", result[4]];
        if (v1[4])
        {
          [v1[5] addProximityiRatClient:?];
          v3 = @"Proximity LinkEval Mgr: Initializing Terminus Context";
LABEL_35:
          [WCM_Logging logLevel:27 message:v3];
          goto LABEL_47;
        }

        [WCM_Logging logLevel:27 message:@"updateControllerSession:remove context for (WRMTerminus) from Proximity LinkEval Manager "];
        v6 = v1[5];
        v7 = 13;
        goto LABEL_46;
      default:
        return result;
    }

    [v8 deleteiRATClient:v9];
    goto LABEL_47;
  }

  if (v2 == 1)
  {
    [WCM_Logging logLevel:27 message:@"IDS LinkEval Mgr: Receivd WiFi controller event controller %p", result[4]];
    v5 = *(v1[5] + 24);
    if (v5)
    {
    }

    *(v1[5] + 24) = v1[4];
  }

  else
  {
    if (v2 != 4)
    {
      return result;
    }

    [WCM_Logging logLevel:27 message:@"IDS LinkEval Mgr: Receivd BT controller event controller %p", result[4]];
    v4 = *(v1[5] + 32);
    if (v4)
    {
    }

    *(v1[5] + 32) = v1[4];
  }

LABEL_47:
  v10 = v1[5];
  v11 = v1[6];

  return [v10 handleControllerAvailability:v11];
}

id sub_10007229C(uint64_t a1)
{
  v2 = [*(a1 + 32) isMarconiDevice];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [*(a1 + 32) miRATProximityClientContexts];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        if ([objc_msgSend(v8 "mTerminusContext")] == 1)
        {
          [WCM_Logging logLevel:27 message:@"Do not evaluate, WiFi versus BT because subscription is for WiFi versus Cellular"];
          goto LABEL_39;
        }

        if (v2)
        {
          if (([objc_msgSend(v8 "mTerminusContext")] & 1) == 0)
          {
            v9 = [*(a1 + 32) canWiFiRadioMeetTerminusRequirementsForCompanionLink:v8];
            if (v9 != [objc_msgSend(v8 "mTerminusContext")])
            {
              [objc_msgSend(v8 "mTerminusContext")];
              [objc_msgSend(v8 "mTerminusContext")];
            }
          }

          v10 = [*(a1 + 32) canWiFiRadioMeetTerminusRequirements:v8];
          if (v10 != [objc_msgSend(v8 "mTerminusContext")])
          {
            [objc_msgSend(v8 "mTerminusContext")];
            [objc_msgSend(v8 "mTerminusContext")];
          }

          v11 = [*(a1 + 32) getBTLQMScore];
          [*(a1 + 32) updateBTLQMScore];
          *(*(a1 + 32) + 68) = v11 != [*(a1 + 32) getBTLQMScore];
          v12 = [*(a1 + 32) canBTMeetTerminusRequirement];
          v13 = [objc_msgSend(v8 "mTerminusContext")];
          if (v12)
          {
            if ((v13 & 1) != 0 || ([*(a1 + 32) isPingPongAvoidanceTimerSatisfied:v8] & 1) == 0 && !objc_msgSend(objc_msgSend(v8, "mTerminusContext"), "mForceUpdateNeeded"))
            {
              goto LABEL_24;
            }
          }

          else if (!v13 || ([*(a1 + 32) isPingPongAvoidanceTimerSatisfied:v8] & 1) == 0 && (objc_msgSend(objc_msgSend(v8, "mTerminusContext"), "mForceUpdateNeeded") & 1) == 0)
          {
            goto LABEL_24;
          }

          [objc_msgSend(v8 "mTerminusContext")];
          [objc_msgSend(v8 "mTerminusContext")];
LABEL_24:
          if ([*(*(a1 + 32) + 32) isBTMetricsValid])
          {
            [objc_msgSend(v8 "mTerminusContext")];
            [*(*(a1 + 32) + 32) getBtTxPer];
            [objc_msgSend(v8 "mTerminusContext")];
            [*(*(a1 + 32) + 32) getBtRxPer];
            [objc_msgSend(v8 "mTerminusContext")];
            [objc_msgSend(v8 "mTerminusContext")];
          }

          if ([objc_msgSend(v8 "mTerminusContext")])
          {
            [objc_msgSend(v8 "mTerminusContext")];
            [objc_msgSend(v8 "mTerminusContext")];
          }

          if ([objc_msgSend(v8 "mTerminusContext")] && (objc_msgSend(objc_msgSend(v8, "mTerminusContext"), "mBtLinkIsRecommended") & 1) == 0 && (objc_msgSend(objc_msgSend(v8, "mTerminusContext"), "mDirectWifiLinkIsRecommended") & 1) == 0 && objc_msgSend(*(a1 + 32), "canWiFiRadioMeetMinRequirements"))
          {
            [WCM_Logging logLevel:27 message:@"Go ahead and recommend Direct Wifi since BT is very weak and Wifi is acceptable, but not great"];
            [objc_msgSend(v8 "mTerminusContext")];
            [objc_msgSend(v8 "mTerminusContext")];
          }

          goto LABEL_33;
        }

        [WCM_Logging logLevel:27 message:@"Go ahead and recommend all links as TRUE on non marconi watch"];
        [objc_msgSend(v8 "mTerminusContext")];
        [objc_msgSend(v8 "mTerminusContext")];
        [objc_msgSend(v8 "mTerminusContext")];
LABEL_33:
        v16 = ([objc_msgSend(v8 "mTerminusContext")] & 1) != 0 || (objc_msgSend(objc_msgSend(v8, "mTerminusContext"), "mCompanionWifiLinkRecommendationUpdateNeeded") & 1) != 0 || (objc_msgSend(objc_msgSend(v8, "mTerminusContext"), "mDirectWifiLinkRecommendationUpdateNeeded") & 1) != 0 || objc_msgSend(objc_msgSend(v8, "mTerminusContext"), "mForceUpdateNeeded");
        [objc_msgSend(v8 "mTerminusContext")];
        [v8 handleLinkPreferenceNotificationTerminus];
LABEL_39:
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v17 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v5 = v17;
    }

    while (v17);
  }

  return [*(a1 + 32) postBluetoothLQMScore:0];
}

void sub_1000734B8(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"timerHandler"];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "kWRMHomeKitBtLoad", *(*(a1 + 32) + 72));
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *(*(a1 + 32) + 8);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (v9)
          {
            [v9 sendMessage:2803 withArgs:{v3, v10}];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    *(*(a1 + 32) + 72) = *(*(a1 + 32) + 76);
  }
}

void sub_1000739D4(uint64_t a1, id a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [a2 UTF8String];
  v9 = *(a1 + 32);
  v10 = [v7 BOOLValue];

  xpc_dictionary_set_BOOL(v9, v8, v10);
}

void sub_100073C64(uint64_t a1, id a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [a2 UTF8String];
  v9 = *(a1 + 32);
  v10 = [v7 BOOLValue];

  xpc_dictionary_set_BOOL(v9, v8, v10);
}

void sub_100074370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100074390(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    result = [WCM_Logging logLevel:0 message:@"WRSI: Invalid type for key %@: expected NSNumber", a2];
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10007511C(AppleSARHelper *a1, void *a2, unsigned int a3, unsigned int a4, BOOL *a5)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v9 = a3;
  if (a3 > 3)
  {
    return 0;
  }

  v8 = 0;
  v7 = 1;
  result = AppleSARHelper::callUserClientMethod(a1, a4, &v9, 1u, a2, 1uLL, &v8, &v7, a2, 1uLL);
  if (a5)
  {
    *a5 = v8 != 0;
  }

  return result;
}

uint64_t sub_1000751D4(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    sub_100004250(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004250(v3);
  }

  return a1;
}

uint64_t sub_10007522C()
{
  if ((byte_1002B7780 & 1) == 0)
  {
    byte_1002B7780 = 1;
    return __cxa_atexit(sub_100075118, &stru_1002B7730, &_mh_execute_header);
  }

  return result;
}

void sub_100075F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100076984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100076B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100076F5C(void *a1)
{
  object = a1;
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    [WCM_Logging logLevel:0 message:@"parse_xpc_msg(str) = %s", xpc_string_get_string_ptr(object)];
    goto LABEL_17;
  }

  if (xpc_get_type(object) == &_xpc_type_double)
  {
    [WCM_Logging logLevel:0 message:@"parse_xpc_msg(double) = %f", xpc_double_get_value(object)];
    goto LABEL_17;
  }

  if (xpc_get_type(object) == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(object);
    v3 = @"parse_xpc_msg(int64) = 0x%llx";
LABEL_16:
    [WCM_Logging logLevel:0 message:v3, value];
    goto LABEL_17;
  }

  if (xpc_get_type(object) == &_xpc_type_uint64)
  {
    value = xpc_uint64_get_value(object);
    v3 = @"parse_xpc_msg(uint64) = 0x%llx";
    goto LABEL_16;
  }

  if (xpc_get_type(object) == &_xpc_type_BOOL)
  {
    [WCM_Logging logLevel:0 message:@"parse_xpc_msg(BOOL) = 0x%x", xpc_BOOL_get_value(object)];
  }

  else if (xpc_get_type(object) == &_xpc_type_data)
  {
    length = xpc_data_get_length(object);
    bytes_ptr = xpc_data_get_bytes_ptr(object);
    v6 = malloc_type_malloc((2 * length) | 1, 0x100004077774924uLL);
    v7 = v6;
    *(v6 + 2 * length) = 0;
    if (length)
    {
      v8 = v6;
      do
      {
        v9 = *bytes_ptr++;
        sprintf(v8, "%02x", v9);
        v8 += 2;
        --length;
      }

      while (length);
    }

    [WCM_Logging logLevel:0 message:@"parse_xpc_msg(data..) = 0x%s", v7];
    free(v7);
  }

  else if (xpc_get_type(object) == &_xpc_type_array)
  {
    count = xpc_array_get_count(object);
    syslog(6, "value = ");
    if (count)
    {
      for (i = 0; i != count; ++i)
      {
        v12 = __stderrp;
        uint64 = xpc_array_get_uint64(object, i);
        fprintf(v12, "%02X", uint64);
      }
    }

    fputc(10, __stderrp);
  }

  else
  {
    if (xpc_get_type(object) == &_xpc_type_null)
    {
      v1 = @"parse_xpc_msg- Rcvd XPC_type of NULL Type";
    }

    else
    {
      v1 = @"parse_xpc_msg- Rcvd XPC_type not handled";
    }

    [WCM_Logging logLevel:0 message:v1];
  }

LABEL_17:
}

id sub_10007DD88(uint64_t a1)
{
  result = [WCM_Logging logLevel:24 message:@"setLowPowerModePeriodicWakeUpNotificationSubscribed to %d", *(a1 + 40)];
  *(*(a1 + 32) + 76) = *(a1 + 40);
  return result;
}

id sub_10007DF38(uint64_t a1)
{
  [WCM_Logging logLevel:24 message:@"setLowPowerModePeriodicWakeUpNotificationSubscribed to %d", *(a1 + 40)];
  *(*(a1 + 32) + 77) = *(a1 + 40);
  v2 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];

  return [v2 sendInitialVoiceLqmNotification];
}

uint64_t sub_10007E100(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1002B7E38;
  qword_1002B7E38 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10007E2E8(uint64_t a1, void *a2)
{
  v3 = a2;
  [WCM_Logging logLevel:24 message:@"BTBeacon Controller::CBDiscovery: Device found or updated: %@", v3];
  [*(a1 + 32) onBleBeaconReceived:v3];
}

id sub_10007E38C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [WCM_Logging logLevel:24 message:@"BTBeacon Controller::CBDiscovery: Error: %@", a2];
  }

  *(*(a1 + 32) + 16) = 1;

  return [WCM_Logging logLevel:24 message:@"BTBeacon Controller::CBDiscovery: Activated Successfully"];
}

void sub_10007EF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK::~ARI_UtaIdcRTSetScanFreqReqV3_SDK(va);

  _Unwind_Resume(a1);
}

void sub_10007EFE4(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK(v11, a2, a3);
  isARIResponseValid = ice::isARIResponseValid(v11, 0x491D8000, v4);
  GMID = AriSdk::MsgBase::getGMID(v11);
  [*(a1 + 32) checkErrorMsgGmid:(GMID >> 17) & 0xFFFF8000 | (GMID << 26) expectedGMID:1226670080 API_Str:*(a1 + 40)];
  if (isARIResponseValid)
  {
    if (AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK::unpack(v11))
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
  AriSdk::ARI_UtaIdcRTSetScanFreqRspCbV3_SDK::~ARI_UtaIdcRTSetScanFreqRspCbV3_SDK(v11);
}