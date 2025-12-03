@interface NEKSyncController
- (BOOL)_canUseDataTransfer;
- (BOOL)_clearToDeltaSync;
- (BOOL)_shouldFakeFailure;
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (NEKSyncController)initWithEnvironment:(id)environment;
- (NEKSyncControllerDelegate)delegate;
- (double)_fullSessionTimeout;
- (double)_nextDelay:(int64_t)delay;
- (double)getFailureProbablity;
- (double)getFixedRetryInternal;
- (double)getMaximumSessionTimeout;
- (double)getMinimumSessionTimeout;
- (id)environment;
- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession;
- (int64_t)_faultCount;
- (int64_t)maxDeltaRetries;
- (void)_recvSessionEnded:(id)ended error:(id)error;
- (void)_retrySession:(id)session;
- (void)_retrySync;
- (void)_sendSessionEnded:(id)ended error:(id)error;
- (void)_setClipping:(id)clipping;
- (void)_setFaultCount:(int64_t)count;
- (void)_startRecvSession:(id)session results:(StartSessionResults *)results;
- (void)_startSendSession:(id)session results:(StartSessionResults *)results;
- (void)activityDefer:(id)defer;
- (void)bumpFaultsAndScheduleRetry;
- (void)changeObserverDidObserveChanges:(id)changes;
- (void)changeObserverDidObserveTruncation:(id)truncation;
- (void)clearRemoteBuildVersion;
- (void)clearRetryState;
- (void)createOrUpdateSYObject:(id)object eventStore:(id)store reminderStore:(id)reminderStore session:(id)session;
- (void)deleteSYObject:(id)object eventStore:(id)store reminderStore:(id)reminderStore session:(id)session;
- (void)prepDatabasesForResetSync;
- (void)recordSuccessForSession:(id)session receiving:(BOOL)receiving;
- (void)scheduleRetry;
- (void)service:(id)service sessionEnded:(id)ended error:(id)error;
- (void)setNeedsFullSync;
- (void)setNeedsMigrationSync;
- (void)setNeedsNightlySync;
- (void)setNeedsReunionSync;
- (void)start;
- (void)tc_advanceChangeNumber;
- (void)tc_setAutomaticSync:(BOOL)sync;
- (void)tc_setFailureProbablity:(double)probablity;
- (void)tc_setFixedRetryInternal:(double)internal;
- (void)tc_setMaximumSessionTimeout:(double)timeout;
- (void)tc_setMinimumSessionTimeout:(double)timeout;
- (void)tc_setNominal;
- (void)tc_setObjectDelay:(double)delay;
- (void)tc_status:(id)tc_status;
@end

@implementation NEKSyncController

- (NEKSyncController)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v41.receiver = self;
  v41.super_class = NEKSyncController;
  v5 = [(NEKSyncController *)&v41 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v6->_syServiceLock._os_unfair_lock_opaque = 0;
    v7 = sub_100004B98("NEK.sessionIdle");
    sessionIdleQueue = v6->_sessionIdleQueue;
    v6->_sessionIdleQueue = v7;

    environment = [(NEKSyncController *)v6 environment];
    v10 = [NEKStore storeForEventWithEnvironment:environment];
    eventStore = v6->_eventStore;
    v6->_eventStore = v10;

    if ([environmentCopy isReminderKitEnabled])
    {
      environment2 = [(NEKSyncController *)v6 environment];
      v13 = [NEKStore storeForReminderWithEnvironment:environment2];
      reminderStore = v6->_reminderStore;
      v6->_reminderStore = v13;
    }

    else
    {
      environment2 = v6->_reminderStore;
      v6->_reminderStore = 0;
    }

    v15 = [[NEKStatTracker alloc] initWithEnvironment:environmentCopy name:@"resetSync" defaultMean:600.0 defaultStddev:20.0];
    resetTimeoutTracker = v6->_resetTimeoutTracker;
    v6->_resetTimeoutTracker = v15;

    v17 = [[NEKStatTracker alloc] initWithEnvironment:environmentCopy name:@"deltaSync" defaultMean:300.0 defaultStddev:20.0];
    deltaTimeoutTracker = v6->_deltaTimeoutTracker;
    v6->_deltaTimeoutTracker = v17;

    v19 = [[NEKStatTracker alloc] initWithEnvironment:environmentCopy name:@"nightlySync" defaultMean:300.0 defaultStddev:20.0];
    nightlyTimeoutTracker = v6->_nightlyTimeoutTracker;
    v6->_nightlyTimeoutTracker = v19;

    [(NEKStatTracker *)v6->_resetTimeoutTracker load];
    [(NEKStatTracker *)v6->_deltaTimeoutTracker load];
    [(NEKStatTracker *)v6->_nightlyTimeoutTracker load];
    [(NEKSyncController *)v6 _setClipping:v6->_resetTimeoutTracker];
    [(NEKSyncController *)v6 _setClipping:v6->_deltaTimeoutTracker];
    [(NEKSyncController *)v6 _setClipping:v6->_nightlyTimeoutTracker];
    v6->_isNightlySync = 0;
    changeObserver = [(NEKStore *)v6->_eventStore changeObserver];
    [changeObserver setDelegate:v6];

    changeObserver2 = [(NEKStore *)v6->_reminderStore changeObserver];
    [changeObserver2 setDelegate:v6];

    v23 = [NEKRPCEndpoint alloc];
    isReminderKitEnabled = [environmentCopy isReminderKitEnabled];
    clientName = [environmentCopy clientName];
    v26 = [(NEKRPCEndpoint *)v23 initWithReminderKitEnabled:isReminderKitEnabled clientName:clientName];
    rpcEndpoint = v6->_rpcEndpoint;
    v6->_rpcEndpoint = v26;

    v28 = [[NEKTestControl alloc] initWithEnvironment:environmentCopy];
    testingControl = v6->_testingControl;
    v6->_testingControl = v28;

    LODWORD(isReminderKitEnabled) = [environmentCopy isReminderKitEnabled];
    v30 = *(qword_1000D18A8 + 8);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (isReminderKitEnabled)
    {
      if (v31)
      {
        *v40 = 0;
        v32 = "ReminderKit enabled.";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v32, v40, 2u);
      }
    }

    else if (v31)
    {
      *v40 = 0;
      v32 = "ReminderKit disabled.";
      goto LABEL_10;
    }

    v33 = [[NEKAnalyticsDriver alloc] initWithSyncController:v6];
    analyticsDriver = v6->_analyticsDriver;
    v6->_analyticsDriver = v33;

    v35 = [[NDTActivity alloc] initWithDelegate:v6];
    activity = v6->_activity;
    v6->_activity = v35;

    v37 = [[NEKServicesServer alloc] initWithEnvironment:environmentCopy];
    servicesServer = v6->_servicesServer;
    v6->_servicesServer = v37;
  }

  return v6;
}

- (void)_setClipping:(id)clipping
{
  clippingCopy = clipping;
  [(NEKSyncController *)self getMinimumSessionTimeout];
  v5 = v4;
  [(NEKSyncController *)self getMaximumSessionTimeout];
  v7 = v6;
  [clippingCopy setMinTimeout:v5];
  [clippingCopy setMaxTimeout:v7];
}

- (BOOL)_canUseDataTransfer
{
  v2 = +[SYDevice targetableDevice];
  systemBuildVersion = [v2 systemBuildVersion];

  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = systemBuildVersion;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remote system build version: %{public}@", &v8, 0xCu);
  }

  v5 = +[NEKCapabilities instance];
  canUseDataTransfer = [v5 canUseDataTransfer];

  return canUseDataTransfer;
}

- (void)start
{
  os_unfair_lock_lock(&self->_syServiceLock);
  if (!self->_queue)
  {
    v3 = sub_100004B98("NEK.SYService");
    queue = self->_queue;
    self->_queue = v3;

    v5 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_queue;
      *buf = 134217984;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New NEK.SYService queue: %p", buf, 0xCu);
    }
  }

  if (self->_syncService)
  {
    v7 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      syncService = self->_syncService;
      *buf = 134217984;
      v33 = syncService;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Shutting down existing SYService: %p", buf, 0xCu);
    }

    v9 = self->_syncService;
    self->_syncService = 0;
  }

  v30 = SYServiceOptionDiskBufferProtectionClass;
  v31 = &off_1000BB7C0;
  v10 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v11 = [[SYService alloc] initWithService:@"com.apple.private.alloy.eventkitsync" priority:0 qos:21 asMasterStore:1 options:v10];
  v12 = self->_syncService;
  self->_syncService = v11;

  v28 = IDSSendMessageOptionAllowCloudDeliveryKey;
  v29 = &__kCFBooleanTrue;
  v13 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [(SYService *)self->_syncService setOptions:v13];

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"internal_forceFileTransfer", @"com.apple.EventKitSync", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && AppBooleanValue || (+[NEKCapabilities instance](NEKCapabilities, "instance"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 canUseDataTransfer], v15, (v16 & 1) == 0))
  {
    v19 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Selecting file transfer engine", buf, 2u);
    }

    [(SYService *)self->_syncService setEngineType:2];
    v18 = 0;
  }

  else
  {
    v17 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Selecting data messaging engine", buf, 2u);
    }

    [(SYService *)self->_syncService setSendingBufferCap:0x10000];
    v18 = 1;
  }

  self->_wasUsingDataTransfer = v18;
  [(SYService *)self->_syncService setDelegate:self queue:self->_queue];
  v20 = self->_syncService;
  v26 = 0;
  v21 = [(SYService *)v20 resume:&v26];
  v22 = v26;
  v23 = *(qword_1000D18A8 + 8);
  if (v21)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_syncService;
      *buf = 134217984;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Started new SYService: %p", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1000725C8();
  }

  os_unfair_lock_unlock(&self->_syServiceLock);
  environment = [(NEKSyncController *)self environment];
  [environment syncCoordinator];

  [(NEKSyncController *)self setNeedsMigrationSync];
}

- (id)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)setNeedsFullSync
{
  v3 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enqueueing a full sync", v6, 2u);
  }

  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  [tinyStore setIntegerValue:1 forKey:@"RetryMustBeReset"];
  [(SYService *)self->_syncService setNeedsResetSync];
}

- (void)setNeedsReunionSync
{
  _faultCount = [(NEKSyncController *)self _faultCount];
  maxDeltaRetries = [(NEKSyncController *)self maxDeltaRetries];
  v5 = *(qword_1000D18A8 + 8);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (_faultCount >= maxDeltaRetries)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reunion sync with faults- Forcing full sync", v8, 2u);
    }

    [(NEKSyncController *)self setNeedsFullSync];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enqueueing a delta reunion sync", buf, 2u);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"NEKDatabaseChangedExternallyNotification" object:self];
  }
}

- (void)setNeedsNightlySync
{
  if ([(NEKSyncController *)self _faultCount])
  {
    v3 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Nightly sync requested but we have faults. Ignoring request.", v5, 2u);
    }
  }

  else
  {
    self->_isNightlySync = 1;
    v4 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Poking CS for nightly sync", buf, 2u);
    }

    [(SYService *)self->_syncService setHasChangesAvailable];
  }
}

- (void)setNeedsMigrationSync
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  environment2 = [(NEKSyncController *)self environment];
  syncCoordinator = [environment2 syncCoordinator];
  okToPerformDeltaSync = [syncCoordinator okToPerformDeltaSync];

  if (!okToPerformDeltaSync)
  {
    v12 = *(qword_1000D18A8 + 8);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = 0;
    v13 = "Migration check dropped.";
    v14 = &v16;
    v15 = v12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
    goto LABEL_11;
  }

  v8 = [tinyStore getIntegerValueForKey:@"MigrationSyncCount" default:0];
  v9 = _os_feature_enabled_impl();
  v10 = *(qword_1000D18A8 + 8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8 >= v9)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

    *v17 = 0;
    v13 = "Migration number is fine, no migration sync needed.";
    v14 = v17;
    v15 = v10;
    goto LABEL_10;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requested migration sync", buf, 2u);
  }

  [(NEKSyncController *)self setNeedsFullSync];
LABEL_11:
}

- (void)_retrySync
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  _faultCount = [(NEKSyncController *)self _faultCount];
  v6 = [tinyStore getIntegerValueForKey:@"RetryMustBeReset" default:0];
  [tinyStore getDoubleValueForKey:@"deferUntil" default:-1.0];
  v8 = v7;
  Current = CFAbsoluteTimeGetCurrent();
  maxDeltaRetries = [(NEKSyncController *)self maxDeltaRetries];
  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v11 = _faultCount < maxDeltaRetries;
  }

  if (v11)
  {
    v17 = *(qword_1000D18A8 + 8);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (_faultCount < 1)
    {
      if (Current >= v8)
      {
        if (v18)
        {
          LOWORD(v21) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_retrySync called but we have no faults. We're perfect!", &v21, 2u);
        }

        [(NDTActivity *)self->_activity completeAndFireNever];
      }

      else
      {
        if (v18)
        {
          LOWORD(v21) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Retrying a deferral.", &v21, 2u);
        }

        [(SYService *)self->_syncService setHasChangesAvailable];
      }
    }

    else
    {
      if (v18)
      {
        v21 = 67109120;
        v22 = _faultCount;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Retrying a failed sync (%d) (delta)", &v21, 8u);
      }

      v19 = +[NSNotificationCenter defaultCenter];
      [v19 postNotificationName:@"NEKDatabaseChangedExternallyNotification" object:0];
    }
  }

  else
  {
    currentSession = [(SYService *)self->_syncService currentSession];
    if (currentSession && (v13 = currentSession, -[SYService currentSession](self->_syncService, "currentSession"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isResetSync], v14, v13, v15))
    {
      v16 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Looks like I could use a reset but it turns out we're already standing right in the middle of one, so let's just move on.", &v21, 2u);
      }
    }

    else
    {
      v20 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 67109120;
        v22 = _faultCount;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Retrying a failed sync (%d) (reset)", &v21, 8u);
      }

      [(SYService *)self->_syncService setNeedsResetSync];
    }
  }
}

- (void)createOrUpdateSYObject:(id)object eventStore:(id)store reminderStore:(id)reminderStore session:(id)session
{
  objectCopy = object;
  storeCopy = store;
  reminderStoreCopy = reminderStore;
  sessionCopy = session;
  v49 = objectCopy;
  v52 = [objectCopy objectAtIndexedSubscript:0];
  delegate = [sessionCopy delegate];
  v10 = +[NDTPerf wallTime];
  objc_opt_class();
  v11 = v52;
  if (objc_opt_isKindOfClass())
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_100072BA0();
      v11 = v52;
    }

    reminderStore = self->_reminderStore;
    v13 = v11;
    [(NEKStore *)reminderStore updateSource:v13 store:reminderStoreCopy];
    [(NEKStore *)self->_eventStore updateSource:v13 store:storeCopy];

    [delegate setStoreUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(delegate, "storeUpdateTimeNs") - v10}];
    goto LABEL_57;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_1000727FC();
      v11 = v52;
    }

    v14 = v11;
    attributes = [v14 attributes];
    v16 = attributes == 0;

    if (v16)
    {
      if (([v14 isDefaultTaskCalendar] & 1) == 0 && (objc_msgSend(v14, "isDefaultEventCalendar") & 1) == 0)
      {
        v48 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000729F4(v48, sessionCopy, v14);
        }

        goto LABEL_56;
      }

      v38 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_100072B00(v38, sessionCopy);
      }
    }

    else
    {
      attributes2 = [v14 attributes];
      supportedEntityTypes = [attributes2 supportedEntityTypes];

      environment = [(NEKSyncController *)self environment];
      isReminderKitEnabled = [environment isReminderKitEnabled];

      if (*&isReminderKitEnabled & (supportedEntityTypes >> 1))
      {
        v21 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_100072954(v21, sessionCopy);
        }

        [(NEKStore *)self->_reminderStore updateCalendar:v14 store:reminderStoreCopy];
        goto LABEL_56;
      }

      environment2 = [(NEKSyncController *)self environment];
      isReminderKitEnabled2 = [environment2 isReminderKitEnabled];
      if (supportedEntityTypes)
      {
        v41 = 0;
      }

      else
      {
        v41 = isReminderKitEnabled2;
      }

      v42 = *(qword_1000D18A8 + 8);
      if (v41)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = v42;
          identifier = [sessionCopy identifier];
          attributes3 = [v14 attributes];
          v46 = sub_10002CDF8([attributes3 title]);
          calendarIdentifier = [v14 calendarIdentifier];
          *buf = 138544130;
          *&buf[4] = identifier;
          *&buf[12] = 2114;
          *&buf[14] = v46;
          *&buf[22] = 2114;
          v67 = calendarIdentifier;
          v68 = 1024;
          v69 = supportedEntityTypes;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "[Session: %{public}@] createOrUpdateSYObject: calendar or list %{public}@/%{public}@ has entitySupportType %d", buf, 0x26u);
        }

        goto LABEL_56;
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        sub_1000728B4(v42, sessionCopy);
      }
    }

    [(NEKStore *)self->_eventStore updateCalendar:v14 store:storeCopy];
LABEL_56:
    [delegate setCalendarUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(delegate, "calendarUpdateTimeNs") - v10}];

    goto LABEL_57;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v23 = *(qword_1000D18A8 + 8);
  if (isKindOfClass)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_1000726E8();
    }

    environment3 = [(NEKSyncController *)self environment];
    isReminderKitEnabled3 = [environment3 isReminderKitEnabled];

    if ((isReminderKitEnabled3 & 1) == 0)
    {
      [(NEKStore *)self->_eventStore updateICS:objectCopy store:storeCopy session:sessionCopy];
      [delegate setEventUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(delegate, "eventUpdateTimeNs") - v10}];
      goto LABEL_57;
    }

    v26 = +[NSMutableArray array];
    v55 = +[NSMutableArray array];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = objectCopy;
    v27 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (!v27)
    {
      goto LABEL_32;
    }

    v28 = *v60;
    while (1)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v60 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v59 + 1) + 8 * i);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v67 = 0;
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_10003F4CC;
        v58[3] = &unk_1000B5970;
        v58[4] = v30;
        v58[5] = buf;
        [v30 enumerateCalendarItemIdentifiersUsingBlock:v58];
        environment4 = [(NEKSyncController *)self environment];
        if ([environment4 isReminderKitEnabled])
        {
          v32 = *(*&buf[8] + 24) == 2;

          v33 = v55;
          if (v32)
          {
            goto LABEL_30;
          }
        }

        else
        {
        }

        v33 = v26;
        if (*(*&buf[8] + 24) == 3)
        {
          v34 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            identifier2 = [sessionCopy identifier];
            sub_1000727A0(identifier2, v63, &v64, v34);
          }

          v33 = v26;
        }

LABEL_30:
        [v33 addObject:v30];
        _Block_object_dispose(buf, 8);
      }

      v27 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (!v27)
      {
LABEL_32:

        if ([v26 count])
        {
          v36 = +[NDTPerf wallTime];
          [(NEKStore *)self->_eventStore updateICS:v26 store:storeCopy session:sessionCopy];
          [delegate setEventUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(delegate, "eventUpdateTimeNs") - v36}];
        }

        if ([v55 count])
        {
          v37 = +[NDTPerf wallTime];
          [(NEKStore *)self->_reminderStore updateICS:v55 store:reminderStoreCopy session:sessionCopy];
          [delegate setReminderUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(delegate, "reminderUpdateTimeNs") - v37}];
        }

        goto LABEL_57;
      }
    }
  }

  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100072634();
  }

LABEL_57:
}

- (void)deleteSYObject:(id)object eventStore:(id)store reminderStore:(id)reminderStore session:(id)session
{
  objectCopy = object;
  storeCopy = store;
  reminderStoreCopy = reminderStore;
  sessionCopy = session;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = *(qword_1000D18A8 + 8);
  if (isKindOfClass)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_100072D10(v15, sessionCopy);
    }

    v16 = objectCopy;
    environment = [(NEKSyncController *)self environment];
    if ([environment isReminderKitEnabled])
    {
      type = [v16 type];

      if (type == 3)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    eventStore = [(NEKSyncController *)self eventStore];
    [eventStore deleteItem:v16 store:storeCopy];

    environment2 = [(NEKSyncController *)self environment];
    if (![environment2 isReminderKitEnabled])
    {
LABEL_13:

      goto LABEL_14;
    }

    type2 = [v16 type];

    if (type2 == 3)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_12:
    environment2 = [(NEKSyncController *)self reminderStore];
    [environment2 deleteItem:v16 store:reminderStoreCopy];
    goto LABEL_13;
  }

  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100072C58(v15, sessionCopy);
  }

LABEL_15:
}

- (int64_t)maxDeltaRetries
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"maxDeltaRetries", @"com.apple.EventKitSync", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 1000000;
  }

  return result;
}

- (int64_t)_faultCount
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];
  v4 = [tinyStore getIntegerValueForKey:@"FaultCount" default:0];

  return v4;
}

- (void)_setFaultCount:(int64_t)count
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];
  [tinyStore setIntegerValue:count forKey:@"FaultCount"];
}

- (void)_retrySession:(id)session
{
  isResetSync = [session isResetSync];
  syncService = self->_syncService;
  if (isResetSync)
  {

    [(SYService *)syncService setNeedsResetSync];
  }

  else
  {

    [(SYService *)syncService setHasChangesAvailable];
  }
}

- (id)service:(id)service willPreferSession:(id)session overSession:(id)overSession
{
  serviceCopy = service;
  sessionCopy = session;
  overSessionCopy = overSession;
  v11 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100072DD0(v11);
  }

  if ([overSessionCopy isResetSync])
  {
    v12 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Decided to prefer reset session over delta.", &v22, 2u);
    }

    v13 = sessionCopy;
  }

  else
  {
    v13 = overSessionCopy;
    overSessionCopy = sessionCopy;
  }

  if ([v13 isSending])
  {
    [(NEKSyncController *)self _retrySession:v13];
    delegate = [v13 delegate];
    progressLiar = [delegate progressLiar];
    preemptedSessionProgressLiar = self->_preemptedSessionProgressLiar;
    self->_preemptedSessionProgressLiar = progressLiar;

    [(NEKProgressLiar *)self->_preemptedSessionProgressLiar pause];
  }

  v17 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    identifier = [overSessionCopy identifier];
    identifier2 = [v13 identifier];
    v22 = 138543618;
    v23 = identifier;
    v24 = 2114;
    v25 = identifier2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Winning session: %{public}@, losing session: %{public}@", &v22, 0x16u);
  }

  return overSessionCopy;
}

- (BOOL)_clearToDeltaSync
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  _faultCount = [(NEKSyncController *)self _faultCount];
  v6 = ![tinyStore getIntegerValueForKey:@"RetryMustBeReset" default:0] && _faultCount < -[NEKSyncController maxDeltaRetries](self, "maxDeltaRetries");

  return v6;
}

- (void)tc_status:(id)tc_status
{
  tc_statusCopy = tc_status;
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  v6 = [tinyStore getIntegerValueForKey:@"tc_automaticSync" default:1];
  [tinyStore getDoubleValueForKey:@"lastSuccessfulStamp" default:0.0];
  v8 = v7;
  if (v7 != 0.0)
  {
    v9 = +[NSDate date];
    [v9 timeIntervalSinceReferenceDate];
    v8 = v8 - v10;
  }

  v11 = [tinyStore getIntegerValueForKey:@"FaultCount" default:0];
  [tinyStore getDoubleValueForKey:@"tc_objectDelay" default:0.0];
  v13 = v12;
  v14 = objc_opt_new();
  [v14 appendFormat:@"Object delay: %.3f\n", v13];
  [v14 appendFormat:@"Fault count: %d\n", v11];
  isCurrentlySyncing = [(NEKSyncController *)self isCurrentlySyncing];
  v16 = "No";
  if (isCurrentlySyncing)
  {
    v16 = "Yes";
  }

  [v14 appendFormat:@"Currently syncing: %s\n", v16];
  v17 = "Enabled";
  if (!v6)
  {
    v17 = "Disabled";
  }

  [v14 appendFormat:@"Automatic sync: %s\n", v17];
  [v14 appendString:@"Last successful sync sent: "];
  if (v8 == 0.0)
  {
    [v14 appendString:@"N/A\n"];
  }

  else
  {
    [v14 appendFormat:@"%f\n", *&v8];
  }

  [(NEKSyncController *)self getMinimumSessionTimeout];
  [v14 appendFormat:@"Minimum session timeout: %.3f\n", v18];
  [(NEKSyncController *)self getMaximumSessionTimeout];
  [v14 appendFormat:@"Maximum session timeout: %.3f\n", v19];
  [(NEKSyncController *)self getFailureProbablity];
  [v14 appendFormat:@"Probability of failure: %.3f\n", v20];
  [(NEKSyncController *)self getFixedRetryInternal];
  [v14 appendFormat:@"Fixed retry interval: %.3f\n", v21];
  tc_statusCopy[2](tc_statusCopy, v14);
}

- (void)tc_setNominal
{
  [(NEKSyncController *)self tc_setAutomaticSync:1];
  [(NEKSyncController *)self tc_setObjectDelay:0.0];
  [(NEKSyncController *)self tc_setMinimumSessionTimeout:-1.0];
  [(NEKSyncController *)self tc_setMaximumSessionTimeout:-1.0];
  [(NEKSyncController *)self tc_setFailureProbablity:0.0];

  [(NEKSyncController *)self tc_setFixedRetryInternal:-1.0];
}

- (void)tc_setAutomaticSync:(BOOL)sync
{
  syncCopy = sync;
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  [tinyStore setIntegerValue:syncCopy forKey:@"tc_automaticSync"];
}

- (void)tc_advanceChangeNumber
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"NEKBlindChangeNumberAdvance" object:0];
}

- (void)tc_setObjectDelay:(double)delay
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];
  [tinyStore setDoubleValue:@"tc_objectDelay" forKey:delay];
}

- (void)tc_setMinimumSessionTimeout:(double)timeout
{
  v4 = [NSNumber numberWithDouble:?];
  if (timeout <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  CFPreferencesSetAppValue(@"minSessionTimeout", v5, @"com.apple.EventKitSync");
}

- (void)tc_setMaximumSessionTimeout:(double)timeout
{
  v4 = [NSNumber numberWithDouble:?];
  if (timeout <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  CFPreferencesSetAppValue(@"maxSessionTimeout", v5, @"com.apple.EventKitSync");
}

- (void)tc_setFailureProbablity:(double)probablity
{
  v4 = [NSNumber numberWithDouble:?];
  if (probablity <= 0.0)
  {
    v5 = &off_1000BB8E8;
  }

  else
  {
    v5 = v4;
  }

  CFPreferencesSetAppValue(@"internal_probabilityOfSyncFailure", v5, @"com.apple.EventKitSync");
}

- (void)tc_setFixedRetryInternal:(double)internal
{
  v4 = [NSNumber numberWithDouble:?];
  if (internal <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  CFPreferencesSetAppValue(@"internal_retryInterval", v5, @"com.apple.EventKitSync");
}

- (double)getMinimumSessionTimeout
{
  v2 = CFPreferencesCopyAppValue(@"minSessionTimeout", @"com.apple.EventKitSync");
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &off_1000BB8F8;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)getMaximumSessionTimeout
{
  v2 = CFPreferencesCopyAppValue(@"maxSessionTimeout", @"com.apple.EventKitSync");
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &off_1000BB908;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)getFailureProbablity
{
  v2 = CFPreferencesCopyAppValue(@"internal_probabilityOfSyncFailure", @"com.apple.EventKitSync");
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &off_1000BB8E8;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)getFixedRetryInternal
{
  v2 = CFPreferencesCopyAppValue(@"internal_retryInterval", @"com.apple.EventKitSync");
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &off_1000BB918;
  }

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  serviceCopy = service;
  sessionCopy = session;
  v10 = self->_sessionIdleQueue;
  v11 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    identifier = [sessionCopy identifier];
    if ([sessionCopy isSending])
    {
      v14 = @"sending";
    }

    else
    {
      v14 = @"receiving";
    }

    isResetSync = [sessionCopy isResetSync];
    v16 = @"delta";
    *buf = 138543874;
    v49 = identifier;
    v50 = 2114;
    if (isResetSync)
    {
      v16 = @"reset";
    }

    v51 = v14;
    v52 = 2114;
    v53 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSession: %{public}@ %{public}@", buf, 0x20u);
  }

  if (atomic_fetch_add(&self->_sessionDepth, 1u))
  {
    v41 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_100072E78(v41, sessionCopy);
    }

    abort();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004075C;
  block[3] = &unk_1000B4BB8;
  v17 = sessionCopy;
  v44 = v17;
  v18 = v10;
  v45 = v18;
  dispatch_barrier_sync(v18, block);
  v19 = objc_alloc_init(NEKSyncSession);
  syncSession = self->_syncSession;
  self->_syncSession = v19;

  environment = [(NEKSyncController *)self environment];
  [(NEKSyncSession *)self->_syncSession setEnvironment:environment];

  v22 = objc_alloc_init(NDTPerf);
  [(NEKSyncSession *)self->_syncSession setPerfomanceTracker:v22];

  environment2 = [(NEKSyncController *)self environment];
  tinyStore = [environment2 tinyStore];
  [tinyStore getDoubleValueForKey:@"tc_objectDelay" default:0.0];
  [(NEKSyncSession *)self->_syncSession setObjectDelayUs:(v25 * 1000000.0)];

  *v42 = xmmword_1000A2810;
  if ([v17 isSending])
  {
    [(NEKSyncController *)self _startSendSession:v17 results:v42];
  }

  else
  {
    [(NEKSyncController *)self _startRecvSession:v17 results:v42];
  }

  if (error)
  {
    *error = v42[1];
  }

  v26 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    identifier2 = [v17 identifier];
    sub_100072F14(identifier2, v42, buf, v26);
  }

  v28 = self->_syncSession;
  if (LOBYTE(v42[0]) == 1)
  {
    [v17 setDelegate:v28];
    v29 = objc_alloc_init(NEKProtobufSerializer);
    [v17 setSerializer:v29];

    [v17 setCanRestart:0];
    [v17 setCanRollback:0];
    environment3 = [(NEKSyncController *)self environment];
    recordMap = [environment3 recordMap];
    [recordMap begin];

    kdebug_trace();
  }

  else
  {
    self->_syncSession = 0;

    if (BYTE1(v42[0]) == 1)
    {
      v32 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [v17 identifier];
        *v46 = 138543362;
        v47 = identifier3;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSession: no session created, declaring completion to PSYSync", v46, 0xCu);
      }

      environment4 = [(NEKSyncController *)self environment];
      syncCoordinator = [environment4 syncCoordinator];
      session = [syncCoordinator session];
      [session syncDidComplete];
    }

    atomic_fetch_add(&self->_sessionDepth, 0xFFFFFFFF);
    v37 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      identifier4 = [v17 identifier];
      *v46 = 138543362;
      v47 = identifier4;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSession: resuming sessionIdleQueue", v46, 0xCu);
    }

    dispatch_resume(v18);
  }

  v39 = v42[0];

  return v39 & 1;
}

- (void)_startSendSession:(id)session results:(StartSessionResults *)results
{
  sessionCopy = session;
  v7 = objc_alloc_init(NEKResultsFetcher);
  eventStore = [(NEKSyncController *)self eventStore];
  [(NEKResultsFetcher *)v7 setNekEventStore:eventStore];

  reminderStore = [(NEKSyncController *)self reminderStore];
  [(NEKResultsFetcher *)v7 setNekReminderStore:reminderStore];

  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];
  [tinyStore getDoubleValueForKey:@"RetryDueDate" default:-1.0];
  v13 = v12;

  v14 = v13 != -1.0 && v13 < CFAbsoluteTimeGetCurrent();
  _clearToDeltaSync = [(NEKSyncController *)self _clearToDeltaSync];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_100041294;
  v78[3] = &unk_1000B5998;
  v78[4] = self;
  v78[5] = results;
  v16 = objc_retainBlock(v78);
  if ([sessionCopy isResetSync])
  {
    v17 = [[NEKResultsPipe alloc] initWithFIFOLength:8 name:@"ResetSyncPipe"];
    [(NEKResultsFetcher *)v7 fetchEverythingIntoPipe:v17];
    [(NEKSyncSession *)self->_syncSession setChangeSupplier:v17];
    resetTimeoutTracker = self->_resetTimeoutTracker;
LABEL_8:
    [(NEKSyncSession *)self->_syncSession setStatsTracker:resetTimeoutTracker];
LABEL_9:

    changeSupplier = [(NEKSyncSession *)self->_syncSession changeSupplier];
    completion = [changeSupplier completion];
    completion = self->_completion;
    self->_completion = completion;

    changeSupplier2 = [(NEKSyncSession *)self->_syncSession changeSupplier];
    [changeSupplier2 sealCompletions];

    [(NEKSyncSession *)self->_syncSession setStart:CFAbsoluteTimeGetCurrent()];
    [(NEKSyncController *)self _fullSessionTimeout];
    [sessionCopy setFullSessionTimeout:?];
    if (self->_preemptedSessionProgressLiar)
    {
      [(NEKSyncSession *)self->_syncSession setProgressLiar:?];
      progressLiar = [(NEKSyncSession *)self->_syncSession progressLiar];
      [progressLiar resume];

      preemptedSessionProgressLiar = self->_preemptedSessionProgressLiar;
      self->_preemptedSessionProgressLiar = 0;
    }

    else
    {
      v25 = [NEKProgressLiar alloc];
      [sessionCopy fullSessionTimeout];
      v27 = v26;
      environment2 = [(NEKSyncController *)self environment];
      syncCoordinator = [environment2 syncCoordinator];
      session = [syncCoordinator session];
      v31 = [(NEKProgressLiar *)v25 initWithSpan:session session:v27];
      [(NEKSyncSession *)self->_syncSession setProgressLiar:v31];

      preemptedSessionProgressLiar = [(NEKSyncSession *)self->_syncSession progressLiar];
      [preemptedSessionProgressLiar start];
    }

    [sessionCopy setMaxConcurrentMessages:2];
    [sessionCopy setPerMessageTimeout:300.0];
    v32 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1000730D0(v32, sessionCopy);
    }

    v80 = off_1000D1570;
    v79 = off_1000D1578;
    v33 = [NSArray arrayWithObjects:&v79 count:1];
    v81 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    [sessionCopy setSessionMetadata:v34];

    v35 = objc_autoreleasePoolPush();
    +[NEKCalendarID resetLocalCalendarCache];
    objc_autoreleasePoolPop(v35);
    goto LABEL_15;
  }

  if (self->_isNightlySync)
  {
    v17 = [[NEKResultsPipe alloc] initWithFIFOLength:8 name:@"NightlySyncPipe"];
    [(NEKResultsFetcher *)v7 fetchNightlyIntoPipe:v17];
    [(NEKSyncSession *)self->_syncSession setChangeSupplier:v17];
    resetTimeoutTracker = self->_nightlyTimeoutTracker;
    goto LABEL_8;
  }

  if (_clearToDeltaSync)
  {
    environment3 = [(NEKSyncController *)self environment];
    tinyStore2 = [environment3 tinyStore];
    [tinyStore2 getDoubleValueForKey:@"deferUntil" default:1.79769313e308];
    v39 = v38;

    v40 = v39 > CFAbsoluteTimeGetCurrent() && [(NEKSyncController *)self _faultCount]== 0;
    v17 = [[NEKResultsPipe alloc] initWithFIFOLength:8 name:@"DeltaSyncPipe"];
    v44 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_100072F80(v44, sessionCopy);
    }

    [(NEKResultsFetcher *)v7 fetchChangesIntoPipe:v17 deferrable:v40, @"deferUntil"];
    if ([(NEKResultsPipe *)v17 isTruncated])
    {
      v45 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_100073040(v45);
      }

      [(NDTResultsFIFO *)v17 terminateIfNotFinished];
      (v16[2])(v16);
    }

    else
    {
      [(NEKSyncSession *)self->_syncSession setStatsTracker:self->_deltaTimeoutTracker];
      if ([(NEKResultsPipe *)v17 isEffectivelyEmpty])
      {
        v50 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v50;
          identifier = [sessionCopy identifier];
          *buf = 138543362;
          v83 = identifier;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: empty change set, not starting a sync session", buf, 0xCu);
        }

        [(NDTResultsFIFO *)v17 terminateIfNotFinished];
        completion2 = [(NEKResultsPipe *)v17 completion];

        if (completion2)
        {
          completion3 = [(NEKResultsPipe *)v17 completion];
          completion3[2]();
        }
      }

      else
      {
        if (![(NEKResultsPipe *)v17 isDeferrable])
        {
          if (![(NEKResultsPipe *)v17 changesAffectNext24hrs])
          {
            v68 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              v69 = v68;
              identifier2 = [sessionCopy identifier];
              *buf = 138543362;
              v83 = identifier2;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: no changes affect next 24hrs, adding nonwaking push priority for IDS session", buf, 0xCu);
            }

            options = [sessionCopy options];
            v72 = [options mutableCopy];
            v73 = v72;
            if (v72)
            {
              v74 = v72;
            }

            else
            {
              v74 = objc_opt_new();
            }

            v75 = v74;

            [v75 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionNonWakingKey];
            [v75 setObject:&off_1000BB7D8 forKey:IDSSendMessageOptionPushPriorityKey];
            v76 = [v75 copy];
            [sessionCopy setOptions:v76];
          }

          [(NEKSyncSession *)self->_syncSession setChangeSupplier:v17];
          [(NEKSyncSession *)self->_syncSession setFetcher:v7];
          goto LABEL_9;
        }

        v55 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = v55;
          identifier3 = [sessionCopy identifier];
          *buf = 138543362;
          v83 = identifier3;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: change set deferrable, not starting session", buf, 0xCu);
        }

        environment4 = [(NEKSyncController *)self environment];
        tinyStore3 = [environment4 tinyStore];
        [tinyStore3 getDoubleValueForKey:v77 default:-1.0];
        v61 = v60;

        if (v61 == -1.0)
        {
          environment5 = [(NEKSyncController *)self environment];
          tinyStore4 = [environment5 tinyStore];
          [tinyStore4 setDoubleValue:v77 forKey:CFAbsoluteTimeGetCurrent() + 300.0];

          [(NEKSyncController *)self scheduleDeferredRetry];
        }

        [(NDTResultsFIFO *)v17 terminateIfNotFinished];
      }

      results->var0 = 0;
    }

    goto LABEL_15;
  }

  if (v14)
  {
    v41 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      identifier4 = [sessionCopy identifier];
      *buf = 138543362;
      v83 = identifier4;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: retry is overdue, setting needsFullSync", buf, 0xCu);
    }

    (v16[2])(v16);
  }

  else
  {
    v46 = *(qword_1000D18A8 + 8);
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    if (v13 == -1.0)
    {
      if (v47)
      {
        v48 = v46;
        identifier5 = [sessionCopy identifier];
        *buf = 138543362;
        v83 = identifier5;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: denied a delta sync with no backup due date, scheduling retry", buf, 0xCu);
      }

      (v16[2])(v16);
      [(NEKSyncController *)self scheduleRetry];
    }

    else
    {
      if (v47)
      {
        v64 = v46;
        identifier6 = [sessionCopy identifier];
        isResetSync = [sessionCopy isResetSync];
        isNightlySync = self->_isNightlySync;
        *buf = 138544130;
        v83 = identifier6;
        v84 = 1024;
        v85 = isResetSync;
        v86 = 1024;
        v87 = isNightlySync;
        v88 = 1024;
        v89 = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: sync request ignored, isReset [%{BOOL}d] isNightly [%{BOOL}d] clearToDelta [%{BOOL}d], scheduling retry", buf, 0x1Eu);
      }

      [(NEKSyncController *)self scheduleRetry];
      results->var0 = 0;
    }
  }

LABEL_15:
}

- (void)_startRecvSession:(id)session results:(StartSessionResults *)results
{
  v6 = off_1000D1570;
  v7 = off_1000D1578;
  sessionCopy = session;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [sessionCopy setSessionMetadata:v5];
}

- (double)_fullSessionTimeout
{
  statsTracker = [(NEKSyncSession *)self->_syncSession statsTracker];
  [statsTracker nextTimeout];
  v5 = v4;

  v6 = sub_10004157C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    statsTracker2 = [(NEKSyncSession *)self->_syncSession statsTracker];
    [statsTracker2 mean];
    v9 = v8;
    statsTracker3 = [(NEKSyncSession *)self->_syncSession statsTracker];
    [statsTracker3 stddev];
    *buf = 134218240;
    v20 = v9;
    v21 = 2048;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Before timeout stats: x (mean) = %.02f sigma (stddev) = %f", buf, 0x16u);
  }

  v12 = fmin(v5, 14400.0);

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"internal_enableLongTimeouts", @"com.apple.EventKitSync", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && AppBooleanValue)
  {
    v14 = sub_10004157C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Comically long session timeouts enabled!", buf, 2u);
    }

    v12 = 144000.0;
  }

  v15 = CFPreferencesGetAppBooleanValue(@"internal_enableShortTimeouts", @"com.apple.EventKitSync", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && v15)
  {
    v16 = sub_10004157C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Comically short session timeouts enabled!", buf, 2u);
    }

    return 30.0;
  }

  return v12;
}

- (BOOL)_shouldFakeFailure
{
  result = 0;
  if (os_variant_has_internal_diagnostics())
  {
    [(NEKSyncController *)self getFailureProbablity];
    v4 = v3;
    v5 = arc4random();
    if (scalbn(v5, -32) < v4)
    {
      return 1;
    }
  }

  return result;
}

- (double)_nextDelay:(int64_t)delay
{
  [(NEKSyncController *)self getFixedRetryInternal];
  if (result <= 0.0)
  {
    return fmin(pow(1.5, (delay - 1)) * 60.0, 5400.0);
  }

  return result;
}

- (void)scheduleRetry
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  _faultCount = [(NEKSyncController *)self _faultCount];
  if (_faultCount >= 1)
  {
    v5 = _faultCount;
    if ([(SYService *)self->_syncService targetIsConnected])
    {
      [(NEKSyncController *)self _nextDelay:v5];
      v7 = v6;
      [tinyStore setDoubleValue:@"RetryDueDate" forKey:v6 + CFAbsoluteTimeGetCurrent()];
      [(NDTActivity *)self->_activity completeAndFireIn:v7];
    }

    else
    {
      [tinyStore setDoubleValue:@"RetryDueDate" forKey:-1.0];
      [(NDTActivity *)self->_activity completeAndFireOnConnection];
    }
  }
}

- (void)activityDefer:(id)defer
{
  currentSession = [(SYService *)self->_syncService currentSession];

  if (currentSession)
  {
    v5 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC activity deferral requested.", v7, 2u);
    }

    currentSession2 = [(SYService *)self->_syncService currentSession];
    [currentSession2 cancel];

    [(NEKSyncController *)self bumpFaultsAndScheduleRetry];
  }
}

- (void)clearRemoteBuildVersion
{
  os_unfair_lock_lock(&self->_syServiceLock);
  self->_wasUsingDataTransfer ^= 1u;
  os_unfair_lock_unlock(&self->_syServiceLock);
  v3 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote engine requirement zapped.", v4, 2u);
  }
}

- (void)clearRetryState
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  [(NEKSyncController *)self _setFaultCount:0];
  [tinyStore setIntegerValue:0 forKey:@"RetryMustBeReset"];
  [tinyStore setDoubleValue:@"RetryDueDate" forKey:-1.0];
}

- (void)bumpFaultsAndScheduleRetry
{
  [(NEKSyncController *)self _setFaultCount:[(NEKSyncController *)self _faultCount]+ 1];

  [(NEKSyncController *)self scheduleRetry];
}

- (void)service:(id)service sessionEnded:(id)ended error:(id)error
{
  serviceCopy = service;
  endedCopy = ended;
  errorCopy = error;
  kdebug_trace();
  v42 = os_transaction_create();
  v11 = self->_syncSession;
  changeSupplier = [(NEKSyncSession *)v11 changeSupplier];
  [changeSupplier terminateIfNotFinished];

  perfomanceTracker = [(NEKSyncSession *)v11 perfomanceTracker];
  v14 = [NDTPerf nowMinusPrevious:perfomanceTracker];

  v15 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    identifier = [endedCopy identifier];
    v18 = serviceCopy;
    if ([endedCopy isSending])
    {
      v19 = @"sending";
    }

    else
    {
      v19 = @"receiving";
    }

    v20 = errorCopy;
    if ([endedCopy isResetSync])
    {
      v21 = @"reset";
    }

    else
    {
      v21 = @"delta";
    }

    [(NEKSyncSession *)v11 changeSupplier];
    log = self;
    v23 = v22 = v11;
    [v14 cpuTimeMs];
    *buf = 138544642;
    v44 = identifier;
    v45 = 2114;
    v46 = v19;
    serviceCopy = v18;
    v47 = 2114;
    v48 = v21;
    errorCopy = v20;
    v49 = 2114;
    v50 = v23;
    v51 = 2048;
    v52 = v24;
    v53 = 2112;
    v54 = v20;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] sessionEnded: %{public}@ %{public}@, pipe: %{public}@, cpuTime: %.02fms, error: %@", buf, 0x3Eu);

    v11 = v22;
    self = log;
  }

  if (endedCopy)
  {
    currentSession = [serviceCopy currentSession];

    if (currentSession == endedCopy)
    {
      if ([endedCopy isSending])
      {
        [(NEKSyncController *)self _sendSessionEnded:endedCopy error:errorCopy];
      }

      else
      {
        [(NEKSyncController *)self _recvSessionEnded:endedCopy error:errorCopy];
      }
    }

    else
    {
      currentSession2 = [serviceCopy currentSession];

      v27 = *(qword_1000D18A8 + 8);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (currentSession2)
      {
        if (v28)
        {
          loga = v27;
          identifier2 = [endedCopy identifier];
          [serviceCopy currentSession];
          v29 = v39 = v11;
          identifier3 = [v29 identifier];
          identifier4 = [endedCopy identifier];
          *buf = 138544130;
          v44 = identifier2;
          v45 = 2114;
          v46 = identifier3;
          v47 = 2114;
          v48 = identifier4;
          v49 = 2114;
          v50 = errorCopy;
          _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "[Session: %{public}@] sessionEnded: currentSession [%{public}@] != ending session [%{public}@], error [%{public}@]", buf, 0x2Au);

          v11 = v39;
        }
      }

      else if (v28)
      {
        sub_1000731C8(v27);
      }
    }
  }

  else
  {
    v32 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_100073258(v32);
    }
  }

  [endedCopy setDelegate:0];
  [(NEKSyncSession *)v11 setChangeSupplier:0];
  syncSession = self->_syncSession;
  self->_syncSession = 0;

  add = atomic_fetch_add(&self->_sessionDepth, 0xFFFFFFFF);
  v35 = *(qword_1000D18A8 + 8);
  if (add != 1)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10007329C(v35);
    }

    abort();
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v35;
    identifier5 = [endedCopy identifier];
    *buf = 138543362;
    v44 = identifier5;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] sessionEnded: resuming sessionIdleQueue", buf, 0xCu);
  }

  dispatch_resume(self->_sessionIdleQueue);
}

- (void)_sendSessionEnded:(id)ended error:(id)error
{
  endedCopy = ended;
  errorCopy = error;
  delegate = [endedCopy delegate];
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  progressLiar = [delegate progressLiar];
  [progressLiar doneForRealNotifyingPairedSync:1];

  [(NDTActivity *)self->_activity completeAndFireNever];
  if (errorCopy || [(NEKSyncController *)self _shouldFakeFailure])
  {
    v12 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000733CC(v12, endedCopy);
    }

    completion = self->_completion;
    self->_completion = 0;

    environment2 = [(NEKSyncController *)self environment];
    recordMap = [environment2 recordMap];
    [recordMap rollback];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v91 = sub_100042878;
    v92 = sub_1000428A4;
    v93 = 0;
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_1000428AC;
    v82[3] = &unk_1000B5A00;
    v82[4] = buf;
    v16 = objc_retainBlock(v82);
    v17 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v16;

    if (([endedCopy isResetSync] & 1) != 0 || self->_isNightlySync)
    {
      v18 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        identifier = [endedCopy identifier];
        sub_100073498(identifier, self, v89, v18);
      }

      self->_isNightlySync = 0;
      [tinyStore setIntegerValue:1 forKey:@"RetryMustBeReset"];
      if ([errorCopy code] != -128)
      {
        v20 = *(*&buf[8] + 40);
        location[1] = _NSConcreteStackBlock;
        location[2] = 3221225472;
        location[3] = sub_100042908;
        location[4] = &unk_1000B4B90;
        location[5] = self;
        (*(v20 + 16))();
      }
    }

    if (errorCopy)
    {
      changeSupplier = [delegate changeSupplier];
      [changeSupplier setError:errorCopy];
    }

    if ([errorCopy code] == -128)
    {
      v22 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [endedCopy identifier];
        sub_100073564(identifier2, v83, v22);
      }

      (*(*(*&buf[8] + 40) + 16))();
    }

    else if ([errorCopy code] == 2023)
    {
      v24 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [endedCopy identifier];
        sub_100073514(identifier3, v83, v24);
      }

      objc_initWeak(location, self);
      v26 = *(*&buf[8] + 40);
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_100042914;
      v78[3] = &unk_1000B5138;
      objc_copyWeak(&v80, location);
      v79 = endedCopy;
      (*(v26 + 16))(v26, v78);

      objc_destroyWeak(&v80);
      objc_destroyWeak(location);
    }

    else
    {
      if ([errorCopy code] == 2007 || objc_msgSend(errorCopy, "code") == 23)
      {
        statsTracker = [delegate statsTracker];
        [statsTracker updateFailure];

        statsTracker2 = [delegate statsTracker];
        [statsTracker2 save];

        v29 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          identifier4 = [endedCopy identifier];
          statsTracker3 = [delegate statsTracker];
          [statsTracker3 mean];
          v66 = v65;
          statsTracker4 = [delegate statsTracker];
          [statsTracker4 stddev];
          *v83 = 138543874;
          v84 = identifier4;
          v85 = 2048;
          v86 = v66;
          v87 = 2048;
          v88 = v68;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[Session: %{public}@] sendSessionEnded: failed sync stats, x (mean) [%.02f] sigma (stddev) [%f]", v83, 0x20u);
        }
      }

      v30 = *(*&buf[8] + 40);
      v73 = _NSConcreteStackBlock;
      v74 = 3221225472;
      v75 = sub_100042964;
      v76 = &unk_1000B4B90;
      selfCopy = self;
      (*(v30 + 16))();
    }

    v31 = *(*&buf[8] + 40);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10004296C;
    v71[3] = &unk_1000B4B90;
    v72 = endedCopy;
    (*(v31 + 16))(v31, v71);
    environment3 = [(NEKSyncController *)self environment];
    analytics = [environment3 analytics];
    [analytics recordSessionType:3];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(NEKSyncController *)self recordSuccessForSession:endedCopy receiving:0];
    v38 = self->_completion;
    if (v38)
    {
      v38[2]();
      v39 = self->_completion;
      self->_completion = 0;
    }

    environment4 = [(NEKSyncController *)self environment];
    recordMap2 = [environment4 recordMap];
    [recordMap2 commit];

    environment5 = [(NEKSyncController *)self environment];
    tinyStore2 = [environment5 tinyStore];
    [tinyStore2 deleteValueForKey:@"deferUntil"];

    environment6 = [(NEKSyncController *)self environment];
    tinyStore3 = [environment6 tinyStore];
    v46 = +[NSDate date];
    [v46 timeIntervalSinceReferenceDate];
    [tinyStore3 setDoubleValue:@"lastSuccessfulStamp" forKey:?];

    if ([endedCopy isResetSync])
    {
      environment7 = [(NEKSyncController *)self environment];
      tinyStore4 = [environment7 tinyStore];
      [tinyStore4 setIntegerValue:_os_feature_enabled_impl() forKey:@"MigrationSyncCount"];
    }

    if (self->_isNightlySync && ([endedCopy isResetSync] & 1) == 0)
    {
      v49 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        sub_10007332C(v49, endedCopy);
      }

      [(SYService *)self->_syncService setHasChangesAvailable];
    }

    self->_isNightlySync = 0;
    [(NEKSyncController *)self clearRetryState];
    [delegate start];
    v51 = v50;
    Current = CFAbsoluteTimeGetCurrent();
    statsTracker5 = [delegate statsTracker];
    v54 = Current - v51;
    [statsTracker5 updateSuccess:v54];

    statsTracker6 = [delegate statsTracker];
    [statsTracker6 save];

    v56 = sub_10004157C();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      statsTracker7 = [delegate statsTracker];
      [statsTracker7 mean];
      v59 = v58;
      statsTracker8 = [delegate statsTracker];
      [statsTracker8 stddev];
      *buf = 134218496;
      *&buf[4] = v54;
      *&buf[12] = 2048;
      *&buf[14] = v59;
      *&buf[22] = 2048;
      v91 = v61;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Post success update sync timings: elapsed=%.02f x=%.02f sigma=%f", buf, 0x20u);
    }

    environment8 = [(NEKSyncController *)self environment];
    analytics2 = [environment8 analytics];
    if ([endedCopy isResetSync])
    {
      v64 = 1;
    }

    else
    {
      v64 = 2;
    }

    [analytics2 recordSessionType:v64];
  }

  fetcher = [delegate fetcher];

  if (fetcher)
  {
    v35 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_1000735B4(v35, endedCopy);
    }

    fetcher2 = [delegate fetcher];
    [fetcher2 join];

    v37 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      sub_100073654(v37, endedCopy);
    }

    [delegate setFetcher:0];
  }
}

- (void)_recvSessionEnded:(id)ended error:(id)error
{
  endedCopy = ended;
  delegate = [endedCopy delegate];
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100073784();
    if (error)
    {
      goto LABEL_3;
    }
  }

  else if (error)
  {
LABEL_3:
    environment = [(NEKSyncController *)self environment];
    recordMap = [environment recordMap];
    [recordMap rollback];
    goto LABEL_9;
  }

  [(NEKSyncController *)self recordSuccessForSession:endedCopy receiving:1];
  if (CFPreferencesGetAppBooleanValue(@"internal_dumpRecordMap", @"com.apple.EventKitSync", 0) == 1 && os_variant_has_internal_diagnostics())
  {
    environment2 = [(NEKSyncController *)self environment];
    recordMap2 = [environment2 recordMap];
    [recordMap2 dumpToLog];
  }

  [endedCopy isResetSync];
  environment = [(NEKSyncController *)self environment];
  recordMap = [environment recordMap];
  [recordMap commit];
LABEL_9:
}

- (void)recordSuccessForSession:(id)session receiving:(BOOL)receiving
{
  receivingCopy = receiving;
  if ([session isResetSync])
  {
    environment = [(NEKSyncController *)self environment];
    tinyStore = [environment tinyStore];
    v7 = +[NSDate date];
    [v7 timeIntervalSinceReferenceDate];
    v8 = off_1000B4D00;
    v9 = off_1000B4D08;
  }

  else
  {
    isNightlySync = self->_isNightlySync;
    environment = [(NEKSyncController *)self environment];
    tinyStore = [environment tinyStore];
    v7 = +[NSDate date];
    [v7 timeIntervalSinceReferenceDate];
    if (isNightlySync)
    {
      v8 = off_1000B4CF0;
      v9 = off_1000B4CF8;
    }

    else
    {
      v8 = off_1000B4CE0;
      v9 = off_1000B4CE8;
    }
  }

  if (!receivingCopy)
  {
    v8 = v9;
  }

  [tinyStore setDoubleValue:*v8 forKey:?];
}

- (void)prepDatabasesForResetSync
{
  v3 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remove all items", v7, 2u);
  }

  environment = [(NEKSyncController *)self environment];
  recordMap = [environment recordMap];
  [recordMap removeAllRecords];

  [(NEKStore *)self->_reminderStore removeAllItems];
  changeObserver = [(NEKStore *)self->_eventStore changeObserver];
  [changeObserver restartTrackingChanges];
}

- (void)changeObserverDidObserveChanges:(id)changes
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  v6 = [tinyStore getIntegerValueForKey:@"tc_automaticSync" default:1];
  v7 = *(qword_1000D18A8 + 8);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting hasChangesAvailable to ask CompanionSync for a delta sync", buf, 2u);
    }

    [(SYService *)self->_syncService setHasChangesAvailable];
  }

  else if (v8)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delta sync request suppressed", v9, 2u);
  }
}

- (void)changeObserverDidObserveTruncation:(id)truncation
{
  environment = [(NEKSyncController *)self environment];
  tinyStore = [environment tinyStore];

  v6 = [tinyStore getIntegerValueForKey:@"tc_automaticSync" default:1];
  v7 = *(qword_1000D18A8 + 8);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Change log truncation is making us request a reset", buf, 2u);
    }

    [(NEKSyncController *)self setNeedsFullSync];
  }

  else if (v8)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reset sync request suppressed", v9, 2u);
  }
}

- (NEKSyncControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end