@interface RDDaemon
+ (void)initialize;
- (BOOL)isAuthorizedForSensor:(id)a3 bundleIdentifier:(id)a4;
- (BOOL)validateBundleRecord:(id)a3 withFilters:(id)a4;
- (NSDictionary)currentRecordingStatesForAnalytics:(NSDictionary *)result;
- (id)authorizedAndInterestedClientsForSensor:(id)a3;
- (int64_t)cacheDelete:(id)a3 purgeWithUrgency:(int64_t)a4 dryRun:(BOOL)a5;
- (int64_t)prerequisitesStatusForAnalytics:(id)a3;
- (void)authorizationBroadcaster:(id)a3 didSetDataCollectionEnabled:(BOOL)a4;
- (void)authorizationStore:(id)a3 didDetermineInitialAuthorizationValues:(id)a4;
- (void)authorizationStore:(id)a3 didUpdateAuthorizationsForBundleId:(id)a4 sensors:(id)a5;
- (void)autoEnableRecordingForSensors:(id)a3 bundleId:(id)a4;
- (void)dealloc;
- (void)dumpClientsWithReply:(id)a3;
- (void)dumpConfigurationsWithReply:(id)a3;
- (void)dumpDefaultsWithReply:(id)a3;
- (void)dumpStateCacheWithReply:(id)a3;
- (void)fetchAllDevices:(id)a3 reply:(id)a4;
- (void)fetchDeviceInformationForDeviceIdentifiers:(id)a3 reply:(id)a4;
- (void)fetchEligibilityStatusForBundleIdentifier:(id)a3 reply:(id)a4;
- (void)fetchEligibilityStatusForBundleIdentifier:(id)a3 sensor:(id)a4 reply:(id)a5;
- (void)fetchReaderMetadata:(id)a3 reply:(id)a4;
- (void)gizmoSync:(id)a3 didSyncRTCOffset:(double)a4 timeBeforeUpdate:(double)a5;
- (void)gizmoSync:(id)a3 didSyncState:(id)a4 deviceID:(id)a5;
- (void)gizmoSyncConnectedDevicesAdded:(id)a3;
- (void)launchEventCheckInActivity:(id)a3;
- (void)launchEventRunActivity:(id)a3;
- (void)launchEventXPCEventReceived:(id)a3;
- (void)listDatastoreWithReply:(id)a3;
- (void)removeAllSamplesForAllSensorsWithReply:(id)a3;
- (void)removeAllSamplesForCurrentSensorWithReply:(id)a3;
- (void)requestFileHandleForPruningAfterSegment:(id)a3 reply:(id)a4;
- (void)requestFileHandleForPruningSample:(double)a3 reply:(id)a4;
- (void)requestFileHandleForReading:(id)a3 afterSegment:(id)a4 reply:(id)a5;
- (void)requestFileHandleForWritingWithReply:(id)a3;
- (void)setWriterService:(id)a3 enabled:(BOOL)a4;
- (void)startPruningForSensor:(id)a3 deviceId:(id)a4;
- (void)startRecording:(id)a3 reply:(id)a4;
- (void)startWritingForSensor:(id)a3;
@end

@implementation RDDaemon

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071B30 = os_log_create("com.apple.SensorKit", "Daemon");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 72);
    objc_setProperty_nonatomic(self, v3, 0, 80);
    objc_setProperty_nonatomic(self, v4, 0, 88);
    objc_setProperty_nonatomic(self, v5, 0, 16);
  }

  writerListener = self->_writerListener;
  if (!writerListener)
  {

    readerListener = self->_readerListener;
    if (readerListener)
    {
      goto LABEL_12;
    }

LABEL_39:

    prunerListener = self->_prunerListener;
    if (prunerListener)
    {
      goto LABEL_20;
    }

LABEL_40:

    debuggingListener = self->_debuggingListener;
    if (debuggingListener)
    {
      goto LABEL_28;
    }

LABEL_41:

    authorizationBroadcaster = self->_authorizationBroadcaster;
    if (!authorizationBroadcaster)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  connections = writerListener->_connections;
  v8 = [(NSMapTable *)connections countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(connections);
        }

        [*(*(&v42 + 1) + 8 * i) invalidate];
      }

      v9 = [(NSMapTable *)connections countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v9);
  }

  [(NSMapTable *)writerListener->_connections removeAllObjects];
  [(NSXPCListener *)writerListener->_listener invalidate];

  readerListener = self->_readerListener;
  if (!readerListener)
  {
    goto LABEL_39;
  }

LABEL_12:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = readerListener->_connections;
  v14 = [(NSMapTable *)v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v42 + 1) + 8 * j) invalidate];
      }

      v15 = [(NSMapTable *)v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v15);
  }

  [(NSMapTable *)readerListener->_connections removeAllObjects];
  [(NSXPCListener *)readerListener->_listener invalidate];

  prunerListener = self->_prunerListener;
  if (!prunerListener)
  {
    goto LABEL_40;
  }

LABEL_20:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = prunerListener->_connections;
  v20 = [(NSMapTable *)v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v42 + 1) + 8 * k) invalidate];
      }

      v21 = [(NSMapTable *)v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v21);
  }

  [(NSMapTable *)prunerListener->_connections removeAllObjects];
  [(NSXPCListener *)prunerListener->_listener invalidate];

  debuggingListener = self->_debuggingListener;
  if (!debuggingListener)
  {
    goto LABEL_41;
  }

LABEL_28:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = debuggingListener->_connections;
  v26 = [(NSMapTable *)v25 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      for (m = 0; m != v27; m = m + 1)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v42 + 1) + 8 * m) invalidate];
      }

      v27 = [(NSMapTable *)v25 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v27);
  }

  [(NSMapTable *)debuggingListener->_connections removeAllObjects];
  [(NSXPCListener *)debuggingListener->_listener invalidate];

  authorizationBroadcaster = self->_authorizationBroadcaster;
  if (authorizationBroadcaster)
  {
LABEL_36:
    [(NSXPCListener *)authorizationBroadcaster->_listener invalidate];
    [(NSXPCListener *)authorizationBroadcaster->_listener setDelegate:0];
  }

LABEL_37:
  objc_setProperty_nonatomic(self, v30, 0, 24);
  objc_setProperty_nonatomic(self, v32, 0, 112);
  objc_setProperty_nonatomic(self, v33, 0, 64);
  objc_setProperty_nonatomic(self, v34, 0, 32);
  objc_setProperty_nonatomic(self, v35, 0, 96);
  objc_setProperty_nonatomic(self, v36, 0, 40);
  objc_setProperty_nonatomic(self, v37, 0, 120);
  objc_setProperty_nonatomic(self, v38, 0, 56);
  objc_setProperty_nonatomic(self, v39, 0, 104);
  objc_setProperty_nonatomic(self, v40, 0, 48);
  v41.receiver = self;
  v41.super_class = RDDaemon;
  [(RDDaemon *)&v41 dealloc];
}

- (id)authorizedAndInterestedClientsForSensor:(id)a3
{
  v5 = +[NSMutableSet set];
  v6 = objc_autoreleasePoolPush();
  v7 = [SRSensorDescription sensorDescriptionForSensor:a3];
  if ([objc_msgSend(v7 "legacyName")])
  {
    v8 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v27 = a3;
      v28 = 2114;
      v29 = [v7 name];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Converting authorization query for legacy name %{public}@ to new name %{public}@", buf, 0x16u);
    }

    a3 = [v7 name];
  }

  if (self)
  {
    clientInterest = self->_clientInterest;
    if (clientInterest)
    {
      v10 = [(NSCache *)clientInterest->_clientInterestCache rd_objectsForSensor:a3 fallbackURL:sub_10001AAE4(clientInterest->_fileURLs, a3)];
      v11 = qword_100071B30;
      if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v10 = 0;
  v11 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
  {
LABEL_8:
    *buf = 138543619;
    v27 = a3;
    v28 = 2113;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found interested clients for %{public}@: %{private}@", buf, 0x16u);
  }

LABEL_9:
  if (self)
  {
    authStore = self->_authStore;
  }

  else
  {
    authStore = 0;
  }

  v13 = [(SRAuthorizationStore *)authStore readerAuthorizationValues];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if ([objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v13 objectForKeyedSubscript:{v18), "objectForKeyedSubscript:", a3), "BOOLValue"}])
        {
          [v5 addObject:v18];
        }
      }

      v15 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    v27 = a3;
    v28 = 2113;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Found authorized clients for %{public}@: %{private}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  return v5;
}

- (void)setWriterService:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Disabling";
    if (v4)
    {
      v7 = @"Enabling";
    }

    v11 = 138412546;
    v12 = v7;
    v13 = 2114;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ on-demand writer service %{public}@", &v11, 0x16u);
  }

  [a3 UTF8String];
  if (launch_set_system_service_enabled())
  {
    v8 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
    {
      if (v4)
      {
        v9 = @"enable";
      }

      else
      {
        v9 = @"disable";
      }

      v10 = xpc_strerror();
      v11 = 138412802;
      v12 = v9;
      v13 = 2114;
      v14 = a3;
      v15 = 2082;
      v16 = v10;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Failed to %@ service %{public}@ because %{public}s", &v11, 0x20u);
    }
  }
}

- (void)requestFileHandleForReading:(id)a3 afterSegment:(id)a4 reply:(id)a5
{
  dispatch_assert_queue_V2(self->_q);
  v62 = 0.0;
  if ((sub_10002B8BC(+[NSXPCConnection currentConnection], a3, &self->_defaults->super.isa, self, &v62) & 1) == 0)
  {
    v11 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v64 = v62;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connection not valid because %{public}@", buf, 0xCu);
    }

    v73 = @"error";
    v74 = v62;
    v12 = &v74;
    v13 = &v73;
    goto LABEL_9;
  }

  v9 = [a3 deviceIdentifier];
  if (!v9)
  {
    objc_opt_self();
    v9 = qword_100071B88;
    if (!qword_100071B88)
    {
      v71 = @"error";
      v72 = [SRError errorWithCode:8198];
      v12 = &v72;
      v13 = &v71;
LABEL_9:
      (*(a5 + 2))(a5, [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:1]);
      return;
    }
  }

  context = objc_autoreleasePoolPush();
  v59 = [a3 sensor];
  if ([a4 length])
  {
    [a4 doubleValue];
  }

  else
  {
    [a3 from];
  }

  v14 = v10;
  *&v15 = COERCE_DOUBLE(+[NSXPCConnection currentConnection]);
  v16 = [a3 sensor];
  if (*&v15 != 0.0)
  {
    v17 = v16;
    v18 = [@"com.apple.private.sensorkit.export.allow-all" isEqualToString:@"com.apple.sensorkit.reader.allow"];
    if ([(NSXPCConnection *)v15 _sr_hasEntitlement:@"com.apple.private.sensorkit.export.allow-all" sensor:v17 valueProvider:self]|| (!v18 ? (v19 = 0) : (v19 = @"com.apple.developer.sensorkit.reader.allow"), [(NSXPCConnection *)v15 _sr_hasEntitlement:v19 sensor:v17 valueProvider:self]))
    {
      v20 = qword_100071B30;
      v21 = v14;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
      {
        v22 = [a3 sensor];
        *buf = 138543618;
        v64 = *&v15;
        v65 = 2114;
        v66 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Connection %{public}@ has entitlement to bypass authorization time data access restriction for %{public}@", buf, 0x16u);
        v21 = v14;
      }

      if (v21 != v14)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }
  }

  v26 = objc_autoreleasePoolPush();
  v27 = COERCE_DOUBLE([a3 bundleIdentifier]);
  v28 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{objc_msgSend(objc_msgSend(a3, "sensor"), "sr_sensorByDeletingDeletionRecord")), "authorizationService"}];
  stateCache = self->_stateCache;
  if (stateCache)
  {
    v30 = [-[NSMutableDictionary objectForKeyedSubscript:](stateCache->_authorizationTimes objectForKeyedSubscript:{v28), "objectForKeyedSubscript:", *&v27}];
    if (v30)
    {
      [v30 doubleValue];
      v32 = v31;
      if (!__isnand())
      {
LABEL_35:
        v21 = fmax(v32, v14);
        objc_autoreleasePoolPop(v26);
        if (v21 != v14)
        {
          goto LABEL_20;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v32 = NAN;
      if (!__isnand())
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v32 = 0.0;
    if (!__isnand())
    {
      goto LABEL_35;
    }
  }

  v33 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
  {
    v34 = [a3 sensor];
    *buf = 138543618;
    v64 = v27;
    v65 = 2114;
    v66 = v34;
    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "No last authorized time found for bundle %{public}@, sensor %{public}@", buf, 0x16u);
  }

  v21 = INFINITY;
  objc_autoreleasePoolPop(v26);
  if (v14 != INFINITY)
  {
LABEL_20:
    v23 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [a3 bundleIdentifier];
      *buf = 134349826;
      v64 = v14;
      v65 = 2114;
      v66 = v24;
      v67 = 2114;
      v68 = v59;
      v69 = 2050;
      v70 = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Requested start time %{public}f before the last authorized time for bundle %{public}@, sensor %{public}@. Adjusting start time to %{public}f", buf, 0x2Au);
    }

    a4 = [(NSURL *)sub_10001ADB4(v21) lastPathComponent];
    [a3 to];
    if (v21 > v25)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = v14;
  [a3 to];
  if (v14 > v35)
  {
    goto LABEL_38;
  }

LABEL_37:
  if (!__isinfd())
  {
    v37 = sub_10003A3D8(v59, v9, self->_fileURLs, self->_defaults, [a3 bundleIdentifier]);
    v38 = sub_10000ACCC([RDReadableDatastore alloc], &v37->super.isa);
    v61 = 0;
    if ([a4 length])
    {
      v39 = sub_10000B6C0(v38, a4, &v61);

      v40 = +[NSXPCConnection currentConnection];
      if (!v40)
      {
LABEL_48:
        v42 = sub_10003A3D8([a3 sensor], objc_msgSend(a3, "deviceIdentifier"), self->_fileURLs, self->_defaults, objc_msgSend(a3, "bundleIdentifier"));
        v43 = sub_10001C870([RDReader alloc], v42);
        v44 = sub_10001CE08(v43, v39);

        v45 = sub_10002A764(&self->_defaults->super.isa, [a3 sensor]);
        v46 = mach_continuous_time();
        if (qword_100071B60 != -1)
        {
          dispatch_once(&qword_100071B60, &stru_100060D90);
        }

        v47 = qword_100071B68;
        v48 = *&qword_100071B70;
        v49 = *&qword_100071B78;
        TMConvertTicksToSeconds();
        if (v47 >= v46)
        {
          v50 = -v50;
        }

        if (v44 > v48 - v45 + v49 + v50)
        {
          v51 = qword_100071B30;
          if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            v64 = v21;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Refusing to provide data for sample time %{public}f because the segment covering that time contains samples after the holding period", buf, 0xCu);
          }

          goto LABEL_40;
        }

LABEL_55:
        v52 = [NSMutableDictionary dictionaryWithDictionary:v39];
        v53 = [NSMutableDictionary dictionaryWithDictionary:sub_10002A88C(self->_defaults, v59)];
        v54 = self->_stateCache;
        if (v54)
        {
          remoteRTCOffset = v54->_remoteRTCOffset;
        }

        else
        {
          remoteRTCOffset = 0.0;
        }

        [(NSMutableDictionary *)v53 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:?], @"RTCOffset"];
        [(NSMutableDictionary *)v52 setObject:[NSDictionary forKeyedSubscript:"dictionaryWithDictionary:" dictionaryWithDictionary:v53], @"defaults"];
        if (v37)
        {
          Property = objc_getProperty(v37, v56, 32, 1);
        }

        else
        {
          Property = 0;
        }

        [(NSMutableDictionary *)v52 setObject:sub_100027DC8(RDDeviceInfo forKeyedSubscript:Property), @"deviceDetails"];
        if (v61)
        {
          [(NSMutableDictionary *)v52 setObject:v61 forKeyedSubscript:@"error"];
        }

        (*(a5 + 2))(a5, v52);
        goto LABEL_41;
      }
    }

    else
    {
      v39 = sub_10000B0D0(v38, &v61, v21);

      v40 = +[NSXPCConnection currentConnection];
      if (!v40)
      {
        goto LABEL_48;
      }
    }

    v41 = v40;
    if ([a3 bypassHoldingPeriod] && -[NSXPCConnection sr_hasHoldingPeriodBypassEntitlement:](v41, "sr_hasHoldingPeriodBypassEntitlement:", self))
    {
      goto LABEL_55;
    }

    goto LABEL_48;
  }

LABEL_38:
  v36 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
  {
    [a3 to];
    *buf = 134349312;
    v64 = v21;
    v65 = 2050;
    v66 = v58;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Fetch request start time %{public}f is after the request end time %{public}f", buf, 0x16u);
  }

LABEL_40:
  (*(a5 + 2))(a5, &__NSDictionary0__struct);
LABEL_41:
  objc_autoreleasePoolPop(context);
}

- (void)startRecording:(id)a3 reply:(id)a4
{
  if ([a3 configurationDecodeError])
  {
    v7 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = [a3 configurationDecodeError];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid requested configuration: %{public}@", &v9, 0xCu);
    }

    (*(a4 + 2))(a4, [SRError errorWithCode:0x4000]);
  }

  else
  {
    v8 = [a3 sensorConfiguration];

    sub_1000332B8(self, 1, a3, v8, a4);
  }
}

- (void)fetchReaderMetadata:(id)a3 reply:(id)a4
{
  v21 = 0;
  if (sub_10002B8BC(+[NSXPCConnection currentConnection], a3, &self->_defaults->super.isa, self, &v21))
  {
    v7 = [a3 sensor];
    v8 = sub_10002A764(&self->_defaults->super.isa, v7);
    v9 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v10 = qword_100071B68;
    v11 = *&qword_100071B70;
    v12 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v10 >= v9)
    {
      v13 = -v13;
    }

    v14 = v11 - v8 + v12 + v13;
    v15 = [SRSensorDescription sensorDescriptionForSensor:v7];
    stateCache = self->_stateCache;
    if (stateCache)
    {
      serviceStartTimes = stateCache->_serviceStartTimes;
    }

    else
    {
      serviceStartTimes = 0;
    }

    v18 = -[NSDictionary objectForKeyedSubscript:](serviceStartTimes, "objectForKeyedSubscript:", [v15 authorizationService]);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = &off_100065738;
    }

    v22[0] = @"ServiceStartTime";
    v22[1] = @"EarliestEligibleTimestamp";
    v23[0] = v19;
    v23[1] = [NSNumber numberWithDouble:v14];
    (*(a4 + 2))(a4, [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2]);
  }

  else
  {
    v20 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Connection not valid because %{public}@", buf, 0xCu);
    }

    (*(a4 + 2))(a4, &__NSDictionary0__struct);
  }
}

- (void)fetchAllDevices:(id)a3 reply:(id)a4
{
  dispatch_assert_queue_V2(self->_q);
  v12 = 0;
  if (sub_10002B8BC(+[NSXPCConnection currentConnection], a3, &self->_defaults->super.isa, self, &v12))
  {
    v7 = sub_10003A334([a3 sensor], 0, self->_fileURLs, self->_defaults);
    v8 = sub_10000D068([RDInformingDatastore alloc], v7);
    v9 = sub_10000D2B8(v8);

    v10 = sub_1000339B8(self, [(NSSet *)v9 allObjects]);
    (*(a4 + 2))(a4, v10, 0);
  }

  else
  {
    v11 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connection not valid because %{public}@", buf, 0xCu);
    }

    (*(a4 + 2))(a4, &__NSArray0__struct, v12);
  }
}

- (void)startWritingForSensor:(id)a3
{
  v5 = +[NSXPCConnection currentConnection];
  objc_opt_self();
  v6 = qword_100071B88;
  if (!qword_100071B88)
  {
    v14 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v15 = "Failed to find the current device ID";
    goto LABEL_16;
  }

  if (!self)
  {
    return;
  }

  dispatch_assert_queue_V2(self->_q);
  if (!a3)
  {
    v14 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v15 = "No sensor identifier specified. Ignoring request";
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    return;
  }

  v16 = 0;
  if (v5)
  {
    if (sub_10002BB64(v5, @"com.apple.sensorkit.writer.allow", a3, 0, 0, &self->_defaults->super.isa, self, &v16))
    {
      goto LABEL_9;
    }

    v7 = v16;
    v8 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
      v7 = v16;
    }
  }

  if (![v7 code])
  {
    [(NSXPCConnection *)v5 invalidate];
    return;
  }

LABEL_9:
  v9 = sub_10003A334(a3, v6, self->_fileURLs, self->_defaults);
  sub_100008190(self->_writerListener, v5, v9);
  v10 = sub_1000316F0(self, a3);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100033DA0;
  v18 = &unk_1000611D0;
  v19 = a3;
  v11 = [(NSXPCConnection *)v5 remoteObjectProxyWithErrorHandler:buf];
  clientInterest = self->_clientInterest;
  if (clientInterest)
  {
    v13 = [(NSCache *)clientInterest->_sensorConfigurationCache rd_objectsForSensor:a3 fallbackURL:sub_10001AB2C(clientInterest->_fileURLs, a3)];
  }

  else
  {
    v13 = 0;
  }

  [v11 setMonitoring:v10 withRequestedConfigurations:{objc_msgSend(v13, "allObjects")}];
}

- (void)requestFileHandleForWritingWithReply:(id)a3
{
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  writerListener = self->_writerListener;
  if (!writerListener || (v7 = [(NSMapTable *)writerListener->_connections objectForKey:v5]) == 0 || (v9 = v7, (Property = objc_getProperty(v7, v8, 24, 1)) == 0))
  {
    v41 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@ is not connected as a writer", buf, 0xCu);
    }

    v70 = @"error";
    v71 = +[SRError connectionNotFoundError];
    v42 = &v71;
    v43 = &v70;
    goto LABEL_56;
  }

  v58 = 0.0;
  if (!v5)
  {
    v44 = 0.0;
    v45 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v11 = Property;
  if (!sub_10002BB64(v5, @"com.apple.sensorkit.writer.allow", Property, 0, 0, &self->_defaults->super.isa, self, &v58))
  {
    v44 = v58;
    v45 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
LABEL_34:
      v68 = @"error";
      v69 = v44;
      v42 = &v69;
      v43 = &v68;
LABEL_56:
      (*(a3 + 2))(a3, [NSDictionary dictionaryWithObjects:v42 forKeys:v43 count:1]);
      return;
    }

LABEL_33:
    *buf = 138543618;
    *&buf[4] = v5;
    v64 = 2114;
    v65 = v44;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    v44 = v58;
    goto LABEL_34;
  }

  v12 = [SRSensorDescription sensorDescriptionForSensor:v11];
  v13 = COERCE_DOUBLE([v12 writerAuthorizationService]);
  if (v13 != 0.0)
  {
    v14 = v13;
    authStore = self->_authStore;
    [(NSXPCConnection *)v5 auditToken];
    if (![(SRAuthorizationStore *)authStore checkAccessForService:*&v14 auditToken:buf])
    {
      v46 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v11;
        v64 = 2114;
        v65 = v14;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Writer is does not have explicit writer authorization to %{public}@", buf, 0x16u);
      }

      v61 = @"error";
      v62 = [SRError authorizationErrorWithStatus:12289];
      v42 = &v62;
      v43 = &v61;
      goto LABEL_56;
    }
  }

  v16 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v17 = qword_100071B68;
  v18 = *&qword_100071B70;
  v19 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v17 >= v16)
  {
    v20 = -v20;
  }

  stateCache = self->_stateCache;
  if (stateCache)
  {
    timeSyncTimestamp = stateCache->_timeSyncTimestamp;
    v23 = v19 + v18;
    gizmoSyncService = self->_gizmoSyncService;
    if (gizmoSyncService)
    {
      goto LABEL_14;
    }

LABEL_52:
    v25 = v23 + v20;
    if (timeSyncTimestamp == 0.0)
    {
      goto LABEL_53;
    }

    goto LABEL_15;
  }

  timeSyncTimestamp = 0.0;
  v23 = v19 + v18;
  gizmoSyncService = self->_gizmoSyncService;
  if (!gizmoSyncService)
  {
    goto LABEL_52;
  }

LABEL_14:
  v25 = v23 + v20;
  if (gizmoSyncService->_side == 0 && timeSyncTimestamp == 0.0)
  {
LABEL_53:
    v57 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      *&buf[4] = timeSyncTimestamp;
      v64 = 2050;
      v65 = v25;
      _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Refusing to provide a segment because the last time synced (%{public}f) with the companion is invalid compared to the current time (%{public}f)", buf, 0x16u);
    }

    v59 = @"error";
    v60 = [SRError errorWithCode:8199];
    v42 = &v60;
    v43 = &v59;
    goto LABEL_56;
  }

LABEL_15:
  if (v25 < timeSyncTimestamp)
  {
    goto LABEL_53;
  }

  v26 = sub_10000A3F0([RDWriteableDatastore alloc], v9);
  v27 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    *&buf[4] = v11;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Sending file handles for writing sensor %{public}@", buf, 0xCu);
    v28 = mach_continuous_time();
    if (qword_100071B60 == -1)
    {
      goto LABEL_18;
    }

LABEL_48:
    dispatch_once(&qword_100071B60, &stru_100060D90);
    goto LABEL_18;
  }

  v28 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    goto LABEL_48;
  }

LABEL_18:
  v29 = qword_100071B68;
  v30 = *&qword_100071B70;
  v31 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v29 >= v28)
  {
    v32 = -v32;
  }

  v33 = v31 + v30 + v32;
  [v12 roundingInterval];
  if (v34 == 0.0)
  {
    v40 = v33;
  }

  else
  {
    v35 = v34;
    v36 = sub_10000A590(v26);
    if (v36 > v33)
    {
      v37 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        *&buf[4] = v11;
        v64 = 2048;
        v65 = v36;
        v66 = 2048;
        v67 = v33;
        _os_log_fault_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "[%{public}@] Datastore contains samples from the future (%f > %f)", buf, 0x20u);
      }

      v36 = nan("");
    }

    v38 = __isnand();
    v39 = v33 - v36;
    if (v38)
    {
      v39 = v35;
    }

    if (v39 >= v35)
    {
      v40 = SRAbsoluteTimeRoundedDownToNearestInterval(v33, v35);
    }

    else
    {
      v40 = v36 + 0.000000999999997;
    }

    v47 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      *&buf[4] = v11;
      v64 = 2050;
      v65 = v40;
      v66 = 2050;
      v67 = v33;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "[%{public}@] Rounded segment time to %{public}f from %{public}f", buf, 0x20u);
    }
  }

  v48 = [(NSURL *)sub_10001ADB4(v40) lastPathComponent];
  v49 = [(NSURL *)sub_10001ADB4(v40 + 0.000000999999997) lastPathComponent];
  v50 = [(NSURL *)sub_10001ADB4(v40 + 0.000000999999997) lastPathComponent];
  v51 = objc_autoreleasePoolPush();
  *buf = 0;
  v52 = sub_10000AA38(v26, v48, v49, v50, buf);

  v53 = [NSMutableDictionary dictionaryWithDictionary:v52];
  v54 = [NSMutableDictionary dictionaryWithDictionary:sub_10002A88C(self->_defaults, v11)];
  v55 = self->_stateCache;
  if (v55)
  {
    remoteRTCOffset = v55->_remoteRTCOffset;
  }

  else
  {
    remoteRTCOffset = 0.0;
  }

  [(NSMutableDictionary *)v54 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:?], @"RTCOffset"];
  [(NSMutableDictionary *)v53 setObject:[NSDictionary forKeyedSubscript:"dictionaryWithDictionary:" dictionaryWithDictionary:v54], @"defaults"];
  if (*buf)
  {
    [(NSMutableDictionary *)v53 setObject:*buf forKeyedSubscript:@"error"];
  }

  (*(a3 + 2))(a3, v53);
  objc_autoreleasePoolPop(v51);
}

- (void)fetchEligibilityStatusForBundleIdentifier:(id)a3 reply:(id)a4
{
  v7 = +[NSXPCConnection currentConnection];
  writerListener = self->_writerListener;
  if (writerListener)
  {
    v9 = [(NSMapTable *)writerListener->_connections objectForKey:v7];
    if (v9)
    {
      Property = objc_getProperty(v9, v10, 24, 1);
      if (Property)
      {
        v16 = 0;
        if (v7)
        {
          v12 = Property;
          if (sub_10002BB64(v7, @"com.apple.sensorkit.writer.allow", Property, 0, 0, &self->_defaults->super.isa, self, &v16))
          {
            sub_100034B50(self, a3, v12, a4);
            return;
          }

          v14 = v16;
          v15 = qword_100071B30;
          if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }
        }

        else
        {
          v14 = 0;
          v15 = qword_100071B30;
          if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }
        }

        *buf = 138543618;
        v18 = v7;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
        v14 = v16;
LABEL_12:
        (*(a4 + 2))(a4, 0, v14);
        return;
      }
    }
  }

  v13 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v18 = v7;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@ is not connected as a writer", buf, 0xCu);
  }

  (*(a4 + 2))(a4, 0, +[SRError connectionNotFoundError]);
}

- (BOOL)validateBundleRecord:(id)a3 withFilters:(id)a4
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [a4 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(a4);
      }

      v9 = *(*(&v22 + 1) + 8 * v8);
      if ([v9 isEqualToString:@"TelephonyApp"])
      {
        v10 = [a3 sr_supportsVOIP];
        v11 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
        {
          v12 = [a3 bundleIdentifier];
          *buf = 138543618;
          v13 = @"does not support";
          if (v10)
          {
            v13 = @"supports";
          }

          v27 = v12;
          v28 = 2114;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ VoIP", buf, 0x16u);
        }
      }

      else
      {
        v10 = 1;
      }

      if (![v9 isEqualToString:@"MessagingApp"])
      {
        goto LABEL_22;
      }

      if ([a3 sr_supportsMessagingIntents])
      {
        v10 = [a3 sr_isSocialNetworking];
        v14 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
        v14 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
        {
LABEL_19:
          v15 = [a3 bundleIdentifier];
          *buf = 138543618;
          v16 = @"does not support";
          if (v10)
          {
            v16 = @"supports";
          }

          v27 = v15;
          v28 = 2114;
          v29 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ messaging intents", buf, 0x16u);
        }
      }

LABEL_22:
      if ([v9 isEqualToString:@"DeveloperOptOut"] && (v10 = objc_msgSend(a3, "sr_supportsDataGeneration"), v17 = qword_100071B30, os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO)))
      {
        v18 = [a3 bundleIdentifier];
        *buf = 138543618;
        v19 = @"does not support";
        if (v10)
        {
          v19 = @"supports";
        }

        v27 = v18;
        v28 = 2114;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@ %{public}@ data generation", buf, 0x16u);
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      else if (!v10)
      {
        return 0;
      }

      if (v6 == ++v8)
      {
        v6 = [a4 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  return 1;
}

- (void)startPruningForSensor:(id)a3 deviceId:(id)a4
{
  dispatch_assert_queue_V2(self->_q);
  if (!a3)
  {
    v12 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v13 = "No sensor identifier specified. Ignoring request";
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    return;
  }

  v7 = +[NSXPCConnection currentConnection];
  v8 = v7;
  v14 = 0;
  if (v7)
  {
    if (sub_10002BB64(v7, @"com.apple.sensorkit.pruner.allow", a3, 0, 0, &self->_defaults->super.isa, self, &v14))
    {
      goto LABEL_7;
    }

    v9 = v14;
    v10 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = 0;
    v10 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      *buf = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
      v9 = v14;
    }
  }

  if (![v9 code])
  {
    [(NSXPCConnection *)v8 invalidate];
    return;
  }

LABEL_7:
  if (a4 || (objc_opt_self(), (a4 = qword_100071B88) != 0))
  {
    v11 = sub_10003A334(a3, a4, self->_fileURLs, self->_defaults);
    sub_100008190(self->_prunerListener, v8, v11);
    return;
  }

  v12 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v13 = "Failed to find the current device id";
    goto LABEL_12;
  }
}

- (void)requestFileHandleForPruningSample:(double)a3 reply:(id)a4
{
  dispatch_assert_queue_V2(self->_q);
  v7 = +[NSXPCConnection currentConnection];
  prunerListener = self->_prunerListener;
  if (!prunerListener || (v9 = [(NSMapTable *)prunerListener->_connections objectForKey:v7]) == 0 || (v11 = v9, (Property = objc_getProperty(v9, v10, 24, 1)) == 0))
  {
    v21 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@ is not connected as a pruner", buf, 0xCu);
    }

    v32 = @"error";
    v33 = +[SRError connectionNotFoundError];
    v22 = &v33;
    v23 = &v32;
    goto LABEL_19;
  }

  v26 = 0;
  if (!v7)
  {
    v24 = 0;
    v25 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v13 = Property;
  if (!sub_10002BB64(v7, @"com.apple.sensorkit.pruner.allow", Property, 0, 0, &self->_defaults->super.isa, self, &v26))
  {
    v24 = v26;
    v25 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:
      v27 = @"error";
      v28 = v24;
      v22 = &v28;
      v23 = &v27;
LABEL_19:
      (*(a4 + 2))(a4, [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1]);
      return;
    }

LABEL_17:
    *buf = 138543618;
    *&buf[4] = v7;
    v30 = 2114;
    v31 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    v24 = v26;
    goto LABEL_18;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = sub_10000BC68([RDPruneableDatastore alloc], v11);
  *buf = 0;
  v16 = sub_10000CEF0(v15, buf, a3);

  if ([(NSDictionary *)v16 objectForKeyedSubscript:@"samples"])
  {
    *(v11 + 6) = a3;
  }

  v17 = [NSMutableDictionary dictionaryWithDictionary:v16];
  v18 = [NSMutableDictionary dictionaryWithDictionary:sub_10002A88C(self->_defaults, v13)];
  stateCache = self->_stateCache;
  if (stateCache)
  {
    remoteRTCOffset = stateCache->_remoteRTCOffset;
  }

  else
  {
    remoteRTCOffset = 0.0;
  }

  [(NSMutableDictionary *)v18 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:?], @"RTCOffset"];
  [(NSMutableDictionary *)v17 setObject:[NSDictionary forKeyedSubscript:"dictionaryWithDictionary:" dictionaryWithDictionary:v18], @"defaults"];
  if (*buf)
  {
    [(NSMutableDictionary *)v17 setObject:*buf forKeyedSubscript:@"error"];
  }

  (*(a4 + 2))(a4, v17);
  objc_autoreleasePoolPop(v14);
}

- (void)requestFileHandleForPruningAfterSegment:(id)a3 reply:(id)a4
{
  v7 = +[NSXPCConnection currentConnection];
  prunerListener = self->_prunerListener;
  if (!prunerListener || (v9 = [(NSMapTable *)prunerListener->_connections objectForKey:v7]) == 0 || (v11 = v9, (Property = objc_getProperty(v9, v10, 24, 1)) == 0))
  {
    v41 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v50 = v7;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@ is not connected as a pruner", buf, 0xCu);
    }

    v53 = @"error";
    v54 = +[SRError connectionNotFoundError];
    v42 = &v54;
    v43 = &v53;
    goto LABEL_29;
  }

  v46 = 0;
  if (!v7)
  {
    v44 = 0;
    v15 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = Property;
  v14 = sub_10002BB64(v7, @"com.apple.sensorkit.pruner.allow", Property, 0, 0, &self->_defaults->super.isa, self, &v46);
  v15 = qword_100071B30;
  if (!v14)
  {
    v44 = v46;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:
      v47 = @"error";
      v48 = v44;
      v42 = &v48;
      v43 = &v47;
LABEL_29:
      (*(a4 + 2))(a4, [NSDictionary dictionaryWithObjects:v42 forKeys:v43 count:1]);
      return;
    }

LABEL_27:
    *buf = 138543618;
    v50 = v7;
    v51 = 2114;
    v52 = v44;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    v44 = v46;
    goto LABEL_28;
  }

  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v50 = v13;
    v51 = 2114;
    v52 = a3;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Sending pruning file handles for sensor %{public}@ segment %{public}@", buf, 0x16u);
  }

  v16 = objc_autoreleasePoolPush();
  v17 = sub_10000BC68([RDPruneableDatastore alloc], v11);
  v45 = 0;
  v18 = sub_10000CFB0(v17, a3, &v45);

  if (![(NSDictionary *)v18 objectForKeyedSubscript:@"samples"])
  {
    [a3 doubleValue];
    v20 = [SRDeletionRecord tombstoneWithStartTime:0 endTime:*(v11 + 6) reason:v19];
    v21 = [v13 sr_sensorForDeletionRecordsFromSensor];
    v23 = objc_getProperty(v11, v22, 32, 1);
    v25 = objc_getProperty(v11, v24, 8, 1);
    v27 = objc_getProperty(v11, v26, 16, 1);
    v28 = sub_10003A334(v21, v23, v25, v27);
    v29 = sub_1000013C0([RDWriter alloc], v28);
    if (v29)
    {
      v30 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v31 = qword_100071B68;
      v32 = *&qword_100071B70;
      v33 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      if (v31 >= v30)
      {
        v34 = -v34;
      }

      sub_10000147C(v29, v20, &v45, v33 + v32 + v34);
    }

    v35 = v45;
    if (v45)
    {
      v36 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v35;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to write deletion records because %{public}@", buf, 0xCu);
      }
    }
  }

  v37 = [NSMutableDictionary dictionaryWithDictionary:v18];
  v38 = [NSMutableDictionary dictionaryWithDictionary:sub_10002A88C(self->_defaults, v13)];
  stateCache = self->_stateCache;
  if (stateCache)
  {
    remoteRTCOffset = stateCache->_remoteRTCOffset;
  }

  else
  {
    remoteRTCOffset = 0.0;
  }

  [(NSMutableDictionary *)v38 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:?], @"RTCOffset"];
  [(NSMutableDictionary *)v37 setObject:[NSDictionary forKeyedSubscript:"dictionaryWithDictionary:" dictionaryWithDictionary:v38], @"defaults"];
  if (v45)
  {
    [(NSMutableDictionary *)v37 setObject:v45 forKeyedSubscript:@"error"];
  }

  (*(a4 + 2))(a4, v37);
  objc_autoreleasePoolPop(v16);
}

- (void)removeAllSamplesForCurrentSensorWithReply:(id)a3
{
  if (!self)
  {
    goto LABEL_20;
  }

  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  prunerListener = self->_prunerListener;
  if (prunerListener && (v7 = [(NSMapTable *)prunerListener->_connections objectForKey:v5]) != 0 && (v9 = objc_getProperty(v7, v8, 24, 1)) != 0)
  {
    v22 = 0;
    if (v5)
    {
      v10 = v9;
      v11 = sub_10002BB64(v5, @"com.apple.sensorkit.pruner.allow", v9, 0, 0, &self->_defaults->super.isa, self, &v22);
      v12 = qword_100071B30;
      if (v11)
      {
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v10;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Removing all files for sensor %{public}@", buf, 0xCu);
        }

        sub_10003115C(self, v10, 0, 0);
        v13 = [sub_100008650(self->_writerListener v10)];
        if (v13)
        {
          writerListener = self->_writerListener;
          if (writerListener)
          {
            v15 = v13;
            v16 = [(NSMapTable *)writerListener->_connections objectForKey:v13];
            if (v16)
            {
              Property = objc_getProperty(v16, v17, 24, 1);
              v19 = qword_100071B30;
              if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                *&buf[4] = Property;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Resetting datastore for %{public}@", buf, 0xCu);
              }

              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_100034868;
              v24 = &unk_1000611D0;
              v25 = Property;
              [objc_msgSend(v15 remoteObjectProxyWithErrorHandler:{buf), "resetDatastoreFiles:", &__NSDictionary0__struct}];
            }
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      v12 = qword_100071B30;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v20 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ is not connected as a pruner", buf, 0xCu);
    }
  }

LABEL_20:
  v21 = *(a3 + 2);

  v21(a3, 0);
}

- (void)removeAllSamplesForAllSensorsWithReply:(id)a3
{
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  v6 = v5;
  v9 = 0;
  if (!v5)
  {
    v7 = 0;
    v8 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!sub_10002BB64(v5, @"com.apple.sensorkit.pruner.allow", 0, 0, 0, &self->_defaults->super.isa, self, &v9))
  {
    v7 = v9;
    v8 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

LABEL_5:
    *buf = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    v7 = v9;
    goto LABEL_6;
  }

  sub_10003606C(self, 0, 0);
  v7 = 0;
LABEL_6:
  (*(a3 + 2))(a3, v7);
}

- (BOOL)isAuthorizedForSensor:(id)a3 bundleIdentifier:(id)a4
{
  if (self)
  {
    self = self->_authStore;
  }

  return [(RDDaemon *)self sensorHasReaderAuthorization:a3 forBundleId:a4];
}

- (void)authorizationStore:(id)a3 didDetermineInitialAuthorizationValues:(id)a4
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000365F0;
  block[3] = &unk_100060E48;
  block[4] = self;
  dispatch_async(q, block);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(NSDictionary *)[(SRAuthorizationStore *)self->_authStore readerAuthorizationValues] allKeys];
  v16 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v15 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v6;
        v7 = *(*(&v23 + 1) + 8 * v6);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = [(NSDictionary *)[(SRAuthorizationStore *)self->_authStore readerAuthorizationValues] objectForKeyedSubscript:v7];
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            v12 = 0;
            do
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v19 + 1) + 8 * v12);
              block[5] = _NSConcreteStackBlock;
              block[6] = 3221225472;
              block[7] = sub_100036250;
              block[8] = &unk_100061788;
              block[9] = v7;
              block[10] = v13;
              block[11] = self;
              AnalyticsSendEventLazy();
              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }

        v6 = v17 + 1;
      }

      while ((v17 + 1) != v16);
      v16 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)authorizationStore:(id)a3 didUpdateAuthorizationsForBundleId:(id)a4 sensors:(id)a5
{
  if (self)
  {
    q = self->_q;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036AE8;
    block[3] = &unk_100061718;
    block[4] = self;
    block[5] = a5;
    block[6] = a4;
    dispatch_async(q, block);
  }
}

- (void)autoEnableRecordingForSensors:(id)a3 bundleId:(id)a4
{
  v7 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v24 = a3;
    v25 = 2113;
    v26 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Enabling recording for %{private}@ from bundle %{private}@ after enrollment", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        clientInterest = self->_clientInterest;
        if (!clientInterest)
        {
          goto LABEL_14;
        }

        v14 = [(NSCache *)clientInterest->_clientInterestCache rd_objectsForSensor:v12 fallbackURL:sub_10001AAE4(clientInterest->_fileURLs, v12)];
        v15 = [v14 mutableCopy];
        [v15 addObject:a4];
        if ([v14 isEqualToSet:v15])
        {

          continue;
        }

        [(NSCache *)clientInterest->_clientInterestCache setObject:v15 forKey:v12];
        v16 = [(NSCache *)clientInterest->_clientInterestCache rd_writeObject:v15 forKey:v12 toURL:sub_10001AAE4(clientInterest->_fileURLs error:v12), &v18];

        if ((v16 & 1) == 0)
        {
LABEL_14:
          v17 = qword_100071B30;
          if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138478339;
            v24 = a4;
            v25 = 2114;
            v26 = v12;
            v27 = 2114;
            v28 = v18;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to set interest for bundle %{private}@ for sensor %{public}@ because %{public}@", buf, 0x20u);
          }
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v9);
  }

  sub_1000318E8(self, a3);
}

- (void)authorizationBroadcaster:(id)a3 didSetDataCollectionEnabled:(BOOL)a4
{
  v20 = self;
  if (self)
  {
    self = self->_authStore;
  }

  v4 = [(RDDaemon *)self readerAuthorizationValues];
  v5 = objc_alloc_init(NSMutableSet);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v21 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              if ([objc_msgSend(objc_msgSend(v4 objectForKeyedSubscript:{v9), "objectForKeyedSubscript:", v15), "BOOLValue"}])
              {
                [v5 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  sub_1000318E8(v20, v5);

  v16 = qword_100071B30;
  v17 = os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Data collection enabled, telling any authorized writers to start writing again", buf, 2u);
    }

    sub_100034628(v20, v18);
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Data collection disabled, removing all samples", buf, 2u);
    }

    if (v20)
    {
      sub_10003606C(v20, 0, 0);
    }
  }
}

- (void)launchEventRunActivity:(id)a3
{
  v4 = self;
  dispatch_assert_queue_V2(self->_q);
  stateCache = v4->_stateCache;
  if (stateCache)
  {
    v6 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v7 = qword_100071B68;
    v8 = *&qword_100071B70;
    v9 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v7 >= v6)
    {
      v10 = -v10;
    }

    if (v9 + v8 + v10 < stateCache->_localDaemonLaunchTime + 3.0 + stateCache->_remoteRTCOffset)
    {
      AnalyticsSendEventLazy();
    }
  }

  [(RDGizmoSyncing *)v4->_gizmoSync validatePreferWifiAssertion];
  v11 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v87 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Running %{public}@ activity", buf, 0xCu);
  }

  v69 = a3;
  if (a3)
  {
    if ([*(a3 + 1) isEqualToString:@"com.apple.sensorkit.updateCompanionWithSamples"])
    {
      goto LABEL_12;
    }

    if ([*(a3 + 1) isEqualToString:@"com.apple.sensorkit.prepareArchives"])
    {
LABEL_19:
      gizmoSyncService = v4->_gizmoSyncService;
      if (gizmoSyncService)
      {
        side = gizmoSyncService->_side;
        if (side)
        {
          if (side == 1)
          {
            v13 = qword_100071B30;
            if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
            {
              if (a3)
              {
                v17 = *(a3 + 1);
              }

              else
              {
                v17 = 0;
              }

              *buf = 138543362;
              v87 = v17;
              goto LABEL_26;
            }

LABEL_80:
            v60 = a3;
LABEL_103:
            [v60 markCompleted];
            return;
          }

LABEL_56:
          gizmoSync = v4->_gizmoSync;
          v45 = sub_10003A2C0(v4->_fileURLs, v4->_defaults);
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v67 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v45);
          v46 = sub_10000DC14(v67, 1);
          v47 = [v46 countByEnumeratingWithState:&v75 objects:v84 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v76;
            while (2)
            {
              for (i = 0; i != v48; i = i + 1)
              {
                if (*v76 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v75 + 1) + 8 * i);
                if ([a3 deferIfNeeded])
                {

                  return;
                }

                v52 = objc_autoreleasePoolPush();
                if ([SRSensorDescription sensorDescriptionForSensor:v51])
                {
                  objc_opt_self();
                  [(RDGizmoSyncing *)gizmoSync prepareArchivesForSensor:v51 deviceId:qword_100071B88];
                }

                else
                {
                  v53 = qword_100071B30;
                  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543362;
                    v87 = v51;
                    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Not preparing archive for unknown sensor, %{public}@", buf, 0xCu);
                  }
                }

                objc_autoreleasePoolPop(v52);
                a3 = v69;
              }

              v48 = [v46 countByEnumeratingWithState:&v75 objects:v84 count:16];
              if (v48)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_80;
        }
      }

      v41 = v4->_stateCache;
      if (v41 && v41->_timeSyncTimestamp != 0.0)
      {
        goto LABEL_56;
      }

      v42 = qword_100071B30;
      if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v43 = "Unable to create new archives because time hasn't synced with companion";
LABEL_79:
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
      goto LABEL_80;
    }

    if ([*(a3 + 1) isEqualToString:@"com.apple.sensorkit.removeOldData"])
    {
LABEL_30:
      if (sub_10001A2B8(v4->_fileURLs))
      {
        sub_1000306A0(v4, a3, 2, 0);
        sub_100034628(v4, v24);
        return;
      }

      v42 = qword_100071B30;
      if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v43 = "No top level directory found, no need to continue";
      goto LABEL_79;
    }

    if ([*(a3 + 1) isEqualToString:@"com.apple.sensorkit.postMetric"])
    {
LABEL_43:
      v29 = sub_10003A2C0(v4->_fileURLs, v4->_defaults);
      v30 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v29);
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v68 = v30;
      if (v30)
      {
        v31 = sub_10000DC14(v30, 0);
        v32 = [v31 countByEnumeratingWithState:&v71 objects:v83 count:16];
        if (v32)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v31 = 0;
        v32 = [0 countByEnumeratingWithState:&v71 objects:v83 count:16];
        if (v32)
        {
LABEL_45:
          v33 = v32;
          v34 = *v72;
          do
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v72 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v71 + 1) + 8 * j);
              v37 = objc_autoreleasePoolPush();
              objc_opt_self();
              v38 = v4;
              v39 = sub_10003A334(v36, qword_100071B88, v4->_fileURLs, v4->_defaults);
              v70 = sub_10000D068([RDInformingDatastore alloc], v39);
              AnalyticsSendEventLazy();

              v4 = v38;
              objc_autoreleasePoolPop(v37);
            }

            v33 = [v31 countByEnumeratingWithState:&v71 objects:v83 count:16];
          }

          while (v33);
        }
      }

      v40 = v68;
      goto LABEL_102;
    }

    if (([*(a3 + 1) isEqualToString:@"com.apple.sensorkit.syncCompanionStateToGizmo"] & 1) != 0 || objc_msgSend(*(a3 + 1), "isEqualToString:", @"com.apple.sensorkit.syncCompanionStateToGizmoLocked"))
    {
LABEL_72:
      sub_1000321C4(v4);
      notifier = v4->_notifier;
      v55 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v56 = qword_100071B68;
      v57 = *&qword_100071B70;
      v58 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      if (v56 >= v55)
      {
        v59 = -v59;
      }

      sub_10001E318(notifier, v58 + v57 + v59);
      goto LABEL_80;
    }

    if ([*(a3 + 1) isEqualToString:@"com.apple.sensorkit.decryptArchives"])
    {
LABEL_82:
      v61 = v4->_gizmoSyncService;
      if (v61 && v61->_side)
      {
        [(RDGizmoSyncing *)v4->_gizmoSync decryptArchivesWithActivity:a3];
        return;
      }

      v63 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
      {
        if (a3)
        {
          v64 = *(a3 + 1);
        }

        else
        {
          v64 = 0;
        }

        *buf = 138543362;
        v87 = v64;
        _os_log_fault_impl(&_mh_execute_header, v63, OS_LOG_TYPE_FAULT, "Shouldn't be running %{public}@ on the watch", buf, 0xCu);
      }

      goto LABEL_80;
    }

    v62 = *(a3 + 1);
  }

  else
  {
    if ([0 isEqualToString:@"com.apple.sensorkit.updateCompanionWithSamples"])
    {
LABEL_12:
      v12 = v4->_gizmoSyncService;
      if (v12 && v12->_side == 1)
      {
        v13 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
        {
          if (a3)
          {
            v14 = *(a3 + 1);
          }

          else
          {
            v14 = 0;
          }

          *buf = 138543362;
          v87 = v14;
LABEL_26:
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "This activity should not be called on the companion side. %{public}@", buf, 0xCu);
          goto LABEL_80;
        }

        goto LABEL_80;
      }

      v18 = v4->_gizmoSync;
      v19 = sub_10003A2C0(v4->_fileURLs, v4->_defaults);
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v66 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v19);
      v20 = sub_10000DC14(v66, 1);
      v21 = [v20 countByEnumeratingWithState:&v79 objects:v85 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v80;
LABEL_33:
        v25 = 0;
        while (1)
        {
          if (*v80 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v79 + 1) + 8 * v25);
          v27 = objc_autoreleasePoolPush();
          if ([SRSensorDescription sensorDescriptionForSensor:v26])
          {
            objc_opt_self();
            [(RDGizmoSyncing *)v18 sendSnapshotForSensor:v26 deviceId:qword_100071B88];
            if ([v69 deferIfNeeded])
            {

              objc_autoreleasePoolPop(v27);
              return;
            }
          }

          else
          {
            v28 = qword_100071B30;
            if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v87 = v26;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Not sending archive for unknown sensor, %{public}@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v27);
          if (v22 == ++v25)
          {
            v22 = [v20 countByEnumeratingWithState:&v79 objects:v85 count:16];
            if (!v22)
            {
              break;
            }

            goto LABEL_33;
          }
        }
      }

      v40 = v66;
LABEL_102:

      v60 = v69;
      goto LABEL_103;
    }

    if ([0 isEqualToString:@"com.apple.sensorkit.prepareArchives"])
    {
      goto LABEL_19;
    }

    if ([0 isEqualToString:@"com.apple.sensorkit.removeOldData"])
    {
      goto LABEL_30;
    }

    if ([0 isEqualToString:@"com.apple.sensorkit.postMetric"])
    {
      goto LABEL_43;
    }

    if ([0 isEqualToString:@"com.apple.sensorkit.syncCompanionStateToGizmo"] & 1) != 0 || (objc_msgSend(0, "isEqualToString:", @"com.apple.sensorkit.syncCompanionStateToGizmoLocked"))
    {
      goto LABEL_72;
    }

    v65 = [0 isEqualToString:@"com.apple.sensorkit.decryptArchives"];
    v62 = 0;
    if (v65)
    {
      goto LABEL_82;
    }
  }

  if ([v62 isEqualToString:@"com.apple.sensorkit.gcKeys"])
  {
    sub_10002FDB0(v4, a3);
  }
}

- (void)launchEventXPCEventReceived:(id)a3
{
  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(a3, _xpc_event_key_name)];
  v5 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received XPC Event %{public}@", &v7, 0xCu);
  }

  v6 = [(NSString *)v4 isEqualToString:@"com.apple.Preferences.ResetPrivacyWarningsNotification"];
  if (self)
  {
    if (v6)
    {
      sub_10003606C(self, 0, 0);
    }
  }
}

- (void)launchEventCheckInActivity:(id)a3
{
  if (a3)
  {
    if (![*(a3 + 1) isEqualToString:@"com.apple.sensorkit.updateCompanionWithSamples"])
    {
      return;
    }
  }

  else if (![0 isEqualToString:@"com.apple.sensorkit.updateCompanionWithSamples"])
  {
    return;
  }

  gizmoSyncService = self->_gizmoSyncService;
  if (gizmoSyncService && gizmoSyncService->_side == 1)
  {

    sub_100023664(a3);
  }
}

- (int64_t)cacheDelete:(id)a3 purgeWithUrgency:(int64_t)a4 dryRun:(BOOL)a5
{
  v61 = a5;
  dispatch_assert_queue_V2(self->_q);
  v7 = sub_10003A2C0(self->_fileURLs, self->_defaults);
  v8 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v7);
  v9 = mach_continuous_time();
  v10 = &off_100071000;
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v11 = &off_100071000;
  v12 = qword_100071B68;
  v13 = &off_100071000;
  v14 = *&qword_100071B70;
  v15 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v12 >= v9)
  {
    v17 = -v16;
  }

  else
  {
    v17 = v16;
  }

  v18 = sub_10002B538(&self->_defaults->super.isa);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  if (v8)
  {
    v19 = sub_10000DC14(v8, 0);
  }

  else
  {
    v19 = 0;
  }

  v56 = [v19 countByEnumeratingWithState:&v67 objects:v72 count:16];
  v20 = 0;
  if (v56)
  {
    v21 = v15 + v14 + v17 + v18;
    v22 = *v68;
    v58 = v8;
    v54 = v19;
    v55 = a4;
    v53 = *v68;
    do
    {
      v23 = 0;
      do
      {
        if (*v68 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v57 = v23;
        v24 = *(*(&v67 + 1) + 8 * v23);
        v25 = objc_autoreleasePoolPush();
        v26 = sub_10003A334(v24, 0, self->_fileURLs, self->_defaults);
        v60 = sub_10000D068([RDInformingDatastore alloc], v26);
        v27 = sub_10002A010(self->_defaults, a4, v24);
        v28 = mach_continuous_time();
        context = v25;
        if (v10[364] != -1)
        {
          dispatch_once(&qword_100071B60, &stru_100060D90);
        }

        v29 = v11[365];
        v30 = *(v13 + 366);
        v31 = *&qword_100071B78;
        TMConvertTicksToSeconds();
        v63 = 0u;
        v64 = 0u;
        if (v29 >= v28)
        {
          v33 = -v32;
        }

        else
        {
          v33 = v32;
        }

        v65 = 0uLL;
        v66 = 0uLL;
        v34 = sub_10000D2B8(v60);
        v35 = [(NSSet *)v34 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = fmax(v30 - v27 + v31 + v33, 0.0);
          v38 = *v64;
          while (2)
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v64 != v38)
              {
                objc_enumerationMutation(v34);
              }

              v40 = *(*(&v63 + 1) + 8 * i);
              v41 = objc_autoreleasePoolPush();
              v42 = sub_10003A334(v24, v40, self->_fileURLs, self->_defaults);
              v43 = sub_10000BC68([RDPruneableDatastore alloc], &v42->super.isa);
              v44 = sub_10000BE00(v43, 1, 0, v61, v37, v21);

              v45 = __OFADD__(v20, v44);
              v20 += v44;
              if (v45)
              {
                v51 = qword_100071B30;
                if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&_mh_execute_header, v51, OS_LOG_TYPE_FAULT, "Counting any more file sizes will overflow", buf, 2u);
                }

                objc_autoreleasePoolPop(v41);
                objc_autoreleasePoolPop(context);
                goto LABEL_35;
              }

              objc_autoreleasePoolPop(v41);
            }

            v36 = [(NSSet *)v34 countByEnumeratingWithState:&v63 objects:v71 count:16];
            if (v36)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(context);
        v23 = v57 + 1;
        v8 = v58;
        v19 = v54;
        a4 = v55;
        v10 = &off_100071000;
        v11 = &off_100071000;
        v13 = &off_100071000;
        v22 = v53;
      }

      while ((v57 + 1) != v56);
      v56 = [v54 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v56);
  }

  v46 = +[NSFileManager defaultManager];
  v47 = sub_10001AD14();
  v48 = sub_1000186E4(v46, v47, v61);
  v45 = __OFADD__(v20, v48);
  v20 += v48;
  if (v45)
  {
    v50 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v50, OS_LOG_TYPE_FAULT, "Counting any more file sizes will overflow", buf, 2u);
    }
  }

LABEL_35:
  if (!v61 && v20 >= 1)
  {
    sub_100034628(self, v49);
  }

  return v20;
}

- (NSDictionary)currentRecordingStatesForAnalytics:(NSDictionary *)result
{
  if (result)
  {
    v1 = result;
    v2 = +[NSMutableDictionary dictionary];
    if (sub_1000296BC(v1[7]))
    {
      v3 = sub_1000297E4(v1[7]);
    }

    else
    {
      v3 = 0;
    }

    context = objc_autoreleasePoolPush();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = sub_100019058();
    obj = sub_1000193F0(v4);
    v5 = [(SRSensorDescriptionEnumerator *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      if (v3)
      {
        do
        {
          v8 = 0;
          do
          {
            if (*v21 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v20 + 1) + 8 * v8);
            v10 = objc_autoreleasePoolPush();
            v11 = [v9 name];
            v12 = [objc_msgSend(v1 authorizedAndInterestedClientsForSensor:{v11), "count"}];
            [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v12 != 0), v11}];
            v13 = [v9 legacyName];
            if (v13)
            {
              [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v12 != 0), v13}];
            }

            objc_autoreleasePoolPop(v10);
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [(SRSensorDescriptionEnumerator *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v6);
      }

      else
      {
        do
        {
          v14 = 0;
          do
          {
            if (*v21 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v20 + 1) + 8 * v14);
            v16 = objc_autoreleasePoolPush();
            [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", 0), objc_msgSend(v15, "name", context)}];
            v17 = [v15 legacyName];
            if (v17)
            {
              [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", 0), v17}];
            }

            objc_autoreleasePoolPop(v16);
            v14 = v14 + 1;
          }

          while (v6 != v14);
          v6 = [(SRSensorDescriptionEnumerator *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v6);
      }
    }

    objc_autoreleasePoolPop(context);
    return [NSDictionary dictionaryWithDictionary:v2];
  }

  return result;
}

- (void)gizmoSyncConnectedDevicesAdded:(id)a3
{
  dispatch_assert_queue_V2(self->_q);
  gizmoSyncService = self->_gizmoSyncService;
  if (gizmoSyncService && gizmoSyncService->_side)
  {
    v5 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connected device added", v6, 2u);
    }

    sub_1000321C4(self);
  }
}

- (void)gizmoSync:(id)a3 didSyncState:(id)a4 deviceID:(id)a5
{
  gizmoSyncService = self->_gizmoSyncService;
  if (gizmoSyncService)
  {
    v8 = gizmoSyncService->_side == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"Gizmo";
    if (v8)
    {
      v10 = @"Companion";
    }

    *buf = 138412290;
    *v125 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ state received", buf, 0xCu);
  }

  v11 = sub_10001C00C(a4);
  v12 = sub_10003A2C0(self->_fileURLs, self->_defaults);
  v13 = sub_100013A44([RDGizmoStateDatastore alloc], v12);
  sub_100013AF8(v13, v11, a5);

  if (v8)
  {
    v14 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Companion state received", buf, 2u);
    }

    v15 = a4;
    if (a4)
    {
      v15 = *(a4 + 3);
    }

    stateCache = self->_stateCache;
    if (stateCache)
    {
      isa = stateCache[6].super.isa;
      if (isa != v15)
      {
        stateCache[6].super.isa = v15;
      }

      sub_100027584(stateCache);
    }

    v18 = a4;
    if (a4)
    {
      sub_10002B1B0(&self->_defaults->super.isa, *(a4 + 4));
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v19 = *(a4 + 2);
      v20 = [v19 countByEnumeratingWithState:&v102 objects:v121 count:16];
      if (v20)
      {
LABEL_18:
        v21 = v20;
        v88 = *v103;
        obj = v19;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v103 != v88)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v102 + 1) + 8 * i);
            if (v18)
            {
              v24 = v18[2];
            }

            else
            {
              v24 = 0;
            }

            v25 = [objc_msgSend(v24 objectForKeyedSubscript:{*(*(&v102 + 1) + 8 * i)), "BOOLValue"}];
            v26 = qword_100071B30;
            if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v27 = @"stop";
              if (v25)
              {
                v27 = @"start";
              }

              *v125 = v27;
              *&v125[8] = 2114;
              *&v125[10] = v23;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Got request from companion to %{public}@ recording for %{public}@", buf, 0x16u);
            }

            v123[0] = 0;
            clientInterest = self->_clientInterest;
            if (!clientInterest)
            {
              goto LABEL_37;
            }

            v29 = [(NSCache *)clientInterest->_clientInterestCache rd_objectsForSensor:v23 fallbackURL:sub_10001AAE4(clientInterest->_fileURLs, v23)];
            v30 = [v29 mutableCopy];
            v31 = v30;
            if (v25)
            {
              [v30 addObject:@"com.apple.sensorkit.dummy-bundle-id"];
              if ([v29 isEqualToSet:v31])
              {
                goto LABEL_21;
              }
            }

            else
            {
              [v30 removeObject:@"com.apple.sensorkit.dummy-bundle-id"];
              if ([v29 isEqualToSet:v31])
              {
LABEL_21:

                goto LABEL_22;
              }
            }

            [(NSCache *)clientInterest->_clientInterestCache setObject:v31 forKey:v23];
            v32 = [(NSCache *)clientInterest->_clientInterestCache rd_writeObject:v31 forKey:v23 toURL:sub_10001AAE4(clientInterest->_fileURLs error:v23), v123];

            if ((v32 & 1) == 0)
            {
LABEL_37:
              v33 = qword_100071B30;
              if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
              {
                *buf = 67240706;
                *v125 = v25;
                *&v125[4] = 2114;
                *&v125[6] = v23;
                *&v125[14] = 2114;
                *&v125[16] = v123[0];
                _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to set interest to %{public, BOOL}d for %{public}@ because %{public}@", buf, 0x1Cu);
              }
            }

LABEL_22:
            v18 = a4;
          }

          v21 = [obj countByEnumeratingWithState:&v102 objects:v121 count:16];
        }

        while (v21);
      }
    }

    else
    {
      sub_10002B1B0(&self->_defaults->super.isa, 0);
      v19 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v20 = [0 countByEnumeratingWithState:&v102 objects:v121 count:16];
      if (v20)
      {
        goto LABEL_18;
      }
    }

    if (v18)
    {
      v18 = v18[5];
    }

    v89 = +[NSMutableSet set];
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v80 = v18;
    v34 = &IDSCopyIDForDevice_ptr;
    v78 = [v18 countByEnumeratingWithState:&v110 objects:v123 count:16];
    if (v78)
    {
      v76 = *v111;
      do
      {
        v35 = 0;
        do
        {
          if (*v111 != v76)
          {
            objc_enumerationMutation(v80);
          }

          obja = v35;
          v36 = *(*(&v110 + 1) + 8 * v35);
          context = objc_autoreleasePoolPush();
          if ([-[RDDaemon authorizedAndInterestedClientsForSensor:](self authorizedAndInterestedClientsForSensor:{v36), "count"}])
          {
            v37 = [v34[302] setWithArray:{objc_msgSend(v80, "objectForKeyedSubscript:", v36)}];
            v38 = +[NSMutableSet set];
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v39 = [v37 countByEnumeratingWithState:&v114 objects:buf count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v115;
              do
              {
                for (j = 0; j != v40; j = j + 1)
                {
                  if (*v115 != v41)
                  {
                    objc_enumerationMutation(v37);
                  }

                  [v38 addObject:{objc_msgSend(*(*(&v114 + 1) + 8 * j), "objectForKeyedSubscript:", @"_requestingBundleIdentifier", v76)}];
                }

                v40 = [v37 countByEnumeratingWithState:&v114 objects:buf count:16];
              }

              while (v40);
            }

            if ([v38 count])
            {
              v43 = [v34[302] setWithSet:v38];
              if ([v43 count] < 2)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v43 = 0;
              if ([0 count] < 2)
              {
                goto LABEL_48;
              }
            }

            v44 = self->_clientInterest;
            if (v44)
            {
              v45 = [(NSCache *)v44->_sensorConfigurationCache rd_objectsForSensor:v36 fallbackURL:sub_10001AB2C(v44->_fileURLs, v36)];
            }

            else
            {
              v45 = 0;
            }

            v46 = +[NSMutableSet set];
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v47 = [v45 countByEnumeratingWithState:&v114 objects:buf count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v115;
              do
              {
                for (k = 0; k != v48; k = k + 1)
                {
                  if (*v115 != v49)
                  {
                    objc_enumerationMutation(v45);
                  }

                  [v46 addObject:{objc_msgSend(*(*(&v114 + 1) + 8 * k), "objectForKeyedSubscript:", @"_requestingBundleIdentifier"}];
                }

                v48 = [v45 countByEnumeratingWithState:&v114 objects:buf count:16];
              }

              while (v48);
            }

            if ([v46 count])
            {
              v34 = &IDSCopyIDForDevice_ptr;
              v51 = [NSSet setWithSet:v46];
            }

            else
            {
              v51 = 0;
              v34 = &IDSCopyIDForDevice_ptr;
            }

            v106 = 0u;
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v52 = [v43 countByEnumeratingWithState:&v106 objects:v122 count:16];
            if (v52)
            {
              v53 = v52;
              v54 = *v107;
              do
              {
                for (m = 0; m != v53; m = m + 1)
                {
                  if (*v107 == v54)
                  {
                    if ([(NSSet *)v51 containsObject:*(*(&v106 + 1) + 8 * m)])
                    {
                      continue;
                    }
                  }

                  else
                  {
                    objc_enumerationMutation(v43);
                    if ([(NSSet *)v51 containsObject:*(*(&v106 + 1) + 8 * m)])
                    {
                      continue;
                    }
                  }

                  [v89 addObject:{objc_msgSend(+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription, "sensorDescriptionForSensor:", v36), "name")}];
                }

                v53 = [v43 countByEnumeratingWithState:&v106 objects:v122 count:16];
              }

              while (v53);
            }
          }

LABEL_48:
          objc_autoreleasePoolPop(context);
          v35 = obja + 1;
        }

        while (obja + 1 != v78);
        v78 = [v80 countByEnumeratingWithState:&v110 objects:v123 count:16];
      }

      while (v78);
    }

    if ([v89 count])
    {
      sub_100032390(self, v89);
    }

    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    if (a4)
    {
      v56 = *(a4 + 5);
    }

    else
    {
      v56 = 0;
    }

    v81 = [v56 countByEnumeratingWithState:&v98 objects:v120 count:{16, v56}];
    if (v81)
    {
      v79 = *v99;
      do
      {
        v57 = 0;
        do
        {
          if (*v99 != v79)
          {
            objc_enumerationMutation(v77);
          }

          objb = v57;
          v58 = *(*(&v98 + 1) + 8 * v57);
          contexta = objc_autoreleasePoolPush();
          v59 = self->_clientInterest;
          if (v59)
          {
            v60 = [(NSCache *)v59->_sensorConfigurationCache rd_objectsForSensor:v58 fallbackURL:sub_10001AB2C(v59->_fileURLs, v58)];
          }

          else
          {
            v60 = 0;
          }

          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v61 = [v60 countByEnumeratingWithState:&v94 objects:v119 count:16];
          if (v61)
          {
            v62 = v61;
            v63 = *v95;
            do
            {
              for (n = 0; n != v62; n = n + 1)
              {
                if (*v95 != v63)
                {
                  objc_enumerationMutation(v60);
                }

                v65 = *(*(&v94 + 1) + 8 * n);
                v123[0] = 0;
                if ((sub_100001EC0(self->_clientInterest, [v65 objectForKeyedSubscript:@"_requestingBundleIdentifier"], v58, v123) & 1) == 0)
                {
                  v66 = qword_100071B30;
                  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    *v125 = v58;
                    *&v125[8] = 2114;
                    *&v125[10] = v123[0];
                    *&v125[18] = 2114;
                    *&v125[20] = v65;
                    _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to remove configuration for %{public}@ because %{public}@. Config: %{public}@", buf, 0x20u);
                  }
                }
              }

              v62 = [v60 countByEnumeratingWithState:&v94 objects:v119 count:16];
            }

            while (v62);
          }

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          if (a4)
          {
            v67 = *(a4 + 5);
          }

          else
          {
            v67 = 0;
          }

          v68 = [v67 objectForKeyedSubscript:v58];
          v69 = [v68 countByEnumeratingWithState:&v90 objects:v118 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v91;
            do
            {
              for (ii = 0; ii != v70; ii = ii + 1)
              {
                if (*v91 != v71)
                {
                  objc_enumerationMutation(v68);
                }

                v73 = *(*(&v90 + 1) + 8 * ii);
                v123[0] = 0;
                if ((sub_100001CA0(self->_clientInterest, v73, v58, v123) & 1) == 0)
                {
                  v74 = qword_100071B30;
                  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    *v125 = v58;
                    *&v125[8] = 2114;
                    *&v125[10] = v123[0];
                    *&v125[18] = 2114;
                    *&v125[20] = v73;
                    _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Failed to set configuration for %{public}@ because %{public}@. Config: %{public}@", buf, 0x20u);
                  }
                }
              }

              v70 = [v68 countByEnumeratingWithState:&v90 objects:v118 count:16];
            }

            while (v70);
          }

          objc_autoreleasePoolPop(contexta);
          v57 = objb + 1;
        }

        while (objb + 1 != v81);
        v81 = [v77 countByEnumeratingWithState:&v98 objects:v120 count:16];
      }

      while (v81);
    }

    if (a4)
    {
      v75 = *(a4 + 2);
    }

    else
    {
      v75 = 0;
    }

    sub_1000318E8(self, +[NSSet setWithArray:](NSSet, "setWithArray:", [v75 allKeys]));
    [(RDGizmoSyncing *)self->_gizmoSync sendStateToPeer:sub_100031E44(self)];
  }
}

- (void)gizmoSync:(id)a3 didSyncRTCOffset:(double)a4 timeBeforeUpdate:(double)a5
{
  gizmoSyncService = self->_gizmoSyncService;
  if (gizmoSyncService && gizmoSyncService->_side == 1)
  {
    v8 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v35) = 0;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Should not be receiving RTC offset sync message on the phone", &v35, 2u);
    }

    return;
  }

  stateCache = self->_stateCache;
  v11 = 0.0;
  if (stateCache)
  {
    timeSyncTimestamp = stateCache->_timeSyncTimestamp;
    stateCache->_remoteRTCOffset = a4;
    v13 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v14 = qword_100071B68;
    v15 = *&qword_100071B70;
    v16 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v14 >= v13)
    {
      v17 = -v17;
    }

    stateCache->_timeSyncTimestamp = v16 + v15 + v17;
    sub_100027584(stateCache);
    v18 = self->_stateCache;
    if (v18)
    {
      v11 = v18->_timeSyncTimestamp;
    }

    v19 = mach_continuous_time();
    if (qword_100071B60 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

  timeSyncTimestamp = 0.0;
  v19 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
LABEL_35:
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

LABEL_13:
  v20 = qword_100071B68;
  v21 = *&qword_100071B70;
  v22 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  v24 = v22 + v21;
  if (v20 >= v19)
  {
    v23 = -v23;
  }

  v25 = v24 + v23;
  v26 = v24 + v23 - a5;
  v27 = v11 - timeSyncTimestamp;
  v28 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 134350336;
    v36 = a5;
    v37 = 2050;
    v38 = v25;
    v39 = 2050;
    v40 = v26;
    v41 = 2050;
    v42 = timeSyncTimestamp;
    v43 = 2050;
    v44 = v11;
    v45 = 2050;
    v46 = v11 - timeSyncTimestamp;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "RTC time synced with companion. before: %{public}f after: %{public}f diff: %{public}f, syncTSBefore: %{public}f syncTSAfter: %{public}f diff: %{public}f", &v35, 0x3Eu);
    v28 = qword_100071B30;
  }

  v29 = fabs(v26);
  if (v29 > 1.0 || (v27 >= 0.0 ? (v30 = 2 * XPC_ACTIVITY_INTERVAL_1_DAY < v27) : (v30 = 1), v30))
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Syncing time with writers", &v35, 2u);
    }

    v31 = sub_10003A2C0(self->_fileURLs, self->_defaults);
    v32 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v31);
    sub_100034628(self, v33);

    if (self->_active)
    {
      sub_10001DB60();
    }
  }

  else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v35 = 134217984;
    v36 = v26;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Difference in time update (%f) was not deemed significant. Updating locally but not notifying writers", &v35, 0xCu);
  }

  [(RDAnalyticsEventListener *)self->_analyticsEventListener gizmoSyncDidSyncTime:a3];
  if (v26 < 0.0 && v29 > sub_10002B538(&self->_defaults->super.isa))
  {
    v34 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v35) = 0;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "RTC time has moved backward significantly. Companion RTC has likely reset! Garbage collecting any data from the future", &v35, 2u);
    }

    sub_1000306A0(self, 0, 4, 4096);
  }
}

- (int64_t)prerequisitesStatusForAnalytics:(id)a3
{
  if (self)
  {
    self = self->_defaults;
  }

  return sub_10002B090(self);
}

- (void)dumpClientsWithReply:(id)a3
{
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  v6 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v31 = sub_10001B58C(v5);
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Got a request to dumpClients from: %{public}@", buf, 0xCu);
  }

  v28 = 0;
  if (sub_10002BB64(v5, @"com.apple.private.sensorkit.diagnostics.allow", 0, 0, @"com.apple.private.sensorkit.debugging.allow", &self->_defaults->super.isa, self, &v28))
  {
    v23 = a3;
    v7 = +[NSMutableDictionary dictionary];
    context = objc_autoreleasePoolPush();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = sub_100019058();
    v9 = sub_1000193F0(v8);
    v10 = [(SRSensorDescriptionEnumerator *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [v14 name];
          clientInterest = self->_clientInterest;
          if (clientInterest)
          {
            v18 = [(NSCache *)clientInterest->_clientInterestCache rd_objectsForSensor:v16 fallbackURL:sub_10001AAE4(clientInterest->_fileURLs, v16)];
          }

          else
          {
            v18 = 0;
          }

          [v7 setObject:objc_msgSend(v18 forKeyedSubscript:{"allObjects"), v16}];
          v19 = qword_100071B30;
          if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v7 objectForKeyedSubscript:v16];
            *buf = 138543618;
            v31 = v16;
            v32 = 2114;
            v33 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "clients for %{public}@: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [(SRSensorDescriptionEnumerator *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(context);
    v23[2](v23, v7, 0);
  }

  else
  {
    v21 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = v5;
      v32 = 2114;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    }

    (*(a3 + 2))(a3, &__NSDictionary0__struct, v28);
  }
}

- (void)dumpStateCacheWithReply:(id)a3
{
  v5 = +[NSXPCConnection currentConnection];
  v8 = 0;
  if (sub_10002BB64(v5, @"com.apple.private.sensorkit.diagnostics.allow", 0, 0, @"com.apple.private.sensorkit.debugging.allow", &self->_defaults->super.isa, self, &v8))
  {
    v6 = sub_100027B10(self->_stateCache);
    (*(a3 + 2))(a3, v6, 0);
  }

  else
  {
    v7 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    }

    (*(a3 + 2))(a3, &__NSDictionary0__struct, v8);
  }
}

- (void)listDatastoreWithReply:(id)a3
{
  v5 = +[NSXPCConnection currentConnection];
  v11 = 0;
  if (sub_10002BB64(v5, @"com.apple.private.sensorkit.diagnostics.allow", 0, 0, @"com.apple.private.sensorkit.debugging.allow", &self->_defaults->super.isa, self, &v11))
  {
    v6 = [NSURL fileURLWithPath:@"datastore-listing.txt.gz" isDirectory:0 relativeToURL:[NSURL fileURLWithPath:NSTemporaryDirectory()]];
    v7 = sub_100019840([SRCompressedOutputStream alloc], v6, 517);
    [v7 open];
    v8 = sub_10003A2C0(self->_fileURLs, self->_defaults);
    v9 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v8);
    sub_10000DD48(v9, v7);

    [v7 close];
    (*(a3 + 2))(a3, [(NSURL *)v6 path], 0);
  }

  else
  {
    v10 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    }

    (*(a3 + 2))(a3, 0, v11);
  }
}

- (void)dumpConfigurationsWithReply:(id)a3
{
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  v24 = 0;
  if (sub_10002BB64(v5, @"com.apple.private.sensorkit.diagnostics.allow", 0, 0, @"com.apple.private.sensorkit.debugging.allow", &self->_defaults->super.isa, self, &v24))
  {
    v6 = +[NSMutableDictionary dictionary];
    context = objc_autoreleasePoolPush();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = sub_100019058();
    v8 = sub_1000193F0(v7);
    v9 = [(SRSensorDescriptionEnumerator *)v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [v13 name];
          clientInterest = self->_clientInterest;
          if (clientInterest)
          {
            v17 = [(NSCache *)clientInterest->_sensorConfigurationCache rd_objectsForSensor:v15 fallbackURL:sub_10001AB2C(clientInterest->_fileURLs, v15)];
          }

          else
          {
            v17 = 0;
          }

          [v6 setObject:objc_msgSend(v17 forKeyedSubscript:{"allObjects"), v15}];
          objc_autoreleasePoolPop(v14);
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(SRSensorDescriptionEnumerator *)v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    objc_autoreleasePoolPop(context);
    (*(a3 + 2))(a3, v6, 0);
  }

  else
  {
    v18 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = v5;
      v28 = 2114;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    }

    (*(a3 + 2))(a3, &__NSDictionary0__struct, v24);
  }
}

- (void)dumpDefaultsWithReply:(id)a3
{
  dispatch_assert_queue_V2(self->_q);
  v5 = +[NSXPCConnection currentConnection];
  v11 = 0;
  if (sub_10002BB64(v5, @"com.apple.private.sensorkit.diagnostics.allow", 0, 0, @"com.apple.private.sensorkit.debugging.allow", &self->_defaults->super.isa, self, &v11))
  {
    defaults = self->_defaults;
    if (defaults)
    {
      v7 = [NSDictionary dictionaryWithDictionary:[(NSUserDefaults *)defaults->_defaults dictionaryRepresentation]];
      v8 = *(a3 + 2);
    }

    else
    {
      v10 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No defaults to display", buf, 2u);
      }

      v8 = *(a3 + 2);
      v7 = &__NSDictionary0__struct;
    }

    v8(a3, v7, 0);
  }

  else
  {
    v9 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    }

    (*(a3 + 2))(a3, &__NSDictionary0__struct, v11);
  }
}

- (void)fetchEligibilityStatusForBundleIdentifier:(id)a3 sensor:(id)a4 reply:(id)a5
{
  v9 = +[NSXPCConnection currentConnection];
  v11 = 0;
  if (sub_10002BB64(v9, @"com.apple.private.sensorkit.diagnostics.allow", 0, 0, @"com.apple.private.sensorkit.debugging.allow", &self->_defaults->super.isa, self, &v11))
  {
    sub_100034B50(self, a3, a4, a5);
  }

  else
  {
    v10 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    }

    (*(a5 + 2))(a5, 0, v11);
  }
}

- (void)fetchDeviceInformationForDeviceIdentifiers:(id)a3 reply:(id)a4
{
  v7 = +[NSXPCConnection currentConnection];
  v10 = 0;
  if (sub_10002BB64(v7, @"com.apple.private.sensorkit.diagnostics.allow", 0, 0, @"com.apple.private.sensorkit.debugging.allow", &self->_defaults->super.isa, self, &v10))
  {
    if (!a3)
    {
      objc_opt_self();
      v11 = qword_100071B88;
      a3 = [NSArray arrayWithObjects:&v11 count:1];
    }

    v8 = sub_1000339B8(self, a3);
    (*(a4 + 2))(a4, v8, 0);
  }

  else
  {
    v9 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ not valid because %{public}@", buf, 0x16u);
    }

    (*(a4 + 2))(a4, &__NSArray0__struct, v10);
  }
}

@end