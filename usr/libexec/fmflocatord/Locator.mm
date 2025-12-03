@interface Locator
- (Locator)initWithLocationManager:(id)manager;
- (void)_discardLocationManager;
- (void)_processStopTimeout:(id)timeout;
- (void)_publishResultLocation:(id)location;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)startLocator;
- (void)stopLocator;
@end

@implementation Locator

- (void)dealloc
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100036848(self);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006570;
  v10[3] = &unk_10005D2B0;
  v10[4] = self;
  v4 = objc_retainBlock(v10);
  if (+[NSThread isMainThread])
  {
    (v4[2])(v4);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000065DC;
    block[3] = &unk_10005D2D8;
    v9 = v4;
    dispatch_sync(&_dispatch_main_q, block);
  }

  finishedTimer = [(Locator *)self finishedTimer];
  [finishedTimer invalidate];

  publishTimer = [(Locator *)self publishTimer];
  [publishTimer invalidate];

  v7.receiver = self;
  v7.super_class = Locator;
  [(Locator *)&v7 dealloc];
}

- (Locator)initWithLocationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = Locator;
  v6 = [(Locator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 40) = xmmword_100044C10;
    *(v6 + 24) = xmmword_100044C20;
    *(v6 + 56) = xmmword_100044C30;
    objc_storeStrong(v6 + 12, manager);
    [(CLLocationManager *)v7->_locManager setDelegate:v7];
    [(CLLocationManager *)v7->_locManager setDesiredAccuracy:v7->_desiredAccuracy];
    [(CLLocationManager *)v7->_locManager setDistanceFilter:kCLDistanceFilterNone];
  }

  return v7;
}

- (void)startLocator
{
  if (![(Locator *)self locatorRunning])
  {
    v3 = +[PowerMgr sharedInstance];
    powerAssertionName = [(Locator *)self powerAssertionName];
    [v3 powerAssertionEnableWithReason:powerAssertionName timeout:(self->_duration + 2.0)];

    v5 = +[FMXPCTransactionManager sharedInstance];
    xpcTransactionName = [(Locator *)self xpcTransactionName];
    [v5 beginTransaction:xpcTransactionName];

    [(Locator *)self setFinished:0];
    [(Locator *)self setLocatorRunning:1];
    self->_launchTime = CFAbsoluteTimeGetCurrent();
    self->_currentDecayMultiplier = 0;
    self->_numPublished = 0;
    self->_currentThreshold = self->_startThreshold;
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_processStopTimeout:" selector:0 userInfo:0 repeats:self->_duration];
    [(Locator *)self setFinishedTimer:v7];

    v8 = sub_100002830();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(Locator *)self fm_logID];
      v10 = 138412290;
      v11 = fm_logID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ Starting location service now", &v10, 0xCu);
    }

    [(CLLocationManager *)self->_locManager startUpdatingLocation];
  }
}

- (void)stopLocator
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(Locator *)self fm_logID];
    v14 = 138412290;
    v15 = fm_logID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Stopping location service now", &v14, 0xCu);
  }

  [(Locator *)self setLocatorRunning:0];
  locManager = [(Locator *)self locManager];

  if (locManager)
  {
    [(Locator *)self _discardLocationManager];
  }

  finishedTimer = [(Locator *)self finishedTimer];

  if (finishedTimer)
  {
    finishedTimer2 = [(Locator *)self finishedTimer];
    [finishedTimer2 invalidate];

    [(Locator *)self setFinishedTimer:0];
  }

  publishTimer = [(Locator *)self publishTimer];

  if (publishTimer)
  {
    publishTimer2 = [(Locator *)self publishTimer];
    [publishTimer2 invalidate];

    [(Locator *)self setPublishTimer:0];
  }

  self->_numPublished = 0;
  [(Locator *)self setLastLocation:0];
  [(Locator *)self setLocationForPublish:0];
  if (self->_stoppedLocatorBlock)
  {
    dispatch_async(&_dispatch_main_q, self->_stoppedLocatorBlock);
  }

  v10 = +[PowerMgr sharedInstance];
  powerAssertionName = [(Locator *)self powerAssertionName];
  [v10 powerAssertionDisableWithReason:powerAssertionName];

  v12 = +[FMXPCTransactionManager sharedInstance];
  xpcTransactionName = [(Locator *)self xpcTransactionName];
  [v12 endTransaction:xpcTransactionName];
}

- (void)_discardLocationManager
{
  locManager = [(Locator *)self locManager];

  if (locManager)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006B80;
    block[3] = &unk_10005D2B0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    lastObject = [locationsCopy lastObject];
    v9 = lastObject;
    if (!lastObject)
    {
LABEL_39:

      goto LABEL_40;
    }

    v10 = +[CommonUtil stringForLocationType:](CommonUtil, "stringForLocationType:", [lastObject type]);
    v11 = sub_10001BA58();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID = [(Locator *)self fm_logID];
      [v9 horizontalAccuracy];
      v14 = v13;
      [v9 coordinate];
      v16 = v15;
      [v9 coordinate];
      v18 = v17;
      timestamp = [v9 timestamp];
      *buf = 138413571;
      v95 = fm_logID;
      v96 = 2112;
      v97 = v10;
      v98 = 2049;
      v99 = v14;
      v100 = 2049;
      v101 = v16;
      v102 = 2049;
      v103 = v18;
      v104 = 2112;
      v105 = timestamp;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Received location with Position Type = %@, Accuracy = %{private}f, Latitude = %{private}f, Longitude = %{private}f, Timestamp = %@", buf, 0x3Eu);
    }

    if (![(Locator *)self locatorRunning])
    {
      v27 = sub_100002830();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_1000368D0(self);
      }

      [managerCopy setDelegate:0];
      [managerCopy stopUpdatingLocation];
      locManager = [(Locator *)self locManager];

      if (locManager == managerCopy)
      {
        [(Locator *)self _discardLocationManager];
      }

      goto LABEL_38;
    }

    [v9 horizontalAccuracy];
    if (v20 < 0.0)
    {
      v21 = sub_100002830();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID2 = [(Locator *)self fm_logID];
        [v9 horizontalAccuracy];
        *buf = 138412546;
        v95 = fm_logID2;
        v96 = 2048;
        v97 = v23;
        v24 = "%@ Location has a -ve horizontalAccuracy (%.2f). Not using it";
LABEL_9:
        v25 = v21;
        v26 = 22;
LABEL_36:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);

        goto LABEL_37;
      }

      goto LABEL_37;
    }

    [v9 horizontalAccuracy];
    if (v29 > self->_startThreshold)
    {
      v21 = sub_100002830();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID3 = [(Locator *)self fm_logID];
        [v9 horizontalAccuracy];
        startThreshold = self->_startThreshold;
        *buf = 138412802;
        v95 = fm_logID3;
        v96 = 2048;
        v97 = v32;
        v98 = 2048;
        v99 = *&startThreshold;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ Location has a horizontalAccuracy of %.2f > start threshold %.2f. Not using it", buf, 0x20u);
      }

      goto LABEL_37;
    }

    timestamp2 = [v9 timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
    v35 = v34;
    v36 = self->_launchTime - self->_cachedLocValidityDuration;

    if (v35 <= v36)
    {
      v21 = sub_100002830();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      fm_logID2 = [(Locator *)self fm_logID];
      *buf = 138412290;
      v95 = fm_logID2;
      v24 = "%@ Location is really old. Discarding it & waiting for a newer one";
      goto LABEL_35;
    }

    timestamp3 = [v9 timestamp];
    [timestamp3 timeIntervalSinceReferenceDate];
    v39 = v38;
    launchTime = self->_launchTime;

    if (v39 < launchTime)
    {
      v41 = sub_100002830();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID4 = [(Locator *)self fm_logID];
        cachedLocValidityDuration = self->_cachedLocValidityDuration;
        *buf = 138412546;
        v95 = fm_logID4;
        v96 = 2048;
        v97 = *&cachedLocValidityDuration;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%@ Location is an old cached one but not older than %.0f seconds before the start of this cycle. Considering it for later use", buf, 0x16u);
      }

      v44 = 0;
      v45 = 1;
LABEL_22:

      goto LABEL_23;
    }

    [v9 horizontalAccuracy];
    if (v57 <= self->_endThreshold)
    {
      v69 = sub_100002830();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID5 = [(Locator *)self fm_logID];
        endThreshold = self->_endThreshold;
        *buf = 138412546;
        v95 = fm_logID5;
        v96 = 2048;
        v97 = *&endThreshold;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%@ Location has accuracy below the end threshold %f. Publishing it immediately & finishing the locate cycle", buf, 0x16u);
      }

      [(Locator *)self setLocationForPublish:v9];
      [(Locator *)self setLastPublishReason:3];
      publishTimer = [(Locator *)self publishTimer];

      if (publishTimer)
      {
        publishTimer2 = [(Locator *)self publishTimer];
        [publishTimer2 invalidate];

        [(Locator *)self setPublishTimer:0];
      }

      [(Locator *)self setFinished:1];
      [(Locator *)self _publishResultLocation:0];
      [(Locator *)self performSelectorOnMainThread:"stopLocator" withObject:0 waitUntilDone:0];
      goto LABEL_38;
    }

    [v9 horizontalAccuracy];
    if (v58 >= self->_currentThreshold)
    {
      v45 = 0;
      v44 = 0;
    }

    else
    {
      v59 = sub_100002830();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID6 = [(Locator *)self fm_logID];
        currentThreshold = self->_currentThreshold;
        *buf = 138412802;
        v95 = fm_logID6;
        v96 = 2048;
        v97 = *&currentThreshold;
        v98 = 2048;
        v99 = 0x4000000000000000;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%@ Location has accuracy within current publish threshold of %.2f. Publishing it within the next %f seconds", buf, 0x20u);
      }

      do
      {
        v62 = self->_currentDecayMultiplier + 1;
        self->_currentDecayMultiplier = v62;
        v63 = self->_startThreshold;
        v64 = v63 * exp(-(self->_decayFactor * v62));
        self->_currentThreshold = v64;
        [v9 horizontalAccuracy];
      }

      while (v64 >= v65);
      v66 = sub_100002830();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID7 = [(Locator *)self fm_logID];
        v68 = self->_currentThreshold;
        *buf = 138412546;
        v95 = fm_logID7;
        v96 = 2048;
        v97 = *&v68;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%@ New publish threshold is %.2f", buf, 0x16u);
      }

      v45 = 1;
      v44 = 2;
    }

    lastLocation = [(Locator *)self lastLocation];
    if (lastLocation)
    {
      v77 = lastLocation;
    }

    else
    {
      [v9 horizontalAccuracy];
      if (v79 > self->_startThreshold)
      {
LABEL_71:
        lastLocation2 = [(Locator *)self lastLocation];

        if (!lastLocation2 || ![v9 type])
        {
          goto LABEL_23;
        }

        v93 = v44;
        type = [v9 type];
        lastLocation3 = [(Locator *)self lastLocation];
        type2 = [lastLocation3 type];

        if (type == type2)
        {
          v44 = v93;
        }

        else
        {
          lastLocation4 = [(Locator *)self lastLocation];
          [lastLocation4 distanceFromLocation:v9];
          v88 = v87;

          v44 = v93;
          if (v88 >= 5.0)
          {
            v41 = sub_100002830();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              fm_logID8 = [(Locator *)self fm_logID];
              lastLocation5 = [(Locator *)self lastLocation];
              v91 = +[CommonUtil stringForLocationType:](CommonUtil, "stringForLocationType:", [lastLocation5 type]);
              v92 = +[CommonUtil stringForLocationType:](CommonUtil, "stringForLocationType:", [v9 type]);
              *buf = 138413058;
              v95 = fm_logID8;
              v96 = 2112;
              v97 = v91;
              v98 = 2112;
              v99 = v92;
              v100 = 2048;
              v101 = v88;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%@ Location type changed from %@ to %@ with distance traveled %.2lf. Publishing it immediately", buf, 0x2Au);
            }

            v45 = 2;
            v44 = 4;
            goto LABEL_22;
          }
        }

LABEL_23:
        lastLocation6 = [(Locator *)self lastLocation];
        if (!lastLocation6)
        {
          goto LABEL_25;
        }

        v47 = lastLocation6;
        [v9 horizontalAccuracy];
        v49 = v48;
        lastLocation7 = [(Locator *)self lastLocation];
        [lastLocation7 horizontalAccuracy];
        v52 = v51;

        if (v49 <= v52)
        {
LABEL_25:
          v53 = sub_100002830();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            fm_logID9 = [(Locator *)self fm_logID];
            *buf = 138412290;
            v95 = fm_logID9;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@ Storing this location as the best last known location in this locate cycle", buf, 0xCu);
          }

          [(Locator *)self setLastLocation:v9];
        }

        [(Locator *)self setLocationForPublish:v9];
        [(Locator *)self setLastPublishReason:v44];
        if (v45)
        {
          if (v45 != 1)
          {
            publishTimer3 = [(Locator *)self publishTimer];

            if (publishTimer3)
            {
              publishTimer4 = [(Locator *)self publishTimer];
              [publishTimer4 invalidate];

              [(Locator *)self setPublishTimer:0];
            }

            [(Locator *)self _publishResultLocation:0];
            goto LABEL_38;
          }

          publishTimer5 = [(Locator *)self publishTimer];

          v21 = sub_100002830();
          v56 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (!publishTimer5)
          {
            if (v56)
            {
              fm_logID10 = [(Locator *)self fm_logID];
              *buf = 138412546;
              v95 = fm_logID10;
              v96 = 2048;
              v97 = 0x4000000000000000;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ Scheduling the location to be published in %f seconds", buf, 0x16u);
            }

            v21 = [NSTimer scheduledTimerWithTimeInterval:self target:"_publishResultLocation:" selector:0 userInfo:0 repeats:2.0];
            [(Locator *)self setPublishTimer:v21];
            goto LABEL_37;
          }

          if (v56)
          {
            fm_logID2 = [(Locator *)self fm_logID];
            *buf = 138412546;
            v95 = fm_logID2;
            v96 = 2048;
            v97 = 0x4000000000000000;
            v24 = "%@ A timer is already running to publish the location within the next %f seconds";
            goto LABEL_9;
          }

LABEL_37:

LABEL_38:
          goto LABEL_39;
        }

        v21 = sub_100002830();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        fm_logID2 = [(Locator *)self fm_logID];
        *buf = 138412290;
        v95 = fm_logID2;
        v24 = "%@ Not publishing this location";
LABEL_35:
        v25 = v21;
        v26 = 12;
        goto LABEL_36;
      }

      v77 = sub_100002830();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID11 = [(Locator *)self fm_logID];
        v81 = self->_startThreshold;
        *buf = 138412546;
        v95 = fm_logID11;
        v96 = 2048;
        v97 = *&v81;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%@ This is the first location with accuracy below the start threshold %.2f. Publishing it immediately", buf, 0x16u);
      }

      v45 = 2;
      v44 = 1;
    }

    goto LABEL_71;
  }

LABEL_40:
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(Locator *)self fm_logID];
    v11 = 138412546;
    v12 = fm_logID;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Location updates failed with error: %@", &v11, 0x16u);
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:kCLErrorDomain])
  {

    goto LABEL_9;
  }

  code = [errorCopy code];

  if (code)
  {
LABEL_9:
    [(Locator *)self stopLocator];
    goto LABEL_10;
  }

  v10 = sub_100002830();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not stopping the locator service because the error is temporary.", &v11, 2u);
  }

LABEL_10:
}

- (void)_processStopTimeout:(id)timeout
{
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(Locator *)self fm_logID];
    v7 = 138412290;
    v8 = fm_logID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Location Services ending now after timeout", &v7, 0xCu);
  }

  [(Locator *)self setLocatorRunning:0];
  lastLocation = [(Locator *)self lastLocation];

  if (lastLocation)
  {
    [(Locator *)self setFinished:1];
    [(Locator *)self setLastPublishReason:5];
    [(Locator *)self _publishResultLocation:0];
  }

  [(Locator *)self stopLocator];
}

- (void)_publishResultLocation:(id)location
{
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(Locator *)self fm_logID];
    v17 = 138412546;
    v18 = fm_logID;
    v19 = 2048;
    lastPublishReason = [(Locator *)self lastPublishReason];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Publishing the location to the server for reason %ld", &v17, 0x16u);
  }

  publishTimer = [(Locator *)self publishTimer];

  if (publishTimer)
  {
    publishTimer2 = [(Locator *)self publishTimer];
    [publishTimer2 invalidate];

    [(Locator *)self setPublishTimer:0];
  }

  [(Locator *)self lastPublishedAccuracy];
  v8 = 0.0;
  if (v9 > 0.0)
  {
    [(Locator *)self lastPublishedAccuracy];
    v11 = v10;
    locationForPublish = [(Locator *)self locationForPublish];
    [locationForPublish horizontalAccuracy];
    v8 = v11 - v13;
  }

  receivedLocationBlock = self->_receivedLocationBlock;
  if (receivedLocationBlock)
  {
    locationForPublish2 = [(Locator *)self locationForPublish];
    receivedLocationBlock[2](receivedLocationBlock, locationForPublish2, [(Locator *)self finished], [(Locator *)self lastPublishReason], v8);
  }

  locationForPublish3 = [(Locator *)self locationForPublish];
  [locationForPublish3 horizontalAccuracy];
  [(Locator *)self setLastPublishedAccuracy:?];

  ++self->_numPublished;
}

@end