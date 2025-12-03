@interface NIServerFindingSession
+ (id)allServicesPrintableState;
+ (id)servicePoolPrintableState;
- (BOOL)_doesClientWantFinderObserverSession;
- (BOOL)updateConfiguration:(id)configuration;
- (NIServerFindingSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error;
- (id)_processFindingEvent:(id)event;
- (id)configure;
- (id)pauseWithSource:(int64_t)source;
- (id)run;
- (unint64_t)requiresNarrowbandToRun;
- (unint64_t)requiresUWBToRun;
- (void)_resetSessionStateForOperation:(int)operation;
- (void)_startRunawayFindingBackstopTimer;
- (void)dealloc;
- (void)didGenerateShareableConfigurationData:(id)data forToken:(id)token;
- (void)invalidate;
- (void)serviceDidDiscoverNearbyObject:(id)object;
- (void)serviceDidGenerateShareableConfigurationData:(id)data forObject:(id)object;
- (void)serviceDidRemoveNearbyObject:(id)object;
- (void)serviceDidUpdateAlgorithmConvergenceState:(id)state forObject:(id)object;
- (void)serviceDidUpdateNearbyObjects:(id)objects;
@end

@implementation NIServerFindingSession

- (NIServerFindingSession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error
{
  managerCopy = manager;
  configurationCopy = configuration;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v29 = +[NSAssertionHandler currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"NIServerFindingSession.mm" lineNumber:2710 description:@"Invalid configuration type."];
  }

  serverSessionIdentifier = [managerCopy serverSessionIdentifier];

  if (!serverSessionIdentifier)
  {
    v30 = +[NSAssertionHandler currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"NIServerFindingSession.mm" lineNumber:2711 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v32.receiver = self;
  v32.super_class = NIServerFindingSession;
  v13 = [(NIServerBaseSession *)&v32 initWithResourcesManager:managerCopy configuration:configurationCopy error:error];
  if (v13)
  {
    v14 = [configurationCopy copy];
    configuration = v13->_configuration;
    v13->_configuration = v14;

    v13->_isRunning = 0;
    v13->_shouldDeliverUpdates = 0;
    v13->_deliveredFirstUpdate = 0;
    clientConnectionQueue = [managerCopy clientConnectionQueue];
    clientQueue = v13->_clientQueue;
    v13->_clientQueue = clientConnectionQueue;

    serverSessionIdentifier2 = [managerCopy serverSessionIdentifier];
    uUIDString = [serverSessionIdentifier2 UUIDString];
    sessionIdentifier = v13->_sessionIdentifier;
    v13->_sessionIdentifier = uUIDString;

    findingToken = v13->_findingToken;
    v13->_findingToken = 0;

    v22 = +[NSUserDefaults standardUserDefaults];
    v23 = [v22 BOOLForKey:@"FindingPublishSystemStatus"];

    v24 = qword_1009F9820;
    v25 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#find-ses,System status publishing enabled", buf, 2u);
      }

      v26 = [[NIServerSystemStatusPublisher alloc] initWithSystemStatus:2];
      systemStatusPublisher = v13->_systemStatusPublisher;
      v13->_systemStatusPublisher = v26;
    }

    else if (v25)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#find-ses,System status publishing disabled", buf, 2u);
    }
  }

  return v13;
}

- (unint64_t)requiresUWBToRun
{
  configuration = self->_configuration;
  if (!configuration)
  {
    return 2;
  }

  if (![(NIFindingConfiguration *)configuration isFinder])
  {
    return 0;
  }

  if ([(NIServerFindingSession *)self _doesClientWantFinderObserverSession])
  {
    return 0;
  }

  return 2;
}

- (unint64_t)requiresNarrowbandToRun
{
  v3 = sub_1000054A8();
  if (!sub_1000149D4(v3))
  {
    return 0;
  }

  return [(NIServerFindingSession *)self requiresUWBToRun];
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_configuration)
  {
    sub_1004B08CC();
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    configuration = self->_configuration;
    *buf = 138543618;
    v17 = sessionIdentifier;
    v18 = 2114;
    v19 = configuration;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,Configure [%{public}@]: %{public}@", buf, 0x16u);
  }

  if ([(NIFindingConfiguration *)self->_configuration configType]== 1)
  {
    specifiedToken = [(NIFindingConfiguration *)self->_configuration specifiedToken];
    findingToken = self->_findingToken;
    self->_findingToken = specifiedToken;

    if (self->_findingToken)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v12 = NSLocalizedFailureReasonErrorKey;
    v13 = @"No discovery token for this configuration type";
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v9];
  }

  else
  {
    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = @"Configuration type not supported";
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v9];
  }

  v8 = v10;

LABEL_10:

  return v8;
}

- (id)run
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v22.receiver = self;
  v22.super_class = NIServerFindingSession;
  resourcesManager = [(NIServerBaseSession *)&v22 resourcesManager];
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    clientProcessNameBestGuess = [resourcesManager clientProcessNameBestGuess];
    *buf = 138543619;
    v24 = sessionIdentifier;
    v25 = 2113;
    v26 = clientProcessNameBestGuess;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#find-ses,Run [%{public}@]. Process: %{private}@", buf, 0x16u);
  }

  isRunning = self->_isRunning;
  self->_isRunning = 1;
  self->_shouldDeliverUpdates = 1;
  self->_deliveredFirstUpdate = 0;
  if ([(NIFindingConfiguration *)self->_configuration isFinder])
  {
    if ([(NIServerFindingSession *)self _doesClientWantFinderObserverSession])
    {
      v8 = +[NIServerFindingServiceObserverRelay sharedInstance];
      [v8 addObserver:self identifier:self->_sessionIdentifier token:self->_findingToken];
    }

    else
    {
      v11 = +[NSUserDefaults standardUserDefaults];
      v12 = [v11 BOOLForKey:@"FindingDisableService"];

      if (v12)
      {
        v13 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#find-ses,Finding session requested, but disabled via defaults write", buf, 2u);
        }
      }

      else
      {
        findingService = self->_findingService;
        if (findingService)
        {
          if (!isRunning)
          {
            [(NIServerFindingService *)findingService clientWithIdentifier:self->_sessionIdentifier updatedStateToRunning:1 dueToTimeout:0];
            findingService = self->_findingService;
          }

          [(NIServerFindingService *)findingService processUpdatedConfiguration:self->_configuration forClientIdentifier:self->_sessionIdentifier];
        }

        else
        {
          v15 = +[NIServerFindingServicePool sharedInstance];
          v16 = [v15 serviceForToken:self->_findingToken createIfNotExists:1];
          v17 = self->_findingService;
          self->_findingService = v16;

          v18 = [(NIServerFindingService *)self->_findingService addClient:self identifier:self->_sessionIdentifier configuration:self->_configuration];
        }

        [(NIServerFindingSession *)self _startRunawayFindingBackstopTimer];
        if (resourcesManager)
        {
          appStateMonitor = [resourcesManager appStateMonitor];
          isRunningBoardApp = [appStateMonitor isRunningBoardApp];

          if (isRunningBoardApp)
          {
            systemStatusPublisher = self->_systemStatusPublisher;
            [resourcesManager clientAuditToken];
            [(NIServerSystemStatusPublisher *)systemStatusPublisher publishWithAuditToken:buf];
          }
        }
      }
    }
  }

  else
  {
    v9 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
    [v9 addObserver:self];
  }

  return 0;
}

- (id)pauseWithSource:(int64_t)source
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    v7 = 138543362;
    v8 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#find-ses,Pause [%{public}@]", &v7, 0xCu);
  }

  [(NIServerFindingSession *)self _resetSessionStateForOperation:0];
  return 0;
}

- (BOOL)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (configurationCopy && self->_configuration && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [configurationCopy copy];
    v6 = [(NIFindingConfiguration *)self->_configuration canUpdateToConfiguration:v5];
    v7 = qword_1009F9820;
    v8 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        sessionIdentifier = self->_sessionIdentifier;
        configuration = self->_configuration;
        v17 = 138543874;
        v18 = sessionIdentifier;
        v19 = 2114;
        configurationCopy2 = configuration;
        v21 = 2114;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-ses,Update configuration [%{public}@]\nOld: %{public}@\nNew: %{public}@", &v17, 0x20u);
      }

      objc_storeStrong(&self->_configuration, v5);
    }

    else if (v8)
    {
      v14 = self->_sessionIdentifier;
      v15 = self->_configuration;
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      configurationCopy2 = v15;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-ses,Can't update configuration, parameters are too different [%@]\nOld: %@\nNew: %@", &v17, 0x20u);
    }
  }

  else
  {
    v11 = qword_1009F9820;
    v6 = 0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_sessionIdentifier;
      v13 = self->_configuration;
      v17 = 138412802;
      v18 = v12;
      v19 = 2112;
      configurationCopy2 = v13;
      v21 = 2112;
      v22 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#find-ses,Can't update configuration, one is nil or wrong type [%@]\nOld: %@\nNew: %@", &v17, 0x20u);
      v6 = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = self->_sessionIdentifier;
    *buf = 138543362;
    v7 = sessionIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,Dealloc [%{public}@]", buf, 0xCu);
  }

  [(NIServerFindingSession *)self _resetSessionStateForOperation:3];
  v5.receiver = self;
  v5.super_class = NIServerFindingSession;
  [(NIServerFindingSession *)&v5 dealloc];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_findingToken)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      sessionIdentifier = self->_sessionIdentifier;
      *buf = 138543362;
      v7 = sessionIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,Invalidate [%{public}@]", buf, 0xCu);
    }
  }

  v5.receiver = self;
  v5.super_class = NIServerFindingSession;
  [(NIServerBaseSession *)&v5 invalidate];
  [(NIServerFindingSession *)self _resetSessionStateForOperation:2];
}

- (void)_resetSessionStateForOperation:(int)operation
{
  if (operation > 1)
  {
    goto LABEL_4;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"FindingDisableClientPausingService"];

  if (v6)
  {
    goto LABEL_4;
  }

  v17.receiver = self;
  v17.super_class = NIServerFindingSession;
  resourcesManager = [(NIServerBaseSession *)&v17 resourcesManager];
  clientProcessNameBestGuess = [resourcesManager clientProcessNameBestGuess];
  v9 = [clientProcessNameBestGuess isEqualToString:@"com.apple.NanoSettingsViewService"];

  if (v9)
  {
LABEL_4:
    [(NIServerFindingService *)self->_findingService removeClientWithIdentifier:self->_sessionIdentifier dueToTimeout:operation == 1];
    findingService = self->_findingService;
    self->_findingService = 0;

    findingToken = self->_findingToken;
    self->_findingToken = 0;

    configuration = self->_configuration;
    self->_configuration = 0;

    if (operation == 3)
    {
      goto LABEL_8;
    }

    v13 = +[NIServerFindingServiceObserverRelay sharedInstance];
    [v13 removeObserverWithIdentifier:self->_sessionIdentifier];

    v14 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
    [v14 removeObserver:self];
  }

  else
  {
    [(NIServerFindingService *)self->_findingService clientWithIdentifier:self->_sessionIdentifier updatedStateToRunning:0 dueToTimeout:operation == 1];
  }

  [(NIServerSystemStatusPublisher *)self->_systemStatusPublisher unpublish];
LABEL_8:
  runawayFindingBackstopTimer = self->_runawayFindingBackstopTimer;
  if (runawayFindingBackstopTimer)
  {
    dispatch_source_cancel(runawayFindingBackstopTimer);
    v16 = self->_runawayFindingBackstopTimer;
    self->_runawayFindingBackstopTimer = 0;
  }

  self->_isRunning = 0;
  self->_shouldDeliverUpdates = 0;
  self->_deliveredFirstUpdate = 0;
}

- (void)_startRunawayFindingBackstopTimer
{
  runawayFindingBackstopTimer = self->_runawayFindingBackstopTimer;
  if (runawayFindingBackstopTimer)
  {
    dispatch_source_cancel(runawayFindingBackstopTimer);
    v4 = self->_runawayFindingBackstopTimer;
    self->_runawayFindingBackstopTimer = 0;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"RunawayFindingBackstopTimeoutOverrideSeconds"];
  v7 = 1200000000000;

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v9 = v8;
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-ses,Runaway finding backstop timeout override: %0.1f s", buf, 0xCu);
      }

      v7 = (v9 * 1000000000.0);
    }
  }

  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_clientQueue);
  v12 = self->_runawayFindingBackstopTimer;
  self->_runawayFindingBackstopTimer = v11;

  v13 = self->_runawayFindingBackstopTimer;
  v14 = dispatch_time(0, v7);
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  objc_initWeak(buf, self);
  v15 = self->_runawayFindingBackstopTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10024D348;
  handler[3] = &unk_10098AB18;
  objc_copyWeak(&v17, buf);
  dispatch_source_set_event_handler(v15, handler);
  dispatch_resume(self->_runawayFindingBackstopTimer);
  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (BOOL)_doesClientWantFinderObserverSession
{
  configuration = self->_configuration;
  if (!configuration || ![(NIFindingConfiguration *)configuration isFinder])
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = NIServerFindingSession;
  resourcesManager = [(NIServerBaseSession *)&v8 resourcesManager];
  if ([(NIFindingConfiguration *)self->_configuration isObserver])
  {
    v5 = 1;
  }

  else
  {
    clientProcessNameBestGuess = [resourcesManager clientProcessNameBestGuess];
    v5 = [clientProcessNameBestGuess isEqualToString:@"com.apple.nanofindlocallyd"];
  }

  return v5;
}

- (id)_processFindingEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!eventCopy)
  {
    __assert_rtn("[NIServerFindingSession _processFindingEvent:]", "NIServerFindingSession.mm", 3031, "event");
  }

  if (self->_configuration)
  {
    v5 = [eventCopy objectForKeyedSubscript:@"FindingEventDictKey_EventType"];
    integerValue = [v5 integerValue];

    v7 = [eventCopy objectForKeyedSubscript:@"FindingEventDictKey_ObjectDiscoveryToken"];
    v8 = [eventCopy objectForKeyedSubscript:@"FindingEventDictKey_SharedConfigurationData"];
    v9 = [eventCopy objectForKeyedSubscript:@"FindingEventDictKey_Location"];
    v10 = [eventCopy objectForKeyedSubscript:@"FindingEventDictKey_Heading"];
    if ([(NIFindingConfiguration *)self->_configuration isFinder])
    {
      findingService = self->_findingService;
      if (findingService)
      {
        v12 = findingService;
      }

      else
      {
        v13 = +[NIServerFindingServicePool sharedInstance];
        v12 = [v13 serviceForToken:self->_findingToken createIfNotExists:0];
      }

      if (integerValue <= 3)
      {
        if (integerValue == 2)
        {
          if (v9)
          {
            [(NIServerFindingService *)v12 processSelfLocation:v9];
          }
        }

        else if (integerValue == 3 && v10)
        {
          [(NIServerFindingService *)v12 processSelfHeading:v10];
        }
      }

      else if (integerValue == 4)
      {
        if (v9 && [(NIDiscoveryToken *)self->_findingToken isEqual:v7])
        {
          [(NIServerFindingService *)v12 processPeerLocation:v9 forPeer:v7];
        }
      }

      else if (integerValue == 6)
      {
        if (v7 && [(NIDiscoveryToken *)self->_findingToken isEqual:v7])
        {
          [(NIServerFindingService *)v12 processClientRemovePeerEvent];
        }
      }

      else if (integerValue == 5 && v7 && v8 && [(NIDiscoveryToken *)self->_findingToken isEqual:v7])
      {
        [(NIServerFindingService *)v12 processClientDiscoveryEventWithSharedConfigurationData:v8];
      }
    }

    else if (integerValue == 6)
    {
      if (!v7 || ![(NIDiscoveryToken *)self->_findingToken isEqual:v7])
      {
        goto LABEL_39;
      }

      v12 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
      [(NIServerFindingService *)v12 processClientRemovePeerEventForToken:self->_findingToken];
    }

    else
    {
      if (integerValue != 5 || !v7 || !v8 || ![(NIDiscoveryToken *)self->_findingToken isEqual:v7])
      {
        goto LABEL_39;
      }

      v12 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
      [(NIServerFindingService *)v12 processClientDiscoveryEventForToken:self->_findingToken sharedConfigurationData:v8];
    }

LABEL_39:
    goto LABEL_40;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B08F8();
  }

LABEL_40:

  return 0;
}

- (void)serviceDidGenerateShareableConfigurationData:(id)data forObject:(id)object
{
  dataCopy = data;
  objectCopy = object;
  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024D91C;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v12 = dataCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = dataCopy;
  dispatch_async(clientQueue, block);
}

- (void)serviceDidDiscoverNearbyObject:(id)object
{
  objectCopy = object;
  clientQueue = self->_clientQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024DA4C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(clientQueue, v7);
}

- (void)serviceDidRemoveNearbyObject:(id)object
{
  objectCopy = object;
  clientQueue = self->_clientQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024DB7C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(clientQueue, v7);
}

- (void)serviceDidUpdateNearbyObjects:(id)objects
{
  objectsCopy = objects;
  clientQueue = self->_clientQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024DD20;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = objectsCopy;
  v6 = objectsCopy;
  dispatch_async(clientQueue, v7);
}

- (void)serviceDidUpdateAlgorithmConvergenceState:(id)state forObject:(id)object
{
  stateCopy = state;
  objectCopy = object;
  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024DFA0;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v12 = stateCopy;
  v13 = objectCopy;
  v9 = objectCopy;
  v10 = stateCopy;
  dispatch_async(clientQueue, block);
}

- (void)didGenerateShareableConfigurationData:(id)data forToken:(id)token
{
  dataCopy = data;
  tokenCopy = token;
  dispatch_assert_queue_V2(self->_clientQueue);
  if ([(NIDiscoveryToken *)self->_findingToken isEqual:tokenCopy])
  {
    v8 = [[NINearbyObject alloc] initWithToken:self->_findingToken];
    v11.receiver = self;
    v11.super_class = NIServerFindingSession;
    resourcesManager = [(NIServerBaseSession *)&v11 resourcesManager];
    remote = [resourcesManager remote];
    [remote didGenerateShareableConfigurationData:dataCopy forObject:v8];
  }
}

+ (id)servicePoolPrintableState
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#find-ses,servicePoolPrintableState", v6, 2u);
  }

  v3 = +[NIServerFindingServicePool sharedInstance];
  servicePoolPrintableState = [v3 servicePoolPrintableState];

  return servicePoolPrintableState;
}

+ (id)allServicesPrintableState
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#find-ses,allServicesPrintableState", v6, 2u);
  }

  v3 = +[NIServerFindingServicePool sharedInstance];
  allServicesPrintableState = [v3 allServicesPrintableState];

  return allServicesPrintableState;
}

@end