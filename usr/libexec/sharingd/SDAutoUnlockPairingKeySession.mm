@interface SDAutoUnlockPairingKeySession
- (BOOL)ltkHashMatches;
- (BOOL)useAttestedProtocol;
- (SDAutoUnlockPairingKeySession)initWithDevice:(id)device sessionID:(id)d;
- (void)addObservers;
- (void)cancel;
- (void)handleCreateEscrowSecret:(id)secret;
- (void)handleMessage:(id)message fromDeviceID:(id)d type:(unsigned __int16)type;
- (void)handleTimerFired;
- (void)invalidate;
- (void)notifyDelegateWithError:(id)error;
- (void)onqueue_cancel;
- (void)onqueue_start;
- (void)sendKeyDeviceLocked;
- (void)sendSetupCreateEscrowRecordStepData:(id)data error:(id)error;
- (void)start;
- (void)transport:(id)transport didReceivePayload:(id)payload type:(unsigned __int16)type deviceID:(id)d;
- (void)watchLTKsChanged:(id)changed;
@end

@implementation SDAutoUnlockPairingKeySession

- (SDAutoUnlockPairingKeySession)initWithDevice:(id)device sessionID:(id)d
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockPairingKeySession;
  v4 = [(SDAutoUnlockPairingSession *)&v7 initWithDevice:device sessionID:d];
  v5 = v4;
  if (v4)
  {
    [(SDAutoUnlockPairingKeySession *)v4 addObservers];
  }

  return v5;
}

- (void)invalidate
{
  v8.receiver = self;
  v8.super_class = SDAutoUnlockPairingKeySession;
  [(SDAutoUnlockPairingSession *)&v8 invalidate];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
  resetSession = [aksSession resetSession];

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (resetSession)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reset Session: %@", buf, 0xCu);
  }
}

- (void)start
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C380;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)onqueue_start
{
  v3 = [SDUnlockSetupRequest alloc];
  requestData = [(SDAutoUnlockPairingKeySession *)self requestData];
  v5 = [(SDUnlockSetupRequest *)v3 initWithData:requestData];
  [(SDAutoUnlockPairingKeySession *)self setRequest:v5];

  [(SDAutoUnlockPairingKeySession *)self handleSetupRequest];
}

- (void)cancel
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C490;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)onqueue_cancel
{
  if (![(SDAutoUnlockPairingKeySession *)self canceled])
  {
    [(SDAutoUnlockPairingKeySession *)self setCanceled:1];
    v3 = SFAutoUnlockErrorDomain;
    v6 = NSLocalizedDescriptionKey;
    v7 = @"Pairing key session canceled";
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v5 = [NSError errorWithDomain:v3 code:118 userInfo:v4];
    [(SDAutoUnlockPairingKeySession *)self notifyDelegateWithError:v5];
  }
}

- (BOOL)ltkHashMatches
{
  request = [(SDAutoUnlockPairingKeySession *)self request];
  hasLtkHash = [request hasLtkHash];

  if (hasLtkHash)
  {
    v12 = 0;
    v5 = +[SDAutoUnlockAKSManager sharedManager];
    deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
    request2 = [(SDAutoUnlockPairingKeySession *)self request];
    ltkHash = [request2 ltkHash];
    v9 = [v5 hashMatchesAnyRemoteLTKForDeviceID:deviceID ltkHash:ltkHash isPreferred:&v12];

    if (v9 && (v12 & 1) == 0)
    {
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_10006E25C(v10);
      }
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)useAttestedProtocol
{
  request = [(SDAutoUnlockPairingKeySession *)self request];
  v3 = [request version] == 2;

  return v3;
}

- (void)handleTimerFired
{
  v3 = SFAutoUnlockErrorDomain;
  v11 = NSLocalizedDescriptionKey;
  v12 = @"Timeout waiting for response from Mac";
  v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v5 = [NSError errorWithDomain:v3 code:197 userInfo:v4];

  if ([(SDAutoUnlockPairingKeySession *)self waitingForLTK])
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10006E2A0(v6);
    }

    v9 = NSLocalizedDescriptionKey;
    v10 = @"Timeout waiting for LTKs";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v3 code:196 userInfo:v7];

    [(SDAutoUnlockPairingKeySession *)self sendSetupSessionCreatedWithLocalKey:0 stepData:0 error:v8 failureReason:0 ltkSyncing:0];
    v5 = v8;
  }

  [(SDAutoUnlockPairingKeySession *)self notifyDelegateWithError:v5];
  [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"keyBagLockStateChange:" name:@"com.apple.sharingd.KeyBagLockStatusChanged" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"watchLTKsChanged:" name:@"SDAutoUnlockAKSManagerWatchLTKsUpdatedNotification" object:0];
}

- (void)watchLTKsChanged:(id)changed
{
  changedCopy = changed;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [changedCopy userInfo];
    *buf = 138412290;
    v31 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Watch LTKs changed (user info: %@)", buf, 0xCu);
  }

  if ([(SDAutoUnlockPairingKeySession *)self waitingForLTK])
  {
    userInfo2 = [changedCopy userInfo];

    if (userInfo2)
    {
      [(SDAutoUnlockPairingKeySession *)self setWaitingForLTK:0];
      userInfo3 = [changedCopy userInfo];
      v9 = [userInfo3 objectForKeyedSubscript:@"SDAutoUnlockAKSManagerCompanionViewSyncing"];

      if (v9)
      {
        v10 = [v9 BOOLValue]^ 1;
      }

      else
      {
        v10 = 0;
      }

      [(SDAutoUnlockPairingKeySession *)self setCompanionViewNotSyncing:v10];
      userInfo4 = [changedCopy userInfo];
      v12 = [userInfo4 objectForKeyedSubscript:@"SDAutoUnlockAKSManagerCompanionNeedsUnlock"];
      -[SDAutoUnlockPairingKeySession setCompanionNeedsUnlock:](self, "setCompanionNeedsUnlock:", [v12 BOOLValue]);

      userInfo5 = [changedCopy userInfo];
      v14 = [userInfo5 objectForKeyedSubscript:@"SDAutoUnlockAKSManagerCompanionCurrentlySyncing"];
      -[SDAutoUnlockPairingKeySession setCompanionCurrentlySyncing:](self, "setCompanionCurrentlySyncing:", [v14 BOOLValue]);

      v15 = +[SDAutoUnlockAKSManager sharedManager];
      deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
      v17 = [v15 ltkExistsForKeyDevice:deviceID];

      ltkHashMatches = [(SDAutoUnlockPairingKeySession *)self ltkHashMatches];
      if ([(SDAutoUnlockPairingKeySession *)self companionViewNotSyncing]|| [(SDAutoUnlockPairingKeySession *)self companionNeedsUnlock]|| [(SDAutoUnlockPairingKeySession *)self companionCurrentlySyncing]|| (v17 & ltkHashMatches) != 0)
      {
        [(SDAutoUnlockPairingKeySession *)self handleSetupRequest];
      }

      else
      {
        v19 = auto_unlock_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
          v25 = deviceID2;
          v26 = @"NO";
          if (v17)
          {
            v27 = @"YES";
          }

          else
          {
            v27 = @"NO";
          }

          *buf = 138412802;
          v31 = deviceID2;
          v32 = 2112;
          v33 = v27;
          if (ltkHashMatches)
          {
            v26 = @"YES";
          }

          v34 = 2112;
          v35 = v26;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Incorrect LTK (deviceID: %@, ltk exists: %@, hashes match: %@)", buf, 0x20u);
        }

        if (v17)
        {
          v20 = 129;
        }

        else
        {
          v20 = 125;
        }

        v21 = SFAutoUnlockErrorDomain;
        v28 = NSLocalizedDescriptionKey;
        v29 = @"Incorrect LTK";
        v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v23 = [NSError errorWithDomain:v21 code:v20 userInfo:v22];

        [(SDAutoUnlockPairingKeySession *)self sendSetupSessionCreatedWithLocalKey:0 stepData:0 error:v23 failureReason:0 ltkSyncing:0];
        [(SDAutoUnlockPairingKeySession *)self notifyDelegateWithError:v23];
        [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
      }
    }

    else
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Response missing view syncing state", buf, 2u);
      }
    }
  }
}

- (void)notifyDelegateWithError:(id)error
{
  errorCopy = error;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing key session notifying delegate with error: %@", &v9, 0xCu);
  }

  delegate = [(SDAutoUnlockPairingSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SDAutoUnlockPairingSession *)self delegate];
    [delegate2 session:self didCompleteWithError:errorCopy];
  }
}

- (void)handleMessage:(id)message fromDeviceID:(id)d type:(unsigned __int16)type
{
  typeCopy = type;
  messageCopy = message;
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  dispatch_assert_queue_V2(sessionQueue);

  if (typeCopy == 2003 || typeCopy == 103)
  {
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSetupCreateSecret", v10, 2u);
    }

    [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
    [(SDAutoUnlockPairingKeySession *)self handleCreateEscrowSecret:messageCopy];
  }
}

- (void)handleCreateEscrowSecret:(id)secret
{
  secretCopy = secret;
  if (![(SDAutoUnlockPairingKeySession *)self canceled])
  {
    v6 = +[SDStatusMonitor sharedMonitor];
    deviceKeyBagUnlocked = [v6 deviceKeyBagUnlocked];

    v8 = [[SDUnlockSetupCreateSecret alloc] initWithData:secretCopy];
    v5 = v8;
    if (deviceKeyBagUnlocked)
    {
      if (v8 && [(SDUnlockSetupCreateSecret *)v8 hasToken])
      {
        aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
        token = [v5 token];
        v38 = 0;
        v11 = [aksSession stepSessionWithData:token outputData:&v38];
        v12 = v38;

        if (v11)
        {
          aksSession2 = [(SDAutoUnlockPairingSession *)self aksSession];
          generateSessionToken = [aksSession2 generateSessionToken];

          if (generateSessionToken)
          {
            v15 = +[SDAutoUnlockAKSManager sharedManager];
            deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
            v17 = [v15 storeRangingKey:generateSessionToken forDeviceID:deviceID];

            if (v17)
            {
              v18 = +[SDAutoUnlockAKSManager sharedManager];
              [v18 updateDynamicStoreEnabled];

              request = [(SDAutoUnlockPairingKeySession *)self request];
              version = [request version];

              if (version != 1)
              {
                [(SDAutoUnlockPairingKeySession *)self sendSetupCreateEscrowRecordStepData:v12 error:0];
                aksSession3 = [(SDAutoUnlockPairingSession *)self aksSession];
                [aksSession3 confirmSession];

                v33 = auto_unlock_log();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Pairing Enabled", buf, 2u);
                }

                [(SDAutoUnlockPairingKeySession *)self notifyDelegateWithError:0];
                goto LABEL_24;
              }

              aksSession4 = [(SDAutoUnlockPairingSession *)self aksSession];
              generateEscrowSecret = [aksSession4 generateEscrowSecret];

              if (generateEscrowSecret)
              {
                v23 = +[SDAutoUnlockAKSManager sharedManager];
                sessionID = [(SDAutoUnlockPairingSession *)self sessionID];
                uUIDString = [sessionID UUIDString];
                deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
                v37 = generateEscrowSecret;
                v27 = [v23 storeEscrowSecret:generateEscrowSecret pairingID:uUIDString deviceID:deviceID2 requiresUnlock:1];

                if (v27)
                {
                  [(SDAutoUnlockPairingKeySession *)self sendSetupCreateEscrowRecordStepData:v12 error:0];
                  v28 = auto_unlock_log();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Pairing Enabled", buf, 2u);
                  }

                  [(SDAutoUnlockPairingKeySession *)self notifyDelegateWithError:0];
                  v29 = +[SDAutoUnlockAKSManager sharedManager];
                  [v29 updateDynamicStoreEnabled];

LABEL_24:
LABEL_33:

                  goto LABEL_34;
                }

                v30 = @"Failed to store escrow secret";
                v31 = 170;
                generateEscrowSecret = v37;
              }

              else
              {
                v30 = @"Failed to create escrow secret";
                v31 = 169;
              }
            }

            else
            {
              v30 = @"Failed to store session token";
              v31 = 166;
            }
          }

          else
          {
            v30 = @"Failed to create session token";
            v31 = 165;
          }
        }

        else
        {
          v30 = @"Could not complete step";
          v31 = 163;
        }
      }

      else
      {
        v30 = @"No remote step data in message";
        v31 = 160;
      }
    }

    else
    {
      v30 = @"Device locked";
      v31 = 102;
    }

    v34 = auto_unlock_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_10006E2E4(v30, v34);
    }

    v35 = SFAutoUnlockErrorDomain;
    v40 = NSLocalizedDescriptionKey;
    v41 = @"Request failure";
    v36 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v12 = [NSError errorWithDomain:v35 code:v31 userInfo:v36];

    [(SDAutoUnlockPairingKeySession *)self sendSetupCreateEscrowRecordStepData:0 error:v12];
    [(SDAutoUnlockPairingKeySession *)self notifyDelegateWithError:v12];
    goto LABEL_33;
  }

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing canceled for create secret", buf, 2u);
  }

LABEL_34:
}

- (void)sendKeyDeviceLocked
{
  v11 = objc_alloc_init(SDAutoUnlockKeyDeviceLocked);
  [(SDAutoUnlockKeyDeviceLocked *)v11 setVersion:1];
  useAttestedProtocol = [(SDAutoUnlockPairingKeySession *)self useAttestedProtocol];
  transport = [(SDAutoUnlockPairingSession *)self transport];
  data = [(SDAutoUnlockKeyDeviceLocked *)v11 data];
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  sessionID = [(SDAutoUnlockPairingSession *)self sessionID];
  v8 = [NSNumber numberWithInteger:45];
  if (useAttestedProtocol)
  {
    v9 = 2005;
  }

  else
  {
    v9 = 105;
  }

  v10 = [transport sendAutoUnlockPayload:data toDevice:deviceID type:v9 sessionID:sessionID queueOneID:0 timeout:v8 completion:&stru_1008CE068];
}

- (void)sendSetupCreateEscrowRecordStepData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  v8 = objc_alloc_init(SDUnlockSetupCreateRecord);
  v9 = v8;
  if (dataCopy)
  {
    [(SDUnlockSetupCreateRecord *)v8 setToken:dataCopy];
  }

  if (errorCopy)
  {
    -[SDUnlockSetupCreateRecord setErrorCode:](v9, "setErrorCode:", [errorCopy code]);
  }

  useAttestedProtocol = [(SDAutoUnlockPairingKeySession *)self useAttestedProtocol];
  transport = [(SDAutoUnlockPairingSession *)self transport];
  data = [(SDUnlockSetupCreateRecord *)v9 data];
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  sessionID = [(SDAutoUnlockPairingSession *)self sessionID];
  v15 = [NSNumber numberWithInteger:45];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10006DEB0;
  v21 = &unk_1008CE090;
  selfCopy = self;
  if (useAttestedProtocol)
  {
    v16 = 2004;
  }

  else
  {
    v16 = 104;
  }

  v17 = [transport sendAutoUnlockPayload:data toDevice:deviceID type:v16 sessionID:sessionID queueOneID:0 timeout:v15 completion:{&v18, v18, v19, v20, v21, selfCopy}];
}

- (void)transport:(id)transport didReceivePayload:(id)payload type:(unsigned __int16)type deviceID:(id)d
{
  payloadCopy = payload;
  dCopy = d;
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006E080;
  v14[3] = &unk_1008CDDC0;
  v14[4] = self;
  v15 = payloadCopy;
  v16 = dCopy;
  typeCopy = type;
  v12 = dCopy;
  v13 = payloadCopy;
  dispatch_async(sessionQueue, v14);
}

@end