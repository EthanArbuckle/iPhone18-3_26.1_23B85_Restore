void sub_100001F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v13 = +[TPSLogger welcome];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "xpc_activity to show welcome notification run received", &v14, 2u);
    }

    [*(a1 + 32) setWelcomeXPCActivityScheduleInProgress:0];
    [*(a1 + 32) registerToNotifyWelcome];
  }

  else if (!state)
  {
    v5 = +[TPSLogger welcome];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "xpc activity check in state received.", &v14, 2u);
    }

    v6 = xpc_activity_copy_criteria(v3);
    v7 = v6;
    if (!v6 || xpc_dictionary_get_int64(v6, XPC_ACTIVITY_DELAY) <= 0)
    {
      v8 = [*(a1 + 32) getCurrentWelcomeActivityCriteria];

      xpc_activity_set_criteria(v3, v8);
      int64 = xpc_dictionary_get_int64(v8, XPC_ACTIVITY_DELAY);
      v10 = xpc_dictionary_get_int64(v8, XPC_ACTIVITY_GRACE_PERIOD);
      v11 = +[TPSLogger welcome];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v14 = 138412802;
        v15 = v12;
        v16 = 2048;
        v17 = int64;
        v18 = 2048;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Schedule welcome notification with identifier %@, delay %lld, grace period %lld", &v14, 0x20u);
      }

      v7 = v8;
    }
  }
}

void sub_10000282C(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [a1[4] setObject:a1[5] forKey:@"TPSCurrentWelcomeXPCActivityIdentifier"];
    [a1[4] synchronize];
    v6 = [a1[6] getCurrentWelcomeActivityCriteria];
    v7 = a1[4];
    v8 = +[NSDate date];
    [v7 setObject:v8 forKey:@"TPSWelcomeNotificationStartDate"];

    [a1[4] synchronize];
    v9 = [a1[5] UTF8String];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002A50;
    handler[3] = &unk_100024B18;
    handler[4] = a1[6];
    xpc_activity_register(v9, v6, handler);
    int64 = xpc_dictionary_get_int64(v6, XPC_ACTIVITY_DELAY);
    v11 = xpc_dictionary_get_int64(v6, XPC_ACTIVITY_GRACE_PERIOD);
    v12 = +[TPSLogger welcome];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[5];
      *buf = 138412802;
      v16 = v13;
      v17 = 2048;
      v18 = int64;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Schedule welcome notification with identifier %@, delay %lld, grace period %lld", buf, 0x20u);
    }
  }

  else
  {
    if ((+[TPSUserTypesValidation isBetaBuild](TPSUserTypesValidation, "isBetaBuild") & 1) == 0 && (+[TPSUserTypesValidation isInternalBuild](TPSUserTypesValidation, "isInternalBuild") & 1) == 0 && [v5 code] != -1009)
    {
      [a1[6] stopWelcomeNotification];
    }

    [a1[6] setWelcomeXPCActivityScheduleInProgress:0];
  }
}

id sub_100002A50(uint64_t a1, xpc_activity_t activity)
{
  result = xpc_activity_get_state(activity);
  if (result == 2)
  {
    [*(a1 + 32) setWelcomeXPCActivityScheduleInProgress:0];
    v4 = *(a1 + 32);

    return [v4 registerToNotifyWelcome];
  }

  return result;
}

void sub_100003A44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100003A60(uint64_t a1, int a2)
{
  if (MKBDeviceUnlockedSinceBoot() >= 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 0;
    atomic_compare_exchange_strong(byte_1000299E0, &v5, 1u);
    v6 = +[TPSLogger daemon];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = atomic_load(byte_1000299E0);
      v8[0] = 67109120;
      v8[1] = v7 & 1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "First unlock received %d", v8, 8u);
    }

    [WeakRetained initialize];
    notify_cancel(a2);
  }
}

BOOL sub_100003C04(uint64_t a1, void *a2, xpc_activity_state_t a3)
{
  v5 = a2;
  state = xpc_activity_get_state(v5);
  v7 = +[TPSLogger daemon];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v17 = 138412802;
    v18 = v8;
    v19 = 2048;
    v20 = state;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Transitioning activity (%@) from state %ld to state %ld.", &v17, 0x20u);
  }

  v9 = state == a3;
  if (state == a3)
  {
    v10 = +[TPSLogger daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v17 = 138412546;
      v18 = v11;
      v19 = 2048;
      v20 = a3;
      v12 = "Activity (%@) state is already %ld. No change necessary.";
      v13 = v10;
      v14 = 22;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!xpc_activity_set_state(v5, a3))
  {
    v10 = +[TPSLogger daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v17 = 138412802;
      v18 = v15;
      v19 = 2048;
      v20 = state;
      v21 = 2048;
      v22 = a3;
      v12 = "Failed to transition activity (%@) from state %ld to state %ld.";
      v13 = v10;
      v14 = 32;
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:

  return v9;
}

uint64_t sub_100003EAC(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v2 = *(*(a1 + 40) + 8);
LABEL_4:
    *(v2 + 24) = 1;
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_1000041F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004214(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained contentUpdatePostProcessingContentPackage:v7 shouldUpdateNotification:*(a1 + 64) shouldDeferBlock:*(a1 + 40) error:v6];

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 5;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), v9);
}

void sub_1000046C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_100004734(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (state == 2)
  {
    v6 = [*(a1 + 32) shouldDeferBlockForXPCActivity:v3];
    v7 = [*(a1 + 32) xpcActivitySetStateBlockForIdentifier:@"com.apple.tipsd.postInstall-utility"];
    v8 = +[TPSLogger daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = @"com.apple.tipsd.postInstall-utility";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "1 to 5 minutes post install load event received: %@", buf, 0xCu);
    }

    if ((v6[2](v6) & 1) == 0)
    {
      [WeakRetained logDaemonActiveEventWithReason:TPSAnalyticsDaemonActiveReasonUpgrade];
    }

    if (v6[2](v6))
    {
      v9 = 3;
    }

    else if (*(a1 + 48) & 1) == 0 && (v10 = atomic_load(byte_1000299E0), (v10) && [WeakRetained setupCompleted])
    {
      LOBYTE(v11) = 0;
      [WeakRetained updateContentWithActivity:v3 identifier:@"com.apple.tipsd.postInstall-utility" preferredNotificationIdentifiers:0 multiuserModeOn:*(a1 + 48) contextualEligibility:1 widgetEligibility:1 notificationEligibility:v11];
      if (v6[2](v6))
      {
        v9 = 3;
      }

      else
      {
        v9 = 5;
      }
    }

    else
    {
      v9 = 5;
    }

    (v7)[2](v7, v3, v9);
  }
}

void sub_100004920(uint64_t a1, void *a2)
{
  v7 = a2;
  state = xpc_activity_get_state(v7);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (state == 2)
  {
    [WeakRetained logDaemonActiveEventWithReason:TPSAnalyticsDaemonActiveReasonContentCheck];
    LOBYTE(v6) = 1;
    [v5 updateContentWithActivity:v7 identifier:@"com.apple.tipsd.update-content" preferredNotificationIdentifiers:0 multiuserModeOn:*(a1 + 40) contextualEligibility:1 widgetEligibility:1 notificationEligibility:v6];
  }
}

void sub_1000049CC(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (state == 2)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      if (WeakRetained)
      {
        v7 = atomic_load(byte_1000299E0);
        if (v7)
        {
          [WeakRetained logDaemonActiveEventWithReason:TPSAnalyticsDaemonActiveReasonAnalyticsMaintenance];
          if ([v6 setupCompleted])
          {
            v8 = [TPSAnalyticsProcessingController alloc];
            v9 = [v6[16] tipStatusMap];
            v10 = [v9 allValues];
            v11 = [v6 contextualInfoMap];
            v12 = [v6[17] eventsHistoryController];
            v13 = [v12 contextualEventsForIdentifiers];
            v14 = [v6 tipsManager];
            v15 = [v14 experiment];
            v16 = [v8 initWithAllTipStatus:v10 contextualInfoMap:v11 eventHistoryMap:v13 experiment:v15];

            [v16 processAnalytics];
            v17 = objc_alloc_init(SupportFlowSessionProcessor);
            [v17 processAnalytics];
          }
        }
      }
    }

    if (!xpc_activity_set_state(v3, 5))
    {
      v18 = +[TPSLogger daemon];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed setting activity state to done", v19, 2u);
      }
    }
  }
}

void sub_100004BA8(id a1, OS_xpc_object *a2)
{
  v2 = +[TPSLogger daemon];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSString stringWithUTF8String:kNSURLSessionLaunchOnDemandNotificationName];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ launch event received", &v4, 0xCu);
  }
}

void sub_100004C74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TPSLogger daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSString stringWithUTF8String:"com.apple.coreduetcontext.client_event_stream"];
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ launch event received", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if ((*(a1 + 40) & 1) == 0)
  {
    if (WeakRetained)
    {
      v8 = atomic_load(byte_1000299E0);
      if (v8)
      {
        [WeakRetained logDaemonActiveEventWithReason:TPSAnalyticsDaemonActiveReasonDuet];
        string = xpc_dictionary_get_string(v3, "msgtype");
        if (string)
        {
          v10 = [NSString stringWithUTF8String:string];
          v11 = [v10 isEqualToString:@"notification"];

          if (v11)
          {
            if (xpc_dictionary_get_string(v3, "id"))
            {
              v12 = +[TPSLogger daemon];
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                sub_100014F0C();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100004E28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if ((*(a1 + 48) & 1) == 0)
  {
    if (WeakRetained)
    {
      v6 = atomic_load(byte_1000299E0);
      if (v6)
      {
        v7 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, _xpc_event_key_name)];
        v8 = +[TPSLogger daemon];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "notifyd.matching event received %@", buf, 0xCu);
        }

        if (![v5 tipsInValidState])
        {
          goto LABEL_26;
        }

        v9 = [*(a1 + 32) notificationTimingDarwinKey];
        v10 = [v7 isEqualToString:v9];

        if (v10)
        {
          if ([v5 setupCompleted])
          {
            [v5 showNewTipNotification];
          }

          goto LABEL_26;
        }

        if ([v7 isEqualToString:BYSetupAssistantExitedDarwinNotification])
        {
          if (*(a1 + 48) == 1)
          {
            exit(0);
          }

          v11 = +[TPSCommonDefines sharedInstance];
          v12 = +[TPSCommonDefines clientBundleIdentifier];
          v13 = [TPSCommonDefines isAppValidWithBundleIdentifier:v12];

          v14 = +[TPSLogger daemon];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v22) = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "App state valid: %d", buf, 8u);
          }

          v15 = [v5 welcome];
          [v15 createWelcomeXPCActivity];

          goto LABEL_26;
        }

        if ([v7 isEqualToString:@"com.apple.language.changed"])
        {
          [v5 handleLanguageDidChangeNotification];
LABEL_27:

          goto LABEL_28;
        }

        if ([v7 isEqualToString:@"com.apple.mobile.keybagd.first_unlock"])
        {
          [v5 handleDeviceFirstUnlockNotification];
          goto LABEL_27;
        }

        v16 = TPSHMManagerSpeakersConfiguredChangedNotificationString();
        v17 = [v7 isEqualToString:v16];

        if (v17)
        {
          v18 = [TPSTipsManager immediateNotificationIdentifierForType:2];
          if ([v18 length])
          {
            v20 = v18;
            v19 = [NSArray arrayWithObjects:&v20 count:1];
LABEL_25:

            [v5 immediateNotificationForIdentifiers:v19];
LABEL_26:
            [v5 unregisterDarwinNotification:v7];
            goto LABEL_27;
          }
        }

        else
        {
          v18 = +[TPSLogger daemon];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v7;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Event %@ not handled", buf, 0xCu);
          }
        }

        v19 = 0;
        goto LABEL_25;
      }
    }
  }

LABEL_28:
}

void sub_100005954(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[TPSLogger daemon];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) document];
      v6 = [v5 identifier];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notification image for %@ cache at %@", &v7, 0x16u);
    }
  }

  [*(a1 + 40) prepareForNotifications];
}

void sub_100005B80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100005BA4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v8 identifier];
  v11 = [v8 correlationID];

  v12 = +[TPSLogger daemon];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v13)
    {
      v19 = 138413058;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2048;
      v24 = a3;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to send a notification with identifier: %@ correlation id: %@, type: %ld with error: %@", &v19, 0x2Au);
    }

    if ([v7 code] == 4)
    {
      v14 = [[TPSAnalyticsEventTipNotDisplayed alloc] initWithTipID:v10 correlationID:v11 reason:3 context:0];
      [v14 log];
      v15 = [WeakRetained notificationController];
      [WeakRetained notificationController:v15 markIdentifier:v10 type:a3 ineligibleWithReason:3];
    }

    if (a3 != 3)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v13)
  {
    v19 = 138412802;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2048;
    v24 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sent a notification with identifier: %@ correlation id: %@, type: %ld", &v19, 0x20u);
  }

  switch(a3)
  {
    case 3:
      +[TPSTipsManager removeWelcomeDocumentCache];
LABEL_19:
      v18 = [WeakRetained welcome];
      [v18 welcomeNotificationDisplayed];
LABEL_20:

      break;
    case 2:
      if (v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = v10;
      }

      v17 = v16;
      v18 = +[TPSCloudController sharedInstance];
      [v18 hintDisplayedForContentID:v17];

      goto LABEL_20;
    case 1:
      [WeakRetained hintDisplayedForIdentifier:v10 correlationID:v11 context:0];
      break;
  }

LABEL_21:
}

void sub_100006118(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v9 && !v8 && (*(a1 + 48) & 1) != 0)
  {
    [*(a1 + 32) indexContentPackage:v9 hmtContentPackage:v7];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000064E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006500(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TPSLogger indexing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100014F7C();
  }

  v5 = +[TPSSearchItemIndexer default];
  v6 = [*(a1 + 32) tipMap];
  v7 = [v6 allValues];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006614;
  v9[3] = &unk_100024D38;
  v10 = v3;
  v8 = v3;
  [v5 indexTips:v7 qualityOfService:9 completionHandler:v9];
}

void sub_100006614(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TPSLogger indexing];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100014FB0();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Tips indexing completed successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000066D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TPSLogger indexing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100015018();
  }

  v5 = [*(a1 + 32) userGuideMap];
  v6 = [v5 allValues];

  v7 = +[TPSSearchItemIndexer default];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000067E4;
  v9[3] = &unk_100024D38;
  v10 = v3;
  v8 = v3;
  [v7 indexUserGuides:v6 qualityOfService:9 completionHandler:v9];
}

void sub_1000067E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TPSLogger indexing];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001504C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User Guide indexing completed successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000068A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TPSLogger indexing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000150B4();
  }

  v5 = +[TPSSearchItemIndexer default];
  v6 = [*(a1 + 32) collectionMap];
  v7 = [v6 allValues];
  v8 = [NSPredicate predicateWithBlock:&stru_100024DA0];
  v9 = [v7 filteredArrayUsingPredicate:v8];

  v10 = +[TPSLogger indexing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000150E8(v9);
  }

  if ([v9 count])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006AC4;
    v12[3] = &unk_100024DC8;
    v13 = v9;
    v14 = v3;
    [v5 indexSupportFlows:v13 qualityOfService:9 completionHandler:v12];
  }

  else
  {
    v11 = +[TPSLogger indexing];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100015160();
    }

    (*(v3 + 2))(v3, 0);
  }
}

BOOL sub_100006A8C(id a1, TPSCollection *a2, NSDictionary *a3)
{
  v3 = [(TPSCollection *)a2 supportID];
  v4 = v3 != 0;

  return v4;
}

void sub_100006AC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[TPSLogger indexing];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100015194();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) count];
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "HMT Collections indexing completed successfully. Indexed %lu HMT collections.", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100006BC0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100007430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007454(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (a3)
  {
    v10 = v7;
    v7 = [v7 intValue];
    v8 = v10;
    if (v7)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  return _objc_release_x1(v7, v8);
}

void sub_100007818(uint64_t a1)
{
  v2 = [*(a1 + 32) assistantConnections];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void sub_100007944(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained assistantConnections];
  [v2 addObject:*(a1 + 32)];
}

void sub_100007A70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v6 = WeakRetained;
    v3 = [WeakRetained assistantConnections];
    v4 = [v3 containsObject:*(a1 + 32)];

    WeakRetained = v6;
    if (v4)
    {
      [*(a1 + 32) invalidate];
      v5 = [v6 assistantConnections];
      [v5 removeObject:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

void sub_100007BDC(uint64_t a1)
{
  v2 = [*(a1 + 32) supportFlowConnections];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void sub_100007D08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained supportFlowConnections];
  [v2 addObject:*(a1 + 32)];
}

void sub_100007E34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained supportFlowConnections];
  v3 = [v2 containsObject:*(a1 + 32)];

  if (v3)
  {
    [*(a1 + 32) invalidate];
    v4 = [WeakRetained supportFlowConnections];
    [v4 removeObject:*(a1 + 32)];
  }
}

void sub_100007F94(uint64_t a1)
{
  v2 = [*(a1 + 32) assistantConnections];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void sub_1000080C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained discoverabilityConnections];
  [v2 addObject:*(a1 + 32)];
}

void sub_1000081EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v6 = WeakRetained;
    v3 = [WeakRetained discoverabilityConnections];
    v4 = [v3 containsObject:*(a1 + 32)];

    WeakRetained = v6;
    if (v4)
    {
      [*(a1 + 32) invalidate];
      v5 = [v6 discoverabilityConnections];
      [v5 removeObject:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

void sub_100008398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000083B0(uint64_t a1)
{
  v2 = [*(a1 + 32) appConnections];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void sub_1000084DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000154C8();
  }

  v4 = [WeakRetained appConnections];
  [v4 addObject:*(a1 + 32)];
}

void sub_10000862C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v6 = WeakRetained;
    v3 = [WeakRetained appConnections];
    v4 = [v3 containsObject:*(a1 + 32)];

    WeakRetained = v6;
    if (v4)
    {
      [*(a1 + 32) invalidate];
      v5 = [v6 appConnections];
      [v5 removeObject:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

void sub_100008ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v30 - 152));
  _Unwind_Resume(a1);
}

void sub_100008F5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeAssistantXPCConnection:v3];

  v4 = +[TPSLogger daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device Expert xpc connection invalidated", v5, 2u);
  }
}

void sub_100008FFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeSupportFlowXPCConnection:v3];

  v4 = +[TPSLogger daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Support Flow xpc connection invalidated", v5, 2u);
  }
}

void sub_10000909C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeAppXPCConnection:v3];

  v4 = +[TPSLogger daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "App xpc connection invalidated", v5, 2u);
  }
}

void sub_10000913C(id a1)
{
  v1 = +[TPSLogger daemon];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "standard access connection invalidated", v2, 2u);
  }
}

void sub_1000091AC(id a1)
{
  v1 = +[TPSLogger daemon];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "xpc connection from client interrupted!", v2, 2u);
  }
}

void sub_10000994C(id a1, TPSContentPackage *a2, TPSContentPackage *a3, NSError *a4)
{
  v4 = a4;
  v5 = +[TPSLogger daemon];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = v4;
      v7 = "Failed to update content for language change. Error: %@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v10) = 0;
    v7 = "Successfully updated content for language change";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  xpc_transaction_exit_clean();
}

void sub_100009B24(id a1, TPSContentPackage *a2, TPSContentPackage *a3, NSError *a4)
{
  v4 = a4;
  v5 = +[TPSLogger daemon];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = v4;
      v7 = "Failed to reregister event registration. Error: %@";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    LOWORD(v10) = 0;
    v7 = "Successfully registered events from first unlock notification";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  xpc_transaction_exit_clean();
}

void sub_100009EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009ED8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained notificationController];
  v6 = [v5 notificationCache];

  if (!v6)
  {
    v7 = +[TPSLogger daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No document found to notify.", buf, 2u);
    }

    v8 = [v3 collectionMap];
    v21 = v3;
    v22 = [v3 tipMap];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = +[TPSCommonDefines sharedInstance];
            v17 = [NSSet setWithObject:v14];
            [v16 activatedCollections:v17];

            v18 = +[TPSCloudController sharedInstance];
            [v18 hintDisplayedForContentID:v14];
          }

          else
          {
            v19 = [v22 objectForKeyedSubscript:v14];
            v18 = v19;
            if (v19)
            {
              v20 = [v19 correlationID];
              [WeakRetained hintDisplayedForIdentifier:v14 correlationID:v20 context:0];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    v3 = v21;
    v6 = 0;
  }

  [WeakRetained updateNotificationStatus];
}

void sub_10000A34C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_10000A368(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained tipsManager];
  v10 = [v9 processUserGuidesFromContentPackage:v7];

  if (v6)
  {
    v11 = +[TPSLogger daemon];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "User guide map may be missing items due to %@", &v12, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000A6A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  if (v5)
  {
    v7 = +[TPSLogger daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100015564(a1, v5, v7);
    }
  }

  else
  {
    v8 = +[TPSLogger daemon];
    v7 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v16 = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Downloaded remote tip %@", &v16, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100015618(a1, v7, v10, v11, v12, v13, v14, v15);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000A8A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if (!(v7 | v6))
  {
    v6 = [NSError errorWithDomain:TPSTipsManagerErrorDomain code:1 userInfo:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000ABE0(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v3 = 32;
  if (!v2)
  {
    v3 = 40;
  }

  v4 = [*(a1 + v3) error];

  if (v4)
  {
    v5 = +[TPSLogger daemon];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000156F8(a1, v5, v6, v7, v8, v9, v10, v11);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = [TPSAssetsInfo alloc];
    v13 = [*(a1 + 40) assetIdentifier];
    v14 = [*(a1 + 40) downloadedURL];
    v15 = [*(a1 + 32) assetIdentifier];
    v16 = [*(a1 + 32) downloadedURL];
    v17 = [v12 initWithVideoIdentifier:v13 videoURL:v14 imageIdentifier:v15 imageURL:v16];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10000AFA8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B080;
  v11[3] = &unk_100025040;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, v11);
}

void sub_10000B080(uint64_t a1)
{
  v2 = [*(a1 + 32) tipsManager];
  v3 = [v2 welcomeCollectionFromContentPackage:*(a1 + 40)];

  if (v3 && ([v3 notification], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [*(a1 + 40) language];
    v6 = [TPSTipsManager deviceLocalesContainLanguage:v5];

    if (v6)
    {
      goto LABEL_10;
    }

    v7 = +[TPSLogger daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No proper translated content found for the device.", &v13, 2u);
    }
  }

  else
  {
    v7 = +[TPSLogger daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) collectionMap];
      v9 = [v8 allKeys];
      v10 = +[TPSCommonDefines sharedInstance];
      v11 = [v10 collectionIdentifierForCurrentUserType];
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to display welcome notification because collection map %@ does not contain proper notification for collection %@", &v13, 0x16u);
    }
  }

LABEL_10:
  v12 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

void sub_10000C180(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10000C1C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000C1DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

int main(int argc, const char **argv, const char **envp)
{
  qword_10002A030 = 0;
  qword_10002A038 = 0;
  qword_10002A040 = 0;
  qword_10002A048 = 0;
  v3 = objc_autoreleasePoolPush();
  sub_10000C38C();
  objc_autoreleasePoolPop(v3);
  v4 = [objc_opt_self() mainRunLoop];
  [v4 run];

  return 0;
}

id sub_10000C38C()
{
  v0 = type metadata accessor for TipsLog();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  if ([v5 isMacSetupEnvironmentUser])
  {
    goto LABEL_18;
  }

  if (!_set_user_dir_suffix())
  {
    static TipsLog.default.getter();
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v26._countAndFlagsBits = 0xD000000000000039;
    v26._object = 0x800000010001A030;
    String.append(_:)(v26);
    v28[3] = errno.getter();
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    logError(_:_:)();

    (*(v1 + 8))(v4, v0);
    abort();
  }

  v6 = NSTemporaryDirectory();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || [v5 isInternalDevice] && (objc_msgSend(objc_opt_self(), "run") & 1) != 0)
  {
LABEL_18:
    exit(0);
  }

  v11 = [objc_allocWithZone(TPSDaemon) init];
  v12 = qword_10002A030;
  qword_10002A030 = v11;

  v13 = objc_allocWithZone(NSXPCListener);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithMachServiceName:v14];

  v16 = qword_10002A038;
  qword_10002A038 = v15;

  if (qword_10002A038)
  {
    [qword_10002A038 setDelegate:qword_10002A030];
    if (qword_10002A038)
    {
      [qword_10002A038 resume];
    }
  }

  v17 = objc_allocWithZone(NSXPCListener);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithMachServiceName:v18];

  v20 = qword_10002A040;
  qword_10002A040 = v19;

  if (qword_10002A040)
  {
    [qword_10002A040 setDelegate:qword_10002A030];
    if (qword_10002A040)
    {
      [qword_10002A040 resume];
    }
  }

  v21 = objc_allocWithZone(NSXPCListener);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 initWithMachServiceName:v22];

  v24 = qword_10002A048;
  qword_10002A048 = v23;

  result = qword_10002A048;
  if (qword_10002A048)
  {
    [qword_10002A048 setDelegate:qword_10002A030];
    result = qword_10002A048;
    if (qword_10002A048)
    {
      return [qword_10002A048 resume];
    }
  }

  return result;
}

Swift::Void __swiftcall TPSDaemon.logForAppTerminate()()
{
  v0 = type metadata accessor for TipsLog();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.analytics.getter();
  logDebug(_:_:)();
  (*(v1 + 8))(v4, v0);
  static SupportFlowSessionManager.logAllSessions()();
}

void _sSo9TPSDaemonC5tipsdE16updateSessionMap10identifier4dataySS_10Foundation4DataVtF_0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for SupportFlowSession();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  (__chkstk_darwin)();
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TipsLog();
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  v14 = (__chkstk_darwin)();
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  static TipsLog.analytics.getter();
  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v19._object = 0x800000010001A120;
  v19._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v19);
  v38 = a1;
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x732061746144202CLL;
  v21._object = 0xED0000203A657A69;
  String.append(_:)(v21);
  v22 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v23 = 0;
    if (v22 != 2)
    {
      goto LABEL_10;
    }

    v25 = *(a3 + 16);
    v24 = *(a3 + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (!v26)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v22)
  {
    v23 = BYTE6(a4);
LABEL_10:
    v36 = a2;
    v39 = v23;
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 0x736574796220;
    v28._object = 0xE600000000000000;
    String.append(_:)(v28);
    logDebug(_:_:)();

    v29 = *(v12 + 8);
    v30 = v37;
    v29(v18, v37);
    v31 = type metadata accessor for JSONDecoder();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10000CE84();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    static SupportFlowSessionManager.updateSessionMap(session:)();
    static TipsLog.analytics.getter();
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v40 = 0xD000000000000028;
    v41 = 0x800000010001A180;
    v34._countAndFlagsBits = v38;
    v34._object = v36;
    String.append(_:)(v34);
    logDebug(_:_:)();

    v29(v16, v30);
    (*(v35 + 8))(v11, v8);
    return;
  }

  LODWORD(v23) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v23 = v23;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10000CE30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000CE84()
{
  result = qword_100029F90;
  if (!qword_100029F90)
  {
    type metadata accessor for SupportFlowSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029F90);
  }

  return result;
}

uint64_t sub_10000CEDC(uint64_t *a1, uint64_t *a2)
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

Swift::Int sub_10000CF38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000CFAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t TPSDaemon.findMatchingResultId(from:reply:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v5 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for TipsLog();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  static TipsLog.default.getter();
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v25 = 0xD00000000000001ELL;
  v26 = 0x800000010001A200;
  if (a1 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24[1] = v17;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  logDebug(_:_:)();

  v19 = *(v10 + 8);
  v19(v16, v9);
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v22 = v24[0];
    v21[4] = a1;
    v21[5] = v22;
    v21[6] = a3;

    sub_10000F0A8(0, 0, v8, &unk_100019528, v21);
  }

  static TipsLog.targeting.getter();
  log(_:_:)();
  v19(v14, v9);
  return (v24[0])(0, 0, 0);
}

uint64_t sub_10000D328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[36] = a4;
  v7 = type metadata accessor for TipsLog();
  v6[39] = v7;
  v8 = *(v7 - 8);
  v6[40] = v8;
  v9 = *(v8 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_10000D3F8, 0, 0);
}

uint64_t sub_10000D3F8()
{
  v1 = *(v0 + 288);
  *(v0 + 344) = [objc_allocWithZone(TPSTargetingCache) init];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 352) = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_14:
    v34 = 0;
    v35 = 0;
LABEL_15:
    v36 = *(v0 + 336);
    v37 = *(v0 + 344);
    v38 = *(v0 + 328);
    v39 = *(v0 + 304);
    (*(v0 + 296))(v2, v34, 0);

    v40 = *(v0 + 8);

    return v40();
  }

LABEL_26:
  if (*(v0 + 288) < 0)
  {
    v54 = *(v0 + 288);
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 352) = v2;
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  v3 = 0;
  v4 = &type metadata for Any;
  while (1)
  {
    v5 = *(v0 + 288);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(v5 + 8 * v3 + 32);
    }

    v7 = v6;
    *(v0 + 360) = v6;
    *(v0 + 368) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v8 = ResultContext.conditions.getter();
    *(v0 + 376) = 0;
    v9 = v8;
    v10 = *(v0 + 336);
    v11 = *(v0 + 312);
    v12 = *(v0 + 320);
    static TipsLog.targeting.getter();
    *(v0 + 216) = 0;
    *(v0 + 224) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v13 = *(v0 + 224);
    v14 = ResultContext.resultId.getter();
    v16 = v15;

    *(v0 + 200) = v14;
    *(v0 + 208) = v16;
    v17._countAndFlagsBits = 0xD000000000000022;
    v17._object = 0x800000010001A450;
    String.append(_:)(v17);
    v18._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v18);

    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    logDebug(_:_:)();

    v21 = v4;
    v22 = *(v12 + 8);
    *(v0 + 384) = v22;
    *(v0 + 392) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v10, v11);
    if (!*(v9 + 16))
    {
      v42 = *(v0 + 336);
      v43 = *(v0 + 312);

      static TipsLog.targeting.getter();
      _StringGuts.grow(_:)(29);
      ResultContext.resultId.getter();

      v44._object = 0x800000010001A4C0;
      v44._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v44);
      log(_:_:)();

      v22(v42, v43);
      v45 = *(v0 + 360);
      v2 = ResultContext.resultId.getter();
      v34 = v46;
      v35 = *(v0 + 360);
      goto LABEL_15;
    }

    sub_10000ED14(v9);

    v23 = objc_allocWithZone(TPSDeliveryPrecondition);
    v24 = v21;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v26 = [v23 initWithDictionary:isa];
    *(v0 + 400) = v26;

    if (v26)
    {
      break;
    }

    v27 = *(v0 + 336);
    v28 = *(v0 + 312);
    static TipsLog.targeting.getter();
    *(v0 + 248) = 0;
    *(v0 + 256) = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v29 = *(v0 + 256);
    *(v0 + 232) = *(v0 + 248);
    *(v0 + 240) = v29;
    v30._countAndFlagsBits = ResultContext.resultId.getter();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0xD000000000000038;
    v31._object = 0x800000010001A480;
    String.append(_:)(v31);
    v32 = *(v0 + 232);
    v33 = *(v0 + 240);
    logError(_:_:)();

    v22(v27, v28);
    v4 = v24;
    v3 = *(v0 + 368);
    if (v3 == *(v0 + 352))
    {
      v2 = 0;
      goto LABEL_14;
    }
  }

  v47 = [v26 conditions];
  sub_100014C4C(0, &qword_10002A000, TPSCondition_ptr);
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v48 >> 62)
  {
    sub_10000CEDC(&qword_10002A008, &qword_1000195F0);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v55 = *(v0 + 344);

  v49 = objc_opt_self();
  sub_10000CEDC(&qword_10002A008, &qword_1000195F0);
  v50 = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 408) = v50;

  v51 = [v26 joinType];
  ResultContext.resultId.getter();
  v52 = String._bridgeToObjectiveC()();
  *(v0 + 416) = v52;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 432;
  *(v0 + 24) = sub_10000DB90;
  v53 = swift_continuation_init();
  *(v0 + 136) = sub_10000CEDC(&qword_10002A010, &qword_1000195F8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10000EFDC;
  *(v0 + 104) = &unk_100025490;
  *(v0 + 112) = v53;
  [v49 validateConditions:v50 joinType:v51 context:v52 cache:v55 completionQueue:0 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10000DB90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 424) = v2;
  if (v2)
  {
    v3 = sub_10000E4C0;
  }

  else
  {
    v3 = sub_10000DCA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000E4C0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 344);
  swift_willThrow();

  v6 = *(v0 + 424);
  v7 = *(v0 + 360);
  v8 = *(v0 + 336);
  v9 = *(v0 + 320);
  v66 = *(v0 + 312);
  static TipsLog.targeting.getter();
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v10 = *(v0 + 192);
  *(v0 + 168) = *(v0 + 184);
  *(v0 + 176) = v10;
  v11._countAndFlagsBits = ResultContext.resultId.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000026;
  v12._object = 0x800000010001A420;
  String.append(_:)(v12);
  swift_getErrorValue();
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  v15 = *(v0 + 160);
  v16._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x697070696B53202ELL;
  v17._object = 0xEB000000002E676ELL;
  String.append(_:)(v17);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  logError(_:_:)();

  (*(v9 + 8))(v8, v66);
  v20 = *(v0 + 368);
  if (v20 == *(v0 + 352))
  {
LABEL_10:
    v46 = 0;
    v47 = 0;
    v48 = 0;
LABEL_12:
    v54 = *(v0 + 336);
    v55 = *(v0 + 344);
    v56 = *(v0 + 328);
    v57 = *(v0 + 304);
    (*(v0 + 296))(v46, v47, 0);

    v58 = *(v0 + 8);

    return v58();
  }

  else
  {
    while (1)
    {
      v21 = *(v0 + 288);
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v22 = *(v21 + 8 * v20 + 32);
      }

      v23 = v22;
      *(v0 + 360) = v22;
      *(v0 + 368) = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v24 = ResultContext.conditions.getter();
      *(v0 + 376) = 0;
      v25 = v24;
      v26 = *(v0 + 336);
      v27 = *(v0 + 312);
      v28 = *(v0 + 320);
      static TipsLog.targeting.getter();
      *(v0 + 216) = 0;
      *(v0 + 224) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v29 = *(v0 + 224);
      v30 = ResultContext.resultId.getter();
      v32 = v31;

      *(v0 + 200) = v30;
      *(v0 + 208) = v32;
      v33._countAndFlagsBits = 0xD000000000000022;
      v33._object = 0x800000010001A450;
      String.append(_:)(v33);
      v34._countAndFlagsBits = Dictionary.description.getter();
      String.append(_:)(v34);

      v35 = *(v0 + 200);
      v36 = *(v0 + 208);
      logDebug(_:_:)();

      v37 = *(v28 + 8);
      *(v0 + 384) = v37;
      *(v0 + 392) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v37(v26, v27);
      if (!*(v25 + 16))
      {
        v49 = *(v0 + 336);
        v50 = *(v0 + 312);

        static TipsLog.targeting.getter();
        _StringGuts.grow(_:)(29);
        ResultContext.resultId.getter();

        v51._object = 0x800000010001A4C0;
        v51._countAndFlagsBits = 0xD00000000000001BLL;
        String.append(_:)(v51);
        log(_:_:)();

        v37(v49, v50);
        v52 = *(v0 + 360);
        v46 = ResultContext.resultId.getter();
        v47 = v53;
        v48 = *(v0 + 360);
        goto LABEL_12;
      }

      sub_10000ED14(v25);

      v38 = objc_allocWithZone(TPSDeliveryPrecondition);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v6 = [v38 initWithDictionary:isa];
      *(v0 + 400) = v6;

      if (v6)
      {
        break;
      }

      v40 = *(v0 + 336);
      v6 = *(v0 + 312);
      static TipsLog.targeting.getter();
      *(v0 + 248) = 0;
      *(v0 + 256) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v41 = *(v0 + 256);
      *(v0 + 232) = *(v0 + 248);
      *(v0 + 240) = v41;
      v42._countAndFlagsBits = ResultContext.resultId.getter();
      String.append(_:)(v42);

      v43._countAndFlagsBits = 0xD000000000000038;
      v43._object = 0x800000010001A480;
      String.append(_:)(v43);
      v44 = *(v0 + 232);
      v45 = *(v0 + 240);
      logError(_:_:)();

      v37(v40, v6);
      v20 = *(v0 + 368);
      if (v20 == *(v0 + 352))
      {
        goto LABEL_10;
      }
    }

    v60 = [v6 conditions];
    sub_100014C4C(0, &qword_10002A000, TPSCondition_ptr);
    v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v61 >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      goto LABEL_17;
    }

LABEL_22:

    sub_10000CEDC(&qword_10002A008, &qword_1000195F0);
    _bridgeCocoaArray<A>(_:)();

LABEL_17:
    v68 = *(v0 + 344);

    v67 = objc_opt_self();
    sub_10000CEDC(&qword_10002A008, &qword_1000195F0);
    v62 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 408) = v62;

    v63 = [v6 joinType];
    ResultContext.resultId.getter();
    v64 = String._bridgeToObjectiveC()();
    *(v0 + 416) = v64;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 432;
    *(v0 + 24) = sub_10000DB90;
    v65 = swift_continuation_init();
    *(v0 + 136) = sub_10000CEDC(&qword_10002A010, &qword_1000195F8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000EFDC;
    *(v0 + 104) = &unk_100025490;
    *(v0 + 112) = v65;
    [v67 validateConditions:v62 joinType:v63 context:v64 cache:v68 completionQueue:0 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10000EC4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014EFC;

  return sub_10000D328(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000ED14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000CEDC(&qword_10002A018, &qword_100019600);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100014AF4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100014CF0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100014CF0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100014CF0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100014CF0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10000EFDC(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100014CAC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000CEDC(&qword_100029F98, &unk_100019500);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000146FC(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10001476C(v12);
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

      sub_10001476C(a3);

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

  sub_10001476C(a3);
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

void sub_10000F3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t TPSDaemon.availableUserGuideIdentifiers(reply:)(uint64_t (*a1)(void *), uint64_t a2)
{
  v5 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (![objc_opt_self() supportsUserGuide])
  {
    return a1(&_swiftEmptyArrayStorage);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  sub_10000F0A8(0, 0, v8, &unk_100019538, v10);
}

uint64_t sub_10000F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_10000F604, 0, 0);
}

uint64_t sub_10000F604()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_100014C4C(0, &qword_100029FD8, TPSContentPackage_ptr);
  *v4 = v0;
  v4[1] = sub_10000F710;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x800000010001A3A0, sub_100014F08, v2, v5);
}

uint64_t sub_10000F710()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_10000F9A4;
  }

  else
  {

    v6 = sub_10000F858;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000F858()
{
  v13 = v0;
  v1 = *(v0 + 16);
  v2 = [v1 userGuideMap];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  type metadata accessor for UserGuide();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_100013914(*(v4 + 16), 0);
    v7 = sub_100013E58(&v12, v6 + 4, v5, v4);
    sub_100014B50();
    if (v7 != v5)
    {
      __break(1u);
LABEL_5:

      v8 = *(v0 + 40);
      (*(v0 + 32))(&_swiftEmptyArrayStorage);
      goto LABEL_8;
    }
  }

  else
  {

    v6 = &_swiftEmptyArrayStorage;
  }

  v9 = *(v0 + 40);
  (*(v0 + 32))(v6);

LABEL_8:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000F9A4()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(&_swiftEmptyArrayStorage);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000FA14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014EFC;

  return sub_10000F5E0(a1, v4, v5, v6, v7, v8);
}

uint64_t TPSDaemon.fetchDocument(identifier:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a1;
  v14[8] = a2;
  v15 = v4;

  sub_10000F0A8(0, 0, v12, &unk_100019548, v14);
}

uint64_t sub_10000FE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  v9 = type metadata accessor for TipsLog();
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v11 = *(v10 + 64) + 15;
  v8[18] = swift_task_alloc();
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  v8[19] = v13;
  *v13 = v8;
  v13[1] = sub_10000FF78;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8 + 24, 0, 0, 0xD000000000000023, 0x800000010001A340, sub_100013340, 0, &type metadata for Bool);
}

uint64_t sub_10000FF78()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100010224;
  }

  else
  {
    v3 = sub_10001008C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001008C()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 88);
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *(v2 + 16) = v1;
    v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v4 = swift_task_alloc();
    *(v0 + 176) = v4;
    v5 = sub_100014C4C(0, &qword_100029FD8, TPSContentPackage_ptr);
    *v4 = v0;
    v4[1] = sub_100010398;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 80, 0, 0, 0xD000000000000019, 0x800000010001A3A0, sub_1000148E8, v2, v5);
  }

  else
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    sub_100014894();
    v8 = swift_allocError();
    *v9 = 2;
    v7(0, v8);

    v10 = *(v0 + 144);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100010224()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  static TipsLog.data.getter();
  _StringGuts.grow(_:)(34);

  swift_getErrorValue();
  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v10._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v10);

  logError(_:_:)();

  (*(v3 + 8))(v2, v4);
  swift_getErrorValue();
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[7];
  v14 = Error.secureEncodableError()();
  v6(0, v14);

  v15 = v0[18];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100010398()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_100010934;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_1000104B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1000104B4()
{
  v1 = v0[10];
  v2 = [v1 collectionMap];
  if (v2)
  {
    v3 = v2;
    sub_100014C4C(0, &qword_100029FE8, TPSCollection_ptr);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 tipMap];
  if (v5)
  {
    v6 = v5;
    sub_100014C4C(0, &qword_100029FE0, TPSTip_ptr);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (*(v4 + 16))
  {
    v8 = sub_10001389C(v0[14], v0[15]);
    if (v9)
    {
      v10 = *(*(v4 + 56) + 8 * v8);

      if (v7)
      {
        goto LABEL_15;
      }

LABEL_11:
      if (!v10)
      {
LABEL_40:
        v36 = v0[17];
        v35 = v0[18];
        v38 = v0[15];
        v37 = v0[16];
        v39 = v0[13];
        v40 = v0[14];
        v41 = v0[12];
        static TipsLog.data.getter();
        _StringGuts.grow(_:)(27);

        v42._countAndFlagsBits = v40;
        v42._object = v38;
        String.append(_:)(v42);
        v43._countAndFlagsBits = 0x756F6620746F6E20;
        v43._object = 0xEB000000002E646ELL;
        String.append(_:)(v43);
        logDebug(_:_:)();

        (*(v36 + 8))(v35, v37);
        sub_100014894();
        v44 = swift_allocError();
        *v45 = 0;
        v41(0, v44);

        goto LABEL_41;
      }

      goto LABEL_20;
    }
  }

LABEL_14:
  v10 = 0;
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_15:
  if (*(v7 + 16))
  {
    v12 = v0[14];
    v11 = v0[15];

    v13 = sub_10001389C(v12, v11);
    if (v14)
    {
      v15 = *(*(v7 + 56) + 8 * v13);

      swift_bridgeObjectRelease_n();
      v10 = v15;
LABEL_21:
      v16 = v0[12];
      v17 = v0[13];
      v18 = v10;
      v16(v10, 0);

      v1 = v18;
LABEL_41:

      v46 = v0[18];

      v47 = v0[1];

      v47();
      return;
    }
  }

  if (v10)
  {
LABEL_20:

    goto LABEL_21;
  }

  v48 = v1;
  v19 = -1;
  v20 = -1 << *(v7 + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v7 + 64);
  v22 = (63 - v20) >> 6;

  v23 = 0;
  v24 = &TPSWelcome__metaData;
  while (v21)
  {
LABEL_32:
    v10 = *(*(v7 + 56) + ((v23 << 9) | (8 * __clz(__rbit64(v21)))));
    v26 = [v10 v24[51].ivar_lyt];
    if (v26)
    {
      v49 = v0[14];
      v50 = v0[15];
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (v28 == v49 && v30 == v50)
      {

LABEL_45:

        v1 = v48;
        goto LABEL_21;
      }

      v32 = v0[14];
      v33 = v0[15];
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v24 = &TPSWelcome__metaData;
      if (v34)
      {
        goto LABEL_45;
      }
    }

    else
    {
    }

    v21 &= v21 - 1;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {

      v1 = v48;
      goto LABEL_40;
    }

    v21 = *(v7 + 64 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_32;
    }
  }

  __break(1u);
}

uint64_t sub_100010934()
{
  v1 = v0[21];

  v2 = v0[23];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  static TipsLog.data.getter();
  _StringGuts.grow(_:)(34);

  swift_getErrorValue();
  v9 = v0[2];
  v8 = v0[3];
  v10 = v0[4];
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v11);

  logError(_:_:)();

  (*(v4 + 8))(v3, v5);
  swift_getErrorValue();
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[7];
  v15 = Error.secureEncodableError()();
  v7(0, v15);

  v16 = v0[18];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100010AB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014EFC;

  return sub_10000FE38(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100010CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t TPSDaemon.resolveContext(for:reply:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v3;
  v12[6] = a2;
  v12[7] = a3;
  v13 = a1;
  v14 = v3;

  sub_10000F0A8(0, 0, v10, &unk_100019558, v12);
}

uint64_t sub_100010E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for TipsLog();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_100010F50, 0, 0);
}

uint64_t sub_100010F50()
{
  v5 = *(v0 + 56);
  *(v0 + 40) = sub_10001435C(&_swiftEmptyArrayStorage);
  sub_10000CEDC(&qword_100029FA8, &qword_100019580);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v0 + 40;
  v2 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_100011074;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100011074()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100011210;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100011190;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100011190()
{
  v1 = *(v0 + 80);
  (*(v0 + 72))(*(v0 + 40), 0);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100011210()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];

  static TipsLog.data.getter();
  _StringGuts.grow(_:)(38);

  swift_getErrorValue();
  v9 = v0[2];
  v8 = v0[3];
  v10 = v0[4];
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v11);

  logError(_:_:)();

  (*(v5 + 8))(v3, v4);
  swift_errorRetain();
  v7(0, v1);

  v12 = v0[13];
  v13 = v0[5];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100011380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014EFC;

  return sub_100010E8C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100011454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v6 = *(*(sub_10000CEDC(&qword_100029FA0, &qword_100019518) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v7 = type metadata accessor for TipsLog();
  v5[20] = v7;
  v8 = *(v7 - 8);
  v5[21] = v8;
  v9 = *(v8 + 64) + 15;
  v5[22] = swift_task_alloc();
  v10 = sub_10000CEDC(&unk_100029FB0, &qword_100019598);
  v5[23] = v10;
  v11 = *(v10 - 8);
  v5[24] = v11;
  v12 = *(v11 + 64) + 15;
  v5[25] = swift_task_alloc();
  v13 = type metadata accessor for ContextKeys.SupportedContext();
  v5[26] = v13;
  v14 = *(v13 - 8);
  v5[27] = v14;
  v5[28] = *(v14 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_100011640, 0, 0);
}

uint64_t sub_100011640()
{
  v1 = *(v0 + 120);
  v2 = ContextKeys.contexts.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 216);
    v54 = *(v0 + 224);
    v5 = *(v4 + 16);
    v4 += 16;
    v64 = v5;
    v6 = *(v4 + 64);
    v7 = v2 + ((v6 + 32) & ~v6);
    v57 = (v4 + 72);
    v58 = *(v4 + 56);
    v56 = enum case for ContextKeys.SupportedContext.findMy(_:);
    v51 = enum case for ContextKeys.SupportedContext.applePaySetup(_:);
    v50 = enum case for ContextKeys.SupportedContext.iCloudBackup(_:);
    v49 = enum case for ContextKeys.SupportedContext.faceId(_:);
    v48 = enum case for ContextKeys.SupportedContext.iCloudPhotos(_:);
    v55 = (v4 - 8);
    v47 = (*(v0 + 168) + 8);
    v53 = (v6 + 56) & ~v6;
    v52 = (v4 + 16);
    do
    {
      v8 = *(v0 + 240);
      v9 = *(v0 + 248);
      v10 = *(v0 + 208);
      v64(v9, v7, v10);
      v64(v8, v9, v10);
      v11 = (*v57)(v8, v10);
      if (v11 == v56 || v11 == v51 || v11 == v50 || v11 == v49 || v11 == v48)
      {
        v62 = v7;
        v63 = v3;
        v12 = *(v0 + 248);
        v13 = *(v0 + 232);
        v14 = *(v0 + 208);
        v15 = *(v0 + 152);
        v61 = *(v0 + 144);
        v16 = *(v0 + 128);
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v18;
        v60 = v17;
        v19 = type metadata accessor for TaskPriority();
        v20 = *(v19 - 8);
        (*(v20 + 56))(v15, 1, 1, v19);
        v64(v13, v12, v14);
        v21 = swift_allocObject();
        v21[2] = 0;
        v22 = v21 + 2;
        v21[3] = 0;
        v21[4] = v60;
        v21[5] = v59;
        v21[6] = v16;
        (*v52)(v21 + v53, v13, v14);
        sub_1000146FC(v15, v61);
        LODWORD(v12) = (*(v20 + 48))(v61, 1, v19);
        v23 = v16;
        v24 = *(v0 + 144);
        if (v12 == 1)
        {
          sub_10001476C(*(v0 + 144));
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v20 + 8))(v24, v19);
        }

        v7 = v62;
        if (*v22)
        {
          v25 = v21[3];
          v26 = *v22;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v27 = dispatch thunk of Actor.unownedExecutor.getter();
          v29 = v28;
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = 0;
          v29 = 0;
        }

        v30 = **(v0 + 112);

        sub_10000CEDC(&qword_100029FA8, &qword_100019580);
        v31 = v29 | v27;
        if (v29 | v27)
        {
          v31 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v27;
          *(v0 + 40) = v29;
        }

        v32 = *(v0 + 248);
        v33 = *(v0 + 208);
        v34 = *(v0 + 152);
        *(v0 + 48) = 1;
        *(v0 + 56) = v31;
        *(v0 + 64) = v30;
        swift_task_create();

        sub_10001476C(v34);
        (*v55)(v32, v33);
        v3 = v63;
      }

      else
      {
        v35 = *(v0 + 248);
        v36 = *(v0 + 208);
        v37 = *(v0 + 176);
        v38 = *(v0 + 160);
        v39 = *v55;
        (*v55)(*(v0 + 240), v36);
        static TipsLog.targeting.getter();
        logError(_:_:)();
        (*v47)(v37, v38);
        v39(v35, v36);
      }

      v7 += v58;
      --v3;
    }

    while (v3);
  }

  v40 = *(v0 + 200);
  v41 = **(v0 + 112);
  sub_10000CEDC(&qword_100029FA8, &qword_100019580);
  sub_10000CEDC(&qword_100029F98, &unk_100019500);
  ThrowingTaskGroup.makeAsyncIterator()();
  v42 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v43 = swift_task_alloc();
  *(v0 + 256) = v43;
  *v43 = v0;
  v43[1] = sub_100011C38;
  v44 = *(v0 + 200);
  v45 = *(v0 + 184);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 72, 0, 0, v45, v0 + 96);
}

uint64_t sub_100011C38()
{
  v2 = *(*v1 + 256);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_10001200C;
  }

  else
  {
    v3 = sub_100011D48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100011D48()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  if (v1)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 136);
    v5 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v4;
    *(v0 + 104) = *v4;
    *v4 = 0x8000000000000000;
    v8 = sub_10001389C(v2, v1);
    v13 = *(v7 + 16);
    v14 = (v9 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v9;
      if (*(v7 + 24) < v16)
      {
        sub_100013A50(v16, isUniquelyReferenced_nonNull_native);
        v17 = *(v0 + 104);
        v8 = sub_10001389C(v2, v1);
        if ((v4 & 1) != (v9 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
        }

LABEL_12:
        if (v4)
        {
LABEL_13:
          v25 = v8;

          v26 = *(v0 + 104);
          *(v26[7] + v25) = v3 & 1;
          goto LABEL_18;
        }

LABEL_16:
        v26 = *(v0 + 104);
        v26[(v8 >> 6) + 8] |= 1 << v8;
        v28 = (v26[6] + 16 * v8);
        *v28 = v2;
        v28[1] = v1;
        *(v26[7] + v8) = v3 & 1;
        v29 = v26[2];
        v15 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v15)
        {
          __break(1u);
          return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v8, v9, v10, v11, v12);
        }

        v26[2] = v30;
LABEL_18:
        v31 = *(v0 + 136);
        v32 = *v31;
        *v31 = v26;

        v33 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
        v34 = swift_task_alloc();
        *(v0 + 256) = v34;
        *v34 = v0;
        v34[1] = sub_100011C38;
        v35 = *(v0 + 200);
        v11 = *(v0 + 184);
        v12 = v0 + 96;
        v8 = v0 + 72;
        v9 = 0;
        v10 = 0;

        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v8, v9, v10, v11, v12);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v27 = v8;
    sub_100013CF0();
    v8 = v27;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 248);
  v20 = *(v0 + 232);
  v21 = *(v0 + 176);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10001200C()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000120E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a5;
  v7[9] = a7;
  v7[6] = a1;
  v7[7] = a4;
  v8 = type metadata accessor for TipsLog();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000121B0, 0, 0);
}

uint64_t sub_1000121B0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = [objc_allocWithZone(TPSDeviceCapability) init];
  v0[14] = v3;
  [v3 setType:2];
  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  [v4 setKey:v5];

  v6 = [objc_allocWithZone(NSNumber) initWithBool:1];
  [v4 setValue:v6];

  v7 = [objc_opt_self() targetValidationForCapability:v4];
  v0[15] = v7;
  v8 = swift_task_alloc();
  v0[16] = v8;
  *(v8 + 16) = v7;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_100012370;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 19, 0, 0, 0xD000000000000016, 0x800000010001A2E0, sub_1000147D4, v8, &type metadata for Bool);
}

uint64_t sub_100012370()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_10001262C;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_10001248C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001262C()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = v0[10];

  static TipsLog.targeting.getter();
  _StringGuts.grow(_:)(31);

  v9._countAndFlagsBits = ContextKeys.SupportedContext.rawValue.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x203A726F72726520;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  swift_getErrorValue();
  v12 = v0[2];
  v11 = v0[3];
  v13 = v0[4];
  v14._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v14);

  logError(_:_:)();

  (*(v6 + 8))(v5, v8);
  v15 = ContextKeys.SupportedContext.rawValue.getter();
  v17 = v16;

  swift_unknownObjectRelease();

  v19 = v0[12];
  v18 = v0[13];
  v20 = v0[6];
  *v20 = v15;
  *(v20 + 8) = v17;
  *(v20 + 16) = 0;

  v21 = v0[1];

  return v21();
}

void sub_100012930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_1000129D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012A18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100012A74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100012AC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100012BA0;

  return sub_10000FE38(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100012BA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100012C94()
{
  v1 = *(v0 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_100012CF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100012D3C(uint64_t a1, void *a2)
{
  v4 = sub_10000CEDC(&qword_100029FF0, &qword_1000195C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = [a2 tipsManager];
  if (v9)
  {
    v10 = v9;
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v8, v4);
    aBlock[4] = sub_100014904;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012FEC;
    aBlock[3] = &unk_1000253C8;
    v13 = _Block_copy(aBlock);

    [v10 contentFromOrigin:0 systemEducationRequest:1 processTipKitContent:0 contextualEligibility:0 widgetEligibility:0 notificationEligibility:0 preferredNotificationIdentifiers:0 shouldDeferBlock:0 completionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100012F34(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    sub_10000CEDC(&qword_100029FF0, &qword_1000195C0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a3)
    {
      sub_100014894();
      swift_allocError();
      *v5 = 0;
    }

    swift_errorRetain();
    sub_10000CEDC(&qword_100029FF0, &qword_1000195C0);
    return CheckedContinuation.resume(throwing:)();
  }
}

void sub_100012FEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

void sub_100013094(uint64_t a1, void *a2)
{
  v4 = sub_10000CEDC(&qword_100029FC0, &qword_1000195B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1000147F0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000132C8;
  aBlock[3] = &unk_100025378;
  v11 = _Block_copy(aBlock);

  [a2 validateWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_100013244(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_10000CEDC(&qword_100029FC0, &qword_1000195B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000CEDC(&qword_100029FC0, &qword_1000195B0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1000132C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100013340(uint64_t a1)
{
  v2 = sub_10000CEDC(&qword_100029FC0, &qword_1000195B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = [objc_allocWithZone(TPSDeviceCapability) init];
  [v7 setType:2];
  [v7 setKey:kTPSCapabilitySiriLanguageMatchesSystemLanguageEnabled];
  v8 = [objc_opt_self() targetValidationForCapability:v7];
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_100014A1C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001361C;
  aBlock[3] = &unk_100025418;
  v11 = _Block_copy(aBlock);

  [v8 getCurrentStateWithCompletion:v11];
  _Block_release(v11);

  return swift_unknownObjectRelease();
}

uint64_t sub_100013568(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4[0] = a2;
    swift_errorRetain();
    sub_10000CEDC(&qword_100029FC0, &qword_1000195B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100014AF4(a1, v4);
    LOBYTE(v4[0]) = swift_dynamicCast() & v3;
    sub_10000CEDC(&qword_100029FC0, &qword_1000195B0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10001361C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[3] = swift_getObjectType();
  v9[0] = a2;

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v9, a3);

  return sub_100014AA8(v9);
}

uint64_t sub_1000136AC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000137A4;

  return v7(a1);
}

uint64_t sub_1000137A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10001389C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100013998(a1, a2, v6);
}

void *sub_100013914(uint64_t a1, uint64_t a2)
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

  sub_10000CEDC(&qword_100029FF8, &qword_1000195C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_100013998(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100013A50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CEDC(&qword_100029FC8, &qword_1000195B8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_100013CF0()
{
  v1 = v0;
  sub_10000CEDC(&qword_100029FC8, &qword_1000195B8);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_100013E58(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100013FB0(unint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v23[0] = v23 - v6;
  v7 = type metadata accessor for TipsLog();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  _Block_copy(a2);
  static TipsLog.default.getter();
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v24 = 0xD00000000000001ELL;
  v25 = 0x800000010001A200;
  if (a1 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23[1] = v16;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  logDebug(_:_:)();

  v18 = *(v8 + 8);
  v18(v14, v7);
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_7:
    static TipsLog.targeting.getter();
    log(_:_:)();
    v18(v12, v7);
    a2[2](a2, 0, 0);
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_5:
  v19 = type metadata accessor for TaskPriority();
  v20 = v23[0];
  (*(*(v19 - 8) + 56))(v23[0], 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a1;
  v21[5] = sub_10001430C;
  v21[6] = v15;

  sub_10000F0A8(0, 0, v20, &unk_100019578, v21);
}

uint64_t sub_100014314()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10001435C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CEDC(&qword_100029FC8, &qword_1000195B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001389C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100014458(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014EFC;

  return sub_100011454(a1, a2, v6, v7, v8);
}

uint64_t sub_10001451C()
{
  v1 = type metadata accessor for ContextKeys.SupportedContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000145F0(uint64_t a1)
{
  v4 = *(type metadata accessor for ContextKeys.SupportedContext() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100012BA0;

  return sub_1000120E0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1000146FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001476C(uint64_t a1)
{
  v2 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000147F0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_10000CEDC(&qword_100029FC0, &qword_1000195B0) - 8) + 80);

  return sub_100013244(a1, a2);
}

uint64_t sub_10001487C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100014894()
{
  result = qword_100029FD0;
  if (!qword_100029FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029FD0);
  }

  return result;
}

uint64_t sub_100014904(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_10000CEDC(&qword_100029FF0, &qword_1000195C0) - 8) + 80);

  return sub_100012F34(a1, a2, a3);
}

uint64_t sub_100014998(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000CEDC(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100014A1C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_10000CEDC(&qword_100029FC0, &qword_1000195B0) - 8) + 80);

  return sub_100013568(a1, a2);
}

uint64_t sub_100014AA8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100014AF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100014B5C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014B94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014EFC;

  return sub_1000136AC(a1, v5);
}

uint64_t sub_100014C4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *sub_100014CAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_100014CF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t _s12ServiceErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12ServiceErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100014E7C()
{
  result = qword_10002A020;
  if (!qword_10002A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A020);
  }

  return result;
}

void sub_100014F0C()
{
  sub_10000C1B4();
  sub_10000C19C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000150E8(void *a1)
{
  [a1 count];
  sub_10000C1B4();
  sub_10000C1DC(&_mh_execute_header, v1, v2, "Found %lu HMT collections with supportIDs to index", v3, v4, v5, v6, v7);
}

void sub_1000151FC(void *a1)
{
  v1 = [a1 URL];
  sub_10000C1B4();
  sub_10000C1DC(&_mh_execute_header, v2, v3, "discretionary task with URL %@", v4, v5, v6, v7, v8);
}

void sub_100015280()
{
  sub_10000C1B4();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "VersionTokens %@, minor version %ld", v2, 0x16u);
}

void sub_10001544C(uint64_t a1)
{
  v6 = *(*a1 + 24);
  sub_10000C19C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100015564(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 description];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error downloading remote tip %@, %@", &v6, 0x16u);
}

void sub_100015688()
{
  sub_10000C1B4();
  sub_10000C19C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}