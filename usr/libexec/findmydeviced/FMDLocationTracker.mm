@interface FMDLocationTracker
+ (id)stringForLocationTrackerType:(unsigned __int8)a3;
- (FMDLocationTrackerDelegate)delegate;
- (id)newLocationManager;
- (void)_loadTrackingInfo;
- (void)_startLocateCycleWithLocatorPublishingBlock:(id)a3 andStoppedLocatingBlock:(id)a4;
- (void)_startTracking;
- (void)_stopFallbackRetryTimer;
- (void)_stopTracking;
- (void)_storeTrackingInfo;
- (void)_updateFallbackRetryTimer;
- (void)_updateFallbackRetryTimerUsingLocation:(id)a3;
- (void)actOnTrackedLocationsUsingBlock:(id)a3;
- (void)dealloc;
- (void)deleteLocationTrackingInfoAndStopTracking;
- (void)deregisterDelegate:(id)a3;
- (void)didAddNewTrackedLocation:(id)a3;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)registerDelegate:(id)a3;
@end

@implementation FMDLocationTracker

+ (id)stringForLocationTrackerType:(unsigned __int8)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 bundleIdentifier];
    v3 = [NSString stringWithFormat:@"%@.%@", v5, @"lostmodetracks"];
  }

  return v3;
}

- (void)dealloc
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10022C990(self);
  }

  v4 = [(FMDLocationTracker *)self locator];
  [v4 stopLocator];

  [(FMDLocationTracker *)self _stopFallbackRetryTimer];
  v5 = [(FMDLocationTracker *)self locManager];
  [v5 setDelegate:0];

  v6.receiver = self;
  v6.super_class = FMDLocationTracker;
  [(FMDLocationTracker *)&v6 dealloc];
}

- (void)registerDelegate:(id)a3
{
  [(FMDLocationTracker *)self setDelegate:a3];
  if ([(FMDLocationTracker *)self isTrackingOn])
  {

    [(FMDLocationTracker *)self _startTracking];
  }
}

- (void)deregisterDelegate:(id)a3
{
  v4 = a3;
  v5 = [(FMDLocationTracker *)self delegate];

  if (!v5 || v5 == v4)
  {
    [(FMDLocationTracker *)self _stopTracking];
  }

  [(FMDLocationTracker *)self setDelegate:0];
}

- (void)deleteLocationTrackingInfoAndStopTracking
{
  [(FMDLocationTracker *)self _stopTracking];
  [(FMDLocationTracker *)self setTrackingStatus:400];
  [(FMDLocationTracker *)self _storeTrackingInfo];

  [(FMDLocationTracker *)self _loadTrackingInfo];
}

- (void)didAddNewTrackedLocation:(id)a3
{
  v4 = a3;
  [(FMDLocationTracker *)self _updateFallbackRetryTimer];
  v5 = [(FMDLocationTracker *)self delegate];
  [v5 didAddNewTrackedLocation:v4];
}

- (void)actOnTrackedLocationsUsingBlock:(id)a3
{
  v5 = a3;
  if ([(FMDLocationTracker *)self isTrackingOn])
  {
    v4 = [(FMDLocationTracker *)self trackedLocationsStore];
    [v4 actOnTrackedLocationsUsingBlock:v5];
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [v7 lastObject];
    if (![(FMDLocationTracker *)self isTrackingOn])
    {
      v13 = [(FMDLocationTracker *)self delegate];
      v14 = [v13 fm_logID];

      v15 = sub_100002880();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_10022EFBC();
      }

      [(FMDLocationTracker *)self _stopTracking];
      goto LABEL_12;
    }

    v9 = sub_100002880();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F030(v8);
    }

    v10 = [(FMDLocationTracker *)self locator];
    v11 = v10 == 0;

    if (v11)
    {
      v16 = sub_10017D9A8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v8 type];
        [v8 horizontalAccuracy];
        v19 = v18;
        [v8 coordinate];
        v21 = v20;
        [v8 coordinate];
        *buf = 67109889;
        *v53 = v17;
        *&v53[4] = 2049;
        *&v53[6] = v19;
        v54 = 2049;
        v55 = v21;
        v56 = 2049;
        v57 = v22;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Processing SLC location with Position Type = %u, Accuracy = %{private}f, Latitude = %{private}f, Longitude = %{private}f", buf, 0x26u);
      }

      [v8 horizontalAccuracy];
      if (v23 >= 0.0)
      {
        v26 = [(FMDLocationTracker *)self locateParams];
        v27 = [v26 objectForKeyedSubscript:@"validityDuration"];
        [v27 doubleValue];
        v29 = v28;

        v30 = +[NSDate date];
        [v30 timeIntervalSinceReferenceDate];
        v32 = v31;

        v33 = [v8 timestamp];
        [v33 timeIntervalSinceReferenceDate];
        v35 = v34;

        if (v32 - v35 <= v29)
        {
          [v8 horizontalAccuracy];
          v37 = v36;
          [(FMDLocationTracker *)self minSLCAccuracyThreshold];
          if (v37 <= v38)
          {
            [(FMDLocationTracker *)self setLastLocation:v8];
            v45 = [[CLLocationFMGeoLocatableAdapter alloc] initWithLocation:v8];
            v46 = [(FMDLocationTracker *)self trackedLocationsStore];
            [v46 recordLocation:v45 ofType:1];
          }

          else
          {
            v39 = sub_100002880();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              sub_10022F0FC(v39);
            }

            objc_initWeak(&location, self);
            v49[0] = _NSConcreteStackBlock;
            v49[1] = 3221225472;
            v49[2] = sub_1001D98C4;
            v49[3] = &unk_1002D1230;
            objc_copyWeak(&v50, &location);
            v40 = objc_retainBlock(v49);
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_1001D99BC;
            v47[3] = &unk_1002CD518;
            objc_copyWeak(&v48, &location);
            v41 = objc_retainBlock(v47);
            [(FMDLocationTracker *)self _startLocateCycleWithLocatorPublishingBlock:v40 andStoppedLocatingBlock:v41];
            v42 = sub_100002880();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v43 = [(FMDLocationTracker *)self locator];
              v44 = [v43 fm_logID];
              sub_10022F140(v44, buf, v42, v43);
            }

            objc_destroyWeak(&v48);
            objc_destroyWeak(&v50);
            objc_destroyWeak(&location);
          }

          goto LABEL_12;
        }

        v24 = sub_100002880();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v53 = v29;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SLC location is older than %.0f seconds. Ignoring this", buf, 0xCu);
        }
      }

      else
      {
        v24 = sub_100002880();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          [v8 horizontalAccuracy];
          *buf = 134217984;
          *v53 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Invalid SLC location found with horizontalAccuracy of %f", buf, 0xCu);
        }
      }
    }

    else
    {
      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10022F0B8(v12);
      }
    }

LABEL_12:
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10022F2D8();
  }
}

- (id)newLocationManager
{
  if ([(FMDLocationTracker *)self locationTrackerType])
  {
    return 0;
  }

  v3 = +[FMDLocationManagerFactory sharedInstance];
  v4 = [v3 newLocationManager];

  return v4;
}

- (void)_startTracking
{
  if (+[FMDPreferencesMgr dontUseSLC])
  {
    v3 = sub_100002880();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SLC has been forcibly disabled. Not starting tracking.", &v13, 2u);
    }
  }

  else
  {
    v4 = [(FMDLocationTracker *)self newLocationManager];
    [(FMDLocationTracker *)self setLocManager:v4];

    v5 = [(FMDLocationTracker *)self locManager];
    [v5 setDelegate:self];

    v6 = [(FMDLocationTracker *)self locManager];
    [v6 setDistanceFilter:kCLDistanceFilterNone];

    v7 = [(FMDLocationTracker *)self locManager];
    [v7 startMonitoringSignificantLocationChanges];

    v3 = [(FMDLocationTracker *)self delegate];
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 fm_logID];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enabling SLC for %@", &v13, 0xCu);
    }

    v10 = +[NSDate date];
    [(FMDLocationTracker *)self setLastFallbackRetryTime:v10];

    [(FMDLocationTracker *)self _updateFallbackRetryTimer];
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v3 fm_logID];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Tracking is now active for %@", &v13, 0xCu);
    }
  }
}

- (void)_stopTracking
{
  v3 = [(FMDLocationTracker *)self delegate];
  v4 = [(FMDLocationTracker *)self locManager];

  if (v4)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 fm_logID];
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disabling SLC for %@, if it was previously enabled", &v14, 0xCu);
    }

    v7 = [(FMDLocationTracker *)self locManager];
    [v7 stopMonitoringSignificantLocationChanges];

    v8 = [(FMDLocationTracker *)self locManager];
    [v8 setDelegate:0];

    [(FMDLocationTracker *)self setLocManager:0];
  }

  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v3 fm_logID];
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tracking is now inactive for %@", &v14, 0xCu);
  }

  [(FMDLocationTracker *)self _stopFallbackRetryTimer];
  [(FMDLocationTracker *)self setLastFallbackRetryTime:0];
  v11 = [(FMDLocationTracker *)self trackedLocationsStore];
  [v11 deleteAllTrackedLocations];

  v12 = [(FMDLocationTracker *)self locator];

  if (v12)
  {
    v13 = [(FMDLocationTracker *)self locator];
    [v13 stopLocator];

    [(FMDLocationTracker *)self setLocator:0];
  }

  [(FMDLocationTracker *)self setLastLocation:0];
}

- (void)_startLocateCycleWithLocatorPublishingBlock:(id)a3 andStoppedLocatingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9FF8;
  block[3] = &unk_1002D1280;
  objc_copyWeak(&v13, &location);
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_stopFallbackRetryTimer
{
  v3 = [(FMDLocationTracker *)self fallbackRetryTimer];

  if (v3)
  {
    v4 = [(FMDLocationTracker *)self fallbackRetryTimer];
    [(FMDLocationTracker *)self setFallbackRetryTimer:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DA740;
    block[3] = &unk_1002CD4C8;
    v9 = v4;
    v5 = v4;
    dispatch_async(&_dispatch_main_q, block);
    v6 = +[FMXPCTransactionManager sharedInstance];
    v7 = [(FMDLocationTracker *)self fallbackTimerXPCTransactionName];
    [v6 endTransaction:v7];
  }
}

- (void)_updateFallbackRetryTimer
{
  v3 = [(FMDLocationTracker *)self fallbackRetryTimer];

  v4 = [(FMDLocationTracker *)self trackedLocationsStore];
  v8 = [v4 lastLocation];

  [(FMDLocationTracker *)self _updateFallbackRetryTimerUsingLocation:v8];
  v5 = [(FMDLocationTracker *)self fallbackRetryTimer];

  if (v5)
  {
    if (v3)
    {
      goto LABEL_7;
    }

    v6 = +[FMXPCTransactionManager sharedInstance];
    v7 = [(FMDLocationTracker *)self fallbackTimerXPCTransactionName];
    [v6 beginTransaction:v7];
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v6 = +[FMXPCTransactionManager sharedInstance];
    v7 = [(FMDLocationTracker *)self fallbackTimerXPCTransactionName];
    [v6 endTransaction:v7];
  }

LABEL_7:
}

- (void)_updateFallbackRetryTimerUsingLocation:(id)a3
{
  v4 = a3;
  v5 = [(FMDLocationTracker *)self fallbackRetryTimer];
  if (v5)
  {
    [(FMDLocationTracker *)self setFallbackRetryTimer:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DAE88;
    block[3] = &unk_1002CD4C8;
    v41 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }

  [(FMDLocationTracker *)self periodicCheckInterval];
  v7 = v6 > 0.0;
  v8 = sub_100002880();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking whether I need to start a SLC fallback for tracked locations", buf, 2u);
    }

    v10 = [(FMDLocationTracker *)self locator];
    if (v10)
    {
      v11 = [(FMDLocationTracker *)self locator];
      v12 = [v11 locatorRunning];

      if (v12)
      {
        v8 = sub_100002880();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = "A locate cycle is already in progress. Not starting the fallback now.";
          v14 = v8;
          v15 = 2;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    v8 = [v4 timeStamp];
    v32 = [(FMDLocationTracker *)self lastFallbackRetryTime];
    if (v8)
    {
      if (v32)
      {
        v31 = [v8 laterDate:?];
LABEL_19:
        v18 = sub_100002880();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [(FMDLocationTracker *)self periodicCheckInterval];
          *buf = 138413058;
          v43 = v32;
          v44 = 2112;
          v45 = v8;
          v46 = 2112;
          v47 = v31;
          v48 = 2048;
          v49 = v30;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "lastFallbackRetryTime:%@ lastLocationTime:%@ latestRetryTime:%@ periodicCheckInterval:%f", buf, 0x2Au);
        }

        [(FMDLocationTracker *)self periodicCheckInterval];
        v19 = [v31 dateByAddingTimeInterval:?];
        v20 = +[NSDate date];
        v21 = [v20 compare:v19] == -1;
        v22 = sub_100002880();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          if (v23)
          {
            *buf = 138412290;
            v43 = v19;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Scheduling SLC fallback of tracked locations for %@", buf, 0xCu);
          }

          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_1001DAFF4;
          v33[3] = &unk_1002CD4C8;
          v34 = [[PCPersistentTimer alloc] initWithFireDate:v19 serviceIdentifier:@"com.apple.icloud.findmydeviced.trackingFallbackRetry" target:self selector:"_updateFallbackRetryTimer" userInfo:0];
          v29 = v34;
          dispatch_async(&_dispatch_main_q, v33);
          [(FMDLocationTracker *)self setFallbackRetryTimer:v29];
        }

        else
        {
          if (v23)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Time to do a SLC fallback for tracked locations", buf, 2u);
          }

          [(FMDLocationTracker *)self setLastFallbackRetryTime:v20];
          objc_initWeak(&location, self);
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_1001DAE90;
          v37[3] = &unk_1002D1230;
          objc_copyWeak(&v38, &location);
          v24 = objc_retainBlock(v37);
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1001DAF88;
          v35[3] = &unk_1002CD518;
          objc_copyWeak(&v36, &location);
          v25 = objc_retainBlock(v35);
          [(FMDLocationTracker *)self _startLocateCycleWithLocatorPublishingBlock:v24 andStoppedLocatingBlock:v25];
          v26 = sub_100002880();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = [(FMDLocationTracker *)self locator];
            v28 = [v27 fm_logID];
            sub_10022F34C(v28, buf, v26, v27);
          }

          objc_destroyWeak(&v36);
          objc_destroyWeak(&v38);
          objc_destroyWeak(&location);
        }

        goto LABEL_31;
      }

      v17 = v8;
    }

    else
    {
      v17 = v32;
    }

    v31 = v17;
    goto LABEL_19;
  }

  if (v9)
  {
    [(FMDLocationTracker *)self periodicCheckInterval];
    *buf = 134217984;
    v43 = v16;
    v13 = "SLC fallback is disabled (interval is %f)";
    v14 = v8;
    v15 = 12;
    goto LABEL_12;
  }

LABEL_31:
}

- (void)_storeTrackingInfo
{
  if ([(FMDLocationTracker *)self trackingStatus]== 400)
  {
    v3 = 0;
  }

  else
  {
    v17[0] = @"minSLCAccuracyThreshold";
    [(FMDLocationTracker *)self minSLCAccuracyThreshold];
    v16 = [NSNumber numberWithDouble:?];
    v18[0] = v16;
    v17[1] = @"locateParams";
    v4 = [(FMDLocationTracker *)self locateParams];
    v15 = v4;
    v5 = &__NSDictionary0__struct;
    if (v4)
    {
      v5 = v4;
    }

    v18[1] = v5;
    v17[2] = @"trackingStatus";
    v14 = [NSNumber numberWithInteger:[(FMDLocationTracker *)self trackingStatus]];
    v18[2] = v14;
    v17[3] = @"trackNotifyEnabled";
    v6 = [NSNumber numberWithBool:[(FMDLocationTracker *)self trackNotifyEnabled]];
    v18[3] = v6;
    v17[4] = @"maxLocations";
    v7 = [NSNumber numberWithInteger:[(FMDLocationTracker *)self maxLocations]];
    v18[4] = v7;
    v17[5] = @"keepAlive";
    [(FMDLocationTracker *)self keepAlive];
    v8 = [NSNumber numberWithDouble:?];
    v18[5] = v8;
    v17[6] = @"periodicCheckInterval";
    [(FMDLocationTracker *)self periodicCheckInterval];
    v9 = [NSNumber numberWithDouble:?];
    v18[6] = v9;
    v17[7] = @"minDistanceBetweenLocations";
    [(FMDLocationTracker *)self minDistanceBetweenLocations];
    v10 = [NSNumber numberWithDouble:?];
    v18[7] = v10;
    v17[8] = @"minTimeBetweenLocations";
    [(FMDLocationTracker *)self minTimeBetweenLocations];
    v11 = [NSNumber numberWithDouble:?];
    v18[8] = v11;
    v17[9] = @"minTimeBetweenServerCalls";
    [(FMDLocationTracker *)self minTimeBetweenServerCalls];
    v12 = [NSNumber numberWithDouble:?];
    v18[9] = v12;
    v3 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:10];
  }

  v13 = [FMDLocationTracker stringForLocationTrackerType:[(FMDLocationTracker *)self locationTrackerType]];
  [FMDPreferencesMgr setTrackingInfo:v3 forType:v13];
}

- (void)_loadTrackingInfo
{
  v3 = [FMDLocationTracker stringForLocationTrackerType:[(FMDLocationTracker *)self locationTrackerType]];
  v14 = [FMDPreferencesMgr trackingInfoForType:v3];

  v4 = [v14 objectForKeyedSubscript:@"minSLCAccuracyThreshold"];
  [v4 doubleValue];
  [(FMDLocationTracker *)self setMinSLCAccuracyThreshold:?];

  v5 = [v14 objectForKeyedSubscript:@"locateParams"];
  [(FMDLocationTracker *)self setLocateParams:v5];

  v6 = [v14 objectForKeyedSubscript:@"trackingStatus"];
  -[FMDLocationTracker setTrackingStatus:](self, "setTrackingStatus:", [v6 integerValue]);

  v7 = [v14 objectForKeyedSubscript:@"trackNotifyEnabled"];
  -[FMDLocationTracker setTrackNotifyEnabled:](self, "setTrackNotifyEnabled:", [v7 BOOLValue]);

  v8 = [v14 objectForKeyedSubscript:@"maxLocations"];
  -[FMDLocationTracker setMaxLocations:](self, "setMaxLocations:", [v8 integerValue]);

  v9 = [v14 objectForKeyedSubscript:@"keepAlive"];
  [v9 doubleValue];
  [(FMDLocationTracker *)self setKeepAlive:?];

  v10 = [v14 objectForKeyedSubscript:@"periodicCheckInterval"];
  [v10 doubleValue];
  [(FMDLocationTracker *)self setPeriodicCheckInterval:?];

  v11 = [v14 objectForKeyedSubscript:@"minDistanceBetweenLocations"];
  [v11 doubleValue];
  [(FMDLocationTracker *)self setMinDistanceBetweenLocations:?];

  v12 = [v14 objectForKeyedSubscript:@"minTimeBetweenLocations"];
  [v12 doubleValue];
  [(FMDLocationTracker *)self setMinTimeBetweenLocations:?];

  v13 = [v14 objectForKeyedSubscript:@"minTimeBetweenServerCalls"];
  [v13 doubleValue];
  [(FMDLocationTracker *)self setMinTimeBetweenServerCalls:?];

  if (![(FMDLocationTracker *)self trackingStatus])
  {
    [(FMDLocationTracker *)self setTrackingStatus:400];
  }
}

- (FMDLocationTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end