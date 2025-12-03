@interface SDAutoUnlockPairingLockSession
- (BOOL)ltkHashMatches;
- (BOOL)validatePasscode:(id)passcode;
- (SDAutoUnlockPairingLockSession)initWithDevice:(id)device sessionID:(id)d;
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
- (void)handleMessage:(id)message fromDeviceID:(id)d type:(unsigned __int16)type;
- (void)handleSetupCreateRecord:(id)record;
- (void)handleSetupSessionCreated:(id)created fromDeviceID:(id)d;
- (void)handleSuccessfulPairing;
- (void)handleTimerFired;
- (void)invalidate;
- (void)invalidateLTKTimer;
- (void)notifyDelegateKeyDeviceIsLocked;
- (void)notifyDelegateWithError:(id)error;
- (void)onqueue_cancel;
- (void)onqueue_start;
- (void)onqueue_updateForCloudPairing;
- (void)restartLTKTimer;
- (void)sendSetupRequest;
- (void)start;
- (void)transport:(id)transport didReceiveMessageACKForIdentifier:(id)identifier;
- (void)transport:(id)transport didReceivePayload:(id)payload type:(unsigned __int16)type deviceID:(id)d;
- (void)updateForCloudPairing;
@end

@implementation SDAutoUnlockPairingLockSession

- (SDAutoUnlockPairingLockSession)initWithDevice:(id)device sessionID:(id)d
{
  deviceCopy = device;
  v32.receiver = self;
  v32.super_class = SDAutoUnlockPairingLockSession;
  v7 = [(SDAutoUnlockPairingSession *)&v32 initWithDevice:deviceCopy sessionID:d];
  v8 = v7;
  if (v7)
  {
    v7->_sendState = 0;
    v9 = +[SDAutoUnlockTransport sharedTransport];
    v10 = [v9 modelIdentifierForDeviceID:deviceCopy];
    keyDeviceModel = v8->_keyDeviceModel;
    v8->_keyDeviceModel = v10;

    v12 = +[SDAutoUnlockTransport sharedTransport];
    deviceID = [(SDAutoUnlockPairingSession *)v8 deviceID];
    v14 = [v12 idsDeviceForUniqueID:deviceID];

    if (v14)
    {
      v15 = +[SDAutoUnlockTransport sharedTransport];
      v16 = [v15 autoUnlockDeviceForIDSDevice:v14 cloudPaired:0 cached:0];

      productBuildVersion = [v16 productBuildVersion];
      watchBuildVersion = v8->_watchBuildVersion;
      v8->_watchBuildVersion = productBuildVersion;

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
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074F58;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)onqueue_start
{
  generatedError = [(SDAutoUnlockPairingLockSession *)self generatedError];
  if (!generatedError)
  {
    v4 = +[SDAutoUnlockTransport sharedTransport];
    deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
    v6 = [v4 idsDeviceForUniqueID:deviceID];

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
            userInfoForInternetSharing = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            v12 = v22;
            v13 = 121;
            goto LABEL_14;
          }
        }

        v23 = +[SDStatusMonitor sharedMonitor];
        internetSharingEnabled = [v23 internetSharingEnabled];

        if (internetSharingEnabled)
        {
          v25 = auto_unlock_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10007A6C0();
          }

          v26 = SFAutoUnlockErrorDomain;
          userInfoForInternetSharing = [(SDAutoUnlockPairingLockSession *)self userInfoForInternetSharing];
          v12 = v26;
          v13 = 146;
        }

        else
        {
          passcode = [(SDAutoUnlockPairingLockSession *)self passcode];
          if (passcode && (v28 = passcode, -[SDAutoUnlockPairingLockSession passcode](self, "passcode"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 length], v29, v28, v30))
          {
            passcode2 = [(SDAutoUnlockPairingLockSession *)self passcode];
            v32 = [(SDAutoUnlockPairingLockSession *)self validatePasscode:passcode2];

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
            userInfoForInternetSharing = [(SDAutoUnlockPairingLockSession *)self userInfoForKeychainMismatch];
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
            userInfoForInternetSharing = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            v12 = v35;
            v13 = 112;
          }
        }

LABEL_14:
        v17 = [NSError errorWithDomain:v12 code:v13 userInfo:userInfoForInternetSharing];
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
      localDeviceIDSRegistered = [v8 localDeviceIDSRegistered];

      if (localDeviceIDSRegistered)
      {
        v10 = SFAutoUnlockErrorDomain;
        userInfoForInternetSharing = [(SDAutoUnlockPairingLockSession *)self userInfoForWatchNotSignedIn];
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
      userInfoForMacNotSignedIn = [(SDAutoUnlockPairingLockSession *)self userInfoForMacNotSignedIn];
    }

    else
    {
      v14 = auto_unlock_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007A4C4(v6, v14);
      }

      v15 = SFAutoUnlockErrorDomain;
      userInfoForMacNotSignedIn = [(SDAutoUnlockPairingLockSession *)self userInfoForNoCommunincation];
    }

    userInfoForInternetSharing = userInfoForMacNotSignedIn;
    v12 = v15;
    v13 = 178;
    goto LABEL_14;
  }

  [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:generatedError];
LABEL_16:
}

- (void)cancel
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075504;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
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
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075688;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
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
  aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
  resetSession = [aksSession resetSession];

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (resetSession)
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
    userInfoForNoWristDetectionNoPasscode = [(SDAutoUnlockPairingLockSession *)self userInfoForNoWristDetectionNoPasscode];
LABEL_10:
    v8 = userInfoForNoWristDetectionNoPasscode;
    v9 = [NSError errorWithDomain:v6 code:119 userInfo:userInfoForNoWristDetectionNoPasscode];

    goto LABEL_11;
  }

  if (v4)
  {
    v6 = SFAutoUnlockErrorDomain;
    userInfoForNoWristDetectionNoPasscode = [(SDAutoUnlockPairingLockSession *)self userInfoForNoWristDetection];
    goto LABEL_10;
  }

  if (v3)
  {
    v6 = SFAutoUnlockErrorDomain;
    userInfoForNoWristDetectionNoPasscode = [(SDAutoUnlockPairingLockSession *)self userInfoForNoPasscode];
    goto LABEL_10;
  }

  if (v5)
  {
    v6 = SFAutoUnlockErrorDomain;
    userInfoForNoWristDetectionNoPasscode = [(SDAutoUnlockPairingLockSession *)self userInfoForNoCommunincation];
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
    sendState = [(SDAutoUnlockPairingLockSession *)self sendState];
    v4 = @"Request timeout";
    if (sendState == 2)
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
    userInfoForNotCloudPaired = [(SDAutoUnlockPairingLockSession *)self userInfoForNotCloudPaired];

    v5 = 134;
    v7 = userInfoForNotCloudPaired;
  }

  v9 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:v5 userInfo:v7];
  [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v9];
}

- (BOOL)validatePasscode:(id)passcode
{
  passcodeCopy = passcode;
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Validating passcode", v13, 2u);
  }

  v5 = [passcodeCopy dataUsingEncoding:4];

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

- (void)notifyDelegateWithError:(id)error
{
  errorCopy = error;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing lock session notifying delegate with error: %@", buf, 0xCu);
  }

  if ([errorCopy code] == 134)
  {
    v6 = IsAppleInternalBuild() != 0;
    if (!errorCopy)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
    if (!errorCopy)
    {
      goto LABEL_20;
    }
  }

  if ([errorCopy code] != 119 && objc_msgSend(errorCopy, "code") != 150 && objc_msgSend(errorCopy, "code") != 178 && objc_msgSend(errorCopy, "code") != 148 && objc_msgSend(errorCopy, "code") != 125 && objc_msgSend(errorCopy, "code") != 129 && objc_msgSend(errorCopy, "code") != 146 && objc_msgSend(errorCopy, "code") != 173 && objc_msgSend(errorCopy, "code") != 174 && objc_msgSend(errorCopy, "code") != 177 && objc_msgSend(errorCopy, "code") != 196 && objc_msgSend(errorCopy, "code") != 205 && !v6)
  {
    v7 = SFAutoUnlockErrorDomain;
    code = [errorCopy code];
    userInfoForNoCommunincation = [(SDAutoUnlockPairingLockSession *)self userInfoForNoCommunincation];
    v10 = [NSError errorWithDomain:v7 code:code userInfo:userInfoForNoCommunincation];

    errorCopy = v10;
  }

LABEL_20:
  delegate = [(SDAutoUnlockPairingSession *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(SDAutoUnlockPairingSession *)self delegate];
    [delegate2 session:self didCompleteWithError:errorCopy];
  }

  setupError = [(SDAutoUnlockPairingLockSession *)self setupError];
  v15 = setupError;
  if (setupError)
  {
    v16 = setupError;
  }

  else
  {
    v16 = errorCopy;
  }

  v17 = v16;

  if ([errorCopy code] == 150)
  {
    v18 = +[SDAutoUnlockTransport sharedTransport];
    watchExistedInUnlockList = [v18 watchExistedInUnlockList];
    bOOLValue = [watchExistedInUnlockList BOOLValue];

    if (bOOLValue)
    {
      lastSeenWatchDate = [v18 lastSeenWatchDate];
    }

    else
    {
      lastSeenWatchDate = 0;
    }

    v53 = lastSeenWatchDate;

    v52 = bOOLValue;
  }

  else
  {
    v53 = 0;
    v52 = 1;
  }

  v51 = errorCopy == 0;
  v22 = +[SDAutoUnlockAKSManager sharedManager];
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  remoteLTKHash = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];
  v50 = [v22 ltkSyncStatusForDeviceID:deviceID hash:remoteLTKHash modern:0] != 0;

  v25 = +[SDAutoUnlockAKSManager sharedManager];
  deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
  remoteLTKHash2 = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];
  v49 = [v25 ltkSyncStatusForDeviceID:deviceID2 hash:remoteLTKHash2 modern:1] != 0;

  keyDeviceModel = [(SDAutoUnlockPairingLockSession *)self keyDeviceModel];
  companionDeviceModel = [(SDAutoUnlockPairingLockSession *)self companionDeviceModel];
  [(SDAutoUnlockPairingLockSession *)self keyExchangeInterval];
  v29 = v28;
  [(SDAutoUnlockPairingLockSession *)self tokenExchangeInterval];
  v31 = v30;
  keyDeviceLocked = [(SDAutoUnlockPairingLockSession *)self keyDeviceLocked];
  errorType = [(SDAutoUnlockPairingLockSession *)self errorType];
  domain = [v17 domain];
  code2 = [v17 code];
  upsellDevice = [(SDAutoUnlockPairingLockSession *)self upsellDevice];
  responseTimeout = [(SDAutoUnlockPairingLockSession *)self responseTimeout];
  LOBYTE(deviceID2) = [(SDAutoUnlockPairingLockSession *)self responseTimeoutFromServer]!= 0;
  messageTimeout = [(SDAutoUnlockPairingLockSession *)self messageTimeout];
  v33 = [(SDAutoUnlockPairingLockSession *)self messageTimeoutFromServer]!= 0;
  v42 = errorCopy;
  setupRetryDevice = [(SDAutoUnlockPairingLockSession *)self setupRetryDevice];
  watchOldLTKSyncStatus = [(SDAutoUnlockPairingLockSession *)self watchOldLTKSyncStatus];
  v41 = v17;
  watchNewLTKSyncStatus = [(SDAutoUnlockPairingLockSession *)self watchNewLTKSyncStatus];
  watchBuildVersion = [(SDAutoUnlockPairingLockSession *)self watchBuildVersion];
  watchOSVersion = [(SDAutoUnlockPairingLockSession *)self watchOSVersion];
  sub_100110D88(keyDeviceModel, companionDeviceModel, keyDeviceLocked, v51, errorType, domain, code2, v52, v29, v31, v53, upsellDevice, responseTimeout, deviceID2, messageTimeout, v33, setupRetryDevice, v50, v49, watchOldLTKSyncStatus, watchNewLTKSyncStatus, watchBuildVersion, watchOSVersion, [(SDAutoUnlockPairingLockSession *)self receivedSetupACK], [(SDAutoUnlockPairingLockSession *)self receivedTokenACK]);
}

- (void)notifyDelegateKeyDeviceIsLocked
{
  delegate = [(SDAutoUnlockPairingSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(SDAutoUnlockPairingSession *)self delegate];
    [delegate2 sessionDidReceiveKeyDeviceLocked:self];
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

  ltkTimer = [(SDAutoUnlockPairingLockSession *)self ltkTimer];

  if (!ltkTimer)
  {
    objc_initWeak(buf, self);
    sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000763C0;
    v10[3] = &unk_1008CDD98;
    objc_copyWeak(&v11, buf);
    v6 = sub_1001F0548(0, sessionQueue, v10);
    [(SDAutoUnlockPairingLockSession *)self setLtkTimer:v6];

    ltkTimer2 = [(SDAutoUnlockPairingLockSession *)self ltkTimer];
    dispatch_resume(ltkTimer2);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  ltkTimer3 = [(SDAutoUnlockPairingLockSession *)self ltkTimer];
  v9 = sub_1001F0530(15.0);
  sub_1001F05F0(ltkTimer3, v9);
}

- (void)invalidateLTKTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidate LTK timer", v6, 2u);
  }

  ltkTimer = [(SDAutoUnlockPairingLockSession *)self ltkTimer];

  if (ltkTimer)
  {
    ltkTimer2 = [(SDAutoUnlockPairingLockSession *)self ltkTimer];
    dispatch_source_cancel(ltkTimer2);

    [(SDAutoUnlockPairingLockSession *)self setLtkTimer:0];
  }
}

- (void)handleLTKTimerFired
{
  v3 = +[SDAutoUnlockAKSManager sharedManager];
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  [v3 checkRemoteLTKForDeviceID:deviceID];

  v5 = +[SDAutoUnlockAKSManager sharedManager];
  deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
  [v5 updatePreferredRemoteLTKForDeviceID:deviceID2];

  ltkHashMatches = [(SDAutoUnlockPairingLockSession *)self ltkHashMatches];
  v8 = +[SDAutoUnlockAKSManager sharedManager];
  deviceID3 = [(SDAutoUnlockPairingSession *)self deviceID];
  v10 = [v8 remoteLTKForDeviceID:deviceID3];

  if (v10 && ltkHashMatches)
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
    userInfoForMissingLTK = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
    v14 = [NSError errorWithDomain:v12 code:176 userInfo:userInfoForMissingLTK];
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
  remoteLTKHash = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];

  if (remoteLTKHash)
  {
    v10 = 0;
    v4 = +[SDAutoUnlockAKSManager sharedManager];
    deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
    remoteLTKHash2 = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];
    v7 = [v4 hashMatchesAnyRemoteLTKForDeviceID:deviceID ltkHash:remoteLTKHash2 isPreferred:&v10];

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

- (void)handleMessage:(id)message fromDeviceID:(id)d type:(unsigned __int16)type
{
  typeCopy = type;
  messageCopy = message;
  dCopy = d;
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  dispatch_assert_queue_V2(sessionQueue);

  if (typeCopy > 2001)
  {
    if (typeCopy != 2002)
    {
      if (typeCopy != 2004)
      {
        if (typeCopy != 2005)
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if (typeCopy != 102)
  {
    if (typeCopy != 104)
    {
      if (typeCopy != 105)
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
    tokenExchangeDate = [(SDAutoUnlockPairingLockSession *)self tokenExchangeDate];
    [v15 timeIntervalSinceDate:tokenExchangeDate];
    [(SDAutoUnlockPairingLockSession *)self setTokenExchangeInterval:?];

    v17 = auto_unlock_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSetupCreateRecord", v18, 2u);
    }

    [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
    [(SDAutoUnlockPairingLockSession *)self handleSetupCreateRecord:messageCopy];
    goto LABEL_18;
  }

  v12 = objc_opt_new();
  keyExchangeDate = [(SDAutoUnlockPairingLockSession *)self keyExchangeDate];
  [v12 timeIntervalSinceDate:keyExchangeDate];
  [(SDAutoUnlockPairingLockSession *)self setKeyExchangeInterval:?];

  v14 = auto_unlock_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSetupSessionCreated", v19, 2u);
  }

  [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
  [(SDAutoUnlockPairingLockSession *)self handleSetupSessionCreated:messageCopy fromDeviceID:dCopy];
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
    userInfoForWatchLocked = [(SDAutoUnlockPairingLockSession *)self userInfoForWatchLocked];
    v4 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:119 userInfo:userInfoForWatchLocked];
    [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v4];
  }
}

- (void)handleSetupSessionCreated:(id)created fromDeviceID:(id)d
{
  createdCopy = created;
  dCopy = d;
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

  v9 = [[SDUnlockSetupSessionCreated alloc] initWithData:createdCopy];
  [(SDAutoUnlockPairingLockSession *)self setSessionCreatedMessage:v9];

  sessionCreatedMessage = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  hasErrorCode = [sessionCreatedMessage hasErrorCode];

  if (hasErrorCode)
  {
    sessionCreatedMessage2 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    errorCode = [sessionCreatedMessage2 errorCode];

    sessionCreatedMessage3 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    hasFailureReasons = [sessionCreatedMessage3 hasFailureReasons];

    if (!hasFailureReasons)
    {
      goto LABEL_32;
    }

    v16 = auto_unlock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sessionCreatedMessage4 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      v61 = 67109120;
      LODWORD(v62) = [sessionCreatedMessage4 failureReasons];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received failure reasons %d", &v61, 8u);
    }

    sessionCreatedMessage5 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    failureReasons = [sessionCreatedMessage5 failureReasons];

    if ((failureReasons & 4) != 0)
    {
      userInfoCompanionViewNotSyncing = [(SDAutoUnlockPairingLockSession *)self userInfoCompanionViewNotSyncing];
      selfCopy4 = self;
      v47 = 7;
    }

    else
    {
      sessionCreatedMessage6 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      if ([sessionCreatedMessage6 failureReasons])
      {
        sessionCreatedMessage7 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
        failureReasons2 = [sessionCreatedMessage7 failureReasons];

        if ((failureReasons2 & 2) != 0)
        {
          userInfoCompanionViewNotSyncing = [(SDAutoUnlockPairingLockSession *)self userInfoForNoWristDetectionNoPasscode];
          selfCopy4 = self;
          v47 = 4;
          goto LABEL_48;
        }
      }

      else
      {
      }

      sessionCreatedMessage8 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      failureReasons3 = [sessionCreatedMessage8 failureReasons];

      if (failureReasons3)
      {
        userInfoCompanionViewNotSyncing = [(SDAutoUnlockPairingLockSession *)self userInfoForNoPasscode];
        selfCopy4 = self;
        v47 = 2;
      }

      else
      {
        sessionCreatedMessage9 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
        failureReasons4 = [sessionCreatedMessage9 failureReasons];

        if ((failureReasons4 & 2) == 0)
        {
          sessionCreatedMessage10 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
          failureReasons5 = [sessionCreatedMessage10 failureReasons];

          if ((failureReasons5 & 8) == 0)
          {
LABEL_32:
            switch(errorCode)
            {
              case 0x7Du:
                v58 = auto_unlock_log();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  sub_10007A778();
                }

                userInfoCompanionViewNotSyncing = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
                errorCode = 125;
                break;
              case 0x81u:
                v57 = auto_unlock_log();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  sub_10007A73C();
                }

                userInfoCompanionViewNotSyncing = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
                errorCode = 129;
                break;
              case 0xC4u:
                v56 = auto_unlock_log();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  sub_10007A7B4();
                }

                userInfoCompanionViewNotSyncing = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
                errorCode = 196;
                break;
              default:
                userInfoCompanionViewNotSyncing = 0;
                break;
            }

            goto LABEL_49;
          }

          userInfoCompanionViewNotSyncing = [(SDAutoUnlockPairingLockSession *)self userInfoForiPhoneNeedsUnlock];
          errorCode = 177;
LABEL_49:
          v59 = auto_unlock_log();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            sub_10007A7F0();
          }

          v60 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:errorCode userInfo:userInfoCompanionViewNotSyncing];
          [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v60];

          goto LABEL_52;
        }

        userInfoCompanionViewNotSyncing = [(SDAutoUnlockPairingLockSession *)self userInfoForNoWristDetection];
        selfCopy4 = self;
        v47 = 3;
      }
    }

LABEL_48:
    [(SDAutoUnlockPairingLockSession *)selfCopy4 setErrorType:v47];
    errorCode = 119;
    goto LABEL_49;
  }

  v21 = auto_unlock_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sessionCreatedMessage11 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    v61 = 67109120;
    LODWORD(v62) = [sessionCreatedMessage11 version];
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Pairing session version is %d", &v61, 8u);
  }

  sessionCreatedMessage12 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  version = [sessionCreatedMessage12 version];

  if (version == 4)
  {
    v25 = +[SDAutoUnlockAKSManager sharedManager];
    sessionCreatedMessage13 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    longTermKey = [sessionCreatedMessage13 longTermKey];
    [v25 signAndStoreRemoteLTK:longTermKey forDeviceID:dCopy];

    [(SDAutoUnlockPairingLockSession *)self handleDeviceAuthenticationSetupRequest];
  }

  else
  {
    sessionCreatedMessage14 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    hasWatchOldLTKSyncStatus = [sessionCreatedMessage14 hasWatchOldLTKSyncStatus];

    if (hasWatchOldLTKSyncStatus)
    {
      sessionCreatedMessage15 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      -[SDAutoUnlockPairingLockSession setWatchOldLTKSyncStatus:](self, "setWatchOldLTKSyncStatus:", [sessionCreatedMessage15 watchOldLTKSyncStatus]);
    }

    sessionCreatedMessage16 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    hasWatchNewLTKSyncStatus = [sessionCreatedMessage16 hasWatchNewLTKSyncStatus];

    if (hasWatchNewLTKSyncStatus)
    {
      sessionCreatedMessage17 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      -[SDAutoUnlockPairingLockSession setWatchNewLTKSyncStatus:](self, "setWatchNewLTKSyncStatus:", [sessionCreatedMessage17 watchNewLTKSyncStatus]);
    }

    sessionCreatedMessage18 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    hasLtkHash = [sessionCreatedMessage18 hasLtkHash];

    if (hasLtkHash)
    {
      sessionCreatedMessage19 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      ltkHash = [sessionCreatedMessage19 ltkHash];
      [(SDAutoUnlockPairingLockSession *)self setRemoteLTKHash:ltkHash];

      v38 = auto_unlock_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        remoteLTKHash = [(SDAutoUnlockPairingLockSession *)self remoteLTKHash];
        v61 = 138412290;
        v62 = remoteLTKHash;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Remote LTK Hash: %@", &v61, 0xCu);
      }
    }

    if (![(SDAutoUnlockPairingLockSession *)self ltkHashMatches])
    {
      v40 = +[SDAutoUnlockAKSManager sharedManager];
      deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
      [v40 checkRemoteLTKForDeviceID:deviceID];

      v42 = +[SDAutoUnlockAKSManager sharedManager];
      deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
      [v42 updatePreferredRemoteLTKForDeviceID:deviceID2];
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
    sessionCreatedMessage = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    version = [sessionCreatedMessage version];

    if (version < 2uLL)
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sessionCreatedMessage2 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
        *buf = 67109120;
        LODWORD(v55) = [sessionCreatedMessage2 version];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setup received response from old watch (version: %d)", buf, 8u);
      }

      userInfoForOldProtocol = [(SDAutoUnlockPairingLockSession *)self userInfoForOldProtocol];
      v9 = SFAutoUnlockErrorDomain;
      v10 = 126;
LABEL_14:
      v15 = [NSError errorWithDomain:v9 code:v10 userInfo:userInfoForOldProtocol];
      [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v15];

      goto LABEL_15;
    }
  }

  sessionCreatedMessage3 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  version2 = [sessionCreatedMessage3 version];

  if (version2 > 3uLL)
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sessionCreatedMessage4 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      *buf = 67109120;
      LODWORD(v55) = [sessionCreatedMessage4 version];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setup received response from new watch (version: %d)", buf, 8u);
    }

    userInfoForOldProtocol = [(SDAutoUnlockPairingLockSession *)self userInfoForNewProtocol];
    v9 = SFAutoUnlockErrorDomain;
    v10 = 173;
    goto LABEL_14;
  }

  v51 = 0;
  sessionCreatedMessage5 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  hasToken = [sessionCreatedMessage5 hasToken];

  if (!hasToken)
  {
    v51 = 155;
    sessionCreatedMessage6 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    if ([sessionCreatedMessage6 hasToken])
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    sessionCreatedMessage7 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    token = [sessionCreatedMessage7 token];
    userInfoForOldProtocol = [NSString stringWithFormat:@"Auto Unlock: Missing information for escrow session (has token = %@, token = %@)", v32, token];

    goto LABEL_27;
  }

  ltkHashMatches = [(SDAutoUnlockPairingLockSession *)self ltkHashMatches];
  v19 = +[SDAutoUnlockAKSManager sharedManager];
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  v21 = [v19 remoteLTKForDeviceID:deviceID];

  if (v21 && ltkHashMatches)
  {
    v22 = +[SDAutoUnlockAKSManager sharedManager];
    deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
    v24 = [v22 aksPairingSessionForDeviceID:deviceID2 originator:0 errorCode:&v51 requiresAttestation:1 requiresEscrow:0];
    [(SDAutoUnlockPairingSession *)self setAksSession:v24];

    aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
    LODWORD(deviceID2) = [aksSession sessionIsValid];

    if (!deviceID2)
    {
      if (v51 == 148)
      {
        userInfoForOldProtocol = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
      }

      else
      {
        v58 = NSLocalizedDescriptionKey;
        v59 = @"Invalid AKS session";
        userInfoForOldProtocol = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
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

    aksSession2 = [(SDAutoUnlockPairingSession *)self aksSession];
    sessionCreatedMessage8 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    token2 = [sessionCreatedMessage8 token];
    v50 = 0;
    v29 = [aksSession2 stepSessionWithData:token2 outputData:&v50];
    sessionCreatedMessage6 = v50;

    if (v29)
    {
      sessionCreatedMessage9 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
      -[SDAutoUnlockPairingLockSession sendCreateSecretWithStepData:sessionID:](self, "sendCreateSecretWithStepData:sessionID:", sessionCreatedMessage6, [sessionCreatedMessage9 sessionID]);

      userInfoForOldProtocol = 0;
    }

    else
    {
      v51 = 162;
      userInfoForOldProtocol = @"Could not setup escrow session";
    }

LABEL_27:

    if (!userInfoForOldProtocol)
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

  sessionCreatedMessage10 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
  ltkSyncing = [sessionCreatedMessage10 ltkSyncing];

  if (ltkSyncing)
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

      if (ltkHashMatches)
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
    userInfoForMissingLTK = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
    v48 = [NSError errorWithDomain:v46 code:v45 userInfo:userInfoForMissingLTK];
    [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v48];
  }
}

- (void)handleDeviceAuthenticationSetupRequest
{
  if (![(SDAutoUnlockPairingLockSession *)self canceled])
  {
    *buf = 0;
    sessionCreatedMessage = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    hasToken = [sessionCreatedMessage hasToken];

    if (hasToken)
    {
      v6 = +[SDAutoUnlockAKSManager sharedManager];
      deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
      v8 = [v6 remoteLTKForDeviceID:deviceID];

      if (v8)
      {
        v9 = +[SDAutoUnlockAKSManager sharedManager];
        deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
        v11 = [v9 aksPairingSessionForDeviceID:deviceID2 originator:0 errorCode:buf requiresAttestation:1 requiresEscrow:0];
        [(SDAutoUnlockPairingSession *)self setAksSession:v11];

        aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
        LODWORD(deviceID2) = [aksSession sessionIsValid];

        if (deviceID2)
        {
          aksSession2 = [(SDAutoUnlockPairingSession *)self aksSession];
          sessionCreatedMessage2 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
          token = [sessionCreatedMessage2 token];
          v33 = 0;
          v16 = [aksSession2 stepSessionWithData:token outputData:&v33];
          sessionCreatedMessage4 = v33;

          if (v16)
          {
            sessionCreatedMessage3 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
            -[SDAutoUnlockPairingLockSession sendCreateSecretWithStepData:sessionID:](self, "sendCreateSecretWithStepData:sessionID:", sessionCreatedMessage4, [sessionCreatedMessage3 sessionID]);

            userInfoForMissingLTK = 0;
          }

          else
          {
            *buf = 162;
            userInfoForMissingLTK = @"Could not setup device authentication session";
          }

LABEL_14:

          if (!userInfoForMissingLTK)
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
          userInfoForMissingLTK = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
        }

        else
        {
          v37 = NSLocalizedDescriptionKey;
          v38 = @"Invalid AKS session";
          userInfoForMissingLTK = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
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
        userInfoForMissingLTK = [(SDAutoUnlockPairingLockSession *)self userInfoForMissingLTK];
        v30 = v29;
        v31 = 148;
      }

      v26 = [NSError errorWithDomain:v30 code:v31 userInfo:userInfoForMissingLTK];
      [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v26];
LABEL_29:

      return;
    }

    *buf = 155;
    sessionCreatedMessage4 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    if ([sessionCreatedMessage4 hasToken])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    sessionCreatedMessage5 = [(SDAutoUnlockPairingLockSession *)self sessionCreatedMessage];
    token2 = [sessionCreatedMessage5 token];
    userInfoForMissingLTK = [NSString stringWithFormat:@"Auto Unlock: Missing information for escrow session (has token = %@, token = %@)", v20, token2];

    goto LABEL_14;
  }

  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing session canceled for session request", buf, 2u);
  }
}

- (void)handleSetupCreateRecord:(id)record
{
  recordCopy = record;
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

  v6 = [[SDUnlockSetupCreateRecord alloc] initWithData:recordCopy];
  v5 = v6;
  if (v6 && [(SDUnlockSetupCreateRecord *)v6 hasToken]&& ([v5 hasErrorCode]& 1) == 0)
  {
    aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
    token = [v5 token];
    v15 = [aksSession stepSessionWithData:token outputData:0];

    if (!v15)
    {
      v8 = @"Final step failed";
      errorCode = 164;
      goto LABEL_11;
    }

    aksSession2 = [(SDAutoUnlockPairingSession *)self aksSession];
    passcode = [(SDAutoUnlockPairingLockSession *)self passcode];
    errorCode = [aksSession2 finalizeEscrowPairing:passcode];

    if (errorCode)
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
      generateSessionToken = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v12 = [NSError errorWithDomain:v10 code:errorCode userInfo:generateSessionToken];
      [(SDAutoUnlockPairingLockSession *)self notifyDelegateWithError:v12];

      goto LABEL_14;
    }

    if (![v5 hasPairedDeviceID])
    {
      v8 = @"Pairing response missing companion device ID";
      errorCode = 156;
      goto LABEL_11;
    }

    v18 = +[SDAutoUnlockAKSManager sharedManager];
    pairedDeviceID = [v5 pairedDeviceID];
    deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
    [v18 setCompanionID:pairedDeviceID forWatchID:deviceID];

    v21 = +[SDAutoUnlockAKSManager sharedManager];
    sessionID = [(SDAutoUnlockPairingSession *)self sessionID];
    uUIDString = [sessionID UUIDString];
    deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
    [v21 setPairingID:uUIDString forWatchID:deviceID2];

    v25 = +[SDAutoUnlockTransport sharedTransport];
    pairedDeviceID2 = [v5 pairedDeviceID];
    v8 = [v25 idsDeviceForUniqueID:pairedDeviceID2];

    modelIdentifier = [(__CFString *)v8 modelIdentifier];
    [(SDAutoUnlockPairingLockSession *)self setCompanionDeviceModel:modelIdentifier];

    aksSession3 = [(SDAutoUnlockPairingSession *)self aksSession];
    generateSessionToken = [aksSession3 generateSessionToken];

    if (generateSessionToken)
    {
      v29 = +[SDAutoUnlockAKSManager sharedManager];
      deviceID3 = [(SDAutoUnlockPairingSession *)self deviceID];
      v31 = [v29 storeRangingKey:generateSessionToken forDeviceID:deviceID3];

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
    errorCode = [v5 errorCode];
  }

  else
  {
    errorCode = 171;
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
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  v5 = [v3 idsDeviceForUniqueID:deviceID];

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

  bluetoothID = [v7 bluetoothID];
  if (!bluetoothID)
  {
    goto LABEL_11;
  }

  v10 = bluetoothID;
  proxyBluetoothID = [v7 proxyBluetoothID];
  if (proxyBluetoothID)
  {

    goto LABEL_9;
  }

  supportsAlwaysDirect = [v7 supportsAlwaysDirect];

  if (!supportsAlwaysDirect)
  {
LABEL_11:
    bluetoothID2 = [v7 bluetoothID];
    if (bluetoothID2 && (v15 = bluetoothID2, [v7 proxyBluetoothID], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
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
        bluetoothID3 = [v7 bluetoothID];
        uUIDString = [bluetoothID3 UUIDString];
        proxyBluetoothID2 = [v7 proxyBluetoothID];
        uUIDString2 = [proxyBluetoothID2 UUIDString];
        *buf = 138412546;
        v37 = uUIDString;
        v38 = 2112;
        v39 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Waiting for cloud pairing (Watch ID: %@, Companion ID: %@)", buf, 0x16u);
      }

      [(SDAutoUnlockPairingLockSession *)self setWaitingForCloudPairing:1];
      v8 = objc_opt_new();
      bluetoothID4 = [v7 bluetoothID];

      if (!bluetoothID4)
      {
        deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
        [v8 addObject:deviceID2];
      }

      proxyBluetoothID3 = [v7 proxyBluetoothID];

      if (!proxyBluetoothID3)
      {
        v28 = +[SDAutoUnlockAKSManager sharedManager];
        deviceID3 = [(SDAutoUnlockPairingSession *)self deviceID];
        v30 = [v28 companionIDForWatchID:deviceID3];

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
    deviceID4 = [(SDAutoUnlockPairingSession *)self deviceID];
    *buf = 138412290;
    v37 = deviceID4;
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

- (void)transport:(id)transport didReceivePayload:(id)payload type:(unsigned __int16)type deviceID:(id)d
{
  payloadCopy = payload;
  dCopy = d;
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100078FD0;
  v14[3] = &unk_1008CDDC0;
  v14[4] = self;
  v15 = payloadCopy;
  v16 = dCopy;
  typeCopy = type;
  v12 = dCopy;
  v13 = payloadCopy;
  dispatch_async(sessionQueue, v14);
}

- (void)transport:(id)transport didReceiveMessageACKForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    setupMessageIdentifier = [(SDAutoUnlockPairingLockSession *)self setupMessageIdentifier];
    tokenMessageIdentifier = [(SDAutoUnlockPairingLockSession *)self tokenMessageIdentifier];
    v11 = 138412802;
    v12 = identifierCopy;
    v13 = 2112;
    v14 = setupMessageIdentifier;
    v15 = 2112;
    v16 = tokenMessageIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received ACK (identifier: %@, setup ID: %@, token ID: %@)", &v11, 0x20u);
  }

  if ([(SDAutoUnlockPairingLockSession *)self receivedSetupACK])
  {
    [(SDAutoUnlockPairingLockSession *)self setReceivedSetupACK:1];
  }

  else
  {
    setupMessageIdentifier2 = [(SDAutoUnlockPairingLockSession *)self setupMessageIdentifier];
    -[SDAutoUnlockPairingLockSession setReceivedSetupACK:](self, "setReceivedSetupACK:", [identifierCopy isEqualToString:setupMessageIdentifier2]);
  }

  if ([(SDAutoUnlockPairingLockSession *)self receivedTokenACK])
  {
    [(SDAutoUnlockPairingLockSession *)self setReceivedTokenACK:1];
  }

  else
  {
    tokenMessageIdentifier2 = [(SDAutoUnlockPairingLockSession *)self tokenMessageIdentifier];
    -[SDAutoUnlockPairingLockSession setReceivedTokenACK:](self, "setReceivedTokenACK:", [identifierCopy isEqualToString:tokenMessageIdentifier2]);
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