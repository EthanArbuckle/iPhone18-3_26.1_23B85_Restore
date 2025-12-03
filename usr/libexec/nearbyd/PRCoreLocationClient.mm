@interface PRCoreLocationClient
- (BOOL)dowgradeToBystanderMonitoring;
- (BOOL)startMonitoring;
- (BOOL)stopMonitoring;
- (BOOL)upgradeToBestAccuracyMonitoring;
- (PRCoreLocationClient)initWithQueue:(id)queue;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)updateLocationAuthorized;
@end

@implementation PRCoreLocationClient

- (PRCoreLocationClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = PRCoreLocationClient;
  v6 = [(PRCoreLocationClient *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/UWBRegulatory.bundle" delegate:v7 onQueue:queueCopy];
    manager = v7->_manager;
    v7->_manager = v8;

    [(CLLocationManager *)v7->_manager setDesiredAccuracy:2147483650.0];
    *&v7->_isMonitoringLocation = 0;
  }

  return v7;
}

- (BOOL)startMonitoring
{
  manager = self->_manager;
  v4 = os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG);
  if (manager)
  {
    if (v4)
    {
      sub_1004BF754(self);
    }

    if (self->_isMonitoringLocation)
    {
      if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
      {
        sub_1004BF800();
      }
    }

    else
    {
      self->_isMonitoringLocation = 1;
      [(CLLocationManager *)self->_manager startUpdatingLocation];
      if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
      {
        sub_1004BF7CC();
      }

      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10032A6A4;
      block[3] = &unk_10098BD28;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  else if (v4)
  {
    sub_1004BF720();
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
      [(CLLocationManager *)manager stopUpdatingLocation];
      if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
      {
        sub_1004BF89C();
      }
    }

    else if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BF868();
    }
  }

  else if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BF834();
  }

  return manager != 0;
}

- (BOOL)upgradeToBestAccuracyMonitoring
{
  manager = self->_manager;
  if (manager)
  {
    [(CLLocationManager *)self->_manager setDesiredAccuracy:-1.0];
    if (self->_isMonitoringLocation)
    {
      [(PRCoreLocationClient *)self stopMonitoring];
      [(PRCoreLocationClient *)self startMonitoring];
    }

    else if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BF904();
    }
  }

  else if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BF8D0();
  }

  return manager != 0;
}

- (BOOL)dowgradeToBystanderMonitoring
{
  manager = self->_manager;
  if (manager)
  {
    [(CLLocationManager *)self->_manager setDesiredAccuracy:2147483650.0];
    if (self->_isMonitoringLocation)
    {
      [(PRCoreLocationClient *)self stopMonitoring];
      [(PRCoreLocationClient *)self startMonitoring];
    }

    else if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BF96C();
    }
  }

  else if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BF938();
  }

  return manager != 0;
}

- (void)updateLocationAuthorized
{
  regulatoryLocationAuthorized = self->_regulatoryLocationAuthorized;
  if (regulatoryLocationAuthorized)
  {
    regulatoryLocationAuthorized[2](regulatoryLocationAuthorized, self->_isLocationAuthorized);
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  if (locationsCopy)
  {
    v22 = locationsCopy;
    lastObject = [locationsCopy lastObject];
    [(PRCoreLocationClient *)self setLocation:lastObject];
    if (self->_regulatoryLocationHandler)
    {
      location = [(PRCoreLocationClient *)self location];
      [location coordinate];
      v9 = v8;

      location2 = [(PRCoreLocationClient *)self location];
      [location2 coordinate];
      v12 = v11;

      location3 = [(PRCoreLocationClient *)self location];
      [location3 altitude];
      v15 = v14;

      location4 = [(PRCoreLocationClient *)self location];
      [location4 horizontalAccuracy];
      v18 = v17;

      regulatoryLocationHandler = self->_regulatoryLocationHandler;
      timestamp = [lastObject timestamp];
      [timestamp timeIntervalSinceReferenceDate];
      regulatoryLocationHandler[2](regulatoryLocationHandler, 0, v9, v12, v15, v18, v21);
    }

    locationsCopy = v22;
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BF9A0();
  }
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BFA14();
  }

  v8 = status == 3 || status == 0;
  self->_isLocationAuthorized = v8;
  if (self->_isMonitoringLocation)
  {
    [(PRCoreLocationClient *)self updateLocationAuthorized];
  }

  else if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    sub_1004BFA88();
  }
}

@end