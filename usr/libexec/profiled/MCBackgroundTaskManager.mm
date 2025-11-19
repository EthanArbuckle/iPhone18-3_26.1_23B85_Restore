@interface MCBackgroundTaskManager
+ (double)_intervalForDate:(id)a3 normalize:(BOOL)a4;
+ (id)_nextRegularDate;
- (MCBackgroundTaskManager)initWithQueue:(id)a3;
- (void)_activationLockBypassCodeWasStored:(id)a3;
- (void)_cancelTask:(id)a3;
- (void)_debug_scheduleBackgroundTask:(id)a3 interval:(double)a4 tolerance:(double)a5;
- (void)_scheduleActivationLockCleanupTask;
- (void)_scheduleDailyAnalyticsTask;
- (void)_scheduleManagedSettingsSyncTask;
- (void)_scheduleOrphanedRestrictionsCleanupTask;
- (void)_schedulePasscodeExpiryTask;
- (void)_submitTask:(id)a3 interval:(double)a4 tolerance:(double)a5 requirements:(unint64_t)a6;
- (void)scheduleManagedAppValidationTask:(double)a3;
- (void)scheduleProfileJanitorTask;
- (void)scheduleRecomputeNagMetadataTask;
- (void)scheduleRecoveryPasscodeExpiryTask;
- (void)start;
- (void)stop;
@end

@implementation MCBackgroundTaskManager

- (MCBackgroundTaskManager)initWithQueue:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = MCBackgroundTaskManager;
  v5 = [(MCBackgroundTaskManager *)&v54 init];
  v6 = v5;
  if (v5)
  {
    [(MCBackgroundTaskManager *)v5 setWorkQueue:v4];
    v7 = dispatch_queue_create("MCBackgroundTaskManager schedule queue", 0);
    [(MCBackgroundTaskManager *)v6 setScheduleQueue:v7];

    objc_initWeak(&location, v6);
    v8 = [MCBackgroundTask alloc];
    v9 = [(MCBackgroundTaskManager *)v6 workQueue];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10001C5C8;
    v51[3] = &unk_10011C0D0;
    objc_copyWeak(&v52, &location);
    v10 = [(MCBackgroundTask *)v8 initWithName:@"com.apple.profiled.profileJanitor" queue:v9 completion:v51];
    [(MCBackgroundTaskManager *)v6 setProfileJanitorTask:v10];

    v11 = [MCBackgroundTask alloc];
    v12 = [(MCBackgroundTaskManager *)v6 workQueue];
    v13 = [(MCBackgroundTask *)v11 initWithName:@"com.apple.profiled.profileEventsJanitor" queue:v12 completion:&stru_10011C110];
    [(MCBackgroundTaskManager *)v6 setProfileEventsJanitorTask:v13];

    v14 = [MCBackgroundTask alloc];
    v15 = [(MCBackgroundTaskManager *)v6 workQueue];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10001C6A4;
    v49[3] = &unk_10011C0D0;
    objc_copyWeak(&v50, &location);
    v16 = [(MCBackgroundTask *)v14 initWithName:@"com.apple.profiled.managedAppValidation" queue:v15 completion:v49];
    [(MCBackgroundTaskManager *)v6 setManagedAppValidationTask:v16];

    v17 = [MCBackgroundTask alloc];
    v18 = [(MCBackgroundTaskManager *)v6 workQueue];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10001C714;
    v47[3] = &unk_10011C0D0;
    objc_copyWeak(&v48, &location);
    v19 = [(MCBackgroundTask *)v17 initWithName:@"com.apple.profiled.passcodeExpiry" queue:v18 completion:v47];
    [(MCBackgroundTaskManager *)v6 setPasscodeExpiryTask:v19];

    v20 = [MCBackgroundTask alloc];
    v21 = [(MCBackgroundTaskManager *)v6 workQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10001C7B0;
    v45[3] = &unk_10011C0D0;
    objc_copyWeak(&v46, &location);
    v22 = [(MCBackgroundTask *)v20 initWithName:@"com.apple.profiled.recoveryPasscodeExpiry" queue:v21 completion:v45];
    [(MCBackgroundTaskManager *)v6 setRecoveryPasscodeExpiryTask:v22];

    v23 = [MCBackgroundTask alloc];
    v24 = [(MCBackgroundTaskManager *)v6 workQueue];
    v25 = [(MCBackgroundTask *)v23 initWithName:@"com.apple.profiled.recomputeNagMetadata" queue:v24 completion:&stru_10011C130];
    [(MCBackgroundTaskManager *)v6 setRecomputeNagMetadataTask:v25];

    v26 = [MCBackgroundTask alloc];
    v27 = [(MCBackgroundTaskManager *)v6 workQueue];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10001C95C;
    v43[3] = &unk_10011C0D0;
    objc_copyWeak(&v44, &location);
    v28 = [(MCBackgroundTask *)v26 initWithName:@"com.apple.profiled.dailyAnalytics" queue:v27 completion:v43];
    [(MCBackgroundTaskManager *)v6 setDailyAnalyticsTask:v28];

    v29 = [MCBackgroundTask alloc];
    v30 = [(MCBackgroundTaskManager *)v6 workQueue];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10001C9AC;
    v41[3] = &unk_10011C0D0;
    objc_copyWeak(&v42, &location);
    v31 = [(MCBackgroundTask *)v29 initWithName:@"com.apple.profiled.orphanedRestrictionsCleanup" queue:v30 completion:v41];
    [(MCBackgroundTaskManager *)v6 setOrphanedRestrictionsCleanupTask:v31];

    v32 = [MCBackgroundTask alloc];
    v33 = [(MCBackgroundTaskManager *)v6 workQueue];
    v34 = [(MCBackgroundTask *)v32 initWithName:@"com.apple.profiled.activationLockCleanup" queue:v33 completion:&stru_10011C150];
    [(MCBackgroundTaskManager *)v6 setActivationLockCleanupTask:v34];

    v35 = [MCBackgroundTask alloc];
    v36 = [(MCBackgroundTaskManager *)v6 workQueue];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10001CA6C;
    v39[3] = &unk_10011C0D0;
    objc_copyWeak(&v40, &location);
    v37 = [(MCBackgroundTask *)v35 initWithName:@"com.apple.profiled.managedSettingsSync" queue:v36 completion:v39];
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
  v4 = [MCProfileListChangedNotification UTF8String];
  workQueue = self->_workQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001CE30;
  handler[3] = &unk_10011C178;
  objc_copyWeak(&v23, buf);
  notify_register_dispatch(v4, &self->_profileChangeNotificationToken, workQueue, handler);
  v6 = [MCManagedAppsChangedNotification UTF8String];
  v7 = self->_workQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001CF6C;
  v20[3] = &unk_10011C178;
  objc_copyWeak(&v21, buf);
  notify_register_dispatch(v6, &self->_managedAppChangeNotificationToken, v7, v20);
  v8 = [MCPasscodeChangedNotification UTF8String];
  v9 = self->_workQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001D060;
  v18[3] = &unk_10011C178;
  objc_copyWeak(&v19, buf);
  notify_register_dispatch(v8, &self->_passcodeChangedNotificationToken, v9, v18);
  v10 = [MCPasscodePolicyChangedNotification UTF8String];
  v11 = self->_workQueue;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001D0F8;
  v16 = &unk_10011C178;
  objc_copyWeak(&v17, buf);
  notify_register_dispatch(v10, &self->_passcodePolicyChangedNotificationToken, v11, &v13);
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

- (void)_activationLockBypassCodeWasStored:(id)a3
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
    v6 = [(MCBackgroundTaskManager *)self profileJanitorTask];
    [(MCBackgroundTaskManager *)self _submitTask:v6 interval:1 tolerance:v5 requirements:300.0];
  }

  else
  {
    v6 = [(MCBackgroundTaskManager *)self profileJanitorTask];
    [(MCBackgroundTaskManager *)self _cancelTask:v6];
  }

  v7 = objc_opt_new();
  v8 = [v7 earlistProfileEventExpiry];

  if (v8)
  {
    [MCBackgroundTaskManager _intervalForDate:v8 normalize:1];
    v10 = v9;
    v11 = [(MCBackgroundTaskManager *)self profileEventsJanitorTask];
    +[MCBackgroundTaskManager _defaultTolerance];
    [(MCBackgroundTaskManager *)self _submitTask:v11 interval:0 tolerance:v10 requirements:v12];
  }

  else
  {
    v11 = [(MCBackgroundTaskManager *)self profileEventsJanitorTask];
    [(MCBackgroundTaskManager *)self _cancelTask:v11];
  }
}

- (void)scheduleManagedAppValidationTask:(double)a3
{
  if ((+[MDMProvisioningProfileTrust anyUPPExistsForManagedAppSigners]& 1) != 0)
  {
    [MCBackgroundTaskManager _intervalForInterval:1 normalize:a3];
    v6 = v5;
    v8 = [(MCBackgroundTaskManager *)self managedAppValidationTask];
    +[MCBackgroundTaskManager _defaultTolerance];
    [(MCBackgroundTaskManager *)self _submitTask:v8 interval:5 tolerance:v6 requirements:v7];
  }

  else
  {
    v8 = [(MCBackgroundTaskManager *)self managedAppValidationTask];
    [(MCBackgroundTaskManager *)self _cancelTask:?];
  }
}

- (void)_schedulePasscodeExpiryTask
{
  v3 = +[MCPasscodeManager sharedManager];
  v7 = [v3 passcodeExpiryDate];

  if (v7)
  {
    [MCBackgroundTaskManager _intervalForDate:v7 normalize:0];
    v5 = v4;
    v6 = [(MCBackgroundTaskManager *)self passcodeExpiryTask];
    [(MCBackgroundTaskManager *)self _submitTask:v6 interval:0 tolerance:v5 requirements:60.0];
  }

  else
  {
    v6 = [(MCBackgroundTaskManager *)self passcodeExpiryTask];
    [(MCBackgroundTaskManager *)self _cancelTask:v6];
  }
}

- (void)scheduleRecoveryPasscodeExpiryTask
{
  v3 = +[MCPasscodeManager sharedManager];
  v4 = [v3 recoveryPasscodeExpiryDate];

  if (v4)
  {
    [MCBackgroundTaskManager _intervalForDate:v4 normalize:0];
    v6 = v5;
    v7 = [(MCBackgroundTaskManager *)self recoveryPasscodeExpiryTask];
    [(MCBackgroundTaskManager *)self _submitTask:v7 interval:0 tolerance:v6 requirements:60.0];
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
    v7 = v15;

    if (v10)
    {
      [MCPasscodeAnalytics sendRecoveryPasscodeClearedEventWithReason:7];
    }

    else if (v7)
    {
      v11 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [v7 MCVerboseDescription];
        *buf = 138543362;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MCBackgroundTaskManager failed to clear recovery passcode opaque data with error: %{public}@", buf, 0xCu);
      }
    }

    v14 = [(MCBackgroundTaskManager *)self recoveryPasscodeExpiryTask];
    [(MCBackgroundTaskManager *)self _cancelTask:v14];
  }
}

- (void)scheduleRecomputeNagMetadataTask
{
  v3 = +[NSDate now];
  [MCBackgroundTaskManager _intervalForDate:v3 normalize:0];
  v5 = v4;

  v6 = [(MCBackgroundTaskManager *)self recomputeNagMetadataTask];
  [(MCBackgroundTaskManager *)self _submitTask:v6 interval:2 tolerance:v5 requirements:60.0];
}

- (void)_scheduleDailyAnalyticsTask
{
  v3 = +[MCBackgroundTaskManager _nextRegularDate];
  [MCBackgroundTaskManager _intervalForDate:v3 normalize:1];
  v5 = v4;

  v7 = [(MCBackgroundTaskManager *)self dailyAnalyticsTask];
  +[MCBackgroundTaskManager _defaultTolerance];
  [(MCBackgroundTaskManager *)self _submitTask:v7 interval:0 tolerance:v5 requirements:v6];
}

- (void)_scheduleOrphanedRestrictionsCleanupTask
{
  v3 = +[MCBackgroundTaskManager _nextRegularDate];
  [MCBackgroundTaskManager _intervalForDate:v3 normalize:1];
  v5 = v4;

  v7 = [(MCBackgroundTaskManager *)self orphanedRestrictionsCleanupTask];
  +[MCBackgroundTaskManager _defaultTolerance];
  [(MCBackgroundTaskManager *)self _submitTask:v7 interval:2 tolerance:v5 requirements:v6];
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
  v9 = [(MCBackgroundTaskManager *)self activationLockCleanupTask];
  [(MCBackgroundTaskManager *)self _submitTask:v9 interval:0 tolerance:v8 requirements:2400.0];
}

- (void)_scheduleManagedSettingsSyncTask
{
  v3 = +[MCBackgroundTaskManager _nextRegularDate];
  [MCBackgroundTaskManager _intervalForDate:v3 normalize:1];
  v5 = v4;

  v7 = [(MCBackgroundTaskManager *)self managedSettingsSyncTask];
  +[MCBackgroundTaskManager _defaultTolerance];
  [(MCBackgroundTaskManager *)self _submitTask:v7 interval:0 tolerance:v5 requirements:v6];
}

- (void)_cancelTask:(id)a3
{
  v4 = a3;
  v5 = [(MCBackgroundTaskManager *)self scheduleQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DBD0;
  block[3] = &unk_10011B688;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)_submitTask:(id)a3 interval:(double)a4 tolerance:(double)a5 requirements:(unint64_t)a6
{
  v10 = a3;
  v11 = [(MCBackgroundTaskManager *)self scheduleQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001DCC4;
  v13[3] = &unk_10011C1C0;
  v14 = v10;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v12 = v10;
  dispatch_async(v11, v13);
}

+ (double)_intervalForDate:(id)a3 normalize:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = +[MCBackgroundTaskManager _nextRegularDate];
    v8 = [v6 earlierDate:v7];
  }

  else
  {
    v8 = v5;
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

  v5 = [v4 hour];
  v6 = objc_alloc_init(NSDateComponents);
  v7 = [v4 timeZone];
  [v6 setTimeZone:v7];

  [v6 setYear:{objc_msgSend(v4, "year")}];
  [v6 setMonth:{objc_msgSend(v4, "month")}];
  v8 = [v4 day];
  if (v5 <= 2)
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

- (void)_debug_scheduleBackgroundTask:(id)a3 interval:(double)a4 tolerance:(double)a5
{
  v8 = a3;
  if ([v8 isEqualToString:@"profileJanitor"])
  {
    v9 = [(MCBackgroundTaskManager *)self profileJanitorTask];
LABEL_5:
    v10 = v9;
    v11 = 1;
LABEL_6:
    if (a4 >= 0.0)
    {
      [(MCBackgroundTaskManager *)self _submitTask:v10 interval:v11 tolerance:a4 requirements:a5];
    }

    else
    {
      [(MCBackgroundTaskManager *)self _cancelTask:v10, v11];
    }

    goto LABEL_10;
  }

  if ([v8 isEqualToString:@"profileEventsJanitor"])
  {
    v9 = [(MCBackgroundTaskManager *)self profileEventsJanitorTask];
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"managedAppValidation"])
  {
    v10 = [(MCBackgroundTaskManager *)self managedAppValidationTask];
    v11 = 5;
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"passcodeExpiry"])
  {
    v9 = [(MCBackgroundTaskManager *)self passcodeExpiryTask];
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"recoveryPasscodeExpiry"])
  {
    v9 = [(MCBackgroundTaskManager *)self recoveryPasscodeExpiryTask];
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"recomputeNagMetadata"])
  {
    v12 = [(MCBackgroundTaskManager *)self recomputeNagMetadataTask];
LABEL_19:
    v10 = v12;
    v11 = 3;
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"dailyAnalytics"])
  {
    v9 = [(MCBackgroundTaskManager *)self dailyAnalyticsTask];
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"orphanedRestrictionsCleanup"])
  {
    v12 = [(MCBackgroundTaskManager *)self orphanedRestrictionsCleanupTask];
    goto LABEL_19;
  }

  if ([v8 isEqualToString:@"activationLockCleanup"])
  {
    v9 = [(MCBackgroundTaskManager *)self activationLockCleanupTask];
    goto LABEL_5;
  }

  v13 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MCBackgroundTaskManager cannot debug schedule invalid task: '%{public}@'", &v14, 0xCu);
  }

LABEL_10:
}

@end