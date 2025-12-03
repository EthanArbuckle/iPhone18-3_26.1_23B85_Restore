@interface MODaemonUniverse
+ (BOOL)isExtendedLogEnabled;
- (MODaemonUniverse)initWithUniverseDictionary:(id)dictionary;
- (id)createService:(id)service;
- (id)getService:(id)service;
- (void)_registerForLaunchEvents;
- (void)checkAndUpdatePushNotificationStateForNotifications:(id)notifications onboardingPersistence:(id)persistence daemonClient:(id)client;
- (void)dealloc;
- (void)run;
- (void)setService:(id)service forName:(id)name;
- (void)setupServices;
@end

@implementation MODaemonUniverse

- (void)checkAndUpdatePushNotificationStateForNotifications:(id)notifications onboardingPersistence:(id)persistence daemonClient:(id)client
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __122__MODaemonUniverse_SetupServices__checkAndUpdatePushNotificationStateForNotifications_onboardingPersistence_daemonClient___block_invoke;
  v9[3] = &unk_100338208;
  persistenceCopy = persistence;
  clientCopy = client;
  v7 = clientCopy;
  v8 = persistenceCopy;
  [notifications checkAndUpdateStateWithHandler:v9];
}

void __122__MODaemonUniverse_SetupServices__checkAndUpdatePushNotificationStateForNotifications_onboardingPersistence_daemonClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __122__MODaemonUniverse_SetupServices__checkAndUpdatePushNotificationStateForNotifications_onboardingPersistence_daemonClient___block_invoke_cold_1(v4);
  }

  v5 = [*(a1 + 32) getOnboardingFlowCompletionStatus] & 0xFFFFFFFFFFFFFFFELL;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device is onboarded, starting push notifications", buf, 2u);
    }

    v3[2](v3, 1);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device not onboarded, checking UI active state", buf, 2u);
    }

    v8 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __122__MODaemonUniverse_SetupServices__checkAndUpdatePushNotificationStateForNotifications_onboardingPersistence_daemonClient___block_invoke_100;
    v9[3] = &unk_1003381E0;
    v10 = v3;
    [v8 checkUIActiveStatusWithHandler:v9];
  }
}

void __122__MODaemonUniverse_SetupServices__checkAndUpdatePushNotificationStateForNotifications_onboardingPersistence_daemonClient___block_invoke_100(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error checking UI active state: %@, leaving push notifications unchanged", &v9, 0xCu);
    }
  }

  else
  {
    if (v5 && [v5 BOOLValue])
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "UI is active during non-onboarded state, starting push notifications", &v9, 2u);
      }
    }

    else
    {
      v8 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "UI is inactive and not onboarded, stopping push notifications", &v9, 2u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)setupServices
{
  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x3032000000;
  v129[3] = __Block_byref_object_copy__13;
  v129[4] = __Block_byref_object_dispose__13;
  v130 = os_transaction_create();
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Daemon initialized, Lock", buf, 2u);
  }

  serviceDictLock = [(MODaemonUniverse *)self serviceDictLock];
  [serviceDictLock lock];

  v119 = [[MODefaultsManager alloc] initWithUniverse:self];
  universe = [(MODaemonUniverse *)self universe];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [universe setObject:v119 forKeyedSubscript:v7];

  v118 = [[MOConfigurationManager alloc] initWithUniverse:self];
  universe2 = [(MODaemonUniverse *)self universe];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [universe2 setObject:v118 forKeyedSubscript:v10];

  v117 = [[MODarwinNotifier alloc] initWithUniverse:self];
  universe3 = [(MODaemonUniverse *)self universe];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [universe3 setObject:v117 forKeyedSubscript:v13];

  v116 = [[MOPersistenceManager alloc] initWithUniverse:self];
  universe4 = [(MODaemonUniverse *)self universe];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [universe4 setObject:v116 forKeyedSubscript:v16];

  v115 = [[MODataAccessManager alloc] initWithUniverse:self];
  universe5 = [(MODaemonUniverse *)self universe];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  [universe5 setObject:v115 forKeyedSubscript:v19];

  v114 = [[MOTimeZoneManager alloc] initWithUniverse:self];
  universe6 = [(MODaemonUniverse *)self universe];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [universe6 setObject:v114 forKeyedSubscript:v22];

  v113 = [[MOEventBundleStore alloc] initWithUniverse:self];
  universe7 = [(MODaemonUniverse *)self universe];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [universe7 setObject:v113 forKeyedSubscript:v25];

  v112 = [[MOFSMStore alloc] initWithUniverse:self];
  universe8 = [(MODaemonUniverse *)self universe];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  [universe8 setObject:v112 forKeyedSubscript:v28];

  v111 = [[MOEventStore alloc] initWithUniverse:self];
  universe9 = [(MODaemonUniverse *)self universe];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  [universe9 setObject:v111 forKeyedSubscript:v31];

  v110 = [[MOEventManager alloc] initWithUniverse:self];
  universe10 = [(MODaemonUniverse *)self universe];
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  [universe10 setObject:v110 forKeyedSubscript:v34];

  v109 = [[MOEngagementHistoryManager alloc] initWithUniverse:self];
  universe11 = [(MODaemonUniverse *)self universe];
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  [universe11 setObject:v109 forKeyedSubscript:v37];

  v108 = [[MOEventBundleRanking alloc] initWithUniverse:self];
  universe12 = [(MODaemonUniverse *)self universe];
  v39 = objc_opt_class();
  v40 = NSStringFromClass(v39);
  [universe12 setObject:v108 forKeyedSubscript:v40];

  v107 = [[MOEventBundleManager alloc] initWithUniverse:self];
  universe13 = [(MODaemonUniverse *)self universe];
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  [universe13 setObject:v107 forKeyedSubscript:v43];

  v106 = [[MONotificationsManager alloc] initWithUniverse:self];
  universe14 = [(MODaemonUniverse *)self universe];
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  [universe14 setObject:v106 forKeyedSubscript:v46];

  v105 = [[MOBundleClusteringManager alloc] initWithUniverse:self];
  universe15 = [(MODaemonUniverse *)self universe];
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  [universe15 setObject:v105 forKeyedSubscript:v49];

  v104 = [[MOAvailabilityPredictionManager alloc] initWithUniverse:self];
  universe16 = [(MODaemonUniverse *)self universe];
  v51 = objc_opt_class();
  v52 = NSStringFromClass(v51);
  [universe16 setObject:v104 forKeyedSubscript:v52];

  v120 = [[MOOnboardingAndSettingsPersistence alloc] initWithUniverse:self];
  universe17 = [(MODaemonUniverse *)self universe];
  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  [universe17 setObject:v120 forKeyedSubscript:v55];

  v56 = [[MOManageServer alloc] initWithUniverse:self];
  universe18 = [(MODaemonUniverse *)self universe];
  v58 = objc_opt_class();
  v59 = NSStringFromClass(v58);
  [universe18 setObject:v56 forKeyedSubscript:v59];

  client = [(MOManageServer *)v56 client];
  universe19 = [(MODaemonUniverse *)self universe];
  [universe19 setObject:client forKeyedSubscript:@"DaemonClient"];

  getNotifier = [(MOManageServer *)v56 getNotifier];
  universe20 = [(MODaemonUniverse *)self universe];
  [universe20 setObject:getNotifier forKeyedSubscript:@"DaemonClientNotifier"];

  v64 = [[MOEventRefreshScheduler alloc] initWithUniverse:self];
  universe21 = [(MODaemonUniverse *)self universe];
  v66 = objc_opt_class();
  v67 = NSStringFromClass(v66);
  [universe21 setObject:v64 forKeyedSubscript:v67];

  notifier = [(MOEventRefreshScheduler *)v64 notifier];
  universe22 = [(MODaemonUniverse *)self universe];
  [universe22 setObject:notifier forKeyedSubscript:@"EventRefreshSchedulerNotifier"];

  v103 = [[MODaemonAnalyticsManager alloc] initWithUniverse:self];
  universe23 = [(MODaemonUniverse *)self universe];
  v71 = objc_opt_class();
  v72 = NSStringFromClass(v71);
  [universe23 setObject:v103 forKeyedSubscript:v72];

  v102 = [[MOEngagementAndSuggestionAnalyticsManager alloc] initWithUniverse:self];
  universe24 = [(MODaemonUniverse *)self universe];
  v74 = objc_opt_class();
  v75 = NSStringFromClass(v74);
  [universe24 setObject:v102 forKeyedSubscript:v75];

  v76 = [[MONotificationAnalyticsManager alloc] initWithUniverse:self];
  universe25 = [(MODaemonUniverse *)self universe];
  v78 = objc_opt_class();
  v79 = NSStringFromClass(v78);
  [universe25 setObject:v76 forKeyedSubscript:v79];

  v80 = [[MOEventPatternManager alloc] initWithUniverse:self];
  universe26 = [(MODaemonUniverse *)self universe];
  v82 = objc_opt_class();
  v83 = NSStringFromClass(v82);
  [universe26 setObject:v80 forKeyedSubscript:v83];

  v128 = 0;
  v84 = MGCopyAnswerWithError();
  if ([@"iPhone" isEqualToString:v84])
  {
    v85 = [MOCloudKitPushNotifications alloc];
    v126[0] = _NSConcreteStackBlock;
    v126[1] = 3221225472;
    v126[2] = __48__MODaemonUniverse_SetupServices__setupServices__block_invoke;
    v126[3] = &unk_100338230;
    v86 = v56;
    v127 = v86;
    v87 = [(MOCloudKitPushNotifications *)v85 initWithNamedDelegatePort:@"com.apple.aps.momentsd" apsTopics:&off_10036DB00 subscriptionID:@"momentsd-feed-changes" onNotification:v126 deviceType:v84];
    universe27 = [(MODaemonUniverse *)self universe];
    v89 = objc_opt_class();
    v90 = NSStringFromClass(v89);
    [universe27 setObject:v87 forKeyedSubscript:v90];

    client2 = [(MOManageServer *)v86 client];
    [(MODaemonUniverse *)self checkAndUpdatePushNotificationStateForNotifications:v87 onboardingPersistence:v120 daemonClient:client2];

    v92 = +[NSNotificationCenter defaultCenter];
    v122[0] = _NSConcreteStackBlock;
    v122[1] = 3221225472;
    v122[2] = __48__MODaemonUniverse_SetupServices__setupServices__block_invoke_153;
    v122[3] = &unk_100338258;
    v122[4] = self;
    v93 = v87;
    v123 = v93;
    v124 = v120;
    v125 = v86;
    v94 = [v92 addObserverForName:NSUserDefaultsDidChangeNotification object:0 queue:0 usingBlock:v122];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v93, onOnboardingStatusUpdate, @"com.apple.momentsd.onboarding-status-updated", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v96 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v96, v93, onUIActiveStatusUpdate, @"com.apple.momentsd.ui-active-status-updated", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  serviceDictLock2 = [(MODaemonUniverse *)self serviceDictLock];
  [serviceDictLock2 unlock];

  v98 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v99 = dispatch_queue_create("MOFeatureDisabledExit", v98);

  v100 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v132 = 10;
    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "Daemon initialized, will release transaction in %llu seconds...", buf, 0xCu);
  }

  v101 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__MODaemonUniverse_SetupServices__setupServices__block_invoke_162;
  block[3] = &unk_100338280;
  block[4] = v129;
  dispatch_after(v101, v99, block);
  [(MODaemonUniverse *)self _registerForLaunchEvents];

  _Block_object_dispose(v129, 8);
}

void __48__MODaemonUniverse_SetupServices__setupServices__block_invoke(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Scheduling cloudSync", v4, 2u);
  }

  v3 = [*(a1 + 32) client];
  [v3 scheduleMomentsUICloudSync];
}

void __48__MODaemonUniverse_SetupServices__setupServices__block_invoke_153(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) client];
  [v1 checkAndUpdatePushNotificationStateForNotifications:v2 onboardingPersistence:v3 daemonClient:v4];
}

void __48__MODaemonUniverse_SetupServices__setupServices__block_invoke_162(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Daemon initialized, transaction released", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)_registerForLaunchEvents
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  targetq = dispatch_queue_create("MOXPCAlarm", v2);

  xpc_set_event_stream_handler("com.apple.alarm", targetq, &__block_literal_global_15);
}

void __59__MODaemonUniverse_SetupServices___registerForLaunchEvents__block_invoke(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = string;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "--- handle event, com.apple.alarm, name, %s ---", &v7, 0xCu);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    v6 = [NSString stringWithUTF8String:string];
    [v5 postNotificationName:v6 object:0];
  }
}

+ (BOOL)isExtendedLogEnabled
{
  +[MODefaultsManager momentsDaemonDefaults];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__MODaemonUniverse_isExtendedLogEnabled__block_invoke;
  v7 = block[3] = &unk_100335F40;
  v2 = isExtendedLogEnabled_onceToken_1;
  v3 = v7;
  if (v2 != -1)
  {
    dispatch_once(&isExtendedLogEnabled_onceToken_1, block);
  }

  v4 = isExtendedLogEnabled_result_1;

  return v4;
}

BOOL __40__MODaemonUniverse_isExtendedLogEnabled__block_invoke(uint64_t a1)
{
  result = [MODefaultsManager isExtendedLogEnabled:@"LoggingOverrideExtendedDaemonUniverseLogging" forDetaultsManager:*(a1 + 32)];
  isExtendedLogEnabled_result_1 = result;
  return result;
}

- (MODaemonUniverse)initWithUniverseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = MODaemonUniverse;
  v5 = [(MODaemonUniverse *)&v16 init];
  if (v5)
  {
    if (dictionaryCopy)
    {
      v6 = [dictionaryCopy mutableCopy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    universe = v5->_universe;
    v5->_universe = v6;

    v8 = objc_alloc_init(NSRecursiveLock);
    serviceDictLock = v5->_serviceDictLock;
    v5->_serviceDictLock = v8;

    v10 = objc_opt_new();
    servicesBeingCreated = v5->_servicesBeingCreated;
    v5->_servicesBeingCreated = v10;

    v12 = objc_alloc_init(NSCondition);
    serviceCreationCondition = v5->_serviceCreationCondition;
    v5->_serviceCreationCondition = v12;

    v14 = v5;
  }

  return v5;
}

- (void)dealloc
{
  serviceCreationCondition = [(MODaemonUniverse *)self serviceCreationCondition];
  [serviceCreationCondition lock];

  universe = [(MODaemonUniverse *)self universe];
  [universe removeAllObjects];

  servicesBeingCreated = [(MODaemonUniverse *)self servicesBeingCreated];
  [servicesBeingCreated removeAllObjects];

  serviceCreationCondition2 = [(MODaemonUniverse *)self serviceCreationCondition];
  [serviceCreationCondition2 broadcast];

  serviceCreationCondition3 = [(MODaemonUniverse *)self serviceCreationCondition];
  [serviceCreationCondition3 unlock];

  v8.receiver = self;
  v8.super_class = MODaemonUniverse;
  [(MODaemonUniverse *)&v8 dealloc];
}

- (id)getService:(id)service
{
  serviceCopy = service;
  serviceDictLock = [(MODaemonUniverse *)self serviceDictLock];
  [serviceDictLock lock];

  universe = [(MODaemonUniverse *)self universe];
  v8 = [universe valueForKey:serviceCopy];

  serviceDictLock2 = [(MODaemonUniverse *)self serviceDictLock];
  [serviceDictLock2 unlock];

  if (v8)
  {
    if (!+[MODaemonUniverse isExtendedLogEnabled])
    {
      goto LABEL_8;
    }

    serviceCreationCondition2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(serviceCreationCondition2, OS_LOG_TYPE_DEBUG))
    {
      [MODaemonUniverse getService:];
    }

    goto LABEL_7;
  }

  serviceCreationCondition = [(MODaemonUniverse *)self serviceCreationCondition];
  [serviceCreationCondition lock];

  serviceDictLock3 = [(MODaemonUniverse *)self serviceDictLock];
  [serviceDictLock3 lock];

  universe2 = [(MODaemonUniverse *)self universe];
  v8 = [universe2 valueForKey:serviceCopy];

  serviceDictLock4 = [(MODaemonUniverse *)self serviceDictLock];
  [serviceDictLock4 unlock];

  if (v8)
  {
    serviceCreationCondition2 = [(MODaemonUniverse *)self serviceCreationCondition];
    [serviceCreationCondition2 unlock];
LABEL_7:

    goto LABEL_8;
  }

  servicesBeingCreated = [(MODaemonUniverse *)self servicesBeingCreated];
  v17 = [servicesBeingCreated containsObject:serviceCopy];

  if (v17)
  {
    p_cache = &OBJC_METACLASS___MOEngagementHistoryManager.cache;
    if (+[MODaemonUniverse isExtendedLogEnabled])
    {
      v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [MODaemonUniverse getService:];
      }
    }

    v20 = +[NSDate date];
    servicesBeingCreated2 = [(MODaemonUniverse *)self servicesBeingCreated];
    v22 = [servicesBeingCreated2 containsObject:serviceCopy];

    if (v22)
    {
      v23 = 0;
      do
      {
        v24 = [NSDate dateWithTimeIntervalSinceNow:5.0];
        serviceCreationCondition3 = [(MODaemonUniverse *)self serviceCreationCondition];
        v26 = [serviceCreationCondition3 waitUntilDate:v24];

        if ((v26 & 1) == 0)
        {
          ++v23;
          v27 = +[NSDate date];
          [v27 timeIntervalSinceDate:v20];
          v29 = v28;

          v30 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            servicesBeingCreated3 = [(MODaemonUniverse *)self servicesBeingCreated];
            allObjects = [servicesBeingCreated3 allObjects];
            *buf = 134218754;
            v59 = v23;
            v60 = 2112;
            v61 = serviceCopy;
            v62 = 2048;
            v63 = v29;
            v64 = 2112;
            v65 = allObjects;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Service creation timeout #%lu for [%@] - waited %.1f seconds. Services being created: %@", buf, 0x2Au);

            p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
          }
        }

        servicesBeingCreated4 = [(MODaemonUniverse *)self servicesBeingCreated];
        v32 = [servicesBeingCreated4 containsObject:serviceCopy];
      }

      while ((v32 & 1) != 0);
      if (v23)
      {
        v48 = +[NSDate date];
        [v48 timeIntervalSinceDate:v20];
        v50 = v49;

        v51 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v59 = serviceCopy;
          v60 = 2048;
          v61 = v50;
          v62 = 2048;
          v63 = v23;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Service [%@] creation completed after %.1f seconds (%lu timeouts)", buf, 0x20u);
        }
      }
    }

    serviceCreationCondition4 = [(MODaemonUniverse *)self serviceCreationCondition];
    [serviceCreationCondition4 unlock];

    serviceDictLock5 = [(MODaemonUniverse *)self serviceDictLock];
    [serviceDictLock5 lock];

    universe3 = [(MODaemonUniverse *)self universe];
    v55 = [universe3 valueForKey:serviceCopy];

    serviceDictLock6 = [(MODaemonUniverse *)self serviceDictLock];
    [serviceDictLock6 unlock];

    if ([p_cache + 123 isExtendedLogEnabled])
    {
      v57 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        [MODaemonUniverse getService:];
      }
    }

    v8 = v55;
  }

  else
  {
    servicesBeingCreated5 = [(MODaemonUniverse *)self servicesBeingCreated];
    [servicesBeingCreated5 addObject:serviceCopy];

    serviceCreationCondition5 = [(MODaemonUniverse *)self serviceCreationCondition];
    [serviceCreationCondition5 unlock];

    v37 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "No service named [%@] is initiated, look for it in classes", buf, 0xCu);
    }

    v8 = [(MODaemonUniverse *)self createService:serviceCopy];
    serviceDictLock7 = [(MODaemonUniverse *)self serviceDictLock];
    [serviceDictLock7 lock];

    if (v8)
    {
      universe4 = [(MODaemonUniverse *)self universe];
      [universe4 setObject:v8 forKeyedSubscript:serviceCopy];

      v40 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Successfully created and stored service [%@]", buf, 0xCu);
      }
    }

    serviceDictLock8 = [(MODaemonUniverse *)self serviceDictLock];
    [serviceDictLock8 unlock];

    serviceCreationCondition6 = [(MODaemonUniverse *)self serviceCreationCondition];
    [serviceCreationCondition6 lock];

    servicesBeingCreated6 = [(MODaemonUniverse *)self servicesBeingCreated];
    [servicesBeingCreated6 removeObject:serviceCopy];

    serviceCreationCondition7 = [(MODaemonUniverse *)self serviceCreationCondition];
    [serviceCreationCondition7 broadcast];

    serviceCreationCondition8 = [(MODaemonUniverse *)self serviceCreationCondition];
    [serviceCreationCondition8 unlock];

    if (!v8)
    {
      v46 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [MODaemonUniverse getService:];
      }

      v47 = +[NSAssertionHandler currentHandler];
      [v47 handleFailureInMethod:a2 object:self file:@"MODaemonUniverse.m" lineNumber:162 description:{@"service named [%@] failed to be initiated (in %s:%d)", serviceCopy, "-[MODaemonUniverse getService:]", 162}];
    }

    if (+[MODaemonUniverse isExtendedLogEnabled])
    {
      serviceCreationCondition2 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(serviceCreationCondition2, OS_LOG_TYPE_DEBUG))
      {
        [MODaemonUniverse getService:];
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v8;
}

- (id)createService:(id)service
{
  serviceCopy = service;
  v6 = NSClassFromString(serviceCopy);
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Find corresponding class and will initiate the service [%@]", buf, 0xCu);
    }

    v9 = [v6 alloc];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MODaemonUniverse createService:];
      }

      v11 = +[NSAssertionHandler currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"MODaemonUniverse.m" lineNumber:189 description:@"service named [%@] does not conform the protocol. (in %s:%d)", serviceCopy, "[MODaemonUniverse createService:]", 189];
      v10 = 0;
      goto LABEL_17;
    }

    v10 = [v9 initWithUniverse:self];
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v17 = serviceCopy;
        v13 = "successfully initiated the service [%@]";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      }
    }

    else if (v12)
    {
      *buf = 138412290;
      v17 = serviceCopy;
      v13 = "failed to initiate the service [%@]";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MODaemonUniverse createService:];
  }

  v9 = +[NSAssertionHandler currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"MODaemonUniverse.m" lineNumber:176 description:{@"No class named [%@] (in %s:%d)", serviceCopy, "-[MODaemonUniverse createService:]", 176}];
  v10 = 0;
LABEL_18:

  return v10;
}

- (void)setService:(id)service forName:(id)name
{
  if (name)
  {
    nameCopy = name;
    serviceCopy = service;
    serviceDictLock = [(MODaemonUniverse *)self serviceDictLock];
    [serviceDictLock lock];

    universe = [(MODaemonUniverse *)self universe];
    [universe setObject:serviceCopy forKeyedSubscript:nameCopy];

    serviceDictLock2 = [(MODaemonUniverse *)self serviceDictLock];
    [serviceDictLock2 unlock];

    serviceCreationCondition = [(MODaemonUniverse *)self serviceCreationCondition];
    [serviceCreationCondition lock];

    servicesBeingCreated = [(MODaemonUniverse *)self servicesBeingCreated];
    [servicesBeingCreated removeObject:nameCopy];

    serviceCreationCondition2 = [(MODaemonUniverse *)self serviceCreationCondition];
    [serviceCreationCondition2 broadcast];

    serviceCreationCondition3 = [(MODaemonUniverse *)self serviceCreationCondition];
    [serviceCreationCondition3 unlock];
  }
}

- (void)run
{
  if (!self)
  {
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create("MOFeatureDisabledExit", v2);

    v4 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = 10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Nothing to be enabled, scheduling exit in %llu seconds...", &v6, 0xCu);
    }

    v5 = dispatch_time(0, 10000000000);
    dispatch_after(v5, v3, &__block_literal_global_52);
  }

  dispatch_main();
}

void __23__MODaemonUniverse_run__block_invoke(id a1)
{
  v1 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Nothing to be enabled and grace delay elapsed, exiting...", v2, 2u);
  }

  exit(0);
}

- (void)getService:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_5(&_mh_execute_header, v0, v1, "service named [%@] failed to be initiated (in %s:%d)", v2, v3, v4, v5, v6);
}

- (void)createService:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_5(&_mh_execute_header, v0, v1, "service named [%@] does not conform the protocol. (in %s:%d)", v2, v3, v4, v5, v6);
}

- (void)createService:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_5(&_mh_execute_header, v0, v1, "No class named [%@] (in %s:%d)", v2, v3, v4, v5, v6);
}

@end