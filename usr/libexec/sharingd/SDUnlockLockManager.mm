@interface SDUnlockLockManager
+ (id)sharedLockManager;
- (BOOL)localDeviceLocked;
- (BOOL)lostModeEnabled;
- (BOOL)unlockEnabled;
- (BOOL)updateLongTermKeys:(id)keys;
- (SDUnlockLockManager)init;
- (id)generateDebugInfo;
- (void)addObservers;
- (void)allowExiting;
- (void)checkKeyBagState;
- (void)debugInfoRequested:(id)requested;
- (void)devicesDidUnpair:(id)unpair;
- (void)disableUnlockPairing;
- (void)enableTimerFired:(id)fired;
- (void)enableUnlockForcingLTKTransfer:(BOOL)transfer;
- (void)enableUnlockWithDevice:(id)device passcode:(id)passcode completionHandler:(id)handler;
- (void)getWristAndMotionStateWithCompletionHandler:(id)handler;
- (void)handleClassALongTermKeyResponse:(id)response;
- (void)handleConfigurationState;
- (void)handleDevicesDidFailToPair;
- (void)handleEscrowSessionRequest:(id)request;
- (void)handleLongTermKeyResponse:(id)response;
- (void)handleRelockRequest;
- (void)handleSessionAuthToken:(id)token;
- (void)handleSessionKeyExchangeRequest:(id)request;
- (void)handleSetupCreateRecord:(id)record;
- (void)handleSetupSessionCreated:(id)created;
- (void)handleStartLTK:(id)k;
- (void)handleStashKeyExchangeRequest:(id)request;
- (void)handleStashToken:(id)token;
- (void)handleUnlockStateRequest:(id)request;
- (void)idsController:(id)controller didReceiveProtoData:(id)data forType:(unsigned __int16)type;
- (void)idsControllerSpaceDidBecomeAvailable:(id)available;
- (void)invalidateEnableTimer;
- (void)invalidateLongTermKeyTimer;
- (void)keyBagLockStateChange:(id)change;
- (void)notifyEnableStateWithError:(id)error;
- (void)preventExiting;
- (void)resetLongTermKeyRequest;
- (void)resetState;
- (void)restartEnableTimerWithTimeout:(double)timeout;
- (void)restartLongTermKeyTimer;
- (void)scheduleDailyMetricReporterIfNeeded;
- (void)sendLongTermKeyRequest:(id)request requestID:(id)d;
- (void)wristDetectionDisabled:(id)disabled;
@end

@implementation SDUnlockLockManager

+ (id)sharedLockManager
{
  if (qword_10098A428 != -1)
  {
    sub_100241170();
  }

  v3 = qword_10098A420;

  return v3;
}

- (SDUnlockLockManager)init
{
  v17.receiver = self;
  v17.super_class = SDUnlockLockManager;
  v2 = [(SDUnlockSessionManager *)&v17 init];
  v3 = v2;
  if (v2)
  {
    requestID = v2->_requestID;
    v2->_requestID = 0;

    enableTimer = v3->_enableTimer;
    v3->_enableTimer = 0;

    enableHandler = v3->_enableHandler;
    v3->_enableHandler = 0;

    v3->_sentLockedState = 0;
    v3->_unlockSessionID = -1;
    longTermKeyTimer = v3->_longTermKeyTimer;
    v3->_longTermKeyTimer = 0;

    positionSemaphore = v3->_positionSemaphore;
    v3->_positionSemaphore = 0;

    v3->_waitingForAuthToken = 0;
    v3->_deviceOffWristForSessionID = -1;
    [(SDUnlockLockManager *)v3 addObservers];
    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      pairingCompatibilityState = [(SDUnlockSessionManager *)v3 pairingCompatibilityState];
      deviceIsPaired = [(SDUnlockSessionManager *)v3 deviceIsPaired];
      v12 = @"NO";
      if (deviceIsPaired)
      {
        v12 = @"YES";
      }

      *buf = 67109378;
      v19 = pairingCompatibilityState;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Key loading NanoRegitry, (compatibility state = %d, is paired = %@)", buf, 0x12u);
    }

    [(SDUnlockLockManager *)v3 checkKeyBagState];
    v13 = objc_alloc_init(SDUnlockLockMetricDates);
    metricDates = v3->_metricDates;
    v3->_metricDates = v13;

    v15 = +[NSDate now];
    [(SDUnlockLockMetricDates *)v3->_metricDates setBooted:v15];

    [(SDUnlockLockManager *)v3 scheduleDailyMetricReporterIfNeeded];
  }

  return v3;
}

- (void)addObservers
{
  v2.receiver = self;
  v2.super_class = SDUnlockLockManager;
  [(SDUnlockSessionManager *)&v2 addObservers];
}

- (void)debugInfoRequested:(id)requested
{
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  generateDebugInfo = [(SDUnlockLockManager *)self generateDebugInfo];
  sub_100086F68(v6, generateDebugInfo);
}

- (id)generateDebugInfo
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = SDUnlockLockManager;
  generateDebugInfo = [(SDUnlockSessionManager *)&v9 generateDebugInfo];
  [v3 addObjectsFromArray:generateDebugInfo];

  waitingForAuthToken = [(SDUnlockLockManager *)self waitingForAuthToken];
  v6 = @"NO";
  if (waitingForAuthToken)
  {
    v6 = @"YES";
  }

  v7 = [NSString stringWithFormat:@"Waiting For Auth Token:%@", v6];
  [v3 addObject:v7];

  return v3;
}

- (void)keyBagLockStateChange:(id)change
{
  v4 = CUMainQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10023C2F8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleConfigurationState
{
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  v4 = [securityManager generateLocalLongTermKey:3];
  tempLongTermKey = self->_tempLongTermKey;
  self->_tempLongTermKey = v4;

  if (self->_tempLongTermKey)
  {
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    requestID = self->_requestID;
    self->_requestID = uUIDString;

    v9 = self->_tempLongTermKey;
    v10 = self->_requestID;

    [(SDUnlockLockManager *)self sendLongTermKeyRequest:v9 requestID:v10];
  }

  else
  {
    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100241184(&self->_tempLongTermKey);
    }
  }
}

- (void)handleDevicesDidFailToPair
{
  [(SDUnlockLockManager *)self invalidateLongTermKeyTimer];
  [(SDUnlockLockManager *)self resetLongTermKeyRequest];
  v3.receiver = self;
  v3.super_class = SDUnlockLockManager;
  [(SDUnlockSessionManager *)&v3 handleDevicesDidFailToPair];
}

- (void)devicesDidUnpair:(id)unpair
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Devices unpaired", v4, 2u);
  }
}

- (void)checkKeyBagState
{
  if (![(SDUnlockLockManager *)self unlockEnabled])
  {
    return;
  }

  v3 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagDisabled = [v3 deviceKeyBagDisabled];

  if (deviceKeyBagDisabled)
  {
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Passcode disabled while sharingd wasn't running", buf, 2u);
    }

    [(SDUnlockLockManager *)self disableUnlockPairing];
    [(SDUnlockSessionManager *)self sendDisableMessage];
    return;
  }

  v6 = +[SDStatusMonitor sharedMonitor];
  if ([v6 deviceKeyBagLocked])
  {

LABEL_9:
    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device locked on start up", v14, 2u);
    }

    [(SDUnlockLockManager *)self sendDeviceLockStateChanged:0];
    return;
  }

  v7 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagLocking = [v7 deviceKeyBagLocking];

  if (deviceKeyBagLocking)
  {
    goto LABEL_9;
  }

  v10 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v10 deviceKeyBagUnlocked];

  if (deviceKeyBagUnlocked)
  {
    v12 = paired_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device unlocked on start up. Assuming device was last unlocked with Paired Unlock", v13, 2u);
    }

    [(SDUnlockLockManager *)self setLastUnlockedByPairedUnlock:1];
  }
}

- (void)scheduleDailyMetricReporterIfNeeded
{
  dailyMetricReporter = [(SDUnlockLockManager *)self dailyMetricReporter];
  if (dailyMetricReporter)
  {
  }

  else if ([(SDUnlockLockManager *)self unlockEnabled])
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Started tracking daily metrics", buf, 2u);
    }

    v5 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.Sharing.PairedUnlock.DailyMetric"];
    [(SDUnlockLockManager *)self setDailyMetricReporter:v5];

    dailyMetricReporter2 = [(SDUnlockLockManager *)self dailyMetricReporter];
    [dailyMetricReporter2 setRepeats:1];

    dailyMetricReporter3 = [(SDUnlockLockManager *)self dailyMetricReporter];
    [dailyMetricReporter3 setInterval:86400.0];

    dailyMetricReporter4 = [(SDUnlockLockManager *)self dailyMetricReporter];
    [dailyMetricReporter4 setTolerance:60.0];

    dailyMetricReporter5 = [(SDUnlockLockManager *)self dailyMetricReporter];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10023CAD8;
    v11[3] = &unk_1008D52A0;
    v11[4] = self;
    [dailyMetricReporter5 scheduleWithBlock:v11];

    v10 = objc_alloc_init(SFPairedUnlockDailyEvent);
    [(SDUnlockLockManager *)self setDailyMetrics:v10];
  }
}

- (void)restartEnableTimerWithTimeout:(double)timeout
{
  enableTimer = self->_enableTimer;
  if (enableTimer)
  {
    [(NSTimer *)enableTimer invalidate];
  }

  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"enableTimerFired:" selector:0 userInfo:0 repeats:timeout];
  v7 = self->_enableTimer;
  self->_enableTimer = v6;
}

- (void)enableTimerFired:(id)fired
{
  enableTimer = self->_enableTimer;
  self->_enableTimer = 0;

  v5 = SFUnlockErrorDomian;
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Other side never responded";
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [NSError errorWithDomain:v5 code:107 userInfo:v6];
  [(SDUnlockLockManager *)self notifyEnableStateWithError:v7];
}

- (void)invalidateEnableTimer
{
  enableTimer = self->_enableTimer;
  if (enableTimer)
  {
    [(NSTimer *)enableTimer invalidate];
    v4 = self->_enableTimer;
    self->_enableTimer = 0;
  }
}

- (void)restartLongTermKeyTimer
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting long-term key timer", buf, 2u);
  }

  longTermKeyTimer = self->_longTermKeyTimer;
  if (!longTermKeyTimer)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10023D010;
    v8[3] = &unk_1008CDEA0;
    v8[4] = self;
    v5 = sub_1001F0548(0, &_dispatch_main_q, v8);
    v6 = self->_longTermKeyTimer;
    self->_longTermKeyTimer = v5;

    dispatch_resume(self->_longTermKeyTimer);
    longTermKeyTimer = self->_longTermKeyTimer;
  }

  v7 = sub_1001F0530(45.0 + 45.0);
  sub_1001F05F0(longTermKeyTimer, v7);
}

- (void)invalidateLongTermKeyTimer
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating long-term key timer", v6, 2u);
  }

  longTermKeyTimer = self->_longTermKeyTimer;
  if (longTermKeyTimer)
  {
    dispatch_source_cancel(longTermKeyTimer);
    v5 = self->_longTermKeyTimer;
    self->_longTermKeyTimer = 0;
  }
}

- (void)enableUnlockWithDevice:(id)device passcode:(id)passcode completionHandler:(id)handler
{
  deviceCopy = device;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10023D1F8;
  v12[3] = &unk_1008CE6B8;
  passcodeCopy = passcode;
  v14 = deviceCopy;
  selfCopy = self;
  handlerCopy = handler;
  v9 = deviceCopy;
  v10 = handlerCopy;
  v11 = passcodeCopy;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)enableUnlockForcingLTKTransfer:(BOOL)transfer
{
  transferCopy = transfer;
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  ltksExist = [securityManager ltksExist];

  securityManager2 = [(SDUnlockSessionManager *)self securityManager];
  ltkFileExists = [securityManager2 ltkFileExists];

  if (self->_tempLongTermKey || (ltksExist & ltkFileExists) == 1 && !transferCopy)
  {
    goto LABEL_13;
  }

  [(SDUnlockSessionManager *)self updateSecurityManagerIfNeeded];
  securityManager3 = [(SDUnlockSessionManager *)self securityManager];
  [securityManager3 deleteLongTermKeys];

  securityManager4 = [(SDUnlockSessionManager *)self securityManager];
  v11 = [securityManager4 generateLocalLongTermKey:3];
  tempLongTermKey = self->_tempLongTermKey;
  self->_tempLongTermKey = v11;

  v13 = self->_tempLongTermKey;
  if (!v13)
  {
LABEL_13:
    v20 = paired_unlock_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using existing LTK", &v21, 2u);
    }

    [(SDUnlockLockManager *)self sendSetupRequest:0 withSessionID:[(SDUnlockSessionManager *)self generateSessionID]];
  }

  else
  {
    v14 = v13;
    v15 = paired_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      if (transferCopy)
      {
        v16 = @"YES";
      }

      v21 = 138412290;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Using updated LTK (forcing: %@)", &v21, 0xCu);
    }

    inConfigureState = [(SDUnlockSessionManager *)self inConfigureState];
    v18 = paired_unlock_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (inConfigureState)
    {
      if (v19)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Exchanging LTKs during setup", &v21, 2u);
      }

      [(SDUnlockLockManager *)self sendSetupRequest:v14 withSessionID:[(SDUnlockSessionManager *)self generateSessionID]];
    }

    else
    {
      if (v19)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Exchanging LTKs using new service", &v21, 2u);
      }

      [(SDUnlockLockManager *)self sendClassALongTermKeyRequest:v14 sessionID:[(SDUnlockSessionManager *)self generateSessionID]];
    }
  }
}

- (void)notifyEnableStateWithError:(id)error
{
  errorCopy = error;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying client with error = %@", &v12, 0xCu);
  }

  enableHandler = self->_enableHandler;
  if (enableHandler)
  {
    enableHandler[2](enableHandler, errorCopy == 0, errorCopy);
    v7 = self->_enableHandler;
    self->_enableHandler = 0;
  }

  if (errorCopy)
  {
    [(SDUnlockLockManager *)self disableUnlockPairing];
  }

  tempLongTermKey = self->_tempLongTermKey;
  self->_tempLongTermKey = 0;

  passcode = self->_passcode;
  self->_passcode = 0;

  self->_canRetrySetup = 1;
  [(SDUnlockSessionManager *)self resetSetupState];
  [(SDUnlockLockManager *)self invalidateEnableTimer];
  if (self->_preventingExitForSetup)
  {
    self->_preventingExitForSetup = 0;
    v10 = dispatch_time(0, 2000000000);
    v11 = SFMainQueue();
    dispatch_after(v10, v11, &stru_1008D52C0);
  }
}

- (BOOL)unlockEnabled
{
  v8.receiver = self;
  v8.super_class = SDUnlockLockManager;
  unlockEnabled = [(SDUnlockSessionManager *)&v8 unlockEnabled];
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  v5 = [securityManager unlockSessionAsOriginator:0 usingEscrow:1 escrowSecret:0];

  securityManager2 = [(SDUnlockSessionManager *)self securityManager];
  [securityManager2 clearStateForSession:v5];

  return v5 >= 0 && unlockEnabled;
}

- (void)wristDetectionDisabled:(id)disabled
{
  if (disabled)
  {
    (*(disabled + 2))(disabled, 1, 0);
  }
}

- (void)disableUnlockPairing
{
  [(SDUnlockLockManager *)self setSentLockedState:0];
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  [securityManager resetEscrowRecord];

  dailyMetricReporter = [(SDUnlockLockManager *)self dailyMetricReporter];
  [dailyMetricReporter invalidate];

  [(SDUnlockLockManager *)self setDailyMetricReporter:0];
  [(SDUnlockLockManager *)self setDailyMetrics:0];
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopped tracking daily metrics", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = SDUnlockLockManager;
  [(SDUnlockSessionManager *)&v6 disableUnlockPairing];
}

- (void)resetState
{
  self->_unlockSessionID = -1;
  self->_deviceOffWristForSessionID = -1;
  self->_onWristForCurrentSession = 0;
  sessionStartDate = self->_sessionStartDate;
  self->_sessionStartDate = 0;

  [(SDUnlockLockManager *)self setWaitingForAuthToken:0];
  v4.receiver = self;
  v4.super_class = SDUnlockLockManager;
  [(SDUnlockSessionManager *)&v4 resetState];
}

- (void)resetLongTermKeyRequest
{
  tempLongTermKey = self->_tempLongTermKey;
  self->_tempLongTermKey = 0;

  requestID = self->_requestID;
  self->_requestID = 0;

  [(SDUnlockLockManager *)self allowExiting];
}

- (BOOL)localDeviceLocked
{
  v2 = +[SDStatusMonitor sharedMonitor];
  if ([v2 deviceKeyBagLocked])
  {
    deviceKeyBagLocking = 1;
  }

  else
  {
    v4 = +[SDStatusMonitor sharedMonitor];
    deviceKeyBagLocking = [v4 deviceKeyBagLocking];
  }

  return deviceKeyBagLocking;
}

- (BOOL)lostModeEnabled
{
  v2 = SFLostMode();
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lostModeEnabled = %@", &v6, 0xCu);
  }

  return v2;
}

- (void)getWristAndMotionStateWithCompletionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v4 = +[NSDate now];
    metricDates = [(SDUnlockLockManager *)self metricDates];
    [metricDates setMotionCheckStarted:v4];

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)preventExiting
{
  v2 = +[SDStatusMonitor sharedMonitor];
  [v2 addPreventExitForLocaleReason:@"SDUnlockLTKTransferPreventExitReason"];
}

- (void)allowExiting
{
  v2 = +[SDStatusMonitor sharedMonitor];
  [v2 removePreventExitForLocaleReason:@"SDUnlockLTKTransferPreventExitReason"];
}

- (void)idsController:(id)controller didReceiveProtoData:(id)data forType:(unsigned __int16)type
{
  typeCopy = type;
  controllerCopy = controller;
  dataCopy = data;
  if (typeCopy <= 103)
  {
    if (typeCopy > 100)
    {
      if (typeCopy == 101)
      {
        [(SDUnlockLockManager *)self invalidateEnableTimer];
        [(SDUnlockLockManager *)self handleSetupSessionCreated:dataCopy];
      }

      else if (typeCopy == 102)
      {
        [(SDUnlockLockManager *)self invalidateEnableTimer];
        [(SDUnlockLockManager *)self handleSetupCreateRecord:dataCopy];
      }

      else
      {
        [(SDUnlockLockManager *)self handleSessionKeyExchangeRequest:dataCopy];
      }
    }

    else
    {
      switch(typeCopy)
      {
        case 1:
          v9 = [[SDUnlockReset alloc] initWithData:dataCopy];
          [(SDUnlockSessionManager *)self logProtoBufReceived:v9];

          [(SDUnlockSessionManager *)self resetAndClearState];
          break;
        case 2:
          v10 = [[SDUnlockDisable alloc] initWithData:dataCopy];
          [(SDUnlockSessionManager *)self logProtoBufReceived:v10];

          [(SDUnlockLockManager *)self disableUnlockPairing];
          break;
        case 3:
          [(SDUnlockLockManager *)self handleUnlockStateRequest:dataCopy];
          break;
      }
    }
  }

  else if (typeCopy <= 106)
  {
    if (typeCopy == 104)
    {
      [(SDUnlockSessionManager *)self invalidateUnlockTimer];
      [(SDUnlockLockManager *)self handleSessionAuthToken:dataCopy];
    }

    else if (typeCopy == 105)
    {
      [(SDUnlockLockManager *)self handleStashKeyExchangeRequest:dataCopy];
    }

    else
    {
      [(SDUnlockLockManager *)self handleStashToken:dataCopy];
    }
  }

  else if (typeCopy > 108)
  {
    if (typeCopy == 109)
    {
      [(SDUnlockLockManager *)self invalidateEnableTimer];
      [(SDUnlockLockManager *)self handleClassALongTermKeyResponse:dataCopy];
    }

    else if (typeCopy == 111)
    {
      [(SDUnlockLockManager *)self handleRelockRequest];
    }
  }

  else if (typeCopy == 107)
  {
    [(SDUnlockLockManager *)self handleLongTermKeyResponse:dataCopy];
  }

  else
  {
    [(SDUnlockLockManager *)self handleStartLTK:dataCopy];
  }
}

- (void)idsControllerSpaceDidBecomeAvailable:(id)available
{
  if ([(SDUnlockLockManager *)self unlockEnabled])
  {
    v4 = +[SDStatusMonitor sharedMonitor];
    -[SDUnlockLockManager sendDeviceLockStateChanged:](self, "sendDeviceLockStateChanged:", [v4 deviceKeyBagUnlocked]);
  }
}

- (void)handleStartLTK:(id)k
{
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received SDUnlockStartLTKTransfer", v6, 2u);
  }

  [(SDUnlockLockManager *)self preventExiting];
  if (self->_tempLongTermKey)
  {
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100241370();
    }
  }

  else
  {
    [(SDUnlockSessionManager *)self updateSecurityManager];
    [(SDUnlockLockManager *)self handleConfigurationState];
  }
}

- (void)handleLongTermKeyResponse:(id)response
{
  responseCopy = response;
  v5 = [[SDUnlockLongTermKeyResponse alloc] initWithData:responseCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if ([(SDUnlockLongTermKeyResponse *)v5 hasRequestID])
  {
    requestID = [(SDUnlockLongTermKeyResponse *)v5 requestID];
    v7 = [requestID isEqualToString:self->_requestID];

    if (v7)
    {
      if ([(SDUnlockLongTermKeyResponse *)v5 hasKeyFailed])
      {
        v8 = paired_unlock_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10024157C();
        }
      }

      else if ([(SDUnlockLongTermKeyResponse *)v5 hasLongTermKey])
      {
        longTermKey = [(SDUnlockLongTermKeyResponse *)v5 longTermKey];
        v11 = [(SDUnlockLockManager *)self updateLongTermKeys:longTermKey];

        if (v11)
        {
LABEL_16:
          [(SDUnlockLockManager *)self invalidateLongTermKeyTimer];
          [(SDUnlockLockManager *)self resetLongTermKeyRequest];
          goto LABEL_17;
        }

        v8 = paired_unlock_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100241540();
        }
      }

      else
      {
        v8 = paired_unlock_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100241488(v5);
        }
      }

      goto LABEL_16;
    }
  }

  v9 = paired_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1002413AC(v5, self);
  }

LABEL_17:
}

- (void)handleClassALongTermKeyResponse:(id)response
{
  responseCopy = response;
  v5 = [[SDUnlockClassALongTermKeyResponse alloc] initWithData:responseCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if ([(SDUnlockClassALongTermKeyResponse *)v5 hasErrorCode])
  {
    if ([(SDUnlockClassALongTermKeyResponse *)v5 hasErrorCode])
    {
      errorCode = [(SDUnlockClassALongTermKeyResponse *)v5 errorCode];
    }

    else
    {
      errorCode = 103;
    }

    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1002416AC();
    }

    v10 = SFUnlockErrorDomian;
    v11 = errorCode;
LABEL_17:
    v14 = [NSError errorWithDomain:v10 code:v11 userInfo:0];
    [(SDUnlockLockManager *)self notifyEnableStateWithError:v14];

    goto LABEL_18;
  }

  if (![(SDUnlockClassALongTermKeyResponse *)v5 hasLongTermKey])
  {
    v12 = paired_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1002415B8(v5);
    }

    v10 = SFUnlockErrorDomian;
    v11 = 103;
    goto LABEL_17;
  }

  longTermKey = [(SDUnlockClassALongTermKeyResponse *)v5 longTermKey];
  v8 = [(SDUnlockLockManager *)self updateLongTermKeys:longTermKey];

  if (!v8)
  {
    v13 = paired_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100241670();
    }

    v10 = SFUnlockErrorDomian;
    v11 = 101;
    goto LABEL_17;
  }

  [(SDUnlockLockManager *)self sendSetupRequest:0 withSessionID:[(SDUnlockClassALongTermKeyResponse *)v5 sessionID]];
LABEL_18:
}

- (BOOL)updateLongTermKeys:(id)keys
{
  if (!keys)
  {
    return 0;
  }

  keysCopy = keys;
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  v6 = [securityManager signRemoteKey:keysCopy withLocalKey:self->_tempLongTermKey localKeyClass:3 remoteKeyClass:1];

  v7 = v6 != 0;
  if (v6)
  {
    securityManager2 = [(SDUnlockSessionManager *)self securityManager];
    [securityManager2 updateLocalLongTermKey:self->_tempLongTermKey remoteLongTermKey:v6];
  }

  return v7;
}

- (void)handleSetupSessionCreated:(id)created
{
  createdCopy = created;
  v5 = [[SDUnlockSetupSessionCreated alloc] initWithData:createdCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if (v5 && ![(SDUnlockSetupSessionCreated *)v5 hasErrorCode])
  {
    if ([(SDUnlockSetupSessionCreated *)v5 hasLongTermKey]&& ([(SDUnlockSetupSessionCreated *)v5 longTermKey], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(SDUnlockLockManager *)self updateLongTermKeys:v8], v8, !v9))
    {
      v12 = paired_unlock_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100241720();
      }

      v13 = SFUnlockErrorDomian;
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Could not sign remote key";
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v15 = [NSError errorWithDomain:v13 code:101 userInfo:v14];
      [(SDUnlockLockManager *)self notifyEnableStateWithError:v15];

      [(SDUnlockSessionManager *)self sendDisableMessage];
    }

    else
    {
      [(SDUnlockLockManager *)self handleEscrowSessionRequest:v5];
    }
  }

  else if (self->_canRetrySetup && [(SDUnlockSetupSessionCreated *)v5 hasErrorCode]&& ([(SDUnlockSetupSessionCreated *)v5 errorCode]== 188 || [(SDUnlockSetupSessionCreated *)v5 errorCode]== 187))
  {
    self->_canRetrySetup = 0;
    v6 = paired_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002417D0();
    }

    [(SDUnlockLockManager *)self enableUnlockForcingLTKTransfer:1];
  }

  else
  {
    if ([(SDUnlockSetupSessionCreated *)v5 hasErrorCode])
    {
      errorCode = [(SDUnlockSetupSessionCreated *)v5 errorCode];
    }

    else
    {
      errorCode = 103;
    }

    v10 = paired_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10024175C();
    }

    v11 = [NSError errorWithDomain:SFUnlockErrorDomian code:errorCode userInfo:0];
    [(SDUnlockLockManager *)self notifyEnableStateWithError:v11];
  }
}

- (void)handleEscrowSessionRequest:(id)request
{
  requestCopy = request;
  if (![requestCopy hasToken])
  {
    goto LABEL_8;
  }

  securityManager = [(SDUnlockSessionManager *)self securityManager];
  localLongTermKey = [securityManager localLongTermKey];
  if (!localLongTermKey)
  {

    goto LABEL_8;
  }

  v7 = localLongTermKey;
  securityManager2 = [(SDUnlockSessionManager *)self securityManager];
  remoteLongTermKey = [securityManager2 remoteLongTermKey];

  if (!remoteLongTermKey)
  {
LABEL_8:
    v15 = paired_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100241884(requestCopy, self, v15);
    }

    v16 = SFUnlockErrorDomian;
    v27 = NSLocalizedDescriptionKey;
    v28 = @"Missing information to created session";
    v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v18 = v16;
    v19 = 103;
    goto LABEL_11;
  }

  securityManager3 = [(SDUnlockSessionManager *)self securityManager];
  -[SDUnlockSessionManager setSetupAuthSession:](self, "setSetupAuthSession:", [securityManager3 escrowCreationSessionAsOriginator:0 errorCode:0]);

  if ([(SDUnlockSessionManager *)self setupAuthSession]< 0)
  {
    v21 = paired_unlock_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10024180C();
    }

    v22 = SFUnlockErrorDomian;
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Could not create escrow session";
    v17 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v18 = v22;
    v19 = 101;
LABEL_11:
    v20 = [NSError errorWithDomain:v18 code:v19 userInfo:v17];
    [(SDUnlockLockManager *)self notifyEnableStateWithError:v20];

    [(SDUnlockSessionManager *)self sendDisableMessage];
    goto LABEL_12;
  }

  securityManager4 = [(SDUnlockSessionManager *)self securityManager];
  setupAuthSession = [(SDUnlockSessionManager *)self setupAuthSession];
  token = [requestCopy token];
  v14 = [securityManager4 stepWithAuthSession:setupAuthSession data:token];

  if (v14)
  {
    -[SDUnlockLockManager sendCreateEscrowSecretWithStepData:sessionID:](self, "sendCreateEscrowSecretWithStepData:sessionID:", v14, [requestCopy sessionID]);
  }

  else
  {
    v23 = paired_unlock_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100241848();
    }

    v24 = SFUnlockErrorDomian;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Could not step escrow session";
    v25 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v26 = [NSError errorWithDomain:v24 code:101 userInfo:v25];
    [(SDUnlockLockManager *)self notifyEnableStateWithError:v26];

    [(SDUnlockSessionManager *)self sendDisableMessage];
  }

LABEL_12:
}

- (void)handleSetupCreateRecord:(id)record
{
  recordCopy = record;
  v5 = [[SDUnlockSetupCreateRecord alloc] initWithData:recordCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if (v5 && [(SDUnlockSetupCreateRecord *)v5 hasToken]&& ![(SDUnlockSetupCreateRecord *)v5 hasErrorCode])
  {
    securityManager = [(SDUnlockSessionManager *)self securityManager];
    setupAuthSession = [(SDUnlockSessionManager *)self setupAuthSession];
    token = [(SDUnlockSetupCreateRecord *)v5 token];
    v15 = [securityManager stepWithAuthSession:setupAuthSession data:token authStep:1];

    if (v15)
    {
      securityManager2 = [(SDUnlockSessionManager *)self securityManager];
      v17 = [securityManager2 setupWithAuthSession:-[SDUnlockSessionManager setupAuthSession](self passcode:{"setupAuthSession"), self->_passcode}];

      if (v17)
      {
        [(SDUnlockLockManager *)self notifyEnableStateWithError:0];
        [(SDUnlockSessionManager *)self enableUnlockPairing];
        [(SDUnlockLockManager *)self scheduleDailyMetricReporterIfNeeded];
LABEL_26:

        goto LABEL_17;
      }

      v19 = SFUnlockErrorDomian;
      v28 = NSLocalizedDescriptionKey;
      v29 = @"Could not step escrow record";
      v20 = &v29;
      v21 = &v28;
    }

    else
    {
      v18 = paired_unlock_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1002419D4();
      }

      v19 = SFUnlockErrorDomian;
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Could not complete final step";
      v20 = &v27;
      v21 = &v26;
    }

    v22 = [NSDictionary dictionaryWithObjects:v20 forKeys:v21 count:1];
    v23 = [NSError errorWithDomain:v19 code:101 userInfo:v22];
    [(SDUnlockLockManager *)self notifyEnableStateWithError:v23];

    [(SDUnlockSessionManager *)self sendDisableMessage];
    goto LABEL_26;
  }

  if (self->_canRetrySetup && [(SDUnlockSetupCreateRecord *)v5 hasErrorCode]&& ([(SDUnlockSetupCreateRecord *)v5 errorCode]== 188 || [(SDUnlockSetupCreateRecord *)v5 errorCode]== 187))
  {
    self->_canRetrySetup = 0;
    v6 = paired_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100241A80();
    }

    [(SDUnlockLockManager *)self enableUnlockForcingLTKTransfer:1];
  }

  else
  {
    if ([(SDUnlockSetupCreateRecord *)v5 hasErrorCode])
    {
      errorCode = [(SDUnlockSetupCreateRecord *)v5 errorCode];
    }

    else
    {
      errorCode = 103;
    }

    v8 = paired_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100241A10();
    }

    v9 = SFUnlockErrorDomian;
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Error occured on the lock side";
    v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v11 = [NSError errorWithDomain:v9 code:errorCode userInfo:v10];
    [(SDUnlockLockManager *)self notifyEnableStateWithError:v11];

    [(SDUnlockSessionManager *)self sendDisableMessage];
  }

LABEL_17:
}

- (void)handleSessionKeyExchangeRequest:(id)request
{
  requestCopy = request;
  if ([(SDUnlockLockManager *)self unlockEnabled])
  {
    if ([(SDUnlockLockManager *)self localDeviceLocked])
    {
      dailyMetrics = [(SDUnlockLockManager *)self dailyMetrics];
      [dailyMetrics setTotalAttempts:{objc_msgSend(dailyMetrics, "totalAttempts") + 1}];

      v6 = [[SDUnlockSessionKeyExchangeRequest alloc] initWithData:requestCopy];
      [(SDUnlockSessionManager *)self logProtoBufReceived:v6];
      if ([(SDUnlockSessionKeyExchangeRequest *)v6 hasSessionID]&& self->_unlockSessionID != [(SDUnlockSessionKeyExchangeRequest *)v6 sessionID])
      {
        if (![(SDUnlockLockManager *)self lostModeEnabled])
        {
          self->_unlockSessionID = [(SDUnlockSessionKeyExchangeRequest *)v6 sessionID];
          v16 = objc_opt_new();
          [(SDUnlockLockManager *)self setSessionStartDate:v16];

          [(SDUnlockLockManager *)self setOnWristForCurrentSession:[(SDUnlockLockManager *)self inPosition]];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10023F26C;
          v18[3] = &unk_1008D52E8;
          v18[4] = self;
          v19 = v6;
          [(SDUnlockLockManager *)self getWristAndMotionStateWithCompletionHandler:v18];

          goto LABEL_23;
        }

        v15 = paired_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100241AF8();
        }

        sessionID = [(SDUnlockSessionKeyExchangeRequest *)v6 sessionID];
        selfCopy2 = self;
        v14 = 4;
      }

      else
      {
        hasSessionID = [(SDUnlockSessionKeyExchangeRequest *)v6 hasSessionID];
        v8 = paired_unlock_log();
        v9 = v8;
        if (hasSessionID)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received request for session in progress", v17, 2u);
          }

          goto LABEL_23;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100241B78();
        }

        selfCopy2 = self;
        sessionID = 0;
        v14 = 8;
      }

      [(SDUnlockSessionManager *)selfCopy2 sendResetMessage:sessionID reason:v14];
LABEL_23:

      goto LABEL_24;
    }

    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device already unlocked", v17, 2u);
    }

    [(SDUnlockLockManager *)self sendDeviceLockStateChanged:1];
  }

  else
  {
    v10 = paired_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100241ABC();
    }

    [(SDUnlockSessionManager *)self sendDisableMessage];
  }

LABEL_24:
}

- (void)handleSessionAuthToken:(id)token
{
  tokenCopy = token;
  if ([(SDUnlockLockManager *)self localDeviceLocked])
  {
    v5 = [[SDUnlockSessionAuthToken alloc] initWithData:tokenCopy];
    [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
    deviceOffWristForSessionID = [(SDUnlockLockManager *)self deviceOffWristForSessionID];
    if (deviceOffWristForSessionID == [(SDUnlockLockManager *)self unlockSessionID])
    {
      v7 = paired_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100241D00();
      }

      sessionID = [(SDUnlockSessionAuthToken *)v5 sessionID];
      selfCopy2 = self;
      v10 = 13;
    }

    else
    {
      if ([(SDUnlockLockManager *)self inPosition]&& [(SDUnlockLockManager *)self waitingForAuthToken]&& [(SDUnlockSessionAuthToken *)v5 hasAuthToken])
      {
        [(SDUnlockLockManager *)self setLastUnlockedByPairedUnlock:1];
        securityManager = [(SDUnlockSessionManager *)self securityManager];
        unlockAuthSession = [(SDUnlockSessionManager *)self unlockAuthSession];
        authToken = [(SDUnlockSessionAuthToken *)v5 authToken];
        v15 = [securityManager stepWithAuthSession:unlockAuthSession data:authToken authStep:1];

        sessionID2 = [(SDUnlockSessionAuthToken *)v5 sessionID];
        if (v15)
        {
          [(SDUnlockLockManager *)self sendSessionUnlockConfirmation:1 sessionID:sessionID2];
          v17 = paired_unlock_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "UNLOCK SUCCEEDED", buf, 2u);
          }

          v18 = +[NSDate date];
          [(SDUnlockLockManager *)self setLastPairedUnlockDate:v18];
        }

        else
        {
          [(SDUnlockLockManager *)self sendSessionUnlockConfirmation:0 sessionID:sessionID2];
          [(SDUnlockLockManager *)self setLastUnlockedByPairedUnlock:0];
        }

        [(SDUnlockLockManager *)self resetState];

        goto LABEL_27;
      }

      v19 = paired_unlock_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100241C2C(self);
      }

      if ([(SDUnlockLockManager *)self inPosition])
      {
        if ([(SDUnlockLockManager *)self waitingForAuthToken])
        {
          if ([(SDUnlockSessionAuthToken *)v5 hasAuthToken])
          {
            v20 = 0;
          }

          else
          {
            v20 = 11;
          }
        }

        else
        {
          v20 = 10;
        }
      }

      else
      {
        v20 = 12;
      }

      sessionID = [(SDUnlockSessionAuthToken *)v5 sessionID];
      selfCopy2 = self;
      v10 = v20;
    }

    [(SDUnlockSessionManager *)selfCopy2 sendResetMessage:sessionID reason:v10];
LABEL_27:

    goto LABEL_28;
  }

  v11 = paired_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ignoring auth token, device unlocked", v21, 2u);
  }

  [(SDUnlockLockManager *)self sendDeviceLockStateChanged:1];
LABEL_28:
}

- (void)handleStashKeyExchangeRequest:(id)request
{
  requestCopy = request;
  v5 = [[SDUnlockStashKeyExchangeRequest alloc] initWithData:requestCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if (![(SDUnlockStashKeyExchangeRequest *)v5 hasKey])
  {
    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100241D3C();
    }

    goto LABEL_8;
  }

  securityManager = [(SDUnlockSessionManager *)self securityManager];
  -[SDUnlockSessionManager setStashBagSession:](self, "setStashBagSession:", [securityManager stashBagSessionAsOriginator:0 escrowSecret:0 manifest:0]);

  if ([(SDUnlockSessionManager *)self stashBagSession]< 0)
  {
    goto LABEL_8;
  }

  securityManager2 = [(SDUnlockSessionManager *)self securityManager];
  stashBagSession = [(SDUnlockSessionManager *)self stashBagSession];
  v9 = [(SDUnlockStashKeyExchangeRequest *)v5 key];
  v10 = [securityManager2 stepWithAuthSession:stashBagSession data:v9];

  if (!v10)
  {
LABEL_8:
    [(SDUnlockLockManager *)self sendStashKeyExchangeResponse:0 sessionID:[(SDUnlockStashKeyExchangeRequest *)v5 sessionID] errorCode:101];
    goto LABEL_9;
  }

  [(SDUnlockLockManager *)self sendStashKeyExchangeResponse:v10 sessionID:[(SDUnlockStashKeyExchangeRequest *)v5 sessionID] errorCode:0];

LABEL_9:
}

- (void)handleStashToken:(id)token
{
  tokenCopy = token;
  v10 = [[SDUnlockStashToken alloc] initWithData:tokenCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v10];
  if ([(SDUnlockStashToken *)v10 hasStashToken])
  {
    securityManager = [(SDUnlockSessionManager *)self securityManager];
    stashBagSession = [(SDUnlockSessionManager *)self stashBagSession];
    stashToken = [(SDUnlockStashToken *)v10 stashToken];
    v8 = [securityManager stepWithAuthSession:stashBagSession data:stashToken authStep:1];

    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  [(SDUnlockLockManager *)self sendStashConfirmation:v9 sessionID:[(SDUnlockStashToken *)v10 sessionID]];
  [(SDUnlockSessionManager *)self resetStashState];
}

- (void)handleRelockRequest
{
  if (self->_unlockSessionID)
  {
    [(SDUnlockSessionManager *)self resetAndClearState];
  }

  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Locking device", v3, 2u);
  }

  sub_1001EA8AC();
}

- (void)handleUnlockStateRequest:(id)request
{
  requestCopy = request;
  v8 = [[SDUnlockStateRequest alloc] initWithData:requestCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v8];
  unlockEnabled = [(SDUnlockLockManager *)self unlockEnabled];
  v6 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagDisabled = [v6 deviceKeyBagDisabled];

  [(SDUnlockLockManager *)self sendStateResponseWithUnlockEnabled:unlockEnabled passcodeEnabled:deviceKeyBagDisabled ^ 1];
}

- (void)sendLongTermKeyRequest:(id)request requestID:(id)d
{
  dCopy = d;
  requestCopy = request;
  v8 = objc_alloc_init(SDUnlockLongTermKeyRequest);
  [(SDUnlockLongTermKeyRequest *)v8 setVersion:1];
  [(SDUnlockLongTermKeyRequest *)v8 setLongTermKey:requestCopy];

  [(SDUnlockLongTermKeyRequest *)v8 setRequestID:dCopy];
  [(SDUnlockSessionManager *)self logProtoBufSend:v8];
  idsController = [(SDUnlockSessionManager *)self idsController];
  data = [(SDUnlockLongTermKeyRequest *)v8 data];
  v11 = [NSNumber numberWithDouble:45.0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10023FE74;
  v12[3] = &unk_1008CDF90;
  v12[4] = self;
  [idsController sendProtocolBufferData:data withType:1008 timeout:v11 option:0 errorHandler:v12];

  [(SDUnlockLockManager *)self restartLongTermKeyTimer];
}

@end