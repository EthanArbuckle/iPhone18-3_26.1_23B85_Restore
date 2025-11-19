@interface _DASENManager
+ (id)activeENApplication;
+ (id)enTaskIdentifiersForApplication:(id)a3;
+ (id)manager;
+ (void)launchApplication:(id)a3;
+ (void)runPeriodicRelaunchTask;
+ (void)schedulePeriodicRelaunchTask;
- (BOOL)isPossibleENActivity:(id)a3;
- (_DASENManager)init;
- (unint64_t)launchIntervalForENApplication:(id)a3;
- (void)handleActiveAppChanged;
- (void)performIfENActive:(id)a3;
- (void)setIsENActivity:(id)a3;
@end

@implementation _DASENManager

- (_DASENManager)init
{
  v8.receiver = self;
  v8.super_class = _DASENManager;
  v2 = [(_DASENManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_token = -1;
    v4 = dispatch_get_global_queue(-2, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000FA4A0;
    handler[3] = &unk_1001B5B78;
    v7 = v3;
    notify_register_dispatch("com.apple.ExposureNotification.trackedAppChanged", &v3->_token, v4, handler);
  }

  return v3;
}

+ (id)manager
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)activeENApplication
{
  v2 = objc_alloc_init(ENManager);
  v3 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000FA6C8;
  v17 = sub_1000FA6D8;
  v18 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FA6E0;
  v9[3] = &unk_1001B8AD0;
  v4 = v2;
  v10 = v4;
  v12 = &v13;
  v5 = v3;
  v11 = v5;
  [v4 activateWithCompletionHandler:v9];
  v6 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

+ (id)enTaskIdentifiersForApplication:(id)a3
{
  v3 = a3;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
  v5 = [v4 compatibilityObject];

  v6 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 backgroundTaskSchedulerPermittedIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 hasSuffix:@"exposure-notification"])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (void)launchApplication:(id)a3
{
  v20 = a3;
  [objc_opt_class() enTaskIdentifiersForApplication:v20];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = *v22;
    v18 = _DASLaunchReasonBackgroundProcessing;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Submitting relaunch for %{public}@", buf, 0xCu);
        }

        v8 = [NSString stringWithFormat:@"bgProcessing-%@", v6];
        v9 = _DASSchedulingPriorityUtility;
        v10 = _DASActivityDurationShort;
        v11 = +[NSDate date];
        v12 = [NSDate dateWithTimeIntervalSinceNow:60.0];
        v13 = [_DASActivity applicationLaunchActivityWithName:v8 priority:v9 forApplication:v20 withReason:v18 duration:v10 startingAfter:v11 startingBefore:v12];

        [v13 setClientProvidedIdentifier:v6];
        v14 = +[NSDate date];
        [v13 setClientProvidedStartDate:v14];

        [v13 setRequiresNetwork:1];
        [v13 setRequiresPlugin:0];
        [v13 setIsContactTracingBackgroundActivity:1];
        v15 = +[NSDate date];
        [v13 setSubmitDate:v15];

        v16 = +[_DASDaemon sharedInstance];
        [v16 submitActivity:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }
}

+ (void)runPeriodicRelaunchTask
{
  v2 = [objc_opt_class() activeENApplication];
  v3 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10012C6D8(v2, v3);
  }

  if (v2)
  {
    v4 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating EN relaunch task for %{public}@", &v5, 0xCu);
    }

    [objc_opt_class() launchApplication:v2];
  }
}

+ (void)schedulePeriodicRelaunchTask
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v4 = [v3 integerForKey:@"enRelaunchInterval"];
  if (v4 <= 0)
  {
    v5 = 86400;
  }

  else
  {
    v5 = v4;
  }

  v6 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v19) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Preferred interval is %d", buf, 8u);
  }

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000FB1D4;
  v17[3] = &unk_1001B7870;
  v17[4] = a1;
  [v7 registerForTaskWithIdentifier:off_10020AB98 usingQueue:0 launchHandler:v17];

  v8 = +[BGSystemTaskScheduler sharedScheduler];
  v9 = [v8 taskRequestForIdentifier:off_10020AB98];

  if (!v9)
  {
    v10 = [BGRepeatingSystemTaskRequest alloc];
    v11 = [v10 initWithIdentifier:off_10020AB98];
    [v11 setPriority:2];
    [v11 setInterval:v5];
    v12 = +[BGSystemTaskScheduler sharedScheduler];
    v16 = 0;
    v13 = [v12 submitTaskRequest:v11 error:&v16];
    v14 = v16;

    if ((v13 & 1) == 0)
    {
      v15 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }
  }
}

- (void)performIfENActive:(id)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FB2E0;
  v6[3] = &unk_1001B8AF8;
  v7 = objc_alloc_init(ENManager);
  v8 = v3;
  v4 = v3;
  v5 = v7;
  [v5 activateWithCompletionHandler:v6];
}

- (unint64_t)launchIntervalForENApplication:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ENManager);
  v5 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FB548;
  v12[3] = &unk_1001B8B20;
  v6 = v3;
  v13 = v6;
  v16 = &v17;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  [v7 exposureNotificationGetStatusForBundleIdentifier:v6 completion:v12];
  v9 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v8, v9);
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v10;
}

- (void)handleActiveAppChanged
{
  v34 = +[_DASDaemon sharedInstance];
  v3 = [v34 allPendingBackgroundTasks];
  v4 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v38;
    *&v7 = 138412290;
    v33 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if ([(_DASENManager *)self isPossibleENActivity:v11, v33])
        {
          v12 = [v11 relatedApplications];
          v13 = [v12 firstObject];
          v14 = [(_DASENManager *)self launchIntervalForENApplication:v13];

          v15 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v33;
            v42 = v11;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Considering: %@", buf, 0xCu);
          }

          v16 = [v11 isContactTracingBackgroundActivity];
          if (v14)
          {
            if (v16)
            {
              continue;
            }

            [v11 setIsContactTracingBackgroundActivity:1];
            v17 = [v11 submitDate];

            if (!v17)
            {
              v18 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_10012C7DC(&v35, v36, v18);
              }

              v19 = [NSDate dateWithTimeIntervalSinceNow:-3600.0];
              [v11 setSubmitDate:v19];
            }

            v20 = [v11 submitDate];
            v21 = [v20 dateByAddingTimeInterval:v14];

            v22 = [v11 clientProvidedStartDate];
            if (v22)
            {
              v23 = v22;
              v24 = [v11 clientProvidedStartDate];
              [v24 timeIntervalSinceDate:v21];
              v26 = v25;

              if (v26 > 0.0)
              {
                v27 = [v11 clientProvidedStartDate];

                v21 = v27;
              }
            }

            [v11 setStartAfter:v21];
            v28 = [v11 startAfter];
            v29 = [v28 dateByAddingTimeInterval:3600.0];
            [v11 setStartBefore:v29];

            v30 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v11 debugDescription];
              *buf = 138543618;
              v42 = v11;
              v43 = 2112;
              v44 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ now an EN app %@", buf, 0x16u);
            }

LABEL_25:
          }

          else
          {
            if (!v16)
            {
              continue;
            }

            [v11 setIsContactTracingBackgroundActivity:0];
            v21 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v11 debugDescription];
              *buf = 138543618;
              v42 = v11;
              v43 = 2112;
              v44 = v30;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ no longer an EN app %@", buf, 0x16u);
              goto LABEL_25;
            }
          }

          v32 = [v34 store];
          [v32 saveActivity:v11];

          continue;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v8);
  }
}

- (BOOL)isPossibleENActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 launchReason];
  if ([v4 isEqualToString:_DASLaunchReasonBackgroundProcessing])
  {
    v5 = [v3 clientProvidedIdentifier];
    v6 = [v5 hasSuffix:@"exposure-notification"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIsENActivity:(id)a3
{
  v4 = a3;
  [v4 setIsContactTracingBackgroundActivity:0];
  if (!+[_DASConfig isiPhone])
  {
    v14 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Exposure Notification not supported on non-iPhone device", &v19, 2u);
    }

    goto LABEL_12;
  }

  if ([(_DASENManager *)self isPossibleENActivity:v4])
  {
    v5 = [v4 relatedApplications];
    v6 = [v5 firstObject];
    v7 = [(_DASENManager *)self launchIntervalForENApplication:v6];
    v8 = v7;

    if (v7)
    {
      v9 = +[NSDate now];
      v10 = [v9 dateByAddingTimeInterval:v8];

      v11 = [v4 clientProvidedStartDate];
      if (v11)
      {
        v12 = [v4 clientProvidedStartDate];
        v13 = [v12 laterDate:v10];
        [v4 setStartAfter:v13];
      }

      else
      {
        [v4 setStartAfter:v10];
      }

      v15 = [v4 startAfter];
      v16 = [v15 dateByAddingTimeInterval:3600.0];
      [v4 setStartBefore:v16];

      [v4 setIsContactTracingBackgroundActivity:1];
    }

    v14 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 isContactTracingBackgroundActivity];
      v18 = [v4 startAfter];
      v19 = 138544130;
      v20 = v4;
      v21 = 2048;
      v22 = v8 / 60.0;
      v23 = 1024;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Activity: %{public}@, Interval=%.0lf, isCTBackgroundActivity=%u, Eligible=%{public}@", &v19, 0x26u);
    }

LABEL_12:
  }
}

@end