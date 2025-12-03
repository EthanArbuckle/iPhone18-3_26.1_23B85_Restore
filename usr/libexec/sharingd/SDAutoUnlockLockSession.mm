@interface SDAutoUnlockLockSession
- (BOOL)handleFoundBLEDevice:(id)device;
- (BOOL)handleFoundBLEDevice:(id)device available:(BOOL)available lockedOnWrist:(BOOL)wrist;
- (BOOL)peerInRange:(id)range;
- (BOOL)usingProxy;
- (SDAutoUnlockLockSession)initWithAutoUnlockDevice:(id)device sessionID:(id)d bleDevice:(id)bleDevice;
- (id)aksPeerAvailable;
- (id)attemptResults;
- (id)hintToken;
- (void)_cancel;
- (void)_handleCanceledAfterSuccess;
- (void)addObservers;
- (void)cancel;
- (void)cancelWiFiRequest;
- (void)clamshellStateChanged:(id)changed;
- (void)completeAttemptIfNecessary;
- (void)completeAttemptPostNotification:(BOOL)notification;
- (void)connectionActivated;
- (void)consumeAuthTokenIfReady;
- (void)deviceConnected:(id)connected;
- (void)displayConfigChanged:(id)changed;
- (void)handleAWDLInfo:(id)info;
- (void)handleAWDLUp;
- (void)handleAuthPromptResponse:(id)response;
- (void)handleCanceledAfterSuccess;
- (void)handleConfirmationACK;
- (void)handleDecryptionFailure:(int64_t)failure;
- (void)handleMessageWithWrapper:(id)wrapper;
- (void)handlePeerFound:(BOOL)found;
- (void)handlePeerInRange;
- (void)handlePeerOutOfRange;
- (void)handleRangingResults:(id)results errorCode:(int64_t)code;
- (void)handleRangingStarted;
- (void)handleSessionAuthToken:(id)token;
- (void)handleSessionKeyExchangeRequest:(id)request;
- (void)handleTimerFired;
- (void)handleWiFiRequestInvalidated;
- (void)invalidate;
- (void)invalidateConfirmationTimer;
- (void)invalidateNoDisconnect;
- (void)invalidateTimerIfReady;
- (void)lockKeyBagIfNeeded;
- (void)logResults;
- (void)notifyDelegateWithError:(id)error;
- (void)removeObservers;
- (void)restartConfirmationTimer:(unint64_t)timer error:(id)error;
- (void)sendAuthPromptImageDataIfReady:(id)ready;
- (void)sendAuthPromptRequestWithImageHash:(id)hash appName:(id)name;
- (void)sendKeyExchangeResponseWithData:(id)data;
- (void)setAttemptPrewarmed:(BOOL)prewarmed;
- (void)setChosenDevice:(BOOL)device;
- (void)setDoNotPostUnlockConfirmation:(BOOL)confirmation;
- (void)startAWDL;
- (void)tearDownAWDLIfNecessary;
- (void)updateImageData:(id)data imageHash:(id)hash;
@end

@implementation SDAutoUnlockLockSession

- (SDAutoUnlockLockSession)initWithAutoUnlockDevice:(id)device sessionID:(id)d bleDevice:(id)bleDevice
{
  deviceCopy = device;
  dCopy = d;
  bleDeviceCopy = bleDevice;
  uniqueID = [deviceCopy uniqueID];
  v34.receiver = self;
  v34.super_class = SDAutoUnlockLockSession;
  v13 = [(SDAutoUnlockAuthSession *)&v34 initWithDevice:uniqueID sessionID:dCopy bleDevice:bleDeviceCopy];

  if (v13)
  {
    v14 = auto_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = dCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating lock session (session ID = %@)", buf, 0xCu);
    }

    v15 = +[SDAutoUnlockTransport sharedTransport];
    deviceID = [(SDAutoUnlockPairingSession *)v13 deviceID];
    v17 = [v15 idsDeviceForUniqueID:deviceID];

    modelIdentifier = [deviceCopy modelIdentifier];
    watchModelID = v13->_watchModelID;
    v13->_watchModelID = modelIdentifier;

    productBuildVersion = [deviceCopy productBuildVersion];
    watchBuildVersion = v13->_watchBuildVersion;
    v13->_watchBuildVersion = productBuildVersion;

    if (v17)
    {
      [v17 operatingSystemVersion];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v22 = sub_100111E28(buf);
    watchOSVersion = v13->_watchOSVersion;
    v13->_watchOSVersion = v22;

    v24 = +[SDAutoUnlockTransport sharedTransport];
    deviceID2 = [(SDAutoUnlockPairingSession *)v13 deviceID];
    v26 = [v24 modelIdentifierForDeviceID:deviceID2];
    v27 = v13->_watchModelID;
    v13->_watchModelID = v26;

    v28 = auto_unlock_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v13->_watchModelID;
      v30 = v13->_watchBuildVersion;
      v31 = v13->_watchOSVersion;
      *buf = 138412802;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      *&buf[22] = 2112;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Watch info (model ID: %@, build: %@, os version: %@)", buf, 0x20u);
    }

    [(SDAutoUnlockAuthSession *)v13 setProtocol:2];
    objc_storeStrong(&v13->_autoUnlockDevice, device);
    v13->_watchRSSI = [bleDeviceCopy rssi];
    v32 = +[SDStatusMonitor sharedMonitor];
    -[SDAutoUnlockLockSession setDeviceWasLocked:](v13, "setDeviceWasLocked:", [v32 deviceKeyBagUnlocked] ^ 1);

    [(SDAutoUnlockLockSession *)v13 addObservers];
  }

  return v13;
}

- (void)invalidate
{
  v9.receiver = self;
  v9.super_class = SDAutoUnlockLockSession;
  [(SDAutoUnlockAuthSession *)&v9 invalidate];
  [(SDAutoUnlockPairingSession *)self setDelegate:0];
  [(SDAutoUnlockLockSession *)self removeObservers];
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping BLE connection", buf, 2u);
  }

  v4 = +[SDNearbyAgent sharedNearbyAgent];
  bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
  [v4 stopUnlockBLEConnectionWithDevice:bleDevice];

  [(SDAutoUnlockLockSession *)self setWaitingForDisplayOrClamshell:0];
  v6 = +[SDStatusMonitor sharedMonitor];
  [v6 removePreventExitForLocaleReason:@"AutoUnlockConfirmationTimerPreventExitReason"];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002729F8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)invalidateNoDisconnect
{
  v2.receiver = self;
  v2.super_class = SDAutoUnlockLockSession;
  [(SDAutoUnlockAuthSession *)&v2 invalidate];
}

- (void)completeAttemptIfNecessary
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100272B30;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)tearDownAWDLIfNecessary
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100272CB8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)cancel
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100272E6C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)_cancel
{
  if (![(SDAutoUnlockLockSession *)self canceled])
  {
    [(SDAutoUnlockLockSession *)self setCanceled:1];
    unlockSucceeded = [(SDAutoUnlockLockSession *)self unlockSucceeded];
    v4 = auto_unlock_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (unlockSucceeded)
    {
      if (!v5)
      {
LABEL_11:

        return;
      }

      deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
      sessionID = [(SDAutoUnlockPairingSession *)self sessionID];
      uUIDString = [sessionID UUIDString];
      *buf = 138412546;
      v19 = deviceID;
      v20 = 2112;
      v21 = uUIDString;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lock session canceled after success (device ID: %@, session ID: %@)", buf, 0x16u);
    }

    else
    {
      if (v5)
      {
        deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
        sessionID2 = [(SDAutoUnlockPairingSession *)self sessionID];
        uUIDString2 = [sessionID2 UUIDString];
        *buf = 138412546;
        v19 = deviceID2;
        v20 = 2112;
        v21 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lock session canceled (device ID: %@, session ID: %@)", buf, 0x16u);
      }

      if ([(SDAutoUnlockLockSession *)self otherSessionCancel])
      {
        v12 = SFAutoUnlockErrorDomain;
        v16 = NSLocalizedDescriptionKey;
        v17 = @"Attempt Cancelled";
        v4 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        deviceID = [NSError errorWithDomain:v12 code:118 userInfo:v4];
        [(SDAutoUnlockLockSession *)self notifyDelegateWithError:deviceID];
      }

      else
      {
        [(SDAutoUnlockLockSession *)self lockKeyBagIfNeeded];
        v13 = SFAutoUnlockErrorDomain;
        v14 = NSLocalizedDescriptionKey;
        v15 = @"Attempt Cancelled";
        v4 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        deviceID = [NSError errorWithDomain:v13 code:118 userInfo:v4];
        [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:deviceID];
      }
    }

    goto LABEL_11;
  }
}

- (void)cancelWiFiRequest
{
  wifiRequest = [(SDAutoUnlockAuthSession *)self wifiRequest];

  v4 = auto_unlock_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (wifiRequest)
  {
    if (v5)
    {
      wifiRequest2 = [(SDAutoUnlockAuthSession *)self wifiRequest];
      *buf = 138412290;
      v9 = wifiRequest2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Canceling WiFi request: %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100273278;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not Canceling WiFi request: nil", buf, 2u);
    }
  }
}

- (void)lockKeyBagIfNeeded
{
  if (![(SDAutoUnlockLockSession *)self lockedKeyBag]&& ![(SDAutoUnlockLockSession *)self otherProviderCancel])
  {
    v4 = +[SDStatusMonitor sharedMonitor];
    if ([v4 deviceKeyBagUnlocked] && -[SDAutoUnlockLockSession deviceWasLocked](self, "deviceWasLocked"))
    {
      aksSuccess = [(SDAutoUnlockAuthSession *)self aksSuccess];

      if (aksSuccess)
      {
        [(SDAutoUnlockLockSession *)self setLockedKeyBag:1];

        sub_10005C2E8();
      }
    }

    else
    {
    }
  }
}

- (void)handleCanceledAfterSuccess
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100273444;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)_handleCanceledAfterSuccess
{
  if ([(SDAutoUnlockLockSession *)self unlockSucceeded])
  {
    [(SDAutoUnlockLockSession *)self setCanceled:1];
    [(SDAutoUnlockAuthSession *)self setErrorType:14];
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling cancel at end", buf, 2u);
    }

    [(SDAutoUnlockLockSession *)self lockKeyBagIfNeeded];
  }

  else
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not cancelled", v5, 2u);
    }
  }
}

- (void)handleDecryptionFailure:(int64_t)failure
{
  if (![(SDAutoUnlockLockSession *)self canceled]&& ![(SDAutoUnlockLockSession *)self unlockSucceeded])
  {
    switch(failure)
    {
      case 191:
        v5 = @"Watch Missing Encryption Key";
        break;
      case 198:
        v5 = @"Watch Missing IDS Device For BT UUID";
        break;
      case 195:
        v5 = @"Watch Not First Unlocked";
        break;
      default:
        v5 = @"Decryption failure";
        break;
    }

    v6 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v6 code:failure userInfo:v7];

    [(SDAutoUnlockLockSession *)self notifyDelegateWithError:v8];
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"deviceConnected:" name:SFBluetoothNotificationNameConnected object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"displayConfigChanged:" name:@"com.apple.sharingd.ExternalDisplaysChanged" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"clamshellStateChanged:" name:@"com.apple.sharingd.ClamshellStatusChanged" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)clamshellStateChanged:(id)changed
{
  if ([(SDAutoUnlockLockSession *)self waitingForDisplayOrClamshell])
  {
    [(SDAutoUnlockLockSession *)self setConfigChangeType:1];
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clamshell changed", v5, 2u);
    }

    [(SDAutoUnlockLockSession *)self consumeAuthTokenIfReady];
  }
}

- (void)displayConfigChanged:(id)changed
{
  if ([(SDAutoUnlockLockSession *)self waitingForDisplayOrClamshell])
  {
    [(SDAutoUnlockLockSession *)self setConfigChangeType:2];
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Display config changed", v5, 2u);
    }

    [(SDAutoUnlockLockSession *)self consumeAuthTokenIfReady];
  }
}

- (void)logResults
{
  attemptTimedOut = [(SDAutoUnlockLockSession *)self attemptTimedOut];
  v4 = auto_unlock_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (attemptTimedOut)
  {
    if (v5)
    {
      LOWORD(v84) = 0;
      v6 = "Attempt timed out for session";
      v7 = v4;
      v8 = 2;
LABEL_84:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v84, v8);
    }
  }

  else
  {
    if (v5)
    {
      usingProxy = [(SDAutoUnlockLockSession *)self usingProxy];
      *&v10 = COERCE_DOUBLE(@"YES");
      if (!usingProxy)
      {
        *&v10 = COERCE_DOUBLE(@"NO");
      }

      v84 = 138412290;
      v85 = *&v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Automation: Used Proxy Device %@", &v84, 0xCu);
    }

    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self watchModelID];
      v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v84 = 138412290;
      v85 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Automation: Key Device Model %@", &v84, 0xCu);
    }

    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self proxyDeviceModel];
      v14 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v84 = 138412290;
      v85 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Automation: Proxy Device Model %@", &v84, 0xCu);
    }

    v15 = auto_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self proxyDiscoveryTime];
      v84 = 134217984;
      v85 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Automation: Phone Bluetooth Discovery %0.2fs", &v84, 0xCu);
    }

    v17 = auto_unlock_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self proxyConnectionTime];
      v84 = 134217984;
      v85 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Automation: Phone Connection Time %0.2fs", &v84, 0xCu);
    }

    v19 = auto_unlock_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self discoveryTime];
      if (v20 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        [(SDAutoUnlockLockSession *)self discoveryTime];
        v22 = v21;
        [(SDAutoUnlockLockSession *)self proxyDiscoveryTime];
        v24 = v22 - v23;
        [(SDAutoUnlockLockSession *)self proxyConnectionTime];
        v26 = v24 - v25;
      }

      v84 = 134217984;
      v85 = v26;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Automation: Watch Bluetooth Discovery %0.2fs", &v84, 0xCu);
    }

    v27 = auto_unlock_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self connectionWaitTime];
      v84 = 134217984;
      v85 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Automation: Watch Connection Wait Time %0.2fs", &v84, 0xCu);
    }

    v29 = auto_unlock_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self connectionTime];
      v84 = 134217984;
      v85 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Automation: Watch Connection Time %0.2fs", &v84, 0xCu);
    }

    v31 = auto_unlock_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self awdlInfoExchange];
      v84 = 134217984;
      v85 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Automation: Bluetooth Info Exchange %0.2fs", &v84, 0xCu);
    }

    v33 = auto_unlock_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self keyRequestExchange];
      v84 = 134217984;
      v85 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Automation: Bluetooth Key Exchange %0.2fs", &v84, 0xCu);
    }

    v35 = auto_unlock_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self tokenExchange];
      v84 = 134217984;
      v85 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Automation: Bluetooth Token Exchange %0.2fs", &v84, 0xCu);
    }

    v37 = auto_unlock_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self confirmation];
      v84 = 134217984;
      v85 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Automation: Bluetooth Unlock Confirmation %0.2fs", &v84, 0xCu);
    }

    v39 = auto_unlock_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockAuthSession *)self awdlInterval];
      v84 = 134217984;
      v85 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Automation: AWDL Bring Up %0.2fs", &v84, 0xCu);
    }

    v41 = auto_unlock_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self peerFoundInterval];
      v84 = 134217984;
      v85 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Automation: Peer Found %0.2fs", &v84, 0xCu);
    }

    v43 = auto_unlock_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockAuthSession *)self rangingInterval];
      v84 = 134217984;
      v85 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Automation: Ranging Results %0.2fs", &v84, 0xCu);
    }

    v45 = auto_unlock_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      configChangeType = [(SDAutoUnlockLockSession *)self configChangeType];
      v47 = 0.0;
      if (configChangeType == 2)
      {
        [(SDAutoUnlockLockSession *)self displayClamshellWaitTime];
      }

      v84 = 134217984;
      v85 = v47;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Automation: Time Waiting For Display %0.2f", &v84, 0xCu);
    }

    v48 = auto_unlock_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      configChangeType2 = [(SDAutoUnlockLockSession *)self configChangeType];
      v50 = 0.0;
      if (configChangeType2 == 1)
      {
        [(SDAutoUnlockLockSession *)self displayClamshellWaitTime];
      }

      v84 = 134217984;
      v85 = v50;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Automation: Time Waiting For Clamshell %0.2f", &v84, 0xCu);
    }

    v51 = auto_unlock_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self awdlTotal];
      v84 = 134217984;
      v85 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Automation: Wi-Fi Total %0.2fs", &v84, 0xCu);
    }

    v53 = auto_unlock_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self btBootstrap];
      v84 = 134217984;
      v85 = v54;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Automation: Bluetooth Bootstrap Total %0.2fs", &v84, 0xCu);
    }

    v55 = auto_unlock_log();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self btBootstrap];
      v57 = v56;
      [(SDAutoUnlockLockSession *)self awdlTotal];
      v59 = v57 + v58;
      [(SDAutoUnlockLockSession *)self confirmation];
      v84 = 134217984;
      v85 = v59 + v60;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Automation: Bootstrap + Wi-Fi Total + Confirmation %0.2fs", &v84, 0xCu);
    }

    v61 = auto_unlock_log();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self btOverall];
      v84 = 134217984;
      v85 = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Automation: Bluetooth Overall Total %0.2fs", &v84, 0xCu);
    }

    if ([(SDAutoUnlockLockSession *)self attemptPrewarmed])
    {
      v63 = auto_unlock_log();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        [(SDAutoUnlockLockSession *)self prewarmIdleTime];
        v84 = 134217984;
        v85 = v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Automation: Idle time due to prewarming %0.2fs", &v84, 0xCu);
      }
    }

    v65 = auto_unlock_log();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self completeExchange];
      v84 = 134217984;
      v85 = v66;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Automation: Complete exchange %0.2fs", &v84, 0xCu);
    }

    v67 = auto_unlock_log();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      watchRSSI = [(SDAutoUnlockLockSession *)self watchRSSI];
      v84 = 67109120;
      LODWORD(v85) = watchRSSI;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Automation: Key Device RSSI %d", &v84, 8u);
    }

    v69 = auto_unlock_log();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      proxyRSSI = [(SDAutoUnlockLockSession *)self proxyRSSI];
      v84 = 67109120;
      LODWORD(v85) = proxyRSSI;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Automation: Proxy Device RSSI %d", &v84, 8u);
    }

    v71 = auto_unlock_log();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      shouldUnlock = [(SDAutoUnlockAuthSession *)self shouldUnlock];
      *&v73 = COERCE_DOUBLE(@"YES");
      if (!shouldUnlock)
      {
        *&v73 = COERCE_DOUBLE(@"NO");
      }

      v84 = 138412290;
      v85 = *&v73;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Automation: Within Range %@", &v84, 0xCu);
    }

    v74 = auto_unlock_log();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      connectedBluetoothDevices = [(SDAutoUnlockLockSession *)self connectedBluetoothDevices];
      v84 = 67109120;
      LODWORD(v85) = connectedBluetoothDevices;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Automation: Already Connected Bluetooth Devices %d", &v84, 8u);
    }

    v76 = auto_unlock_log();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *&v77 = COERCE_DOUBLE([(SDAutoUnlockLockSession *)self timeSinceLastMachineWake]);
      v84 = 134217984;
      v85 = *&v77;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Automation: Time Since Last Wake %ld seconds", &v84, 0xCu);
    }

    v78 = auto_unlock_log();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      [(SDAutoUnlockLockSession *)self lastSleepType];
      sub_1001123CC();
      v79 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v84 = 138412290;
      v85 = v79;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Automation: Last Sleep Type %@", &v84, 0xCu);
    }

    v80 = auto_unlock_log();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      canceled = [(SDAutoUnlockLockSession *)self canceled];
      *&v82 = COERCE_DOUBLE(@"YES");
      if (!canceled)
      {
        *&v82 = COERCE_DOUBLE(@"NO");
      }

      v84 = 138412290;
      v85 = *&v82;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Automation: Cancelled %@", &v84, 0xCu);
    }

    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *&v83 = COERCE_DOUBLE(@"NO");
      if ([(SDAutoUnlockLockSession *)self unlockSucceeded]&& ![(SDAutoUnlockLockSession *)self canceled])
      {
        *&v83 = COERCE_DOUBLE(@"YES");
      }

      v84 = 138412290;
      v85 = *&v83;
      v6 = "Automation: Successful Session %@";
      v7 = v4;
      v8 = 12;
      goto LABEL_84;
    }
  }
}

- (id)attemptResults
{
  v3 = objc_opt_new();
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  [v3 setObject:deviceID forKeyedSubscript:SDAutoUnlockManagerMetricDeviceIDKey];

  watchModelID = [(SDAutoUnlockLockSession *)self watchModelID];
  [v3 setObject:watchModelID forKeyedSubscript:SDAutoUnlockManagerMetricKeyDeviceModelKey];

  watchBuildVersion = [(SDAutoUnlockLockSession *)self watchBuildVersion];
  [v3 setObject:watchBuildVersion forKeyedSubscript:SDAutoUnlockManagerMetricWatchBuildVersionKey];

  watchOSVersion = [(SDAutoUnlockLockSession *)self watchOSVersion];
  [v3 setObject:watchOSVersion forKeyedSubscript:SDAutoUnlockManagerMetricWatchOSVersionKey];

  proxyDeviceModel = [(SDAutoUnlockLockSession *)self proxyDeviceModel];

  if (proxyDeviceModel)
  {
    proxyDeviceModel2 = [(SDAutoUnlockLockSession *)self proxyDeviceModel];
    [v3 setObject:proxyDeviceModel2 forKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceModelKey];
  }

  v10 = [NSNumber numberWithBool:[(SDAutoUnlockLockSession *)self usingProxy]];
  [v3 setObject:v10 forKeyedSubscript:SDAutoUnlockManagerMetricUsingProxyDeviceKey];

  [(SDAutoUnlockLockSession *)self discoveryTime];
  if (v11 == 0.0)
  {
    [v3 setObject:&off_10090C4E0 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothKeyDeviceDiscoveryKey];
  }

  else
  {
    [(SDAutoUnlockLockSession *)self discoveryTime];
    v13 = v12;
    [(SDAutoUnlockLockSession *)self proxyDiscoveryTime];
    v15 = v13 - v14;
    [(SDAutoUnlockLockSession *)self proxyConnectionTime];
    v17 = [NSNumber numberWithDouble:v15 - v16];
    [v3 setObject:v17 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothKeyDeviceDiscoveryKey];
  }

  [(SDAutoUnlockLockSession *)self proxyDiscoveryTime];
  v18 = [NSNumber numberWithDouble:?];
  [v3 setObject:v18 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothProxyDeviceDiscoveryKey];

  [(SDAutoUnlockLockSession *)self connectionTime];
  v19 = [NSNumber numberWithDouble:?];
  [v3 setObject:v19 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothKeyConnectionKey];

  [(SDAutoUnlockLockSession *)self proxyConnectionTime];
  v20 = [NSNumber numberWithDouble:?];
  [v3 setObject:v20 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothProxyConnectionKey];

  [(SDAutoUnlockLockSession *)self awdlInfoExchange];
  v21 = [NSNumber numberWithDouble:?];
  [v3 setObject:v21 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothAWDLExchangeKey];

  [(SDAutoUnlockLockSession *)self keyRequestExchange];
  v22 = [NSNumber numberWithDouble:?];
  [v3 setObject:v22 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothKeyRequestExchangeKey];

  [(SDAutoUnlockLockSession *)self tokenExchange];
  v23 = [NSNumber numberWithDouble:?];
  [v3 setObject:v23 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothTokenExchangeKey];

  [(SDAutoUnlockLockSession *)self confirmation];
  v24 = [NSNumber numberWithDouble:?];
  [v3 setObject:v24 forKeyedSubscript:SDAutoUnlockManagerMetricBluetoothConfirmationKey];

  if ([(SDAutoUnlockLockSession *)self unlockSucceeded])
  {
    v25 = [(SDAutoUnlockLockSession *)self canceled]^ 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = [NSNumber numberWithInt:v25];
  [v3 setObject:v26 forKeyedSubscript:SDAutoUnlockManagerMetricSuccessKey];

  [(SDAutoUnlockAuthSession *)self awdlInterval];
  v27 = [NSNumber numberWithDouble:?];
  [v3 setObject:v27 forKeyedSubscript:SDAutoUnlockManagerMetricAWDLBringUpKey];

  [(SDAutoUnlockLockSession *)self peerFoundInterval];
  v28 = [NSNumber numberWithDouble:?];
  [v3 setObject:v28 forKeyedSubscript:SDAutoUnlockManagerMetricAWDLPeerFoundKey];

  [(SDAutoUnlockAuthSession *)self rangingInterval];
  v29 = [NSNumber numberWithDouble:?];
  [v3 setObject:v29 forKeyedSubscript:SDAutoUnlockManagerMetricAWDLRangingKey];

  if ([(SDAutoUnlockLockSession *)self configChangeType]== 2)
  {
    v30 = &SDAutoUnlockManagerMetricDisplayWaitKey;
  }

  else
  {
    if ([(SDAutoUnlockLockSession *)self configChangeType]!= 1)
    {
      goto LABEL_14;
    }

    v30 = &SDAutoUnlockManagerMetricClamshellWaitKey;
  }

  [(SDAutoUnlockLockSession *)self displayClamshellWaitTime];
  v31 = [NSNumber numberWithDouble:?];
  [v3 setObject:v31 forKeyedSubscript:*v30];

LABEL_14:
  attemptError = [(SDAutoUnlockAuthSession *)self attemptError];

  if (attemptError)
  {
    attemptError2 = [(SDAutoUnlockAuthSession *)self attemptError];
    v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [attemptError2 code]);
    [v3 setObject:v34 forKeyedSubscript:SDAutoUnlockManagerMetricErrorCodeKey];

    attemptError3 = [(SDAutoUnlockAuthSession *)self attemptError];
    domain = [attemptError3 domain];
    [v3 setObject:domain forKeyedSubscript:SDAutoUnlockManagerMetricErrorDomainKey];

    attemptError4 = [(SDAutoUnlockAuthSession *)self attemptError];
    localizedDescription = [attemptError4 localizedDescription];
    [v3 setObject:localizedDescription forKeyedSubscript:SDAutoUnlockManagerMetricErrorStringKey];
  }

  v39 = [NSNumber numberWithInteger:[(SDAutoUnlockAuthSession *)self errorType]];
  [v3 setObject:v39 forKeyedSubscript:SDAutoUnlockManagerMetricErrorTypeKey];

  v40 = [NSNumber numberWithInt:[(SDAutoUnlockLockSession *)self watchRSSI]];
  [v3 setObject:v40 forKeyedSubscript:SDAutoUnlockManagerMetricKeyDeviceRSSIKey];

  if ([(SDAutoUnlockLockSession *)self proxyRSSI])
  {
    v41 = [NSNumber numberWithInt:[(SDAutoUnlockLockSession *)self proxyRSSI]];
    [v3 setObject:v41 forKeyedSubscript:SDAutoUnlockManagerMetricProxyDeviceRSSIKey];
  }

  distance = [(SDAutoUnlockAuthSession *)self distance];
  [v3 setObject:distance forKeyedSubscript:SDAutoUnlockManagerMetricDistanceKey];

  v43 = [NSNumber numberWithBool:[(SDAutoUnlockAuthSession *)self shouldUnlock]];
  [v3 setObject:v43 forKeyedSubscript:SDAutoUnlockManagerMetricWithinRangeKey];

  v44 = [NSNumber numberWithBool:[(SDAutoUnlockLockSession *)self attemptPrewarmed]];
  [v3 setObject:v44 forKeyedSubscript:SDAutoUnlockManagerMetricPrewarmKey];

  [(SDAutoUnlockLockSession *)self prewarmIdleTime];
  v45 = [NSNumber numberWithDouble:?];
  [v3 setObject:v45 forKeyedSubscript:SDAutoUnlockManagerMetricPrewarmTimeKey];

  [(SDAutoUnlockLockSession *)self attemptTime];
  v46 = [NSNumber numberWithDouble:?];
  [v3 setObject:v46 forKeyedSubscript:SDAutoUnlockManagerMetricAttemptTimeKey];

  [(SDAutoUnlockLockSession *)self completeExchange];
  v47 = [NSNumber numberWithDouble:?];
  [v3 setObject:v47 forKeyedSubscript:SDAutoUnlockManagerMetricTimeKey];

  wifiRangingResults = [(SDAutoUnlockAuthSession *)self wifiRangingResults];
  [v3 setObject:wifiRangingResults forKeyedSubscript:SDAutoUnlockManagerMetricWiFiResultsKey];

  v49 = [NSNumber numberWithUnsignedInteger:[(SDAutoUnlockLockSession *)self connectedBluetoothDevices]];
  [v3 setObject:v49 forKeyedSubscript:SDAutoUnlockManagerMetricConnectedBluetoothDevicesKey];

  v50 = [NSNumber numberWithInteger:[(SDAutoUnlockLockSession *)self timeSinceLastMachineWake]];
  [v3 setObject:v50 forKeyedSubscript:SDAutoUnlockManagerMetricTimeSinceLastWakeKey];

  v51 = [NSNumber numberWithInteger:[(SDAutoUnlockLockSession *)self lastSleepType]];
  [v3 setObject:v51 forKeyedSubscript:SDAutoUnlockManagerMetricLastSleepTypeKey];

  return v3;
}

- (id)hintToken
{
  if (-[SDAutoUnlockAuthSession attemptType](self, "attemptType") == 2 && (-[SDAutoUnlockPairingSession aksSession](self, "aksSession"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 sessionIsValid], v3, v4))
  {
    aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
    generateACMContextData = [aksSession generateACMContextData];
  }

  else
  {
    generateACMContextData = 0;
  }

  return generateACMContextData;
}

- (BOOL)usingProxy
{
  autoUnlockDevice = [(SDAutoUnlockLockSession *)self autoUnlockDevice];
  if ([autoUnlockDevice supportsAlwaysDirect])
  {
    v4 = 0;
  }

  else
  {
    proxyDeviceModel = [(SDAutoUnlockLockSession *)self proxyDeviceModel];
    v4 = proxyDeviceModel != 0;
  }

  return v4;
}

- (void)updateImageData:(id)data imageHash:(id)hash
{
  dataCopy = data;
  hashCopy = hash;
  if ([(SDAutoUnlockAuthSession *)self attemptType]== 2)
  {
    v8 = SFMainQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100274F58;
    block[3] = &unk_1008CE900;
    block[4] = self;
    v11 = dataCopy;
    v12 = hashCopy;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10027B9B0();
    }
  }
}

- (void)setChosenDevice:(BOOL)device
{
  v5 = SFMainQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100275244;
  v6[3] = &unk_1008CF798;
  v6[4] = self;
  deviceCopy = device;
  dispatch_async(v5, v6);
}

- (void)setAttemptPrewarmed:(BOOL)prewarmed
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100275400;
  v6[3] = &unk_1008CF798;
  v6[4] = self;
  prewarmedCopy = prewarmed;
  dispatch_async(sessionQueue, v6);
}

- (void)setDoNotPostUnlockConfirmation:(BOOL)confirmation
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002754B4;
  v6[3] = &unk_1008CF798;
  v6[4] = self;
  confirmationCopy = confirmation;
  dispatch_async(sessionQueue, v6);
}

- (void)connectionActivated
{
  kdebug_trace();
  if ([(SDAutoUnlockAuthSession *)self useAKSToken])
  {
    v3 = +[SDAutoUnlockAKSManager sharedManager];
    deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
    -[SDAutoUnlockAuthSession setUseAKSToken:](self, "setUseAKSToken:", [v3 canCreateTokenSessionForDeviceID:deviceID]);

    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to create token session, using escrow", v9, 2u);
    }
  }

  v6 = +[NSDate date];
  [(SDAutoUnlockLockSession *)self setFirstSend:v6];

  if (-[SDAutoUnlockAuthSession attemptType](self, "attemptType") == 1 || (-[SDAutoUnlockLockSession autoUnlockDevice](self, "autoUnlockDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 supportsApproveIcon], v7, (v8 & 1) == 0))
  {
    [(SDAutoUnlockAuthSession *)self sendAWDLInfo];
    [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(35)];
  }
}

- (BOOL)handleFoundBLEDevice:(id)device
{
  deviceCopy = device;
  v5 = sub_1001116AC(deviceCopy);
  LOBYTE(self) = [(SDAutoUnlockLockSession *)self handleFoundBLEDevice:deviceCopy available:v5 lockedOnWrist:sub_10011170C(deviceCopy)];

  return self;
}

- (BOOL)handleFoundBLEDevice:(id)device available:(BOOL)available lockedOnWrist:(BOOL)wrist
{
  wristCopy = wrist;
  availableCopy = available;
  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (availableCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (wristCopy)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    autoUnlockDevice = [(SDAutoUnlockLockSession *)self autoUnlockDevice];
    *buf = 138412802;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = autoUnlockDevice;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found Device {\n\tavailable: %@,\n\tlocked on wrist: %@\n\tdevice:%@\n}", buf, 0x20u);
  }

  discoveryDate = [(SDAutoUnlockLockSession *)self discoveryDate];

  if (!discoveryDate)
  {
    v14 = +[NSDate date];
    [(SDAutoUnlockLockSession *)self setDiscoveryDate:v14];

    aksPeerAvailable = [(SDAutoUnlockLockSession *)self aksPeerAvailable];
    if (aksPeerAvailable)
    {
      [(SDAutoUnlockLockSession *)self notifyDelegateWithError:aksPeerAvailable];
    }

    else
    {
      if (availableCopy)
      {
        v13 = 1;
        [(SDAutoUnlockLockSession *)self setFoundPeer:1];
        delegate = [(SDAutoUnlockPairingSession *)self delegate];
        [delegate sessionDidStartConnection:self];

LABEL_20:
        return v13;
      }

      if (wristCopy)
      {
        v17 = SFLocalizedStringForKey();
        v18 = 135;
      }

      else
      {
        v17 = @"Watch Not On Wrist";
        v18 = 158;
      }

      v19 = SFAutoUnlockErrorDomain;
      v23 = NSLocalizedDescriptionKey;
      v24 = v17;
      v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v21 = [NSError errorWithDomain:v19 code:v18 userInfo:v20];
      [(SDAutoUnlockLockSession *)self notifyDelegateWithError:v21];
    }

    v13 = 0;
    goto LABEL_20;
  }

  return 1;
}

- (void)deviceConnected:(id)connected
{
  userInfo = [connected userInfo];
  v5 = [userInfo objectForKeyedSubscript:SFBluetoothNotificationKeyPeerDevice];
  identifier = [v5 identifier];
  bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
  identifier2 = [bleDevice identifier];
  v9 = [identifier isEqual:identifier2];

  if (v9)
  {
    v10 = +[NSDate date];
    [(SDAutoUnlockLockSession *)self setConnectionDate:v10];

    v11 = [userInfo objectForKeyedSubscript:SFBluetoothNotificationKeyConnectStart];
    [v11 doubleValue];
    v13 = v12;

    v14 = [NSDate dateWithTimeIntervalSinceReferenceDate:v13];
    discoveryDate = [(SDAutoUnlockLockSession *)self discoveryDate];
    [discoveryDate timeIntervalSinceDate:v14];
    [(SDAutoUnlockLockSession *)self setDiscoveryTime:?];

    discoveryDate2 = [(SDAutoUnlockLockSession *)self discoveryDate];

    if (discoveryDate2)
    {
      discoveryDate3 = [(SDAutoUnlockLockSession *)self discoveryDate];
      [discoveryDate3 timeIntervalSinceDate:v14];
      [(SDAutoUnlockLockSession *)self setDiscoveryTime:?];

      v18 = [userInfo objectForKeyedSubscript:SFBluetoothNotificationKeyConnectTime];
      [v18 doubleValue];
      v20 = v19;
      [(SDAutoUnlockLockSession *)self discoveryTime];
      v22 = v20 - v21;
    }

    else
    {
      v18 = [userInfo objectForKeyedSubscript:SFBluetoothNotificationKeyConnectTime];
      [v18 doubleValue];
    }

    [(SDAutoUnlockLockSession *)self setConnectionTime:v22];

    attemptStartDate = [(SDAutoUnlockLockSession *)self attemptStartDate];
    [v14 timeIntervalSinceDate:attemptStartDate];
    [(SDAutoUnlockLockSession *)self setConnectionWaitTime:?];

    [(SDAutoUnlockAuthSession *)self setErrorType:9];
    [(SDAutoUnlockLockSession *)self setConnected:1];
    v24 = auto_unlock_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device connected %@", &v25, 0xCu);
    }
  }
}

- (id)aksPeerAvailable
{
  v3 = +[SDAutoUnlockAKSManager sharedManager];
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  v5 = [v3 remoteLTKForDeviceID:deviceID];

  v6 = sub_100021BD4(v5);
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = auto_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10005CDC0(v8);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Peer not available %@", buf, 0xCu);
    }

    v11 = sub_10010F87C();
    v12 = SFAutoUnlockErrorDomain;
    v15 = NSLocalizedDescriptionKey;
    v16 = v11;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v7 = [NSError errorWithDomain:v12 code:128 userInfo:v13];
  }

  return v7;
}

- (void)invalidateTimerIfReady
{
  if ([(SDAutoUnlockLockSession *)self receivedAWDLInfo]&& [(SDAutoUnlockLockSession *)self receivedExchangeRequest])
  {

    [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
  }
}

- (void)handleTimerFired
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timer fired", buf, 2u);
  }

  if ([(SDAutoUnlockLockSession *)self onlyRanging])
  {
    v4 = SFAutoUnlockErrorDomain;
    startAWDLError = [(SDAutoUnlockAuthSession *)self startAWDLError];

    if (startAWDLError)
    {
      startAWDLError2 = [(SDAutoUnlockAuthSession *)self startAWDLError];
      code = [startAWDLError2 code];

      startAWDLError3 = [(SDAutoUnlockAuthSession *)self startAWDLError];
      domain = [startAWDLError3 domain];

      v10 = @"Failed to Start AWDL";
      v4 = domain;
    }

    else
    {
      rangingStart = [(SDAutoUnlockAuthSession *)self rangingStart];

      if (rangingStart)
      {
        v10 = @"Ranging Timeout: Results Not Returned";
        code = 137;
      }

      else
      {
        [(SDAutoUnlockAuthSession *)self setErrorType:6];
        v10 = @"Ranging Timeout: Couldn’t Find Peer";
        code = 138;
      }
    }

    v28 = NSLocalizedDescriptionKey;
    v29 = v10;
    v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21 = [NSError errorWithDomain:v4 code:code userInfo:v20];

    [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v21];
  }

  else
  {
    if ([(SDAutoUnlockLockSession *)self waitingForDisplayOrClamshell])
    {
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timeout while waiting for a display or clamshell", buf, 2u);
      }

      v12 = SFAutoUnlockErrorDomain;
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Mac Clamshelled Without Display";
      v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v14 = [NSError errorWithDomain:v12 code:145 userInfo:v13];

      [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v14];
      [(SDAutoUnlockLockSession *)self setWaitingForDisplayOrClamshell:0];
      v15 = objc_opt_new();
      displayOrClamshellWaitingDate = [(SDAutoUnlockLockSession *)self displayOrClamshellWaitingDate];
      [v15 timeIntervalSinceDate:displayOrClamshellWaitingDate];
      [(SDAutoUnlockLockSession *)self setDisplayClamshellWaitTime:?];
    }

    else
    {
      if ([(SDAutoUnlockLockSession *)self foundPeer])
      {
        [(SDAutoUnlockAuthSession *)self setErrorType:3];
        v22.receiver = self;
        v22.super_class = SDAutoUnlockLockSession;
        [(SDAutoUnlockPairingSession *)&v22 handleTimerFired];
        return;
      }

      v18 = SFAutoUnlockErrorDomain;
      v24 = NSLocalizedDescriptionKey;
      v25 = @"Apple Watch Not Found";
      v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v14 = [NSError errorWithDomain:v18 code:131 userInfo:v19];

      [(SDAutoUnlockLockSession *)self notifyDelegateWithError:v14];
    }
  }
}

- (void)restartConfirmationTimer:(unint64_t)timer error:(id)error
{
  errorCopy = error;
  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restarting confirmation timer", buf, 2u);
  }

  confirmationTimer = [(SDAutoUnlockLockSession *)self confirmationTimer];

  if (!confirmationTimer)
  {
    objc_initWeak(buf, self);
    v9 = &_dispatch_main_q;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1002762F4;
    v16 = &unk_1008CDC30;
    objc_copyWeak(&v18, buf);
    v17 = errorCopy;
    v10 = sub_1001F0548(0, &_dispatch_main_q, &v13);
    [(SDAutoUnlockLockSession *)self setConfirmationTimer:v10, v13, v14, v15, v16];

    confirmationTimer2 = [(SDAutoUnlockLockSession *)self confirmationTimer];
    dispatch_resume(confirmationTimer2);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  confirmationTimer3 = [(SDAutoUnlockLockSession *)self confirmationTimer];
  sub_1001F05F0(confirmationTimer3, timer);
}

- (void)invalidateConfirmationTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating confirmation timer", v6, 2u);
  }

  confirmationTimer = [(SDAutoUnlockLockSession *)self confirmationTimer];

  if (confirmationTimer)
  {
    confirmationTimer2 = [(SDAutoUnlockLockSession *)self confirmationTimer];
    dispatch_source_cancel(confirmationTimer2);

    [(SDAutoUnlockLockSession *)self setConfirmationTimer:0];
  }
}

- (void)handleRangingResults:(id)results errorCode:(int64_t)code
{
  resultsCopy = results;
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002764DC;
  block[3] = &unk_1008CF8F0;
  block[4] = self;
  v10 = resultsCopy;
  codeCopy = code;
  v8 = resultsCopy;
  dispatch_async(sessionQueue, block);
}

- (BOOL)peerInRange:(id)range
{
  rangeCopy = range;
  if (!rangeCopy)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    if ([v5 BOOLForKey:@"phoneAutoUnlockSkipRanging"])
    {
      distanceMeters = auto_unlock_log();
      if (os_log_type_enabled(distanceMeters, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, distanceMeters, OS_LOG_TYPE_DEFAULT, "Skipping ranging due to default phoneAutoUnlockSkipRanging", v10, 2u);
      }

      LOBYTE(distanceMeters) = 1;
      selfCopy2 = self;
      shouldUnlock = 1;
      goto LABEL_9;
    }
  }

  v5 = [rangeCopy objectAtIndexedSubscript:0];
  distanceMeters = [v5 distanceMeters];
  [(SDAutoUnlockAuthSession *)self setDistance:distanceMeters];

  LODWORD(distanceMeters) = [v5 shouldUnlock];
  if (distanceMeters)
  {
    shouldUnlock = [v5 shouldUnlock];
    selfCopy2 = self;
LABEL_9:
    [(SDAutoUnlockAuthSession *)selfCopy2 setShouldUnlock:shouldUnlock];
  }

  return distanceMeters;
}

- (void)handlePeerInRange
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  dispatch_assert_queue_V2(sessionQueue);

  if (![(SDAutoUnlockLockSession *)self canceled])
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_100118278(0);
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handlePeerInRange %@", buf, 0xCu);
    }

    v6 = objc_opt_new();
    awdlStart = [(SDAutoUnlockAuthSession *)self awdlStart];
    [v6 timeIntervalSinceDate:awdlStart];
    [(SDAutoUnlockLockSession *)self setAwdlTotal:?];

    [(SDAutoUnlockLockSession *)self setOnlyRanging:0];
    if ([(SDAutoUnlockAuthSession *)self isAuthenticatingForSiri])
    {
      v8 = SFAutoUnlockErrorDomain;
      v12 = NSLocalizedDescriptionKey;
      v13 = @"Siri SPI Succeeded";
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = [NSError errorWithDomain:v8 code:218 userInfo:v9];

      [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v10];
      [(SDAutoUnlockLockSession *)self notifyDelegateWithError:v10];
LABEL_6:

      return;
    }

    if ([(SDAutoUnlockLockSession *)self attemptPrewarmed]&& [(SDAutoUnlockLockSession *)self shouldWaitToCompleteUnlock])
    {
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempt was prewarmed and not told to complete, waiting for trigger to complete unlock.", buf, 2u);
      }

      [(SDAutoUnlockLockSession *)self setWaitingToCompleteUnlock:1];
      v10 = +[NSDate date];
      [(SDAutoUnlockLockSession *)self setPrewarmIdleStartDate:v10];
      goto LABEL_6;
    }

    [(SDAutoUnlockLockSession *)self consumeAuthTokenIfReady];
  }
}

- (void)handlePeerOutOfRange
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  dispatch_assert_queue_V2(sessionQueue);

  [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
  if (![(SDAutoUnlockLockSession *)self canceled])
  {
    v4 = SFAutoUnlockErrorDomain;
    if ([(SDAutoUnlockAuthSession *)self rangingTimedOut])
    {
      rangingErrorString = [(SDAutoUnlockAuthSession *)self rangingErrorString];
      if ([(SDAutoUnlockAuthSession *)self wifiRangingErrorCode])
      {
        wifiRangingErrorCode = [(SDAutoUnlockAuthSession *)self wifiRangingErrorCode];
        wifiErrorDomain = [(SDAutoUnlockAuthSession *)self wifiErrorDomain];

        v4 = wifiErrorDomain;
      }

      else
      {
        wifiRangingErrorCode = 139;
      }
    }

    else
    {
      [(SDAutoUnlockAuthSession *)self setErrorType:8];
      rangingErrorString = SFLocalizedStringForKey();
      wifiRangingErrorCode = 130;
    }

    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10027BA28();
    }

    v11 = NSLocalizedDescriptionKey;
    v12 = rangingErrorString;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:v4 code:wifiRangingErrorCode userInfo:v9];

    [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v10];
  }
}

- (void)handleAWDLUp
{
  awdlStart = [(SDAutoUnlockAuthSession *)self awdlStart];
  if (awdlStart && (v11 = awdlStart, v4 = [(SDAutoUnlockLockSession *)self awdlUp], awdlStart = v11, (v4 & 1) == 0))
  {
    [(SDAutoUnlockLockSession *)self peerFoundInterval];
    v6 = v5;

    if (v6 == 0.0)
    {
      [(SDAutoUnlockLockSession *)self setAwdlUp:1];
      v7 = +[NSDate date];
      awdlStart2 = [(SDAutoUnlockAuthSession *)self awdlStart];
      [v7 timeIntervalSinceDate:awdlStart2];
      [(SDAutoUnlockAuthSession *)self setAwdlInterval:?];

      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        [(SDAutoUnlockAuthSession *)self awdlInterval];
        *buf = 134217984;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AWDL up (%.2f)", buf, 0xCu);
      }
    }
  }

  else
  {
  }
}

- (void)handlePeerFound:(BOOL)found
{
  if (found)
  {

    [(SDAutoUnlockLockSession *)self setPeerFoundInterval:0.0];
  }

  else
  {
    v8 = objc_opt_new();
    awdlStart = [(SDAutoUnlockAuthSession *)self awdlStart];
    [v8 timeIntervalSinceDate:awdlStart];
    v6 = v5;
    [(SDAutoUnlockAuthSession *)self awdlInterval];
    [(SDAutoUnlockLockSession *)self setPeerFoundInterval:v6 - v7];
  }
}

- (void)handleRangingStarted
{
  v3 = +[NSDate date];
  [(SDAutoUnlockAuthSession *)self setRangingStart:v3];

  kdebug_trace();
  [(SDAutoUnlockAuthSession *)self setErrorType:12];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 integerForKey:@"phoneAutoUnlockAWDLRangingTimeout"];
  if (v5)
  {
    v6 = v5;
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10027BA98();
    }

    v8 = v6;
  }

  else
  {
    v8 = 10.0;
  }

  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(v8)];
}

- (void)handleWiFiRequestInvalidated
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WiFi request invalidated", v3, 2u);
  }
}

- (void)notifyDelegateWithError:(id)error
{
  errorCopy = error;
  attemptError = [(SDAutoUnlockAuthSession *)self attemptError];

  if (!attemptError)
  {
    [(SDAutoUnlockAuthSession *)self setAttemptError:errorCopy];
  }

  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Auth lock session notifying delegate with error: %@", &v12, 0xCu);
  }

  if (errorCopy)
  {
    if ([(SDAutoUnlockLockSession *)self otherSessionCancel])
    {
      goto LABEL_12;
    }

    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [errorCopy localizedDescription];
      v12 = 138412290;
      v13 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Automation: Session Dismissed: %@", &v12, 0xCu);
    }
  }

  else
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Automation: Success", &v12, 2u);
    }
  }

LABEL_12:
  delegate = [(SDAutoUnlockPairingSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(SDAutoUnlockPairingSession *)self delegate];
    [delegate2 session:self didCompleteWithError:errorCopy];
  }
}

- (void)handleMessageWithWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  messageType = [wrapperCopy messageType];
  if (messageType <= 10)
  {
    if (messageType == 7)
    {
      kdebug_trace();
      v16 = +[NSDate date];
      awdlStart = [(SDAutoUnlockAuthSession *)self awdlStart];
      [v16 timeIntervalSinceDate:awdlStart];
      [(SDAutoUnlockLockSession *)self setKeyRequestExchange:?];

      v18 = auto_unlock_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSessionKeyExchangeRequest", v20, 2u);
      }

      payload = [wrapperCopy payload];
      [(SDAutoUnlockLockSession *)self handleSessionKeyExchangeRequest:payload];
      goto LABEL_22;
    }

    if (messageType == 9)
    {
      v10 = +[NSDate date];
      exchageResponseDate = [(SDAutoUnlockLockSession *)self exchageResponseDate];
      [v10 timeIntervalSinceDate:exchageResponseDate];
      [(SDAutoUnlockLockSession *)self setTokenExchange:?];

      v12 = +[NSDate date];
      attemptStartDate = [(SDAutoUnlockLockSession *)self attemptStartDate];
      [v12 timeIntervalSinceDate:attemptStartDate];
      [(SDAutoUnlockLockSession *)self setBtBootstrap:?];

      kdebug_trace();
      v14 = auto_unlock_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSessionAuthToken", v19, 2u);
      }

      [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
      payload = [wrapperCopy payload];
      [(SDAutoUnlockLockSession *)self handleSessionAuthToken:payload];
      goto LABEL_22;
    }
  }

  else
  {
    switch(messageType)
    {
      case 11:
        [(SDAutoUnlockLockSession *)self invalidateConfirmationTimer];
        [(SDAutoUnlockLockSession *)self handleConfirmationACK];
        break;
      case 13:
        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockAuthPromptResponse", buf, 2u);
        }

        payload = [wrapperCopy payload];
        [(SDAutoUnlockLockSession *)self handleAuthPromptResponse:payload];
        goto LABEL_22;
      case 301:
        kdebug_trace();
        v6 = +[NSDate date];
        connectionDate = [(SDAutoUnlockLockSession *)self connectionDate];
        firstSend = connectionDate;
        if (!connectionDate)
        {
          firstSend = [(SDAutoUnlockLockSession *)self firstSend];
        }

        [v6 timeIntervalSinceDate:firstSend];
        [(SDAutoUnlockLockSession *)self setAwdlInfoExchange:?];
        if (!connectionDate)
        {
        }

        payload = [wrapperCopy payload];
        [(SDAutoUnlockLockSession *)self handleAWDLInfo:payload];
LABEL_22:

        break;
    }
  }
}

- (void)handleAWDLInfo:(id)info
{
  infoCopy = info;
  if (![(SDAutoUnlockLockSession *)self receivedAWDLInfo])
  {
    [(SDAutoUnlockLockSession *)self setReceivedAWDLInfo:1];
    if (![(SDAutoUnlockLockSession *)self sentExchangeResponse])
    {
      [(SDAutoUnlockLockSession *)self invalidateTimerIfReady];
    }

    v5 = [[SDAutoUnlockAWDLInfo alloc] initWithData:infoCopy];
    awdlInfo = [(SDAutoUnlockAWDLInfo *)v5 awdlInfo];
    v7 = sub_1001114F4(awdlInfo);

    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received AWDL Info %@", buf, 0xCu);
    }

    if (!v7)
    {
      v19 = auto_unlock_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10027BB7C();
      }

      goto LABEL_36;
    }

    [(SDAutoUnlockAuthSession *)self setRemoteAWDLInfo:v7];
    if (sub_10000C1F8(@"AURestrictOldWatch", 1) && [(SDAutoUnlockAWDLInfo *)v5 version]< 3uLL)
    {
      [(SDAutoUnlockLockSession *)self setOldWatch:1];
      v9 = [NSString stringWithFormat:@"Watch using old protocol (version: %d)", [(SDAutoUnlockAWDLInfo *)v5 version]];
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10027BB0C();
      }

      v11 = SFAutoUnlockErrorDomain;
      v26 = NSLocalizedDescriptionKey;
      v27 = v9;
      v12 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v13 = v11;
      v14 = 126;
    }

    else
    {
      if ([(SDAutoUnlockAWDLInfo *)v5 hasSupportsConfirmationACK]&& [(SDAutoUnlockAWDLInfo *)v5 supportsConfirmationACK])
      {
        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session supports confirmation ACK", buf, 2u);
        }

        [(SDAutoUnlockLockSession *)self setSupportsConfirmationACK:[(SDAutoUnlockAWDLInfo *)v5 supportsConfirmationACK]];
      }

      if ([(SDAutoUnlockAWDLInfo *)v5 hasKeyData]|| [(SDAutoUnlockAWDLInfo *)v5 hasErrorCode])
      {
        v9 = objc_alloc_init(SDUnlockSessionKeyExchangeRequest);
        [(SDUnlockSessionKeyExchangeRequest *)v9 setVersion:[(SDAutoUnlockAWDLInfo *)v5 version]];
        keyData = [(SDAutoUnlockAWDLInfo *)v5 keyData];
        [(SDUnlockSessionKeyExchangeRequest *)v9 setKey:keyData];

        [(SDUnlockSessionKeyExchangeRequest *)v9 setUsingRecord:[(SDAutoUnlockAWDLInfo *)v5 useToken]^ 1];
        if ([(SDAutoUnlockAWDLInfo *)v5 hasErrorCode])
        {
          [(SDUnlockSessionKeyExchangeRequest *)v9 setErrorCode:[(SDAutoUnlockAWDLInfo *)v5 errorCode]];
        }

        data = [(SDUnlockSessionKeyExchangeRequest *)v9 data];
        [(SDAutoUnlockLockSession *)self handleSessionKeyExchangeRequest:data];

        v18 = auto_unlock_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Using new protocol", buf, 2u);
        }

        goto LABEL_35;
      }

      if ([(SDAutoUnlockAWDLInfo *)v5 version]== 1)
      {
        v20 = auto_unlock_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using legacy protocol", buf, 2u);
        }

        [(SDAutoUnlockAuthSession *)self setProtocol:0];
        goto LABEL_36;
      }

      v9 = [NSString stringWithFormat:@"Received AWDL Info message missing information (info: %@)", v5];
      v21 = auto_unlock_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10027BB0C();
      }

      v22 = SFAutoUnlockErrorDomain;
      v24 = NSLocalizedDescriptionKey;
      v25 = v9;
      v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v13 = v22;
      v14 = 103;
    }

    v23 = [NSError errorWithDomain:v13 code:v14 userInfo:v12];
    [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v23];

LABEL_35:
LABEL_36:
  }
}

- (void)handleAuthPromptResponse:(id)response
{
  responseCopy = response;
  if ([(SDAutoUnlockLockSession *)self receivedAuthPromptResponse])
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10027BBB8();
    }
  }

  else
  {
    [(SDAutoUnlockLockSession *)self setReceivedAuthPromptResponse:1];
    v5 = [[SDAutoUnlockAuthPromptResponse alloc] initWithData:responseCopy];
    if (([v5 hasKeyData]& 1) != 0 || [v5 hasErrorCode])
    {
      v6 = objc_alloc_init(SDUnlockSessionKeyExchangeRequest);
      [(SDUnlockSessionKeyExchangeRequest *)v6 setVersion:[v5 version]];
      keyData = [v5 keyData];
      [(SDUnlockSessionKeyExchangeRequest *)v6 setKey:keyData];

      [(SDUnlockSessionKeyExchangeRequest *)v6 setUsingRecord:1];
      [(SDAutoUnlockLockSession *)self setNeedsNewImage:[v5 needsImageData]];
      if ([v5 hasErrorCode])
      {
        [(SDUnlockSessionKeyExchangeRequest *)v6 setErrorCode:[v5 errorCode]];
      }

      imageData = [(SDAutoUnlockLockSession *)self imageData];
      [(SDAutoUnlockLockSession *)self sendAuthPromptImageDataIfReady:imageData];

      data = [(SDUnlockSessionKeyExchangeRequest *)v6 data];
      [(SDAutoUnlockLockSession *)self handleSessionKeyExchangeRequest:data];
    }

    else
    {
      v6 = [NSString stringWithFormat:@"Received auth prompt response missing information: %@"], v5);
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10027BB0C();
      }

      v11 = SFAutoUnlockErrorDomain;
      v14 = NSLocalizedDescriptionKey;
      v15 = v6;
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v13 = [NSError errorWithDomain:v11 code:103 userInfo:v12];
      [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v13];
    }
  }
}

- (void)handleSessionKeyExchangeRequest:(id)request
{
  requestCopy = request;
  [(SDAutoUnlockLockSession *)self setReceivedExchangeRequest:1];
  [(SDAutoUnlockLockSession *)self invalidateTimerIfReady];
  if (![(SDAutoUnlockLockSession *)self canceled])
  {
    v5 = [[SDUnlockSessionKeyExchangeRequest alloc] initWithData:requestCopy];
    if (![(SDUnlockSessionKeyExchangeRequest *)v5 hasErrorCode]&& [(SDUnlockSessionKeyExchangeRequest *)v5 hasKey]&& [(SDUnlockSessionKeyExchangeRequest *)v5 hasUsingRecord])
    {
      bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
      v7 = [(SDAutoUnlockLockSession *)self handleFoundBLEDevice:bleDevice available:1 lockedOnWrist:0];

      if ((v7 & 1) == 0)
      {
        bleDevice2 = auto_unlock_log();
        if (os_log_type_enabled(bleDevice2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, bleDevice2, OS_LOG_TYPE_DEFAULT, "Found device is not available", buf, 2u);
        }

        goto LABEL_26;
      }

      aksSession = [(SDAutoUnlockPairingSession *)self aksSession];

      if (aksSession)
      {
        v9 = auto_unlock_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received fallback AKS session", buf, 2u);
        }

        aksSession2 = [(SDAutoUnlockPairingSession *)self aksSession];
        [aksSession2 resetSession];

        [(SDAutoUnlockPairingSession *)self setAksSession:0];
      }

      if ([(SDAutoUnlockAuthSession *)self attemptType]== 1)
      {
        protocol = [(SDAutoUnlockAuthSession *)self protocol];
        v12 = protocol == 2;
        v13 = protocol != 2;
        usingRecord = [(SDUnlockSessionKeyExchangeRequest *)v5 usingRecord];
        v15 = +[SDAutoUnlockAKSManager sharedManager];
        deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
        v17 = [v15 aksAuthSessionForDeviceID:deviceID originator:0 usingEscrow:v13 & usingRecord attestation:v12 sessionType:2];
        [(SDAutoUnlockPairingSession *)self setAksSession:v17];
      }

      else if ([(SDAutoUnlockAuthSession *)self attemptType]== 2)
      {
        v15 = +[SDAutoUnlockAKSManager sharedManager];
        deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
        v27 = +[SDAutoUnlockSessionManager sharedManager];
        attemptExternalACMContext = [v27 attemptExternalACMContext];
        v29 = [v15 aksAuthorizationSessionForDeviceID:deviceID2 attestation:0 originator:0 externalACMContext:attemptExternalACMContext sessionType:3];
        [(SDAutoUnlockPairingSession *)self setAksSession:v29];
      }

      else
      {
        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10027BBF4(self, v15);
        }
      }

      aksSession3 = [(SDAutoUnlockPairingSession *)self aksSession];
      sessionIsValid = [aksSession3 sessionIsValid];

      if (sessionIsValid)
      {
        aksSession4 = [(SDAutoUnlockPairingSession *)self aksSession];
        v33 = [(SDUnlockSessionKeyExchangeRequest *)v5 key];
        v36 = 0;
        v34 = [aksSession4 stepSessionWithData:v33 outputData:&v36];
        v35 = v36;

        if (v34)
        {
          [(SDAutoUnlockLockSession *)self sendKeyExchangeResponseWithData:v35];
          v19 = 0;
          bleDevice2 = 0;
        }

        else
        {
          bleDevice2 = @"Exchange request step failed";
          v19 = 101;
        }

LABEL_22:
        if (!bleDevice2)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      bleDevice2 = @"Lock session invalid";
      v19 = 101;
LABEL_23:
      v21 = auto_unlock_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10027BCBC();
      }

      v22 = SFAutoUnlockErrorDomain;
      v38 = NSLocalizedDescriptionKey;
      v39 = bleDevice2;
      v23 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v24 = [NSError errorWithDomain:v22 code:v19 userInfo:v23];
      [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v24];

LABEL_26:
      goto LABEL_27;
    }

    if (![(SDUnlockSessionKeyExchangeRequest *)v5 hasErrorCode])
    {
      bleDevice2 = [NSString stringWithFormat:@"Key exhange request is missing information (request: %@)", v5];
      v19 = 103;
      goto LABEL_22;
    }

    errorCode = [(SDUnlockSessionKeyExchangeRequest *)v5 errorCode];
    v19 = errorCode;
    if (errorCode <= 183)
    {
      if (errorCode <= 118)
      {
        if (errorCode == 102)
        {
          v25 = auto_unlock_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10027BC80();
          }

          bleDevice2 = [(SDAutoUnlockAuthSession *)self bleDevice];
          [(SDAutoUnlockLockSession *)self handleFoundBLEDevice:bleDevice2 available:0 lockedOnWrist:1];
          goto LABEL_26;
        }

        if (errorCode == 114)
        {
          bleDevice2 = @"Remote WiFi failure";
          v19 = 114;
          goto LABEL_23;
        }
      }

      else
      {
        switch(errorCode)
        {
          case 119:
            bleDevice2 = @"Watch not in state to perform Auto Unlock";
            v19 = 119;
            goto LABEL_23;
          case 158:
            bleDevice2 = @"Watch off wrist";
            v19 = 158;
            goto LABEL_23;
          case 159:
            bleDevice2 = @"Watch locked and off wrist";
            goto LABEL_23;
        }
      }
    }

    else if (errorCode > 209)
    {
      switch(errorCode)
      {
        case 210:
          bleDevice2 = @"Not enough motion detected";
          v19 = 210;
          goto LABEL_23;
        case 213:
          bleDevice2 = @"Watch Not Armed";
          v19 = 213;
          goto LABEL_23;
        case 215:
          bleDevice2 = @"Phone needs to be unlocked after Watch unlocked and on wrist";
          v19 = 215;
          goto LABEL_23;
      }
    }

    else
    {
      switch(errorCode)
      {
        case 184:
          bleDevice2 = @"Auth prompts disabled on remote";
          v19 = 184;
          goto LABEL_23;
        case 199:
          SFIsGreenTeaDevice();
          bleDevice2 = SFLocalizedStringForKey();
          v19 = 199;
          goto LABEL_22;
        case 204:
          bleDevice2 = SFLocalizedStringForKey();
          v19 = 204;
          goto LABEL_22;
      }
    }

    bleDevice2 = @"Remote AKS session failed";
    goto LABEL_23;
  }

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Key exchange request: attempt cancelled", buf, 2u);
  }

LABEL_27:
}

- (void)handleSessionAuthToken:(id)token
{
  tokenCopy = token;
  if ([(SDAutoUnlockLockSession *)self canceled])
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Auth token: attempt cancelled", v24, 2u);
    }

    goto LABEL_21;
  }

  sessionAuthToken = [(SDAutoUnlockLockSession *)self sessionAuthToken];

  if (sessionAuthToken)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10027BD2C();
    }

    goto LABEL_21;
  }

  v5 = [[SDUnlockSessionAuthToken alloc] initWithData:tokenCopy];
  if (([v5 hasErrorCode]& 1) != 0 || ![v5 hasAuthToken])
  {
    if ([v5 hasErrorCode])
    {
      errorCode = [v5 errorCode];
      v10 = errorCode;
      if (errorCode == 179)
      {
        v11 = @"User denied authorization request";
        goto LABEL_18;
      }

      if (errorCode == 180)
      {
        v11 = @"Error posting authorization request";
        v10 = 180;
        goto LABEL_18;
      }
    }

    else
    {
      v10 = 103;
    }

    v11 = @"Auth token transfer failed";
    goto LABEL_18;
  }

  [(SDAutoUnlockLockSession *)self setSessionAuthToken:v5];
  v7 = objc_opt_new();
  attemptStartDate = [(SDAutoUnlockLockSession *)self attemptStartDate];
  [v7 timeIntervalSinceDate:attemptStartDate];
  [(SDAutoUnlockLockSession *)self setBtOverall:?];

  if ([v5 version]>= 2 && [(SDAutoUnlockAuthSession *)self attemptType]== 2)
  {
    [(SDAutoUnlockLockSession *)self consumeAuthTokenIfReady];
    goto LABEL_21;
  }

  aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
  generateSessionToken = [aksSession generateSessionToken];
  [(SDAutoUnlockAuthSession *)self setSessionRangingKey:generateSessionToken];

  sessionRangingKey = [(SDAutoUnlockAuthSession *)self sessionRangingKey];

  if (sessionRangingKey)
  {
    [(SDAutoUnlockLockSession *)self startAWDL];
    [(SDAutoUnlockLockSession *)self setOnlyRanging:1];
    v19 = +[NSUserDefaults standardUserDefaults];
    v20 = [v19 integerForKey:@"phoneAutoUnlockPeerDiscoveryTimeout"];
    if (v20 < 1)
    {
      v23 = 10.0;
    }

    else
    {
      v21 = v20;
      v22 = auto_unlock_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_10027BD68();
      }

      v23 = v21;
    }

    [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(v23)];

    goto LABEL_21;
  }

  v11 = @"Failed to generate ranging token";
  v10 = 101;
LABEL_18:
  v12 = auto_unlock_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10027BDDC();
  }

  v13 = SFAutoUnlockErrorDomain;
  v25 = NSLocalizedDescriptionKey;
  v26 = v11;
  v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v15 = [NSError errorWithDomain:v13 code:v10 userInfo:v14];
  [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v15];

LABEL_21:
}

- (void)handleConfirmationACK
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockSessionConfirmationACK", v15, 2u);
  }

  v4 = objc_opt_new();
  confirmationSendDate = [(SDAutoUnlockLockSession *)self confirmationSendDate];
  [v4 timeIntervalSinceDate:confirmationSendDate];
  [(SDAutoUnlockLockSession *)self setConfirmation:?];

  [(SDAutoUnlockAuthSession *)self setErrorType:0];
  v6 = +[NSDate date];
  attemptStartDate = [(SDAutoUnlockLockSession *)self attemptStartDate];
  [v6 timeIntervalSinceDate:attemptStartDate];
  [(SDAutoUnlockLockSession *)self setAttemptTime:?];

  LODWORD(v6) = [(SDAutoUnlockLockSession *)self attemptPrewarmed];
  [(SDAutoUnlockLockSession *)self attemptTime];
  v9 = v8;
  if (v6)
  {
    [(SDAutoUnlockLockSession *)self prewarmIdleTime];
    v9 = v9 - v10;
  }

  [(SDAutoUnlockLockSession *)self setCompleteExchange:v9];
  [(SDAutoUnlockLockSession *)self setUnlockSucceeded:1];
  if ([(SDAutoUnlockAuthSession *)self attemptType]== 2 && [(SDAutoUnlockLockSession *)self sentImageData])
  {
    iconTransferStore = [(SDAutoUnlockLockSession *)self iconTransferStore];
    imageHash = [(SDAutoUnlockLockSession *)self imageHash];
    deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
    appName = [(SDAutoUnlockAuthSession *)self appName];
    [iconTransferStore storeCachedImageForHash:imageHash device:deviceID appName:appName];
  }

  [(SDAutoUnlockLockSession *)self notifyDelegateWithError:0];
}

- (void)startAWDL
{
  kdebug_trace();
  remoteAWDLInfo = [(SDAutoUnlockAuthSession *)self remoteAWDLInfo];
  v4 = [(SDAutoUnlockAuthSession *)self peerListFromAWDLInfo:remoteAWDLInfo];
  [(SDAutoUnlockLockSession *)self setPeerList:v4];

  remoteAWDLInfo2 = [(SDAutoUnlockAuthSession *)self remoteAWDLInfo];
  v6 = [remoteAWDLInfo2 objectForKeyedSubscript:@"AWDL_IF_MAC_ADDRESS"];
  [(SDAutoUnlockLockSession *)self setPeerMacAddress:v6];

  remoteAWDLInfo3 = [(SDAutoUnlockAuthSession *)self remoteAWDLInfo];
  v8 = [NSMutableDictionary dictionaryWithDictionary:remoteAWDLInfo3];

  localAWDLInfo = [(SDAutoUnlockAuthSession *)self localAWDLInfo];
  [v8 setObject:localAWDLInfo forKeyedSubscript:@"AWDL_INFO_SELF"];

  [(SDAutoUnlockAuthSession *)self setErrorType:11];
  v10 = +[NSDate date];
  [(SDAutoUnlockAuthSession *)self setAwdlStart:v10];

  v11 = objc_opt_new();
  peerList = [(SDAutoUnlockLockSession *)self peerList];
  firstObject = [peerList firstObject];
  [v11 setNiRangingPeer:firstObject];

  peerMacAddress = [(SDAutoUnlockLockSession *)self peerMacAddress];
  [v11 setMacAddressData:peerMacAddress];

  objc_initWeak(location, self);
  v15 = +[NSUserDefaults standardUserDefaults];
  v16 = [v15 BOOLForKey:@"phoneAutoUnlockSkipRanging"];
  v17 = auto_unlock_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10027BE4C(v16, v17);
  }

  if (v16)
  {
    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping ranging due to default phoneAutoUnlockSkipRanging", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(location);
    [WeakRetained handleRangingResults:0 errorCode:0];
  }

  else
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100278F64;
    v36[3] = &unk_1008D66D8;
    v36[4] = self;
    objc_copyWeak(&v37, location);
    v27 = objc_retainBlock(v36);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1002790F4;
    v34[3] = &unk_1008D6700;
    objc_copyWeak(&v35, location);
    v20 = objc_retainBlock(v34);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1002791D4;
    v32[3] = &unk_1008CDD98;
    objc_copyWeak(&v33, location);
    v21 = objc_retainBlock(v32);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100279254;
    v30[3] = &unk_1008D6728;
    objc_copyWeak(&v31, location);
    v22 = objc_retainBlock(v30);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100279310;
    v28[3] = &unk_1008CDD98;
    objc_copyWeak(&v29, location);
    v23 = objc_retainBlock(v28);
    v24 = [[SDAutoUnlockWiFiRequest alloc] initWithAwdlInfo:v8 isRangingInitiator:1 rangingPeer:v11 queueAvailableHandler:&stru_1008D66B0 awdlStartedHandler:v27 peerFoundHandler:v20 rangingStartedHandler:v21 rangingCompletedHandler:v22 invalidationHandler:v23];
    [(SDAutoUnlockAuthSession *)self setWifiRequest:v24];

    v25 = +[SDAutoUnlockWiFiManager sharedManager];
    wifiRequest = [(SDAutoUnlockAuthSession *)self wifiRequest];
    [v25 scheduleWiFiRequest:wifiRequest];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);

    objc_destroyWeak(&v37);
  }

  objc_destroyWeak(location);
}

- (void)consumeAuthTokenIfReady
{
  v3 = +[SDStatusMonitor sharedMonitor];
  currentConsoleUser = [v3 currentConsoleUser];

  v5 = variable initialization expression of SDAirDropHashStoreCDB.destroyed();
  v6 = variable initialization expression of SDAirDropHashStoreCDB.destroyed();
  delegate = [(SDAutoUnlockPairingSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SDAutoUnlockPairingSession *)self delegate];
    isDisplayOff = [delegate2 isDisplayOff];
  }

  else
  {
    isDisplayOff = 0;
  }

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (currentConsoleUser)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if (v5)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    *buf = 138413058;
    v42 = v13;
    if (v6)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v43 = 2112;
    v44 = v14;
    v45 = 2112;
    v46 = v15;
    if (isDisplayOff)
    {
      v12 = @"YES";
    }

    v47 = 2112;
    v48 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Current user: %@, clamshell closed: %@, display connected: %@ display off: %@", buf, 0x2Au);
  }

  if ((currentConsoleUser & v5 & ~v6 | isDisplayOff))
  {
    if (isDisplayOff)
    {
      v16 = SFAutoUnlockErrorDomain;
      v37 = NSLocalizedDescriptionKey;
      v38 = @"Device display is off";
      v17 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v18 = [NSError errorWithDomain:v16 code:217 userInfo:v17];

      [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v18];
LABEL_41:

      return;
    }

    v30 = auto_unlock_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Waiting for a display or clamshell change", buf, 2u);
    }

    if (![(SDAutoUnlockLockSession *)self waitingForDisplayOrClamshell])
    {
      [(SDAutoUnlockLockSession *)self setWaitingForDisplayOrClamshell:1];
      v31 = objc_opt_new();
      [(SDAutoUnlockLockSession *)self setDisplayOrClamshellWaitingDate:v31];

      [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(5.0)];
    }

    return;
  }

  if ([(SDAutoUnlockLockSession *)self waitingForDisplayOrClamshell])
  {
    v19 = objc_opt_new();
    displayOrClamshellWaitingDate = [(SDAutoUnlockLockSession *)self displayOrClamshellWaitingDate];
    [v19 timeIntervalSinceDate:displayOrClamshellWaitingDate];
    [(SDAutoUnlockLockSession *)self setDisplayClamshellWaitTime:?];
  }

  sessionAuthToken = [(SDAutoUnlockLockSession *)self sessionAuthToken];
  if (!sessionAuthToken)
  {
    return;
  }

  v18 = sessionAuthToken;
  if ([(SDAutoUnlockAuthSession *)self inRange])
  {

LABEL_25:
    [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
    [(SDAutoUnlockLockSession *)self setWaitingForDisplayOrClamshell:0];
    v22 = +[SDStatusMonitor sharedMonitor];
    -[SDAutoUnlockLockSession setDeviceWasLocked:](self, "setDeviceWasLocked:", [v22 deviceKeyBagUnlocked] ^ 1);

    aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
    sessionAuthToken2 = [(SDAutoUnlockLockSession *)self sessionAuthToken];
    authToken = [sessionAuthToken2 authToken];
    v26 = [aksSession stepSessionWithData:authToken outputData:0];

    v27 = auto_unlock_log();
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "AKS Unlock succeeded", buf, 2u);
      }

      v29 = +[SDStatusMonitor sharedMonitor];
      [v29 addPreventExitForLocaleReason:@"AutoUnlockConfirmationTimerPreventExitReason"];

      [(SDAutoUnlockAuthSession *)self setAksSuccess:1];
      [(SDAutoUnlockAuthSession *)self setErrorType:13];
      if (![(SDAutoUnlockLockSession *)self doNotPostUnlockConfirmation])
      {
        [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:1 withError:0];
      }
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10027BEC8();
      }

      v34 = SFAutoUnlockErrorDomain;
      v39 = NSLocalizedDescriptionKey;
      v40 = @"Auth token failed";
      v35 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v36 = [NSError errorWithDomain:v34 code:101 userInfo:v35];
      [(SDAutoUnlockLockSession *)self sendUnlockConfirmation:0 withError:v36];
    }

    return;
  }

  sessionAuthToken3 = [(SDAutoUnlockLockSession *)self sessionAuthToken];
  if ([sessionAuthToken3 version] <= 1)
  {

    goto LABEL_41;
  }

  attemptType = [(SDAutoUnlockAuthSession *)self attemptType];

  if (attemptType == 2)
  {
    goto LABEL_25;
  }
}

- (void)sendAuthPromptRequestWithImageHash:(id)hash appName:(id)name
{
  hashCopy = hash;
  nameCopy = name;
  v8 = +[SDAutoUnlockAKSManager sharedManager];
  localDeviceID = [v8 localDeviceID];

  if (localDeviceID)
  {
    v10 = objc_opt_new();
    [v10 setVersion:1];
    [v10 setIconHash:hashCopy];
    [v10 setAppName:nameCopy];
    navBarTitle = [(SDAutoUnlockAuthSession *)self navBarTitle];
    [v10 setNavBarTitle:navBarTitle];

    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10027BFF4();
    }

    data = [v10 data];
    v14 = [(SDAutoUnlockPairingSession *)self wrapPayload:data withType:12 useProxy:0 senderID:localDeviceID];

    bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100279E08;
    v18[3] = &unk_1008CDF90;
    v18[4] = self;
    [(SDAutoUnlockAuthSession *)self sendData:v14 bleDevice:bleDevice completionHandler:v18];
  }

  else
  {
    v16 = auto_unlock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10027C030();
    }

    v17 = SFAutoUnlockErrorDomain;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"Missing local IDS ID";
    v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [NSError errorWithDomain:v17 code:194 userInfo:v10];
    [(SDAutoUnlockLockSession *)self notifyDelegateWithError:v14];
  }

  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(30.0)];
}

- (void)sendAuthPromptImageDataIfReady:(id)ready
{
  readyCopy = ready;
  v5 = sub_10000C1F8(@"AUDisableIconCache", 0);
  imageDataAlreadyCached = 0;
  if (!v5)
  {
    imageDataAlreadyCached = [(SDAutoUnlockLockSession *)self imageDataAlreadyCached];
  }

  if ([(SDAutoUnlockLockSession *)self sentImageData]|| ![(SDAutoUnlockLockSession *)self chosenDevice])
  {
    goto LABEL_7;
  }

  imageData = [(SDAutoUnlockLockSession *)self imageData];
  v8 = imageData;
  if (((imageData != 0) & imageDataAlreadyCached) == 1)
  {
    needsNewImage = [(SDAutoUnlockLockSession *)self needsNewImage];

    if ((needsNewImage & 1) == 0)
    {
LABEL_7:
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if ([(SDAutoUnlockLockSession *)self sentImageData])
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if ([(SDAutoUnlockLockSession *)self chosenDevice])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        imageData2 = [(SDAutoUnlockLockSession *)self imageData];
        if (imageData2)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        if ([(SDAutoUnlockLockSession *)self imageDataAlreadyCached])
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        *buf = 138413314;
        if ([(SDAutoUnlockLockSession *)self needsNewImage])
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        *v42 = v11;
        *&v42[8] = 2112;
        *&v42[10] = v12;
        v43 = 2112;
        v44 = v14;
        v45 = 2112;
        v46 = v15;
        v47 = 2112;
        v48 = v16;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not sending image data (already sent %@, chosen: %@, data %@, already cached %@, needs new image: %@)", buf, 0x34u);
      }

      goto LABEL_25;
    }
  }

  else
  {

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v17 = auto_unlock_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if ([(SDAutoUnlockLockSession *)self chosenDevice])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    imageData3 = [(SDAutoUnlockLockSession *)self imageData];
    if (imageData3)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    if (imageDataAlreadyCached)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    if (v5)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    *buf = 138413314;
    if ([(SDAutoUnlockLockSession *)self needsNewImage])
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    *v42 = v18;
    *&v42[8] = 2112;
    *&v42[10] = v20;
    v43 = 2112;
    v44 = v21;
    v45 = 2112;
    v46 = v22;
    v47 = 2112;
    v48 = v23;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending image data (chosen: %@, data: %@, already cached: %@, cache disabled: %@ needs new image: %@)", buf, 0x34u);
  }

  v24 = 0;
  v25 = 1;
  *&v26 = 67109376;
  v39 = v26;
  do
  {
    v27 = auto_unlock_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v42 = 10000;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Using max size %ld", buf, 0xCu);
    }

    v28 = [readyCopy length];
    if (&v28[-v24] >= 0x2710)
    {
      v29 = 10000;
    }

    else
    {
      v29 = &v28[-v24];
    }

    v30 = [readyCopy subdataWithRange:{v24, v29, v39}];
    v31 = [v30 length];
    v32 = [v30 length] >> 4;
    v33 = objc_opt_new();
    [v33 setVersion:1];
    [v33 setImageData:v30];
    [v33 setFinalMessage:v32 < 0x271];
    v34 = auto_unlock_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v30 length];
      *buf = v39;
      *v42 = v25;
      *&v42[4] = 2048;
      *&v42[6] = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Sending SDAutoUnlockAuthPromptImageData (message count: %u, size: %ld)", buf, 0x12u);
    }

    v24 += v31;

    data = [v33 data];
    v37 = [(SDAutoUnlockPairingSession *)self wrapPayload:data withType:14];

    bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10027A3DC;
    v40[3] = &unk_1008CDF90;
    v40[4] = self;
    [(SDAutoUnlockAuthSession *)self sendData:v37 bleDevice:bleDevice direct:1 completionHandler:v40];

    ++v25;
  }

  while (v32 > 0x270);
  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(30.0)];
  [(SDAutoUnlockLockSession *)self setSentImageData:1];
LABEL_25:
}

- (void)sendKeyExchangeResponseWithData:(id)data
{
  dataCopy = data;
  v5 = objc_opt_new();
  [v5 setVersion:2];
  [v5 setKey:dataCopy];

  [(SDAutoUnlockAuthSession *)self setErrorType:10];
  v6 = objc_opt_new();
  [(SDAutoUnlockLockSession *)self setExchageResponseDate:v6];

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending SDUnlockSessionKeyExchangeResponse", buf, 2u);
  }

  data = [v5 data];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10027A6C0;
  v9[3] = &unk_1008CDF90;
  v9[4] = self;
  [(SDAutoUnlockAuthSession *)self sendData:data type:8 errorHandler:v9];

  kdebug_trace();
  [(SDAutoUnlockLockSession *)self setSentExchangeResponse:1];
  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(35)];
}

- (void)completeAttemptPostNotification:(BOOL)notification
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10027A848;
  v6[3] = &unk_1008CF798;
  v6[4] = self;
  notificationCopy = notification;
  dispatch_async(sessionQueue, v6);
}

@end