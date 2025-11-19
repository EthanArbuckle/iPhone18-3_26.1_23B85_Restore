@interface NEKSyncController
- (BOOL)_canUseDataTransfer;
- (BOOL)_clearToDeltaSync;
- (BOOL)_shouldFakeFailure;
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (NEKSyncController)initWithEnvironment:(id)a3;
- (NEKSyncControllerDelegate)delegate;
- (double)_fullSessionTimeout;
- (double)_nextDelay:(int64_t)a3;
- (double)getFailureProbablity;
- (double)getFixedRetryInternal;
- (double)getMaximumSessionTimeout;
- (double)getMinimumSessionTimeout;
- (id)environment;
- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5;
- (int64_t)_faultCount;
- (int64_t)maxDeltaRetries;
- (void)_recvSessionEnded:(id)a3 error:(id)a4;
- (void)_retrySession:(id)a3;
- (void)_retrySync;
- (void)_sendSessionEnded:(id)a3 error:(id)a4;
- (void)_setClipping:(id)a3;
- (void)_setFaultCount:(int64_t)a3;
- (void)_startRecvSession:(id)a3 results:(StartSessionResults *)a4;
- (void)_startSendSession:(id)a3 results:(StartSessionResults *)a4;
- (void)activityDefer:(id)a3;
- (void)bumpFaultsAndScheduleRetry;
- (void)changeObserverDidObserveChanges:(id)a3;
- (void)changeObserverDidObserveTruncation:(id)a3;
- (void)clearRemoteBuildVersion;
- (void)clearRetryState;
- (void)createOrUpdateSYObject:(id)a3 eventStore:(id)a4 reminderStore:(id)a5 session:(id)a6;
- (void)deleteSYObject:(id)a3 eventStore:(id)a4 reminderStore:(id)a5 session:(id)a6;
- (void)prepDatabasesForResetSync;
- (void)recordSuccessForSession:(id)a3 receiving:(BOOL)a4;
- (void)scheduleRetry;
- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5;
- (void)setNeedsFullSync;
- (void)setNeedsMigrationSync;
- (void)setNeedsNightlySync;
- (void)setNeedsReunionSync;
- (void)start;
- (void)tc_advanceChangeNumber;
- (void)tc_setAutomaticSync:(BOOL)a3;
- (void)tc_setFailureProbablity:(double)a3;
- (void)tc_setFixedRetryInternal:(double)a3;
- (void)tc_setMaximumSessionTimeout:(double)a3;
- (void)tc_setMinimumSessionTimeout:(double)a3;
- (void)tc_setNominal;
- (void)tc_setObjectDelay:(double)a3;
- (void)tc_status:(id)a3;
@end

@implementation NEKSyncController

- (NEKSyncController)initWithEnvironment:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = NEKSyncController;
  v5 = [(NEKSyncController *)&v41 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v6->_syServiceLock._os_unfair_lock_opaque = 0;
    v7 = sub_100004B98("NEK.sessionIdle");
    sessionIdleQueue = v6->_sessionIdleQueue;
    v6->_sessionIdleQueue = v7;

    v9 = [(NEKSyncController *)v6 environment];
    v10 = [NEKStore storeForEventWithEnvironment:v9];
    eventStore = v6->_eventStore;
    v6->_eventStore = v10;

    if ([v4 isReminderKitEnabled])
    {
      v12 = [(NEKSyncController *)v6 environment];
      v13 = [NEKStore storeForReminderWithEnvironment:v12];
      reminderStore = v6->_reminderStore;
      v6->_reminderStore = v13;
    }

    else
    {
      v12 = v6->_reminderStore;
      v6->_reminderStore = 0;
    }

    v15 = [[NEKStatTracker alloc] initWithEnvironment:v4 name:@"resetSync" defaultMean:600.0 defaultStddev:20.0];
    resetTimeoutTracker = v6->_resetTimeoutTracker;
    v6->_resetTimeoutTracker = v15;

    v17 = [[NEKStatTracker alloc] initWithEnvironment:v4 name:@"deltaSync" defaultMean:300.0 defaultStddev:20.0];
    deltaTimeoutTracker = v6->_deltaTimeoutTracker;
    v6->_deltaTimeoutTracker = v17;

    v19 = [[NEKStatTracker alloc] initWithEnvironment:v4 name:@"nightlySync" defaultMean:300.0 defaultStddev:20.0];
    nightlyTimeoutTracker = v6->_nightlyTimeoutTracker;
    v6->_nightlyTimeoutTracker = v19;

    [(NEKStatTracker *)v6->_resetTimeoutTracker load];
    [(NEKStatTracker *)v6->_deltaTimeoutTracker load];
    [(NEKStatTracker *)v6->_nightlyTimeoutTracker load];
    [(NEKSyncController *)v6 _setClipping:v6->_resetTimeoutTracker];
    [(NEKSyncController *)v6 _setClipping:v6->_deltaTimeoutTracker];
    [(NEKSyncController *)v6 _setClipping:v6->_nightlyTimeoutTracker];
    v6->_isNightlySync = 0;
    v21 = [(NEKStore *)v6->_eventStore changeObserver];
    [v21 setDelegate:v6];

    v22 = [(NEKStore *)v6->_reminderStore changeObserver];
    [v22 setDelegate:v6];

    v23 = [NEKRPCEndpoint alloc];
    v24 = [v4 isReminderKitEnabled];
    v25 = [v4 clientName];
    v26 = [(NEKRPCEndpoint *)v23 initWithReminderKitEnabled:v24 clientName:v25];
    rpcEndpoint = v6->_rpcEndpoint;
    v6->_rpcEndpoint = v26;

    v28 = [[NEKTestControl alloc] initWithEnvironment:v4];
    testingControl = v6->_testingControl;
    v6->_testingControl = v28;

    LODWORD(v24) = [v4 isReminderKitEnabled];
    v30 = *(qword_1000D18A8 + 8);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (v24)
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

    v37 = [[NEKServicesServer alloc] initWithEnvironment:v4];
    servicesServer = v6->_servicesServer;
    v6->_servicesServer = v37;
  }

  return v6;
}

- (void)_setClipping:(id)a3
{
  v8 = a3;
  [(NEKSyncController *)self getMinimumSessionTimeout];
  v5 = v4;
  [(NEKSyncController *)self getMaximumSessionTimeout];
  v7 = v6;
  [v8 setMinTimeout:v5];
  [v8 setMaxTimeout:v7];
}

- (BOOL)_canUseDataTransfer
{
  v2 = +[SYDevice targetableDevice];
  v3 = [v2 systemBuildVersion];

  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remote system build version: %{public}@", &v8, 0xCu);
  }

  v5 = +[NEKCapabilities instance];
  v6 = [v5 canUseDataTransfer];

  return v6;
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
  v25 = [(NEKSyncController *)self environment];
  [v25 syncCoordinator];

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

  v4 = [(NEKSyncController *)self environment];
  v5 = [v4 tinyStore];

  [v5 setIntegerValue:1 forKey:@"RetryMustBeReset"];
  [(SYService *)self->_syncService setNeedsResetSync];
}

- (void)setNeedsReunionSync
{
  v3 = [(NEKSyncController *)self _faultCount];
  v4 = [(NEKSyncController *)self maxDeltaRetries];
  v5 = *(qword_1000D18A8 + 8);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 >= v4)
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
  v3 = [(NEKSyncController *)self environment];
  v4 = [v3 tinyStore];

  v5 = [(NEKSyncController *)self environment];
  v6 = [v5 syncCoordinator];
  v7 = [v6 okToPerformDeltaSync];

  if (!v7)
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

  v8 = [v4 getIntegerValueForKey:@"MigrationSyncCount" default:0];
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
  v3 = [(NEKSyncController *)self environment];
  v4 = [v3 tinyStore];

  v5 = [(NEKSyncController *)self _faultCount];
  v6 = [v4 getIntegerValueForKey:@"RetryMustBeReset" default:0];
  [v4 getDoubleValueForKey:@"deferUntil" default:-1.0];
  v8 = v7;
  Current = CFAbsoluteTimeGetCurrent();
  v10 = [(NEKSyncController *)self maxDeltaRetries];
  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v11 = v5 < v10;
  }

  if (v11)
  {
    v17 = *(qword_1000D18A8 + 8);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v5 < 1)
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
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Retrying a failed sync (%d) (delta)", &v21, 8u);
      }

      v19 = +[NSNotificationCenter defaultCenter];
      [v19 postNotificationName:@"NEKDatabaseChangedExternallyNotification" object:0];
    }
  }

  else
  {
    v12 = [(SYService *)self->_syncService currentSession];
    if (v12 && (v13 = v12, -[SYService currentSession](self->_syncService, "currentSession"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isResetSync], v14, v13, v15))
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
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Retrying a failed sync (%d) (reset)", &v21, 8u);
      }

      [(SYService *)self->_syncService setNeedsResetSync];
    }
  }
}

- (void)createOrUpdateSYObject:(id)a3 eventStore:(id)a4 reminderStore:(id)a5 session:(id)a6
{
  v9 = a3;
  v51 = a4;
  v50 = a5;
  v54 = a6;
  v49 = v9;
  v52 = [v9 objectAtIndexedSubscript:0];
  v53 = [v54 delegate];
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
    [(NEKStore *)reminderStore updateSource:v13 store:v50];
    [(NEKStore *)self->_eventStore updateSource:v13 store:v51];

    [v53 setStoreUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(v53, "storeUpdateTimeNs") - v10}];
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
    v15 = [v14 attributes];
    v16 = v15 == 0;

    if (v16)
    {
      if (([v14 isDefaultTaskCalendar] & 1) == 0 && (objc_msgSend(v14, "isDefaultEventCalendar") & 1) == 0)
      {
        v48 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000729F4(v48, v54, v14);
        }

        goto LABEL_56;
      }

      v38 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_100072B00(v38, v54);
      }
    }

    else
    {
      v17 = [v14 attributes];
      v18 = [v17 supportedEntityTypes];

      v19 = [(NEKSyncController *)self environment];
      v20 = [v19 isReminderKitEnabled];

      if (*&v20 & (v18 >> 1))
      {
        v21 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_100072954(v21, v54);
        }

        [(NEKStore *)self->_reminderStore updateCalendar:v14 store:v50];
        goto LABEL_56;
      }

      v39 = [(NEKSyncController *)self environment];
      v40 = [v39 isReminderKitEnabled];
      if (v18)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }

      v42 = *(qword_1000D18A8 + 8);
      if (v41)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = v42;
          v44 = [v54 identifier];
          v45 = [v14 attributes];
          v46 = sub_10002CDF8([v45 title]);
          v47 = [v14 calendarIdentifier];
          *buf = 138544130;
          *&buf[4] = v44;
          *&buf[12] = 2114;
          *&buf[14] = v46;
          *&buf[22] = 2114;
          v67 = v47;
          v68 = 1024;
          v69 = v18;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "[Session: %{public}@] createOrUpdateSYObject: calendar or list %{public}@/%{public}@ has entitySupportType %d", buf, 0x26u);
        }

        goto LABEL_56;
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        sub_1000728B4(v42, v54);
      }
    }

    [(NEKStore *)self->_eventStore updateCalendar:v14 store:v51];
LABEL_56:
    [v53 setCalendarUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(v53, "calendarUpdateTimeNs") - v10}];

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

    v24 = [(NEKSyncController *)self environment];
    v25 = [v24 isReminderKitEnabled];

    if ((v25 & 1) == 0)
    {
      [(NEKStore *)self->_eventStore updateICS:v9 store:v51 session:v54];
      [v53 setEventUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(v53, "eventUpdateTimeNs") - v10}];
      goto LABEL_57;
    }

    v26 = +[NSMutableArray array];
    v55 = +[NSMutableArray array];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v9;
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
        v31 = [(NEKSyncController *)self environment];
        if ([v31 isReminderKitEnabled])
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
            v35 = [v54 identifier];
            sub_1000727A0(v35, v63, &v64, v34);
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
          [(NEKStore *)self->_eventStore updateICS:v26 store:v51 session:v54];
          [v53 setEventUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(v53, "eventUpdateTimeNs") - v36}];
        }

        if ([v55 count])
        {
          v37 = +[NDTPerf wallTime];
          [(NEKStore *)self->_reminderStore updateICS:v55 store:v50 session:v54];
          [v53 setReminderUpdateTimeNs:{+[NDTPerf wallTime](NDTPerf, "wallTime") + objc_msgSend(v53, "reminderUpdateTimeNs") - v37}];
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

- (void)deleteSYObject:(id)a3 eventStore:(id)a4 reminderStore:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = *(qword_1000D18A8 + 8);
  if (isKindOfClass)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_100072D10(v15, v13);
    }

    v16 = v10;
    v17 = [(NEKSyncController *)self environment];
    if ([v17 isReminderKitEnabled])
    {
      v18 = [v16 type];

      if (v18 == 3)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v19 = [(NEKSyncController *)self eventStore];
    [v19 deleteItem:v16 store:v11];

    v20 = [(NEKSyncController *)self environment];
    if (![v20 isReminderKitEnabled])
    {
LABEL_13:

      goto LABEL_14;
    }

    v21 = [v16 type];

    if (v21 == 3)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_12:
    v20 = [(NEKSyncController *)self reminderStore];
    [v20 deleteItem:v16 store:v12];
    goto LABEL_13;
  }

  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100072C58(v15, v13);
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
  v2 = [(NEKSyncController *)self environment];
  v3 = [v2 tinyStore];
  v4 = [v3 getIntegerValueForKey:@"FaultCount" default:0];

  return v4;
}

- (void)_setFaultCount:(int64_t)a3
{
  v5 = [(NEKSyncController *)self environment];
  v4 = [v5 tinyStore];
  [v4 setIntegerValue:a3 forKey:@"FaultCount"];
}

- (void)_retrySession:(id)a3
{
  v4 = [a3 isResetSync];
  syncService = self->_syncService;
  if (v4)
  {

    [(SYService *)syncService setNeedsResetSync];
  }

  else
  {

    [(SYService *)syncService setHasChangesAvailable];
  }
}

- (id)service:(id)a3 willPreferSession:(id)a4 overSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100072DD0(v11);
  }

  if ([v10 isResetSync])
  {
    v12 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Decided to prefer reset session over delta.", &v22, 2u);
    }

    v13 = v9;
  }

  else
  {
    v13 = v10;
    v10 = v9;
  }

  if ([v13 isSending])
  {
    [(NEKSyncController *)self _retrySession:v13];
    v14 = [v13 delegate];
    v15 = [v14 progressLiar];
    preemptedSessionProgressLiar = self->_preemptedSessionProgressLiar;
    self->_preemptedSessionProgressLiar = v15;

    [(NEKProgressLiar *)self->_preemptedSessionProgressLiar pause];
  }

  v17 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [v10 identifier];
    v20 = [v13 identifier];
    v22 = 138543618;
    v23 = v19;
    v24 = 2114;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Winning session: %{public}@, losing session: %{public}@", &v22, 0x16u);
  }

  return v10;
}

- (BOOL)_clearToDeltaSync
{
  v3 = [(NEKSyncController *)self environment];
  v4 = [v3 tinyStore];

  v5 = [(NEKSyncController *)self _faultCount];
  v6 = ![v4 getIntegerValueForKey:@"RetryMustBeReset" default:0] && v5 < -[NEKSyncController maxDeltaRetries](self, "maxDeltaRetries");

  return v6;
}

- (void)tc_status:(id)a3
{
  v4 = a3;
  v5 = [(NEKSyncController *)self environment];
  v22 = [v5 tinyStore];

  v6 = [v22 getIntegerValueForKey:@"tc_automaticSync" default:1];
  [v22 getDoubleValueForKey:@"lastSuccessfulStamp" default:0.0];
  v8 = v7;
  if (v7 != 0.0)
  {
    v9 = +[NSDate date];
    [v9 timeIntervalSinceReferenceDate];
    v8 = v8 - v10;
  }

  v11 = [v22 getIntegerValueForKey:@"FaultCount" default:0];
  [v22 getDoubleValueForKey:@"tc_objectDelay" default:0.0];
  v13 = v12;
  v14 = objc_opt_new();
  [v14 appendFormat:@"Object delay: %.3f\n", v13];
  [v14 appendFormat:@"Fault count: %d\n", v11];
  v15 = [(NEKSyncController *)self isCurrentlySyncing];
  v16 = "No";
  if (v15)
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
  v4[2](v4, v14);
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

- (void)tc_setAutomaticSync:(BOOL)a3
{
  v3 = a3;
  v4 = [(NEKSyncController *)self environment];
  v5 = [v4 tinyStore];

  [v5 setIntegerValue:v3 forKey:@"tc_automaticSync"];
}

- (void)tc_advanceChangeNumber
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"NEKBlindChangeNumberAdvance" object:0];
}

- (void)tc_setObjectDelay:(double)a3
{
  v5 = [(NEKSyncController *)self environment];
  v4 = [v5 tinyStore];
  [v4 setDoubleValue:@"tc_objectDelay" forKey:a3];
}

- (void)tc_setMinimumSessionTimeout:(double)a3
{
  v4 = [NSNumber numberWithDouble:?];
  if (a3 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  CFPreferencesSetAppValue(@"minSessionTimeout", v5, @"com.apple.EventKitSync");
}

- (void)tc_setMaximumSessionTimeout:(double)a3
{
  v4 = [NSNumber numberWithDouble:?];
  if (a3 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  CFPreferencesSetAppValue(@"maxSessionTimeout", v5, @"com.apple.EventKitSync");
}

- (void)tc_setFailureProbablity:(double)a3
{
  v4 = [NSNumber numberWithDouble:?];
  if (a3 <= 0.0)
  {
    v5 = &off_1000BB8E8;
  }

  else
  {
    v5 = v4;
  }

  CFPreferencesSetAppValue(@"internal_probabilityOfSyncFailure", v5, @"com.apple.EventKitSync");
}

- (void)tc_setFixedRetryInternal:(double)a3
{
  v4 = [NSNumber numberWithDouble:?];
  if (a3 <= 0.0)
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

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self->_sessionIdleQueue;
  v11 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 identifier];
    if ([v9 isSending])
    {
      v14 = @"sending";
    }

    else
    {
      v14 = @"receiving";
    }

    v15 = [v9 isResetSync];
    v16 = @"delta";
    *buf = 138543874;
    v49 = v13;
    v50 = 2114;
    if (v15)
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
      sub_100072E78(v41, v9);
    }

    abort();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004075C;
  block[3] = &unk_1000B4BB8;
  v17 = v9;
  v44 = v17;
  v18 = v10;
  v45 = v18;
  dispatch_barrier_sync(v18, block);
  v19 = objc_alloc_init(NEKSyncSession);
  syncSession = self->_syncSession;
  self->_syncSession = v19;

  v21 = [(NEKSyncController *)self environment];
  [(NEKSyncSession *)self->_syncSession setEnvironment:v21];

  v22 = objc_alloc_init(NDTPerf);
  [(NEKSyncSession *)self->_syncSession setPerfomanceTracker:v22];

  v23 = [(NEKSyncController *)self environment];
  v24 = [v23 tinyStore];
  [v24 getDoubleValueForKey:@"tc_objectDelay" default:0.0];
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

  if (a5)
  {
    *a5 = v42[1];
  }

  v26 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = [v17 identifier];
    sub_100072F14(v27, v42, buf, v26);
  }

  v28 = self->_syncSession;
  if (LOBYTE(v42[0]) == 1)
  {
    [v17 setDelegate:v28];
    v29 = objc_alloc_init(NEKProtobufSerializer);
    [v17 setSerializer:v29];

    [v17 setCanRestart:0];
    [v17 setCanRollback:0];
    v30 = [(NEKSyncController *)self environment];
    v31 = [v30 recordMap];
    [v31 begin];

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
        v33 = [v17 identifier];
        *v46 = 138543362;
        v47 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSession: no session created, declaring completion to PSYSync", v46, 0xCu);
      }

      v34 = [(NEKSyncController *)self environment];
      v35 = [v34 syncCoordinator];
      v36 = [v35 session];
      [v36 syncDidComplete];
    }

    atomic_fetch_add(&self->_sessionDepth, 0xFFFFFFFF);
    v37 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v17 identifier];
      *v46 = 138543362;
      v47 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSession: resuming sessionIdleQueue", v46, 0xCu);
    }

    dispatch_resume(v18);
  }

  v39 = v42[0];

  return v39 & 1;
}

- (void)_startSendSession:(id)a3 results:(StartSessionResults *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NEKResultsFetcher);
  v8 = [(NEKSyncController *)self eventStore];
  [(NEKResultsFetcher *)v7 setNekEventStore:v8];

  v9 = [(NEKSyncController *)self reminderStore];
  [(NEKResultsFetcher *)v7 setNekReminderStore:v9];

  v10 = [(NEKSyncController *)self environment];
  v11 = [v10 tinyStore];
  [v11 getDoubleValueForKey:@"RetryDueDate" default:-1.0];
  v13 = v12;

  v14 = v13 != -1.0 && v13 < CFAbsoluteTimeGetCurrent();
  v15 = [(NEKSyncController *)self _clearToDeltaSync];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_100041294;
  v78[3] = &unk_1000B5998;
  v78[4] = self;
  v78[5] = a4;
  v16 = objc_retainBlock(v78);
  if ([v6 isResetSync])
  {
    v17 = [[NEKResultsPipe alloc] initWithFIFOLength:8 name:@"ResetSyncPipe"];
    [(NEKResultsFetcher *)v7 fetchEverythingIntoPipe:v17];
    [(NEKSyncSession *)self->_syncSession setChangeSupplier:v17];
    resetTimeoutTracker = self->_resetTimeoutTracker;
LABEL_8:
    [(NEKSyncSession *)self->_syncSession setStatsTracker:resetTimeoutTracker];
LABEL_9:

    v19 = [(NEKSyncSession *)self->_syncSession changeSupplier];
    v20 = [v19 completion];
    completion = self->_completion;
    self->_completion = v20;

    v22 = [(NEKSyncSession *)self->_syncSession changeSupplier];
    [v22 sealCompletions];

    [(NEKSyncSession *)self->_syncSession setStart:CFAbsoluteTimeGetCurrent()];
    [(NEKSyncController *)self _fullSessionTimeout];
    [v6 setFullSessionTimeout:?];
    if (self->_preemptedSessionProgressLiar)
    {
      [(NEKSyncSession *)self->_syncSession setProgressLiar:?];
      v23 = [(NEKSyncSession *)self->_syncSession progressLiar];
      [v23 resume];

      preemptedSessionProgressLiar = self->_preemptedSessionProgressLiar;
      self->_preemptedSessionProgressLiar = 0;
    }

    else
    {
      v25 = [NEKProgressLiar alloc];
      [v6 fullSessionTimeout];
      v27 = v26;
      v28 = [(NEKSyncController *)self environment];
      v29 = [v28 syncCoordinator];
      v30 = [v29 session];
      v31 = [(NEKProgressLiar *)v25 initWithSpan:v30 session:v27];
      [(NEKSyncSession *)self->_syncSession setProgressLiar:v31];

      preemptedSessionProgressLiar = [(NEKSyncSession *)self->_syncSession progressLiar];
      [preemptedSessionProgressLiar start];
    }

    [v6 setMaxConcurrentMessages:2];
    [v6 setPerMessageTimeout:300.0];
    v32 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1000730D0(v32, v6);
    }

    v80 = off_1000D1570;
    v79 = off_1000D1578;
    v33 = [NSArray arrayWithObjects:&v79 count:1];
    v81 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    [v6 setSessionMetadata:v34];

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

  if (v15)
  {
    v36 = [(NEKSyncController *)self environment];
    v37 = [v36 tinyStore];
    [v37 getDoubleValueForKey:@"deferUntil" default:1.79769313e308];
    v39 = v38;

    v40 = v39 > CFAbsoluteTimeGetCurrent() && [(NEKSyncController *)self _faultCount]== 0;
    v17 = [[NEKResultsPipe alloc] initWithFIFOLength:8 name:@"DeltaSyncPipe"];
    v44 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_100072F80(v44, v6);
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
          v52 = [v6 identifier];
          *buf = 138543362;
          v83 = v52;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: empty change set, not starting a sync session", buf, 0xCu);
        }

        [(NDTResultsFIFO *)v17 terminateIfNotFinished];
        v53 = [(NEKResultsPipe *)v17 completion];

        if (v53)
        {
          v54 = [(NEKResultsPipe *)v17 completion];
          v54[2]();
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
              v70 = [v6 identifier];
              *buf = 138543362;
              v83 = v70;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: no changes affect next 24hrs, adding nonwaking push priority for IDS session", buf, 0xCu);
            }

            v71 = [v6 options];
            v72 = [v71 mutableCopy];
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
            [v6 setOptions:v76];
          }

          [(NEKSyncSession *)self->_syncSession setChangeSupplier:v17];
          [(NEKSyncSession *)self->_syncSession setFetcher:v7];
          goto LABEL_9;
        }

        v55 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = v55;
          v57 = [v6 identifier];
          *buf = 138543362;
          v83 = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: change set deferrable, not starting session", buf, 0xCu);
        }

        v58 = [(NEKSyncController *)self environment];
        v59 = [v58 tinyStore];
        [v59 getDoubleValueForKey:v77 default:-1.0];
        v61 = v60;

        if (v61 == -1.0)
        {
          v62 = [(NEKSyncController *)self environment];
          v63 = [v62 tinyStore];
          [v63 setDoubleValue:v77 forKey:CFAbsoluteTimeGetCurrent() + 300.0];

          [(NEKSyncController *)self scheduleDeferredRetry];
        }

        [(NDTResultsFIFO *)v17 terminateIfNotFinished];
      }

      a4->var0 = 0;
    }

    goto LABEL_15;
  }

  if (v14)
  {
    v41 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      v43 = [v6 identifier];
      *buf = 138543362;
      v83 = v43;
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
        v49 = [v6 identifier];
        *buf = 138543362;
        v83 = v49;
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
        v65 = [v6 identifier];
        v66 = [v6 isResetSync];
        isNightlySync = self->_isNightlySync;
        *buf = 138544130;
        v83 = v65;
        v84 = 1024;
        v85 = v66;
        v86 = 1024;
        v87 = isNightlySync;
        v88 = 1024;
        v89 = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSendSession: sync request ignored, isReset [%{BOOL}d] isNightly [%{BOOL}d] clearToDelta [%{BOOL}d], scheduling retry", buf, 0x1Eu);
      }

      [(NEKSyncController *)self scheduleRetry];
      a4->var0 = 0;
    }
  }

LABEL_15:
}

- (void)_startRecvSession:(id)a3 results:(StartSessionResults *)a4
{
  v6 = off_1000D1570;
  v7 = off_1000D1578;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v4 setSessionMetadata:v5];
}

- (double)_fullSessionTimeout
{
  v3 = [(NEKSyncSession *)self->_syncSession statsTracker];
  [v3 nextTimeout];
  v5 = v4;

  v6 = sub_10004157C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NEKSyncSession *)self->_syncSession statsTracker];
    [v7 mean];
    v9 = v8;
    v10 = [(NEKSyncSession *)self->_syncSession statsTracker];
    [v10 stddev];
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

- (double)_nextDelay:(int64_t)a3
{
  [(NEKSyncController *)self getFixedRetryInternal];
  if (result <= 0.0)
  {
    return fmin(pow(1.5, (a3 - 1)) * 60.0, 5400.0);
  }

  return result;
}

- (void)scheduleRetry
{
  v3 = [(NEKSyncController *)self environment];
  v8 = [v3 tinyStore];

  v4 = [(NEKSyncController *)self _faultCount];
  if (v4 >= 1)
  {
    v5 = v4;
    if ([(SYService *)self->_syncService targetIsConnected])
    {
      [(NEKSyncController *)self _nextDelay:v5];
      v7 = v6;
      [v8 setDoubleValue:@"RetryDueDate" forKey:v6 + CFAbsoluteTimeGetCurrent()];
      [(NDTActivity *)self->_activity completeAndFireIn:v7];
    }

    else
    {
      [v8 setDoubleValue:@"RetryDueDate" forKey:-1.0];
      [(NDTActivity *)self->_activity completeAndFireOnConnection];
    }
  }
}

- (void)activityDefer:(id)a3
{
  v4 = [(SYService *)self->_syncService currentSession];

  if (v4)
  {
    v5 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC activity deferral requested.", v7, 2u);
    }

    v6 = [(SYService *)self->_syncService currentSession];
    [v6 cancel];

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
  v3 = [(NEKSyncController *)self environment];
  v4 = [v3 tinyStore];

  [(NEKSyncController *)self _setFaultCount:0];
  [v4 setIntegerValue:0 forKey:@"RetryMustBeReset"];
  [v4 setDoubleValue:@"RetryDueDate" forKey:-1.0];
}

- (void)bumpFaultsAndScheduleRetry
{
  [(NEKSyncController *)self _setFaultCount:[(NEKSyncController *)self _faultCount]+ 1];

  [(NEKSyncController *)self scheduleRetry];
}

- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v42 = os_transaction_create();
  v11 = self->_syncSession;
  v12 = [(NEKSyncSession *)v11 changeSupplier];
  [v12 terminateIfNotFinished];

  v13 = [(NEKSyncSession *)v11 perfomanceTracker];
  v14 = [NDTPerf nowMinusPrevious:v13];

  v15 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v9 identifier];
    v18 = v8;
    if ([v9 isSending])
    {
      v19 = @"sending";
    }

    else
    {
      v19 = @"receiving";
    }

    v20 = v10;
    if ([v9 isResetSync])
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
    v44 = v17;
    v45 = 2114;
    v46 = v19;
    v8 = v18;
    v47 = 2114;
    v48 = v21;
    v10 = v20;
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

  if (v9)
  {
    v25 = [v8 currentSession];

    if (v25 == v9)
    {
      if ([v9 isSending])
      {
        [(NEKSyncController *)self _sendSessionEnded:v9 error:v10];
      }

      else
      {
        [(NEKSyncController *)self _recvSessionEnded:v9 error:v10];
      }
    }

    else
    {
      v26 = [v8 currentSession];

      v27 = *(qword_1000D18A8 + 8);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        if (v28)
        {
          loga = v27;
          v38 = [v9 identifier];
          [v8 currentSession];
          v29 = v39 = v11;
          v30 = [v29 identifier];
          v31 = [v9 identifier];
          *buf = 138544130;
          v44 = v38;
          v45 = 2114;
          v46 = v30;
          v47 = 2114;
          v48 = v31;
          v49 = 2114;
          v50 = v10;
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

  [v9 setDelegate:0];
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
    v37 = [v9 identifier];
    *buf = 138543362;
    v44 = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] sessionEnded: resuming sessionIdleQueue", buf, 0xCu);
  }

  dispatch_resume(self->_sessionIdleQueue);
}

- (void)_sendSessionEnded:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 delegate];
  v9 = [(NEKSyncController *)self environment];
  v10 = [v9 tinyStore];

  v11 = [v8 progressLiar];
  [v11 doneForRealNotifyingPairedSync:1];

  [(NDTActivity *)self->_activity completeAndFireNever];
  if (v7 || [(NEKSyncController *)self _shouldFakeFailure])
  {
    v12 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000733CC(v12, v6);
    }

    completion = self->_completion;
    self->_completion = 0;

    v14 = [(NEKSyncController *)self environment];
    v15 = [v14 recordMap];
    [v15 rollback];

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

    if (([v6 isResetSync] & 1) != 0 || self->_isNightlySync)
    {
      v18 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v6 identifier];
        sub_100073498(v19, self, v89, v18);
      }

      self->_isNightlySync = 0;
      [v10 setIntegerValue:1 forKey:@"RetryMustBeReset"];
      if ([v7 code] != -128)
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

    if (v7)
    {
      v21 = [v8 changeSupplier];
      [v21 setError:v7];
    }

    if ([v7 code] == -128)
    {
      v22 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v6 identifier];
        sub_100073564(v23, v83, v22);
      }

      (*(*(*&buf[8] + 40) + 16))();
    }

    else if ([v7 code] == 2023)
    {
      v24 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v6 identifier];
        sub_100073514(v25, v83, v24);
      }

      objc_initWeak(location, self);
      v26 = *(*&buf[8] + 40);
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_100042914;
      v78[3] = &unk_1000B5138;
      objc_copyWeak(&v80, location);
      v79 = v6;
      (*(v26 + 16))(v26, v78);

      objc_destroyWeak(&v80);
      objc_destroyWeak(location);
    }

    else
    {
      if ([v7 code] == 2007 || objc_msgSend(v7, "code") == 23)
      {
        v27 = [v8 statsTracker];
        [v27 updateFailure];

        v28 = [v8 statsTracker];
        [v28 save];

        v29 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v69 = [v6 identifier];
          v70 = [v8 statsTracker];
          [v70 mean];
          v66 = v65;
          v67 = [v8 statsTracker];
          [v67 stddev];
          *v83 = 138543874;
          v84 = v69;
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
      v77 = self;
      (*(v30 + 16))();
    }

    v31 = *(*&buf[8] + 40);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10004296C;
    v71[3] = &unk_1000B4B90;
    v72 = v6;
    (*(v31 + 16))(v31, v71);
    v32 = [(NEKSyncController *)self environment];
    v33 = [v32 analytics];
    [v33 recordSessionType:3];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(NEKSyncController *)self recordSuccessForSession:v6 receiving:0];
    v38 = self->_completion;
    if (v38)
    {
      v38[2]();
      v39 = self->_completion;
      self->_completion = 0;
    }

    v40 = [(NEKSyncController *)self environment];
    v41 = [v40 recordMap];
    [v41 commit];

    v42 = [(NEKSyncController *)self environment];
    v43 = [v42 tinyStore];
    [v43 deleteValueForKey:@"deferUntil"];

    v44 = [(NEKSyncController *)self environment];
    v45 = [v44 tinyStore];
    v46 = +[NSDate date];
    [v46 timeIntervalSinceReferenceDate];
    [v45 setDoubleValue:@"lastSuccessfulStamp" forKey:?];

    if ([v6 isResetSync])
    {
      v47 = [(NEKSyncController *)self environment];
      v48 = [v47 tinyStore];
      [v48 setIntegerValue:_os_feature_enabled_impl() forKey:@"MigrationSyncCount"];
    }

    if (self->_isNightlySync && ([v6 isResetSync] & 1) == 0)
    {
      v49 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        sub_10007332C(v49, v6);
      }

      [(SYService *)self->_syncService setHasChangesAvailable];
    }

    self->_isNightlySync = 0;
    [(NEKSyncController *)self clearRetryState];
    [v8 start];
    v51 = v50;
    Current = CFAbsoluteTimeGetCurrent();
    v53 = [v8 statsTracker];
    v54 = Current - v51;
    [v53 updateSuccess:v54];

    v55 = [v8 statsTracker];
    [v55 save];

    v56 = sub_10004157C();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [v8 statsTracker];
      [v57 mean];
      v59 = v58;
      v60 = [v8 statsTracker];
      [v60 stddev];
      *buf = 134218496;
      *&buf[4] = v54;
      *&buf[12] = 2048;
      *&buf[14] = v59;
      *&buf[22] = 2048;
      v91 = v61;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Post success update sync timings: elapsed=%.02f x=%.02f sigma=%f", buf, 0x20u);
    }

    v62 = [(NEKSyncController *)self environment];
    v63 = [v62 analytics];
    if ([v6 isResetSync])
    {
      v64 = 1;
    }

    else
    {
      v64 = 2;
    }

    [v63 recordSessionType:v64];
  }

  v34 = [v8 fetcher];

  if (v34)
  {
    v35 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      sub_1000735B4(v35, v6);
    }

    v36 = [v8 fetcher];
    [v36 join];

    v37 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      sub_100073654(v37, v6);
    }

    [v8 setFetcher:0];
  }
}

- (void)_recvSessionEnded:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = [v6 delegate];
  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100073784();
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
LABEL_3:
    v8 = [(NEKSyncController *)self environment];
    v9 = [v8 recordMap];
    [v9 rollback];
    goto LABEL_9;
  }

  [(NEKSyncController *)self recordSuccessForSession:v6 receiving:1];
  if (CFPreferencesGetAppBooleanValue(@"internal_dumpRecordMap", @"com.apple.EventKitSync", 0) == 1 && os_variant_has_internal_diagnostics())
  {
    v10 = [(NEKSyncController *)self environment];
    v11 = [v10 recordMap];
    [v11 dumpToLog];
  }

  [v6 isResetSync];
  v8 = [(NEKSyncController *)self environment];
  v9 = [v8 recordMap];
  [v9 commit];
LABEL_9:
}

- (void)recordSuccessForSession:(id)a3 receiving:(BOOL)a4
{
  v4 = a4;
  if ([a3 isResetSync])
  {
    v11 = [(NEKSyncController *)self environment];
    v6 = [v11 tinyStore];
    v7 = +[NSDate date];
    [v7 timeIntervalSinceReferenceDate];
    v8 = off_1000B4D00;
    v9 = off_1000B4D08;
  }

  else
  {
    isNightlySync = self->_isNightlySync;
    v11 = [(NEKSyncController *)self environment];
    v6 = [v11 tinyStore];
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

  if (!v4)
  {
    v8 = v9;
  }

  [v6 setDoubleValue:*v8 forKey:?];
}

- (void)prepDatabasesForResetSync
{
  v3 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remove all items", v7, 2u);
  }

  v4 = [(NEKSyncController *)self environment];
  v5 = [v4 recordMap];
  [v5 removeAllRecords];

  [(NEKStore *)self->_reminderStore removeAllItems];
  v6 = [(NEKStore *)self->_eventStore changeObserver];
  [v6 restartTrackingChanges];
}

- (void)changeObserverDidObserveChanges:(id)a3
{
  v4 = [(NEKSyncController *)self environment];
  v5 = [v4 tinyStore];

  v6 = [v5 getIntegerValueForKey:@"tc_automaticSync" default:1];
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

- (void)changeObserverDidObserveTruncation:(id)a3
{
  v4 = [(NEKSyncController *)self environment];
  v5 = [v4 tinyStore];

  v6 = [v5 getIntegerValueForKey:@"tc_automaticSync" default:1];
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