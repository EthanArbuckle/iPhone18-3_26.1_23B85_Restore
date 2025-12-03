@interface RMAudioAccessoryManagerSharedInternal
+ (id)sharedInternal;
- (BOOL)shouldActivateActivityUpdates;
- (BOOL)shouldActivateDeviceMotionUpdates;
- (BOOL)shouldActivateStatusUpdates;
- (RMAudioAccessoryManagerSharedInternal)init;
- (void)onActiveAudioRouteChanged:(id)changed;
- (void)postAudioRouteChangeCompleted;
- (void)setTempestActive:(BOOL)active;
- (void)startActivityUpdates;
- (void)startDeviceMotionUpdates;
- (void)startMonitoringActiveAudioRoute;
- (void)startOrStopActivityUpdates;
- (void)startOrStopDeviceMotionUpdates;
- (void)startOrStopStatusUpdates;
- (void)startStatusUpdates;
- (void)stopActivityUpdates;
- (void)stopDeviceMotionUpdates;
- (void)stopStatusUpdates;
- (void)updateActiveAudioRouteDeviceIDAllowingSimulatedCrash:(BOOL)crash;
@end

@implementation RMAudioAccessoryManagerSharedInternal

+ (id)sharedInternal
{
  if (qword_10002C520 != -1)
  {
    sub_100012A00();
  }

  v3 = qword_10002C518;

  return v3;
}

- (RMAudioAccessoryManagerSharedInternal)init
{
  v6.receiver = self;
  v6.super_class = RMAudioAccessoryManagerSharedInternal;
  v2 = [(RMAudioAccessoryManagerSharedInternal *)&v6 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    [(RMAudioAccessoryManagerSharedInternal *)v2 setManagers:v3];

    v4 = objc_opt_new();
    [(RMAudioAccessoryManagerSharedInternal *)v2 setAudioAccessoryManager:v4];

    [(RMAudioAccessoryManagerSharedInternal *)v2 setDeviceMotionActive:0];
    [(RMAudioAccessoryManagerSharedInternal *)v2 setLastDeviceStatus:1];
    [(RMAudioAccessoryManagerSharedInternal *)v2 setStatusUpdatesActive:0];
    [(RMAudioAccessoryManagerSharedInternal *)v2 setMotionActivityActive:0];
    [(RMAudioAccessoryManagerSharedInternal *)v2 setTempestActive:0];
    [(RMAudioAccessoryManagerSharedInternal *)v2 setActiveAudioRouteDeviceID:0];
    [(RMAudioAccessoryManagerSharedInternal *)v2 setActiveAudioRouteAlternateTransportType:0];
    [(RMAudioAccessoryManagerSharedInternal *)v2 startMonitoringActiveAudioRoute];
  }

  return v2;
}

- (BOOL)shouldActivateStatusUpdates
{
  if (+[CMAudioAccessoryManager _isAvailable])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    managers = [(RMAudioAccessoryManagerSharedInternal *)self managers];
    v4 = [managers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(managers);
          }

          deviceMotionStatusHandler = [*(*(&v9 + 1) + 8 * i) deviceMotionStatusHandler];

          if (deviceMotionStatusHandler)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [managers countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)startOrStopStatusUpdates
{
  if ([(RMAudioAccessoryManagerSharedInternal *)self shouldActivateStatusUpdates])
  {

    [(RMAudioAccessoryManagerSharedInternal *)self startStatusUpdates];
  }

  else
  {

    [(RMAudioAccessoryManagerSharedInternal *)self stopStatusUpdates];
  }
}

- (void)startStatusUpdates
{
  objc_initWeak(&location, self);
  if (![(RMAudioAccessoryManagerSharedInternal *)self statusUpdatesActive])
  {
    audioAccessoryManager = [(RMAudioAccessoryManagerSharedInternal *)self audioAccessoryManager];
    v4 = +[NSOperationQueue mainQueue];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_1000050D4;
    v8 = &unk_100024C70;
    objc_copyWeak(&v9, &location);
    [audioAccessoryManager _startAudioAccessoryDeviceMotionStatusUpdatesToQueue:v4 withHandler:&v5];

    [(RMAudioAccessoryManagerSharedInternal *)self setStatusUpdatesActive:1, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (void)stopStatusUpdates
{
  audioAccessoryManager = [(RMAudioAccessoryManagerSharedInternal *)self audioAccessoryManager];
  [audioAccessoryManager _stopAudioAccessoryDeviceMotionStatusUpdates];

  [(RMAudioAccessoryManagerSharedInternal *)self setLastDeviceStatus:1];

  [(RMAudioAccessoryManagerSharedInternal *)self setStatusUpdatesActive:0];
}

- (BOOL)shouldActivateDeviceMotionUpdates
{
  if (+[CMAudioAccessoryManager _isAvailable])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    managers = [(RMAudioAccessoryManagerSharedInternal *)self managers];
    v4 = [managers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(managers);
          }

          deviceMotionHandler = [*(*(&v9 + 1) + 8 * i) deviceMotionHandler];

          if (deviceMotionHandler)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [managers countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)startOrStopDeviceMotionUpdates
{
  if ([(RMAudioAccessoryManagerSharedInternal *)self shouldActivateDeviceMotionUpdates])
  {

    [(RMAudioAccessoryManagerSharedInternal *)self startDeviceMotionUpdates];
  }

  else
  {

    [(RMAudioAccessoryManagerSharedInternal *)self stopDeviceMotionUpdates];
  }
}

- (void)startDeviceMotionUpdates
{
  if (![(RMAudioAccessoryManagerSharedInternal *)self isDeviceMotionActive])
  {
    [(RMAudioAccessoryManagerSharedInternal *)self updateActiveAudioRouteDeviceIDAllowingSimulatedCrash:[(RMAudioAccessoryManagerSharedInternal *)self isTempestActive]];
    audioAccessoryManager = [(RMAudioAccessoryManagerSharedInternal *)self audioAccessoryManager];
    [audioAccessoryManager _setAudioAccessoryDeviceMotionUpdateInterval:0.02];

    objc_initWeak(&location, self);
    [(RMAudioAccessoryManagerSharedInternal *)self setLastDMSampleTime:0.0];
    [(RMAudioAccessoryManagerSharedInternal *)self setLastDMPrintTime:0.0];
    [(RMAudioAccessoryManagerSharedInternal *)self setDmSamplesPerSecond:0];
    audioAccessoryManager2 = [(RMAudioAccessoryManagerSharedInternal *)self audioAccessoryManager];
    v5 = +[NSOperationQueue mainQueue];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1000055C0;
    v9 = &unk_100024C98;
    objc_copyWeak(&v10, &location);
    [audioAccessoryManager2 _startAudioAccessoryDeviceMotionUpdatesToQueue:v5 lowLatencyMode:1 withHandler:&v6];

    [(RMAudioAccessoryManagerSharedInternal *)self setDeviceMotionActive:1, v6, v7, v8, v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)stopDeviceMotionUpdates
{
  if ([(RMAudioAccessoryManagerSharedInternal *)self isDeviceMotionActive])
  {
    audioAccessoryManager = [(RMAudioAccessoryManagerSharedInternal *)self audioAccessoryManager];
    [audioAccessoryManager _stopAudioAccessoryDeviceMotionUpdates];

    [(RMAudioAccessoryManagerSharedInternal *)self setDeviceMotionActive:0];
    [(RMAudioAccessoryManagerSharedInternal *)self setLastDMSampleTime:0.0];
    [(RMAudioAccessoryManagerSharedInternal *)self setLastDMPrintTime:0.0];
    [(RMAudioAccessoryManagerSharedInternal *)self setDmSamplesPerSecond:0];

    [(RMAudioAccessoryManagerSharedInternal *)self startOrStopStatusUpdates];
  }
}

- (BOOL)shouldActivateActivityUpdates
{
  if (+[CMAudioAccessoryManager _isAvailable])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    managers = [(RMAudioAccessoryManagerSharedInternal *)self managers];
    v4 = [managers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(managers);
          }

          activityHandler = [*(*(&v9 + 1) + 8 * i) activityHandler];

          if (activityHandler)
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [managers countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)startOrStopActivityUpdates
{
  if ([(RMAudioAccessoryManagerSharedInternal *)self shouldActivateActivityUpdates])
  {

    [(RMAudioAccessoryManagerSharedInternal *)self startActivityUpdates];
  }

  else
  {

    [(RMAudioAccessoryManagerSharedInternal *)self stopActivityUpdates];
  }
}

- (void)startActivityUpdates
{
  if (![(RMAudioAccessoryManagerSharedInternal *)self motionActivityActive])
  {
    [(RMAudioAccessoryManagerSharedInternal *)self updateActiveAudioRouteDeviceIDAllowingSimulatedCrash:[(RMAudioAccessoryManagerSharedInternal *)self isTempestActive]];
    audioAccessoryManager = [(RMAudioAccessoryManagerSharedInternal *)self audioAccessoryManager];
    [audioAccessoryManager _setAudioAccessoryActivityUpdateInterval:0.2];

    [(RMAudioAccessoryManagerSharedInternal *)self setLastActivitySampleTime:0.0];
    [(RMAudioAccessoryManagerSharedInternal *)self setLastActivityPrintTime:0.0];
    [(RMAudioAccessoryManagerSharedInternal *)self setActivitySamplesPerSecond:0];
    v4 = +[RMHeadphoneActivityManager sharedInstance];
    mslLoggingEnabled = [v4 mslLoggingEnabled];

    if (mslLoggingEnabled)
    {
      v6 = +[RMHeadphoneActivityManager sharedInstance];
      [v6 startMslLogging];
    }

    objc_initWeak(&location, self);
    audioAccessoryManager2 = [(RMAudioAccessoryManagerSharedInternal *)self audioAccessoryManager];
    v8 = +[NSOperationQueue mainQueue];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100005C20;
    v12 = &unk_100024CC0;
    objc_copyWeak(&v13, &location);
    [audioAccessoryManager2 _startAudioAccessoryActivityUpdatesToQueue:v8 withHandler:&v9];

    [(RMAudioAccessoryManagerSharedInternal *)self setMotionActivityActive:1, v9, v10, v11, v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)stopActivityUpdates
{
  if ([(RMAudioAccessoryManagerSharedInternal *)self motionActivityActive])
  {
    audioAccessoryManager = [(RMAudioAccessoryManagerSharedInternal *)self audioAccessoryManager];
    [audioAccessoryManager _stopAudioAccessoryActivityUpdates];

    v4 = +[RMHeadphoneActivityManager sharedInstance];
    [v4 stopMslLogging];

    [(RMAudioAccessoryManagerSharedInternal *)self setMotionActivityActive:0];
    [(RMAudioAccessoryManagerSharedInternal *)self setLastActivitySampleTime:0.0];
    [(RMAudioAccessoryManagerSharedInternal *)self setLastActivityPrintTime:0.0];

    [(RMAudioAccessoryManagerSharedInternal *)self setActivitySamplesPerSecond:0];
  }
}

- (void)setTempestActive:(BOOL)active
{
  obj = self;
  objc_sync_enter(obj);
  obj->_tempestActive = active;
  if ([(RMAudioAccessoryManagerSharedInternal *)obj isTempestActive])
  {
    [(RMAudioAccessoryManagerSharedInternal *)obj updateActiveAudioRouteDeviceIDAllowingSimulatedCrash:1];
  }

  objc_sync_exit(obj);
}

- (void)startMonitoringActiveAudioRoute
{
  v3 = +[AVOutputContext sharedSystemAudioContext];
  v4 = qword_10002C528;
  qword_10002C528 = v3;

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"onActiveAudioRouteChanged:" name:AVOutputContextOutputDeviceDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"onActiveAudioRouteChanged:" name:AVOutputContextOutputDevicesDidChangeNotification object:0];
}

- (void)onActiveAudioRouteChanged:(id)changed
{
  changedCopy = changed;
  if (qword_10002C0C8 != -1)
  {
    sub_100012A3C();
  }

  v5 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RMAudioAccessoryManager] Active audio route changed", v6, 2u);
  }

  [(RMAudioAccessoryManagerSharedInternal *)self updateActiveAudioRouteDeviceIDAllowingSimulatedCrash:0];
}

- (void)updateActiveAudioRouteDeviceIDAllowingSimulatedCrash:(BOOL)crash
{
  crashCopy = crash;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((+[CMAudioAccessoryManager _isAvailable]& 1) == 0)
  {
    goto LABEL_56;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = +[AVOutputContext sharedSystemAudioContext];
  outputDevices = [v3 outputDevices];

  v5 = [outputDevices countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (!v5)
  {
    goto LABEL_42;
  }

  v35 = *v38;
  obj = outputDevices;
  while (2)
  {
    v6 = 0;
    do
    {
      if (*v38 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v37 + 1) + 8 * v6);
      deviceType = [v7 deviceType];
      deviceSubType = [v7 deviceSubType];
      deviceID = [v7 deviceID];
      name = [v7 name];
      modelID = [v7 modelID];
      alternateTransportType = [v7 alternateTransportType];
      if (alternateTransportType)
      {
        v14 = alternateTransportType;
      }

      else
      {
        v14 = @"Unknown";
      }

      if (deviceType != 1 || deviceSubType != 2 || deviceID == 0)
      {

        goto LABEL_40;
      }

      v17 = [NSString stringWithFormat:@"%@ ID %@ model %@ type %ld-%ld transport %@", name, deviceID, modelID, 1, 2, v14];
      activeAudioRouteDeviceID = [(RMAudioAccessoryManagerSharedInternal *)selfCopy activeAudioRouteDeviceID];
      v19 = [activeAudioRouteDeviceID isEqualToString:deviceID];
      if (v19)
      {
        activeAudioRouteAlternateTransportType = [(RMAudioAccessoryManagerSharedInternal *)selfCopy activeAudioRouteAlternateTransportType];
        v21 = [activeAudioRouteAlternateTransportType isEqualToString:v14];

        if (v21)
        {
          if (qword_10002C0C8 != -1)
          {
            sub_100012A14();
          }

          v29 = qword_10002C0D0;
          if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v42 = v17;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[RMAudioAccessoryManager] No active route change, same device %{public}@ is still active", buf, 0xCu);
          }

LABEL_49:
          goto LABEL_56;
        }
      }

      else
      {
      }

      v22 = [CMAudioAccessoryManager _selectActiveAudioRouteForDeviceMotionWithBTAddress:deviceID modelID:modelID];
      if (v22)
      {
        if (qword_10002C0C8 != -1)
        {
          sub_100012A14();
        }

        v23 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[RMAudioAccessoryManager] relatived sucessfully selected active audio route for device %{public}@", buf, 0xCu);
        }

        [(RMAudioAccessoryManagerSharedInternal *)selfCopy setActiveAudioRouteDeviceID:deviceID];
        [(RMAudioAccessoryManagerSharedInternal *)selfCopy setActiveAudioRouteAlternateTransportType:v14];
        [(RMAudioAccessoryManagerSharedInternal *)selfCopy postAudioRouteChangeCompleted];
        goto LABEL_39;
      }

      if (+[RMPlatformInfo isInternalBuild]&& crashCopy)
      {
        if (qword_10002C0C8 != -1)
        {
          sub_100012A14();
        }

        v24 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v42 = v17;
          v25 = v24;
          v26 = OS_LOG_TYPE_FAULT;
LABEL_38:
          _os_log_impl(&_mh_execute_header, v25, v26, "[RMAudioAccessoryManager] relatived failed to select active audio route for device %{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (qword_10002C0C8 != -1)
        {
          sub_100012A14();
        }

        v27 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v17;
          v25 = v27;
          v26 = OS_LOG_TYPE_ERROR;
          goto LABEL_38;
        }
      }

LABEL_39:

      if (v22)
      {
        goto LABEL_49;
      }

LABEL_40:
      v6 = v6 + 1;
    }

    while (v5 != v6);
    outputDevices = obj;
    v5 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_42:

  activeAudioRouteDeviceID2 = [(RMAudioAccessoryManagerSharedInternal *)selfCopy activeAudioRouteDeviceID];
  if (activeAudioRouteDeviceID2)
  {

    goto LABEL_51;
  }

  activeAudioRouteAlternateTransportType2 = [(RMAudioAccessoryManagerSharedInternal *)selfCopy activeAudioRouteAlternateTransportType];
  v31 = activeAudioRouteAlternateTransportType2 == 0;

  if (!v31)
  {
LABEL_51:
    if (qword_10002C0C8 != -1)
    {
      sub_100012A14();
    }

    v32 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[RMAudioAccessoryManager] relatived reset active audio route because no supported device was found", buf, 2u);
    }

    [CMAudioAccessoryManager _selectActiveAudioRouteForDeviceMotionWithBTAddress:0 modelID:0];
    [(RMAudioAccessoryManagerSharedInternal *)selfCopy setActiveAudioRouteDeviceID:0];
    [(RMAudioAccessoryManagerSharedInternal *)selfCopy setActiveAudioRouteAlternateTransportType:0];
    [(RMAudioAccessoryManagerSharedInternal *)selfCopy postAudioRouteChangeCompleted];
  }

LABEL_56:
  objc_sync_exit(selfCopy);
}

- (void)postAudioRouteChangeCompleted
{
  activeAudioRouteDeviceID = [(RMAudioAccessoryManagerSharedInternal *)self activeAudioRouteDeviceID];

  if (activeAudioRouteDeviceID)
  {
    v7 = @"RMAudioDeviceChangeCompletedRouteIDKey";
    activeAudioRouteDeviceID2 = [(RMAudioAccessoryManagerSharedInternal *)self activeAudioRouteDeviceID];
    v8 = activeAudioRouteDeviceID2;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"RMAudioDeviceChangeCompletedNotification" object:0 userInfo:v5];
}

@end