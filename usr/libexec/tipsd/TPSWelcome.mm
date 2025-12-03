@interface TPSWelcome
+ (void)resetWelcomeNotifications;
- (BOOL)setupCompleted;
- (BOOL)shouldShowWelcomeNotification;
- (BOOL)stopWelcomeNotification;
- (TPSWelcome)initWithDelegate:(id)delegate tipsManager:(id)manager notificationController:(id)controller;
- (TPSWelcomeDelegate)delegate;
- (id)getCurrentWelcomeActivityCriteria;
- (unint64_t)reminderState;
- (void)createWelcomeXPCActivity;
- (void)reconnectWelcomeIfNeeded:(BOOL)needed;
- (void)registerToNotifyWelcome;
- (void)scheduleWelcomeNotificationActivity;
- (void)welcomeNotificationDisplayed;
@end

@implementation TPSWelcome

+ (void)resetWelcomeNotifications
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:&off_100025E70 forKey:@"TPSWelcomeNotificationViewedVersion"];
  [v4 synchronize];
  v2 = +[TPSCommonDefines sharedInstance];
  appGroupDefaults = [v2 appGroupDefaults];

  [appGroupDefaults removeObjectForKey:@"collectionStatusMap"];
  [appGroupDefaults synchronize];
}

- (TPSWelcome)initWithDelegate:(id)delegate tipsManager:(id)manager notificationController:(id)controller
{
  delegateCopy = delegate;
  managerCopy = manager;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = TPSWelcome;
  v11 = [(TPSWelcome *)&v17 init];
  v12 = v11;
  if (v11)
  {
    [(TPSWelcome *)v11 setDelegate:delegateCopy];
    objc_storeStrong(&v12->_tipsManager, manager);
    objc_storeStrong(&v12->_notificationController, controller);
    v13 = +[NSUserDefaults standardUserDefaults];
    if (+[TPSDefaultsManager resetDaemonData])
    {
      [v13 setObject:&off_100025E70 forKey:@"TPSWelcomeNotificationViewedVersion"];
      [v13 removeObjectForKey:@"TPSWelcomeNotificationReminderState"];
      v14 = +[TPSCommonDefines sharedInstance];
      appGroupDefaults = [v14 appGroupDefaults];

      [appGroupDefaults removeObjectForKey:@"collectionStatusMap"];
    }
  }

  return v12;
}

- (unint64_t)reminderState
{
  if (!+[TPSNotificationController supportsWelcomeNotification])
  {
    return 1;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"TPSWelcomeNotificationReminderState"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)reconnectWelcomeIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ([(TPSWelcome *)self shouldShowWelcomeNotification]&& [(TPSWelcome *)self setupCompleted])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    if ([v5 BOOLForKey:@"TPSWaitingToShowWelcomeNotification"])
    {
      [(TPSWelcome *)self registerToNotifyWelcome];
    }

    else
    {
      v6 = [v5 objectForKey:@"TPSCurrentWelcomeXPCActivityIdentifier"];
      if (v6 && ![(TPSWelcome *)self welcomeXPCActivityScheduleInProgress])
      {
        v7 = +[TPSLogger welcome];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Re-register for xpc_activity to show welcome notification", buf, 2u);
        }

        [(TPSWelcome *)self setWelcomeXPCActivityScheduleInProgress:1];
        uTF8String = [v6 UTF8String];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100001F9C;
        v9[3] = &unk_100024AF0;
        v9[4] = self;
        v10 = v6;
        xpc_activity_register(uTF8String, XPC_ACTIVITY_CHECK_IN, v9);
      }

      else if (neededCopy)
      {
        [(TPSWelcome *)self scheduleWelcomeNotificationActivity];
      }
    }
  }
}

- (BOOL)shouldShowWelcomeNotification
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"TPSWelcomeNotificationViewedVersion"];
  intValue = [v4 intValue];

  if ((intValue & 0x80000000) != 0)
  {
LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  v6 = +[TPSCommonDefines sharedInstance];
  majorVersion = [v6 majorVersion];
  intValue2 = [majorVersion intValue];

  if (intValue != intValue2)
  {
    v10 = +[TPSLogger welcome];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Major version changed", v15, 2u);
    }

    [v2 setObject:&off_100025E88 forKey:@"TPSWelcomeNotificationViewedVersion"];
    [v2 setObject:&off_100025EA0 forKey:@"TPSWelcomeNotificationReminderState"];
    [v2 removeObjectForKey:@"TPSNoMoreTipsContent"];
    [v2 removeObjectForKey:@"TPSWaitingToShowWelcomeNotification"];
    [v2 removeObjectForKey:@"TPSCurrentWelcomeXPCActivityIdentifier"];
    [v2 removeObjectForKey:@"TPSWelcomeNotificationStartDate"];
    [v2 synchronize];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  v11 = +[TPSDefaultsManager notificationDocument];

  if (v11 || (v9 & +[TPSNotificationController supportsWelcomeNotification]) != 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = [v2 objectForKey:@"TPSWelcomeNotificationReminderState"];
    v13 = [v12 unsignedIntegerValue] == 0;
  }

  return v13;
}

- (id)getCurrentWelcomeActivityCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  +[TPSDefaultsManager welcomeNotificationDelay];
  if (v3 >= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3 * XPC_ACTIVITY_INTERVAL_1_HOUR;
  }

  +[TPSDefaultsManager welcomeNotificationGracePeriod];
  v6 = v5;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"TPSWelcomeNotificationStartDate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:v8];
    v11 = v10;

    v4 = (v4 - v11);
  }

  if (v6 >= 1)
  {
    v12 = v6;
  }

  else
  {
    v12 = 2 * XPC_ACTIVITY_INTERVAL_1_HOUR;
  }

  if (v4 >= 1)
  {
    v13 = v4;
  }

  else
  {
    v13 = XPC_ACTIVITY_INTERVAL_30_MIN;
  }

  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, v13);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, v12);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);

  return v2;
}

- (void)scheduleWelcomeNotificationActivity
{
  if (![(TPSWelcome *)self reminderState]&& ![(TPSWelcome *)self welcomeXPCActivityScheduleInProgress]&& [(TPSWelcome *)self shouldShowWelcomeNotification])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"TPSWaitingToShowWelcomeNotification"];

    if (v4)
    {

      [(TPSWelcome *)self registerToNotifyWelcome];
    }

    else
    {
      setupCompleted = [(TPSWelcome *)self setupCompleted];
      v6 = +[TPSLogger welcome];
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (setupCompleted)
      {
        if (v7)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User is not in setup, proceed to schedule welcome notification", buf, 2u);
        }

        [(TPSWelcome *)self createWelcomeXPCActivity];
      }

      else
      {
        if (v7)
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User currently in Setup, wait before registering for welcome notification", v8, 2u);
        }
      }
    }
  }
}

- (void)createWelcomeXPCActivity
{
  if (![(TPSWelcome *)self welcomeXPCActivityScheduleInProgress]&& [(TPSWelcome *)self shouldShowWelcomeNotification])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 objectForKey:@"TPSCurrentWelcomeXPCActivityIdentifier"];
    v5 = [v3 objectForKey:@"TPSWelcomeNotificationReminderState"];
    intValue = [v5 intValue];

    v7 = [NSString stringWithFormat:@"com.apple.tipsd.showWelcomeNotification.reminderCount-%zd", intValue];
    if ([v7 isEqualToString:v4])
    {
      [(TPSWelcome *)self reconnectWelcomeIfNeeded:0];
    }

    else
    {
      [(TPSWelcome *)self setWelcomeXPCActivityScheduleInProgress:1];
      delegate = [(TPSWelcome *)self delegate];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000282C;
      v9[3] = &unk_100024B40;
      v10 = v3;
      v11 = v7;
      selfCopy = self;
      [delegate welcome:self contentAvailableRemotelyWithCompletionHandler:v9];
    }
  }
}

- (BOOL)setupCompleted
{
  HasCompletedInitialRun = BYSetupAssistantHasCompletedInitialRun();
  if (HasCompletedInitialRun)
  {
    LOBYTE(HasCompletedInitialRun) = BYSetupAssistantNeedsToRun() ^ 1;
  }

  return HasCompletedInitialRun;
}

- (void)registerToNotifyWelcome
{
  if ([(TPSWelcome *)self setupCompleted])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    if ([(TPSWelcome *)self shouldShowWelcomeNotification])
    {
      tipsManager = [(TPSWelcome *)self tipsManager];
      v5 = [tipsManager welcomeDocumentFromContentPackage:0];

      if (v5)
      {
        if (([v3 BOOLForKey:@"TPSWaitingToShowWelcomeNotification"] & 1) == 0)
        {
          [v3 setBool:1 forKey:@"TPSWaitingToShowWelcomeNotification"];
          [v3 synchronize];
        }

        v6 = +[TPSLogger welcome];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Register for empty lock screen for welcome notification", v8, 2u);
        }

        delegate = [(TPSWelcome *)self delegate];
        [delegate welcome:self notifyWelcomeDocument:v5];
      }
    }

    else
    {
      [v3 setBool:0 forKey:@"TPSWaitingToShowWelcomeNotification"];
      [v3 synchronize];
    }
  }
}

- (void)welcomeNotificationDisplayed
{
  reminderState = [(TPSWelcome *)self reminderState];
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:0 forKey:@"TPSWaitingToShowWelcomeNotification"];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [NSNumber numberWithUnsignedInteger:reminderState + 1];
  [v5 setObject:v6 forKey:@"TPSWelcomeNotificationReminderState"];

  v7 = +[TPSLogger welcome];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (reminderState == -1)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Schedule welcome notification", buf, 2u);
    }

    [(TPSWelcome *)self scheduleWelcomeNotificationActivity];
  }

  else
  {
    if (v8)
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notification reminder ended", v15, 2u);
    }

    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 removeObjectForKey:@"TPSCurrentWelcomeXPCActivityIdentifier"];

    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = +[TPSCommonDefines sharedInstance];
    majorVersion = [v11 majorVersion];
    [v10 setObject:majorVersion forKey:@"TPSWelcomeNotificationViewedVersion"];

    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 synchronize];
  }

  v14 = +[NSUserDefaults standardUserDefaults];
  [v14 synchronize];
}

- (BOOL)stopWelcomeNotification
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"TPSCurrentWelcomeXPCActivityIdentifier"];
  v5 = v4;
  if (v4)
  {
    xpc_activity_unregister([v4 UTF8String]);
  }

  shouldShowWelcomeNotification = [(TPSWelcome *)self shouldShowWelcomeNotification];
  if (shouldShowWelcomeNotification)
  {
    v7 = +[TPSLogger welcome];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stop any welcome reminder flow.", v11, 2u);
    }
  }

  [v3 setObject:&off_100025EB8 forKey:@"TPSWelcomeNotificationReminderState"];
  v8 = +[TPSCommonDefines sharedInstance];
  majorVersion = [v8 majorVersion];
  [v3 setObject:majorVersion forKey:@"TPSWelcomeNotificationViewedVersion"];

  [v3 removeObjectForKey:@"TPSWaitingToShowWelcomeNotification"];
  [v3 removeObjectForKey:@"TPSCurrentWelcomeXPCActivityIdentifier"];
  [v3 synchronize];

  return shouldShowWelcomeNotification;
}

- (TPSWelcomeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end