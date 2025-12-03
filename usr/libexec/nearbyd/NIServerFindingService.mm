@interface NIServerFindingService
- (BOOL)_isAnyClientRunning;
- (NIServerFindingService)initWithLabel:(id)label;
- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr;
- (id)_getCommonConfiguration;
- (id)_startService;
- (id)addClient:(id)client identifier:(id)identifier configuration:(id)configuration;
- (id)objectFromIdentifier:(unint64_t)identifier;
- (id)printableState;
- (optional<unsigned)identifierFromDiscoveryToken:(id)token;
- (void)DataCallback:(id)callback;
- (void)_addAlgorithmOutputFlagsToPeerTrackingState:(unsigned __int8)state;
- (void)_configureAdvertisementOOBRefreshTimer;
- (void)_generateShareableConfigurationDataForAllListenersUsingAdvertisement:(id)advertisement;
- (void)_handleRangingTerminatedCallbackForPeer:(id)peer;
- (void)_logSessionSummary;
- (void)_logSuccessfulRange:(double)range;
- (void)_logUnsuccessfulRange;
- (void)_pauseServiceDueToClientTimeout:(BOOL)timeout;
- (void)_processUpdatedCommonConfigurationIfNecessary;
- (void)_removeAlgorithmOutputFlagsFromPeerTrackingState:(unsigned __int8)state;
- (void)_resetServiceStateForOperation:(int)operation;
- (void)_resetUpdatesEngine;
- (void)_startAltitudeUpdates;
- (void)_startDeviceMotionUpdates;
- (void)_startDevicePDRUpdates;
- (void)_startOrUpdateAdvertising;
- (void)_submitToUsageAnalyticsAggregator;
- (void)_tryToStartRangingWithPeerAdvertisement:(id)advertisement;
- (void)_updatePeerTrackingOOBRefreshPeriod:(id)period;
- (void)_updatePeerTrackingOverallState:(id)state;
- (void)bluetoothDiscoveryBecameAvailable;
- (void)bluetoothDiscoveryBecameUnavailable;
- (void)bluetoothDiscoveryFinishedActivating;
- (void)clientWithIdentifier:(id)identifier updatedStateToRunning:(BOOL)running dueToTimeout:(BOOL)timeout;
- (void)dealloc;
- (void)didAttemptRangingWithPeer:(id)peer unsuccessfulSolution:(const void *)solution;
- (void)didLosePeer:(id)peer;
- (void)didRangeWithPeer:(id)peer newSolution:(const void *)solution;
- (void)didRangingAuthorizationFailForPeer:(id)peer;
- (void)didReceiveRangingDataForPeer:(id)peer algorithmAidingData:(const void *)data signallingData:(const void *)signallingData;
- (void)didStopAdvertisingToPeer:(id)peer;
- (void)didStopRangingWithPeer:(id)peer;
- (void)didUpdateAdvertisement:(id)advertisement toSendOOBToPeer:(id)peer;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateHeading:(id)heading;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)processClientDiscoveryEventWithSharedConfigurationData:(id)data;
- (void)processClientRemovePeerEvent;
- (void)processPeerLocation:(id)location forPeer:(id)peer;
- (void)processSelfHeading:(id)heading;
- (void)processSelfLocation:(id)location;
- (void)processUpdatedConfiguration:(id)configuration forClientIdentifier:(id)identifier;
- (void)processVisionInput:(id)input;
- (void)relayInfoToNewObserver:(id)observer;
- (void)removeClientWithIdentifier:(id)identifier dueToTimeout:(BOOL)timeout;
- (void)updatesEngine:(id)engine didUpdateAlgorithmConvergenceState:(id)state forObject:(id)object;
- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects;
@end

@implementation NIServerFindingService

- (NIServerFindingService)initWithLabel:(id)label
{
  labelCopy = label;
  v30.receiver = self;
  v30.super_class = NIServerFindingService;
  v5 = [(NIServerFindingService *)&v30 init];
  if (v5)
  {
    v6 = labelCopy;
    v7 = [labelCopy cStringUsingEncoding:4];
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -2);
    v9 = dispatch_queue_create(v7, v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = objc_opt_new();
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v11;

    v13 = objc_opt_new();
    algorithmsIdentifier = v5->_algorithmsIdentifier;
    v5->_algorithmsIdentifier = v13;

    v15 = +[NSMapTable strongToWeakObjectsMapTable];
    findingClients = v5->_findingClients;
    v5->_findingClients = v15;

    v17 = objc_opt_new();
    findingConfigurations = v5->_findingConfigurations;
    v5->_findingConfigurations = v17;

    v19 = objc_opt_new();
    clientRunStates = v5->_clientRunStates;
    v5->_clientRunStates = v19;

    v5->_serviceState = 0;
    v21 = objc_opt_new();
    sessionSummary = v5->_sessionSummary;
    v5->_sessionSummary = v21;

    findingToken = v5->_findingToken;
    v5->_findingToken = 0;

    configuration = v5->_configuration;
    v5->_configuration = 0;

    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v5->_serviceIdentifier;
      *buf = 138543362;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#find-ses,Service initialized (%{public}@)", buf, 0xCu);
    }

    v27 = [[DetailsViewAnalytics alloc] initWithCurrentTime:sub_100005288()];
    detailsViewAnalytics = v5->_detailsViewAnalytics;
    v5->_detailsViewAnalytics = v27;
  }

  return v5;
}

- (void)dealloc
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    serviceIdentifier = self->_serviceIdentifier;
    *buf = 138543362;
    v7 = serviceIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,Service deallocated (%{public}@)", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = NIServerFindingService;
  [(NIServerFindingService *)&v5 dealloc];
}

- (id)addClient:(id)client identifier:(id)identifier configuration:(id)configuration
{
  clientCopy = client;
  identifierCopy = identifier;
  configurationCopy = configuration;
  if (clientCopy)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100241B3C;
    v24 = sub_100241B4C;
    v25 = 0;
    queue = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002422B0;
    v15[3] = &unk_1009A0328;
    v15[4] = self;
    v16 = identifierCopy;
    v17 = clientCopy;
    v18 = configurationCopy;
    v19 = &v20;
    dispatch_sync(queue, v15);
    v12 = v21[5];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v26 = NSLocalizedFailureReasonErrorKey;
    v27 = @"Finding Service Client can't be nil";
    v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v13];
  }

  return v12;
}

- (void)clientWithIdentifier:(id)identifier updatedStateToRunning:(BOOL)running dueToTimeout:(BOOL)timeout
{
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100242670;
  block[3] = &unk_1009A0350;
  v12 = identifierCopy;
  selfCopy = self;
  runningCopy = running;
  timeoutCopy = timeout;
  v10 = identifierCopy;
  dispatch_sync(queue, block);
}

- (void)removeClientWithIdentifier:(id)identifier dueToTimeout:(BOOL)timeout
{
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024295C;
  block[3] = &unk_10099BAD8;
  v10 = identifierCopy;
  selfCopy = self;
  timeoutCopy = timeout;
  v8 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)relayInfoToNewObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100242C7C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)processUpdatedConfiguration:(id)configuration forClientIdentifier:(id)identifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100242E3C;
  block[3] = &unk_10099BB28;
  block[4] = self;
  v12 = configurationCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = configurationCopy;
  dispatch_sync(queue, block);
}

- (void)processVisionInput:(id)input
{
  inputCopy = input;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100242F18;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = inputCopy;
  v6 = inputCopy;
  dispatch_sync(queue, v7);
}

- (void)processClientDiscoveryEventWithSharedConfigurationData:(id)data
{
  dataCopy = data;
  v5 = [NIServerFindingAdvertisement advertisementFromByteRepresentation:dataCopy];
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    descriptionInternal = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
    *buf = 138478083;
    v12 = descriptionInternal;
    v13 = 2113;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-ses,Service processClientDiscoveryEvent [%{private}@]. Adv: %{private}@", buf, 0x16u);
  }

  if (v5)
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100243134;
    v9[3] = &unk_10098A2E8;
    v9[4] = self;
    v10 = v5;
    dispatch_sync(queue, v9);
  }
}

- (void)processClientRemovePeerEvent
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    descriptionInternal = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
    *buf = 138477827;
    v8 = descriptionInternal;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,Service processClientRemovePeerEvent [%{private}@]", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002432A4;
  block[3] = &unk_10098BD28;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)processSelfLocation:(id)location
{
  locationCopy = location;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    descriptionInternal = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
    sub_1004AFCF0(descriptionInternal, locationCopy, buf, v5);
  }

  if (!self->_enableLocalLocationManager)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100243408;
    v8[3] = &unk_10098A2E8;
    v9 = locationCopy;
    selfCopy = self;
    dispatch_sync(queue, v8);
  }
}

- (void)processSelfHeading:(id)heading
{
  headingCopy = heading;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    descriptionInternal = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
    sub_1004AFD58(descriptionInternal, headingCopy, buf, v5);
  }

  if (!self->_enableLocalLocationManager)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100243684;
    v8[3] = &unk_10098A2E8;
    v9 = headingCopy;
    selfCopy = self;
    dispatch_sync(queue, v8);
  }
}

- (void)processPeerLocation:(id)location forPeer:(id)peer
{
  locationCopy = location;
  peerCopy = peer;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    descriptionInternal = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
    *buf = 138478339;
    v18 = descriptionInternal;
    v19 = 2113;
    v20 = peerCopy;
    v21 = 2117;
    v22 = locationCopy;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#find-ses,Service processPeerLocationForPeer [%{private}@]: %{private}@. Location: %{sensitive}@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002438C4;
  block[3] = &unk_10099BB28;
  v14 = locationCopy;
  selfCopy = self;
  v16 = peerCopy;
  v10 = peerCopy;
  v11 = locationCopy;
  dispatch_sync(queue, block);
}

- (id)printableState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100241B3C;
  v11 = sub_100241B4C;
  v12 = objc_opt_new();
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100243B10;
  v6[3] = &unk_10098A310;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_startService
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_pauseDelayTimer)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      descriptionInternal = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
      *buf = 138543362;
      *&buf[4] = descriptionInternal;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,Service [%{public}@] canceled pending pause", buf, 0xCu);
    }

    dispatch_source_cancel(self->_pauseDelayTimer);
    pauseDelayTimer = self->_pauseDelayTimer;
    self->_pauseDelayTimer = 0;
  }

  if (self->_serviceState)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1003464D4("SessionResumed", 1, self->_findingToken, 0);
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
    }

    v8 = +[NIServerFindingServicePool sharedInstance];
    descriptionInternal2 = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
    v10 = [NSString stringWithFormat:@"%@: SessionResumed", descriptionInternal2];
    [v8 logSessionEvent:v10];

    v11 = +[NSDate now];
    [(NSMutableDictionary *)self->_sessionSummary setObject:v11 forKeyedSubscript:@"[A2|SES] Resum"];
  }

  else
  {
    _getCommonConfiguration = [(NIServerFindingService *)self _getCommonConfiguration];
    configuration = self->_configuration;
    self->_configuration = _getCommonConfiguration;

    v14 = qword_1009F9820;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      findingToken = self->_findingToken;
      v16 = [NSString stringWithFormat:@"Cfg: %@", self->_configuration];
      v17 = sub_1003464D4("SessionStarted", 1, findingToken, v16);
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
    }

    v18 = +[NIServerFindingServicePool sharedInstance];
    descriptionInternal3 = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
    v20 = [NSString stringWithFormat:@"%@: SessionStarted", descriptionInternal3];
    [v18 logSessionEvent:v20];

    v11 = +[NSDate now];
    [(NSMutableDictionary *)self->_sessionSummary setObject:v11 forKeyedSubscript:@"[A1|SES] Start"];
  }

  [(DetailsViewAnalytics *)self->_detailsViewAnalytics setEnteredFromActiveFindingUI:[(NIFindingConfiguration *)self->_configuration preferredUpdateRate]== 2];
  debugParameters = [(NIFindingConfiguration *)self->_configuration debugParameters];
  v22 = [debugParameters objectForKey:@"DisableBTDiscovery"];
  bOOLValue = [v22 BOOLValue];

  if (bOOLValue)
  {
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "#find-ses,Debug configuration enabled to disable BT discovery";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v26 = +[NSUserDefaults standardUserDefaults];
  v27 = [v26 BOOLForKey:@"FindingSessionDisableBTDiscovery"];

  if (v27)
  {
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "#find-ses,Defaults write to disable BT discovery";
      goto LABEL_18;
    }

LABEL_19:
    v28 = 0;
    goto LABEL_21;
  }

  v28 = 1;
LABEL_21:
  v29 = sub_100346034(@"FindingBTDiscoveryTimeoutSecondsOverride", 120.0);
  v30 = [NIServerFindingDiscoveryProvider alloc];
  uUIDString = [(NSUUID *)self->_serviceIdentifier UUIDString];
  v32 = uUIDString;
  sub_100004A08(buf, [uUIDString UTF8String]);
  v33 = [(NIServerFindingDiscoveryProvider *)v30 initWithIdentifier:buf isFinder:1 enableBluetooth:v28 launchOnDemand:0 scanRate:50 discoveryTimeout:self consumer:v29 queue:self->_queue];
  discoveryProvider = self->_discoveryProvider;
  self->_discoveryProvider = v33;

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v35 = [NIServerFindingRangingProvider alloc];
  uUIDString2 = [(NSUUID *)self->_serviceIdentifier UUIDString];
  v37 = uUIDString2;
  sub_100004A08(buf, [uUIDString2 UTF8String]);
  queue = self->_queue;
  v95 = 0;
  v96 = 0;
  v39 = [(NIServerFindingRangingProvider *)v35 initWithIdentifier:buf isFinder:1 consumer:self queue:queue pbLogger:&v95];
  rangingProvider = self->_rangingProvider;
  self->_rangingProvider = v39;

  if (v96)
  {
    sub_10000AD84(v96);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v41 = self->_discoveryProvider;
  if (v41 && self->_rangingProvider)
  {
    [(NIServerFindingDiscoveryProvider *)v41 activate];
    [(NIServerFindingRangingProvider *)self->_rangingProvider activate];
    v42 = self->_rangingProvider;
    debugParameters2 = [(NIFindingConfiguration *)self->_configuration debugParameters];
    [(NIServerFindingRangingProvider *)v42 setDebugParameters:debugParameters2];

    v44 = +[NIServerFindingPeerTracking peerTrackingInitialState];
    peerTracking = self->_peerTracking;
    self->_peerTracking = v44;

    [(NIServerFindingService *)self _updatePeerTrackingClientWantsUpdates:[(NIFindingConfiguration *)self->_configuration preferredUpdateRate]!= 3];
    v46 = +[NSUserDefaults standardUserDefaults];
    self->_enableDeviceFinding = [v46 BOOLForKey:@"EnableDeviceFindingOnPhone"];

    v47 = qword_1009F9820;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      enableDeviceFinding = self->_enableDeviceFinding;
      *buf = 67109120;
      *&buf[4] = enableDeviceFinding;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#find-ses,For rdar://102527413 (Test hook to use Wenda arrow interface on phone), enabling device finding on phone, %d", buf, 8u);
    }

    [(NIServerFindingService *)self _resetUpdatesEngine];
    self->_cachedSolutionMacAddr = 0;
    self->_lastLogMachContTime = 0.0;
    v49 = self->_discoveryProvider;
    v50 = [NSSet setWithObject:self->_findingToken];
    v51 = [(NIServerFindingDiscoveryProvider *)v49 setPeersEligibleForDiscovery:v50 requestScan:1];

    rangingTriggerType = [(NIServerFindingRangingProvider *)self->_rangingProvider rangingTriggerType];
    v53 = qword_1009F9820;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = rangingTriggerType ? "TriggerRequired" : "NoTriggerRequired";
      sub_100004A08(buf, v54);
      v55 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *v97 = 136315138;
      v98 = v55;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#find-ses,ranging trigger type = %s", v97, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    if (!rangingTriggerType)
    {
      v56 = [NIServerFindingAdvertisement alloc];
      *&buf[4] = 0;
      *buf = 0;
      v57 = [(NIServerFindingAdvertisement *)v56 initForFinder:0 address:buf];
      [v57 setCanRange:1];
      v58 = self->_rangingProvider;
      if (v58)
      {
        [(NIServerFindingRangingProvider *)v58 supportedTechnologies];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      if (sub_100346F20(buf, 1))
      {
        v62 = 1;
      }

      else
      {
        v62 = 2;
      }

      *v97 = v62;
      v93 = 0;
      v94 = 0;
      __p = 0;
      sub_1002216D0(&__p, v97, &v98, 1uLL);
      [v57 setSupportedTechnologies:&__p];
      if (__p)
      {
        v93 = __p;
        operator delete(__p);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      [v57 setProtocolVersion:2];
      v63 = sub_10035D02C();
      v64 = *(v63 + 406);
      v65 = *(v63 + 407);
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100329F3C(v64);
      [v57 setNarrowBandMask:sub_100428064(v91)];
      if (v91[0])
      {
        v91[1] = v91[0];
        operator delete(v91[0]);
      }

      if (v65)
      {
        sub_10000AD84(v65);
      }

      [v57 setMmsNumFragmentsOOB:0];
      [(NIServerFindingService *)self _updatePeerTrackingDiscoveryState:2];
      [(NIServerFindingService *)self _tryToStartRangingWithPeerAdvertisement:v57];
    }

    [(NIServerFindingService *)self _startOrUpdateAdvertising];
    v66 = objc_alloc_init(NSOperationQueue);
    motionUpdateOpQueue = self->_motionUpdateOpQueue;
    self->_motionUpdateOpQueue = v66;

    [(NSOperationQueue *)self->_motionUpdateOpQueue setUnderlyingQueue:self->_queue];
    v68 = sub_1000054A8();
    if (sub_10041C748(v68[144]) || (v69 = sub_1000054A8(), sub_100003AA8(v69[144])) || self->_enableDeviceFinding)
    {
      v70 = objc_alloc_init(CMMotionManager);
      motionManager = self->_motionManager;
      self->_motionManager = v70;

      v72 = self->_motionManager;
      if (v72)
      {
        [(CMMotionManager *)v72 setDeviceMotionUpdateInterval:0.01];
        [(NIServerFindingService *)self _startDeviceMotionUpdates];
      }
    }

    v73 = objc_alloc_init(CMAltimeter);
    altimeterManager = self->_altimeterManager;
    self->_altimeterManager = v73;

    if (self->_altimeterManager)
    {
      [(NIServerFindingService *)self _startAltitudeUpdates];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AFDC0();
    }

    v75 = objc_alloc_init(CMOdometryManager);
    pdrManager = self->_pdrManager;
    self->_pdrManager = v75;

    if (self->_pdrManager)
    {
      [(NIServerFindingService *)self _startDevicePDRUpdates];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AFE00();
    }

    v90 = 0;
    v77 = [CLLocationManager _checkAndExerciseAuthorizationForBundleID:@"com.apple.findmy" error:&v90];
    v60 = v90;
    if (v60)
    {
      v78 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = @"com.apple.findmy";
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#find-ses,Authorization error for %{public}@,error,%{public}@", buf, 0x16u);
      }
    }

    v79 = +[NSUserDefaults standardUserDefaults];
    v80 = [v79 BOOLForKey:@"FindingSessionDisableLocationManagerWorkaround_r108262579"];

    self->_enableLocalLocationManager = v77 & (v80 ^ 1);
    v81 = qword_1009F9820;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      enableLocalLocationManager = self->_enableLocalLocationManager;
      *buf = 67109632;
      *&buf[4] = v77;
      *&buf[8] = 1024;
      *&buf[10] = v80;
      *&buf[14] = 1024;
      *&buf[16] = enableLocalLocationManager;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#find-ses,findMyAppIsAuthorizedForLocations,%d,FindingSessionDisableLocationManagerWorkaround_r108262579,%d,enableLocalLocationManager,%d", buf, 0x14u);
    }

    if (self->_enableLocalLocationManager)
    {
      v83 = sub_1000054A8();
      if (sub_100003AA8(v83[144]))
      {
        v84 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#find-ses,Using a temporary location manager until rdar://107853227 lands", buf, 2u);
        }

        v85 = [[CLLocationManager alloc] initWithEffectiveBundleIdentifier:@"com.apple.findmy" delegate:self onQueue:self->_queue];
        locationManager = self->_locationManager;
        self->_locationManager = v85;

        [(CLLocationManager *)self->_locationManager setActivityType:3];
        [(CLLocationManager *)self->_locationManager setDistanceFilter:kCLDistanceFilterNone];
        [(CLLocationManager *)self->_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        [(CLLocationManager *)self->_locationManager setHeadingFilter:kCLHeadingFilterNone];
        [(CLLocationManager *)self->_locationManager setDelegate:self];
        [(CLLocationManager *)self->_locationManager startUpdatingLocation];
        [(CLLocationManager *)self->_locationManager startUpdatingHeading];
      }
    }

    if (!self->_gnssExtensionsManager)
    {
      v87 = [[NIGnssExtensionsManager alloc] initWithQueue:self->_queue bundleId:@"com.apple.findmy" reason:@"NIServerFindingService"];
      gnssExtensionsManager = self->_gnssExtensionsManager;
      self->_gnssExtensionsManager = v87;

      [(NIGnssExtensionsManager *)self->_gnssExtensionsManager setDelegate:self];
    }

    [(NIServerAnalyticsManager *)self->_analyticsManager sessionSuccessfullyRanWithConfig:self->_configuration withTimestamp:sub_100005288()];
    self->_serviceState = 1;
    v61 = 0;
    self->_serviceStartTimeSeconds = sub_100005288();
  }

  else
  {
    v59 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AFE3C(self, &self->_configuration, v59);
    }

    v99 = NSLocalizedFailureReasonErrorKey;
    v100 = @"Providers could not be initialized ";
    v60 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v61 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v60];
  }

  return v61;
}

- (void)_pauseServiceDueToClientTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  dispatch_assert_queue_V2(self->_queue);
  if (timeoutCopy)
  {
    selfCopy2 = self;
    v6 = 1;
LABEL_5:

    [(NIServerFindingService *)selfCopy2 _resetServiceStateForOperation:v6];
    return;
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"FindingDisableServicePauseDelay"];

  if (v8)
  {
    selfCopy2 = self;
    v6 = 0;
    goto LABEL_5;
  }

  if (!self->_pauseDelayTimer)
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 objectForKey:@"FindingServicePauseDelayOverrideSeconds"];
    v11 = 1000000000;

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 doubleValue];
        v13 = v12;
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v24 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-ses,Pause delay override: %0.1f s", buf, 0xCu);
        }

        v11 = (v13 * 1000000000.0);
      }
    }

    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    p_pauseDelayTimer = &self->_pauseDelayTimer;
    pauseDelayTimer = self->_pauseDelayTimer;
    self->_pauseDelayTimer = v15;

    v18 = self->_pauseDelayTimer;
    v19 = dispatch_time(0, v11);
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    objc_initWeak(buf, self);
    v20 = self->_pauseDelayTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1002451EC;
    handler[3] = &unk_10098AB18;
    objc_copyWeak(&v22, buf);
    dispatch_source_set_event_handler(v20, handler);
    dispatch_resume(*p_pauseDelayTimer);
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

- (void)_processUpdatedCommonConfigurationIfNecessary
{
  if (self->_serviceState == 1)
  {
    _getCommonConfiguration = [(NIServerFindingService *)self _getCommonConfiguration];
    p_configuration = &self->_configuration;
    if (![(NIFindingConfiguration *)self->_configuration isEqual:_getCommonConfiguration])
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        findingToken = self->_findingToken;
        v7 = [NSString stringWithFormat:@"Old: %@. New: %@", self->_configuration, _getCommonConfiguration];
        v8 = sub_1003464D4("UpdateConfig", 1, findingToken, v7);
        *buf = 138543362;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
      }

      objc_storeStrong(&self->_configuration, _getCommonConfiguration);
      [(NIServerFindingService *)self _updatePeerTrackingClientWantsUpdates:[(NIFindingConfiguration *)*p_configuration preferredUpdateRate]!= 3];
      if ([(NIFindingConfiguration *)*p_configuration preferredUpdateRate]== 3)
      {
        [(NIServerFindingService *)self _resetUpdatesEngine];
      }

      [(NIServerFindingService *)self _startOrUpdateAdvertising];
      discoveredPeers = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider discoveredPeers];
      v10 = [discoveredPeers objectForKey:self->_findingToken];

      if (v10)
      {
        [(NIServerFindingService *)self _tryToStartRangingWithPeerAdvertisement:v10];
      }
    }
  }
}

- (id)_getCommonConfiguration
{
  v3 = [[NIFindingConfiguration alloc] initWithRole:0 discoveryToken:self->_findingToken preferredUpdateRate:3];
  [(NIFindingConfiguration *)v3 setPreferredDiscoveryPriority:1];
  objectEnumerator = [(NSMutableDictionary *)self->_findingConfigurations objectEnumerator];
  v5 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    if ([nextObject preferredUpdateRate] != 3)
    {
      [(NIFindingConfiguration *)v3 setPreferredUpdateRate:2];
    }

    if ([nextObject preferredDiscoveryPriority] != 1)
    {
      [(NIFindingConfiguration *)v3 setPreferredDiscoveryPriority:0];
    }

    debugParameters = [nextObject debugParameters];

    v5 = nextObject;
    if (debugParameters)
    {
      debugParameters2 = [nextObject debugParameters];
      [(NIFindingConfiguration *)v3 setDebugParameters:debugParameters2];

      v5 = nextObject;
    }
  }

  [(NIFindingConfiguration *)v3 setCameraAssistanceEnabled:+[NIPlatformInfo supportsSyntheticAperture]];

  return v3;
}

- (BOOL)_isAnyClientRunning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  clientRunStates = self->_clientRunStates;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002456EC;
  v5[3] = &unk_10099F218;
  v5[4] = &v6;
  [(NSMutableDictionary *)clientRunStates enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_resetServiceStateForOperation:(int)operation
{
  dispatch_assert_queue_V2(self->_queue);
  pauseDelayTimer = self->_pauseDelayTimer;
  if (pauseDelayTimer)
  {
    dispatch_source_cancel(pauseDelayTimer);
    v6 = self->_pauseDelayTimer;
    self->_pauseDelayTimer = 0;
  }

  if ((operation - 2) >= 2)
  {
    if (operation == 1)
    {
      [(NIServerFindingService *)self _removeAlgorithmOutputFlagsFromPeerTrackingState:255];
      v19 = qword_1009F9820;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = sub_1003464D4("SessionTimeout", 1, self->_findingToken, 0);
        *buf = 138543362;
        v53 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
      }

      v21 = +[NIServerFindingServicePool sharedInstance];
      descriptionInternal = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
      v23 = [NSString stringWithFormat:@"%@: SessionTimeout", descriptionInternal];
      [v21 logSessionEvent:v23];

      v24 = +[NSDate now];
      [(NSMutableDictionary *)self->_sessionSummary setObject:v24 forKeyedSubscript:@"[A4|SES] T/out"];
    }

    else
    {
      [(NIServerFindingService *)self _removeAlgorithmOutputFlagsFromPeerTrackingState:255];
      v25 = qword_1009F9820;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_1003464D4("SessionPaused", 1, self->_findingToken, 0);
        *buf = 138543362;
        v53 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
      }

      v27 = +[NIServerFindingServicePool sharedInstance];
      descriptionInternal2 = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
      v29 = [NSString stringWithFormat:@"%@: SessionPaused", descriptionInternal2];
      [v27 logSessionEvent:v29];

      v24 = +[NSDate now];
      [(NSMutableDictionary *)self->_sessionSummary setObject:v24 forKeyedSubscript:@"[A3|SES] Pause"];
    }

    [(NIServerFindingService *)self _submitToUsageAnalyticsAggregator];
    [(NIServerFindingService *)self _logSessionSummary];
    [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateDistanceAnalytics:3];
    [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateTimeAnalytics:3 currentTime:sub_100005288()];
    [(DetailsViewAnalytics *)self->_detailsViewAnalytics submitAnalytics];
    self->_serviceState = 2;
  }

  else
  {
    [(NIServerFindingService *)self _removeAlgorithmOutputFlagsFromPeerTrackingState:255];
    if (self->_findingToken)
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_1003464D4("SessionStopped", 1, self->_findingToken, 0);
        *buf = 138543362;
        v53 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
      }

      v9 = +[NIServerFindingServicePool sharedInstance];
      descriptionInternal3 = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
      v11 = [NSString stringWithFormat:@"%@: SessionStopped", descriptionInternal3];
      [v9 logSessionEvent:v11];

      v12 = +[NSDate now];
      [(NSMutableDictionary *)self->_sessionSummary setObject:v12 forKeyedSubscript:@"[A5|SES] Stop "];

      v13 = [[NINearbyObject alloc] initWithToken:self->_findingToken];
      v14 = +[NIServerFindingServiceObserverRelay sharedInstance];
      findingToken = self->_findingToken;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100245E4C;
      v50[3] = &unk_1009A0378;
      v16 = v13;
      v51 = v16;
      [v14 relayToObserversForToken:findingToken blockToRelay:v50];
    }

    [(NIServerFindingService *)self _submitToUsageAnalyticsAggregator];
    [(NIServerFindingService *)self _logSessionSummary];
    [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateDistanceAnalytics:3];
    [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateTimeAnalytics:3 currentTime:sub_100005288()];
    [(DetailsViewAnalytics *)self->_detailsViewAnalytics submitAnalytics];
    configuration = self->_configuration;
    self->_configuration = 0;

    v18 = self->_findingToken;
    self->_findingToken = 0;

    self->_serviceState = 0;
    [(NSMapTable *)self->_findingClients removeAllObjects];
    [(NSMutableDictionary *)self->_findingConfigurations removeAllObjects];
    [(NSMutableDictionary *)self->_clientRunStates removeAllObjects];
  }

  v30 = objc_opt_new();
  sessionSummary = self->_sessionSummary;
  self->_sessionSummary = v30;

  [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider invalidate];
  discoveryProvider = self->_discoveryProvider;
  self->_discoveryProvider = 0;

  [(NIServerFindingRangingProvider *)self->_rangingProvider invalidate];
  rangingProvider = self->_rangingProvider;
  self->_rangingProvider = 0;

  [(NINearbyUpdatesEngine *)self->_updatesEngine invalidate];
  updatesEngine = self->_updatesEngine;
  self->_updatesEngine = 0;

  analyticsManager = self->_analyticsManager;
  self->_analyticsManager = 0;

  peerTracking = self->_peerTracking;
  self->_peerTracking = 0;

  self->_cachedSolutionMacAddr = 0;
  self->_lastLogMachContTime = 0.0;
  cachedVisionInput = self->_cachedVisionInput;
  self->_cachedVisionInput = 0;

  advertisingOOBRefreshTimer = self->_advertisingOOBRefreshTimer;
  if (advertisingOOBRefreshTimer)
  {
    dispatch_source_cancel(advertisingOOBRefreshTimer);
    v39 = self->_advertisingOOBRefreshTimer;
    self->_advertisingOOBRefreshTimer = 0;
  }

  motionManager = self->_motionManager;
  if (motionManager)
  {
    [(CMMotionManager *)motionManager stopDeviceMotionUpdates];
    v41 = self->_motionManager;
    self->_motionManager = 0;
  }

  altimeterManager = self->_altimeterManager;
  if (altimeterManager)
  {
    [(CMAltimeter *)altimeterManager stopRelativeAltitudeUpdates];
    [(CMAltimeter *)self->_altimeterManager stopCompanionRelativeElevationUpdates];
    v43 = self->_altimeterManager;
    self->_altimeterManager = 0;
  }

  pdrManager = self->_pdrManager;
  if (pdrManager)
  {
    [(CMOdometryManager *)pdrManager stopOdometryUpdates];
    v45 = self->_pdrManager;
    self->_pdrManager = 0;
  }

  locationManager = self->_locationManager;
  if (locationManager)
  {
    [(CLLocationManager *)locationManager stopUpdatingLocation];
    [(CLLocationManager *)self->_locationManager stopUpdatingHeading];
    v47 = self->_locationManager;
    self->_locationManager = 0;
  }

  gnssExtensionsManager = self->_gnssExtensionsManager;
  if (gnssExtensionsManager)
  {
    [(NIGnssExtensionsManager *)gnssExtensionsManager invalidate];
    v49 = self->_gnssExtensionsManager;
    self->_gnssExtensionsManager = 0;
  }
}

- (void)_logSessionSummary
{
  p_sessionSummary = &self->_sessionSummary;
  v4 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[A1|SES] Start"];

  if (v4)
  {
    v5 = @"[A1|SES] Start";
  }

  else
  {
    v5 = @"[A2|SES] Resum";
  }

  v6 = [(NSMutableDictionary *)*p_sessionSummary objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002461DC;
    v18[3] = &unk_1009A03A0;
    v18[4] = self;
    v19 = v6;
    [&off_1009C4388 enumerateKeysAndObjectsUsingBlock:v18];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002462DC;
  v17[3] = &unk_10099D008;
  v17[4] = self;
  [&off_1009C3C20 enumerateObjectsUsingBlock:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002463B4;
  v16[3] = &unk_10099D008;
  v16[4] = self;
  [&off_1009C3C38 enumerateObjectsUsingBlock:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002464A8;
  v15[3] = &unk_10099D008;
  v15[4] = self;
  [&off_1009C3C50 enumerateObjectsUsingBlock:v15];
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    findingToken = self->_findingToken;
    v10 = [NSString stringWithFormat:@"Summary: %@", self->_sessionSummary];
    v11 = sub_1003464D4("SessionSummary", 1, findingToken, v10);
    *buf = 138543362;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
  }

  v12 = +[NIServerFindingServicePool sharedInstance];
  descriptionInternal = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
  v14 = [NSString stringWithFormat:@"%@\n%@", descriptionInternal, self->_sessionSummary];
  [v12 logSessionSummary:v14];
}

- (void)_submitToUsageAnalyticsAggregator
{
  _useCase = [(NIServerFindingService *)self _useCase];
  if (_useCase == 1)
  {
    v21 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[A1|SES] Start"];
    v11 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E3|RNG] First"];
    [v11 doubleValue];
    v13 = v12;

    if (!v21)
    {
      goto LABEL_12;
    }

    v14 = +[NSDate now];
    [v14 timeIntervalSinceDate:v21];
    v16 = sub_1003463A0(0, v13, v15);

    if (v16)
    {
      v17 = +[NIServerUsageAnalyticsAggregator sharedInstance];
      [v17 recordUWBUsage:5 date:v21];
    }

    v18 = +[NSDate now];
    [v18 timeIntervalSinceDate:v21];
    v20 = sub_1003463A0(1u, v13, v19);

    if (!v20)
    {
      goto LABEL_12;
    }

    v10 = +[NIServerUsageAnalyticsAggregator sharedInstance];
    [v10 recordUWBUsage:6 date:v21];
    goto LABEL_11;
  }

  if (_useCase)
  {
    return;
  }

  v21 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[D4|FND] Press"];
  v4 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[D6|FND]      "];
  [v4 doubleValue];
  v6 = v5;

  if (v21)
  {
    v7 = +[NSDate now];
    [v7 timeIntervalSinceDate:v21];
    v9 = sub_1003462E8(v6, v8);

    if (v9)
    {
      v10 = +[NIServerUsageAnalyticsAggregator sharedInstance];
      [v10 recordUWBUsage:4 date:v21];
LABEL_11:
    }
  }

LABEL_12:
}

- (void)_resetUpdatesEngine
{
  dispatch_assert_queue_V2(self->_queue);
  updatesEngine = self->_updatesEngine;
  if (updatesEngine)
  {
    [(NINearbyUpdatesEngine *)updatesEngine invalidate];
    v4 = self->_updatesEngine;
  }

  else
  {
    v4 = 0;
  }

  self->_updatesEngine = 0;

  analyticsManager = self->_analyticsManager;
  self->_analyticsManager = 0;

  [(NIServerFindingService *)self _removeAlgorithmOutputFlagsFromPeerTrackingState:255];
  v6 = sub_1000054A8();
  v7 = sub_100003AA8(v6[144]);
  v8 = [NIServerAnalyticsManager alloc];
  if (v7)
  {
    v9 = @"com.apple.findmy";
  }

  else
  {
    v9 = @"com.apple.NanoSettingsViewService";
  }

  v10 = [(NIServerAnalyticsManager *)v8 initWithBundleIdentifier:v9];
  v11 = self->_analyticsManager;
  self->_analyticsManager = v10;

  v12 = objc_opt_new();
  algorithmsIdentifier = self->_algorithmsIdentifier;
  self->_algorithmsIdentifier = v12;

  v14 = [NINearbyUpdatesEngine alloc];
  configuration = self->_configuration;
  queue = self->_queue;
  v17 = self->_analyticsManager;
  v18 = sub_10035D02C();
  v19 = *(v18 + 21);
  v24 = *(v18 + 20);
  v25 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = 0;
  v20 = [(NINearbyUpdatesEngine *)v14 initWithConfiguration:configuration queue:queue delegate:self dataSource:self analyticsManager:v17 protobufLogger:&v24 error:&v23];
  v21 = v23;
  v22 = self->_updatesEngine;
  self->_updatesEngine = v20;

  if (v25)
  {
    sub_10000AD84(v25);
  }

  if (v21 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004AFECC();
  }
}

- (void)_startDeviceMotionUpdates
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100246A68;
  v7 = &unk_10099F088;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CMMotionManager *)self->_motionManager startDeviceMotionUpdatesToQueue:self->_motionUpdateOpQueue withHandler:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_startAltitudeUpdates
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100246F1C;
  v7[3] = &unk_10099EF20;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(v7);
  [(CMAltimeter *)self->_altimeterManager startRelativeAltitudeUpdatesToQueue:self->_motionUpdateOpQueue withHandler:v3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10024706C;
  v5[3] = &unk_1009A03C8;
  objc_copyWeak(&v6, &location);
  v4 = objc_retainBlock(v5);
  [(CMAltimeter *)self->_altimeterManager startCompanionRelativeElevationUpdatesToQueue:self->_motionUpdateOpQueue withHandler:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_startDevicePDRUpdates
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100247278;
  v7 = &unk_10099F040;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CMOdometryManager *)self->_pdrManager setOdometryUpdateInterval:0.1, v4, v5, v6, v7];
  [(CMOdometryManager *)self->_pdrManager startOdometryUpdatesToQueue:self->_motionUpdateOpQueue withHandler:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)didLosePeer:(id)peer
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NIDiscoveryToken *)self->_findingToken isEqual:peerCopy])
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1003464D4("LostPeer", 1, self->_findingToken, 0);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", &v7, 0xCu);
    }

    [(NIServerFindingService *)self _updatePeerTrackingDiscoveryState:4];
  }
}

- (void)didStopAdvertisingToPeer:(id)peer
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NIDiscoveryToken *)self->_findingToken isEqual:peerCopy])
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1003464D4("NotifyStopAdv", 1, peerCopy, 0);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", &v7, 0xCu);
    }

    [(NIServerFindingService *)self _updatePeerTrackingAdvertisingState:2];
  }
}

- (void)didUpdateAdvertisement:(id)advertisement toSendOOBToPeer:(id)peer
{
  advertisementCopy = advertisement;
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NIDiscoveryToken *)self->_findingToken isEqual:peerCopy])
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      findingToken = self->_findingToken;
      advertisementCopy = [NSString stringWithFormat:@"SelfAdv: %@", advertisementCopy];
      v11 = sub_1003464D4("UpdatedAdv", 1, findingToken, advertisementCopy);
      *buf = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
    }

    [(NIServerFindingService *)self _generateShareableConfigurationDataForAllListenersUsingAdvertisement:advertisementCopy];
  }
}

- (void)bluetoothDiscoveryFinishedActivating
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1003464D4("DiscActivated", 1, 0, 0);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", &v5, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
}

- (void)bluetoothDiscoveryBecameUnavailable
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1003464D4("DiscUnavailable", 1, 0, 0);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", &v5, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
}

- (void)bluetoothDiscoveryBecameAvailable
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1003464D4("DiscAvailable", 1, 0, 0);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", &v5, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
}

- (void)didRangeWithPeer:(id)peer newSolution:(const void *)solution
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NIDiscoveryToken *)self->_findingToken isEqual:peerCopy])
  {
    v8 = (solution + 32);
    v7 = *(solution + 8);
    if ((v7 - 2) < 5 || v7 == 0)
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004B0290(v8, peerCopy, v10);
      }
    }

    else
    {
      v11 = 0.0;
      if (v7 == 1)
      {
        if ((*(solution + 600) & 1) == 0)
        {
          __assert_rtn("[NIServerFindingService didRangeWithPeer:newSolution:]", "NIServerFindingSession.mm", 1797, "solution.raw_rose_measurement.has_value()");
        }

        v11 = *(solution + 44);
      }

      if (*(solution + 24))
      {
        [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateWithMostRecentRawDistance:v11];
        [(NIServerFindingService *)self _logSuccessfulRange:v11];
        [(NIServerFindingService *)self _updatePeerTrackingRangingState:3];
        self->_cachedSolutionMacAddr = *(solution + 5);
        sub_100224EF8();
        [(NINearbyUpdatesEngine *)self->_updatesEngine acceptRoseSolution:solution];
      }

      else
      {
        sub_100224EF8();
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B031C();
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B0254();
  }
}

- (void)didAttemptRangingWithPeer:(id)peer unsuccessfulSolution:(const void *)solution
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NIDiscoveryToken *)self->_findingToken isEqual:peerCopy])
  {
    if ((*(solution + 600) & 1) == 0)
    {
      __assert_rtn("[NIServerFindingService didAttemptRangingWithPeer:unsuccessfulSolution:]", "NIServerFindingSession.mm", 1836, "solution.raw_rose_measurement.has_value()");
    }

    [(NIServerFindingService *)self _logUnsuccessfulRange];
    if (*(solution + 600) == 1 && *(solution + 72) == 96)
    {
      [(NIServerFindingService *)self _updatePeerTrackingRangingState:2];
    }

    sub_100224EF8();
    [(NINearbyUpdatesEngine *)self->_updatesEngine acceptUnsuccessfulRoseSolution:solution];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B0394();
  }
}

- (void)_logSuccessfulRange:(double)range
{
  v5 = sub_100005288();
  findingToken = self->_findingToken;
  v7 = [NSString stringWithFormat:@"Range: %0.2f m", *&range];
  v8 = sub_1003464D4("RangeSuccess", 1, findingToken, v7);

  v9 = qword_1009F9820;
  if (v5 - self->_lastLogMachContTime <= 5.0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B03D0();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
    }

    self->_lastLogMachContTime = v5;
  }

  v10 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E1|RNG] Good "];
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 unsignedIntegerValue] + 1);
  [(NSMutableDictionary *)self->_sessionSummary setObject:v11 forKeyedSubscript:@"[E1|RNG] Good "];

  v12 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E3|RNG] First"];
  LODWORD(v10) = v12 == 0;

  if (v10)
  {
    v13 = [NSNumber numberWithDouble:range];
    [(NSMutableDictionary *)self->_sessionSummary setObject:v13 forKeyedSubscript:@"[E3|RNG] First"];

    v14 = [NSNumber numberWithDouble:range];
    [(NSMutableDictionary *)self->_sessionSummary setObject:v14 forKeyedSubscript:@"[E5|RNG] Max  "];

    v15 = [NSNumber numberWithDouble:range];
    [(NSMutableDictionary *)self->_sessionSummary setObject:v15 forKeyedSubscript:@"[E6|RNG] Min  "];
  }

  v16 = [NSNumber numberWithDouble:range];
  [(NSMutableDictionary *)self->_sessionSummary setObject:v16 forKeyedSubscript:@"[E4|RNG] Last "];

  v17 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E5|RNG] Max  "];
  [v17 doubleValue];
  v19 = v18 < range;

  if (v19)
  {
    v20 = [NSNumber numberWithDouble:range];
    [(NSMutableDictionary *)self->_sessionSummary setObject:v20 forKeyedSubscript:@"[E5|RNG] Max  "];
  }

  v21 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E6|RNG] Min  "];
  [v21 doubleValue];
  v23 = v22 > range;

  if (v23)
  {
    v24 = [NSNumber numberWithDouble:range];
    [(NSMutableDictionary *)self->_sessionSummary setObject:v24 forKeyedSubscript:@"[E6|RNG] Min  "];
  }
}

- (void)_logUnsuccessfulRange
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = sub_1003464D4("RangeFailure", 1, self->_findingToken, 0);
    sub_1004B0440(v4, v7, v3);
  }

  v5 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E2|RNG] Miss "];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 unsignedIntegerValue] + 1);
  [(NSMutableDictionary *)self->_sessionSummary setObject:v6 forKeyedSubscript:@"[E2|RNG] Miss "];
}

- (void)didStopRangingWithPeer:(id)peer
{
  peerCopy = peer;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1003464D4("NotifyStopRange", 1, peerCopy, 0);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NIServerFindingService *)self _handleRangingTerminatedCallbackForPeer:peerCopy];
}

- (void)didRangingAuthorizationFailForPeer:(id)peer
{
  peerCopy = peer;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1003464D4("NotifyAuthFail", 1, peerCopy, 0);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NIServerFindingService *)self _handleRangingTerminatedCallbackForPeer:peerCopy];
}

- (void)_handleRangingTerminatedCallbackForPeer:(id)peer
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_queue);
  if ([(NIDiscoveryToken *)self->_findingToken isEqual:peerCopy])
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 doubleForKey:@"FindingServiceRangingTriggerTimeLimitOverrideSeconds"];
    v7 = v6;

    if (v7 <= 0.0)
    {
      v7 = 1200.0;
    }

    v8 = sub_100005288() - self->_serviceStartTimeSeconds;
    if (v8 > v7)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218240;
        v14 = v8;
        v15 = 2048;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#find-ses,Ranging terminated and too much time elapsed (%0.1f s > %0.1f s), stop ranging triggers", &v13, 0x16u);
      }

      v10 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider setPeersEligibleForDiscovery:0 requestScan:0];
      if (v10 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004B04D4();
      }

      [(NIServerFindingService *)self _updatePeerTrackingDiscoveryState:4];
      v11 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider stopAdvertisingToPeer:peerCopy];
      if (v11 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004B053C();
      }

      [(NIServerFindingService *)self _updatePeerTrackingAdvertisingState:2];
    }

    v12 = [(NIServerFindingRangingProvider *)self->_rangingProvider stopRangingWithPeer:peerCopy];
    if (v12 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004B05A4();
    }

    [(NIServerFindingService *)self _updatePeerTrackingRangingState:4];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B0498();
  }
}

- (void)didReceiveRangingDataForPeer:(id)peer algorithmAidingData:(const void *)data signallingData:(const void *)signallingData
{
  [(NINearbyUpdatesEngine *)self->_updatesEngine acceptPeerData:data fromPeer:peer];
  updatesEngine = self->_updatesEngine;
  if (updatesEngine)
  {
    v8 = *(signallingData + 8);

    [(NINearbyUpdatesEngine *)updatesEngine acceptPeerDeviceType:v8];
  }
}

- (void)_addAlgorithmOutputFlagsToPeerTrackingState:(unsigned __int8)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NIServerFindingPeerTracking *)self->_peerTracking copy];
  [v5 setAlgorithmOutputFlags:{objc_msgSend(v5, "algorithmOutputFlags") | stateCopy}];
  [(NIServerFindingService *)self _updatePeerTrackingOverallState:v5];
}

- (void)_removeAlgorithmOutputFlagsFromPeerTrackingState:(unsigned __int8)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NIServerFindingPeerTracking *)self->_peerTracking copy];
  [v5 setAlgorithmOutputFlags:{objc_msgSend(v5, "algorithmOutputFlags") & ~stateCopy}];
  [(NIServerFindingService *)self _updatePeerTrackingOverallState:v5];
}

- (void)_updatePeerTrackingOOBRefreshPeriod:(id)period
{
  periodCopy = period;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(NIServerFindingPeerTracking *)self->_peerTracking copy];
  [v4 setOobRefreshPeriodSeconds:periodCopy];
  [(NIServerFindingService *)self _updatePeerTrackingOverallState:v4];
}

- (void)_updatePeerTrackingOverallState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [stateCopy copy];
  v6 = [(NIServerFindingPeerTracking *)self->_peerTracking copy];
  v7 = v6;
  if (!v6 || !v5)
  {
    goto LABEL_104;
  }

  if ([v6 rangingState] == 3 && (objc_msgSend(v5, "rangingState") == 1 || objc_msgSend(v5, "rangingState") == 2))
  {
    [v5 setRangingState:{objc_msgSend(v7, "rangingState")}];
  }

  if ([v7 rangingState] == 2 && objc_msgSend(v5, "rangingState") == 1)
  {
    [v5 setRangingState:{objc_msgSend(v7, "rangingState")}];
  }

  if (![v7 discoveryState] && objc_msgSend(v5, "discoveryState"))
  {
    if ([v5 discoveryState] == 2)
    {
      v8 = 1;
LABEL_16:
      [(NIServerAnalyticsManager *)self->_analyticsManager updateWithAcquisitionReason:v8];
      goto LABEL_17;
    }

    if ([v5 discoveryState] == 1)
    {
      v8 = 3;
      goto LABEL_16;
    }
  }

LABEL_17:
  if ([v7 discoveryState] == 3 && (objc_msgSend(v5, "discoveryState") == 1 || objc_msgSend(v5, "discoveryState") == 2))
  {
    [v5 setDiscoveryState:{objc_msgSend(v7, "discoveryState")}];
  }

  if ([v7 discoveryState] == 1 && objc_msgSend(v5, "discoveryState") == 2 || objc_msgSend(v7, "discoveryState") == 2 && objc_msgSend(v5, "discoveryState") == 1)
  {
    [v5 setDiscoveryState:3];
  }

  v9 = [v5 hasReceivedRangingData] && (objc_msgSend(v5, "algorithmOutputFlags") & 1) != 0;
  [v5 setTellClientAboutPeer:v9];
  if (([v7 isEqual:v5] & 1) == 0)
  {
    objc_storeStrong(&self->_peerTracking, v5);
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      findingToken = self->_findingToken;
      v12 = [NSString stringWithFormat:@"Change: %@ -> %@", v7, v5];
      v13 = sub_1003464D4("StateChange", 1, findingToken, v12);
      *buf = 138543362;
      v92 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
    }

    v14 = +[NIServerFindingServicePool sharedInstance];
    descriptionInternal = [(NIDiscoveryToken *)self->_findingToken descriptionInternal];
    v16 = [NSString stringWithFormat:@"%@: %@", descriptionInternal, v5];
    [v14 logSessionEvent:v16];

    if (!self->_findingToken)
    {
      goto LABEL_83;
    }

    if (([v7 hasReceivedRangingData] & 1) == 0 && objc_msgSend(v5, "hasReceivedRangingData"))
    {
      [(NINearbyUpdatesEngine *)self->_updatesEngine acceptDiscoveryEventForPeer:self->_findingToken];
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100249F10;
      block[3] = &unk_10098BD28;
      block[4] = self;
      dispatch_async(queue, block);
    }

    if (!self->_findingToken)
    {
      goto LABEL_83;
    }

    if ([v5 advertisingState] == 1)
    {
      oobRefreshPeriodSeconds = [v5 oobRefreshPeriodSeconds];
      v19 = oobRefreshPeriodSeconds == 0;

      if (!v19)
      {
        oobRefreshPeriodSeconds2 = [v7 oobRefreshPeriodSeconds];
        v21 = oobRefreshPeriodSeconds2 == 0;

        if (v21)
        {
          v28 = qword_1009F9820;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v36 = self->_findingToken;
            oobRefreshPeriodSeconds3 = [v5 oobRefreshPeriodSeconds];
            [oobRefreshPeriodSeconds3 doubleValue];
            v39 = [NSString stringWithFormat:@"Configure. Period: [Default] -> %0.1f s", v38];
            v40 = sub_1003464D4("OOBRefresh", 1, v36, v39);
            *buf = 138412290;
            v92 = v40;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#find-ses,%@", buf, 0xCu);
          }
        }

        else
        {
          oobRefreshPeriodSeconds4 = [v5 oobRefreshPeriodSeconds];
          [oobRefreshPeriodSeconds4 doubleValue];
          v24 = v23;
          oobRefreshPeriodSeconds5 = [v7 oobRefreshPeriodSeconds];
          [oobRefreshPeriodSeconds5 doubleValue];
          v27 = v24 != v26;

          if (!v27)
          {
            goto LABEL_47;
          }

          v28 = qword_1009F9820;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = self->_findingToken;
            oobRefreshPeriodSeconds6 = [v7 oobRefreshPeriodSeconds];
            [oobRefreshPeriodSeconds6 doubleValue];
            v31 = v30;
            oobRefreshPeriodSeconds7 = [v5 oobRefreshPeriodSeconds];
            [oobRefreshPeriodSeconds7 doubleValue];
            v34 = [NSString stringWithFormat:@"Reconfigure. Period: %0.1f s -> %0.1f s", v31, v33];
            v35 = sub_1003464D4("OOBRefresh", 1, v29, v34);
            *buf = 138412290;
            v92 = v35;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#find-ses,%@", buf, 0xCu);
          }
        }

        [(NIServerFindingService *)self _configureAdvertisementOOBRefreshTimer];
      }
    }

LABEL_47:
    if (self->_findingToken)
    {
      if (([v7 tellClientAboutPeer] & 1) == 0 && objc_msgSend(v5, "tellClientAboutPeer"))
      {
        v41 = qword_1009F9820;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = sub_1003464D4("NotifiedClient", 1, self->_findingToken, @"Sent: didDiscoverNearbyObject");
          *buf = 138543362;
          v92 = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
        }

        v43 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[D1|FND] Show "];
        v44 = v43 == 0;

        if (v44)
        {
          v45 = +[NSDate now];
          [(NSMutableDictionary *)self->_sessionSummary setObject:v45 forKeyedSubscript:@"[D1|FND] Show "];
        }

        v46 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[D3|FND]      "];
        v47 = v46 == 0;

        if (v47)
        {
          v48 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E4|RNG] Last "];
          v49 = v48 == 0;

          if (!v49)
          {
            v50 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E4|RNG] Last "];
            [(NSMutableDictionary *)self->_sessionSummary setObject:v50 forKeyedSubscript:@"[D3|FND]      "];
          }
        }

        v51 = [[NINearbyObject alloc] initWithToken:self->_findingToken];
        objectEnumerator = [(NSMapTable *)self->_findingClients objectEnumerator];
        v53 = 0;
        while (1)
        {
          nextObject = [objectEnumerator nextObject];

          if (!nextObject)
          {
            break;
          }

          v53 = nextObject;
          [nextObject serviceDidDiscoverNearbyObject:v51];
        }

        [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateDistanceAnalytics:1];
        [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateTimeAnalytics:1 currentTime:sub_100005288()];
      }

      if (self->_findingToken)
      {
        if ([v7 rangingState] != 3 && objc_msgSend(v5, "rangingState") == 3)
        {
          [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateTimeAnalytics:0 currentTime:sub_100005288()];
        }

        if (self->_findingToken)
        {
          if (([v7 clientWantsUpdates] & 1) == 0 && objc_msgSend(v5, "clientWantsUpdates"))
          {
            [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateDistanceAnalytics:2];
            [(DetailsViewAnalytics *)self->_detailsViewAnalytics updateTimeAnalytics:2 currentTime:sub_100005288()];
          }

          if (self->_findingToken && [v7 tellClientAboutPeer] && (objc_msgSend(v5, "tellClientAboutPeer") & 1) == 0)
          {
            v55 = qword_1009F9820;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v56 = sub_1003464D4("NotifiedClient", 1, self->_findingToken, @"Sent: didRemoveNearbyObject");
              *buf = 138543362;
              v92 = v56;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", buf, 0xCu);
            }

            v57 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[D7|FND] Revok"];
            v58 = v57 == 0;

            if (v58)
            {
              v59 = +[NSDate now];
              [(NSMutableDictionary *)self->_sessionSummary setObject:v59 forKeyedSubscript:@"[D7|FND] Revok"];
            }

            v60 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[D9|FND]      "];
            v61 = v60 == 0;

            if (v61)
            {
              v62 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E4|RNG] Last "];
              v63 = v62 == 0;

              if (!v63)
              {
                v64 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E4|RNG] Last "];
                [(NSMutableDictionary *)self->_sessionSummary setObject:v64 forKeyedSubscript:@"[D9|FND]      "];
              }
            }

            v65 = [[NINearbyObject alloc] initWithToken:self->_findingToken];
            objectEnumerator2 = [(NSMapTable *)self->_findingClients objectEnumerator];
            v67 = 0;
            while (1)
            {
              nextObject2 = [objectEnumerator2 nextObject];

              if (!nextObject2)
              {
                break;
              }

              v67 = nextObject2;
              [nextObject2 serviceDidRemoveNearbyObject:v65];
            }
          }
        }
      }
    }

LABEL_83:
    if ([v5 clientWantsUpdates])
    {
      v69 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[D4|FND] Press"];
      v70 = v69 == 0;

      if (v70)
      {
        v71 = +[NSDate now];
        [(NSMutableDictionary *)self->_sessionSummary setObject:v71 forKeyedSubscript:@"[D4|FND] Press"];
      }

      v72 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[D6|FND]      "];
      v73 = v72 == 0;

      if (v73)
      {
        v74 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E4|RNG] Last "];
        v75 = v74 == 0;

        if (!v75)
        {
          v76 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[E4|RNG] Last "];
          [(NSMutableDictionary *)self->_sessionSummary setObject:v76 forKeyedSubscript:@"[D6|FND]      "];
        }
      }
    }

    if ([v5 discoveryState] == 2 || objc_msgSend(v5, "discoveryState") == 3)
    {
      v77 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[B1|TRG] BT   "];
      v78 = v77 == 0;

      if (v78)
      {
        v79 = +[NSDate now];
        [(NSMutableDictionary *)self->_sessionSummary setObject:v79 forKeyedSubscript:@"[B1|TRG] BT   "];
      }
    }

    if ([v5 discoveryState] == 1 || objc_msgSend(v5, "discoveryState") == 3)
    {
      v80 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[B3|TRG] OOB  "];
      v81 = v80 == 0;

      if (v81)
      {
        v82 = +[NSDate now];
        [(NSMutableDictionary *)self->_sessionSummary setObject:v82 forKeyedSubscript:@"[B3|TRG] OOB  "];
      }
    }

    if ([v5 rangingState] == 3)
    {
      v83 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[C3|RNG] Meas "];
      v84 = v83 == 0;

      if (v84)
      {
        v85 = +[NSDate now];
        [(NSMutableDictionary *)self->_sessionSummary setObject:v85 forKeyedSubscript:@"[C3|RNG] Meas "];
      }
    }

    if ([v7 rangingState] == 1 && objc_msgSend(v5, "rangingState") == 2)
    {
      v86 = [(NSMutableDictionary *)self->_sessionSummary objectForKeyedSubscript:@"[C1|RNG] Poll "];
      v87 = v86 == 0;

      if (v87)
      {
        v88 = +[NSDate now];
        [(NSMutableDictionary *)self->_sessionSummary setObject:v88 forKeyedSubscript:@"[C1|RNG] Poll "];
      }
    }
  }

LABEL_104:
}

- (void)_startOrUpdateAdvertising
{
  v3 = [NIServerFindingAdvertisement alloc];
  advertisingAddress = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider advertisingAddress];
  v21 = advertisingAddress;
  v22 = WORD2(advertisingAddress);
  v5 = [(NIServerFindingAdvertisement *)v3 initForFinder:1 address:&v21];
  [v5 setCanRange:{-[NIServerFindingService _sessionConfiguredToRange](self, "_sessionConfiguredToRange")}];
  [v5 setUseCase:{-[NIServerFindingService _useCase](self, "_useCase")}];
  rangingProvider = self->_rangingProvider;
  if (rangingProvider)
  {
    [(NIServerFindingRangingProvider *)rangingProvider supportedTechnologies];
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  [v5 setSupportedTechnologies:&__p];
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  [v5 setProtocolVersion:2];
  v7 = sub_10035D02C();
  v8 = *(v7 + 406);
  v9 = *(v7 + 407);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100329F3C(v8);
  [v5 setNarrowBandMask:sub_100428064(v17)];
  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (v9)
  {
    sub_10000AD84(v9);
  }

  v10 = sub_10035D02C();
  v11 = *(v10 + 406);
  v12 = *(v10 + 407);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_100329F8C(v11);
  [v5 setMmsNumFragmentsOOB:sub_1004285B0(v13)];
  if (v12)
  {
    sub_10000AD84(v12);
  }

  v14 = [NSNumber numberWithBool:[(NIFindingConfiguration *)self->_configuration preferredDiscoveryPriority]== 1];
  [v5 setNbUwbAcquisitionUseLowPriorityDutyCycle:v14];

  v15 = [NSNumber numberWithDouble:sub_100345FD4([(NIServerFindingService *)self _useCase], 0)];
  [v5 setOobRefreshPeriodSeconds:v15];

  [(NIServerFindingService *)self _updatePeerTrackingAdvertisingState:1];
  v16 = [(NIServerFindingDiscoveryProvider *)self->_discoveryProvider startAdvertisingToPeer:self->_findingToken advertisement:v5 timeout:0.0];
  [(NIServerFindingService *)self _configureAdvertisementOOBRefreshTimer];
}

- (void)_configureAdvertisementOOBRefreshTimer
{
  dispatch_assert_queue_V2(self->_queue);
  oobRefreshPeriodSeconds = [(NIServerFindingPeerTracking *)self->_peerTracking oobRefreshPeriodSeconds];
  [oobRefreshPeriodSeconds doubleValue];
  if (v4 == 0.0)
  {
    v7 = sub_100345FD4([(NIServerFindingService *)self _useCase], 1);
  }

  else
  {
    oobRefreshPeriodSeconds2 = [(NIServerFindingPeerTracking *)self->_peerTracking oobRefreshPeriodSeconds];
    [oobRefreshPeriodSeconds2 doubleValue];
    v7 = v6;
  }

  if (v7 > 0.0)
  {
    advertisingOOBRefreshTimer = self->_advertisingOOBRefreshTimer;
    if (advertisingOOBRefreshTimer)
    {
      dispatch_source_cancel(advertisingOOBRefreshTimer);
      v9 = self->_advertisingOOBRefreshTimer;
      self->_advertisingOOBRefreshTimer = 0;
    }

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    v11 = self->_advertisingOOBRefreshTimer;
    self->_advertisingOOBRefreshTimer = v10;

    v12 = self->_advertisingOOBRefreshTimer;
    v13 = dispatch_time(0, (v7 * 1000000000.0));
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    objc_initWeak(&location, self);
    v14 = self->_advertisingOOBRefreshTimer;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10024A408;
    v15[3] = &unk_10098AB18;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v14, v15);
    dispatch_resume(self->_advertisingOOBRefreshTimer);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)_generateShareableConfigurationDataForAllListenersUsingAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v5 = advertisementCopy;
  if (self->_findingToken)
  {
    byteRepresentation = [advertisementCopy byteRepresentation];
    v7 = [[NINearbyObject alloc] initWithToken:self->_findingToken];
    objectEnumerator = [(NSMapTable *)self->_findingClients objectEnumerator];
    v9 = 0;
    while (1)
    {
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        break;
      }

      v9 = nextObject;
      [nextObject serviceDidGenerateShareableConfigurationData:byteRepresentation forObject:v7];
    }

    v11 = +[NIServerFindingServiceObserverRelay sharedInstance];
    findingToken = self->_findingToken;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10024A748;
    v15[3] = &unk_1009A03F0;
    v13 = byteRepresentation;
    v16 = v13;
    v14 = v7;
    v17 = v14;
    [v11 relayToObserversForToken:findingToken blockToRelay:v15];
  }
}

- (void)_tryToStartRangingWithPeerAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  selectedTechnology = [advertisementCopy selectedTechnology];
  canRange = [advertisementCopy canRange];
  _sessionConfiguredToRange = [(NIServerFindingService *)self _sessionConfiguredToRange];
  v8 = [(NIServerFindingRangingProvider *)self->_rangingProvider canRangeWithPeer:self->_findingToken technology:selectedTechnology];
  rangingProvider = self->_rangingProvider;
  if (rangingProvider)
  {
    [(NIServerFindingRangingProvider *)rangingProvider supportedTechnologies];
  }

  else
  {
    memset(__p, 0, sizeof(__p));
  }

  v10 = sub_100346F20(__p, selectedTechnology);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (canRange & _sessionConfiguredToRange & v10 & v8)
  {
    [(NIServerFindingService *)self _updatePeerTrackingRangingState:1];
    if ([advertisementCopy narrowBandMask])
    {
      narrowBandMask = [advertisementCopy narrowBandMask];
    }

    else
    {
      LOBYTE(__p[0]) = 1;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      sub_10019ECC8(&v25, __p, __p + 1, 1);
      narrowBandMask = sub_100428064(&v25);
      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }
    }

    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = narrowBandMask;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#find-ses,Negotiated nb_mask %hu", __p, 8u);
    }

    mmsNumFragmentsOOB = [advertisementCopy mmsNumFragmentsOOB];
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = mmsNumFragmentsOOB;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#find-ses,Negotiated mms_num_fragments_oob %hu", __p, 8u);
    }

    nbUwbAcquisitionChannelIdx = [advertisementCopy nbUwbAcquisitionChannelIdx];
    v24[0] = [nbUwbAcquisitionChannelIdx intValue];
    v24[1] = narrowBandMask;
    v24[2] = mmsNumFragmentsOOB;
    if ([(NIFindingConfiguration *)self->_configuration preferredDiscoveryPriority]== 1)
    {
      v18 = ![(NIServerFindingPeerTracking *)self->_peerTracking hasReceivedRangingData];
    }

    else
    {
      v18 = 0;
    }

    v24[3] = v18;

    v19 = [(NIServerFindingRangingProvider *)self->_rangingProvider startRangingWithPeer:self->_findingToken technology:selectedTechnology peerAdvertisement:advertisementCopy OOBRangingParameters:v24];
    if (v19)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B060C();
      }

      [(NIServerFindingService *)self _updatePeerTrackingRangingState:4];
    }

    else
    {
      if ([(NIFindingConfiguration *)self->_configuration preferredUpdateRate]== 3)
      {
        v20 = sub_1000054A8();
        v21 = sub_100003AA8(v20[144]);
        v22 = self->_rangingProvider;
        __p[0] = 0x100000000000000;
      }

      else
      {
        v23 = sub_1000054A8();
        v21 = sub_100003AA8(v23[144]);
        v22 = self->_rangingProvider;
        __p[0] = 0x101000000000000;
      }

      LOBYTE(__p[1]) = v21;
      [(NIServerFindingRangingProvider *)v22 setSignallingData:__p forPeer:self->_findingToken];
    }
  }

  else
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_100346EF4(selectedTechnology);
      LODWORD(__p[0]) = 136316162;
      *(__p + 4) = v13;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = canRange;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = _sessionConfiguredToRange;
      v29 = 1024;
      v30 = v8;
      v31 = 1024;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#find-ses,Not attempting to range (selectedTech: %s). peerDeviceCanRange: %d. sessionConfiguredToRange: %d. localDeviceCanRange: %d. localDeviceSupportsTech: %d.", __p, 0x24u);
    }
  }
}

- (void)updatesEngine:(id)engine didUpdateNearbyObjects:(id)objects
{
  engineCopy = engine;
  objectsCopy = objects;
  if (self->_updatesEngine != engineCopy)
  {
    __assert_rtn("[NIServerFindingService updatesEngine:didUpdateNearbyObjects:]", "NIServerFindingSession.mm", 2398, "engine == _updatesEngine");
  }

  dispatch_assert_queue_V2(self->_queue);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024AD58;
  v13[3] = &unk_1009A0418;
  v13[4] = self;
  [objectsCopy enumerateObjectsUsingBlock:v13];
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"FindingGateObjectUpdatesOnDiscovery"];

  if (!v9 || [(NIServerFindingPeerTracking *)self->_peerTracking discoveryState]== 2 || [(NIServerFindingPeerTracking *)self->_peerTracking discoveryState]== 3)
  {
    objectEnumerator = [(NSMapTable *)self->_findingClients objectEnumerator];
    v11 = 0;
    while (1)
    {
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        break;
      }

      v11 = nextObject;
      [nextObject serviceDidUpdateNearbyObjects:objectsCopy];
    }
  }
}

- (void)updatesEngine:(id)engine didUpdateAlgorithmConvergenceState:(id)state forObject:(id)object
{
  engineCopy = engine;
  stateCopy = state;
  objectCopy = object;
  if (self->_updatesEngine != engineCopy)
  {
    __assert_rtn("[NIServerFindingService updatesEngine:didUpdateAlgorithmConvergenceState:forObject:]", "NIServerFindingSession.mm", 2429, "engine == _updatesEngine");
  }

  dispatch_assert_queue_V2(self->_queue);
  objectEnumerator = [(NSMapTable *)self->_findingClients objectEnumerator];
  v11 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v11 = nextObject;
    [nextObject serviceDidUpdateAlgorithmConvergenceState:stateCopy forObject:objectCopy];
  }
}

- (optional<unsigned)identifierFromDiscoveryToken:(id)token
{
  cachedSolutionMacAddr = self->_cachedSolutionMacAddr;
  v4 = 1;
  result.__engaged_ = v4;
  result.var0 = cachedSolutionMacAddr;
  return result;
}

- (id)objectFromIdentifier:(unint64_t)identifier
{
  if (self->_findingToken)
  {
    v4 = [[NINearbyObject alloc] initWithToken:self->_findingToken];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v1;
  v8 = v2;
  v5 = *(v3 + 24);
  if (!v5)
  {
    __assert_rtn("[NIServerFindingService uniqueIdentifierForEngine:]", "NIServerFindingSession.mm", 2458, "_algorithmsIdentifier != nil");
  }

  uUIDString = [v5 UUIDString];
  sub_100004A08(retstr, [uUIDString UTF8String]);

  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  dispatch_assert_queue_V2(self->_queue);
  if (locationsCopy)
  {
    lastObject = [locationsCopy lastObject];
    v7 = qword_1009F9820;
    if (lastObject)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004B067C();
      }

      [lastObject coordinate];
      v31 = v8;
      [lastObject coordinate];
      v30 = v9;
      timestamp = [lastObject timestamp];
      [timestamp timeIntervalSinceReferenceDate];
      v29 = v11;
      [lastObject course];
      v13 = v12;
      [lastObject courseAccuracy];
      v15 = v14;
      [lastObject speed];
      v17 = v16;
      [lastObject speedAccuracy];
      v19 = v18;
      [lastObject horizontalAccuracy];
      v21 = v20;
      [lastObject verticalAccuracy];
      v23 = v22;
      [lastObject altitude];
      v25 = v24;
      [lastObject ellipsoidalAltitude];
      v27 = v26;
      floor = [lastObject floor];
      *buf = v31;
      v33 = v30;
      v34 = v29;
      v35 = v13;
      v36 = v15;
      v37 = v17;
      v38 = v19;
      v39 = v21;
      v40 = v23;
      v41 = v25;
      v42 = v27;
      level = [floor level];
      type = [lastObject type];
      signalEnvironmentType = [lastObject signalEnvironmentType];

      [(NINearbyUpdatesEngine *)self->_updatesEngine acceptSelfLocationData:buf];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-ses,current location not updated", buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004B06EC();
  }
}

- (void)locationManager:(id)manager didUpdateHeading:(id)heading
{
  headingCopy = heading;
  dispatch_assert_queue_V2(self->_queue);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B072C();
    if (headingCopy)
    {
      goto LABEL_3;
    }
  }

  else if (headingCopy)
  {
LABEL_3:
    [headingCopy magneticHeading];
    v7 = v6;
    [headingCopy trueHeading];
    v9 = v8;
    [headingCopy headingAccuracy];
    v11 = v10;
    timestamp = [headingCopy timestamp];
    [timestamp timeIntervalSinceReferenceDate];
    v14[0] = v7;
    v14[1] = v9;
    v14[2] = v11;
    v14[3] = v13;

    [(NINearbyUpdatesEngine *)self->_updatesEngine acceptHeadingData:v14];
    goto LABEL_7;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B079C();
  }

LABEL_7:
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  v7 = qword_1009F9820;
  if (code)
  {
    if (code == 1)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004B07D8();
      }
    }

    else if (code == 3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0814();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004B0850();
      }

      [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
      [(CLLocationManager *)self->_locationManager startUpdatingLocation];
      [(CLLocationManager *)self->_locationManager stopUpdatingHeading];
      [(CLLocationManager *)self->_locationManager startUpdatingHeading];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-ses,location is unknown", v8, 2u);
  }
}

- (void)DataCallback:(id)callback
{
  updatesEngine = self->_updatesEngine;
  [NIGnssExtensionsManager getGnssSatelliteDataVecFromDict:callback];
  [(NINearbyUpdatesEngine *)updatesEngine acceptGnssSatelliteData:__p];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

@end