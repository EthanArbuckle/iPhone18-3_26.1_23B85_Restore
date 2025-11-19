@interface FMFLocatorDaemon
+ (id)sharedInstance;
- (FMFLocatorDaemon)init;
- (id)apsHandlerForEnvironment:(id)a3;
- (id)xpcDarwinEventHandlers;
- (id)xpcDistributedEventHandlers;
- (void)calculateFirstRunStatus;
- (void)checkInAllAPSHandlers;
- (void)startServiceProviders;
- (void)startupWithCompletion:(id)a3;
- (void)waitForSpringBoard;
@end

@implementation FMFLocatorDaemon

+ (id)sharedInstance
{
  if (qword_1000700D8 != -1)
  {
    sub_100036580();
  }

  v3 = qword_1000700D0;

  return v3;
}

- (FMFLocatorDaemon)init
{
  v8.receiver = self;
  v8.super_class = FMFLocatorDaemon;
  v2 = [(FMFLocatorDaemon *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    apsHandlers = v2->_apsHandlers;
    v2->_apsHandlers = v3;

    v5 = objc_alloc_init(FMStateCapture);
    [(FMFLocatorDaemon *)v2 setStateCapture:v5];

    v6 = [(FMFLocatorDaemon *)v2 stateCapture];
    [v6 setStateCaptureBlock:&stru_10005D0D8];
  }

  return v2;
}

- (void)startupWithCompletion:(id)a3
{
  v4 = a3;
  if (MGGetBoolAnswer())
  {
    [(FMFLocatorDaemon *)self waitForSpringBoard];
  }

  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "\n*******************************************************************************\n                    FMFLocator Daemon Starting...\n*******************************************************************************", buf, 2u);
  }

  v6 = +[NSDate date];
  [(FMFLocatorDaemon *)self setStartTime:v6];

  [(FMFLocatorDaemon *)self calculateFirstRunStatus];
  if ([(FMFLocatorDaemon *)self isFirstRunAfterBoot])
  {
    v7 = objc_alloc_init(FMFLocatorMigrator);
    v8 = [(FMFLocatorMigrator *)v7 performMigration];

    if ((v8 & 1) == 0)
    {
      v9 = sub_100002830();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not perform migration", buf, 2u);
      }
    }
  }

  v10 = +[FMXPCTransactionManager sharedInstance];
  [v10 setLaunchOnRebootActivity:@"com.apple.icloud.fmflocatord.launch-on-reboot" keepAliveActivity:@"com.apple.icloud.fmflocatord.keep-alive-on-dirty"];

  v11 = +[SystemConfig sharedInstance];
  v12 = +[FMFAppStateObserver sharedInstance];
  v13 = +[FMSystemInfo sharedInstance];
  v14 = [v13 isInternalBuild];

  if (v14)
  {
    v15 = [(FMFLocatorDaemon *)self verifyLaunchEventsConfiguration:@"/System/Library/LaunchDaemons/com.apple.icloud.fmflocatord.plist" withExclusions:&__NSArray0__struct];
    if (v15)
    {
      v16 = sub_100002830();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_100036594(v15, v16);
      }
    }
  }

  v17 = sub_100002830();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10003660C(v17);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = [(FMFLocatorDaemon *)self apsHandlers];
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      v22 = 0;
      do
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v41 + 1) + 8 * v22);
        v24 = [(FMFLocatorDaemon *)self apsHandlers];
        v25 = [v24 objectForKeyedSubscript:v23];

        [v25 suspendRegistrations];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v20);
  }

  v26 = +[APSTokenWatcher sharedInstance];
  [(FMFLocatorDaemon *)self startServiceProviders];
  v27 = +[FMXPCTransactionManager sharedInstance];
  sub_1000058F8();
  [(FMFLocatorDaemon *)self setStartupComplete:1];
  [(FMFLocatorDaemon *)self checkInAllAPSHandlers];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = [(FMFLocatorDaemon *)self apsHandlers];
  v29 = [v28 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v38;
    do
    {
      v32 = 0;
      do
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v37 + 1) + 8 * v32);
        v34 = [(FMFLocatorDaemon *)self apsHandlers];
        v35 = [v34 objectForKeyedSubscript:v33];

        [v35 resumeRegistrations];
        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v30);
  }

  v36 = +[XPCManager sharedInstance];
  [v36 initializeXPC];

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)checkInAllAPSHandlers
{
  v5[0] = @"production";
  v5[1] = @"development";
  v5[2] = @"demo";
  v3 = [NSArray arrayWithObjects:v5 count:3];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004B1C;
  v4[3] = &unk_10005D100;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (id)apsHandlerForEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(FMFLocatorDaemon *)self apsHandlers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [FMAPSHandler alloc];
    v8 = [@"com.apple.icloud.fmflocatord.aps-" stringByAppendingString:v4];
    v6 = [v7 initWithEnvironmentName:v4 launchOnDemandPort:v8];

    if (![(FMFLocatorDaemon *)self startupComplete])
    {
      [v6 suspendRegistrations];
    }

    v9 = [(FMFLocatorDaemon *)self apsHandlers];
    [v9 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (void)startServiceProviders
{
  v2 = sub_100002830();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000366C4(v2);
  }

  v3 = +[ServiceProviderMgr sharedInstance];
  [v3 start];
}

- (id)xpcDarwinEventHandlers
{
  v14[0] = @"com.apple.locationd/Prefs";
  v2 = [&stru_10005D120 copy];
  v15[0] = v2;
  v14[1] = @"com.apple.locationd.authorization";
  v3 = [&stru_10005D140 copy];
  v15[1] = v3;
  v14[2] = @"com.apple.mobileme.fmf1.allowFindMyFriendsModification";
  v4 = [&stru_10005D160 copy];
  v15[2] = v4;
  v14[3] = @"com.apple.system.hostname";
  v5 = [&stru_10005D180 copy];
  v15[3] = v5;
  v13[0] = @"AppleLanguagePreferencesChangedNotification";
  v13[1] = @"AppleDatePreferencesChangedNotification";
  v13[2] = @"AppleTimePreferencesChangedNotification";
  v13[3] = @"AppleNumberPreferencesChangedNotification";
  v13[4] = @"AppleKeyboardsPreferencesChangedNotification";
  v13[5] = @"com.apple.language.changed";
  v6 = [NSArray arrayWithObjects:v13 count:6];
  v14[4] = v6;
  v7 = [&stru_10005D1A0 copy];
  v15[4] = v7;
  v14[5] = @"com.apple.purplebuddy.setupdone";
  v8 = [&stru_10005D1C0 copy];
  v15[5] = v8;
  v14[6] = NRPairedDeviceRegistryDeviceDidPairDarwinNotification;
  v9 = [&stru_10005D1E0 copy];
  v15[6] = v9;
  v14[7] = NRPairedDeviceRegistryDeviceDidUnpairDarwinNotification;
  v10 = [&stru_10005D200 copy];
  v15[7] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];

  return v11;
}

- (id)xpcDistributedEventHandlers
{
  v6[0] = @"com.apple.LaunchServices.applicationRegistered";
  v2 = [&stru_10005D240 copy];
  v6[1] = @"com.apple.LaunchServices.applicationUnregistered";
  v7[0] = v2;
  v3 = [&stru_10005D260 copy];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)calculateFirstRunStatus
{
  v3 = sem_open("fmflocatord.boot_check", 0);
  if (v3 == -1)
  {
    [(FMFLocatorDaemon *)self setIsFirstRunAfterBoot:1];
    v4 = sub_100002830();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "This is the first run after a boot", buf, 2u);
    }

    v5 = sem_open("fmflocatord.boot_check", 512, 256, 0);
    if (v5 == -1)
    {
      v6 = sub_100002830();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 136315394;
        v10 = "fmflocatord.boot_check";
        v11 = 2080;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to create semaphore %s: %s", buf, 0x16u);
      }
    }

    else
    {
      sem_close(v5);
    }
  }

  else
  {

    sem_close(v3);
  }
}

- (void)waitForSpringBoard
{
  out_token = -1;
  notify_register_check("com.apple.springboard.finishedstartup", &out_token);
  if (out_token != -1)
  {
    v7 = 0;
    notify_get_state(out_token, &v7);
    v2 = v7;
    v3 = sub_100002830();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        v5 = "SpringBoard is already running. Continuing to start fmflocatord";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v5, buf, 2u);
      }
    }

    else
    {
      if (v4)
      {
        *buf = 134217984;
        v10 = 0x404E000000000000;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Waiting upto %.0f seconds for SpringBoard to start...", buf, 0xCu);
      }

      if (!v7)
      {
        v6 = 0;
        do
        {
          sleep(1u);
          notify_get_state(out_token, &v7);
          if (v6 > 0x3A)
          {
            break;
          }

          ++v6;
        }

        while (!v7);
        if (!v7)
        {
          v3 = sub_100002830();
          if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          *buf = 0;
          v5 = "Timed out while waiting for SpringBoard to start. Continuing to start fmflocatord anyway";
          goto LABEL_14;
        }
      }

      v3 = sub_100002830();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "SpringBoard has started. Continuing to start fmflocatord";
        goto LABEL_14;
      }
    }

LABEL_15:
  }
}

@end