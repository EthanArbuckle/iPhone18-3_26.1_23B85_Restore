@interface CDKnowledgeDaemon
+ (id)defaultDaemon;
+ (id)defaultUserDaemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CDKnowledgeDaemon)initWithMachServiceName:(id)name;
- (CDKnowledgeDaemon)initWithMachServiceName:(id)name storePath:(id)path;
- (id)classCError;
- (id)confirmDatabaseConnectionError;
- (void)confirmDatabaseConnectionWithReply:(id)reply;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)deleteAllEventsInEventStreamNamed:(id)named reply:(id)reply;
- (void)deleteAllEventsMatchingPredicate:(id)predicate reply:(id)reply;
- (void)deleteObjects:(id)objects reply:(id)reply;
- (void)deleteRemoteState:(id)state;
- (void)deviceUUIDWithReply:(id)reply;
- (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type withReply:(id)reply;
- (void)executeQuery:(id)query reply:(id)reply;
- (void)handleError:(id)error;
- (void)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type withReply:(id)reply;
- (void)logSizeOfStorage:(id)storage;
- (void)maintainPrivacyWithActivity:(id)activity;
- (void)registerARPHomeControlNotificationTask;
- (void)registerAirPlayTasks;
- (void)registerDataCollectionTasks;
- (void)registerMediaAnalysisProcessingTask;
- (void)registerPSBackgroundProcessingTask;
- (void)reportEventStatistics;
- (void)requestBiomeEndpoint:(BOOL)endpoint reply:(id)reply;
- (void)saveObjects:(id)objects reply:(id)reply;
- (void)sourceDeviceIdentityWithReply:(id)reply;
- (void)synchronizeWithReply:(id)reply;
- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client reply:(id)reply;
@end

@implementation CDKnowledgeDaemon

+ (id)defaultDaemon
{
  if (qword_1000445E0 != -1)
  {
    sub_100022AE4();
  }

  v3 = qword_1000445D8;

  return v3;
}

+ (id)defaultUserDaemon
{
  if (qword_1000445F8 != -1)
  {
    sub_100022AF8();
  }

  v3 = qword_1000445F0;

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = _DKDaemonInterface();
  [connectionCopy setExportedInterface:v6];

  v7 = [connectionCopy valueForEntitlement:@"com.apple.coreduetd.allow"];
  v8 = v7;
  if (v7 && [v7 BOOLValue])
  {
    v9 = objc_alloc_init(CDKnowledgeDaemonConnection);
    [(CDKnowledgeDaemonConnection *)v9 setDaemon:self];
    memset(&audittoken, 0, sizeof(audittoken));
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    if (proc_pidpath_audittoken(&audittoken, buffer, 0x1000u) < 1)
    {
      v12 = [connectionCopy valueForEntitlement:@"application-identifier"];
      if (!v12)
      {
        v19 = [connectionCopy valueForEntitlement:@"com.apple.application-identifier"];
        [(CDKnowledgeDaemonConnection *)v9 setProcessName:v19];

        goto LABEL_15;
      }
    }

    else
    {
      v10 = strrchr(buffer, 47);
      if (v10)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = buffer;
      }

      v12 = [NSString stringWithUTF8String:v11];
    }

    [(CDKnowledgeDaemonConnection *)v9 setProcessName:v12];
LABEL_15:

    processName = [(CDKnowledgeDaemonConnection *)v9 processName];

    if (!processName)
    {
      v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"pid:%d", [connectionCopy processIdentifier]);
      [(CDKnowledgeDaemonConnection *)v9 setProcessName:v15];
    }

    [(CDKnowledgeDaemonConnection *)v9 setAuthorizedEventStreamsToRead:0];
    [connectionCopy setExportedObject:v9];
    [connectionCopy setDelegate:self];
    v16 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      processIdentifier = [connectionCopy processIdentifier];
      *buf = 67109120;
      v22 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Connection from PID %d accepted", buf, 8u);
    }

    [connectionCopy resume];
    v13 = 1;
    goto LABEL_20;
  }

  v9 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
  {
    sub_100022B0C(connectionCopy);
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (CDKnowledgeDaemon)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v5 = +[CDDPaths knowledgeDatabaseDirectory];
  v6 = [(CDKnowledgeDaemon *)self initWithMachServiceName:nameCopy storePath:v5];

  return v6;
}

- (CDKnowledgeDaemon)initWithMachServiceName:(id)name storePath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  v42.receiver = self;
  v42.super_class = CDKnowledgeDaemon;
  v8 = [(CDKnowledgeDaemon *)&v42 initWithMachServiceName:nameCopy];
  if (v8)
  {
    v9 = [_DKKnowledgeStorage storageWithDirectory:pathCopy readOnly:0];
    storage = v8->_storage;
    v8->_storage = v9;

    v11 = objc_alloc_init(_DKDataProtectionStateMonitor);
    dataProtection = v8->_dataProtection;
    v8->_dataProtection = v11;

    [(CDKnowledgeDaemon *)v8 setDelegate:v8];
    v13 = +[_DKRateLimitPolicyEnforcer rateLimitPolicyEnforcer];
    rateLimitEnforcer = v8->_rateLimitEnforcer;
    v8->_rateLimitEnforcer = v13;

    v15 = +[_DKPrivacyPolicyEnforcer privacyPolicyEnforcer];
    privacyEnforcer = v8->_privacyEnforcer;
    v8->_privacyEnforcer = v15;

    v17 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.startSanitizingKnowledgeStore", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v17, &state);
    os_activity_scope_leave(&state);

    v18 = +[_CDSiriLearningSettings sharedInstance];
    [v18 startSanitizingKnowledgeStore:v8->_storage];

    objc_initWeak(&location, v8);
    v19 = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_DAY];
    [v19 doubleValue];
    v21 = v20;
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_1000194E8;
    v38 = &unk_10003D018;
    v39 = 0;
    objc_copyWeak(&v40, &location);
    v22 = [_CDPeriodicSchedulerJob jobWithInterval:nameCopy schedulerJobName:&v35 handler:v21];

    state.opaque[0] = XPC_ACTIVITY_INTERVAL;
    state.opaque[1] = XPC_ACTIVITY_REPEATING;
    v45 = XPC_ACTIVITY_PRIORITY;
    v46 = XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP;
    v47 = XPC_ACTIVITY_POWER_NAP;
    v48 = XPC_ACTIVITY_ALLOW_BATTERY;
    v49 = XPC_ACTIVITY_MEMORY_INTENSIVE;
    v50 = XPC_ACTIVITY_REQUIRES_CLASS_C;
    values[0] = xpc_int64_create(XPC_ACTIVITY_INTERVAL_1_DAY);
    v23 = &_xpc_BOOL_true;
    values[1] = &_xpc_BOOL_true;
    values[2] = xpc_string_create(XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    v24 = &_xpc_BOOL_true;
    values[3] = &_xpc_BOOL_true;
    v25 = &_xpc_BOOL_true;
    values[4] = &_xpc_BOOL_true;
    v26 = &_xpc_BOOL_false;
    values[5] = &_xpc_BOOL_false;
    v27 = &_xpc_BOOL_true;
    values[6] = &_xpc_BOOL_true;
    v28 = &_xpc_BOOL_true;
    values[7] = &_xpc_BOOL_true;
    v29 = [NSDate distantPast:v35];
    bookmark = v8->_bookmark;
    v8->_bookmark = v29;

    v31 = xpc_dictionary_create(&state, values, 8uLL);
    [v22 setExecutionCriteria:v31];

    v32 = +[_CDPeriodicScheduler sharedInstance];
    [v32 registerJob:v22];

    [(CDKnowledgeDaemon *)v8 resume];
    for (i = 7; i != -1; --i)
    {
    }

    objc_destroyWeak(&v40);

    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)handleError:(id)error
{
  errorCopy = error;
  if (errorCopy && [_CDErrorUtilities isCoreDataFatalError:errorCopy])
  {
    v5 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100022BD4();
    }

    [(_DKKnowledgeStorage *)self->_storage deleteStorage];
  }
}

- (id)classCError
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"device is not class C unlocked";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.coreduet" code:0 userInfo:v2];

  return v3;
}

- (void)saveObjects:(id)objects reply:(id)reply
{
  objectsCopy = objects;
  replyCopy = reply;
  if ([(CDKnowledgeDaemon *)self isClassCLocked])
  {
    classCError = [(CDKnowledgeDaemon *)self classCError];
    replyCopy[2](replyCopy, 0, classCError);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [(_DKRateLimitPolicyEnforcer *)self->_rateLimitEnforcer filterObjectsByEnforcingRateLimit:objectsCopy];
    v11 = [(_DKPrivacyPolicyEnforcer *)self->_privacyEnforcer enforcePrivacy:v10];
    v12 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100022C48(v11);
    }

    storage = self->_storage;
    v17 = 0;
    v14 = [(_DKKnowledgeStorage *)storage saveObjects:v11 error:&v17];
    v15 = v17;
    if (replyCopy)
    {
      v16 = [_CDErrorUtilities transformErrorForNSSecureCoding:v15];
      (replyCopy)[2](replyCopy, v14, v16);
    }

    [(CDKnowledgeDaemon *)self handleError:v15];

    objc_autoreleasePoolPop(v9);
  }
}

- (void)deleteObjects:(id)objects reply:(id)reply
{
  objectsCopy = objects;
  replyCopy = reply;
  if ([(CDKnowledgeDaemon *)self isClassCLocked])
  {
    classCError = [(CDKnowledgeDaemon *)self classCError];
    replyCopy[2](replyCopy, 0, classCError);
  }

  else
  {
    [(_DKRateLimitPolicyEnforcer *)self->_rateLimitEnforcer creditForDeletion:objectsCopy];
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100022CC0(objectsCopy);
    }

    v10 = objc_autoreleasePoolPush();
    storage = self->_storage;
    v15 = 0;
    v12 = [(_DKKnowledgeStorage *)storage deleteObjects:objectsCopy error:&v15];
    v13 = v15;
    if (replyCopy)
    {
      v14 = [_CDErrorUtilities transformErrorForNSSecureCoding:v13];
      (replyCopy)[2](replyCopy, v12, v14);
    }

    [(CDKnowledgeDaemon *)self handleError:v13];

    objc_autoreleasePoolPop(v10);
  }
}

- (void)deleteAllEventsInEventStreamNamed:(id)named reply:(id)reply
{
  replyCopy = reply;
  v7 = [_DKQuery predicateForEventsWithStreamName:named];
  [(CDKnowledgeDaemon *)self deleteAllEventsMatchingPredicate:v7 reply:replyCopy];
}

- (void)deleteAllEventsMatchingPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  if (![(CDKnowledgeDaemon *)self isClassCLocked])
  {
    if (predicateCopy)
    {
      v15 = 0;
      v9 = [_DKPredicateValidator validatePredicate:predicateCopy allowedKeys:0 error:&v15];
      v10 = v15;
      if (!v9)
      {
        v13 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_100022D38();
        }

        replyCopy[2](replyCopy, 0, v10);
        goto LABEL_10;
      }

      [predicateCopy allowEvaluation];
    }

    storage = self->_storage;
    v14 = 0;
    v12 = [(_DKKnowledgeStorage *)storage deleteAllEventsMatchingPredicate:predicateCopy error:&v14];
    v10 = v14;
    (replyCopy)[2](replyCopy, v12, v10);
LABEL_10:

    goto LABEL_11;
  }

  classCError = [(CDKnowledgeDaemon *)self classCError];
  replyCopy[2](replyCopy, 0, classCError);

LABEL_11:
}

- (void)executeQuery:(id)query reply:(id)reply
{
  queryCopy = query;
  replyCopy = reply;
  if ([(CDKnowledgeDaemon *)self isClassCLocked])
  {
    classCError = [(CDKnowledgeDaemon *)self classCError];
    replyCopy[2](replyCopy, 0, classCError);
  }

  else
  {
    storage = self->_storage;
    v13 = 0;
    v10 = [(_DKKnowledgeStorage *)storage executeQuery:queryCopy error:&v13];
    v11 = v13;
    v12 = [_CDErrorUtilities transformErrorForNSSecureCoding:v11];
    (replyCopy)[2](replyCopy, v10, v12);

    [(CDKnowledgeDaemon *)self handleError:v11];
  }
}

- (void)maintainPrivacyWithActivity:(id)activity
{
  activityCopy2 = activity;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  [_DKStandingQueryExecutor executeAllStandingQueriesWithStorage:self->_storage activity:activityCopy2];
  objc_autoreleasePoolPop(v6);
  if (!activityCopy2 || !xpc_activity_should_defer(activityCopy2))
  {
    v41 = v5;
    activity = activityCopy2;
    v46 = objc_alloc_init(NSMutableArray);
    v8 = objc_alloc_init(NSMutableArray);
    [LSApplicationRecord enumeratorWithOptions:0];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v56 = 0u;
    v9 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v9)
    {
      v10 = v9;
      v47 = *v54;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v53 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          bundleIdentifier = [v12 bundleIdentifier];
          if (bundleIdentifier)
          {
            [v46 addObject:bundleIdentifier];
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          applicationExtensionRecords = [v12 applicationExtensionRecords];
          v16 = [applicationExtensionRecords countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v50;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v50 != v18)
                {
                  objc_enumerationMutation(applicationExtensionRecords);
                }

                effectiveBundleIdentifier = [*(*(&v49 + 1) + 8 * j) effectiveBundleIdentifier];
                if (effectiveBundleIdentifier)
                {
                  [v8 addObject:effectiveBundleIdentifier];
                }
              }

              v17 = [applicationExtensionRecords countByEnumeratingWithState:&v49 objects:v58 count:16];
            }

            while (v17);
          }

          objc_autoreleasePoolPop(v13);
        }

        v10 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v10);
    }

    v7 = v46;
    v21 = v8;
    activityCopy2 = activity;
    if (activity)
    {
      v22 = selfCopy;
      if (xpc_activity_should_defer(activity))
      {
        v23 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v24 = "Privacy maintenance deferred after installedApps query.";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
          goto LABEL_32;
        }

        goto LABEL_32;
      }

      v26 = objc_autoreleasePoolPush();
      [_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:selfCopy->_storage installedApps:v7 installedAppExtensions:v21 deleteMaxCount:4000 objectMaxCount:100000 objectMaxLifespan:activity activity:2419200.0];
      objc_autoreleasePoolPop(v26);
      if (xpc_activity_should_defer(activity))
      {
        v23 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v24 = "Privacy maintenance deferred after maintain privacy.";
          goto LABEL_31;
        }

LABEL_32:

        v5 = v41;
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      [_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:selfCopy->_storage installedApps:v7 installedAppExtensions:v21 deleteMaxCount:4000 objectMaxCount:100000 objectMaxLifespan:0 activity:2419200.0];
      objc_autoreleasePoolPop(v25);
    }

    v27 = objc_autoreleasePoolPush();
    airplayTaskScheduler = [(CDKnowledgeDaemon *)v22 airplayTaskScheduler];
    [airplayTaskScheduler executeCorrelationTask];

    v29 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.AirPlayRoutePrediction"];
    v30 = +[NSDate date];
    v31 = [v29 objectForKey:@"LastAnalyticsCollectionDate"];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v30;
    }

    v34 = v33;

    v35 = [v30 laterDate:v34];
    if ([v34 compare:v35] == -1)
    {
      v36 = [[NSDateInterval alloc] initWithStartDate:v34 endDate:v35];
      storage = v22->_storage;
      ARPCollectAndSendAnalyticsEvents();
    }

    [v29 setObject:v30 forKey:{@"LastAnalyticsCollectionDate", v41}];

    objc_autoreleasePoolPop(v27);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_10001A2F8;
    v48[3] = &unk_10003CA78;
    v48[4] = v22;
    v38 = objc_retainBlock(v48);
    intentSpotlightIndex = [(CDKnowledgeDaemon *)v22 intentSpotlightIndex];

    if (intentSpotlightIndex)
    {
      intentSpotlightIndex2 = [(CDKnowledgeDaemon *)v22 intentSpotlightIndex];
      [intentSpotlightIndex2 triggerIndexIncludingAdditions:1 completion:v38];
    }

    else
    {
      (v38[2])(v38);
    }

    v5 = v42;

    goto LABEL_42;
  }

  v7 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Privacy maintenance deferred after standing queries.", buf, 2u);
  }

LABEL_43:
}

- (void)logSizeOfStorage:(id)storage
{
  storageCopy = storage;
  directory = [storageCopy directory];
  if (directory)
  {
    v5 = directory;
    databaseName = [storageCopy databaseName];

    if (databaseName)
    {
      directory2 = [storageCopy directory];
      v29[0] = directory2;
      databaseName2 = [storageCopy databaseName];
      v29[1] = databaseName2;
      v9 = [NSArray arrayWithObjects:v29 count:2];
      v10 = [NSString pathWithComponents:v9];

      v11 = [NSString stringWithFormat:@"%@C.db", v10];
      v12 = +[NSFileManager defaultManager];
      v13 = [v12 attributesOfItemAtPath:v11 error:0];

      if (!v13)
      {
LABEL_18:

        goto LABEL_19;
      }

      fileSize = [v13 fileSize];
      v15 = [NSString stringWithFormat:@"%@C.db-wal", v10];
      v16 = +[NSFileManager defaultManager];
      v17 = [v16 attributesOfItemAtPath:v15 error:0];

      if (!v17)
      {
        goto LABEL_17;
      }

      v18 = &fileSize[[v17 fileSize]];
      v19 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v26 = v11;
        v27 = 2048;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "DatabaseSize for %@: %lluB", buf, 0x16u);
      }

      if (!v18)
      {
LABEL_17:

        goto LABEL_18;
      }

      databaseName3 = [storageCopy databaseName];
      v21 = [databaseName3 containsString:@"sync"];

      v22 = +[_CDLogging knowledgeSignpost];
      v23 = os_signpost_enabled(v22);
      if (v21)
      {
        if (v23)
        {
          *buf = 134349056;
          v26 = v18;
          v24 = "SyncDatabaseSize";
LABEL_15:
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v24, "Size=%{signpost.telemetry:number1,public}lluB  enableTelemetry=YES ", buf, 0xCu);
        }
      }

      else if (v23)
      {
        *buf = 134349056;
        v26 = v18;
        v24 = "DatabaseSize";
        goto LABEL_15;
      }

      goto LABEL_17;
    }
  }

  v10 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_100022DAC();
  }

LABEL_19:
}

- (void)reportEventStatistics
{
  v3 = _os_activity_create(&_mh_execute_header, "CoreDuet: com.apple.coreduetd.reportEventStatistics", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  eventCountPerStreamName = [(_DKKnowledgeStorage *)self->_storage eventCountPerStreamName];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [eventCountPerStreamName countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(eventCountPerStreamName);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [eventCountPerStreamName objectForKeyedSubscript:v9];
        [v10 unsignedIntegerValue];

        v11 = [v9 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
        _cdknowledge_signpost_event_count();
      }

      v6 = [eventCountPerStreamName countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  storage = [(_DKKnowledgeStorage *)self->_storage storage];
  [(CDKnowledgeDaemon *)self logSizeOfStorage:storage];

  syncStorage = [(_DKKnowledgeStorage *)self->_storage syncStorage];
  [(CDKnowledgeDaemon *)self logSizeOfStorage:syncStorage];
}

- (id)confirmDatabaseConnectionError
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"unable to confirm underlying database connection.";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.coreduet" code:0 userInfo:v2];

  return v3;
}

- (void)confirmDatabaseConnectionWithReply:(id)reply
{
  replyCopy = reply;
  if ([(CDKnowledgeDaemon *)self isClassCLocked])
  {
    classCError = [(CDKnowledgeDaemon *)self classCError];
    replyCopy[2](replyCopy, 0, classCError);
  }

  else
  {
    storage = [(CDKnowledgeDaemon *)self storage];
    v5Storage = [storage storage];
    v7 = [v5Storage confirmDatabaseConnectionFor:NSFileProtectionCompleteUntilFirstUserAuthentication];

    if (v7)
    {
      replyCopy[2](replyCopy, 1, 0);
      goto LABEL_7;
    }

    classCError = [(CDKnowledgeDaemon *)self confirmDatabaseConnectionError];
    replyCopy[2](replyCopy, 0, classCError);
  }

LABEL_7:
}

- (void)requestBiomeEndpoint:(BOOL)endpoint reply:(id)reply
{
  endpointCopy = endpoint;
  replyCopy = reply;
  v6 = [BMAccessClient alloc];
  v7 = [v6 initWithUseCase:BMUseCaseConnectionProxy];
  v10 = 0;
  v8 = [v7 requestEndpointForDomain:endpointCopy error:&v10];
  v9 = v10;
  replyCopy[2](replyCopy, v8, v9);
}

- (void)registerDataCollectionTasks
{
  if (+[_CDDeviceInfo isRunningOnInternalBuild])
  {
    [(CDKnowledgeDaemon *)self registerCDInteractionDataCollectionTask];
    [(CDKnowledgeDaemon *)self registerCDFTCPInteractionDataCollectionTask];
    [(CDKnowledgeDaemon *)self registerPersonLinkingDataCollectionTask];
    [(CDKnowledgeDaemon *)self registerVisionSignalGradingDataCollectionTask];
  }

  [(CDKnowledgeDaemon *)self registerAirPlayTasks];
  [(CDKnowledgeDaemon *)self macSleepModelingDataCollectionTasks];

  [(CDKnowledgeDaemon *)self registerMailIntelligencePETDataCollectionTask];
}

- (void)registerAirPlayTasks
{
  if (!self->_airplayTaskScheduler)
  {
    v3 = [ARPCorrelationTaskScheduler alloc];
    storage = [(CDKnowledgeDaemon *)self storage];
    v4 = [v3 initWithKnowledgeStore:storage];
    airplayTaskScheduler = self->_airplayTaskScheduler;
    self->_airplayTaskScheduler = v4;
  }
}

- (void)registerARPHomeControlNotificationTask
{
  v2 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100022E20(v2);
  }

  xpc_activity_register("com.apple.coreduetd.homecontrolsuggestion.notification.task", XPC_ACTIVITY_CHECK_IN, &stru_10003D0F8);
}

- (void)registerPSBackgroundProcessingTask
{
  sharedScheduler = [sub_10001BE88() sharedScheduler];
  v3 = [sharedScheduler registerForTaskWithIdentifier:@"com.apple.proactive.psbackgroundprocessingtask" usingQueue:0 launchHandler:&stru_10003D138];

  v4 = +[_CDLogging psBackgroundProcessingChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "failed";
    if (v3)
    {
      v5 = "successful";
    }

    *buf = 138412546;
    *&buf[4] = @"com.apple.proactive.psbackgroundprocessingtask";
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Task registration for %@ %s", buf, 0x16u);
  }

  sharedScheduler2 = [sub_10001BE88() sharedScheduler];
  v7 = [sharedScheduler2 taskRequestForIdentifier:@"com.apple.proactive.psbackgroundprocessingtask"];

  if (!v7)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v8 = qword_100044610;
    v20 = qword_100044610;
    if (!qword_100044610)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10001CE60;
      v22 = &unk_10003CC00;
      v23 = &v17;
      sub_10001CD1C();
      Class = objc_getClass("BGRepeatingSystemTaskRequest");
      *(v23[1] + 24) = Class;
      qword_100044610 = *(v23[1] + 24);
      v8 = v18[3];
    }

    v10 = v8;
    _Block_object_dispose(&v17, 8);
    v11 = [[v8 alloc] initWithIdentifier:@"com.apple.proactive.psbackgroundprocessingtask"];
    [v11 setInterval:86400.0];
    [v11 setMinDurationBetweenInstances:69120.0];
    [v11 setRequiresExternalPower:1];
    sharedScheduler3 = [sub_10001BE88() sharedScheduler];
    v16 = 0;
    v13 = [sharedScheduler3 submitTaskRequest:v11 error:&v16];
    v14 = v16;

    if ((v13 & 1) == 0)
    {
      v15 = +[_CDLogging psBackgroundProcessingChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100022E64(v14);
      }
    }
  }
}

- (void)registerMediaAnalysisProcessingTask
{
  v3 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100022F0C(v3);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001C048;
  handler[3] = &unk_10003CB60;
  handler[4] = self;
  xpc_activity_register("com.apple.coreduetd.mediaanalysis.proc.task", XPC_ACTIVITY_CHECK_IN, handler);
}

- (void)synchronizeWithReply:(id)reply
{
  replyCopy = reply;
  syncCoordinator = [(CDKnowledgeDaemon *)self syncCoordinator];

  if (syncCoordinator)
  {
    syncCoordinator2 = [(CDKnowledgeDaemon *)self syncCoordinator];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001C464;
    v8[3] = &unk_10003D180;
    v9 = replyCopy;
    [syncCoordinator2 syncWithReply:v8];
  }

  else
  {
    v7 = +[_DKSyncErrors unavailableForCurrentUser];
    (*(replyCopy + 2))(replyCopy, 0, v7);
  }
}

- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client reply:(id)reply
{
  clientCopy = client;
  replyCopy = reply;
  syncCoordinator = [(CDKnowledgeDaemon *)self syncCoordinator];

  if (syncCoordinator)
  {
    syncCoordinator2 = [(CDKnowledgeDaemon *)self syncCoordinator];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001C5F0;
    v13[3] = &unk_10003D180;
    v14 = replyCopy;
    [syncCoordinator2 synchronizeWithUrgency:urgency client:clientCopy reply:v13];
  }

  else
  {
    v12 = +[_DKSyncErrors unavailableForCurrentUser];
    (*(replyCopy + 2))(replyCopy, 0, v12);
  }
}

- (void)deleteRemoteState:(id)state
{
  stateCopy = state;
  syncCoordinator = [(CDKnowledgeDaemon *)self syncCoordinator];

  if (syncCoordinator)
  {
    syncCoordinator2 = [(CDKnowledgeDaemon *)self syncCoordinator];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001C758;
    v8[3] = &unk_10003D180;
    v9 = stateCopy;
    [syncCoordinator2 deleteRemoteStateWithReply:v8];
  }

  else
  {
    v7 = +[_DKSyncErrors unavailableForCurrentUser];
    (*(stateCopy + 2))(stateCopy, 0, v7);
  }
}

- (void)sourceDeviceIdentityWithReply:(id)reply
{
  replyCopy = reply;
  if ([(CDKnowledgeDaemon *)self isClassCLocked])
  {
    classCError = [(CDKnowledgeDaemon *)self classCError];
    replyCopy[2](replyCopy, 0, classCError);
  }

  else
  {
    storage = [(CDKnowledgeDaemon *)self storage];
    classCError = [storage sourceDeviceIdentity];

    if (classCError)
    {
      (replyCopy)[2](replyCopy, classCError, 0);
    }

    else
    {
      v6 = +[_DKSyncErrors unavailableForCurrentUser];
      replyCopy[2](replyCopy, 0, v6);
    }
  }
}

- (void)deviceUUIDWithReply:(id)reply
{
  replyCopy = reply;
  if ([(CDKnowledgeDaemon *)self isClassCLocked])
  {
    classCError = [(CDKnowledgeDaemon *)self classCError];
    replyCopy[2](replyCopy, 0, classCError);
  }

  else
  {
    storage = [(CDKnowledgeDaemon *)self storage];
    classCError = [storage deviceUUID];

    if (classCError)
    {
      (replyCopy)[2](replyCopy, classCError, 0);
    }

    else
    {
      v6 = +[_DKSyncErrors unavailableForCurrentUser];
      replyCopy[2](replyCopy, 0, v6);
    }
  }
}

- (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type withReply:(id)reply
{
  replyCopy = reply;
  [_DKSync2Policy disableSyncPolicyForFeature:feature transportType:type disabled:1];
  replyCopy[2](replyCopy, 1, 0);
}

- (void)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type withReply:(id)reply
{
  replyCopy = reply;
  (*(replyCopy + 2))(replyCopy, [_DKSync2Policy isSyncPolicyDisabledForFeature:feature transportType:type], 0);
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  invocationCopy = invocation;
  v12 = invocationCopy;
  if (replyCopy)
  {
    [invocationCopy invoke];
  }

  else
  {
    exportedObject = [connection exportedObject];
    processName = [exportedObject processName];

    v10 = [&off_10003FA60 objectForKeyedSubscript:processName];
    unsignedIntValue = [v10 unsignedIntValue];

    if (unsignedIntValue > 0x32)
    {
      [v12 invoke];
    }

    else
    {
      (*(&off_10003D1A0 + unsignedIntValue))(v12);
    }
  }
}

@end