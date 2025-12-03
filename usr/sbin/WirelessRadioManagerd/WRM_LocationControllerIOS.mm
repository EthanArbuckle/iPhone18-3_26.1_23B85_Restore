@interface WRM_LocationControllerIOS
- (WRM_LocationControllerIOS)initWithDesiredAccuracy:(double)accuracy distanceFilter:(double)filter;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)updateLocationAuthorized_sync;
@end

@implementation WRM_LocationControllerIOS

- (void)startMonitoring
{
  mAlarmQueue = self->_mAlarmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014B78;
  block[3] = &unk_10023F488;
  block[4] = self;
  dispatch_async(mAlarmQueue, block);
}

- (WRM_LocationControllerIOS)initWithDesiredAccuracy:(double)accuracy distanceFilter:(double)filter
{
  v15.receiver = self;
  v15.super_class = WRM_LocationControllerIOS;
  v6 = [(WRM_LocationControllerIOS *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.WirelessRadioManager.Location", 0);
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    *(v6 + 12) = 0;
    [WCM_Logging logLevel:22 message:@"LocationController: init\n"];
    v9 = *(v6 + 1);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EBF14;
    block[3] = &unk_100242168;
    v12 = v6;
    accuracyCopy = accuracy;
    filterCopy = filter;
    dispatch_async(v9, block);
  }

  return v6;
}

- (void)stopMonitoring
{
  mAlarmQueue = self->_mAlarmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC08C;
  block[3] = &unk_10023F488;
  block[4] = self;
  dispatch_async(mAlarmQueue, block);
}

- (void)updateLocationAuthorized_sync
{
  clientLocationAuthorized = [(WRM_LocationControllerIOS *)self clientLocationAuthorized];

  if (clientLocationAuthorized)
  {
    [WCM_Logging logLevel:22 message:@"LocationController: updateLocationAuthorized"];
    clientLocationAuthorized2 = [(WRM_LocationControllerIOS *)self clientLocationAuthorized];
    clientLocationAuthorized2[2](clientLocationAuthorized2, self->_isLocationAuthorized);
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  if (self->_isMonitoringLocation)
  {
    if (locationsCopy)
    {
      [WCM_Logging logLevel:22 message:@"LocationController: didUpdateLocations %@", locationsCopy];
      lastObject = [locationsCopy lastObject];
      [(WRM_LocationControllerIOS *)self setLocation:lastObject];
      clientLocationHandler = [(WRM_LocationControllerIOS *)self clientLocationHandler];

      if (clientLocationHandler)
      {
        location = [(WRM_LocationControllerIOS *)self location];
        [location coordinate];
        v11 = v10;

        location2 = [(WRM_LocationControllerIOS *)self location];
        [location2 coordinate];
        v14 = v13;

        location3 = [(WRM_LocationControllerIOS *)self location];
        [location3 altitude];
        v17 = v16;

        location4 = [(WRM_LocationControllerIOS *)self location];
        [location4 horizontalAccuracy];
        v20 = v19;

        [WCM_Logging logLevel:22 message:@"LocationController: invoke clientLocationHandler"];
        clientLocationHandler2 = [(WRM_LocationControllerIOS *)self clientLocationHandler];
        timestamp = [lastObject timestamp];
        [timestamp timeIntervalSinceReferenceDate];
        v24 = v23;
        location5 = [(WRM_LocationControllerIOS *)self location];
        [location5 speed];
        clientLocationHandler2[2](clientLocationHandler2, 0, v11, v14, v17, v20, v24, v26);
      }
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"LocationController: nil location", v27];
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"LocationController: location received while stopped %@", locationsCopy];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  if (error)
  {
    [WCM_Logging logLevel:22 message:@"LocationController: didFailWithError, %@", error];
  }
}

@end