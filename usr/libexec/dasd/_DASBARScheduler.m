@interface _DASBARScheduler
+ (id)barSchedulerWithScheduler:(id)a3;
- (BOOL)appUsesBackgroundTaskScheduler:(id)a3;
- (BOOL)applicationStateRequiresImmediateDelivery:(id)a3;
- (BOOL)backgroundAppRefreshEnabledForApp:(id)a3;
- (BOOL)backgroundLaunchAllowedForApp:(id)a3;
- (BOOL)backgroundLaunchAllowedForBGTaskActivity:(id)a3;
- (BOOL)isBAREnabledOnWiFiOnly;
- (BOOL)isNewsstandApp:(id)a3;
- (BOOL)pushLaunchAllowedForApp:(id)a3 immediately:(BOOL *)a4;
- (_DASBARScheduler)initWithScheduler:(id)a3;
- (double)minimumDelayBetweenLaunchesForApp:(id)a3;
- (id)appsLaunchedInLastDays:(int)a3;
- (id)queueAppsEligibleForBackgroundFetchInSet:(id)a3;
- (id)queueAppsWithDelaySpecifiedInSet:(id)a3;
- (id)queueObtainAppsEligibleForBackgroundFetch;
- (id)queuePendingRefreshes;
- (id)topNAppsUserHasLaunchedInSet:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)cancelActivitiesForAllApps;
- (void)createBARApplicationGroup;
- (void)dealloc;
- (void)determineAppsWithBackgroundRunningModes;
- (void)disableAppRefreshForApps:(id)a3;
- (void)handleAppsForegrounded:(id)a3;
- (void)queueCancelActivitiesForAllApps;
- (void)queueCancelActivitiesForApps:(id)a3;
- (void)queueHandleAppKilled:(id)a3;
- (void)queueHandleAppsKilled:(id)a3;
- (void)queueHandleAppsRevived:(id)a3;
- (void)queueHandleAppsUninstalled:(id)a3;
- (void)queueHandleBARSettingsChangedNotification:(BOOL)a3;
- (void)queueReloadRequestedDelays;
- (void)queueScheduleActivitiesForEligibleApps:(id)a3 withDelay:(BOOL)a4;
- (void)queueScheduleActivityForApp:(id)a3 startingAfter:(id)a4;
- (void)queueStartIfBAREnabled;
- (void)queueUpdateLastLaunchTimesToDate:(id)a3 forApps:(id)a4;
- (void)queue_cancelBackgroundTasksForUnusedApps;
- (void)quitMonitor:(id)a3 userClosedLastSceneOfApplicationWithBundleID:(id)a4;
- (void)recordBARState;
- (void)registerForAppKilledNotifications;
- (void)registerForBARNotifications;
- (void)reloadRequestedDelays;
- (void)setMinimumBackgroundFetchInterval:(double)a3 forApp:(id)a4;
- (void)start;
- (void)startIfBAREnabled;
@end

@implementation _DASBARScheduler

- (_DASBARScheduler)initWithScheduler:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = _DASBARScheduler;
  v6 = [(_DASBARScheduler *)&v44 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.backgroundAppRefresh.syncQueue", v7);
    v9 = *(v6 + 3);
    *(v6 + 3) = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.backgroundAppRefresh.schedulingQueue", v10);
    v12 = *(v6 + 4);
    *(v6 + 4) = v11;

    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v6 + 3));
    v14 = *(v6 + 5);
    *(v6 + 5) = v13;

    v15 = *(v6 + 5);
    dispatch_set_qos_class_fallback();
    objc_storeStrong(v6 + 6, a3);
    v16 = +[NSMutableDictionary dictionary];
    v17 = *(v6 + 21);
    *(v6 + 21) = v16;

    v18 = [_DASDaemonLogger logForCategory:@"bar"];
    v19 = *(v6 + 22);
    *(v6 + 22) = v18;

    v20 = +[NSMutableSet set];
    v21 = *(v6 + 12);
    *(v6 + 12) = v20;

    v22 = +[NSMutableSet set];
    v23 = *(v6 + 13);
    *(v6 + 13) = v22;

    v24 = +[NSMutableSet set];
    v25 = *(v6 + 14);
    *(v6 + 14) = v24;

    v26 = +[NSMutableSet set];
    v27 = *(v6 + 17);
    *(v6 + 17) = v26;

    v28 = +[NSMutableSet set];
    v29 = *(v6 + 18);
    *(v6 + 18) = v28;

    v30 = +[NSMutableSet set];
    v31 = *(v6 + 15);
    *(v6 + 15) = v30;

    v32 = +[NSMutableSet set];
    v33 = *(v6 + 16);
    *(v6 + 16) = v32;

    v34 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mt"];
    v35 = *(v6 + 8);
    *(v6 + 8) = v34;

    v36 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mt.launchDelay"];
    v37 = *(v6 + 9);
    *(v6 + 9) = v36;

    v38 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mt.lastLaunch"];
    v39 = *(v6 + 10);
    *(v6 + 10) = v38;

    v40 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mt.killed"];
    v41 = *(v6 + 11);
    *(v6 + 11) = v40;

    [v6 registerForAppKilledNotifications];
    [v6 reloadRequestedDelays];
    v42 = +[LSApplicationWorkspace defaultWorkspace];
    [v42 addObserver:v6];
  }

  return v6;
}

+ (id)barSchedulerWithScheduler:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithScheduler:v3];

  return v4;
}

- (void)dealloc
{
  barSettingsChangedToken = self->_barSettingsChangedToken;
  if (barSettingsChangedToken)
  {
    notify_cancel(barSettingsChangedToken);
  }

  v4.receiver = self;
  v4.super_class = _DASBARScheduler;
  [(_DASBARScheduler *)&v4 dealloc];
}

- (id)queueAppsEligibleForBackgroundFetchInSet:(id)a3
{
  v4 = [a3 mutableCopy];
  [v4 intersectSet:self->_fetchEnabledApps];
  [v4 minusSet:self->_killedApps];
  [v4 minusSet:self->_disallowedApps];
  v5 = [(_DASBARScheduler *)self queueAppsWithDelaySpecifiedInSet:v4];
  v6 = [(_DASBARScheduler *)self topNAppsUserHasLaunchedInSet:v5];

  v7 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) dk_dedup];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)queueObtainAppsEligibleForBackgroundFetch
{
  [(_DASBARScheduler *)self determineAppsWithBackgroundRunningModes];
  v3 = [(_DASBARScheduler *)self queueAppsEligibleForBackgroundFetchInSet:self->_fetchEnabledApps];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Apps Eligible: %@", &v6, 0xCu);
  }

  return v3;
}

- (void)determineAppsWithBackgroundRunningModes
{
  v29 = +[NSMutableSet set];
  v25 = os_transaction_create();
  context = objc_autoreleasePoolPush();
  v3 = [LSApplicationRecord enumeratorWithOptions:0];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    v26 = v3;
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      if (([v5 isLaunchProhibited] & 1) == 0)
      {
        v7 = [v5 applicationState];
        v8 = [v7 isRestricted];

        if ((v8 & 1) == 0)
        {
          break;
        }
      }

LABEL_23:
      objc_autoreleasePoolPop(v6);
      v23 = [v3 nextObject];

      v5 = v23;
      if (!v23)
      {
        goto LABEL_24;
      }
    }

    v27 = v6;
    v9 = [v5 UIBackgroundModes];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v10)
    {
      goto LABEL_22;
    }

    v11 = v10;
    v12 = *v31;
LABEL_7:
    v13 = 0;
    while (1)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v30 + 1) + 8 * v13);
      if ([v14 isEqualToString:@"fetch"] && !-[_DASBARScheduler appUsesBackgroundTaskScheduler:](self, "appUsesBackgroundTaskScheduler:", v5))
      {
        v19 = self->_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          log = v19;
          v21 = [v5 localizedName];
          v22 = [v5 bundleIdentifier];
          *buf = 138412546;
          v35 = v21;
          v36 = 2112;
          v37 = v22;
          _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@ (%@) eligible for BAR", buf, 0x16u);
        }

        v20 = [v5 bundleIdentifier];
        v16 = [v20 dk_dedup];

        [v29 addObject:v16];
        p_fetchEnabledApps = &self->_fetchEnabledApps;
        goto LABEL_19;
      }

      if ([v14 isEqualToString:@"remote-notification"])
      {
        break;
      }

      if ([v14 isEqualToString:@"newsstand"])
      {
        v18 = [v5 bundleIdentifier];
        v16 = [v18 dk_dedup];

        p_fetchEnabledApps = &self->_newsstandApps;
        goto LABEL_19;
      }

LABEL_20:
      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (!v11)
        {
LABEL_22:

          v3 = v26;
          v6 = v27;
          goto LABEL_23;
        }

        goto LABEL_7;
      }
    }

    v15 = [v5 bundleIdentifier];
    v16 = [v15 dk_dedup];

    p_fetchEnabledApps = &self->_pushEnabledApps;
LABEL_19:
    [(NSMutableSet *)*p_fetchEnabledApps addObject:v16];

    goto LABEL_20;
  }

LABEL_24:

  objc_autoreleasePoolPop(context);
}

- (id)queueAppsWithDelaySpecifiedInSet:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 mutableCopy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_appToMinimumLaunchDelay valueForKey:v11];

          if (!v12)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v21 = v11;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "No delay specified for %@", buf, 0xCu);
            }

            [v5 removeObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v8);
    }

    v4 = v15;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (id)topNAppsUserHasLaunchedInSet:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v46 = os_transaction_create();
    context = objc_autoreleasePoolPush();
    v5 = +[NSMutableArray array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v59;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v59 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [_DKQuery predicateForEventsWithStringValue:*(*(&v58 + 1) + 8 * i)];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v8);
    }

    v12 = [NSDate dateWithTimeIntervalSinceNow:-1209600.0];
    v13 = [_DASBMHistogramBuilder builderForAppInFocusStreamStarting:v12];
    v14 = [_DASBMMinimumSpanConfiguration configurationForAppInFocusWithMinimumDuration:10.0];
    [v13 setMinimumSpanConfiguration:v14];

    v15 = objc_autoreleasePoolPush();
    v16 = [v13 histogram];
    v17 = [v16 countsDictionary];

    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &__NSDictionary0__struct;
    }

    if ([v18 count] > 0x32)
    {
      v42 = v15;
      v43 = v13;
      v44 = v12;
      v45 = v4;
      v23 = [v18 allKeys];
      v24 = [v23 mutableCopy];

      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1000A3DA4;
      v56[3] = &unk_1001B7A90;
      v41 = v18;
      v57 = v18;
      [v24 sortUsingComparator:v56];
      v25 = +[NSMutableSet set];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v26 = v24;
      v27 = [v26 countByEnumeratingWithState:&v52 objects:v65 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = 0;
        v30 = *v53;
LABEL_17:
        v31 = 0;
        while (1)
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v52 + 1) + 8 * v31);
          if ([v6 containsObject:{v32, v41}])
          {
            v33 = [v32 dk_dedup];
            [v25 addObject:v33];

            if (++v29 == 50)
            {
              break;
            }
          }

          if (v28 == ++v31)
          {
            v28 = [v26 countByEnumeratingWithState:&v52 objects:v65 count:16];
            if (v28)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }

      v21 = [v25 mutableCopy];
      v12 = v44;
      v4 = v45;
      v15 = v42;
      v13 = v43;
      v20 = v41;
    }

    else
    {
      v19 = [v18 allKeys];
      [NSMutableSet setWithArray:v19];
      v21 = v20 = v18;

      [v21 intersectSet:v6];
    }

    objc_autoreleasePoolPop(v15);
    objc_autoreleasePoolPop(context);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v22 = v21;
    v34 = [v22 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v49;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v22);
          }

          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v39 = *(*(&v48 + 1) + 8 * j);
            *buf = 138412290;
            v63 = v39;
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "User has launched: %@", buf, 0xCu);
          }
        }

        v35 = [v22 countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v35);
    }
  }

  else
  {
    v22 = v4;
  }

  return v22;
}

- (BOOL)isBAREnabledOnWiFiOnly
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  LOBYTE(self) = [(NSUserDefaults *)self->_barPreferences BOOLForKey:@"WiFiOnly"];
  objc_autoreleasePoolPop(v4);

  return self;
}

- (void)queueHandleBARSettingsChangedNotification:(BOOL)a3
{
  v3 = a3;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  v7 = [(_DASBARScheduler *)self isBAREnabledOnWiFiOnly];
  v8 = v7;
  barEnabled = self->_barEnabled;
  if (!v3 || barEnabled)
  {
    v11 = !barEnabled;
    if ((v11 & 1) != 0 || v3)
    {
      if (((!v3 | v11) & 1) == 0)
      {
        barWiFiOnly = self->_barWiFiOnly;
        if (barWiFiOnly != v7)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            sub_100126CBC(v8, log);
          }

          self->_barWiFiOnly = v8;
        }

        v15 = +[NSMutableSet set];
        v16 = +[NSMutableSet set];
        v17 = [(NSUserDefaults *)self->_barPreferences dictionaryForKey:@"KeepAppsUpToDateAppList"];
        v18 = [v17 mutableCopy];

        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_1000A4470;
        v59[3] = &unk_1001B7000;
        v19 = v16;
        v60 = v19;
        v20 = v15;
        v61 = v20;
        [v18 enumerateKeysAndObjectsUsingBlock:v59];
        if ([v20 count])
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            sub_100126D34();
          }

          [(_DASBARScheduler *)self queueCancelActivitiesForApps:v20];
          [(_DASDaemon *)self->_scheduler cancelPushLaunchTasksForApps:v20];
          [(_DASDaemon *)self->_scheduler cancelBackgroundTasksForApps:v20];
          [(NSMutableSet *)self->_disallowedApps unionSet:v20];
        }

        if ([v19 count])
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            sub_100126D9C();
          }

          v21 = [(_DASBARScheduler *)self queuePendingRefreshes];
          [v19 minusSet:v21];
          [(NSMutableSet *)self->_disallowedApps minusSet:v19];
          [(_DASBARScheduler *)self queueScheduleActivitiesForEligibleApps:v19 withDelay:1];
        }

        if (barWiFiOnly != v8)
        {
          v46 = v20;
          v47 = v19;
          v49 = v6;
          v50 = v5;
          v22 = [(_DASBARScheduler *)self queuePendingRefreshes];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v23 = [v22 countByEnumeratingWithState:&v55 objects:v67 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v56;
            do
            {
              v26 = 0;
              do
              {
                if (*v56 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v55 + 1) + 8 * v26);
                v28 = self->_barWiFiOnly;
                v29 = [(NSMutableDictionary *)self->_appsToPendingTasks objectForKeyedSubscript:v27];
                [v29 setRequiresInexpensiveNetworking:v28];

                v30 = self->_log;
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  appsToPendingTasks = self->_appsToPendingTasks;
                  v32 = v30;
                  v33 = [(NSMutableDictionary *)appsToPendingTasks objectForKeyedSubscript:v27];
                  v34 = v33;
                  v35 = @"does not require";
                  if (self->_barWiFiOnly)
                  {
                    v35 = @"requires";
                  }

                  *buf = 138412546;
                  v64 = v33;
                  v65 = 2112;
                  v66 = v35;
                  _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Activity %@ now %@ inexepensive networking", buf, 0x16u);
                }

                v26 = v26 + 1;
              }

              while (v24 != v26);
              v36 = [v22 countByEnumeratingWithState:&v55 objects:v67 count:16];
              v24 = v36;
            }

            while (v36);
          }

          v48 = v18;
          v37 = [(_DASDaemon *)self->_scheduler allPendingPushLaunchTasks];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v38 = [v37 countByEnumeratingWithState:&v51 objects:v62 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v52;
            do
            {
              v41 = 0;
              do
              {
                if (*v52 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v51 + 1) + 8 * v41);
                [v42 setRequiresInexpensiveNetworking:self->_barWiFiOnly];
                v43 = self->_log;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  v44 = @"does not require";
                  if (self->_barWiFiOnly)
                  {
                    v44 = @"requires";
                  }

                  *buf = 138412546;
                  v64 = v42;
                  v65 = 2112;
                  v66 = v44;
                  _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Activity %@ now %@ inexepensive networking", buf, 0x16u);
                }

                v41 = v41 + 1;
              }

              while (v39 != v41);
              v45 = [v37 countByEnumeratingWithState:&v51 objects:v62 count:16];
              v39 = v45;
            }

            while (v45);
          }

          v6 = v49;
          v5 = v50;
          v19 = v47;
          v18 = v48;
          v20 = v46;
        }
      }
    }

    else
    {
      v12 = self->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BAR now disabled", buf, 2u);
      }

      self->_barEnabled = 0;
      [(_DASBARScheduler *)self queueCancelActivitiesForAllApps];
      [(_DASDaemon *)self->_scheduler cancelAllBackgroundTasks];
      dispatch_suspend(self->_appUpdateTimer);
    }
  }

  else
  {
    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BAR now enabled", buf, 2u);
    }

    self->_barEnabled = 1;
    self->_barWiFiOnly = v8;
    [(_DASBARScheduler *)self queueStartIfBAREnabled];
  }

  [(_DASBARScheduler *)self recordBARState];
  objc_autoreleasePoolPop(v6);
}

- (void)registerForBARNotifications
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSUserDefaults *)self->_barPreferences dictionaryForKey:@"KeepAppsUpToDateAppList"];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4628;
  block[3] = &unk_1001B56E0;
  v11 = v4;
  v12 = self;
  v6 = v4;
  dispatch_sync(queue, block);

  objc_autoreleasePoolPop(v3);
  v7 = [@"kKeepAppsUpToDateEnabledChangedNotification" UTF8String];
  v8 = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000A474C;
  handler[3] = &unk_1001B5B78;
  handler[4] = self;
  notify_register_dispatch(v7, &self->_barSettingsChangedToken, v8, handler);
  [(_DASBARScheduler *)self recordBARState];
}

- (void)registerForAppKilledNotifications
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4848;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = [[SBSApplicationUserQuitMonitor alloc] initWithDelegate:self];
  quitMonitor = self->_quitMonitor;
  self->_quitMonitor = v4;
}

- (void)queueHandleAppKilled:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100126EE0();
  }

  if (([(NSMutableSet *)self->_killedApps containsObject:v4]& 1) == 0)
  {
    v5 = [v4 dk_dedup];
    v6 = [NSSet setWithObject:v5];

    [(NSMutableSet *)self->_killedApps unionSet:v6];
    killedAppPreferences = self->_killedAppPreferences;
    v8 = [(NSMutableSet *)self->_killedApps allObjects];
    [(NSUserDefaults *)killedAppPreferences setObject:v8 forKey:@"killed"];

    [(_DASBARScheduler *)self queueCancelActivitiesForApps:v6];
    schedulingQueue = self->_schedulingQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A4AF0;
    v11[3] = &unk_1001B56E0;
    v11[4] = self;
    v12 = v6;
    v10 = v6;
    dispatch_async(schedulingQueue, v11);
  }
}

- (void)queueHandleAppsKilled:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_killedApps containsObject:v10]& 1) == 0)
        {
          killedApps = self->_killedApps;
          v12 = [v10 dk_dedup];
          [(NSMutableSet *)killedApps addObject:v12];

          v8 = 0;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
    if ((v8 & 1) == 0)
    {
      killedAppPreferences = self->_killedAppPreferences;
      v14 = [(NSMutableSet *)self->_killedApps allObjects];
      [(NSUserDefaults *)killedAppPreferences setObject:v14 forKey:@"killed"];

      [(_DASBARScheduler *)self queueCancelActivitiesForApps:v4];
      [(_DASDaemon *)self->_scheduler cancelAppRefreshTasksForApps:v4];
    }
  }
}

- (void)queueHandleAppsRevived:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  v9 = v6;
  if (!v7)
  {
    goto LABEL_14;
  }

  v10 = v7;
  v11 = 0;
  v12 = *v20;
  *&v8 = 138412290;
  v18 = v8;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      if ([(NSMutableSet *)self->_killedApps containsObject:v14, v18, v19])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          *buf = v18;
          v24 = v14;
          _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "App revived: %@", buf, 0xCu);
        }

        [(NSMutableSet *)self->_killedApps removeObject:v14];
        v16 = [v14 dk_dedup];
        [v5 addObject:v16];

        v11 = 1;
      }
    }

    v10 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  }

  while (v10);

  if (v11)
  {
    killedAppPreferences = self->_killedAppPreferences;
    v9 = [(NSMutableSet *)self->_killedApps allObjects];
    [(NSUserDefaults *)killedAppPreferences setObject:v9 forKey:@"killed"];
LABEL_14:
  }
}

- (void)queueHandleAppsUninstalled:(id)a3
{
  v4 = a3;
  [(_DASBARScheduler *)self queueCancelActivitiesForApps:v4];
  schedulingQueue = self->_schedulingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5094;
  block[3] = &unk_1001B56E0;
  block[4] = self;
  v6 = v4;
  v22 = v6;
  dispatch_async(schedulingQueue, block);
  [(NSMutableSet *)self->_fetchEnabledApps minusSet:v6];
  [(NSMutableSet *)self->_pushEnabledApps minusSet:v6];
  [(NSMutableSet *)self->_newsstandApps minusSet:v6];
  v7 = [(NSUserDefaults *)self->_barPreferences dictionaryForKey:@"KeepAppsUpToDateAppList"];
  v8 = [v7 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_appToMinimumLaunchDelay removeObjectForKey:v14, v17];
        [v8 removeObjectForKey:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  barPreferences = self->_barPreferences;
  v16 = [v8 copy];
  [(NSUserDefaults *)barPreferences setObject:v16 forKey:@"KeepAppsUpToDateAppList"];

  [(NSUserDefaults *)self->_delayPreferences setObject:self->_appToMinimumLaunchDelay forKey:@"delays"];
  [(_DASBARScheduler *)self queueUpdateLastLaunchTimesToDate:0 forApps:v9];
  [(_DASBARScheduler *)self queueHandleAppsRevived:v9];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A5158;
  v8[3] = &unk_1001B56E0;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(queue, v8);
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5358;
  block[3] = &unk_1001B56B8;
  v10 = v5;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v5;
  dispatch_sync(queue, block);
}

- (id)appsLaunchedInLastDays:(int)a3
{
  v20 = os_transaction_create();
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSDate date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * a3)];
  v10 = [BMPublisherOptions optionsWithStartDate:v9];
  v11 = BiomeLibrary();
  v12 = [v11 App];
  v13 = [v12 InFocus];
  v14 = [v13 publisherWithOptions:v10];
  v15 = [v14 filterWithIsIncluded:&stru_1001B7AB0];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A586C;
  v24[3] = &unk_1001B5570;
  v24[4] = self;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000A58DC;
  v21[3] = &unk_1001B7AD8;
  v23 = v8;
  v22 = v5;
  v16 = v5;
  v17 = [v15 sinkWithCompletion:v24 receiveInput:v21];

  v18 = [v16 copy];

  return v18;
}

- (void)queue_cancelBackgroundTasksForUnusedApps
{
  v3 = [(_DASBARScheduler *)self appsLaunchedInLastDays:14];
  [(NSMutableSet *)self->_appsLaunchedInLastFourteenDays removeAllObjects];
  [(NSMutableSet *)self->_appsLaunchedInLastThreeDays removeAllObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A5B14;
  v8[3] = &unk_1001B5608;
  v8[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  schedulingQueue = self->_schedulingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5B8C;
  block[3] = &unk_1001B56E0;
  block[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(schedulingQueue, block);
}

- (id)queuePendingRefreshes
{
  v3 = +[NSMutableSet set];
  v4 = [(NSMutableDictionary *)self->_appsToPendingTasks allKeys];
  [v3 addObjectsFromArray:v4];

  return v3;
}

- (void)queueCancelActivitiesForAllApps
{
  v3 = [(NSMutableDictionary *)self->_appsToPendingTasks allValues];
  [(NSMutableDictionary *)self->_appsToPendingTasks removeAllObjects];
  schedulingQueue = self->_schedulingQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A5E1C;
  v6[3] = &unk_1001B56E0;
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_async(schedulingQueue, v6);
}

- (void)cancelActivitiesForAllApps
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5F94;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)queueCancelActivitiesForApps:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_appsToPendingTasks objectForKeyedSubscript:v11];
        if (v12)
        {
          [v5 addObject:v12];
          [(NSMutableDictionary *)self->_appsToPendingTasks removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  schedulingQueue = self->_schedulingQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A6154;
  v15[3] = &unk_1001B56E0;
  v16 = v5;
  v17 = self;
  v14 = v5;
  dispatch_async(schedulingQueue, v15);
}

- (void)queueScheduleActivitiesForEligibleApps:(id)a3 withDelay:(BOOL)a4
{
  v6 = a3;
  v17 = os_transaction_create();
  v18 = v6;
  v7 = [(_DASBARScheduler *)self queueAppsEligibleForBackgroundFetchInSet:v6];
  v8 = +[NSDate date];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        if (a4)
        {
          v15 = [(NSMutableDictionary *)self->_appToMinimumLaunchDelay objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v13)];
          [v15 doubleValue];
          v16 = [v8 dateByAddingTimeInterval:?];
          [(_DASBARScheduler *)self queueScheduleActivityForApp:v14 startingAfter:v16];
        }

        else
        {
          [(_DASBARScheduler *)self queueScheduleActivityForApp:*(*(&v19 + 1) + 8 * v13) startingAfter:v8];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)queueScheduleActivityForApp:(id)a3 startingAfter:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Scheduling refresh for %@", buf, 0xCu);
  }

  if ([v6 isEqualToString:@"com.apple.purplebuddy"])
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100126FEC(v9);
    }
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_appToMinimumLaunchDelay objectForKeyedSubscript:v6];

    if (v10)
    {
      v11 = [NSString stringWithFormat:@"%@%@", @"com.apple.fetch.", v6];
      v12 = _DASSchedulingPriorityBackground;
      v13 = _DASLaunchReasonBackgroundFetch;
      v14 = _DASActivityDurationVeryShort;
      v15 = [v7 dateByAddingTimeInterval:86400.0];
      v16 = [_DASActivity applicationLaunchActivityWithName:v11 priority:v12 forApplication:v6 withReason:v13 duration:v14 startingAfter:v7 startingBefore:v15];

      [v16 setShouldBePersisted:0];
      [v16 setRequiresNetwork:1];
      [v16 setRequiresInexpensiveNetworking:self->_barWiFiOnly];
      [v16 setTransferSize:_DASActivityTransferSizeSmall];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000A66DC;
      v22[3] = &unk_1001B7B28;
      v22[4] = self;
      v17 = v6;
      v23 = v17;
      [v16 setStartHandler:v22];
      [(NSMutableDictionary *)self->_appsToPendingTasks setObject:v16 forKeyedSubscript:v17];
      schedulingQueue = self->_schedulingQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A686C;
      block[3] = &unk_1001B56E0;
      block[4] = self;
      v21 = v16;
      v19 = v16;
      dispatch_async(schedulingQueue, block);
    }
  }
}

- (void)createBARApplicationGroup
{
  v3 = [_DASActivityGroup groupWithName:@"com.apple.backgroundAppRefresh" maxConcurrent:3];
  barGroup = self->_barGroup;
  self->_barGroup = v3;

  schedulingQueue = self->_schedulingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A691C;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_async(schedulingQueue, block);
}

- (void)queueStartIfBAREnabled
{
  [(_DASBARScheduler *)self queueReloadRequestedDelays];
  [(_DASBARScheduler *)self createBARApplicationGroup];
  v3 = [(_DASBARScheduler *)self queueObtainAppsEligibleForBackgroundFetch];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = +[NSDate date];
        [(_DASBARScheduler *)self queueScheduleActivityForApp:v8 startingAfter:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  appUpdateTimer = self->_appUpdateTimer;
  v11 = dispatch_walltime(0, 1000000000);
  dispatch_source_set_timer(appUpdateTimer, v11, 0x9D29229E000uLL, 0x19254D3800uLL);
  v12 = self->_appUpdateTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000A6AF0;
  handler[3] = &unk_1001B5668;
  handler[4] = self;
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(self->_appUpdateTimer);
}

- (void)startIfBAREnabled
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6CD0;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)recordBARState
{
  if (self->_barEnabled)
  {
    if (self->_barWiFiOnly)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }
  }

  else
  {
    v2 = 1;
  }

  [_DASMetricRecorder setValue:v2 forKey:@"com.apple.dasd.barEnabled"];
}

- (void)start
{
  v3 = objc_autoreleasePoolPush();
  [(_DASBARScheduler *)self registerForBARNotifications];
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 isAutomaticAppUpdatesAllowed];
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "BAR enabled", buf, 2u);
    }

    self->_barEnabled = 1;
    self->_barWiFiOnly = [(_DASBARScheduler *)self isBAREnabledOnWiFiOnly];
    [(_DASBARScheduler *)self startIfBAREnabled];
  }

  else if (v7)
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "BAR disabled", v8, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)queueUpdateLastLaunchTimesToDate:(id)a3 forApps:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSUserDefaults *)self->_lastLaunchPreferences dictionaryForKey:@"launches"];
  v19 = v8;
  if (v8)
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = +[NSMutableDictionary dictionary];
  }

  v10 = v9;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_fetchEnabledApps containsObject:v16])
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v25 = v11;
            v26 = 2112;
            v27 = v6;
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Updating last launch time for %@ to %@", buf, 0x16u);
          }

          v18 = [v16 dk_dedup];
          [v10 setObject:v6 forKeyedSubscript:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  [(NSUserDefaults *)self->_lastLaunchPreferences setObject:v10 forKey:@"launches"];
}

- (void)handleAppsForegrounded:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSDate date];
  v8 = +[NSMutableSet set];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7168;
  block[3] = &unk_1001B5FF8;
  v10 = v5;
  v15 = v10;
  v16 = self;
  v11 = v4;
  v17 = v11;
  v18 = v8;
  v19 = v7;
  v12 = v7;
  v13 = v8;
  dispatch_sync(queue, block);

  objc_autoreleasePoolPop(v6);
}

- (BOOL)backgroundLaunchAllowedForApp:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A75D8;
  block[3] = &unk_1001B5D98;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)applicationStateRequiresImmediateDelivery:(id)a3
{
  v4 = a3;
  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v4];
  v12 = 0;
  v6 = [RBSProcessHandle handleForPredicate:v5 error:&v12];
  v7 = v12;

  if (v7)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1001270D8();
    }

    v8 = 0;
  }

  else
  {
    v9 = [v6 currentState];
    if ([v9 isDebugging])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        sub_10012714C();
      }

      v8 = 1;
    }

    else if ([v9 taskState] == 4)
    {
      log = self->_log;
      v8 = 1;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Remote Notification: %@ - Running", buf, 0xCu);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)pushLaunchAllowedForApp:(id)a3 immediately:(BOOL *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
    if ([(_DASBARScheduler *)self applicationStateRequiresImmediateDelivery:v6])
    {
      v7 = 1;
      *a4 = 1;
      goto LABEL_18;
    }
  }

  else if ([(_DASBARScheduler *)self applicationStateRequiresImmediateDelivery:v6])
  {
    v7 = 1;
    goto LABEL_18;
  }

  if (self->_barEnabled)
  {
    *&v25 = 0;
    *(&v25 + 1) = &v25;
    v26 = 0x2020000000;
    v27 = 1;
    queue = self->_queue;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000A7A48;
    v18 = &unk_1001B7B50;
    v21 = &v25;
    v19 = self;
    v9 = v6;
    v20 = v9;
    v22 = a4;
    dispatch_sync(queue, &v15);
    if (a4 && *a4 || (+[_APRSPrewarmInterface sharedInstance](_APRSPrewarmInterface, "sharedInstance", v15, v16, v17, v18, v19), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 hasPrewarmAssertionForApplication:v9], v10, !v11))
    {
      v7 = *(*(&v25 + 1) + 24);
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Remote Notification: %@ - Prewarm Assertion", buf, 0xCu);
      }

      v7 = 0;
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(v25) = 138412290;
      *(&v25 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Remote Notification: %@ - BAR Disabled", &v25, 0xCu);
    }

    v7 = 0;
  }

LABEL_18:

  return v7 & 1;
}

- (BOOL)isNewsstandApp:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A7D70;
    block[3] = &unk_1001B5D98;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(queue, block);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)quitMonitor:(id)a3 userClosedLastSceneOfApplicationWithBundleID:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_quitMonitor == a3)
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A7E5C;
    v9[3] = &unk_1001B56E0;
    v9[4] = self;
    v10 = v6;
    dispatch_sync(queue, v9);
  }
}

- (void)reloadRequestedDelays
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7EDC;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)queueReloadRequestedDelays
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSUserDefaults *)self->_delayPreferences dictionaryForKey:@"delays"];
  +[NSMutableDictionary dictionary];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A7FF8;
  v5 = v8[3] = &unk_1001B5608;
  v9 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1001271B4();
  }

  appToMinimumLaunchDelay = self->_appToMinimumLaunchDelay;
  self->_appToMinimumLaunchDelay = v5;
  v7 = v5;

  objc_autoreleasePoolPop(v3);
}

- (double)minimumDelayBetweenLaunchesForApp:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FEFFFFFFFFFFFFFLL;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8144;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)setMinimumBackgroundFetchInterval:(double)a3 forApp:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8250;
  block[3] = &unk_1001B5DC0;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (BOOL)backgroundAppRefreshEnabledForApp:(id)a3
{
  if (!self->_barEnabled)
  {
    return 0;
  }

  barPreferences = self->_barPreferences;
  v4 = a3;
  v5 = [(NSUserDefaults *)barPreferences dictionaryForKey:@"KeepAppsUpToDateAppList"];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)disableAppRefreshForApps:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Disabling BAR for %@", &v6, 0xCu);
  }

  [(_DASBARScheduler *)self queueHandleAppsKilled:v4];
}

- (BOOL)appUsesBackgroundTaskScheduler:(id)a3
{
  v3 = [a3 backgroundTaskSchedulerPermittedIdentifiers];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)backgroundLaunchAllowedForBGTaskActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 launchReason];
  v6 = _DASLaunchReasonBackgroundProcessing;
  if ([v5 isEqualToString:_DASLaunchReasonBackgroundProcessing])
  {
    goto LABEL_4;
  }

  v7 = [v4 launchReason];
  if ([v7 isEqualToString:_DASLaunchReasonHealthResearch])
  {

LABEL_4:
    goto LABEL_5;
  }

  v23 = [v4 launchReason];
  v24 = [v23 isEqualToString:_DASLaunchReasonBackgroundRefresh];

  if (v24)
  {
LABEL_5:
    v8 = os_transaction_create();
    v9 = [v4 relatedApplications];
    v10 = [v9 firstObject];

    v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v10 allowPlaceholder:0 error:0];
    v12 = [v11 applicationState];
    v13 = [v12 isValid];

    if ((v13 & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10012721C();
      }

      goto LABEL_33;
    }

    v14 = [v11 applicationState];
    v15 = [v14 isInstalled];

    if ((v15 & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_1001272B4();
      }

      goto LABEL_33;
    }

    v16 = [v4 launchReason];
    v17 = _DASLaunchReasonHealthResearch;
    if ([v16 isEqualToString:_DASLaunchReasonHealthResearch] & 1) != 0 || (objc_msgSend(v4, "isContactTracingBackgroundActivity"))
    {
    }

    else
    {
      v31 = [(_DASBARScheduler *)self backgroundLaunchAllowedForApp:v10];

      if ((v31 & 1) == 0)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10012734C();
        }

        goto LABEL_33;
      }
    }

    v18 = [v4 launchReason];
    v19 = [v18 isEqualToString:_DASLaunchReasonBackgroundRefresh];

    if (v19)
    {
      v20 = [v11 UIBackgroundModes];
      v21 = v20;
      v22 = @"fetch";
    }

    else
    {
      v30 = [v4 launchReason];
      if ([v30 isEqualToString:v6])
      {
      }

      else
      {
        v32 = [v4 launchReason];
        v33 = [v32 isEqualToString:v17];

        if (!v33)
        {
LABEL_31:
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_1001273E4();
          }

LABEL_33:
          v29 = 0;
LABEL_34:

          goto LABEL_35;
        }
      }

      v20 = [v11 UIBackgroundModes];
      v21 = v20;
      v22 = @"processing";
    }

    v34 = [v20 containsObject:v22];

    if (v34)
    {
      v35 = [v4 clientProvidedIdentifier];
      if (v35 && ([v11 backgroundTaskSchedulerPermittedIdentifiers], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "containsObject:", v35), v36, (v37 & 1) != 0))
      {
        v29 = 1;
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10012747C();
        }

        v29 = 0;
      }

      goto LABEL_34;
    }

    goto LABEL_31;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v26 = log;
    v27 = [v4 name];
    v28 = [v4 launchReason];
    v39 = 138543618;
    v40 = v27;
    v41 = 2114;
    v42 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ launch reason %{public}@ is not a BGTask reason. Allowing background launch.", &v39, 0x16u);
  }

  v29 = 1;
LABEL_35:

  return v29;
}

@end