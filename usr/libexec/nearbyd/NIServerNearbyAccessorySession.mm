@interface NIServerNearbyAccessorySession
- (NIServerNearbyAccessorySession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error;
- (id).cxx_construct;
- (id)_finalizeRunning;
- (id)configure;
- (id)disableAllServices;
- (id)discoveryTokenFromIdentifier:(unint64_t)identifier;
- (id)objectFromIdentifier:(unint64_t)identifier;
- (id)pauseWithSource:(int64_t)source;
- (id)printableState;
- (id)run;
- (optional<unsigned)identifierFromDiscoveryToken:(id)token;
- (void)accessoryGATTServiceAuthorizedBackgroundOperation;
- (void)accessoryGATTServiceFailedWithError:(id)error;
- (void)dealloc;
- (void)invalidate;
- (void)peerInactivityPeriodExceeded:(id)exceeded;
- (void)processVisionInput:(id)input;
- (void)responderSessionDidReceiveSummary:(const ResponderRangingBlockSummary *)summary;
- (void)serviceDidGenerateShareableConfigurationData:(id)data;
- (void)serviceDidInvalidateWithReason:(int)reason;
- (void)serviceDidReceiveNewSolution:(const void *)solution;
- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status;
- (void)updatesEngine:(id)engine didUpdateAlgorithmConvergenceState:(id)state forObject:(id)object;
- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects;
@end

@implementation NIServerNearbyAccessorySession

- (NIServerNearbyAccessorySession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error
{
  managerCopy = manager;
  configurationCopy = configuration;
  v8 = objc_opt_class();
  if (v8 != objc_opt_class())
  {
    v41 = +[NSAssertionHandler currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"NIServerNearbyAccessorySession.mm" lineNumber:125 description:@"NINearbyAccessoryConfiguration given invalid configuration."];
  }

  serverSessionIdentifier = [managerCopy serverSessionIdentifier];

  if (!serverSessionIdentifier)
  {
    v42 = +[NSAssertionHandler currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"NIServerNearbyAccessorySession.mm" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v49.receiver = self;
  v49.super_class = NIServerNearbyAccessorySession;
  v10 = [(NIServerBaseSession *)&v49 initWithResourcesManager:managerCopy configuration:configurationCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_23;
  }

  if (managerCopy)
  {
    [managerCopy protobufLogger];
    v12 = v48;
  }

  else
  {
    v12 = 0uLL;
  }

  v13 = (v10 + 48);
  v48 = 0uLL;
  v14 = *(v10 + 7);
  *(v10 + 3) = v12;
  if (v14)
  {
    sub_10000AD84(v14);
  }

  if (*(&v48 + 1))
  {
    sub_10000AD84(*(&v48 + 1));
  }

  clientConnectionQueue = [managerCopy clientConnectionQueue];
  v16 = *(v10 + 9);
  *(v10 + 9) = clientConnectionQueue;

  v17 = [configurationCopy copy];
  v18 = *(v10 + 12);
  *(v10 + 12) = v17;

  serverSessionIdentifier2 = [managerCopy serverSessionIdentifier];
  uUIDString = [serverSessionIdentifier2 UUIDString];
  v21 = +[NSUUID UUID];
  uUIDString2 = [v21 UUIDString];
  v23 = [NSString stringWithFormat:@"%@---%@", uUIDString, uUIDString2];
  v24 = *(v11 + 10);
  *(v11 + 10) = v23;

  [*(v11 + 12) setSupportsCameraAssistance:{+[NIPlatformInfo supportsSyntheticAperture](NIPlatformInfo, "supportsSyntheticAperture")}];
  v25 = [NINearbyUpdatesEngine alloc];
  v26 = *(v11 + 12);
  v27 = *(v11 + 9);
  analytics = [managerCopy analytics];
  v29 = v13[1];
  v46 = *v13;
  v47 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = [(NINearbyUpdatesEngine *)v25 initWithConfiguration:v26 queue:v27 delegate:v11 dataSource:v11 analyticsManager:analytics protobufLogger:&v46 error:error];
  v31 = *(v11 + 8);
  *(v11 + 8) = v30;

  if (v47)
  {
    sub_10000AD84(v47);
  }

  if (*(v11 + 8))
  {
    *(v11 + 88) = 0;
    *(v11 + 89) = 0;
    v32 = +[NIServerNearbyAccessoryRangingService sharedInstance];
    v33 = *(v11 + 10);
    v34 = managerCopy;
    clientProcessSigningIdentity = [managerCopy clientProcessSigningIdentity];
    v36 = [v32 addServiceClient:v11 identifier:v33 processName:clientProcessSigningIdentity configuration:*(v11 + 12)];

    if (v36)
    {
      v37 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A6350(v36, v37);
      }

      if (error)
      {
        v38 = v36;
        v39 = 0;
        *error = v36;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = v11;
    }
  }

  else
  {
LABEL_23:
    v39 = 0;
    v34 = managerCopy;
  }

  return v39;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  configuration = self->_configuration;
  if (!configuration)
  {
    sub_1004A6408();
  }

  accessoryDiscoveryToken = [(NINearbyAccessoryConfiguration *)configuration accessoryDiscoveryToken];

  if (accessoryDiscoveryToken)
  {
    bluetoothDeviceIdentifier = [(NINearbyAccessoryConfiguration *)self->_configuration bluetoothDeviceIdentifier];

    v6 = qword_1009F9820;
    if (bluetoothDeviceIdentifier)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        bluetoothDeviceIdentifier2 = [(NINearbyAccessoryConfiguration *)self->_configuration bluetoothDeviceIdentifier];
        uUIDString = [bluetoothDeviceIdentifier2 UUIDString];
        v12 = 138412290;
        v13 = uUIDString;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-ecosystem,Configuration specifies BLE peripheral: %@", &v12, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-ecosystem,Configuration does not specify a BLE peripheral", &v12, 2u);
    }

    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A63C8();
    }

    v10 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
  }

  return v10;
}

- (id)run
{
  dispatch_assert_queue_V2(self->_clientQueue);
  self->_sessionState = 1;
  dataExchangeDisabledAndUsingParameterOverrides = [(NINearbyAccessoryConfiguration *)self->_configuration dataExchangeDisabledAndUsingParameterOverrides];
  v4 = qword_1009F9820;
  if (dataExchangeDisabledAndUsingParameterOverrides)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-ecosystem,Configuration disables data exchange and is using parameter overrides", buf, 2u);
    }

    self->_backgroundAuthorization = 2;
    v16.receiver = self;
    v16.super_class = NIServerNearbyAccessorySession;
    backgroundSupportUpdateHandler = [(NIServerBaseSession *)&v16 backgroundSupportUpdateHandler];
    (backgroundSupportUpdateHandler)[2](backgroundSupportUpdateHandler, [(NIServerNearbyAccessorySession *)self supportsBackgroundedClients]);

    _finalizeRunning = [(NIServerNearbyAccessorySession *)self _finalizeRunning];
    goto LABEL_18;
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NIInternalUtils NISessionBackgroundModeToString:[(NINearbyAccessoryConfiguration *)self->_configuration backgroundMode]];
    *buf = 136315138;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-ecosystem,Configuration background mode: %s", buf, 0xCu);
  }

  _finalizeRunning = [(NINearbyAccessoryConfiguration *)self->_configuration backgroundMode];
  if (_finalizeRunning == 2)
  {
    if (self->_backgroundAuthorization - 1 < 2)
    {
      _finalizeRunning = [(NIServerNearbyAccessorySession *)self _finalizeRunning];
      goto LABEL_18;
    }

    if (!self->_backgroundAuthorization)
    {
      v10 = +[NIServerAccessoryGATTServiceManager sharedInstance];
      sessionUniqueIdentifier = self->_sessionUniqueIdentifier;
      bluetoothDeviceIdentifier = [(NINearbyAccessoryConfiguration *)self->_configuration bluetoothDeviceIdentifier];
      [v10 addServiceListener:self withIdentifier:sessionUniqueIdentifier forBluetoothPeer:bluetoothDeviceIdentifier withConfiguration:self->_configuration];

      v13 = +[NIServerAccessoryGATTServiceManager sharedInstance];
      [v13 probeAuthorizationForServiceListenerWithIdentifier:self->_sessionUniqueIdentifier];

      _finalizeRunning = 0;
      goto LABEL_18;
    }
  }

  else if (_finalizeRunning != 1)
  {
    if (!_finalizeRunning)
    {
      self->_backgroundAuthorization = 2;
      v15.receiver = self;
      v15.super_class = NIServerNearbyAccessorySession;
      backgroundSupportUpdateHandler2 = [(NIServerBaseSession *)&v15 backgroundSupportUpdateHandler];
      (backgroundSupportUpdateHandler2)[2](backgroundSupportUpdateHandler2, [(NIServerNearbyAccessorySession *)self supportsBackgroundedClients]);

      _finalizeRunning = [(NIServerNearbyAccessorySession *)self _finalizeRunning];
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004A6434();
  }

  _finalizeRunning = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
LABEL_18:

  return _finalizeRunning;
}

- (id)_finalizeRunning
{
  self->_sessionState = 2;
  v3 = +[NIServerNearbyAccessoryRangingService sharedInstance];
  [v3 notifyServiceClientWithIdentifier:self->_sessionUniqueIdentifier isRunning:1];

  backgroundMode = [(NINearbyAccessoryConfiguration *)self->_configuration backgroundMode];
  if (backgroundMode)
  {
    if (backgroundMode != 2)
    {
      goto LABEL_6;
    }

    v5 = +[NIServerUsageAnalyticsAggregator sharedInstance];
    v6 = +[NSDate now];
    [v5 recordUWBUsage:3 date:v6];
  }

  else
  {
    v5 = +[NIServerUsageAnalyticsAggregator sharedInstance];
    v6 = +[NSDate now];
    [v5 recordUWBUsage:2 date:v6];
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = NIServerNearbyAccessorySession;
  resourcesManager = [(NIServerBaseSession *)&v12 resourcesManager];
  lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
  [lifecycleSupervisor setTimeoutOnPeerInactivity:0];
  if ([(NINearbyAccessoryConfiguration *)self->_configuration dataExchangeDisabledAndUsingParameterOverrides])
  {
    [lifecycleSupervisor setTimeoutOnPeerInactivity:0];
  }

  if ([lifecycleSupervisor timeoutOnPeerInactivity])
  {
    [lifecycleSupervisor runWithConfigurationCalled];
    accessoryDiscoveryToken = [(NINearbyAccessoryConfiguration *)self->_configuration accessoryDiscoveryToken];
    v13 = accessoryDiscoveryToken;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [lifecycleSupervisor startedDiscoveringPeersWithTokens:v10];
  }

  return 0;
}

- (id)pauseWithSource:(int64_t)source
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (source == 2)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  self->_sessionState = v5;
  v6 = +[NIServerNearbyAccessoryRangingService sharedInstance];
  [v6 notifyServiceClientWithIdentifier:self->_sessionUniqueIdentifier isRunning:0];

  v10.receiver = self;
  v10.super_class = NIServerNearbyAccessorySession;
  resourcesManager = [(NIServerBaseSession *)&v10 resourcesManager];
  lifecycleSupervisor = [resourcesManager lifecycleSupervisor];
  if ([lifecycleSupervisor timeoutOnPeerInactivity])
  {
    [lifecycleSupervisor pauseCalled];
  }

  return 0;
}

- (id)disableAllServices
{
  self->_sessionState = 6;
  v8.receiver = self;
  v8.super_class = NIServerNearbyAccessorySession;
  disableAllServices = [(NIServerBaseSession *)&v8 disableAllServices];
  configuration = self->_configuration;
  self->_configuration = 0;

  v5 = +[NIServerNearbyAccessoryRangingService sharedInstance];
  [v5 removeServiceClientWithIdentifier:self->_sessionUniqueIdentifier];

  v6 = +[NIServerAccessoryGATTServiceManager sharedInstance];
  [v6 removeServiceListenerWithIdentifier:self->_sessionUniqueIdentifier];

  return disableAllServices;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v4.receiver = self;
  v4.super_class = NIServerNearbyAccessorySession;
  [(NIServerBaseSession *)&v4 invalidate];
  disableAllServices = [(NIServerNearbyAccessorySession *)self disableAllServices];
}

- (void)dealloc
{
  v3 = +[NIServerNearbyAccessoryRangingService sharedInstance];
  [v3 removeServiceClientWithIdentifier:self->_sessionUniqueIdentifier];

  v4 = +[NIServerAccessoryGATTServiceManager sharedInstance];
  [v4 removeServiceListenerWithIdentifier:self->_sessionUniqueIdentifier];

  v5.receiver = self;
  v5.super_class = NIServerNearbyAccessorySession;
  [(NIServerNearbyAccessorySession *)&v5 dealloc];
}

- (void)serviceDidGenerateShareableConfigurationData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  clientQueue = self->_clientQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D2964;
  v7[3] = &unk_10098B990;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(clientQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)serviceDidReceiveNewSolution:(const void *)solution
{
  v5 = *(solution + 1);
  v31 = *solution;
  v32 = v5;
  v33 = *(solution + 2);
  sub_100020458(v34, solution + 48);
  sub_1000206E0(v40, solution + 608);
  sub_1000207A0(v43, solution + 95);
  memcpy(v47, solution + 880, sizeof(v47));
  sub_10002096C(v48, solution + 91);
  objc_initWeak(&v7, self);
  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1001D2E48;
  block[3] = &unk_10099C9F0;
  objc_copyWeak(&v9, &v7);
  v10 = v31;
  v11 = v32;
  v12 = v33;
  sub_100020458(&v13, v34);
  sub_1000206E0(v19, v40);
  sub_1000207A0(&v22, v43);
  memcpy(v26, v47, sizeof(v26));
  sub_10002096C(&v27, v48);
  block[4] = self;
  dispatch_async(clientQueue, block);
  if (v30 == 1 && __p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v25 == 1 && v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v21 == 1)
  {
    sub_10002074C(v20, v20[1]);
  }

  if (v18 == 1)
  {
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v7);
  if (v51 == 1 && v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v46 == 1 && v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42 == 1)
  {
    sub_10002074C(v41, v41[1]);
  }

  if (v39 == 1)
  {
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }
  }
}

- (void)responderSessionDidReceiveSummary:(const ResponderRangingBlockSummary *)summary
{
  objc_initWeak(&location, self);
  v5 = *&summary->var22;
  v22 = *&summary->var20;
  v23 = v5;
  v24 = *&summary->var24;
  v6 = *&summary->var5;
  v18 = *&summary->var0;
  v19 = v6;
  v7 = *&summary->var17;
  v20 = *&summary->var9;
  v21 = v7;
  clientQueue = self->_clientQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D32E8;
  v9[3] = &unk_10099CA28;
  objc_copyWeak(&v10, &location);
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v9[4] = self;
  dispatch_async(clientQueue, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)serviceRequestDidUpdateStatus:(ServiceRequestStatusUpdate)status
{
  var2 = status.var2;
  v4 = *&status.var0;
  objc_initWeak(&location, self);
  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D3548;
  block[3] = &unk_10099CA50;
  objc_copyWeak(v8, &location);
  v9 = var2;
  v8[1] = v4;
  block[4] = self;
  dispatch_async(clientQueue, block);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)serviceDidInvalidateWithReason:(int)reason
{
  objc_initWeak(&location, self);
  clientQueue = self->_clientQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D3894;
  v6[3] = &unk_10098B138;
  objc_copyWeak(&v7, &location);
  reasonCopy = reason;
  v6[4] = self;
  dispatch_async(clientQueue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)processVisionInput:(id)input
{
  inputCopy = input;
  dispatch_assert_queue_V2(self->_clientQueue);
  [(NINearbyUpdatesEngine *)self->_updatesEngine acceptVisionInput:inputCopy];
}

- (id)printableState
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  sessionState = self->_sessionState;
  if (sessionState > 6)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_10099CB68[sessionState];
  }

  backgroundAuthorization = self->_backgroundAuthorization;
  if (backgroundAuthorization > 2)
  {
    v8 = "Unknown";
  }

  else
  {
    v8 = off_10099CBA0[backgroundAuthorization];
  }

  v9 = [NSString stringWithFormat:@"State: %s. BG auth: %s", v6, v8];
  [v3 addObject:v9];

  accessoryConfigData = [(NINearbyAccessoryConfiguration *)self->_configuration accessoryConfigData];
  v11 = sub_10003F5F0(accessoryConfigData, 0);
  v12 = [NSString stringWithFormat:@"Blob: %@", v11];
  [v3 addObject:v12];

  objc_autoreleasePoolPop(v4);

  return v3;
}

- (id)discoveryTokenFromIdentifier:(unint64_t)identifier
{
  v3 = [[NIDiscoveryToken alloc] initWithDeviceAddress:identifier];

  return v3;
}

- (optional<unsigned)identifierFromDiscoveryToken:(id)token
{
  shortDeviceAddress = [token shortDeviceAddress];
  unsignedLongLongValue = [shortDeviceAddress unsignedLongLongValue];

  v5.__val_ = unsignedLongLongValue;
  v6 = 1;
  result.__engaged_ = v6;
  result.var0 = v5;
  return result;
}

- (id)objectFromIdentifier:(unint64_t)identifier
{
  identifierCopy = identifier;
  v4 = [NINearbyObject alloc];
  v5 = [[NIDiscoveryToken alloc] initWithDeviceAddress:identifierCopy];
  v6 = [(NINearbyObject *)v4 initWithToken:v5];

  return v6;
}

- (void)accessoryGATTServiceFailedWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!errorCopy)
  {
    __assert_rtn("[NIServerNearbyAccessorySession accessoryGATTServiceFailedWithError:]", "NIServerNearbyAccessorySession.mm", 623, "error");
  }

  if (self->_sessionState == 6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A676C();
    }
  }

  else
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      bluetoothDeviceIdentifier = [(NINearbyAccessoryConfiguration *)self->_configuration bluetoothDeviceIdentifier];
      sub_1004A6704(bluetoothDeviceIdentifier, errorCopy, buf, v5);
    }

    v7 = +[NIServerNearbyAccessoryRangingService sharedInstance];
    [v7 notifyServiceClientWithIdentifier:self->_sessionUniqueIdentifier isRunning:0];

    self->_backgroundAuthorization = 0;
    v16.receiver = self;
    v16.super_class = NIServerNearbyAccessorySession;
    backgroundSupportUpdateHandler = [(NIServerBaseSession *)&v16 backgroundSupportUpdateHandler];
    (backgroundSupportUpdateHandler)[2](backgroundSupportUpdateHandler, [(NIServerNearbyAccessorySession *)self supportsBackgroundedClients]);

    self->_sessionState = 5;
    v9 = [NINearbyObject alloc];
    accessoryDiscoveryToken = [(NINearbyAccessoryConfiguration *)self->_configuration accessoryDiscoveryToken];
    v11 = [(NINearbyObject *)v9 initWithToken:accessoryDiscoveryToken];

    v15.receiver = self;
    v15.super_class = NIServerNearbyAccessorySession;
    resourcesManager = [(NIServerBaseSession *)&v15 resourcesManager];
    remote = [resourcesManager remote];
    v17 = v11;
    v14 = [NSArray arrayWithObjects:&v17 count:1];
    [remote didRemoveNearbyObjects:v14 withReason:0];
  }
}

- (void)accessoryGATTServiceAuthorizedBackgroundOperation
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_sessionState == 6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A67A0();
    }
  }

  else
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bluetoothDeviceIdentifier = [(NINearbyAccessoryConfiguration *)self->_configuration bluetoothDeviceIdentifier];
      *buf = 138412290;
      v9 = bluetoothDeviceIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-ecosystem,Bluetooth device %@ is background authorized", buf, 0xCu);
    }

    self->_backgroundAuthorization = 1;
    v7.receiver = self;
    v7.super_class = NIServerNearbyAccessorySession;
    backgroundSupportUpdateHandler = [(NIServerBaseSession *)&v7 backgroundSupportUpdateHandler];
    (backgroundSupportUpdateHandler)[2](backgroundSupportUpdateHandler, [(NIServerNearbyAccessorySession *)self supportsBackgroundedClients]);

    if (self->_sessionState == 1)
    {
      _finalizeRunning = [(NIServerNearbyAccessorySession *)self _finalizeRunning];
    }
  }
}

- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects
{
  engineCopy = engine;
  objectsCopy = objects;
  if (self->_updatesEngine != engineCopy)
  {
    __assert_rtn("[NIServerNearbyAccessorySession updatesEngine:didUpdateNearbyObjects:]", "NIServerNearbyAccessorySession.mm", 680, "engine == _updatesEngine");
  }

  objc_initWeak(&location, self);
  clientQueue = self->_clientQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001D4310;
  v10[3] = &unk_10098B990;
  objc_copyWeak(&v12, &location);
  v10[4] = self;
  v11 = objectsCopy;
  v9 = objectsCopy;
  dispatch_async(clientQueue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)updatesEngine:(id)engine didUpdateAlgorithmConvergenceState:(id)state forObject:(id)object
{
  engineCopy = engine;
  stateCopy = state;
  objectCopy = object;
  if (self->_updatesEngine != engineCopy)
  {
    __assert_rtn("[NIServerNearbyAccessorySession updatesEngine:didUpdateAlgorithmConvergenceState:forObject:]", "NIServerNearbyAccessorySession.mm", 751, "engine == _updatesEngine");
  }

  objc_initWeak(&location, self);
  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D4624;
  block[3] = &unk_10098B9E0;
  objc_copyWeak(&v17, &location);
  block[4] = self;
  v15 = stateCopy;
  v16 = objectCopy;
  v12 = objectCopy;
  v13 = stateCopy;
  dispatch_async(clientQueue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)peerInactivityPeriodExceeded:(id)exceeded
{
  exceededCopy = exceeded;
  dispatch_assert_queue_V2(self->_clientQueue);
  [(NINearbyUpdatesEngine *)self->_updatesEngine clearStateForToken:exceededCopy];
  self->_sessionState = 5;
  v5 = [[NINearbyObject alloc] initWithToken:exceededCopy];
  v12.receiver = self;
  v12.super_class = NIServerNearbyAccessorySession;
  resourcesManager = [(NIServerBaseSession *)&v12 resourcesManager];
  remote = [resourcesManager remote];
  v17 = v5;
  v8 = [NSArray arrayWithObjects:&v17 count:1];
  [remote didRemoveNearbyObjects:v8 withReason:0];

  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sessionUniqueIdentifier = self->_sessionUniqueIdentifier;
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = sessionUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-ecosystem,peerInactivityPeriodExceeded: %@ with reason: Timeout, for session identifier: %@", buf, 0x16u);
  }

  v11 = +[NIServerNearbyAccessoryRangingService sharedInstance];
  [v11 notifyServiceClientWithIdentifier:self->_sessionUniqueIdentifier isRunning:0];
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end