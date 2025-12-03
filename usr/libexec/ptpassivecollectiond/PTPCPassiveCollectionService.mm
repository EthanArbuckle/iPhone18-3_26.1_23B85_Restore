@interface PTPCPassiveCollectionService
- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PTPCPassiveCollectionService)init;
- (void)_collectAndClearCurrentSettingWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback;
- (void)_collectionQueue_collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix collectionType:(unsigned __int8)type triggerUserNotification:(BOOL)notification collectionConfig:(id)config clearPresetSettings:(BOOL)settings callback:(id)self0;
- (void)_confirmTraceDirectoryExists;
- (void)_generateCoreAnalyticsTelemetry:(id)telemetry collectionEndDate:(id)date traceWindowStartDate:(id)startDate traceWindowEndDate:(id)endDate traceCount:(unint64_t)count totalTraceSizeBytes:(unint64_t)bytes archiveSizeBytes:(id)sizeBytes collectionType:(unsigned __int8)self0;
- (void)_initCollectionConfig;
- (void)_initInstrumentationConfig;
- (void)_registerForMetricMonitorTimeout;
- (void)applyPresetSettings:(unint64_t)settings callback:(id)callback;
- (void)clearCurrentPresetSettings:(id)settings;
- (void)collectLookbackIntervalWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback;
- (void)collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback;
- (void)getCollectAppInFocus:(id)focus;
- (void)getCollectLoggingAppLaunch:(id)launch;
- (void)getCollectLoggingHangs:(id)hangs;
- (void)getCollectLoggingMetalFramePacing:(id)pacing;
- (void)getCollectLoggingPerfPowerMetrics:(id)metrics;
- (void)getCollectLoggingScrolling:(id)scrolling;
- (void)getCollectLoggingUserInteraction:(id)interaction;
- (void)getCollectLookbackInterval:(id)interval;
- (void)getCollectMSS:(id)s;
- (void)getCurrentPresetSettings:(id)settings;
- (void)getImitationRecordStartDate:(id)date;
- (void)getInstrumentationConfigIsLocked:(id)locked;
- (void)getMetalPerDrawableSignpostsEnabled:(id)enabled;
- (void)getMetricMonitoredAppProcessNames:(id)names;
- (void)getMetricMonitoringEnabled:(id)enabled;
- (void)getMssPmiCycleInterval:(id)interval;
- (void)resetCollectAppInFocus:(id)focus;
- (void)resetCollectLoggingAppLaunch:(id)launch;
- (void)resetCollectLoggingHangs:(id)hangs;
- (void)resetCollectLoggingMetalFramePacing:(id)pacing;
- (void)resetCollectLoggingPerfPowerMetrics:(id)metrics;
- (void)resetCollectLoggingScrolling:(id)scrolling;
- (void)resetCollectLoggingUserInteraction:(id)interaction;
- (void)resetCollectLookbackInterval:(id)interval;
- (void)resetCollectMSS:(id)s;
- (void)resetSettings:(id)settings;
- (void)setCollectLookbackInterval:(double)interval callback:(id)callback;
- (void)setImitationRecordStartDate:(id)date callback:(id)callback;
- (void)setMetalPerDrawableSignpostsEnabled:(id)enabled callback:(id)callback;
- (void)setMetricMonitoredAppProcessNames:(id)names callback:(id)callback;
- (void)setMetricMonitoringEnabled:(id)enabled callback:(id)callback;
- (void)setMssPmiCycleInterval:(id)interval callback:(id)callback;
@end

@implementation PTPCPassiveCollectionService

- (BOOL)_connectionIsEntitled:(id)entitled toEntitlement:(id)entitlement
{
  v4 = [entitled valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  proc_name(processIdentifier, buffer, 0x20u);
  v9 = [NSString stringWithUTF8String:buffer];
  if (![(PTPCPassiveCollectionService *)self _connectionIsEntitled:connectionCopy toEntitlement:@"com.apple.PerformanceTrace.PassiveConfigurationAccess"])
  {
    v16 = sub_10000B5D4();
    if (os_signpost_enabled(v16))
    {
      *buf = 138543618;
      v42 = v9;
      v43 = 1024;
      v44 = processIdentifier;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientLacksEntitlement", "Client '%{public}@ [%u]' is missing required entitlement", buf, 0x12u);
    }

    goto LABEL_9;
  }

  pidToConnection = [(PTPCPassiveCollectionService *)self pidToConnection];
  v11 = [NSNumber numberWithInt:processIdentifier];
  v12 = [pidToConnection objectForKeyedSubscript:v11];
  v13 = v12 == 0;

  if (!v13)
  {
    v14 = sub_10000B5D4();
    if (os_signpost_enabled(v14))
    {
      pidToConnection2 = [(PTPCPassiveCollectionService *)self pidToConnection];
      *buf = 138543874;
      v42 = v9;
      v43 = 1024;
      v44 = processIdentifier;
      v45 = 1024;
      v46 = [pidToConnection2 count];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PreExistingClientProcessConnection", "Client '%{public}@ [%u]' already has a connection. %u concurrent client(s) at this time.", buf, 0x18u);
    }

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTPCPassiveCollectionConfigurationInterface];
  [connectionCopy setExportedInterface:v19];

  [connectionCopy setExportedObject:self];
  v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTPCPassiveCollectionClientDelegate];
  [connectionCopy setRemoteObjectInterface:v20];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000B618;
  v36[3] = &unk_100020B00;
  objc_copyWeak(&v38, &location);
  v39 = processIdentifier;
  v21 = v9;
  v37 = v21;
  [connectionCopy setInvalidationHandler:v36];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10000B79C;
  v31 = &unk_100020B28;
  objc_copyWeak(&v34, &location);
  v35 = processIdentifier;
  v22 = v21;
  v32 = v22;
  selfCopy = self;
  [connectionCopy setInterruptionHandler:&v28];
  v23 = [(PTPCPassiveCollectionService *)self pidToConnection:v28];
  v24 = [NSNumber numberWithInt:processIdentifier];
  [v23 setObject:connectionCopy forKeyedSubscript:v24];

  v25 = sub_10000B758();
  if (os_signpost_enabled(v25))
  {
    pidToConnection3 = [(PTPCPassiveCollectionService *)self pidToConnection];
    v27 = [pidToConnection3 count];
    *buf = 138543874;
    v42 = v22;
    v43 = 1024;
    v44 = processIdentifier;
    v45 = 1024;
    v46 = v27;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewCollectionClientConnection", "Opened new connection for client '%{public}@ [%u]'. %u concurrent client(s) at this time.", buf, 0x18u);
  }

  [connectionCopy resume];
  objc_destroyWeak(&v34);

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
  v17 = 1;
LABEL_10:

  return v17;
}

- (void)_initCollectionConfig
{
  v20 = 0;
  v3 = [PTPCMutablePassiveCollectionConfig currentPersistedSettings:0 errorOut:&v20];
  v4 = v20;
  passiveCollectionConfig = self->_passiveCollectionConfig;
  self->_passiveCollectionConfig = v3;

  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];

  if (!passiveCollectionConfig || v4)
  {
    v7 = sub_10000B5D4();
    if (os_signpost_enabled(v7))
    {
      localizedDescription = [v4 localizedDescription];
      v9 = localizedDescription;
      v10 = @"Unknown";
      if (localizedDescription)
      {
        v10 = localizedDescription;
      }

      *buf = 138543362;
      v22 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidPersistedSettings", "Forced to clear due to error: %{public}@", buf, 0xCu);
    }

    v19 = 0;
    v11 = [PTPCMutablePassiveCollectionConfig resetPersistedDefaults:0 errorOut:&v19];
    v12 = v19;
    if (v11)
    {
      v18 = v4;
      v13 = [PTPCMutablePassiveCollectionConfig currentPersistedSettings:0 errorOut:&v18];
      v14 = v18;

      v15 = self->_passiveCollectionConfig;
      self->_passiveCollectionConfig = v13;

      passiveCollectionConfig2 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];

      if (passiveCollectionConfig2)
      {

        return;
      }

      v17 = sub_10000B5D4();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_100013264(v14);
      }
    }

    else
    {
      v17 = sub_10000B5D4();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_100013264(v12);
      }
    }

    exit(1);
  }
}

- (void)_initInstrumentationConfig
{
  v8 = 0;
  v3 = [PTPCPassiveInstrumentationConfig currentPersistedSettings:0 errorOut:&v8];
  v4 = v8;
  instrumentationConfig = self->_instrumentationConfig;
  self->_instrumentationConfig = v3;

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];

  if (!instrumentationConfig)
  {
    v7 = sub_10000B5D4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1000132FC(v4);
    }

    exit(1);
  }
}

- (void)_confirmTraceDirectoryExists
{
  v2 = sub_100002090(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/");
  if (v2)
  {
    v4 = v2;
    v3 = sub_10000B5D4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100013394(v4, v3);
    }

    exit(1);
  }
}

- (void)_registerForMetricMonitorTimeout
{
  objc_initWeak(&location, self);
  connectionQueue = [(PTPCPassiveCollectionService *)self connectionQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000BD40;
  handler[3] = &unk_100020B50;
  objc_copyWeak(&v7, &location);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", connectionQueue, handler);

  v4 = sub_10000B758();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RegisteredForMetricMonitorTimeoutNotification", "", v5, 2u);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (PTPCPassiveCollectionService)init
{
  v18.receiver = self;
  v18.super_class = PTPCPassiveCollectionService;
  v2 = [(PTPCPassiveCollectionService *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    pidToConnection = v2->_pidToConnection;
    v2->_pidToConnection = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = qos_class_main();
    v7 = dispatch_queue_attr_make_with_qos_class(v5, v6, 0);

    v8 = dispatch_queue_create("com.apple.PerformanceTrace.ptpassivecollectiond.NSXPCListener", v7);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = qos_class_main();
    v12 = dispatch_queue_attr_make_with_qos_class(v10, v11, 0);

    v13 = dispatch_queue_create("com.apple.PerformanceTrace.ptpassivecollectiond.tracecollection", v12);
    collectionQueue = v2->_collectionQueue;
    v2->_collectionQueue = v13;

    [(PTPCPassiveCollectionService *)v2 _initCollectionConfig];
    [(PTPCPassiveCollectionService *)v2 _initInstrumentationConfig];
    [(PTPCPassiveCollectionService *)v2 _registerForMetricMonitorTimeout];
    [(PTPCPassiveCollectionService *)v2 _confirmTraceDirectoryExists];
    v15 = sub_10000B758();
    if (os_signpost_enabled(v15))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PTPassiveCollectionServiceCreated", "", v17, 2u);
    }
  }

  return v2;
}

- (void)getCollectMSS:(id)s
{
  sCopy = s;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(s + 2))(sCopy, [passiveCollectionConfig collectMSS]);
}

- (void)resetCollectMSS:(id)s
{
  sCopy = s;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectMSS];

  sCopy[2](sCopy, 0);
}

- (void)getCollectAppInFocus:(id)focus
{
  focusCopy = focus;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(focus + 2))(focusCopy, [passiveCollectionConfig collectAppInFocus]);
}

- (void)resetCollectAppInFocus:(id)focus
{
  focusCopy = focus;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectAppInFocus];

  focusCopy[2](focusCopy, 0);
}

- (void)getCollectLoggingPerfPowerMetrics:(id)metrics
{
  metricsCopy = metrics;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(metrics + 2))(metricsCopy, [passiveCollectionConfig collectLoggingPerfPowerMetrics]);
}

- (void)resetCollectLoggingPerfPowerMetrics:(id)metrics
{
  metricsCopy = metrics;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingPerfPowerMetrics];

  metricsCopy[2](metricsCopy, 0);
}

- (void)getCollectLoggingHangs:(id)hangs
{
  hangsCopy = hangs;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(hangs + 2))(hangsCopy, [passiveCollectionConfig collectLoggingHangs]);
}

- (void)resetCollectLoggingHangs:(id)hangs
{
  hangsCopy = hangs;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingHangs];

  hangsCopy[2](hangsCopy, 0);
}

- (void)getCollectLoggingUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(interaction + 2))(interactionCopy, [passiveCollectionConfig collectLoggingUserInteraction]);
}

- (void)resetCollectLoggingUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingUserInteraction];

  interactionCopy[2](interactionCopy, 0);
}

- (void)getCollectLoggingMetalFramePacing:(id)pacing
{
  pacingCopy = pacing;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(pacing + 2))(pacingCopy, [passiveCollectionConfig collectLoggingMetalFramePacing]);
}

- (void)resetCollectLoggingMetalFramePacing:(id)pacing
{
  pacingCopy = pacing;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingMetalFramePacing];

  pacingCopy[2](pacingCopy, 0);
}

- (void)getCollectLoggingScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(scrolling + 2))(scrollingCopy, [passiveCollectionConfig collectLoggingScrolling]);
}

- (void)resetCollectLoggingScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingScrolling];

  scrollingCopy[2](scrollingCopy, 0);
}

- (void)getCollectLoggingAppLaunch:(id)launch
{
  launchCopy = launch;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(launch + 2))(launchCopy, [passiveCollectionConfig collectLoggingAppLaunch]);
}

- (void)resetCollectLoggingAppLaunch:(id)launch
{
  launchCopy = launch;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectLoggingAppLaunch];

  launchCopy[2](launchCopy, 0);
}

- (void)resetSettings:(id)settings
{
  settingsCopy = settings;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetSettings];

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  resetPersistedDefaultsAndRestoreDefaultInstrumentationSettings = [instrumentationConfig resetPersistedDefaultsAndRestoreDefaultInstrumentationSettings];

  settingsCopy[2](settingsCopy, 0);
}

- (void)_generateCoreAnalyticsTelemetry:(id)telemetry collectionEndDate:(id)date traceWindowStartDate:(id)startDate traceWindowEndDate:(id)endDate traceCount:(unint64_t)count totalTraceSizeBytes:(unint64_t)bytes archiveSizeBytes:(id)sizeBytes collectionType:(unsigned __int8)self0
{
  sizeBytesCopy = sizeBytes;
  endDateCopy = endDate;
  startDateCopy = startDate;
  [date timeIntervalSinceDate:telemetry];
  v21 = v20;
  [endDateCopy timeIntervalSinceDate:startDateCopy];
  v23 = v22;

  v49[0] = @"TimeToCollectSeconds";
  v24 = [NSNumber numberWithDouble:v21];
  v50[0] = v24;
  v49[1] = @"CollectionWindowSeconds";
  v25 = [NSNumber numberWithDouble:v23];
  v50[1] = v25;
  v49[2] = @"TraceCount";
  v26 = [NSNumber numberWithUnsignedLongLong:count];
  v50[2] = v26;
  v49[3] = @"TotalTraceBytes";
  v27 = [NSNumber numberWithUnsignedLongLong:bytes];
  v50[3] = v27;
  v49[4] = @"CollectionType";
  v28 = [NSNumber numberWithUnsignedChar:type];
  v50[4] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];
  v30 = [v29 mutableCopy];

  if (sizeBytesCopy)
  {
    [v30 setObject:sizeBytesCopy forKeyedSubscript:@"ArchiveSizeBytes"];
  }

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v42 = 0;
  v32 = [instrumentationConfig perDrawableEnabled:&v42];
  v33 = v42;

  if (v32)
  {
    [v30 setObject:v32 forKeyedSubscript:@"MetalPerDrawableEnabled"];
  }

  instrumentationConfig2 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v41 = 0;
  v35 = [instrumentationConfig2 mssPMICycleInterval:&v41];
  v36 = v41;

  if (v35)
  {
    [v30 setObject:v35 forKeyedSubscript:@"MSSPMIInterval"];
  }

  v37 = sub_10000CFA4();
  if (os_signpost_enabled(v37))
  {
    generateCoreAnalyticsTelemetry = [(PTPCPassiveCollectionService *)self generateCoreAnalyticsTelemetry];
    v39 = @"NO";
    if (generateCoreAnalyticsTelemetry)
    {
      v39 = @"YES";
    }

    if ((type - 1) > 3u)
    {
      v40 = @"Unknown";
    }

    else
    {
      v40 = *(&off_100020C40 + (type - 1));
    }

    *buf = 138543874;
    v44 = v39;
    v45 = 2114;
    v46 = v40;
    v47 = 2114;
    v48 = v30;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceCollectionCoreAnalytics", "Will submit payload: %{public}@, collection type: %{public}@\nPayload:\n%{public}@", buf, 0x20u);
  }

  if ([(PTPCPassiveCollectionService *)self generateCoreAnalyticsTelemetry])
  {
    AnalyticsSendEvent();
  }
}

- (void)_collectionQueue_collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix collectionType:(unsigned __int8)type triggerUserNotification:(BOOL)notification collectionConfig:(id)config clearPresetSettings:(BOOL)settings callback:(id)self0
{
  notificationCopy = notification;
  typeCopy = type;
  dateCopy = date;
  endDateCopy = endDate;
  prefixCopy = prefix;
  configCopy = config;
  callbackCopy = callback;
  v148 = os_transaction_create();
  if (!prefixCopy)
  {
    prefixCopy = [configCopy name];
  }

  selfCopy = self;
  [(PTPCPassiveCollectionService *)self _confirmTraceDirectoryExists];
  v18 = sub_10000AB30(dateCopy);
  v19 = sub_10000AB30(endDateCopy);
  v151 = prefixCopy;
  v20 = [NSString stringWithFormat:@"%@_%@_to_%@", prefixCopy, v18, v19];

  v21 = sub_10000B758();
  v22 = v21;
  v23 = qword_100025A60;
  if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    if (notificationCopy)
    {
      v24 = @"Notification";
    }

    else
    {
      v24 = @"Handle";
    }

    v25 = [configCopy debugDescription];
    *buf = 138544386;
    v170 = v20;
    v171 = 2114;
    v172 = dateCopy;
    v173 = 2114;
    v174 = endDateCopy;
    v175 = 2114;
    v176 = v24;
    v177 = 2114;
    v178 = v25;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "CollectingTrace", "Collecting trace with prefix '%{public}@', interval: %{public}@ -> %{public}@, Exposing result via %{public}@\n%{public}@", buf, 0x34u);
  }

  v26 = qword_100025A60++;
  v152 = +[NSDate date];
  v27 = NSTemporaryDirectory();
  v28 = [v27 stringByAppendingPathComponent:v20];

  [NSURL fileURLWithPath:v28];
  v150 = v147 = v20;
  v29 = [[_TtC20ptpassivecollectiond20PTPCPassiveCollector alloc] initWithConfig:configCopy traceNamePrefix:v20 outputDirectory:v150];
  v166 = 0;
  v30 = dateCopy;
  v31 = [(PTPCPassiveCollector *)v29 collectWithStartDate:dateCopy endDate:endDateCopy error:&v166];
  v32 = v166;
  v33 = endDateCopy;
  v149 = callbackCopy;
  v145 = v31;
  v146 = v29;
  if (v32)
  {
    v34 = v32;
    v35 = v151;
    if (settings)
    {
      instrumentationConfig = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
      clearPresetSettings = [instrumentationConfig clearPresetSettings];
    }

    v38 = v30;
    [(PTPCPassiveCollectionService *)selfCopy _generateCollectionErrorCoreAnalyticsTelemetry:2 traceWindowStartDate:v30 traceWindowEndDate:v33 collectionType:typeCopy];
    if (callbackCopy)
    {
      (callbackCopy[2])(callbackCopy, 0, 0, v34);
    }

    v39 = sub_10000B758();
    v40 = v39;
    v41 = qword_100025A60;
    v42 = v152;
    if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      localizedDescription = [(__CFString *)v34 localizedDescription];
      v44 = localizedDescription;
      v45 = @"Unknown";
      if (localizedDescription)
      {
        v45 = localizedDescription;
      }

      *buf = 138543362;
      v170 = v45;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, v41, "CollectingTrace", "Failed due to error: %{public}@", buf, 0xCu);

      v42 = v152;
    }

    goto LABEL_122;
  }

  v139 = v26;
  if ([v31 count])
  {
    v141 = v28;
    v140 = endDateCopy;
    v138 = v30;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    obj = v31;
    v46 = [obj countByEnumeratingWithState:&v162 objects:v168 count:16];
    v47 = &AnalyticsSendEvent_ptr;
    if (v46)
    {
      v48 = v46;
      v49 = 0;
      v50 = *v163;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v163 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v52 = *(*(&v162 + 1) + 8 * i);
          defaultManager = [v47[192] defaultManager];
          v161 = 0;
          v54 = [defaultManager attributesOfItemAtPath:v52 error:&v161];
          v55 = v161;
          fileSize = [v54 fileSize];

          v57 = sub_10000B758();
          if (os_signpost_enabled(v57))
          {
            *buf = 138543874;
            v170 = v52;
            v171 = 2050;
            v172 = fileSize;
            v173 = 2114;
            v174 = v55;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollectedTrace", "Collected trace: '%{public}@', %{public}llu bytes (size error: %{public}@", buf, 0x20u);
          }

          v49 += fileSize;
          v47 = &AnalyticsSendEvent_ptr;
        }

        v48 = [obj countByEnumeratingWithState:&v162 objects:v168 count:16];
      }

      while (v48);
    }

    else
    {
      v49 = 0;
    }

    if (notificationCopy)
    {
      v66 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/";
    }

    else
    {
      v66 = NSTemporaryDirectory();
    }

    v35 = v151;
    v67 = v141;
    v34 = v66;
    lastPathComponent = [v67 lastPathComponent];
    v69 = [NSString stringWithFormat:@"%@.aar", lastPathComponent];
    v70 = [(__CFString *)v34 stringByAppendingPathComponent:v69];

    v167 = 0;
    v155 = v67;
    LODWORD(v67) = sub_10000F6F8(v67, v70, &v167);
    v71 = v167;
    v72 = v71;
    if (!v67 || v71)
    {
      v73 = sub_10000B5D4();
      if (os_signpost_enabled(v73))
      {
        localizedDescription2 = [v72 localizedDescription];
        v75 = localizedDescription2;
        v76 = @"Unknown";
        *buf = 138543874;
        v170 = v155;
        if (localizedDescription2)
        {
          v76 = localizedDescription2;
        }

        v171 = 2114;
        v172 = v70;
        v173 = 2112;
        v174 = v76;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ArchivingFailure", "Failed to archive '%{public}@' to '%{public}@' due to error: %@", buf, 0x20u);
      }

      v40 = 0;
    }

    else
    {
      v40 = v70;
    }

    defaultManager2 = [v47[192] defaultManager];
    v160 = 0;
    v78 = [defaultManager2 removeItemAtURL:v150 error:&v160];
    v79 = v160;

    if (v78)
    {
      v80 = sub_10000B758();
      v38 = v138;
      if (!os_signpost_enabled(v80))
      {
        goto LABEL_60;
      }

      path = [v150 path];
      *buf = 138543362;
      v170 = path;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceFileCleanup", "Cleaned up '%{public}@'", buf, 0xCu);
    }

    else
    {
      v80 = sub_10000B5D4();
      v38 = v138;
      if (!os_signpost_enabled(v80))
      {
        goto LABEL_60;
      }

      path = [v150 path];
      localizedDescription3 = [v79 localizedDescription];
      v83 = localizedDescription3;
      v84 = @"Unknown";
      if (localizedDescription3)
      {
        v84 = localizedDescription3;
      }

      *buf = 138543618;
      v170 = path;
      v171 = 2112;
      v172 = v84;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceFileCleanupFailure", "Failed to cleanup '%{public}@' due to error: %@", buf, 0x16u);
    }

LABEL_60:
    v28 = v141;

    v42 = v152;
    if ((sub_100001644(v40) & 1) == 0)
    {
      v85 = sub_10000B5D4();
      if (os_signpost_enabled(v85))
      {
        *buf = 138543362;
        v170 = v40;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v85, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToMarkPurgeable", "Failed to mark '%{public}@' medium urgency purgeable", buf, 0xCu);
      }
    }

    v86 = sub_1000021A8(v40);
    if (v86)
    {
      v87 = sub_10000B5D4();
      if (os_signpost_enabled(v87))
      {
        *buf = 138543362;
        v170 = v40;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v87, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToUpdatePermissions", "Failed to update POSIX permissions of file '%{public}@'", buf, 0xCu);
      }

      v28 = v141;
    }

    if (notificationCopy)
    {
      v159 = 0;
      v88 = sub_10000175C(v40, &v159);
      v89 = v159;
      if (v88)
      {
        v90 = 0;
        v91 = 0;
        v156 = 0;
        settingsCopy2 = settings;
        v93 = v139;
        v94 = &AnalyticsSendEvent_ptr;
LABEL_112:

        date = [v94[204] date];
        LOBYTE(v137) = typeCopy;
        -[PTPCPassiveCollectionService _generateCoreAnalyticsTelemetry:collectionEndDate:traceWindowStartDate:traceWindowEndDate:traceCount:totalTraceSizeBytes:archiveSizeBytes:collectionType:](selfCopy, "_generateCoreAnalyticsTelemetry:collectionEndDate:traceWindowStartDate:traceWindowEndDate:traceCount:totalTraceSizeBytes:archiveSizeBytes:collectionType:", v152, date, v38, v140, [obj count], v49, v90, v137);
        if (settingsCopy2)
        {
          instrumentationConfig2 = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
          clearPresetSettings2 = [instrumentationConfig2 clearPresetSettings];
        }

        if (v149)
        {
          v149[2]();
        }

        v133 = sub_10000B758();
        v134 = v133;
        v33 = v140;
        if (v93 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v133))
        {
          *buf = 138543362;
          v170 = v40;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v134, OS_SIGNPOST_INTERVAL_END, v93, "CollectingTrace", "Successfully collected to path '%{public}@. Scheduling eager exit to mitigate fragmentation/leaks.", buf, 0xCu);
        }

        sub_100002698();
        v135 = dispatch_time(0, 10000000000);
        connectionQueue = [(PTPCPassiveCollectionService *)selfCopy connectionQueue];
        dispatch_after(v135, connectionQueue, &stru_100020B70);

        v35 = v151;
        v42 = v152;
LABEL_120:
        v28 = v141;
LABEL_121:

LABEL_122:
        v65 = v148;
        goto LABEL_123;
      }

      v101 = sub_10000B5D4();
      v94 = &AnalyticsSendEvent_ptr;
      if (os_signpost_enabled(v101))
      {
        localizedDescription4 = [v89 localizedDescription];
        v103 = localizedDescription4;
        v104 = @"Unknown";
        if (localizedDescription4)
        {
          v104 = localizedDescription4;
        }

        *buf = 138543618;
        v170 = v40;
        v171 = 2114;
        v172 = v104;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v101, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToPostUserNotification", "Non-fatal error: Failed to post user notification for '%{public}@' due to error: %{public}@", buf, 0x16u);
      }

      v90 = 0;
      v91 = 0;
      v156 = 0;
    }

    else
    {
      if (!v40)
      {
        v105 = sub_10000B5D4();
        if (os_signpost_enabled(v105))
        {
          *buf = 138543618;
          v170 = v155;
          v171 = 2114;
          v172 = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v105, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ArchivingFailure", "Failed to archive '%{public}@ to '%{public}@'", buf, 0x16u);
        }

        v156 = [NSError passiveTraceError:2 description:@"Archiving collected trace files failed"];
        v33 = v140;
        if (settings)
        {
          instrumentationConfig3 = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
          clearPresetSettings3 = [instrumentationConfig3 clearPresetSettings];
        }

        [(PTPCPassiveCollectionService *)selfCopy _generateCollectionErrorCoreAnalyticsTelemetry:4 traceWindowStartDate:v38 traceWindowEndDate:v140 collectionType:typeCopy];
        if (v149)
        {
          v149[2]();
        }

        v108 = sub_10000B758();
        v91 = v108;
        v109 = qword_100025A60;
        if ((qword_100025A60 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v108))
        {
          goto LABEL_121;
        }

        localizedDescription5 = [v156 localizedDescription];
        v111 = localizedDescription5;
        v112 = @"Unknown";
        if (localizedDescription5)
        {
          v112 = localizedDescription5;
        }

        *buf = 138543362;
        v170 = v112;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v91, OS_SIGNPOST_INTERVAL_END, v109, "CollectingTrace", "Failed due to error: %{public}@", buf, 0xCu);

        goto LABEL_120;
      }

      v95 = v40;
      v96 = +[NSFileManager defaultManager];
      v97 = [v96 attributesOfItemAtPath:v95 error:0];
      v143 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v97 fileSize]);

      v156 = v95;
      [v95 UTF8String];
      v98 = sandbox_extension_issue_file();
      v94 = &AnalyticsSendEvent_ptr;
      if (!v98)
      {
        v113 = sub_10000B5D4();
        v33 = v140;
        if (os_signpost_enabled(v113))
        {
          *buf = 138543362;
          v170 = v156;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v113, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SandboxExtensionFailure", "Failed to issue RW extension for '%{public}@", buf, 0xCu);
        }

        v114 = +[NSFileManager defaultManager];
        v158 = 0;
        v115 = [v114 removeItemAtPath:v156 error:&v158];
        v116 = v158;

        if ((v115 & 1) == 0)
        {
          v117 = sub_10000B5D4();
          if (os_signpost_enabled(v117))
          {
            localizedDescription6 = [v116 localizedDescription];
            v119 = localizedDescription6;
            v120 = @"Unknown";
            if (localizedDescription6)
            {
              v120 = localizedDescription6;
            }

            *buf = 138543618;
            v170 = v156;
            v171 = 2112;
            v172 = v120;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v117, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ArchiveCleanupFailure", "Failed to cleanup '%{public}@' due to error: %@", buf, 0x16u);
          }
        }

        v121 = [NSError passiveTraceError:2 description:@"Failed to issue sandbox extension"];
        if (settings)
        {
          instrumentationConfig4 = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
          clearPresetSettings4 = [instrumentationConfig4 clearPresetSettings];
        }

        [(PTPCPassiveCollectionService *)selfCopy _generateCollectionErrorCoreAnalyticsTelemetry:5 traceWindowStartDate:v38 traceWindowEndDate:v140 collectionType:typeCopy];
        if (v149)
        {
          v149[2]();
        }

        v124 = sub_10000B758();
        v125 = v124;
        v126 = qword_100025A60;
        if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v124))
        {
          localizedDescription7 = [v121 localizedDescription];
          v128 = localizedDescription7;
          v129 = @"Unknown";
          if (localizedDescription7)
          {
            v129 = localizedDescription7;
          }

          *buf = 138543362;
          v170 = v129;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v125, OS_SIGNPOST_INTERVAL_END, v126, "CollectingTrace", "Failed due to error: %{public}@", buf, 0xCu);

          v33 = v140;
        }

        v35 = v151;
        v42 = v152;
        v28 = v141;
        v91 = v143;
        goto LABEL_121;
      }

      v99 = v98;
      v100 = [NSString stringWithUTF8String:v98];
      free(v99);
      v89 = sub_10000B758();
      if (os_signpost_enabled(v89))
      {
        *buf = 138543362;
        v91 = v156;
        v170 = v156;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v89, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollectionSuccess", "Successfully archived to '%{public}@'", buf, 0xCu);
        v90 = v143;
      }

      else
      {
        v90 = v143;
        v91 = v156;
      }

      v156 = v100;
    }

    settingsCopy2 = settings;
    v93 = v139;
    goto LABEL_112;
  }

  v34 = [NSError passiveTraceError:2 description:@"Failed to collect any trace files due to unknown error"];
  v38 = v30;
  if (settings)
  {
    instrumentationConfig5 = [(PTPCPassiveCollectionService *)selfCopy instrumentationConfig];
    clearPresetSettings5 = [instrumentationConfig5 clearPresetSettings];
  }

  [(PTPCPassiveCollectionService *)selfCopy _generateCollectionErrorCoreAnalyticsTelemetry:3 traceWindowStartDate:v30 traceWindowEndDate:v33 collectionType:typeCopy];
  v35 = v151;
  if (callbackCopy)
  {
    (callbackCopy[2])(callbackCopy, 0, 0, v34);
  }

  v60 = sub_10000B758();
  v40 = v60;
  v61 = qword_100025A60;
  if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
  {
    localizedDescription8 = [(__CFString *)v34 localizedDescription];
    v63 = localizedDescription8;
    v64 = @"Unknown";
    if (localizedDescription8)
    {
      v64 = localizedDescription8;
    }

    *buf = 138543362;
    v170 = v64;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, v61, "CollectingTrace", "Failed due to error: %{public}@", buf, 0xCu);

    v35 = v151;
  }

  v65 = v148;
  v42 = v152;
LABEL_123:
}

- (void)collectWithStartDate:(id)date endDate:(id)endDate traceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback
{
  dateCopy = date;
  endDateCopy = endDate;
  prefixCopy = prefix;
  callbackCopy = callback;
  collectionQueue = [(PTPCPassiveCollectionService *)self collectionQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000E5F8;
  v21[3] = &unk_100020B98;
  v21[4] = self;
  v22 = dateCopy;
  v23 = endDateCopy;
  v24 = prefixCopy;
  notificationCopy = notification;
  v25 = callbackCopy;
  v17 = callbackCopy;
  v18 = prefixCopy;
  v19 = endDateCopy;
  v20 = dateCopy;
  dispatch_async(collectionQueue, v21);
}

- (void)collectLookbackIntervalWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback
{
  prefixCopy = prefix;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig collectionLookbackInterval];
  v12 = v11;

  v13 = [NSDate dateWithTimeIntervalSinceNow:-v12];
  v14 = +[NSDate date];
  collectionQueue = [(PTPCPassiveCollectionService *)self collectionQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000E7F4;
  v20[3] = &unk_100020B98;
  v20[4] = self;
  v21 = v13;
  v22 = v14;
  v23 = prefixCopy;
  notificationCopy = notification;
  v24 = callbackCopy;
  v16 = callbackCopy;
  v17 = prefixCopy;
  v18 = v14;
  v19 = v13;
  dispatch_async(collectionQueue, v20);
}

- (void)_collectAndClearCurrentSettingWithTraceNamePrefix:(id)prefix triggerUserNotification:(BOOL)notification callback:(id)callback
{
  prefixCopy = prefix;
  callbackCopy = callback;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  imitationRecordStartDate = [passiveCollectionConfig imitationRecordStartDate];

  passiveCollectionConfig2 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig2 setImitationRecordStartDate:0];

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  currentPresetSetting = [instrumentationConfig currentPresetSetting];

  if (currentPresetSetting)
  {
    v15 = sub_1000041C0(currentPresetSetting);
    if (v15 && imitationRecordStartDate)
    {
      if (currentPresetSetting == 1)
      {
        v16 = 3;
      }

      else
      {
        v16 = 0;
      }

      v17 = +[NSDate date];
      collectionQueue = [(PTPCPassiveCollectionService *)self collectionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000EB00;
      block[3] = &unk_100020BC0;
      block[4] = self;
      v25 = imitationRecordStartDate;
      v26 = v17;
      v30 = v16;
      notificationCopy = notification;
      v27 = prefixCopy;
      v28 = v15;
      v29 = callbackCopy;
      v19 = v15;
      v20 = v17;
      dispatch_async(collectionQueue, block);
    }

    else
    {
      v21 = sub_10000B5D4();
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceCollectionFromRecordingSessionFailed", "", buf, 2u);
      }

      instrumentationConfig2 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
      clearPresetSettings = [instrumentationConfig2 clearPresetSettings];

      v20 = [NSError passiveTraceError:0 description:@"Collection failed due to unknown internal error"];
      (*(callbackCopy + 2))(callbackCopy, 0, 0, v20);
    }
  }
}

- (void)getCollectLookbackInterval:(id)interval
{
  intervalCopy = interval;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig collectionLookbackInterval];
  (*(interval + 2))(intervalCopy);
}

- (void)setCollectLookbackInterval:(double)interval callback:(id)callback
{
  if (interval <= 0.0)
  {
    callbackCopy = callback;
    callbackCopy2 = [[NSString alloc] initWithFormat:@"Invalid lookback interval: %f seconds. Must be > 0", *&interval];
    v8 = [NSError passiveTraceError:5 description:?];
    callbackCopy[2](callbackCopy, v8);
  }

  else
  {
    callbackCopy2 = callback;
    passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
    [passiveCollectionConfig setCollectionLookbackInterval:interval];

    callbackCopy2[2](callbackCopy2, 0);
  }
}

- (void)resetCollectLookbackInterval:(id)interval
{
  intervalCopy = interval;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig resetCollectionLookbackInterval];

  intervalCopy[2](intervalCopy, 0);
}

- (void)getImitationRecordStartDate:(id)date
{
  dateCopy = date;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  imitationRecordStartDate = [passiveCollectionConfig imitationRecordStartDate];
  (*(date + 2))(dateCopy, imitationRecordStartDate);
}

- (void)setImitationRecordStartDate:(id)date callback:(id)callback
{
  callbackCopy = callback;
  dateCopy = date;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setImitationRecordStartDate:dateCopy];

  callbackCopy[2](callbackCopy, 0);
}

- (void)getCurrentPresetSettings:(id)settings
{
  settingsCopy = settings;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  currentPresetSetting = [instrumentationConfig currentPresetSetting];

  if (currentPresetSetting)
  {
    currentPresetSetting = [NSNumber numberWithUnsignedInteger:currentPresetSetting];
  }

  settingsCopy[2](settingsCopy, currentPresetSetting, 0);
}

- (void)getInstrumentationConfigIsLocked:(id)locked
{
  lockedCopy = locked;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [instrumentationConfig instrumentationSettingsAreLocked]);
  (*(locked + 2))(lockedCopy, v6, 0);
}

- (void)applyPresetSettings:(unint64_t)settings callback:(id)callback
{
  callbackCopy = callback;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v7 = [instrumentationConfig applyPresetSettings:settings];

  if (!v7)
  {
    v8 = +[NSDate date];
    passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
    [passiveCollectionConfig setImitationRecordStartDate:v8];
  }

  callbackCopy[2](callbackCopy, v7);
}

- (void)clearCurrentPresetSettings:(id)settings
{
  settingsCopy = settings;
  passiveCollectionConfig = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [passiveCollectionConfig setImitationRecordStartDate:0];

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  clearPresetSettings = [instrumentationConfig clearPresetSettings];
  settingsCopy[2](settingsCopy, clearPresetSettings);
}

- (void)getMssPmiCycleInterval:(id)interval
{
  intervalCopy = interval;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [instrumentationConfig mssPMICycleInterval:&v8];
  v7 = v8;

  intervalCopy[2](intervalCopy, v6, v7);
}

- (void)setMssPmiCycleInterval:(id)interval callback:(id)callback
{
  callbackCopy = callback;
  intervalCopy = interval;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v9 = [instrumentationConfig setMssPMICycleInterval:intervalCopy];

  (*(callback + 2))(callbackCopy, v9);
}

- (void)getMetalPerDrawableSignpostsEnabled:(id)enabled
{
  enabledCopy = enabled;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [instrumentationConfig perDrawableEnabled:&v8];
  v7 = v8;

  enabledCopy[2](enabledCopy, v6, v7);
}

- (void)setMetalPerDrawableSignpostsEnabled:(id)enabled callback:(id)callback
{
  callbackCopy = callback;
  enabledCopy = enabled;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v9 = [instrumentationConfig setPerDrawableEnabled:enabledCopy];

  (*(callback + 2))(callbackCopy, v9);
}

- (void)getMetricMonitoredAppProcessNames:(id)names
{
  namesCopy = names;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [instrumentationConfig metricMonitoredAppProcessNames:&v8];
  v7 = v8;

  namesCopy[2](namesCopy, v6, v7);
}

- (void)setMetricMonitoredAppProcessNames:(id)names callback:(id)callback
{
  callbackCopy = callback;
  namesCopy = names;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v9 = [instrumentationConfig setMetricMonitoredAppProcessNames:namesCopy];

  (*(callback + 2))(callbackCopy, v9);
}

- (void)getMetricMonitoringEnabled:(id)enabled
{
  enabledCopy = enabled;
  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [instrumentationConfig metricMonitoringEnabled:&v8];
  v7 = v8;

  enabledCopy[2](enabledCopy, v6, v7);
}

- (void)setMetricMonitoringEnabled:(id)enabled callback:(id)callback
{
  callbackCopy = callback;
  if (enabled)
  {
    enabled = [enabled BOOLValue];
  }

  instrumentationConfig = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v7 = [instrumentationConfig setMetricMonitoringEnabled:enabled];
  callbackCopy[2](callbackCopy, v7);
}

@end