@interface PTPCPassiveCollectionService
- (BOOL)_connectionIsEntitled:(id)a3 toEntitlement:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PTPCPassiveCollectionService)init;
- (void)_collectAndClearCurrentSettingWithTraceNamePrefix:(id)a3 triggerUserNotification:(BOOL)a4 callback:(id)a5;
- (void)_collectionQueue_collectWithStartDate:(id)a3 endDate:(id)a4 traceNamePrefix:(id)a5 collectionType:(unsigned __int8)a6 triggerUserNotification:(BOOL)a7 collectionConfig:(id)a8 clearPresetSettings:(BOOL)a9 callback:(id)a10;
- (void)_confirmTraceDirectoryExists;
- (void)_generateCoreAnalyticsTelemetry:(id)a3 collectionEndDate:(id)a4 traceWindowStartDate:(id)a5 traceWindowEndDate:(id)a6 traceCount:(unint64_t)a7 totalTraceSizeBytes:(unint64_t)a8 archiveSizeBytes:(id)a9 collectionType:(unsigned __int8)a10;
- (void)_initCollectionConfig;
- (void)_initInstrumentationConfig;
- (void)_registerForMetricMonitorTimeout;
- (void)applyPresetSettings:(unint64_t)a3 callback:(id)a4;
- (void)clearCurrentPresetSettings:(id)a3;
- (void)collectLookbackIntervalWithTraceNamePrefix:(id)a3 triggerUserNotification:(BOOL)a4 callback:(id)a5;
- (void)collectWithStartDate:(id)a3 endDate:(id)a4 traceNamePrefix:(id)a5 triggerUserNotification:(BOOL)a6 callback:(id)a7;
- (void)getCollectAppInFocus:(id)a3;
- (void)getCollectLoggingAppLaunch:(id)a3;
- (void)getCollectLoggingHangs:(id)a3;
- (void)getCollectLoggingMetalFramePacing:(id)a3;
- (void)getCollectLoggingPerfPowerMetrics:(id)a3;
- (void)getCollectLoggingScrolling:(id)a3;
- (void)getCollectLoggingUserInteraction:(id)a3;
- (void)getCollectLookbackInterval:(id)a3;
- (void)getCollectMSS:(id)a3;
- (void)getCurrentPresetSettings:(id)a3;
- (void)getImitationRecordStartDate:(id)a3;
- (void)getInstrumentationConfigIsLocked:(id)a3;
- (void)getMetalPerDrawableSignpostsEnabled:(id)a3;
- (void)getMetricMonitoredAppProcessNames:(id)a3;
- (void)getMetricMonitoringEnabled:(id)a3;
- (void)getMssPmiCycleInterval:(id)a3;
- (void)resetCollectAppInFocus:(id)a3;
- (void)resetCollectLoggingAppLaunch:(id)a3;
- (void)resetCollectLoggingHangs:(id)a3;
- (void)resetCollectLoggingMetalFramePacing:(id)a3;
- (void)resetCollectLoggingPerfPowerMetrics:(id)a3;
- (void)resetCollectLoggingScrolling:(id)a3;
- (void)resetCollectLoggingUserInteraction:(id)a3;
- (void)resetCollectLookbackInterval:(id)a3;
- (void)resetCollectMSS:(id)a3;
- (void)resetSettings:(id)a3;
- (void)setCollectLookbackInterval:(double)a3 callback:(id)a4;
- (void)setImitationRecordStartDate:(id)a3 callback:(id)a4;
- (void)setMetalPerDrawableSignpostsEnabled:(id)a3 callback:(id)a4;
- (void)setMetricMonitoredAppProcessNames:(id)a3 callback:(id)a4;
- (void)setMetricMonitoringEnabled:(id)a3 callback:(id)a4;
- (void)setMssPmiCycleInterval:(id)a3 callback:(id)a4;
@end

@implementation PTPCPassiveCollectionService

- (BOOL)_connectionIsEntitled:(id)a3 toEntitlement:(id)a4
{
  v4 = [a3 valueForEntitlement:a4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 processIdentifier];
  proc_name(v8, buffer, 0x20u);
  v9 = [NSString stringWithUTF8String:buffer];
  if (![(PTPCPassiveCollectionService *)self _connectionIsEntitled:v7 toEntitlement:@"com.apple.PerformanceTrace.PassiveConfigurationAccess"])
  {
    v16 = sub_10000B5D4();
    if (os_signpost_enabled(v16))
    {
      *buf = 138543618;
      v42 = v9;
      v43 = 1024;
      v44 = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientLacksEntitlement", "Client '%{public}@ [%u]' is missing required entitlement", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v10 = [(PTPCPassiveCollectionService *)self pidToConnection];
  v11 = [NSNumber numberWithInt:v8];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = v12 == 0;

  if (!v13)
  {
    v14 = sub_10000B5D4();
    if (os_signpost_enabled(v14))
    {
      v15 = [(PTPCPassiveCollectionService *)self pidToConnection];
      *buf = 138543874;
      v42 = v9;
      v43 = 1024;
      v44 = v8;
      v45 = 1024;
      v46 = [v15 count];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PreExistingClientProcessConnection", "Client '%{public}@ [%u]' already has a connection. %u concurrent client(s) at this time.", buf, 0x18u);
    }

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTPCPassiveCollectionConfigurationInterface];
  [v7 setExportedInterface:v19];

  [v7 setExportedObject:self];
  v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTPCPassiveCollectionClientDelegate];
  [v7 setRemoteObjectInterface:v20];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000B618;
  v36[3] = &unk_100020B00;
  objc_copyWeak(&v38, &location);
  v39 = v8;
  v21 = v9;
  v37 = v21;
  [v7 setInvalidationHandler:v36];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10000B79C;
  v31 = &unk_100020B28;
  objc_copyWeak(&v34, &location);
  v35 = v8;
  v22 = v21;
  v32 = v22;
  v33 = self;
  [v7 setInterruptionHandler:&v28];
  v23 = [(PTPCPassiveCollectionService *)self pidToConnection:v28];
  v24 = [NSNumber numberWithInt:v8];
  [v23 setObject:v7 forKeyedSubscript:v24];

  v25 = sub_10000B758();
  if (os_signpost_enabled(v25))
  {
    v26 = [(PTPCPassiveCollectionService *)self pidToConnection];
    v27 = [v26 count];
    *buf = 138543874;
    v42 = v22;
    v43 = 1024;
    v44 = v8;
    v45 = 1024;
    v46 = v27;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewCollectionClientConnection", "Opened new connection for client '%{public}@ [%u]'. %u concurrent client(s) at this time.", buf, 0x18u);
  }

  [v7 resume];
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

  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];

  if (!v6 || v4)
  {
    v7 = sub_10000B5D4();
    if (os_signpost_enabled(v7))
    {
      v8 = [v4 localizedDescription];
      v9 = v8;
      v10 = @"Unknown";
      if (v8)
      {
        v10 = v8;
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

      v16 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];

      if (v16)
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

  v6 = [(PTPCPassiveCollectionService *)self instrumentationConfig];

  if (!v6)
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
  v3 = [(PTPCPassiveCollectionService *)self connectionQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000BD40;
  handler[3] = &unk_100020B50;
  objc_copyWeak(&v7, &location);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v3, handler);

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

- (void)getCollectMSS:(id)a3
{
  v5 = a3;
  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(a3 + 2))(v5, [v6 collectMSS]);
}

- (void)resetCollectMSS:(id)a3
{
  v5 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetCollectMSS];

  v5[2](v5, 0);
}

- (void)getCollectAppInFocus:(id)a3
{
  v5 = a3;
  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(a3 + 2))(v5, [v6 collectAppInFocus]);
}

- (void)resetCollectAppInFocus:(id)a3
{
  v5 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetCollectAppInFocus];

  v5[2](v5, 0);
}

- (void)getCollectLoggingPerfPowerMetrics:(id)a3
{
  v5 = a3;
  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(a3 + 2))(v5, [v6 collectLoggingPerfPowerMetrics]);
}

- (void)resetCollectLoggingPerfPowerMetrics:(id)a3
{
  v5 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetCollectLoggingPerfPowerMetrics];

  v5[2](v5, 0);
}

- (void)getCollectLoggingHangs:(id)a3
{
  v5 = a3;
  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(a3 + 2))(v5, [v6 collectLoggingHangs]);
}

- (void)resetCollectLoggingHangs:(id)a3
{
  v5 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetCollectLoggingHangs];

  v5[2](v5, 0);
}

- (void)getCollectLoggingUserInteraction:(id)a3
{
  v5 = a3;
  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(a3 + 2))(v5, [v6 collectLoggingUserInteraction]);
}

- (void)resetCollectLoggingUserInteraction:(id)a3
{
  v5 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetCollectLoggingUserInteraction];

  v5[2](v5, 0);
}

- (void)getCollectLoggingMetalFramePacing:(id)a3
{
  v5 = a3;
  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(a3 + 2))(v5, [v6 collectLoggingMetalFramePacing]);
}

- (void)resetCollectLoggingMetalFramePacing:(id)a3
{
  v5 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetCollectLoggingMetalFramePacing];

  v5[2](v5, 0);
}

- (void)getCollectLoggingScrolling:(id)a3
{
  v5 = a3;
  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(a3 + 2))(v5, [v6 collectLoggingScrolling]);
}

- (void)resetCollectLoggingScrolling:(id)a3
{
  v5 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetCollectLoggingScrolling];

  v5[2](v5, 0);
}

- (void)getCollectLoggingAppLaunch:(id)a3
{
  v5 = a3;
  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  (*(a3 + 2))(v5, [v6 collectLoggingAppLaunch]);
}

- (void)resetCollectLoggingAppLaunch:(id)a3
{
  v5 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetCollectLoggingAppLaunch];

  v5[2](v5, 0);
}

- (void)resetSettings:(id)a3
{
  v7 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetSettings];

  v5 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v6 = [v5 resetPersistedDefaultsAndRestoreDefaultInstrumentationSettings];

  v7[2](v7, 0);
}

- (void)_generateCoreAnalyticsTelemetry:(id)a3 collectionEndDate:(id)a4 traceWindowStartDate:(id)a5 traceWindowEndDate:(id)a6 traceCount:(unint64_t)a7 totalTraceSizeBytes:(unint64_t)a8 archiveSizeBytes:(id)a9 collectionType:(unsigned __int8)a10
{
  v17 = a9;
  v18 = a6;
  v19 = a5;
  [a4 timeIntervalSinceDate:a3];
  v21 = v20;
  [v18 timeIntervalSinceDate:v19];
  v23 = v22;

  v49[0] = @"TimeToCollectSeconds";
  v24 = [NSNumber numberWithDouble:v21];
  v50[0] = v24;
  v49[1] = @"CollectionWindowSeconds";
  v25 = [NSNumber numberWithDouble:v23];
  v50[1] = v25;
  v49[2] = @"TraceCount";
  v26 = [NSNumber numberWithUnsignedLongLong:a7];
  v50[2] = v26;
  v49[3] = @"TotalTraceBytes";
  v27 = [NSNumber numberWithUnsignedLongLong:a8];
  v50[3] = v27;
  v49[4] = @"CollectionType";
  v28 = [NSNumber numberWithUnsignedChar:a10];
  v50[4] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];
  v30 = [v29 mutableCopy];

  if (v17)
  {
    [v30 setObject:v17 forKeyedSubscript:@"ArchiveSizeBytes"];
  }

  v31 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v42 = 0;
  v32 = [v31 perDrawableEnabled:&v42];
  v33 = v42;

  if (v32)
  {
    [v30 setObject:v32 forKeyedSubscript:@"MetalPerDrawableEnabled"];
  }

  v34 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v41 = 0;
  v35 = [v34 mssPMICycleInterval:&v41];
  v36 = v41;

  if (v35)
  {
    [v30 setObject:v35 forKeyedSubscript:@"MSSPMIInterval"];
  }

  v37 = sub_10000CFA4();
  if (os_signpost_enabled(v37))
  {
    v38 = [(PTPCPassiveCollectionService *)self generateCoreAnalyticsTelemetry];
    v39 = @"NO";
    if (v38)
    {
      v39 = @"YES";
    }

    if ((a10 - 1) > 3u)
    {
      v40 = @"Unknown";
    }

    else
    {
      v40 = *(&off_100020C40 + (a10 - 1));
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

- (void)_collectionQueue_collectWithStartDate:(id)a3 endDate:(id)a4 traceNamePrefix:(id)a5 collectionType:(unsigned __int8)a6 triggerUserNotification:(BOOL)a7 collectionConfig:(id)a8 clearPresetSettings:(BOOL)a9 callback:(id)a10
{
  v142 = a7;
  v144 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v154 = a8;
  v17 = a10;
  v148 = os_transaction_create();
  if (!v16)
  {
    v16 = [v154 name];
  }

  v153 = self;
  [(PTPCPassiveCollectionService *)self _confirmTraceDirectoryExists];
  v18 = sub_10000AB30(v14);
  v19 = sub_10000AB30(v15);
  v151 = v16;
  v20 = [NSString stringWithFormat:@"%@_%@_to_%@", v16, v18, v19];

  v21 = sub_10000B758();
  v22 = v21;
  v23 = qword_100025A60;
  if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    if (v142)
    {
      v24 = @"Notification";
    }

    else
    {
      v24 = @"Handle";
    }

    v25 = [v154 debugDescription];
    *buf = 138544386;
    v170 = v20;
    v171 = 2114;
    v172 = v14;
    v173 = 2114;
    v174 = v15;
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
  v29 = [[_TtC20ptpassivecollectiond20PTPCPassiveCollector alloc] initWithConfig:v154 traceNamePrefix:v20 outputDirectory:v150];
  v166 = 0;
  v30 = v14;
  v31 = [(PTPCPassiveCollector *)v29 collectWithStartDate:v14 endDate:v15 error:&v166];
  v32 = v166;
  v33 = v15;
  v149 = v17;
  v145 = v31;
  v146 = v29;
  if (v32)
  {
    v34 = v32;
    v35 = v151;
    if (a9)
    {
      v36 = [(PTPCPassiveCollectionService *)v153 instrumentationConfig];
      v37 = [v36 clearPresetSettings];
    }

    v38 = v30;
    [(PTPCPassiveCollectionService *)v153 _generateCollectionErrorCoreAnalyticsTelemetry:2 traceWindowStartDate:v30 traceWindowEndDate:v33 collectionType:v144];
    if (v17)
    {
      (v17[2])(v17, 0, 0, v34);
    }

    v39 = sub_10000B758();
    v40 = v39;
    v41 = qword_100025A60;
    v42 = v152;
    if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      v43 = [(__CFString *)v34 localizedDescription];
      v44 = v43;
      v45 = @"Unknown";
      if (v43)
      {
        v45 = v43;
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
    v140 = v15;
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
          v53 = [v47[192] defaultManager];
          v161 = 0;
          v54 = [v53 attributesOfItemAtPath:v52 error:&v161];
          v55 = v161;
          v56 = [v54 fileSize];

          v57 = sub_10000B758();
          if (os_signpost_enabled(v57))
          {
            *buf = 138543874;
            v170 = v52;
            v171 = 2050;
            v172 = v56;
            v173 = 2114;
            v174 = v55;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollectedTrace", "Collected trace: '%{public}@', %{public}llu bytes (size error: %{public}@", buf, 0x20u);
          }

          v49 += v56;
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

    if (v142)
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
    v68 = [v67 lastPathComponent];
    v69 = [NSString stringWithFormat:@"%@.aar", v68];
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
        v74 = [v72 localizedDescription];
        v75 = v74;
        v76 = @"Unknown";
        *buf = 138543874;
        v170 = v155;
        if (v74)
        {
          v76 = v74;
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

    v77 = [v47[192] defaultManager];
    v160 = 0;
    v78 = [v77 removeItemAtURL:v150 error:&v160];
    v79 = v160;

    if (v78)
    {
      v80 = sub_10000B758();
      v38 = v138;
      if (!os_signpost_enabled(v80))
      {
        goto LABEL_60;
      }

      v81 = [v150 path];
      *buf = 138543362;
      v170 = v81;
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

      v81 = [v150 path];
      v82 = [v79 localizedDescription];
      v83 = v82;
      v84 = @"Unknown";
      if (v82)
      {
        v84 = v82;
      }

      *buf = 138543618;
      v170 = v81;
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

    if (v142)
    {
      v159 = 0;
      v88 = sub_10000175C(v40, &v159);
      v89 = v159;
      if (v88)
      {
        v90 = 0;
        v91 = 0;
        v156 = 0;
        v92 = a9;
        v93 = v139;
        v94 = &AnalyticsSendEvent_ptr;
LABEL_112:

        v130 = [v94[204] date];
        LOBYTE(v137) = v144;
        -[PTPCPassiveCollectionService _generateCoreAnalyticsTelemetry:collectionEndDate:traceWindowStartDate:traceWindowEndDate:traceCount:totalTraceSizeBytes:archiveSizeBytes:collectionType:](v153, "_generateCoreAnalyticsTelemetry:collectionEndDate:traceWindowStartDate:traceWindowEndDate:traceCount:totalTraceSizeBytes:archiveSizeBytes:collectionType:", v152, v130, v38, v140, [obj count], v49, v90, v137);
        if (v92)
        {
          v131 = [(PTPCPassiveCollectionService *)v153 instrumentationConfig];
          v132 = [v131 clearPresetSettings];
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
        v136 = [(PTPCPassiveCollectionService *)v153 connectionQueue];
        dispatch_after(v135, v136, &stru_100020B70);

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
        v102 = [v89 localizedDescription];
        v103 = v102;
        v104 = @"Unknown";
        if (v102)
        {
          v104 = v102;
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
        if (a9)
        {
          v106 = [(PTPCPassiveCollectionService *)v153 instrumentationConfig];
          v107 = [v106 clearPresetSettings];
        }

        [(PTPCPassiveCollectionService *)v153 _generateCollectionErrorCoreAnalyticsTelemetry:4 traceWindowStartDate:v38 traceWindowEndDate:v140 collectionType:v144];
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

        v110 = [v156 localizedDescription];
        v111 = v110;
        v112 = @"Unknown";
        if (v110)
        {
          v112 = v110;
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
            v118 = [v116 localizedDescription];
            v119 = v118;
            v120 = @"Unknown";
            if (v118)
            {
              v120 = v118;
            }

            *buf = 138543618;
            v170 = v156;
            v171 = 2112;
            v172 = v120;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v117, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ArchiveCleanupFailure", "Failed to cleanup '%{public}@' due to error: %@", buf, 0x16u);
          }
        }

        v121 = [NSError passiveTraceError:2 description:@"Failed to issue sandbox extension"];
        if (a9)
        {
          v122 = [(PTPCPassiveCollectionService *)v153 instrumentationConfig];
          v123 = [v122 clearPresetSettings];
        }

        [(PTPCPassiveCollectionService *)v153 _generateCollectionErrorCoreAnalyticsTelemetry:5 traceWindowStartDate:v38 traceWindowEndDate:v140 collectionType:v144];
        if (v149)
        {
          v149[2]();
        }

        v124 = sub_10000B758();
        v125 = v124;
        v126 = qword_100025A60;
        if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v124))
        {
          v127 = [v121 localizedDescription];
          v128 = v127;
          v129 = @"Unknown";
          if (v127)
          {
            v129 = v127;
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

    v92 = a9;
    v93 = v139;
    goto LABEL_112;
  }

  v34 = [NSError passiveTraceError:2 description:@"Failed to collect any trace files due to unknown error"];
  v38 = v30;
  if (a9)
  {
    v58 = [(PTPCPassiveCollectionService *)v153 instrumentationConfig];
    v59 = [v58 clearPresetSettings];
  }

  [(PTPCPassiveCollectionService *)v153 _generateCollectionErrorCoreAnalyticsTelemetry:3 traceWindowStartDate:v30 traceWindowEndDate:v33 collectionType:v144];
  v35 = v151;
  if (v17)
  {
    (v17[2])(v17, 0, 0, v34);
  }

  v60 = sub_10000B758();
  v40 = v60;
  v61 = qword_100025A60;
  if ((qword_100025A60 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
  {
    v62 = [(__CFString *)v34 localizedDescription];
    v63 = v62;
    v64 = @"Unknown";
    if (v62)
    {
      v64 = v62;
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

- (void)collectWithStartDate:(id)a3 endDate:(id)a4 traceNamePrefix:(id)a5 triggerUserNotification:(BOOL)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(PTPCPassiveCollectionService *)self collectionQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000E5F8;
  v21[3] = &unk_100020B98;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v26 = a6;
  v25 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(v16, v21);
}

- (void)collectLookbackIntervalWithTraceNamePrefix:(id)a3 triggerUserNotification:(BOOL)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v10 collectionLookbackInterval];
  v12 = v11;

  v13 = [NSDate dateWithTimeIntervalSinceNow:-v12];
  v14 = +[NSDate date];
  v15 = [(PTPCPassiveCollectionService *)self collectionQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000E7F4;
  v20[3] = &unk_100020B98;
  v20[4] = self;
  v21 = v13;
  v22 = v14;
  v23 = v8;
  v25 = a4;
  v24 = v9;
  v16 = v9;
  v17 = v8;
  v18 = v14;
  v19 = v13;
  dispatch_async(v15, v20);
}

- (void)_collectAndClearCurrentSettingWithTraceNamePrefix:(id)a3 triggerUserNotification:(BOOL)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  v11 = [v10 imitationRecordStartDate];

  v12 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v12 setImitationRecordStartDate:0];

  v13 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v14 = [v13 currentPresetSetting];

  if (v14)
  {
    v15 = sub_1000041C0(v14);
    if (v15 && v11)
    {
      if (v14 == 1)
      {
        v16 = 3;
      }

      else
      {
        v16 = 0;
      }

      v17 = +[NSDate date];
      v18 = [(PTPCPassiveCollectionService *)self collectionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000EB00;
      block[3] = &unk_100020BC0;
      block[4] = self;
      v25 = v11;
      v26 = v17;
      v30 = v16;
      v31 = a4;
      v27 = v8;
      v28 = v15;
      v29 = v9;
      v19 = v15;
      v20 = v17;
      dispatch_async(v18, block);
    }

    else
    {
      v21 = sub_10000B5D4();
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TraceCollectionFromRecordingSessionFailed", "", buf, 2u);
      }

      v22 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
      v23 = [v22 clearPresetSettings];

      v20 = [NSError passiveTraceError:0 description:@"Collection failed due to unknown internal error"];
      (*(v9 + 2))(v9, 0, 0, v20);
    }
  }
}

- (void)getCollectLookbackInterval:(id)a3
{
  v5 = a3;
  v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v6 collectionLookbackInterval];
  (*(a3 + 2))(v5);
}

- (void)setCollectLookbackInterval:(double)a3 callback:(id)a4
{
  if (a3 <= 0.0)
  {
    v7 = a4;
    v9 = [[NSString alloc] initWithFormat:@"Invalid lookback interval: %f seconds. Must be > 0", *&a3];
    v8 = [NSError passiveTraceError:5 description:?];
    v7[2](v7, v8);
  }

  else
  {
    v9 = a4;
    v6 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
    [v6 setCollectionLookbackInterval:a3];

    v9[2](v9, 0);
  }
}

- (void)resetCollectLookbackInterval:(id)a3
{
  v5 = a3;
  v4 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v4 resetCollectionLookbackInterval];

  v5[2](v5, 0);
}

- (void)getImitationRecordStartDate:(id)a3
{
  v5 = a3;
  v7 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  v6 = [v7 imitationRecordStartDate];
  (*(a3 + 2))(v5, v6);
}

- (void)setImitationRecordStartDate:(id)a3 callback:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v7 setImitationRecordStartDate:v6];

  v8[2](v8, 0);
}

- (void)getCurrentPresetSettings:(id)a3
{
  v6 = a3;
  v4 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v5 = [v4 currentPresetSetting];

  if (v5)
  {
    v5 = [NSNumber numberWithUnsignedInteger:v5];
  }

  v6[2](v6, v5, 0);
}

- (void)getInstrumentationConfigIsLocked:(id)a3
{
  v5 = a3;
  v7 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 instrumentationSettingsAreLocked]);
  (*(a3 + 2))(v5, v6, 0);
}

- (void)applyPresetSettings:(unint64_t)a3 callback:(id)a4
{
  v10 = a4;
  v6 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v7 = [v6 applyPresetSettings:a3];

  if (!v7)
  {
    v8 = +[NSDate date];
    v9 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
    [v9 setImitationRecordStartDate:v8];
  }

  v10[2](v10, v7);
}

- (void)clearCurrentPresetSettings:(id)a3
{
  v4 = a3;
  v5 = [(PTPCPassiveCollectionService *)self passiveCollectionConfig];
  [v5 setImitationRecordStartDate:0];

  v7 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v6 = [v7 clearPresetSettings];
  v4[2](v4, v6);
}

- (void)getMssPmiCycleInterval:(id)a3
{
  v4 = a3;
  v5 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [v5 mssPMICycleInterval:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)setMssPmiCycleInterval:(id)a3 callback:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v9 = [v10 setMssPMICycleInterval:v8];

  (*(a4 + 2))(v7, v9);
}

- (void)getMetalPerDrawableSignpostsEnabled:(id)a3
{
  v4 = a3;
  v5 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [v5 perDrawableEnabled:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)setMetalPerDrawableSignpostsEnabled:(id)a3 callback:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v9 = [v10 setPerDrawableEnabled:v8];

  (*(a4 + 2))(v7, v9);
}

- (void)getMetricMonitoredAppProcessNames:(id)a3
{
  v4 = a3;
  v5 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [v5 metricMonitoredAppProcessNames:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)setMetricMonitoredAppProcessNames:(id)a3 callback:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v9 = [v10 setMetricMonitoredAppProcessNames:v8];

  (*(a4 + 2))(v7, v9);
}

- (void)getMetricMonitoringEnabled:(id)a3
{
  v4 = a3;
  v5 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v8 = 0;
  v6 = [v5 metricMonitoringEnabled:&v8];
  v7 = v8;

  v4[2](v4, v6, v7);
}

- (void)setMetricMonitoringEnabled:(id)a3 callback:(id)a4
{
  v8 = a4;
  if (a3)
  {
    a3 = [a3 BOOLValue];
  }

  v6 = [(PTPCPassiveCollectionService *)self instrumentationConfig];
  v7 = [v6 setMetricMonitoringEnabled:a3];
  v8[2](v8, v7);
}

@end