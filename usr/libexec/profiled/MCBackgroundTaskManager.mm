@interface MCBackgroundTaskManager
+ (double)_intervalForDate:(id)date normalize:(BOOL)normalize;
+ (id)_nextRegularDate;
- (MCBackgroundTaskManager)initWithQueue:(id)queue;
- (void)_activationLockBypassCodeWasStored:(id)stored;
- (void)_cancelTask:(id)task;
- (void)_debug_scheduleBackgroundTask:(id)task interval:(double)interval tolerance:(double)tolerance;
- (void)_scheduleActivationLockCleanupTask;
- (void)_scheduleDailyAnalyticsTask;
- (void)_scheduleManagedSettingsSyncTask;
- (void)_scheduleOrphanedRestrictionsCleanupTask;
- (void)_schedulePasscodeExpiryTask;
- (void)_submitTask:(id)task interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements;
- (void)scheduleManagedAppValidationTask:(double)task;
- (void)scheduleProfileJanitorTask;
- (void)scheduleRecomputeNagMetadataTask;
- (void)scheduleRecoveryPasscodeExpiryTask;
- (void)start;
- (void)stop;
@end

@implementation MCBackgroundTaskManager

- (MCBackgroundTaskManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v54.receiver = self;
  v54.super_class = MCBackgroundTaskManager;
  v5 = [(MCBackgroundTaskManager *)&v54 init];
  v6 = v5;
  if (v5)
  {
    [(MCBackgroundTaskManager *)v5 setWorkQueue:queueCopy];
    v7 = dispatch_queue_create("MCBackgroundTaskManager schedule queue", 0);
    [(MCBackgroundTaskManager *)v6 setScheduleQueue:v7];

    objc_initWeak(&location, v6);
    v8 = [MCBackgroundTask alloc];
    workQueue = [(MCBackgroundTaskManager *)v6 workQueue];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10001C5C8;
    v51[3] = &unk_10011C0D0;
    objc_copyWeak(&v52, &location);
    v10 = [(MCBackgroundTask *)v8 initWithName:@"com.apple.profiled.profileJanitor" queue:workQueue completion:v51];
    [(MCBackgroundTaskManager *)v6 setProfileJanitorTask:v10];

    v11 = [MCBackgroundTask alloc];
    workQueue2 = [(MCBackgroundTaskManager *)v6 workQueue];
    v13 = [(MCBackgroundTask *)v11 initWithName:@"com.apple.profiled.profileEventsJanitor" queue:workQueue2 completion:&stru_10011C110];
    [(MCBackgroundTaskManager *)v6 setProfileEventsJanitorTask:v13];

    v14 = [MCBackgroundTask alloc];
    workQueue3 = [(MCBackgroundTaskManager *)v6 workQueue];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10001C6A4;
    v49[3] = &unk_10011C0D0;
    objc_copyWeak(&v50, &location);
    v16 = [(MCBackgroundTask *)v14 initWithName:@"com.apple.profiled.managedAppValidation" queue:workQueue3 completion:v49];
    [(MCBackgroundTaskManager *)v6 setManagedAppValidationTask:v16];

    v17 = [MCBackgroundTask alloc];
    workQueue4 = [(MCBackgroundTaskManager *)v6 workQueue];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10001C714;
    v47[3] = &unk_10011C0D0;
    objc_copyWeak(&v48, &location);
    v19 = [(MCBackgroundTask *)v17 initWithName:@"com.apple.profiled.passcodeExpiry" queue:workQueue4 completion:v47];
    [(MCBackgroundTaskManager *)v6 setPasscodeExpiryTask:v19];

    v20 = [MCBackgroundTask alloc];
    workQueue5 = [(MCBackgroundTaskManager *)v6 workQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10001C7B0;
    v45[3] = &unk_10011C0D0;
    objc_copyWeak(&v46, &location);
    v22 = [(MCBackgroundTask *)v20 initWithName:@"com.apple.profiled.recoveryPasscodeExpiry" queue:workQueue5 completion:v45];
    [(MCBackgroundTaskManager *)v6 setRecoveryPasscodeExpiryTask:v22];

    v23 = [MCBackgroundTask alloc];
    workQueue6 = [(MCBackgroundTaskManager *)v6 workQueue];
    v25 = [(MCBackgroundTask *)v23 initWithName:@"com.apple.profiled.recomputeNagMetadata" queue:workQueue6 completion:&stru_10011C130];
    [(MCBackgroundTaskManager *)v6 setRecomputeNagMetadataTask:v25];

    v26 = [MCBackgroundTask alloc];
    workQueue7 = [(MCBackgroundTaskManager *)v6 workQueue];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10001C95C;
    v43[3] = &unk_10011C0D0;
    objc_copyWeak(&v44, &location);
    v28 = [(MCBackgroundTask *)v26 initWithName:@"com.apple.profiled.dailyAnalytics" queue:workQueue7 completion:v43];
    [(MCBackgroundTaskManager *)v6 setDailyAnalyticsTask:v28];

    v29 = [MCBackgroundTask alloc];
    workQueue8 = [(MCBackgroundTaskManager *)v6 workQueue];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10001C9AC;
    v41[3] = &unk_10011C0D0;
    objc_copyWeak(&v42, &location);
    v31 = [(MCBackgroundTask *)v29 initWithName:@"com.apple.profiled.orphanedRestrictionsCleanup" queue:workQueue8 completion:v41];
    [(MCBackgroundTaskManager *)v6 setOrphanedRestrictionsCleanupTask:v31];

    v32 = [MCBackgroundTask alloc];
    workQueue9 = [(MCBackgroundTaskManager *)v6 workQueue];
    v34 = [(MCBackgroundTask *)v32 initWithName:@"com.apple.profiled.activationLockCleanup" queue:workQueue9 completion:&stru_10011C150];
    [(MCBackgroundTaskManager *)v6 setActivationLockCleanupTask:v34];

    v35 = [MCBackgroundTask alloc];
    workQueue10 = [(MCBackgroundTaskManager *)v6 workQueue];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10001CA6C;
    v39[3] = &unk_10011C0D0;
    objc_copyWeak(&v40, &location);
    v37 = [(MCBackgroundTask *)v35 initWithName:@"com.apple.profiled.managedSettingsSync" queue:workQueue10 completion:v39];
    [(MCBackgroundTaskManager *)v6 setManagedSettingsSyncTask:v37];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)start
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MCBackgroundTaskManager start", buf, 2u);
  }

  objc_initWeak(buf, self);
  uTF8String = [MCProfileListChangedNotification UTF8String];
  workQueue = self->_workQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001CE30;
  handler[3] = &unk_10011C178;
  objc_copyWeak(&v23, buf);
  notify_register_dispatch(uTF8String, &self->_profileChangeNotificationToken, workQueue, handler);
  uTF8String2 = [MCManagedAppsChangedNotification UTF8String];
  v7 = self->_workQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001CF6C;
  v20[3] = &unk_10011C178;
  objc_copyWeak(&v21, buf);
  notify_register_dispatch(uTF8String2, &self->_managedAppChangeNotificationToken, v7, v20);
  uTF8String3 = [MCPasscodeChangedNotification UTF8String];
  v9 = self->_workQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001D060;
  v18[3] = &unk_10011C178;
  objc_copyWeak(&v19, buf);
  notify_register_dispatch(uTF8String3, &self->_passcodeChangedNotificationToken, v9, v18);
  uTF8String4 = [MCPasscodePolicyChangedNotification UTF8String];
  v11 = self->_workQueue;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001D0F8;
  v16 = &unk_10011C178;
  objc_copyWeak(&v17, buf);
  notify_register_dispatch(uTF8String4, &self->_passcodePolicyChangedNotificationToken, v11, &v13);
  v12 = [NSNotificationCenter defaultCenter:v13];
  [v12 addObserver:self selector:"_activationLockBypassCodeWasStored:" name:MCActivationLockBypassCodeWasStoredNotification object:0];

  [(MCBackgroundTaskManager *)self scheduleManagedAppValidationTask:300.0];
  [(MCBackgroundTaskManager *)self _scheduleDailyAnalyticsTask];
  [(MCBackgroundTaskManager *)self _scheduleOrphanedRestrictionsCleanupTask];
  [(MCBackgroundTaskManager *)self _schedulePasscodeExpiryTask];
  [(MCBackgroundTaskManager *)self scheduleRecoveryPasscodeExpiryTask];
  [(MCBackgroundTaskManager *)self _scheduleManagedSettingsSyncTask];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)stop
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MCBackgroundTaskManager stop", v5, 2u);
  }

  notify_cancel([(MCBackgroundTaskManager *)self profileChangeNotificationToken]);
  notify_cancel([(MCBackgroundTaskManager *)self managedAppChangeNotificationToken]);
  notify_cancel([(MCBackgroundTaskManager *)self passcodeChangedNotificationToken]);
  notify_cancel([(MCBackgroundTaskManager *)self passcodePolicyChangedNotificationToken]);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)_activationLockBypassCodeWasStored:(id)stored
{
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MCBackgroundTaskManager scheduling activation lock cleanup task because activation lock bypass code was stored", v5, 2u);
  }

  [(MCBackgroundTaskManager *)self _scheduleActivationLockCleanupTask];
}

- (void)scheduleProfileJanitorTask
{
  v3 = +[MCProfileJanitor earliestExpiryDate];
  v13 = v3;
  if (v3)
  {
    [MCBackgroundTaskManager _intervalForDate:v3 normalize:1];
    v5 = v4;
    profileJanitorTask = [(MCBackgroundTaskManager *)self profileJanitorTask];
    [(MCBackgroundTaskManager *)self _submitTask:profileJanitorTask interval:1 tolerance:v5 requirements:300.0];
  }

  else
  {
    profileJanitorTask = [(MCBackgroundTaskManager *)self profileJanitorTask];
    [(MCBackgroundTaskManager *)self _cancelTask:profileJanitorTask];
  }

  v7 = objc_opt_new();
  earlistProfileEventExpiry = [v7 earlistProfileEventExpiry];

  if (earlistProfileEventExpiry)
  {
    [MCBackgroundTaskManager _intervalForDate:earlistProfileEventExpiry normalize:1];
    v10 = v9;
    profileEventsJanitorTask = [(MCBackgroundTaskManager *)self profileEventsJanitorTask];
    +[MCBackgroundTaskManager _defaultTolerance];
    [(MCBackgroundTaskManager *)self _submitTask:profileEventsJanitorTask interval:0 tolerance:v10 requirements:v12];
  }

  else
  {
    profileEventsJanitorTask = [(MCBackgroundTaskManager *)self profileEventsJanitorTask];
    [(MCBackgroundTaskManager *)self _cancelTask:profileEventsJanitorTask];
  }
}

- (void)scheduleManagedAppValidationTask:(double)task
{
  if ((+[MDMProvisioningProfileTrust anyUPPExistsForManagedAppSigners]& 1) != 0)
  {
    [MCBackgroundTaskManager _intervalForInterval:1 normalize:task];
    v6 = v5;
    managedAppValidationTask = [(MCBackgroundTaskManager *)self managedAppValidationTask];
    +[MCBackgroundTaskManager _defaultTolerance];
    [(MCBackgroundTaskManager *)self _submitTask:managedAppValidationTask interval:5 tolerance:v6 requirements:v7];
  }

  else
  {
    managedAppValidationTask = [(MCBackgroundTaskManager *)self managedAppValidationTask];
    [(MCBackgroundTaskManager *)self _cancelTask:?];
  }
}

- (void)_schedulePasscodeExpiryTask
{
  v3 = +[MCPasscodeManager sharedManager];
  passcodeExpiryDate = [v3 passcodeExpiryDate];

  if (passcodeExpiryDate)
  {
    [MCBackgroundTaskManager _intervalForDate:passcodeExpiryDate normalize:0];
    v5 = v4;
    passcodeExpiryTask = [(MCBackgroundTaskManager *)self passcodeExpiryTask];
    [(MCBackgroundTaskManager *)self _submitTask:passcodeExpiryTask interval:0 tolerance:v5 requirements:60.0];
  }

  else
  {
    passcodeExpiryTask = [(MCBackgroundTaskManager *)self passcodeExpiryTask];
    [(MCBackgroundTaskManager *)self _cancelTask:passcodeExpiryTask];
  }
}

- (void)scheduleRecoveryPasscodeExpiryTask
{
  v3 = +[MCPasscodeManager sharedManager];
  recoveryPasscodeExpiryDate = [v3 recoveryPasscodeExpiryDate];

  if (recoveryPasscodeExpiryDate)
  {
    [MCBackgroundTaskManager _intervalForDate:recoveryPasscodeExpiryDate normalize:0];
    v6 = v5;
    recoveryPasscodeExpiryTask = [(MCBackgroundTaskManager *)self recoveryPasscodeExpiryTask];
    [(MCBackgroundTaskManager *)self _submitTask:recoveryPasscodeExpiryTask interval:0 tolerance:v6 requirements:60.0];
  }

  else
  {
    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MCBackgroundTaskManager has no recovery passcode, clearing associated data if necessary", buf, 2u);
    }

    v9 = +[MCPasscodeManagerWriter sharedManager];
    v15 = 0;
    v10 = [v9 clearRecoveryPasscodeOpaqueDataWithOutError:&v15];
    recoveryPasscodeExpiryTask = v15;

    if (v10)
    {
      [MCPasscodeAnalytics sendRecoveryPasscodeClearedEventWithReason:7];
    }

    else if (recoveryPasscodeExpiryTask)
    {
      v11 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        mCVerboseDescription = [recoveryPasscodeExpiryTask MCVerboseDescription];
        *buf = 138543362;
        v17 = mCVerboseDescription;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MCBackgroundTaskManager failed to clear recovery passcode opaque data with error: %{public}@", buf, 0xCu);
      }
    }

    recoveryPasscodeExpiryTask2 = [(MCBackgroundTaskManager *)self recoveryPasscodeExpiryTask];
    [(MCBackgroundTaskManager *)self _cancelTask:recoveryPasscodeExpiryTask2];
  }
}

- (void)scheduleRecomputeNagMetadataTask
{
  v3 = +[NSDate now];
  [MCBackgroundTaskManager _intervalForDate:v3 normalize:0];
  v5 = v4;

  recomputeNagMetadataTask = [(MCBackgroundTaskManager *)self recomputeNagMetadataTask];
  [(MCBackgroundTaskManager *)self _submitTask:recomputeNagMetadataTask interval:2 tolerance:v5 requirements:60.0];
}

- (void)_scheduleDailyAnalyticsTask
{
  v3 = +[MCBackgroundTaskManager _nextRegularDate];
  [MCBackgroundTaskManager _intervalForDate:v3 normalize:1];
  v5 = v4;

  dailyAnalyticsTask = [(MCBackgroundTaskManager *)self dailyAnalyticsTask];
  +[MCBackgroundTaskManager _defaultTolerance];
  [(MCBackgroundTaskManager *)self _submitTask:dailyAnalyticsTask interval:0 tolerance:v5 requirements:v6];
}

- (void)_scheduleOrphanedRestrictionsCleanupTask
{
  v3 = +[MCBackgroundTaskManager _nextRegularDate];
  [MCBackgroundTaskManager _intervalForDate:v3 normalize:1];
  v5 = v4;

  orphanedRestrictionsCleanupTask = [(MCBackgroundTaskManager *)self orphanedRestrictionsCleanupTask];
  +[MCBackgroundTaskManager _defaultTolerance];
  [(MCBackgroundTaskManager *)self _submitTask:orphanedRestrictionsCleanupTask interval:2 tolerance:v5 requirements:v6];
}

- (void)_scheduleActivationLockCleanupTask
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 doubleForKey:@"ActivationLockCleanupJobInterval"];
  v5 = v4;

  v6 = 1296000.0;
  if (v5 >= 0.01)
  {
    v6 = v5;
  }

  [MCBackgroundTaskManager _intervalForInterval:0 normalize:v6];
  v8 = v7;
  activationLockCleanupTask = [(MCBackgroundTaskManager *)self activationLockCleanupTask];
  [(MCBackgroundTaskManager *)self _submitTask:activationLockCleanupTask interval:0 tolerance:v8 requirements:2400.0];
}

- (void)_scheduleManagedSettingsSyncTask
{
  v3 = +[MCBackgroundTaskManager _nextRegularDate];
  [MCBackgroundTaskManager _intervalForDate:v3 normalize:1];
  v5 = v4;

  managedSettingsSyncTask = [(MCBackgroundTaskManager *)self managedSettingsSyncTask];
  +[MCBackgroundTaskManager _defaultTolerance];
  [(MCBackgroundTaskManager *)self _submitTask:managedSettingsSyncTask interval:0 tolerance:v5 requirements:v6];
}

- (void)_cancelTask:(id)task
{
  taskCopy = task;
  scheduleQueue = [(MCBackgroundTaskManager *)self scheduleQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DBD0;
  block[3] = &unk_10011B688;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(scheduleQueue, block);
}

- (void)_submitTask:(id)task interval:(double)interval tolerance:(double)tolerance requirements:(unint64_t)requirements
{
  taskCopy = task;
  scheduleQueue = [(MCBackgroundTaskManager *)self scheduleQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001DCC4;
  v13[3] = &unk_10011C1C0;
  v14 = taskCopy;
  intervalCopy = interval;
  toleranceCopy = tolerance;
  requirementsCopy = requirements;
  v12 = taskCopy;
  dispatch_async(scheduleQueue, v13);
}

+ (double)_intervalForDate:(id)date normalize:(BOOL)normalize
{
  dateCopy = date;
  v6 = dateCopy;
  if (normalize)
  {
    v7 = +[MCBackgroundTaskManager _nextRegularDate];
    v8 = [v6 earlierDate:v7];
  }

  else
  {
    v8 = dateCopy;
  }

  v9 = +[NSDate now];
  [v8 timeIntervalSinceDate:v9];
  v11 = v10;

  if (v11 < 10.0)
  {
    v11 = 10.0;
  }

  return v11;
}

+ (id)_nextRegularDate
{
  v2 = +[NSCalendar currentCalendar];
  v3 = +[NSDate now];
  v4 = [v2 components:2097212 fromDate:v3];

  hour = [v4 hour];
  v6 = objc_alloc_init(NSDateComponents);
  timeZone = [v4 timeZone];
  [v6 setTimeZone:timeZone];

  [v6 setYear:{objc_msgSend(v4, "year")}];
  [v6 setMonth:{objc_msgSend(v4, "month")}];
  v8 = [v4 day];
  if (hour <= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  [v6 setDay:v9];
  [v6 setHour:3];
  [v6 setMinute:0];
  v10 = [v2 dateFromComponents:v6];

  return v10;
}

- (void)_debug_scheduleBackgroundTask:(id)task interval:(double)interval tolerance:(double)tolerance
{
  taskCopy = task;
  if ([taskCopy isEqualToString:@"profileJanitor"])
  {
    profileJanitorTask = [(MCBackgroundTaskManager *)self profileJanitorTask];
LABEL_5:
    managedAppValidationTask = profileJanitorTask;
    v11 = 1;
LABEL_6:
    if (interval >= 0.0)
    {
      [(MCBackgroundTaskManager *)self _submitTask:managedAppValidationTask interval:v11 tolerance:interval requirements:tolerance];
    }

    else
    {
      [(MCBackgroundTaskManager *)self _cancelTask:managedAppValidationTask, v11];
    }

    goto LABEL_10;
  }

  if ([taskCopy isEqualToString:@"profileEventsJanitor"])
  {
    profileJanitorTask = [(MCBackgroundTaskManager *)self profileEventsJanitorTask];
    goto LABEL_5;
  }

  if ([taskCopy isEqualToString:@"managedAppValidation"])
  {
    managedAppValidationTask = [(MCBackgroundTaskManager *)self managedAppValidationTask];
    v11 = 5;
    goto LABEL_6;
  }

  if ([taskCopy isEqualToString:@"passcodeExpiry"])
  {
    profileJanitorTask = [(MCBackgroundTaskManager *)self passcodeExpiryTask];
    goto LABEL_5;
  }

  if ([taskCopy isEqualToString:@"recoveryPasscodeExpiry"])
  {
    profileJanitorTask = [(MCBackgroundTaskManager *)self recoveryPasscodeExpiryTask];
    goto LABEL_5;
  }

  if ([taskCopy isEqualToString:@"recomputeNagMetadata"])
  {
    recomputeNagMetadataTask = [(MCBackgroundTaskManager *)self recomputeNagMetadataTask];
LABEL_19:
    managedAppValidationTask = recomputeNagMetadataTask;
    v11 = 3;
    goto LABEL_6;
  }

  if ([taskCopy isEqualToString:@"dailyAnalytics"])
  {
    profileJanitorTask = [(MCBackgroundTaskManager *)self dailyAnalyticsTask];
    goto LABEL_5;
  }

  if ([taskCopy isEqualToString:@"orphanedRestrictionsCleanup"])
  {
    recomputeNagMetadataTask = [(MCBackgroundTaskManager *)self orphanedRestrictionsCleanupTask];
    goto LABEL_19;
  }

  if ([taskCopy isEqualToString:@"activationLockCleanup"])
  {
    profileJanitorTask = [(MCBackgroundTaskManager *)self activationLockCleanupTask];
    goto LABEL_5;
  }

  v13 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v14 = 138543362;
    v15 = taskCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MCBackgroundTaskManager cannot debug schedule invalid task: '%{public}@'", &v14, 0xCu);
  }

LABEL_10:
}

@end