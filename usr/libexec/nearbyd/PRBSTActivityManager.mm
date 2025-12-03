@interface PRBSTActivityManager
- (BOOL)proceedWithPowerStatsQuery;
- (PRBSTActivityManager)init;
- (PRBSTActivityManager)initWithQueue:(id)queue;
- (void)cleanupPowerState;
- (void)registerForActivityWithIdentifier:(id)identifier;
- (void)runActivityWithIdentifier:(id)identifier;
- (void)sendAnalyticsHeartbeatWasSuccessful:(BOOL)successful;
- (void)setupActivityInterval;
@end

@implementation PRBSTActivityManager

- (PRBSTActivityManager)init
{
  [(PRBSTActivityManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRBSTActivityManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = PRBSTActivityManager;
  v6 = [(PRBSTActivityManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(NSMutableDictionary);
    activities = v7->_activities;
    v7->_activities = v8;

    [(PRBSTActivityManager *)v7 setupActivityInterval];
    [(PRBSTActivityManager *)v7 registerForActivityWithIdentifier:@"com.apple.Proximity.LogPowerStatistics"];
    v10 = sub_1000054A8();
    v7->_enableDeepSleepHeartbeat = sub_100460A50(v10);
    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 objectForKey:@"AllowRoseDeepSleep"];
    v13 = v12 == 0;

    if (!v13)
    {
      v14 = +[NSUserDefaults standardUserDefaults];
      v7->_enableDeepSleepHeartbeat &= [v14 BOOLForKey:@"AllowRoseDeepSleep"];
    }

    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      if (v7->_enableDeepSleepHeartbeat)
      {
        v16 = "Y";
      }

      else
      {
        v16 = "N";
      }

      *buf = 136315138;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "DSLP heartbeat enabled: %s", buf, 0xCu);
    }
  }

  return v7;
}

- (void)setupActivityInterval
{
  *&self->_bstActivityInterval = 0x38400000708;
  v8 = +[NSUserDefaults standardUserDefaults];
  v3 = [v8 objectForKey:@"UWBDSLPHeartbeatInterval"];

  if (v3)
  {
    v4 = [v8 stringForKey:@"UWBDSLPHeartbeatInterval"];
    v5 = [v4 isEqualToString:@"1minute"];
    v6 = 0x3C0000003CLL;
    if ((v5 & 1) == 0)
    {
      if ([v4 isEqualToString:{@"5minutes", COERCE_DOUBLE(0x3C0000003CLL)}])
      {
        v6 = 0x3C0000012CLL;
      }

      else
      {
        v7 = [v4 isEqualToString:@"30minutes"];
        v6 = 0x38400000708;
        if (!v7)
        {
LABEL_7:

          goto LABEL_8;
        }
      }
    }

    *&self->_bstActivityInterval = v6;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)registerForActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.Proximity.LogPowerStatistics"])
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "registering for activity: %@", buf, 0xCu);
    }

    v6 = +[BGSystemTaskScheduler sharedScheduler];
    queue = self->_queue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10003B0A0;
    v22[3] = &unk_10098AEB0;
    v8 = identifierCopy;
    v23 = v8;
    selfCopy = self;
    [v6 registerForTaskWithIdentifier:v8 usingQueue:queue launchHandler:v22];

    v9 = +[BGSystemTaskScheduler sharedScheduler];
    v10 = [v9 taskRequestForIdentifier:v8];
    LOBYTE(queue) = v10 == 0;

    if ((queue & 1) == 0)
    {
      v11 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "task with identifier: %@ already submitted, return", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v12 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:v8];
    [v12 setInterval:self->_bstActivityInterval];
    [v12 setMinDurationBetweenInstances:((self->_bstActivityInterval - self->_bstActivityGracePeriod) & ~((self->_bstActivityInterval - self->_bstActivityGracePeriod) >> 31))];
    [v12 setPriority:2];
    [v12 setPreventsDeviceSleep:0];
    [v12 setShouldWakeDevice:0];
    v13 = +[BGSystemTaskScheduler sharedScheduler];
    v21 = 0;
    v14 = [v13 submitTaskRequest:v12 error:&v21];
    v15 = v21;

    v16 = qword_1009F9820;
    v17 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v17)
      {
        *buf = 138412290;
        v26 = v8;
        v18 = "submitted task %@ successfully";
        v19 = v16;
        v20 = 12;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }

    else if (v17)
    {
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v15;
      v18 = "failed to submit task %@ with error: %@";
      v19 = v16;
      v20 = 22;
      goto LABEL_12;
    }

LABEL_14:
  }
}

- (void)runActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "running activity with identifier: %@", buf, 0xCu);
  }

  if ([identifierCopy isEqualToString:@"com.apple.Proximity.LogPowerStatistics"])
  {
    if (![(PRBSTActivityManager *)self proceedWithPowerStatsQuery])
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049CB68(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    v14 = sub_10035D02C();
    sub_10035FE70(v14, 1000, buf);
    [(PRBSTActivityManager *)self cleanupPowerState];
    if (v29 == 1)
    {
      CFAbsoluteTimeGetCurrent();
      if ((v29 & 1) == 0)
      {
        sub_1000195BC();
      }

      v24[0] = *buf;
      v24[1] = v27;
      v25[0] = *v28;
      *(v25 + 12) = *&v28[12];
      sub_1001EA410(v24);
    }

    else
    {
      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_10049CBA0(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_10049CAF0(identifierCopy, v15);
    }
  }
}

- (BOOL)proceedWithPowerStatsQuery
{
  if (self->_enableDeepSleepHeartbeat && (self->_deepSleepHeartbeatPowerRequested = 0, v3 = sub_10035D02C(), sub_10035FF0C(v3)))
  {
    v4 = sub_10035D02C();
    v5 = sub_10035FE80(v4, 1);
    v6 = qword_1009F9820;
    if (v5)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#heartbeat waking UWB chip", v15, 2u);
      }

      self->_deepSleepHeartbeatPowerRequested = 1;
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_10049CBD8(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    [(PRBSTActivityManager *)self sendAnalyticsHeartbeatWasSuccessful:v5];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)cleanupPowerState
{
  if (self->_enableDeepSleepHeartbeat)
  {
    v8 = v2;
    v9 = v3;
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#heartbeat enter DSLP after heartbeat", v7, 2u);
    }

    if (self->_deepSleepHeartbeatPowerRequested)
    {
      v6 = sub_10035D02C();
      sub_10035FE80(v6, 0);
    }
  }
}

- (void)sendAnalyticsHeartbeatWasSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v5;
  if (self->_enableDeepSleepHeartbeat)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  [v5 setObject:v7 forKey:@"HeartbeatIsEnabled"];
  if (successfulCopy)
  {
    v8 = &__kCFBooleanTrue;
  }

  else
  {
    v8 = &__kCFBooleanFalse;
  }

  [v6 setObject:v8 forKey:@"HeartbeatStatus"];
  if (successfulCopy)
  {
    v9 = &off_1009C3D58;
  }

  else
  {
    v9 = &off_1009C3D70;
  }

  [v6 setObject:v9 forKey:@"HeartbeatFailure"];
  if (successfulCopy)
  {
    v10 = &off_1009C3D70;
  }

  else
  {
    v10 = &off_1009C3D58;
  }

  [v6 setObject:v10 forKey:@"HeartbeatSuccess"];
  v11 = [v6 mutableCopy];
  AnalyticsSendEventLazy();
  sub_1001EA6FC(successfulCopy);
}

@end