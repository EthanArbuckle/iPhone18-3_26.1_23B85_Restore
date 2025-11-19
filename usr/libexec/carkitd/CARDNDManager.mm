@interface CARDNDManager
+ (void)setupSharedManagerWithVehicleStore:(id)a3 sessionStatus:(id)a4;
- (BOOL)_hasDrivingActivityMode;
- (BOOL)isCurrentlyInGeofencedRegion;
- (BOOL)isDNDValid;
- (BOOL)showsInternalAlerts;
- (CARDNDGeofencingObserver)geofencingObserver;
- (CARDNDManager)initWithVehicleState:(id)a3 alertManager:(id)a4 preferences:(id)a5 carSessionStatus:(id)a6 geoFencingObserver:(id)a7 assertionTrap:(id)a8 vehicleStore:(id)a9 stateService:(id)a10 modeConfigurationService:(id)a11 drivingStream:(id)a12;
- (id)_internalText;
- (void)_beginIdleExitTransaction;
- (void)_cancelUserDisabledTimer;
- (void)_checkVehicleState;
- (void)_createDrivingActivityModeIfNeeded:(BOOL)a3;
- (void)_disableDNDUntilEndOfDrive;
- (void)_drivingModeChanged:(id)a3;
- (void)_drivingModeEnded;
- (void)_endIdleExitTransaction;
- (void)_migrateToDrivingActivityModeIfNeeded;
- (void)_processVehicleState:(id)a3;
- (void)_scheduleUserDisabledTimerWithInterval:(double)a3;
- (void)_scheduleVehicleQuery;
- (void)_transitionToState:(unint64_t)a3 vehicularHints:(unint64_t)a4 operatorState:(unint64_t)a5;
- (void)_userDisabledTimerFired:(id)a3;
- (void)assertionTrap:(id)a3 didBecomeActive:(BOOL)a4;
- (void)dealloc;
- (void)geofencingObserver:(id)a3 didUpdateRegionState:(int64_t)a4;
- (void)modeAssertionService:(id)a3 didReceiveModeAssertionInvalidation:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)stateMachine:(id)a3 receivedAirplaneMode:(BOOL)a4;
- (void)stateMachine:(id)a3 receivedFMDMode:(BOOL)a4;
- (void)stateMachine:(id)a3 receivedVehicleState:(id)a4;
@end

@implementation CARDNDManager

+ (void)setupSharedManagerWithVehicleStore:(id)a3 sessionStatus:(id)a4
{
  v22 = a4;
  v21 = a3;
  v23 = objc_alloc_init(CARAutomaticDNDStatus);
  v6 = [CARDNDStateObserver alloc];
  v7 = objc_alloc_init(RadiosPreferences);
  v8 = [(CARDNDStateObserver *)v6 initWithRadiosPreferences:v7 vehicleStateClass:objc_opt_class()];

  v9 = [a1 alloc];
  v20 = objc_alloc_init(CARUserAlerts);
  v10 = [[CARDNDAssertionTrap alloc] initWithPreferences:v23];
  v11 = [DNDStateService serviceForClientIdentifier:@"com.apple.carkitd.assertion-service"];
  v12 = [DNDModeConfigurationService serviceForClientIdentifier:@"com.apple.carkitd.assertion-service"];
  v13 = BiomeLibrary();
  v14 = [v13 UserFocus];
  v15 = [v14 DoNotDisturbWhileDriving];
  v16 = v9;
  v17 = v10;
  v18 = [v16 initWithVehicleState:v8 alertManager:v20 preferences:v23 carSessionStatus:v22 geoFencingObserver:0 assertionTrap:v10 vehicleStore:v21 stateService:v11 modeConfigurationService:v12 drivingStream:v15];

  v19 = qword_100107FD0;
  qword_100107FD0 = v18;
}

- (CARDNDManager)initWithVehicleState:(id)a3 alertManager:(id)a4 preferences:(id)a5 carSessionStatus:(id)a6 geoFencingObserver:(id)a7 assertionTrap:(id)a8 vehicleStore:(id)a9 stateService:(id)a10 modeConfigurationService:(id)a11 drivingStream:(id)a12
{
  obj = a3;
  v53 = a3;
  v52 = a4;
  v54 = a5;
  v51 = a6;
  v50 = a7;
  v49 = a8;
  v48 = a9;
  v47 = a10;
  v46 = a11;
  v45 = a12;
  v57.receiver = self;
  v57.super_class = CARDNDManager;
  v18 = [(CARDNDManager *)&v57 init];
  if (v18)
  {
    v19 = dispatch_queue_create("com.apple.carkit.driving", 0);
    CARDNDQueue = v18->_CARDNDQueue;
    v18->_CARDNDQueue = v19;

    objc_storeStrong(&v18->_dndStateService, a10);
    objc_storeStrong(&v18->_dndModeService, a11);
    objc_storeStrong(&v18->_drivingStream, a12);
    objc_storeStrong(&v18->_stateMachine, obj);
    [(CARDNDStateObserver *)v18->_stateMachine setDelegate:v18];
    objc_storeStrong(&v18->_preferences, a5);
    objc_storeStrong(&v18->_alertManager, a4);
    v18->_lastKnownVehicularState = 0;
    v18->_lastKnownVehicularHints = 0;
    objc_storeStrong(&v18->_sessionStatus, a6);
    [(CARSessionStatus *)v18->_sessionStatus addSessionObserver:v18];
    objc_storeStrong(&v18->_geofencingObserver, a7);
    [(CARDNDGeofencingObserver *)v18->_geofencingObserver setDelegate:v18];
    objc_storeStrong(&v18->_assertionTrap, a8);
    [(CARDNDAssertionTrap *)v18->_assertionTrap setDelegate:v18];
    objc_storeStrong(&v18->_vehicleStore, a9);
    v18->_expectedDNDTermination = 0;
    v18->_vehicleQueryInitiatedTimestamp = 0.0;
    [v54 _detachObservers];
    v21 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.focus.driving" targetQueue:v18->_CARDNDQueue];
    v22 = BiomeLibrary();
    v23 = [v22 UserFocus];
    v24 = [v23 ComputedMode];

    v25 = [v24 DSLPublisher];
    v26 = [v25 filterWithKeyPath:@"eventBody.semanticType" value:&off_1000E8128];

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

    v31 = [(CARDNDManager *)v28 assertionTrap];
    LODWORD(v23) = [v31 isActive];

    if (!v23)
    {
      goto LABEL_15;
    }

    v32 = [(CARDNDManager *)v28 assertionTrap];
    if ([v32 hasAssertion:4])
    {
      v33 = [(CARDNDStateObserver *)v18->_stateMachine isInAirplaneMode];

      if (v33)
      {
LABEL_7:
        v34 = [(CARDNDManager *)v28 assertionTrap];
        v35 = [v34 hasAssertion:1];

        if (v35)
        {
          v36 = [(CARDNDManager *)v28 assertionTrap];
          [v36 releaseAssertion:1];
        }

        v37 = [(CARDNDManager *)v28 assertionTrap];
        v38 = [v37 hasAssertion:16];

        if (v38)
        {
          v39 = [(CARDNDManager *)v28 assertionTrap];
          [v39 releaseAssertion:16];
        }

        v40 = [(CARDNDManager *)v28 assertionTrap];
        if (![v40 hasAssertion:32])
        {
          goto LABEL_14;
        }

        v41 = [(CARDNDStateObserver *)v18->_stateMachine isInLostMode];

        if ((v41 & 1) == 0)
        {
          v40 = [(CARDNDManager *)v28 assertionTrap];
          [v40 releaseAssertion:32];
LABEL_14:
        }

LABEL_15:
        [(CARDNDManager *)v28 _migrateToDrivingActivityModeIfNeeded];
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, CARAutomaticDNDExitConfirmationDisabledNotification, 0, 0, 1u);

        goto LABEL_16;
      }

      v32 = [(CARDNDManager *)v28 assertionTrap];
      [v32 releaseAssertion:4];
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
    v4 = [(CARDNDManager *)self preferences];
    v5 = [v4 isAutomaticDNDInternalShowUserAlertsEnabledPreference];

    LOBYTE(v3) = v5;
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

- (void)sessionDidConnect:(id)a3
{
  v4 = [(CARDNDManager *)self CARDNDQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063F6C;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = [(CARDNDManager *)self preferences];
  v5 = [v4 shouldActivateWithCarPlay];

  v6 = [(CARDNDManager *)self preferences];
  v7 = [v6 automaticDNDTriggeringMethod];

  v8 = [(CARDNDManager *)self assertionTrap];
  [v8 releaseAssertion:1];

  if (!v5 || v7 != 2)
  {
    v15 = CarDNDWDLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CarPlay session ended; disabling Driving", buf, 2u);
    }

    v16 = +[CARAnalytics sharedInstance];
    [v16 DNDEndedWithTrigger:3 vehicleHints:-[CARDNDManager lastKnownVehicularHints](self context:{"lastKnownVehicularHints"), 0}];

    v12 = [(CARDNDManager *)self CARDNDQueue];
    v13 = v12;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000643E4;
    v18[3] = &unk_1000DD480;
    v18[4] = self;
    v14 = v18;
    goto LABEL_10;
  }

  v9 = [(CARDNDManager *)self lastKnownVehicularState];
  if (v9 < 2)
  {
    v10 = CarDNDWDLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CarPlay session ended; disabling Driving due to non-vehicular state", buf, 2u);
    }

    v11 = +[CARAnalytics sharedInstance];
    [v11 DNDEndedWithTrigger:3 vehicleHints:-[CARDNDManager lastKnownVehicularHints](self context:{"lastKnownVehicularHints"), 0}];

    v12 = [(CARDNDManager *)self CARDNDQueue];
    v13 = v12;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000643D0;
    v19[3] = &unk_1000DD480;
    v19[4] = self;
    v14 = v19;
LABEL_10:
    dispatch_async(v12, v14);

    return;
  }

  if (v9 == 2)
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
    v6 = [v3 activeModeIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.donotdisturb.mode.driving"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCurrentlyInGeofencedRegion
{
  v2 = [(CARDNDManager *)self geofencingObserver];
  v3 = [v2 currentlyInRegion];

  return v3;
}

- (void)stateMachine:(id)a3 receivedVehicleState:(id)a4
{
  v5 = a4;
  v6 = [(CARDNDManager *)self CARDNDQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000645A8;
  v8[3] = &unk_1000DD580;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)stateMachine:(id)a3 receivedAirplaneMode:(BOOL)a4
{
  v4 = a4;
  v5 = [(CARDNDManager *)self assertionTrap];
  v6 = v5;
  if (v4)
  {
    [v5 takeAssertion:4];
  }

  else
  {
    [v5 releaseAssertion:4];
  }
}

- (void)stateMachine:(id)a3 receivedFMDMode:(BOOL)a4
{
  v4 = a4;
  v5 = [(CARDNDManager *)self assertionTrap];
  v6 = v5;
  if (v4)
  {
    [v5 takeAssertion:32];
  }

  else
  {
    [v5 releaseAssertion:32];
  }
}

- (void)geofencingObserver:(id)a3 didUpdateRegionState:(int64_t)a4
{
  if ([(CARDNDManager *)self showsInternalAlerts])
  {
    v6 = [(CARDNDManager *)self preferences];
    v7 = [v6 isAutomaticDNDInternalShowGeofencingAlertsEnabledPreference];

    if (v7)
    {
      if (a4 == 2)
      {
        v8 = [(CARDNDManager *)self alertManager];
        [v8 showDNDExitGeofenceWithCompletion:0];
      }

      else
      {
        if (a4 != 1)
        {
          return;
        }

        v8 = [(CARDNDManager *)self alertManager];
        [v8 showDNDEnterGeofenceWithCompletion:0];
      }
    }
  }
}

- (void)assertionTrap:(id)a3 didBecomeActive:(BOOL)a4
{
  v6 = a3;
  v7 = [(CARDNDManager *)self CARDNDQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000647F0;
  block[3] = &unk_1000DFBD0;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_checkVehicleState
{
  v2 = [(CARDNDManager *)self stateMachine];
  [v2 _checkVehicleState];
}

- (void)_transitionToState:(unint64_t)a3 vehicularHints:(unint64_t)a4 operatorState:(unint64_t)a5
{
  v9 = [(CARDNDManager *)self preferences];
  v10 = [v9 automaticDNDTriggeringMethod];
  v11 = CarDNDWDLogging();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (a3 == 2)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v13 = "Evaluating transition to Vehicular state.";
  }

  else if (a3 == 1)
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

  if (v10 == 2)
  {
    v14 = CarDNDWDLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Automatic trigger mode.";
      goto LABEL_19;
    }
  }

  else if (v10 == 1)
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
    if (v10)
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
    v16 = [(CARDNDManager *)self preferences];
    v17 = [v16 isAutomaticDNDInternalForceOverrideEnabledPreference];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(CARDNDManager *)self preferences];
  if ([v18 shouldActivateWithCarPlay])
  {
    v19 = [(CARDNDManager *)self sessionStatus];
    v20 = [v19 currentSession];
    v21 = v20 != 0;
  }

  else
  {
    v21 = 0;
  }

  if (a5 == 1)
  {
    v22 = CarDNDWDLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "User is not operating.", buf, 2u);
    }

    v23 = 1;
  }

  else
  {
    if (a3 == 1)
    {
      v23 = 1;
      goto LABEL_44;
    }

    v22 = [(CARDNDManager *)self preferences];
    v25 = [v22 automaticDNDTriggeringMethod];
    v23 = 0;
    if ((a4 & 0x10) == 0 && v25 == 1)
    {
      v23 = (LOBYTE(self->_lastKnownVehicularHints) >> 4) & 1;
    }
  }

  if (v17)
  {
    v17 = 1;
  }

  else if (a3 == 2)
  {
    v24 = [(CARDNDManager *)self preferences];
    if ([v24 automaticDNDTriggeringMethod] == 1)
    {
      v17 = (a4 >> 4) & 1;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_44:
  v26 = [(CARDNDManager *)self assertionTrap];
  v27 = [v26 isActive];

  self->_lastKnownVehicularState = a3;
  self->_lastKnownVehicularHints = a4;
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

  else if (v17)
  {
    if (v27)
    {
      v29 = CarDNDWDLogging();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(CARDNDManager *)self assertionTrap];
        v31 = [v30 activeAssertionsDebugString];
        *buf = 138543362;
        v38 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Not engaging Driving due to active assertions: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v32 = [(CARDNDManager *)self preferences];
      if ([v32 automaticDNDTriggeringMethod])
      {
      }

      else
      {
        v33 = [(CARDNDManager *)self _hasDrivingActivityMode];

        if (v33)
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
    v7 = [(CARDNDManager *)self lastKnownVehicularHints];
    if (!v7)
    {
      v11 = @"None";
LABEL_23:
      v12 = [v6 stringByAppendingFormat:@" Reason: %@", v11];

      v6 = v12;
      goto LABEL_24;
    }

    v8 = v7;
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
  v4 = [(CARDNDManager *)self stateMachine];
  [v4 scheduleVehicleStateCheckWithDelay:30.0];
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
  v4 = [(CARDNDManager *)self geofencingObserver];
  [v4 setDNDActive:0];

  v5 = [(CARDNDManager *)self geofencingObserver];
  [v5 stopMonitoringLOIs];

  [(CARDNDManager *)self setLastKnownVehicularState:1];
  [(CARDNDManager *)self setLastKnownVehicularHints:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CARAutomaticDNDStatusChangedNotification, 0, 0, 1u);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v7, CARAutomaticDNDDisabledNotification, 0, 0, 1u);
}

- (void)_drivingModeChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 eventBody];
  v6 = [v5 starting];

  v7 = [v4 eventBody];
  v8 = [v7 updateSource];

  v9 = [v4 eventBody];
  v10 = [v9 updateReason];

  v11 = [NSMutableString stringWithString:@"Driving "];
  v12 = @"ended";
  if (v6)
  {
    v12 = @"started";
  }

  v13 = [NSString stringWithFormat:@"%@ externally", v12];
  [v11 appendString:v13];

  v14 = [v4 eventBody];

  v15 = [v14 updateSource];
  if (v15 - 1 > 2)
  {
    v16 = @" from an unknown source";
  }

  else
  {
    v16 = *(&off_1000DFC78 + v15 - 1);
  }

  [v11 appendString:v16];
  v17 = CarDNDWDLogging();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (v6)
  {
    v18 = +[CARAnalytics sharedInstance];
    [v18 DNDStartedWithTrigger:1 vehicleHints:{-[CARDNDManager lastKnownVehicularHints](self, "lastKnownVehicularHints")}];

    v19 = [(CARDNDManager *)self assertionTrap];
    [v19 releaseAllTemporaryAssertions];

    v20 = ([(CARDNDManager *)self lastKnownVehicularHints]>> 4) & 1;
    self->_activatedByUserAction = v10 == 1;
    if (v8 == 2)
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
      v22 = [(CARDNDManager *)self assertionTrap];
      v23 = [v22 hasAssertion:2];

      if ((v23 & 1) == 0)
      {
        v24 = [(CARDNDManager *)self alertManager];
        v25 = [(CARDNDManager *)self _internalText];
        [v24 showDNDEndNotificationWithText:v25 completion:0];
      }
    }

    if (v10 == 1)
    {
      if (v8 == 2)
      {
        v26 = [(CARDNDManager *)self assertionTrap];
        [v26 takeAssertion:2];
      }

      else
      {
        [(CARDNDManager *)self _disableDNDUntilEndOfDrive];
      }

      v28 = +[CARAnalytics sharedInstance];
      v29 = [(CARDNDManager *)self lastKnownVehicularHints];
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
      v29 = [(CARDNDManager *)self lastKnownVehicularHints];
      v30 = v28;
      v31 = 4;
    }

    else
    {
      v28 = +[CARAnalytics sharedInstance];
      v29 = [(CARDNDManager *)self lastKnownVehicularHints];
      v30 = v28;
      v31 = 6;
    }

    [v30 DNDEndedWithTrigger:v31 vehicleHints:v29 context:0];

    [(CARDNDManager *)self _drivingModeEnded];
  }
}

- (void)_disableDNDUntilEndOfDrive
{
  if ([(CARDNDManager *)self showsInternalAlerts])
  {
    v3 = [(CARDNDManager *)self alertManager];
    [v3 showDNDNotDrivingAlertWithCompletion:&stru_1000DFC38];
  }

  v4 = [(CARDNDManager *)self lastKnownVehicularState];
  v5 = [(CARDNDManager *)self assertionTrap];
  v7 = v5;
  if (v4 >= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 8;
  }

  [v5 takeAssertion:v6];
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
  v3 = [(CARDNDManager *)self preferences];
  v4 = [v3 automaticDNDTriggeringMethod];

  if (v4)
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

  v8 = [(CARDNDManager *)self preferences];
  v9 = [v8 hasAdjustedTriggerMethod];

  v5 = CarDNDWDLogging();
  v10 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v9)
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

- (void)_createDrivingActivityModeIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(CARDNDManager *)self preferences];
  v6 = [v5 hasMigratedToDriving];

  if (!v6 || v3)
  {
    if (v3)
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
        v12 = v11;
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

        v12 = [(CARDNDManager *)self preferences];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000663E8;
        v19[3] = &unk_1000DD480;
        v19[4] = self;
        [v12 _performCARPreferencesBlock:v19 forReading:0];
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

- (void)_processVehicleState:(id)a3
{
  v4 = a3;
  v5 = [v4 vehicleState];
  v6 = [v4 vehicularHints];
  v7 = [v4 vehicleOperatorState];
  v53 = [v4 deviceID];
  if (CRIsInternalInstall())
  {
    v8 = [(CARDNDManager *)self preferences];
    v9 = [v8 isAutomaticDNDInternalForceOverrideEnabledPreference];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CARDNDManager *)self preferences];
  v11 = [v10 shouldActivateWithCarPlay];

  if (v9)
  {
    v12 = CarDNDWDLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Override is set; forcing vehicle state ON.", buf, 2u);
    }

    v5 = 2;
  }

  if (CRIsInternalInstall())
  {
    v13 = [(CARDNDManager *)self preferences];
    v14 = [v13 isAutomaticDNDInternalExitConfirmationOverrideEnabledPreference];
    v15 = [(CARDNDManager *)self geofencingObserver];
    [v15 setExitConfirmationOverride:v14];
  }

  v16 = [(CARDNDManager *)self preferences];
  if (![v16 automaticDNDTriggeringMethod] && self->_lastKnownVehicularState == 2 && v5 == 2 && (self->_lastKnownVehicularHints & 0x10) != 0)
  {

    if ((v6 & 0x10) == 0)
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

  v17 = [(CARDNDManager *)self preferences];
  if (-[NSObject automaticDNDTriggeringMethod](v17, "automaticDNDTriggeringMethod") == 1 && (self->_lastKnownVehicularHints & 0x10) != 0 && ([v4 vehicularHints] & 0x10) == 0)
  {
    v18 = self->_lastKnownVehicularState == 2;

    if (!v18)
    {
      goto LABEL_20;
    }

    v17 = CarDNDWDLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Interpreted as BT disconnect.", buf, 2u);
    }

    v5 = 1;
  }

LABEL_20:
  if (v9)
  {
LABEL_21:
    [(CARDNDManager *)self _transitionToState:v5 vehicularHints:v6 operatorState:v7];
    goto LABEL_95;
  }

  if (self->_lastKnownVehicularState == v5 && self->_lastKnownVehicularHints == v6 && v5 != 1 && v7 != 1)
  {
    v19 = CarDNDWDLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [NSNumber numberWithUnsignedInteger:self->_lastKnownVehicularState];
      if (v6)
      {
        v21 = +[NSMutableArray array];
        v22 = v21;
        if (v6)
        {
          [v21 addObject:@"Motion"];
        }

        if ((v6 & 2) != 0)
        {
          [v22 addObject:@"GPS"];
        }

        if ((v6 & 4) != 0)
        {
          [v22 addObject:@"Baseband"];
        }

        if ((v6 & 8) != 0)
        {
          [v22 addObject:@"Wi-Fi"];
        }

        if ((v6 & 0x10) != 0)
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

  v25 = [(CARDNDManager *)self sessionStatus];
  v26 = [v25 currentSession];
  v27 = v26 == 0;

  if ((v27 | v11))
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

    v36 = (v6 & 0x10) == 0 || v53 == 0 || v5 != 2;
    if (((v36 | v33 | v11) & 1) == 0)
    {
      if ([v53 hasPrefix:@"CarKit"])
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
      v38 = v53;
      v56 = v38;
      dispatch_sync(&_dispatch_main_q, v55);

      if (v59[24] == 1)
      {
        v39 = [(CARDNDManager *)self vehicleStore];
        v40 = [v39 vehicleForBluetoothAddress:v38];

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
      v41 = [(CARDNDManager *)self assertionTrap];
      v42 = [v41 hasAssertion:2];

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

      if (v5 == 2)
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
          v50 = [(CARDNDManager *)self assertionTrap];
          [v50 releaseAssertion:2];
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
  v3 = [(CARDNDManager *)self idleExitTransaction];

  if (!v3)
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
  v3 = [(CARDNDManager *)self idleExitTransaction];

  if (v3)
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
  v3 = [(CARDNDManager *)self userDisableTimer];
  [v3 invalidate];

  [(CARDNDManager *)self setUserDisableTimer:0];
}

- (void)_scheduleUserDisabledTimerWithInterval:(double)a3
{
  [(CARDNDManager *)self _cancelUserDisabledTimer];
  v5 = CarDNDWDLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithDouble:a3];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling user disabled timer after %@", &v11, 0xCu);
  }

  v7 = [NSTimer timerWithTimeInterval:self target:"_userDisabledTimerFired:" selector:0 userInfo:0 repeats:a3];
  userDisableTimer = self->_userDisableTimer;
  self->_userDisableTimer = v7;

  v9 = +[NSRunLoop mainRunLoop];
  v10 = [(CARDNDManager *)self userDisableTimer];
  [v9 addTimer:v10 forMode:NSDefaultRunLoopMode];
}

- (void)_userDisabledTimerFired:(id)a3
{
  v4 = CarDNDWDLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User disabled timer fired.", v6, 2u);
  }

  v5 = [(CARDNDManager *)self assertionTrap];
  [v5 releaseAssertion:2];
}

- (void)modeAssertionService:(id)a3 didReceiveModeAssertionInvalidation:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000673CC;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end