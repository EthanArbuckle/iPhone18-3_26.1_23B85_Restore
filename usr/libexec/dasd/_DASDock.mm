@interface _DASDock
+ (id)dockManager;
- (BOOL)applicationIsAdmissibleForDockMembership:(id)membership;
- (_DASDock)init;
- (id)admissibleApplications;
- (id)computeOptimalPolicyForApps:(id)apps withValues:(id)values scaledWeights:(id)weights andMemoryFootprint:(id)footprint;
- (id)computePolicyForCurrentState;
- (id)quantizeNumericMap:(id)map;
- (id)quantizedMaxExpectedTotalActivationTimeForApps:(id)apps;
- (int64_t)getLedgerCountForProcess:(int)process;
- (unint64_t)getPhysMemSizeInBytes;
- (void)acquireDockAppAssertionForProcess:(id)process;
- (void)applyPolicyChangesFrom:(id)from to:(id)to;
- (void)collectAndSendAppActivationTelemetry:(id)telemetry;
- (void)configureMaximumDockCapacity;
- (void)enableApplicationDock;
- (void)getFootprintsForProcess:(int)process physFootprintReference:(int64_t *)reference frozenFootprintReference:(int64_t *)footprintReference;
- (void)handleDeathForProcess:(id)process withDockAssertion:(id)assertion;
- (void)handleFailureToAcquireAssertion:(id)assertion forProcess:(id)process withError:(id)error;
- (void)handleStateTransitionForProcess:(id)process withUpdate:(id)update;
- (void)initProcessMonitorForDockedApplications;
- (void)initializeLedgerIndices;
- (void)invalidateDockedAppAssersionsForPolicy:(id)policy;
- (void)invalidateDockedAppAssertion:(id)assertion forProcess:(id)process;
- (void)persistApplicationProcessHandles;
- (void)purgeApplicationDock;
- (void)recordState:(id)state forProcess:(id)process associatedWithApplication:(id)application;
- (void)refreshApplicationActivationCounts;
- (void)refreshApplicationActivationInformation;
- (void)refreshApplicationSpringboardVisibility;
- (void)refreshLedgerInformationForApplicationProcesses;
- (void)refreshLedgerInformationForProcess:(id)process;
- (void)registerForConsoleModeEvents;
- (void)registerForTrial;
- (void)removeInactiveAssertions;
- (void)restoreApplicationProcessHandles;
- (void)setClassCUnlockMonitor;
- (void)setDefaultExcludedApplications;
- (void)updatePolicy;
- (void)updateTrialParameters;
- (void)zNormalizeArray:(id)array intoQuantizedVector:(char *)vector withScaleFactor:(id)factor;
@end

@implementation _DASDock

- (void)persistApplicationProcessHandles
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = self->_applicationProcessHandles;
  objc_sync_enter(v4);
  applicationProcessHandles = self->_applicationProcessHandles;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000029E8;
  v8[3] = &unk_1001B8078;
  v6 = v3;
  v9 = v6;
  [(NSMutableDictionary *)applicationProcessHandles enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v4);
  v7 = self->_persistence;
  objc_sync_enter(v7);
  [(NSUserDefaults *)self->_persistence setObject:v6 forKey:@"applicationProcessIdentifiers"];
  objc_sync_exit(v7);
}

- (void)refreshLedgerInformationForApplicationProcesses
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_applicationProcessHandles copy];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008304;
  v4[3] = &unk_1001B8078;
  v4[4] = selfCopy;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];

  objc_sync_exit(selfCopy);
}

- (void)updatePolicy
{
  v3 = self->_lastPolicyUpdateTimestamp;
  objc_sync_enter(v3);
  [(NSDate *)self->_lastPolicyUpdateTimestamp timeIntervalSinceNow];
  v5 = v4;
  objc_sync_exit(v3);

  if (v5 <= -0.25)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "Performing a policy update.", buf, 2u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(NSSet *)selfCopy->_dockedApplications copy];
    computePolicyForCurrentState = [(_DASDock *)selfCopy computePolicyForCurrentState];
    if ([v8 isEqualToSet:computePolicyForCurrentState])
    {
      v10 = self->_logger;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No policy changes", v15, 2u);
      }
    }

    else
    {
      [(_DASDock *)selfCopy applyPolicyChangesFrom:computePolicyForCurrentState to:v8];
      v11 = [computePolicyForCurrentState copy];
      dockedApplications = selfCopy->_dockedApplications;
      selfCopy->_dockedApplications = v11;
    }

    v13 = +[NSDate now];
    lastPolicyUpdateTimestamp = self->_lastPolicyUpdateTimestamp;
    self->_lastPolicyUpdateTimestamp = v13;

    objc_sync_exit(selfCopy);
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_100129454();
    }
  }
}

- (id)computePolicyForCurrentState
{
  if (!self->_dockPurged)
  {
    admissibleApplications = [(_DASDock *)self admissibleApplications];
    v5 = [admissibleApplications count];
    if (v5 >= 0xFF)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_1001294CC();
      }

      v3 = objc_alloc_init(NSSet);
      goto LABEL_26;
    }

    v6 = v5;
    v31 = [(_DASDock *)self quantizedMaxExpectedTotalActivationTimeForApps:admissibleApplications];
    v32 = [[NSMutableArray alloc] initWithCapacity:v6];
    v34 = [[NSMutableArray alloc] initWithCapacity:v6];
    v33 = [[NSMutableArray alloc] initWithCapacity:v6];
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_100129490();
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!v6)
    {
LABEL_25:
      objc_sync_exit(selfCopy);

      v3 = [(_DASDock *)selfCopy computeOptimalPolicyForApps:admissibleApplications withValues:v32 scaledWeights:v34 andMemoryFootprint:v33];

LABEL_26:
      goto LABEL_27;
    }

    v9 = 0;
    v10 = 0;
    *&v8 = 138412290;
    v30 = v8;
    while (1)
    {
      v11 = [admissibleApplications objectAtIndex:{v9, v30}];
      v12 = [(NSMutableDictionary *)selfCopy->_lastPhysFootprintObservedForApplication objectForKey:v11];
      v13 = v12;
      if (!v12)
      {
        break;
      }

      unsignedIntValue = [v12 unsignedIntValue];
      if (unsignedIntValue)
      {
        goto LABEL_18;
      }

      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        *buf = v30;
        *v36 = v11;
        _os_log_error_impl(&_mh_execute_header, logger, OS_LOG_TYPE_ERROR, "Observed a process footprint of zero bytes: %@", buf, 0xCu);
      }

LABEL_24:

      v9 = ++v10;
      if (v6 <= v10)
      {
        goto LABEL_25;
      }
    }

    unsignedIntValue = 0xFFFFFFFFLL;
LABEL_18:
    v16 = [NSNumber numberWithUnsignedInt:unsignedIntValue / selfCopy->_weightScaleFactor];
    [v34 setObject:v16 atIndexedSubscript:v9];

    v17 = [NSNumber numberWithUnsignedInt:unsignedIntValue];
    [v33 setObject:v17 atIndexedSubscript:v9];

    v18 = [v31 objectForKey:v11];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &off_1001CA3C0;
    }

    [v32 setObject:v20 atIndexedSubscript:v9];
    v21 = [(NSMutableDictionary *)selfCopy->_applicationActivationCounts objectForKey:v11];
    [v21 floatValue];
    v23 = v22;

    v24 = [(NSDictionary *)selfCopy->_meanLaunchVersusResumeTimeDeltas objectForKey:v11];
    [v24 floatValue];
    v26 = v25;

    v27 = self->_logger;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [v19 floatValue];
      *buf = 67110146;
      *v36 = unsignedIntValue;
      *&v36[4] = 2048;
      *&v36[6] = v28;
      v37 = 2048;
      v38 = v23;
      v39 = 2048;
      v40 = v26;
      v41 = 2112;
      v42 = v11;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "unscaledWeight(%u bytes) value(%f) activationCount(%f) launchResumeDelta(%f) %@", buf, 0x30u);
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_100129500();
  }

  v3 = objc_alloc_init(NSSet);
LABEL_27:

  return v3;
}

- (id)admissibleApplications
{
  [(_DASDock *)self refreshApplicationActivationInformation];
  v3 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_applicationProcessHandles allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([(_DASDock *)selfCopy applicationIsAdmissibleForDockMembership:v9])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v10 = [v3 copy];

  return v10;
}

- (void)refreshApplicationActivationInformation
{
  obj = self;
  objc_sync_enter(obj);
  v2 = +[NSDate now];
  [(NSDate *)obj->_lastActivationInformationUpdateTimestamp timeIntervalSinceNow];
  if (v3 <= -3600.0)
  {
    [(_DASDock *)obj refreshApplicationActivationCounts];
    [(_DASDock *)obj refreshApplicationSpringboardVisibility];
    v4 = +[_APRSBiomeEventAnalyzer sharedInstance];
    meanDeltaTimeBetweenColdLaunchAndResume = [v4 meanDeltaTimeBetweenColdLaunchAndResume];
    meanLaunchVersusResumeTimeDeltas = obj->_meanLaunchVersusResumeTimeDeltas;
    obj->_meanLaunchVersusResumeTimeDeltas = meanDeltaTimeBetweenColdLaunchAndResume;

    objc_storeStrong(&obj->_lastActivationInformationUpdateTimestamp, v2);
  }

  objc_sync_exit(obj);
}

+ (id)dockManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BAFE8;
  block[3] = &unk_1001B54A0;
  block[4] = self;
  if (qword_10020B748 != -1)
  {
    dispatch_once(&qword_10020B748, block);
  }

  v2 = qword_10020B750;

  return v2;
}

- (_DASDock)init
{
  v51.receiver = self;
  v51.super_class = _DASDock;
  v2 = [(_DASDock *)&v51 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_dockDisabled = 0;
    v4 = os_log_create("com.apple.aprs", "DASDock");
    logger = v3->_logger;
    v3->_logger = v4;

    *&v3->_freezeDockedApps = 0;
    v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.dock"];
    v7 = [v6 objectForKey:@"SkipDockBand"];
    v8 = v7;
    if (v7)
    {
      v3->_skipDockBand = [v7 BOOLValue];
    }

    [(_DASDock *)v3 registerForTrial];
    [(_DASDock *)v3 updateTrialParameters];
    v3->_notifyToken = -1;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.dasdock.notificationQueue", v9);
    queue = v3->_queue;
    v3->_queue = v10;

    uTF8String = [@"kPLTaskingStartNotificationGlobal" UTF8String];
    v13 = v3->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000BB498;
    handler[3] = &unk_1001B5B78;
    v14 = v3;
    v50 = v14;
    notify_register_dispatch(uTF8String, &v3->_notifyToken, v13, handler);
    if ((_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl() & 1) != 0 || v3->_dockDisabled)
    {
      v15 = v3->_logger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (v3->_dockDisabled)
        {
          v16 = @"Trial";
        }

        else
        {
          v16 = @"Feature flag";
        }

        *buf = 138412290;
        v53 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "DASDock disabled by %@.", buf, 0xCu);
      }
    }

    else
    {
      v17 = v3->_logger;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Initializing DASDock...", buf, 2u);
      }

      v14->_maxDockCapacity = 0;
      v14->_weightScaleFactor = 500000;
      [(_DASDock *)v14 configureMaximumDockCapacity];
      v18 = +[NSDate distantPast];
      lastPolicyUpdateTimestamp = v14->_lastPolicyUpdateTimestamp;
      v14->_lastPolicyUpdateTimestamp = v18;

      v20 = +[NSDate distantPast];
      lastActivationInformationUpdateTimestamp = v14->_lastActivationInformationUpdateTimestamp;
      v14->_lastActivationInformationUpdateTimestamp = v20;

      v22 = objc_alloc_init(NSSet);
      dockedApplications = v14->_dockedApplications;
      v14->_dockedApplications = v22;

      v24 = objc_alloc_init(NSMutableDictionary);
      applicationActivationCounts = v14->_applicationActivationCounts;
      v14->_applicationActivationCounts = v24;

      v26 = objc_alloc_init(NSMutableDictionary);
      activeDockAssertions = v14->_activeDockAssertions;
      v14->_activeDockAssertions = v26;

      v28 = objc_alloc_init(NSSet);
      excludedApplications = v14->_excludedApplications;
      v14->_excludedApplications = v28;

      [(_DASDock *)v14 setDefaultExcludedApplications];
      v30 = objc_alloc_init(NSSet);
      springboardVisibleApplications = v14->_springboardVisibleApplications;
      v14->_springboardVisibleApplications = v30;

      [(_DASDock *)v14 refreshApplicationSpringboardVisibility];
      v32 = objc_alloc_init(NSDictionary);
      meanLaunchVersusResumeTimeDeltas = v14->_meanLaunchVersusResumeTimeDeltas;
      v14->_meanLaunchVersusResumeTimeDeltas = v32;

      v34 = objc_alloc_init(NSMutableDictionary);
      applicationProcessHandles = v14->_applicationProcessHandles;
      v14->_applicationProcessHandles = v34;

      v36 = objc_alloc_init(NSMutableDictionary);
      lastPhysFootprintObservedForApplication = v14->_lastPhysFootprintObservedForApplication;
      v14->_lastPhysFootprintObservedForApplication = v36;

      v38 = objc_alloc_init(NSMutableDictionary);
      lastFrozenFootprintObservedForApplication = v14->_lastFrozenFootprintObservedForApplication;
      v14->_lastFrozenFootprintObservedForApplication = v38;

      v40 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"DockApp"];
      domainAttribute = v14->_domainAttribute;
      v14->_domainAttribute = v40;

      [(_DASDock *)v14 initializeLedgerIndices];
      v42 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.dock.persistence"];
      persistence = v14->_persistence;
      v14->_persistence = v42;

      [(_DASDock *)v14 restoreApplicationProcessHandles];
      [(_DASDock *)v14 initProcessMonitorForDockedApplications];
      v44 = objc_opt_new();
      lockStateMonitor = v14->_lockStateMonitor;
      v14->_lockStateMonitor = v44;

      [(_DASDock *)v14 setClassCUnlockMonitor];
      v46 = +[_DASConsoleModeMonitor sharedMonitor];
      consoleModeMonitor = v14->_consoleModeMonitor;
      v14->_consoleModeMonitor = v46;

      [(_DASDock *)v14 registerForConsoleModeEvents];
    }
  }

  return v3;
}

- (void)registerForTrial
{
  v3 = [_DASTrialManager sharedInstanceForProject:222 withNamespace:@"COREOS_DRM_APRS"];
  [v3 addDelegate:self];
}

- (void)updateTrialParameters
{
  v3 = [_DASTrialManager sharedInstanceForProject:222 withNamespace:@"COREOS_DRM_APRS"];
  v4 = [v3 factorWithName:@"DockDisabled"];
  logger = self->_logger;
  v6 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = logger;
      v32 = 67109120;
      LODWORD(v33) = [v4 BOOLeanValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Trial: dockDisabled set to %d", &v32, 8u);
    }

    dockDisabled = [v4 BOOLeanValue];
    self->_dockDisabled = dockDisabled;
  }

  else
  {
    if (v6)
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load dockDisabled", &v32, 2u);
    }

    dockDisabled = self->_dockDisabled;
  }

  [_APRSMetricRecorder reportTrialParameterWithName:@"DockDisabled" value:dockDisabled];
  v9 = [v3 factorWithName:@"DockCapacityLevel"];
  v10 = self->_logger;
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = v10;
      longValue = [v9 longValue];
      v32 = 134217984;
      v33 = longValue;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Trial: dockCapacityLevel set to %lld", &v32, 0xCu);
    }

    longValue2 = [v9 longValue];
  }

  else
  {
    if (v11)
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load dockCapacityLevel", &v32, 2u);
    }

    longValue2 = 10;
  }

  self->_dockCapacityPercentage = longValue2;
  [_APRSMetricRecorder reportTrialParameterWithName:@"DockCapacityLevel" value:?];
  sub_1000BBA64(self->_logger, v3, @"memorystatus_freezer_use_ordered_list", 0);
  sub_1000BBA64(self->_logger, v3, @"memorystatus_freeze_budget_multiplier", 0);
  sub_1000BBA64(self->_logger, v3, @"memorystatus_freeze_max_candidate_band", 0);
  sub_1000BBA64(self->_logger, v3, @"memorystatus_freeze_processes_max", 0);
  sub_1000BBA64(self->_logger, v3, @"memorystatus_freeze_min_processes", 0);
  sub_1000BBA64(self->_logger, v3, @"memorystatus_min_thaw_refreeze_threshold", 0);
  sub_1000BBA64(self->_logger, v3, @"memorystatus_freezer_use_demotion_list", 0);
  sub_1000BBA64(self->_logger, v3, @"memorystatus_freeze_prevent_refreeze_of_recently_thawed", 1);
  sub_1000BBA64(self->_logger, v3, @"memorystatus_freeze_last_processes_thawed_cache_size", 1);
  sub_1000BBA64(self->_logger, v3, @"memorystatus_freeze_last_processes_thawed_prevent_refreeze_seconds", 1);
  v15 = [v3 factorWithName:@"FreeezeDockApps"];
  v16 = self->_logger;
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = v16;
      bOOLeanValue = [v15 BOOLeanValue];
      v32 = 134217984;
      v33 = bOOLeanValue;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Trial: frezeDockOption set to %ld", &v32, 0xCu);
    }

    bOOLeanValue2 = [v15 BOOLeanValue];
    self->_freezeDockedApps = bOOLeanValue2;
    v21 = bOOLeanValue2;
  }

  else
  {
    if (v17)
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load frezeDockOption", &v32, 2u);
    }

    v21 = 0;
    self->_freezeDockedApps = 0;
  }

  [_APRSMetricRecorder reportTrialParameterWithName:@"FreeezeDockApps" value:v21];
  v22 = [v3 factorWithName:@"SkipDockBand"];
  v23 = self->_logger;
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      v25 = v23;
      bOOLeanValue3 = [v22 BOOLeanValue];
      v32 = 134217984;
      v33 = bOOLeanValue3;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Trial: skipDockBandOption set to %ld", &v32, 0xCu);
    }

    bOOLeanValue4 = [v22 BOOLeanValue];
    self->_skipDockBand = bOOLeanValue4;
    v28 = bOOLeanValue4;
  }

  else
  {
    if (v24)
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load skipDockBandOption", &v32, 2u);
    }

    v28 = 0;
    self->_skipDockBand = 0;
  }

  [_APRSMetricRecorder reportTrialParameterWithName:@"SkipDockBand" value:v28];
  if (self->_dockDisabled || self->_skipDockBand)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v30 = [(NSSet *)selfCopy->_dockedApplications copy];
    objc_sync_exit(selfCopy);

    [(_DASDock *)selfCopy invalidateDockedAppAssersionsForPolicy:v30];
  }

  v31 = +[_APRSMetricRecorder sharedInstance];
  [v31 recordConfigState];
}

- (void)handleStateTransitionForProcess:(id)process withUpdate:(id)update
{
  processCopy = process;
  updateCopy = update;
  bundle = [processCopy bundle];
  identifier = [bundle identifier];

  if (identifier && ![(NSSet *)self->_excludedApplications containsObject:identifier])
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_100129304();
    }

    state = [updateCopy state];
    [(_DASDock *)self recordState:state forProcess:processCopy associatedWithApplication:identifier];
    if ([state taskState] == 3)
    {
      [(_DASDock *)self updatePolicy];
    }

    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_100129374();
    }
  }
}

- (void)recordState:(id)state forProcess:(id)process associatedWithApplication:(id)application
{
  stateCopy = state;
  processCopy = process;
  applicationCopy = application;
  if ([stateCopy isRunning])
  {
    endowmentNamespaces = [stateCopy endowmentNamespaces];
    v12 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

    if (v12)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_1001293E4();
      }

      [(_DASDock *)self collectAndSendAppActivationTelemetry:applicationCopy];
      v13 = self->_applicationProcessHandles;
      objc_sync_enter(v13);
      v14 = [processCopy pid];
      v15 = [(NSMutableDictionary *)self->_applicationProcessHandles objectForKey:applicationCopy];
      v16 = [v15 pid];

      if (v14 != v16)
      {
        [(NSMutableDictionary *)self->_applicationProcessHandles setObject:processCopy forKey:applicationCopy];
        [(_DASDock *)self persistApplicationProcessHandles];
      }

      objc_sync_exit(v13);

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v18 = [(NSMutableDictionary *)selfCopy->_applicationActivationCounts objectForKey:applicationCopy];
      v19 = v18;
      applicationActivationCounts = selfCopy->_applicationActivationCounts;
      if (v18)
      {
        v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 intValue] + 1);
      }

      else
      {
        v21 = &off_1001CA3A8;
      }

      [(NSMutableDictionary *)applicationActivationCounts setObject:v21 forKey:applicationCopy];
      if (v19)
      {
      }

      objc_sync_exit(selfCopy);
    }

    if ([stateCopy taskState] == 3)
    {
      [(_DASDock *)self refreshLedgerInformationForApplicationProcesses];
    }
  }

  else
  {
    v22 = self->_applicationProcessHandles;
    objc_sync_enter(v22);
    [(NSMutableDictionary *)self->_applicationProcessHandles removeObjectForKey:applicationCopy];
    [(_DASDock *)self persistApplicationProcessHandles];
    objc_sync_exit(v22);
  }
}

- (void)applyPolicyChangesFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  if (selfCopy->_freezeDockedApps || _os_feature_enabled_impl())
  {
    v8 = +[NSMutableSet set];
    v53 = +[NSMutableSet set];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v9 = toCopy;
    v10 = [v9 countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v10)
    {
      v11 = *v67;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v67 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v66 + 1) + 8 * i);
          if (([fromCopy containsObject:v13] & 1) == 0)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v13 allowPlaceholder:0 error:0];
            compatibilityObject = [v15 compatibilityObject];

            bundleExecutable = [compatibilityObject bundleExecutable];
            if (bundleExecutable)
            {
              [v53 addObject:bundleExecutable];
            }

            objc_autoreleasePoolPop(v14);
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v10);
    }

    logger = obj->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = v53;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "Removing previous dock recommendations: %@", buf, 0xCu);
    }

    v19 = +[_APRSFreezerInterface sharedInstance];
    [v19 updateFreezerRecommendations:v53 forDemotion:1];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v20 = fromCopy;
    v21 = [v20 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v21)
    {
      v22 = *v63;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v63 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v62 + 1) + 8 * j);
          v25 = objc_autoreleasePoolPush();
          v26 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v24 allowPlaceholder:0 error:0];
          compatibilityObject2 = [v26 compatibilityObject];

          bundleExecutable2 = [compatibilityObject2 bundleExecutable];
          if (bundleExecutable2)
          {
            [v8 addObject:bundleExecutable2];
          }

          objc_autoreleasePoolPop(v25);
        }

        v21 = [v20 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v21);
    }

    v29 = obj->_logger;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = v8;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Freezing dock recommendations: %@", buf, 0xCu);
    }

    v30 = +[_APRSFreezerInterface sharedInstance];
    [v30 updateFreezerRecommendations:v8 forDemotion:0];
  }

  v31 = obj;
  if (obj->_skipDockBand || obj->_dockDisabled || (v31 = obj, (_os_feature_enabled_impl() & 1) != 0))
  {
    objc_sync_exit(v31);
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v32 = toCopy;
    v33 = [v32 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v33)
    {
      v34 = *v59;
      do
      {
        for (k = 0; k != v33; k = k + 1)
        {
          if (*v59 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v58 + 1) + 8 * k);
          if (([fromCopy containsObject:{v36, toCopy}] & 1) == 0)
          {
            v37 = obj->_logger;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v74 = v36;
              _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Removing dock assertion for %@", buf, 0xCu);
            }

            v38 = [(NSMutableDictionary *)obj->_applicationProcessHandles objectForKey:v36];
            v39 = v38;
            if (v38)
            {
              activeDockAssertions = obj->_activeDockAssertions;
              v41 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v38 pid]);
              v42 = [(NSMutableDictionary *)activeDockAssertions objectForKey:v41];

              if (v42)
              {
                [(_DASDock *)obj invalidateDockedAppAssertion:v42 forProcess:v39];
              }
            }
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v33);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v43 = fromCopy;
    v44 = [v43 countByEnumeratingWithState:&v54 objects:v70 count:16];
    if (v44)
    {
      v45 = *v55;
      do
      {
        for (m = 0; m != v44; m = m + 1)
        {
          if (*v55 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v47 = *(*(&v54 + 1) + 8 * m);
          if (([v32 containsObject:{v47, toCopy}] & 1) == 0)
          {
            v48 = [(NSMutableDictionary *)obj->_applicationProcessHandles objectForKey:v47];
            v49 = obj->_logger;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v74 = v47;
              _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Adding dock assertion for %@", buf, 0xCu);
            }

            [(_DASDock *)obj acquireDockAppAssertionForProcess:v48];
          }
        }

        v44 = [v43 countByEnumeratingWithState:&v54 objects:v70 count:16];
      }

      while (v44);
    }

    objc_sync_exit(obj);
    v50 = obj->_logger;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = v43;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Finalized dock policy: %@", buf, 0xCu);
    }
  }
}

- (void)invalidateDockedAppAssersionsForPolicy:(id)policy
{
  policyCopy = policy;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [policyCopy countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138412290;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(policyCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          *buf = v17;
          v23 = v10;
          _os_log_debug_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEBUG, "Removing dock assertion for %@", buf, 0xCu);
        }

        v12 = [(NSMutableDictionary *)self->_applicationProcessHandles objectForKey:v10, v17];
        v13 = v12;
        if (v12)
        {
          activeDockAssertions = self->_activeDockAssertions;
          v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 pid]);
          v16 = [(NSMutableDictionary *)activeDockAssertions objectForKey:v15];

          if (v16)
          {
            [(_DASDock *)self invalidateDockedAppAssertion:v16 forProcess:v13];
          }
        }
      }

      v7 = [policyCopy countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }
}

- (id)computeOptimalPolicyForApps:(id)apps withValues:(id)values scaledWeights:(id)weights andMemoryFootprint:(id)footprint
{
  appsCopy = apps;
  valuesCopy = values;
  weightsCopy = weights;
  footprintCopy = footprint;
  v14 = objc_alloc_init(NSMutableSet);
  self->_currentDockCapacity = 0;
  if (![appsCopy count])
  {
    goto LABEL_25;
  }

  if ([appsCopy count] != 1)
  {
    p_maxDockCapacity = &self->_maxDockCapacity;
    v20 = self->_maxDockCapacity / self->_weightScaleFactor;
    v21 = objc_alloc_init(_DASKnapsackSolver);
    v22 = [[NSSet alloc] initWithObjects:{&off_1001CA3D8, 0}];
    v23 = [NSNumber numberWithUnsignedInt:v20];
    v24 = [(_DASKnapsackSolver *)v21 solveKnapsackWithCapacity:v23 forItemWeights:weightsCopy andItemValues:valuesCopy];

    if ([v24 isEqualToSet:v22])
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_100129684();
      }
    }

    else
    {
      if ([v24 count])
      {
        v39 = v22;
        v40 = v21;
        selfCopy = self;
        v37 = weightsCopy;
        v41 = valuesCopy;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v38 = v24;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v26)
        {
          v27 = v26;
          LODWORD(v28) = 0;
          v29 = *v44;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v44 != v29)
              {
                objc_enumerationMutation(v25);
              }

              unsignedShortValue = [*(*(&v43 + 1) + 8 * i) unsignedShortValue];
              v32 = [appsCopy objectAtIndex:unsignedShortValue];
              [v14 addObject:v32];

              v33 = [footprintCopy objectAtIndex:unsignedShortValue];
              v28 = [v33 unsignedIntValue] + v28;
            }

            v27 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
          }

          while (v27);
        }

        else
        {
          v28 = 0;
        }

        self = selfCopy;
        logger = selfCopy->_logger;
        weightsCopy = v37;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          sub_10012953C(logger, v28, p_maxDockCapacity);
        }

        v21 = v40;
        valuesCopy = v41;
        v24 = v38;
        v22 = v39;
        goto LABEL_24;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_100129648();
      }
    }

    LODWORD(v28) = 0;
LABEL_24:
    self->_currentDockCapacity = v28;

    goto LABEL_25;
  }

  v15 = [footprintCopy objectAtIndexedSubscript:0];
  unsignedIntValue = [v15 unsignedIntValue];
  maxDockCapacity = self->_maxDockCapacity;

  if (unsignedIntValue <= maxDockCapacity)
  {
    v18 = [appsCopy objectAtIndexedSubscript:0];
    [v14 addObject:v18];

    v19 = [footprintCopy objectAtIndexedSubscript:0];
    self->_currentDockCapacity = [v19 unsignedIntValue];
  }

LABEL_25:

  return v14;
}

- (BOOL)applicationIsAdmissibleForDockMembership:(id)membership
{
  membershipCopy = membership;
  v5 = [(NSMutableDictionary *)self->_applicationProcessHandles objectForKey:membershipCopy];

  v6 = [(NSMutableDictionary *)self->_lastPhysFootprintObservedForApplication objectForKey:membershipCopy];
  v19 = v6;
  if (v6)
  {
    v7 = [v6 longValue] > 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSMutableDictionary *)self->_applicationActivationCounts objectForKey:membershipCopy, v19];

  if (self->_freezeDockedApps || (_os_feature_enabled_impl() & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    [(NSMutableDictionary *)self->_lastFrozenFootprintObservedForApplication objectForKey:membershipCopy];
    v11 = v10 = v7;
    v9 = [v11 longValue] < 1;

    v7 = v10;
  }

  v12 = [(NSSet *)self->_excludedApplications containsObject:membershipCopy];
  v13 = [(NSSet *)self->_springboardVisibleApplications containsObject:membershipCopy];
  if ([(NSSet *)self->_springboardVisibleApplications count])
  {
    v14 = self->_springboardVisibleApplications != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = ~(v12 | ~v9 | (v13 ^ 1) & v14);
  if (!v5)
  {
    v15 = 0;
  }

  v16 = v15 & v7;
  if (!v8)
  {
    v16 = 0;
  }

  v21 = v16;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67111682;
    v23 = v21;
    v24 = 1024;
    v25 = v5 != 0;
    v26 = 1024;
    v27 = v7;
    v28 = 1024;
    v29 = v8 != 0;
    v30 = 1024;
    v31 = v9;
    v32 = 1024;
    v33 = v12;
    v34 = 1024;
    v35 = (v13 ^ 1) & v14;
    v36 = 1024;
    v37 = v13;
    v38 = 1024;
    v39 = v14;
    v40 = 2112;
    v41 = @"111000(00|10|11)";
    v42 = 2112;
    v43 = membershipCopy;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "Admissible: %d, Flags: %d%d%d%d%d%d%d%d %@, %@", buf, 0x4Cu);
  }

  return v21;
}

- (void)refreshApplicationActivationCounts
{
  v3 = objc_autoreleasePoolPush();
  v4 = [NSDate dateWithTimeIntervalSinceNow:-172800.0];
  v5 = [_DASBMHistogramBuilder builderForAppInFocusStreamStarting:v4];

  histogram = [v5 histogram];
  countsDictionary = [histogram countsDictionary];

  objc_autoreleasePoolPop(v3);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (countsDictionary)
  {
    v8 = [countsDictionary mutableCopy];
LABEL_3:
    applicationActivationCounts = selfCopy->_applicationActivationCounts;
    selfCopy->_applicationActivationCounts = v8;

    goto LABEL_5;
  }

  if (!selfCopy->_applicationActivationCounts)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    goto LABEL_3;
  }

LABEL_5:
  objc_sync_exit(selfCopy);
}

- (void)refreshApplicationSpringboardVisibility
{
  v3 = self->_springboardVisibleApplications;
  objc_sync_enter(v3);
  v4 = SBSCopyDisplayIdentifiers();
  springboardVisibleApplications = self->_springboardVisibleApplications;
  self->_springboardVisibleApplications = v4;

  v6 = self->_springboardVisibleApplications;
  if (v6)
  {
    if (![(NSSet *)v6 count])
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v8 = "Warning: SBSCopyDisplayIdentifiers returned an empty set";
        v9 = &v10;
LABEL_7:
        _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Warning: SBSCopyDisplayIdentifiers returned nil";
      v9 = buf;
      goto LABEL_7;
    }
  }

  objc_sync_exit(v3);
}

- (id)quantizedMaxExpectedTotalActivationTimeForApps:(id)apps
{
  appsCopy = apps;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(appsCopy, "count")}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = appsCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)selfCopy->_applicationActivationCounts objectForKey:v11, v22];
        [v12 floatValue];
        v14 = v13;

        v15 = [(NSDictionary *)selfCopy->_meanLaunchVersusResumeTimeDeltas objectForKey:v11];
        [v15 floatValue];
        v17 = v16;

        *&v18 = v14 * fminf(fmaxf(v17, 1.0), 20000.0);
        v19 = [NSNumber numberWithFloat:v18];
        [v5 setObject:v19 forKey:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
  v20 = [(_DASDock *)selfCopy quantizeNumericMap:v5];

  return v20;
}

- (id)quantizeNumericMap:(id)map
{
  mapCopy = map;
  allValues = [mapCopy allValues];
  v6 = [allValues count];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000BD4B4;
  v22 = sub_1000BD4C4;
  v23 = 0;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:v6];
  v8 = v19[5];
  v19[5] = v7;

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
  v9 = v15[3];
  if (v9)
  {
    [(_DASDock *)self zNormalizeArray:allValues intoQuantizedVector:v9 withScaleFactor:&off_1001CA3F0];
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BD4CC;
    v12[3] = &unk_1001B7FE0;
    v12[4] = &v14;
    v12[5] = v13;
    v12[6] = &v18;
    [mapCopy enumerateKeysAndObjectsUsingBlock:v12];
    free(v15[3]);
    v10 = [v19[5] copy];
    _Block_object_dispose(v13, 8);
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_1001296B8();
    }

    v10 = [v19[5] copy];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

- (void)zNormalizeArray:(id)array intoQuantizedVector:(char *)vector withScaleFactor:(id)factor
{
  arrayCopy = array;
  [factor floatValue];
  v10 = v9;
  v11 = [arrayCopy count];
  v12 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
  if (v12)
  {
    v13 = v12;
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v15 = [arrayCopy objectAtIndex:i];
        [v15 floatValue];
        v13[i] = v16;
      }

      v17 = 0;
      v18 = 0.0;
      do
      {
        v18 = v18 + v13[v17++];
      }

      while (v11 != v17);
      v19 = v18 / v11;
      v20 = 0.0;
      v21 = v13;
      v22 = v11;
      do
      {
        v23 = *v21++;
        v20 = v20 + ((v23 - v19) * (v23 - v19));
        --v22;
      }

      while (v22);
      v24 = sqrtf(v20 / v11);
      v25 = v13;
      do
      {
        v26 = *v25++;
        v27 = v10 * ((v26 - v19) / v24);
        v28 = fabsf(v27);
        if (v27 < 127.0)
        {
          v29 = -127.0;
        }

        else
        {
          v29 = 127.0;
        }

        if (v28 >= 127.0)
        {
          v27 = v29;
        }

        *vector++ = v27 ^ 0x80;
        --v11;
      }

      while (v11);
    }

    free(v13);
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    sub_1001296EC();
  }
}

- (void)acquireDockAppAssertionForProcess:(id)process
{
  processCopy = process;
  v5 = processCopy;
  if (processCopy)
  {
    v6 = [processCopy pid];
    v7 = self->_activeDockAssertions;
    objc_sync_enter(v7);
    activeDockAssertions = self->_activeDockAssertions;
    v9 = [NSNumber numberWithInt:v6];
    v10 = [(NSMutableDictionary *)activeDockAssertions objectForKey:v9];

    if ([v10 isValid])
    {
      objc_sync_exit(v7);
    }

    else
    {
      v11 = [RBSTarget targetWithPid:v6];
      v12 = [RBSAssertion alloc];
      domainAttribute = self->_domainAttribute;
      v13 = [NSArray arrayWithObjects:&domainAttribute count:1];
      v14 = [v12 initWithExplanation:@"DAS: Application is docked." target:v11 attributes:v13];

      v31 = 0;
      LOBYTE(v13) = [v14 acquireWithError:&v31];
      v15 = v31;
      if (v13)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
        {
          sub_100129720();
        }

        v24 = _NSConcreteStackBlock;
        v25 = 3221225472;
        v26 = sub_1000BDA2C;
        v27 = &unk_1001B8008;
        selfCopy = self;
        v29 = v5;
        v16 = v14;
        v30 = v16;
        [v29 monitorForDeath:&v24];
        v17 = self->_activeDockAssertions;
        selfCopy = [NSNumber numberWithInt:v6, v24, v25, v26, v27, selfCopy];
        [(NSMutableDictionary *)v17 setObject:v16 forKey:selfCopy];
      }

      else
      {
        [(_DASDock *)self handleFailureToAcquireAssertion:v14 forProcess:v5 withError:v15];
      }

      v19 = [(NSMutableDictionary *)self->_activeDockAssertions count];

      objc_sync_exit(v7);
      bundle = [v5 bundle];
      identifier = [bundle identifier];

      if (identifier)
      {
        v22 = +[_APRSMetricRecorder sharedInstance];
        [v22 startLoggingForApp:identifier pid:objc_msgSend(v5 forEvent:{"pid"), 1}];
      }

      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
      {
        sub_100129790(logger, v19);
      }

      v10 = v14;
    }
  }
}

- (void)handleDeathForProcess:(id)process withDockAssertion:(id)assertion
{
  processCopy = process;
  assertionCopy = assertion;
  v8 = self->_activeDockAssertions;
  objc_sync_enter(v8);
  activeDockAssertions = self->_activeDockAssertions;
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [processCopy pid]);
  v11 = [(NSMutableDictionary *)activeDockAssertions objectForKey:v10];

  if ([v11 isValid])
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_10012984C();
    }

    [(_DASDock *)self invalidateDockedAppAssertion:v11 forProcess:processCopy];
  }

  objc_sync_exit(v8);
  bundle = [processCopy bundle];
  identifier = [bundle identifier];

  if (identifier)
  {
    v14 = self->_applicationProcessHandles;
    objc_sync_enter(v14);
    [(NSMutableDictionary *)self->_applicationProcessHandles removeObjectForKey:identifier];
    [(_DASDock *)self persistApplicationProcessHandles];
    objc_sync_exit(v14);
  }

  [(_DASDock *)self removeInactiveAssertions];
  [(_DASDock *)self updatePolicy];
}

- (void)removeInactiveAssertions
{
  v3 = self->_activeDockAssertions;
  objc_sync_enter(v3);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)self->_activeDockAssertions allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_activeDockAssertions objectForKey:v8];
        v10 = v9;
        if (!v9 || ([v9 isValid] & 1) == 0)
        {
          [(NSMutableDictionary *)self->_activeDockAssertions removeObjectForKey:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
}

- (void)handleFailureToAcquireAssertion:(id)assertion forProcess:(id)process withError:(id)error
{
  assertionCopy = assertion;
  processCopy = process;
  errorCopy = error;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    v19 = 138412802;
    v20 = assertionCopy;
    v21 = 2112;
    v22 = processCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, logger, OS_LOG_TYPE_ERROR, "Failed to acquire assertion %@ for process %@ with error %@", &v19, 0x20u);
  }

  bundle = [processCopy bundle];
  identifier = [bundle identifier];

  if (identifier)
  {
    v14 = self->_applicationProcessHandles;
    objc_sync_enter(v14);
    v15 = [(NSMutableDictionary *)self->_applicationProcessHandles objectForKey:identifier];
    v16 = v15;
    if (v15)
    {
      currentState = [v15 currentState];
      isRunning = [currentState isRunning];

      if ((isRunning & 1) == 0)
      {
        [(NSMutableDictionary *)self->_applicationProcessHandles removeObjectForKey:identifier];
        [(_DASDock *)self persistApplicationProcessHandles];
      }
    }

    objc_sync_exit(v14);
  }
}

- (void)invalidateDockedAppAssertion:(id)assertion forProcess:(id)process
{
  assertionCopy = assertion;
  processCopy = process;
  v8 = self->_activeDockAssertions;
  objc_sync_enter(v8);
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_1001298BC();
  }

  [assertionCopy invalidate];
  activeDockAssertions = self->_activeDockAssertions;
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [processCopy pid]);
  [(NSMutableDictionary *)activeDockAssertions removeObjectForKey:v10];

  bundle = [processCopy bundle];
  identifier = [bundle identifier];

  if (identifier)
  {
    v13 = +[_APRSMetricRecorder sharedInstance];
    [v13 endEventForApp:identifier pid:objc_msgSend(processCopy forEvent:{"pid"), 1}];
  }

  objc_sync_exit(v8);
}

- (void)collectAndSendAppActivationTelemetry:(id)telemetry
{
  telemetryCopy = telemetry;
  if (AnalyticsIsEventUsed())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_applicationProcessHandles objectForKey:telemetryCopy];

    [(NSSet *)selfCopy->_dockedApplications containsObject:telemetryCopy];
    v6 = [(NSMutableDictionary *)selfCopy->_lastFrozenFootprintObservedForApplication objectForKey:telemetryCopy];
    [v6 longValue];

    [(NSSet *)selfCopy->_dockedApplications count];
    v7 = ((selfCopy->_currentDockCapacity / selfCopy->_maxDockCapacity) * 100.0);
    objc_sync_exit(selfCopy);

    AnalyticsSendEventLazy();
  }
}

- (void)initProcessMonitorForDockedApplications
{
  v3 = +[RBSProcessStateDescriptor descriptor];
  [v3 setValues:1];
  [v3 setEndowmentNamespaces:&off_1001CAE28];
  +[RBSProcessPredicate predicateMatchingProcessTypeApplication];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BE44C;
  v4 = v8[3] = &unk_1001B8050;
  v9 = v4;
  v5 = v3;
  v10 = v5;
  selfCopy = self;
  v6 = [RBSProcessMonitor monitorWithConfiguration:v8];
  processMonitor = self->_processMonitor;
  self->_processMonitor = v6;

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_10012992C();
  }
}

- (void)initializeLedgerIndices
{
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *&self->_phys_footprint_index = vnegq_f64(v3);
  getpid();
  ledger();
  v4 = malloc_type_malloc(0, 0x1000040565EDBD2uLL);
  if (v4)
  {
    v5 = v4;
    ledger();
    free(v5);
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_100129ACC();
  }
}

- (int64_t)getLedgerCountForProcess:(int)process
{
  if ((ledger() & 0x80000000) == 0)
  {
    return 0;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    sub_100129B08(logger);
  }

  return 0;
}

- (void)getFootprintsForProcess:(int)process physFootprintReference:(int64_t *)reference frozenFootprintReference:(int64_t *)footprintReference
{
  v8 = [(_DASDock *)self getLedgerCountForProcess:?];
  v9 = malloc_type_malloc(48 * v8, 0x1000040EED21634uLL);
  if (self->_frozen_to_swap_index >= v8 || self->_phys_footprint_index >= v8 || (ledger() & 0x80000000) != 0)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      sub_100129BA8(logger);
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9[6 * self->_frozen_to_swap_index];
    v11 = v9[6 * self->_phys_footprint_index];
  }

  free(v9);
  if (reference)
  {
    *reference = v11;
  }

  if (footprintReference)
  {
    *footprintReference = v10;
  }
}

- (void)refreshLedgerInformationForProcess:(id)process
{
  processCopy = process;
  v5 = [processCopy pid];
  bundle = [processCopy bundle];
  identifier = [bundle identifier];

  if (identifier)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    [(_DASDock *)self getFootprintsForProcess:v5 physFootprintReference:&v15 frozenFootprintReference:&v14];
    v8 = self->_lastFrozenFootprintObservedForApplication;
    objc_sync_enter(v8);
    lastFrozenFootprintObservedForApplication = self->_lastFrozenFootprintObservedForApplication;
    v10 = [NSNumber numberWithLongLong:v14];
    [(NSMutableDictionary *)lastFrozenFootprintObservedForApplication setObject:v10 forKey:identifier];

    objc_sync_exit(v8);
    v11 = self->_lastFrozenFootprintObservedForApplication;
    objc_sync_enter(v11);
    lastPhysFootprintObservedForApplication = self->_lastPhysFootprintObservedForApplication;
    v13 = [NSNumber numberWithLongLong:v15];
    [(NSMutableDictionary *)lastPhysFootprintObservedForApplication setObject:v13 forKey:identifier];

    objc_sync_exit(v11);
  }
}

- (unint64_t)getPhysMemSizeInBytes
{
  v7 = 8;
  v8 = 0;
  v3 = sysctlbyname("hw.memsize", &v8, &v7, 0, 0);
  if (v3)
  {
    v4 = v3;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100129C48(logger, v4);
    }
  }

  return v8;
}

- (void)configureMaximumDockCapacity
{
  if (self->_dockPurged)
  {
    logger = self->_logger;
    dockCapacityPercentage = 0.0;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      sub_100129E60(logger);
    }
  }

  else
  {
    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.dock"];
    v6 = [v5 objectForKey:@"DockCapacityPercentage"];
    v7 = v6;
    if (v6)
    {
      [v6 floatValue];
      dockCapacityPercentage = v8;
      v9 = self->_logger;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100129D10(v9, dockCapacityPercentage);
      }
    }

    else
    {
      v10 = self->_logger;
      dockCapacityPercentage = self->_dockCapacityPercentage;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100129DB8(v10, dockCapacityPercentage);
      }
    }
  }

  getPhysMemSizeInBytes = [(_DASDock *)self getPhysMemSizeInBytes];
  if (getPhysMemSizeInBytes)
  {
    v12 = fminf(dockCapacityPercentage, 100.0);
    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    v13 = v12 / 100.0;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_maxDockCapacity = fminf(v13 * getPhysMemSizeInBytes, 4295000000.0);
    objc_sync_exit(selfCopy);

    v15 = v13 * 100.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = self->_logger;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    maxDockCapacity = self->_maxDockCapacity;
    v18 = v16;
    v19 = [NSNumber numberWithUnsignedInt:maxDockCapacity];
    v20 = [NSNumber numberWithUnsignedLongLong:getPhysMemSizeInBytes];
    *&v21 = v15;
    v22 = [NSNumber numberWithFloat:v21];
    v23 = 138412802;
    v24 = v19;
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = v22;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Max capacity: %@ bytes, PhysMemSize: %@ bytes, Capacity percentage: %@ percent", &v23, 0x20u);
  }
}

- (void)enableApplicationDock
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "Enabling application dock", v5, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_dockPurged = 0;
  objc_sync_exit(selfCopy);

  [(_DASDock *)selfCopy configureMaximumDockCapacity];
  [(_DASDock *)selfCopy refreshLedgerInformationForApplicationProcesses];
  [(_DASDock *)selfCopy updatePolicy];
}

- (void)purgeApplicationDock
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "Purging application dock", v5, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_dockPurged = 1;
  objc_sync_exit(selfCopy);

  [(_DASDock *)selfCopy configureMaximumDockCapacity];
  [(_DASDock *)selfCopy updatePolicy];
}

- (void)restoreApplicationProcessHandles
{
  v3 = self->_persistence;
  objc_sync_enter(v3);
  v4 = [(NSUserDefaults *)self->_persistence valueForKey:@"applicationProcessIdentifiers"];
  objc_sync_exit(v3);

  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000BEF78;
    v5[3] = &unk_1001B5608;
    v5[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

- (void)setClassCUnlockMonitor
{
  if (![(_DASDataProtectionStateMonitor *)self->_lockStateMonitor unnotifiedIsDataAvailableForClassC])
  {
    objc_initWeak(&location, self);
    lockStateMonitor = self->_lockStateMonitor;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000BF148;
    v4[3] = &unk_1001B55C0;
    objc_copyWeak(&v5, &location);
    [(_DASDataProtectionStateMonitor *)lockStateMonitor setChangeHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)registerForConsoleModeEvents
{
  objc_initWeak(&location, self);
  consoleModeMonitor = self->_consoleModeMonitor;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BF2FC;
  v5[3] = &unk_1001B80A0;
  objc_copyWeak(&v6, &location);
  v4 = [(_DASConsoleModeMonitor *)consoleModeMonitor registerStateChangeHandler:v5 forConsoleModeType:20];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)setDefaultExcludedApplications
{
  v3 = [NSSet setWithArray:&off_1001CAE40];
  excludedApplications = self->_excludedApplications;
  self->_excludedApplications = v3;

  _objc_release_x1(v3, excludedApplications);
}

@end