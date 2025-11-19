@interface NIServerBTLocalizerSession
- (BOOL)updateConfiguration:(id)a3;
- (NIServerBTLocalizerSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr;
- (id).cxx_construct;
- (id)_bringUpUpdatesEngine;
- (id)configure;
- (id)convertLocalizerStateToString:(int)a3;
- (id)convertToString:(int)a3;
- (id)discoveryTokenFromIdentifier:(unint64_t)a3;
- (id)getResourcesManager;
- (id)objectFromIdentifier:(unint64_t)a3;
- (id)run;
- (optional<unsigned)identifierFromDiscoveryToken:(id)a3;
- (void)evaluateStateMachine;
- (void)findMyAccessoryManager:(id)a3 didCompleteAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didConnectDevice:(id)a4 error:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didDisconnectDevice:(id)a4;
- (void)findMyAccessoryManager:(id)a3 didFailWithError:(id)a4 forDevice:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didFetchAccessoryInformationForDevice:(id)a4 ownershipType:(unint64_t)a5 communicationProtocol:(unint64_t)a6 accessoryTypeName:(id)a7 error:(id)a8;
- (void)findMyAccessoryManager:(id)a3 didFetchTxPower:(id)a4 fromDevice:(id)a5 withError:(id)a6;
- (void)findMyAccessoryManager:(id)a3 didObserveAdvertisementWithDate:(id)a4 address:(id)a5 advertisementData:(id)a6 status:(unsigned __int8)a7 rssi:(int64_t)a8 reserved:(id)a9 uuid:(id)a10 ownershipType:(unint64_t)a11 channel:(unint64_t)a12;
- (void)findMyAccessoryManager:(id)a3 didStartAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5;
- (void)findMyAccessoryManager:(id)a3 didStopAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5;
- (void)handleError:(id)a3;
- (void)invalidate;
- (void)startRangingAsOwner:(BOOL)a3;
- (void)stopRangingAsOwner:(BOOL)a3;
- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4;
- (void)updatesEngine:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6 regionTransitionSuppressed:(BOOL)a7;
@end

@implementation NIServerBTLocalizerSession

- (NIServerBTLocalizerSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v41 = +[NSAssertionHandler currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"NIServerBTLocalizerSession.mm" lineNumber:127 description:@"NIServerItemLocalizerSession given invalid configuration."];
  }

  v12 = [v9 serverSessionIdentifier];

  if (!v12)
  {
    v42 = +[NSAssertionHandler currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"NIServerBTLocalizerSession.mm" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v45.receiver = self;
  v45.super_class = NIServerBTLocalizerSession;
  v13 = [(NIServerBaseSession *)&v45 initWithResourcesManager:v9 configuration:v10 error:a5];
  v14 = [v9 clientConnectionQueue];
  v15 = *(v13 + 8);
  *(v13 + 8) = v14;

  v16 = [v10 copy];
  v17 = *(v13 + 24);
  *(v13 + 24) = v16;

  v18 = [*(v13 + 24) sessionDiscoveryToken];
  v19 = v18 == 0;

  if (v19)
  {
    v43 = +[NSAssertionHandler currentHandler];
    [v43 handleFailureInMethod:a2 object:v13 file:@"NIServerBTLocalizerSession.mm" lineNumber:136 description:@"NIServerBTLocalizerSession given invalid configuration without discovery token."];
  }

  v20 = qword_1009F9820;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(v13 + 24) descriptionInternal];
    *buf = 138412290;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,NI bt localizer configuration %@", buf, 0xCu);
  }

  v22 = [v9 serverSessionIdentifier];
  v23 = [v22 UUIDString];
  v24 = *(v13 + 9);
  *(v13 + 9) = v23;

  if (v9)
  {
    [v9 protobufLogger];
    v25 = *buf;
  }

  else
  {
    v25 = 0uLL;
  }

  memset(buf, 0, sizeof(buf));
  v26 = *(v13 + 15);
  *(v13 + 7) = v25;
  if (v26)
  {
    sub_10000AD84(v26);
  }

  if (*&buf[8])
  {
    sub_10000AD84(*&buf[8]);
  }

  *(v13 + 148) = 0;
  *(v13 + 149) = 0;
  *(v13 + 11) = 0;
  *(v13 + 12) = 0;
  *(v13 + 176) = 0;
  v27 = [*(v13 + 24) sessionDiscoveryToken];
  v28 = sub_1003005A0(v27);

  v29 = [NSString alloc];
  v30 = [v28 objectForKeyedSubscript:&off_1009C3F80];
  v31 = [v29 initWithData:v30 encoding:4];

  v32 = [[NSUUID alloc] initWithUUIDString:v31];
  if (!v32)
  {
    v44 = +[NSAssertionHandler currentHandler];
    [v44 handleFailureInMethod:a2 object:v13 file:@"NIServerBTLocalizerSession.mm" lineNumber:153 description:@"NIServerBTLocalizerSession given invalid discovery token without beacon UUID"];
  }

  v33 = [[PRRemoteDevice alloc] initWithBeaconUUID:v32];
  v34 = *(v13 + 10);
  *(v13 + 10) = v33;

  *(v13 + 128) = 0;
  [v13 setCurrentTask:0];
  [v13 setCurrentLocalizerState:0];
  v35 = [[CLFindMyAccessoryManager alloc] initWithDelegate:v13 delegateQueue:*(v13 + 8)];
  v36 = *(v13 + 17);
  *(v13 + 17) = v35;

  v37 = [v13 getResourcesManager];
  v38 = [v37 analytics];
  v39 = *(v13 + 23);
  *(v13 + 23) = v38;

  return v13;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_configuration)
  {
    sub_1004ABCF0();
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PRRemoteDevice *)self->_beacon UUID];
    v5 = [v4 UUIDString];
    v11 = 136315138;
    v12 = [v5 UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,configure for device %s", &v11, 0xCu);
  }

  v6 = [(NIFindingConfiguration *)self->_configuration preferredUpdateRate];
  self->_shouldRange = v6 == 2;
  if (v6 == 2)
  {
    v7 = [(NIServerBTLocalizerSession *)self _bringUpUpdatesEngine];
  }

  else
  {
    updatesEngine = self->_updatesEngine;
    if (updatesEngine)
    {
      [(NINearbyUpdatesEngine *)updatesEngine invalidate];
      v9 = self->_updatesEngine;
    }

    else
    {
      v9 = 0;
    }

    self->_updatesEngine = 0;

    v7 = 0;
  }

  return v7;
}

- (id)run
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_configuration)
  {
    sub_1004ABD1C();
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PRRemoteDevice *)self->_beacon UUID];
    v5 = [v4 UUIDString];
    v7 = 136315138;
    v8 = [v5 UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,run for device %s", &v7, 0xCu);
  }

  [(NIServerBTLocalizerSession *)self evaluateStateMachine];
  return 0;
}

- (void)invalidate
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PRRemoteDevice *)self->_beacon UUID];
    v5 = [v4 UUIDString];
    *buf = 136315138;
    v20 = [v5 UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Invalidate for device %s", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  [(NINearbyUpdatesEngine *)self->_updatesEngine invalidate];
  updatesEngine = self->_updatesEngine;
  self->_updatesEngine = 0;

  if (self->_currentTask == 8)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PRRemoteDevice *)self->_beacon UUID];
      v9 = [v8 UUIDString];
      v10 = v9;
      v11 = [v9 UTF8String];
      *buf = 136315138;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command stopAggressiveAdvertising on device %s", buf, 0xCu);
    }

    accessoryManager = self->_accessoryManager;
    v13 = [(PRRemoteDevice *)self->_beacon UUID];
    [(CLFindMyAccessoryManager *)accessoryManager stopAggressiveAdvertisingOnDevice:v13];
  }

  utRetryTimer = self->_utRetryTimer;
  if (utRetryTimer)
  {
    dispatch_source_cancel(utRetryTimer);
    v15 = self->_utRetryTimer;
    self->_utRetryTimer = 0;
  }

  measurementTimer = self->_measurementTimer;
  if (measurementTimer)
  {
    dispatch_source_cancel(measurementTimer);
    v17 = self->_measurementTimer;
    self->_measurementTimer = 0;
  }

  v18.receiver = self;
  v18.super_class = NIServerBTLocalizerSession;
  [(NIServerBaseSession *)&v18 invalidate];
}

- (BOOL)updateConfiguration:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (v4 && self->_configuration && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 copy];
    v6 = [(NIFindingConfiguration *)self->_configuration canUpdateToConfiguration:v5];
    v7 = qword_1009F9820;
    v8 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        containerUniqueIdentifier = self->_containerUniqueIdentifier;
        configuration = self->_configuration;
        v17 = 138543874;
        v18 = containerUniqueIdentifier;
        v19 = 2114;
        v20 = configuration;
        v21 = 2114;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Update configuration [%{public}@]\nOld: %{public}@\nNew: %{public}@", &v17, 0x20u);
      }

      objc_storeStrong(&self->_configuration, v5);
    }

    else if (v8)
    {
      v14 = self->_containerUniqueIdentifier;
      v15 = self->_configuration;
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Can't update configuration, parameters are too different [%@]\nOld: %@\nNew: %@", &v17, 0x20u);
    }
  }

  else
  {
    v11 = qword_1009F9820;
    v6 = 0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_containerUniqueIdentifier;
      v13 = self->_configuration;
      v17 = 138412802;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Can't update configuration, one is nil or wrong type [%@]\nOld: %@\nNew: %@", &v17, 0x20u);
      v6 = 0;
    }
  }

  return v6;
}

- (id)getResourcesManager
{
  v4.receiver = self;
  v4.super_class = NIServerBTLocalizerSession;
  v2 = [(NIServerBaseSession *)&v4 resourcesManager];

  return v2;
}

- (id)convertToString:(int)a3
{
  if (a3 > 9)
  {
    return 0;
  }

  else
  {
    return off_10099E850[a3];
  }
}

- (id)convertLocalizerStateToString:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_10099E8A0[a3];
  }
}

- (id)_bringUpUpdatesEngine
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PRRemoteDevice *)self->_beacon UUID];
    v5 = [v4 UUIDString];
    *buf = 136315138;
    v33 = [v5 UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,_bringUpUpdatesEngine for device %s", buf, 0xCu);
  }

  if (self->_updatesEngine)
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    algorithmsIdentifier = self->_algorithmsIdentifier;
    self->_algorithmsIdentifier = v7;

    v9 = [NINearbyUpdatesEngine alloc];
    configuration = self->_configuration;
    clientQueue = self->_clientQueue;
    analyticsManager = self->_analyticsManager;
    v13 = [(NIServerBTLocalizerSession *)self getResourcesManager];
    v14 = v13;
    if (v13)
    {
      [v13 protobufLogger];
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v29 = 0;
    v15 = [(NINearbyUpdatesEngine *)v9 initWithConfiguration:configuration queue:clientQueue delegate:self dataSource:self analyticsManager:analyticsManager protobufLogger:&v30 error:&v29];
    v6 = v29;
    updatesEngine = self->_updatesEngine;
    self->_updatesEngine = v15;

    if (v31)
    {
      sub_10000AD84(v31);
    }

    v17 = qword_1009F9820;
    v18 = v17;
    if (v6)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v19 = [(PRRemoteDevice *)self->_beacon UUID];
        v20 = [v19 UUIDString];
        v21 = v20;
        v22 = [v20 UTF8String];
        *buf = 138412546;
        v33 = v6;
        v34 = 2080;
        v35 = v22;
        _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "#ses-bt-loc,UpdatesEngine init failed with error %@ for device %s", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(NSUUID *)self->_algorithmsIdentifier UUIDString];
      v24 = [(PRRemoteDevice *)self->_beacon UUID];
      v25 = [v24 UUIDString];
      v26 = v25;
      v27 = [v25 UTF8String];
      *buf = 138412546;
      v33 = v23;
      v34 = 2080;
      v35 = v27;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,instantiated a new updates engine with identifier %@ for device %s", buf, 0x16u);
    }
  }

  return v6;
}

- (id)objectFromIdentifier:(unint64_t)a3
{
  if (self->_configuration)
  {
    v4 = [NINearbyObject alloc];
    v5 = [(NIFindingConfiguration *)self->_configuration sessionDiscoveryToken];
    v6 = [(NINearbyObject *)v4 initWithToken:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)discoveryTokenFromIdentifier:(unint64_t)a3
{
  configuration = self->_configuration;
  if (configuration)
  {
    configuration = [configuration sessionDiscoveryToken];
    v3 = vars8;
  }

  return configuration;
}

- (optional<unsigned)identifierFromDiscoveryToken:(id)a3
{
  v3 = [a3 hash];
  v4 = 1;
  result.__engaged_ = v4;
  result.var0 = v3;
  return result;
}

- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v1;
  v8 = v2;
  v5 = *(v3 + 48);
  if (!v5)
  {
    __assert_rtn("[NIServerBTLocalizerSession uniqueIdentifierForEngine:]", "NIServerBTLocalizerSession.mm", 390, "_algorithmsIdentifier != nil");
  }

  v6 = [v5 UUIDString];
  sub_100004A08(retstr, [v6 UTF8String]);

  return result;
}

- (void)evaluateStateMachine
{
  currentLocalizerState = self->_currentLocalizerState;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NIServerBTLocalizerSession *)self convertLocalizerStateToString:currentLocalizerState];
    v6 = [v5 UTF8String];
    v7 = [(PRRemoteDevice *)self->_beacon UUID];
    v8 = [v7 UUIDString];
    v36 = 136315394;
    v37 = v6;
    v38 = 2080;
    v39 = [v8 UTF8String];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,evaluateStateMachine - current state: %s for device %s", &v36, 0x16u);
  }

  if (currentLocalizerState <= 1)
  {
    if (!currentLocalizerState)
    {
      if (self->_hasFetchedAccessoryInformation)
      {
        if (self->_hasFetchedTxPower)
        {
          [(NIServerBTLocalizerSession *)self setCurrentLocalizerState:1];
          if (!self->_shouldRange)
          {
            return;
          }

          goto LABEL_27;
        }

        currentTask = self->_currentTask;
        if (currentTask != 2)
        {
          if (!currentTask)
          {
            [(NIServerBTLocalizerSession *)self setCurrentTask:2];
            v20 = qword_1009F9820;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(PRRemoteDevice *)self->_beacon UUID];
              v22 = [v21 UUIDString];
              v23 = v22;
              v24 = [v22 UTF8String];
              v36 = 136315138;
              v37 = v24;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command accessory manager to fetch tx power for device %s", &v36, 0xCu);
            }

            accessoryManager = self->_accessoryManager;
            v26 = [(PRRemoteDevice *)self->_beacon UUID];
            [(CLFindMyAccessoryManager *)accessoryManager fetchTxPowerFromDevice:v26 asOwner:[(NIServerBTLocalizerSession *)self isOwnerSession]];
          }

          return;
        }

        v27 = qword_1009F9820;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(PRRemoteDevice *)self->_beacon UUID];
          v33 = [v32 UUIDString];
          v34 = v33;
          v35 = [v33 UTF8String];
          v36 = 136315138;
          v37 = v35;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Waiting for fetchTxPowerFromDevice callback from CL for device %s", &v36, 0xCu);
        }
      }

      else
      {
        v11 = self->_currentTask;
        if (v11 != 1)
        {
          if (!v11)
          {
            v12 = qword_1009F9820;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [(PRRemoteDevice *)self->_beacon UUID];
              v14 = [v13 UUIDString];
              v15 = v14;
              v16 = [v14 UTF8String];
              v36 = 136315138;
              v37 = v16;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command accessory manager to fetch accessory information for device %s", &v36, 0xCu);
            }

            v17 = self->_accessoryManager;
            v18 = [(PRRemoteDevice *)self->_beacon UUID];
            [(CLFindMyAccessoryManager *)v17 fetchAccessoryInformationForDevice:v18];

            [(NIServerBTLocalizerSession *)self setCurrentTask:1];
          }

          return;
        }

        v27 = qword_1009F9820;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(PRRemoteDevice *)self->_beacon UUID];
          v29 = [v28 UUIDString];
          v30 = v29;
          v31 = [v29 UTF8String];
          v36 = 136315138;
          v37 = v31;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Waiting for fetchAccessoryInformation callback from CL for device %s", &v36, 0xCu);
        }
      }

      return;
    }

    if (currentLocalizerState != 1 || !self->_shouldRange)
    {
      return;
    }

LABEL_27:
    [(NIServerBTLocalizerSession *)self startRangingAsOwner:[(NIServerBTLocalizerSession *)self isOwnerSession]];
    return;
  }

  if (currentLocalizerState == 2)
  {
    if (!self->_shouldRange || self->_currentTask)
    {
      return;
    }

    goto LABEL_27;
  }

  if (currentLocalizerState == 3)
  {
    if (!self->_shouldRange)
    {
      v9 = self->_currentTask;
      if (v9 == 8 || v9 == 5)
      {
        goto LABEL_9;
      }
    }
  }

  else if (currentLocalizerState == 4 && !self->_shouldRange && !self->_currentTask)
  {
LABEL_9:
    [(NIServerBTLocalizerSession *)self stopRangingAsOwner:[(NIServerBTLocalizerSession *)self isOwnerSession]];
  }
}

- (void)startRangingAsOwner:(BOOL)a3
{
  v3 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PRRemoteDevice *)self->_beacon UUID];
    v7 = [v6 UUIDString];
    v21 = 136315138;
    v22 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,startRangingAsOwner:(BOOL)owner for device %s", &v21, 0xCu);
  }

  if (v3)
  {
    v8 = 6;
  }

  else
  {
    v8 = 3;
  }

  [(NIServerBTLocalizerSession *)self setCurrentTask:v8];
  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(PRRemoteDevice *)self->_beacon UUID];
    v11 = [v10 UUIDString];
    v12 = v11;
    v13 = [v11 UTF8String];
    v21 = 136315138;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command startMonitoringForAdvertisements for device %s", &v21, 0xCu);
  }

  [(CLFindMyAccessoryManager *)self->_accessoryManager startMonitoringForAvengerAdvertisementsForBTFinding];
  v14 = qword_1009F9820;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(PRRemoteDevice *)self->_beacon UUID];
    v16 = [v15 UUIDString];
    v17 = v16;
    v18 = [v16 UTF8String];
    v21 = 136315138;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command connect to set agg adv on device %s", &v21, 0xCu);
  }

  accessoryManager = self->_accessoryManager;
  v20 = [(PRRemoteDevice *)self->_beacon UUID];
  [(CLFindMyAccessoryManager *)accessoryManager connectDevice:v20];

  [(NIServerBTLocalizerSession *)self setCurrentLocalizerState:2];
}

- (void)stopRangingAsOwner:(BOOL)a3
{
  v3 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PRRemoteDevice *)self->_beacon UUID];
    v7 = [v6 UUIDString];
    v23 = 136315138;
    v24 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,stopRangingAsOwner:(BOOL)owner for device %s", &v23, 0xCu);
  }

  if (v3)
  {
    [(NIServerBTLocalizerSession *)self setCurrentTask:9];
    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PRRemoteDevice *)self->_beacon UUID];
      v10 = [v9 UUIDString];
      v11 = v10;
      v12 = [v10 UTF8String];
      v23 = 136315138;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command stopAggressiveAdvertising on device %s", &v23, 0xCu);
    }

    accessoryManager = self->_accessoryManager;
    v14 = [(PRRemoteDevice *)self->_beacon UUID];
    [(CLFindMyAccessoryManager *)accessoryManager stopAggressiveAdvertisingOnDevice:v14];
    goto LABEL_11;
  }

  [(NIServerBTLocalizerSession *)self setCurrentTask:0];
  [(NIServerBTLocalizerSession *)self setCurrentLocalizerState:1];
  utRetryTimer = self->_utRetryTimer;
  if (utRetryTimer)
  {
    dispatch_source_cancel(utRetryTimer);
    v16 = self->_utRetryTimer;
    self->_utRetryTimer = 0;
  }

  measurementTimer = self->_measurementTimer;
  if (measurementTimer)
  {
    dispatch_source_cancel(measurementTimer);
    v14 = self->_measurementTimer;
    self->_measurementTimer = 0;
LABEL_11:
  }

  v18 = qword_1009F9820;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(PRRemoteDevice *)self->_beacon UUID];
    v20 = [v19 UUIDString];
    v21 = v20;
    v22 = [v20 UTF8String];
    v23 = 136315138;
    v24 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command stopMonitoringForAdvertisements for device %s", &v23, 0xCu);
  }

  [(CLFindMyAccessoryManager *)self->_accessoryManager stopMonitoringForAvengerAdvertisementsForBTFinding];
}

- (void)handleError:(id)a3
{
  v6 = a3;
  [(NIServerBTLocalizerSession *)self setCurrentTask:0];
  [(NIServerBTLocalizerSession *)self setCurrentLocalizerState:0];
  v4 = [(NIServerBTLocalizerSession *)self getResourcesManager];
  v5 = [v4 remote];
  [v5 uwbSessionDidFailWithError:v6];
}

- (void)findMyAccessoryManager:(id)a3 didFailWithError:(id)a4 forDevice:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, (v12 & 1) != 0))
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,_accessoryManager didFailWithError for %@ with error:%@", buf, 0x16u);
    }

    v19 = NSLocalizedDescriptionKey;
    v20 = @"Generic companion ranging error";
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:301 userInfo:v14];

    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004ABD48(v9, v10, v16);
    }

    v17 = [[CLFindMyAccessoryManager alloc] initWithDelegate:self delegateQueue:self->_clientQueue];
    accessoryManager = self->_accessoryManager;
    self->_accessoryManager = v17;

    [(NIServerBTLocalizerSession *)self handleError:v15];
  }
}

- (void)findMyAccessoryManager:(id)a3 didFetchAccessoryInformationForDevice:(id)a4 ownershipType:(unint64_t)a5 communicationProtocol:(unint64_t)a6 accessoryTypeName:(id)a7 error:(id)a8
{
  v14 = a4;
  v37 = a7;
  v15 = a8;
  if (self->_accessoryManager == a3)
  {
    v16 = [(PRRemoteDevice *)self->_beacon UUID];
    v17 = [v14 isEqual:v16];

    if (v17)
    {
      v18 = qword_1009F9820;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v14 UUIDString];
        *buf = 136315394;
        v39 = [v19 UTF8String];
        v40 = 2112;
        v41 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,#btranging-retry _accessoryManager didFetchAccessoryInformationForDevice %s with #error:%@", buf, 0x16u);
      }

      currentTask = self->_currentTask;
      if (v15)
      {
        if (currentTask == 1)
        {
          v21 = qword_1009F9820;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v14 UUIDString];
            v23 = v22;
            v24 = [v22 UTF8String];
            *buf = 136315138;
            v39 = v24;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,reattempt accessory information fetch on device %s", buf, 0xCu);
          }

          accessoryManager = self->_accessoryManager;
          v26 = [(PRRemoteDevice *)self->_beacon UUID];
          [(CLFindMyAccessoryManager *)accessoryManager fetchAccessoryInformationForDevice:v26];
        }
      }

      else if (currentTask == 1)
      {
        v27 = qword_1009F9820;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(PRRemoteDevice *)self->_beacon UUID];
          v29 = [v28 UUIDString];
          v30 = v29;
          v31 = [v29 UTF8String];
          v32 = v37;
          v33 = [v37 UTF8String];
          v34 = "Unknown";
          v35 = "CL";
          if (a6 != 1)
          {
            v35 = "Unknown";
          }

          if (a5 == 1)
          {
            v34 = "Owner";
          }

          if (a6 == 2)
          {
            v35 = "GATT";
          }

          *buf = 136315906;
          v39 = v31;
          v40 = 2080;
          if (a5 == 2)
          {
            v34 = "NonOwner";
          }

          v41 = v34;
          v42 = 2080;
          v43 = v35;
          v44 = 2080;
          v45 = v33;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,didFetchAccessoryInformationForDevice for %s, ownership: %s, communicationProtocol: %s, accessoryTypeName: %s", buf, 0x2Au);
        }

        self->_ownershipType = a5;
        self->_communicationProtocol = a6;
        objc_storeStrong(&self->_accessoryTypeName, a7);
        analyticsManager = self->_analyticsManager;
        if (analyticsManager)
        {
          [(NIServerAnalyticsManager *)analyticsManager updateWithOwnership:self->_ownershipType == 1 accessoryTypeName:self->_accessoryTypeName];
        }

        self->_hasFetchedAccessoryInformation = 1;
        [(NIServerBTLocalizerSession *)self setCurrentTask:0];
        [(NIServerBTLocalizerSession *)self evaluateStateMachine];
      }
    }
  }
}

- (void)findMyAccessoryManager:(id)a3 didFetchTxPower:(id)a4 fromDevice:(id)a5 withError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12 || self->_accessoryManager == v10 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v12 isEqual:v14], v14, (v15 & 1) != 0))
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v12 UUIDString];
      v28 = 136315650;
      v29 = [v17 UTF8String];
      v30 = 1024;
      v31 = [v11 intValue];
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,_accessoryManager didFetchTxPower from %s txPower:%d #error:%@", &v28, 0x1Cu);
    }

    currentTask = self->_currentTask;
    if (v13)
    {
      if (currentTask == 2)
      {
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v12 UUIDString];
          v21 = v20;
          v22 = [v20 UTF8String];
          v28 = 136315138;
          v29 = v22;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,reattempt to fetch tx power on device %s", &v28, 0xCu);
        }

LABEL_18:

        [(CLFindMyAccessoryManager *)self->_accessoryManager fetchTxPowerFromDevice:v12 asOwner:[(NIServerBTLocalizerSession *)self isOwnerSession]];
      }
    }

    else if (currentTask == 2)
    {
      v23 = [v11 intValue];
      if ((v23 + 50) > 0x64)
      {
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v12 UUIDString];
          v26 = v25;
          v27 = [v25 UTF8String];
          v28 = 136315138;
          v29 = v27;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,received unfeasible Tx Power from device - reattempt to fetch tx power on device %s", &v28, 0xCu);
        }

        goto LABEL_18;
      }

      [(NIServerBTLocalizerSession *)self setCurrentTask:0];
      self->_hasFetchedTxPower = 1;
      self->_fetchedTxPower = v23;
      analyticsManager = self->_analyticsManager;
      if (analyticsManager)
      {
        [(NIServerAnalyticsManager *)analyticsManager sessionConfiguredAccessoryWithTimestamp:self->_fetchedTxPower withTxPower:sub_100005288()];
      }

      [(NIServerBTLocalizerSession *)self evaluateStateMachine];
    }
  }
}

- (void)findMyAccessoryManager:(id)a3 didConnectDevice:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 UUIDString];
    *buf = 136315394;
    v50 = [v12 UTF8String];
    v51 = 2112;
    v52 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,#btranging-retry _accessoryManager didConnectDevice %s with #error:%@", buf, 0x16u);
  }

  if (!v9 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v9 isEqual:v13], v13, (v14 & 1) != 0))
  {
    if (v10)
    {
      v15 = [v10 domain];
      if ([v15 isEqualToString:kCLErrorDomainPrivate])
      {
        v16 = [v10 code] == 2;

        if (v16)
        {
          v47 = NSLocalizedDescriptionKey;
          v48 = @"Failed to resolve UUID";
          v17 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:304 userInfo:v17];

          currentTask = self->_currentTask;
          if (currentTask <= 9)
          {
            if (((1 << currentTask) & 0x3DC) != 0)
            {
              [(NIServerBTLocalizerSession *)self handleError:v18];
            }

            else if (currentTask == 5)
            {
              v43 = qword_1009F9820;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v44 = [v9 UUIDString];
                v45 = v44;
                v46 = [v44 UTF8String];
                *buf = 136315138;
                v50 = v46;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Already UT ranging - ignored failed to connect due to failed token error on device %s", buf, 0xCu);
              }
            }
          }

          goto LABEL_38;
        }
      }

      else
      {
      }

      v26 = self->_currentTask;
      if ((v26 - 3) < 2)
      {
        v32 = qword_1009F9820;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v9 UUIDString];
          v34 = v33;
          v35 = [v33 UTF8String];
          *buf = 136315138;
          v50 = v35;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,reattempt connect for startUTAggressiveAdvertisement on device %s", buf, 0xCu);
        }

        [(CLFindMyAccessoryManager *)self->_accessoryManager connectDevice:v9];
        v31 = 3;
      }

      else if ((v26 - 6) >= 2)
      {
        if (v26 != 9)
        {
          goto LABEL_38;
        }

        v31 = 0;
      }

      else
      {
        v27 = qword_1009F9820;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v9 UUIDString];
          v29 = v28;
          v30 = [v28 UTF8String];
          *buf = 136315138;
          v50 = v30;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,reattempt connect for startAggressiveAdvertisement on device %s", buf, 0xCu);
        }

        [(CLFindMyAccessoryManager *)self->_accessoryManager connectDevice:v9];
        v31 = 6;
      }
    }

    else
    {
      analyticsManager = self->_analyticsManager;
      if (analyticsManager)
      {
        [(NIServerAnalyticsManager *)analyticsManager sessionConnectedToAccessoryWithTimestamp:sub_100005288()];
      }

      v21 = self->_currentTask;
      if (v21 == 6)
      {
        v39 = qword_1009F9820;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v9 UUIDString];
          v41 = v40;
          v42 = [v40 UTF8String];
          *buf = 136315138;
          v50 = v42;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command startAggressiveAdvertisingOnDevice on device %s", buf, 0xCu);
        }

        [(CLFindMyAccessoryManager *)self->_accessoryManager startAggressiveAdvertisingOnDevice:v9 withTimeout:30];
        v31 = 7;
      }

      else
      {
        if (v21 == 5)
        {
          v22 = qword_1009F9820;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v9 UUIDString];
            v37 = v36;
            v38 = [v36 UTF8String];
            *buf = 136315138;
            v50 = v38;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,received didConnect when UT ranging - resending agg adv on device %s", buf, 0xCu);
          }
        }

        else
        {
          if (v21 != 3)
          {
            goto LABEL_38;
          }

          v22 = qword_1009F9820;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v9 UUIDString];
            v24 = v23;
            v25 = [v23 UTF8String];
            *buf = 136315138;
            v50 = v25;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command startUTAggressiveAdvertisement on device %s", buf, 0xCu);
          }
        }

        [(CLFindMyAccessoryManager *)self->_accessoryManager startUnauthorizedAggressiveAdvertisingOnDevice:v9];
        v31 = 4;
      }
    }

    [(NIServerBTLocalizerSession *)self setCurrentTask:v31];
  }

LABEL_38:
}

- (void)findMyAccessoryManager:(id)a3 didDisconnectDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 || self->_accessoryManager == v6 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, (v9 & 1) != 0))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 UUIDString];
      v22 = 136315138;
      v23 = [v11 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,_accessoryManager didDisconnect device %s", &v22, 0xCu);
    }

    currentTask = self->_currentTask;
    if ((currentTask - 6) < 3)
    {
      v18 = qword_1009F9820;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v7 UUIDString];
        v20 = v19;
        v21 = [v19 UTF8String];
        v22 = 136315138;
        v23 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,reattempt connect for startAggressiveAdvertisement on device %s", &v22, 0xCu);
      }

      [(CLFindMyAccessoryManager *)self->_accessoryManager connectDevice:v7];
      v17 = 6;
      goto LABEL_14;
    }

    if ((currentTask - 3) < 2)
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 UUIDString];
        v15 = v14;
        v16 = [v14 UTF8String];
        v22 = 136315138;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,reattempt connect for startUTAggressiveAdvertisement on device %s", &v22, 0xCu);
      }

      [(CLFindMyAccessoryManager *)self->_accessoryManager connectDevice:v7];
      v17 = 3;
LABEL_14:
      [(NIServerBTLocalizerSession *)self setCurrentTask:v17];
      goto LABEL_15;
    }

    if (currentTask == 9)
    {
      [(NIServerBTLocalizerSession *)self setCurrentTask:0];
      [(NIServerBTLocalizerSession *)self setCurrentLocalizerState:1];
    }
  }

LABEL_15:
}

- (void)findMyAccessoryManager:(id)a3 didStartUnauthorizedAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, (v12 & 1) != 0))
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 UUIDString];
      *buf = 136315394;
      v34 = [v14 UTF8String];
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,_accessoryManager didStartUnauthorizedAggressiveAdvertisingOnDevice %s #error:%@", buf, 0x16u);
    }

    v15 = self->_currentTask - 3;
    if (v10)
    {
      if ((self->_currentTask - 3) <= 1)
      {
        v16 = qword_1009F9820;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v9 UUIDString];
          v18 = v17;
          v19 = [v17 UTF8String];
          *buf = 136315138;
          v34 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,reattempt connect for startUTAggressiveAdvertisement on device %s", buf, 0xCu);
        }

        [(CLFindMyAccessoryManager *)self->_accessoryManager connectDevice:v9];
        [(NIServerBTLocalizerSession *)self setCurrentTask:3];
      }
    }

    else
    {
      if ((self->_currentTask - 3) <= 1)
      {
        [(NIServerBTLocalizerSession *)self setCurrentTask:5];
        [(NIServerBTLocalizerSession *)self setCurrentLocalizerState:3];
        v20 = qword_1009F9820;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [(PRRemoteDevice *)self->_beacon UUID];
          v22 = [v21 UUIDString];
          v23 = v22;
          v24 = [v22 UTF8String];
          *buf = 136315138;
          v34 = v24;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,setting ut retry timer for device %s", buf, 0xCu);
        }

        utRetryTimer = self->_utRetryTimer;
        if (utRetryTimer)
        {
          dispatch_source_cancel(utRetryTimer);
        }

        v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_clientQueue);
        v27 = self->_utRetryTimer;
        self->_utRetryTimer = v26;

        v28 = self->_utRetryTimer;
        v29 = dispatch_walltime(0, 110000000000);
        dispatch_source_set_timer(v28, v29, 0x199C82CC00uLL, 0);
        objc_initWeak(buf, self);
        v30 = self->_utRetryTimer;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10020D7E8;
        handler[3] = &unk_10098AB18;
        objc_copyWeak(&v32, buf);
        dispatch_source_set_event_handler(v30, handler);
        dispatch_resume(self->_utRetryTimer);
        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
      }

      [(NIServerBTLocalizerSession *)self evaluateStateMachine];
    }
  }
}

- (void)findMyAccessoryManager:(id)a3 didStartAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    if (self->_accessoryManager != v8)
    {
      goto LABEL_36;
    }

    v11 = [(PRRemoteDevice *)self->_beacon UUID];
    v12 = [v9 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 UUIDString];
    *buf = 136315394;
    v42 = [v14 UTF8String];
    v43 = 2112;
    v44 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,_accessoryManager didStartAggressiveAdvertisingOnDevice %s #error:%@", buf, 0x16u);
  }

  if (!v10)
  {
    currentTask = self->_currentTask;
    if ((currentTask - 6) >= 2)
    {
      if (currentTask == 9)
      {
        v35 = qword_1009F9820;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v9 UUIDString];
          v37 = v36;
          v38 = [v36 UTF8String];
          *buf = 136315138;
          v42 = v38;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command to stop agg adv on device %s", buf, 0xCu);
        }

        [(CLFindMyAccessoryManager *)self->_accessoryManager stopAggressiveAdvertisingOnDevice:v9];
      }
    }

    else
    {
      if (self->_didSuspendSessionAccessoryInUse)
      {
        v29 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Resume session - accessory no longer in use", buf, 2u);
        }

        self->_didSuspendSessionAccessoryInUse = 0;
        clientQueue = self->_clientQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10020DF70;
        block[3] = &unk_10098BD28;
        block[4] = self;
        dispatch_async(clientQueue, block);
      }

      [(NIServerBTLocalizerSession *)self setCurrentTask:8];
      [(NIServerBTLocalizerSession *)self setCurrentLocalizerState:3];
    }

    [(NIServerBTLocalizerSession *)self evaluateStateMachine];
    goto LABEL_36;
  }

  v15 = [v10 domain];
  if ([v15 isEqualToString:kCLErrorDomainPrivate])
  {
    v16 = [v10 code] == 27;

    if (v16)
    {
      if ((self->_currentTask & 0xFFFFFFFE) == 6)
      {
        v17 = qword_1009F9820;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v9 UUIDString];
          v19 = v18;
          v20 = [v18 UTF8String];
          *buf = 136315138;
          v42 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,could not start ranging - invalid state on device %s", buf, 0xCu);
        }

        p_accessoryManager = &self->_accessoryManager;
        [(CLFindMyAccessoryManager *)self->_accessoryManager stopMonitoringForAvengerAdvertisementsForBTFinding];
        if (!self->_didSuspendSessionAccessoryInUse)
        {
          v22 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Suspend session - accessory in use", buf, 2u);
          }

          self->_didSuspendSessionAccessoryInUse = 1;
          v23 = self->_clientQueue;
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_10020E004;
          v39[3] = &unk_10098BD28;
          v39[4] = self;
          dispatch_async(v23, v39);
        }

        v24 = qword_1009F9820;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v9 UUIDString];
          v26 = v25;
          v27 = [v25 UTF8String];
          *buf = 136315138;
          v42 = v27;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,reattempt connect for startAggressiveAdvertisement on device %s", buf, 0xCu);
        }

LABEL_30:
        [(CLFindMyAccessoryManager *)*p_accessoryManager connectDevice:v9];
        [(NIServerBTLocalizerSession *)self setCurrentTask:6];
        goto LABEL_36;
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  if ((self->_currentTask & 0xFFFFFFFE) == 6)
  {
    v31 = qword_1009F9820;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v9 UUIDString];
      v33 = v32;
      v34 = [v32 UTF8String];
      *buf = 136315138;
      v42 = v34;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,reattempt connect for startAggressiveAdvertisement on device %s", buf, 0xCu);
    }

    p_accessoryManager = &self->_accessoryManager;
    goto LABEL_30;
  }

LABEL_36:
}

- (void)findMyAccessoryManager:(id)a3 didStopAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, (v12 & 1) != 0))
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 UUIDString];
      v24 = 136315394;
      v25 = [v14 UTF8String];
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,_accessoryManager didStopAggressiveAdvertisingOnDevice %s #error:%@", &v24, 0x16u);
    }

    currentTask = self->_currentTask;
    if (v10)
    {
      if (currentTask == 9)
      {
        v16 = qword_1009F9820;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v9 UUIDString];
          v18 = v17;
          v19 = [v17 UTF8String];
          v24 = 136315138;
          v25 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,command to reattempt stopAggressiveAdvertising on device %s", &v24, 0xCu);
        }

        [(CLFindMyAccessoryManager *)self->_accessoryManager stopAggressiveAdvertisingOnDevice:v9];
      }
    }

    else if ((currentTask - 6) >= 3)
    {
      if (currentTask == 9)
      {
        [(NIServerBTLocalizerSession *)self setCurrentTask:0];
        [(NIServerBTLocalizerSession *)self setCurrentLocalizerState:1];
        [(NIServerBTLocalizerSession *)self evaluateStateMachine];
      }
    }

    else
    {
      v20 = qword_1009F9820;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v9 UUIDString];
        v22 = v21;
        v23 = [v21 UTF8String];
        v24 = 136315138;
        v25 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,received didStopAggressiveAdvertising for %s when owner ranging - reattempt connect for startAggressiveAdvertisement", &v24, 0xCu);
      }

      [(CLFindMyAccessoryManager *)self->_accessoryManager connectDevice:v9];
      [(NIServerBTLocalizerSession *)self setCurrentTask:6];
    }
  }
}

- (void)findMyAccessoryManager:(id)a3 didCompleteAggressiveAdvertisingOnDevice:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9 || self->_accessoryManager == v8 && (-[PRRemoteDevice UUID](self->_beacon, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, (v12 & 1) != 0))
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 UUIDString];
      v23 = 136315394;
      v24 = [v14 UTF8String];
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,_accessoryManager didCompleteAggressiveAdvertisingOnDevice %s #error:%@", &v23, 0x16u);
    }

    currentTask = self->_currentTask;
    if (v10)
    {
      if ((currentTask - 6) <= 2)
      {
        v16 = qword_1009F9820;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v9 UUIDString];
          v18 = v17;
          v19 = [v17 UTF8String];
          v23 = 136315138;
          v24 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,#received didCompleteAggressiveAdvertisingOnDevice %s when owner ranging - reattempt connect for startAggressiveAdvertisement", &v23, 0xCu);
        }

LABEL_13:

        [(CLFindMyAccessoryManager *)self->_accessoryManager connectDevice:v9];
        [(NIServerBTLocalizerSession *)self setCurrentTask:6];
      }
    }

    else
    {
      if ((currentTask - 6) < 3)
      {
        v16 = qword_1009F9820;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v9 UUIDString];
          v21 = v20;
          v22 = [v20 UTF8String];
          v23 = 136315138;
          v24 = v22;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,received didCompleteAggressiveAdvertisingOnDevice %s when owner ranging - reattempt connect for startAggressiveAdvertisement", &v23, 0xCu);
        }

        goto LABEL_13;
      }

      if (currentTask == 9)
      {
        [(NIServerBTLocalizerSession *)self setCurrentTask:0];
        [(NIServerBTLocalizerSession *)self setCurrentLocalizerState:1];
        [(NIServerBTLocalizerSession *)self evaluateStateMachine];
      }
    }
  }
}

- (void)findMyAccessoryManager:(id)a3 didObserveAdvertisementWithDate:(id)a4 address:(id)a5 advertisementData:(id)a6 status:(unsigned __int8)a7 rssi:(int64_t)a8 reserved:(id)a9 uuid:(id)a10 ownershipType:(unint64_t)a11 channel:(unint64_t)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a9;
  v22 = a10;
  if (v22)
  {
    if (self->_accessoryManager == v17)
    {
      v23 = [(PRRemoteDevice *)self->_beacon UUID];
      v24 = [v22 isEqual:v23];

      if (v24)
      {
        v25 = a8 - self->_fetchedTxPower + 4;
        v46 = qword_1009F9820;
        v26 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
        v45 = v25;
        if (v25 < 1)
        {
          if (v26)
          {
            v43 = [v22 UUIDString];
            v28 = [v43 UTF8String];
            fetchedTxPower = self->_fetchedTxPower;
            *buf = 136316418;
            v58 = v28;
            v59 = 1024;
            v60 = a8;
            v61 = 1024;
            v62 = a12;
            LOWORD(v63) = 1024;
            *(&v63 + 2) = v25;
            HIWORD(v63) = 1024;
            v64 = fetchedTxPower;
            v65 = 1024;
            v66 = 4;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,#btranging-retry didObserveAdvertisementWithDate for %s with rssi:%d channel:%d, adjustedRssi:%d fetchedTxPower:%d expectedTxPower:%d", buf, 0x2Au);
          }

          analyticsManager = self->_analyticsManager;
          if (analyticsManager)
          {
            [(NIServerAnalyticsManager *)analyticsManager updateWithBTRSSIMeasurementWithTimestamp:sub_100005288() withRssi:a8];
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v31 = [(NIFindingConfiguration *)self->_configuration sessionDiscoveryToken];
          v44 = v31;
          v32 = [v22 UUIDString];
          v47 = [v32 dataUsingEncoding:4];

          v33 = [v47 length];
          v34 = 0;
          if (v33)
          {
            sub_100009838(&v54, v33);
            v34 = v54;
          }

          else if (v55 != v54)
          {
            v55 = v54;
          }

          [v47 getBytes:v34 length:{objc_msgSend(v47, "length")}];
          v35 = sub_100005288();
          sub_100004A08(__p, "NIFindingConfigBTFinding");
          sub_100009B14(buf, a12, __p, &v54, [v31 hash], objc_msgSend(v31, "hash"), v35, v45);
          if (v53 < 0)
          {
            operator delete(__p[0]);
          }

          [(NINearbyUpdatesEngine *)self->_updatesEngine acceptBluetoothSample:buf coarseEstimation:0 regionCategory:0];
          measurementTimer = self->_measurementTimer;
          if (measurementTimer)
          {
            dispatch_source_cancel(measurementTimer);
          }

          v37 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_clientQueue);
          v38 = self->_measurementTimer;
          self->_measurementTimer = v37;

          v39 = self->_measurementTimer;
          v40 = dispatch_walltime(0, 10000000000);
          dispatch_source_set_timer(v39, v40, 0x2540BE400uLL, 0);
          objc_initWeak(&location, self);
          v41 = self->_measurementTimer;
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_10020ECC4;
          handler[3] = &unk_10098B940;
          objc_copyWeak(&v50, &location);
          v42 = v44;
          v49 = v42;
          dispatch_source_set_event_handler(v41, handler);
          dispatch_resume(self->_measurementTimer);

          objc_destroyWeak(&v50);
          objc_destroyWeak(&location);
          if (v68)
          {
            v69 = v68;
            operator delete(v68);
          }

          if (v67 < 0)
          {
            operator delete(v63);
          }

          if (v54)
          {
            v55 = v54;
            operator delete(v54);
          }
        }

        else
        {
          if (v26)
          {
            v27 = [v22 UUIDString];
            *buf = 136315650;
            v58 = [v27 UTF8String];
            v59 = 1024;
            v60 = a8;
            v61 = 1024;
            v62 = v25;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,#btranging-retry didObserveAdvertisementWithDate for %s with invalid rssi:%d adjustedRssi:%d", buf, 0x18u);
          }
        }
      }
    }
  }
}

- (void)updatesEngine:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6 regionTransitionSuppressed:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (self->_updatesEngine != v11)
  {
    __assert_rtn("[NIServerBTLocalizerSession updatesEngine:object:didUpdateRegion:previousRegion:regionTransitionSuppressed:]", "NIServerBTLocalizerSession.mm", 1233, "engine == _updatesEngine");
  }

  if (v13 | v14)
  {
    if (v13)
    {
      v16 = [v13 name];
      v17 = qword_1009F9820;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = [v16 UTF8String];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-bt-loc,Region %s", buf, 0xCu);
      }
    }

    analyticsManager = self->_analyticsManager;
    if (analyticsManager)
    {
      [(NIServerAnalyticsManager *)analyticsManager updateWithNewRegion:v13 withTimestamp:sub_100005288()];
    }

    clientQueue = self->_clientQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10020F114;
    v20[3] = &unk_10099C2A0;
    v20[4] = self;
    v21 = v12;
    v22 = v13;
    v23 = v15;
    dispatch_async(clientQueue, v20);
  }
}

- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4
{
  v5 = a4;
  clientQueue = self->_clientQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10020F248;
  v8[3] = &unk_10098A2E8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(clientQueue, v8);
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 15) = 0;
  return self;
}

@end