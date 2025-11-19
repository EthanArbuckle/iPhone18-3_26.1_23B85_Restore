@interface MSDSystemMonitor
+ (id)sharedInstance;
- (MSDSystemMonitorObserver)observer;
- (unint64_t)systemIdleDuration;
- (void)processCoreDuetCallBack;
- (void)processDiskSpaceMonitorCallback;
- (void)registerObserver:(id)a3;
- (void)startDiskSpaceMonitoring;
- (void)startPowerForegroundAppMonitoring;
- (void)startSystemIdleDetection;
- (void)stopDiskSpaceMonitoring;
- (void)stopSystemIdleDetection;
@end

@implementation MSDSystemMonitor

+ (id)sharedInstance
{
  if (qword_1001A5950 != -1)
  {
    sub_1000DF0D8();
  }

  v3 = qword_1001A5948;

  return v3;
}

- (unint64_t)systemIdleDuration
{
  v3 = [(MSDSystemMonitor *)self coreDuetContext];
  v4 = +[_CDContextQueries keyPathForInUseStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  if ([v5 BOOLValue])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(MSDSystemMonitor *)self coreDuetContext];
    v8 = +[_CDContextQueries keyPathForLastUseDate];
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = +[NSDate now];
    [v10 timeIntervalSinceDate:v9];
    v12 = v11;

    v13 = 0.0;
    if (v12 > 0.0)
    {
      v13 = v12;
    }

    v6 = v13;
  }

  return v6;
}

- (void)registerObserver:(id)a3
{
  v5 = a3;
  if (([v5 conformsToProtocol:&OBJC_PROTOCOL___MSDSystemMonitorObserver] & 1) == 0)
  {
    sub_1000DF0EC(a2, self);
  }

  [(MSDSystemMonitor *)self setObserver:v5];
}

- (void)startSystemIdleDetection
{
  [(MSDSystemMonitor *)self setCoreDuetTriggeredPause:0];
  [(MSDSystemMonitor *)self setDiskSpaceTriggeredPause:0];
  [(MSDSystemMonitor *)self startPowerForegroundAppMonitoring];

  [(MSDSystemMonitor *)self startDiskSpaceMonitoring];
}

- (void)stopSystemIdleDetection
{
  [(MSDSystemMonitor *)self setCoreDuetTriggeredPause:0];
  [(MSDSystemMonitor *)self setDiskSpaceTriggeredPause:0];
  v3 = [(MSDSystemMonitor *)self coreDuetContext];
  v4 = [(MSDSystemMonitor *)self applicationRegistration];
  [v3 deregisterCallback:v4];

  [(MSDSystemMonitor *)self stopDiskSpaceMonitoring];
}

- (void)startDiskSpaceMonitoring
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100087EF4;
  v2[3] = &unk_100169C78;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)stopDiskSpaceMonitoring
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008807C;
  v2[3] = &unk_100169C78;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)processDiskSpaceMonitorCallback
{
  obj = self;
  objc_sync_enter(obj);
  v2 = +[MSDTargetDevice sharedInstance];
  v3 = [v2 getFreeSpace];

  if (v3 + 0xFFFFF > 0x1FFFFE)
  {
    [(MSDSystemMonitor *)obj setDiskSpaceTriggeredPause:0];
    v4 = 0;
  }

  else
  {
    [(MSDSystemMonitor *)obj setDiskSpaceTriggeredPause:1];
    v4 = @"diskSpaceTriggeredPause";
  }

  v5 = [(MSDSystemMonitor *)obj observer];

  if (v5)
  {
    v6 = [(MSDSystemMonitor *)obj observer];
    v7 = [(MSDSystemMonitor *)obj coreDuetTriggeredPause]|| [(MSDSystemMonitor *)obj diskSpaceTriggeredPause];
    [v6 didReceiveNewPauseStatus:v7 forReason:v4];
  }

  objc_sync_exit(obj);
}

- (void)startPowerForegroundAppMonitoring
{
  objc_initWeak(&location, self);
  v3 = +[_CDContextQueries keyPathForInUseStatus];
  v16[0] = v3;
  v4 = +[_CDContextQueries keyPathForForegroundApp];
  v16[1] = v4;
  v5 = +[_CDContextQueries keyPathForBatteryLevel];
  v16[2] = v5;
  v6 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v16[3] = v6;
  v7 = [NSArray arrayWithObjects:v16 count:4];
  v8 = [_CDContextualPredicate predicateForChangeAtKeyPaths:v7];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100088468;
  v13[3] = &unk_10016BA58;
  objc_copyWeak(&v14, &location);
  v9 = objc_retainBlock(v13);
  v10 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.mobilestoredemo" contextualPredicate:v8 callback:v9];
  [(MSDSystemMonitor *)self setApplicationRegistration:v10];

  v11 = [(MSDSystemMonitor *)self coreDuetContext];
  v12 = [(MSDSystemMonitor *)self applicationRegistration];
  [v11 registerCallback:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)processCoreDuetCallBack
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSDSystemMonitor *)v2 coreDuetContext];
  v4 = +[_CDContextQueries keyPathForForegroundApp];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [(MSDSystemMonitor *)v2 coreDuetContext];
  v7 = +[_CDContextQueries keyPathForInUseStatus];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [v8 BOOLValue];

  v10 = [(MSDSystemMonitor *)v2 coreDuetContext];
  v11 = +[_CDContextQueries keyPathForBatteryLevel];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v12 unsignedIntegerValue];

  v14 = [(MSDSystemMonitor *)v2 coreDuetContext];
  v15 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v16 = [v14 objectForKeyedSubscript:v15];

  v17 = +[MSDPlatform sharedInstance];
  LOBYTE(v15) = [v17 tvOS];

  if (v15)
  {
LABEL_2:
    v18 = 0;
    v19 = 0;
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v19 = @"batteryLevelTriggeredPause";
  if (v13 >= 0x15)
  {
    if (v13 <= 0x31)
    {
      v23 = +[_CDContextQueries batteryExternalConnectedKey];
      v24 = [v16 objectForKey:v23];
      v25 = [v24 BOOLValue];

      v18 = v25 ^ 1;
      if (v25)
      {
        v19 = 0;
      }

      if (!v9)
      {
        goto LABEL_13;
      }

      goto LABEL_6;
    }

    goto LABEL_2;
  }

  v18 = 1;
  if (!v9)
  {
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

LABEL_6:
  v20 = [(MSDSystemMonitor *)v2 foregroundAllowedApps];
  v21 = [v20 containsObject:v5];

  v22 = v21 ^ 1;
  if (!v21)
  {
    v19 = @"systemInUseTriggeredPause";
  }

LABEL_14:
  v26 = sub_100063A54();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_1000DF160(v5, v9, v26);
  }

  [(MSDSystemMonitor *)v2 setCoreDuetTriggeredPause:v18 | v22];
  v27 = [(MSDSystemMonitor *)v2 observer];

  if (v27)
  {
    v28 = [(MSDSystemMonitor *)v2 observer];
    v29 = [(MSDSystemMonitor *)v2 coreDuetTriggeredPause]|| [(MSDSystemMonitor *)v2 diskSpaceTriggeredPause];
    [v28 didReceiveNewPauseStatus:v29 forReason:v19];
  }

  objc_sync_exit(v2);
}

- (MSDSystemMonitorObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end