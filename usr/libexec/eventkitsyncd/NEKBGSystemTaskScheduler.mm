@interface NEKBGSystemTaskScheduler
- (NEKBGSystemTaskScheduler)init;
- (void)_handleResetSyncTask:(id)a3;
- (void)requestResetSync;
@end

@implementation NEKBGSystemTaskScheduler

- (NEKBGSystemTaskScheduler)init
{
  v10.receiver = self;
  v10.super_class = NEKBGSystemTaskScheduler;
  v2 = [(NEKBGSystemTaskScheduler *)&v10 init];
  if (v2)
  {
    v3 = sub_100004B98("BackgroundTaskScheduler");
    backgroundTaskSchedulerQueue = v2->_backgroundTaskSchedulerQueue;
    v2->_backgroundTaskSchedulerQueue = v3;

    v5 = +[BGSystemTaskScheduler sharedScheduler];
    v6 = v2->_backgroundTaskSchedulerQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000A8B0;
    v8[3] = &unk_1000B4C90;
    v9 = v2;
    [v5 registerForTaskWithIdentifier:@"com.apple.eventkitsync.requestResetSync" usingQueue:v6 launchHandler:v8];
  }

  return v2;
}

- (void)requestResetSync
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [v2 taskRequestForIdentifier:@"com.apple.eventkitsync.requestResetSync"];

  if (!v3)
  {
    v5 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.eventkitsync.requestResetSync"];
    [v5 setRequiresNetworkConnectivity:1];
    [v5 setRequiresExternalPower:1];
    [v5 setPriority:2];
    [v5 setCommunicatesWithPairedDevice:1];
    [v5 setScheduleAfter:3600.0];
    [v5 setTrySchedulingBefore:86400.0];
    [v5 setExpectedDuration:1200.0];
    [v5 setRelatedApplications:&off_1000BB8C0];
    v7 = +[BGSystemTaskScheduler sharedScheduler];
    v14 = 0;
    v8 = [v7 submitTaskRequest:v5 error:&v14];
    v6 = v14;

    v9 = *(qword_1000D18A8 + 8);
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v11 = [v5 identifier];
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Task submitted with identifier: %@", buf, 0xCu);
      }

      v12 = +[NEKEnvironment instance];
      v13 = [v12 tinyStore];
      +[NSDate timeIntervalSinceReferenceDate];
      [v13 setDoubleValue:@"resetSyncRequested" forKey:?];
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10006F2F0(v9, v5, v6);
    }

    goto LABEL_10;
  }

  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 identifier];
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Task already exists, bail out for identifier: %@", buf, 0xCu);
LABEL_10:
  }
}

- (void)_handleResetSyncTask:(id)a3
{
  v3 = a3;
  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 identifier];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Handling task with identifier: %@", &v9, 0xCu);
  }

  v7 = +[NEKEnvironment instance];
  v8 = [v7 syncController];
  [v8 setNeedsFullSync];

  [v3 setTaskCompleted];
}

@end