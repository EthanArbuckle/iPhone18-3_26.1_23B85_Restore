@interface FMDSecureLocationMonitor
- (FMDSecureLocationMonitor)init;
- (double)_clLocationAccuracyFromConfigValue:(id)value;
- (id)_createLocationManager;
- (id)_createLocationManagerForStewie;
- (id)_createLocationManagerWithQueue:(id)queue;
- (void)_publishHeartbeatIfNeeded;
- (void)_publishLocation:(id)location;
- (void)_publishLocationInfo:(id)info completion:(id)completion;
- (void)_publishPeriodicShallowIfNeeded:(id)needed;
- (void)_registerForOnDemandPublishRequest;
- (void)_registerForStewiePublishRequest;
- (void)_scheduleXPCActivity;
- (void)_unregisterFromOnDemandPublishRequest;
- (void)_unregisterFromStewiePublishRequest;
- (void)activeConfigChanged:(id)changed;
- (void)activeConfigExtended:(id)extended;
- (void)dealloc;
- (void)forcePublishOndemandLocationIfNeeded:(id)needed;
- (void)liteLocationPublishRequestNotification:(id)notification;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)publishLocationToStewie:(id)stewie;
- (void)publishOnDemandLocation:(id)location;
- (void)publishOneTimeShallowLocation:(id)location;
- (void)requestForcedShallowLocation;
- (void)startLocationMonitor:(id)monitor;
- (void)startLocationMonitorAfterRestart;
- (void)startLocationMonitorWithContext:(id)context completion:(id)completion;
- (void)startLocationMonitorWithContext:(id)context forcePublish:(BOOL)publish completion:(id)completion;
- (void)stopLocationMonitor:(id)monitor;
- (void)stopLocationMonitorWithContext:(id)context completion:(id)completion;
- (void)updateMonitorConfig:(id)config;
@end

@implementation FMDSecureLocationMonitor

- (FMDSecureLocationMonitor)init
{
  v21.receiver = self;
  v21.super_class = FMDSecureLocationMonitor;
  v2 = [(FMDSecureLocationMonitor *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.findmydevice.locationPublishQueue", 0);
    v4 = *(v2 + 18);
    *(v2 + 18) = v3;

    v5 = dispatch_queue_create("com.apple.findmydevice.forcePushOndemandLocationQueue", 0);
    v6 = *(v2 + 19);
    *(v2 + 19) = v5;

    v7 = dispatch_queue_create("com.apple.findmydevice.stewieLocationManagerQueue", 0);
    v8 = *(v2 + 20);
    *(v2 + 20) = v7;

    dispatch_queue_set_specific(*(v2 + 19), "com.apple.findmydevice.forcePublishQueueKey", "com.apple.findmydevice.forcePublishQueueKey", 0);
    v9 = objc_alloc_init(FMDSecureLocationConfigManager);
    v10 = *(v2 + 14);
    *(v2 + 14) = v9;

    [*(v2 + 14) setDelegate:v2];
    activeConfig = [*(v2 + 14) activeConfig];

    if (activeConfig)
    {
      v12 = [FMDSecureLocationPublisher alloc];
      activeConfig2 = [*(v2 + 14) activeConfig];
      v14 = [(FMDSecureLocationPublisher *)v12 initWithConfiguration:activeConfig2];
      v15 = *(v2 + 13);
      *(v2 + 13) = v14;
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v16 = objc_alloc_init(SPSecureLocationsManager);
      v17 = *(v2 + 2);
      *(v2 + 2) = v16;
    }

    [v2 _registerForOnDemandPublishRequest];
    [v2 _registerForStewiePublishRequest];
    if (_os_feature_enabled_impl())
    {
      v18 = objc_alloc_init(_TtC13findmydeviced19FindMyLocateWrapper);
      v19 = *(v2 + 21);
      *(v2 + 21) = v18;
    }
  }

  return v2;
}

- (void)dealloc
{
  [(FMDSecureLocationMonitor *)self _unregisterFromOnDemandPublishRequest];
  [(FMDSecureLocationMonitor *)self _unregisterFromStewiePublishRequest];
  v3.receiver = self;
  v3.super_class = FMDSecureLocationMonitor;
  [(FMDSecureLocationMonitor *)&v3 dealloc];
}

- (void)startLocationMonitor:(id)monitor
{
  monitorCopy = monitor;
  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to start location monitors", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B5750;
  block[3] = &unk_1002D0B08;
  objc_copyWeak(&v9, buf);
  block[4] = self;
  v8 = monitorCopy;
  v6 = monitorCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)startLocationMonitorWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_1000029E0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "startLocationMonitorWithContext %@", &v10, 0xCu);
  }

  configManager = [(FMDSecureLocationMonitor *)self configManager];
  [configManager requestMonitorWithContext:contextCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)startLocationMonitorWithContext:(id)context forcePublish:(BOOL)publish completion:(id)completion
{
  publishCopy = publish;
  contextCopy = context;
  completionCopy = completion;
  v10 = sub_1000029E0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = contextCopy;
    v21 = 1024;
    v22 = publishCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "startLocationMonitorWithContext %@ forcePublish %d", buf, 0x12u);
  }

  if (publishCopy)
  {
    objc_initWeak(buf, self);
    forcePushOndemandLocationQueue = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1001B6728;
    v16 = &unk_1002CD288;
    objc_copyWeak(&v18, buf);
    selfCopy = self;
    dispatch_async(forcePushOndemandLocationQueue, &v13);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v12 = [(FMDSecureLocationMonitor *)self configManager:v13];
  [v12 requestMonitorWithContext:contextCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)startLocationMonitorAfterRestart
{
  v3 = [FMPreferencesUtil integerForKey:@"kFMDSecureLocationsShouldStartMonitor" inDomain:kFMDNotBackedUpPrefDomain];
  v4 = sub_1000029E0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "shouldStart secure locations %ld", &v9, 0xCu);
  }

  v5 = objc_alloc_init(FMDSecureLocationContext);
  [v5 setFindMyId:@"restart"];
  if ((v3 - 1) < 3)
  {
    [v5 setMode:**(&off_1002D0C98 + (v3 - 1))];
LABEL_6:
    v6 = sub_1000029E0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mode = [v5 mode];
      v9 = 138412290;
      v10 = mode;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "starting location monitoring after restart with policy %@", &v9, 0xCu);
    }

    if (![(FMDSecureLocationMonitor *)self isRunning])
    {
      [(FMDSecureLocationMonitor *)self startLocationMonitorWithContext:v5 completion:&stru_1002D0B48];
    }

    goto LABEL_10;
  }

  if (v3 > 0)
  {
    goto LABEL_6;
  }

  if (![(FMDSecureLocationMonitor *)self isRunning])
  {
    v8 = sub_1000029E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unregister previously scheduled activity, if any.", &v9, 2u);
    }

    xpc_activity_unregister("com.apple.findmydevice.secureLocationsCheck");
  }

LABEL_10:
}

- (void)stopLocationMonitorWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_1000029E0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "stopLocationMonitorWithContext %@", &v10, 0xCu);
  }

  configManager = [(FMDSecureLocationMonitor *)self configManager];
  [configManager removeMonitorWithContext:contextCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)stopLocationMonitor:(id)monitor
{
  monitorCopy = monitor;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6C4C;
  block[3] = &unk_1002CDEF0;
  objc_copyWeak(&v8, &location);
  v7 = monitorCopy;
  v5 = monitorCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (double)_clLocationAccuracyFromConfigValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"best"])
  {
    v4 = kCLLocationAccuracyBest;
    v5 = @"kCLLocationAccuracyBest";
  }

  else if ([valueCopy isEqualToString:@"navigation"])
  {
    v4 = kCLLocationAccuracyBestForNavigation;
    v5 = @"kCLLocationAccuracyBestForNavigation";
  }

  else if ([valueCopy isEqualToString:@"10meters"])
  {
    v4 = kCLLocationAccuracyNearestTenMeters;
    v5 = @"kCLLocationAccuracyNearestTenMeters";
  }

  else
  {
    v4 = kCLLocationAccuracyHundredMeters;
    v5 = @"kCLLocationAccuracyHundredMeters";
    if (([valueCopy isEqualToString:@"100meters"] & 1) == 0)
    {
      if ([valueCopy isEqualToString:@"1kilometer"])
      {
        v4 = kCLLocationAccuracyKilometer;
        v5 = @"kCLLocationAccuracyKilometer";
      }

      else if ([valueCopy isEqualToString:@"3kilometers"])
      {
        v5 = @"kCLLocationAccuracyThreeKilometers";
        v4 = kCLLocationAccuracyThreeKilometers;
      }
    }
  }

  v6 = sub_1000029E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = valueCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: returning CL accuracy %@ for config value %@", &v8, 0x16u);
  }

  return v4;
}

- (void)_publishLocation:(id)location
{
  locationCopy = location;
  if ([locationCopy isLocationValid])
  {
    v5 = +[FMDRestrictedRegions sharedInstance];
    if ([v5 isRestrictedSKU])
    {
      v6 = sub_1000029E0();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        goto LABEL_13;
      }

      *buf = 0;
      v7 = "SecureLocationMonitor - not publishing - restricted SKU";
      v8 = v6;
      v9 = 2;
    }

    else
    {
      locationInfo = [locationCopy locationInfo];
      latitude = [locationInfo latitude];
      [latitude doubleValue];
      v13 = v12;
      locationInfo2 = [locationCopy locationInfo];
      longitude = [locationInfo2 longitude];
      [longitude doubleValue];
      v17 = [v5 isRestrictedLocationWithLatitude:v13 longitude:v16];

      if (!v17)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1001B7470;
        v18[3] = &unk_1002CD478;
        v18[4] = self;
        v19 = locationCopy;
        _os_activity_initiate(&_mh_execute_header, "FMDSecureLocationMonitor.publishLocation", OS_ACTIVITY_FLAG_DEFAULT, v18);

        goto LABEL_13;
      }

      v6 = sub_1000029E0();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      *buf = 67109376;
      v21 = 0;
      v22 = 1024;
      v23 = 1;
      v7 = "SecureLocationMonitor - not publishing - restricted region. isRestrictedSKU %d isRestrictedLocation %d";
      v8 = v6;
      v9 = 14;
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_11;
  }

  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - not publishing - invalid location", buf, 2u);
  }

LABEL_13:
}

- (void)_publishLocationInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  convertToSecureLocationObject = [info convertToSecureLocationObject];
  if (_os_feature_enabled_impl())
  {
    findMyLocate = [(FMDSecureLocationMonitor *)self findMyLocate];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001B77EC;
    v16[3] = &unk_1002D0B98;
    v9 = v17;
    v17[0] = convertToSecureLocationObject;
    v17[1] = self;
    v10 = &v18;
    v18 = completionCopy;
    v11 = completionCopy;
    [findMyLocate publishLocation:convertToSecureLocationObject completionHandler:v16];
  }

  else
  {
    findMyLocate = [(FMDSecureLocationMonitor *)self secureLocationsManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001B7924;
    v13[3] = &unk_1002D0B98;
    v9 = v14;
    v14[0] = convertToSecureLocationObject;
    v14[1] = self;
    v10 = &v15;
    v15 = completionCopy;
    v12 = completionCopy;
    [findMyLocate publishLocation:convertToSecureLocationObject completion:v13];
  }
}

- (void)_publishHeartbeatIfNeeded
{
  lastPublishedTime = [(FMDSecureLocationMonitor *)self lastPublishedTime];

  lastPublishedTime2 = [(FMDSecureLocationMonitor *)self lastPublishedTime];
  [lastPublishedTime2 timeIntervalSinceNow];
  v6 = v5;
  configManager = [(FMDSecureLocationMonitor *)self configManager];
  activeConfig = [configManager activeConfig];
  [activeConfig heartbeatPublish];
  v10 = v9;

  v11 = sub_1000029E0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (lastPublishedTime)
    {
      v12 = @"NO";
    }

    else
    {
      v12 = @"YES";
    }

    lastPublishedTime3 = [(FMDSecureLocationMonitor *)self lastPublishedTime];
    [lastPublishedTime3 timeIntervalSinceNow];
    v15 = -v14;
    configManager2 = [(FMDSecureLocationMonitor *)self configManager];
    activeConfig2 = [configManager2 activeConfig];
    [activeConfig2 heartbeatPublish];
    *buf = 138412802;
    v22 = v12;
    v23 = 2048;
    v24 = v15;
    v25 = 2048;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Heartbeat isfirstpublish %@. Time since last publish %f configLimit %f", buf, 0x20u);
  }

  lastPublishedTime4 = [(FMDSecureLocationMonitor *)self lastPublishedTime];

  if (!lastPublishedTime4 || v10 <= -v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B7C64;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_publishPeriodicShallowIfNeeded:(id)needed
{
  neededCopy = needed;
  configManager = [(FMDSecureLocationMonitor *)self configManager];
  v6 = [configManager configForPolicy:kFMDSecureLocationModeProactiveShallow];

  v7 = +[NSDate date];
  lastShallowPublishTime = [(FMDSecureLocationMonitor *)self lastShallowPublishTime];
  if (!lastShallowPublishTime)
  {
    goto LABEL_3;
  }

  v9 = lastShallowPublishTime;
  lastShallowPublishTime2 = [(FMDSecureLocationMonitor *)self lastShallowPublishTime];
  [lastShallowPublishTime2 timeIntervalSinceNow];
  v12 = -v11;
  [v6 minTimeBetweenPublish];
  v14 = v13;

  if (v14 <= v12)
  {
LABEL_3:
    v15 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:neededCopy];
    v16 = [FMDSecureLocationInfo alloc];
    motionMonitor = [(FMDSecureLocationMonitor *)self motionMonitor];
    lastKnownDeviceMotion = [motionMonitor lastKnownDeviceMotion];
    v19 = [(FMDSecureLocationInfo *)v16 initWithLocation:v15 motion:lastKnownDeviceMotion publishReason:6];

    [(FMDSecureLocationMonitor *)self _publishLocation:v19];
    [(FMDSecureLocationMonitor *)self setLastShallowPublishTime:v7];
    v20 = sub_1000029E0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Published periodic shallow during live session", v21, 2u);
    }
  }
}

- (void)publishOnDemandLocation:(id)location
{
  locationCopy = location;
  locationPublishQueue = [(FMDSecureLocationMonitor *)self locationPublishQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B7FBC;
  v7[3] = &unk_1002CE228;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(locationPublishQueue, v7);
}

- (void)_registerForOnDemandPublishRequest
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1001B8220, @"com.apple.icloud.searchparty.secureLocations.OnDemandPublishRequest", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = sub_1000029E0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Registered for ondemand publish notification", v5, 2u);
  }
}

- (void)_unregisterFromOnDemandPublishRequest
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.icloud.searchparty.secureLocations.OnDemandPublishRequest", 0);
}

- (void)publishLocationToStewie:(id)stewie
{
  stewieLocationManager = [(FMDSecureLocationMonitor *)self stewieLocationManager];

  if (!stewieLocationManager)
  {
    v5 = sub_1000029E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = @"stewie:";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ No location manager - creating one", buf, 0xCu);
    }

    _createLocationManagerForStewie = [(FMDSecureLocationMonitor *)self _createLocationManagerForStewie];
    [(FMDSecureLocationMonitor *)self setStewieLocationManager:_createLocationManagerForStewie];
  }

  stewieLocationManager2 = [(FMDSecureLocationMonitor *)self stewieLocationManager];

  if (stewieLocationManager2)
  {
    locationPublishQueue = [(FMDSecureLocationMonitor *)self locationPublishQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B8498;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    dispatch_async(locationPublishQueue, block);
  }

  else
  {
    v9 = sub_1000029E0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = @"stewie:";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ No location manager available", buf, 0xCu);
    }
  }
}

- (void)_registerForStewiePublishRequest
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"liteLocationPublishRequestNotification:" name:@"com.apple.icloud.searchparty.secureLocations.liteLocationPublishRequest" object:0];

    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = @"stewie:";
      v5 = "SecureLocationMonitor: %@ Registered for publish notification";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, &v6, 0xCu);
    }
  }

  else
  {
    v4 = sub_1000029E0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = @"stewie:";
      v5 = "SecureLocationMonitor: %@ feature disabled. Not registering for notification";
      goto LABEL_6;
    }
  }
}

- (void)_unregisterFromStewiePublishRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.icloud.searchparty.secureLocations.liteLocationPublishRequest" object:0];

  v4 = sub_1000029E0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"stewie:";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ Unregistered for publish notification", &v5, 0xCu);
  }
}

- (void)liteLocationPublishRequestNotification:(id)notification
{
  v4 = _os_feature_enabled_impl();
  v5 = sub_1000029E0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 138412290;
      v8 = @"stewie:";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ Received publish request", &v7, 0xCu);
    }

    [(FMDSecureLocationMonitor *)self publishLocationToStewie:&stru_1002D0BB8];
  }

  else
  {
    if (v6)
    {
      v7 = 138412290;
      v8 = @"stewie:";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ feature disabled", &v7, 0xCu);
    }
  }
}

- (id)_createLocationManagerForStewie
{
  stewieLocationManagerQueue = [(FMDSecureLocationMonitor *)self stewieLocationManagerQueue];
  v4 = [(FMDSecureLocationMonitor *)self _createLocationManagerWithQueue:stewieLocationManagerQueue];

  [v4 setDelegate:self];
  [v4 setDesiredAccuracy:kCLLocationAccuracyBest];

  return v4;
}

- (id)_createLocationManager
{
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v3 = [[CLLocationManager alloc] initWithEffectiveBundle:v2];

  return v3;
}

- (id)_createLocationManagerWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v6 = [[CLLocationManager alloc] initWithEffectiveBundle:v5 delegate:self onQueue:queueCopy];

  return v6;
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  visitCopy = visit;
  v6 = sub_1000029E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [visitCopy coordinate];
    v8 = v7;
    [visitCopy coordinate];
    v27 = 138412803;
    v28 = visitCopy;
    v29 = 2049;
    v30 = v8;
    v31 = 2049;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "didVisit %@ %{private}f %{private}f", &v27, 0x20u);
  }

  locationPublisher = [(FMDSecureLocationMonitor *)self locationPublisher];

  if (locationPublisher)
  {
    if ([visitCopy hasArrivalDate] && (objc_msgSend(visitCopy, "hasDepartureDate") & 1) == 0)
    {
      v12 = [CLLocation alloc];
      [visitCopy coordinate];
      v14 = v13;
      v16 = v15;
      [visitCopy horizontalAccuracy];
      v18 = v17;
      v19 = +[NSDate date];
      v11 = [v12 initWithCoordinate:v19 altitude:v14 horizontalAccuracy:v16 verticalAccuracy:0.0 timestamp:{v18, 0.0}];

      v20 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v11];
      v21 = [FMDSecureLocationInfo alloc];
      motionMonitor = [(FMDSecureLocationMonitor *)self motionMonitor];
      lastKnownDeviceMotion = [motionMonitor lastKnownDeviceMotion];
      v24 = [(FMDSecureLocationInfo *)v21 initWithLocation:v20 motion:lastKnownDeviceMotion publishReason:2];

      v25 = +[FMSystemInfo sharedInstance];
      LODWORD(lastKnownDeviceMotion) = [v25 isInternalBuild];

      if (lastKnownDeviceMotion && [FMPreferencesUtil BOOLForKey:@"PublishVisitImmediately" inDomain:kFMDNotBackedUpPrefDomain])
      {
        [(FMDSecureLocationMonitor *)self _publishLocation:v24];
      }

      locationPublisher2 = [(FMDSecureLocationMonitor *)self locationPublisher];
      [locationPublisher2 processUpdatedLocation:v24];
    }

    else
    {
      v11 = sub_1000029E0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Received visit departure. Ignoring", &v27, 2u);
      }
    }
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  v8 = sub_1000029E0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10022D838(v8);
  }

  if (![locationsCopy count])
  {
    lastObject2 = sub_1000029E0();
    if (os_log_type_enabled(lastObject2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, lastObject2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor didUpdateLocations but location count is zero", buf, 2u);
    }

    goto LABEL_57;
  }

  bystanderLocationManager = [(FMDSecureLocationMonitor *)self bystanderLocationManager];

  if (bystanderLocationManager == managerCopy)
  {
    v22 = locationsCopy;
    configManager = [(FMDSecureLocationMonitor *)self configManager];
    activeConfig = [configManager activeConfig];
    policyName = [activeConfig policyName];
    v26 = [policyName isEqualToString:kFMDSecureLocationModeOwnerProactive];

    if (v26)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 10;
    }

    else
    {
      configManager2 = [(FMDSecureLocationMonitor *)self configManager];
      activeConfig2 = [configManager2 activeConfig];
      policyName2 = [activeConfig2 policyName];
      v30 = [policyName2 isEqualToString:kFMDSecureLocationModeBackgroundProactive];

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      if (v30)
      {
        v20 = 12;
      }

      else
      {
        v20 = 4;
      }
    }

    locationsCopy = v22;
  }

  else
  {
    slcLocationManager = [(FMDSecureLocationMonitor *)self slcLocationManager];

    if (slcLocationManager == managerCopy)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v16 = 1;
      v20 = 1;
    }

    else
    {
      heartbeatLocationManager = [(FMDSecureLocationMonitor *)self heartbeatLocationManager];

      if (heartbeatLocationManager == managerCopy)
      {
        configManager3 = [(FMDSecureLocationMonitor *)self configManager];
        activeConfig3 = [configManager3 activeConfig];
        policyName3 = [activeConfig3 policyName];
        v34 = locationsCopy;
        v35 = [policyName3 isEqualToString:kFMDSecureLocationModeOwnerProactive];

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v36 = v35 == 0;
        locationsCopy = v34;
        if (v36)
        {
          v20 = 3;
        }

        else
        {
          v20 = 9;
        }
      }

      else
      {
        ondemandLocationManager = [(FMDSecureLocationMonitor *)self ondemandLocationManager];

        if (ondemandLocationManager == managerCopy)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 5;
        }

        else
        {
          liveLocationManager = [(FMDSecureLocationMonitor *)self liveLocationManager];

          if (liveLocationManager == managerCopy)
          {
            v16 = 0;
            v17 = 0;
            v19 = 0;
            v18 = 1;
            v20 = 7;
          }

          else
          {
            shallowLocationManager = [(FMDSecureLocationMonitor *)self shallowLocationManager];

            if (shallowLocationManager == managerCopy)
            {
              [managerCopy setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 1;
              v20 = 6;
            }

            else
            {
              stewieLocationManager = [(FMDSecureLocationMonitor *)self stewieLocationManager];

              if (stewieLocationManager == managerCopy)
              {
                v37 = sub_1000029E0();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor didUpdateLocations for satellite location", buf, 2u);
                }

                v16 = 0;
                v18 = 0;
                v19 = 0;
                v17 = 1;
                v20 = 8;
              }

              else
              {
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v20 = 0;
              }
            }
          }
        }
      }
    }
  }

  lastObject = [locationsCopy lastObject];
  [(FMDSecureLocationMonitor *)self forcePublishOndemandLocationIfNeeded:lastObject];

  v39 = sub_1000029E0();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    sub_10022D87C(v20, v39);
  }

  locationPublisher = [(FMDSecureLocationMonitor *)self locationPublisher];

  if (locationPublisher)
  {
    v41 = v17;
    v65 = v19;
    v66 = locationsCopy;
    v67 = managerCopy;
    v42 = v18;
    lastObject2 = [locationsCopy lastObject];
    v43 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:lastObject2];
    v44 = [FMDSecureLocationInfo alloc];
    motionMonitor = [(FMDSecureLocationMonitor *)self motionMonitor];
    lastKnownDeviceMotion = [motionMonitor lastKnownDeviceMotion];
    v47 = [(FMDSecureLocationInfo *)v44 initWithLocation:v43 motion:lastKnownDeviceMotion publishReason:v20];

    if (v16)
    {
      configManager4 = [(FMDSecureLocationMonitor *)self configManager];
      v49 = [configManager4 configForPolicy:kFMDSecureLocationModeProactive];

      timestamp = [lastObject2 timestamp];
      [timestamp timeIntervalSinceNow];
      v52 = -v51;

      [v49 minTimeBetweenPublish];
      if (v53 < v52)
      {
        v54 = sub_1000029E0();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - we received a very old location. Lets ignore it and request an on demand publish", buf, 2u);
        }

        [(FMDSecureLocationMonitor *)self publishOnDemandLocation:&stru_1002D0BD8];
        goto LABEL_38;
      }

      v58 = +[FMSystemInfo sharedInstance];
      isInternalBuild = [v58 isInternalBuild];

      if (isInternalBuild && [FMPreferencesUtil BOOLForKey:@"PublishSLCImmediately" inDomain:kFMDNotBackedUpPrefDomain])
      {
        [(FMDSecureLocationMonitor *)self _publishLocation:v47];
LABEL_38:
        managerCopy = v67;

        locationsCopy = v66;
LABEL_57:

        goto LABEL_58;
      }

      v18 = v42;
      managerCopy = v67;
    }

    else
    {
      v18 = v42;
      managerCopy = v67;
      if (v41)
      {
        v55 = sub_1000029E0();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = @"stewie:";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ location request - sending to publish immediately", buf, 0xCu);
        }

        [(FMDSecureLocationMonitor *)self _publishLocation:v47];
        stewieLocationManager2 = [(FMDSecureLocationMonitor *)self stewieLocationManager];
        [stewieLocationManager2 stopUpdatingLocation];

        stewieLocationManager3 = [(FMDSecureLocationMonitor *)self stewieLocationManager];
        [stewieLocationManager3 setDelegate:0];

        [(FMDSecureLocationMonitor *)self setStewieLocationManager:0];
      }
    }

    locationPublisher2 = [(FMDSecureLocationMonitor *)self locationPublisher];
    [locationPublisher2 processUpdatedLocation:v47];

    v19 = v65;
    locationsCopy = v66;
  }

  else
  {
    lastObject2 = sub_1000029E0();
    if (os_log_type_enabled(lastObject2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, lastObject2, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - anomalous condition - received locations but no publisher setup", buf, 2u);
    }
  }

  if ((v18 | v19) == 1)
  {
    configManager5 = [(FMDSecureLocationMonitor *)self configManager];
    lastObject3 = configManager5;
    if (v18)
    {
      lastObject2 = [configManager5 expirationTimeFor:kFMDSecureLocationModeLive];

      lastObject3 = [locationsCopy lastObject];
      [(FMDSecureLocationMonitor *)self _publishPeriodicShallowIfNeeded:lastObject3];
    }

    else
    {
      lastObject2 = [configManager5 expirationTimeFor:kFMDSecureLocationModeProactiveShallow];
    }

    if (lastObject2)
    {
      v63 = +[NSDate date];
      v64 = [v63 compare:lastObject2];

      if (v64 == 1)
      {
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_1001B95C4;
        v68[3] = &unk_1002CD868;
        v68[4] = self;
        [(FMDSecureLocationMonitor *)self stopLocationMonitor:v68];
      }
    }

    goto LABEL_57;
  }

LABEL_58:
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v6 = sub_1000029E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10022D920(errorCopy, v6);
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:kCLErrorDomain])
  {

    goto LABEL_8;
  }

  code = [errorCopy code];

  if (code)
  {
LABEL_8:
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001B97D4;
    v10[3] = &unk_1002CD868;
    v11 = errorCopy;
    [(FMDSecureLocationMonitor *)self stopLocationMonitor:v10];
    v9 = v11;
    goto LABEL_9;
  }

  v9 = sub_1000029E0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not stopping the SecureLocationMonitor service because the error is temporary.", buf, 2u);
  }

LABEL_9:
}

- (void)_scheduleXPCActivity
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = kFMDSecureLocationModeProactive;
  configManager = [(FMDSecureLocationMonitor *)self configManager];
  activeConfig = [configManager activeConfig];
  policyName = [activeConfig policyName];
  v8 = kFMDSecureLocationModeOwnerProactive;
  v9 = [policyName caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive];

  if (v9)
  {
    configManager2 = [(FMDSecureLocationMonitor *)self configManager];
    activeConfig2 = [configManager2 activeConfig];
    policyName2 = [activeConfig2 policyName];
    v8 = kFMDSecureLocationModeBackgroundProactive;
    v13 = [policyName2 caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive];

    if (v13)
    {
      goto LABEL_9;
    }

    v14 = sub_1000029E0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: _scheduleXPCActivity for %@", buf, 0xCu);
    }
  }

  else
  {
    v14 = sub_1000029E0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      goto LABEL_7;
    }
  }

  v15 = v8;
  v4 = v15;
LABEL_9:
  configManager3 = [(FMDSecureLocationMonitor *)self configManager];
  v17 = [configManager3 configForPolicy:v4];

  if (v17)
  {
    [v17 heartbeatPublish];
    v19 = v18;
    shouldWakeDevice = [v17 shouldWakeDevice];
  }

  else
  {
    shouldWakeDevice = 1;
    v19 = 1080;
  }

  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, v19);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, shouldWakeDevice);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_15_MIN);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v21 = sub_1000029E0();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v25 = v19;
    v26 = 1024;
    v27 = shouldWakeDevice;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Configuring Heartbeat XPC activity with duration %lld. shouldWake: %i", buf, 0x12u);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001B9C68;
  handler[3] = &unk_1002D0638;
  handler[4] = self;
  xpc_activity_register("com.apple.findmydevice.secureLocationsCheck", v3, handler);
  v22 = sub_1000029E0();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Scheduled XPC Activity for SecureLocations Hearbeat", buf, 2u);
  }
}

- (void)updateMonitorConfig:(id)config
{
  configCopy = config;
  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateMonitorConfig", v7, 2u);
  }

  configManager = [(FMDSecureLocationMonitor *)self configManager];
  [configManager updateConfigData:configCopy];
}

- (void)activeConfigChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Active Config Changed: %{public}@.", buf, 0xCu);
  }

  isRunning = [(FMDSecureLocationMonitor *)self isRunning];
  v7 = sub_1000029E0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isRunning)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Stopping and restarting after config change", buf, 2u);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001BA1C0;
    v9[3] = &unk_1002CE320;
    v10 = changedCopy;
    selfCopy = self;
    [(FMDSecureLocationMonitor *)self stopLocationMonitor:v9];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Not running. Starting it.", buf, 2u);
    }

    [(FMDSecureLocationMonitor *)self startLocationMonitor:&stru_1002D0C18];
  }
}

- (void)activeConfigExtended:(id)extended
{
  extendedCopy = extended;
  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    policyName = [extendedCopy policyName];
    v10 = 138412290;
    v11 = policyName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Active Config Extended %@", &v10, 0xCu);
  }

  if ([(FMDSecureLocationMonitor *)self isRunning])
  {
    v7 = sub_1000029E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: activeConfig already running", &v10, 2u);
    }

    policyName2 = [extendedCopy policyName];
    v9 = [policyName2 caseInsensitiveCompare:kFMDSecureLocationModeProactive];

    if (!v9)
    {
      [(FMDSecureLocationMonitor *)self publishOnDemandLocation:&stru_1002D0C58];
    }
  }

  else
  {
    [(FMDSecureLocationMonitor *)self startLocationMonitor:&stru_1002D0C38];
  }
}

- (void)forcePublishOndemandLocationIfNeeded:(id)needed
{
  neededCopy = needed;
  if (dispatch_get_specific("com.apple.findmydevice.forcePublishQueueKey") == "com.apple.findmydevice.forcePublishQueueKey")
  {
    [(FMDSecureLocationMonitor *)self publishOneTimeShallowLocation:neededCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    forcePushOndemandLocationQueue = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BA844;
    block[3] = &unk_1002CD288;
    objc_copyWeak(&v8, &location);
    v7 = neededCopy;
    dispatch_async(forcePushOndemandLocationQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)requestForcedShallowLocation
{
  forcePushOndemandLocationQueue = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
  dispatch_assert_queue_V2(forcePushOndemandLocationQueue);

  forceShallowLocationManager = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];

  if (forceShallowLocationManager)
  {
    forceShallowLocationManager2 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
    [forceShallowLocationManager2 stopUpdatingLocation];

    [(FMDSecureLocationMonitor *)self setForceShallowLocationManager:0];
  }

  forcePushOndemandLocationQueue2 = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
  v7 = [(FMDSecureLocationMonitor *)self _createLocationManagerWithQueue:forcePushOndemandLocationQueue2];
  [(FMDSecureLocationMonitor *)self setForceShallowLocationManager:v7];

  forceShallowLocationManager3 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
  [forceShallowLocationManager3 setDelegate:self];

  forceShallowLocationManager4 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
  [forceShallowLocationManager4 setDesiredAccuracy:kCLLocationAccuracyThreeKilometers];

  forceShallowLocationManager5 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
  [forceShallowLocationManager5 requestLocation];
}

- (void)publishOneTimeShallowLocation:(id)location
{
  locationCopy = location;
  forcePushOndemandLocationQueue = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
  dispatch_assert_queue_V2(forcePushOndemandLocationQueue);

  if (![(FMDSecureLocationMonitor *)self forcePushOndemandlocation])
  {
    goto LABEL_11;
  }

  v6 = _os_feature_enabled_impl();
  v7 = sub_1000029E0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v19 = 138412290;
      v20 = locationCopy;
      v9 = "SecureLocationMonitor: Sending force location to FML to publish %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v19, 0xCu);
    }
  }

  else if (v8)
  {
    v19 = 138412290;
    v20 = locationCopy;
    v9 = "SecureLocationMonitor: Sending force location to searchpartyd to publish %@";
    goto LABEL_7;
  }

  v10 = [CLLocationFMGeoLocatableAdapter alloc];
  v11 = +[NSDate now];
  v12 = [(CLLocationFMGeoLocatableAdapter *)v10 initWithLocation:locationCopy timeStamp:v11];

  v13 = [FMDSecureLocationInfo alloc];
  motionMonitor = [(FMDSecureLocationMonitor *)self motionMonitor];
  lastKnownDeviceMotion = [motionMonitor lastKnownDeviceMotion];
  v16 = [(FMDSecureLocationInfo *)v13 initWithLocation:v12 motion:lastKnownDeviceMotion publishReason:6];

  [(FMDSecureLocationMonitor *)self _publishLocation:v16];
  [(FMDSecureLocationMonitor *)self setForcePushOndemandlocation:0];
  forceShallowLocationManager = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];

  if (forceShallowLocationManager)
  {
    forceShallowLocationManager2 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
    [forceShallowLocationManager2 stopUpdatingLocation];

    [(FMDSecureLocationMonitor *)self setForceShallowLocationManager:0];
  }

LABEL_11:
}

@end