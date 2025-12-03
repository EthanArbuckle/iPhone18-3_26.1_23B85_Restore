@interface WiFiMaintenanceTaskManager
+ (id)sharedWiFiMaintenanceTaskManager;
- (WiFiMaintenanceTaskManager)init;
- (void)dealloc;
- (void)networkPerformanceFeedSync;
- (void)schedule3BarsObserver;
- (void)scheduleHistoricNetworkPerformanceFeedSync;
- (void)scheduleOrphanedSetsCleanUp;
- (void)scheduleOutdatedListEntriesCleanUp;
- (void)schedulePNLMigration;
- (void)scheduleWCADownloadObserver;
- (void)unSchedule3BarsObserver;
- (void)unScheduleHistoricNetworkPerformanceFeedSync;
- (void)unScheduleOrphanedSetsCleanUp;
- (void)unScheduleOutdatedListEntriesCleanUp;
- (void)unSchedulePNLMigration;
- (void)unScheduleWCADownloadObserver;
@end

@implementation WiFiMaintenanceTaskManager

+ (id)sharedWiFiMaintenanceTaskManager
{
  if (qword_1002984E8 != -1)
  {
    sub_100144C64();
  }

  return qword_1002984E0;
}

- (void)dealloc
{
  serialQForNetworkPerformanceFeed = self->_serialQForNetworkPerformanceFeed;
  if (serialQForNetworkPerformanceFeed)
  {
    dispatch_release(serialQForNetworkPerformanceFeed);
  }

  v4.receiver = self;
  v4.super_class = WiFiMaintenanceTaskManager;
  [(WiFiMaintenanceTaskManager *)&v4 dealloc];
}

- (void)unScheduleOrphanedSetsCleanUp
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager unScheduleOrphanedSetsCleanUp]"}];
  }

  objc_autoreleasePoolPop(v2);

  xpc_activity_unregister("com.apple.wifimanager.OrphanedSetsCleanUpActivity");
}

- (void)scheduleOrphanedSetsCleanUp
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager scheduleOrphanedSetsCleanUp]"}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 0);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_HOUR);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_30_MIN);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004BBE0;
  handler[3] = &unk_10025F068;
  handler[4] = self;
  xpc_activity_register("com.apple.wifimanager.OrphanedSetsCleanUpActivity", v4, handler);
  xpc_release(v4);
}

- (void)unScheduleOutdatedListEntriesCleanUp
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager unScheduleOutdatedListEntriesCleanUp]"}];
  }

  objc_autoreleasePoolPop(v2);

  xpc_activity_unregister("com.apple.wifimanager.OutdatedListEntriesCleanUpActivity");
}

- (void)scheduleOutdatedListEntriesCleanUp
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager scheduleOutdatedListEntriesCleanUp]"}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 0);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_8_HOURS);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004BF94;
  handler[3] = &unk_10025F068;
  handler[4] = self;
  xpc_activity_register("com.apple.wifimanager.OutdatedListEntriesCleanUpActivity", v4, handler);
  xpc_release(v4);
}

- (void)schedule3BarsObserver
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager schedule3BarsObserver]"}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_PREVENT_DEVICE_SLEEP, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_4_HOURS);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004C318;
  handler[3] = &unk_10025F068;
  handler[4] = self;
  xpc_activity_register("com.apple.wifimanager.3BarsObserverActivity", v4, handler);
  xpc_release(v4);
}

- (void)unSchedule3BarsObserver
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager unSchedule3BarsObserver]"}];
  }

  objc_autoreleasePoolPop(v2);

  xpc_activity_unregister("com.apple.wifimanager.3BarsObserverActivity");
}

- (void)unSchedulePNLMigration
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager unSchedulePNLMigration]"}];
  }

  objc_autoreleasePoolPop(v2);

  xpc_activity_unregister("com.apple.wifimanager.ListMigrationActivity");
}

- (void)schedulePNLMigration
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager schedulePNLMigration]"}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 0);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_HOUR);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_30_MIN);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004C754;
  handler[3] = &unk_10025F068;
  handler[4] = self;
  xpc_activity_register("com.apple.wifimanager.ListMigrationActivity", v4, handler);
  xpc_release(v4);
}

- (void)unScheduleHistoricNetworkPerformanceFeedSync
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager unScheduleHistoricNetworkPerformanceFeedSync]"}];
  }

  objc_autoreleasePoolPop(v2);

  xpc_activity_unregister("com.apple.wifimanager.HistoricNetworkPerformanceFeedActivity");
}

- (void)scheduleHistoricNetworkPerformanceFeedSync
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager scheduleHistoricNetworkPerformanceFeedSync]"}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 0);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_INTERVAL, 10080 * XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, (XPC_ACTIVITY_INTERVAL_1_MIN * 720.0));
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004CB20;
  handler[3] = &unk_10025F068;
  handler[4] = self;
  xpc_activity_register("com.apple.wifimanager.HistoricNetworkPerformanceFeedActivity", v4, handler);
  xpc_release(v4);
}

- (void)networkPerformanceFeedSync
{
  context = objc_autoreleasePoolPush();
  v2 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
  v3 = +[NSMutableArray array];
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: step 1 - syncing scores for %d networks", "-[WiFiMaintenanceTaskManager networkPerformanceFeedSync]", objc_msgSend(v2, "count")}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = dispatch_semaphore_create(0);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v2 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = kSymptomAnalyticsServiceNetworkAttachmentHistorical;
    obj = v2;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v23 = v9;
        v24 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: step 2 - getting perf feed for %@", "-[WiFiMaintenanceTaskManager networkPerformanceFeedSync]", v11}];
        }

        objc_autoreleasePoolPop(v13);
        symptomsNetworkHistoryFeed = [(WiFiMaintenanceTaskManager *)self symptomsNetworkHistoryFeed];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10004CE2C;
        v18[3] = &unk_10025F090;
        v18[4] = v12;
        v18[5] = v11;
        v18[6] = v3;
        v18[7] = v5;
        if ([(NetworkPerformanceFeed *)symptomsNetworkHistoryFeed fullScorecardFor:1 options:v12 reply:v18])
        {
          dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      v2 = obj;
      v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  dispatch_release(v5);
  if (v2)
  {
    CFRelease(v2);
  }

  objc_autoreleasePoolPop(context);
}

- (void)scheduleWCADownloadObserver
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 0);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_4_HOURS);
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_activity_register("com.apple.wifimanager.wcaDownloadActivity", v2, &stru_10025F0D0);

  xpc_release(v2);
}

- (void)unScheduleWCADownloadObserver
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "-[WiFiMaintenanceTaskManager unScheduleWCADownloadObserver]"}];
  }

  objc_autoreleasePoolPop(v2);

  xpc_activity_unregister("com.apple.wifimanager.wcaDownloadActivity");
}

- (WiFiMaintenanceTaskManager)init
{
  v10.receiver = self;
  v10.super_class = WiFiMaintenanceTaskManager;
  v2 = [(WiFiMaintenanceTaskManager *)&v10 init];
  if (v2)
  {
    if (!objc_opt_class())
    {
      return 0;
    }

    v3 = [AnalyticsWorkspace alloc];
    v4 = [v3 initWorkspaceWithService:kSymptomAnalyticsServiceEndpoint];
    v2->_symptomsAnalyticsWorkspace = v4;
    if (v4)
    {
      if (!objc_opt_class())
      {
        return 0;
      }

      v5 = [[NetworkPerformanceFeed alloc] initWithWorkspace:v2->_symptomsAnalyticsWorkspace];
      v2->_symptomsNetworkHistoryFeed = v5;
      if (v5)
      {
        v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v7 = dispatch_queue_create("com.apple.wifid.networkStoreController.symptomsReplyQ", v6);
        v2->_serialQForNetworkPerformanceFeed = v7;
        if (v7)
        {
          [(NetworkPerformanceFeed *)[(WiFiMaintenanceTaskManager *)v2 symptomsNetworkHistoryFeed] setQueue:[(WiFiMaintenanceTaskManager *)v2 serialQForNetworkPerformanceFeed]];
          return v2;
        }

        return 0;
      }

      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Failed in initWithWorkspace", "-[WiFiMaintenanceTaskManager init]"}];
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Failed in initWorkspaceWithService!", "-[WiFiMaintenanceTaskManager init]"}];
      }
    }

    objc_autoreleasePoolPop(v9);
    return 0;
  }

  return v2;
}

@end