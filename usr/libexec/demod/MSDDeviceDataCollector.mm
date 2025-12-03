@interface MSDDeviceDataCollector
+ (id)sharedInstance;
- (id)getCurrentAppUsageSessionUUID;
- (void)collectAppUsageBetweenLastSetupDoneAndNow;
- (void)collectAppUsageDataForSession:(id)session fromStart:(id)start toEnd:(id)end;
- (void)collectAppUsageWithSessionStart:(id)start andEnd:(id)end;
@end

@implementation MSDDeviceDataCollector

+ (id)sharedInstance
{
  if (qword_1001A57A0 != -1)
  {
    sub_1000D4FC4();
  }

  v3 = qword_1001A5798;

  return v3;
}

- (id)getCurrentAppUsageSessionUUID
{
  sessionUUID = [(MSDDeviceDataCollector *)self sessionUUID];
  objc_sync_enter(sessionUUID);
  sessionUUID2 = [(MSDDeviceDataCollector *)self sessionUUID];
  v5 = [sessionUUID2 copy];

  objc_sync_exit(sessionUUID);

  return v5;
}

- (void)collectAppUsageBetweenLastSetupDoneAndNow
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.demo-settings"];
  v4 = [v3 objectForKey:@"SetupDoneTimestamp"];
  if (v4)
  {
    v5 = objc_alloc_init(NSDateFormatter);
    [v5 setDateFormat:@"dd-MM-yyyy_HH:mm:ss:SSS"];
    v6 = [v5 dateFromString:v4];
    v7 = +[NSDate now];
    [(MSDDeviceDataCollector *)self collectAppUsageWithSessionStart:v6 andEnd:v7];
    sleep(1u);
    [v3 removeObjectForKey:@"SetupDoneTimestamp"];
    [v3 synchronize];
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skip collecting any app usage data as setup done timestamp is not set.", v9, 2u);
    }
  }
}

- (void)collectAppUsageWithSessionStart:(id)start andEnd:(id)end
{
  startCopy = start;
  endCopy = end;
  sessionUUID = [(MSDDeviceDataCollector *)self sessionUUID];
  objc_sync_enter(sessionUUID);
  sessionUUID2 = [(MSDDeviceDataCollector *)self sessionUUID];
  v9 = [sessionUUID2 copy];

  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];
  [(MSDDeviceDataCollector *)self setSessionUUID:uUIDString];

  objc_sync_exit(sessionUUID);
  [(MSDDeviceDataCollector *)self collectAppUsageDataForSession:v9 fromStart:startCopy toEnd:endCopy];
}

- (void)collectAppUsageDataForSession:(id)session fromStart:(id)start toEnd:(id)end
{
  sessionCopy = session;
  startCopy = start;
  endCopy = end;
  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    toString = [startCopy toString];
    toString2 = [endCopy toString];
    *buf = 138543618;
    *&buf[4] = toString;
    *&buf[12] = 2114;
    *&buf[14] = toString2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Collecting app usage data between %{public}@ and %{public}@", buf, 0x16u);
  }

  v13 = [MSDBiome collectAppUsageDataFrom:startCopy to:endCopy];
  v14 = v13;
  if (v13)
  {
    if ([v13 count])
    {
      v15 = objc_alloc_init(NSDateFormatter);
      [endCopy timeIntervalSinceDate:startCopy];
      v17 = v16;
      [v15 setDateFormat:@"dd-MM-yyyy_HH:mm:ss:SSS"];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 1;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10005A4EC;
      v19[3] = &unk_10016AFF8;
      v18 = v15;
      v20 = v18;
      v22 = buf;
      v23 = v17;
      v21 = sessionCopy;
      [v14 enumerateObjectsUsingBlock:v19];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v18 = sub_100063A54();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unable to find any app usage info in the Biome database.", buf, 2u);
      }
    }
  }
}

@end