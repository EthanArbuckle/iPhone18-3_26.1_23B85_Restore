@interface CARDNDStateObserver
+ (BOOL)observesVehicularReports;
- (BOOL)isInLostMode;
- (CARDNDStateDelegate)delegate;
- (CARDNDStateObserver)initWithRadiosPreferences:(id)preferences vehicleStateClass:(Class)class;
- (Class)vehicleStateClass;
- (NSDate)mostRecentVehicleBTConnectionDate;
- (void)_checkVehicleState;
- (void)airplaneModeChanged;
- (void)dealloc;
- (void)scheduleVehicleStateCheckWithDelay:(double)delay;
@end

@implementation CARDNDStateObserver

- (CARDNDStateObserver)initWithRadiosPreferences:(id)preferences vehicleStateClass:(Class)class
{
  preferencesCopy = preferences;
  v20.receiver = self;
  v20.super_class = CARDNDStateObserver;
  v8 = [(CARDNDStateObserver *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_vehicleStateClass, class);
    objc_storeStrong(&v9->_radiosPreferences, preferences);
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
  vehicleStateCheckTimer = [(CARDNDStateObserver *)self vehicleStateCheckTimer];
  [vehicleStateCheckTimer invalidate];

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
    isManagedLostModeActive = 1;
  }

  else
  {
    v4 = +[FMDFMIPManager sharedInstance];
    isManagedLostModeActive = [v4 isManagedLostModeActive];
  }

  return isManagedLostModeActive;
}

- (NSDate)mostRecentVehicleBTConnectionDate
{
  mostRecentVehicleConnection = [(objc_class *)[(CARDNDStateObserver *)self vehicleStateClass] mostRecentVehicleConnection];
  timeRange = [mostRecentVehicleConnection timeRange];
  startDate = [timeRange startDate];

  return startDate;
}

- (void)scheduleVehicleStateCheckWithDelay:(double)delay
{
  vehicleStateCheckTimer = [(CARDNDStateObserver *)self vehicleStateCheckTimer];

  if (vehicleStateCheckTimer)
  {
    vehicleStateCheckTimer2 = [(CARDNDStateObserver *)self vehicleStateCheckTimer];
    [vehicleStateCheckTimer2 invalidate];

    [(CARDNDStateObserver *)self setVehicleStateCheckTimer:0];
  }

  v7 = CarDNDWDLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithDouble:delay];
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scheduling vehicle state check after %@", &v13, 0xCu);
  }

  v9 = [NSTimer timerWithTimeInterval:self target:"_checkVehicleState" selector:0 userInfo:0 repeats:delay];
  vehicleStateCheckTimer = self->_vehicleStateCheckTimer;
  self->_vehicleStateCheckTimer = v9;

  v11 = +[NSRunLoop mainRunLoop];
  vehicleStateCheckTimer3 = [(CARDNDStateObserver *)self vehicleStateCheckTimer];
  [v11 addTimer:vehicleStateCheckTimer3 forMode:NSDefaultRunLoopMode];
}

- (void)airplaneModeChanged
{
  [(RadiosPreferences *)self->_radiosPreferences refresh];
  isInAirplaneMode = [(CARDNDStateObserver *)self isInAirplaneMode];
  v4 = CarDNDWDLogging();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isInAirplaneMode)
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

  delegate = [(CARDNDStateObserver *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CARDNDStateObserver *)self delegate];
    [delegate2 stateMachine:self receivedAirplaneMode:isInAirplaneMode];
  }
}

- (void)_checkVehicleState
{
  if ([objc_opt_class() observesVehicularReports])
  {
    if (CRDeviceSupportsAutomaticDNDMotionTrigger())
    {
      WeakRetained = objc_loadWeakRetained(&self->_vehicleStateClass);
      vehicularState = [WeakRetained vehicularState];

      v5 = objc_loadWeakRetained(&self->_vehicleStateClass);
      vehicularHints = [v5 vehicularHints];

      v7 = objc_loadWeakRetained(&self->_vehicleStateClass);
      vehicularOperatorState = [v7 vehicularOperatorState];
    }

    else
    {
      if ([(CARDNDStateObserver *)self connected])
      {
        vehicularState = 2;
      }

      else
      {
        vehicularState = 1;
      }

      vehicularOperatorState = 0;
      if ([(CARDNDStateObserver *)self connected])
      {
        vehicularHints = 16;
      }

      else
      {
        vehicularHints = 0;
      }
    }

    v9 = CarDNDWDLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithUnsignedInteger:vehicularState];
      v20 = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetched CM vehicle state: %@", &v20, 0xCu);
    }

    if (vehicularState)
    {
      v11 = objc_loadWeakRetained(&self->_vehicleStateClass);
      mostRecentVehicleConnection = [v11 mostRecentVehicleConnection];

      deviceId = [mostRecentVehicleConnection deviceId];
      v14 = objc_opt_new();
      [v14 setDeviceID:deviceId];
      [v14 setVehicleState:vehicularState];
      [v14 setVehicularHints:vehicularHints];
      [v14 setVehicleOperatorState:vehicularOperatorState];
      v15 = CarDNDWDLogging();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        vehicleStateDebugDescription = [v14 vehicleStateDebugDescription];
        v20 = 138543362;
        v21 = vehicleStateDebugDescription;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Generated vehicle state %{public}@", &v20, 0xCu);
      }

      delegate = [(CARDNDStateObserver *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        delegate2 = [(CARDNDStateObserver *)self delegate];
        [delegate2 stateMachine:self receivedVehicleState:v14];
      }
    }

    else
    {
      mostRecentVehicleConnection = CarDNDWDLogging();
      if (os_log_type_enabled(mostRecentVehicleConnection, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, mostRecentVehicleConnection, OS_LOG_TYPE_DEFAULT, "Ignoring unknown vehicular state.", &v20, 2u);
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