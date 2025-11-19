@interface CARDNDStateObserver
+ (BOOL)observesVehicularReports;
- (BOOL)isInLostMode;
- (CARDNDStateDelegate)delegate;
- (CARDNDStateObserver)initWithRadiosPreferences:(id)a3 vehicleStateClass:(Class)a4;
- (Class)vehicleStateClass;
- (NSDate)mostRecentVehicleBTConnectionDate;
- (void)_checkVehicleState;
- (void)airplaneModeChanged;
- (void)dealloc;
- (void)scheduleVehicleStateCheckWithDelay:(double)a3;
@end

@implementation CARDNDStateObserver

- (CARDNDStateObserver)initWithRadiosPreferences:(id)a3 vehicleStateClass:(Class)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = CARDNDStateObserver;
  v8 = [(CARDNDStateObserver *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_vehicleStateClass, a4);
    objc_storeStrong(&v9->_radiosPreferences, a3);
    [(RadiosPreferences *)v9->_radiosPreferences setDelegate:v9];
    [(RadiosPreferences *)v9->_radiosPreferences refresh];
    v10 = objc_alloc_init(CXCallObserver);
    callObserver = v9->_callObserver;
    v9->_callObserver = v10;

    v12 = CRDeviceSupportsAutomaticDNDMotionTrigger();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    if (v12)
    {
      v14 = kCMVehicularStateChangedNotification;
      v15 = sub_100011EB4;
      v16 = v9;
    }

    else
    {
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, sub_100011E1C, kCMVehicleConnectedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v14 = kCMVehicleDisconnectedNotification;
      v16 = v9;
      v15 = sub_100011E1C;
    }

    CFNotificationCenterAddObserver(DarwinNotifyCenter, v16, v15, v14, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v17 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v17, v9, sub_100011EBC, kLostModeChangedRestrictedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    sub_100011EBC(v18, v9);
  }

  return v9;
}

- (void)dealloc
{
  [(RadiosPreferences *)self->_radiosPreferences setDelegate:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  v5 = [(CARDNDStateObserver *)self vehicleStateCheckTimer];
  [v5 invalidate];

  v6.receiver = self;
  v6.super_class = CARDNDStateObserver;
  [(CARDNDStateObserver *)&v6 dealloc];
}

+ (BOOL)observesVehicularReports
{
  if (CRDeviceSupportsDNDWhileDriving())
  {
    if (+[CRVehicleStoreAvailability isVehicleStoreAvailable])
    {
      return 1;
    }

    v3 = CarDNDWDLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v4 = "Not fetching vehicle state - device has not unlocked since boot.";
      v5 = &v6;
      goto LABEL_8;
    }
  }

  else
  {
    v3 = CarDNDWDLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "Not fetching vehicle state - device does not support DNDWD.";
      v5 = &v7;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  return 0;
}

- (BOOL)isInLostMode
{
  v2 = +[FMDFMIPManager sharedInstance];
  if ([v2 lostModeIsActive])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[FMDFMIPManager sharedInstance];
    v3 = [v4 isManagedLostModeActive];
  }

  return v3;
}

- (NSDate)mostRecentVehicleBTConnectionDate
{
  v2 = [(objc_class *)[(CARDNDStateObserver *)self vehicleStateClass] mostRecentVehicleConnection];
  v3 = [v2 timeRange];
  v4 = [v3 startDate];

  return v4;
}

- (void)scheduleVehicleStateCheckWithDelay:(double)a3
{
  v5 = [(CARDNDStateObserver *)self vehicleStateCheckTimer];

  if (v5)
  {
    v6 = [(CARDNDStateObserver *)self vehicleStateCheckTimer];
    [v6 invalidate];

    [(CARDNDStateObserver *)self setVehicleStateCheckTimer:0];
  }

  v7 = CarDNDWDLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithDouble:a3];
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scheduling vehicle state check after %@", &v13, 0xCu);
  }

  v9 = [NSTimer timerWithTimeInterval:self target:"_checkVehicleState" selector:0 userInfo:0 repeats:a3];
  vehicleStateCheckTimer = self->_vehicleStateCheckTimer;
  self->_vehicleStateCheckTimer = v9;

  v11 = +[NSRunLoop mainRunLoop];
  v12 = [(CARDNDStateObserver *)self vehicleStateCheckTimer];
  [v11 addTimer:v12 forMode:NSDefaultRunLoopMode];
}

- (void)airplaneModeChanged
{
  [(RadiosPreferences *)self->_radiosPreferences refresh];
  v3 = [(CARDNDStateObserver *)self isInAirplaneMode];
  v4 = CarDNDWDLogging();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v12 = 0;
    v6 = "Airplane mode now active.";
    v7 = &v12;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v11 = 0;
    v6 = "Airplane mode now inactive.";
    v7 = &v11;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
LABEL_7:

  v8 = [(CARDNDStateObserver *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CARDNDStateObserver *)self delegate];
    [v10 stateMachine:self receivedAirplaneMode:v3];
  }
}

- (void)_checkVehicleState
{
  if ([objc_opt_class() observesVehicularReports])
  {
    if (CRDeviceSupportsAutomaticDNDMotionTrigger())
    {
      WeakRetained = objc_loadWeakRetained(&self->_vehicleStateClass);
      v4 = [WeakRetained vehicularState];

      v5 = objc_loadWeakRetained(&self->_vehicleStateClass);
      v6 = [v5 vehicularHints];

      v7 = objc_loadWeakRetained(&self->_vehicleStateClass);
      v8 = [v7 vehicularOperatorState];
    }

    else
    {
      if ([(CARDNDStateObserver *)self connected])
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      v8 = 0;
      if ([(CARDNDStateObserver *)self connected])
      {
        v6 = 16;
      }

      else
      {
        v6 = 0;
      }
    }

    v9 = CarDNDWDLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithUnsignedInteger:v4];
      v20 = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetched CM vehicle state: %@", &v20, 0xCu);
    }

    if (v4)
    {
      v11 = objc_loadWeakRetained(&self->_vehicleStateClass);
      v12 = [v11 mostRecentVehicleConnection];

      v13 = [v12 deviceId];
      v14 = objc_opt_new();
      [v14 setDeviceID:v13];
      [v14 setVehicleState:v4];
      [v14 setVehicularHints:v6];
      [v14 setVehicleOperatorState:v8];
      v15 = CarDNDWDLogging();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 vehicleStateDebugDescription];
        v20 = 138543362;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Generated vehicle state %{public}@", &v20, 0xCu);
      }

      v17 = [(CARDNDStateObserver *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        v19 = [(CARDNDStateObserver *)self delegate];
        [v19 stateMachine:self receivedVehicleState:v14];
      }
    }

    else
    {
      v12 = CarDNDWDLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring unknown vehicular state.", &v20, 2u);
      }
    }
  }
}

- (Class)vehicleStateClass
{
  WeakRetained = objc_loadWeakRetained(&self->_vehicleStateClass);

  return WeakRetained;
}

- (CARDNDStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end