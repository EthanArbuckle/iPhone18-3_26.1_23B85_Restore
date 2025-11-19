@interface WRM_LocationControllerIOS
- (WRM_LocationControllerIOS)initWithDesiredAccuracy:(double)a3 distanceFilter:(double)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
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

- (WRM_LocationControllerIOS)initWithDesiredAccuracy:(double)a3 distanceFilter:(double)a4
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
    v13 = a3;
    v14 = a4;
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
  v3 = [(WRM_LocationControllerIOS *)self clientLocationAuthorized];

  if (v3)
  {
    [WCM_Logging logLevel:22 message:@"LocationController: updateLocationAuthorized"];
    v4 = [(WRM_LocationControllerIOS *)self clientLocationAuthorized];
    v4[2](v4, self->_isLocationAuthorized);
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v28 = a3;
  v6 = a4;
  if (self->_isMonitoringLocation)
  {
    if (v6)
    {
      [WCM_Logging logLevel:22 message:@"LocationController: didUpdateLocations %@", v6];
      v7 = [v6 lastObject];
      [(WRM_LocationControllerIOS *)self setLocation:v7];
      v8 = [(WRM_LocationControllerIOS *)self clientLocationHandler];

      if (v8)
      {
        v9 = [(WRM_LocationControllerIOS *)self location];
        [v9 coordinate];
        v11 = v10;

        v12 = [(WRM_LocationControllerIOS *)self location];
        [v12 coordinate];
        v14 = v13;

        v15 = [(WRM_LocationControllerIOS *)self location];
        [v15 altitude];
        v17 = v16;

        v18 = [(WRM_LocationControllerIOS *)self location];
        [v18 horizontalAccuracy];
        v20 = v19;

        [WCM_Logging logLevel:22 message:@"LocationController: invoke clientLocationHandler"];
        v21 = [(WRM_LocationControllerIOS *)self clientLocationHandler];
        v22 = [v7 timestamp];
        [v22 timeIntervalSinceReferenceDate];
        v24 = v23;
        v25 = [(WRM_LocationControllerIOS *)self location];
        [v25 speed];
        v21[2](v21, 0, v11, v14, v17, v20, v24, v26);
      }
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"LocationController: nil location", v27];
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"LocationController: location received while stopped %@", v6];
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  if (a4)
  {
    [WCM_Logging logLevel:22 message:@"LocationController: didFailWithError, %@", a4];
  }
}

@end