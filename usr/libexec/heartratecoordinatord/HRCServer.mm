@interface HRCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (HRCServer)init;
- (void)_classifyArbitratedHeartRateSample:(id)sample;
- (void)_classifyUnarbitratedHeartRateSample:(id)sample;
- (void)_handleBtleSourceListUpdate:(id)update;
- (void)_handleHeartRateForAlgorithms:(id)algorithms;
- (void)_handleHeartRateForClients:(id)clients;
- (void)_handleHeartRateForPublishing:(id)publishing;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)activeSourceDidChange:(unint64_t)change;
- (void)handleBluetoothLeSourceUpdate:(id)update;
- (void)handleDownSelectedHeartRate:(id)rate;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)handleSysdiagnoseTrigger;
- (void)handleUserFitNotification:(id)notification;
- (void)heartRateSampleWasCollected:(id)collected;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setupUserOverrideSources;
- (void)updateCollatedStreamingModeRequest:(unint64_t)request;
- (void)updateWorkoutActivityType:(unint64_t)type withLocationType:(int64_t)locationType;
@end

@implementation HRCServer

- (HRCServer)init
{
  v3 = sub_1000012D8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRCServer init", buf, 2u);
  }

  v45.receiver = self;
  v45.super_class = HRCServer;
  v4 = [(HRCServer *)&v45 init];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.heartratecoordinatord.queue.primary", v5);
  primaryQueue = v4->_primaryQueue;
  v4->_primaryQueue = v6;

  v4->_internalUIVariant = os_variant_has_internal_ui();
  v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.HeartRateCoordinator"];
  heartRateCoordinatorDefaults = v4->_heartRateCoordinatorDefaults;
  v4->_heartRateCoordinatorDefaults = v8;

  v10 = [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults valueForKey:@"forceFitNotification"];
  v11 = v10;
  if (v10)
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v13 = [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults valueForKey:@"fitNotificationThreshold"];

  if (v13)
  {
    [v13 floatValue];
    v14 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults valueForKey:@"fitNotificationMinDuration"];

  if (v15)
  {
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 unsignedIntegerValue]);
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults valueForKey:@"fitNotificationMinHrCount"];

  if (v17)
  {
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 unsignedIntegerValue]);
  }

  else
  {
    v18 = 0;
  }

  v4->_notificationThresholdOverride = (v14 | v18) != 0;
  v19 = objc_opt_new();
  analyticsReporter = v4->_analyticsReporter;
  v4->_analyticsReporter = v19;

  v21 = [[HRCImproveHealthAndActivityMonitor alloc] initWithAnalyticsReporter:v4->_analyticsReporter];
  improveHealthAndActivityMonitor = v4->_improveHealthAndActivityMonitor;
  v4->_improveHealthAndActivityMonitor = v21;

  v23 = [[HRCClientCollator alloc] initWithDelegate:v4 onQueue:v4->_primaryQueue];
  clientCollator = v4->_clientCollator;
  v4->_clientCollator = v23;

  v25 = [[HRCBluetoothLESourceObserverCollator alloc] initWithDelegate:v4 onQueue:v4->_primaryQueue];
  observerCollator = v4->_observerCollator;
  v4->_observerCollator = v25;

  v27 = +[NSFileManager defaultManager];
  v28 = [v27 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.heartratecoordinatord"];

  v29 = [[HRCEventLogger alloc] initWithRootDirectory:v28 isInternalVariant:v4->_internalUIVariant];
  logger = v4->_logger;
  v4->_logger = v29;

  v31 = [[HRCArbiterAlgorithms alloc] initWithDelegate:v4 onQueue:v4->_primaryQueue forceFitNotification:bOOLValue fitNotificationThreshold:v14 fitNotificationMinDuration:v16 fitNotificationMinHrCount:v18 analyticsReporter:v4->_analyticsReporter];
  arbiter = v4->_arbiter;
  v4->_arbiter = v31;

  v33 = [[HRCSourceController alloc] initWithDelegate:v4 onQueue:v4->_primaryQueue analyticsReporter:v4->_analyticsReporter internalVariant:v4->_internalUIVariant];
  sourceController = v4->_sourceController;
  v4->_sourceController = v33;

  v35 = [[HRCPublisher alloc] initWithAnalyticsReporter:v4->_analyticsReporter isInternalVariant:v4->_internalUIVariant];
  hrPublisher = v4->_hrPublisher;
  v4->_hrPublisher = v35;

  v37 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.heartratecoordinatord.requestor"];
  hrClientListener = v4->_hrClientListener;
  v4->_hrClientListener = v37;

  [(NSXPCListener *)v4->_hrClientListener setDelegate:v4];
  [(NSXPCListener *)v4->_hrClientListener activate];
  v39 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.heartratecoordinatord.observer"];
  bluetoothLeSourceListener = v4->_bluetoothLeSourceListener;
  v4->_bluetoothLeSourceListener = v39;

  [(NSXPCListener *)v4->_bluetoothLeSourceListener setDelegate:v4];
  [(NSXPCListener *)v4->_bluetoothLeSourceListener activate];
  [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults addObserver:v4 forKeyPath:@"hrSourceOverride" options:5 context:&v4->_hrSourceOverridePreference];
  [(NSUserDefaults *)v4->_heartRateCoordinatorDefaults addObserver:v4 forKeyPath:@"hrLoggingPreference" options:5 context:&v4->_hrLoggingPreference];
  objc_initWeak(buf, v4);
  v41 = v4->_primaryQueue;
  objc_copyWeak(&v43, buf);
  os_state_add_handler();
  objc_destroyWeak(&v43);
  objc_destroyWeak(buf);

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  v11 = [objectCopy valueForKeyPath:pathCopy];
  v12 = v11;
  p_hrSourceOverridePreference = &self->_hrSourceOverridePreference;
  if (&self->_hrSourceOverridePreference == context)
  {
    intValue = [v11 intValue];
    if (intValue >= 3)
    {
      v18 = sub_1000012D8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100026B94();
      }
    }

    else if (*p_hrSourceOverridePreference != intValue)
    {
      *p_hrSourceOverridePreference = intValue;
      v15 = sub_1000012D8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *p_hrSourceOverridePreference;
        *buf = 67109120;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "hrSourceOverride : %d", buf, 8u);
      }

      primaryQueue = [(HRCServer *)self primaryQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000024B0;
      block[3] = &unk_1000406C0;
      block[4] = self;
      dispatch_async(primaryQueue, block);
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_1000012D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "received connection request from frontend client with pid : %d", &buf, 8u);
  }

  hrClientListener = [(HRCServer *)self hrClientListener];
  v10 = hrClientListener;
  if (hrClientListener == listenerCopy)
  {

    goto LABEL_9;
  }

  bluetoothLeSourceListener = [(HRCServer *)self bluetoothLeSourceListener];
  v12 = bluetoothLeSourceListener == listenerCopy;

  if (v12)
  {
LABEL_9:
    v14 = [connectionCopy valueForEntitlement:@"com.apple.heartratecoordinator.spi.heartrate"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bOOLValue = [v14 BOOLValue];

      if (bOOLValue)
      {
        objc_initWeak(&buf, self);
        hrClientListener2 = [(HRCServer *)self hrClientListener];
        v17 = hrClientListener2 == listenerCopy;

        if (v17)
        {
          v34 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndClient];
          [connectionCopy setRemoteObjectInterface:v34];

          v35 = [HRCClient alloc];
          clientCollator = [(HRCServer *)self clientCollator];
          remoteObjectProxy = [connectionCopy remoteObjectProxy];
          primaryQueue = [(HRCServer *)self primaryQueue];
          v39 = [(HRCClient *)v35 initWithDelegate:clientCollator remoteObjectProxy:remoteObjectProxy onQueue:primaryQueue];

          v40 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndService];
          [connectionCopy setExportedInterface:v40];

          [connectionCopy setExportedObject:v39];
          v26 = v45;
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_100002B3C;
          v45[3] = &unk_1000406E8;
          v27 = &v46;
          objc_copyWeak(&v46, &buf);
          v28 = v39;
          v45[4] = v28;
          [connectionCopy setInvalidationHandler:v45];
          logger = [(HRCServer *)self logger];
          [logger addClient];

          clientCollator2 = [(HRCServer *)self clientCollator];
          [clientCollator2 addHrRequestorClient:v28];

          [connectionCopy activate];
        }

        else
        {
          bluetoothLeSourceListener2 = [(HRCServer *)self bluetoothLeSourceListener];
          v19 = bluetoothLeSourceListener2 == listenerCopy;

          if (!v19)
          {
LABEL_23:
            objc_destroyWeak(&buf);
            v32 = 1;
            goto LABEL_20;
          }

          v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndBluetoothLESourceObserverClient];
          [connectionCopy setRemoteObjectInterface:v20];

          v21 = [HRCBluetoothLESourceObserverClient alloc];
          remoteObjectProxy2 = [connectionCopy remoteObjectProxy];
          primaryQueue2 = [(HRCServer *)self primaryQueue];
          v24 = [(HRCBluetoothLESourceObserverClient *)v21 initWithRemoteObjectProxy:remoteObjectProxy2 onQueue:primaryQueue2];

          v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndBluetoothLESourceObserverService];
          [connectionCopy setExportedInterface:v25];

          [connectionCopy setExportedObject:v24];
          v26 = v43;
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_100002C20;
          v43[3] = &unk_1000406E8;
          v27 = &v44;
          objc_copyWeak(&v44, &buf);
          v28 = v24;
          v43[4] = v28;
          [connectionCopy setInvalidationHandler:v43];
          logger2 = [(HRCServer *)self logger];
          [logger2 addClient];

          observerCollator = [(HRCServer *)self observerCollator];
          [observerCollator addBluetoothLESourceObserverClient:v28];

          [connectionCopy activate];
        }

        objc_destroyWeak(v27);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v31 = sub_1000012D8();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_100026C14(&buf, [connectionCopy processIdentifier], v31);
    }

    goto LABEL_19;
  }

  v13 = sub_1000012D8();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100026BD4();
  }

LABEL_19:
  v32 = 0;
LABEL_20:

  return v32;
}

- (void)handleSysdiagnoseTrigger
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  analyticsReporter = self->_analyticsReporter;

  [(HRCAnalyticsReporter *)analyticsReporter handleSysdiagnoseTrigger];
}

- (void)updateCollatedStreamingModeRequest:(unint64_t)request
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  logger = [(HRCServer *)self logger];
  [logger handleStreamingModeUpdate:request withTimestamp:mach_continuous_time()];

  [(HRCAnalyticsReporter *)self->_analyticsReporter handleStreamingModeUpdate:request steadyClockDurationCount:std::chrono::steady_clock::now().__d_.__rep_];
  v7 = sub_1000012D8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    requestCopy = request;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "server received request to update streaming mode : %ld", &v10, 0xCu);
  }

  arbiter = [(HRCServer *)self arbiter];
  [arbiter handleStreamingModeUpdate:request];

  sourceController = [(HRCServer *)self sourceController];
  [sourceController setStreamingMode:request];
}

- (void)updateWorkoutActivityType:(unint64_t)type withLocationType:(int64_t)locationType
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  logger = [(HRCServer *)self logger];
  [logger handleWorkoutActivityType:type withLocationType:locationType withTimestamp:mach_continuous_time()];

  v9 = sub_1000012D8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 134283777;
    typeCopy = type;
    v14 = 2049;
    locationTypeCopy = locationType;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "server received request to update activityType : %{private}lu , locationType : %{private}lu", &v12, 0x16u);
  }

  arbiter = [(HRCServer *)self arbiter];
  [arbiter handleWorkoutActivityTypeUpdate:type];

  [(HRCAnalyticsReporter *)self->_analyticsReporter updateWorkoutActivityType:type withLocationType:locationType];
  sourceController = [(HRCServer *)self sourceController];
  [sourceController updateWorkoutActivityType:type withLocationType:locationType];
}

- (void)setupUserOverrideSources
{
  v3 = sub_1000012D8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setting up override preferences", v7, 2u);
  }

  p_hrSourceOverridePreference = &self->_hrSourceOverridePreference;
  hrSourceOverridePreference = self->_hrSourceOverridePreference;
  if (hrSourceOverridePreference == 3)
  {
    sourceController = [(HRCServer *)self sourceController];
    [sourceController enableWatchSource:1 enableAacpSource:0];
  }

  else if (hrSourceOverridePreference == 2)
  {
    sourceController = [(HRCServer *)self sourceController];
    [sourceController enableWatchSource:0 enableAacpSource:1];
  }

  else if (hrSourceOverridePreference)
  {
    sourceController = sub_1000012D8();
    if (os_log_type_enabled(sourceController, OS_LOG_TYPE_FAULT))
    {
      sub_100026C5C(p_hrSourceOverridePreference, sourceController);
    }
  }

  else
  {
    sourceController = [(HRCServer *)self sourceController];
    [sourceController enableWatchSource:1 enableAacpSource:1];
  }
}

- (void)heartRateSampleWasCollected:(id)collected
{
  collectedCopy = collected;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    timestamp = [collectedCopy timestamp];
    [collectedCopy heartRate];
    v8 = v7;
    confidence = [collectedCopy confidence];
    hrContext = [collectedCopy hrContext];
    uuid = [collectedCopy uuid];
    confidenceLevel = [collectedCopy confidenceLevel];
    arbitrationStatus = [collectedCopy arbitrationStatus];
    sourceType = [collectedCopy sourceType];
    streamingThrottleStatus = [collectedCopy streamingThrottleStatus];
    timestamp2 = [collectedCopy timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
    *buf = 138546179;
    v21 = timestamp;
    v22 = 2053;
    v23 = v8;
    v24 = 2112;
    v25 = confidence;
    v26 = 2048;
    v27 = hrContext;
    v28 = 2113;
    v29 = uuid;
    v30 = 1024;
    v31 = confidenceLevel;
    v32 = 1024;
    v33 = arbitrationStatus;
    v34 = 1024;
    v35 = sourceType;
    v36 = 1024;
    v37 = streamingThrottleStatus;
    v38 = 2050;
    v39 = v15;
    v40 = 1025;
    sensorLocation = [collectedCopy sensorLocation];
    v42 = 1026;
    flags = [collectedCopy flags];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "server received hr with timestamp : %{public}@ , heartRate : %{sensitive}f , confidence : %@ , context : %lu , uuid : %{private}@ , confidenceLevel : %d , arbitrationStatus : %d , sourceType : %d , streamingThrottleStatus : %d , secondsSinceReferenceDate : %{public}f, location : %{private}d, flags : %{public}u", buf, 0x62u);
  }

  logger = [(HRCServer *)self logger];
  [logger handleHeartRate:collectedCopy withTimestamp:mach_continuous_time()];

  [(HRCServer *)self _classifyUnarbitratedHeartRateSample:collectedCopy];
}

- (void)activeSourceDidChange:(unint64_t)change
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)update
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  if (update->var4 == 3)
  {
    var5 = update->var5;
    logger = [(HRCServer *)self logger];
    v8 = logger;
    if (var5 == 3)
    {
      [logger addClient];
    }

    else
    {
      [logger removeClient];
    }
  }

  logger2 = [(HRCServer *)self logger];
  [logger2 handleSourceUpdate:update withTimestamp:mach_continuous_time()];

  logger3 = [(HRCServer *)self logger];
  [logger3 flush];

  [(HRCAnalyticsReporter *)self->_analyticsReporter handleSourceUpdate:update];

  [(HRCServer *)self _handleSourceUpdate:update];
}

- (void)handleBluetoothLeSourceUpdate:(id)update
{
  updateCopy = update;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  [(HRCServer *)self _handleBtleSourceListUpdate:updateCopy];
}

- (void)handleDownSelectedHeartRate:(id)rate
{
  rateCopy = rate;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  if ([rateCopy arbitrationStatus] == 2)
  {
    logger = [(HRCServer *)self logger];
    [logger handleHeartRate:rateCopy withTimestamp:mach_continuous_time()];

    [(HRCServer *)self _classifyArbitratedHeartRateSample:rateCopy];
  }

  else
  {
    v7 = sub_1000012D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100026CD8([rateCopy arbitrationStatus], v8, v7);
    }
  }
}

- (void)handleUserFitNotification:(id)notification
{
  notificationCopy = notification;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  [(HRCSourceController *)self->_sourceController postUserFitNotification:notificationCopy];
}

- (void)_classifyUnarbitratedHeartRateSample:(id)sample
{
  sampleCopy = sample;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003CEC;
  v11[3] = &unk_100040710;
  v11[4] = self;
  v12 = sampleCopy;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003CF8;
  v9[3] = &unk_100040710;
  v9[4] = self;
  v10 = v12;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003D04;
  v7[3] = &unk_100040710;
  v7[4] = self;
  v6 = v10;
  v8 = v6;
  [HRCClassifier classifyUnarbitratedHeartRate:v6 algorithmsInputBlock:v11 publisherBlock:v9 clientBlock:v7];
}

- (void)_classifyArbitratedHeartRateSample:(id)sample
{
  sampleCopy = sample;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003E60;
  v9[3] = &unk_100040710;
  v9[4] = self;
  v10 = sampleCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003E6C;
  v7[3] = &unk_100040710;
  v7[4] = self;
  v6 = v10;
  v8 = v6;
  [HRCClassifier classifyArbitratedHeartRate:v6 publisherBlock:v9 clientBlock:v7];
}

- (void)_handleHeartRateForAlgorithms:(id)algorithms
{
  algorithmsCopy = algorithms;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D24();
  }

  arbiter = [(HRCServer *)self arbiter];
  [arbiter arbitrateHeartRate:algorithmsCopy];
}

- (void)_handleHeartRateForPublishing:(id)publishing
{
  publishingCopy = publishing;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D58();
  }

  hrPublisher = [(HRCServer *)self hrPublisher];
  [hrPublisher publishHeartRate:publishingCopy];
}

- (void)_handleHeartRateForClients:(id)clients
{
  clientsCopy = clients;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D8C();
  }

  clientCollator = [(HRCServer *)self clientCollator];
  [clientCollator handleHeartRate:clientsCopy];
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)update
{
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100026DC0();
  }

  arbiter = [(HRCServer *)self arbiter];
  [arbiter handleSourceUpdate:update];

  hrPublisher = [(HRCServer *)self hrPublisher];
  [hrPublisher handleSourceUpdate:update];
}

- (void)_handleBtleSourceListUpdate:(id)update
{
  updateCopy = update;
  primaryQueue = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(primaryQueue);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "server received btle source list update", v8, 2u);
  }

  observerCollator = [(HRCServer *)self observerCollator];
  [observerCollator handleSourceListUpdate:updateCopy];
}

@end