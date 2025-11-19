@interface SDAutoUnlockKeySession
- (BOOL)handleAWDLInfo:(id)a3;
- (BOOL)keyInState;
- (SDAutoUnlockKeySession)initWithBLEDevice:(id)a3 sessionID:(id)a4;
- (void)_invalidate;
- (void)addObservers;
- (void)alertOfUnlock;
- (void)createAuthTokenIfReady;
- (void)createWiFiRequest;
- (void)declareSystemActivityAssertion;
- (void)deviceDisconnected:(id)a3;
- (void)handleAuthPromptImageData:(id)a3;
- (void)handleAuthPromptRequest:(id)a3;
- (void)handleCleanUpAWDL;
- (void)handleMessageWithWrapper:(id)a3;
- (void)handleSessionKeyExchangeResponse:(id)a3;
- (void)handleUnlockConfirmation:(id)a3;
- (void)invalidate;
- (void)invalidateAssertionTimer;
- (void)invalidateOnQueue;
- (void)logAutoUnlockEnd;
- (void)logAutoUnlockStart;
- (void)notifyDelegateWithError:(id)a3;
- (void)nq_awdlNetworkStarted;
- (void)nq_handleWiFiRequestInvalidated;
- (void)nq_handleWiFiRequestStartedWithStartAWDLHandler:(id)a3;
- (void)postBeganUnlockingNotification;
- (void)releaseIdleSleepAssertion;
- (void)removeObservers;
- (void)restartAssertionTimer;
- (void)sendAWDLInfoWithKeyData:(id)a3 error:(id)a4;
- (void)sendAuthPromptResponseWithData:(id)a3 error:(id)a4;
- (void)sendConfirmationACK;
- (void)sendKeyExchangeRequestWithData:(id)a3 error:(id)a4;
- (void)sendSessionAuthToken:(id)a3 error:(id)a4;
- (void)systemIsActive:(id)a3;
@end

@implementation SDAutoUnlockKeySession

- (SDAutoUnlockKeySession)initWithBLEDevice:(id)a3 sessionID:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = SDAutoUnlockKeySession;
  v7 = [(SDAutoUnlockAuthSession *)&v21 initWithDevice:0 sessionID:a4 bleDevice:v6];
  v8 = v7;
  if (v7)
  {
    v7->_powerAssertionID = 0;
    v9 = +[SDAutoUnlockTransport sharedTransport];
    v10 = [v6 identifier];
    v11 = [v9 cachedIDSDeviceIDsForBluetoothID:v10];
    v12 = [v11 firstObject];
    [(SDAutoUnlockPairingSession *)v8 setDeviceID:v12];

    v13 = [(SDAutoUnlockPairingSession *)v8 deviceID];

    if (!v13)
    {
      v14 = +[SDAutoUnlockTransport sharedTransport];
      v15 = [v6 identifier];
      v16 = [v14 idsDeviceForBluetoothID:v15];

      v17 = [v16 uniqueID];
      [(SDAutoUnlockPairingSession *)v8 setDeviceID:v17];
    }

    [(SDAutoUnlockKeySession *)v8 addObservers];
    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(SDAutoUnlockPairingSession *)v8 deviceID];
      *buf = 138412290;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Key session initialized (device id: %@)", buf, 0xCu);
    }
  }

  return v8;
}

- (void)invalidate
{
  v3 = SFHighPriorityQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063F18;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)invalidateOnQueue
{
  v3 = SFHighPriorityQueue();
  dispatch_assert_queue_V2(v3);

  [(SDAutoUnlockKeySession *)self _invalidate];
}

- (void)_invalidate
{
  if (![(SDAutoUnlockKeySession *)self invalidated])
  {
    [(SDAutoUnlockKeySession *)self setInvalidated:1];
    [(SDAutoUnlockKeySession *)self setSuppressWatchNotification:0];
    [(SDAutoUnlockKeySession *)self setDidDelayWorkDueToPowerAssertion:0];
    v3 = [(SDAutoUnlockKeySession *)self motionDetector];

    if (v3)
    {
      v4 = [(SDAutoUnlockKeySession *)self motionDetector];
      [v4 invalidate];

      [(SDAutoUnlockKeySession *)self setMotionDetector:0];
    }

    v5 = +[SDAutoUnlockWiFiManager sharedManager];
    v6 = [(SDAutoUnlockAuthSession *)self wifiRequest];
    [v5 cancelWiFiRequest:v6];

    [(SDAutoUnlockAuthSession *)self setWifiRequest:0];
    [(SDAutoUnlockKeySession *)self removeObservers];
    if ([(SDAutoUnlockKeySession *)self promptingForApproval])
    {
      v7 = auto_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing authorization request", buf, 2u);
      }

      v8 = +[SDAutoUnlockNotificationsManager sharedManager];
      [v8 removeAuthorizationRequestNotification];
    }

    sub_100111BA4(0);
    v11.receiver = self;
    v11.super_class = SDAutoUnlockKeySession;
    [(SDAutoUnlockAuthSession *)&v11 invalidate];
    v9 = [(SDAutoUnlockPairingSession *)self sessionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064140;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

- (BOOL)keyInState
{
  if ([(SDAutoUnlockAuthSession *)self protocol]!= 2)
  {
    return 1;
  }

  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 deviceKeyBagDisabled];

  v4 = +[SDStatusMonitor sharedMonitor];
  v5 = [v4 watchWristState];

  if ((v3 & 1) == 0 && v5 != 1)
  {
    return 1;
  }

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"YES";
    if (v3)
    {
      v9 = @"NO";
    }

    else
    {
      v9 = @"YES";
    }

    if (v5 == 1)
    {
      v8 = @"NO";
    }

    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Watch not in state. Passcode enabled: %@, wrist detection enabled: %@", &v11, 0x16u);
  }

  v10 = +[SDAutoUnlockAKSManager sharedManager];
  [v10 deleteEscrowSecretForPhones];

  return 0;
}

- (void)notifyDelegateWithError:(id)a3
{
  v4 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Auth key session notifying delegate with error: %@", &v10, 0xCu);
  }

  if (![(SDAutoUnlockKeySession *)self sessionCompleted])
  {
    [(SDAutoUnlockKeySession *)self setSessionCompleted:1];
    if ([(SDAutoUnlockKeySession *)self shouldAlertOnNotify])
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Alerting on notify", &v10, 2u);
      }

      [(SDAutoUnlockKeySession *)self alertOfUnlock];
    }

    v7 = [(SDAutoUnlockPairingSession *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SDAutoUnlockPairingSession *)self delegate];
      [v9 session:self didCompleteWithError:v4];
    }
  }
}

- (void)postBeganUnlockingNotification
{
  if ([(SDAutoUnlockAuthSession *)self isAuthenticatingForSiri])
  {
    v4 = +[SDAutoUnlockNotificationsManager sharedManager];
    v3 = [(SDAutoUnlockPairingSession *)self deviceID];
    [v4 showAuthenticatedSiriForDeviceID:v3];
  }
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"deviceDisconnected:" name:SFBluetoothNotificationNameDisconnected object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"systemIsActive:" name:@"com.apple.sharingd.SystemHasPoweredOn" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"systemIsActive:" name:@"com.apple.sharingd.SystemWillNotSleep" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)deviceDisconnected:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:SFBluetoothNotificationKeyPeerDevice];

  v6 = [v5 identifier];
  v7 = [(SDAutoUnlockAuthSession *)self bleDevice];
  v8 = [v7 identifier];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 identifier];
      v12 = [v11 UUIDString];
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BLE peer disconnected (identifier: %@)", buf, 0xCu);
    }

    v13 = SFAutoUnlockErrorDomain;
    v16 = NSLocalizedDescriptionKey;
    v17 = @"BLE Peer disconnected";
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v15 = [NSError errorWithDomain:v13 code:186 userInfo:v14];
    [(SDAutoUnlockKeySession *)self notifyDelegateWithError:v15];
  }
}

- (void)systemIsActive:(id)a3
{
  v4 = a3;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "System is active", buf, 2u);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(SDAutoUnlockKeySession *)v6 didDelayWorkDueToPowerAssertion];
  if (v7)
  {
    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Beginning delayed work", buf, 2u);
    }

    [(SDAutoUnlockKeySession *)v6 setDidDelayWorkDueToPowerAssertion:0];
  }

  [(SDAutoUnlockKeySession *)v6 setShouldDelayWorkDueToPowerAssertion:0];
  objc_sync_exit(v6);

  if (v7)
  {
    v9 = SFHighPriorityQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006495C;
    block[3] = &unk_1008CDEA0;
    block[4] = v6;
    dispatch_async(v9, block);
  }
}

- (void)alertOfUnlock
{
  if ([(SDAutoUnlockKeySession *)self userRequestRequired]|| [(SDAutoUnlockKeySession *)self alerted]|| [(SDAutoUnlockKeySession *)self suppressWatchNotification])
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Authorization allowed by request, not showing alert", buf, 2u);
    }
  }

  else
  {
    [(SDAutoUnlockKeySession *)self setAlerted:1];
    v5 = +[SDAutoUnlockNotificationsManager sharedManager];
    v4 = [(SDAutoUnlockPairingSession *)self deviceID];
    [v5 showUnlockedByDeviceNotificationWithDeviceID:v4];
  }
}

- (void)createWiFiRequest
{
  v3 = +[NSDate date];
  [(SDAutoUnlockAuthSession *)self setAwdlStart:v3];

  v4 = [(SDAutoUnlockAuthSession *)self remoteAWDLInfo];
  v5 = [NSMutableDictionary dictionaryWithDictionary:v4];

  v6 = [(SDAutoUnlockAuthSession *)self localAWDLInfo];
  [v5 setObject:v6 forKeyedSubscript:@"AWDL_INFO_SELF"];

  v7 = +[SDNearbyAgent sharedNearbyAgent];
  v8 = [v7 dispatchQueue];

  objc_initWeak(location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100064D74;
  v29[3] = &unk_1008CDEF0;
  v9 = v8;
  v30 = v9;
  objc_copyWeak(&v31, location);
  v10 = objc_retainBlock(v29);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100064EB0;
  v25[3] = &unk_1008CDF40;
  v11 = v9;
  v26 = v11;
  objc_copyWeak(&v28, location);
  v27 = self;
  v12 = objc_retainBlock(v25);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000650D4;
  v22 = &unk_1008CDF68;
  v13 = v11;
  v23 = v13;
  objc_copyWeak(&v24, location);
  v14 = objc_retainBlock(&v19);
  v15 = [SDAutoUnlockWiFiRequest alloc];
  v16 = [(SDAutoUnlockWiFiRequest *)v15 initWithAwdlInfo:v5 isRangingInitiator:0 rangingPeer:0 queueAvailableHandler:v10 awdlStartedHandler:v12 peerFoundHandler:0 rangingStartedHandler:0 rangingCompletedHandler:0 invalidationHandler:v14, v19, v20, v21, v22];
  [(SDAutoUnlockAuthSession *)self setWifiRequest:v16];

  v17 = +[SDAutoUnlockWiFiManager sharedManager];
  v18 = [(SDAutoUnlockAuthSession *)self wifiRequest];
  [v17 scheduleWiFiRequest:v18];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v28);

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

- (void)nq_awdlNetworkStarted
{
  v3 = +[SDNearbyAgent sharedNearbyAgent];
  v4 = [v3 dispatchQueue];
  dispatch_assert_queue_V2(v4);

  kdebug_trace();
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[SDStatusMonitor sharedMonitor];
    v7 = [v6 awdlInfo];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AWDL network up with info %@", &v12, 0xCu);
  }

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSDate date];
    v10 = [(SDAutoUnlockAuthSession *)self awdlStart];
    [v9 timeIntervalSinceDate:v10];
    v12 = 134217984;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Automation: AWDL started %0.2f", &v12, 0xCu);
  }
}

- (void)nq_handleWiFiRequestStartedWithStartAWDLHandler:(id)a3
{
  v4 = a3;
  v5 = +[SDNearbyAgent sharedNearbyAgent];
  v6 = [v5 dispatchQueue];
  dispatch_assert_queue_V2(v6);

  [(SDAutoUnlockKeySession *)self setWifiRequestStartedHandler:v4];

  [(SDAutoUnlockKeySession *)self createAuthTokenIfReady];
}

- (void)nq_handleWiFiRequestInvalidated
{
  v2 = +[SDNearbyAgent sharedNearbyAgent];
  v3 = [v2 dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100068E1C();
  }
}

- (void)handleMessageWithWrapper:(id)a3
{
  v4 = a3;
  v5 = [v4 messageType];
  if (v5 > 13)
  {
    switch(v5)
    {
      case 14:
        v31 = auto_unlock_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockAuthPromptImageData", &v36, 2u);
        }

        v32 = [v4 payload];
        [(SDAutoUnlockKeySession *)self handleAuthPromptImageData:v32];

        break;
      case 15:
        v35 = auto_unlock_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypeCleanUpAWDL", &v36, 2u);
        }

        [(SDAutoUnlockKeySession *)self handleCleanUpAWDL];
        break;
      case 301:
        sub_100111BA4(1);
        v16 = auto_unlock_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Finished setting in progress", &v36, 2u);
        }

        if ([v4 hasSenderID])
        {
          v17 = [NSUUID alloc];
          v18 = [v4 senderID];
          v19 = v18;
          v20 = [v17 initWithUUIDBytes:{objc_msgSend(v18, "bytes")}];
          v21 = [v20 UUIDString];
          [(SDAutoUnlockPairingSession *)self setDeviceID:v21];

          v22 = auto_unlock_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(SDAutoUnlockPairingSession *)self deviceID];
            v36 = 138412290;
            v37 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Key session received device id: %@", &v36, 0xCu);
          }
        }

        v24 = auto_unlock_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [(SDAutoUnlockPairingSession *)self sessionID];
          v36 = 138412290;
          v37 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypeAWDLInfo %@", &v36, 0xCu);
        }

        kdebug_trace();
        v26 = [v4 payload];
        v27 = [(SDAutoUnlockKeySession *)self handleAWDLInfo:v26];

        if (v27)
        {
          [(SDAutoUnlockKeySession *)self postBeganUnlockingNotification];
          v28 = self;
          objc_sync_enter(v28);
          if ([(SDAutoUnlockKeySession *)v28 shouldDelayWorkDueToPowerAssertion])
          {
            [(SDAutoUnlockKeySession *)v28 setDidDelayWorkDueToPowerAssertion:1];
            objc_sync_exit(v28);
          }

          else
          {
            objc_sync_exit(v28);

            [(SDAutoUnlockKeySession *)v28 beginAKSSession];
          }
        }

        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 8:
        v29 = auto_unlock_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSessionKeyExchangeResponse", &v36, 2u);
        }

        [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
        v30 = [v4 payload];
        [(SDAutoUnlockKeySession *)self handleSessionKeyExchangeResponse:v30];

        break;
      case 10:
        v33 = auto_unlock_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSessionConfirmation", &v36, 2u);
        }

        [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
        v34 = [v4 payload];
        [(SDAutoUnlockKeySession *)self handleUnlockConfirmation:v34];

        break;
      case 12:
        sub_100111BA4(1);
        v6 = auto_unlock_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished setting in progress", &v36, 2u);
        }

        if ([v4 hasSenderID])
        {
          v7 = [NSUUID alloc];
          v8 = [v4 senderID];
          v9 = v8;
          v10 = [v7 initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
          v11 = [v10 UUIDString];
          [(SDAutoUnlockPairingSession *)self setDeviceID:v11];

          v12 = auto_unlock_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(SDAutoUnlockPairingSession *)self deviceID];
            v36 = 138412290;
            v37 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Key session received device id: %@", &v36, 0xCu);
          }
        }

        v14 = auto_unlock_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockAuthPromptRequest", &v36, 2u);
        }

        v15 = [v4 payload];
        [(SDAutoUnlockKeySession *)self handleAuthPromptRequest:v15];

        break;
    }
  }
}

- (BOOL)handleAWDLInfo:(id)a3
{
  v4 = a3;
  v5 = [[SDAutoUnlockAWDLInfo alloc] initWithData:v4];

  v6 = [(SDAutoUnlockAWDLInfo *)v5 awdlInfo];
  v7 = sub_1001114F4(v6);

  if (v7)
  {
    if ([(SDAutoUnlockAWDLInfo *)v5 version]== 1)
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using legacy protocol", v28, 2u);
      }

      v9 = 0;
    }

    else
    {
      v15 = [(SDAutoUnlockAWDLInfo *)v5 version];
      v8 = auto_unlock_log();
      v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v15 == 4)
      {
        if (v16)
        {
          *v28 = 0;
          v9 = 2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using attested protocol", v28, 2u);
        }

        else
        {
          v9 = 2;
        }
      }

      else
      {
        if (v16)
        {
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using modern protocol", v28, 2u);
        }

        v9 = 1;
      }
    }

    [(SDAutoUnlockAuthSession *)self setProtocol:v9];
    [(SDAutoUnlockKeySession *)self logAutoUnlockStart];
    [(SDAutoUnlockKeySession *)self declareSystemActivityAssertion];
    if ([(SDAutoUnlockAuthSession *)self useAKSToken])
    {
      v17 = [(SDAutoUnlockAWDLInfo *)v5 useToken];
    }

    else
    {
      v17 = 0;
    }

    [(SDAutoUnlockAuthSession *)self setUseAKSToken:v17];
    [(SDAutoUnlockAuthSession *)self setRemoteAWDLInfo:v7];
    if ([(SDAutoUnlockAWDLInfo *)v5 authPrompt])
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    [(SDAutoUnlockAuthSession *)self setAttemptType:v18];
    if ([(SDAutoUnlockAuthSession *)self attemptType]== 2)
    {
      [(SDAutoUnlockKeySession *)self setOldApproveProtocol:1];
      [(SDAutoUnlockKeySession *)self setUserRequestRequired:1];
    }

    v19 = [(SDAutoUnlockAWDLInfo *)v5 appName];
    [(SDAutoUnlockAuthSession *)self setAppName:v19];

    [(SDAutoUnlockAWDLInfo *)v5 phoneUnlockDate];
    v20 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [(SDAutoUnlockKeySession *)self setPhoneUnlockDate:v20];

    if ([(SDAutoUnlockAWDLInfo *)v5 hasIsAuthenticatingForSiri])
    {
      v21 = [(SDAutoUnlockAWDLInfo *)v5 isAuthenticatingForSiri];
    }

    else
    {
      v21 = 0;
    }

    [(SDAutoUnlockKeySession *)self setAuthenticatingForSiri:v21];
    if ([(SDAutoUnlockAWDLInfo *)v5 hasSkipMotionCheck])
    {
      v22 = [(SDAutoUnlockAWDLInfo *)v5 skipMotionCheck];
    }

    else
    {
      v22 = 0;
    }

    [(SDAutoUnlockAuthSession *)self setSkipMotionCheck:v22];
    if ([(SDAutoUnlockAuthSession *)self protocol]!= 4 || ![(SDAutoUnlockKeySession *)self localDeviceNeedsArming])
    {
      v26 = 1;
      goto LABEL_39;
    }

    v23 = SFAutoUnlockErrorDomain;
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Key Needs To Be Armed";
    v24 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v14 = [NSError errorWithDomain:v23 code:213 userInfo:v24];

    v25 = auto_unlock_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100068E58();
    }

    [(SDAutoUnlockKeySession *)self sendKeyExchangeRequestWithData:0 error:v14];
    [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
  }

  else
  {
    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100068E94();
    }

    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100068F0C();
    }

    v12 = SFAutoUnlockErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"AWDL Info Failure";
    v13 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v14 = [NSError errorWithDomain:v12 code:114 userInfo:v13];
  }

  [(SDAutoUnlockKeySession *)self notifyDelegateWithError:v14];

  v26 = 0;
LABEL_39:

  return v26;
}

- (void)handleAuthPromptRequest:(id)a3
{
  v4 = a3;
  v5 = [[SDAutoUnlockAuthPromptRequest alloc] initWithData:v4];
  if ([(SDAutoUnlockAuthPromptRequest *)v5 hasIconHash])
  {
    [(SDAutoUnlockKeySession *)self logAutoUnlockStart];
    [(SDAutoUnlockKeySession *)self declareSystemActivityAssertion];
    [(SDAutoUnlockAuthSession *)self setUseAKSToken:0];
    [(SDAutoUnlockAuthSession *)self setAttemptType:2];
    v6 = [(SDAutoUnlockAuthPromptRequest *)v5 appName];
    [(SDAutoUnlockAuthSession *)self setAppName:v6];

    [(SDAutoUnlockKeySession *)self setUserRequestRequired:1];
    v7 = [(SDAutoUnlockAuthPromptRequest *)v5 navBarTitle];
    [(SDAutoUnlockAuthSession *)self setNavBarTitle:v7];

    v8 = objc_alloc_init(SDAutoUnlockMacIconCache);
    [(SDAutoUnlockKeySession *)self setIconCache:v8];

    if (sub_10000C1F8(@"AUDisableIconCache", 0))
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Image caching disabled", v20, 2u);
      }
    }

    else
    {
      v13 = [(SDAutoUnlockKeySession *)self iconCache];
      v14 = [(SDAutoUnlockAuthPromptRequest *)v5 iconHash];
      v10 = [v13 iconImageDataForHash:v14];

      if (v10)
      {
        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Prompting with cached image", v20, 2u);
        }

        [(SDAutoUnlockKeySession *)self setUsingImageCache:1];
        v16 = [[NSMutableData alloc] initWithData:v10];
        [(SDAutoUnlockKeySession *)self setAuthPromptIconData:v16];

        [(SDAutoUnlockKeySession *)self promptForApproval];
        goto LABEL_14;
      }
    }

    [(SDAutoUnlockKeySession *)self setNeedsImageData:1];
    v10 = 0;
LABEL_14:
    v17 = [(SDAutoUnlockAuthPromptRequest *)v5 iconHash];
    [(SDAutoUnlockKeySession *)self setAuthPromptIconHash:v17];

    v18 = [(SDAutoUnlockAuthPromptRequest *)v5 appName];
    [(SDAutoUnlockAuthSession *)self setAppName:v18];

    v19 = self;
    objc_sync_enter(v19);
    if ([(SDAutoUnlockKeySession *)v19 shouldDelayWorkDueToPowerAssertion])
    {
      [(SDAutoUnlockKeySession *)v19 setDidDelayWorkDueToPowerAssertion:1];
      objc_sync_exit(v19);
    }

    else
    {
      objc_sync_exit(v19);

      [(SDAutoUnlockKeySession *)v19 beginAKSSession];
    }

    goto LABEL_17;
  }

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100068F8C();
  }

  v21 = NSLocalizedDescriptionKey;
  v22 = @"Auth prompt request missing info";
  v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v10 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:114 userInfo:v12];

  [(SDAutoUnlockKeySession *)self sendAuthPromptResponseWithData:0 error:v10];
LABEL_17:
}

- (void)handleAuthPromptImageData:(id)a3
{
  v4 = a3;
  v5 = [[SDAutoUnlockAuthPromptImageData alloc] initWithData:v4];

  if (![(SDAutoUnlockAuthPromptImageData *)v5 hasImageData])
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100069014();
    }

    goto LABEL_7;
  }

  if ([(SDAutoUnlockKeySession *)self usingImageCache])
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100069084();
    }

LABEL_7:

    goto LABEL_8;
  }

  v7 = [(SDAutoUnlockKeySession *)self authPromptIconData];

  if (!v7)
  {
    v8 = objc_alloc_init(NSMutableData);
    [(SDAutoUnlockKeySession *)self setAuthPromptIconData:v8];
  }

  v9 = [(SDAutoUnlockKeySession *)self authPromptIconData];
  v10 = [(SDAutoUnlockAuthPromptImageData *)v5 imageData];
  [v9 appendData:v10];

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SDAutoUnlockAuthPromptImageData *)v5 imageData];
    v13 = [v12 length];
    v14 = [(SDAutoUnlockKeySession *)self authPromptIconData];
    v15 = 134218240;
    v16 = v13;
    v17 = 2048;
    v18 = [v14 length];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received image data (length: %ld, total: %ld)", &v15, 0x16u);
  }

  if ([(SDAutoUnlockAuthPromptImageData *)v5 finalMessage])
  {
    [(SDAutoUnlockKeySession *)self promptForApproval];
  }

LABEL_8:
}

- (void)handleSessionKeyExchangeResponse:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = [[SDUnlockSessionKeyExchangeResponse alloc] initWithData:v4];

  if ([(SDUnlockSessionKeyExchangeResponse *)v5 hasKey])
  {
    [(SDAutoUnlockKeySession *)self setExchangeResponse:v5];
    if ([(SDUnlockSessionKeyExchangeResponse *)v5 version]>= 2 && [(SDAutoUnlockKeySession *)self userRequestRequired])
    {
      [(SDAutoUnlockKeySession *)self createAuthTokenIfReady];
    }

    else
    {
      [(SDAutoUnlockKeySession *)self createWiFiRequest];
    }
  }

  else
  {
    if ([(SDUnlockSessionKeyExchangeResponse *)v5 hasKeyFailed]&& [(SDUnlockSessionKeyExchangeResponse *)v5 keyFailed])
    {
      v6 = 101;
    }

    else
    {
      v6 = 103;
    }

    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000690C0();
    }

    v8 = SFAutoUnlockErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Exchange response failed";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:v8 code:v6 userInfo:v9];

    [(SDAutoUnlockKeySession *)self sendSessionAuthToken:0 error:v10];
    [(SDAutoUnlockKeySession *)self notifyDelegateWithError:v10];
  }
}

- (void)createAuthTokenIfReady
{
  v4 = [(SDAutoUnlockKeySession *)self exchangeResponse];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [(SDAutoUnlockKeySession *)self userRequestRequired];
  if (v5)
  {
    v2 = [(SDAutoUnlockKeySession *)self unlockAllowed];
    if ([v2 BOOLValue])
    {

LABEL_22:
      v19 = [(SDAutoUnlockPairingSession *)self aksSession];
      v20 = [(SDAutoUnlockKeySession *)self exchangeResponse];
      v21 = [v20 key];
      v42 = 0;
      v22 = [v19 stepSessionWithData:v21 outputData:&v42];
      v13 = v42;

      if (v22)
      {
        v23 = [(SDAutoUnlockKeySession *)self exchangeResponse];
        if ([v23 version] < 2)
        {
        }

        else
        {
          v24 = [(SDAutoUnlockKeySession *)self userRequestRequired];

          if (v24)
          {
            v25 = auto_unlock_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              sub_10006921C();
            }

            [(SDAutoUnlockKeySession *)self sendSessionAuthToken:v13 error:0];
            goto LABEL_42;
          }
        }

        v30 = [(SDAutoUnlockPairingSession *)self aksSession];
        v31 = [v30 generateSessionToken];
        [(SDAutoUnlockAuthSession *)self setSessionRangingKey:v31];

        v32 = [(SDAutoUnlockAuthSession *)self sessionRangingKey];

        if (v32)
        {
          v33 = [(SDAutoUnlockAuthSession *)self remoteAWDLInfo];
          v34 = [(SDAutoUnlockAuthSession *)self peerListFromAWDLInfo:v33];
          [(SDAutoUnlockKeySession *)self setPeerList:v34];

          v17 = objc_opt_new();
          v35 = [(SDAutoUnlockKeySession *)self peerList];
          v36 = [v35 firstObject];
          [v17 setNiRangingPeer:v36];

          v37 = +[SDAutoUnlockWiFiManager sharedManager];
          v38 = [(SDAutoUnlockAuthSession *)self wifiRequest];
          [v37 updateWiFiRequest:v38 setRangingPeer:v17];

          v39 = auto_unlock_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            sub_10006916C();
          }

          [(SDAutoUnlockKeySession *)self sendSessionAuthToken:v13 error:0];
          goto LABEL_41;
        }

        v40 = auto_unlock_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000691E0();
        }

        v27 = SFAutoUnlockErrorDomain;
        v47 = NSLocalizedDescriptionKey;
        v48 = @"Failed to generate ranging session token";
        v28 = &v48;
        v29 = &v47;
      }

      else
      {
        v26 = auto_unlock_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100069130();
        }

        v27 = SFAutoUnlockErrorDomain;
        v45 = NSLocalizedDescriptionKey;
        v46 = @"Creating auth token failed";
        v28 = &v46;
        v29 = &v45;
      }

      v41 = [NSDictionary dictionaryWithObjects:v28 forKeys:v29 count:1];
      v17 = [NSError errorWithDomain:v27 code:101 userInfo:v41];

LABEL_40:
      [(SDAutoUnlockKeySession *)self sendSessionAuthToken:0 error:v17];
      [(SDAutoUnlockKeySession *)self notifyDelegateWithError:v17];
LABEL_41:

LABEL_42:
      return;
    }

    if ([(SDAutoUnlockKeySession *)self userRequestRequired])
    {

      goto LABEL_9;
    }
  }

  else if ([(SDAutoUnlockKeySession *)self userRequestRequired])
  {
LABEL_9:

    goto LABEL_10;
  }

  v18 = [(SDAutoUnlockKeySession *)self wifiRequestStartedHandler];

  if (v5)
  {
  }

  if (v18)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ([(SDAutoUnlockKeySession *)self userRequestRequired])
  {
    v6 = [(SDAutoUnlockKeySession *)self unlockAllowed];
    if (v6)
    {
      v7 = v6;
      v8 = [(SDAutoUnlockKeySession *)self unlockAllowed];
      v9 = [v8 BOOLValue];

      if ((v9 & 1) == 0)
      {
        v10 = [(SDAutoUnlockKeySession *)self errorRequestingUnlock];
        v11 = @"Error posting authorization request";
        if (v10)
        {
          v12 = 180;
        }

        else
        {
          v11 = @"User denied authorization request";
          v12 = 179;
        }

        v13 = v11;
        v14 = auto_unlock_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100069290();
        }

        v15 = SFAutoUnlockErrorDomain;
        v43 = NSLocalizedDescriptionKey;
        v44 = v13;
        v16 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v17 = [NSError errorWithDomain:v15 code:v12 userInfo:v16];

        goto LABEL_40;
      }
    }
  }
}

- (void)handleUnlockConfirmation:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockSessionConfirmation alloc] initWithData:v4];

  if ([(SDUnlockSessionConfirmation *)v5 success])
  {
    [(SDAutoUnlockKeySession *)self setSuppressWatchNotification:[(SDUnlockSessionConfirmation *)v5 suppressNotification]];
    if ([(SDUnlockSessionConfirmation *)v5 hasSupportsACK]&& [(SDUnlockSessionConfirmation *)v5 supportsACK])
    {
      [(SDAutoUnlockKeySession *)self sendConfirmationACK];
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v11 = [(SDAutoUnlockPairingSession *)self aksSession];
    -[SDAutoUnlockAuthSession setAksSuccess:](self, "setAksSuccess:", [v11 confirmSession]);

    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(SDAutoUnlockAuthSession *)self aksSuccess];
      v14 = @"NO";
      if (v13)
      {
        v14 = @"YES";
      }

      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session confirmed %@", buf, 0xCu);
    }

    if (![(SDAutoUnlockKeySession *)self usingImageCache])
    {
      v15 = [(SDAutoUnlockKeySession *)self authPromptIconData];
      if (v15)
      {
        v16 = v15;
        v17 = [(SDAutoUnlockKeySession *)self authPromptIconHash];

        if (v17)
        {
          v18 = auto_unlock_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [(SDAutoUnlockAuthSession *)self appName];
            *buf = 138412290;
            v27 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Caching image for app %@", buf, 0xCu);
          }

          iconCache = self->_iconCache;
          v21 = [(SDAutoUnlockKeySession *)self authPromptIconData];
          v22 = [(SDAutoUnlockKeySession *)self authPromptIconHash];
          v23 = [(SDAutoUnlockAuthSession *)self appName];
          [(SDAutoUnlockMacIconCache *)iconCache cacheIconImageData:v21 hash:v22 appName:v23];
        }
      }
    }

    if ((v6 & 1) == 0)
    {
      [(SDAutoUnlockKeySession *)self notifyDelegateWithError:0];
    }
  }

  else
  {
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100069300();
    }

    v8 = SFAutoUnlockErrorDomain;
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Confirmation failed";
    v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v10 = [NSError errorWithDomain:v8 code:101 userInfo:v9];
    [(SDAutoUnlockKeySession *)self notifyDelegateWithError:v10];
  }
}

- (void)handleCleanUpAWDL
{
  v3 = +[SDAutoUnlockWiFiManager sharedManager];
  v4 = [(SDAutoUnlockAuthSession *)self wifiRequest];
  [v3 cancelWiFiRequest:v4];

  [(SDAutoUnlockAuthSession *)self setWifiRequest:0];
}

- (void)sendAWDLInfoWithKeyData:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    if (-[SDAutoUnlockKeySession wifiEnabled](self, "wifiEnabled") || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 wirelessEnabled], v8, (v9 & 1) != 0))
    {
      v7 = 0;
    }

    else
    {
      v10 = auto_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10006933C();
      }

      v11 = SFAutoUnlockErrorDomain;
      v26 = NSLocalizedDescriptionKey;
      v27 = @"WiFi interface disabled on Watch";
      v12 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v7 = [NSError errorWithDomain:v11 code:199 userInfo:v12];
    }
  }

  v13 = [(SDAutoUnlockAuthSession *)self awdlInfoData];
  if (!(v13 | v7))
  {
    v14 = auto_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100069378();
    }

    v15 = SFAutoUnlockErrorDomain;
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Failed to serialize AWDL Info";
    v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v7 = [NSError errorWithDomain:v15 code:114 userInfo:v16];
  }

  v17 = auto_unlock_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending SDAutoUnlockAWDLInfo", buf, 2u);
  }

  v18 = objc_alloc_init(SDAutoUnlockAWDLInfo);
  [(SDAutoUnlockAWDLInfo *)v18 setVersion:3];
  [(SDAutoUnlockAWDLInfo *)v18 setAwdlInfo:v13];
  [(SDAutoUnlockAWDLInfo *)v18 setUseToken:[(SDAutoUnlockAuthSession *)self useAKSToken]];
  [(SDAutoUnlockAWDLInfo *)v18 setKeyData:v6];
  [(SDAutoUnlockAWDLInfo *)v18 setSupportsConfirmationACK:1];
  if (v7)
  {
    -[SDAutoUnlockAWDLInfo setErrorCode:](v18, "setErrorCode:", [v7 code]);
  }

  v19 = [(SDAutoUnlockAWDLInfo *)v18 data];
  v20 = [(SDAutoUnlockPairingSession *)self wrapPayload:v19 withType:301];

  v21 = [(SDAutoUnlockAuthSession *)self bleDevice];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000672E4;
  v22[3] = &unk_1008CDF90;
  v22[4] = self;
  [(SDAutoUnlockAuthSession *)self sendData:v20 bleDevice:v21 direct:1 completionHandler:v22];

  if (v7)
  {
    if (!v13)
    {
      [(SDAutoUnlockKeySession *)self notifyDelegateWithError:v7];
    }
  }

  else
  {
    [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(15)];
  }

  kdebug_trace();
}

- (void)sendAuthPromptResponseWithData:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SDAutoUnlockAuthPromptResponse);
  [(SDAutoUnlockAuthPromptResponse *)v8 setVersion:1];
  [(SDAutoUnlockAuthPromptResponse *)v8 setKeyData:v7];

  [(SDAutoUnlockAuthPromptResponse *)v8 setNeedsImageData:[(SDAutoUnlockKeySession *)self needsImageData]];
  if (v6)
  {
    -[SDAutoUnlockAuthPromptResponse setErrorCode:](v8, "setErrorCode:", [v6 code]);
  }

  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending SDAutoUnlockAuthPromptResponse", buf, 2u);
  }

  v10 = [(SDAutoUnlockAuthPromptResponse *)v8 data];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000675B0;
  v11[3] = &unk_1008CDF90;
  v11[4] = self;
  [(SDAutoUnlockAuthSession *)self sendData:v10 type:13 errorHandler:v11];

  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(15)];
}

- (void)sendKeyExchangeRequestWithData:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SDUnlockSessionKeyExchangeRequest);
  [(SDUnlockSessionKeyExchangeRequest *)v8 setVersion:1];
  [(SDUnlockSessionKeyExchangeRequest *)v8 setUsingRecord:[(SDAutoUnlockAuthSession *)self useAKSToken]^ 1];
  if (v6)
  {
    [(SDUnlockSessionKeyExchangeRequest *)v8 setKey:v6];
  }

  if (v7)
  {
    -[SDUnlockSessionKeyExchangeRequest setErrorCode:](v8, "setErrorCode:", [v7 code]);
  }

  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending SDUnlockSessionKeyExchangeRequest", buf, 2u);
  }

  v10 = [(SDUnlockSessionKeyExchangeRequest *)v8 data];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100067870;
  v11[3] = &unk_1008CDF90;
  v11[4] = self;
  [(SDAutoUnlockAuthSession *)self sendData:v10 type:7 errorHandler:v11];

  kdebug_trace();
  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(15)];
}

- (void)sendSessionAuthToken:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setVersion:2];
  if (v6)
  {
    [v8 setAuthToken:v6];
  }

  if (v7)
  {
    [v8 setErrorCode:{objc_msgSend(v7, "code")}];
  }

  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending SDUnlockSessionAuthToken", buf, 2u);
  }

  v10 = [v8 data];
  v11 = [(SDAutoUnlockPairingSession *)self wrapPayload:v10 withType:9];

  v12 = [(SDAutoUnlockAuthSession *)self bleDevice];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100067B74;
  v15[3] = &unk_1008CDFB8;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [(SDAutoUnlockAuthSession *)self sendData:v11 bleDevice:v12 direct:1 completionHandler:v15];

  kdebug_trace();
  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(15)];
}

- (void)sendConfirmationACK
{
  v3 = objc_opt_new();
  [v3 setVersion:1];
  [v3 setSuccess:1];
  [(SDAutoUnlockKeySession *)self setShouldAlertOnNotify:1];
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending SDAutoUnlockSessionConfirmationACK", buf, 2u);
  }

  v5 = [v3 data];
  v6 = [(SDAutoUnlockPairingSession *)self wrapPayload:v5 withType:11];

  v7 = [(SDAutoUnlockAuthSession *)self bleDevice];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100067EC0;
  v8[3] = &unk_1008CDF90;
  v8[4] = self;
  [(SDAutoUnlockAuthSession *)self sendData:v6 bleDevice:v7 direct:1 completionHandler:v8];

  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(2)];
}

- (void)declareSystemActivityAssertion
{
  [(SDAutoUnlockKeySession *)self setShouldDelayWorkDueToPowerAssertion:0];
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  if (self->_powerAssertionID)
  {
    v5 = auto_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Grabbing assertion we already have", &v13, 2u);
    }
  }

  else
  {
    self->_powerAssertionState = 1;
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Grabbing system activity assertion for Auto Unlock key session", &v13, 2u);
    }

    if (IOPMAssertionDeclareSystemActivity() && self->_powerAssertionState)
    {
      v7 = auto_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100069494();
      }

      self->_powerAssertionID = 0;
      [(SDAutoUnlockKeySession *)self releaseIdleSleepAssertion];
    }

    else
    {
      v8 = auto_unlock_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        powerAssertionID = self->_powerAssertionID;
        powerAssertionState = self->_powerAssertionState;
        v13 = 134218240;
        v14 = powerAssertionID;
        v15 = 1024;
        v16 = powerAssertionState;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Power assertion (assertion %ld, state %d)", &v13, 0x12u);
      }

      if (self->_powerAssertionState)
      {
        [(SDAutoUnlockKeySession *)self setShouldDelayWorkDueToPowerAssertion:1];
        v11 = auto_unlock_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = self->_powerAssertionState;
          v13 = 67109120;
          LODWORD(v14) = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "System wake scheduled for key session (state %d)", &v13, 8u);
        }
      }

      [(SDAutoUnlockKeySession *)self restartAssertionTimer];
    }
  }
}

- (void)releaseIdleSleepAssertion
{
  if (self->_powerAssertionID)
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing key power assertion", v5, 2u);
    }

    IOPMAssertionRelease(self->_powerAssertionID);
    self->_powerAssertionID = 0;
  }

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)restartAssertionTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting assertion timer", buf, 2u);
  }

  v4 = [(SDAutoUnlockKeySession *)self assertionTimer];

  if (!v4)
  {
    v5 = [(SDAutoUnlockPairingSession *)self sessionQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100068388;
    v10[3] = &unk_1008CDEA0;
    v10[4] = self;
    v6 = sub_1001F0548(0, v5, v10);
    [(SDAutoUnlockKeySession *)self setAssertionTimer:v6];

    v7 = [(SDAutoUnlockKeySession *)self assertionTimer];
    dispatch_resume(v7);
  }

  v8 = [(SDAutoUnlockKeySession *)self assertionTimer];
  v9 = sub_1001F0530(20.0);
  sub_1001F05F0(v8, v9);
}

- (void)invalidateAssertionTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating aggressive advertising timer", v6, 2u);
  }

  v4 = [(SDAutoUnlockKeySession *)self assertionTimer];

  if (v4)
  {
    v5 = [(SDAutoUnlockKeySession *)self assertionTimer];
    dispatch_source_cancel(v5);

    [(SDAutoUnlockKeySession *)self setAssertionTimer:0];
  }
}

- (void)logAutoUnlockStart
{
  v3 = sub_100111F74(1);
  v4 = [(SDAutoUnlockAuthSession *)self protocol];
  v5 = @"Mac";
  if (v4 == 2)
  {
    v5 = @"Phone";
  }

  v12[0] = @"Start";
  v11[0] = @"State";
  v11[1] = @"DeviceID";
  v6 = v5;
  v7 = [(SDAutoUnlockAuthSession *)self bleDevice];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  v11[2] = @"UnlockPeerType";
  v12[1] = v9;
  v12[2] = v6;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  SFPowerLogTimeSensitiveEvent();
}

- (void)logAutoUnlockEnd
{
  v3 = sub_100111F74(1);
  v4 = [(SDAutoUnlockAuthSession *)self protocol];
  v5 = @"Mac";
  if (v4 == 2)
  {
    v5 = @"Phone";
  }

  v13[0] = @"End";
  v12[0] = @"State";
  v12[1] = @"DeviceID";
  v6 = v5;
  v7 = [(SDAutoUnlockAuthSession *)self bleDevice];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  v13[1] = v9;
  v13[2] = v6;
  v12[2] = @"UnlockPeerType";
  v12[3] = @"Success";
  v10 = [NSNumber numberWithBool:[(SDAutoUnlockKeySession *)self alerted]];
  v13[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  SFPowerLogTimeSensitiveEvent();
}

@end