@interface CameraTS
- (CameraTS)initWithFrontCameraSensorIdx:(int)idx rearCameraSensorIdx:(int)sensorIdx;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (void)dealloc;
@end

@implementation CameraTS

- (CameraTS)initWithFrontCameraSensorIdx:(int)idx rearCameraSensorIdx:(int)sensorIdx
{
  v29.receiver = self;
  v29.super_class = CameraTS;
  v6 = [(CameraTS *)&v29 init];
  v7 = v6;
  if (v6)
  {
    v6->_torchState = -1;
    v6->_rearCameraSensorIdx = sensorIdx;
    v6->_frontCameraSensorIdx = idx;
    v6->_rearCameraTeleSensorIdx = -1;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7->_cameraQueue = dispatch_queue_create("com.apple.ThermalMonitor.cameraQueue", v8);
    if (byte_1000ABC38 == 1)
    {
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:8 atSMCIndex:@"zETM", 8];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:19 atSMCIndex:@"zETM", 19];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:20 atSMCIndex:@"zETM", 20];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:21 atSMCIndex:@"zETM", 21];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:23 atSMCIndex:@"zETM", 23];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:22 atSMCIndex:@"zETM", 22];
    }

    objc_initWeak(&location, v7);
    cameraQueue = v7->_cameraQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000B430;
    v26[3] = &unk_100085100;
    objc_copyWeak(&v27, &location);
    sub_1000333D4("com.apple.isp.backcamerapower", &v7->_rearCameraStateToken, cameraQueue, v26);
    v10 = v7->_cameraQueue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000B4A0;
    v24[3] = &unk_100085100;
    objc_copyWeak(&v25, &location);
    sub_1000333D4("com.apple.isp.backsensortemperature", &v7->_rearCameraTemperatureToken, v10, v24);
    v11 = v7->_cameraQueue;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000B4EC;
    v22[3] = &unk_100085100;
    objc_copyWeak(&v23, &location);
    sub_1000333D4("com.apple.isp.frontcamerapower", &v7->_frontCameraStateToken, v11, v22);
    v12 = v7->_cameraQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000B55C;
    v20[3] = &unk_100085100;
    objc_copyWeak(&v21, &location);
    sub_1000333D4("com.apple.isp.frontsensortemperature", &v7->_frontCameraTemperatureToken, v12, v20);
    v13 = v7->_cameraQueue;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10000B5A8;
    v18 = &unk_100085100;
    objc_copyWeak(&v19, &location);
    sub_1000333D4("com.apple.isp.cameratorch", &v7->_torchStateToken, v13, &v15);
    [[TGraphSampler addtGraphDataSource:v15 sharedInstance:v16], "addtGraphDataSource:", v7];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  notify_cancel(self->_rearCameraTeleStateToken);
  notify_cancel(self->_rearCameraTeleTemperatureToken);
  notify_cancel(self->_torchStateToken);
  notify_cancel(self->_frontCameraTemperatureToken);
  notify_cancel(self->_frontCameraStateToken);
  notify_cancel(self->_rearCameraTemperatureToken);
  notify_cancel(self->_rearCameraStateToken);
  v3.receiver = self;
  v3.super_class = CameraTS;
  [(CameraTS *)&v3 dealloc];
}

- (__CFString)copyHeaderForIndex:(int)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return @"Torch state";
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", [(CameraTS *)self torchState]);
  }
}

@end