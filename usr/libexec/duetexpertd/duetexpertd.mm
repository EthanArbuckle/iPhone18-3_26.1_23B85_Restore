uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  sqlite3_config(13, 96, 64);
  _ATXInitializeInOwnerProcess();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100004160);
  v1 = +[ATXDistributedNotificationHandler sharedInstance];
  [v1 registerXPCHandler];

  +[ATXAssets2 onUpdateRestartThisProcess];
  objc_autoreleasePoolPop(v0);
  do
  {
    v2 = objc_autoreleasePoolPush();
    v3 = +[NSRunLoop currentRunLoop];
    v4 = +[NSDate distantFuture];
    v5 = [v3 runMode:NSDefaultRunLoopMode beforeDate:v4];

    objc_autoreleasePoolPop(v2);
  }

  while ((v5 & 1) != 0);
  return 0;
}

void sub_100000D38(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v3 = os_transaction_create();
    v4 = objc_autoreleasePoolPush();
    string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
    v6 = [NSString stringWithUTF8String:string];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received notifyd notification: %@", buf, 0xCu);
    }

    if (([v6 isEqualToString:@"com.apple.coreduetd.knowledgebase.launch.duetexpertd"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.Preferences.ResetPrivacyWarningsNotification") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.spotlightui.prefschanged") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.duetexpertd.prefschanged") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"dmf.policy.monitor.app") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.siri.cloud.storage.deleted") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.siri.cloud.synch.changed") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.duetexpertd.clientModelRefreshBlendingLayer") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.managedconfiguration.restrictionchanged") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.managedconfiguration.managedorginfochanged") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.duetexpertd.updateDefaultsDueToRelevantHomeScreenConfigUpdate") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.ManagedConfiguration.managedAppsChanged"))
    {
      v7 = +[NSNotificationCenter defaultCenter];
      v8 = [NSString stringWithUTF8String:string];
      [v7 postNotificationName:v8 object:0];

      NSLog(@"--- handled event %s ---", string);
    }

    else if ([v6 isEqualToString:@"com.apple.duet.expertcenter.appRefresh"])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Forced app predictions refresh notification", buf, 2u);
      }

      ATXUpdatePredictionsImmediately();
    }

    else if ([v6 isEqualToString:@"com.apple.duetexpertd.feedbackavailable"])
    {
      [_PASDeviceState runBlockWhenDeviceIsClassCUnlockedWithQoS:17 block:&stru_1000041A0];
    }

    else if ([v6 isEqualToString:@"_CalDatabaseChangedNotification"])
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 postNotificationName:EKEventStoreChangedNotification object:0];
    }

    else
    {
      [v6 isEqualToString:@"com.apple.MobileStoreDemo.ShallowRefreshReady"];
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_opt_self();
  }
}