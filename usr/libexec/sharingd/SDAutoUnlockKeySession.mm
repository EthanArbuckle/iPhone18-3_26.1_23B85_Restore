@interface SDAutoUnlockKeySession
- (BOOL)handleAWDLInfo:(id)info;
- (BOOL)keyInState;
- (SDAutoUnlockKeySession)initWithBLEDevice:(id)device sessionID:(id)d;
- (void)_invalidate;
- (void)addObservers;
- (void)alertOfUnlock;
- (void)createAuthTokenIfReady;
- (void)createWiFiRequest;
- (void)declareSystemActivityAssertion;
- (void)deviceDisconnected:(id)disconnected;
- (void)handleAuthPromptImageData:(id)data;
- (void)handleAuthPromptRequest:(id)request;
- (void)handleCleanUpAWDL;
- (void)handleMessageWithWrapper:(id)wrapper;
- (void)handleSessionKeyExchangeResponse:(id)response;
- (void)handleUnlockConfirmation:(id)confirmation;
- (void)invalidate;
- (void)invalidateAssertionTimer;
- (void)invalidateOnQueue;
- (void)logAutoUnlockEnd;
- (void)logAutoUnlockStart;
- (void)notifyDelegateWithError:(id)error;
- (void)nq_awdlNetworkStarted;
- (void)nq_handleWiFiRequestInvalidated;
- (void)nq_handleWiFiRequestStartedWithStartAWDLHandler:(id)handler;
- (void)postBeganUnlockingNotification;
- (void)releaseIdleSleepAssertion;
- (void)removeObservers;
- (void)restartAssertionTimer;
- (void)sendAWDLInfoWithKeyData:(id)data error:(id)error;
- (void)sendAuthPromptResponseWithData:(id)data error:(id)error;
- (void)sendConfirmationACK;
- (void)sendKeyExchangeRequestWithData:(id)data error:(id)error;
- (void)sendSessionAuthToken:(id)token error:(id)error;
- (void)systemIsActive:(id)active;
@end

@implementation SDAutoUnlockKeySession

- (SDAutoUnlockKeySession)initWithBLEDevice:(id)device sessionID:(id)d
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = SDAutoUnlockKeySession;
  v7 = [(SDAutoUnlockAuthSession *)&v21 initWithDevice:0 sessionID:d bleDevice:deviceCopy];
  v8 = v7;
  if (v7)
  {
    v7->_powerAssertionID = 0;
    v9 = +[SDAutoUnlockTransport sharedTransport];
    identifier = [deviceCopy identifier];
    v11 = [v9 cachedIDSDeviceIDsForBluetoothID:identifier];
    firstObject = [v11 firstObject];
    [(SDAutoUnlockPairingSession *)v8 setDeviceID:firstObject];

    deviceID = [(SDAutoUnlockPairingSession *)v8 deviceID];

    if (!deviceID)
    {
      v14 = +[SDAutoUnlockTransport sharedTransport];
      identifier2 = [deviceCopy identifier];
      v16 = [v14 idsDeviceForBluetoothID:identifier2];

      uniqueID = [v16 uniqueID];
      [(SDAutoUnlockPairingSession *)v8 setDeviceID:uniqueID];
    }

    [(SDAutoUnlockKeySession *)v8 addObservers];
    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      deviceID2 = [(SDAutoUnlockPairingSession *)v8 deviceID];
      *buf = 138412290;
      v23 = deviceID2;
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
    motionDetector = [(SDAutoUnlockKeySession *)self motionDetector];

    if (motionDetector)
    {
      motionDetector2 = [(SDAutoUnlockKeySession *)self motionDetector];
      [motionDetector2 invalidate];

      [(SDAutoUnlockKeySession *)self setMotionDetector:0];
    }

    v5 = +[SDAutoUnlockWiFiManager sharedManager];
    wifiRequest = [(SDAutoUnlockAuthSession *)self wifiRequest];
    [v5 cancelWiFiRequest:wifiRequest];

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
    sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064140;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(sessionQueue, block);
  }
}

- (BOOL)keyInState
{
  if ([(SDAutoUnlockAuthSession *)self protocol]!= 2)
  {
    return 1;
  }

  v2 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagDisabled = [v2 deviceKeyBagDisabled];

  v4 = +[SDStatusMonitor sharedMonitor];
  watchWristState = [v4 watchWristState];

  if ((deviceKeyBagDisabled & 1) == 0 && watchWristState != 1)
  {
    return 1;
  }

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"YES";
    if (deviceKeyBagDisabled)
    {
      v9 = @"NO";
    }

    else
    {
      v9 = @"YES";
    }

    if (watchWristState == 1)
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

- (void)notifyDelegateWithError:(id)error
{
  errorCopy = error;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = errorCopy;
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

    delegate = [(SDAutoUnlockPairingSession *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(SDAutoUnlockPairingSession *)self delegate];
      [delegate2 session:self didCompleteWithError:errorCopy];
    }
  }
}

- (void)postBeganUnlockingNotification
{
  if ([(SDAutoUnlockAuthSession *)self isAuthenticatingForSiri])
  {
    v4 = +[SDAutoUnlockNotificationsManager sharedManager];
    deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
    [v4 showAuthenticatedSiriForDeviceID:deviceID];
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

- (void)deviceDisconnected:(id)disconnected
{
  userInfo = [disconnected userInfo];
  v5 = [userInfo objectForKeyedSubscript:SFBluetoothNotificationKeyPeerDevice];

  identifier = [v5 identifier];
  bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
  identifier2 = [bleDevice identifier];
  v9 = [identifier isEqual:identifier2];

  if (v9)
  {
    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [v5 identifier];
      uUIDString = [identifier3 UUIDString];
      *buf = 138412290;
      v19 = uUIDString;
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

- (void)systemIsActive:(id)active
{
  activeCopy = active;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "System is active", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  didDelayWorkDueToPowerAssertion = [(SDAutoUnlockKeySession *)selfCopy didDelayWorkDueToPowerAssertion];
  if (didDelayWorkDueToPowerAssertion)
  {
    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Beginning delayed work", buf, 2u);
    }

    [(SDAutoUnlockKeySession *)selfCopy setDidDelayWorkDueToPowerAssertion:0];
  }

  [(SDAutoUnlockKeySession *)selfCopy setShouldDelayWorkDueToPowerAssertion:0];
  objc_sync_exit(selfCopy);

  if (didDelayWorkDueToPowerAssertion)
  {
    v9 = SFHighPriorityQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006495C;
    block[3] = &unk_1008CDEA0;
    block[4] = selfCopy;
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
    deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
    [v5 showUnlockedByDeviceNotificationWithDeviceID:deviceID];
  }
}

- (void)createWiFiRequest
{
  v3 = +[NSDate date];
  [(SDAutoUnlockAuthSession *)self setAwdlStart:v3];

  remoteAWDLInfo = [(SDAutoUnlockAuthSession *)self remoteAWDLInfo];
  v5 = [NSMutableDictionary dictionaryWithDictionary:remoteAWDLInfo];

  localAWDLInfo = [(SDAutoUnlockAuthSession *)self localAWDLInfo];
  [v5 setObject:localAWDLInfo forKeyedSubscript:@"AWDL_INFO_SELF"];

  v7 = +[SDNearbyAgent sharedNearbyAgent];
  dispatchQueue = [v7 dispatchQueue];

  objc_initWeak(location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100064D74;
  v29[3] = &unk_1008CDEF0;
  v9 = dispatchQueue;
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
  selfCopy = self;
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
  wifiRequest = [(SDAutoUnlockAuthSession *)self wifiRequest];
  [v17 scheduleWiFiRequest:wifiRequest];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v28);

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

- (void)nq_awdlNetworkStarted
{
  v3 = +[SDNearbyAgent sharedNearbyAgent];
  dispatchQueue = [v3 dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  kdebug_trace();
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[SDStatusMonitor sharedMonitor];
    awdlInfo = [v6 awdlInfo];
    v12 = 138412290;
    v13 = awdlInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AWDL network up with info %@", &v12, 0xCu);
  }

  v8 = auto_unlock_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSDate date];
    awdlStart = [(SDAutoUnlockAuthSession *)self awdlStart];
    [v9 timeIntervalSinceDate:awdlStart];
    v12 = 134217984;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Automation: AWDL started %0.2f", &v12, 0xCu);
  }
}

- (void)nq_handleWiFiRequestStartedWithStartAWDLHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[SDNearbyAgent sharedNearbyAgent];
  dispatchQueue = [v5 dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  [(SDAutoUnlockKeySession *)self setWifiRequestStartedHandler:handlerCopy];

  [(SDAutoUnlockKeySession *)self createAuthTokenIfReady];
}

- (void)nq_handleWiFiRequestInvalidated
{
  v2 = +[SDNearbyAgent sharedNearbyAgent];
  dispatchQueue = [v2 dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100068E1C();
  }
}

- (void)handleMessageWithWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  messageType = [wrapperCopy messageType];
  if (messageType > 13)
  {
    switch(messageType)
    {
      case 14:
        v31 = auto_unlock_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockAuthPromptImageData", &v36, 2u);
        }

        payload = [wrapperCopy payload];
        [(SDAutoUnlockKeySession *)self handleAuthPromptImageData:payload];

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

        if ([wrapperCopy hasSenderID])
        {
          v17 = [NSUUID alloc];
          senderID = [wrapperCopy senderID];
          v19 = senderID;
          v20 = [v17 initWithUUIDBytes:{objc_msgSend(senderID, "bytes")}];
          uUIDString = [v20 UUIDString];
          [(SDAutoUnlockPairingSession *)self setDeviceID:uUIDString];

          v22 = auto_unlock_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
            v36 = 138412290;
            v37 = deviceID;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Key session received device id: %@", &v36, 0xCu);
          }
        }

        v24 = auto_unlock_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          sessionID = [(SDAutoUnlockPairingSession *)self sessionID];
          v36 = 138412290;
          v37 = sessionID;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypeAWDLInfo %@", &v36, 0xCu);
        }

        kdebug_trace();
        payload2 = [wrapperCopy payload];
        v27 = [(SDAutoUnlockKeySession *)self handleAWDLInfo:payload2];

        if (v27)
        {
          [(SDAutoUnlockKeySession *)self postBeganUnlockingNotification];
          selfCopy = self;
          objc_sync_enter(selfCopy);
          if ([(SDAutoUnlockKeySession *)selfCopy shouldDelayWorkDueToPowerAssertion])
          {
            [(SDAutoUnlockKeySession *)selfCopy setDidDelayWorkDueToPowerAssertion:1];
            objc_sync_exit(selfCopy);
          }

          else
          {
            objc_sync_exit(selfCopy);

            [(SDAutoUnlockKeySession *)selfCopy beginAKSSession];
          }
        }

        break;
    }
  }

  else
  {
    switch(messageType)
    {
      case 8:
        v29 = auto_unlock_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSessionKeyExchangeResponse", &v36, 2u);
        }

        [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
        payload3 = [wrapperCopy payload];
        [(SDAutoUnlockKeySession *)self handleSessionKeyExchangeResponse:payload3];

        break;
      case 10:
        v33 = auto_unlock_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received SDUnlockSessionConfirmation", &v36, 2u);
        }

        [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
        payload4 = [wrapperCopy payload];
        [(SDAutoUnlockKeySession *)self handleUnlockConfirmation:payload4];

        break;
      case 12:
        sub_100111BA4(1);
        v6 = auto_unlock_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished setting in progress", &v36, 2u);
        }

        if ([wrapperCopy hasSenderID])
        {
          v7 = [NSUUID alloc];
          senderID2 = [wrapperCopy senderID];
          v9 = senderID2;
          v10 = [v7 initWithUUIDBytes:{objc_msgSend(senderID2, "bytes")}];
          uUIDString2 = [v10 UUIDString];
          [(SDAutoUnlockPairingSession *)self setDeviceID:uUIDString2];

          v12 = auto_unlock_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
            v36 = 138412290;
            v37 = deviceID2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Key session received device id: %@", &v36, 0xCu);
          }
        }

        v14 = auto_unlock_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockAuthPromptRequest", &v36, 2u);
        }

        payload5 = [wrapperCopy payload];
        [(SDAutoUnlockKeySession *)self handleAuthPromptRequest:payload5];

        break;
    }
  }
}

- (BOOL)handleAWDLInfo:(id)info
{
  infoCopy = info;
  v5 = [[SDAutoUnlockAWDLInfo alloc] initWithData:infoCopy];

  awdlInfo = [(SDAutoUnlockAWDLInfo *)v5 awdlInfo];
  v7 = sub_1001114F4(awdlInfo);

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
      version = [(SDAutoUnlockAWDLInfo *)v5 version];
      v8 = auto_unlock_log();
      v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (version == 4)
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
      useToken = [(SDAutoUnlockAWDLInfo *)v5 useToken];
    }

    else
    {
      useToken = 0;
    }

    [(SDAutoUnlockAuthSession *)self setUseAKSToken:useToken];
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

    appName = [(SDAutoUnlockAWDLInfo *)v5 appName];
    [(SDAutoUnlockAuthSession *)self setAppName:appName];

    [(SDAutoUnlockAWDLInfo *)v5 phoneUnlockDate];
    v20 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [(SDAutoUnlockKeySession *)self setPhoneUnlockDate:v20];

    if ([(SDAutoUnlockAWDLInfo *)v5 hasIsAuthenticatingForSiri])
    {
      isAuthenticatingForSiri = [(SDAutoUnlockAWDLInfo *)v5 isAuthenticatingForSiri];
    }

    else
    {
      isAuthenticatingForSiri = 0;
    }

    [(SDAutoUnlockKeySession *)self setAuthenticatingForSiri:isAuthenticatingForSiri];
    if ([(SDAutoUnlockAWDLInfo *)v5 hasSkipMotionCheck])
    {
      skipMotionCheck = [(SDAutoUnlockAWDLInfo *)v5 skipMotionCheck];
    }

    else
    {
      skipMotionCheck = 0;
    }

    [(SDAutoUnlockAuthSession *)self setSkipMotionCheck:skipMotionCheck];
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

- (void)handleAuthPromptRequest:(id)request
{
  requestCopy = request;
  v5 = [[SDAutoUnlockAuthPromptRequest alloc] initWithData:requestCopy];
  if ([(SDAutoUnlockAuthPromptRequest *)v5 hasIconHash])
  {
    [(SDAutoUnlockKeySession *)self logAutoUnlockStart];
    [(SDAutoUnlockKeySession *)self declareSystemActivityAssertion];
    [(SDAutoUnlockAuthSession *)self setUseAKSToken:0];
    [(SDAutoUnlockAuthSession *)self setAttemptType:2];
    appName = [(SDAutoUnlockAuthPromptRequest *)v5 appName];
    [(SDAutoUnlockAuthSession *)self setAppName:appName];

    [(SDAutoUnlockKeySession *)self setUserRequestRequired:1];
    navBarTitle = [(SDAutoUnlockAuthPromptRequest *)v5 navBarTitle];
    [(SDAutoUnlockAuthSession *)self setNavBarTitle:navBarTitle];

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
      iconCache = [(SDAutoUnlockKeySession *)self iconCache];
      iconHash = [(SDAutoUnlockAuthPromptRequest *)v5 iconHash];
      v10 = [iconCache iconImageDataForHash:iconHash];

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
    iconHash2 = [(SDAutoUnlockAuthPromptRequest *)v5 iconHash];
    [(SDAutoUnlockKeySession *)self setAuthPromptIconHash:iconHash2];

    appName2 = [(SDAutoUnlockAuthPromptRequest *)v5 appName];
    [(SDAutoUnlockAuthSession *)self setAppName:appName2];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(SDAutoUnlockKeySession *)selfCopy shouldDelayWorkDueToPowerAssertion])
    {
      [(SDAutoUnlockKeySession *)selfCopy setDidDelayWorkDueToPowerAssertion:1];
      objc_sync_exit(selfCopy);
    }

    else
    {
      objc_sync_exit(selfCopy);

      [(SDAutoUnlockKeySession *)selfCopy beginAKSSession];
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

- (void)handleAuthPromptImageData:(id)data
{
  dataCopy = data;
  v5 = [[SDAutoUnlockAuthPromptImageData alloc] initWithData:dataCopy];

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

  authPromptIconData = [(SDAutoUnlockKeySession *)self authPromptIconData];

  if (!authPromptIconData)
  {
    v8 = objc_alloc_init(NSMutableData);
    [(SDAutoUnlockKeySession *)self setAuthPromptIconData:v8];
  }

  authPromptIconData2 = [(SDAutoUnlockKeySession *)self authPromptIconData];
  imageData = [(SDAutoUnlockAuthPromptImageData *)v5 imageData];
  [authPromptIconData2 appendData:imageData];

  v11 = auto_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    imageData2 = [(SDAutoUnlockAuthPromptImageData *)v5 imageData];
    v13 = [imageData2 length];
    authPromptIconData3 = [(SDAutoUnlockKeySession *)self authPromptIconData];
    v15 = 134218240;
    v16 = v13;
    v17 = 2048;
    v18 = [authPromptIconData3 length];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received image data (length: %ld, total: %ld)", &v15, 0x16u);
  }

  if ([(SDAutoUnlockAuthPromptImageData *)v5 finalMessage])
  {
    [(SDAutoUnlockKeySession *)self promptForApproval];
  }

LABEL_8:
}

- (void)handleSessionKeyExchangeResponse:(id)response
{
  responseCopy = response;
  kdebug_trace();
  v5 = [[SDUnlockSessionKeyExchangeResponse alloc] initWithData:responseCopy];

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
  exchangeResponse = [(SDAutoUnlockKeySession *)self exchangeResponse];
  if (!exchangeResponse)
  {
    goto LABEL_9;
  }

  userRequestRequired = [(SDAutoUnlockKeySession *)self userRequestRequired];
  if (userRequestRequired)
  {
    unlockAllowed = [(SDAutoUnlockKeySession *)self unlockAllowed];
    if ([unlockAllowed BOOLValue])
    {

LABEL_22:
      aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
      exchangeResponse2 = [(SDAutoUnlockKeySession *)self exchangeResponse];
      v21 = [exchangeResponse2 key];
      v42 = 0;
      v22 = [aksSession stepSessionWithData:v21 outputData:&v42];
      v13 = v42;

      if (v22)
      {
        exchangeResponse3 = [(SDAutoUnlockKeySession *)self exchangeResponse];
        if ([exchangeResponse3 version] < 2)
        {
        }

        else
        {
          userRequestRequired2 = [(SDAutoUnlockKeySession *)self userRequestRequired];

          if (userRequestRequired2)
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

        aksSession2 = [(SDAutoUnlockPairingSession *)self aksSession];
        generateSessionToken = [aksSession2 generateSessionToken];
        [(SDAutoUnlockAuthSession *)self setSessionRangingKey:generateSessionToken];

        sessionRangingKey = [(SDAutoUnlockAuthSession *)self sessionRangingKey];

        if (sessionRangingKey)
        {
          remoteAWDLInfo = [(SDAutoUnlockAuthSession *)self remoteAWDLInfo];
          v34 = [(SDAutoUnlockAuthSession *)self peerListFromAWDLInfo:remoteAWDLInfo];
          [(SDAutoUnlockKeySession *)self setPeerList:v34];

          v17 = objc_opt_new();
          peerList = [(SDAutoUnlockKeySession *)self peerList];
          firstObject = [peerList firstObject];
          [v17 setNiRangingPeer:firstObject];

          v37 = +[SDAutoUnlockWiFiManager sharedManager];
          wifiRequest = [(SDAutoUnlockAuthSession *)self wifiRequest];
          [v37 updateWiFiRequest:wifiRequest setRangingPeer:v17];

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

  wifiRequestStartedHandler = [(SDAutoUnlockKeySession *)self wifiRequestStartedHandler];

  if (userRequestRequired)
  {
  }

  if (wifiRequestStartedHandler)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ([(SDAutoUnlockKeySession *)self userRequestRequired])
  {
    unlockAllowed2 = [(SDAutoUnlockKeySession *)self unlockAllowed];
    if (unlockAllowed2)
    {
      v7 = unlockAllowed2;
      unlockAllowed3 = [(SDAutoUnlockKeySession *)self unlockAllowed];
      bOOLValue = [unlockAllowed3 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        errorRequestingUnlock = [(SDAutoUnlockKeySession *)self errorRequestingUnlock];
        v11 = @"Error posting authorization request";
        if (errorRequestingUnlock)
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

- (void)handleUnlockConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  v5 = [[SDUnlockSessionConfirmation alloc] initWithData:confirmationCopy];

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

    aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
    -[SDAutoUnlockAuthSession setAksSuccess:](self, "setAksSuccess:", [aksSession confirmSession]);

    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      aksSuccess = [(SDAutoUnlockAuthSession *)self aksSuccess];
      v14 = @"NO";
      if (aksSuccess)
      {
        v14 = @"YES";
      }

      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session confirmed %@", buf, 0xCu);
    }

    if (![(SDAutoUnlockKeySession *)self usingImageCache])
    {
      authPromptIconData = [(SDAutoUnlockKeySession *)self authPromptIconData];
      if (authPromptIconData)
      {
        v16 = authPromptIconData;
        authPromptIconHash = [(SDAutoUnlockKeySession *)self authPromptIconHash];

        if (authPromptIconHash)
        {
          v18 = auto_unlock_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            appName = [(SDAutoUnlockAuthSession *)self appName];
            *buf = 138412290;
            v27 = appName;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Caching image for app %@", buf, 0xCu);
          }

          iconCache = self->_iconCache;
          authPromptIconData2 = [(SDAutoUnlockKeySession *)self authPromptIconData];
          authPromptIconHash2 = [(SDAutoUnlockKeySession *)self authPromptIconHash];
          appName2 = [(SDAutoUnlockAuthSession *)self appName];
          [(SDAutoUnlockMacIconCache *)iconCache cacheIconImageData:authPromptIconData2 hash:authPromptIconHash2 appName:appName2];
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
  wifiRequest = [(SDAutoUnlockAuthSession *)self wifiRequest];
  [v3 cancelWiFiRequest:wifiRequest];

  [(SDAutoUnlockAuthSession *)self setWifiRequest:0];
}

- (void)sendAWDLInfoWithKeyData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  if (!errorCopy)
  {
    if (-[SDAutoUnlockKeySession wifiEnabled](self, "wifiEnabled") || (+[SDStatusMonitor sharedMonitor](SDStatusMonitor, "sharedMonitor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 wirelessEnabled], v8, (v9 & 1) != 0))
    {
      errorCopy = 0;
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
      errorCopy = [NSError errorWithDomain:v11 code:199 userInfo:v12];
    }
  }

  awdlInfoData = [(SDAutoUnlockAuthSession *)self awdlInfoData];
  if (!(awdlInfoData | errorCopy))
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
    errorCopy = [NSError errorWithDomain:v15 code:114 userInfo:v16];
  }

  v17 = auto_unlock_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending SDAutoUnlockAWDLInfo", buf, 2u);
  }

  v18 = objc_alloc_init(SDAutoUnlockAWDLInfo);
  [(SDAutoUnlockAWDLInfo *)v18 setVersion:3];
  [(SDAutoUnlockAWDLInfo *)v18 setAwdlInfo:awdlInfoData];
  [(SDAutoUnlockAWDLInfo *)v18 setUseToken:[(SDAutoUnlockAuthSession *)self useAKSToken]];
  [(SDAutoUnlockAWDLInfo *)v18 setKeyData:dataCopy];
  [(SDAutoUnlockAWDLInfo *)v18 setSupportsConfirmationACK:1];
  if (errorCopy)
  {
    -[SDAutoUnlockAWDLInfo setErrorCode:](v18, "setErrorCode:", [errorCopy code]);
  }

  data = [(SDAutoUnlockAWDLInfo *)v18 data];
  v20 = [(SDAutoUnlockPairingSession *)self wrapPayload:data withType:301];

  bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000672E4;
  v22[3] = &unk_1008CDF90;
  v22[4] = self;
  [(SDAutoUnlockAuthSession *)self sendData:v20 bleDevice:bleDevice direct:1 completionHandler:v22];

  if (errorCopy)
  {
    if (!awdlInfoData)
    {
      [(SDAutoUnlockKeySession *)self notifyDelegateWithError:errorCopy];
    }
  }

  else
  {
    [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(15)];
  }

  kdebug_trace();
}

- (void)sendAuthPromptResponseWithData:(id)data error:(id)error
{
  errorCopy = error;
  dataCopy = data;
  v8 = objc_alloc_init(SDAutoUnlockAuthPromptResponse);
  [(SDAutoUnlockAuthPromptResponse *)v8 setVersion:1];
  [(SDAutoUnlockAuthPromptResponse *)v8 setKeyData:dataCopy];

  [(SDAutoUnlockAuthPromptResponse *)v8 setNeedsImageData:[(SDAutoUnlockKeySession *)self needsImageData]];
  if (errorCopy)
  {
    -[SDAutoUnlockAuthPromptResponse setErrorCode:](v8, "setErrorCode:", [errorCopy code]);
  }

  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending SDAutoUnlockAuthPromptResponse", buf, 2u);
  }

  data = [(SDAutoUnlockAuthPromptResponse *)v8 data];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000675B0;
  v11[3] = &unk_1008CDF90;
  v11[4] = self;
  [(SDAutoUnlockAuthSession *)self sendData:data type:13 errorHandler:v11];

  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(15)];
}

- (void)sendKeyExchangeRequestWithData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  v8 = objc_alloc_init(SDUnlockSessionKeyExchangeRequest);
  [(SDUnlockSessionKeyExchangeRequest *)v8 setVersion:1];
  [(SDUnlockSessionKeyExchangeRequest *)v8 setUsingRecord:[(SDAutoUnlockAuthSession *)self useAKSToken]^ 1];
  if (dataCopy)
  {
    [(SDUnlockSessionKeyExchangeRequest *)v8 setKey:dataCopy];
  }

  if (errorCopy)
  {
    -[SDUnlockSessionKeyExchangeRequest setErrorCode:](v8, "setErrorCode:", [errorCopy code]);
  }

  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending SDUnlockSessionKeyExchangeRequest", buf, 2u);
  }

  data = [(SDUnlockSessionKeyExchangeRequest *)v8 data];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100067870;
  v11[3] = &unk_1008CDF90;
  v11[4] = self;
  [(SDAutoUnlockAuthSession *)self sendData:data type:7 errorHandler:v11];

  kdebug_trace();
  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(15)];
}

- (void)sendSessionAuthToken:(id)token error:(id)error
{
  tokenCopy = token;
  errorCopy = error;
  v8 = objc_opt_new();
  [v8 setVersion:2];
  if (tokenCopy)
  {
    [v8 setAuthToken:tokenCopy];
  }

  if (errorCopy)
  {
    [v8 setErrorCode:{objc_msgSend(errorCopy, "code")}];
  }

  v9 = auto_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending SDUnlockSessionAuthToken", buf, 2u);
  }

  data = [v8 data];
  v11 = [(SDAutoUnlockPairingSession *)self wrapPayload:data withType:9];

  bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100067B74;
  v15[3] = &unk_1008CDFB8;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = errorCopy;
  v13 = errorCopy;
  v14 = tokenCopy;
  [(SDAutoUnlockAuthSession *)self sendData:v11 bleDevice:bleDevice direct:1 completionHandler:v15];

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

  data = [v3 data];
  v6 = [(SDAutoUnlockPairingSession *)self wrapPayload:data withType:11];

  bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100067EC0;
  v8[3] = &unk_1008CDF90;
  v8[4] = self;
  [(SDAutoUnlockAuthSession *)self sendData:v6 bleDevice:bleDevice direct:1 completionHandler:v8];

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

  assertionTimer = [(SDAutoUnlockKeySession *)self assertionTimer];

  if (!assertionTimer)
  {
    sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100068388;
    v10[3] = &unk_1008CDEA0;
    v10[4] = self;
    v6 = sub_1001F0548(0, sessionQueue, v10);
    [(SDAutoUnlockKeySession *)self setAssertionTimer:v6];

    assertionTimer2 = [(SDAutoUnlockKeySession *)self assertionTimer];
    dispatch_resume(assertionTimer2);
  }

  assertionTimer3 = [(SDAutoUnlockKeySession *)self assertionTimer];
  v9 = sub_1001F0530(20.0);
  sub_1001F05F0(assertionTimer3, v9);
}

- (void)invalidateAssertionTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating aggressive advertising timer", v6, 2u);
  }

  assertionTimer = [(SDAutoUnlockKeySession *)self assertionTimer];

  if (assertionTimer)
  {
    assertionTimer2 = [(SDAutoUnlockKeySession *)self assertionTimer];
    dispatch_source_cancel(assertionTimer2);

    [(SDAutoUnlockKeySession *)self setAssertionTimer:0];
  }
}

- (void)logAutoUnlockStart
{
  v3 = sub_100111F74(1);
  protocol = [(SDAutoUnlockAuthSession *)self protocol];
  v5 = @"Mac";
  if (protocol == 2)
  {
    v5 = @"Phone";
  }

  v12[0] = @"Start";
  v11[0] = @"State";
  v11[1] = @"DeviceID";
  v6 = v5;
  bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
  identifier = [bleDevice identifier];
  uUIDString = [identifier UUIDString];
  v11[2] = @"UnlockPeerType";
  v12[1] = uUIDString;
  v12[2] = v6;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  SFPowerLogTimeSensitiveEvent();
}

- (void)logAutoUnlockEnd
{
  v3 = sub_100111F74(1);
  protocol = [(SDAutoUnlockAuthSession *)self protocol];
  v5 = @"Mac";
  if (protocol == 2)
  {
    v5 = @"Phone";
  }

  v13[0] = @"End";
  v12[0] = @"State";
  v12[1] = @"DeviceID";
  v6 = v5;
  bleDevice = [(SDAutoUnlockAuthSession *)self bleDevice];
  identifier = [bleDevice identifier];
  uUIDString = [identifier UUIDString];
  v13[1] = uUIDString;
  v13[2] = v6;
  v12[2] = @"UnlockPeerType";
  v12[3] = @"Success";
  v10 = [NSNumber numberWithBool:[(SDAutoUnlockKeySession *)self alerted]];
  v13[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  SFPowerLogTimeSensitiveEvent();
}

@end