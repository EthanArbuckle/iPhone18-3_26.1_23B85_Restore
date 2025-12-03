@interface SACoreLocationClient
- (BOOL)startMonitoring;
- (BOOL)stopMonitoring;
- (SACoreLocationClient)initWithQueue:(id)queue;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)requestSingleShotLocation;
@end

@implementation SACoreLocationClient

- (SACoreLocationClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = SACoreLocationClient;
  v6 = [(SACoreLocationClient *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/SafetyAlerts.bundle" delegate:v7 onQueue:queueCopy];
    manager = v7->_manager;
    v7->_manager = v8;

    [(CLLocationManager *)v7->_manager setDesiredAccuracy:1000.0];
    *&v7->_isLocationAuthorized = 0;
  }

  return v7;
}

- (BOOL)startMonitoring
{
  manager = self->_manager;
  v4 = SALogObjectGeneral;
  v5 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (manager)
  {
    if (v5)
    {
      isMonitoringLocation = self->_isMonitoringLocation;
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = isMonitoringLocation;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,,startMonitoring,, _isMonitoringLocation:%{public}hhd}", buf, 0x18u);
    }

    if (self->_isMonitoringLocation)
    {
      v7 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v8 = "{msg%{public}.0s:#lm,startMonitoring,skipped,reason,alreadyStarted}";
        v9 = v7;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, 0x12u);
      }
    }

    else
    {
      self->_isMonitoringLocation = 1;
      [(CLLocationManager *)self->_manager setDesiredAccuracy:1000.0];
      [(CLLocationManager *)self->_manager startMonitoringSignificantLocationChanges];
      v10 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,startMonitoring,done}", buf, 0x12u);
      }

      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D4FE8;
      block[3] = &unk_100140840;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  else if (v5)
  {
    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v8 = "{msg%{public}.0s:#lm,startMonitoring,skipped,reason,notInitialized}";
    v9 = v4;
    goto LABEL_9;
  }

  return manager != 0;
}

- (BOOL)stopMonitoring
{
  manager = self->_manager;
  if (manager)
  {
    if (self->_isMonitoringLocation)
    {
      self->_isMonitoringLocation = 0;
      [(CLLocationManager *)manager stopMonitoringSignificantLocationChanges];
      v3 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 68289026;
        v7 = 0;
        v8 = 2082;
        v9 = "";
        v4 = "{msg%{public}.0s:#lm,stopMonitoring,done.}";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &v6, 0x12u);
      }
    }

    else
    {
      v3 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 68289026;
        v7 = 0;
        v8 = 2082;
        v9 = "";
        v4 = "{msg%{public}.0s:#lm,stopMonitoring,skipped,reason,alreadyStopped}";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v4 = "{msg%{public}.0s:#lm,stopMonitoring,skipped,reason,notInitialized}";
      goto LABEL_9;
    }
  }

  return manager != 0;
}

- (void)requestSingleShotLocation
{
  [(CLLocationManager *)self->_manager setDesiredAccuracy:100.0];
  [(CLLocationManager *)self->_manager requestLocation];
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,requestSingleShotLocation,done.}", v4, 0x12u);
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  v9 = objc_autoreleasePoolPush();
  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v35[0] = 68289283;
    v35[1] = 0;
    v36 = 2082;
    v37 = "";
    v38 = 2117;
    v39 = locationsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#lm,didUpdateLocations, locations:%{sensitive, location:escape_only}@}", v35, 0x1Cu);
  }

  if (locationsCopy)
  {
    lastObject = [locationsCopy lastObject];
    [(SACoreLocationClient *)self setLocation:lastObject];

    location = [(SACoreLocationClient *)self location];
    if (location)
    {
      location2 = [(SACoreLocationClient *)self location];
      [location2 coordinate];
      if (!CLLocationCoordinate2DIsValid(v40))
      {
LABEL_14:

        goto LABEL_15;
      }

      location3 = [(SACoreLocationClient *)self location];
      [location3 coordinate];
      v16 = v15;
      if (v15 == 0.0)
      {
        location4 = [(SACoreLocationClient *)self location];
        [location4 coordinate];
        if (v17 == 0.0)
        {

          goto LABEL_14;
        }
      }

      location5 = [(SACoreLocationClient *)self location];
      [location5 horizontalAccuracy];
      v20 = v19;

      if (v16 == 0.0)
      {

        if (v20 <= 0.0)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (v20 > 0.0)
      {
LABEL_13:
        location6 = [(SACoreLocationClient *)self location];
        [location6 coordinate];
        v23 = v22;

        location7 = [(SACoreLocationClient *)self location];
        [location7 coordinate];
        v26 = v25;

        location8 = [(SACoreLocationClient *)self location];
        [location8 altitude];
        v29 = v28;

        location9 = [(SACoreLocationClient *)self location];
        [location9 horizontalAccuracy];
        v32 = v31;

        clProxy = [(SACoreLocationClient *)self clProxy];
        location = [(SACoreLocationClient *)self location];
        location2 = [location timestamp];
        [location2 timeIntervalSinceReferenceDate];
        (*(clProxy->var0 + 4))(clProxy, 0, v23, v26, v29, v32, v34);
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  objc_autoreleasePoolPop(v9);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2114;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,didFailWithError, error:%{public, location:escape_only}@}", v7, 0x1Cu);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  v7 = objc_autoreleasePoolPush();
  self->_isLocationAuthorized = status == 3;
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 68289538;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    statusCopy = status;
    v15 = 1026;
    v16 = status == 3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,didChangeAuthorizationStatus, authStatus:%{public}d, isAuthorized:%{public}hhd}", v10, 0x1Eu);
  }

  clProxy = [(SACoreLocationClient *)self clProxy];
  (*(clProxy->var0 + 5))(clProxy, self->_isLocationAuthorized);
  objc_autoreleasePoolPop(v7);
}

@end