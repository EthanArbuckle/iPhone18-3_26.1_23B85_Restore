@interface NDSpringBoard
+ (id)sharedSpringBoard;
- (BOOL)application:(id)a3 hasAssertionWithName:(id)a4;
- (BOOL)application:(id)a3 isHandlingBackgroundSessionWithIdentifier:(id)a4 withSessionUUID:(id)a5;
- (BOOL)applicationBackgroundUpdatesEnabled:(id)a3;
- (BOOL)applicationHasBackgroundTaskCompletion:(id)a3;
- (BOOL)applicationIsForeground:(id)a3;
- (BOOL)identifierIsForSpringBoardApplication:(id)a3;
- (BOOL)isValidAssertion:(id)a3 withName:(id)a4;
- (BOOL)wakeUpApp:(id)a3 forSession:(id)a4 withSessionUUID:(id)a5;
- (NDSpringBoard)init;
- (id)assertionNameForSessionUUID:(id)a3;
- (id)getBackgroundSettingsAppList;
- (void)_onqueue_releaseAssertionForBundleID:(id)a3 sessionID:(id)a4;
- (void)addObserver:(id)a3 forApplication:(id)a4;
- (void)dealloc;
- (void)handleBackgroundSettingsChange;
- (void)handleStateUpdate:(id)a3 forProcess:(id)a4;
- (void)monitoredBundleIDsUpdated;
- (void)releaseAssertionForBundleID:(id)a3 sessionID:(id)a4;
- (void)removeObserver:(id)a3 forApplication:(id)a4;
- (void)startMonitoringBundleID:(id)a3;
- (void)stopMonitoringBundleID:(id)a3;
@end

@implementation NDSpringBoard

+ (id)sharedSpringBoard
{
  if (qword_1000EB1F0 != -1)
  {
    dispatch_once(&qword_1000EB1F0, &stru_1000D6050);
  }

  v3 = qword_1000EB1F8;

  return v3;
}

- (id)getBackgroundSettingsAppList
{
  +[NSUserDefaults resetStandardUserDefaults];
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.mt"];

  v4 = [v3 objectForKey:@"KeepAppsUpToDateAppList"];

  return v4;
}

- (void)monitoredBundleIDsUpdated
{
  monitor = self->_monitor;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000472C;
  v3[3] = &unk_1000D60A0;
  v3[4] = self;
  [(RBSProcessMonitor *)monitor updateConfiguration:v3];
}

- (BOOL)identifierIsForSpringBoardApplication:(id)a3
{
  v3 = a3;
  v4 = +[Daemon sharedDaemon];
  v5 = [v4 applicationIsInstalled:v3];

  return v5;
}

- (BOOL)wakeUpApp:(id)a3 forSession:(id)a4 withSessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v29 = a5;
  v10 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v29;
    *&buf[22] = 2112;
    v48 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Will request wake of app %{public}@ for NDSession <%{public}@> with identifier %@", buf, 0x20u);
  }

  v11 = [NSDictionary dictionaryWithObject:v9 forKey:@"UIApplicationLaunchOptionsURLSessionKey", v29];
  v51[0] = FBSOpenApplicationOptionKeyActivateSuspended;
  v51[1] = FBSOpenApplicationOptionKeyPayloadOptions;
  v52[0] = &__kCFBooleanTrue;
  v52[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
  v13 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = sub_100072F78;
  v49 = sub_100072F88;
  v50 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100072F78;
  v39 = sub_100072F88;
  v40 = 0;
  v14 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v15 = self;
  v16 = [FBSOpenApplicationOptions optionsWithDictionary:v12];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100072F90;
  v31[3] = &unk_1000D61A8;
  v33 = buf;
  v34 = &v35;
  v17 = v13;
  v32 = v17;
  [v14 openApplication:v8 withOptions:v16 completion:v31];

  v18 = dispatch_time(0, 10000000000);
  v19 = dispatch_semaphore_wait(v17, v18);
  v20 = v36[5];
  if (v20 || (v23 = *(*&buf[8] + 40)) == 0)
  {
    v21 = qword_1000EB210;
    if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *v41 = 138543874;
    v42 = v8;
    v43 = 2112;
    v44 = v20;
    v45 = 1024;
    v46 = v19 != 0;
    v26 = "Failed to open application %{public}@, error: %@ timeout: %{BOOL}d";
    v27 = v21;
    v28 = 28;
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v26, v41, v28);
    goto LABEL_5;
  }

  v24 = -[NDSpringBoard takeAssertionForBundleID:sessionID:sessionUUID:pid:](v15, "takeAssertionForBundleID:sessionID:sessionUUID:pid:", v8, v9, v30, [v23 pid]);
  v25 = qword_1000EB210;
  if ((v24 & 1) == 0)
  {
    if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *v41 = 138543362;
    v42 = v8;
    v26 = "Failed to take process assertion for %{public}@";
    v27 = v25;
    v28 = 12;
    goto LABEL_13;
  }

  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 138543362;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Successfully woke application %{public}@ and took process assertion", v41, 0xCu);
  }

LABEL_5:

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);

  return 1;
}

- (id)assertionNameForSessionUUID:(id)a3
{
  v3 = [NSString stringWithFormat:@"com.apple.nsurlsessiond.handlesession %@", a3];

  return v3;
}

- (void)releaseAssertionForBundleID:(id)a3 sessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007355C;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_onqueue_releaseAssertionForBundleID:(id)a3 sessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_assertion_lock);
  v8 = [(NSMutableDictionary *)self->_assertions objectForKeyedSubscript:v6];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_assertions objectForKeyedSubscript:v6];
    [v10 removeObjectForKey:v7];

    os_unfair_lock_unlock(&self->_assertion_lock);
    v11 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Invalidating assertion for bundleID: %{public}@. sessionID: %@", &v12, 0x16u);
    }

    [v9 invalidate];
  }

  else
  {
    os_unfair_lock_unlock(&self->_assertion_lock);
  }
}

- (BOOL)applicationBackgroundUpdatesEnabled:(id)a3
{
  v4 = a3;
  if (self->_backgroundUpdatesAllowed)
  {
    v5 = [(NSMutableDictionary *)self->_observedBackgroundSettings objectForKeyedSubscript:v4];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)application:(id)a3 isHandlingBackgroundSessionWithIdentifier:(id)a4 withSessionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NDSpringBoard *)self assertionNameForSessionUUID:v10];
  v12 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = v11;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "looking for background session %@ for bundle id %{public}@", &v17, 0x16u);
  }

  if (v9)
  {
    os_unfair_lock_lock(&self->_assertion_lock);
    v13 = [(NSMutableDictionary *)self->_assertions objectForKeyedSubscript:v8];
    v14 = [v13 objectForKeyedSubscript:v9];

    os_unfair_lock_unlock(&self->_assertion_lock);
    if (v14)
    {
      v15 = [(NDSpringBoard *)self isValidAssertion:v14 withName:v11];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [(NDSpringBoard *)self application:v8 hasAssertionWithName:v11];
  }

  return v15;
}

- (BOOL)applicationHasBackgroundTaskCompletion:(id)a3
{
  v3 = a3;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "looking for background task completion for bundle id %{public}@", buf, 0xCu);
  }

  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v3];
  v6 = [RBSProcessHandle handleForPredicate:v5 error:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 currentState];
  v8 = [v7 assertions];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v13 + 1) + 8 * i) reason] == 4)
        {
          LOBYTE(v9) = 1;
          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

- (BOOL)application:(id)a3 hasAssertionWithName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  os_unfair_lock_lock(&self->_assertion_lock);
  v8 = [(NSMutableDictionary *)self->_assertions objectForKeyedSubscript:v6];
  os_unfair_lock_unlock(&self->_assertion_lock);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100073D58;
  v14[3] = &unk_1000D6180;
  v14[4] = self;
  v9 = v7;
  v15 = v9;
  v16 = &v17;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];
  v10 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_INFO))
  {
    if (*(v18 + 24))
    {
      v11 = "found";
    }

    else
    {
      v11 = "could not find";
    }

    *buf = 136315650;
    v22 = v11;
    v23 = 2112;
    v24 = v9;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s assertion with name %@ for bundle id %{public}@", buf, 0x20u);
  }

  v12 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v12 & 1;
}

- (BOOL)isValidAssertion:(id)a3 withName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "validating assertion %@", &v10, 0xCu);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v5 explanation];
  if (![v7 isEqualToString:v6])
  {
    v8 = 0;
LABEL_7:

    goto LABEL_8;
  }

LABEL_6:
  v8 = [v5 isValid];
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v8;
}

- (BOOL)applicationIsForeground:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100072F78;
  v15 = sub_100072F88;
  v16 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074008;
  block[3] = &unk_1000D6158;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  v9 = v6;
  dispatch_sync(queue, block);
  LOBYTE(queue) = [v12[5] BOOLValue];

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)stopMonitoringBundleID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074214;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)startMonitoringBundleID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000743CC;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074630;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)addObserver:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007481C;
  block[3] = &unk_1000D6130;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)handleStateUpdate:(id)a3 forProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074A50;
  block[3] = &unk_1000D6130;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)handleBackgroundSettingsChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075374;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = NDSpringBoard;
  [(NDSpringBoard *)&v4 dealloc];
}

- (NDSpringBoard)init
{
  v26.receiver = self;
  v26.super_class = NDSpringBoard;
  v2 = [(NDSpringBoard *)&v26 init];
  v3 = v2;
  if (v2)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100075C44;
    v24[3] = &unk_1000D60A0;
    v4 = v2;
    v25 = v4;
    v5 = [RBSProcessMonitor monitorWithConfiguration:v24];
    monitor = v4->_monitor;
    v4->_monitor = v5;

    v7 = +[NSMutableDictionary dictionary];
    assertions = v4->_assertions;
    v4->_assertions = v7;

    v4->_assertion_lock._os_unfair_lock_opaque = 0;
    v9 = +[NSMutableDictionary dictionary];
    observers = v4->_observers;
    v4->_observers = v9;

    v11 = +[NSMutableDictionary dictionary];
    appIsForeground = v4->_appIsForeground;
    v4->_appIsForeground = v11;

    v13 = +[MCProfileConnection sharedConnection];
    v4->_backgroundUpdatesAllowed = [v13 isAutomaticAppUpdatesAllowed];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_100075D58, @"kKeepAppsUpToDateEnabledChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v15 = +[NSMutableDictionary dictionary];
    observedBackgroundSettings = v4->_observedBackgroundSettings;
    v4->_observedBackgroundSettings = v15;

    v17 = +[NSMutableSet set];
    monitoredBundleIDs = v4->_monitoredBundleIDs;
    v4->_monitoredBundleIDs = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_UTILITY, 0);
    v21 = dispatch_queue_create("com.apple.nsnetwork.SpringBoard-queue", v20);
    queue = v4->_queue;
    v4->_queue = v21;
  }

  return v3;
}

@end