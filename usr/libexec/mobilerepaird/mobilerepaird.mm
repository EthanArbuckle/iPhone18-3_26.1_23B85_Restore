id sub_1000018B8(uint64_t a1)
{
  result = [CRDeviceMap supportRepair:1026];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    qword_10001EA60 = [objc_alloc(*(a1 + 32)) _init];

    return _objc_release_x1();
  }

  return result;
}

id sub_100001B8C(uint64_t a1)
{
  result = [CRDeviceMap supportRepair:1028];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    qword_10001EA70 = [objc_alloc(*(a1 + 32)) _init];

    return _objc_release_x1();
  }

  return result;
}

uint64_t sub_100001E9C(uint64_t a1)
{
  [*(a1 + 32) handleSUCase];
  qword_10001EA80 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

uint64_t sub_1000021DC(uint64_t a1)
{
  qword_10001EA90 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

uint64_t sub_100002544(uint64_t a1)
{
  qword_10001EAA0 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

uint64_t sub_1000027C8(uint64_t a1)
{
  qword_10001EAB0 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

id sub_100002E14(uint64_t a1)
{
  result = [CRDeviceMap supportRepair:1025];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    qword_10001EAC0 = [objc_alloc(*(a1 + 32)) _init];

    return _objc_release_x1();
  }

  return result;
}

uint64_t sub_1000030CC(uint64_t a1)
{
  qword_10001EAD0 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

id sub_1000032AC(uint64_t a1)
{
  result = [CRDeviceMap supportRepair:1034];
  if (result)
  {
    qword_10001EAE0 = [objc_alloc(*(a1 + 32)) _init];

    return _objc_release_x1();
  }

  return result;
}

id sub_1000034B8(uint64_t a1)
{
  result = [CRDeviceMap supportRepair:1033];
  if (result)
  {
    qword_10001EAF0 = [objc_alloc(*(a1 + 32)) _init];

    return _objc_release_x1();
  }

  return result;
}

void sub_10000438C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = +[MSUDataAccessor sharedDataAccessor];
    v23 = 0;
    v6 = [v5 copyPathForPersistentData:100 error:&v23];
    v7 = v23;

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [v4 setObject:v6 forKey:@"datapath"];
      v10 = [[CRFDRSeal alloc] initForRegisterChangeWithParameters:v4];
      if (!v10)
      {
        v7 = handleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10000E1C4(a1);
        }

        goto LABEL_24;
      }

      v7 = v10;
      if (xpc_activity_should_defer(v3))
      {
        v11 = xpc_activity_set_state(v3, 3);
        v12 = handleForCategory();
        v9 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [*(a1 + 32) componentName];
            v14 = [NSString stringWithFormat:@"Successfully deferred activity %@ to state: %lu", v3, xpc_activity_get_state(v3)];
            *buf = 138412546;
            v25 = v13;
            v26 = 2112;
            v27 = v14;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10000E0F8(a1, v3);
        }
      }

      else
      {
        v15 = [*(a1 + 32) componentName];
        v22 = 0;
        v16 = [v7 registerChangeForComponent:v15 fdrError:&v22];
        v9 = v22;

        if (!v16)
        {
          v17 = handleForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [*(a1 + 32) componentName];
            v19 = [NSString stringWithFormat:@"[%s] register change was successful", "[MRBaseComponentHandler scheduleNetworkActivity]_block_invoke"];
            *buf = 138412546;
            v25 = v18;
            v26 = 2112;
            v27 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
          }

          v20 = +[NSUserDefaults groupStandardUserDefaults];
          v21 = [*(a1 + 32) componentHasNotifiedServerKey];
          [v20 setBool:1 forKey:v21];

          [v20 synchronize];
        }

        xpc_activity_set_state(v3, 5);
      }
    }

    else
    {
      v9 = handleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000E288(a1);
      }
    }

LABEL_24:
    goto LABEL_25;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION_DOWNLOAD, 1);
  xpc_activity_set_criteria(v3, v4);
LABEL_25:
}

void sub_1000055A0(uint64_t a1, void *a2)
{
  activity = a2;
  state = xpc_activity_get_state(activity);
  v4 = *(a1 + 32);
  if (state)
  {
    [v4 unlockCheckerActivityBodyForFinishRepair];
  }

  else
  {
    v5 = [v4 createCriteriaForUnlockCheckerWithInterval:*(a1 + 40)];
    xpc_activity_set_criteria(activity, v5);
  }
}

void sub_10000561C(uint64_t a1, void *a2)
{
  activity = a2;
  state = xpc_activity_get_state(activity);
  v4 = *(a1 + 32);
  if (state)
  {
    [v4 unlockCheckerActivityBody];
  }

  else
  {
    v5 = [v4 createCriteriaForUnlockCheckerWithInterval:*(a1 + 40)];
    xpc_activity_set_criteria(activity, v5);
  }
}

id sub_100006A18(uint64_t a1)
{
  v26[0] = @"EventType";
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = +[NSNull null];
  }

  v27[0] = v3;
  v26[1] = @"isSUCase";
  v4 = [*(a1 + 40) isSUCaseForComponent];
  v5 = &__kCFBooleanFalse;
  if (v4)
  {
    v5 = &__kCFBooleanTrue;
  }

  v27[1] = v5;
  v26[2] = @"ModuleType";
  v6 = [*(a1 + 40) componentName];
  v27[2] = v6;
  v26[3] = @"AuthStatus";
  v7 = [*(a1 + 40) componentAuthHandler];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 copyComponentStatus]);
  v27[3] = v8;
  v26[4] = @"UICoreFollowUpShownDuration";
  v9 = [NSNumber numberWithInteger:*(a1 + 48)];
  v27[4] = v9;
  v26[5] = @"UILockscreenNotification";
  v10 = [NSNumber numberWithInteger:*(a1 + 56)];
  v27[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:6];

  if (!v2)
  {
  }

  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) componentName];
    v14 = [NSString stringWithFormat:@"[%s] send event: %@", "[MRBaseComponentHandler sendAnalyticsForCount:]_block_invoke", v11];
    *buf = 138412546;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  v15 = handleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 40) componentName];
    v17 = [*(a1 + 40) componentName];
    v18 = *(a1 + 32);
    v19 = v18;
    if (!v18)
    {
      v19 = +[NSNull null];
    }

    v20 = [NSString stringWithFormat:@"CoreAnalyticsEvent: ModuleType(%@), EventType(%@)", v17, v19];
    *buf = 138412546;
    v23 = v16;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    if (!v18)
    {
    }
  }

  return v11;
}

void sub_100007830(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_100007860(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_1000079EC(uint64_t a1)
{
  result = [CRDeviceMap supportRepair:1032];
  if (result)
  {
    qword_10001EB00 = [objc_alloc(*(a1 + 32)) _init];

    return _objc_release_x1();
  }

  return result;
}

id sub_100007BFC(uint64_t a1)
{
  result = [CRDeviceMap supportRepair:1030];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    qword_10001EB10 = [objc_alloc(*(a1 + 32)) _init];

    return _objc_release_x1();
  }

  return result;
}

void sub_100007F54(id a1)
{
  qword_10001EB20 = [[MRComponentHealthHandler alloc] _init];

  _objc_release_x1();
}

id sub_1000086F0(uint64_t a1)
{
  v12[0] = @"EventType";
  v12[1] = @"ModuleType";
  v2 = *(a1 + 32);
  v13[0] = @"DailyFailure";
  v13[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MRComponentHealthHandler sendDailyAnalyticsForModuleType:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s] send event: %@", &v8, 0x16u);
  }

  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CoreAnalyticsEvent: ModuleType(%@), Event(%@)", &v8, 0x16u);
  }

  return v3;
}

uint64_t sub_100008AE8(uint64_t a1)
{
  [*(a1 + 32) handleSUCase];
  qword_10001EB30 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

uint64_t sub_100008E00(uint64_t a1)
{
  qword_10001EB40 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

id sub_100009440(uint64_t a1)
{
  result = [CRDeviceMap supportRepair:1024];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    qword_10001EB50 = [objc_alloc(*(a1 + 32)) _init];

    return _objc_release_x1();
  }

  return result;
}

uint64_t sub_10000968C(uint64_t a1)
{
  qword_10001EB68 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

void sub_10000980C(uint64_t a1)
{
  v26 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.mobilerepair"];
  v2 = objc_alloc_init(NSMutableArray);
  v3 = objc_opt_new();
  v4 = [v3 localizedStringWithKey:@"LEARN_MORE" defaultString:@"LEARN_MORE"];
  v5 = [FLFollowUpAction actionWithLabel:v4 url:*(a1 + 32)];

  [v2 addObject:v5];
  v6 = objc_alloc_init(FLFollowUpNotification);
  v7 = v6;
  if (*(a1 + 80) == 1)
  {
    [v6 setFrequency:0.0];
    v8 = [v3 localizedStringWithKey:*(a1 + 40) defaultString:*(a1 + 40)];
    [v7 setTitle:v8];

    v9 = [v3 localizedStringWithKey:*(a1 + 48) defaultString:*(a1 + 48)];
    [v7 setInformativeText:v9];

    v10 = [v3 localizedStringWithKey:@"LEARN_MORE" defaultString:@"LEARN_MORE"];
    [v7 setUnlockActionLabel:v10];

    [v7 setFirstNotificationDelay:0.0];
    [v7 setActivateAction:v5];
    v11 = objc_alloc_init(FLFollowUpAction);
    [v7 setClearAction:v11];

    v30 = FLNotificationOptionLockscreen;
    v12 = [NSArray arrayWithObjects:&v30 count:1];
    v13 = [NSSet setWithArray:v12];
    [v7 setOptions:v13];
  }

  v14 = objc_alloc_init(FLFollowUpItem);
  [v14 setUniqueIdentifier:*(a1 + 56)];
  [v14 setGroupIdentifier:FLGroupIdentifierDevice];
  v15 = [v3 localizedStringWithKey:*(a1 + 40) defaultString:*(a1 + 40)];
  v16 = [v3 localizedStringWithKey:*(a1 + 64) defaultString:*(a1 + 64)];
  v17 = [NSString stringWithFormat:v15, v16];
  [v14 setTitle:v17];

  v18 = [v3 localizedStringWithKey:*(a1 + 48) defaultString:*(a1 + 48)];
  v19 = [v3 localizedStringWithKey:*(a1 + 64) defaultString:*(a1 + 64)];
  v20 = [NSString stringWithFormat:v18, v19];
  [v14 setInformativeText:v20];

  [v14 setDisplayStyle:2];
  [v14 setActions:v2];
  if (*(a1 + 80))
  {
    v21 = v7;
  }

  else
  {
    v21 = 0;
  }

  [v14 setNotification:v21];
  [v14 setTargetBundleIdentifier:FLFollowUpPreferencesBundleIdentifier];
  notify_post("com.apple.mobilerepairui.reload");
  v22 = handleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Posting item: %@", buf, 0xCu);
  }

  v27 = 0;
  v23 = [v26 postFollowUpItem:v14 error:&v27];
  v24 = v27;
  if ((v23 & 1) == 0)
  {
    v25 = handleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10000E5E0(v24, v25);
    }
  }

  [*(*(a1 + 72) + 16) setObject:v14 forKeyedSubscript:*(a1 + 56)];
}

void sub_100009F60(uint64_t a1)
{
  v2 = +[NSUserDefaults groupStandardUserDefaults];
  v3 = [v2 BOOLForKey:@"settingsView"];

  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v45) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " value is:%d", buf, 8u);
  }

  if (v3 && (*(a1 + 64) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v5 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/CoreRepairUI.framework/"];
    v6 = [v5 pathForResource:@"ApplicationIcon" ofType:@"icns"];

    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iconpath is:%@", buf, 0xCu);
    }

    responseFlags = 0;
    error = 0;
    v8 = objc_opt_new();
    v9 = v8;
    if (*(a1 + 64) == 1)
    {
      v10 = [v8 localizedStringWithKey:*(a1 + 40) defaultString:*(a1 + 40)];
      v39 = [v9 localizedStringWithKey:*(a1 + 48) defaultString:*(a1 + 48)];
      v11 = [v9 localizedStringWithKey:@"LEARN_MORE" defaultString:@"LEARN_MORE"];
      v40 = a1;
      v12 = [NSNumber numberWithBool:0];
      v13 = v6;
      v14 = SBUserNotificationDismissOnLock;
      v15 = [NSNumber numberWithBool:1];
      v16 = v9;
      v17 = SBUserNotificationDontDismissOnUnlock;
      v18 = [NSNumber numberWithBool:1];
      v38 = v17;
      v9 = v16;
      v37 = v14;
      v6 = v13;
      v19 = [NSDictionary dictionaryWithObjectsAndKeys:v10, kCFUserNotificationAlertHeaderKey, v39, kCFUserNotificationAlertMessageKey, v11, kCFUserNotificationDefaultButtonTitleKey, v12, v37, v15, v38, v18, SBUserNotificationBehavesSuperModally, &off_10001AE40, SBUserNotificationSystemSoundIDKey, 0];

      a1 = v40;
    }

    else
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v20 = [v9 localizedStringWithKey:*(a1 + 40) defaultString:*(a1 + 40)];
      [v10 setObject:v20 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

      v21 = [v9 localizedStringWithKey:*(a1 + 48) defaultString:*(a1 + 48)];
      [v10 setObject:v21 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

      v22 = [v9 localizedStringWithKey:@"OK" defaultString:@"OK"];
      [v10 setObject:v22 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

      v23 = [v9 localizedStringWithKey:@"SETTINGS" defaultString:@"SETTINGS"];
      [v10 setObject:v23 forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];

      v24 = [NSNumber numberWithBool:0];
      [v10 setObject:v24 forKeyedSubscript:SBUserNotificationDismissOnLock];

      v25 = [NSNumber numberWithBool:1];
      [v10 setObject:v25 forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];

      v26 = [NSNumber numberWithBool:1];
      [v10 setObject:v26 forKeyedSubscript:SBUserNotificationBehavesSuperModally];

      [v10 setObject:&off_10001AE40 forKeyedSubscript:SBUserNotificationSystemSoundIDKey];
      v19 = [v10 copy];
    }

    v27 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, v19);
    if (v27)
    {
      v28 = v27;
      CFUserNotificationReceiveResponse(v27, 0.0, &responseFlags);
      if (responseFlags == 1)
      {
        v29 = handleForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a1 + 40);
          *buf = 138412290;
          v45 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@ User pressed button", buf, 0xCu);
        }

        v31 = +[LSApplicationWorkspace defaultWorkspace];
        v32 = *(a1 + 56);
        v41 = 0;
        v33 = [v31 openSensitiveURL:v32 withOptions:0 error:&v41];
        v34 = v41;

        if ((v33 & 1) == 0)
        {
          v35 = handleForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_10000E678((a1 + 56), v34, v35);
          }
        }
      }

      CFRelease(v28);
    }

    else
    {
      v36 = handleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10000E72C(a1, &error, v36);
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_10000A624(uint64_t a1)
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v39 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "removeRepairNotificationsWithUniqueID:%@", buf, 0xCu);
  }

  v4 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.Preferences"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [v4 deliveredNotifications];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v31 + 1) + 8 * i) request];
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          v13 = handleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 32);
            *buf = 138412546;
            v39 = v14;
            v40 = 2112;
            v41 = v10;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "matched notification id:%@::%@", buf, 0x16u);
          }

          v37 = *(a1 + 32);
          v15 = [NSArray arrayWithObjects:&v37 count:1];
          [v4 removeDeliveredNotificationsWithIdentifiers:v15];

          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = [v4 pendingNotificationRequests];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    while (2)
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [v21 identifier];
        v23 = [v22 isEqualToString:*(a1 + 32)];

        if (v23)
        {
          v24 = handleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 32);
            *buf = 138412546;
            v39 = v25;
            v40 = 2112;
            v41 = v21;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "matched notification id:%@::%@", buf, 0x16u);
          }

          v35 = *(a1 + 32);
          v26 = [NSArray arrayWithObjects:&v35 count:1];
          [v4 removeDeliveredNotificationsWithIdentifiers:v26];

          goto LABEL_27;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
}

void sub_10000AA50(uint64_t a1)
{
  v2 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.mobilerepair"];
  v25 = 0;
  v3 = [v2 pendingFollowUpItems:&v25];
  v4 = v25;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "listing Followups:%@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 uniqueIdentifier];
        v13 = [v12 isEqualToString:*(a1 + 32)];

        if (v13)
        {
          v14 = handleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            *buf = 138412546;
            v28 = v15;
            v29 = 2112;
            v30 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "matched id:%@::%@", buf, 0x16u);
          }

          v16 = [NSArray arrayWithObjects:*(a1 + 32), 0];
          v20 = v4;
          v17 = [v2 clearPendingFollowUpItemsWithUniqueIdentifiers:v16 error:&v20];
          v18 = v20;

          if ((v17 & 1) == 0)
          {
            v19 = handleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_10000E7BC(v26, v18);
            }
          }

          v4 = v18;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v8);
  }
}

void sub_10000AD18(id a1)
{
  v78 = 0;
  v63 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.mobilerepair"];
  v1 = [v63 pendingFollowUpItems:&v78];
  v71 = v78;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v1;
  v2 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v2)
  {
    v3 = v2;
    v69 = FLGroupIdentifierDevice;
    v70 = *v75;
    v60 = FLFollowUpPreferencesBundleIdentifier;
    do
    {
      v4 = 0;
      v61 = v3;
      do
      {
        if (*v75 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v74 + 1) + 8 * v4);
        v6 = objc_alloc_init(FLFollowUpItem);
        v7 = [v5 uniqueIdentifier];
        [v6 setUniqueIdentifier:v7];

        [v6 setGroupIdentifier:v69];
        v8 = [v5 uniqueIdentifier];
        v9 = [@"com.apple.mobilerepair.DisplayRepair" isEqualToString:v8];

        v10 = off_100018338;
        if (v9)
        {
          goto LABEL_14;
        }

        v11 = [v5 uniqueIdentifier];
        v12 = [@"com.apple.mobilerepair.BatteryRepair" isEqualToString:v11];

        v10 = off_100018320;
        if (v12)
        {
          goto LABEL_14;
        }

        v13 = [v5 uniqueIdentifier];
        v14 = [@"com.apple.mobilerepair.CameraRepair" isEqualToString:v13];

        v10 = off_100018330;
        if (v14)
        {
          goto LABEL_14;
        }

        v15 = [v5 uniqueIdentifier];
        v16 = [@"com.apple.mobilerepair.BluetoothRepair" isEqualToString:v15];

        v10 = off_100018328;
        if (v16)
        {
          goto LABEL_14;
        }

        v17 = [v5 uniqueIdentifier];
        v18 = [@"com.apple.mobilerepair.WifiRepair" isEqualToString:v17];

        v10 = &off_100018368;
        if (v18)
        {
          goto LABEL_14;
        }

        v19 = [v5 uniqueIdentifier];
        v20 = [@"com.apple.mobilerepair.BasebandRepair" isEqualToString:v19];

        if (v20 & 1) != 0 || ([v5 uniqueIdentifier], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(@"com.apple.mobilerepair.BasebandRepair", "isEqualToString:", v21), v21, (v22))
        {
          v10 = off_100018318;
LABEL_14:
          v23 = [(__objc2_class *)*v10 sharedSingleton];
          v24 = [v23 popUpNotificationTitle];

          v25 = [(__objc2_class *)*v10 sharedSingleton];
          v26 = [v25 followUpInfoMessage];

          goto LABEL_15;
        }

        v49 = [v5 uniqueIdentifier];
        v50 = [@"com.apple.mobilerepair.NFCRepair" isEqualToString:v49];

        v10 = off_100018348;
        if (v50)
        {
          goto LABEL_14;
        }

        v51 = [v5 uniqueIdentifier];
        v52 = [@"com.apple.mobilerepair.UWBRepair" isEqualToString:v51];

        v10 = off_100018360;
        if (v52)
        {
          goto LABEL_14;
        }

        v53 = [v5 uniqueIdentifier];
        v54 = [@"com.apple.mobilerepair.AudioRepair" isEqualToString:v53];

        v10 = off_100018310;
        if (v54)
        {
          goto LABEL_14;
        }

        v55 = [v5 uniqueIdentifier];
        v56 = [@"com.apple.mobilerepair.FaceIDRepair" isEqualToString:v55];

        v10 = off_100018340;
        if (v56)
        {
          goto LABEL_14;
        }

        v57 = [v5 uniqueIdentifier];
        v58 = [@"com.apple.mobilerepair.TouchIDRepair" isEqualToString:v57];

        v10 = off_100018358;
        if (v58)
        {
          goto LABEL_14;
        }

        v26 = 0;
        v24 = 0;
LABEL_15:
        v27 = handleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v24;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Title key :%@", buf, 0xCu);
        }

        v28 = handleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v82 = v26;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "infotext key:%@", buf, 0xCu);
        }

        if (v24 && v26)
        {
          v67 = v4;
          v29 = objc_alloc_init(NSMutableArray);
          v30 = objc_opt_new();
          v64 = v5;
          v31 = [v30 localizedStringWithKey:@"LEARN_MORE" defaultString:@"LEARN_MORE"];
          [v5 actions];
          v33 = v32 = v26;
          v34 = [v33 firstObject];
          v35 = [v34 url];
          v36 = [FLFollowUpAction actionWithLabel:v31 url:v35];

          v65 = v36;
          [v29 addObject:v36];
          v37 = [v30 localizedStringWithKey:v24 defaultString:v24];
          [v6 setTitle:v37];

          v66 = v30;
          v38 = [v30 localizedStringWithKey:v32 defaultString:v32];
          [v6 setInformativeText:v38];

          [v6 setDisplayStyle:2];
          v68 = v29;
          [v6 setActions:v29];
          [v6 setTargetBundleIdentifier:v60];
          v39 = [v64 uniqueIdentifier];
          v40 = [NSArray arrayWithObjects:v39, 0];
          v73 = v71;
          LOBYTE(v31) = [v63 clearPendingFollowUpItemsWithUniqueIdentifiers:v40 error:&v73];
          v41 = v73;

          if (v31)
          {
            v42 = handleForCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Successfully deleted the followup", buf, 2u);
            }

            v43 = handleForCategory();
            v26 = v32;
            v4 = v67;
            v45 = v65;
            v44 = v66;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v82 = v6;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Re Posting item: %@", buf, 0xCu);
            }

            v72 = v41;
            v46 = [v63 postFollowUpItem:v6 error:&v72];
            v71 = v72;

            if (v46)
            {
              v47 = v68;
LABEL_35:

              v3 = v61;
              goto LABEL_36;
            }

            v48 = handleForCategory();
            v41 = v71;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_10000E818(v79, v71);
            }

            v47 = v68;
          }

          else
          {
            v48 = handleForCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_10000E7BC(v80, v41);
            }

            v26 = v32;
            v47 = v29;
            v44 = v30;
            v4 = v67;
            v45 = v65;
          }

          v71 = v41;
          goto LABEL_35;
        }

LABEL_36:

        v4 = v4 + 1;
      }

      while (v3 != v4);
      v59 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
      v3 = v59;
    }

    while (v59);
  }
}

void sub_10000B58C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = handleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "@(#)PROGRAM:mobilerepaird  PROJECT:CoreRepair-921.40.62\n";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "mobilerepaird started: %s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = sub_10000C530;
  v31 = sub_10000C540;
  v32 = &off_10001AE58;
  state64 = 0;
  if (notify_register_check("com.apple.system.console_mode_changed", &dword_10001E9F8))
  {
    v2 = handleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10000E9EC();
    }
  }

  else
  {
    if (!notify_get_state(dword_10001E9F8, &state64))
    {
      goto LABEL_10;
    }

    v2 = handleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10000EA60();
    }
  }

LABEL_10:
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 134217984;
    v27 = state64;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Game mode at launch:%llu", v26, 0xCu);
  }

  v4 = *(*(&buf + 1) + 40);
  objc_sync_enter(v4);
  v5 = [NSNumber numberWithUnsignedLongLong:state64];
  v6 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v5;

  objc_sync_exit(v4);
  v7 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000C548;
  handler[3] = &unk_100018800;
  handler[4] = &buf;
  notify_register_dispatch("com.apple.system.console_mode_changed", &dword_10001E9FC, &_dispatch_main_q, handler);

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000C6A8;
  v23[3] = &unk_100018828;
  v23[4] = &buf;
  xpc_activity_register("com.apple.mobilerepaird.post_install", XPC_ACTIVITY_CHECK_IN, v23);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000C94C;
  v22[3] = &unk_100018828;
  v22[4] = &buf;
  xpc_activity_register("com.apple.mobilerepaird.cache_clean", XPC_ACTIVITY_CHECK_IN, v22);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000CB2C;
  v21[3] = &unk_100018828;
  v21[4] = &buf;
  xpc_activity_register("com.apple.mobilerepaird.daily_stats", XPC_ACTIVITY_CHECK_IN, v21);
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_100018868);

  xpc_set_event_stream_handler("com.apple.fsevents.matching", &_dispatch_main_q, &stru_100018888);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_1000188A8);

  v8 = objc_opt_new();
  v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobilerepaird"];
  v10 = v9;
  if (v9)
  {
    [v9 setDelegate:v8];
    [v10 resume];
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      v11 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corerepair.intentControl" options:0];
      v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairBootIntentProtocol];
      [v11 setRemoteObjectInterface:v12];

      [v11 resume];
      v13 = [v11 remoteObjectProxyWithErrorHandler:&stru_1000188E8];
      [v13 clearBootIntent:&stru_100018928];

      v14 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corerepair.intentControl" options:0];
      v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CoreRepairBootIntentProtocol];
      [v14 setRemoteObjectInterface:v15];

      [v14 resume];
      v16 = [v14 remoteObjectProxyWithErrorHandler:&stru_100018948];
      [v16 clearRepairBackup:&stru_100018968];
    }

    sub_10000D124();
    v17 = 0;
  }

  else
  {
    v18 = handleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000EAD4();
    }

    v17 = 0xFFFFFFFFLL;
  }

  _Block_object_dispose(&buf, 8);

  objc_autoreleasePoolPop(v0);
  if (v10)
  {
    v19 = +[NSRunLoop currentRunLoop];
    [v19 run];

    v17 = 0;
  }

  return v17;
}

uint64_t sub_10000C530(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C548(uint64_t a1, int a2)
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GAME MODE notification", buf, 2u);
  }

  state64 = 0;
  if (!notify_get_state(a2, &state64))
  {
    v5 = handleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = state64;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GAME MODE get state:%llu", buf, 0xCu);
    }

    if (state64 == 1)
    {
      v6 = *(*(*(a1 + 32) + 8) + 40);
      objc_sync_enter(v6);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = &off_10001AE70;

      objc_sync_exit(v6);
    }
  }
}

void sub_10000C6A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received xpc post install", &v14, 2u);
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    objc_sync_enter(v5);
    v6 = *(*(*(a1 + 32) + 8) + 40);
    objc_sync_exit(v5);

    if (!xpc_activity_should_defer(v3) && ([v6 isEqualToNumber:&__kCFBooleanTrue] & 1) == 0)
    {
      +[MRBatteryComponentHandler handleSUCase];
      v7 = *(*(*(a1 + 32) + 8) + 40);
      objc_sync_enter(v7);
      v8 = *(*(*(a1 + 32) + 8) + 40);

      objc_sync_exit(v7);
      if (xpc_activity_should_defer(v3) || ([v8 isEqualToNumber:&__kCFBooleanTrue] & 1) != 0)
      {
        v6 = v8;
      }

      else
      {
        +[MRDisplayComponentHandler handleSUCase];
        v13 = *(*(*(a1 + 32) + 8) + 40);
        objc_sync_enter(v13);
        v6 = *(*(*(a1 + 32) + 8) + 40);

        objc_sync_exit(v13);
        if (!xpc_activity_should_defer(v3) && ([v6 isEqualToNumber:&__kCFBooleanTrue] & 1) == 0)
        {
          +[MRCameraComponentHandler handleSUCase];
LABEL_15:

          goto LABEL_16;
        }
      }
    }

    v9 = xpc_activity_set_state(v3, 3);
    v10 = handleForCategory();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        state = xpc_activity_get_state(v3);
        v14 = 138412546;
        v15 = v3;
        v16 = 2048;
        v17 = state;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully deferred activity %@ to state: %lu", &v14, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000EB14(v3);
    }

    goto LABEL_15;
  }

LABEL_16:
}

void sub_10000C94C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received xpc cache clean", &v11, 2u);
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    objc_sync_enter(v5);
    v6 = *(*(*(a1 + 32) + 8) + 40);
    objc_sync_exit(v5);

    if (xpc_activity_should_defer(v3) || ([v6 isEqualToNumber:&__kCFBooleanTrue] & 1) != 0)
    {
      v7 = xpc_activity_set_state(v3, 3);
      v8 = handleForCategory();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          state = xpc_activity_get_state(v3);
          v11 = 138412546;
          v12 = v3;
          v13 = 2048;
          v14 = state;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully deferred activity %@ to state: %lu", &v11, 0x16u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10000EB14(v3);
      }
    }

    else
    {
      v9 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
      [v9 removeObjectForKey:@"tempPreflightResults"];
    }
  }
}

void sub_10000CB2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received daily stats activity", &v11, 2u);
  }

  if (xpc_activity_get_state(v3) == 2)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    objc_sync_enter(v5);
    v6 = *(*(*(a1 + 32) + 8) + 40);
    objc_sync_exit(v5);

    if (xpc_activity_should_defer(v3) || ([v6 isEqualToNumber:&__kCFBooleanTrue] & 1) != 0)
    {
      v7 = xpc_activity_set_state(v3, 3);
      v8 = handleForCategory();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          state = xpc_activity_get_state(v3);
          v11 = 138412546;
          v12 = v3;
          v13 = 2048;
          v14 = state;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully deferred activity %@ to state: %lu", &v11, 0x16u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10000EB14(v3);
      }
    }

    else
    {
      v9 = +[MRComponentHealthHandler sharedInstance];
      [v9 sendFailedComponentStats];
    }
  }
}

void sub_10000CCFC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received IOKit matching event:%@", &v9, 0xCu);
  }

  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v2, _xpc_event_key_name)];
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC Event: %@ (iokit)", &v9, 0xCu);
  }

  if ([(OS_xpc_object *)v4 containsString:@"com.apple.accessories"])
  {
    v6 = +[MRBatteryComponentHandler sharedSingleton];
    [v6 checkInAndHandleAuthStatus];

    v7 = off_100018338;
LABEL_15:
    v8 = [(__objc2_class *)*v7 sharedSingleton];
    [v8 checkInAndHandleAuthStatus];

    goto LABEL_16;
  }

  if (([(OS_xpc_object *)v4 containsString:@"com.apple.camera.fdr"]& 1) != 0)
  {
    v7 = off_100018330;
    goto LABEL_15;
  }

  if (([(OS_xpc_object *)v4 containsString:@"com.apple.camera.hw"]& 1) != 0)
  {
    v7 = off_100018350;
    goto LABEL_15;
  }

  if (([(OS_xpc_object *)v4 isEqualToString:@"com.apple.audio.hw.failure.codec"]& 1) != 0)
  {
    v7 = off_100018308;
    goto LABEL_15;
  }

  if ([(OS_xpc_object *)v4 isEqualToString:@"com.apple.audio.hw.failure.speaker"])
  {
    v7 = off_100018310;
    goto LABEL_15;
  }

LABEL_16:
}

void sub_10000CF08(id a1, OS_xpc_object *a2)
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "received a com.apple.fsevents.matching notification", v3, 2u);
  }
}

void sub_10000CF74(id a1, OS_xpc_object *a2)
{
  v2 = [NSString stringWithUTF8String:xpc_dictionary_get_string(a2, _xpc_event_key_name)];
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "received:%@", &v7, 0xCu);
  }

  if ([v2 isEqualToString:@"AppleLanguagePreferencesChangedNotification"])
  {
    v4 = handleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "received a AppleLanguagePreferencesChangedNotification", &v7, 2u);
    }

    v5 = +[MRUINotificationHelper sharedSingleton];
    [v5 updateFollowupsToNewLocale];
  }

  if ([v2 isEqualToString:@"com.apple.mobilerepair.refreshui"])
  {
    v6 = handleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received com.apple.mobilerepair.refreshui", &v7, 2u);
    }

    sub_10000D124();
  }
}

void sub_10000D124()
{
  v0 = MGGetBoolAnswer();
  v1 = MGCopyAnswer();
  v2 = [v1 intValue];

  if ((v0 & 1) != 0 || (v2 <= 9 ? (v4 = ((1 << v2) & 0x24A) == 0) : (v4 = 1), v4))
  {
    v3 = handleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v18 = v0;
      v19 = 1024;
      v20 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "exiting Diagnostics mode:%d::deviceClass:%d", buf, 0xEu);
    }
  }

  else if ((v2 & 0xD) == 1)
  {
    v5 = +[MRBatteryComponentHandler sharedSingleton];
    [v5 checkInAndHandleAuthStatus];

    v6 = +[MRDisplayComponentHandler sharedSingleton];
    [v6 checkInAndHandleAuthStatus];

    v7 = +[MRTouchIDComponentHandler sharedSingleton];
    [v7 checkInAndHandleAuthStatus];

    v8 = +[MRCameraComponentHandler sharedSingleton];
    [v8 checkInAndHandleAuthStatus];

    v9 = +[MRFaceIDComponentHandler sharedSingleton];
    [v9 checkInAndHandleAuthStatus];

    v10 = +[MRBackGlassComponentHandler sharedSingleton];
    [v10 checkInAndHandleAuthStatus];

    v11 = +[MREnclosureComponentHandler sharedSingleton];
    [v11 checkInAndHandleAuthStatus];

    v12 = +[MRRCamComponentHandler sharedSingleton];
    [v12 checkInAndHandleAuthStatus];

    v13 = +[MRAudioComponentHandler sharedSingleton];
    [v13 checkInAndHandleAuthStatus];

    v14 = +[MRAudioCodecComponentHandler sharedSingleton];
    [v14 checkInAndHandleAuthStatus];

    v15 = +[MRVolumeButtonComponentHandler sharedSingleton];
    [v15 checkInAndHandleAuthStatus];

    v16 = +[MRCoverGlassComponentHandler sharedSingleton];
    [v16 checkInAndHandleAuthStatus];
  }
}

void sub_10000D3CC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EB90();
  }
}

void sub_10000D424(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "clearBootIntent status:%d:error:%@", v6, 0x12u);
  }
}

void sub_10000D4EC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EC04();
  }
}

void sub_10000D544(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "clearRepairBackup status: %d error: %@", v6, 0x12u);
  }
}

void sub_10000D624(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_10000D8F0(uint64_t a1)
{
  [*(a1 + 32) handleSUCase];
  qword_10001EB78 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

id sub_10000E004(uint64_t a1)
{
  result = [CRDeviceMap supportRepair:1027];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    qword_10001EB88 = [objc_alloc(*(a1 + 32)) _init];

    return _objc_release_x1();
  }

  return result;
}

void sub_10000E0F8(uint64_t a1, _xpc_activity_s *a2)
{
  v3 = [*(a1 + 32) componentName];
  v11 = a2;
  state = xpc_activity_get_state(a2);
  v4 = [NSString stringWithFormat:@"Failed to set state to DEFER for activity %@ current state: %lu"];
  sub_100007850();
  sub_100007830(&_mh_execute_header, v5, v6, "[%@][%@]", v7, v8, v9, v10, v11, state, 2u);
}

void sub_10000E1C4(uint64_t a1)
{
  v1 = [*(a1 + 32) componentName];
  v2 = [NSString stringWithFormat:@"[%s] unable to create sealer"];
  sub_100007850();
  sub_100007830(&_mh_execute_header, v3, v4, "[%@][%@]", v5, v6, v7, v8, "[MRBaseComponentHandler scheduleNetworkActivity]_block_invoke", v9, 2u);
}

void sub_10000E288(uint64_t a1)
{
  v1 = [*(a1 + 32) componentName];
  v2 = [NSString stringWithFormat:@"[%s]Unable to get FDR path"];
  sub_100007850();
  sub_100007830(&_mh_execute_header, v3, v4, "[%@][%@]", v5, v6, v7, v8, "[MRBaseComponentHandler scheduleNetworkActivity]_block_invoke", v9, 2u);
}

void sub_10000E34C(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%@][%@]", buf, 0x16u);
}

void sub_10000E3C0(void *a1, uint64_t a2)
{
  v3 = [a1 componentName];
  v11 = a2;
  v4 = [NSString stringWithFormat:@"[%s] ignoring rogue event with unlock countL: %ld"];
  sub_100007850();
  sub_100007830(&_mh_execute_header, v5, v6, "[%@][%@]", v7, v8, v9, v10, "[MRBaseComponentHandler sendAnalyticsForCount:]", v11, 2u);
}

void sub_10000E484()
{
  v0 = handleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100007860(&_mh_execute_header, v1, v2, "Cannot find property config-number", v3, v4, v5, v6, 0);
  }
}

void sub_10000E4E4()
{
  v0 = handleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100007860(&_mh_execute_header, v1, v2, "Cannot find matching service to IOPlatformExpertDevice", v3, v4, v5, v6, 0);
  }
}

void sub_10000E558(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get battery health state (%x):%@\n", v3, 0x12u);
}

void sub_10000E5E0(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to post followup error:%@", &v4, 0xCu);
}

void sub_10000E678(uint64_t *a1, void *a2, NSObject *a3)
{
  v4 = *a1;
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "failed to open sensitive url:%@ :: error:%@", &v6, 0x16u);
}

void sub_10000E72C(uint64_t a1, int *a2, os_log_t log)
{
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to display %@ notification ERROR:%d", &v5, 0x12u);
}

void sub_10000E7BC(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10000B578(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_10000B58C(&_mh_execute_header, v5, v6, "failed to clear Followup error:%@");
}

void sub_10000E818(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10000B578(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_10000B58C(&_mh_execute_header, v5, v6, "failed to post followup error:%@");
}

void sub_10000E874(uint64_t a1, NSObject **a2)
{
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
    v7 = 2112;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: format not correct: %@", &v5, 0x16u);
  }

  *a2 = v4;
}

void sub_10000E93C(NSObject **a1)
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: audit token does not have entitlements needed.", &v3, 0xCu);
  }

  *a1 = v2;
}

void sub_10000EB14(_xpc_activity_s *a1)
{
  xpc_activity_get_state(a1);
  sub_10000D60C();
  sub_10000D624(&_mh_execute_header, v1, v2, "Failed to set state to DEFER for activity %@ current state: %lu", v3, v4, v5, v6, v7);
}

void sub_10000ECBC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "component %ld not defined: %@", &v3, 0x16u);
}