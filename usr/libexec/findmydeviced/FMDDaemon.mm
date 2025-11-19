@interface FMDDaemon
+ (id)sharedInstance;
- (FMDDaemon)init;
- (id)apsHandlerForEnvironment:(id)a3;
- (id)xpcDarwinEventHandlers;
- (id)xpcDistributedEventHandlers;
- (void)_performPostStartupTasks;
- (void)_startupNowWithCompletion:(id)a3;
- (void)calculateFirstRunStatus;
- (void)checkInAllAPSHandlers;
- (void)cleanupPostWipe;
- (void)initialLaunchProcessing;
- (void)migrateAosnotifydStuff;
- (void)migrateFromVersion:(id)a3 toVersion:(id)a4;
- (void)startServiceProviders;
- (void)versionCheck;
- (void)waitForSpringBoard;
@end

@implementation FMDDaemon

+ (id)sharedInstance
{
  if (qword_100314548 != -1)
  {
    sub_100226834();
  }

  v3 = qword_100314540;

  return v3;
}

- (FMDDaemon)init
{
  v10.receiver = self;
  v10.super_class = FMDDaemon;
  v2 = [(FMDDaemon *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    apsHandlers = v2->_apsHandlers;
    v2->_apsHandlers = v3;

    v5 = dispatch_queue_create("APSHandlers-Mods", 0);
    apsHandlersModQueue = v2->_apsHandlersModQueue;
    v2->_apsHandlersModQueue = v5;

    v7 = objc_alloc_init(FMStateCapture);
    [(FMDDaemon *)v2 setStateCapture:v7];

    v8 = [(FMDDaemon *)v2 stateCapture];
    [v8 setStateCaptureBlock:&stru_1002CDA20];
  }

  return v2;
}

- (void)_startupNowWithCompletion:(id)a3
{
  v4 = a3;
  [(FMDDaemon *)self migrateAosnotifydStuff];
  v5 = +[FMDFMIPSharedStateManager sharedInstance];
  [v5 recalculateLostMode];

  [(FMDDaemon *)self waitForSpringBoard];
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "************ FindMyDevice Daemon Starting... ************", buf, 2u);
  }

  v7 = +[NSDate date];
  [(FMDDaemon *)self setStartTime:v7];

  [(FMDDaemon *)self versionCheck];
  [(FMDDaemon *)self calculateFirstRunStatus];
  v8 = +[FMXPCTransactionManager sharedInstance];
  [v8 setLaunchOnRebootActivity:@"com.apple.icloud.findmydeviced.launch-on-reboot" keepAliveActivity:@"com.apple.icloud.findmydeviced.keep-alive-on-dirty"];

  v9 = +[FMDSystemConfig sharedInstance];
  v10 = sub_100002880();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100226848(v10);
  }

  v11 = +[FMSystemInfo sharedInstance];
  if ([v11 isInternalBuild])
  {
    v12 = +[FMDSystemConfig sharedInstance];
    v13 = [v12 isRunningInRecovery];

    if (v13)
    {
      goto LABEL_12;
    }

    v11 = [(FMDDaemon *)self verifyLaunchEventsConfiguration:@"/System/Library/LaunchDaemons/com.apple.icloud.findmydeviced.plist" withExclusions:&off_1002E88B8];
    if (v11)
    {
      v14 = sub_100002880();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10022688C();
      }
    }
  }

LABEL_12:
  v15 = sub_100002880();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1002268F4(v15);
  }

  [(FMDDaemon *)self startServiceProviders];
  v16 = +[FMXPCTransactionManager sharedInstance];
  v17 = +[FMNetworkMonitor sharedInstance];
  v18 = [v17 isMonitoring];

  if ((v18 & 1) == 0)
  {
    v19 = +[FMNetworkMonitor sharedInstance];
    [v19 startMonitoring];
  }

  [(FMDDaemon *)self cleanupPostWipe];
  [(FMDDaemon *)self setStartupComplete:1];
  [(FMDDaemon *)self checkInAllAPSHandlers];
  v20 = [(FMDDaemon *)self apsHandlersModQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BDF4;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(v20, block);

  v21 = +[FMDXPCManager sharedInstance];
  [v21 initializeXPC];

  [(FMDDaemon *)self _performPostStartupTasks];
  if (v4)
  {
    v4[2](v4);
  }

  v22 = [[FMDEventLoggerEventLaunch alloc] initWithEventName:@"FMDDaemonLaunchEvent"];
  [(FMDEventLoggerEventLaunch *)v22 setLaunchReason:0];
  v23 = +[FMDEventLogger sharedLogger];
  v24 = +[FMDEventLoggerFacilityDataPeek facilityName];
  v30 = v24;
  v25 = [NSArray arrayWithObjects:&v30 count:1];
  [v23 logEvent:v22 toFacilitiesNamed:v25];

  if (!MKBGetDeviceLockState())
  {
    v26 = sub_100002880();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Start clearing up empty folders", buf, 2u);
    }

    v27 = +[FMDProtectedContextManager sharedManager];
    [v27 cleanupEmptyFolders];
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
  v4[2] = sub_10013C00C;
  v4[3] = &unk_1002CDA48;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (id)apsHandlerForEnvironment:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000A9B4;
  v16 = sub_100002AA4;
  v17 = 0;
  if (v4)
  {
    v5 = [(FMDDaemon *)self apsHandlersModQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013C264;
    block[3] = &unk_1002CDA70;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(v5, block);
  }

  else
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002269A8(v6);
    }
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)startServiceProviders
{
  v3 = objc_alloc_init(FMDFMIPServiceProvider);
  [(FMDDaemon *)self setActiveServiceProvider:v3];

  v4 = [(FMDDaemon *)self activeServiceProvider];
  [v4 start];

  v5 = +[FMDAppleAccountManager sharedInstance];
  [v5 syncFMIPAccountInfo];

  v6 = [(FMDDaemon *)self activeServiceProvider];
  v7 = [v6 newLocationManager];

  v8 = sub_100002880();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Started Location Manager (handling launch event) %p", &v9, 0xCu);
  }
}

- (id)xpcDarwinEventHandlers
{
  if (qword_100314558 != -1)
  {
    sub_1002269EC();
  }

  v3 = qword_100314550;

  return v3;
}

- (id)xpcDistributedEventHandlers
{
  if (qword_100314568 != -1)
  {
    sub_100226A68();
  }

  v3 = qword_100314560;

  return v3;
}

- (void)versionCheck
{
  v3 = +[FMDSystemConfig sharedInstance];
  v4 = [v3 buildVersion];

  v5 = +[FMDSystemConfig sharedInstance];
  v6 = [v5 isRunningInRecovery];

  v7 = sub_100002880();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *v12 = 138412290;
    *&v12[4] = v4;
    v9 = "OS: %@ [Recovery Partition]";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *v12 = 138412290;
    *&v12[4] = v4;
    v9 = "OS: %@";
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v12, 0xCu);
LABEL_7:

  v10 = +[FMDPreferencesMgr lastLaunchVersion];
  v11 = v10;
  if (v10)
  {
    if (([v10 isEqualToString:v4] & 1) == 0)
    {
      [(FMDDaemon *)self migrateFromVersion:v11 toVersion:v4];
    }
  }

  else
  {
    [(FMDDaemon *)self initialLaunchProcessing];
  }

  [FMDPreferencesMgr setLastLaunchVersion:v4, *v12];
}

- (void)initialLaunchProcessing
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initial launch", v3, 2u);
  }
}

- (void)migrateFromVersion:(id)a3 toVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 compare:v6];
  v8 = sub_100002880();
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v12 = "Back-migration from %@ to %@";
      v13 = v9;
      v14 = 22;
      goto LABEL_11;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v7 != -1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100226A7C();
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrating from %@ to %@", buf, 0x16u);
  }

  if ([@"12A196" compare:v5] != -1)
  {
    v10 = +[NSFileManager defaultManager];
    v15 = 0;
    [v10 removeItemAtPath:@"/var/mobile/Library/Logs/findmydeviced" error:&v15];
    v11 = v15;

    if (v11)
    {
      v9 = sub_100002880();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Failed to delete log directory. findmydeviced logging may not work";
        v13 = v9;
        v14 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)calculateFirstRunStatus
{
  v3 = sem_open("findmydeviced.boot_check", 0);
  if (v3 == -1)
  {
    [(FMDDaemon *)self setIsFirstRunAfterBoot:1];
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "This is the first run after a boot", buf, 2u);
    }

    v5 = sem_open("findmydeviced.boot_check", 512, 256, 0);
    if (v5 == -1)
    {
      v6 = sub_100002880();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 136315394;
        v10 = "findmydeviced.boot_check";
        v11 = 2080;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to create semaphore %s: %s", buf, 0x16u);
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
  if (MGGetBoolAnswer())
  {
    out_token = -1;
    notify_register_check("com.apple.springboard.finishedstartup", &out_token);
    if (out_token != -1)
    {
      v7 = 0;
      notify_get_state(out_token, &v7);
      v2 = v7;
      v3 = sub_100002880();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (v2)
      {
        if (v4)
        {
          *buf = 0;
          v5 = "SpringBoard is already running. Continuing to start findmydeviced";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
        }
      }

      else
      {
        if (v4)
        {
          *buf = 134217984;
          v10 = 20;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Waiting upto %ld seconds for SpringBoard to start...", buf, 0xCu);
        }

        if (!v7)
        {
          v6 = 0;
          do
          {
            sleep(1u);
            notify_get_state(out_token, &v7);
            if (v6 > 0x12)
            {
              break;
            }

            ++v6;
          }

          while (!v7);
          if (!v7)
          {
            v3 = sub_100002880();
            if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_16;
            }

            *buf = 0;
            v5 = "Timed out while waiting for SpringBoard to start. Continuing to start findmydeviced anyway";
            goto LABEL_15;
          }
        }

        v3 = sub_100002880();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = "SpringBoard has started. Continuing to start findmydeviced";
          goto LABEL_15;
        }
      }

LABEL_16:
    }
  }
}

- (void)_performPostStartupTasks
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kFMDStartupCompleteNotification, 0, 0, 1u);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v3, kFMDLocalActivationLockInfoChangedNotification, 0, 0, 1u);
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDLocalActivationLockInfoManager posted activationLockInfo changed notification after startup", v5, 2u);
  }
}

- (void)cleanupPostWipe
{
  v2 = +[FMDSystemConfig sharedInstance];
  v3 = [v2 isBuddyDone];

  if (v3)
  {
    v4 = [FMPreferencesUtil dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:kFMDPostWipePrefDomain];
    v5 = [v4 objectForKey:@"lostModeEnabled"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = MAEGetActivationStateWithError();
      v8 = 0;
      if (v8)
      {
        v9 = sub_100002880();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100226A00();
        }
      }

      v10 = sub_100002880();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Doing fallback cleanup of postwipe preferences.  Activation state: [%@]", buf, 0xCu);
      }

      [FMDPreferencesMgr setFMIPWipeLostModeInfo:0];
    }
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10013DFBC, @"com.apple.purplebuddy.setupdone", 0, 0);
  }
}

- (void)migrateAosnotifydStuff
{
  if (!+[FMDPreferencesMgr importedAosnotifydData])
  {
    v2 = sub_100002880();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking for stuff to migrate from aosnotifyd", buf, 2u);
    }

    v3 = [NSString stringWithFormat:@"%@/FMIP-trackedLocations.dat", @"/var/mobile/Library/Caches/com.apple.aosnotifyd"];
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:v3];

    if (v5)
    {
      v6 = +[NSFileManager defaultManager];
      [v6 removeItemAtPath:v3 error:0];
    }

    v7 = +[NSFileManager defaultManager];
    [v7 moveItemAtPath:@"/var/mobile/Library/Preferences/com.apple.AOSNotification.FMIPAccounts.plist" toPath:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.plist" error:0];

    v8 = +[NSFileManager defaultManager];
    [v8 moveItemAtPath:@"/var/mobile/Library/Preferences/com.apple.AOSNotification.FMIPAccounts.notbackedup.plist" toPath:@"/var/mobile/Library/Preferences/com.apple.icloud.findmydeviced.FMIPAccounts.notbackedup.plist" error:0];

    v9 = [FMPreferencesUtil dictionaryForKey:@"_trackingInfo_FMIP" inDomain:@"com.apple.AOSNotification.notbackedup"];
    if (v9)
    {
      v10 = [FMDLocationTracker stringForLocationTrackerType:0];
      [FMDPreferencesMgr setTrackingInfo:v9 forType:v10];
    }

    v11 = [FMPreferencesUtil dictionaryForKey:@"ClientLostModeInfo" inDomain:@"com.apple.AOSNotification.public.notbackedup"];
    if (v11)
    {
      [FMDPreferencesMgr setClientLostModeInfo:v11];
    }

    v12 = [FMPreferencesUtil dictionaryForKey:@"FMIPWipeLostModeInfo" inDomain:@"com.apple.AOSNotification.postwipe"];
    if (v12)
    {
      [FMDPreferencesMgr setFMIPWipeLostModeInfo:v12];
    }

    v13 = [FMPreferencesUtil dictionaryForKey:@"FMIPLostModeInfo" inDomain:@"com.apple.AOSNotification.public.notbackedup"];
    if (v13)
    {
      [FMDPreferencesMgr setLostModeInfo:v13];
    }

    v14 = [FMPreferencesUtil integerForKey:@"_wipeState" inDomain:@"com.apple.AOSNotification.notbackedup"];
    if (v14)
    {
      [FMDPreferencesMgr setWipeState:v14];
    }

    v15 = [FMPreferencesUtil dictionaryForKey:@"_wipeInfo" inDomain:@"com.apple.AOSNotification.notbackedup"];
    if (v15)
    {
      [FMDPreferencesMgr setWipeInfo:v15];
    }

    [FMDPreferencesMgr setImportedAosnotifydData:1];
  }
}

@end