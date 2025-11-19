@interface CARDNDGeofencingObserver
- (BOOL)_shouldCreateGeofences;
- (BOOL)currentlyInRegion;
- (CARDNDGeofencingObserver)init;
- (CARDNDGeofencingObserver)initWithRoutineManager:(id)a3 locationManager:(id)a4 wiFiManager:(id)a5;
- (CARDNDGeofencingObserverDelegate)delegate;
- (id)_addCoordinatesToMonitoredRegion:(CLLocationCoordinate2D)a3 identifier:(id)a4 radius:(unint64_t)a5;
- (void)_checkWiFiPowerForGeofences;
- (void)_createGeofenceForLOI:(id)a3;
- (void)_createGeofencesAroundHomeAndWork;
- (void)_createGeofencesAroundPredictedLocationsFromLocation:(id)a3;
- (void)_postNotificationForGeofence;
- (void)_updateState:(int64_t)a3 forRegion:(id)a4;
- (void)dealloc;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didEnterRegion:(id)a4;
- (void)locationManager:(id)a3 didExitRegion:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)stopMonitoringLOIs;
@end

@implementation CARDNDGeofencingObserver

- (CARDNDGeofencingObserver)init
{
  v3 = [CARDNDGeofencingObserver alloc];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = qword_100107F28;
  v18 = qword_100107F28;
  if (!qword_100107F28)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100015868;
    v14[3] = &unk_1000DD660;
    v14[4] = &v15;
    sub_100015868(v14);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  v6 = objc_alloc_init(v4);
  v7 = [CLLocationManager alloc];
  v8 = CRAutomaticDNDLocationBundle();
  v9 = [v7 initWithEffectiveBundle:v8];
  v10 = objc_alloc_init(CRWiFiCarManager);
  v11 = [(CARDNDGeofencingObserver *)v3 initWithRoutineManager:v6 locationManager:v9 wiFiManager:v10];

  v12 = CarDNDWDLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Geofencing observer initialized", v14, 2u);
  }

  return v11;
}

- (CARDNDGeofencingObserver)initWithRoutineManager:(id)a3 locationManager:(id)a4 wiFiManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CARDNDGeofencingObserver;
  v11 = [(CARDNDGeofencingObserver *)&v19 init];
  v12 = v11;
  if (v11)
  {
    [(CARDNDGeofencingObserver *)v11 setRoutineManager:v8];
    [(CARDNDGeofencingObserver *)v12 setLocationManager:v9];
    v13 = [(CARDNDGeofencingObserver *)v12 locationManager];
    [v13 setDelegate:v12];

    v14 = [(CARDNDGeofencingObserver *)v12 locationManager];
    [v14 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];

    [(CARDNDGeofencingObserver *)v12 setWiFiManager:v10];
    v15 = +[NSArray array];
    monitoredRegions = v12->_monitoredRegions;
    v12->_monitoredRegions = v15;

    v12->_exitConfirmationOverride = 0;
    v12->_locationServicesEnabled = CRAutomaticDNDLocationServicesEnabled();
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v12 selector:"_checkWiFiPowerForGeofences" name:@"CRWiFiPowerChangedNotification" object:0];
  }

  return v12;
}

- (void)dealloc
{
  [(CARDNDGeofencingObserver *)self stopMonitoringLOIs];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CARDNDGeofencingObserver;
  [(CARDNDGeofencingObserver *)&v4 dealloc];
}

- (void)stopMonitoringLOIs
{
  v3 = CarDNDWDLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop fetching LOIs for geofencing", buf, 2u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CARDNDGeofencingObserver *)self monitoredRegions];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [(CARDNDGeofencingObserver *)self locationManager];
        v11 = [v9 region];
        [v10 stopMonitoringForRegion:v11];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v6);
  }

  [(CARDNDGeofencingObserver *)self setDidCreateGeofenceAroundStart:0];
  [(CARDNDGeofencingObserver *)self setShouldCreateGeofenceAroundStart:0];
  [(CARDNDGeofencingObserver *)self setIsCurrentlyInsideGeofence:0];
  [(CARDNDGeofencingObserver *)self setActivelyMonitoringGeofences:0];
  v12 = +[NSArray array];
  [(CARDNDGeofencingObserver *)self setMonitoredRegions:v12];

  v13 = CarDNDWDLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Geofences cleared", buf, 2u);
  }

  v14 = [(CARDNDGeofencingObserver *)self locationManager];
  [v14 stopMonitoringSignificantLocationChanges];

  v15 = [(CARDNDGeofencingObserver *)self locationManager];
  [v15 stopUpdatingLocation];

  [(CARDNDGeofencingObserver *)self _postNotificationForGeofence];
}

- (BOOL)currentlyInRegion
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CARDNDGeofencingObserver *)self monitoredRegions];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v11 + 1) + 8 * i) regionState] == 1)
        {
          v8 = CarDNDWDLogging();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            sub_100082190();
          }

          v7 = 1;
          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v2 = CarDNDWDLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Not in any monitored regions", v10, 2u);
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (id)_addCoordinatesToMonitoredRegion:(CLLocationCoordinate2D)a3 identifier:(id)a4 radius:(unint64_t)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = a4;
  v10 = objc_alloc_init(_CARDNDRegion);
  v11 = [[CLCircularRegion alloc] initWithCenter:v9 radius:latitude identifier:{longitude, a5}];
  [(_CARDNDRegion *)v10 setRegion:v11];

  v12 = CarDNDWDLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100082240(v12, latitude, longitude);
  }

  v13 = CarDNDWDLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Creating geofence for [%@]", &v19, 0xCu);
  }

  v14 = [(CARDNDGeofencingObserver *)self monitoredRegions];
  v15 = [v14 arrayByAddingObject:v10];
  [(CARDNDGeofencingObserver *)self setMonitoredRegions:v15];

  v16 = [(CARDNDGeofencingObserver *)self locationManager];
  v17 = [(_CARDNDRegion *)v10 region];
  [v16 startMonitoringForRegion:v17];

  return v10;
}

- (void)_postNotificationForGeofence
{
  if (![(CARDNDGeofencingObserver *)self exitConfirmationOverride])
  {
    if ([(CARDNDGeofencingObserver *)self isDNDActive])
    {
      v7 = [(CARDNDGeofencingObserver *)self wiFiManager];
      v8 = [v7 isPowered];

      if ((v8 & 1) == 0)
      {
        v3 = CarDNDWDLogging();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        v20 = 0;
        v4 = "Posting Exit Confirmation Enabled because WiFi is powered off.";
        v5 = &v20;
        goto LABEL_4;
      }

      if (![(CARDNDGeofencingObserver *)self locationServicesEnabled])
      {
        v3 = CarDNDWDLogging();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        v19 = 0;
        v4 = "Posting Exit Confirmation Enabled because Location Services are disabled";
        v5 = &v19;
        goto LABEL_4;
      }

      if (![(CARDNDGeofencingObserver *)self activelyMonitoringGeofences])
      {
        v3 = CarDNDWDLogging();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        v18 = 0;
        v11 = "Posting Exit Confirmation Disabled because we are not monitoring geofences";
        v12 = &v18;
        goto LABEL_15;
      }

      v9 = [(CARDNDGeofencingObserver *)self isCurrentlyInsideGeofence];
      v3 = CarDNDWDLogging();
      v10 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      if (!v9)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        LOWORD(v16) = 0;
        v4 = "Posting Exit Confirmation Enabled because we are not in a geofence";
        v5 = &v16;
        goto LABEL_4;
      }

      if (v10)
      {
        v17 = 0;
        v11 = "Posting Exit Confirmation Disabled because we are in a geofence";
        v12 = &v17;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
      }
    }

    else
    {
      v3 = CarDNDWDLogging();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        v11 = "Posting Exit Confirmation Disabled because the Driving mode is not active";
        v12 = v21;
        goto LABEL_15;
      }
    }

LABEL_16:
    v6 = &CARAutomaticDNDExitConfirmationDisabledNotification;
    goto LABEL_17;
  }

  v3 = CarDNDWDLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = "Posting Exit Confirmation Enabled because of override.";
    v5 = buf;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }

LABEL_5:
  v6 = &CARAutomaticDNDExitConfirmationEnabledNotification;
LABEL_17:

  v13 = *v6;
  v14 = CFStringCompare(*v6, CARAutomaticDNDExitConfirmationEnabledNotification, 0) == kCFCompareEqualTo;
  [(CARDNDGeofencingObserver *)self setExitConfirmationActive:v14, v16];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v13, 0, 0, 1u);
}

- (void)_updateState:(int64_t)a3 forRegion:(id)a4
{
  v5 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(CARDNDGeofencingObserver *)self monitoredRegions];
  v6 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v31;
    *&v7 = 138413058;
    v27 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v11 region];
        v13 = [v12 identifier];
        v14 = [v5 identifier];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v16 = CarDNDWDLogging();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v5 identifier];
            [v5 center];
            v25 = v24;
            [v5 center];
            *buf = v27;
            v35 = v23;
            v36 = 2048;
            v37 = v25;
            v38 = 2048;
            v39 = v26;
            v40 = 2048;
            v41 = a3;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Updating region state for [%@] lat/long: {%f, %f}: %ld", buf, 0x2Au);
          }

          v17 = CarDNDWDLogging();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v5 identifier];
            *buf = 138412546;
            v35 = v18;
            v36 = 2048;
            v37 = a3;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updating region state for geofence [%@]: %ld", buf, 0x16u);
          }

          [v11 setRegionState:a3];
          v19 = [(CARDNDGeofencingObserver *)self currentlyInRegion];
          if (v19 != [(CARDNDGeofencingObserver *)self isCurrentlyInsideGeofence])
          {
            [(CARDNDGeofencingObserver *)self setIsCurrentlyInsideGeofence:v19];
            [(CARDNDGeofencingObserver *)self _postNotificationForGeofence];
          }

          v20 = [(CARDNDGeofencingObserver *)self delegate];
          v21 = objc_opt_respondsToSelector();

          if (v21)
          {
            v22 = [(CARDNDGeofencingObserver *)self delegate];
            [v22 geofencingObserver:self didUpdateRegionState:a3];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v8);
  }
}

- (void)_createGeofenceForLOI:(id)a3
{
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = self;
  v5 = [(CARDNDGeofencingObserver *)self monitoredRegions];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v27 + 1) + 8 * i) region];
        v11 = [v10 identifier];
        v12 = [v4 identifier];
        v13 = [v12 UUIDString];
        v14 = [v11 isEqualToString:v13];

        if (v14)
        {

          v17 = CarDNDWDLogging();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_1000822C8();
          }

          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(CARDNDGeofencingObserver *)v26 monitoredRegions];
  v16 = [v15 count];

  if (v16 > 0x13)
  {
    v17 = CarDNDWDLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100082378();
    }
  }

  else
  {
    v17 = [v4 location];
    [v17 latitude];
    v19 = v18;
    v20 = [v4 location];
    [v20 longitude];
    v22 = CLLocationCoordinate2DMake(v19, v21);
    v23 = [v4 identifier];
    v24 = [v23 UUIDString];
    v25 = [(CARDNDGeofencingObserver *)v26 _addCoordinatesToMonitoredRegion:v24 identifier:400 radius:v22.latitude, v22.longitude];
  }

LABEL_15:
}

- (void)_createGeofencesAroundPredictedLocationsFromLocation:(id)a3
{
  v4 = a3;
  v5 = [(CARDNDGeofencingObserver *)self routineManager];
  v6 = +[NSDate date];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001441C;
  v7[3] = &unk_1000DD7C0;
  v7[4] = self;
  [v5 fetchNextPredictedLocationsOfInterestFromLocation:v4 startDate:v6 timeInterval:v7 withHandler:28800.0];
}

- (void)_createGeofencesAroundHomeAndWork
{
  v3 = CarDNDWDLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching home LOI", buf, 2u);
  }

  v4 = [(CARDNDGeofencingObserver *)self routineManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000147A8;
  v8[3] = &unk_1000DD7C0;
  v8[4] = self;
  [v4 fetchLocationsOfInterestOfType:0 withHandler:v8];

  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching work LOI", buf, 2u);
  }

  v6 = [(CARDNDGeofencingObserver *)self routineManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000149F4;
  v7[3] = &unk_1000DD7C0;
  v7[4] = self;
  [v6 fetchLocationsOfInterestOfType:1 withHandler:v7];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014CB4;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  [a4 lastObject];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014E68;
  v7 = v6[3] = &unk_1000DD580;
  v8 = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4
{
  v4 = a4;
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100082428();
  }

  v6 = CarDNDWDLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 identifier];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Begin monitoring for [%@]", &v8, 0xCu);
  }
}

- (void)locationManager:(id)a3 didEnterRegion:(id)a4
{
  v5 = a4;
  v6 = CarDNDWDLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000824B0();
  }

  v7 = CarDNDWDLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 identifier];
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Entered region for [%@]", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100015294;
  v10[3] = &unk_1000DD580;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)locationManager:(id)a3 didExitRegion:(id)a4
{
  v5 = a4;
  v6 = CarDNDWDLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100082538();
  }

  v7 = CarDNDWDLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 identifier];
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Exited region for [%@]", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100015404;
  v10[3] = &unk_1000DD580;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v7 = a5;
  v8 = CarDNDWDLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 identifier];
    *buf = 138412546;
    v15 = v9;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Determined state for [%@]: %ld", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015564;
  block[3] = &unk_1000DD7E8;
  v12 = v7;
  v13 = a4;
  block[4] = self;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1000825C0(v4, v5);
  }
}

- (BOOL)_shouldCreateGeofences
{
  if ([(CARDNDGeofencingObserver *)self locationServicesEnabled])
  {
    v3 = [(CARDNDGeofencingObserver *)self wiFiManager];
    v4 = [v3 isPowered];

    if (v4)
    {
      return 1;
    }

    v6 = CarDNDWDLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = "WiFi is powered off.";
      v8 = &v9;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = CarDNDWDLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "Location services are not enabled.";
      v8 = &v10;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  return 0;
}

- (void)_checkWiFiPowerForGeofences
{
  v3 = [(CARDNDGeofencingObserver *)self wiFiManager];
  v4 = [v3 isPowered];

  if ((v4 & 1) == 0)
  {

    [(CARDNDGeofencingObserver *)self stopMonitoringLOIs];
  }
}

- (CARDNDGeofencingObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end