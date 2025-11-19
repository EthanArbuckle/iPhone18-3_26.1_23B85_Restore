@interface MRBaseComponentHandler
+ (id)getHwRevision;
+ (void)handleComponentSUCase:(id)a3 lastAUthCheckBuildVersion:(id)a4 followUpItemID:(id)a5 queryString:(id)a6 suCasekey:(id)a7 startBuildVersion:(id)a8 componentAuth:(id)a9;
- (BOOL)clearStateFile:(BOOL *)a3;
- (MRBaseComponentHandler)init;
- (id)createCriteriaForUnlockCheckerWithInterval:(double)a3;
- (void)checkInAndHandleAuthStatus;
- (void)clearNSUserDefaults;
- (void)clearRepairFollowUp;
- (void)createRepairFollowUp;
- (void)mainNonAuthRepairFlow;
- (void)popUpNotificationNowWithMessage;
- (void)scheduleNetworkActivity;
- (void)scheduleUnlockCheckerActivity:(double)a3 forFinishRepair:(BOOL)a4;
- (void)sendAnalyticsForCount:(int64_t)a3;
- (void)unlockCheckerActivityBody;
- (void)unlockCheckerActivityBodyForFinishRepair;
@end

@implementation MRBaseComponentHandler

- (MRBaseComponentHandler)init
{
  v19.receiver = self;
  v19.super_class = MRBaseComponentHandler;
  v2 = [(MRBaseComponentHandler *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2[13] = 0;
    *(v2 + 9) = 0;
    v4 = *(v2 + 23);
    *(v2 + 23) = 0;

    *(v3 + 20) = 0xF00000005;
    *(v3 + 7) = 1;
    v3[8] = 1;
    v5 = *(v3 + 26);
    *(v3 + 26) = 0;

    v3[16] = 0;
    v6 = *(v3 + 19);
    *(v3 + 19) = 0;

    v7 = *(v3 + 28);
    *(v3 + 28) = 0;

    v8 = *(v3 + 30);
    *(v3 + 30) = 0;

    v9 = *(v3 + 29);
    *(v3 + 29) = 0;

    v10 = MGCopyAnswer();
    *(v3 + 7) = [v10 intValue];

    v11 = +[NSUserDefaults groupStandardUserDefaults];
    [v11 doubleForKey:@"timeIntervalOverride"];
    v13 = v12;

    has_internal_content = os_variant_has_internal_content();
    v15 = XPC_ACTIVITY_INTERVAL_1_DAY;
    if ((has_internal_content & (v13 != 0.0)) != 0)
    {
      v15 = v13;
    }

    *(v3 + 21) = v15;
    v16 = handleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v3 + 21);
      *buf = 134217984;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "the XPC time internal will be %f", buf, 0xCu);
    }
  }

  return v3;
}

- (void)createRepairFollowUp
{
  displayFollowup = self->displayFollowup;
  v4 = handleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (displayFollowup)
  {
    if (v5)
    {
      v6 = [(MRBaseComponentHandler *)self componentName];
      *buf = 138412546;
      v10 = v6;
      v11 = 2080;
      v12 = "[MRBaseComponentHandler createRepairFollowUp]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
    }

    v4 = +[MRUINotificationHelper sharedSingleton];
    [v4 createRepairFollowUpWithNotification:self->displayNotification actionURL:self->linkedSensitiveURL repairTitle:self->popUpNotificationTitle infoText:self->followUpInfoMessage itemID:self->componentFollowupClientID timeInterval:self->componentName componentName:self->timeIntervalOverride];
  }

  else if (v5)
  {
    v7 = [(MRBaseComponentHandler *)self componentName];
    v8 = [NSString stringWithFormat:@"[%s] followup skipped", "[MRBaseComponentHandler createRepairFollowUp]"];
    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }
}

- (void)clearRepairFollowUp
{
  displayFollowup = self->displayFollowup;
  v4 = handleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!displayFollowup)
  {
    if (v5)
    {
      v9 = [(MRBaseComponentHandler *)self componentName];
      v10 = [NSString stringWithFormat:@"[%s] clearRepairFollowUp skipped", "[MRBaseComponentHandler clearRepairFollowUp]"];
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v6 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v12 = v6;
    v13 = 2080;
    v14 = "[MRBaseComponentHandler clearRepairFollowUp]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  v7 = +[MRUINotificationHelper sharedSingleton];
  [v7 clearRepairFollowUpWithUniqueID:self->componentFollowupClientID];

  if (self->finishRepairKey)
  {
    v8 = +[MRUINotificationHelper sharedSingleton];
    [v8 clearRepairFollowUpWithUniqueID:self->finishRepairKey];

    v4 = +[MRUINotificationHelper sharedSingleton];
    [v4 removeRepairNotificationsWithUniqueID:self->finishRepairKey];
LABEL_8:
  }
}

- (BOOL)clearStateFile:(BOOL *)a3
{
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v22 = v6;
    v23 = 2080;
    v24 = "[MRBaseComponentHandler clearStateFile:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:self->stateFilePath];

  if (!v8)
  {
    v12 = 0;
LABEL_10:
    v14 = 1;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a3 = v8;
    goto LABEL_12;
  }

  v9 = +[NSFileManager defaultManager];
  stateFilePath = self->stateFilePath;
  v20 = 0;
  v11 = [v9 removeItemAtPath:stateFilePath error:&v20];
  v12 = v20;

  if (v11)
  {
    goto LABEL_10;
  }

  v13 = handleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v16 = [(MRBaseComponentHandler *)self componentName];
    v17 = self->stateFilePath;
    v18 = [v12 localizedDescription];
    v19 = [NSString stringWithFormat:@"remove item at path %@ failed: %@", v17, v18];
    *buf = 138412546;
    v22 = v16;
    v23 = 2112;
    v24 = v19;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@][%@]", buf, 0x16u);
  }

  v14 = 0;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v14;
}

- (void)clearNSUserDefaults
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRBaseComponentHandler *)self componentName];
    v7 = 138412546;
    v8 = v4;
    v9 = 2080;
    v10 = "[MRBaseComponentHandler clearNSUserDefaults]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@][%s]", &v7, 0x16u);
  }

  v5 = +[NSUserDefaults groupStandardUserDefaults];
  [v5 removeObjectForKey:self->componentUnLockCheckCountKey];
  [v5 removeObjectForKey:self->componentLastCheckTimeKey];
  [v5 removeObjectForKey:self->componentHasDisplayedFollowUpKey];
  [v5 removeObjectForKey:self->componentFirstUIDisplayedTimeKey];
  [v5 removeObjectForKey:self->componentSUCaseKey];
  [v5 removeObjectForKey:self->componentRetriggerCountKey];
  if (self->componentHasNotifiedServerKey)
  {
    [v5 removeObjectForKey:?];
  }

  [v5 removeObjectForKey:self->finishRepairKey];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForBluetooth"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForWifi"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForBaseband"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForNFC"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForUWB"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForAudio"];
  [v5 removeObjectForKey:@"hasDisplayedFollowupForTrueDepthIR"];
  [v5 synchronize];
  v6 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  [v6 removeObjectForKey:self->componentFollowupClientID];

  [(MRBaseComponentHandler *)self clearStateFile:0];
}

- (void)popUpNotificationNowWithMessage
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v11 = v4;
    v12 = 2080;
    v13 = "[MRBaseComponentHandler popUpNotificationNowWithMessage]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  if (![(MRBaseComponentHandler *)self displayModalPopup])
  {
    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MRBaseComponentHandler *)self componentName];
      v9 = [NSString stringWithFormat:@"[%s] SU case skipped popup", "[MRBaseComponentHandler popUpNotificationNowWithMessage]"];
      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v5 = +[NSUserDefaults groupStandardUserDefaults];
  v6 = [v5 BOOLForKey:@"settingsView"];

  if (!v6 || self->legacyPopup)
  {
    v7 = +[MRUINotificationHelper sharedSingleton];
    [v7 popUpNotificationNowWithMessage:self->popUpNotificationMessage title:self->popUpNotificationTitle openSensitiveURL:self->linkedSensitiveURL componentName:self->componentName legacyPopup:self->legacyPopup];
LABEL_9:
  }
}

- (void)scheduleNetworkActivity
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v8 = v4;
    v9 = 2080;
    v10 = "[MRBaseComponentHandler scheduleNetworkActivity]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  v5 = [(NSString *)self->componentNtwkActivityName UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000438C;
  handler[3] = &unk_100018638;
  handler[4] = self;
  xpc_activity_register(v5, XPC_ACTIVITY_CHECK_IN, handler);
}

- (void)unlockCheckerActivityBody
{
  v3 = +[NSUserDefaults groupStandardUserDefaults];
  v4 = [(MRBaseComponentHandler *)self componentUnLockCheckCountKey];
  v5 = [v3 integerForKey:v4];

  v6 = [(MRBaseComponentHandler *)self componentHasNotifiedServerKey];
  v7 = [v3 BOOLForKey:v6];

  if ([v3 BOOLForKey:self->componentDataCollectionPresentedKey])
  {
    v8 = 1;
  }

  else
  {
    v8 = ![(MRBaseComponentHandler *)self notifyServer];
  }

  v40 = 0;
  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  [v3 doubleForKey:self->componentLastCheckTimeKey];
  v13 = (v11 - v12);
  if (self->timeIntervalOverride <= v13)
  {
    timeIntervalOverride = v13;
  }

  else
  {
    timeIntervalOverride = self->timeIntervalOverride;
  }

  v15 = [(MRBaseComponentHandler *)self componentRetriggerCountKey];
  v16 = [v3 integerForKey:v15];

  v17 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  v18 = [v17 integerForKey:self->componentFollowupClientID];

  if (v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
  {
    ++v5;
    v19 = [(MRBaseComponentHandler *)self componentUnLockCheckCountKey];
    [v3 setInteger:v5 forKey:v19];

    v20 = [(MRBaseComponentHandler *)self componentLastCheckTimeKey];
    [v3 setDouble:v20 forKey:v11];

    [v3 synchronize];
  }

  v21 = handleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(MRBaseComponentHandler *)self componentName];
    v23 = [NSString stringWithFormat:@"Set count main body:%ld", v5];
    *buf = 138412546;
    v42 = v22;
    v43 = 2112;
    v44 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  v24 = [(MRBaseComponentHandler *)self isSUCaseForComponent];
  v25 = [(MRBaseComponentHandler *)self componentfollowUpDisplaydays];
  if (!v24)
  {
    if (v5 != v25)
    {
      goto LABEL_22;
    }

    v30 = handleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(MRBaseComponentHandler *)self componentName];
      v32 = [NSString stringWithFormat:@"[%s] handling clear all followup", "[MRBaseComponentHandler unlockCheckerActivityBody]"];
      *buf = 138412546;
      v42 = v31;
      v43 = 2112;
      v44 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    [(MRBaseComponentHandler *)self clearRepairFollowUp];
    [(MRBaseComponentHandler *)self clearStateFile:0];
    v29 = v5;
    goto LABEL_21;
  }

  if (((v5 >= v25) & v8) == 1)
  {
    v26 = handleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(MRBaseComponentHandler *)self componentName];
      v28 = [NSString stringWithFormat:@"[%s] SU handling clear all followup", "[MRBaseComponentHandler unlockCheckerActivityBody]"];
      *buf = 138412546;
      v42 = v27;
      v43 = 2112;
      v44 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    [(MRBaseComponentHandler *)self clearRepairFollowUp];
    [(MRBaseComponentHandler *)self clearStateFile:&v40];
    if (v40 == 1)
    {
      v29 = [(MRBaseComponentHandler *)self componentfollowUpDisplaydays];
LABEL_21:
      [(MRBaseComponentHandler *)self sendAnalyticsForCount:v29];
    }
  }

LABEL_22:
  if (v18)
  {
    if (v16 <= [(MRBaseComponentHandler *)self componentFollowupRetriggerdays])
    {
      ++v16;
      v33 = [(MRBaseComponentHandler *)self componentRetriggerCountKey];
      [v3 setInteger:v16 forKey:v33];
    }

    if (v16 == [(MRBaseComponentHandler *)self componentFollowupRetriggerdays]&& v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
    {
      v34 = handleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(MRBaseComponentHandler *)self componentName];
        v36 = [NSString stringWithFormat:@"[%s] handling followup retrigger", "[MRBaseComponentHandler unlockCheckerActivityBody]"];
        *buf = 138412546;
        v42 = v35;
        v43 = 2112;
        v44 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [(MRBaseComponentHandler *)self clearRepairFollowUp];
      [(MRBaseComponentHandler *)self setDisplayNotification:0];
      [(MRBaseComponentHandler *)self createRepairFollowUp];
    }
  }

  if (!(v7 & 1 | (([(MRBaseComponentHandler *)self notifyServer]& v8 & 1) == 0)))
  {
    v37 = handleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(MRBaseComponentHandler *)self componentName];
      v39 = [NSString stringWithFormat:@"[%s] Scheduling network activity", "[MRBaseComponentHandler unlockCheckerActivityBody]"];
      *buf = 138412546;
      v42 = v38;
      v43 = 2112;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    [(MRBaseComponentHandler *)self scheduleNetworkActivity];
  }

  if (v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays]|| !(v7 & 1 | ![(MRBaseComponentHandler *)self notifyServer]) || !(v8 & 1 | ![(MRBaseComponentHandler *)self isSUCaseForComponent]))
  {
    [(MRBaseComponentHandler *)self scheduleUnlockCheckerActivity:0 forFinishRepair:self->timeIntervalOverride - (timeIntervalOverride % self->timeIntervalOverride)];
  }
}

- (void)unlockCheckerActivityBodyForFinishRepair
{
  v3 = +[NSUserDefaults groupStandardUserDefaults];
  v4 = [(MRBaseComponentHandler *)self componentUnLockCheckCountKey];
  v5 = [v3 integerForKey:v4];

  v6 = [(MRBaseComponentHandler *)self componentRetriggerCountKey];
  v7 = [v3 integerForKey:v6];

  v8 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  v9 = [v8 integerForKey:@"clearFinishRepairFollowup"];

  v10 = +[NSDate date];
  [v10 timeIntervalSince1970];
  v12 = v11;

  [v3 doubleForKey:self->componentLastCheckTimeKey];
  v14 = (v12 - v13);
  if (self->timeIntervalOverride <= v14)
  {
    timeIntervalOverride = v14;
  }

  else
  {
    timeIntervalOverride = self->timeIntervalOverride;
  }

  if (v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
  {
    ++v5;
    v16 = [(MRBaseComponentHandler *)self componentUnLockCheckCountKey];
    [v3 setInteger:v5 forKey:v16];

    v17 = [(MRBaseComponentHandler *)self componentLastCheckTimeKey];
    [v3 setDouble:v17 forKey:v12];
  }

  v18 = handleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(MRBaseComponentHandler *)self componentName];
    v20 = [NSString stringWithFormat:@"Set count FinishRepair:%ld", v5];
    *buf = 138412546;
    v32 = v19;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  v21 = handleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(MRBaseComponentHandler *)self componentName];
    v23 = [NSString stringWithFormat:@"Retigger count:%ld", v7];
    *buf = 138412546;
    v32 = v22;
    v33 = 2112;
    v34 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  if (v5 >= [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
  {
    v24 = handleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(MRBaseComponentHandler *)self componentName];
      v26 = [NSString stringWithFormat:@"[%s] handling clear all followup", "[MRBaseComponentHandler unlockCheckerActivityBodyForFinishRepair]"];
      *buf = 138412546;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    [(MRBaseComponentHandler *)self clearRepairFollowUp];
    [(MRBaseComponentHandler *)self sendAnalyticsForCount:v5];
  }

  if (v9)
  {
    if (v7 <= [(MRBaseComponentHandler *)self componentFollowupRetriggerdays])
    {
      ++v7;
      v27 = [(MRBaseComponentHandler *)self componentRetriggerCountKey];
      [v3 setInteger:v7 forKey:v27];
    }

    if (v7 == [(MRBaseComponentHandler *)self componentFollowupRetriggerdays]&& v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
    {
      v28 = handleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(MRBaseComponentHandler *)self componentName];
        v30 = [NSString stringWithFormat:@"[%s] handling followup retrigger", "[MRBaseComponentHandler unlockCheckerActivityBodyForFinishRepair]"];
        *buf = 138412546;
        v32 = v29;
        v33 = 2112;
        v34 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [(MRBaseComponentHandler *)self clearRepairFollowUp];
      [(MRBaseComponentHandler *)self createFinishRepairFollowUpWithNotification:0];
    }
  }

  if (v5 < [(MRBaseComponentHandler *)self componentfollowUpDisplaydays])
  {
    [(MRBaseComponentHandler *)self scheduleUnlockCheckerActivity:1 forFinishRepair:self->timeIntervalOverride - (timeIntervalOverride % self->timeIntervalOverride)];
  }
}

- (id)createCriteriaForUnlockCheckerWithInterval:(double)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_DELAY, a3);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);

  return v4;
}

- (void)scheduleUnlockCheckerActivity:(double)a3 forFinishRepair:(BOOL)a4
{
  v4 = a4;
  v7 = handleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412546;
    v16 = v8;
    v17 = 2080;
    v18 = "[MRBaseComponentHandler scheduleUnlockCheckerActivity:forFinishRepair:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  if ([(MRBaseComponentHandler *)self unlockCheckActivityRequired])
  {
    v9 = [(MRBaseComponentHandler *)self componentUnlockCheckerActivityName];
    v10 = [v9 UTF8String];
    if (v4)
    {
      v11 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v12 = sub_1000055A0;
    }

    else
    {
      v11 = v13;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v12 = sub_10000561C;
    }

    *(v11 + 2) = v12;
    *(v11 + 3) = &unk_100018660;
    *(v11 + 4) = self;
    v11[5] = a3;
    xpc_activity_register(v10, XPC_ACTIVITY_CHECK_IN, v11);
  }
}

- (void)mainNonAuthRepairFlow
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRBaseComponentHandler *)v2 componentName];
    *buf = 138412546;
    v41 = v4;
    v42 = 2080;
    v43 = "[MRBaseComponentHandler mainNonAuthRepairFlow]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@][%s]", buf, 0x16u);
  }

  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MRBaseComponentHandler *)v2 componentName];
    v7 = [NSString stringWithFormat:@"[%s] component non authentic", "[MRBaseComponentHandler mainNonAuthRepairFlow]"];
    *buf = 138412546;
    v41 = v6;
    v42 = 2112;
    v43 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
  }

  v8 = +[NSUserDefaults groupStandardUserDefaults];
  v9 = [(MRBaseComponentHandler *)v2 componentUnLockCheckCountKey];
  v10 = [v8 integerForKey:v9];

  v11 = +[NSUserDefaults groupStandardUserDefaults];
  v12 = [v11 stringForKey:v2->lastKnownComponentIdentifierKey];

  v13 = +[NSUserDefaults groupStandardUserDefaults];
  LODWORD(v11) = [v13 BOOLForKey:@"ForceDisableUIFlowForInternalBuild"];

  if ((os_variant_has_internal_content() & v11 & 1) != 0 || v2->disableUIForComponent)
  {
    [(MRBaseComponentHandler *)v2 clearRepairFollowUp];
    [(MRBaseComponentHandler *)v2 clearNSUserDefaults];
  }

  else
  {
    if (v10 >= -[MRBaseComponentHandler componentfollowUpDisplaydays](v2, "componentfollowUpDisplaydays") && v12 && v2->lastKnownComponentIdentifierValue && ([v12 isEqualToString:?] & 1) == 0)
    {
      v2->displayNotification = 1;
      *&v2->displayModalPopup = 1;
      [(MRBaseComponentHandler *)v2 clearNSUserDefaults];
    }

    v14 = +[NSUserDefaults groupStandardUserDefaults];
    v15 = [v14 BOOLForKey:v2->componentHasDisplayedFollowUpKey];
    v16 = [v14 BOOLForKey:v2->componentHasNotifiedServerKey];
    v17 = [v14 BOOLForKey:v2->componentDataCollectionPresentedKey];
    v18 = +[NSDate date];
    [v18 timeIntervalSince1970];
    v20 = v19;

    v21 = [(MRBaseComponentHandler *)v2 componentRetriggerCountKey];
    v22 = [v14 integerForKey:v21];

    if (v15)
    {
      v23 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
      v24 = [v23 integerForKey:v2->componentFollowupClientID];

      if (v24 && (!v22 || v22 >= [(MRBaseComponentHandler *)v2 componentFollowupRetriggerdays]&& v24 == 2))
      {
        [(MRBaseComponentHandler *)v2 clearRepairFollowUp];
      }

      v25 = handleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(MRBaseComponentHandler *)v2 componentName];
        v27 = [NSString stringWithFormat:@"[%s] handling xpc/reboot case", "[MRBaseComponentHandler mainNonAuthRepairFlow]"];
        *buf = 138412546;
        v41 = v26;
        v42 = 2112;
        v43 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [v14 doubleForKey:v2->componentLastCheckTimeKey];
      v29 = (v20 - v28);
      if (v2->timeIntervalOverride <= v29)
      {
        [(MRBaseComponentHandler *)v2 unlockCheckerActivityBody];
      }

      else
      {
        v30 = handleForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(MRBaseComponentHandler *)v2 componentName];
          v32 = [NSString stringWithFormat:@"[%s] scheduling unlock checker activity Interval:%f ", "[MRBaseComponentHandler mainNonAuthRepairFlow]", v2->timeIntervalOverride - v29];
          *buf = 138412546;
          v41 = v31;
          v42 = 2112;
          v43 = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
        }

        [(MRBaseComponentHandler *)v2 scheduleUnlockCheckerActivity:0 forFinishRepair:v2->timeIntervalOverride - v29];
      }

      if (!(v16 & 1 | (([(MRBaseComponentHandler *)v2 notifyServer]& v17 & 1) == 0)))
      {
        [(MRBaseComponentHandler *)v2 scheduleNetworkActivity];
      }
    }

    else
    {
      v33 = handleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(MRBaseComponentHandler *)v2 componentName];
        v35 = [NSString stringWithFormat:@"[%s] starting Followup and notification", "[MRBaseComponentHandler mainNonAuthRepairFlow]"];
        *buf = 138412546;
        v41 = v34;
        v42 = 2112;
        v43 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [(MRBaseComponentHandler *)v2 clearNSUserDefaults];
      [(MRBaseComponentHandler *)v2 clearRepairFollowUp];
      [(MRBaseComponentHandler *)v2 createRepairFollowUp];
      [(MRBaseComponentHandler *)v2 popUpNotificationNowWithMessage];
      [v14 setBool:1 forKey:v2->componentHasDisplayedFollowUpKey];
      [v14 setInteger:v20 forKey:v2->componentFirstUIDisplayedTimeKey];
      lastKnownComponentIdentifierValue = v2->lastKnownComponentIdentifierValue;
      if (lastKnownComponentIdentifierValue)
      {
        [v14 setObject:lastKnownComponentIdentifierValue forKey:v2->lastKnownComponentIdentifierKey];
      }

      [v14 synchronize];
      [(MRBaseComponentHandler *)v2 sendAnalyticsForCount:0];
      if (!(v16 & 1 | (([(MRBaseComponentHandler *)v2 notifyServer]& v17 & 1) == 0)))
      {
        v37 = handleForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(MRBaseComponentHandler *)v2 componentName];
          v39 = [NSString stringWithFormat:@"[%s] Scheduling network activity", "[MRBaseComponentHandler mainNonAuthRepairFlow]"];
          *buf = 138412546;
          v41 = v38;
          v42 = 2112;
          v43 = v39;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
        }

        [(MRBaseComponentHandler *)v2 scheduleNetworkActivity];
      }

      [(MRBaseComponentHandler *)v2 scheduleUnlockCheckerActivity:0 forFinishRepair:v2->timeIntervalOverride];
    }
  }

  objc_sync_exit(v2);
}

- (void)checkInAndHandleAuthStatus
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [v2->componentAuthHandler copyComponentStatus];
  v4 = +[NSUserDefaults groupStandardUserDefaults];
  v5 = [v4 BOOLForKey:v2->finishRepairKey];

  v6 = +[NSDate date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  v9 = +[NSUserDefaults groupStandardUserDefaults];
  v10 = [(MRBaseComponentHandler *)v2 componentRetriggerCountKey];
  v11 = [v9 integerForKey:v10];

  v12 = +[NSUserDefaults groupStandardUserDefaults];
  v13 = [v12 BOOLForKey:v2->componentHasDisplayedFollowUpKey];

  v14 = +[NSUserDefaults groupStandardUserDefaults];
  v15 = [v14 stringForKey:v2->lastKnownComponentIdentifierKey];

  if (v3 == 1)
  {
    v31 = handleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(MRBaseComponentHandler *)v2 componentName];
      v33 = [NSString stringWithFormat:@"[%s] IOREG Auth Component Trusted", "[MRBaseComponentHandler checkInAndHandleAuthStatus]"];
      *buf = 138412546;
      v55 = v32;
      v56 = 2112;
      v57 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    [(MRBaseComponentHandler *)v2 clearRepairFollowUp];
    [(MRBaseComponentHandler *)v2 sendAnalyticsForCount:0x7FFFFFFFFFFFFFFFLL];
    [(MRBaseComponentHandler *)v2 clearNSUserDefaults];
  }

  else if (v3 == -3)
  {
    v16 = handleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(MRBaseComponentHandler *)v2 componentName];
      v18 = [NSString stringWithFormat:@"[%s] component pending repair", "[MRBaseComponentHandler checkInAndHandleAuthStatus]"];
      *buf = 138412546;
      v55 = v17;
      v56 = 2112;
      v57 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }

    if (v2->lastKnownComponentIdentifierValue)
    {
      v19 = +[NSUserDefaults groupStandardUserDefaults];
      [v19 setObject:v2->lastKnownComponentIdentifierValue forKey:v2->lastKnownComponentIdentifierKey];
    }

    if (v13)
    {
      v20 = handleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(MRBaseComponentHandler *)v2 componentName];
        v22 = [NSString stringWithFormat:@"[%s] component has displayed follow up", "[MRBaseComponentHandler checkInAndHandleAuthStatus]"];
        *buf = 138412546;
        v55 = v21;
        v56 = 2112;
        v57 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [(MRBaseComponentHandler *)v2 clearNSUserDefaults];
      [(MRBaseComponentHandler *)v2 clearRepairFollowUp];
      v23 = [v15 isEqualToString:v2->lastKnownComponentIdentifierValue];
      if ((v23 & 1) == 0)
      {
        v24 = handleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [(MRBaseComponentHandler *)v2 componentName];
          v26 = [NSString stringWithFormat:@"[%s] Unknown Part SN differs from Finish Repair SN", "[MRBaseComponentHandler checkInAndHandleAuthStatus]"];
          *buf = 138412546;
          v55 = v25;
          v56 = 2112;
          v57 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
        }
      }

      [(MRBaseComponentHandler *)v2 createFinishRepairFollowUpWithNotification:v23 ^ 1];
      if (v2->lastKnownComponentIdentifierValue)
      {
        v27 = handleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(MRBaseComponentHandler *)v2 componentName];
          v29 = [NSString stringWithFormat:@"[%s] Upgrade to Finish Repair from Unknown Part", "[MRBaseComponentHandler checkInAndHandleAuthStatus]"];
          *buf = 138412546;
          v55 = v28;
          v56 = 2112;
          v57 = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
        }

        v30 = +[NSUserDefaults groupStandardUserDefaults];
        [v30 setObject:v2->lastKnownComponentIdentifierValue forKey:v2->lastKnownComponentIdentifierKey];
      }

LABEL_41:
      v52 = +[NSUserDefaults groupStandardUserDefaults];
      [v52 setBool:1 forKey:v2->finishRepairKey];

      v53 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
      [v53 removeObjectForKey:@"clearFinishRepairFollowup"];

      goto LABEL_42;
    }

    if (!v5 || ([v15 isEqualToString:v2->lastKnownComponentIdentifierValue] & 1) == 0)
    {
      v48 = handleForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [(MRBaseComponentHandler *)v2 componentName];
        v50 = [NSString stringWithFormat:@"[%s] component has not displayed finish repair", "[MRBaseComponentHandler checkInAndHandleAuthStatus]"];
        *buf = 138412546;
        v55 = v49;
        v56 = 2112;
        v57 = v50;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [(MRBaseComponentHandler *)v2 clearRepairFollowUp];
      [(MRBaseComponentHandler *)v2 clearNSUserDefaults];
      [(MRBaseComponentHandler *)v2 createFinishRepairFollowUpWithNotification:1];
      if (v2->lastKnownComponentIdentifierValue)
      {
        v51 = +[NSUserDefaults groupStandardUserDefaults];
        [v51 setObject:v2->lastKnownComponentIdentifierValue forKey:v2->lastKnownComponentIdentifierKey];
      }

      goto LABEL_41;
    }

    v37 = [NSUserDefaults groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
    v38 = [v37 integerForKey:@"clearFinishRepairFollowup"];

    if (v38 && (!v11 || v11 >= [(MRBaseComponentHandler *)v2 componentFollowupRetriggerdays]&& v38 == 2))
    {
      v39 = +[MRUINotificationHelper sharedSingleton];
      [v39 clearRepairFollowUpWithUniqueID:v2->finishRepairKey];

      v40 = +[MRUINotificationHelper sharedSingleton];
      [v40 removeRepairNotificationsWithUniqueID:v2->finishRepairKey];
    }

    v41 = +[NSUserDefaults groupStandardUserDefaults];
    [v41 doubleForKey:v2->componentLastCheckTimeKey];
    v43 = v42;

    v44 = (v8 - v43);
    if (v2->timeIntervalOverride <= v44)
    {
      [(MRBaseComponentHandler *)v2 unlockCheckerActivityBodyForFinishRepair];
    }

    else
    {
      v45 = handleForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [(MRBaseComponentHandler *)v2 componentName];
        v47 = [NSString stringWithFormat:@"[%s] scheduling finish repair unlock checker activity Interval:%f ", "[MRBaseComponentHandler checkInAndHandleAuthStatus]", v2->timeIntervalOverride - v44];
        *buf = 138412546;
        v55 = v46;
        v56 = 2112;
        v57 = v47;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
      }

      [(MRBaseComponentHandler *)v2 scheduleUnlockCheckerActivity:1 forFinishRepair:v2->timeIntervalOverride - v44];
    }
  }

  else if ((v3 & 0x8000000000000000) != 0)
  {
    v34 = handleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [(MRBaseComponentHandler *)v2 componentName];
      v36 = [NSString stringWithFormat:@"[%s] IOREG Component Non authentic", "[MRBaseComponentHandler checkInAndHandleAuthStatus]"];
      sub_10000E34C(v35, v36, buf, v34);
    }

    [(MRBaseComponentHandler *)v2 mainNonAuthRepairFlow];
  }

LABEL_42:

  objc_sync_exit(v2);
}

- (void)sendAnalyticsForCount:(int64_t)a3
{
  v5 = +[NSUserDefaults groupStandardUserDefaults];
  v6 = +[NSDate date];
  [v6 timeIntervalSince1970];

  v7 = [v5 integerForKey:self->componentFirstUIDisplayedTimeKey];
  if (!a3)
  {
    v9 = @"FirstUIDisplayed";
    goto LABEL_10;
  }

  v8 = v7;
  if ([(MRBaseComponentHandler *)self componentFollowupRetriggerdays]== a3)
  {
    v9 = @"lockscreenCleared";
LABEL_10:
    v13 = v9;
    AnalyticsSendEventLazy();
    v10 = v13;
    goto LABEL_11;
  }

  if ([(MRBaseComponentHandler *)self componentfollowUpDisplaydays]== a3)
  {
    v9 = @"coreFollowUpCleared";
    goto LABEL_10;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      v9 = @"repairEvent";
      goto LABEL_10;
    }

    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(MRBaseComponentHandler *)self componentName];
      v12 = [NSString stringWithFormat:@"[%s] auth never fail before, bogus repair event", "[MRBaseComponentHandler sendAnalyticsForCount:]"];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@][%@]", buf, 0x16u);
    }
  }

  else
  {
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000E3C0(self, a3);
    }
  }

LABEL_11:
}

+ (void)handleComponentSUCase:(id)a3 lastAUthCheckBuildVersion:(id)a4 followUpItemID:(id)a5 queryString:(id)a6 suCasekey:(id)a7 startBuildVersion:(id)a8 componentAuth:(id)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = DMGetUserDataDisposition();
  v20 = handleForCategory();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if ((v19 & 2) != 0)
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Update install case", buf, 2u);
    }

    v20 = DMGetPreviousBuildVersion();
    v39 = DMCopyCurrentBuildVersion();
    v22 = handleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v20;
      v42 = 2112;
      v43 = v39;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Old version is %@:%@", buf, 0x16u);
    }

    v23 = +[NSUserDefaults standardUserDefaults];
    v24 = [v23 BOOLForKey:v13];
    v25 = [v23 stringForKey:v14];
    v26 = v25;
    if (v24)
    {
      v27 = handleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] User already seeing UI", buf, 0xCu);
      }
    }

    else if (!v25 || ([v25 isEqualToString:v39] & 1) == 0)
    {
      v28 = handleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] first auth case", buf, 0xCu);
      }

      v29 = [v18 synchronouslycopyAuthStatus];
      if (v29 == 1)
      {
        v30 = handleForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v15;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@] is Trusted", buf, 0xCu);
        }

        [v23 setObject:v39 forKey:v14];
        [v23 synchronize];
      }

      else
      {
        v31 = v29;
        v38 = v16;
        v32 = handleForCategory();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if ((v31 & 0x8000000000000000) != 0)
        {
          if (v33)
          {
            *buf = 138412290;
            v41 = v15;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] is not Trusted", buf, 0xCu);
          }

          v34 = [[SBFBuildVersion alloc] initWithString:v17];
          v16 = v38;
          v37 = v34;
          if (v20 && [v34 compareBuildVersionString:v20 withPrecision:2] == 1)
          {
            v35 = handleForCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v15;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SU case for %@", buf, 0xCu);
            }

            [v23 setBool:1 forKey:v38];
          }

          else
          {
            v36 = handleForCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v20;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "ignoring setting the SU case: previousBuild:%@", buf, 0xCu);
            }
          }

          [v23 setObject:v39 forKey:v14];
          [v23 synchronize];
        }

        else
        {
          if (v33)
          {
            *buf = 138412290;
            v41 = v15;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] Auth timeout", buf, 0xCu);
          }

          v16 = v38;
        }
      }
    }
  }

  else if (v21)
  {
    *buf = 67109120;
    LODWORD(v41) = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Skipping SU update check:%d", buf, 8u);
  }
}

+ (id)getHwRevision
{
  v2 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"config-number", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v6 = [[NSString alloc] initWithData:CFProperty encoding:4];
      v7 = [NSCharacterSet characterSetWithCharactersInString:@"/-"];
      v8 = [v6 componentsSeparatedByCharactersInSet:v7];

      if ([v8 count] < 2)
      {
        v10 = 0;
      }

      else
      {
        v9 = [v8 objectAtIndexedSubscript:1];
        v10 = [NSString stringWithFormat:@"%@", v9];
      }
    }

    else
    {
      sub_10000E484();
      v10 = 0;
      v8 = 0;
      v6 = 0;
    }

    IOObjectRelease(v4);
  }

  else
  {
    sub_10000E4E4();
    CFProperty = 0;
    v6 = 0;
    v8 = 0;
    v10 = 0;
  }

  return v10;
}

@end