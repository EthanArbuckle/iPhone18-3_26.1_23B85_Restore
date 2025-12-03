@interface _DASAutoBugCaptureHelper
+ (BOOL)isActivitySignificantlyOverdue:(id)overdue now:(id)now;
+ (void)checkAllTasksForBGSystemTask:(id)task;
+ (void)schedule;
+ (void)triggerABCCaseForActivities:(id)activities;
@end

@implementation _DASAutoBugCaptureHelper

+ (BOOL)isActivitySignificantlyOverdue:(id)overdue now:(id)now
{
  overdueCopy = overdue;
  nowCopy = now;
  v7 = [_DASDaemonLogger logForCategory:@"abcHelper"];
  v8 = v7;
  if (!overdueCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100124FB4();
    }

    goto LABEL_14;
  }

  if (!nowCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100124F80();
    }

    goto LABEL_14;
  }

  if (![overdueCopy significantlyOverdueAtDate:nowCopy])
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  submitDate = [overdueCopy submitDate];
  if (submitDate)
  {
    v10 = submitDate;
    submitDate2 = [overdueCopy submitDate];
    [nowCopy timeIntervalSinceDate:submitDate2];
    v13 = v12;

    if (v13 > 2073600.0)
    {
      v14 = v8;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        submitDate3 = [overdueCopy submitDate];
        startBefore = [overdueCopy startBefore];
        v19 = 138413058;
        v20 = overdueCopy;
        v21 = 2112;
        v22 = submitDate3;
        v23 = 2112;
        v24 = startBefore;
        v25 = 2112;
        v26 = nowCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Activity %@ significantly overdue, submit: %@, startBefore: %@, now: %@", &v19, 0x2Au);
      }
    }
  }

  v17 = 1;
LABEL_15:

  return v17;
}

+ (void)triggerABCCaseForActivities:(id)activities
{
  activitiesCopy = activities;
  v4 = [_DASDaemonLogger logForCategory:@"abcHelper"];
  v5 = v4;
  if (activitiesCopy)
  {
    v23 = v4;
    v6 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = activitiesCopy;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        v11 = 0;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          name = [*(*(&v27 + 1) + 8 * v11) name];
          [v6 addObject:name];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v27 objects:v40 count:16];
      }

      while (v9);
    }

    v13 = [v6 componentsJoinedByString:{@", "}];
    v14 = objc_alloc_init(SDRDiagnosticReporter);
    v15 = [v14 signatureWithDomain:@"Duet" type:@"Activities Significantly Overdue" subType:@"Multiple Activities" subtypeContext:0 detectedProcess:@"dasd" triggerThresholdValues:0];
    v38 = kSymptomDiagnosticKeyPayloadDEParameters;
    v35 = v13;
    v36 = @"com.apple.das.DASDaemon.DuetDiagnosticExtension";
    v34 = @"kDASActivityNames";
    v16 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v37 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v39 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];

    v31 = @"kDASActivityNames";
    v32 = v13;
    v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v33 = v19;
    v20 = [NSArray arrayWithObjects:&v33 count:1];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100095F10;
    v24[3] = &unk_1001B75B0;
    v5 = v23;
    v21 = v23;
    v25 = v21;
    v26 = v13;
    v22 = v13;
    if (([v14 snapshotWithSignature:v15 duration:v20 events:v18 payload:0 actions:v24 reply:0.0] & 1) == 0 && os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_100124FE8();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_10012501C();
  }
}

+ (void)checkAllTasksForBGSystemTask:(id)task
{
  taskCopy = task;
  v4 = [_DASDaemonLogger logForCategory:@"abcHelper"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Checking activities for significantly overdue tasks", buf, 2u);
  }

  if (taskCopy)
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100096448;
    v26[3] = &unk_1001B5708;
    v28 = buf;
    v5 = v4;
    v27 = v5;
    [taskCopy setExpirationHandler:v26];
    v19 = objc_alloc_init(NSMutableArray);
    v20 = +[NSDate date];
    v6 = +[_DASDaemon sharedInstance];
    allPendingTasks = [v6 allPendingTasks];

    v17 = v4;
    v18 = taskCopy;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = allPendingTasks;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v35 count:16];
    if (v9)
    {
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if (([v12 userRequestedBackupTask] & 1) != 0 || objc_msgSend(v12, "beforeDaysFirstActivity"))
          {
            if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
            {
              *v33 = 138412290;
              v34 = v12;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Ignoring activity that is allowed to be overdue: %@", v33, 0xCu);
            }
          }

          else
          {
            if ([objc_opt_class() isActivitySignificantlyOverdue:v12 now:v20])
            {
              [v19 addObject:v12];
            }

            if (v30[24])
            {
              goto LABEL_18;
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v35 count:16];
      }

      while (v9);
    }

LABEL_18:

    v4 = v17;
    taskCopy = v18;
    if (v30[24] == 1)
    {
      v21 = 0;
      v13 = [v18 setTaskExpiredWithRetryAfter:&v21 error:0.0];
      v14 = v21;
      if ((v13 & 1) == 0)
      {
        v15 = v5;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          identifier = [v18 identifier];
          sub_10012516C(identifier, v14, v33, v15);
        }

        [v18 setTaskCompleted];
      }
    }

    else
    {
      if ([v19 count])
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *v33 = 138412290;
          v34 = v19;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Found significantly overdue activities:\n%@", v33, 0xCu);
        }

        [objc_opt_class() triggerABCCaseForActivities:v19];
      }

      [v18 setTaskCompleted];
    }

    _Block_object_dispose(buf, 8);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1001251D4();
  }
}

+ (void)schedule
{
  v3 = [_DASDaemonLogger logForCategory:@"abcHelper"];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100125208();
  }

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000965A8;
  v6[3] = &unk_1001B75D8;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  [v4 registerForTaskWithIdentifier:@"com.apple.dasd.overdueCheck" usingQueue:0 launchHandler:v6];
}

@end