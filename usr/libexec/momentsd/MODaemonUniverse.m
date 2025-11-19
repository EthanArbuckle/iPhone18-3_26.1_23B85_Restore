@interface MODaemonUniverse
+ (BOOL)isExtendedLogEnabled;
- (MODaemonUniverse)initWithUniverseDictionary:(id)a3;
- (id)createService:(id)a3;
- (id)getService:(id)a3;
- (void)_registerForLaunchEvents;
- (void)checkAndUpdatePushNotificationStateForNotifications:(id)a3 onboardingPersistence:(id)a4 daemonClient:(id)a5;
- (void)dealloc;
- (void)run;
- (void)setService:(id)a3 forName:(id)a4;
- (void)setupServices;
@end

@implementation MODaemonUniverse

- (void)checkAndUpdatePushNotificationStateForNotifications:(id)a3 onboardingPersistence:(id)a4 daemonClient:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __122__MODaemonUniverse_SetupServices__checkAndUpdatePushNotificationStateForNotifications_onboardingPersistence_daemonClient___block_invoke;
  v9[3] = &unk_100338208;
  v10 = a4;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  [a3 checkAndUpdateStateWithHandler:v9];
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

  v4 = [(MODaemonUniverse *)self serviceDictLock];
  [v4 lock];

  v119 = [[MODefaultsManager alloc] initWithUniverse:self];
  v5 = [(MODaemonUniverse *)self universe];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setObject:v119 forKeyedSubscript:v7];

  v118 = [[MOConfigurationManager alloc] initWithUniverse:self];
  v8 = [(MODaemonUniverse *)self universe];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v8 setObject:v118 forKeyedSubscript:v10];

  v117 = [[MODarwinNotifier alloc] initWithUniverse:self];
  v11 = [(MODaemonUniverse *)self universe];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v11 setObject:v117 forKeyedSubscript:v13];

  v116 = [[MOPersistenceManager alloc] initWithUniverse:self];
  v14 = [(MODaemonUniverse *)self universe];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v14 setObject:v116 forKeyedSubscript:v16];

  v115 = [[MODataAccessManager alloc] initWithUniverse:self];
  v17 = [(MODaemonUniverse *)self universe];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  [v17 setObject:v115 forKeyedSubscript:v19];

  v114 = [[MOTimeZoneManager alloc] initWithUniverse:self];
  v20 = [(MODaemonUniverse *)self universe];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [v20 setObject:v114 forKeyedSubscript:v22];

  v113 = [[MOEventBundleStore alloc] initWithUniverse:self];
  v23 = [(MODaemonUniverse *)self universe];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [v23 setObject:v113 forKeyedSubscript:v25];

  v112 = [[MOFSMStore alloc] initWithUniverse:self];
  v26 = [(MODaemonUniverse *)self universe];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  [v26 setObject:v112 forKeyedSubscript:v28];

  v111 = [[MOEventStore alloc] initWithUniverse:self];
  v29 = [(MODaemonUniverse *)self universe];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  [v29 setObject:v111 forKeyedSubscript:v31];

  v110 = [[MOEventManager alloc] initWithUniverse:self];
  v32 = [(MODaemonUniverse *)self universe];
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  [v32 setObject:v110 forKeyedSubscript:v34];

  v109 = [[MOEngagementHistoryManager alloc] initWithUniverse:self];
  v35 = [(MODaemonUniverse *)self universe];
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  [v35 setObject:v109 forKeyedSubscript:v37];

  v108 = [[MOEventBundleRanking alloc] initWithUniverse:self];
  v38 = [(MODaemonUniverse *)self universe];
  v39 = objc_opt_class();
  v40 = NSStringFromClass(v39);
  [v38 setObject:v108 forKeyedSubscript:v40];

  v107 = [[MOEventBundleManager alloc] initWithUniverse:self];
  v41 = [(MODaemonUniverse *)self universe];
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  [v41 setObject:v107 forKeyedSubscript:v43];

  v106 = [[MONotificationsManager alloc] initWithUniverse:self];
  v44 = [(MODaemonUniverse *)self universe];
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  [v44 setObject:v106 forKeyedSubscript:v46];

  v105 = [[MOBundleClusteringManager alloc] initWithUniverse:self];
  v47 = [(MODaemonUniverse *)self universe];
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  [v47 setObject:v105 forKeyedSubscript:v49];

  v104 = [[MOAvailabilityPredictionManager alloc] initWithUniverse:self];
  v50 = [(MODaemonUniverse *)self universe];
  v51 = objc_opt_class();
  v52 = NSStringFromClass(v51);
  [v50 setObject:v104 forKeyedSubscript:v52];

  v120 = [[MOOnboardingAndSettingsPersistence alloc] initWithUniverse:self];
  v53 = [(MODaemonUniverse *)self universe];
  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  [v53 setObject:v120 forKeyedSubscript:v55];

  v56 = [[MOManageServer alloc] initWithUniverse:self];
  v57 = [(MODaemonUniverse *)self universe];
  v58 = objc_opt_class();
  v59 = NSStringFromClass(v58);
  [v57 setObject:v56 forKeyedSubscript:v59];

  v60 = [(MOManageServer *)v56 client];
  v61 = [(MODaemonUniverse *)self universe];
  [v61 setObject:v60 forKeyedSubscript:@"DaemonClient"];

  v62 = [(MOManageServer *)v56 getNotifier];
  v63 = [(MODaemonUniverse *)self universe];
  [v63 setObject:v62 forKeyedSubscript:@"DaemonClientNotifier"];

  v64 = [[MOEventRefreshScheduler alloc] initWithUniverse:self];
  v65 = [(MODaemonUniverse *)self universe];
  v66 = objc_opt_class();
  v67 = NSStringFromClass(v66);
  [v65 setObject:v64 forKeyedSubscript:v67];

  v68 = [(MOEventRefreshScheduler *)v64 notifier];
  v69 = [(MODaemonUniverse *)self universe];
  [v69 setObject:v68 forKeyedSubscript:@"EventRefreshSchedulerNotifier"];

  v103 = [[MODaemonAnalyticsManager alloc] initWithUniverse:self];
  v70 = [(MODaemonUniverse *)self universe];
  v71 = objc_opt_class();
  v72 = NSStringFromClass(v71);
  [v70 setObject:v103 forKeyedSubscript:v72];

  v102 = [[MOEngagementAndSuggestionAnalyticsManager alloc] initWithUniverse:self];
  v73 = [(MODaemonUniverse *)self universe];
  v74 = objc_opt_class();
  v75 = NSStringFromClass(v74);
  [v73 setObject:v102 forKeyedSubscript:v75];

  v76 = [[MONotificationAnalyticsManager alloc] initWithUniverse:self];
  v77 = [(MODaemonUniverse *)self universe];
  v78 = objc_opt_class();
  v79 = NSStringFromClass(v78);
  [v77 setObject:v76 forKeyedSubscript:v79];

  v80 = [[MOEventPatternManager alloc] initWithUniverse:self];
  v81 = [(MODaemonUniverse *)self universe];
  v82 = objc_opt_class();
  v83 = NSStringFromClass(v82);
  [v81 setObject:v80 forKeyedSubscript:v83];

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
    v88 = [(MODaemonUniverse *)self universe];
    v89 = objc_opt_class();
    v90 = NSStringFromClass(v89);
    [v88 setObject:v87 forKeyedSubscript:v90];

    v91 = [(MOManageServer *)v86 client];
    [(MODaemonUniverse *)self checkAndUpdatePushNotificationStateForNotifications:v87 onboardingPersistence:v120 daemonClient:v91];

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

  v97 = [(MODaemonUniverse *)self serviceDictLock];
  [v97 unlock];

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

- (MODaemonUniverse)initWithUniverseDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MODaemonUniverse;
  v5 = [(MODaemonUniverse *)&v16 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 mutableCopy];
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
  v3 = [(MODaemonUniverse *)self serviceCreationCondition];
  [v3 lock];

  v4 = [(MODaemonUniverse *)self universe];
  [v4 removeAllObjects];

  v5 = [(MODaemonUniverse *)self servicesBeingCreated];
  [v5 removeAllObjects];

  v6 = [(MODaemonUniverse *)self serviceCreationCondition];
  [v6 broadcast];

  v7 = [(MODaemonUniverse *)self serviceCreationCondition];
  [v7 unlock];

  v8.receiver = self;
  v8.super_class = MODaemonUniverse;
  [(MODaemonUniverse *)&v8 dealloc];
}

- (id)getService:(id)a3
{
  v5 = a3;
  v6 = [(MODaemonUniverse *)self serviceDictLock];
  [v6 lock];

  v7 = [(MODaemonUniverse *)self universe];
  v8 = [v7 valueForKey:v5];

  v9 = [(MODaemonUniverse *)self serviceDictLock];
  [v9 unlock];

  if (v8)
  {
    if (!+[MODaemonUniverse isExtendedLogEnabled])
    {
      goto LABEL_8;
    }

    v10 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [MODaemonUniverse getService:];
    }

    goto LABEL_7;
  }

  v11 = [(MODaemonUniverse *)self serviceCreationCondition];
  [v11 lock];

  v12 = [(MODaemonUniverse *)self serviceDictLock];
  [v12 lock];

  v13 = [(MODaemonUniverse *)self universe];
  v8 = [v13 valueForKey:v5];

  v14 = [(MODaemonUniverse *)self serviceDictLock];
  [v14 unlock];

  if (v8)
  {
    v10 = [(MODaemonUniverse *)self serviceCreationCondition];
    [v10 unlock];
LABEL_7:

    goto LABEL_8;
  }

  v16 = [(MODaemonUniverse *)self servicesBeingCreated];
  v17 = [v16 containsObject:v5];

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
    v21 = [(MODaemonUniverse *)self servicesBeingCreated];
    v22 = [v21 containsObject:v5];

    if (v22)
    {
      v23 = 0;
      do
      {
        v24 = [NSDate dateWithTimeIntervalSinceNow:5.0];
        v25 = [(MODaemonUniverse *)self serviceCreationCondition];
        v26 = [v25 waitUntilDate:v24];

        if ((v26 & 1) == 0)
        {
          ++v23;
          v27 = +[NSDate date];
          [v27 timeIntervalSinceDate:v20];
          v29 = v28;

          v30 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v33 = [(MODaemonUniverse *)self servicesBeingCreated];
            v34 = [v33 allObjects];
            *buf = 134218754;
            v59 = v23;
            v60 = 2112;
            v61 = v5;
            v62 = 2048;
            v63 = v29;
            v64 = 2112;
            v65 = v34;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Service creation timeout #%lu for [%@] - waited %.1f seconds. Services being created: %@", buf, 0x2Au);

            p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
          }
        }

        v31 = [(MODaemonUniverse *)self servicesBeingCreated];
        v32 = [v31 containsObject:v5];
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
          v59 = v5;
          v60 = 2048;
          v61 = v50;
          v62 = 2048;
          v63 = v23;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Service [%@] creation completed after %.1f seconds (%lu timeouts)", buf, 0x20u);
        }
      }
    }

    v52 = [(MODaemonUniverse *)self serviceCreationCondition];
    [v52 unlock];

    v53 = [(MODaemonUniverse *)self serviceDictLock];
    [v53 lock];

    v54 = [(MODaemonUniverse *)self universe];
    v55 = [v54 valueForKey:v5];

    v56 = [(MODaemonUniverse *)self serviceDictLock];
    [v56 unlock];

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
    v35 = [(MODaemonUniverse *)self servicesBeingCreated];
    [v35 addObject:v5];

    v36 = [(MODaemonUniverse *)self serviceCreationCondition];
    [v36 unlock];

    v37 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v5;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "No service named [%@] is initiated, look for it in classes", buf, 0xCu);
    }

    v8 = [(MODaemonUniverse *)self createService:v5];
    v38 = [(MODaemonUniverse *)self serviceDictLock];
    [v38 lock];

    if (v8)
    {
      v39 = [(MODaemonUniverse *)self universe];
      [v39 setObject:v8 forKeyedSubscript:v5];

      v40 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v5;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Successfully created and stored service [%@]", buf, 0xCu);
      }
    }

    v41 = [(MODaemonUniverse *)self serviceDictLock];
    [v41 unlock];

    v42 = [(MODaemonUniverse *)self serviceCreationCondition];
    [v42 lock];

    v43 = [(MODaemonUniverse *)self servicesBeingCreated];
    [v43 removeObject:v5];

    v44 = [(MODaemonUniverse *)self serviceCreationCondition];
    [v44 broadcast];

    v45 = [(MODaemonUniverse *)self serviceCreationCondition];
    [v45 unlock];

    if (!v8)
    {
      v46 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [MODaemonUniverse getService:];
      }

      v47 = +[NSAssertionHandler currentHandler];
      [v47 handleFailureInMethod:a2 object:self file:@"MODaemonUniverse.m" lineNumber:162 description:{@"service named [%@] failed to be initiated (in %s:%d)", v5, "-[MODaemonUniverse getService:]", 162}];
    }

    if (+[MODaemonUniverse isExtendedLogEnabled])
    {
      v10 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [MODaemonUniverse getService:];
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v8;
}

- (id)createService:(id)a3
{
  v5 = a3;
  v6 = NSClassFromString(v5);
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
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
      [v11 handleFailureInMethod:a2 object:self file:@"MODaemonUniverse.m" lineNumber:189 description:@"service named [%@] does not conform the protocol. (in %s:%d)", v5, "[MODaemonUniverse createService:]", 189];
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
        v17 = v5;
        v13 = "successfully initiated the service [%@]";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      }
    }

    else if (v12)
    {
      *buf = 138412290;
      v17 = v5;
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
  [v9 handleFailureInMethod:a2 object:self file:@"MODaemonUniverse.m" lineNumber:176 description:{@"No class named [%@] (in %s:%d)", v5, "-[MODaemonUniverse createService:]", 176}];
  v10 = 0;
LABEL_18:

  return v10;
}

- (void)setService:(id)a3 forName:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(MODaemonUniverse *)self serviceDictLock];
    [v8 lock];

    v9 = [(MODaemonUniverse *)self universe];
    [v9 setObject:v7 forKeyedSubscript:v6];

    v10 = [(MODaemonUniverse *)self serviceDictLock];
    [v10 unlock];

    v11 = [(MODaemonUniverse *)self serviceCreationCondition];
    [v11 lock];

    v12 = [(MODaemonUniverse *)self servicesBeingCreated];
    [v12 removeObject:v6];

    v13 = [(MODaemonUniverse *)self serviceCreationCondition];
    [v13 broadcast];

    v14 = [(MODaemonUniverse *)self serviceCreationCondition];
    [v14 unlock];
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