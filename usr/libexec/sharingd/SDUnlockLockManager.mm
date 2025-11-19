@interface SDUnlockLockManager
+ (id)sharedLockManager;
- (BOOL)localDeviceLocked;
- (BOOL)lostModeEnabled;
- (BOOL)unlockEnabled;
- (BOOL)updateLongTermKeys:(id)a3;
- (SDUnlockLockManager)init;
- (id)generateDebugInfo;
- (void)addObservers;
- (void)allowExiting;
- (void)checkKeyBagState;
- (void)debugInfoRequested:(id)a3;
- (void)devicesDidUnpair:(id)a3;
- (void)disableUnlockPairing;
- (void)enableTimerFired:(id)a3;
- (void)enableUnlockForcingLTKTransfer:(BOOL)a3;
- (void)enableUnlockWithDevice:(id)a3 passcode:(id)a4 completionHandler:(id)a5;
- (void)getWristAndMotionStateWithCompletionHandler:(id)a3;
- (void)handleClassALongTermKeyResponse:(id)a3;
- (void)handleConfigurationState;
- (void)handleDevicesDidFailToPair;
- (void)handleEscrowSessionRequest:(id)a3;
- (void)handleLongTermKeyResponse:(id)a3;
- (void)handleRelockRequest;
- (void)handleSessionAuthToken:(id)a3;
- (void)handleSessionKeyExchangeRequest:(id)a3;
- (void)handleSetupCreateRecord:(id)a3;
- (void)handleSetupSessionCreated:(id)a3;
- (void)handleStartLTK:(id)a3;
- (void)handleStashKeyExchangeRequest:(id)a3;
- (void)handleStashToken:(id)a3;
- (void)handleUnlockStateRequest:(id)a3;
- (void)idsController:(id)a3 didReceiveProtoData:(id)a4 forType:(unsigned __int16)a5;
- (void)idsControllerSpaceDidBecomeAvailable:(id)a3;
- (void)invalidateEnableTimer;
- (void)invalidateLongTermKeyTimer;
- (void)keyBagLockStateChange:(id)a3;
- (void)notifyEnableStateWithError:(id)a3;
- (void)preventExiting;
- (void)resetLongTermKeyRequest;
- (void)resetState;
- (void)restartEnableTimerWithTimeout:(double)a3;
- (void)restartLongTermKeyTimer;
- (void)scheduleDailyMetricReporterIfNeeded;
- (void)sendLongTermKeyRequest:(id)a3 requestID:(id)a4;
- (void)wristDetectionDisabled:(id)a3;
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
      v10 = [(SDUnlockSessionManager *)v3 pairingCompatibilityState];
      v11 = [(SDUnlockSessionManager *)v3 deviceIsPaired];
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      *buf = 67109378;
      v19 = v10;
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

- (void)debugInfoRequested:(id)a3
{
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  v5 = [(SDUnlockLockManager *)self generateDebugInfo];
  sub_100086F68(v6, v5);
}

- (id)generateDebugInfo
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = SDUnlockLockManager;
  v4 = [(SDUnlockSessionManager *)&v9 generateDebugInfo];
  [v3 addObjectsFromArray:v4];

  v5 = [(SDUnlockLockManager *)self waitingForAuthToken];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [NSString stringWithFormat:@"Waiting For Auth Token:%@", v6];
  [v3 addObject:v7];

  return v3;
}

- (void)keyBagLockStateChange:(id)a3
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
  v3 = [(SDUnlockSessionManager *)self securityManager];
  v4 = [v3 generateLocalLongTermKey:3];
  tempLongTermKey = self->_tempLongTermKey;
  self->_tempLongTermKey = v4;

  if (self->_tempLongTermKey)
  {
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];
    requestID = self->_requestID;
    self->_requestID = v7;

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

- (void)devicesDidUnpair:(id)a3
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
  v4 = [v3 deviceKeyBagDisabled];

  if (v4)
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
  v8 = [v7 deviceKeyBagLocking];

  if (v8)
  {
    goto LABEL_9;
  }

  v10 = +[SDStatusMonitor sharedMonitor];
  v11 = [v10 deviceKeyBagUnlocked];

  if (v11)
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
  v3 = [(SDUnlockLockManager *)self dailyMetricReporter];
  if (v3)
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

    v6 = [(SDUnlockLockManager *)self dailyMetricReporter];
    [v6 setRepeats:1];

    v7 = [(SDUnlockLockManager *)self dailyMetricReporter];
    [v7 setInterval:86400.0];

    v8 = [(SDUnlockLockManager *)self dailyMetricReporter];
    [v8 setTolerance:60.0];

    v9 = [(SDUnlockLockManager *)self dailyMetricReporter];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10023CAD8;
    v11[3] = &unk_1008D52A0;
    v11[4] = self;
    [v9 scheduleWithBlock:v11];

    v10 = objc_alloc_init(SFPairedUnlockDailyEvent);
    [(SDUnlockLockManager *)self setDailyMetrics:v10];
  }
}

- (void)restartEnableTimerWithTimeout:(double)a3
{
  enableTimer = self->_enableTimer;
  if (enableTimer)
  {
    [(NSTimer *)enableTimer invalidate];
  }

  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"enableTimerFired:" selector:0 userInfo:0 repeats:a3];
  v7 = self->_enableTimer;
  self->_enableTimer = v6;
}

- (void)enableTimerFired:(id)a3
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

- (void)enableUnlockWithDevice:(id)a3 passcode:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10023D1F8;
  v12[3] = &unk_1008CE6B8;
  v13 = a4;
  v14 = v8;
  v15 = self;
  v16 = a5;
  v9 = v8;
  v10 = v16;
  v11 = v13;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)enableUnlockForcingLTKTransfer:(BOOL)a3
{
  v3 = a3;
  v5 = [(SDUnlockSessionManager *)self securityManager];
  v6 = [v5 ltksExist];

  v7 = [(SDUnlockSessionManager *)self securityManager];
  v8 = [v7 ltkFileExists];

  if (self->_tempLongTermKey || (v6 & v8) == 1 && !v3)
  {
    goto LABEL_13;
  }

  [(SDUnlockSessionManager *)self updateSecurityManagerIfNeeded];
  v9 = [(SDUnlockSessionManager *)self securityManager];
  [v9 deleteLongTermKeys];

  v10 = [(SDUnlockSessionManager *)self securityManager];
  v11 = [v10 generateLocalLongTermKey:3];
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
      if (v3)
      {
        v16 = @"YES";
      }

      v21 = 138412290;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Using updated LTK (forcing: %@)", &v21, 0xCu);
    }

    v17 = [(SDUnlockSessionManager *)self inConfigureState];
    v18 = paired_unlock_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
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

- (void)notifyEnableStateWithError:(id)a3
{
  v4 = a3;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying client with error = %@", &v12, 0xCu);
  }

  enableHandler = self->_enableHandler;
  if (enableHandler)
  {
    enableHandler[2](enableHandler, v4 == 0, v4);
    v7 = self->_enableHandler;
    self->_enableHandler = 0;
  }

  if (v4)
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
  v3 = [(SDUnlockSessionManager *)&v8 unlockEnabled];
  v4 = [(SDUnlockSessionManager *)self securityManager];
  v5 = [v4 unlockSessionAsOriginator:0 usingEscrow:1 escrowSecret:0];

  v6 = [(SDUnlockSessionManager *)self securityManager];
  [v6 clearStateForSession:v5];

  return v5 >= 0 && v3;
}

- (void)wristDetectionDisabled:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1, 0);
  }
}

- (void)disableUnlockPairing
{
  [(SDUnlockLockManager *)self setSentLockedState:0];
  v3 = [(SDUnlockSessionManager *)self securityManager];
  [v3 resetEscrowRecord];

  v4 = [(SDUnlockLockManager *)self dailyMetricReporter];
  [v4 invalidate];

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
    v3 = 1;
  }

  else
  {
    v4 = +[SDStatusMonitor sharedMonitor];
    v3 = [v4 deviceKeyBagLocking];
  }

  return v3;
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

- (void)getWristAndMotionStateWithCompletionHandler:(id)a3
{
  if (a3)
  {
    v6 = a3;
    v4 = +[NSDate now];
    v5 = [(SDUnlockLockManager *)self metricDates];
    [v5 setMotionCheckStarted:v4];

    (*(v6 + 2))(v6, 0, 0);
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

- (void)idsController:(id)a3 didReceiveProtoData:(id)a4 forType:(unsigned __int16)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  if (v5 <= 103)
  {
    if (v5 > 100)
    {
      if (v5 == 101)
      {
        [(SDUnlockLockManager *)self invalidateEnableTimer];
        [(SDUnlockLockManager *)self handleSetupSessionCreated:v8];
      }

      else if (v5 == 102)
      {
        [(SDUnlockLockManager *)self invalidateEnableTimer];
        [(SDUnlockLockManager *)self handleSetupCreateRecord:v8];
      }

      else
      {
        [(SDUnlockLockManager *)self handleSessionKeyExchangeRequest:v8];
      }
    }

    else
    {
      switch(v5)
      {
        case 1:
          v9 = [[SDUnlockReset alloc] initWithData:v8];
          [(SDUnlockSessionManager *)self logProtoBufReceived:v9];

          [(SDUnlockSessionManager *)self resetAndClearState];
          break;
        case 2:
          v10 = [[SDUnlockDisable alloc] initWithData:v8];
          [(SDUnlockSessionManager *)self logProtoBufReceived:v10];

          [(SDUnlockLockManager *)self disableUnlockPairing];
          break;
        case 3:
          [(SDUnlockLockManager *)self handleUnlockStateRequest:v8];
          break;
      }
    }
  }

  else if (v5 <= 106)
  {
    if (v5 == 104)
    {
      [(SDUnlockSessionManager *)self invalidateUnlockTimer];
      [(SDUnlockLockManager *)self handleSessionAuthToken:v8];
    }

    else if (v5 == 105)
    {
      [(SDUnlockLockManager *)self handleStashKeyExchangeRequest:v8];
    }

    else
    {
      [(SDUnlockLockManager *)self handleStashToken:v8];
    }
  }

  else if (v5 > 108)
  {
    if (v5 == 109)
    {
      [(SDUnlockLockManager *)self invalidateEnableTimer];
      [(SDUnlockLockManager *)self handleClassALongTermKeyResponse:v8];
    }

    else if (v5 == 111)
    {
      [(SDUnlockLockManager *)self handleRelockRequest];
    }
  }

  else if (v5 == 107)
  {
    [(SDUnlockLockManager *)self handleLongTermKeyResponse:v8];
  }

  else
  {
    [(SDUnlockLockManager *)self handleStartLTK:v8];
  }
}

- (void)idsControllerSpaceDidBecomeAvailable:(id)a3
{
  if ([(SDUnlockLockManager *)self unlockEnabled])
  {
    v4 = +[SDStatusMonitor sharedMonitor];
    -[SDUnlockLockManager sendDeviceLockStateChanged:](self, "sendDeviceLockStateChanged:", [v4 deviceKeyBagUnlocked]);
  }
}

- (void)handleStartLTK:(id)a3
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

- (void)handleLongTermKeyResponse:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockLongTermKeyResponse alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if ([(SDUnlockLongTermKeyResponse *)v5 hasRequestID])
  {
    v6 = [(SDUnlockLongTermKeyResponse *)v5 requestID];
    v7 = [v6 isEqualToString:self->_requestID];

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
        v10 = [(SDUnlockLongTermKeyResponse *)v5 longTermKey];
        v11 = [(SDUnlockLockManager *)self updateLongTermKeys:v10];

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

- (void)handleClassALongTermKeyResponse:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockClassALongTermKeyResponse alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if ([(SDUnlockClassALongTermKeyResponse *)v5 hasErrorCode])
  {
    if ([(SDUnlockClassALongTermKeyResponse *)v5 hasErrorCode])
    {
      v6 = [(SDUnlockClassALongTermKeyResponse *)v5 errorCode];
    }

    else
    {
      v6 = 103;
    }

    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1002416AC();
    }

    v10 = SFUnlockErrorDomian;
    v11 = v6;
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

  v7 = [(SDUnlockClassALongTermKeyResponse *)v5 longTermKey];
  v8 = [(SDUnlockLockManager *)self updateLongTermKeys:v7];

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

- (BOOL)updateLongTermKeys:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(SDUnlockSessionManager *)self securityManager];
  v6 = [v5 signRemoteKey:v4 withLocalKey:self->_tempLongTermKey localKeyClass:3 remoteKeyClass:1];

  v7 = v6 != 0;
  if (v6)
  {
    v8 = [(SDUnlockSessionManager *)self securityManager];
    [v8 updateLocalLongTermKey:self->_tempLongTermKey remoteLongTermKey:v6];
  }

  return v7;
}

- (void)handleSetupSessionCreated:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockSetupSessionCreated alloc] initWithData:v4];

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
      v7 = [(SDUnlockSetupSessionCreated *)v5 errorCode];
    }

    else
    {
      v7 = 103;
    }

    v10 = paired_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10024175C();
    }

    v11 = [NSError errorWithDomain:SFUnlockErrorDomian code:v7 userInfo:0];
    [(SDUnlockLockManager *)self notifyEnableStateWithError:v11];
  }
}

- (void)handleEscrowSessionRequest:(id)a3
{
  v4 = a3;
  if (![v4 hasToken])
  {
    goto LABEL_8;
  }

  v5 = [(SDUnlockSessionManager *)self securityManager];
  v6 = [v5 localLongTermKey];
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = v6;
  v8 = [(SDUnlockSessionManager *)self securityManager];
  v9 = [v8 remoteLongTermKey];

  if (!v9)
  {
LABEL_8:
    v15 = paired_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100241884(v4, self, v15);
    }

    v16 = SFUnlockErrorDomian;
    v27 = NSLocalizedDescriptionKey;
    v28 = @"Missing information to created session";
    v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v18 = v16;
    v19 = 103;
    goto LABEL_11;
  }

  v10 = [(SDUnlockSessionManager *)self securityManager];
  -[SDUnlockSessionManager setSetupAuthSession:](self, "setSetupAuthSession:", [v10 escrowCreationSessionAsOriginator:0 errorCode:0]);

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

  v11 = [(SDUnlockSessionManager *)self securityManager];
  v12 = [(SDUnlockSessionManager *)self setupAuthSession];
  v13 = [v4 token];
  v14 = [v11 stepWithAuthSession:v12 data:v13];

  if (v14)
  {
    -[SDUnlockLockManager sendCreateEscrowSecretWithStepData:sessionID:](self, "sendCreateEscrowSecretWithStepData:sessionID:", v14, [v4 sessionID]);
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

- (void)handleSetupCreateRecord:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockSetupCreateRecord alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if (v5 && [(SDUnlockSetupCreateRecord *)v5 hasToken]&& ![(SDUnlockSetupCreateRecord *)v5 hasErrorCode])
  {
    v12 = [(SDUnlockSessionManager *)self securityManager];
    v13 = [(SDUnlockSessionManager *)self setupAuthSession];
    v14 = [(SDUnlockSetupCreateRecord *)v5 token];
    v15 = [v12 stepWithAuthSession:v13 data:v14 authStep:1];

    if (v15)
    {
      v16 = [(SDUnlockSessionManager *)self securityManager];
      v17 = [v16 setupWithAuthSession:-[SDUnlockSessionManager setupAuthSession](self passcode:{"setupAuthSession"), self->_passcode}];

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
      v7 = [(SDUnlockSetupCreateRecord *)v5 errorCode];
    }

    else
    {
      v7 = 103;
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
    v11 = [NSError errorWithDomain:v9 code:v7 userInfo:v10];
    [(SDUnlockLockManager *)self notifyEnableStateWithError:v11];

    [(SDUnlockSessionManager *)self sendDisableMessage];
  }

LABEL_17:
}

- (void)handleSessionKeyExchangeRequest:(id)a3
{
  v4 = a3;
  if ([(SDUnlockLockManager *)self unlockEnabled])
  {
    if ([(SDUnlockLockManager *)self localDeviceLocked])
    {
      v5 = [(SDUnlockLockManager *)self dailyMetrics];
      [v5 setTotalAttempts:{objc_msgSend(v5, "totalAttempts") + 1}];

      v6 = [[SDUnlockSessionKeyExchangeRequest alloc] initWithData:v4];
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

        v13 = [(SDUnlockSessionKeyExchangeRequest *)v6 sessionID];
        v12 = self;
        v14 = 4;
      }

      else
      {
        v7 = [(SDUnlockSessionKeyExchangeRequest *)v6 hasSessionID];
        v8 = paired_unlock_log();
        v9 = v8;
        if (v7)
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

        v12 = self;
        v13 = 0;
        v14 = 8;
      }

      [(SDUnlockSessionManager *)v12 sendResetMessage:v13 reason:v14];
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

- (void)handleSessionAuthToken:(id)a3
{
  v4 = a3;
  if ([(SDUnlockLockManager *)self localDeviceLocked])
  {
    v5 = [[SDUnlockSessionAuthToken alloc] initWithData:v4];
    [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
    v6 = [(SDUnlockLockManager *)self deviceOffWristForSessionID];
    if (v6 == [(SDUnlockLockManager *)self unlockSessionID])
    {
      v7 = paired_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100241D00();
      }

      v8 = [(SDUnlockSessionAuthToken *)v5 sessionID];
      v9 = self;
      v10 = 13;
    }

    else
    {
      if ([(SDUnlockLockManager *)self inPosition]&& [(SDUnlockLockManager *)self waitingForAuthToken]&& [(SDUnlockSessionAuthToken *)v5 hasAuthToken])
      {
        [(SDUnlockLockManager *)self setLastUnlockedByPairedUnlock:1];
        v12 = [(SDUnlockSessionManager *)self securityManager];
        v13 = [(SDUnlockSessionManager *)self unlockAuthSession];
        v14 = [(SDUnlockSessionAuthToken *)v5 authToken];
        v15 = [v12 stepWithAuthSession:v13 data:v14 authStep:1];

        v16 = [(SDUnlockSessionAuthToken *)v5 sessionID];
        if (v15)
        {
          [(SDUnlockLockManager *)self sendSessionUnlockConfirmation:1 sessionID:v16];
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
          [(SDUnlockLockManager *)self sendSessionUnlockConfirmation:0 sessionID:v16];
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

      v8 = [(SDUnlockSessionAuthToken *)v5 sessionID];
      v9 = self;
      v10 = v20;
    }

    [(SDUnlockSessionManager *)v9 sendResetMessage:v8 reason:v10];
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

- (void)handleStashKeyExchangeRequest:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockStashKeyExchangeRequest alloc] initWithData:v4];

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

  v6 = [(SDUnlockSessionManager *)self securityManager];
  -[SDUnlockSessionManager setStashBagSession:](self, "setStashBagSession:", [v6 stashBagSessionAsOriginator:0 escrowSecret:0 manifest:0]);

  if ([(SDUnlockSessionManager *)self stashBagSession]< 0)
  {
    goto LABEL_8;
  }

  v7 = [(SDUnlockSessionManager *)self securityManager];
  v8 = [(SDUnlockSessionManager *)self stashBagSession];
  v9 = [(SDUnlockStashKeyExchangeRequest *)v5 key];
  v10 = [v7 stepWithAuthSession:v8 data:v9];

  if (!v10)
  {
LABEL_8:
    [(SDUnlockLockManager *)self sendStashKeyExchangeResponse:0 sessionID:[(SDUnlockStashKeyExchangeRequest *)v5 sessionID] errorCode:101];
    goto LABEL_9;
  }

  [(SDUnlockLockManager *)self sendStashKeyExchangeResponse:v10 sessionID:[(SDUnlockStashKeyExchangeRequest *)v5 sessionID] errorCode:0];

LABEL_9:
}

- (void)handleStashToken:(id)a3
{
  v4 = a3;
  v10 = [[SDUnlockStashToken alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v10];
  if ([(SDUnlockStashToken *)v10 hasStashToken])
  {
    v5 = [(SDUnlockSessionManager *)self securityManager];
    v6 = [(SDUnlockSessionManager *)self stashBagSession];
    v7 = [(SDUnlockStashToken *)v10 stashToken];
    v8 = [v5 stepWithAuthSession:v6 data:v7 authStep:1];

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

- (void)handleUnlockStateRequest:(id)a3
{
  v4 = a3;
  v8 = [[SDUnlockStateRequest alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v8];
  v5 = [(SDUnlockLockManager *)self unlockEnabled];
  v6 = +[SDStatusMonitor sharedMonitor];
  v7 = [v6 deviceKeyBagDisabled];

  [(SDUnlockLockManager *)self sendStateResponseWithUnlockEnabled:v5 passcodeEnabled:v7 ^ 1];
}

- (void)sendLongTermKeyRequest:(id)a3 requestID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SDUnlockLongTermKeyRequest);
  [(SDUnlockLongTermKeyRequest *)v8 setVersion:1];
  [(SDUnlockLongTermKeyRequest *)v8 setLongTermKey:v7];

  [(SDUnlockLongTermKeyRequest *)v8 setRequestID:v6];
  [(SDUnlockSessionManager *)self logProtoBufSend:v8];
  v9 = [(SDUnlockSessionManager *)self idsController];
  v10 = [(SDUnlockLongTermKeyRequest *)v8 data];
  v11 = [NSNumber numberWithDouble:45.0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10023FE74;
  v12[3] = &unk_1008CDF90;
  v12[4] = self;
  [v9 sendProtocolBufferData:v10 withType:1008 timeout:v11 option:0 errorHandler:v12];

  [(SDUnlockLockManager *)self restartLongTermKeyTimer];
}

@end