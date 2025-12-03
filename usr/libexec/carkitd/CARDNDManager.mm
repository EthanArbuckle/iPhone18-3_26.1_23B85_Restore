@interface CARDNDManager
+ (void)setupSharedManagerWithVehicleStore:(id)store sessionStatus:(id)status;
- (BOOL)_hasDrivingActivityMode;
- (BOOL)isCurrentlyInGeofencedRegion;
- (BOOL)isDNDValid;
- (BOOL)showsInternalAlerts;
- (CARDNDGeofencingObserver)geofencingObserver;
- (CARDNDManager)initWithVehicleState:(id)state alertManager:(id)manager preferences:(id)preferences carSessionStatus:(id)status geoFencingObserver:(id)observer assertionTrap:(id)trap vehicleStore:(id)store stateService:(id)self0 modeConfigurationService:(id)self1 drivingStream:(id)self2;
- (id)_internalText;
- (void)_beginIdleExitTransaction;
- (void)_cancelUserDisabledTimer;
- (void)_checkVehicleState;
- (void)_createDrivingActivityModeIfNeeded:(BOOL)needed;
- (void)_disableDNDUntilEndOfDrive;
- (void)_drivingModeChanged:(id)changed;
- (void)_drivingModeEnded;
- (void)_endIdleExitTransaction;
- (void)_migrateToDrivingActivityModeIfNeeded;
- (void)_processVehicleState:(id)state;
- (void)_scheduleUserDisabledTimerWithInterval:(double)interval;
- (void)_scheduleVehicleQuery;
- (void)_transitionToState:(unint64_t)state vehicularHints:(unint64_t)hints operatorState:(unint64_t)operatorState;
- (void)_userDisabledTimerFired:(id)fired;
- (void)assertionTrap:(id)trap didBecomeActive:(BOOL)active;
- (void)dealloc;
- (void)geofencingObserver:(id)observer didUpdateRegionState:(int64_t)state;
- (void)modeAssertionService:(id)service didReceiveModeAssertionInvalidation:(id)invalidation;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)stateMachine:(id)machine receivedAirplaneMode:(BOOL)mode;
- (void)stateMachine:(id)machine receivedFMDMode:(BOOL)mode;
- (void)stateMachine:(id)machine receivedVehicleState:(id)state;
@end

@implementation CARDNDManager

+ (void)setupSharedManagerWithVehicleStore:(id)store sessionStatus:(id)status
{
  statusCopy = status;
  storeCopy = store;
  v23 = objc_alloc_init(CARAutomaticDNDStatus);
  v6 = [CARDNDStateObserver alloc];
  v7 = objc_alloc_init(RadiosPreferences);
  v8 = [(CARDNDStateObserver *)v6 initWithRadiosPreferences:v7 vehicleStateClass:objc_opt_class()];

  v9 = [self alloc];
  v20 = objc_alloc_init(CARUserAlerts);
  v10 = [[CARDNDAssertionTrap alloc] initWithPreferences:v23];
  v11 = [DNDStateService serviceForClientIdentifier:@"com.apple.carkitd.assertion-service"];
  v12 = [DNDModeConfigurationService serviceForClientIdentifier:@"com.apple.carkitd.assertion-service"];
  v13 = BiomeLibrary();
  userFocus = [v13 UserFocus];
  doNotDisturbWhileDriving = [userFocus DoNotDisturbWhileDriving];
  v16 = v9;
  v17 = v10;
  v18 = [v16 initWithVehicleState:v8 alertManager:v20 preferences:v23 carSessionStatus:statusCopy geoFencingObserver:0 assertionTrap:v10 vehicleStore:storeCopy stateService:v11 modeConfigurationService:v12 drivingStream:doNotDisturbWhileDriving];

  v19 = qword_100107FD0;
  qword_100107FD0 = v18;
}

- (CARDNDManager)initWithVehicleState:(id)state alertManager:(id)manager preferences:(id)preferences carSessionStatus:(id)status geoFencingObserver:(id)observer assertionTrap:(id)trap vehicleStore:(id)store stateService:(id)self0 modeConfigurationService:(id)self1 drivingStream:(id)self2
{
  obj = state;
  stateCopy = state;
  managerCopy = manager;
  preferencesCopy = preferences;
  statusCopy = status;
  observerCopy = observer;
  trapCopy = trap;
  storeCopy = store;
  serviceCopy = service;
  configurationServiceCopy = configurationService;
  streamCopy = stream;
  v57.receiver = self;
  v57.super_class = CARDNDManager;
  v18 = [(CARDNDManager *)&v57 init];
  if (v18)
  {
    v19 = dispatch_queue_create("com.apple.carkit.driving", 0);
    CARDNDQueue = v18->_CARDNDQueue;
    v18->_CARDNDQueue = v19;

    objc_storeStrong(&v18->_dndStateService, service);
    objc_storeStrong(&v18->_dndModeService, configurationService);
    objc_storeStrong(&v18->_drivingStream, stream);
    objc_storeStrong(&v18->_stateMachine, obj);
    [(CARDNDStateObserver *)v18->_stateMachine setDelegate:v18];
    objc_storeStrong(&v18->_preferences, preferences);
    objc_storeStrong(&v18->_alertManager, manager);
    v18->_lastKnownVehicularState = 0;
    v18->_lastKnownVehicularHints = 0;
    objc_storeStrong(&v18->_sessionStatus, status);
    [(CARSessionStatus *)v18->_sessionStatus addSessionObserver:v18];
    objc_storeStrong(&v18->_geofencingObserver, observer);
    [(CARDNDGeofencingObserver *)v18->_geofencingObserver setDelegate:v18];
    objc_storeStrong(&v18->_assertionTrap, trap);
    [(CARDNDAssertionTrap *)v18->_assertionTrap setDelegate:v18];
    objc_storeStrong(&v18->_vehicleStore, store);
    v18->_expectedDNDTermination = 0;
    v18->_vehicleQueryInitiatedTimestamp = 0.0;
    [preferencesCopy _detachObservers];
    v21 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.focus.driving" targetQueue:v18->_CARDNDQueue];
    v22 = BiomeLibrary();
    userFocus = [v22 UserFocus];
    computedMode = [userFocus ComputedMode];

    dSLPublisher = [computedMode DSLPublisher];
    v26 = [dSLPublisher filterWithKeyPath:@"eventBody.semanticType" value:&off_1000E8128];

    v27 = [v26 subscribeOn:v21];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100063C24;
    v55[3] = &unk_1000DFBA8;
    v28 = v18;
    v56 = v28;
    v29 = [v27 sinkWithCompletion:&stru_1000DFB80 receiveInput:v55];
    biomeDrivingSink = v28->_biomeDrivingSink;
    v28->_biomeDrivingSink = v29;

    assertionTrap = [(CARDNDManager *)v28 assertionTrap];
    LODWORD(userFocus) = [assertionTrap isActive];

    if (!userFocus)
    {
      goto LABEL_15;
    }

    assertionTrap2 = [(CARDNDManager *)v28 assertionTrap];
    if ([assertionTrap2 hasAssertion:4])
    {
      isInAirplaneMode = [(CARDNDStateObserver *)v18->_stateMachine isInAirplaneMode];

      if (isInAirplaneMode)
      {
LABEL_7:
        assertionTrap3 = [(CARDNDManager *)v28 assertionTrap];
        v35 = [assertionTrap3 hasAssertion:1];

        if (v35)
        {
          assertionTrap4 = [(CARDNDManager *)v28 assertionTrap];
          [assertionTrap4 releaseAssertion:1];
        }

        assertionTrap5 = [(CARDNDManager *)v28 assertionTrap];
        v38 = [assertionTrap5 hasAssertion:16];

        if (v38)
        {
          assertionTrap6 = [(CARDNDManager *)v28 assertionTrap];
          [assertionTrap6 releaseAssertion:16];
        }

        assertionTrap7 = [(CARDNDManager *)v28 assertionTrap];
        if (![assertionTrap7 hasAssertion:32])
        {
          goto LABEL_14;
        }

        isInLostMode = [(CARDNDStateObserver *)v18->_stateMachine isInLostMode];

        if ((isInLostMode & 1) == 0)
        {
          assertionTrap7 = [(CARDNDManager *)v28 assertionTrap];
          [assertionTrap7 releaseAssertion:32];
LABEL_14:
        }

LABEL_15:
        [(CARDNDManager *)v28 _migrateToDrivingActivityModeIfNeeded];
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, CARAutomaticDNDExitConfirmationDisabledNotification, 0, 0, 1u);

        goto LABEL_16;
      }

      assertionTrap2 = [(CARDNDManager *)v28 assertionTrap];
      [assertionTrap2 releaseAssertion:4];
    }

    goto LABEL_7;
  }

LABEL_16:

  return v18;
}

- (void)dealloc
{
  [(BPSSink *)self->_biomeDrivingSink cancel];
  v3.receiver = self;
  v3.super_class = CARDNDManager;
  [(CARDNDManager *)&v3 dealloc];
}

- (BOOL)showsInternalAlerts
{
  v3 = CRIsInternalInstall();
  if (v3)
  {
    preferences = [(CARDNDManager *)self preferences];
    isAutomaticDNDInternalShowUserAlertsEnabledPreference = [preferences isAutomaticDNDInternalShowUserAlertsEnabledPreference];

    LOBYTE(v3) = isAutomaticDNDInternalShowUserAlertsEnabledPreference;
  }

  return v3;
}

- (CARDNDGeofencingObserver)geofencingObserver
{
  geofencingObserver = self->_geofencingObserver;
  if (!geofencingObserver)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100063E90;
    block[3] = &unk_1000DD480;
    block[4] = self;
    dispatch_sync(&_dispatch_main_q, block);
    geofencingObserver = self->_geofencingObserver;
  }

  return geofencingObserver;
}

- (void)sessionDidConnect:(id)connect
{
  cARDNDQueue = [(CARDNDManager *)self CARDNDQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063F6C;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(cARDNDQueue, block);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  preferences = [(CARDNDManager *)self preferences];
  shouldActivateWithCarPlay = [preferences shouldActivateWithCarPlay];

  preferences2 = [(CARDNDManager *)self preferences];
  automaticDNDTriggeringMethod = [preferences2 automaticDNDTriggeringMethod];

  assertionTrap = [(CARDNDManager *)self assertionTrap];
  [assertionTrap releaseAssertion:1];

  if (!shouldActivateWithCarPlay || automaticDNDTriggeringMethod != 2)
  {
    v15 = CarDNDWDLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CarPlay session ended; disabling Driving", buf, 2u);
    }

    v16 = +[CARAnalytics sharedInstance];
    [v16 DNDEndedWithTrigger:3 vehicleHints:-[CARDNDManager lastKnownVehicularHints](self context:{"lastKnownVehicularHints"), 0}];

    cARDNDQueue = [(CARDNDManager *)self CARDNDQueue];
    v13 = cARDNDQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000643E4;
    v18[3] = &unk_1000DD480;
    v18[4] = self;
    v14 = v18;
    goto LABEL_10;
  }

  lastKnownVehicularState = [(CARDNDManager *)self lastKnownVehicularState];
  if (lastKnownVehicularState < 2)
  {
    v10 = CarDNDWDLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CarPlay session ended; disabling Driving due to non-vehicular state", buf, 2u);
    }

    v11 = +[CARAnalytics sharedInstance];
    [v11 DNDEndedWithTrigger:3 vehicleHints:-[CARDNDManager lastKnownVehicularHints](self context:{"lastKnownVehicularHints"), 0}];

    cARDNDQueue = [(CARDNDManager *)self CARDNDQueue];
    v13 = cARDNDQueue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000643D0;
    v19[3] = &unk_1000DD480;
    v19[4] = self;
    v14 = v19;
LABEL_10:
    dispatch_async(cARDNDQueue, v14);

    return;
  }

  if (lastKnownVehicularState == 2)
  {
    v17 = CarDNDWDLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CarPlay session ended; leaving Driving active for auto-termination.", buf, 2u);
    }
  }
}

- (BOOL)isDNDValid
{
  dndStateService = self->_dndStateService;
  v9 = 0;
  v3 = [(DNDStateService *)dndStateService queryCurrentStateWithError:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = CarDNDWDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100088A50();
    }
  }

  if ([v3 isActive])
  {
    activeModeIdentifier = [v3 activeModeIdentifier];
    v7 = [activeModeIdentifier isEqualToString:@"com.apple.donotdisturb.mode.driving"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCurrentlyInGeofencedRegion
{
  geofencingObserver = [(CARDNDManager *)self geofencingObserver];
  currentlyInRegion = [geofencingObserver currentlyInRegion];

  return currentlyInRegion;
}

- (void)stateMachine:(id)machine receivedVehicleState:(id)state
{
  stateCopy = state;
  cARDNDQueue = [(CARDNDManager *)self CARDNDQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000645A8;
  v8[3] = &unk_1000DD580;
  v8[4] = self;
  v9 = stateCopy;
  v7 = stateCopy;
  dispatch_async(cARDNDQueue, v8);
}

- (void)stateMachine:(id)machine receivedAirplaneMode:(BOOL)mode
{
  modeCopy = mode;
  assertionTrap = [(CARDNDManager *)self assertionTrap];
  v6 = assertionTrap;
  if (modeCopy)
  {
    [assertionTrap takeAssertion:4];
  }

  else
  {
    [assertionTrap releaseAssertion:4];
  }
}

- (void)stateMachine:(id)machine receivedFMDMode:(BOOL)mode
{
  modeCopy = mode;
  assertionTrap = [(CARDNDManager *)self assertionTrap];
  v6 = assertionTrap;
  if (modeCopy)
  {
    [assertionTrap takeAssertion:32];
  }

  else
  {
    [assertionTrap releaseAssertion:32];
  }
}

- (void)geofencingObserver:(id)observer didUpdateRegionState:(int64_t)state
{
  if ([(CARDNDManager *)self showsInternalAlerts])
  {
    preferences = [(CARDNDManager *)self preferences];
    isAutomaticDNDInternalShowGeofencingAlertsEnabledPreference = [preferences isAutomaticDNDInternalShowGeofencingAlertsEnabledPreference];

    if (isAutomaticDNDInternalShowGeofencingAlertsEnabledPreference)
    {
      if (state == 2)
      {
        alertManager = [(CARDNDManager *)self alertManager];
        [alertManager showDNDExitGeofenceWithCompletion:0];
      }

      else
      {
        if (state != 1)
        {
          return;
        }

        alertManager = [(CARDNDManager *)self alertManager];
        [alertManager showDNDEnterGeofenceWithCompletion:0];
      }
    }
  }
}

- (void)assertionTrap:(id)trap didBecomeActive:(BOOL)active
{
  trapCopy = trap;
  cARDNDQueue = [(CARDNDManager *)self CARDNDQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000647F0;
  block[3] = &unk_1000DFBD0;
  activeCopy = active;
  block[4] = self;
  v10 = trapCopy;
  v8 = trapCopy;
  dispatch_async(cARDNDQueue, block);
}

- (void)_checkVehicleState
{
  stateMachine = [(CARDNDManager *)self stateMachine];
  [stateMachine _checkVehicleState];
}

- (void)_transitionToState:(unint64_t)state vehicularHints:(unint64_t)hints operatorState:(unint64_t)operatorState
{
  preferences = [(CARDNDManager *)self preferences];
  automaticDNDTriggeringMethod = [preferences automaticDNDTriggeringMethod];
  v11 = CarDNDWDLogging();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (state == 2)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v13 = "Evaluating transition to Vehicular state.";
  }

  else if (state == 1)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v13 = "Evaluating transition to Non-vehicular state.";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v13 = "Evaluating transition to Unknown state.";
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
LABEL_10:

  if (automaticDNDTriggeringMethod == 2)
  {
    v14 = CarDNDWDLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Automatic trigger mode.";
      goto LABEL_19;
    }
  }

  else if (automaticDNDTriggeringMethod == 1)
  {
    v14 = CarDNDWDLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "BT trigger mode.";
      goto LABEL_19;
    }
  }

  else
  {
    if (automaticDNDTriggeringMethod)
    {
      goto LABEL_21;
    }

    v14 = CarDNDWDLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Manual trigger mode.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    }
  }

LABEL_21:
  if (CRIsInternalInstall())
  {
    preferences2 = [(CARDNDManager *)self preferences];
    isAutomaticDNDInternalForceOverrideEnabledPreference = [preferences2 isAutomaticDNDInternalForceOverrideEnabledPreference];
  }

  else
  {
    isAutomaticDNDInternalForceOverrideEnabledPreference = 0;
  }

  preferences3 = [(CARDNDManager *)self preferences];
  if ([preferences3 shouldActivateWithCarPlay])
  {
    sessionStatus = [(CARDNDManager *)self sessionStatus];
    currentSession = [sessionStatus currentSession];
    v21 = currentSession != 0;
  }

  else
  {
    v21 = 0;
  }

  if (operatorState == 1)
  {
    preferences4 = CarDNDWDLogging();
    if (os_log_type_enabled(preferences4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, preferences4, OS_LOG_TYPE_DEFAULT, "User is not operating.", buf, 2u);
    }

    v23 = 1;
  }

  else
  {
    if (state == 1)
    {
      v23 = 1;
      goto LABEL_44;
    }

    preferences4 = [(CARDNDManager *)self preferences];
    automaticDNDTriggeringMethod2 = [preferences4 automaticDNDTriggeringMethod];
    v23 = 0;
    if ((hints & 0x10) == 0 && automaticDNDTriggeringMethod2 == 1)
    {
      v23 = (LOBYTE(self->_lastKnownVehicularHints) >> 4) & 1;
    }
  }

  if (isAutomaticDNDInternalForceOverrideEnabledPreference)
  {
    isAutomaticDNDInternalForceOverrideEnabledPreference = 1;
  }

  else if (state == 2)
  {
    preferences5 = [(CARDNDManager *)self preferences];
    if ([preferences5 automaticDNDTriggeringMethod] == 1)
    {
      isAutomaticDNDInternalForceOverrideEnabledPreference = (hints >> 4) & 1;
    }

    else
    {
      isAutomaticDNDInternalForceOverrideEnabledPreference = 1;
    }
  }

  else
  {
    isAutomaticDNDInternalForceOverrideEnabledPreference = 0;
  }

LABEL_44:
  assertionTrap = [(CARDNDManager *)self assertionTrap];
  isActive = [assertionTrap isActive];

  self->_lastKnownVehicularState = state;
  self->_lastKnownVehicularHints = hints;
  self->_vehicleQueryInitiatedTimestamp = 0.0;
  if (v23)
  {
    if (v21)
    {
      v28 = CarDNDWDLogging();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Ignoring non-vehicular report in CarPlay mode.", buf, 2u);
      }

LABEL_48:

      return;
    }

    objc_initWeak(buf, self);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100065404;
    v35[3] = &unk_1000DE9B0;
    objc_copyWeak(&v36, buf);
    [(CARDNDManager *)self _setDNDActive:0 trigger:2 completion:v35];
    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  else if (isAutomaticDNDInternalForceOverrideEnabledPreference)
  {
    if (isActive)
    {
      v29 = CarDNDWDLogging();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        assertionTrap2 = [(CARDNDManager *)self assertionTrap];
        activeAssertionsDebugString = [assertionTrap2 activeAssertionsDebugString];
        *buf = 138543362;
        v38 = activeAssertionsDebugString;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Not engaging Driving due to active assertions: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      preferences6 = [(CARDNDManager *)self preferences];
      if ([preferences6 automaticDNDTriggeringMethod])
      {
      }

      else
      {
        _hasDrivingActivityMode = [(CARDNDManager *)self _hasDrivingActivityMode];

        if (_hasDrivingActivityMode)
        {
          v28 = CarDNDWDLogging();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Driving Focus is available, but trigger is manual. Ignoring.", buf, 2u);
          }

          goto LABEL_48;
        }
      }

      v34 = +[CARAnalytics sharedInstance];
      [v34 DNDStartedWithTrigger:2 vehicleHints:{-[CARDNDManager lastKnownVehicularHints](self, "lastKnownVehicularHints")}];

      [(CARDNDManager *)self _setDNDActive:1 trigger:2 completion:0];
    }
  }
}

- (id)_internalText
{
  if (![(CARDNDManager *)self showsInternalAlerts])
  {
    v6 = 0;
    goto LABEL_24;
  }

  if (qword_100107FE0 != -1)
  {
    sub_100088B90();
  }

  v3 = qword_100107FD8;
  v4 = +[NSDate date];
  v5 = [v3 stringFromDate:v4];

  v6 = [NSString stringWithFormat:@"[Internal] %@", v5];

  if ([(CARDNDManager *)self isDNDValid])
  {
    lastKnownVehicularHints = [(CARDNDManager *)self lastKnownVehicularHints];
    if (!lastKnownVehicularHints)
    {
      v11 = @"None";
LABEL_23:
      v12 = [v6 stringByAppendingFormat:@" Reason: %@", v11];

      v6 = v12;
      goto LABEL_24;
    }

    v8 = lastKnownVehicularHints;
    v9 = +[NSMutableArray array];
    v10 = v9;
    if (v8)
    {
      [v9 addObject:@"Motion"];
      if ((v8 & 2) == 0)
      {
LABEL_8:
        if ((v8 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_8;
    }

    [v10 addObject:@"GPS"];
    if ((v8 & 4) == 0)
    {
LABEL_9:
      if ((v8 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v10 addObject:@"Baseband"];
    if ((v8 & 8) == 0)
    {
LABEL_10:
      if ((v8 & 0x10) == 0)
      {
LABEL_12:
        if ([v10 count])
        {
          v11 = [v10 componentsJoinedByString:@""];;
        }

        else
        {
          v11 = @"None";
        }

        goto LABEL_23;
      }

LABEL_11:
      [v10 addObject:@"Bluetooth"];
      goto LABEL_12;
    }

LABEL_19:
    [v10 addObject:@"Wi-Fi"];
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_24:

  return v6;
}

- (void)_scheduleVehicleQuery
{
  +[NSDate timeIntervalSinceReferenceDate];
  self->_vehicleQueryInitiatedTimestamp = v3;
  stateMachine = [(CARDNDManager *)self stateMachine];
  [stateMachine scheduleVehicleStateCheckWithDelay:30.0];
}

- (void)_drivingModeEnded
{
  v3 = CarDNDWDLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up Driving state.", v8, 2u);
  }

  [(CARDNDManager *)self _endIdleExitTransaction];
  geofencingObserver = [(CARDNDManager *)self geofencingObserver];
  [geofencingObserver setDNDActive:0];

  geofencingObserver2 = [(CARDNDManager *)self geofencingObserver];
  [geofencingObserver2 stopMonitoringLOIs];

  [(CARDNDManager *)self setLastKnownVehicularState:1];
  [(CARDNDManager *)self setLastKnownVehicularHints:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CARAutomaticDNDStatusChangedNotification, 0, 0, 1u);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v7, CARAutomaticDNDDisabledNotification, 0, 0, 1u);
}

- (void)_drivingModeChanged:(id)changed
{
  changedCopy = changed;
  eventBody = [changedCopy eventBody];
  starting = [eventBody starting];

  eventBody2 = [changedCopy eventBody];
  updateSource = [eventBody2 updateSource];

  eventBody3 = [changedCopy eventBody];
  updateReason = [eventBody3 updateReason];

  v11 = [NSMutableString stringWithString:@"Driving "];
  v12 = @"ended";
  if (starting)
  {
    v12 = @"started";
  }

  v13 = [NSString stringWithFormat:@"%@ externally", v12];
  [v11 appendString:v13];

  eventBody4 = [changedCopy eventBody];

  updateSource2 = [eventBody4 updateSource];
  if (updateSource2 - 1 > 2)
  {
    v16 = @" from an unknown source";
  }

  else
  {
    v16 = *(&off_1000DFC78 + updateSource2 - 1);
  }

  [v11 appendString:v16];
  v17 = CarDNDWDLogging();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (starting)
  {
    v18 = +[CARAnalytics sharedInstance];
    [v18 DNDStartedWithTrigger:1 vehicleHints:{-[CARDNDManager lastKnownVehicularHints](self, "lastKnownVehicularHints")}];

    assertionTrap = [(CARDNDManager *)self assertionTrap];
    [assertionTrap releaseAllTemporaryAssertions];

    v20 = ([(CARDNDManager *)self lastKnownVehicularHints]>> 4) & 1;
    self->_activatedByUserAction = updateReason == 1;
    if (updateSource == 2)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    [(CARDNDManager *)self _drivingModeStartedWithStartingGeofence:v21];
  }

  else
  {
    if ([(CARDNDManager *)self showsInternalAlerts])
    {
      assertionTrap2 = [(CARDNDManager *)self assertionTrap];
      v23 = [assertionTrap2 hasAssertion:2];

      if ((v23 & 1) == 0)
      {
        alertManager = [(CARDNDManager *)self alertManager];
        _internalText = [(CARDNDManager *)self _internalText];
        [alertManager showDNDEndNotificationWithText:_internalText completion:0];
      }
    }

    if (updateReason == 1)
    {
      if (updateSource == 2)
      {
        assertionTrap3 = [(CARDNDManager *)self assertionTrap];
        [assertionTrap3 takeAssertion:2];
      }

      else
      {
        [(CARDNDManager *)self _disableDNDUntilEndOfDrive];
      }

      v28 = +[CARAnalytics sharedInstance];
      lastKnownVehicularHints = [(CARDNDManager *)self lastKnownVehicularHints];
      v30 = v28;
      v31 = 5;
    }

    else if (self->_expectedDNDTermination)
    {
      v27 = CarDNDWDLogging();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Expected Driving termination.", buf, 2u);
      }

      v28 = +[CARAnalytics sharedInstance];
      lastKnownVehicularHints = [(CARDNDManager *)self lastKnownVehicularHints];
      v30 = v28;
      v31 = 4;
    }

    else
    {
      v28 = +[CARAnalytics sharedInstance];
      lastKnownVehicularHints = [(CARDNDManager *)self lastKnownVehicularHints];
      v30 = v28;
      v31 = 6;
    }

    [v30 DNDEndedWithTrigger:v31 vehicleHints:lastKnownVehicularHints context:0];

    [(CARDNDManager *)self _drivingModeEnded];
  }
}

- (void)_disableDNDUntilEndOfDrive
{
  if ([(CARDNDManager *)self showsInternalAlerts])
  {
    alertManager = [(CARDNDManager *)self alertManager];
    [alertManager showDNDNotDrivingAlertWithCompletion:&stru_1000DFC38];
  }

  lastKnownVehicularState = [(CARDNDManager *)self lastKnownVehicularState];
  assertionTrap = [(CARDNDManager *)self assertionTrap];
  v7 = assertionTrap;
  if (lastKnownVehicularState >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 8;
  }

  [assertionTrap takeAssertion:v6];
}

- (BOOL)_hasDrivingActivityMode
{
  dndModeService = self->_dndModeService;
  v11 = 0;
  v3 = [(DNDModeConfigurationService *)dndModeService modeConfigurationForModeIdentifier:@"com.apple.donotdisturb.mode.driving" error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = CarDNDWDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100088BA4();
    }

LABEL_4:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = CarDNDWDLogging();
  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v7)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No available driving mode.", v9, 2u);
    }

    goto LABEL_4;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User has configured a driving mode.", buf, 2u);
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (void)_migrateToDrivingActivityModeIfNeeded
{
  preferences = [(CARDNDManager *)self preferences];
  automaticDNDTriggeringMethod = [preferences automaticDNDTriggeringMethod];

  if (automaticDNDTriggeringMethod)
  {
    v5 = CarDNDWDLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v6 = "Performing migration for DNDWD based on trigger mode.";
      v7 = &v15;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  preferences2 = [(CARDNDManager *)self preferences];
  hasAdjustedTriggerMethod = [preferences2 hasAdjustedTriggerMethod];

  v5 = CarDNDWDLogging();
  v10 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (hasAdjustedTriggerMethod)
  {
    if (v10)
    {
      *buf = 0;
      v6 = "Performing migration for DNDWD based on previous trigger adjustment.";
      v7 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v11 = CarDNDWDLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Migrating to Driving activity mode.", v12, 2u);
    }

    [(CARDNDManager *)self _createDrivingActivityModeIfNeeded:0];
    return;
  }

  if (v10)
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not performing Driving migration.", v13, 2u);
  }
}

- (void)_createDrivingActivityModeIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  preferences = [(CARDNDManager *)self preferences];
  hasMigratedToDriving = [preferences hasMigratedToDriving];

  if (!hasMigratedToDriving || neededCopy)
  {
    if (neededCopy)
    {
      v9 = CarDNDWDLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating a Driving configuration from override.", buf, 2u);
      }
    }

    if (![(CARDNDManager *)self _hasDrivingActivityMode])
    {
      dndModeService = self->_dndModeService;
      v21 = 0;
      v7 = [(DNDModeConfigurationService *)dndModeService createDefaultDrivingModeConfigurationWithError:&v21];
      v11 = v21;
      if (v11)
      {
        preferences2 = v11;
        v13 = CarDNDWDLogging();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_100088C0C();
        }
      }

      else
      {
        v14 = self->_dndModeService;
        v20 = 0;
        v15 = [(DNDModeConfigurationService *)v14 setModeConfiguration:v7 error:&v20];
        v16 = v20;
        v17 = CarDNDWDLogging();
        v18 = v17;
        if (!v15 || v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            sub_100088C74();
          }

          goto LABEL_23;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Created driving activity mode.", buf, 2u);
        }

        preferences2 = [(CARDNDManager *)self preferences];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000663E8;
        v19[3] = &unk_1000DD480;
        v19[4] = self;
        [preferences2 _performCARPreferencesBlock:v19 forReading:0];
      }

      goto LABEL_23;
    }

    v7 = CarDNDWDLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Skipping driving migration; one already exists.";
      goto LABEL_12;
    }
  }

  else
  {
    v7 = CarDNDWDLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Skipping driving migration; already migrated.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }
  }

LABEL_23:
}

- (void)_processVehicleState:(id)state
{
  stateCopy = state;
  vehicleState = [stateCopy vehicleState];
  vehicularHints = [stateCopy vehicularHints];
  vehicleOperatorState = [stateCopy vehicleOperatorState];
  deviceID = [stateCopy deviceID];
  if (CRIsInternalInstall())
  {
    preferences = [(CARDNDManager *)self preferences];
    isAutomaticDNDInternalForceOverrideEnabledPreference = [preferences isAutomaticDNDInternalForceOverrideEnabledPreference];
  }

  else
  {
    isAutomaticDNDInternalForceOverrideEnabledPreference = 0;
  }

  preferences2 = [(CARDNDManager *)self preferences];
  shouldActivateWithCarPlay = [preferences2 shouldActivateWithCarPlay];

  if (isAutomaticDNDInternalForceOverrideEnabledPreference)
  {
    v12 = CarDNDWDLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Override is set; forcing vehicle state ON.", buf, 2u);
    }

    vehicleState = 2;
  }

  if (CRIsInternalInstall())
  {
    preferences3 = [(CARDNDManager *)self preferences];
    isAutomaticDNDInternalExitConfirmationOverrideEnabledPreference = [preferences3 isAutomaticDNDInternalExitConfirmationOverrideEnabledPreference];
    geofencingObserver = [(CARDNDManager *)self geofencingObserver];
    [geofencingObserver setExitConfirmationOverride:isAutomaticDNDInternalExitConfirmationOverrideEnabledPreference];
  }

  preferences4 = [(CARDNDManager *)self preferences];
  if (![preferences4 automaticDNDTriggeringMethod] && self->_lastKnownVehicularState == 2 && vehicleState == 2 && (self->_lastKnownVehicularHints & 0x10) != 0)
  {

    if ((vehicularHints & 0x10) == 0)
    {
      v24 = CarDNDWDLogging();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skipping non-BT in-vehicle report received after BT in-vehicle report.", buf, 2u);
      }

      goto LABEL_95;
    }
  }

  else
  {
  }

  preferences5 = [(CARDNDManager *)self preferences];
  if (-[NSObject automaticDNDTriggeringMethod](preferences5, "automaticDNDTriggeringMethod") == 1 && (self->_lastKnownVehicularHints & 0x10) != 0 && ([stateCopy vehicularHints] & 0x10) == 0)
  {
    v18 = self->_lastKnownVehicularState == 2;

    if (!v18)
    {
      goto LABEL_20;
    }

    preferences5 = CarDNDWDLogging();
    if (os_log_type_enabled(preferences5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, preferences5, OS_LOG_TYPE_DEFAULT, "Interpreted as BT disconnect.", buf, 2u);
    }

    vehicleState = 1;
  }

LABEL_20:
  if (isAutomaticDNDInternalForceOverrideEnabledPreference)
  {
LABEL_21:
    [(CARDNDManager *)self _transitionToState:vehicleState vehicularHints:vehicularHints operatorState:vehicleOperatorState];
    goto LABEL_95;
  }

  if (self->_lastKnownVehicularState == vehicleState && self->_lastKnownVehicularHints == vehicularHints && vehicleState != 1 && vehicleOperatorState != 1)
  {
    v19 = CarDNDWDLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [NSNumber numberWithUnsignedInteger:self->_lastKnownVehicularState];
      if (vehicularHints)
      {
        v21 = +[NSMutableArray array];
        v22 = v21;
        if (vehicularHints)
        {
          [v21 addObject:@"Motion"];
        }

        if ((vehicularHints & 2) != 0)
        {
          [v22 addObject:@"GPS"];
        }

        if ((vehicularHints & 4) != 0)
        {
          [v22 addObject:@"Baseband"];
        }

        if ((vehicularHints & 8) != 0)
        {
          [v22 addObject:@"Wi-Fi"];
        }

        if ((vehicularHints & 0x10) != 0)
        {
          [v22 addObject:@"Bluetooth"];
        }

        if ([v22 count])
        {
          v23 = [v22 componentsJoinedByString:@""];;
        }

        else
        {
          v23 = @"None";
        }
      }

      else
      {
        v23 = @"None";
      }

      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No change from vehicle state %@ with hints %@.", buf, 0x16u);
    }

    goto LABEL_95;
  }

  sessionStatus = [(CARDNDManager *)self sessionStatus];
  currentSession = [sessionStatus currentSession];
  v27 = currentSession == 0;

  if ((v27 | shouldActivateWithCarPlay))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v64 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066F70;
    block[3] = &unk_1000DDA88;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(&_dispatch_main_q, block);
    if (*(*&buf[8] + 24) == 1)
    {
      v28 = CarDNDWDLogging();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Ignoring vehicle state change because AirPlane mode is active.", v58, 2u);
      }

      self->_vehicleQueryInitiatedTimestamp = 0.0;
LABEL_52:
      _Block_object_dispose(buf, 8);
      goto LABEL_95;
    }

    if (self->_vehicleQueryInitiatedTimestamp <= 0.0)
    {
      v33 = 0;
    }

    else
    {
      v30 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v31 = +[NSDate date];
      v32 = [CARAnalytics calendarUnitsOfType:128 fromDate:v30 toDate:v31];

      v33 = v32 > 29;
    }

    v36 = (vehicularHints & 0x10) == 0 || deviceID == 0 || vehicleState != 2;
    if (((v36 | v33 | shouldActivateWithCarPlay) & 1) == 0)
    {
      if ([deviceID hasPrefix:@"CarKit"])
      {
        v37 = CarDNDWDLogging();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Likely a CarPlay connection.", v58, 2u);
        }

        [(CARDNDManager *)self _scheduleVehicleQuery];
        goto LABEL_52;
      }

      *v58 = 0;
      v59 = v58;
      v60 = 0x2020000000;
      v61 = 0;
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100066FCC;
      v55[3] = &unk_1000DDA88;
      v57 = v58;
      v38 = deviceID;
      v56 = v38;
      dispatch_sync(&_dispatch_main_q, v55);

      if (v59[24] == 1)
      {
        vehicleStore = [(CARDNDManager *)self vehicleStore];
        v40 = [vehicleStore vehicleForBluetoothAddress:v38];

        if (!v40 || [v40 pairingStatus] != 1)
        {
          v51 = CarDNDWDLogging();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "CarPlay vehicle that isn't disabled.", v54, 2u);
          }

          [(CARDNDManager *)self _scheduleVehicleQuery];
          _Block_object_dispose(v58, 8);
          goto LABEL_52;
        }
      }

      _Block_object_dispose(v58, 8);
    }

    if ([(CARDNDManager *)self _hasDrivingActivityMode])
    {
      assertionTrap = [(CARDNDManager *)self assertionTrap];
      v42 = [assertionTrap hasAssertion:2];

      if (v42)
      {
        v43 = CarDNDWDLogging();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Marking report while user disabled.", v58, 2u);
        }

        +[NSDate timeIntervalSinceReferenceDate];
        self->_lastKnownReportTime = v44;
        [(CARDNDManager *)self _scheduleUserDisabledTimerWithInterval:480.0];
        goto LABEL_52;
      }

      if (vehicleState == 2)
      {
        [(CARDNDManager *)self lastKnownReportTime];
        if (v45 > 0.0)
        {
          [(CARDNDManager *)self lastKnownReportTime];
          v46 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          v47 = +[NSDate date];
          v48 = [CARAnalytics calendarUnitsOfType:64 fromDate:v46 toDate:v47];

          if (v48 <= 7)
          {
            v52 = CarDNDWDLogging();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *v58 = 0;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Ignoring vehicular report - user disabled and still within delay window.", v58, 2u);
            }

            goto LABEL_52;
          }

          v49 = CarDNDWDLogging();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Vehicular report occurred after jitter interval.", v58, 2u);
          }

          [(CARDNDManager *)self _cancelUserDisabledTimer];
          assertionTrap2 = [(CARDNDManager *)self assertionTrap];
          [assertionTrap2 releaseAssertion:2];
        }
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_21;
  }

  v29 = CarDNDWDLogging();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Ignoring vehicle state change because CarPlay session is active.", buf, 2u);
  }

  self->_vehicleQueryInitiatedTimestamp = 0.0;
LABEL_95:
}

- (void)_beginIdleExitTransaction
{
  idleExitTransaction = [(CARDNDManager *)self idleExitTransaction];

  if (!idleExitTransaction)
  {
    v4 = CarDNDWDLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning IE transaction.", v6, 2u);
    }

    v5 = os_transaction_create();
    [(CARDNDManager *)self setIdleExitTransaction:v5];
  }
}

- (void)_endIdleExitTransaction
{
  idleExitTransaction = [(CARDNDManager *)self idleExitTransaction];

  if (idleExitTransaction)
  {
    v4 = CarDNDWDLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing IE transaction.", v5, 2u);
    }

    [(CARDNDManager *)self setIdleExitTransaction:0];
  }
}

- (void)_cancelUserDisabledTimer
{
  userDisableTimer = [(CARDNDManager *)self userDisableTimer];
  [userDisableTimer invalidate];

  [(CARDNDManager *)self setUserDisableTimer:0];
}

- (void)_scheduleUserDisabledTimerWithInterval:(double)interval
{
  [(CARDNDManager *)self _cancelUserDisabledTimer];
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:interval];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling user disabled timer after %@", &v11, 0xCu);
  }

  v7 = [NSTimer timerWithTimeInterval:self target:"_userDisabledTimerFired:" selector:0 userInfo:0 repeats:interval];
  userDisableTimer = self->_userDisableTimer;
  self->_userDisableTimer = v7;

  v9 = +[NSRunLoop mainRunLoop];
  userDisableTimer = [(CARDNDManager *)self userDisableTimer];
  [v9 addTimer:userDisableTimer forMode:NSDefaultRunLoopMode];
}

- (void)_userDisabledTimerFired:(id)fired
{
  v4 = CarDNDWDLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User disabled timer fired.", v6, 2u);
  }

  assertionTrap = [(CARDNDManager *)self assertionTrap];
  [assertionTrap releaseAssertion:2];
}

- (void)modeAssertionService:(id)service didReceiveModeAssertionInvalidation:(id)invalidation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000673CC;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end