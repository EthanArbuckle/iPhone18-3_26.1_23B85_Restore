@interface FMDSecureLocationMonitor
- (FMDSecureLocationMonitor)init;
- (double)_clLocationAccuracyFromConfigValue:(id)a3;
- (id)_createLocationManager;
- (id)_createLocationManagerForStewie;
- (id)_createLocationManagerWithQueue:(id)a3;
- (void)_publishHeartbeatIfNeeded;
- (void)_publishLocation:(id)a3;
- (void)_publishLocationInfo:(id)a3 completion:(id)a4;
- (void)_publishPeriodicShallowIfNeeded:(id)a3;
- (void)_registerForOnDemandPublishRequest;
- (void)_registerForStewiePublishRequest;
- (void)_scheduleXPCActivity;
- (void)_unregisterFromOnDemandPublishRequest;
- (void)_unregisterFromStewiePublishRequest;
- (void)activeConfigChanged:(id)a3;
- (void)activeConfigExtended:(id)a3;
- (void)dealloc;
- (void)forcePublishOndemandLocationIfNeeded:(id)a3;
- (void)liteLocationPublishRequestNotification:(id)a3;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)publishLocationToStewie:(id)a3;
- (void)publishOnDemandLocation:(id)a3;
- (void)publishOneTimeShallowLocation:(id)a3;
- (void)requestForcedShallowLocation;
- (void)startLocationMonitor:(id)a3;
- (void)startLocationMonitorAfterRestart;
- (void)startLocationMonitorWithContext:(id)a3 completion:(id)a4;
- (void)startLocationMonitorWithContext:(id)a3 forcePublish:(BOOL)a4 completion:(id)a5;
- (void)stopLocationMonitor:(id)a3;
- (void)stopLocationMonitorWithContext:(id)a3 completion:(id)a4;
- (void)updateMonitorConfig:(id)a3;
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
    v11 = [*(v2 + 14) activeConfig];

    if (v11)
    {
      v12 = [FMDSecureLocationPublisher alloc];
      v13 = [*(v2 + 14) activeConfig];
      v14 = [(FMDSecureLocationPublisher *)v12 initWithConfiguration:v13];
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

- (void)startLocationMonitor:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)startLocationMonitorWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000029E0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "startLocationMonitorWithContext %@", &v10, 0xCu);
  }

  v9 = [(FMDSecureLocationMonitor *)self configManager];
  [v9 requestMonitorWithContext:v6];

  v7[2](v7, 0);
}

- (void)startLocationMonitorWithContext:(id)a3 forcePublish:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = sub_1000029E0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v8;
    v21 = 1024;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "startLocationMonitorWithContext %@ forcePublish %d", buf, 0x12u);
  }

  if (v6)
  {
    objc_initWeak(buf, self);
    v11 = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1001B6728;
    v16 = &unk_1002CD288;
    objc_copyWeak(&v18, buf);
    v17 = self;
    dispatch_async(v11, &v13);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v12 = [(FMDSecureLocationMonitor *)self configManager:v13];
  [v12 requestMonitorWithContext:v8];

  v9[2](v9, 0);
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
      v7 = [v5 mode];
      v9 = 138412290;
      v10 = v7;
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

- (void)stopLocationMonitorWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000029E0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "stopLocationMonitorWithContext %@", &v10, 0xCu);
  }

  v9 = [(FMDSecureLocationMonitor *)self configManager];
  [v9 removeMonitorWithContext:v6];

  v7[2](v7, 0);
}

- (void)stopLocationMonitor:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B6C4C;
  block[3] = &unk_1002CDEF0;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (double)_clLocationAccuracyFromConfigValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"best"])
  {
    v4 = kCLLocationAccuracyBest;
    v5 = @"kCLLocationAccuracyBest";
  }

  else if ([v3 isEqualToString:@"navigation"])
  {
    v4 = kCLLocationAccuracyBestForNavigation;
    v5 = @"kCLLocationAccuracyBestForNavigation";
  }

  else if ([v3 isEqualToString:@"10meters"])
  {
    v4 = kCLLocationAccuracyNearestTenMeters;
    v5 = @"kCLLocationAccuracyNearestTenMeters";
  }

  else
  {
    v4 = kCLLocationAccuracyHundredMeters;
    v5 = @"kCLLocationAccuracyHundredMeters";
    if (([v3 isEqualToString:@"100meters"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"1kilometer"])
      {
        v4 = kCLLocationAccuracyKilometer;
        v5 = @"kCLLocationAccuracyKilometer";
      }

      else if ([v3 isEqualToString:@"3kilometers"])
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
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: returning CL accuracy %@ for config value %@", &v8, 0x16u);
  }

  return v4;
}

- (void)_publishLocation:(id)a3
{
  v4 = a3;
  if ([v4 isLocationValid])
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
      v10 = [v4 locationInfo];
      v11 = [v10 latitude];
      [v11 doubleValue];
      v13 = v12;
      v14 = [v4 locationInfo];
      v15 = [v14 longitude];
      [v15 doubleValue];
      v17 = [v5 isRestrictedLocationWithLatitude:v13 longitude:v16];

      if (!v17)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1001B7470;
        v18[3] = &unk_1002CD478;
        v18[4] = self;
        v19 = v4;
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

- (void)_publishLocationInfo:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 convertToSecureLocationObject];
  if (_os_feature_enabled_impl())
  {
    v8 = [(FMDSecureLocationMonitor *)self findMyLocate];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001B77EC;
    v16[3] = &unk_1002D0B98;
    v9 = v17;
    v17[0] = v7;
    v17[1] = self;
    v10 = &v18;
    v18 = v6;
    v11 = v6;
    [v8 publishLocation:v7 completionHandler:v16];
  }

  else
  {
    v8 = [(FMDSecureLocationMonitor *)self secureLocationsManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001B7924;
    v13[3] = &unk_1002D0B98;
    v9 = v14;
    v14[0] = v7;
    v14[1] = self;
    v10 = &v15;
    v15 = v6;
    v12 = v6;
    [v8 publishLocation:v7 completion:v13];
  }
}

- (void)_publishHeartbeatIfNeeded
{
  v3 = [(FMDSecureLocationMonitor *)self lastPublishedTime];

  v4 = [(FMDSecureLocationMonitor *)self lastPublishedTime];
  [v4 timeIntervalSinceNow];
  v6 = v5;
  v7 = [(FMDSecureLocationMonitor *)self configManager];
  v8 = [v7 activeConfig];
  [v8 heartbeatPublish];
  v10 = v9;

  v11 = sub_1000029E0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v12 = @"NO";
    }

    else
    {
      v12 = @"YES";
    }

    v13 = [(FMDSecureLocationMonitor *)self lastPublishedTime];
    [v13 timeIntervalSinceNow];
    v15 = -v14;
    v16 = [(FMDSecureLocationMonitor *)self configManager];
    v17 = [v16 activeConfig];
    [v17 heartbeatPublish];
    *buf = 138412802;
    v22 = v12;
    v23 = 2048;
    v24 = v15;
    v25 = 2048;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Heartbeat isfirstpublish %@. Time since last publish %f configLimit %f", buf, 0x20u);
  }

  v19 = [(FMDSecureLocationMonitor *)self lastPublishedTime];

  if (!v19 || v10 <= -v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B7C64;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_publishPeriodicShallowIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(FMDSecureLocationMonitor *)self configManager];
  v6 = [v5 configForPolicy:kFMDSecureLocationModeProactiveShallow];

  v7 = +[NSDate date];
  v8 = [(FMDSecureLocationMonitor *)self lastShallowPublishTime];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = v8;
  v10 = [(FMDSecureLocationMonitor *)self lastShallowPublishTime];
  [v10 timeIntervalSinceNow];
  v12 = -v11;
  [v6 minTimeBetweenPublish];
  v14 = v13;

  if (v14 <= v12)
  {
LABEL_3:
    v15 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v4];
    v16 = [FMDSecureLocationInfo alloc];
    v17 = [(FMDSecureLocationMonitor *)self motionMonitor];
    v18 = [v17 lastKnownDeviceMotion];
    v19 = [(FMDSecureLocationInfo *)v16 initWithLocation:v15 motion:v18 publishReason:6];

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

- (void)publishOnDemandLocation:(id)a3
{
  v4 = a3;
  v5 = [(FMDSecureLocationMonitor *)self locationPublishQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B7FBC;
  v7[3] = &unk_1002CE228;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)publishLocationToStewie:(id)a3
{
  v4 = [(FMDSecureLocationMonitor *)self stewieLocationManager];

  if (!v4)
  {
    v5 = sub_1000029E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = @"stewie:";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: %@ No location manager - creating one", buf, 0xCu);
    }

    v6 = [(FMDSecureLocationMonitor *)self _createLocationManagerForStewie];
    [(FMDSecureLocationMonitor *)self setStewieLocationManager:v6];
  }

  v7 = [(FMDSecureLocationMonitor *)self stewieLocationManager];

  if (v7)
  {
    v8 = [(FMDSecureLocationMonitor *)self locationPublishQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B8498;
    block[3] = &unk_1002CD4C8;
    block[4] = self;
    dispatch_async(v8, block);
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

- (void)liteLocationPublishRequestNotification:(id)a3
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
  v3 = [(FMDSecureLocationMonitor *)self stewieLocationManagerQueue];
  v4 = [(FMDSecureLocationMonitor *)self _createLocationManagerWithQueue:v3];

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

- (id)_createLocationManagerWithQueue:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v6 = [[CLLocationManager alloc] initWithEffectiveBundle:v5 delegate:self onQueue:v4];

  return v6;
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v5 = a4;
  v6 = sub_1000029E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [v5 coordinate];
    v8 = v7;
    [v5 coordinate];
    v27 = 138412803;
    v28 = v5;
    v29 = 2049;
    v30 = v8;
    v31 = 2049;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "didVisit %@ %{private}f %{private}f", &v27, 0x20u);
  }

  v10 = [(FMDSecureLocationMonitor *)self locationPublisher];

  if (v10)
  {
    if ([v5 hasArrivalDate] && (objc_msgSend(v5, "hasDepartureDate") & 1) == 0)
    {
      v12 = [CLLocation alloc];
      [v5 coordinate];
      v14 = v13;
      v16 = v15;
      [v5 horizontalAccuracy];
      v18 = v17;
      v19 = +[NSDate date];
      v11 = [v12 initWithCoordinate:v19 altitude:v14 horizontalAccuracy:v16 verticalAccuracy:0.0 timestamp:{v18, 0.0}];

      v20 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v11];
      v21 = [FMDSecureLocationInfo alloc];
      v22 = [(FMDSecureLocationMonitor *)self motionMonitor];
      v23 = [v22 lastKnownDeviceMotion];
      v24 = [(FMDSecureLocationInfo *)v21 initWithLocation:v20 motion:v23 publishReason:2];

      v25 = +[FMSystemInfo sharedInstance];
      LODWORD(v23) = [v25 isInternalBuild];

      if (v23 && [FMPreferencesUtil BOOLForKey:@"PublishVisitImmediately" inDomain:kFMDNotBackedUpPrefDomain])
      {
        [(FMDSecureLocationMonitor *)self _publishLocation:v24];
      }

      v26 = [(FMDSecureLocationMonitor *)self locationPublisher];
      [v26 processUpdatedLocation:v24];
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

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000029E0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10022D838(v8);
  }

  if (![v7 count])
  {
    v21 = sub_1000029E0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor didUpdateLocations but location count is zero", buf, 2u);
    }

    goto LABEL_57;
  }

  v9 = [(FMDSecureLocationMonitor *)self bystanderLocationManager];

  if (v9 == v6)
  {
    v22 = v7;
    v23 = [(FMDSecureLocationMonitor *)self configManager];
    v24 = [v23 activeConfig];
    v25 = [v24 policyName];
    v26 = [v25 isEqualToString:kFMDSecureLocationModeOwnerProactive];

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
      v27 = [(FMDSecureLocationMonitor *)self configManager];
      v28 = [v27 activeConfig];
      v29 = [v28 policyName];
      v30 = [v29 isEqualToString:kFMDSecureLocationModeBackgroundProactive];

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

    v7 = v22;
  }

  else
  {
    v10 = [(FMDSecureLocationMonitor *)self slcLocationManager];

    if (v10 == v6)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v16 = 1;
      v20 = 1;
    }

    else
    {
      v11 = [(FMDSecureLocationMonitor *)self heartbeatLocationManager];

      if (v11 == v6)
      {
        v31 = [(FMDSecureLocationMonitor *)self configManager];
        v32 = [v31 activeConfig];
        v33 = [v32 policyName];
        v34 = v7;
        v35 = [v33 isEqualToString:kFMDSecureLocationModeOwnerProactive];

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v36 = v35 == 0;
        v7 = v34;
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
        v12 = [(FMDSecureLocationMonitor *)self ondemandLocationManager];

        if (v12 == v6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 5;
        }

        else
        {
          v13 = [(FMDSecureLocationMonitor *)self liveLocationManager];

          if (v13 == v6)
          {
            v16 = 0;
            v17 = 0;
            v19 = 0;
            v18 = 1;
            v20 = 7;
          }

          else
          {
            v14 = [(FMDSecureLocationMonitor *)self shallowLocationManager];

            if (v14 == v6)
            {
              [v6 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 1;
              v20 = 6;
            }

            else
            {
              v15 = [(FMDSecureLocationMonitor *)self stewieLocationManager];

              if (v15 == v6)
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

  v38 = [v7 lastObject];
  [(FMDSecureLocationMonitor *)self forcePublishOndemandLocationIfNeeded:v38];

  v39 = sub_1000029E0();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    sub_10022D87C(v20, v39);
  }

  v40 = [(FMDSecureLocationMonitor *)self locationPublisher];

  if (v40)
  {
    v41 = v17;
    v65 = v19;
    v66 = v7;
    v67 = v6;
    v42 = v18;
    v21 = [v7 lastObject];
    v43 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v21];
    v44 = [FMDSecureLocationInfo alloc];
    v45 = [(FMDSecureLocationMonitor *)self motionMonitor];
    v46 = [v45 lastKnownDeviceMotion];
    v47 = [(FMDSecureLocationInfo *)v44 initWithLocation:v43 motion:v46 publishReason:v20];

    if (v16)
    {
      v48 = [(FMDSecureLocationMonitor *)self configManager];
      v49 = [v48 configForPolicy:kFMDSecureLocationModeProactive];

      v50 = [v21 timestamp];
      [v50 timeIntervalSinceNow];
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
      v59 = [v58 isInternalBuild];

      if (v59 && [FMPreferencesUtil BOOLForKey:@"PublishSLCImmediately" inDomain:kFMDNotBackedUpPrefDomain])
      {
        [(FMDSecureLocationMonitor *)self _publishLocation:v47];
LABEL_38:
        v6 = v67;

        v7 = v66;
LABEL_57:

        goto LABEL_58;
      }

      v18 = v42;
      v6 = v67;
    }

    else
    {
      v18 = v42;
      v6 = v67;
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
        v56 = [(FMDSecureLocationMonitor *)self stewieLocationManager];
        [v56 stopUpdatingLocation];

        v57 = [(FMDSecureLocationMonitor *)self stewieLocationManager];
        [v57 setDelegate:0];

        [(FMDSecureLocationMonitor *)self setStewieLocationManager:0];
      }
    }

    v60 = [(FMDSecureLocationMonitor *)self locationPublisher];
    [v60 processUpdatedLocation:v47];

    v19 = v65;
    v7 = v66;
  }

  else
  {
    v21 = sub_1000029E0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor - anomalous condition - received locations but no publisher setup", buf, 2u);
    }
  }

  if ((v18 | v19) == 1)
  {
    v61 = [(FMDSecureLocationMonitor *)self configManager];
    v62 = v61;
    if (v18)
    {
      v21 = [v61 expirationTimeFor:kFMDSecureLocationModeLive];

      v62 = [v7 lastObject];
      [(FMDSecureLocationMonitor *)self _publishPeriodicShallowIfNeeded:v62];
    }

    else
    {
      v21 = [v61 expirationTimeFor:kFMDSecureLocationModeProactiveShallow];
    }

    if (v21)
    {
      v63 = +[NSDate date];
      v64 = [v63 compare:v21];

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

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = sub_1000029E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10022D920(v5, v6);
  }

  v7 = [v5 domain];
  if (![v7 isEqualToString:kCLErrorDomain])
  {

    goto LABEL_8;
  }

  v8 = [v5 code];

  if (v8)
  {
LABEL_8:
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001B97D4;
    v10[3] = &unk_1002CD868;
    v11 = v5;
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
  v5 = [(FMDSecureLocationMonitor *)self configManager];
  v6 = [v5 activeConfig];
  v7 = [v6 policyName];
  v8 = kFMDSecureLocationModeOwnerProactive;
  v9 = [v7 caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive];

  if (v9)
  {
    v10 = [(FMDSecureLocationMonitor *)self configManager];
    v11 = [v10 activeConfig];
    v12 = [v11 policyName];
    v8 = kFMDSecureLocationModeBackgroundProactive;
    v13 = [v12 caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive];

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
  v16 = [(FMDSecureLocationMonitor *)self configManager];
  v17 = [v16 configForPolicy:v4];

  if (v17)
  {
    [v17 heartbeatPublish];
    v19 = v18;
    v20 = [v17 shouldWakeDevice];
  }

  else
  {
    v20 = 1;
    v19 = 1080;
  }

  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, v19);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, v20);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_15_MIN);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v21 = sub_1000029E0();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v25 = v19;
    v26 = 1024;
    v27 = v20;
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

- (void)updateMonitorConfig:(id)a3
{
  v4 = a3;
  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateMonitorConfig", v7, 2u);
  }

  v6 = [(FMDSecureLocationMonitor *)self configManager];
  [v6 updateConfigData:v4];
}

- (void)activeConfigChanged:(id)a3
{
  v4 = a3;
  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecureLocationMonitor: Active Config Changed: %{public}@.", buf, 0xCu);
  }

  v6 = [(FMDSecureLocationMonitor *)self isRunning];
  v7 = sub_1000029E0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
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
    v10 = v4;
    v11 = self;
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

- (void)activeConfigExtended:(id)a3
{
  v4 = a3;
  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 policyName];
    v10 = 138412290;
    v11 = v6;
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

    v8 = [v4 policyName];
    v9 = [v8 caseInsensitiveCompare:kFMDSecureLocationModeProactive];

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

- (void)forcePublishOndemandLocationIfNeeded:(id)a3
{
  v4 = a3;
  if (dispatch_get_specific("com.apple.findmydevice.forcePublishQueueKey") == "com.apple.findmydevice.forcePublishQueueKey")
  {
    [(FMDSecureLocationMonitor *)self publishOneTimeShallowLocation:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BA844;
    block[3] = &unk_1002CD288;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)requestForcedShallowLocation
{
  v3 = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];

  if (v4)
  {
    v5 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
    [v5 stopUpdatingLocation];

    [(FMDSecureLocationMonitor *)self setForceShallowLocationManager:0];
  }

  v6 = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
  v7 = [(FMDSecureLocationMonitor *)self _createLocationManagerWithQueue:v6];
  [(FMDSecureLocationMonitor *)self setForceShallowLocationManager:v7];

  v8 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
  [v8 setDelegate:self];

  v9 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
  [v9 setDesiredAccuracy:kCLLocationAccuracyThreeKilometers];

  v10 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
  [v10 requestLocation];
}

- (void)publishOneTimeShallowLocation:(id)a3
{
  v4 = a3;
  v5 = [(FMDSecureLocationMonitor *)self forcePushOndemandLocationQueue];
  dispatch_assert_queue_V2(v5);

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
      v20 = v4;
      v9 = "SecureLocationMonitor: Sending force location to FML to publish %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v19, 0xCu);
    }
  }

  else if (v8)
  {
    v19 = 138412290;
    v20 = v4;
    v9 = "SecureLocationMonitor: Sending force location to searchpartyd to publish %@";
    goto LABEL_7;
  }

  v10 = [CLLocationFMGeoLocatableAdapter alloc];
  v11 = +[NSDate now];
  v12 = [(CLLocationFMGeoLocatableAdapter *)v10 initWithLocation:v4 timeStamp:v11];

  v13 = [FMDSecureLocationInfo alloc];
  v14 = [(FMDSecureLocationMonitor *)self motionMonitor];
  v15 = [v14 lastKnownDeviceMotion];
  v16 = [(FMDSecureLocationInfo *)v13 initWithLocation:v12 motion:v15 publishReason:6];

  [(FMDSecureLocationMonitor *)self _publishLocation:v16];
  [(FMDSecureLocationMonitor *)self setForcePushOndemandlocation:0];
  v17 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];

  if (v17)
  {
    v18 = [(FMDSecureLocationMonitor *)self forceShallowLocationManager];
    [v18 stopUpdatingLocation];

    [(FMDSecureLocationMonitor *)self setForceShallowLocationManager:0];
  }

LABEL_11:
}

@end