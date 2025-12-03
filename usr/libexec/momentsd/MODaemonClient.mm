@interface MODaemonClient
+ (id)getRefreshVariantName:(unint64_t)name;
- (BOOL)acquireRefreshLock;
- (BOOL)validateIfActiveClientHasAnyEntitlementInArray:(id)array withErrorHandler:(id)handler;
- (MODaemonClient)initWithUniverse:(id)universe;
- (MODaemonClientConnectionEntitlementDelegate)entitlementDelegate;
- (id)_createWatchDogWithName:(id)name;
- (void)_abortIfNeeded:(id)needed;
- (void)_analyzeTrendsInEvents:(id)events withContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)_bundleEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)_checkUIActiveStatusWithHandler:(id)handler;
- (void)_clearEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)_collectEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)_fetchEventBundlesWithOptions:(id)options withContext:(id)context andHandler:(id)handler;
- (void)_fetchEventBundlesWithPredicate:(id)predicate withContext:(id)context andHandler:(id)handler;
- (void)_fetchEventsWithOptions:(id)options withContext:(id)context andHandler:(id)handler;
- (void)_getApplicationsWithDataAccess:(id)access;
- (void)_getClientsWithDataAccess:(id)access;
- (void)_getDiagnosticReporterConfiguration:(id)configuration;
- (void)_getSnapshotDictionaryForAnalyticsWithHandler:(id)handler;
- (void)_isAllowedToPromptEventCategory:(unint64_t)category withReply:(id)reply;
- (void)_isAllowedToPromptResourceType:(unint64_t)type withReply:(id)reply;
- (void)_logEngagementEvent:(id)event timestamp:(id)timestamp withContext:(id)context;
- (void)_printOnboardingStatusAnalytics:(id)analytics;
- (void)_printSettingValue:(id)value withType:(id)type handler:(id)handler;
- (void)_purgeEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)_refreshEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andSoftKindFlag:(BOOL)flag andHandler:(id)handler;
- (void)_registerClientsForDataAccess:(id)access;
- (void)_runAnalyticsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)_scheduleDatabaseUpgradeWithContext:(id)context andHandler:(id)handler;
- (void)_scheduleMomentsUICloudSync:(id)sync;
- (void)_scheduleMomentsUIFullProcessing:(id)processing;
- (void)_scheduleSendBarrierBlock:(id)block;
- (void)_storeEvents:(id)events withContext:(id)context andHandler:(id)handler;
- (void)_testNotificationAnalyticsWithContext:(id)context andHandler:(id)handler;
- (void)acquireBackgroundProcessingPermissionsForMomentsWithHander:(id)hander;
- (void)analyzeTrendsInEvents:(id)events withContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)bundleEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)checkElegibilityAndRequestDataExportForTrigger:(unint64_t)trigger withFeedback:(id)feedback requestUpload:(BOOL)upload reply:(id)reply;
- (void)checkUIActiveStatusWithHandler:(id)handler;
- (void)clearEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)collectEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)didAppEntryUpdateUsingSuggestions:(id)suggestions onEvent:(unint64_t)event duringInterval:(id)interval withInfo:(id)info;
- (void)fetchEligiblePOICategoriesWithHandler:(id)handler;
- (void)fetchEventBundlesWithOptions:(id)options withContext:(id)context andHandler:(id)handler;
- (void)fetchEventBundlesWithPredicate:(id)predicate withContext:(id)context andHandler:(id)handler;
- (void)fetchEventsWithOptions:(id)options withContext:(id)context andHandler:(id)handler;
- (void)fetchPhotoAnalyticsMetricsWithContext:(id)context andHandler:(id)handler;
- (void)finalizeClientTaskWithName:(id)name;
- (void)generateAvailabilityPredictionsAndRegisterTimerWithHandler:(id)handler;
- (void)generateAvailabilityPredictionsWithHandler:(id)handler;
- (void)getApplicationsWithDataAccess:(id)access;
- (void)getClientsWithDataAccess:(id)access;
- (void)getDiagnosticReporterConfiguration:(id)configuration;
- (void)getOnboardingFlowCompletionStatusWithHandler:(id)handler;
- (void)getOnboardingFlowRefreshCompletionStatusWithHandler:(id)handler;
- (void)getSnapshotDictionaryForAnalyticsWithHandler:(id)handler;
- (void)getStateForSetting:(unint64_t)setting withHandler:(id)handler;
- (void)getStateForSettingFast:(unint64_t)fast withHandler:(id)handler;
- (void)isAllowedToPromptEventCategory:(unint64_t)category withReply:(id)reply;
- (void)isAllowedToPromptResourceType:(unint64_t)type withReply:(id)reply;
- (void)logEngagementEvent:(id)event timestamp:(id)timestamp withContext:(id)context;
- (void)logPerformanceEvent:(id)event timestamp:(id)timestamp withContext:(id)context;
- (void)logUsageEvent:(id)event timestamp:(id)timestamp withContext:(id)context;
- (void)printEvergreenBundlesWithSeed:(unint64_t)seed handler:(id)handler;
- (void)printOnboardingStatusAnalytics:(id)analytics;
- (void)printSettingValue:(id)value withType:(id)type handler:(id)handler;
- (void)purgeEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)refreshEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)registerClientsForDataAccess:(id)access;
- (void)releaseRefreshLock;
- (void)runAnalyticsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler;
- (void)scheduleClientTask:(id)task withName:(id)name;
- (void)scheduleDatabaseUpgradeWithContext:(id)context andDelegate:(id)delegate;
- (void)scheduleInternalClientTask:(id)task withName:(id)name andAllowHandoffReplayQueue:(BOOL)queue;
- (void)scheduleMomentsUICloudSync;
- (void)scheduleMomentsUIFullProcessing;
- (void)scheduleNonSerializedClientTask:(id)task withName:(id)name;
- (void)setOnboardingFlowCompletionStatus:(unint64_t)status;
- (void)softRefreshEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andIgnoreLastTrigger:(BOOL)trigger andHandler:(id)handler;
- (void)storeEvents:(id)events withContext:(id)context andHandler:(id)handler;
- (void)testNotificationAnalyticsWithContext:(id)context andHandler:(id)handler;
- (void)triggerFeedbackAssistantFlow:(id)flow handler:(id)handler;
- (void)updateEngagementLightStreamWithRefreshVariant:(unint64_t)variant handler:(id)handler;
@end

@implementation MODaemonClient

- (MODaemonClientConnectionEntitlementDelegate)entitlementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_entitlementDelegate);

  return WeakRetained;
}

+ (id)getRefreshVariantName:(unint64_t)name
{
  v3 = @"Soft";
  v4 = @"Reset";
  if (name != 0xFFFF)
  {
    v4 = 0;
  }

  if (name != 1536)
  {
    v3 = v4;
  }

  v5 = @"Full";
  if (name != 1280)
  {
    v5 = 0;
  }

  if (name == 768)
  {
    v5 = @"Default";
  }

  if (name <= 1535)
  {
    v3 = v5;
  }

  v6 = @"SettingsChange";
  v7 = @"Light";
  if (name != 512)
  {
    v7 = 0;
  }

  if (name != 336)
  {
    v6 = v7;
  }

  v8 = @"Onboarding";
  if (name != 256)
  {
    v8 = 0;
  }

  if (!name)
  {
    v8 = @"Unknown";
  }

  if (name <= 335)
  {
    v6 = v8;
  }

  if (name <= 767)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

- (MODaemonClient)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [universeCopy getService:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [universeCopy getService:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  obj = [universeCopy getService:v12];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v60 = [universeCopy getService:v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v59 = [universeCopy getService:v16];

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [universeCopy getService:v18];

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [universeCopy getService:v21];

  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v25 = [universeCopy getService:v24];

  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [universeCopy getService:v27];

  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = [universeCopy getService:v30];

  if (!v7)
  {
    v49 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      [MODaemonClient initWithUniverse:];
    }

    v50 = +[NSAssertionHandler currentHandler];
    v51 = v50;
    v52 = @"Invalid parameter not satisfying: eventManager";
    v53 = a2;
    selfCopy2 = self;
    v55 = 142;
    goto LABEL_12;
  }

  if (!v10)
  {
    v56 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [MODaemonClient initWithUniverse:];
    }

    v50 = +[NSAssertionHandler currentHandler];
    v51 = v50;
    v52 = @"Invalid parameter not satisfying: eventBundleManager";
    v53 = a2;
    selfCopy2 = self;
    v55 = 143;
LABEL_12:
    [v50 handleFailureInMethod:v53 object:selfCopy2 file:@"MODaemonClient.m" lineNumber:v55 description:{v52, a2, v59, v60, obj}];

    selfCopy3 = 0;
    goto LABEL_13;
  }

  v62.receiver = self;
  v62.super_class = MODaemonClient;
  v32 = [(MODaemonClient *)&v62 init];
  if (v32)
  {
    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v34 = dispatch_queue_create("MODaemonClient.internal", v33);
    internalQueue = v32->_internalQueue;
    v32->_internalQueue = v34;

    v36 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v37 = dispatch_queue_create("MODaemonClient.external", v36);
    externalQueue = v32->_externalQueue;
    v32->_externalQueue = v37;

    v32->_refreshLock = 0;
    v39 = objc_opt_new();
    scheduledTaskLock = v32->_scheduledTaskLock;
    v32->_scheduledTaskLock = v39;

    objc_storeStrong(&v32->_eventManager, v7);
    objc_storeStrong(&v32->_configManager, obj);
    objc_storeStrong(&v32->_dataAccessManager, v60);
    objc_storeStrong(&v32->_defaultsManager, v59);
    objc_storeStrong(&v32->_eventBundleManager, v10);
    v41 = [[MOEvergreenAnnotationManager alloc] initWithUniverse:universeCopy];
    evergreenManager = v32->_evergreenManager;
    v32->_evergreenManager = v41;

    objc_storeStrong(&v32->_engagementHistoryManager, v19);
    objc_storeStrong(&v32->_onboardingAndSettingsPersistence, v22);
    objc_storeStrong(&v32->_notificationsManager, v25);
    objc_storeStrong(&v32->_notificationAnalyticsManager, v28);
    v43 = [[MODaemonSPINotifier alloc] initWithName:@"DaemonClient"];
    notifier = v32->_notifier;
    v32->_notifier = v43;

    LODWORD(v45) = 10.0;
    [(MOConfigurationManagerBase *)v32->_configManager getFloatSettingForKey:@"WatchdogOverrideDefaultCadenceInSeconds" withFallback:v45];
    v32->_watchdogCadence = v46;
    objc_storeStrong(&v32->_persistenceManager, v31);
    v47 = +[MODiagnosticReporter defaultReporter];
    [v47 configureWithDaemonClient:v32];
  }

  self = v32;
  selfCopy3 = self;
LABEL_13:

  return selfCopy3;
}

- (void)_scheduleSendBarrierBlock:(id)block
{
  blockCopy = block;
  v4 = +[NSXPCConnection currentConnection];
  v5 = v4;
  if (v4)
  {
    [v4 scheduleSendBarrierBlock:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (void)scheduleClientTask:(id)task withName:(id)name
{
  taskCopy = task;
  nameCopy = name;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Client Task Scheduled [%@]", &v14, 0xCu);
  }

  configManager = [(MODaemonClient *)self configManager];
  v10 = [configManager getBoolSettingForKey:@"ClientOverrideAvoidQuerySerialization" withFallback:0];

  if ((v10 & 1) == 0)
  {
    [(NSLock *)self->_scheduledTaskLock lock];
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = nameCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Client Task Started [%@]", &v14, 0xCu);
  }

  v12 = +[NSXPCConnection currentConnection];
  externalQueue = [(MODaemonClient *)self externalQueue];
  if (v12)
  {
    [NSXPCConnection _handoffCurrentReplyToQueue:externalQueue block:taskCopy];
  }

  else
  {
    dispatch_async(externalQueue, taskCopy);
  }
}

- (void)scheduleInternalClientTask:(id)task withName:(id)name andAllowHandoffReplayQueue:(BOOL)queue
{
  queueCopy = queue;
  taskCopy = task;
  nameCopy = name;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = nameCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Internal Client Task Scheduled [%@]", &v16, 0xCu);
  }

  configManager = [(MODaemonClient *)self configManager];
  v12 = [configManager getBoolSettingForKey:@"ClientOverrideAvoidQuerySerialization" withFallback:0];

  if ((v12 & 1) == 0)
  {
    [(NSLock *)self->_scheduledTaskLock lock];
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = nameCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Internal Client Task Started [%@]", &v16, 0xCu);
  }

  v14 = +[NSXPCConnection currentConnection];
  if (v14 && queueCopy)
  {
    internalQueue = [(MODaemonClient *)self internalQueue];
    [NSXPCConnection _handoffCurrentReplyToQueue:internalQueue block:taskCopy];
  }

  else
  {
    internalQueue = [(MODaemonClient *)self internalQueue];
    dispatch_async(internalQueue, taskCopy);
  }
}

- (void)scheduleNonSerializedClientTask:(id)task withName:(id)name
{
  nameCopy = name;
  taskCopy = task;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NonSerialized Client Task Scheduled [%@]", &v10, 0xCu);
  }

  internalQueue = [(MODaemonClient *)self internalQueue];
  dispatch_async(internalQueue, taskCopy);
}

- (void)finalizeClientTaskWithName:(id)name
{
  nameCopy = name;
  configManager = [(MODaemonClient *)self configManager];
  v6 = [configManager getBoolSettingForKey:@"ClientOverrideAvoidQuerySerialization" withFallback:0];

  if ((v6 & 1) == 0)
  {
    [(NSLock *)self->_scheduledTaskLock unlock];
  }

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = nameCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Client Task Completed [%@]", &v8, 0xCu);
  }
}

- (BOOL)validateIfActiveClientHasAnyEntitlementInArray:(id)array withErrorHandler:(id)handler
{
  arrayCopy = array;
  handlerCopy = handler;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    LODWORD(v10) = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        entitlementDelegate = [(MODaemonClient *)self entitlementDelegate];
        v15 = +[NSXPCConnection currentConnection];
        LODWORD(v10) = v10 | [entitlementDelegate clientConnection:v15 hasInternalEntitlement:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  if (handlerCopy && (v10 & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [(MODaemonClient *)self _createWatchDogWithName:@"entitlementErrorResponse"];
    v26 = NSLocalizedFailureReasonErrorKey;
    v18 = [NSString stringWithFormat:@"missing Moments internal entitlement - requires any in %@", v7];
    v27 = v18;
    v10 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:v10];

    [v17 pet];
    handlerCopy[2](handlerCopy, v19);
    [v17 cancel];

    objc_autoreleasePoolPop(v16);
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

- (void)_abortIfNeeded:(id)needed
{
  neededCopy = needed;
  configManager = [(MODaemonClient *)self configManager];
  v6 = [configManager getIntegerSettingForKey:neededCopy withFallback:0];

  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = neededCopy;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "interrupBehavior for '%@' = %d", &v9, 0x12u);
    }

    if (v6 == 2)
    {
      exit(0);
    }

    if (v6 == 1)
    {
      abort();
    }

    v8 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 67109120;
      LODWORD(v10) = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unexpected test interruption value: %d", &v9, 8u);
    }
  }
}

- (void)storeEvents:(id)events withContext:(id)context andHandler:(id)handler
{
  eventsCopy = events;
  contextCopy = context;
  handlerCopy = handler;
  v12 = NSStringFromSelector(a2);
  v13 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  v15 = [NSString stringWithFormat:@"InterruptMethod_%@", v14];
  [(MODaemonClient *)self _abortIfNeeded:v15];
  v22 = @"MOStoreEvents";
  v16 = [NSArray arrayWithObjects:&v22 count:1];
  v17 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v16 withErrorHandler:handlerCopy];

  if (v17)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __53__MODaemonClient_storeEvents_withContext_andHandler___block_invoke;
    v18[3] = &unk_1003361C0;
    v18[4] = self;
    v19 = eventsCopy;
    v20 = contextCopy;
    v21 = handlerCopy;
    [(MODaemonClient *)self scheduleInternalClientTask:v18 withName:@"storeEvents"];
  }
}

void __53__MODaemonClient_storeEvents_withContext_andHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __53__MODaemonClient_storeEvents_withContext_andHandler___block_invoke_2;
  v6[3] = &unk_10033B210;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _storeEvents:v3 withContext:v4 andHandler:v6];
}

id __53__MODaemonClient_storeEvents_withContext_andHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"storeEvents"];
}

- (void)_storeEvents:(id)events withContext:(id)context andHandler:(id)handler
{
  eventsCopy = events;
  contextCopy = context;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__23;
  v23[4] = __Block_byref_object_dispose__23;
  v24 = os_transaction_create();
  v12 = [(MODaemonClient *)self _createWatchDogWithName:@"StoreEvents"];
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityEventManager);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "store events", buf, 2u);
  }

  eventManager = self->_eventManager;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __54__MODaemonClient__storeEvents_withContext_andHandler___block_invoke;
  v17[3] = &unk_10033B238;
  v15 = v12;
  v18 = v15;
  v16 = handlerCopy;
  v20 = v16;
  v21 = v23;
  selfCopy = self;
  [(MOEventManager *)eventManager storeEvents:eventsCopy handler:v17];

  _Block_object_dispose(v23, 8);
  objc_autoreleasePoolPop(v11);
}

void __54__MODaemonClient__storeEvents_withContext_andHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) pet];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __54__MODaemonClient__storeEvents_withContext_andHandler___block_invoke_2;
  v11 = &unk_10033AEF0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v12 = v5;
  v13 = v6;
  v7 = objc_retainBlock(&v8);
  [*(a1 + 40) _scheduleSendBarrierBlock:{v7, v8, v9, v10, v11}];
}

void __54__MODaemonClient__storeEvents_withContext_andHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)scheduleDatabaseUpgradeWithContext:(id)context andDelegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v9 = NSStringFromSelector(a2);
  v10 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  v12 = [NSString stringWithFormat:@"InterruptMethod_%@", v11];
  [(MODaemonClient *)self _abortIfNeeded:v12];
  v28 = @"MOScheduleDatabaseUpgrade";
  v13 = [NSArray arrayWithObjects:&v28 count:1];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __65__MODaemonClient_scheduleDatabaseUpgradeWithContext_andDelegate___block_invoke;
  v24[3] = &unk_10033B260;
  v14 = delegateCopy;
  v25 = v14;
  v15 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v13 withErrorHandler:v24];

  if (v15)
  {
    if ([(MODaemonClient *)self acquireRefreshLock])
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = __65__MODaemonClient_scheduleDatabaseUpgradeWithContext_andDelegate___block_invoke_261;
      v20[3] = &unk_10033B2B0;
      v20[4] = self;
      v21 = contextCopy;
      v22 = v14;
      [(MODaemonClient *)self scheduleInternalClientTask:v20 withName:@"scheduleDatabaseUpgradeWithContext" andAllowHandoffReplayQueue:0];
    }

    else
    {
      v16 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "RefreshLock is in use. Drop the refresh.", buf, 2u);
      }

      v17 = [NSError alloc];
      v26 = NSLocalizedDescriptionKey;
      v27 = @"The refresh is dropped due to an existing refresh.";
      v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v19 = [v17 initWithDomain:@"MODaemonClient" code:0 userInfo:v18];

      [v14 didUpdateWithStatus:0 andError:v19];
    }
  }
}

void __65__MODaemonClient_scheduleDatabaseUpgradeWithContext_andDelegate___block_invoke_261(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __65__MODaemonClient_scheduleDatabaseUpgradeWithContext_andDelegate___block_invoke_2;
  v6[3] = &unk_10033B288;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v2 _scheduleDatabaseUpgradeWithContext:v3 andHandler:v6];
}

void __65__MODaemonClient_scheduleDatabaseUpgradeWithContext_andDelegate___block_invoke_2(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:a2];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "calling scheduleDatabaseUpgradeWithContext with status %@", &v9, 0xCu);
  }

  if (a2 <= 4)
  {
    if (a2 == 2)
    {
      [*(a1 + 32) didUpdateWithStatus:2 andError:v5];
      goto LABEL_9;
    }

    [*(a1 + 32) didUpdateWithStatus:a2 andError:v5];
  }

  [*(a1 + 40) releaseRefreshLock];
  [*(a1 + 40) finalizeClientTaskWithName:@"scheduleDatabaseUpgradeWithContext"];
  [*(a1 + 40) scheduleMomentsUIFullProcessing];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "calling scheduleDatabaseUpgradeWithContext completed", &v9, 2u);
  }

LABEL_9:
}

- (void)_scheduleDatabaseUpgradeWithContext:(id)context andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
  isAllowedToCollectAndCompute = [onboardingAndSettingsPersistence isAllowedToCollectAndCompute];

  configManager = [(MODaemonClient *)self configManager];
  v11 = [configManager getBoolSettingForKey:@"EventRefreshSchedulerOverrideForceFullRefreshAtBoot" withFallback:0];

  configManager2 = [(MODaemonClient *)self configManager];
  v13 = [configManager2 getBoolSettingForKey:@"EventRefreshSchedulerOverrideAvoidFullRefreshAtBoot" withFallback:0];

  configManager3 = [(MODaemonClient *)self configManager];
  v15 = [configManager3 getBoolSettingForKey:@"EventRefreshSchedulerOverrideAllowFullRefreshAtBoot" withFallback:1];

  if (!isAllowedToCollectAndCompute)
  {
    goto LABEL_15;
  }

  if (((+[MOPlatformInfo wasBuildVersionUpdated]& v15 & ~v13 | v11) & 1) == 0)
  {
    v20 = +[MOPlatformInfo wasBuildVersionUpdated];
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v22)
      {
        *buf = 0;
        v23 = "Refresh.First: build upgrade was detected but overrides prevent this task to run, skipped!";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v23, buf, 2u);
      }
    }

    else if (v22)
    {
      *buf = 0;
      v23 = "Refresh.First: no build upgrade detected, skipped!";
      goto LABEL_13;
    }

LABEL_15:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_16;
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0x500uLL, "XPCRefreshDatabaseUpgrade", "", buf, 2u);
  }

  v17 = [[MOPerformanceMeasurement alloc] initWithName:@"ScheduledRefreshFirstWrapper" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v17 startSession];
  handlerCopy[2](handlerCopy, 2, 0);
  v18 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = @"com.apple.momentsd.eventRefresh.first";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ detected build upgrade", buf, 0xCu);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __65__MODaemonClient__scheduleDatabaseUpgradeWithContext_andHandler___block_invoke;
  v24[3] = &unk_10033B210;
  v25 = v17;
  v26 = handlerCopy;
  v19 = v17;
  [(MODaemonClient *)self _refreshEventsWithContext:contextCopy andRefreshVariant:1280 andSoftKindFlag:0 andHandler:v24];

LABEL_16:
}

void __65__MODaemonClient__scheduleDatabaseUpgradeWithContext_andHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    +[MOPlatformInfo persistBuildVersion];
  }

  (*(*(a1 + 40) + 16))();
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0x500uLL, "XPCRefreshDatabaseUpgrade", "", v5, 2u);
  }

  [*(a1 + 32) endSession];
}

- (void)fetchEventsWithOptions:(id)options withContext:(id)context andHandler:(id)handler
{
  optionsCopy = options;
  contextCopy = context;
  handlerCopy = handler;
  v12 = NSStringFromSelector(a2);
  v13 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  v15 = [NSString stringWithFormat:@"InterruptMethod_%@", v14];
  [(MODaemonClient *)self _abortIfNeeded:v15];
  v25 = @"MOFetchEvents";
  v16 = [NSArray arrayWithObjects:&v25 count:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __64__MODaemonClient_fetchEventsWithOptions_withContext_andHandler___block_invoke;
  v23[3] = &unk_10033B2D8;
  v17 = handlerCopy;
  v24 = v17;
  v18 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v16 withErrorHandler:v23];

  if (v18)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __64__MODaemonClient_fetchEventsWithOptions_withContext_andHandler___block_invoke_2;
    v19[3] = &unk_1003361C0;
    v19[4] = self;
    v20 = optionsCopy;
    v21 = contextCopy;
    v22 = v17;
    [(MODaemonClient *)self scheduleInternalClientTask:v19 withName:@"fetchEventsWithOptions"];
  }
}

void __64__MODaemonClient_fetchEventsWithOptions_withContext_andHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __64__MODaemonClient_fetchEventsWithOptions_withContext_andHandler___block_invoke_3;
  v6[3] = &unk_100337850;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _fetchEventsWithOptions:v3 withContext:v4 andHandler:v6];
}

id __64__MODaemonClient_fetchEventsWithOptions_withContext_andHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"fetchEventsWithOptions"];
}

- (void)_fetchEventsWithOptions:(id)options withContext:(id)context andHandler:(id)handler
{
  optionsCopy = options;
  contextCopy = context;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__23;
  v30[4] = __Block_byref_object_dispose__23;
  v31 = os_transaction_create();
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCFetchEvents", "", buf, 2u);
  }

  v13 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCFetchEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v13 startSession];
  v14 = [(MODaemonClient *)self _createWatchDogWithName:@"FetchEvents"];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "fetch event with options", buf, 2u);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    *buf = 138412290;
    v33 = xpcProcessName;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "fetch XPC context [%@]", buf, 0xCu);
  }

  eventManager = self->_eventManager;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __65__MODaemonClient__fetchEventsWithOptions_withContext_andHandler___block_invoke;
  v23[3] = &unk_10033B368;
  v19 = v14;
  v24 = v19;
  v20 = contextCopy;
  v25 = v20;
  selfCopy = self;
  v21 = handlerCopy;
  v28 = v21;
  v29 = v30;
  v22 = v13;
  v27 = v22;
  [(MOEventManager *)eventManager fetchEventsWithOptions:optionsCopy CompletionHandler:v23];

  _Block_object_dispose(v30, 8);
  objc_autoreleasePoolPop(v11);
}

void __65__MODaemonClient__fetchEventsWithOptions_withContext_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) pet];
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [*(a1 + 40) xpcProcessName];
  [v7 setObject:v8 forKey:@"triggerSource"];

  v35 = v6;
  if (v6)
  {
    [v7 setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
  }

  else
  {
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    [v7 setObject:v9 forKey:@"resultNumberOfEvents"];
  }

  v33 = v7;
  v34 = a1;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v47 = [v5 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "the number of events fetched : %lu", buf, 0xCu);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v16 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v15 eventIdentifier];
          *buf = 138412290;
          v47 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "events fetched : %@", buf, 0xCu);
        }

        v18 = [v15 extendedAttributes];

        if (v18)
        {
          v19 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [v15 extendedAttributes];
            v21 = [v20 description];
            *buf = 138412290;
            v47 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "events extended attribute : %@", buf, 0xCu);
          }
        }

        v22 = [v15 trends];

        if (v22)
        {
          v23 = [v15 trends];
          [v23 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_29];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v12);
  }

  v24 = [*(v34 + 48) notifier];
  [v24 sendNotification:0 withPayload:v33];

  [*(v34 + 32) pet];
  v25 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCFetchEventsCompletion", "", buf, 2u);
  }

  v26 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCFetchEventsCompletion" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v26 startSession];
  v27 = *(v34 + 64);
  if (v27)
  {
    (*(v27 + 16))(v27, obj, v35);
  }

  v28 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCFetchEventsCompletion", "", buf, 2u);
  }

  [(MOPerformanceMeasurement *)v26 endSession];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = __65__MODaemonClient__fetchEventsWithOptions_withContext_andHandler___block_invoke_301;
  v37[3] = &unk_10033B340;
  v29 = *(v34 + 32);
  v30 = *(v34 + 48);
  v38 = v29;
  v39 = v30;
  v40 = *(v34 + 72);
  v31 = objc_retainBlock(v37);
  [*(v34 + 48) _scheduleSendBarrierBlock:v31];
  v32 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCFetchEvents", "", buf, 2u);
  }

  [*(v34 + 56) endSession];
}

void __65__MODaemonClient__fetchEventsWithOptions_withContext_andHandler___block_invoke_296(id a1, NSString *a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "events trends : %@, %@", &v8, 0x16u);
  }
}

void __65__MODaemonClient__fetchEventsWithOptions_withContext_andHandler___block_invoke_301(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = [*(a1 + 40) eventManager];
  [v2 clearCache];

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)clearEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v11 = NSStringFromSelector(a2);
  v12 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v14 = [NSString stringWithFormat:@"InterruptMethod_%@", v13];
  [(MODaemonClient *)self _abortIfNeeded:v14];
  v21 = @"MOPromptManagerTest";
  v15 = [NSArray arrayWithObjects:&v21 count:1];
  v16 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v15 withErrorHandler:handlerCopy];

  if (v16)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __70__MODaemonClient_clearEventsWithContext_andRefreshVariant_andHandler___block_invoke;
    v17[3] = &unk_10033B390;
    v17[4] = self;
    v18 = contextCopy;
    variantCopy = variant;
    v19 = handlerCopy;
    [(MODaemonClient *)self scheduleInternalClientTask:v17 withName:@"clearEventsWithContext"];
  }
}

void __70__MODaemonClient_clearEventsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __70__MODaemonClient_clearEventsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v6[3] = &unk_10033B210;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _clearEventsWithContext:v3 andRefreshVariant:v4 andHandler:v6];
}

id __70__MODaemonClient_clearEventsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"clearEventsWithContext"];
}

- (void)_clearEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__23;
  v27[4] = __Block_byref_object_dispose__23;
  v28 = os_transaction_create();
  v11 = [(MODaemonClient *)self _createWatchDogWithName:@"ClearEvents"];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    v14 = [MODaemonClient getRefreshVariantName:variant];
    *buf = 138412546;
    v30 = xpcProcessName;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "clear XPC context [%@] variant [%@]", buf, 0x16u);
  }

  if (variant == 0xFFFF)
  {
    eventManager = self->_eventManager;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __71__MODaemonClient__clearEventsWithContext_andRefreshVariant_andHandler___block_invoke;
    v23[3] = &unk_10033B238;
    v24[0] = v11;
    v25 = handlerCopy;
    v26 = v27;
    v24[1] = self;
    [(MOEventManager *)eventManager clearEventsWithRefreshVariant:0xFFFFLL andHandler:v23];
    v16 = v24;
    v17 = v25;
  }

  else
  {
    [v11 pet];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }

    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = __71__MODaemonClient__clearEventsWithContext_andRefreshVariant_andHandler___block_invoke_3;
    v21 = &unk_10033AEF0;
    v22[0] = v11;
    v22[1] = v27;
    v17 = objc_retainBlock(&v18);
    [(MODaemonClient *)self _scheduleSendBarrierBlock:v17, v18, v19, v20, v21];
    v16 = v22;
  }

  _Block_object_dispose(v27, 8);
  objc_autoreleasePoolPop(v10);
}

void __71__MODaemonClient__clearEventsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) pet];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __71__MODaemonClient__clearEventsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v11 = &unk_10033AEF0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v12 = v5;
  v13 = v6;
  v7 = objc_retainBlock(&v8);
  [*(a1 + 40) _scheduleSendBarrierBlock:{v7, v8, v9, v10, v11}];
}

void __71__MODaemonClient__clearEventsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __71__MODaemonClient__clearEventsWithContext_andRefreshVariant_andHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)fetchEventBundlesWithOptions:(id)options withContext:(id)context andHandler:(id)handler
{
  optionsCopy = options;
  contextCopy = context;
  handlerCopy = handler;
  v12 = NSStringFromSelector(a2);
  v13 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  v15 = [NSString stringWithFormat:@"InterruptMethod_%@", v14];
  [(MODaemonClient *)self _abortIfNeeded:v15];
  v25 = @"MOFetchEventBundles";
  v16 = [NSArray arrayWithObjects:&v25 count:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __70__MODaemonClient_fetchEventBundlesWithOptions_withContext_andHandler___block_invoke;
  v23[3] = &unk_10033B2D8;
  v17 = handlerCopy;
  v24 = v17;
  v18 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v16 withErrorHandler:v23];

  if (v18)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __70__MODaemonClient_fetchEventBundlesWithOptions_withContext_andHandler___block_invoke_2;
    v19[3] = &unk_1003361C0;
    v19[4] = self;
    v20 = optionsCopy;
    v21 = contextCopy;
    v22 = v17;
    [(MODaemonClient *)self scheduleClientTask:v19 withName:@"fetchEventBundlesWithOptions"];
  }
}

void __70__MODaemonClient_fetchEventBundlesWithOptions_withContext_andHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __70__MODaemonClient_fetchEventBundlesWithOptions_withContext_andHandler___block_invoke_3;
  v6[3] = &unk_100337850;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _fetchEventBundlesWithOptions:v3 withContext:v4 andHandler:v6];
}

id __70__MODaemonClient_fetchEventBundlesWithOptions_withContext_andHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"fetchEventBundlesWithOptions"];
}

- (void)_fetchEventBundlesWithOptions:(id)options withContext:(id)context andHandler:(id)handler
{
  optionsCopy = options;
  contextCopy = context;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__23;
  v32[4] = __Block_byref_object_dispose__23;
  v33 = os_transaction_create();
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "momentsd_XPCFetchEventBundle", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCFetchEventBundles" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v13 startSession];
  v14 = [(MODaemonClient *)self _createWatchDogWithName:@"FetchEventBundles"];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "fetch event bundles with options, %@", buf, 0xCu);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    *buf = 138412290;
    v35 = xpcProcessName;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "fetch XPC context [%@]", buf, 0xCu);
  }

  eventBundleManager = self->_eventBundleManager;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __71__MODaemonClient__fetchEventBundlesWithOptions_withContext_andHandler___block_invoke;
  v24[3] = &unk_10033B3B8;
  v19 = v14;
  v25 = v19;
  v20 = contextCopy;
  v26 = v20;
  selfCopy = self;
  v21 = optionsCopy;
  v28 = v21;
  v22 = handlerCopy;
  v30 = v22;
  v31 = v32;
  v23 = v13;
  v29 = v23;
  [(MOEventBundleManager *)eventBundleManager fetchEventBundlesWithOptions:v21 CompletionHandler:v24];

  _Block_object_dispose(v32, 8);
  objc_autoreleasePoolPop(v11);
}

void __71__MODaemonClient__fetchEventBundlesWithOptions_withContext_andHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v32 = a3;
  v30 = a1;
  v31 = a4;
  [*(a1 + 32) pet];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v42 = [v7 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "the number of event bundles fetched : %lu", buf, 0xCu);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v14 description];
          *buf = 138412290;
          v42 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "eventBundle fetched : %@", buf, 0xCu);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }

  v17 = [v31 mutableCopy];
  v18 = v17;
  if (v32)
  {
    [v17 setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
  }

  v19 = [*(v30 + 40) xpcProcessName];
  [v18 setObject:v19 forKey:@"triggerSource"];

  v20 = [*(v30 + 48) notifier];
  [v20 sendNotification:1 withPayload:v18];

  if ([*(v30 + 56) personalizedSensingFilter])
  {
    v21 = +[MOPersonalizedSensingUtils getPersonalizedSensingAllowedBundles:allowVisits:](MOPersonalizedSensingUtils, "getPersonalizedSensingAllowedBundles:allowVisits:", v9, [*(v30 + 56) personalizedSensingVisitsAllowed]);

    v9 = v21;
  }

  [*(v30 + 32) pet];
  v22 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCFetchEventBundlesCompletion", "", buf, 2u);
  }

  v23 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCFetchEventBundlesCompletion" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v23 startSession];
  v24 = *(v30 + 72);
  if (v24)
  {
    (*(v24 + 16))(v24, v9, v32);
  }

  v25 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCFetchEventBundlesCompletion", "", buf, 2u);
  }

  [(MOPerformanceMeasurement *)v23 endSession];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = __71__MODaemonClient__fetchEventBundlesWithOptions_withContext_andHandler___block_invoke_324;
  v33[3] = &unk_10033AEF0;
  v26 = *(v30 + 32);
  v27 = *(v30 + 80);
  v34 = v26;
  v35 = v27;
  v28 = objc_retainBlock(v33);
  [*(v30 + 48) _scheduleSendBarrierBlock:v28];
  v29 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, 1uLL, "momentsd_XPCFetchEventBundle", " enableTelemetry=YES ", buf, 2u);
  }

  [*(v30 + 64) endSession];
}

void __71__MODaemonClient__fetchEventBundlesWithOptions_withContext_andHandler___block_invoke_324(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)fetchEventBundlesWithPredicate:(id)predicate withContext:(id)context andHandler:(id)handler
{
  predicateCopy = predicate;
  contextCopy = context;
  handlerCopy = handler;
  v12 = NSStringFromSelector(a2);
  v13 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  v15 = [NSString stringWithFormat:@"InterruptMethod_%@", v14];
  [(MODaemonClient *)self _abortIfNeeded:v15];
  v25 = @"MOFetchEventBundles";
  v16 = [NSArray arrayWithObjects:&v25 count:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __72__MODaemonClient_fetchEventBundlesWithPredicate_withContext_andHandler___block_invoke;
  v23[3] = &unk_10033B2D8;
  v17 = handlerCopy;
  v24 = v17;
  v18 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v16 withErrorHandler:v23];

  if (v18)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __72__MODaemonClient_fetchEventBundlesWithPredicate_withContext_andHandler___block_invoke_2;
    v19[3] = &unk_1003361C0;
    v19[4] = self;
    v20 = predicateCopy;
    v21 = contextCopy;
    v22 = v17;
    [(MODaemonClient *)self scheduleClientTask:v19 withName:@"fetchEventBundlesWithPredicate"];
  }
}

void __72__MODaemonClient_fetchEventBundlesWithPredicate_withContext_andHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __72__MODaemonClient_fetchEventBundlesWithPredicate_withContext_andHandler___block_invoke_3;
  v6[3] = &unk_100337850;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _fetchEventBundlesWithPredicate:v3 withContext:v4 andHandler:v6];
}

id __72__MODaemonClient_fetchEventBundlesWithPredicate_withContext_andHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"fetchEventBundlesWithPredicate"];
}

- (void)_fetchEventBundlesWithPredicate:(id)predicate withContext:(id)context andHandler:(id)handler
{
  predicateCopy = predicate;
  contextCopy = context;
  handlerCopy = handler;
  context = objc_autoreleasePoolPush();
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__23;
  v34[4] = __Block_byref_object_dispose__23;
  v35 = os_transaction_create();
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "momentsd_XPCFetchEventBundle", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCFetchEventBundles" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v12 startSession];
  v13 = [(MODaemonClient *)self _createWatchDogWithName:@"FetchEventBundles"];
  v14 = predicateCopy;
  v33 = 0;
  v15 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v33];
  v16 = v33;
  if (v16)
  {
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MODaemonClient _fetchEventBundlesWithPredicate:withContext:andHandler:];
    }

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 1uLL, "momentsd_XPCFetchEventBundle", " enableTelemetry=YES ", buf, 2u);
    }

    [(MOPerformanceMeasurement *)v12 endSession];
  }

  else
  {
    [v15 allowEvaluation];
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleStore);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      predicateFormat = [v15 predicateFormat];
      *buf = 138412290;
      v37 = predicateFormat;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "deserializedfetchRequestPredicate, %@", buf, 0xCu);
    }

    v21 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      xpcProcessName = [contextCopy xpcProcessName];
      *buf = 138412290;
      v37 = xpcProcessName;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "fetch XPC context [%@]", buf, 0xCu);
    }

    eventBundleManager = self->_eventBundleManager;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __73__MODaemonClient__fetchEventBundlesWithPredicate_withContext_andHandler___block_invoke;
    v26[3] = &unk_10033B3E0;
    v27 = v13;
    v28 = contextCopy;
    selfCopy = self;
    v31 = handlerCopy;
    v32 = v34;
    v30 = v12;
    [(MOEventBundleManager *)eventBundleManager fetchEventBundlesWithPredicate:v15 completionHandler:v26];
  }

  _Block_object_dispose(v34, 8);
  objc_autoreleasePoolPop(contexta);
}

void __73__MODaemonClient__fetchEventBundlesWithPredicate_withContext_andHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v31 = a3;
  v29 = a1;
  v30 = a4;
  [*(a1 + 32) pet];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v41 = [v7 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "the number of event bundles fetched : %lu", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v14 description];
          *buf = 138412290;
          v41 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "eventBundle fetched : %@", buf, 0xCu);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v11);
  }

  v17 = [v30 mutableCopy];
  v18 = v17;
  if (v31)
  {
    [v17 setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
  }

  v19 = [*(v29 + 40) xpcProcessName];
  [v18 setObject:v19 forKey:@"triggerSource"];

  v20 = [*(v29 + 48) notifier];
  [v20 sendNotification:1 withPayload:v18];

  [*(v29 + 32) pet];
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCFetchEventBundlesCompletion", "", buf, 2u);
  }

  v22 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCFetchEventBundlesCompletion" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v22 startSession];
  v23 = *(v29 + 64);
  if (v23)
  {
    (*(v23 + 16))(v23, v9, v31);
  }

  v24 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCFetchEventBundlesCompletion", "", buf, 2u);
  }

  [(MOPerformanceMeasurement *)v22 endSession];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = __73__MODaemonClient__fetchEventBundlesWithPredicate_withContext_andHandler___block_invoke_331;
  v32[3] = &unk_10033AEF0;
  v25 = *(v29 + 32);
  v26 = *(v29 + 72);
  v33 = v25;
  v34 = v26;
  v27 = objc_retainBlock(v32);
  [*(v29 + 48) _scheduleSendBarrierBlock:v27];
  v28 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, 1uLL, "momentsd_XPCFetchEventBundle", " enableTelemetry=YES ", buf, 2u);
  }

  [*(v29 + 56) endSession];
}

void __73__MODaemonClient__fetchEventBundlesWithPredicate_withContext_andHandler___block_invoke_331(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)collectEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v11 = NSStringFromSelector(a2);
  v12 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v14 = [NSString stringWithFormat:@"InterruptMethod_%@", v13];
  [(MODaemonClient *)self _abortIfNeeded:v14];
  v21 = @"MOPromptManagerTest";
  v15 = [NSArray arrayWithObjects:&v21 count:1];
  v16 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v15 withErrorHandler:handlerCopy];

  if (v16)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __72__MODaemonClient_collectEventsWithContext_andRefreshVariant_andHandler___block_invoke;
    v17[3] = &unk_10033B390;
    v17[4] = self;
    v18 = contextCopy;
    variantCopy = variant;
    v19 = handlerCopy;
    [(MODaemonClient *)self scheduleInternalClientTask:v17 withName:@"collectEventsWithContext"];
  }
}

void __72__MODaemonClient_collectEventsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __72__MODaemonClient_collectEventsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v6[3] = &unk_10033B210;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _collectEventsWithContext:v3 andRefreshVariant:v4 andHandler:v6];
}

id __72__MODaemonClient_collectEventsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"collectEventsWithContext"];
}

- (void)_collectEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__23;
  v25[4] = __Block_byref_object_dispose__23;
  v26 = os_transaction_create();
  v11 = [(MODaemonClient *)self _createWatchDogWithName:@"CollectEvents"];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    v14 = [MODaemonClient getRefreshVariantName:variant];
    *buf = 138412546;
    v28 = xpcProcessName;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "collect XPC context [%@] variant [%@]", buf, 0x16u);
  }

  eventManager = self->_eventManager;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __73__MODaemonClient__collectEventsWithContext_andRefreshVariant_andHandler___block_invoke;
  v19[3] = &unk_10033B408;
  v16 = v11;
  v20 = v16;
  v17 = contextCopy;
  v21 = v17;
  selfCopy = self;
  v18 = handlerCopy;
  v23 = v18;
  v24 = v25;
  [(MOEventManager *)eventManager collectEventsWithRefreshVariant:variant andHandler:v19];

  _Block_object_dispose(v25, 8);
  objc_autoreleasePoolPop(v10);
}

void __73__MODaemonClient__collectEventsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 pet];
  v8 = [v7 mutableCopy];

  if (v5)
  {
    [v8 setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
  }

  v9 = [*(a1 + 40) xpcProcessName];
  [v8 setObject:v9 forKey:@"triggerSource"];

  v10 = [*(a1 + 48) notifier];
  [v10 sendNotification:2 withPayload:v8];

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v5);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __73__MODaemonClient__collectEventsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v18 = &unk_10033AEF0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v19 = v12;
  v20 = v13;
  v14 = objc_retainBlock(&v15);
  [*(a1 + 48) _scheduleSendBarrierBlock:{v14, v15, v16, v17, v18}];
}

void __73__MODaemonClient__collectEventsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)bundleEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v11 = NSStringFromSelector(a2);
  v12 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v14 = [NSString stringWithFormat:@"InterruptMethod_%@", v13];
  [(MODaemonClient *)self _abortIfNeeded:v14];
  v21 = @"MOPromptManagerTest";
  v15 = [NSArray arrayWithObjects:&v21 count:1];
  v16 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v15 withErrorHandler:handlerCopy];

  if (v16)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __71__MODaemonClient_bundleEventsWithContext_andRefreshVariant_andHandler___block_invoke;
    v17[3] = &unk_10033B390;
    v17[4] = self;
    v18 = contextCopy;
    variantCopy = variant;
    v19 = handlerCopy;
    [(MODaemonClient *)self scheduleInternalClientTask:v17 withName:@"bundleEventsWithContext"];
  }
}

void __71__MODaemonClient_bundleEventsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __71__MODaemonClient_bundleEventsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v6[3] = &unk_10033B210;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _bundleEventsWithContext:v3 andRefreshVariant:v4 andHandler:v6];
}

id __71__MODaemonClient_bundleEventsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) finalizeClientTaskWithName:@"bundleEventsWithContext"];
  v2 = *(a1 + 32);

  return [v2 scheduleMomentsUIFullProcessing];
}

- (void)scheduleMomentsUICloudSync
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __44__MODaemonClient_scheduleMomentsUICloudSync__block_invoke;
  v2[3] = &unk_100335F40;
  v2[4] = self;
  [(MODaemonClient *)self scheduleNonSerializedClientTask:v2 withName:@"scheduleMomentsUICloudSync"];
}

void __44__MODaemonClient_scheduleMomentsUICloudSync__block_invoke_2(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "scheduleMomentsUICloudSync complete, error: %@", &v4, 0xCu);
  }
}

- (void)_scheduleMomentsUICloudSync:(id)sync
{
  syncCopy = sync;
  v5 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__23;
  v14[4] = __Block_byref_object_dispose__23;
  v15 = os_transaction_create();
  v6 = [(MODaemonClient *)self _createWatchDogWithName:@"MomentsUICloudSync"];
  v7 = objc_alloc_init(_TtC8momentsd30ProcessingServerCoreConnection);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __46__MODaemonClient__scheduleMomentsUICloudSync___block_invoke;
  v10[3] = &unk_10033B450;
  v8 = v6;
  v11 = v8;
  v13 = v14;
  v9 = syncCopy;
  v12 = v9;
  [(ProcessingServerCoreConnection *)v7 cloudSyncWithCompletionHandler:v10];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v5);
}

void __46__MODaemonClient__scheduleMomentsUICloudSync___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v6 = a2;
  [v3 pet];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  (*(a1[5] + 16))();
}

- (void)scheduleMomentsUIFullProcessing
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __49__MODaemonClient_scheduleMomentsUIFullProcessing__block_invoke;
  v2[3] = &unk_100335F40;
  v2[4] = self;
  [(MODaemonClient *)self scheduleNonSerializedClientTask:v2 withName:@"scheduleMomentsUIFullProcessing"];
}

void __49__MODaemonClient_scheduleMomentsUIFullProcessing__block_invoke_2(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "scheduleMomentsUIFullProcessing complete, error: %@", &v4, 0xCu);
  }
}

- (void)checkUIActiveStatusWithHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __49__MODaemonClient_checkUIActiveStatusWithHandler___block_invoke;
  v4[3] = &unk_100337B48;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(MODaemonClient *)selfCopy scheduleNonSerializedClientTask:v4 withName:@"checkUIActiveStatus"];
}

- (void)_checkUIActiveStatusWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__23;
  v14[4] = __Block_byref_object_dispose__23;
  v15 = os_transaction_create();
  v6 = [(MODaemonClient *)self _createWatchDogWithName:@"MomentsUIActiveCheck"];
  v7 = objc_alloc_init(_TtC8momentsd30ProcessingServerCoreConnection);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __50__MODaemonClient__checkUIActiveStatusWithHandler___block_invoke;
  v10[3] = &unk_10033B498;
  v8 = v6;
  v11 = v8;
  v13 = v14;
  v9 = handlerCopy;
  v12 = v9;
  [(ProcessingServerCoreConnection *)v7 isUIActiveWithCompletionHandler:v10];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v5);
}

void __50__MODaemonClient__checkUIActiveStatusWithHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v9 = a2;
  [v5 pet];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  (*(a1[5] + 16))();
}

- (void)_scheduleMomentsUIFullProcessing:(id)processing
{
  processingCopy = processing;
  v5 = objc_autoreleasePoolPush();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__23;
  v14[4] = __Block_byref_object_dispose__23;
  v15 = os_transaction_create();
  v6 = [(MODaemonClient *)self _createWatchDogWithName:@"MomentsUIFullProcessing"];
  v7 = objc_alloc_init(_TtC8momentsd30ProcessingServerCoreConnection);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __51__MODaemonClient__scheduleMomentsUIFullProcessing___block_invoke;
  v10[3] = &unk_10033B450;
  v8 = v6;
  v11 = v8;
  v13 = v14;
  v9 = processingCopy;
  v12 = v9;
  [(ProcessingServerCoreConnection *)v7 runFullProcessingWithCompletionHandler:v10];

  _Block_object_dispose(v14, 8);
  objc_autoreleasePoolPop(v5);
}

void __51__MODaemonClient__scheduleMomentsUIFullProcessing___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v6 = a2;
  [v3 pet];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  (*(a1[5] + 16))();
}

- (void)_bundleEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__23;
  v25[4] = __Block_byref_object_dispose__23;
  v26 = os_transaction_create();
  v11 = [(MODaemonClient *)self _createWatchDogWithName:@"BundleEvents"];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    v14 = [MODaemonClient getRefreshVariantName:variant];
    *buf = 138412546;
    v28 = xpcProcessName;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "bundle XPC context [%@] variant [%@]", buf, 0x16u);
  }

  eventBundleManager = self->_eventBundleManager;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __72__MODaemonClient__bundleEventsWithContext_andRefreshVariant_andHandler___block_invoke;
  v19[3] = &unk_10033B408;
  v16 = v11;
  v20 = v16;
  v17 = contextCopy;
  v21 = v17;
  selfCopy = self;
  v18 = handlerCopy;
  v23 = v18;
  v24 = v25;
  [(MOEventBundleManager *)eventBundleManager bundleEventsWithRefreshVariant:variant andHandler:v19];

  _Block_object_dispose(v25, 8);
  objc_autoreleasePoolPop(v10);
}

void __72__MODaemonClient__bundleEventsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 pet];
  v8 = [v7 mutableCopy];

  if (v5)
  {
    [v8 setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
  }

  v9 = [*(a1 + 40) xpcProcessName];
  [v8 setObject:v9 forKey:@"triggerSource"];

  v10 = [*(a1 + 48) notifier];
  [v10 sendNotification:3 withPayload:v8];

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v5);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __72__MODaemonClient__bundleEventsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v18 = &unk_10033AEF0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v19 = v12;
  v20 = v13;
  v14 = objc_retainBlock(&v15);
  [*(a1 + 48) _scheduleSendBarrierBlock:{v14, v15, v16, v17, v18}];
}

void __72__MODaemonClient__bundleEventsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)purgeEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v11 = NSStringFromSelector(a2);
  v12 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v14 = [NSString stringWithFormat:@"InterruptMethod_%@", v13];
  [(MODaemonClient *)self _abortIfNeeded:v14];
  v21 = @"MOPromptManagerTest";
  v15 = [NSArray arrayWithObjects:&v21 count:1];
  v16 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v15 withErrorHandler:handlerCopy];

  if (v16)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __70__MODaemonClient_purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke;
    v17[3] = &unk_10033B390;
    v17[4] = self;
    v18 = contextCopy;
    variantCopy = variant;
    v19 = handlerCopy;
    [(MODaemonClient *)self scheduleInternalClientTask:v17 withName:@"purgeEventsWithContext"];
  }
}

void __70__MODaemonClient_purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __70__MODaemonClient_purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v6[3] = &unk_10033B210;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _purgeEventsWithContext:v3 andRefreshVariant:v4 andHandler:v6];
}

id __70__MODaemonClient_purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"purgeEventsWithContext"];
}

- (void)_purgeEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__23;
  v32[4] = __Block_byref_object_dispose__23;
  v33 = os_transaction_create();
  v11 = [(MODaemonClient *)self _createWatchDogWithName:@"PurgeEvents"];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__23;
  v30[4] = __Block_byref_object_dispose__23;
  v31 = 0;
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    v14 = [MODaemonClient getRefreshVariantName:variant];
    *buf = 138412546;
    v35 = xpcProcessName;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "purge XPC context [%@] variant [%@]", buf, 0x16u);
  }

  v15 = objc_alloc_init(NSMutableDictionary);
  eventManager = self->_eventManager;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __71__MODaemonClient__purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke;
  v21[3] = &unk_10033B4E8;
  v17 = v11;
  v22 = v17;
  v18 = v15;
  v23 = v18;
  selfCopy = self;
  v27 = v30;
  variantCopy = variant;
  v19 = contextCopy;
  v25 = v19;
  v20 = handlerCopy;
  v26 = v20;
  v28 = v32;
  [(MOEventManager *)eventManager cleanUpEventsWithRefreshVariant:variant andHandler:v21];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  objc_autoreleasePoolPop(v10);
}

void __71__MODaemonClient__purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  [*(a1 + 32) pet];
  if (v6)
  {
    [*(a1 + 40) setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
  }

  [*(a1 + 40) addEntriesFromDictionary:v7];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "purge: Calling purge bundles", buf, 2u);
  }

  v9 = *(*(a1 + 48) + 88);
  v10 = *(a1 + 88);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __71__MODaemonClient__purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke_380;
  v17[3] = &unk_10033B4C0;
  v11 = *(a1 + 40);
  v21 = *(a1 + 72);
  v12 = *(a1 + 56);
  v16 = *(a1 + 48);
  v20 = *(a1 + 64);
  v13 = *(a1 + 32);
  *&v14 = v16;
  *(&v14 + 1) = v13;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v18 = v15;
  v19 = v14;
  v22 = *(a1 + 80);
  [v9 cleanUpEventBundlesWithRefreshVariant:v10 andHandler:v17];
}

void __71__MODaemonClient__purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke_380(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
    v7 = *(*(a1 + 72) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    objc_storeStrong(v8, v11);
  }

  [*(a1 + 32) addEntriesFromDictionary:v6];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Purge expired events and bundles all completed", buf, 2u);
  }

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) xpcProcessName];
  [v13 setObject:v14 forKey:@"triggerSource"];

  v15 = [*(a1 + 48) notifier];
  [v15 sendNotification:4 withPayload:*(a1 + 32)];

  v16 = *(a1 + 64);
  if (v16)
  {
    (*(v16 + 16))(v16, *(*(*(a1 + 72) + 8) + 40));
  }

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = __71__MODaemonClient__purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke_381;
  v23 = &unk_10033AEF0;
  v17 = *(a1 + 56);
  v18 = *(a1 + 80);
  v24 = v17;
  v25 = v18;
  v19 = objc_retainBlock(&v20);
  [*(a1 + 48) _scheduleSendBarrierBlock:{v19, v20, v21, v22, v23}];
}

void __71__MODaemonClient__purgeEventsWithContext_andRefreshVariant_andHandler___block_invoke_381(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)runAnalyticsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v11 = NSStringFromSelector(a2);
  v12 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v14 = [NSString stringWithFormat:@"InterruptMethod_%@", v13];
  [(MODaemonClient *)self _abortIfNeeded:v14];
  v21 = @"MOPromptManagerTest";
  v15 = [NSArray arrayWithObjects:&v21 count:1];
  v16 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v15 withErrorHandler:handlerCopy];

  if (v16)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __71__MODaemonClient_runAnalyticsWithContext_andRefreshVariant_andHandler___block_invoke;
    v17[3] = &unk_10033B390;
    v17[4] = self;
    v18 = contextCopy;
    variantCopy = variant;
    v19 = handlerCopy;
    [(MODaemonClient *)self scheduleInternalClientTask:v17 withName:@"runAnalyticsWithContext"];
  }
}

void __71__MODaemonClient_runAnalyticsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __71__MODaemonClient_runAnalyticsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v6[3] = &unk_10033B210;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _runAnalyticsWithContext:v3 andRefreshVariant:v4 andHandler:v6];
}

id __71__MODaemonClient_runAnalyticsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"runAnalyticsWithContext"];
}

- (void)_runAnalyticsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__23;
  v25[4] = __Block_byref_object_dispose__23;
  v26 = os_transaction_create();
  v11 = [(MODaemonClient *)self _createWatchDogWithName:@"RunAnalytics"];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    v14 = [MODaemonClient getRefreshVariantName:variant];
    *buf = 138412546;
    v28 = xpcProcessName;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "analytics XPC context [%@] variant [%@]", buf, 0x16u);
  }

  eventManager = self->_eventManager;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __72__MODaemonClient__runAnalyticsWithContext_andRefreshVariant_andHandler___block_invoke;
  v19[3] = &unk_10033B408;
  v16 = v11;
  v20 = v16;
  v17 = contextCopy;
  v21 = v17;
  selfCopy = self;
  v18 = handlerCopy;
  v23 = v18;
  v24 = v25;
  [(MOEventManager *)eventManager runAnalyticsWithRefreshVariant:variant andHandler:v19];

  _Block_object_dispose(v25, 8);
  objc_autoreleasePoolPop(v10);
}

void __72__MODaemonClient__runAnalyticsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 pet];
  v8 = [v7 mutableCopy];

  if (v5)
  {
    [v8 setObject:&__kCFBooleanFalse forKey:@"resultOverallSuccess"];
  }

  v9 = [*(a1 + 40) xpcProcessName];
  [v8 setObject:v9 forKey:@"triggerSource"];

  v10 = [*(a1 + 48) notifier];
  [v10 sendNotification:5 withPayload:v8];

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v5);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __72__MODaemonClient__runAnalyticsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v18 = &unk_10033AEF0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v19 = v12;
  v20 = v13;
  v14 = objc_retainBlock(&v15);
  [*(a1 + 48) _scheduleSendBarrierBlock:{v14, v15, v16, v17, v18}];
}

void __72__MODaemonClient__runAnalyticsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)analyzeTrendsInEvents:(id)events withContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  eventsCopy = events;
  contextCopy = context;
  handlerCopy = handler;
  v14 = NSStringFromSelector(a2);
  v15 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];

  v17 = [NSString stringWithFormat:@"InterruptMethod_%@", v16];
  [(MODaemonClient *)self _abortIfNeeded:v17];
  v28 = @"MOPromptManagerTest";
  v18 = [NSArray arrayWithObjects:&v28 count:1];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __81__MODaemonClient_analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke;
  v26[3] = &unk_10033B2D8;
  v19 = handlerCopy;
  v27 = v19;
  v20 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v18 withErrorHandler:v26];

  if (v20)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __81__MODaemonClient_analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke_2;
    v21[3] = &unk_1003376B8;
    v21[4] = self;
    v22 = eventsCopy;
    v23 = contextCopy;
    variantCopy = variant;
    v24 = v19;
    [(MODaemonClient *)self scheduleInternalClientTask:v21 withName:@"analyzeTrendsInEvents"];
  }
}

void __81__MODaemonClient_analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __81__MODaemonClient_analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke_3;
  v7[3] = &unk_100337850;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v2 _analyzeTrendsInEvents:v3 withContext:v5 andRefreshVariant:v4 andHandler:v7];
}

id __81__MODaemonClient_analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"analyzeTrendsInEvents"];
}

- (void)_analyzeTrendsInEvents:(id)events withContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  eventsCopy = events;
  contextCopy = context;
  handlerCopy = handler;
  v13 = objc_autoreleasePoolPush();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__23;
  v28[4] = __Block_byref_object_dispose__23;
  v29 = os_transaction_create();
  v14 = [(MODaemonClient *)self _createWatchDogWithName:@"AnalyzeTrends"];
  v15 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "run trends analytics", buf, 2u);
  }

  v16 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    v18 = [MODaemonClient getRefreshVariantName:variant];
    *buf = 138412546;
    v31 = xpcProcessName;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "trends XPC context [%@] variant [%@]", buf, 0x16u);
  }

  v19 = objc_opt_new();
  buildAnalyticsPlans = [v19 buildAnalyticsPlans];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __82__MODaemonClient__analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke;
  v23[3] = &unk_10033B538;
  v21 = v14;
  v24 = v21;
  v22 = handlerCopy;
  v26 = v22;
  v27 = v28;
  selfCopy = self;
  [v19 analyzeEvents:eventsCopy analyticsPlans:buildAnalyticsPlans handler:v23];

  _Block_object_dispose(v28, 8);
  objc_autoreleasePoolPop(v13);
}

void __82__MODaemonClient__analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) pet];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "trends analytics completes", buf, 2u);
  }

  if (v6)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 1;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __82__MODaemonClient__analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke_397;
    v19[3] = &unk_10033B510;
    v20 = *(a1 + 32);
    v21 = buf;
    [v6 enumerateKeysAndObjectsUsingBlock:v19];
    [*(a1 + 32) pet];
    if (v23[24])
    {
      v8 = 0;
    }

    else
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __82__MODaemonClient__analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke_2;
      v17[3] = &unk_1003361E8;
      v9 = objc_opt_new();
      v18 = v9;
      [v6 enumerateKeysAndObjectsUsingBlock:v17];
      v26 = NSLocalizedDescriptionKey;
      v27 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v8 = [NSError errorWithDomain:@"MOErrorDomain" code:0 userInfo:v10];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 32) pet];
  (*(*(a1 + 48) + 16))();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __82__MODaemonClient__analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke_3;
  v14[3] = &unk_10033AEF0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v15 = v11;
  v16 = v12;
  v13 = objc_retainBlock(v14);
  [*(a1 + 40) _scheduleSendBarrierBlock:v13];
}

void __82__MODaemonClient__analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke_397(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 pet];
  LODWORD(v6) = [v7 unsignedIntValue];

  if ((v6 - 4) >= 3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __82__MODaemonClient__analyzeTrendsInEvents_withContext_andRefreshVariant_andHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)softRefreshEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andIgnoreLastTrigger:(BOOL)trigger andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v13 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting softRefresh", buf, 2u);
  }

  v14 = NSStringFromSelector(a2);
  v15 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];

  v17 = [NSString stringWithFormat:@"InterruptMethod_%@", v16];
  [(MODaemonClient *)self _abortIfNeeded:v17];
  if (variant == 1536)
  {
    v47[0] = @"MORefreshSoft";
    v47[1] = @"MOPromptManagerTest";
    v18 = [NSArray arrayWithObjects:v47 count:2];
    v19 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v18 withErrorHandler:handlerCopy];

    if ((v19 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_7:
    v22 = +[NSDate distantPast];
    defaultsManager = [(MODaemonClient *)self defaultsManager];
    v24 = [defaultsManager objectForKey:@"EventRefreshSchedulerLastSuccessfulTrigger"];

    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;

        v22 = v25;
      }
    }

    configManager = [(MODaemonClient *)self configManager];
    LODWORD(v27) = 1155596288;
    [configManager getFloatSettingForKey:@"EventRefreshSchedulerBlackoutTimeWindowForSoftRefresh" withFallback:v27];
    v29 = v28;

    v30 = +[NSDate now];
    [v30 timeIntervalSinceDate:v22];
    v32 = v31;

    if (!v22 || (v33 = v32, v33 <= 0.0) || v29 <= v33 || trigger)
    {
      acquireRefreshLock = [(MODaemonClient *)self acquireRefreshLock];
      v38 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);
      if (acquireRefreshLock)
      {
        if (v39)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "RefreshLock is acquired. Eligible to run soft refresh", buf, 2u);
        }

        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = __97__MODaemonClient_softRefreshEventsWithContext_andRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke;
        v40[3] = &unk_10033B390;
        v40[4] = self;
        v41 = contextCopy;
        variantCopy = variant;
        v42 = handlerCopy;
        [(MODaemonClient *)self scheduleInternalClientTask:v40 withName:@"softRefreshEventsWithContext"];

        goto LABEL_26;
      }

      if (v39)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "RefreshLock is in use. Drop the soft refresh.", buf, 2u);
      }

      if (!handlerCopy)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v34 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *&v35 = v33;
        v36 = [NSNumber numberWithFloat:v35];
        *buf = 138412290;
        v45 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "softRefreshEventsWithContext had nothing to do because we refreshed %@ seconds ago", buf, 0xCu);
      }

      if (!handlerCopy)
      {
        goto LABEL_26;
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_26:

    goto LABEL_27;
  }

  v46 = @"MOPromptManagerTest";
  v20 = [NSArray arrayWithObjects:&v46 count:1];
  v21 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v20 withErrorHandler:handlerCopy];

  if (v21)
  {
    goto LABEL_7;
  }

LABEL_27:
}

void __97__MODaemonClient_softRefreshEventsWithContext_andRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __97__MODaemonClient_softRefreshEventsWithContext_andRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke_2;
  v4[3] = &unk_10033B560;
  v4[4] = v1;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v1 _refreshEventsWithContext:v2 andRefreshVariant:v3 andSoftKindFlag:1 andHandler:v4];
}

id __97__MODaemonClient_softRefreshEventsWithContext_andRefreshVariant_andIgnoreLastTrigger_andHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 releaseRefreshLock];
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "RefreshLock is released.", v7, 2u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) finalizeClientTaskWithName:@"softRefreshEventsWithContext"];
  return [*(a1 + 32) scheduleMomentsUIFullProcessing];
}

- (BOOL)acquireRefreshLock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  refreshLock = selfCopy->_refreshLock;
  if (!refreshLock)
  {
    selfCopy->_refreshLock = 1;
  }

  objc_sync_exit(selfCopy);

  return !refreshLock;
}

- (void)releaseRefreshLock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_refreshLock)
  {
    selfCopy->_refreshLock = 0;
  }

  else
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [MODaemonClient releaseRefreshLock];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)refreshEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v11 = NSStringFromSelector(a2);
  v12 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];

  v14 = [NSString stringWithFormat:@"InterruptMethod_%@", v13];
  [(MODaemonClient *)self _abortIfNeeded:v14];
  if (variant == 512)
  {
    v31[0] = @"MORefreshLight";
    v31[1] = @"MOPromptManagerTest";
    v15 = [NSArray arrayWithObjects:v31 count:2];
    v16 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v15 withErrorHandler:handlerCopy];

    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v30 = @"MOPromptManagerTest";
    v17 = [NSArray arrayWithObjects:&v30 count:1];
    v18 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v17 withErrorHandler:handlerCopy];

    if (!v18)
    {
      goto LABEL_11;
    }
  }

  if ([(MODaemonClient *)self acquireRefreshLock])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __72__MODaemonClient_refreshEventsWithContext_andRefreshVariant_andHandler___block_invoke;
    v23[3] = &unk_10033B390;
    v23[4] = self;
    v24 = contextCopy;
    variantCopy = variant;
    v25 = handlerCopy;
    [(MODaemonClient *)self scheduleInternalClientTask:v23 withName:@"refreshEventsWithContext"];
  }

  else
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "RefreshLock is in use. Drop the refresh.", buf, 2u);
    }

    if (handlerCopy)
    {
      v20 = [NSError alloc];
      v28 = NSLocalizedDescriptionKey;
      v29 = @"The refresh is dropped due to an existing refresh.";
      v21 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v22 = [v20 initWithDomain:@"MODaemonClient" code:0 userInfo:v21];

      (*(handlerCopy + 2))(handlerCopy, v22);
    }
  }

LABEL_11:
}

void __72__MODaemonClient_refreshEventsWithContext_andRefreshVariant_andHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __72__MODaemonClient_refreshEventsWithContext_andRefreshVariant_andHandler___block_invoke_2;
  v4[3] = &unk_10033B560;
  v4[4] = v1;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v1 _refreshEventsWithContext:v2 andRefreshVariant:v3 andSoftKindFlag:0 andHandler:v4];
}

id __72__MODaemonClient_refreshEventsWithContext_andRefreshVariant_andHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 releaseRefreshLock];
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "RefreshLock is released.", v7, 2u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) finalizeClientTaskWithName:@"refreshEventsWithContext"];
  return [*(a1 + 32) scheduleMomentsUIFullProcessing];
}

- (void)_refreshEventsWithContext:(id)context andRefreshVariant:(unint64_t)variant andSoftKindFlag:(BOOL)flag andHandler:(id)handler
{
  flagCopy = flag;
  contextCopy = context;
  handlerCopy = handler;
  v11 = [(MODaemonClient *)self _createWatchDogWithName:@"refreshEvents"];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    v14 = [NSNumber numberWithBool:flagCopy];
    v15 = [MODaemonClient getRefreshVariantName:variant];
    *buf = 138412802;
    *&buf[4] = xpcProcessName;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v121 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "refresh XPC context [%@] soft kind [%@] variant [%@]", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v121 = __Block_byref_object_copy__23;
  v122 = __Block_byref_object_dispose__23;
  v123 = 0;
  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x3032000000;
  v116[3] = __Block_byref_object_copy__23;
  v116[4] = __Block_byref_object_dispose__23;
  v117 = os_transaction_create();
  v16 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v17 = v16;
  if (variant - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v118 = 134349056;
    variantCopy = variant;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, variant, "momentsd_XPCRefresh", " variant=%{signpost.telemetry:number1,public}lu  enableTelemetry=YES ", v118, 0xCu);
  }

  v18 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRefresh" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v18 startSession];
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke;
  v108[3] = &unk_10033B588;
  variantCopy2 = variant;
  v19 = v11;
  v109 = v19;
  v51 = handlerCopy;
  v112 = v51;
  selfCopy = self;
  v113 = buf;
  v114 = v116;
  v52 = v18;
  v111 = v52;
  v20 = objc_retainBlock(v108);
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_428;
  v103[3] = &unk_10033B390;
  variantCopy3 = variant;
  v21 = v19;
  v104 = v21;
  selfCopy2 = self;
  v22 = v20;
  v106 = v22;
  v23 = objc_retainBlock(v103);
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_433;
  v97[3] = &unk_1003376B8;
  variantCopy4 = variant;
  v24 = v21;
  v98 = v24;
  selfCopy3 = self;
  v25 = contextCopy;
  v100 = v25;
  v26 = v23;
  v101 = v26;
  v27 = objc_retainBlock(v97);
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_439;
  v87[3] = &unk_10033B628;
  variantCopy5 = variant;
  v28 = v24;
  v88 = v28;
  selfCopy4 = self;
  v29 = v25;
  v90 = v29;
  v94 = buf;
  v96 = flagCopy;
  v53 = v26;
  v91 = v53;
  v54 = v27;
  v92 = v54;
  v30 = v22;
  v93 = v30;
  v31 = objc_retainBlock(v87);
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_444;
  v80[3] = &unk_10033B678;
  variantCopy6 = variant;
  v32 = v28;
  v81 = v32;
  selfCopy5 = self;
  v33 = v29;
  v83 = v33;
  v85 = buf;
  v34 = v31;
  v84 = v34;
  v35 = objc_retainBlock(v80);
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_449;
  v70[3] = &unk_10033B628;
  variantCopy7 = variant;
  v36 = v32;
  v71 = v36;
  selfCopy6 = self;
  v37 = v33;
  v73 = v37;
  v77 = buf;
  v38 = v30;
  v74 = v38;
  v79 = flagCopy;
  v39 = v34;
  v75 = v39;
  v40 = v35;
  v76 = v40;
  v41 = objc_retainBlock(v70);
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_454;
  v63[3] = &unk_10033B678;
  variantCopy8 = variant;
  v42 = v36;
  v64 = v42;
  selfCopy7 = self;
  v43 = v37;
  v66 = v43;
  v68 = buf;
  v44 = v41;
  v67 = v44;
  v45 = objc_retainBlock(v63);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_459;
  v56[3] = &unk_10033B678;
  variantCopy9 = variant;
  v46 = v42;
  v57 = v46;
  selfCopy8 = self;
  v47 = v43;
  v59 = v47;
  v61 = buf;
  v48 = v45;
  v60 = v48;
  v49 = objc_retainBlock(v56);
  internalQueue = [(MODaemonClient *)self internalQueue];
  dispatch_async(internalQueue, v49);

  _Block_object_dispose(v116, 8);
  _Block_object_dispose(buf, 8);
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "XPCRefreshCompletion", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRefreshCompletion" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  [*(a1 + 32) pet];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, *(*(*(a1 + 64) + 8) + 40));
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_427;
  v16[3] = &unk_10033B340;
  v15 = *(a1 + 32);
  v7 = v15.i64[0];
  v17 = vextq_s8(v15, v15, 8uLL);
  v18 = *(a1 + 72);
  v8 = objc_retainBlock(v16);
  [*(a1 + 40) _scheduleSendBarrierBlock:v8];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v10 = v9;
  v11 = *(a1 + 80);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "XPCRefreshCompletion", "", buf, 2u);
  }

  [(MOPerformanceMeasurement *)v5 endSession];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v13 = v12;
  v14 = *(a1 + 80);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 134349056;
    v20 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "momentsd_XPCRefresh", " variant=%{signpost.telemetry:number1,public}lu  enableTelemetry=YES ", buf, 0xCu);
  }

  [*(a1 + 48) endSession];
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_427(uint64_t a1)
{
  v2 = [*(a1 + 32) eventManager];
  [v2 clearCache];

  [*(a1 + 40) cancel];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_428(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "EngagementDataUpdate", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"EngagementDataUpdate" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  [*(a1 + 32) pet];
  v6 = *(a1 + 56);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_432;
  v12[3] = &unk_10033B5B0;
  v17 = v6;
  v13 = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v11 = v5;
  [v7 updateEngagementLightStreamWithRefreshVariant:v6 handler:v12];
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_432(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "EngagementDataUpdate", "", v6, 2u);
  }

  [*(a1 + 32) endSession];
  [*(a1 + 40) pet];
  v5 = [*(a1 + 48) internalQueue];
  dispatch_async(v5, *(a1 + 56));
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_433(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "XPCRefreshDataDump", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRefreshDataDump" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  [*(a1 + 32) pet];
  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_437;
  v12[3] = &unk_10033B5D8;
  v17 = v6;
  v13 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 56);
  v11 = v5;
  [v7 _checkElegibilityAndRequestDataExportForTrigger:2 withFeedback:0 requestUpload:1 refreshVariant:v6 context:v8 reply:v12];
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_437(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "XPCRefreshDataDump", "", v7, 2u);
  }

  [*(a1 + 32) endSession];
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_437_cold_1();
  }

  [*(a1 + 40) pet];
  v6 = [*(a1 + 48) internalQueue];
  dispatch_async(v6, *(a1 + 56));
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_439(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 88);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "XPCRefreshBundleEvents", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRefreshBundleEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  [*(a1 + 32) pet];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 88);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_443;
  v17[3] = &unk_10033B600;
  v9 = *(a1 + 80);
  v18 = v5;
  v22 = v9;
  v23 = v8;
  v10 = *(a1 + 32);
  v24 = *(a1 + 96);
  *&v11 = v10;
  *(&v11 + 1) = *(a1 + 40);
  v16 = v11;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v19 = v16;
  v20 = v14;
  v21 = *(a1 + 72);
  v15 = v5;
  [v6 _bundleEventsWithContext:v7 andRefreshVariant:v8 andHandler:v17];
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_443(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v5 = v4;
  v6 = *(a1 + 88);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "XPCRefreshBundleEvents", "", buf, 2u);
  }

  [*(a1 + 32) endSession];
  v7 = *(*(a1 + 80) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  objc_storeStrong(v8, v11);
  [*(a1 + 40) pet];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v20[0] = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Refresh: All completed!", v20, 2u);
  }

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_443_cold_1();
    }

    v14 = [*(a1 + 48) internalQueue];
    v15 = 72;
  }

  else
  {
    v16 = [*(a1 + 48) defaultsManager];
    v17 = +[NSDate now];
    [v16 setObject:v17 forKey:@"EventRefreshSchedulerLastSuccessfulTrigger"];

    v18 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_443_cold_2();
    }

    v19 = *(a1 + 96);
    v14 = [*(a1 + 48) internalQueue];
    v15 = 64;
    if (v19)
    {
      v15 = 56;
    }
  }

  dispatch_async(v14, *(a1 + v15));
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_444(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "XPCRefreshAnalytics", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRefreshAnalytics" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  [*(a1 + 32) pet];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_448;
  v14[3] = &unk_10033B650;
  v18 = v8;
  v15 = v5;
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = *(a1 + 40);
  v13 = v10;
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v9;
  v16 = v13;
  v17 = v11;
  v12 = v5;
  [v6 _runAnalyticsWithContext:v7 andRefreshVariant:v8 andHandler:v14];
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v5 = v4;
  v6 = *(a1 + 72);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "XPCRefreshAnalytics", "", v13, 2u);
  }

  [*(a1 + 32) endSession];
  v7 = *(*(a1 + 64) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  objc_storeStrong(v8, v11);
  [*(a1 + 40) pet];
  v12 = [*(a1 + 48) internalQueue];
  dispatch_async(v12, *(a1 + 56));
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_449(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 88);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "XPCRefreshCollect", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRefreshCollect" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  [*(a1 + 32) pet];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 88);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_453;
  v16[3] = &unk_10033B600;
  v9 = *(a1 + 80);
  v17 = v5;
  v21 = v9;
  v22 = v8;
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = *(a1 + 40);
  v15 = v10;
  v11 = *(a1 + 56);
  v23 = *(a1 + 96);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v18 = v15;
  v19 = v13;
  v20 = *(a1 + 72);
  v14 = v5;
  [v6 _collectEventsWithContext:v7 andRefreshVariant:v8 andHandler:v16];
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_453(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v6 = v5;
  v7 = *(a1 + 88);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v18[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "XPCRefreshCollect", "", v18, 2u);
  }

  [*(a1 + 32) endSession];
  v8 = *(*(a1 + 80) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  objc_storeStrong(v9, v12);
  [*(a1 + 40) pet];
  if (v4 && (([v4 code] & 0x400) != 0 || objc_msgSend(v4, "code") == 22) && (objc_msgSend(v4, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == @"MOErrorDomain"))
  {
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_453_cold_1();
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a2);
    v15 = [*(a1 + 48) internalQueue];
    v16 = 56;
  }

  else
  {
    v14 = *(a1 + 96);
    v15 = [*(a1 + 48) internalQueue];
    v16 = 72;
    if (v14)
    {
      v16 = 64;
    }
  }

  dispatch_async(v15, *(a1 + v16));
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_454(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "XPCRefreshPurge", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRefreshPurge" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  [*(a1 + 32) pet];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_458;
  v14[3] = &unk_10033B650;
  v18 = v8;
  v15 = v5;
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = *(a1 + 40);
  v13 = v10;
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v9;
  v16 = v13;
  v17 = v11;
  v12 = v5;
  [v6 _purgeEventsWithContext:v7 andRefreshVariant:v8 andHandler:v14];
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_458(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v5 = v4;
  v6 = *(a1 + 72);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "XPCRefreshPurge", "", v13, 2u);
  }

  [*(a1 + 32) endSession];
  v7 = *(*(a1 + 64) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  objc_storeStrong(v8, v11);
  [*(a1 + 40) pet];
  v12 = [*(a1 + 48) internalQueue];
  dispatch_async(v12, *(a1 + 56));
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_459(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "XPCRefreshClearEvents", "", buf, 2u);
  }

  v5 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRefreshClearEvents" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v5 startSession];
  [*(a1 + 32) pet];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_463;
  v14[3] = &unk_10033B650;
  v18 = v8;
  v15 = v5;
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = *(a1 + 40);
  v13 = v10;
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v9;
  v16 = v13;
  v17 = v11;
  v12 = v5;
  [v6 _clearEventsWithContext:v7 andRefreshVariant:v8 andHandler:v14];
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_463(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  v5 = v4;
  v6 = *(a1 + 72);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v13[0] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "XPCRefreshClearEvents", "", v13, 2u);
  }

  [*(a1 + 32) endSession];
  v7 = *(*(a1 + 64) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  objc_storeStrong(v8, v11);
  [*(a1 + 40) pet];
  v12 = [*(a1 + 48) internalQueue];
  dispatch_async(v12, *(a1 + 56));
}

- (void)checkElegibilityAndRequestDataExportForTrigger:(unint64_t)trigger withFeedback:(id)feedback requestUpload:(BOOL)upload reply:(id)reply
{
  feedbackCopy = feedback;
  replyCopy = reply;
  v13 = NSStringFromSelector(a2);
  v14 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v15 = [v13 stringByTrimmingCharactersInSet:v14];

  v16 = [NSString stringWithFormat:@"InterruptMethod_%@", v15];
  [(MODaemonClient *)self _abortIfNeeded:v16];
  v27 = @"MOPromptManagerTest";
  v17 = [NSArray arrayWithObjects:&v27 count:1];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __98__MODaemonClient_checkElegibilityAndRequestDataExportForTrigger_withFeedback_requestUpload_reply___block_invoke;
  v25[3] = &unk_10033B2D8;
  v18 = replyCopy;
  v26 = v18;
  v19 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v17 withErrorHandler:v25];

  if (v19)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __98__MODaemonClient_checkElegibilityAndRequestDataExportForTrigger_withFeedback_requestUpload_reply___block_invoke_2;
    v20[3] = &unk_10033B6C8;
    v20[4] = self;
    triggerCopy = trigger;
    v21 = feedbackCopy;
    uploadCopy = upload;
    v22 = v18;
    [(MODaemonClient *)self scheduleInternalClientTask:v20 withName:@"dataDumpWithFeedback"];
  }
}

void __98__MODaemonClient_checkElegibilityAndRequestDataExportForTrigger_withFeedback_requestUpload_reply___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __98__MODaemonClient_checkElegibilityAndRequestDataExportForTrigger_withFeedback_requestUpload_reply___block_invoke_3;
  v7[3] = &unk_10033B6A0;
  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v2 _checkElegibilityAndRequestDataExportForTrigger:v5 withFeedback:v3 requestUpload:v4 refreshVariant:0 context:0 reply:v7];
}

id __98__MODaemonClient_checkElegibilityAndRequestDataExportForTrigger_withFeedback_requestUpload_reply___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"dataDumpWithFeedback"];
}

void __122__MODaemonClient__checkElegibilityAndRequestDataExportForTrigger_withFeedback_requestUpload_refreshVariant_context_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) pet];
  v7 = [v6 objectForKey:@"kMODataDumpEnabled"];

  v8 = *(a1 + 48);
  if (v8)
  {
    if (v5 || !v7)
    {
      v9 = 0;
      v10 = v5;
    }

    else
    {
      v9 = v6;
      v10 = 0;
    }

    (*(v8 + 16))(v8, v9, v10);
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = __122__MODaemonClient__checkElegibilityAndRequestDataExportForTrigger_withFeedback_requestUpload_refreshVariant_context_reply___block_invoke_2;
  v17 = &unk_10033AEF0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v18 = v11;
  v19 = v12;
  v13 = objc_retainBlock(&v14);
  [*(a1 + 40) _scheduleSendBarrierBlock:{v13, v14, v15, v16, v17}];
}

void __122__MODaemonClient__checkElegibilityAndRequestDataExportForTrigger_withFeedback_requestUpload_refreshVariant_context_reply___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)getSnapshotDictionaryForAnalyticsWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v17 = @"MOPromptManagerTest";
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __63__MODaemonClient_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke;
  v15[3] = &unk_10033B2D8;
  v11 = handlerCopy;
  v16 = v11;
  v12 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:v15];

  if (v12)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __63__MODaemonClient_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke_2;
    v13[3] = &unk_100337B48;
    v13[4] = self;
    v14 = v11;
    [(MODaemonClient *)self scheduleInternalClientTask:v13 withName:@"getSnapshotDictionaryForAnalyticsWithHandler"];
  }
}

void __63__MODaemonClient_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke_2(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __63__MODaemonClient_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke_3;
  v4[3] = &unk_10033B6A0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _getSnapshotDictionaryForAnalyticsWithHandler:v4];
}

id __63__MODaemonClient_getSnapshotDictionaryForAnalyticsWithHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"getSnapshotDictionaryForAnalyticsWithHandler"];
}

- (void)_getSnapshotDictionaryForAnalyticsWithHandler:(id)handler
{
  handlerCopy = handler;
  onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
  getSnapshotDictionaryForAnalytics = [onboardingAndSettingsPersistence getSnapshotDictionaryForAnalytics];

  handlerCopy[2](handlerCopy, getSnapshotDictionaryForAnalytics, 0);
}

- (void)testNotificationAnalyticsWithContext:(id)context andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v9 = NSStringFromSelector(a2);
  v10 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  v12 = [NSString stringWithFormat:@"InterruptMethod_%@", v11];
  [(MODaemonClient *)self _abortIfNeeded:v12];
  v18 = @"MOPromptManagerTest";
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  v14 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v13 withErrorHandler:handlerCopy];

  if (v14)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __66__MODaemonClient_testNotificationAnalyticsWithContext_andHandler___block_invoke;
    v15[3] = &unk_100336A58;
    v15[4] = self;
    v16 = contextCopy;
    v17 = handlerCopy;
    [(MODaemonClient *)self scheduleInternalClientTask:v15 withName:@"testNotificationAnalyticsWithContext"];
  }
}

void __66__MODaemonClient_testNotificationAnalyticsWithContext_andHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __66__MODaemonClient_testNotificationAnalyticsWithContext_andHandler___block_invoke_2;
  v5[3] = &unk_10033B210;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _testNotificationAnalyticsWithContext:v3 andHandler:v5];
}

id __66__MODaemonClient_testNotificationAnalyticsWithContext_andHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 finalizeClientTaskWithName:@"testNotificationAnalyticsWithContext"];
}

- (void)_testNotificationAnalyticsWithContext:(id)context andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v9 = os_transaction_create();
  notificationAnalyticsManager = [(MODaemonClient *)self notificationAnalyticsManager];
  v15 = 0;
  v11 = [notificationAnalyticsManager submitAggregatedNotificationAnalytics:&v15];
  v12 = v15;

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = @"failed";
    if (v11)
    {
      v14 = @"succeeded";
    }

    *buf = 138412546;
    v17 = v14;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Test notification analytics submission %@, error: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v12);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)generateAvailabilityPredictionsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__23;
  v15[4] = __Block_byref_object_dispose__23;
  v16 = os_transaction_create();
  v6 = [(MODaemonClient *)self _createWatchDogWithName:@"AvailabilityPrediction"];
  notificationsManager = self->_notificationsManager;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __61__MODaemonClient_generateAvailabilityPredictionsWithHandler___block_invoke;
  v10[3] = &unk_10033B6F0;
  v8 = v6;
  v11 = v8;
  v9 = handlerCopy;
  v13 = v9;
  v14 = v15;
  selfCopy = self;
  [(MONotificationsManager *)notificationsManager generateAvailabilityPredictionsWithHandler:v10];

  _Block_object_dispose(v15, 8);
  objc_autoreleasePoolPop(v5);
}

void __61__MODaemonClient_generateAvailabilityPredictionsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) pet];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __61__MODaemonClient_generateAvailabilityPredictionsWithHandler___block_invoke_2;
  v11 = &unk_10033AEF0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v12 = v5;
  v13 = v6;
  v7 = objc_retainBlock(&v8);
  [*(a1 + 40) _scheduleSendBarrierBlock:{v7, v8, v9, v10, v11}];
}

void __61__MODaemonClient_generateAvailabilityPredictionsWithHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)generateAvailabilityPredictionsAndRegisterTimerWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__23;
  v15[4] = __Block_byref_object_dispose__23;
  v16 = os_transaction_create();
  v6 = [(MODaemonClient *)self _createWatchDogWithName:@"AvailabilityPrediction"];
  notificationsManager = self->_notificationsManager;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __77__MODaemonClient_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke;
  v10[3] = &unk_10033B6F0;
  v8 = v6;
  v11 = v8;
  v9 = handlerCopy;
  v13 = v9;
  v14 = v15;
  selfCopy = self;
  [(MONotificationsManager *)notificationsManager generateAvailabilityPredictionsAndRegisterTimerWithHandler:v10];

  _Block_object_dispose(v15, 8);
  objc_autoreleasePoolPop(v5);
}

void __77__MODaemonClient_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) pet];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __77__MODaemonClient_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_2;
  v11 = &unk_10033AEF0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v12 = v5;
  v13 = v6;
  v7 = objc_retainBlock(&v8);
  [*(a1 + 40) _scheduleSendBarrierBlock:{v7, v8, v9, v10, v11}];
}

void __77__MODaemonClient_generateAvailabilityPredictionsAndRegisterTimerWithHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)updateEngagementLightStreamWithRefreshVariant:(unint64_t)variant handler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__23;
  v17[4] = __Block_byref_object_dispose__23;
  v18 = os_transaction_create();
  v8 = [(MODaemonClient *)self _createWatchDogWithName:@"UpdateEngagement"];
  engagementHistoryManager = self->_engagementHistoryManager;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __72__MODaemonClient_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke;
  v12[3] = &unk_10033B6F0;
  v10 = v8;
  v13 = v10;
  v11 = handlerCopy;
  v15 = v11;
  v16 = v17;
  selfCopy = self;
  [(MOEngagementHistoryManager *)engagementHistoryManager updateEngagementLightStreamWithRefreshVariant:variant handler:v12];

  _Block_object_dispose(v17, 8);
  objc_autoreleasePoolPop(v7);
}

void __72__MODaemonClient_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) pet];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __72__MODaemonClient_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke_2;
  v11 = &unk_10033AEF0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v12 = v5;
  v13 = v6;
  v7 = objc_retainBlock(&v8);
  [*(a1 + 40) _scheduleSendBarrierBlock:{v7, v8, v9, v10, v11}];
}

void __72__MODaemonClient_updateEngagementLightStreamWithRefreshVariant_handler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)fetchEligiblePOICategoriesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__23;
  v15[4] = __Block_byref_object_dispose__23;
  v16 = os_transaction_create();
  v6 = [(MODaemonClient *)self _createWatchDogWithName:@"EligibleCategories"];
  notificationsManager = self->_notificationsManager;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __56__MODaemonClient_fetchEligiblePOICategoriesWithHandler___block_invoke;
  v10[3] = &unk_10033B718;
  v8 = v6;
  v11 = v8;
  v9 = handlerCopy;
  v13 = v9;
  v14 = v15;
  selfCopy = self;
  [(MONotificationsManager *)notificationsManager fetchEligiblePOICategoriesForNotificationsWithHandler:v10];

  _Block_object_dispose(v15, 8);
  objc_autoreleasePoolPop(v5);
}

void __56__MODaemonClient_fetchEligiblePOICategoriesWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) pet];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __56__MODaemonClient_fetchEligiblePOICategoriesWithHandler___block_invoke_2;
  v14 = &unk_10033AEF0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v15 = v8;
  v16 = v9;
  v10 = objc_retainBlock(&v11);
  [*(a1 + 40) _scheduleSendBarrierBlock:{v10, v11, v12, v13, v14}];
}

void __56__MODaemonClient_fetchEligiblePOICategoriesWithHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)fetchPhotoAnalyticsMetricsWithContext:(id)context andHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v9 = [(MODaemonClient *)self _createWatchDogWithName:@"FetchPhotoAnlytics"];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "run analytics", &v15, 2u);
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    xpcProcessName = [contextCopy xpcProcessName];
    v15 = 138412290;
    v16 = xpcProcessName;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "photo analytics XPC context [%@]", &v15, 0xCu);
  }

  v13 = objc_opt_new();
  [v13 setValue:@"1.0.1" forKey:@"version"];
  v14 = [NSNumber numberWithInt:arc4random_uniform(0x4Au)];
  [v13 setValue:v14 forKey:@"seed"];

  handlerCopy[2](handlerCopy, v13, 0);
  [v9 cancel];

  objc_autoreleasePoolPop(v8);
}

- (void)isAllowedToPromptResourceType:(unint64_t)type withReply:(id)reply
{
  replyCopy = reply;
  v8 = NSStringFromSelector(a2);
  v9 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  v11 = [NSString stringWithFormat:@"InterruptMethod_%@", v10];
  [(MODaemonClient *)self _abortIfNeeded:v11];
  v17 = @"MOReadPermissions";
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __58__MODaemonClient_isAllowedToPromptResourceType_withReply___block_invoke;
  v15[3] = &unk_10033B2D8;
  v13 = replyCopy;
  v16 = v13;
  v14 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v12 withErrorHandler:v15];

  if (v14)
  {
    [(MODaemonClient *)self _isAllowedToPromptResourceType:type withReply:v13];
  }
}

- (void)_isAllowedToPromptResourceType:(unint64_t)type withReply:(id)reply
{
  replyCopy = reply;
  v7 = objc_autoreleasePoolPush();
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__23;
  v22[4] = __Block_byref_object_dispose__23;
  v23 = os_transaction_create();
  v8 = [(MODaemonClient *)self _createWatchDogWithName:@"IsAllowedToPromptResourceType"];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [NSNumber numberWithUnsignedInteger:type];
    *buf = 138412290;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "isAllowedToPrompt resource category %@", buf, 0xCu);
  }

  v11 = [(MOConfigurationManager *)self->_configManager isAllowedToPromptResourceType:type];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [NSNumber numberWithBool:v11];
    *buf = 138412290;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "isAllowedToPrompt result: %@", buf, 0xCu);
  }

  replyCopy[2](replyCopy, v11, 0);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = __59__MODaemonClient__isAllowedToPromptResourceType_withReply___block_invoke;
  v19 = &unk_10033AEF0;
  v14 = v8;
  v20 = v14;
  v21 = v22;
  v15 = objc_retainBlock(&v16);
  [(MODaemonClient *)self _scheduleSendBarrierBlock:v15, v16, v17, v18, v19];

  _Block_object_dispose(v22, 8);
  objc_autoreleasePoolPop(v7);
}

void __59__MODaemonClient__isAllowedToPromptResourceType_withReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)isAllowedToPromptEventCategory:(unint64_t)category withReply:(id)reply
{
  replyCopy = reply;
  v8 = NSStringFromSelector(a2);
  v9 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  v11 = [NSString stringWithFormat:@"InterruptMethod_%@", v10];
  [(MODaemonClient *)self _abortIfNeeded:v11];
  v17 = @"MOReadPermissions";
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __59__MODaemonClient_isAllowedToPromptEventCategory_withReply___block_invoke;
  v15[3] = &unk_10033B2D8;
  v13 = replyCopy;
  v16 = v13;
  v14 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v12 withErrorHandler:v15];

  if (v14)
  {
    [(MODaemonClient *)self _isAllowedToPromptEventCategory:category withReply:v13];
  }
}

- (void)_isAllowedToPromptEventCategory:(unint64_t)category withReply:(id)reply
{
  replyCopy = reply;
  v7 = objc_autoreleasePoolPush();
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__23;
  v22[4] = __Block_byref_object_dispose__23;
  v23 = os_transaction_create();
  v8 = [(MODaemonClient *)self _createWatchDogWithName:@"IsAllowedToPromptEventCategory"];
  v9 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [NSNumber numberWithUnsignedInteger:category];
    *buf = 138412290;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "isAllowedToPrompt event category %@", buf, 0xCu);
  }

  v11 = [(MOConfigurationManager *)self->_configManager isAllowedToPromptEventCategory:category];
  v12 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [NSNumber numberWithBool:v11];
    *buf = 138412290;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "isAllowedToPrompt result: %@", buf, 0xCu);
  }

  replyCopy[2](replyCopy, v11, 0);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = __60__MODaemonClient__isAllowedToPromptEventCategory_withReply___block_invoke;
  v19 = &unk_10033AEF0;
  v14 = v8;
  v20 = v14;
  v21 = v22;
  v15 = objc_retainBlock(&v16);
  [(MODaemonClient *)self _scheduleSendBarrierBlock:v15, v16, v17, v18, v19];

  _Block_object_dispose(v22, 8);
  objc_autoreleasePoolPop(v7);
}

void __60__MODaemonClient__isAllowedToPromptEventCategory_withReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)logEngagementEvent:(id)event timestamp:(id)timestamp withContext:(id)context
{
  eventCopy = event;
  timestampCopy = timestamp;
  contextCopy = context;
  v12 = NSStringFromSelector(a2);
  v13 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  v15 = [NSString stringWithFormat:@"InterruptMethod_%@", v14];
  [(MODaemonClient *)self _abortIfNeeded:v15];
  v18 = @"MOLogEngagement";
  v16 = [NSArray arrayWithObjects:&v18 count:1];
  v17 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v16 withErrorHandler:&__block_literal_global_518];

  if (v17)
  {
    [(MODaemonClient *)self _logEngagementEvent:eventCopy timestamp:timestampCopy withContext:contextCopy];
  }
}

void __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke_cold_1(v2);
  }
}

- (void)_logEngagementEvent:(id)event timestamp:(id)timestamp withContext:(id)context
{
  eventCopy = event;
  timestampCopy = timestamp;
  contextCopy = context;
  configManager = [(MODaemonClient *)self configManager];
  getTrialExperimentIdentifiers = [configManager getTrialExperimentIdentifiers];

  onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
  getSnapshotDictionaryForAnalytics = [onboardingAndSettingsPersistence getSnapshotDictionaryForAnalytics];

  context = objc_autoreleasePoolPush();
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__23;
  v43[4] = __Block_byref_object_dispose__23;
  v44 = os_transaction_create();
  v14 = [(MODaemonClient *)self _createWatchDogWithName:@"logEngagementEvent"];
  v15 = [contextCopy objectForKeyedSubscript:@"eventBundles"];
  v16 = self->_engagementHistoryManager;
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v46 = getTrialExperimentIdentifiers;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Trial id: %@", buf, 0xCu);
  }

  v18 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v46 = eventCopy;
    v47 = 2112;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "logEngagementEvent %@ for bundles: '%@'", buf, 0x16u);
  }

  if (v15)
  {
    context = [[MOEventBundleFetchOptions alloc] initWithIdentifiers:v15 ascending:0 filterBundle:0, context];
    eventBundleManager = self->_eventBundleManager;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = __60__MODaemonClient__logEngagementEvent_timestamp_withContext___block_invoke;
    v34[3] = &unk_10033B760;
    v35 = v14;
    v36 = v16;
    v37 = eventCopy;
    v38 = timestampCopy;
    v39 = contextCopy;
    v40 = getTrialExperimentIdentifiers;
    v41 = getSnapshotDictionaryForAnalytics;
    v42 = v43;
    [(MOEventBundleManager *)eventBundleManager fetchEventBundlesWithOptions:context CompletionHandler:v34];
  }

  else
  {
    internalQueue = [(MODaemonClient *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __60__MODaemonClient__logEngagementEvent_timestamp_withContext___block_invoke_524;
    block[3] = &unk_10033B788;
    v26 = v14;
    v27 = v16;
    v28 = eventCopy;
    v29 = timestampCopy;
    v30 = contextCopy;
    v31 = getTrialExperimentIdentifiers;
    v32 = getSnapshotDictionaryForAnalytics;
    v33 = v43;
    dispatch_async(internalQueue, block);

    context = v26;
  }

  _Block_object_dispose(v43, 8);
  objc_autoreleasePoolPop(contexta);
}

void __60__MODaemonClient__logEngagementEvent_timestamp_withContext___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) pet];
  v10 = objc_autoreleasePoolPush();
  [*(a1 + 40) didEngagementEventPosted:*(a1 + 48) withBundles:v7 timestamp:*(a1 + 56) withContext:*(a1 + 64) withTrialExperimentIDs:*(a1 + 72) withOnboardingStatus:*(a1 + 80)];
  objc_autoreleasePoolPop(v10);
  [*(a1 + 32) pet];
  if (([*(a1 + 48) isEqualToString:@"suggestionsSelected"] & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", @"suggestionsQuickAddEntry") & 1) != 0 || objc_msgSend(*(a1 + 48), "isEqualToString:", @"suggestionsDeleted"))
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Selected, quick add, or deleted engagement logged!", v14, 2u);
    }
  }

  else
  {
    [*(a1 + 32) cancel];
    v12 = *(*(a1 + 88) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }
}

void __60__MODaemonClient__logEngagementEvent_timestamp_withContext___block_invoke_524(uint64_t a1)
{
  [*(a1 + 32) pet];
  [*(a1 + 40) didEngagementEventPosted:*(a1 + 48) withBundles:0 timestamp:*(a1 + 56) withContext:*(a1 + 64) withTrialExperimentIDs:*(a1 + 72) withOnboardingStatus:*(a1 + 80)];
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 88) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)logPerformanceEvent:(id)event timestamp:(id)timestamp withContext:(id)context
{
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v12 = @"MOLogPerformance";
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  LODWORD(self) = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:&__block_literal_global_526];

  if (self)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MODaemonClient logPerformanceEvent:timestamp:withContext:];
    }
  }
}

void __60__MODaemonClient_logPerformanceEvent_timestamp_withContext___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke_cold_1(v2);
  }
}

- (void)logUsageEvent:(id)event timestamp:(id)timestamp withContext:(id)context
{
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v12 = @"MOLogUsage";
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  LODWORD(self) = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:&__block_literal_global_528];

  if (self)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MODaemonClient logUsageEvent:timestamp:withContext:];
    }
  }
}

void __54__MODaemonClient_logUsageEvent_timestamp_withContext___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke_cold_1(v2);
  }
}

- (void)didAppEntryUpdateUsingSuggestions:(id)suggestions onEvent:(unint64_t)event duringInterval:(id)interval withInfo:(id)info
{
  suggestionsCopy = suggestions;
  intervalCopy = interval;
  infoCopy = info;
  v14 = NSStringFromSelector(a2);
  v15 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];

  v17 = [NSString stringWithFormat:@"InterruptMethod_%@", v16];
  [(MODaemonClient *)self _abortIfNeeded:v17];
  v47 = @"MOAppEntryEngagement";
  v18 = [NSArray arrayWithObjects:&v47 count:1];
  LODWORD(v15) = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v18 withErrorHandler:&__block_literal_global_530];

  if (v15)
  {
    configManager = [(MODaemonClient *)self configManager];
    getTrialExperimentIdentifiers = [configManager getTrialExperimentIdentifiers];

    onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
    getSnapshotDictionaryForAnalytics = [onboardingAndSettingsPersistence getSnapshotDictionaryForAnalytics];

    context = objc_autoreleasePoolPush();
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__23;
    v45 = __Block_byref_object_dispose__23;
    v46 = os_transaction_create();
    v22 = suggestionsCopy;
    v23 = self->_engagementHistoryManager;
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [MODaemonClient didAppEntryUpdateUsingSuggestions:v22 onEvent:event duringInterval:v24 withInfo:?];
    }

    v25 = [(MODaemonClient *)self _createWatchDogWithName:@"didAppEntryUpdateUsingSuggestions"];
    v26 = v25;
    if (v22)
    {
      v27 = [[MOEventBundleFetchOptions alloc] initWithIdentifiers:v22 ascending:0 filterBundle:0];
      eventBundleManager = self->_eventBundleManager;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = __84__MODaemonClient_didAppEntryUpdateUsingSuggestions_onEvent_duringInterval_withInfo___block_invoke_535;
      v32[3] = &unk_10033B810;
      v33 = v26;
      v34 = v23;
      eventCopy = event;
      v35 = intervalCopy;
      v36 = infoCopy;
      v37 = getTrialExperimentIdentifiers;
      v38 = getSnapshotDictionaryForAnalytics;
      v39 = &v41;
      [(MOEventBundleManager *)eventBundleManager fetchEventBundlesWithOptions:v27 CompletionHandler:v32];
    }

    else
    {
      [v25 pet];
      v29 = +[NSDate now];
      [(MOEngagementHistoryManager *)v23 didAppEntryEventPosted:event withBundles:0 timestamp:v29 duringInterval:intervalCopy withInfo:infoCopy withTrialExperimentIDs:getTrialExperimentIdentifiers withOnboardingStatus:getSnapshotDictionaryForAnalytics, context];

      [v26 cancel];
      v27 = v42[5];
      v42[5] = 0;
    }

    _Block_object_dispose(&v41, 8);
    objc_autoreleasePoolPop(context);
  }
}

void __84__MODaemonClient_didAppEntryUpdateUsingSuggestions_onEvent_duringInterval_withInfo___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke_cold_1(v2);
  }
}

void __84__MODaemonClient_didAppEntryUpdateUsingSuggestions_onEvent_duringInterval_withInfo___block_invoke_535(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 pet];
  v5 = *(a1 + 40);
  v6 = *(a1 + 88);
  v7 = +[NSDate now];
  [v5 didAppEntryEventPosted:v6 withBundles:v4 timestamp:v7 duringInterval:*(a1 + 48) withInfo:*(a1 + 56) withTrialExperimentIDs:*(a1 + 64) withOnboardingStatus:*(a1 + 72)];

  [*(a1 + 32) cancel];
  v8 = *(*(a1 + 80) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)getDiagnosticReporterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v15[0] = @"MOPromptManagerTest";
  v15[1] = @"MOOnboardingAndSettings";
  v10 = [NSArray arrayWithObjects:v15 count:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __53__MODaemonClient_getDiagnosticReporterConfiguration___block_invoke;
  v13[3] = &unk_10033B2D8;
  v11 = configurationCopy;
  v14 = v11;
  v12 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:v13];

  if (v12)
  {
    [(MODaemonClient *)self _getDiagnosticReporterConfiguration:v11];
  }
}

void __53__MODaemonClient_getDiagnosticReporterConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke_cold_1(v3);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)_getDiagnosticReporterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  context = objc_autoreleasePoolPush();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__23;
  v35[4] = __Block_byref_object_dispose__23;
  v36 = os_transaction_create();
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "getDiagnosticReporterConfiguration", buf, 2u);
  }

  v21 = [(MODaemonClient *)self _createWatchDogWithName:@"GetDiagnosticReporterConfiguration"];
  v37[0] = @"DiagnosticReporterRefractoryPeriodAfterAcceptance";
  configManager = [(MODaemonClient *)self configManager];
  LODWORD(v5) = 1202241536;
  [configManager getFloatSettingForKey:@"DiagnosticReporterOverrideRefractoryPeriodAfterAcceptance" withFallback:v5];
  v28 = [NSNumber numberWithFloat:?];
  v38[0] = v28;
  v37[1] = @"DiagnosticReporterRefractoryPeriodAfterRejection";
  configManager2 = [(MODaemonClient *)self configManager];
  LODWORD(v6) = 1185464320;
  [configManager2 getFloatSettingForKey:@"DiagnosticReporterOverrideRefractoryPeriodAfterRejection" withFallback:v6];
  v26 = [NSNumber numberWithFloat:?];
  v38[1] = v26;
  v37[2] = @"DiagnosticReporterAvoidNotification";
  configManager3 = [(MODaemonClient *)self configManager];
  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configManager3 getBoolSettingForKey:@"DiagnosticReporterOverrideAvoidNotification" withFallback:0]);
  v38[2] = v24;
  v37[3] = @"DiagnosticReporterForceNotification";
  configManager4 = [(MODaemonClient *)self configManager];
  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configManager4 getBoolSettingForKey:@"DiagnosticReporterOverrideForceNotification" withFallback:0]);
  v38[3] = v22;
  v37[4] = @"DiagnosticReporterTimeOfLastNotification";
  configManager5 = [(MODaemonClient *)self configManager];
  [configManager5 getDoubleSettingForKey:@"DiagnosticReporterLastIncidentTime" withFallback:0.0];
  v8 = [NSNumber numberWithDouble:?];
  v38[4] = v8;
  v37[5] = @"DiagnosticReporterIsInternalBuild";
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[MOPlatformInfo isInternalBuild]);
  v38[5] = v9;
  v37[6] = @"DiagnosticReporterOnboardingStatus";
  onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [onboardingAndSettingsPersistence getOnboardingFlowCompletionStatus]);
  v38[6] = v11;
  v37[7] = @"DiagnosticReporterMaxTimeout";
  configManager6 = [(MODaemonClient *)self configManager];
  v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [configManager6 getIntegerSettingForKey:@"DiagnosticReporterOverrideMaxTimeout" withFallback:10]);
  v38[7] = v13;
  v37[8] = @"DiagnosticReporterIsOnboardedOnDiagnosticReporter";
  configManager7 = [(MODaemonClient *)self configManager];
  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configManager7 getBoolSettingForKey:@"DiagnosticReporterOverrideIsOnboardedOnDiagnosticReporter" withFallback:0]);
  v38[8] = v15;
  v20 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:9];

  [v21 pet];
  if (configurationCopy)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [MODaemonClient _getDiagnosticReporterConfiguration:];
    }

    configurationCopy[2](configurationCopy, v20, 0);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __54__MODaemonClient__getDiagnosticReporterConfiguration___block_invoke;
  v31[3] = &unk_10033AEF0;
  v17 = v21;
  v32 = v17;
  v33 = v35;
  v18 = objc_retainBlock(v31);
  [(MODaemonClient *)self _scheduleSendBarrierBlock:v18];

  _Block_object_dispose(v35, 8);
  objc_autoreleasePoolPop(context);
}

void __54__MODaemonClient__getDiagnosticReporterConfiguration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)getApplicationsWithDataAccess:(id)access
{
  accessCopy = access;
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v15[0] = @"MOPromptManagerTest";
  v15[1] = @"MOOnboardingAndSettings";
  v10 = [NSArray arrayWithObjects:v15 count:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __48__MODaemonClient_getApplicationsWithDataAccess___block_invoke;
  v13[3] = &unk_10033B2D8;
  v11 = accessCopy;
  v14 = v11;
  v12 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:v13];

  if (v12)
  {
    [(MODaemonClient *)self _getApplicationsWithDataAccess:v11];
  }
}

void __48__MODaemonClient_getApplicationsWithDataAccess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke_cold_1(v3);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)_getApplicationsWithDataAccess:(id)access
{
  accessCopy = access;
  dataAccessManager = [(MODaemonClient *)self dataAccessManager];
  [dataAccessManager getApplicationsWithDataAccess:accessCopy];
}

- (void)getClientsWithDataAccess:(id)access
{
  accessCopy = access;
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v15[0] = @"MOPromptManagerTest";
  v15[1] = @"MOOnboardingAndSettings";
  v10 = [NSArray arrayWithObjects:v15 count:2];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __43__MODaemonClient_getClientsWithDataAccess___block_invoke;
  v13[3] = &unk_10033B2D8;
  v11 = accessCopy;
  v14 = v11;
  v12 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:v13];

  if (v12)
  {
    [(MODaemonClient *)self _getClientsWithDataAccess:v11];
  }
}

void __43__MODaemonClient_getClientsWithDataAccess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke_cold_1(v3);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)_getClientsWithDataAccess:(id)access
{
  accessCopy = access;
  dataAccessManager = [(MODaemonClient *)self dataAccessManager];
  [dataAccessManager getClientsWithDataAccess:accessCopy];
}

- (void)registerClientsForDataAccess:(id)access
{
  accessCopy = access;
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v12[0] = @"MOPromptManagerTest";
  v12[1] = @"MOOnboardingAndSettings";
  v10 = [NSArray arrayWithObjects:v12 count:2];
  v11 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:&__block_literal_global_562];

  if (v11)
  {
    [(MODaemonClient *)self _registerClientsForDataAccess:accessCopy];
  }
}

void __47__MODaemonClient_registerClientsForDataAccess___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke_cold_1(v2);
  }
}

- (void)_registerClientsForDataAccess:(id)access
{
  accessCopy = access;
  dataAccessManager = [(MODaemonClient *)self dataAccessManager];
  [dataAccessManager registerClientsForDataAccess:accessCopy];
}

- (void)printSettingValue:(id)value withType:(id)type handler:(id)handler
{
  valueCopy = value;
  typeCopy = type;
  handlerCopy = handler;
  v12 = NSStringFromSelector(a2);
  v13 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  v15 = [NSString stringWithFormat:@"InterruptMethod_%@", v14];
  [(MODaemonClient *)self _abortIfNeeded:v15];
  v18 = @"MOPromptManagerTest";
  v16 = [NSArray arrayWithObjects:&v18 count:1];
  v17 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v16 withErrorHandler:handlerCopy];

  if (v17)
  {
    [(MODaemonClient *)self _printSettingValue:valueCopy withType:typeCopy handler:handlerCopy];
  }
}

- (void)_printSettingValue:(id)value withType:(id)type handler:(id)handler
{
  valueCopy = value;
  typeCopy = type;
  handlerCopy = handler;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "printSettingValue", &v20, 2u);
  }

  v12 = [(MODaemonClient *)self _createWatchDogWithName:@"PrintSettingValue"];
  if (([typeCopy isEqual:@"string"] & 1) != 0 || objc_msgSend(typeCopy, "isEqual:", @"str"))
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      configManager = [(MODaemonClient *)self configManager];
      v15 = [configManager getStringSettingForKey:valueCopy withFallback:&stru_1003416B0];
      v20 = 138412802;
      v21 = valueCopy;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = typeCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "printSettingValue: name=%@, value=%@, type=%@", &v20, 0x20u);
    }

    goto LABEL_12;
  }

  if (([typeCopy isEqual:@"integer"] & 1) != 0 || objc_msgSend(typeCopy, "isEqual:", @"int"))
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    configManager2 = [(MODaemonClient *)self configManager];
    v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [configManager2 getIntegerSettingForKey:valueCopy withFallback:0]);
    v20 = 138412802;
    v21 = valueCopy;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = typeCopy;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "printSettingValue: name=%@, value=%@, type=%@", &v20, 0x20u);

    goto LABEL_12;
  }

  if (([typeCopy isEqual:@"BOOLean"] & 1) != 0 || objc_msgSend(typeCopy, "isEqual:", @"BOOL"))
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    configManager2 = [(MODaemonClient *)self configManager];
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configManager2 getBoolSettingForKey:valueCopy withFallback:0]);
    v20 = 138412802;
    v21 = valueCopy;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = typeCopy;
    goto LABEL_11;
  }

  if ([typeCopy isEqual:@"float"])
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    configManager2 = [(MODaemonClient *)self configManager];
    [configManager2 getFloatSettingForKey:valueCopy withFallback:0.0];
    v17 = [NSNumber numberWithFloat:?];
    v20 = 138412802;
    v21 = valueCopy;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = typeCopy;
    goto LABEL_11;
  }

  v18 = [typeCopy isEqual:@"double"];
  v19 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  v13 = v19;
  if (v18)
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    configManager2 = [(MODaemonClient *)self configManager];
    [configManager2 getDoubleSettingForKey:valueCopy withFallback:0.0];
    v17 = [NSNumber numberWithDouble:?];
    v20 = 138412802;
    v21 = valueCopy;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = typeCopy;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [MODaemonClient _printSettingValue:withType:handler:];
  }

LABEL_12:

  [v12 pet];
  handlerCopy[2](handlerCopy, 0);

  [v12 cancel];
}

- (void)printOnboardingStatusAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v12 = @"MOPromptManagerTest";
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  v11 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:analyticsCopy];

  if (v11)
  {
    [(MODaemonClient *)self _printOnboardingStatusAnalytics:analyticsCopy];
  }
}

- (void)_printOnboardingStatusAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "printOnboardingStatusAnalytics", v8, 2u);
  }

  v6 = [(MODaemonClient *)self _createWatchDogWithName:@"PrintOnboardingStatusAnalytics"];
  onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
  [onboardingAndSettingsPersistence publishOnboardingStatusAnalytics];

  [v6 pet];
  analyticsCopy[2](analyticsCopy, 0);

  [v6 cancel];
}

- (void)printEvergreenBundlesWithSeed:(unint64_t)seed handler:(id)handler
{
  handlerCopy = handler;
  v8 = NSStringFromSelector(a2);
  v9 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  v11 = [NSString stringWithFormat:@"InterruptMethod_%@", v10];
  [(MODaemonClient *)self _abortIfNeeded:v11];
  v26 = @"MOFetchEventBundles";
  v12 = [NSArray arrayWithObjects:&v26 count:1];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __56__MODaemonClient_printEvergreenBundlesWithSeed_handler___block_invoke;
  v24[3] = &unk_10033B2D8;
  v13 = handlerCopy;
  v25 = v13;
  v14 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v12 withErrorHandler:v24];

  if (v14)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__23;
    v22[4] = __Block_byref_object_dispose__23;
    v23 = os_transaction_create();
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityDaemonClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [MODaemonClient printEvergreenBundlesWithSeed:handler:];
    }

    evergreenManager = [(MODaemonClient *)self evergreenManager];
    v17 = +[NSDate now];
    v18 = +[NSDate now];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __56__MODaemonClient_printEvergreenBundlesWithSeed_handler___block_invoke_597;
    v19[3] = &unk_10033B858;
    v20 = v13;
    v21 = v22;
    [evergreenManager performAnnotationWithSeed:seed startDate:v17 endDate:v18 handler:v19];

    _Block_object_dispose(v22, 8);
  }
}

void __56__MODaemonClient_printEvergreenBundlesWithSeed_handler___block_invoke_597(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 134218242;
    v11 = [v5 count];
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "evergreen annotation manager event bundles, %lu, error, %@", &v10, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)triggerFeedbackAssistantFlow:(id)flow handler:(id)handler
{
  handlerCopy = handler;
  [_TtC8momentsd19MOFeedbackAssistant triggerFeedbackAssistantFlowWithFlowIdentifier:flow];
  handlerCopy[2](handlerCopy, 0);
}

- (void)getOnboardingFlowCompletionStatusWithHandler:(id)handler
{
  handlerCopy = handler;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__23;
  v18[4] = __Block_byref_object_dispose__23;
  v19 = os_transaction_create();
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v20 = @"MOOnboardingAndSettings";
  v10 = [NSArray arrayWithObjects:&v20 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __63__MODaemonClient_getOnboardingFlowCompletionStatusWithHandler___block_invoke;
  v16[3] = &unk_10033B2D8;
  v11 = handlerCopy;
  v17 = v11;
  v12 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:v16];

  if (v12)
  {
    onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
    (*(v11 + 2))(v11, [onboardingAndSettingsPersistence getOnboardingFlowCompletionStatus]);

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __63__MODaemonClient_getOnboardingFlowCompletionStatusWithHandler___block_invoke_2;
    v15[3] = &unk_100338280;
    v15[4] = v18;
    v14 = objc_retainBlock(v15);
    [(MODaemonClient *)self _scheduleSendBarrierBlock:v14];
  }

  _Block_object_dispose(v18, 8);
}

void __63__MODaemonClient_getOnboardingFlowCompletionStatusWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)setOnboardingFlowCompletionStatus:(unint64_t)status
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__23;
  v14[4] = __Block_byref_object_dispose__23;
  v15 = os_transaction_create();
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v16 = @"MOOnboardingAndSettings";
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  LOBYTE(v7) = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:&__block_literal_global_602];

  if (v7)
  {
    onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
    [onboardingAndSettingsPersistence setOnboardingFlowCompletionStatus:status];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __52__MODaemonClient_setOnboardingFlowCompletionStatus___block_invoke_2;
    v13[3] = &unk_100338280;
    v13[4] = v14;
    v12 = objc_retainBlock(v13);
    [(MODaemonClient *)self _scheduleSendBarrierBlock:v12];
  }

  _Block_object_dispose(v14, 8);
}

void __52__MODaemonClient_setOnboardingFlowCompletionStatus___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)getOnboardingFlowRefreshCompletionStatusWithHandler:(id)handler
{
  handlerCopy = handler;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__23;
  v18[4] = __Block_byref_object_dispose__23;
  v19 = os_transaction_create();
  v6 = NSStringFromSelector(a2);
  v7 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [NSString stringWithFormat:@"InterruptMethod_%@", v8];
  [(MODaemonClient *)self _abortIfNeeded:v9];
  v20 = @"MOOnboardingAndSettings";
  v10 = [NSArray arrayWithObjects:&v20 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __70__MODaemonClient_getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke;
  v16[3] = &unk_10033B2D8;
  v11 = handlerCopy;
  v17 = v11;
  v12 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v10 withErrorHandler:v16];

  if (v12)
  {
    onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
    (*(v11 + 2))(v11, [onboardingAndSettingsPersistence getOnboardingFlowRefreshCompletionStatus]);

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __70__MODaemonClient_getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke_2;
    v15[3] = &unk_100338280;
    v15[4] = v18;
    v14 = objc_retainBlock(v15);
    [(MODaemonClient *)self _scheduleSendBarrierBlock:v14];
  }

  _Block_object_dispose(v18, 8);
}

void __70__MODaemonClient_getOnboardingFlowRefreshCompletionStatusWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)getStateForSetting:(unint64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__23;
  v20[4] = __Block_byref_object_dispose__23;
  v21 = os_transaction_create();
  v8 = NSStringFromSelector(a2);
  v9 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  v11 = [NSString stringWithFormat:@"InterruptMethod_%@", v10];
  [(MODaemonClient *)self _abortIfNeeded:v11];
  v22 = @"MOOnboardingAndSettings";
  v12 = [NSArray arrayWithObjects:&v22 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __49__MODaemonClient_getStateForSetting_withHandler___block_invoke;
  v18[3] = &unk_10033B2D8;
  v13 = handlerCopy;
  v19 = v13;
  v14 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v12 withErrorHandler:v18];

  if (v14)
  {
    onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
    (*(v13 + 2))(v13, [onboardingAndSettingsPersistence getStateForSetting:setting]);

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __49__MODaemonClient_getStateForSetting_withHandler___block_invoke_2;
    v17[3] = &unk_100338280;
    v17[4] = v20;
    v16 = objc_retainBlock(v17);
    [(MODaemonClient *)self _scheduleSendBarrierBlock:v16];
  }

  _Block_object_dispose(v20, 8);
}

void __49__MODaemonClient_getStateForSetting_withHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)getStateForSettingFast:(unint64_t)fast withHandler:(id)handler
{
  handlerCopy = handler;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__23;
  v20[4] = __Block_byref_object_dispose__23;
  v21 = os_transaction_create();
  v8 = NSStringFromSelector(a2);
  v9 = [NSCharacterSet characterSetWithCharactersInString:@":"];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  v11 = [NSString stringWithFormat:@"InterruptMethod_%@", v10];
  [(MODaemonClient *)self _abortIfNeeded:v11];
  v22 = @"MOOnboardingAndSettings";
  v12 = [NSArray arrayWithObjects:&v22 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __53__MODaemonClient_getStateForSettingFast_withHandler___block_invoke;
  v18[3] = &unk_10033B2D8;
  v13 = handlerCopy;
  v19 = v13;
  v14 = [(MODaemonClient *)self validateIfActiveClientHasAnyEntitlementInArray:v12 withErrorHandler:v18];

  if (v14)
  {
    onboardingAndSettingsPersistence = [(MODaemonClient *)self onboardingAndSettingsPersistence];
    (*(v13 + 2))(v13, [onboardingAndSettingsPersistence getStateForSettingFast:fast]);

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __53__MODaemonClient_getStateForSettingFast_withHandler___block_invoke_2;
    v17[3] = &unk_100338280;
    v17[4] = v20;
    v16 = objc_retainBlock(v17);
    [(MODaemonClient *)self _scheduleSendBarrierBlock:v16];
  }

  _Block_object_dispose(v20, 8);
}

void __53__MODaemonClient_getStateForSettingFast_withHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __38__MODaemonClient_setState_forSetting___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (id)_createWatchDogWithName:(id)name
{
  configManager = self->_configManager;
  nameCopy = name;
  nameCopy = [NSString stringWithFormat:@"%@_%@", @"WatchdogOverrideDefaultCadenceInSeconds", nameCopy];
  *&v7 = self->_watchdogCadence;
  [(MOConfigurationManagerBase *)configManager getFloatSettingForKey:nameCopy withFallback:v7];
  v9 = v8;

  v10 = [MOWatchDog alloc];
  LODWORD(v11) = v9;
  v12 = [(MOWatchDog *)v10 initWithName:nameCopy cadenceInSeconds:0 andHandler:v11];

  return v12;
}

- (void)acquireBackgroundProcessingPermissionsForMomentsWithHander:(id)hander
{
  handerCopy = hander;
  persistenceManager = [(MODaemonClient *)self persistenceManager];
  acquireBackgroundProcessingPermissions = [persistenceManager acquireBackgroundProcessingPermissions];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersistenceManager);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"fail";
    if (acquireBackgroundProcessingPermissions)
    {
      v8 = @"success";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "acquireBackgroundProcessingPermissionsForDB, result, %@", &v9, 0xCu);
  }

  handerCopy[2](handerCopy, acquireBackgroundProcessingPermissions);
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_437_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_443_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__MODaemonClient__refreshEventsWithContext_andRefreshVariant_andSoftKindFlag_andHandler___block_invoke_443_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__MODaemonClient_logEngagementEvent_timestamp_withContext___block_invoke_cold_1(void *a1)
{
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "client entitlement error: %@", v4, v5, v6, v7, v8);
}

- (void)didAppEntryUpdateUsingSuggestions:(os_log_t)log onEvent:duringInterval:withInfo:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "didAppEntryUpdateUsingSuggestions event %lu was created for bundles: '%@'", &v3, 0x16u);
}

- (void)_getDiagnosticReporterConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_printSettingValue:withType:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "printSettingValue: could not understand requested setting name=%@, type=%@", v2, 0x16u);
}

- (void)printEvergreenBundlesWithSeed:handler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end