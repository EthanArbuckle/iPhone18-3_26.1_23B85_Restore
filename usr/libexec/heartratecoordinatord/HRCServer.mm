@interface HRCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (HRCServer)init;
- (void)_classifyArbitratedHeartRateSample:(id)a3;
- (void)_classifyUnarbitratedHeartRateSample:(id)a3;
- (void)_handleBtleSourceListUpdate:(id)a3;
- (void)_handleHeartRateForAlgorithms:(id)a3;
- (void)_handleHeartRateForClients:(id)a3;
- (void)_handleHeartRateForPublishing:(id)a3;
- (void)_handleSourceUpdate:(const HRCSourceUpdate *)a3;
- (void)activeSourceDidChange:(unint64_t)a3;
- (void)handleBluetoothLeSourceUpdate:(id)a3;
- (void)handleDownSelectedHeartRate:(id)a3;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)a3;
- (void)handleSysdiagnoseTrigger;
- (void)handleUserFitNotification:(id)a3;
- (void)heartRateSampleWasCollected:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setupUserOverrideSources;
- (void)updateCollatedStreamingModeRequest:(unint64_t)a3;
- (void)updateWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4;
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
    v12 = [v10 BOOLValue];
  }

  else
  {
    v12 = 0;
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

  v31 = [[HRCArbiterAlgorithms alloc] initWithDelegate:v4 onQueue:v4->_primaryQueue forceFitNotification:v12 fitNotificationThreshold:v14 fitNotificationMinDuration:v16 fitNotificationMinHrCount:v18 analyticsReporter:v4->_analyticsReporter];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 valueForKeyPath:v9];
  v12 = v11;
  p_hrSourceOverridePreference = &self->_hrSourceOverridePreference;
  if (&self->_hrSourceOverridePreference == a6)
  {
    v14 = [v11 intValue];
    if (v14 >= 3)
    {
      v18 = sub_1000012D8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100026B94();
      }
    }

    else if (*p_hrSourceOverridePreference != v14)
    {
      *p_hrSourceOverridePreference = v14;
      v15 = sub_1000012D8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *p_hrSourceOverridePreference;
        *buf = 67109120;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "hrSourceOverride : %d", buf, 8u);
      }

      v17 = [(HRCServer *)self primaryQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000024B0;
      block[3] = &unk_1000406C0;
      block[4] = self;
      dispatch_async(v17, block);
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000012D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [v7 processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "received connection request from frontend client with pid : %d", &buf, 8u);
  }

  v9 = [(HRCServer *)self hrClientListener];
  v10 = v9;
  if (v9 == v6)
  {

    goto LABEL_9;
  }

  v11 = [(HRCServer *)self bluetoothLeSourceListener];
  v12 = v11 == v6;

  if (v12)
  {
LABEL_9:
    v14 = [v7 valueForEntitlement:@"com.apple.heartratecoordinator.spi.heartrate"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v14 BOOLValue];

      if (v15)
      {
        objc_initWeak(&buf, self);
        v16 = [(HRCServer *)self hrClientListener];
        v17 = v16 == v6;

        if (v17)
        {
          v34 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndClient];
          [v7 setRemoteObjectInterface:v34];

          v35 = [HRCClient alloc];
          v36 = [(HRCServer *)self clientCollator];
          v37 = [v7 remoteObjectProxy];
          v38 = [(HRCServer *)self primaryQueue];
          v39 = [(HRCClient *)v35 initWithDelegate:v36 remoteObjectProxy:v37 onQueue:v38];

          v40 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndService];
          [v7 setExportedInterface:v40];

          [v7 setExportedObject:v39];
          v26 = v45;
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_100002B3C;
          v45[3] = &unk_1000406E8;
          v27 = &v46;
          objc_copyWeak(&v46, &buf);
          v28 = v39;
          v45[4] = v28;
          [v7 setInvalidationHandler:v45];
          v41 = [(HRCServer *)self logger];
          [v41 addClient];

          v42 = [(HRCServer *)self clientCollator];
          [v42 addHrRequestorClient:v28];

          [v7 activate];
        }

        else
        {
          v18 = [(HRCServer *)self bluetoothLeSourceListener];
          v19 = v18 == v6;

          if (!v19)
          {
LABEL_23:
            objc_destroyWeak(&buf);
            v32 = 1;
            goto LABEL_20;
          }

          v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndBluetoothLESourceObserverClient];
          [v7 setRemoteObjectInterface:v20];

          v21 = [HRCBluetoothLESourceObserverClient alloc];
          v22 = [v7 remoteObjectProxy];
          v23 = [(HRCServer *)self primaryQueue];
          v24 = [(HRCBluetoothLESourceObserverClient *)v21 initWithRemoteObjectProxy:v22 onQueue:v23];

          v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRCFrontEndBluetoothLESourceObserverService];
          [v7 setExportedInterface:v25];

          [v7 setExportedObject:v24];
          v26 = v43;
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_100002C20;
          v43[3] = &unk_1000406E8;
          v27 = &v44;
          objc_copyWeak(&v44, &buf);
          v28 = v24;
          v43[4] = v28;
          [v7 setInvalidationHandler:v43];
          v29 = [(HRCServer *)self logger];
          [v29 addClient];

          v30 = [(HRCServer *)self observerCollator];
          [v30 addBluetoothLESourceObserverClient:v28];

          [v7 activate];
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
      sub_100026C14(&buf, [v7 processIdentifier], v31);
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
  v3 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v3);

  analyticsReporter = self->_analyticsReporter;

  [(HRCAnalyticsReporter *)analyticsReporter handleSysdiagnoseTrigger];
}

- (void)updateCollatedStreamingModeRequest:(unint64_t)a3
{
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HRCServer *)self logger];
  [v6 handleStreamingModeUpdate:a3 withTimestamp:mach_continuous_time()];

  [(HRCAnalyticsReporter *)self->_analyticsReporter handleStreamingModeUpdate:a3 steadyClockDurationCount:std::chrono::steady_clock::now().__d_.__rep_];
  v7 = sub_1000012D8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "server received request to update streaming mode : %ld", &v10, 0xCu);
  }

  v8 = [(HRCServer *)self arbiter];
  [v8 handleStreamingModeUpdate:a3];

  v9 = [(HRCServer *)self sourceController];
  [v9 setStreamingMode:a3];
}

- (void)updateWorkoutActivityType:(unint64_t)a3 withLocationType:(int64_t)a4
{
  v7 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HRCServer *)self logger];
  [v8 handleWorkoutActivityType:a3 withLocationType:a4 withTimestamp:mach_continuous_time()];

  v9 = sub_1000012D8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 134283777;
    v13 = a3;
    v14 = 2049;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "server received request to update activityType : %{private}lu , locationType : %{private}lu", &v12, 0x16u);
  }

  v10 = [(HRCServer *)self arbiter];
  [v10 handleWorkoutActivityTypeUpdate:a3];

  [(HRCAnalyticsReporter *)self->_analyticsReporter updateWorkoutActivityType:a3 withLocationType:a4];
  v11 = [(HRCServer *)self sourceController];
  [v11 updateWorkoutActivityType:a3 withLocationType:a4];
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
    v6 = [(HRCServer *)self sourceController];
    [v6 enableWatchSource:1 enableAacpSource:0];
  }

  else if (hrSourceOverridePreference == 2)
  {
    v6 = [(HRCServer *)self sourceController];
    [v6 enableWatchSource:0 enableAacpSource:1];
  }

  else if (hrSourceOverridePreference)
  {
    v6 = sub_1000012D8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100026C5C(p_hrSourceOverridePreference, v6);
    }
  }

  else
  {
    v6 = [(HRCServer *)self sourceController];
    [v6 enableWatchSource:1 enableAacpSource:1];
  }
}

- (void)heartRateSampleWasCollected:(id)a3
{
  v4 = a3;
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v19 = [v4 timestamp];
    [v4 heartRate];
    v8 = v7;
    v18 = [v4 confidence];
    v9 = [v4 hrContext];
    v17 = [v4 uuid];
    v10 = [v4 confidenceLevel];
    v11 = [v4 arbitrationStatus];
    v12 = [v4 sourceType];
    v13 = [v4 streamingThrottleStatus];
    v14 = [v4 timestamp];
    [v14 timeIntervalSinceReferenceDate];
    *buf = 138546179;
    v21 = v19;
    v22 = 2053;
    v23 = v8;
    v24 = 2112;
    v25 = v18;
    v26 = 2048;
    v27 = v9;
    v28 = 2113;
    v29 = v17;
    v30 = 1024;
    v31 = v10;
    v32 = 1024;
    v33 = v11;
    v34 = 1024;
    v35 = v12;
    v36 = 1024;
    v37 = v13;
    v38 = 2050;
    v39 = v15;
    v40 = 1025;
    v41 = [v4 sensorLocation];
    v42 = 1026;
    v43 = [v4 flags];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "server received hr with timestamp : %{public}@ , heartRate : %{sensitive}f , confidence : %@ , context : %lu , uuid : %{private}@ , confidenceLevel : %d , arbitrationStatus : %d , sourceType : %d , streamingThrottleStatus : %d , secondsSinceReferenceDate : %{public}f, location : %{private}d, flags : %{public}u", buf, 0x62u);
  }

  v16 = [(HRCServer *)self logger];
  [v16 handleHeartRate:v4 withTimestamp:mach_continuous_time()];

  [(HRCServer *)self _classifyUnarbitratedHeartRateSample:v4];
}

- (void)activeSourceDidChange:(unint64_t)a3
{
  v3 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)a3
{
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  if (a3->var4 == 3)
  {
    var5 = a3->var5;
    v7 = [(HRCServer *)self logger];
    v8 = v7;
    if (var5 == 3)
    {
      [v7 addClient];
    }

    else
    {
      [v7 removeClient];
    }
  }

  v9 = [(HRCServer *)self logger];
  [v9 handleSourceUpdate:a3 withTimestamp:mach_continuous_time()];

  v10 = [(HRCServer *)self logger];
  [v10 flush];

  [(HRCAnalyticsReporter *)self->_analyticsReporter handleSourceUpdate:a3];

  [(HRCServer *)self _handleSourceUpdate:a3];
}

- (void)handleBluetoothLeSourceUpdate:(id)a3
{
  v5 = a3;
  v4 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v4);

  [(HRCServer *)self _handleBtleSourceListUpdate:v5];
}

- (void)handleDownSelectedHeartRate:(id)a3
{
  v4 = a3;
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 arbitrationStatus] == 2)
  {
    v6 = [(HRCServer *)self logger];
    [v6 handleHeartRate:v4 withTimestamp:mach_continuous_time()];

    [(HRCServer *)self _classifyArbitratedHeartRateSample:v4];
  }

  else
  {
    v7 = sub_1000012D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100026CD8([v4 arbitrationStatus], v8, v7);
    }
  }
}

- (void)handleUserFitNotification:(id)a3
{
  v5 = a3;
  v4 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v4);

  [(HRCSourceController *)self->_sourceController postUserFitNotification:v5];
}

- (void)_classifyUnarbitratedHeartRateSample:(id)a3
{
  v4 = a3;
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003CEC;
  v11[3] = &unk_100040710;
  v11[4] = self;
  v12 = v4;
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

- (void)_classifyArbitratedHeartRateSample:(id)a3
{
  v4 = a3;
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003E60;
  v9[3] = &unk_100040710;
  v9[4] = self;
  v10 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003E6C;
  v7[3] = &unk_100040710;
  v7[4] = self;
  v6 = v10;
  v8 = v6;
  [HRCClassifier classifyArbitratedHeartRate:v6 publisherBlock:v9 clientBlock:v7];
}

- (void)_handleHeartRateForAlgorithms:(id)a3
{
  v4 = a3;
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D24();
  }

  v7 = [(HRCServer *)self arbiter];
  [v7 arbitrateHeartRate:v4];
}

- (void)_handleHeartRateForPublishing:(id)a3
{
  v4 = a3;
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D58();
  }

  v7 = [(HRCServer *)self hrPublisher];
  [v7 publishHeartRate:v4];
}

- (void)_handleHeartRateForClients:(id)a3
{
  v4 = a3;
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D8C();
  }

  v7 = [(HRCServer *)self clientCollator];
  [v7 handleHeartRate:v4];
}

- (void)_handleSourceUpdate:(const HRCSourceUpdate *)a3
{
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100026DC0();
  }

  v7 = [(HRCServer *)self arbiter];
  [v7 handleSourceUpdate:a3];

  v8 = [(HRCServer *)self hrPublisher];
  [v8 handleSourceUpdate:a3];
}

- (void)_handleBtleSourceListUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HRCServer *)self primaryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_1000012D8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "server received btle source list update", v8, 2u);
  }

  v7 = [(HRCServer *)self observerCollator];
  [v7 handleSourceListUpdate:v4];
}

@end