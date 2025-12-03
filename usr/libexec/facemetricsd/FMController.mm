@interface FMController
- (BOOL)_registerForLockStatusNotifications;
- (BOOL)_registerForMessagesAppForegroundedNotifications;
- (FMController)init;
- (void)_deviceUnlockTimerExpiration;
- (void)_handleBiomeEvent:(id)event;
- (void)_handleDeviceLockAtTimestamp:(id *)timestamp;
- (void)_handleDeviceUnlockAtTimestamp:(id *)timestamp;
- (void)_handleEligibilityStatus:(int64_t)status bundleId:(id)id event:(id)event;
- (void)_handleLockStatusNotificationAtTimestamp:(id *)timestamp;
- (void)_handleMessageAppBackgroundedWithTimestamp:(double)timestamp;
- (void)_handleMessageAppForegroundedWithTimestamp:(double)timestamp;
- (void)_handleMessageAppStatusNotification:(id)notification;
- (void)_reportSkBundleIdEligibilityCheckLatencyWithStartTimestamp:(unint64_t)timestamp andStopTimestamp:(unint64_t)stopTimestamp;
- (void)_requestToStopCameraSession;
- (void)_setupCameraSession;
- (void)_stopCameraSession;
- (void)handleFacialMetricsPacket:(id)packet withTimestamp:(unint64_t)timestamp;
- (void)sensorWriterDidStopMonitoring:(id)monitoring;
- (void)sensorWriterWillStartMonitoring:(id)monitoring;
@end

@implementation FMController

- (FMController)init
{
  v24.receiver = self;
  v24.super_class = FMController;
  v2 = [(FMController *)&v24 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 11);
    *(v2 + 11) = v3;

    v5 = sub_100004784();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = +[NSBundle mainBundle];
      infoDictionary = [v6 infoDictionary];
      v8 = [infoDictionary objectForKeyedSubscript:kCFBundleVersionKey];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "version: %{public}@", &buf, 0xCu);
    }

    if (+[FMCameraSession deviceIsSupported])
    {
      [STDynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:@"com.apple.Research"];
      *(v2 + 8) = MKBGetDeviceLockState() == 0;
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, -1);

      v11 = dispatch_queue_create("com.apple.facemetricsd.controller", v10);
      v12 = *(v2 + 3);
      *(v2 + 3) = v11;

      v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 3));
      v14 = *(v2 + 9);
      *(v2 + 9) = v13;

      v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 3));
      v16 = *(v2 + 10);
      *(v2 + 10) = v15;

      *&buf = 0;
      *(&buf + 1) = &buf;
      v26 = 0x2020000000;
      v27 = 0;
      v17 = *(v2 + 3);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100002AD4;
      v21[3] = &unk_10000C4F0;
      v18 = v2;
      v22 = v18;
      p_buf = &buf;
      dispatch_sync(v17, v21);
      v19 = 0;
      if (*(*(&buf + 1) + 24) == 1)
      {
        v19 = v18;
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v10 = sub_100004784();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "device is not supported", &buf, 2u);
      }

      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)_registerForLockStatusNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  out_token = -1;
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100002CAC;
  handler[3] = &unk_10000C518;
  objc_copyWeak(&v8, &location);
  v4 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, queue, handler);
  if (v4)
  {
    v5 = sub_100004784();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100005CCC();
    }
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return v4 == 0;
}

- (void)_handleLockStatusNotificationAtTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  deviceIsUnlocked = self->_deviceIsUnlocked;
  if (deviceIsUnlocked != (MKBGetDeviceLockState() == 0))
  {
    v6 = self->_deviceIsUnlocked;
    self->_deviceIsUnlocked = !v6;
    v7 = *&timestamp->var0;
    var3 = timestamp->var3;
    if (v6)
    {
      [(FMController *)self _handleDeviceLockAtTimestamp:&v7];
    }

    else
    {
      [(FMController *)self _handleDeviceUnlockAtTimestamp:&v7];
    }
  }
}

- (void)_handleDeviceUnlockAtTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_100004784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "device just unlocked", buf, 2u);
  }

  if ([(SRSensorWriter *)self->_sensorWriter isMonitoring])
  {
    cameraSession = [(FMController *)self cameraSession];
    if (cameraSession)
    {
      v7 = cameraSession;
      cameraSessionActiveReason = [(FMController *)self cameraSessionActiveReason];

      if (cameraSessionActiveReason)
      {
        v9 = sub_100004784();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          sub_100005D40();
        }

        [(FMController *)self setCameraSessionActiveReason:0];
        [(FMController *)self _requestToStopCameraSession];
      }
    }

    [(FMController *)self setCameraSessionActiveReason:[(FMController *)self cameraSessionActiveReason]| 1];
    cameraSession2 = [(FMController *)self cameraSession];

    if (cameraSession2)
    {
      cameraSession3 = [(FMController *)self cameraSession];
      *buf = *&timestamp->var0;
      var3 = timestamp->var3;
      [cameraSession3 generateUnlockSessionIdWithSessionStartTimestamp:buf];
    }

    else
    {
      [(FMController *)self _setupCameraSession];
      cameraSession4 = [(FMController *)self cameraSession];
      *buf = *&timestamp->var0;
      var3 = timestamp->var3;
      [cameraSession4 generateUnlockSessionIdWithSessionStartTimestamp:buf];

      cameraSession3 = [(FMController *)self cameraSession];
      [cameraSession3 startCameraSession];
    }

    v13 = dispatch_time(0, 5000000000);
    deviceUnlockTimer = [(FMController *)self deviceUnlockTimer];
    dispatch_source_set_timer(deviceUnlockTimer, v13, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(buf, self);
    deviceUnlockTimer2 = [(FMController *)self deviceUnlockTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100003080;
    handler[3] = &unk_10000C540;
    objc_copyWeak(&v20, buf);
    dispatch_source_set_event_handler(deviceUnlockTimer2, handler);

    v16 = sub_100004784();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "activating unlock timer", v18, 2u);
    }

    self->_unlockTimerStartTime = CFAbsoluteTimeGetCurrent();
    deviceUnlockTimer3 = [(FMController *)self deviceUnlockTimer];
    dispatch_activate(deviceUnlockTimer3);

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (void)_deviceUnlockTimerExpiration
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = sub_100004784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9.value) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "device unlock timer expired", &v9, 2u);
  }

  v4 = CFAbsoluteTimeGetCurrent() - self->_unlockTimerStartTime;
  v5 = sub_100004784();
  v6 = v5;
  if (v4 <= 6.0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9.value) = 134217984;
      *(&v9.value + 4) = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "unlock timer took (%f s) to fire", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100005D7C();
  }

  [(FMController *)self setCameraSessionActiveReason:[(FMController *)self cameraSessionActiveReason]& 0xFE];
  cameraSession = [(FMController *)self cameraSession];
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v9, HostTimeClock);
  [cameraSession updateUnlockSessionWithSessionStopTimestamp:&v9];

  [(FMController *)self _requestToStopCameraSession];
}

- (void)_handleDeviceLockAtTimestamp:(id *)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_100004784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "device just locked", &v7, 2u);
  }

  [(FMController *)self setCameraSessionActiveReason:0];
  cameraSession = [(FMController *)self cameraSession];
  v7 = *&timestamp->var0;
  var3 = timestamp->var3;
  [cameraSession updateUnlockSessionWithSessionStopTimestamp:&v7];

  [(FMController *)self _requestToStopCameraSession];
}

- (BOOL)_registerForMessagesAppForegroundedNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  v3 = BiomeLibrary();
  v4 = [v3 App];
  inFocus = [v4 InFocus];

  v6 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.facemetricsd" targetQueue:self->_queue waking:1];
  dSLPublisher = [inFocus DSLPublisher];
  v8 = [dSLPublisher subscribeOn:v6];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100003484;
  v14 = &unk_10000C5A8;
  objc_copyWeak(&v15, &location);
  v9 = [v8 sinkWithCompletion:&stru_10000C580 receiveInput:&v11];
  [(FMController *)self setSink:v9, v11, v12, v13, v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  return 1;
}

- (void)_handleBiomeEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  eventBody = [eventCopy eventBody];
  bundleID = [eventBody bundleID];

  v7 = sub_100004784();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = bundleID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Received Biome notification for BundleId : %{public}@", buf, 0xCu);
  }

  cachedBundleIdEligibility = [(FMController *)self cachedBundleIdEligibility];
  v9 = [cachedBundleIdEligibility objectForKeyedSubscript:bundleID];

  if ([v9 BOOLValue])
  {
    v10 = sub_100004784();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [v9 BOOLValue];
      v12 = "not ";
      if (bOOLValue)
      {
        v12 = "";
      }

      *buf = 136446466;
      v21 = v12;
      v22 = 2114;
      v23 = bundleID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "From cached eligibility, data collection is %{public}seligible for bundleID %{public}@", buf, 0x16u);
    }

    if ([v9 BOOLValue])
    {
      eventBody2 = [eventCopy eventBody];
      [(FMController *)self _handleMessageAppStatusNotification:eventBody2];
    }
  }

  else
  {
    v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    sensorWriter = self->_sensorWriter;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100003738;
    v16[3] = &unk_10000C5F8;
    v16[4] = self;
    v17 = bundleID;
    v18 = eventCopy;
    v19 = v14;
    [(SRSensorWriter *)sensorWriter bundleEligibility:v17 completion:v16];
  }
}

- (void)_handleEligibilityStatus:(int64_t)status bundleId:(id)id event:(id)event
{
  idCopy = id;
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  if (!status)
  {
    eventBody = sub_100004784();
    if (os_log_type_enabled(eventBody, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = idCopy;
      _os_log_impl(&_mh_execute_header, eventBody, OS_LOG_TYPE_INFO, "Received SREligibilityStatusNotEligible for bundleID %{public}@", &v14, 0xCu);
    }

    v12 = &__kCFBooleanFalse;
    goto LABEL_9;
  }

  if (status == 1)
  {
    v10 = sub_100004784();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = idCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Received SREligibilityStatusEligible for bundleID %{public}@", &v14, 0xCu);
    }

    eventBody = [eventCopy eventBody];
    [(FMController *)self _handleMessageAppStatusNotification:eventBody];
    v12 = &__kCFBooleanTrue;
LABEL_9:

    cachedBundleIdEligibility = [(FMController *)self cachedBundleIdEligibility];
    [cachedBundleIdEligibility setObject:v12 forKeyedSubscript:idCopy];
  }
}

- (void)_handleMessageAppStatusNotification:(id)notification
{
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_queue);
  messageAppForegrounded = self->_messageAppForegrounded;
  if (messageAppForegrounded == [notificationCopy starting])
  {
    absoluteTimestamp = sub_100004784();
    if (os_log_type_enabled(absoluteTimestamp, OS_LOG_TYPE_ERROR))
    {
      sub_100005E6C();
    }
  }

  else
  {
    v7 = self->_messageAppForegrounded;
    self->_messageAppForegrounded = !v7;
    v8 = sub_100004784();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        bundleID = [notificationCopy bundleID];
        v12 = 138412290;
        v13 = bundleID;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ backgrounded", &v12, 0xCu);
      }

      absoluteTimestamp = [notificationCopy absoluteTimestamp];
      [absoluteTimestamp timeIntervalSinceReferenceDate];
      [(FMController *)self _handleMessageAppBackgroundedWithTimestamp:?];
    }

    else
    {
      if (v9)
      {
        bundleID2 = [notificationCopy bundleID];
        v12 = 138412290;
        v13 = bundleID2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ foregrounded", &v12, 0xCu);
      }

      absoluteTimestamp = [notificationCopy absoluteTimestamp];
      [absoluteTimestamp timeIntervalSinceReferenceDate];
      [(FMController *)self _handleMessageAppForegroundedWithTimestamp:?];
    }
  }
}

- (void)_handleMessageAppForegroundedWithTimestamp:(double)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(SRSensorWriter *)self->_sensorWriter isMonitoring])
  {
    [(FMController *)self setCameraSessionActiveReason:[(FMController *)self cameraSessionActiveReason]| 2];
    cameraSession = [(FMController *)self cameraSession];

    if (cameraSession)
    {
      cameraSession2 = [(FMController *)self cameraSession];
      [cameraSession2 generateMessageSessionIdWithSessionStartTimestamp:timestamp];
    }

    else
    {
      [(FMController *)self _setupCameraSession];
      cameraSession3 = [(FMController *)self cameraSession];
      [cameraSession3 generateMessageSessionIdWithSessionStartTimestamp:timestamp];

      cameraSession2 = [(FMController *)self cameraSession];
      [cameraSession2 startCameraSession];
    }

    v8 = dispatch_time(0, 30000000000);
    messageAppForegroundedTimer = [(FMController *)self messageAppForegroundedTimer];
    dispatch_source_set_timer(messageAppForegroundedTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_initWeak(&location, self);
    messageAppForegroundedTimer2 = [(FMController *)self messageAppForegroundedTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100003DBC;
    handler[3] = &unk_10000C540;
    objc_copyWeak(&v15, &location);
    dispatch_source_set_event_handler(messageAppForegroundedTimer2, handler);

    v11 = sub_100004784();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "activating app foregrounded timer", v13, 2u);
    }

    self->_foregroundTimerStartTime = CFAbsoluteTimeGetCurrent();
    messageAppForegroundedTimer3 = [(FMController *)self messageAppForegroundedTimer];
    dispatch_activate(messageAppForegroundedTimer3);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_handleMessageAppBackgroundedWithTimestamp:(double)timestamp
{
  dispatch_assert_queue_V2(self->_queue);
  [(FMController *)self setCameraSessionActiveReason:[(FMController *)self cameraSessionActiveReason]& 0xFFFFFFFD];
  cameraSession = [(FMController *)self cameraSession];
  [cameraSession updateMessageSessionWithSessionStopTimestamp:timestamp];

  [(FMController *)self _requestToStopCameraSession];
}

- (void)_setupCameraSession
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = sub_100004784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setting up the camera", buf, 2u);
  }

  v4 = [[FMCameraSession alloc] initWithQueue:self->_queue];
  [(FMController *)self setCameraSession:v4];

  cameraSession = [(FMController *)self cameraSession];

  if (cameraSession)
  {
    cameraSession2 = [(FMController *)self cameraSession];
    [cameraSession2 resetUnlockSessionId];

    cameraSession3 = [(FMController *)self cameraSession];
    [cameraSession3 resetMessageSessionId];

    v8 = sub_100004784();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "started camera session", v10, 2u);
    }

    cameraSession4 = [(FMController *)self cameraSession];
    [cameraSession4 setDelegate:self];
  }

  else
  {
    cameraSession4 = sub_100004784();
    if (os_log_type_enabled(cameraSession4, OS_LOG_TYPE_ERROR))
    {
      sub_100005F24();
    }
  }
}

- (void)_requestToStopCameraSession
{
  dispatch_assert_queue_V2(self->_queue);
  cameraSession = [(FMController *)self cameraSession];

  if (cameraSession)
  {
    if ([(FMController *)self cameraSessionActiveReason])
    {
      v4 = sub_100004784();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ignore request to stop camera session due to a timer being active", v5, 2u);
      }
    }

    else
    {

      [(FMController *)self _stopCameraSession];
    }
  }
}

- (void)_stopCameraSession
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = sub_100004784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stopping camera session", v5, 2u);
  }

  cameraSession = [(FMController *)self cameraSession];
  [cameraSession stop];

  [(FMController *)self setCameraSession:0];
}

- (void)_reportSkBundleIdEligibilityCheckLatencyWithStartTimestamp:(unint64_t)timestamp andStopTimestamp:(unint64_t)stopTimestamp
{
  v6 = @"skLatencyMilliSeconds";
  v4 = [NSNumber numberWithDouble:(stopTimestamp - timestamp) / 1000000.0];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  AnalyticsSendEvent();
}

- (void)handleFacialMetricsPacket:(id)packet withTimestamp:(unint64_t)timestamp
{
  packetCopy = packet;
  dispatch_assert_queue_V2(self->_queue);
  if ([(SRSensorWriter *)self->_sensorWriter isMonitoring])
  {
    v7 = sub_100004784();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100005F60(packetCopy, timestamp, v7);
    }

    sensorWriter = self->_sensorWriter;
    v12 = 0;
    v9 = [(SRSensorWriter *)sensorWriter provideSampleData:packetCopy continuousTimestamp:timestamp error:&v12];
    v10 = v12;
    if ((v9 & 1) == 0)
    {
      v11 = sub_100004784();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100005FFC();
      }
    }
  }
}

- (void)sensorWriterWillStartMonitoring:(id)monitoring
{
  v4 = sub_100004784();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sensor writer is now monitoring", v5, 2u);
  }

  dispatch_async(self->_queue, &stru_10000C638);
}

- (void)sensorWriterDidStopMonitoring:(id)monitoring
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000045A4;
  v5[3] = &unk_10000C540;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end