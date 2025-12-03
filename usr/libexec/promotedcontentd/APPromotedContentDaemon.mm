@interface APPromotedContentDaemon
- (APPromotedContentDaemon)initWithInstanceWrapper:(id)wrapper;
@end

@implementation APPromotedContentDaemon

- (APPromotedContentDaemon)initWithInstanceWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v5 = +[NSDate now];
  v6 = qword_1004DD9D0;
  qword_1004DD9D0 = v5;

  v62.receiver = self;
  v62.super_class = APPromotedContentDaemon;
  v7 = [(APPromotedContentDaemon *)&v62 init];
  if (v7)
  {
    if (!MKBDeviceUnlockedSinceBoot())
    {
      APSimulateCrash();
    }

    v8 = +[APDatabaseManager mainDatabase];
    [v8 setUpMainDatabase];

    v9 = +[APPromotedContentControllerDaemonModule setup];
    v10 = objc_alloc_init(APNetworkClientConfig);
    [v10 setUseFixedHttpSessionManager:{objc_msgSend(v9, "httpUseFixedHttpSessionManager")}];
    [v9 httpLookBackWindow];
    [v10 setLookBackWindow:?];
    [v10 setHttpMaximumConnectionsPerHost:{objc_msgSend(v9, "httpMaximumConnectionsPerHost")}];
    [v10 setHttpMaximumConnectionsPerHostTempSession:{objc_msgSend(v9, "httpMaximumConnectionsPerHostTempSession")}];
    [APNetworkClient createSharedNetworkClientWithConfig:v10];
    v11 = objc_alloc_init(APRotationRouter);
    rotationRouter = v7->_rotationRouter;
    v7->_rotationRouter = v11;

    v13 = -[APPersistentCache initWithCacheSize:]([APPersistentCache alloc], "initWithCacheSize:", [v9 cacheSizeLimit]);
    cache = v7->_cache;
    v7->_cache = v13;

    v15 = -[APMescalSigningRouter initWithAMSProvider:]([APMescalSigningRouter alloc], "initWithAMSProvider:", [v9 useAMSMescal]);
    mescalSigningListener = v7->_mescalSigningListener;
    v7->_mescalSigningListener = v15;

    v17 = objc_alloc_init(_TtC16promotedcontentd29ObservabilityXPCTimerActivity);
    observabilityTimerActivity = v7->_observabilityTimerActivity;
    v7->_observabilityTimerActivity = v17;

    v19 = v7->_observabilityTimerActivity;
    v20 = +[APDatabaseManager mainDatabase];
    v21 = +[APSigningAuthorityPoolManagerWrapper sharedInstance];
    [APGlobalState createWithTimerXPCActivity:v19 database:v20 signing:v21];

    +[MetricsModule setup];
    +[APPCBaseEventListener startListeners];
    v22 = +[MetricsModule storage];
    notificationRegistrar = [v22 notificationRegistrar];

    v24 = [[APCacheStatusUpdater alloc] initWithNotificationRegister:notificationRegistrar];
    updater = v7->_updater;
    v7->_updater = v24;

    v26 = objc_alloc_init(APMetricsLegacyInterface);
    [APPCControllerMetricCoordinator startWithLegacyInterface:v26];
    v27 = objc_alloc_init(APRotatingIdentifierProviderFactory);
    rotatingIdentifierProviderFactory = v7->_rotatingIdentifierProviderFactory;
    v7->_rotatingIdentifierProviderFactory = v27;

    v29 = [[APPCControllerRouter alloc] initWithIdentifierProviderFactory:v7->_rotatingIdentifierProviderFactory];
    controllerListener = v7->_controllerListener;
    v7->_controllerListener = v29;

    v31 = objc_alloc_init(PCSupportRouter);
    supportListener = v7->_supportListener;
    v7->_supportListener = v31;

    v33 = objc_alloc_init(PCStatusConditionsRouter);
    statusConditionsListener = v7->_statusConditionsListener;
    v7->_statusConditionsListener = v33;

    v35 = [APAttributionRouter alloc];
    v36 = +[APGlobalState attributionObjCBridge];
    v37 = [(APAttributionRouter *)v35 initWithDevicePipelinesAttribution:v36];
    attributionListener = v7->_attributionListener;
    v7->_attributionListener = v37;

    v39 = [[APRotatingIdentifierXPCListener alloc] initWithProviderFactory:v7->_rotatingIdentifierProviderFactory];
    rotatingIdentifierXPCListener = v7->_rotatingIdentifierXPCListener;
    v7->_rotatingIdentifierXPCListener = v39;

    [APGlobalState prepareDevicePipelinesWithMetricNotificationRegister:notificationRegistrar];
    +[MetricsModule start];
    [(ObservabilityXPCTimerActivity *)v7->_observabilityTimerActivity checkin];
    [(APPersistentCache *)v7->_cache start];
    v41 = [APXPCActivity alloc];
    v42 = [[APCacheGCActivity alloc] initWithCache:v7->_cache];
    v43 = [v41 initWithDelegate:v42];
    gcActivity = v7->_gcActivity;
    v7->_gcActivity = v43;

    [(APXPCActivity *)v7->_gcActivity checkin];
    v45 = objc_alloc_init(APPCPolicyAdProcessor);
    [(APPCPolicyAdProcessor *)v45 processAdPolicyData];
    v46 = [APXPCActivity alloc];
    v47 = objc_alloc_init(APDailyReportActivity);
    v48 = [v46 initWithDelegate:v47];
    dailyReportActivity = v7->_dailyReportActivity;
    v7->_dailyReportActivity = v48;

    [(APXPCActivity *)v7->_dailyReportActivity schedule];
    v50 = [APXPCActivity alloc];
    v51 = [[APTimeSpentReportActivity alloc] initWithLegacyInterface:v26 identifierProvider:v7->_rotatingIdentifierProviderFactory];
    v52 = [v50 initWithDelegate:v51];
    timeSpentReportActivity = v7->_timeSpentReportActivity;
    v7->_timeSpentReportActivity = v52;

    [(APXPCActivity *)v7->_timeSpentReportActivity checkin];
    configSystemRequestTask = [wrapperCopy configSystemRequestTask];
    configSystemRequestTask = v7->_configSystemRequestTask;
    v7->_configSystemRequestTask = configSystemRequestTask;

    [(APConfigSystemBackgroundTask *)v7->_configSystemRequestTask registerTask];
    +[APGlobalState startDevicePipelines];
    +[APGlobalState startWorkCoordinator];
    migrationContext = [wrapperCopy migrationContext];
    [APGlobalState registerJetPackCacheRequestTaskWithMigrationContext:migrationContext];
    +[APGlobalState startPeriodicFetch];
    if ([migrationContext hasOSVersionChanged])
    {
      [(APConfigSystemBackgroundTask *)v7->_configSystemRequestTask request];
      v57 = +[APDatabaseManager mainDatabase];
      [APDevicePipelinesHousekeepingAdapter clearAttributionsFrom:v57];
    }

    +[_TtC16promotedcontentd17DaemonSwiftBridge postInitInternal];
    v58 = APLogForCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = +[APSystemInfo firstRunSinceReboot];
      v60 = @"NOT ";
      if (v59)
      {
        v60 = &stru_1004810B8;
      }

      *buf = 138412290;
      v64 = v60;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Device has %@rebooted since last daemon launch", buf, 0xCu);
    }
  }

  return v7;
}

@end