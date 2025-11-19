@interface SDAutoUnlockPairingLockSession
- (BOOL)ltkHashMatches;
- (BOOL)validatePasscode:(id)a3;
- (SDAutoUnlockPairingLockSession)initWithDevice:(id)a3 sessionID:(id)a4;
- (id)generatedError;
- (id)userInfoCompanionViewNotSyncing;
- (id)userInfoForInternetSharing;
- (id)userInfoForKeychainMismatch;
- (id)userInfoForMacNotSignedIn;
- (id)userInfoForMissingLTK;
- (id)userInfoForNewProtocol;
- (id)userInfoForNoCommunincation;
- (id)userInfoForNoPasscode;
- (id)userInfoForNoWristDetection;
- (id)userInfoForNoWristDetectionNoPasscode;
- (id)userInfoForNotCloudPaired;
- (id)userInfoForOldProtocol;
- (id)userInfoForWatchLocked;
- (id)userInfoForWatchNotSignedIn;
- (id)userInfoForiPhoneNeedsUnlock;
- (void)cancel;
- (void)handleDeviceAuthenticationSetupRequest;
- (void)handleEscrowSessionRequest;
- (void)handleKeyDeviceLocked;
- (void)handleLTKTimerFired;
- (void)handleMessage:(id)a3 fromDeviceID:(id)a4 type:(unsigned __int16)a5;
- (void)handleSetupCreateRecord:(id)a3;
- (void)handleSetupSessionCreated:(id)a3 fromDeviceID:(id)a4;
- (void)handleSuccessfulPairing;
- (void)handleTimerFired;
- (void)invalidate;
- (void)invalidateLTKTimer;
- (void)notifyDelegateKeyDeviceIsLocked;
- (void)notifyDelegateWithError:(id)a3;
- (void)onqueue_cancel;
- (void)onqueue_start;
- (void)onqueue_updateForCloudPairing;
- (void)restartLTKTimer;
- (void)sendSetupRequest;
- (void)start;
- (void)transport:(id)a3 didReceiveMessageACKForIdentifier:(id)a4;
- (void)transport:(id)a3 didReceivePayload:(id)a4 type:(unsigned __int16)a5 deviceID:(id)a6;
- (void)updateForCloudPairing;
@end

@implementation SDAutoUnlockPairingLockSession

- (SDAutoUnlockPairingLockSession)initWithDevice:(id)a3 sessionID:(id)a4
{
  v6 = a3;
  v32.receiver = self;
  v32.super_class = SDAutoUnlockPairingLockSession;
  v7 = [(SDAutoUnlockPairingSession *)&v32 initWithDevice:v6 sessionID:a4];
  v8 = v7;
  if (v7)
  {
    v7->_sendState = 0;
    v9 = +[SDAutoUnlockTransport sharedTransport];
    v10 = [v9 modelIdentifierForDeviceID:v6];
    keyDeviceModel = v8->_keyDeviceModel;
    v8->_keyDeviceModel = v10;

    v12 = +[SDAutoUnlockTransport sharedTransport];
    v13 = [(SDAutoUnlockPairingSession *)v8 deviceID];
    v14 = [v12 idsDeviceForUniqueID:v13];

    if (v14)
    {
      v15 = +[SDAutoUnlockTransport sharedTransport];
      v16 = [v15 autoUnlockDeviceForIDSDevice:v14 cloudPaired:0 cached:0];

      v17 = [v16 productBuildVersion];
      watchBuildVersion = v8->_watchBuildVersion;
      v8->_watchBuildVersion = v17;

      [v14 operatingSystemVersion];
      v19 = sub_100111E28(buf);
      watchOSVersion = v8->_watchOSVersion;
      v8->_watchOSVersion = v19;

      v21 = auto_unlock_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v8->_watchOSVersion;
        v23 = v8->_watchBuildVersion;
        *buf = 138412802;
        v34 = v22;
        v35 = 2112;
        v36 = v23;
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Created session (OS version: %@, build: %@, device: %@)", buf, 0x20u);
      }
    }

    v31 = 0;
    v8->_responseTimeout = sub_100111FC8(&v31);
    v8->_responseTimeoutFromServer = v31;
    v31 = 0;
    v8->_messageTimeout = sub_1001122BC(&v31);
    v8->_messageTimeoutFromServer = v31;
    v24 = auto_unlock_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      responseTimeout = v8->_responseTimeout;
      v26 = @"YES";
      messageTimeout = v8->_messageTimeout;
      messageTimeoutFromServer = v8->_messageTimeoutFromServer;
      if (v8->_responseTimeoutFromServer)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      *buf = 134218754;
      if (!messageTimeoutFromServer)
      {
        v26 = @"NO";
      }

      v34 = responseTimeout;
      v35 = 2112;
      v36 = v29;
      v37 = 2048;
      v38 = messageTimeout;
      v39 = 2112;
      v40 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updated timeouts (responseTimeout: %ld, responseTimeoutFromServer: %@, messageTimeout: %ld, messageTimeoutFromServer: %@)", buf, 0x2Au);
    }

    v8->_watchOldLTKSyncStatus = -1;
    v8->_watchNewLTKSyncStatus = -1;
  }

  return v8;
}

- (void)start
{
  v3 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074F58;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)onqueue_start
{
  v3 = [(SDAutoUnlockPairingLockSession *)self generatedError];
  if (!v3)
  {
    v4 = +[SDAutoUnlockTransport sharedTransport];
    v5 = [(SDAutoUnlockPairingSession *)self deviceID];
    v6 = [v4 idsDeviceForUniqueID:v5];

    if ([v6 isConnected] && objc_msgSend(v6, "isNearby"))
    {
      if (![(SDAutoUnlockPairingLockSession *)self placeholder])
      {
        v18 = +[SDAutoUnlockAKSManager sharedManager];
        if ([v18 viewSyncing])
        {
        }

        else
        {
          v20 = +[SDAutoUnlockAKSManager useKeychainForLTKSyncing];

          if (v20)
          {
            v21 = auto_unlock_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_10007A598();
            }

            v22 = SFAutoUnlockErrorDomain;
            v39 = NSLocalizedDescriptionKey;
            v40 = @"View not syncing";
            v11 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            v12 = v22;
            v13 = 121;
            goto LABEL_14;
          }
        }

        v23 = +[SDStatusMonitor sharedMonitor];
        v24 = [v23 internetSharingEnabled];

        if (v24)
        {
          v25 = auto_unlock_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10007A6C0();
          }

          v26 = SFAutoUnlockErrorDomain;
          v11 = [(SDAutoUnlockPairingLockSession *)self userInfoForInternetSharing];
          v12 = v26;
          v13 = 146;
        }

        else
        {
          v27 = [(SDAutoUnlockPairingLockSession *)self passcode];
          if (v27 && (v28 = v27, -[SDAutoUnlockPairingLockSession passcode](self, "passcode"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 length], v29, v28, v30))
          {
            v31 = [(SDAutoUnlockPairingLockSession *)self passcode];
            v32 = [(SDAutoUnlockPairingLockSession *)self validatePasscode:v31];

            if (v32)
            {
              [(SDAutoUnlockPairingLockSession *)self sendSetupRequest];
              v33 = +[SDAutoUnlockAKSManager sharedManager];
              [v33 reloadPairingRecordsIfNeeded];

              goto LABEL_15;
            }

            v36 = auto_unlock_log();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_10007A5D4();
            }

            v37 = SFAutoUnlockErrorDomain;
            v11 = [(SDAutoUnlockPairingLockSession *)self userInfoForKeychainMismatch];
            v12 = v37;
            v13 = 174;
          }

          else
          {
            v34 = auto_unlock_log();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10007A610(self, v34);
            }

            v35 = SFAutoUnlockErrorDomain;
            v41 = NSLocalizedDescriptionKey;
            v42 = @"No password";
            v11 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            v12 = v35;
            v13 = 112;
          }
        }

LABEL_14:
        v17 = [NSError errorWithDomain:v12 code:v13 userInfo:v11];
        [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v17];

LABEL_15:
        goto LABEL_16;
      }

      v7 = auto_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device is placeholder", v38, 2u);
      }

      v8 = +[SDAutoUnlockTransport sharedTransport];
      v9 = [v8 localDeviceIDSRegistered];

      if (v9)
      {
        v10 = SFAutoUnlockErrorDomain;
        v11 = [(SDAutoUnlockPairingLockSession *)self userInfoForWatchNotSignedIn];
        v12 = v10;
        v13 = 150;
        goto LABEL_14;
      }

      v19 = auto_unlock_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Mac not IDS registered", v38, 2u);
      }

      v15 = SFAutoUnlockErrorDomain;
      v16 = [(SDAutoUnlockPairingLockSession *)self userInfoForMacNotSignedIn];
    }

    else
    {
      v14 = auto_unlock_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007A4C4(v6, v14);
      }

      v15 = SFAutoUnlockErrorDomain;
      v16 = [(SDAutoUnlockPairingLockSession *)self userInfoForNoCommunincation];
    }

    v11 = v16;
    v12 = v15;
    v13 = 178;
    goto LABEL_14;
  }

  [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v3];
LABEL_16:
}

- (void)cancel
{
  v3 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075504;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)onqueue_cancel
{
  if (![(SDAutoUnlockPairingLockSession *)self canceled])
  {
    [(SDAutoUnlockPairingLockSession *)self setCanceled:1];
    [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
    v3 = SFAutoUnlockErrorDomain;
    v6 = NSLocalizedDescriptionKey;
    v7 = @"Pairing lock session canceled";
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v5 = [NSError errorWithDomain:v3 code:118 userInfo:v4];
    [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v5];
  }
}

- (void)updateForCloudPairing
{
  v3 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075688;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)onqueue_updateForCloudPairing
{
  if (![(SDAutoUnlockPairingLockSession *)self canceled]&& ![(SDAutoUnlockPairingLockSession *)self unlockEnabled]&& [(SDAutoUnlockPairingLockSession *)self waitingForCloudPairing])
  {

    [(SDAutoUnlockPairingLockSession *)self handleSuccessfulPairing];
  }
}

- (void)invalidate
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockPairingLockSession;
  [(SDAutoUnlockPairingSession *)&v7 invalidate];
  v3 = [(SDAutoUnlockPairingSession *)self aksSession];
  v4 = [v3 resetSession];

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reset Session: %@", buf, 0xCu);
  }
}

- (id)generatedError
{
  v3 = sub_10000C1F8(@"AUGenerateNoPasscode", 0);
  v4 = sub_10000C1F8(@"AUGenerateNoWristDetection", 0);
  v5 = sub_10000C1F8(@"AUGenerateNoCommunication", 0);
  if (v3 && v4)
  {
    v6 = SFAutoUnlockErrorDomain;
    v7 = [(SDAutoUnlockPairingLockSession *)self userInfoForNoWristDetectionNoPasscode];
LABEL_10:
    v8 = v7;
    v9 = [NSError errorWithDomain:v6 code:119 userInfo:v7];

    goto LABEL_11;
  }

  if (v4)
  {
    v6 = SFAutoUnlockErrorDomain;
    v7 = [(SDAutoUnlockPairingLockSession *)self userInfoForNoWristDetection];
    goto LABEL_10;
  }

  if (v3)
  {
    v6 = SFAutoUnlockErrorDomain;
    v7 = [(SDAutoUnlockPairingLockSession *)self userInfoForNoPasscode];
    goto LABEL_10;
  }

  if (v5)
  {
    v6 = SFAutoUnlockErrorDomain;
    v7 = [(SDAutoUnlockPairingLockSession *)self userInfoForNoCommunincation];
    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)handleTimerFired
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Response timer fired", v10, 2u);
  }

  [(SDAutoUnlockPairingLockSession *)self setErrorType:1];
  if ([(SDAutoUnlockPairingLockSession *)self sendState]== 1)
  {
    v4 = @"Timeout waiting for response to initial request";
    v5 = 153;
  }

  else
  {
    v6 = [(SDAutoUnlockPairingLockSession *)self sendState];
    v4 = @"Request timeout";
    if (v6 == 2)
    {
      v4 = @"Timeout waiting for response to token exchange request";
      v5 = 154;
    }

    else
    {
      v5 = 103;
    }
  }

  v11 = NSLocalizedDescriptionKey;
  v12 = v4;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  if ([(SDAutoUnlockPairingLockSession *)self waitingForCloudPairing])
  {
    v8 = [(SDAutoUnlockPairingLockSession *)self userInfoForNotCloudPaired];

    v5 = 134;
    v7 = v8;
  }

  v9 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:v5 userInfo:v7];
  [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v9];
}

- (BOOL)validatePasscode:(id)a3
{
  v3 = a3;
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Validating passcode", v13, 2u);
  }

  v5 = [v3 dataUsingEncoding:4];

  v6 = MKBUnlockDevice();
  v7 = auto_unlock_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v13[0] = 67109120;
      v13[1] = v6;
      v9 = "Passcode invalid (error: %d)";
      v10 = v7;
      v11 = 8;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, v13, v11);
    }
  }

  else if (v8)
  {
    LOWORD(v13[0]) = 0;
    v9 = "Passcode validated";
    v10 = v7;
    v11 = 2;
    goto LABEL_8;
  }

  return v6 == 0;
}

- (void)notifyDelegateWithError:(id)a3
{
  v4 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing lock session notifying delegate with error: %@", buf, 0xCu);
  }

  if ([v4 code] == 134)
  {
    v6 = IsAppleInternalBuild() != 0;
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  if ([v4 code] != 119 && objc_msgSend(v4, "code") != 150 && objc_msgSend(v4, "code") != 178 && objc_msgSend(v4, "code") != 148 && objc_msgSend(v4, "code") != 125 && objc_msgSend(v4, "code") != 129 && objc_msgSend(v4, "code") != 146 && objc_msgSend(v4, "code") != 173 && objc_msgSend(v4, "code") != 174 && objc_msgSend(v4, "code") != 177 && objc_msgSend(v4, "code") != 196 && objc_msgSend(v4, "code") != 205 && !v6)
  {
    v7 = SFAutoUnlockErrorDomain;
    v8 = [v4 code];
    v9 = [(SDAutoUnlockPairingLockSession *)self userInfoForNoCommunincation];
    v10 = [NSError errorWithDomain:v7 code:v8 userInfo:v9];

    v4 = v10;
  }

LABEL_20:
  v11 = [(SDAutoUnlockPairingSession *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(SDAutoUnlockPairingSession *)self delegate];
    [v13 session:self didCompleteWithError:v4];
  }

  v14 = [(SDAutoUnlockPairingLockSession *)self setupError];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v4;
  }

  v17 = v16;

  if ([v4 code] == 150)
  {
    v18 = +[SDAutoUnlockTransport sharedTransport];
    v19 = [v18 watchExistedInUnlockList];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      v21 = [v18 lastSeenWatchDate];
    }

    else
    {
      v21 = 0;
    }

    v53 = v21;

    v52 = v20;
  }

  else
  {
    v53 = 0;
    v52 = 1;
  }

  v51 = v4 == 0;
  v22 = +[SDAutoUnlockAKSManager sharedManager];
  v23 = [(SDAutoUnlockPairingSession *)self deviceID];
  v24 = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];
  v50 = [v22 ltkSyncStatusForDeviceID:v23 hash:v24 modern:0] != 0;

  v25 = +[SDAutoUnlockAKSManager sharedManager];
  v26 = [(SDAutoUnlockPairingSession *)self deviceID];
  v27 = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];
  v49 = [v25 ltkSyncStatusForDeviceID:v26 hash:v27 modern:1] != 0;

  v48 = [(SDAutoUnlockPairingLockSession *)self keyDeviceModel];
  v47 = [(SDAutoUnlockPairingLockSession *)self companionDeviceModel];
  [(SDAutoUnlockPairingLockSession *)self keyExchangeInterval];
  v29 = v28;
  [(SDAutoUnlockPairingLockSession *)self tokenExchangeInterval];
  v31 = v30;
  v46 = [(SDAutoUnlockPairingLockSession *)self keyDeviceLocked];
  v45 = [(SDAutoUnlockPairingLockSession *)self errorType];
  v44 = [v17 domain];
  v43 = [v17 code];
  v40 = [(SDAutoUnlockPairingLockSession *)self upsellDevice];
  v39 = [(SDAutoUnlockPairingLockSession *)self responseTimeout];
  LOBYTE(v26) = [(SDAutoUnlockPairingLockSession *)self responseTimeoutFromServer]!= 0;
  v32 = [(SDAutoUnlockPairingLockSession *)self messageTimeout];
  v33 = [(SDAutoUnlockPairingLockSession *)self messageTimeoutFromServer]!= 0;
  v42 = v4;
  v34 = [(SDAutoUnlockPairingLockSession *)self setupRetryDevice];
  v35 = [(SDAutoUnlockPairingLockSession *)self watchOldLTKSyncStatus];
  v41 = v17;
  v36 = [(SDAutoUnlockPairingLockSession *)self watchNewLTKSyncStatus];
  v37 = [(SDAutoUnlockPairingLockSession *)self watchBuildVersion];
  v38 = [(SDAutoUnlockPairingLockSession *)self watchOSVersion];
  sub_100110D88(v48, v47, v46, v51, v45, v44, v43, v52, v29, v31, v53, v40, v39, v26, v32, v33, v34, v50, v49, v35, v36, v37, v38, [(SDAutoUnlockPairingLockSession *)self receivedSetupACK], [(SDAutoUnlockPairingLockSession *)self receivedTokenACK]);
}

- (void)notifyDelegateKeyDeviceIsLocked
{
  v3 = [(SDAutoUnlockPairingSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SDAutoUnlockPairingSession *)self delegate];
    [v5 sessionDidReceiveKeyDeviceLocked:self];
  }
}

- (void)restartLTKTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting LTK timer", buf, 2u);
  }

  v4 = [(SDAutoUnlockPairingLockSession *)self ltkTimer];

  if (!v4)
  {
    objc_initWeak(buf, self);
    v5 = [(SDAutoUnlockPairingSession *)self sessionQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000763C0;
    v10[3] = &unk_1008CDD98;
    objc_copyWeak(&v11, buf);
    v6 = sub_1001F0548(0, v5, v10);
    [(SDAutoUnlockPairingLockSession *)self setLtkTimer:v6];

    v7 = [(SDAutoUnlockPairingLockSession *)self ltkTimer];
    dispatch_resume(v7);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v8 = [(SDAutoUnlockPairingLockSession *)self ltkTimer];
  v9 = sub_1001F0530(15.0);
  sub_1001F05F0(v8, v9);
}

- (void)invalidateLTKTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidate LTK timer", v6, 2u);
  }

  v4 = [(SDAutoUnlockPairingLockSession *)self ltkTimer];

  if (v4)
  {
    v5 = [(SDAutoUnlockPairingLockSession *)self ltkTimer];
    dispatch_source_cancel(v5);

    [(SDAutoUnlockPairingLockSession *)self setLtkTimer:0];
  }
}

- (void)handleLTKTimerFired
{
  v3 = +[SDAutoUnlockAKSManager sharedManager];
  v4 = [(SDAutoUnlockPairingSession *)self deviceID];
  [v3 checkRemoteLTKForDeviceID:v4];

  v5 = +[SDAutoUnlockAKSManager sharedManager];
  v6 = [(SDAutoUnlockPairingSession *)self deviceID];
  [v5 updatePreferredRemoteLTKForDeviceID:v6];

  v7 = [(SDAutoUnlockPairingLockSession *)self ltkHashMatches];
  v8 = +[SDAutoUnlockAKSManager sharedManager];
  v9 = [(SDAutoUnlockPairingSession *)self deviceID];
  v10 = [v8 remoteLTKForDeviceID:v9];

  if (v10 && v7)
  {

    [(SDAutoUnlockPairingLockSession *)self handleEscrowSessionRequest];
  }

  else if ([(SDAutoUnlockPairingLockSession *)self ltkTimerRetryCount]> 4)
  {
    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timed out waiting for LTK to sync", v15, 2u);
    }

    v12 = SFAutoUnlockErrorDomain;
    v13 = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
    v14 = [NSError errorWithDomain:v12 code:176 userInfo:v13];
    [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v14];
  }

  else
  {
    [(SDAutoUnlockPairingLockSession *)self setLtkTimerRetryCount:[(SDAutoUnlockPairingLockSession *)self ltkTimerRetryCount]+ 1];

    [(SDAutoUnlockPairingLockSession *)self restartLTKTimer];
  }
}

- (BOOL)ltkHashMatches
{
  v3 = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];

  if (v3)
  {
    v10 = 0;
    v4 = +[SDAutoUnlockAKSManager sharedManager];
    v5 = [(SDAutoUnlockPairingSession *)self deviceID];
    v6 = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];
    v7 = [v4 hashMatchesAnyRemoteLTKForDeviceID:v5 ltkHash:v6 isPreferred:&v10];

    if (v7 && (v10 & 1) == 0)
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10007A6FC();
      }
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)handleMessage:(id)a3 fromDeviceID:(id)a4 type:(unsigned __int16)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  dispatch_assert_queue_V2(v10);

  if (v5 > 2001)
  {
    if (v5 != 2002)
    {
      if (v5 != 2004)
      {
        if (v5 != 2005)
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if (v5 != 102)
  {
    if (v5 != 104)
    {
      if (v5 != 105)
      {
        goto LABEL_18;
      }

LABEL_9:
      [(SDAutoUnlockPairingLockSession *)self setKeyDeviceLocked:1];
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypePairingKeyDeviceLocked", buf, 2u);
      }

      [(SDAutoUnlockPairingLockSession *)self handleKeyDeviceLocked];
      goto LABEL_18;
    }

LABEL_15:
    v15 = objc_opt_new();
    v16 = [(SDAutoUnlockPairingLockSession *)self tokenExchangeDate];
    [v15 timeIntervalSinceDate:v16];
    [(SDAutoUnlockPairingLockSession *)self setTokenExchangeInterval:?];

    v17 = auto_unlock_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSetupCreateRecord", v18, 2u);
    }

    [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
    [(SDAutoUnlockPairingLockSession *)self handleSetupCreateRecord:v8];
    goto LABEL_18;
  }

  v12 = objc_opt_new();
  v13 = [(SDAutoUnlockPairingLockSession *)self keyExchangeDate];
  [v12 timeIntervalSinceDate:v13];
  [(SDAutoUnlockPairingLockSession *)self setKeyExchangeInterval:?];

  v14 = auto_unlock_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSetupSessionCreated", v19, 2u);
  }

  [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
  [(SDAutoUnlockPairingLockSession *)self handleSetupSessionCreated:v8 fromDeviceID:v9];
LABEL_18:
}

- (void)handleKeyDeviceLocked
{
  if ([(SDAutoUnlockPairingLockSession *)self canceled])
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not notified of locked device, session canceled", buf, 2u);
    }
  }

  else
  {
    v5 = [(SDAutoUnlockPairingLockSession *)self userInfoForWatchLocked];
    v4 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:119 userInfo:v5];
    [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v4];
  }
}

- (void)handleSetupSessionCreated:(id)a3 fromDeviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SDAutoUnlockPairingLockSession *)self canceled])
  {
    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v61) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pairing session canceled for session created", &v61, 2u);
    }

    goto LABEL_52;
  }

  v9 = [[SDUnlockSetupSessionCreated alloc] initWithData:v6];
  [(SDAutoUnlockPairingLockSession *)self setSessionCreatedMessage:v9];

  v10 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  v11 = [v10 hasErrorCode];

  if (v11)
  {
    v12 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v13 = [v12 errorCode];

    v14 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v15 = [v14 hasFailureReasons];

    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = auto_unlock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      v61 = 67109120;
      LODWORD(v62) = [v17 failureReasons];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received failure reasons %d", &v61, 8u);
    }

    v18 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v19 = [v18 failureReasons];

    if ((v19 & 4) != 0)
    {
      v45 = [(SDAutoUnlockPairingLockSession *)self userInfoCompanionViewNotSyncing];
      v46 = self;
      v47 = 7;
    }

    else
    {
      v20 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      if ([v20 failureReasons])
      {
        v48 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
        v49 = [v48 failureReasons];

        if ((v49 & 2) != 0)
        {
          v45 = [(SDAutoUnlockPairingLockSession *)self userInfoForNoWristDetectionNoPasscode];
          v46 = self;
          v47 = 4;
          goto LABEL_48;
        }
      }

      else
      {
      }

      v50 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      v51 = [v50 failureReasons];

      if (v51)
      {
        v45 = [(SDAutoUnlockPairingLockSession *)self userInfoForNoPasscode];
        v46 = self;
        v47 = 2;
      }

      else
      {
        v52 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
        v53 = [v52 failureReasons];

        if ((v53 & 2) == 0)
        {
          v54 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
          v55 = [v54 failureReasons];

          if ((v55 & 8) == 0)
          {
LABEL_32:
            switch(v13)
            {
              case 0x7Du:
                v58 = auto_unlock_log();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  sub_10007A778();
                }

                v45 = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
                v13 = 125;
                break;
              case 0x81u:
                v57 = auto_unlock_log();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  sub_10007A73C();
                }

                v45 = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
                v13 = 129;
                break;
              case 0xC4u:
                v56 = auto_unlock_log();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  sub_10007A7B4();
                }

                v45 = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
                v13 = 196;
                break;
              default:
                v45 = 0;
                break;
            }

            goto LABEL_49;
          }

          v45 = [(SDAutoUnlockPairingLockSession *)self userInfoForiPhoneNeedsUnlock];
          v13 = 177;
LABEL_49:
          v59 = auto_unlock_log();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            sub_10007A7F0();
          }

          v60 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:v13 userInfo:v45];
          [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v60];

          goto LABEL_52;
        }

        v45 = [(SDAutoUnlockPairingLockSession *)self userInfoForNoWristDetection];
        v46 = self;
        v47 = 3;
      }
    }

LABEL_48:
    [(SDAutoUnlockPairingLockSession *)v46 setErrorType:v47];
    v13 = 119;
    goto LABEL_49;
  }

  v21 = auto_unlock_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v61 = 67109120;
    LODWORD(v62) = [v22 version];
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Pairing session version is %d", &v61, 8u);
  }

  v23 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  v24 = [v23 version];

  if (v24 == 4)
  {
    v25 = +[SDAutoUnlockAKSManager sharedManager];
    v26 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v27 = [v26 longTermKey];
    [v25 signAndStoreRemoteLTK:v27 forDeviceID:v7];

    [(SDAutoUnlockPairingLockSession *)self handleDeviceAuthenticationSetupRequest];
  }

  else
  {
    v28 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v29 = [v28 hasWatchOldLTKSyncStatus];

    if (v29)
    {
      v30 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      -[SDAutoUnlockPairingLockSession setWatchOldLTKSyncStatus:](self, "setWatchOldLTKSyncStatus:", [v30 watchOldLTKSyncStatus]);
    }

    v31 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v32 = [v31 hasWatchNewLTKSyncStatus];

    if (v32)
    {
      v33 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      -[SDAutoUnlockPairingLockSession setWatchNewLTKSyncStatus:](self, "setWatchNewLTKSyncStatus:", [v33 watchNewLTKSyncStatus]);
    }

    v34 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v35 = [v34 hasLtkHash];

    if (v35)
    {
      v36 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      v37 = [v36 ltkHash];
      [(SDAutoUnlockPairingLockSession *)self setRemoteLTKHash:v37];

      v38 = auto_unlock_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];
        v61 = 138412290;
        v62 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Remote LTK Hash: %@", &v61, 0xCu);
      }
    }

    if (![(SDAutoUnlockPairingLockSession *)self ltkHashMatches])
    {
      v40 = +[SDAutoUnlockAKSManager sharedManager];
      v41 = [(SDAutoUnlockPairingSession *)self deviceID];
      [v40 checkRemoteLTKForDeviceID:v41];

      v42 = +[SDAutoUnlockAKSManager sharedManager];
      v43 = [(SDAutoUnlockPairingSession *)self deviceID];
      [v42 updatePreferredRemoteLTKForDeviceID:v43];
    }

    v44 = +[SDAutoUnlockAKSManager sharedManager];
    [v44 updateLTKs];

    [(SDAutoUnlockPairingLockSession *)self handleEscrowSessionRequest];
  }

LABEL_52:
}

- (void)handleEscrowSessionRequest
{
  if ([(SDAutoUnlockPairingLockSession *)self canceled])
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing session canceled for session request", buf, 2u);
    }

    return;
  }

  if (sub_10000C1F8(@"AURestrictOldWatch", 1))
  {
    v4 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v5 = [v4 version];

    if (v5 < 2uLL)
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
        *buf = 67109120;
        LODWORD(v55) = [v7 version];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setup received response from old watch (version: %d)", buf, 8u);
      }

      v8 = [(SDAutoUnlockPairingLockSession *)self userInfoForOldProtocol];
      v9 = SFAutoUnlockErrorDomain;
      v10 = 126;
LABEL_14:
      v15 = [NSError errorWithDomain:v9 code:v10 userInfo:v8];
      [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v15];

      goto LABEL_15;
    }
  }

  v11 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  v12 = [v11 version];

  if (v12 > 3uLL)
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      *buf = 67109120;
      LODWORD(v55) = [v14 version];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setup received response from new watch (version: %d)", buf, 8u);
    }

    v8 = [(SDAutoUnlockPairingLockSession *)self userInfoForNewProtocol];
    v9 = SFAutoUnlockErrorDomain;
    v10 = 173;
    goto LABEL_14;
  }

  v51 = 0;
  v16 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  v17 = [v16 hasToken];

  if (!v17)
  {
    v51 = 155;
    v30 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    if ([v30 hasToken])
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    v33 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v34 = [v33 token];
    v8 = [NSString stringWithFormat:@"Auto Unlock: Missing information for escrow session (has token = %@, token = %@)", v32, v34];

    goto LABEL_27;
  }

  v18 = [(SDAutoUnlockPairingLockSession *)self ltkHashMatches];
  v19 = +[SDAutoUnlockAKSManager sharedManager];
  v20 = [(SDAutoUnlockPairingSession *)self deviceID];
  v21 = [v19 remoteLTKForDeviceID:v20];

  if (v21 && v18)
  {
    v22 = +[SDAutoUnlockAKSManager sharedManager];
    v23 = [(SDAutoUnlockPairingSession *)self deviceID];
    v24 = [v22 aksPairingSessionForDeviceID:v23 originator:0 errorCode:&v51 requiresAttestation:1 requiresEscrow:0];
    [(SDAutoUnlockPairingSession *)self setAksSession:v24];

    v25 = [(SDAutoUnlockPairingSession *)self aksSession];
    LODWORD(v23) = [v25 sessionIsValid];

    if (!v23)
    {
      if (v51 == 148)
      {
        v8 = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
      }

      else
      {
        v58 = NSLocalizedDescriptionKey;
        v59 = @"Invalid AKS session";
        v8 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v49 = auto_unlock_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_10007A864();
        }
      }

      v9 = SFAutoUnlockErrorDomain;
      v10 = v51;
      goto LABEL_14;
    }

    v26 = [(SDAutoUnlockPairingSession *)self aksSession];
    v27 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v28 = [v27 token];
    v50 = 0;
    v29 = [v26 stepSessionWithData:v28 outputData:&v50];
    v30 = v50;

    if (v29)
    {
      v31 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      -[SDAutoUnlockPairingLockSession sendCreateSecretWithStepData:sessionID:](self, "sendCreateSecretWithStepData:sessionID:", v30, [v31 sessionID]);

      v8 = 0;
    }

    else
    {
      v51 = 162;
      v8 = @"Could not setup escrow session";
    }

LABEL_27:

    if (!v8)
    {
      return;
    }

    v35 = auto_unlock_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10007A8A0();
    }

    v36 = SFAutoUnlockErrorDomain;
    v37 = v51;
    v52 = NSLocalizedDescriptionKey;
    v53 = @"Request failure";
    v38 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v39 = [NSError errorWithDomain:v36 code:v37 userInfo:v38];
    [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v39];

LABEL_15:
    return;
  }

  v40 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  v41 = [v40 ltkSyncing];

  if (v41)
  {
    [(SDAutoUnlockPairingLockSession *)self restartLTKTimer];
  }

  else
  {
    v42 = auto_unlock_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = @"NO";
      if (v21)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      if (v18)
      {
        v43 = @"YES";
      }

      *buf = 138412546;
      v55 = v44;
      v56 = 2112;
      v57 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "LTK invalid (exists: %@, hash matches: %@)", buf, 0x16u);
    }

    if (v21)
    {
      v45 = 193;
    }

    else
    {
      v45 = 148;
    }

    v51 = v45;
    v46 = SFAutoUnlockErrorDomain;
    v47 = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
    v48 = [NSError errorWithDomain:v46 code:v45 userInfo:v47];
    [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v48];
  }
}

- (void)handleDeviceAuthenticationSetupRequest
{
  if (![(SDAutoUnlockPairingLockSession *)self canceled])
  {
    *buf = 0;
    v4 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v5 = [v4 hasToken];

    if (v5)
    {
      v6 = +[SDAutoUnlockAKSManager sharedManager];
      v7 = [(SDAutoUnlockPairingSession *)self deviceID];
      v8 = [v6 remoteLTKForDeviceID:v7];

      if (v8)
      {
        v9 = +[SDAutoUnlockAKSManager sharedManager];
        v10 = [(SDAutoUnlockPairingSession *)self deviceID];
        v11 = [v9 aksPairingSessionForDeviceID:v10 originator:0 errorCode:buf requiresAttestation:1 requiresEscrow:0];
        [(SDAutoUnlockPairingSession *)self setAksSession:v11];

        v12 = [(SDAutoUnlockPairingSession *)self aksSession];
        LODWORD(v10) = [v12 sessionIsValid];

        if (v10)
        {
          v13 = [(SDAutoUnlockPairingSession *)self aksSession];
          v14 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
          v15 = [v14 token];
          v33 = 0;
          v16 = [v13 stepSessionWithData:v15 outputData:&v33];
          v17 = v33;

          if (v16)
          {
            v18 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
            -[SDAutoUnlockPairingLockSession sendCreateSecretWithStepData:sessionID:](self, "sendCreateSecretWithStepData:sessionID:", v17, [v18 sessionID]);

            v19 = 0;
          }

          else
          {
            *buf = 162;
            v19 = @"Could not setup device authentication session";
          }

LABEL_14:

          if (!v19)
          {
            return;
          }

          v23 = auto_unlock_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10007A8A0();
          }

          v24 = SFAutoUnlockErrorDomain;
          v25 = *buf;
          v35 = NSLocalizedDescriptionKey;
          v36 = @"Request failure";
          v26 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v27 = [NSError errorWithDomain:v24 code:v25 userInfo:v26];
          [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v27];

          goto LABEL_29;
        }

        if (*buf == 148)
        {
          v19 = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
        }

        else
        {
          v37 = NSLocalizedDescriptionKey;
          v38 = @"Invalid AKS session";
          v19 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v32 = auto_unlock_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10007A864();
          }
        }

        v30 = SFAutoUnlockErrorDomain;
        v31 = *buf;
      }

      else
      {
        v28 = auto_unlock_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10007A910();
        }

        v29 = SFAutoUnlockErrorDomain;
        v19 = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
        v30 = v29;
        v31 = 148;
      }

      v26 = [NSError errorWithDomain:v30 code:v31 userInfo:v19];
      [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v26];
LABEL_29:

      return;
    }

    *buf = 155;
    v17 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    if ([v17 hasToken])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v22 = [v21 token];
    v19 = [NSString stringWithFormat:@"Auto Unlock: Missing information for escrow session (has token = %@, token = %@)", v20, v22];

    goto LABEL_14;
  }

  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing session canceled for session request", buf, 2u);
  }
}

- (void)handleSetupCreateRecord:(id)a3
{
  v4 = a3;
  if ([(SDAutoUnlockPairingLockSession *)self canceled])
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing session canceled for session request", buf, 2u);
    }

    goto LABEL_15;
  }

  v6 = [[SDUnlockSetupCreateRecord alloc] initWithData:v4];
  v5 = v6;
  if (v6 && [(SDUnlockSetupCreateRecord *)v6 hasToken]&& ([v5 hasErrorCode]& 1) == 0)
  {
    v13 = [(SDAutoUnlockPairingSession *)self aksSession];
    v14 = [v5 token];
    v15 = [v13 stepSessionWithData:v14 outputData:0];

    if (!v15)
    {
      v8 = @"Final step failed";
      v7 = 164;
      goto LABEL_11;
    }

    v16 = [(SDAutoUnlockPairingSession *)self aksSession];
    v17 = [(SDAutoUnlockPairingLockSession *)self passcode];
    v7 = [v16 finalizeEscrowPairing:v17];

    if (v7)
    {
      v8 = @"Finalizing pairing failed";
LABEL_11:
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10007A94C();
      }

      v10 = SFAutoUnlockErrorDomain;
      v39 = NSLocalizedDescriptionKey;
      v40 = @"Record failure";
      v11 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v12 = [NSError errorWithDomain:v10 code:v7 userInfo:v11];
      [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v12];

      goto LABEL_14;
    }

    if (![v5 hasPairedDeviceID])
    {
      v8 = @"Pairing response missing companion device ID";
      v7 = 156;
      goto LABEL_11;
    }

    v18 = +[SDAutoUnlockAKSManager sharedManager];
    v19 = [v5 pairedDeviceID];
    v20 = [(SDAutoUnlockPairingSession *)self deviceID];
    [v18 setCompanionID:v19 forWatchID:v20];

    v21 = +[SDAutoUnlockAKSManager sharedManager];
    v22 = [(SDAutoUnlockPairingSession *)self sessionID];
    v23 = [v22 UUIDString];
    v24 = [(SDAutoUnlockPairingSession *)self deviceID];
    [v21 setPairingID:v23 forWatchID:v24];

    v25 = +[SDAutoUnlockTransport sharedTransport];
    v26 = [v5 pairedDeviceID];
    v8 = [v25 idsDeviceForUniqueID:v26];

    v27 = [(__CFString *)v8 modelIdentifier];
    [(SDAutoUnlockPairingLockSession *)self setCompanionDeviceModel:v27];

    v28 = [(SDAutoUnlockPairingSession *)self aksSession];
    v11 = [v28 generateSessionToken];

    if (v11)
    {
      v29 = +[SDAutoUnlockAKSManager sharedManager];
      v30 = [(SDAutoUnlockPairingSession *)self deviceID];
      v31 = [v29 storeRangingKey:v11 forDeviceID:v30];

      if (v31)
      {
        [(SDAutoUnlockPairingLockSession *)self handleSuccessfulPairing];
LABEL_14:

        goto LABEL_15;
      }

      v36 = SFAutoUnlockErrorDomain;
      v43 = NSLocalizedDescriptionKey;
      v44 = @"Failed to store session token";
      v33 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v34 = v36;
      v35 = 168;
    }

    else
    {
      v32 = SFAutoUnlockErrorDomain;
      v41 = NSLocalizedDescriptionKey;
      v42 = @"Failed to create session token";
      v33 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v34 = v32;
      v35 = 167;
    }

    v37 = [NSError errorWithDomain:v34 code:v35 userInfo:v33];
    [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v37];

    goto LABEL_14;
  }

  if ([v5 hasErrorCode])
  {
    v7 = [v5 errorCode];
  }

  else
  {
    v7 = 171;
  }

  v8 = [NSString stringWithFormat:@"Auto Unlock: Creating escrow record failed (error code: %d)", [v5 errorCode]];
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_15:
}

- (void)handleSuccessfulPairing
{
  v3 = +[SDAutoUnlockTransport sharedTransport];
  v4 = [(SDAutoUnlockPairingSession *)self deviceID];
  v5 = [v3 idsDeviceForUniqueID:v4];

  v6 = +[SDAutoUnlockTransport sharedTransport];
  v7 = [v6 autoUnlockDeviceForIDSDevice:v5 cloudPaired:0 cached:0];

  if ([v7 unlockEnabled])
  {
    [(SDAutoUnlockPairingLockSession *)self setUnlockEnabled:1];
    [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:0];
    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  if (![v7 unlockEnabled])
  {
    goto LABEL_11;
  }

  v9 = [v7 bluetoothID];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v7 proxyBluetoothID];
  if (v11)
  {

    goto LABEL_9;
  }

  v12 = [v7 supportsAlwaysDirect];

  if (!v12)
  {
LABEL_11:
    v14 = [v7 bluetoothID];
    if (v14 && (v15 = v14, [v7 proxyBluetoothID], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = auto_unlock_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10007A9BC();
      }

      v18 = SFAutoUnlockErrorDomain;
      v34 = NSLocalizedDescriptionKey;
      v35 = @"Unlock not enabled after pairing";
      v8 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v19 = [NSError errorWithDomain:v18 code:133 userInfo:v8];
      [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v19];
    }

    else
    {
      v20 = auto_unlock_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v7 bluetoothID];
        v22 = [v21 UUIDString];
        v23 = [v7 proxyBluetoothID];
        v24 = [v23 UUIDString];
        *buf = 138412546;
        v37 = v22;
        v38 = 2112;
        v39 = v24;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Waiting for cloud pairing (Watch ID: %@, Companion ID: %@)", buf, 0x16u);
      }

      [(SDAutoUnlockPairingLockSession *)self setWaitingForCloudPairing:1];
      v8 = objc_opt_new();
      v25 = [v7 bluetoothID];

      if (!v25)
      {
        v26 = [(SDAutoUnlockPairingSession *)self deviceID];
        [v8 addObject:v26];
      }

      v27 = [v7 proxyBluetoothID];

      if (!v27)
      {
        v28 = +[SDAutoUnlockAKSManager sharedManager];
        v29 = [(SDAutoUnlockPairingSession *)self deviceID];
        v30 = [v28 companionIDForWatchID:v29];

        if (v30)
        {
          [v8 addObject:v30];
        }

        else
        {
          v31 = auto_unlock_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            sub_10007AA2C();
          }
        }
      }

      v32 = auto_unlock_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Retrying cloud pairing for specific devices %@", buf, 0xCu);
      }

      v33 = +[SDAutoUnlockTransport sharedTransport];
      [v33 triggerCloudPairRetryWithShortRetryDeviceIDs:v8];

      [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(480.0)];
    }

    goto LABEL_30;
  }

LABEL_9:
  [(SDAutoUnlockPairingLockSession *)self setUnlockEnabled:1];
  [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:0];
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_10:
    v13 = [(SDAutoUnlockPairingSession *)self deviceID];
    *buf = 138412290;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enabled for device: %@", buf, 0xCu);
  }

LABEL_30:
}

- (void)sendSetupRequest
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100078860;
  v7[3] = &unk_1008CE1A0;
  v7[4] = self;
  v2 = objc_retainBlock(v7);
  v3 = +[SDAutoUnlockAKSManager sharedManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100078BC4;
  v5[3] = &unk_1008CE1C8;
  v6 = v2;
  v4 = v2;
  [v3 generateLocalAttestedLTKIfNeccessaryWithCompletion:v5];
}

- (void)transport:(id)a3 didReceivePayload:(id)a4 type:(unsigned __int16)a5 deviceID:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100078FD0;
  v14[3] = &unk_1008CDDC0;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a5;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, v14);
}

- (void)transport:(id)a3 didReceiveMessageACKForIdentifier:(id)a4
{
  v5 = a4;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SDAutoUnlockPairingLockSession *)self setupMessageIdentifier];
    v8 = [(SDAutoUnlockPairingLockSession *)self tokenMessageIdentifier];
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received ACK (identifier: %@, setup ID: %@, token ID: %@)", &v11, 0x20u);
  }

  if ([(SDAutoUnlockPairingLockSession *)self receivedSetupACK])
  {
    [(SDAutoUnlockPairingLockSession *)self setReceivedSetupACK:1];
  }

  else
  {
    v9 = [(SDAutoUnlockPairingLockSession *)self setupMessageIdentifier];
    -[SDAutoUnlockPairingLockSession setReceivedSetupACK:](self, "setReceivedSetupACK:", [v5 isEqualToString:v9]);
  }

  if ([(SDAutoUnlockPairingLockSession *)self receivedTokenACK])
  {
    [(SDAutoUnlockPairingLockSession *)self setReceivedTokenACK:1];
  }

  else
  {
    v10 = [(SDAutoUnlockPairingLockSession *)self tokenMessageIdentifier];
    -[SDAutoUnlockPairingLockSession setReceivedTokenACK:](self, "setReceivedTokenACK:", [v5 isEqualToString:v10]);
  }
}

- (id)userInfoForiPhoneNeedsUnlock
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForKeychainMismatch
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForInternetSharing
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForMissingLTK
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForWatchNotSignedIn
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForMacNotSignedIn
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForNotCloudPaired
{
  v4[0] = NSLocalizedDescriptionKey;
  v4[1] = SFAutoUnlockManagerErrorTitleKey;
  v5[0] = @"[Internal] Bluetooth cloud pairing in progress.";
  v5[1] = @"[Internal] Bluetooth cloud pairing in progress.";
  v4[2] = SFAutoUnlockManagerErrorBodyKey;
  v5[2] = @"Auto Unlock can't be set up when your Mac is bluetooth cloud pairing to your Apple Watch. Please try again later.";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)userInfoForWatchLocked
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoCompanionViewNotSyncing
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForNoWristDetectionNoPasscode
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForNoWristDetection
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForNoPasscode
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForNoCommunincation
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForOldProtocol
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (id)userInfoForNewProtocol
{
  v2 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v6[0] = NSLocalizedDescriptionKey;
  v6[1] = SFAutoUnlockManagerErrorTitleKey;
  v7[0] = v2;
  v7[1] = v2;
  v6[2] = SFAutoUnlockManagerErrorBodyKey;
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

@end