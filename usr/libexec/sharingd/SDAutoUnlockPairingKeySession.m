@interface SDAutoUnlockPairingKeySession
- (BOOL)ltkHashMatches;
- (BOOL)useAttestedProtocol;
- (SDAutoUnlockPairingKeySession)initWithDevice:(id)a3 sessionID:(id)a4;
- (void)addObservers;
- (void)cancel;
- (void)handleCreateEscrowSecret:(id)a3;
- (void)handleMessage:(id)a3 fromDeviceID:(id)a4 type:(unsigned __int16)a5;
- (void)handleTimerFired;
- (void)invalidate;
- (void)notifyDelegateWithError:(id)a3;
- (void)onqueue_cancel;
- (void)onqueue_start;
- (void)sendKeyDeviceLocked;
- (void)sendSetupCreateEscrowRecordStepData:(id)a3 error:(id)a4;
- (void)start;
- (void)transport:(id)a3 didReceivePayload:(id)a4 type:(unsigned __int16)a5 deviceID:(id)a6;
- (void)watchLTKsChanged:(id)a3;
@end

@implementation SDAutoUnlockPairingKeySession

- (SDAutoUnlockPairingKeySession)initWithDevice:(id)a3 sessionID:(id)a4
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockPairingKeySession;
  v4 = [(SDAutoUnlockPairingSession *)&v7 initWithDevice:a3 sessionID:a4];
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

  v4 = [(SDAutoUnlockPairingSession *)self aksSession];
  v5 = [v4 resetSession];

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
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
  v3 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C380;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)onqueue_start
{
  v3 = [SDUnlockSetupRequest alloc];
  v4 = [(SDAutoUnlockPairingKeySession *)self requestData];
  v5 = [(SDUnlockSetupRequest *)v3 initWithData:v4];
  [(SDAutoUnlockPairingKeySession *)self setRequest:v5];

  [(SDAutoUnlockPairingKeySession *)self handleSetupRequest];
}

- (void)cancel
{
  v3 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C490;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(SDAutoUnlockPairingKeySession *)self request];
  v4 = [v3 hasLtkHash];

  if (v4)
  {
    v12 = 0;
    v5 = +[SDAutoUnlockAKSManager sharedManager];
    v6 = [(SDAutoUnlockPairingSession *)self deviceID];
    v7 = [(SDAutoUnlockPairingKeySession *)self request];
    v8 = [v7 ltkHash];
    v9 = [v5 hashMatchesAnyRemoteLTKForDeviceID:v6 ltkHash:v8 isPreferred:&v12];

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
  v2 = [(SDAutoUnlockPairingKeySession *)self request];
  v3 = [v2 version] == 2;

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

- (void)watchLTKsChanged:(id)a3
{
  v4 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 userInfo];
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Watch LTKs changed (user info: %@)", buf, 0xCu);
  }

  if ([(SDAutoUnlockPairingKeySession *)self waitingForLTK])
  {
    v7 = [v4 userInfo];

    if (v7)
    {
      [(SDAutoUnlockPairingKeySession *)self setWaitingForLTK:0];
      v8 = [v4 userInfo];
      v9 = [v8 objectForKeyedSubscript:@"SDAutoUnlockAKSManagerCompanionViewSyncing"];

      if (v9)
      {
        v10 = [v9 BOOLValue]^ 1;
      }

      else
      {
        v10 = 0;
      }

      [(SDAutoUnlockPairingKeySession *)self setCompanionViewNotSyncing:v10];
      v11 = [v4 userInfo];
      v12 = [v11 objectForKeyedSubscript:@"SDAutoUnlockAKSManagerCompanionNeedsUnlock"];
      -[SDAutoUnlockPairingKeySession setCompanionNeedsUnlock:](self, "setCompanionNeedsUnlock:", [v12 BOOLValue]);

      v13 = [v4 userInfo];
      v14 = [v13 objectForKeyedSubscript:@"SDAutoUnlockAKSManagerCompanionCurrentlySyncing"];
      -[SDAutoUnlockPairingKeySession setCompanionCurrentlySyncing:](self, "setCompanionCurrentlySyncing:", [v14 BOOLValue]);

      v15 = +[SDAutoUnlockAKSManager sharedManager];
      v16 = [(SDAutoUnlockPairingSession *)self deviceID];
      v17 = [v15 ltkExistsForKeyDevice:v16];

      v18 = [(SDAutoUnlockPairingKeySession *)self ltkHashMatches];
      if ([(SDAutoUnlockPairingKeySession *)self companionViewNotSyncing]|| [(SDAutoUnlockPairingKeySession *)self companionNeedsUnlock]|| [(SDAutoUnlockPairingKeySession *)self companionCurrentlySyncing]|| (v17 & v18) != 0)
      {
        [(SDAutoUnlockPairingKeySession *)self handleSetupRequest];
      }

      else
      {
        v19 = auto_unlock_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v24 = [(SDAutoUnlockPairingSession *)self deviceID];
          v25 = v24;
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
          v31 = v24;
          v32 = 2112;
          v33 = v27;
          if (v18)
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

- (void)notifyDelegateWithError:(id)a3
{
  v4 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing key session notifying delegate with error: %@", &v9, 0xCu);
  }

  v6 = [(SDAutoUnlockPairingSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SDAutoUnlockPairingSession *)self delegate];
    [v8 session:self didCompleteWithError:v4];
  }
}

- (void)handleMessage:(id)a3 fromDeviceID:(id)a4 type:(unsigned __int16)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  dispatch_assert_queue_V2(v8);

  if (v5 == 2003 || v5 == 103)
  {
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSetupCreateSecret", v10, 2u);
    }

    [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
    [(SDAutoUnlockPairingKeySession *)self handleCreateEscrowSecret:v7];
  }
}

- (void)handleCreateEscrowSecret:(id)a3
{
  v4 = a3;
  if (![(SDAutoUnlockPairingKeySession *)self canceled])
  {
    v6 = +[SDStatusMonitor sharedMonitor];
    v7 = [v6 deviceKeyBagUnlocked];

    v8 = [[SDUnlockSetupCreateSecret alloc] initWithData:v4];
    v5 = v8;
    if (v7)
    {
      if (v8 && [(SDUnlockSetupCreateSecret *)v8 hasToken])
      {
        v9 = [(SDAutoUnlockPairingSession *)self aksSession];
        v10 = [v5 token];
        v38 = 0;
        v11 = [v9 stepSessionWithData:v10 outputData:&v38];
        v12 = v38;

        if (v11)
        {
          v13 = [(SDAutoUnlockPairingSession *)self aksSession];
          v14 = [v13 generateSessionToken];

          if (v14)
          {
            v15 = +[SDAutoUnlockAKSManager sharedManager];
            v16 = [(SDAutoUnlockPairingSession *)self deviceID];
            v17 = [v15 storeRangingKey:v14 forDeviceID:v16];

            if (v17)
            {
              v18 = +[SDAutoUnlockAKSManager sharedManager];
              [v18 updateDynamicStoreEnabled];

              v19 = [(SDAutoUnlockPairingKeySession *)self request];
              v20 = [v19 version];

              if (v20 != 1)
              {
                [(SDAutoUnlockPairingKeySession *)self sendSetupCreateEscrowRecordStepData:v12 error:0];
                v32 = [(SDAutoUnlockPairingSession *)self aksSession];
                [v32 confirmSession];

                v33 = auto_unlock_log();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Pairing Enabled", buf, 2u);
                }

                [(SDAutoUnlockPairingKeySession *)self notifyDelegateWithError:0];
                goto LABEL_24;
              }

              v21 = [(SDAutoUnlockPairingSession *)self aksSession];
              v22 = [v21 generateEscrowSecret];

              if (v22)
              {
                v23 = +[SDAutoUnlockAKSManager sharedManager];
                v24 = [(SDAutoUnlockPairingSession *)self sessionID];
                v25 = [v24 UUIDString];
                v26 = [(SDAutoUnlockPairingSession *)self deviceID];
                v37 = v22;
                v27 = [v23 storeEscrowSecret:v22 pairingID:v25 deviceID:v26 requiresUnlock:1];

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
                v22 = v37;
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
  v3 = [(SDAutoUnlockPairingKeySession *)self useAttestedProtocol];
  v4 = [(SDAutoUnlockPairingSession *)self transport];
  v5 = [(SDAutoUnlockKeyDeviceLocked *)v11 data];
  v6 = [(SDAutoUnlockPairingSession *)self deviceID];
  v7 = [(SDAutoUnlockPairingSession *)self sessionID];
  v8 = [NSNumber numberWithInteger:45];
  if (v3)
  {
    v9 = 2005;
  }

  else
  {
    v9 = 105;
  }

  v10 = [v4 sendAutoUnlockPayload:v5 toDevice:v6 type:v9 sessionID:v7 queueOneID:0 timeout:v8 completion:&stru_1008CE068];
}

- (void)sendSetupCreateEscrowRecordStepData:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SDUnlockSetupCreateRecord);
  v9 = v8;
  if (v6)
  {
    [(SDUnlockSetupCreateRecord *)v8 setToken:v6];
  }

  if (v7)
  {
    -[SDUnlockSetupCreateRecord setErrorCode:](v9, "setErrorCode:", [v7 code]);
  }

  v10 = [(SDAutoUnlockPairingKeySession *)self useAttestedProtocol];
  v11 = [(SDAutoUnlockPairingSession *)self transport];
  v12 = [(SDUnlockSetupCreateRecord *)v9 data];
  v13 = [(SDAutoUnlockPairingSession *)self deviceID];
  v14 = [(SDAutoUnlockPairingSession *)self sessionID];
  v15 = [NSNumber numberWithInteger:45];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10006DEB0;
  v21 = &unk_1008CE090;
  v22 = self;
  if (v10)
  {
    v16 = 2004;
  }

  else
  {
    v16 = 104;
  }

  v17 = [v11 sendAutoUnlockPayload:v12 toDevice:v13 type:v16 sessionID:v14 queueOneID:0 timeout:v15 completion:{&v18, v18, v19, v20, v21, v22}];
}

- (void)transport:(id)a3 didReceivePayload:(id)a4 type:(unsigned __int16)a5 deviceID:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006E080;
  v14[3] = &unk_1008CDDC0;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a5;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, v14);
}

@end