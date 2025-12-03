@interface SDUnlockKeyManager
+ (id)sharedKeyManager;
- (BOOL)initiateStashBagCreationWithManifest:(id)manifest;
- (BOOL)pairedWatchSupportsRelock;
- (BOOL)shouldStartUnlock;
- (BOOL)startUnlockIfNeeded;
- (BOOL)unlockEnabled;
- (BOOL)updateLongTermKey:(id)key;
- (SDUnlockKeyManager)init;
- (id)generateDebugInfo;
- (id)getWatchNameForTesting;
- (id)stringForState:(int64_t)state;
- (int64_t)unlockingState;
- (void)addObservers;
- (void)addObserversForTests;
- (void)bannerDidDismiss;
- (void)bannerLockButtonWasTapped;
- (void)beginUnlockIfNotOnLockScreen;
- (void)checkDevicePairingState;
- (void)consolidateLatencies:(id)latencies;
- (void)debugInfoRequested:(id)requested;
- (void)deviceDidEnterConfigurationState:(id)state;
- (void)devicesDidFailToPair:(id)pair;
- (void)devicesDidUnpair:(id)unpair;
- (void)disableUnlockPairingForSecurityManager:(id)manager;
- (void)establishStashBagWithCompletionHandler:(id)handler;
- (void)establishStashBagWithManifest:(id)manifest completionHandler:(id)handler;
- (void)handleActiveDeviceUpdated;
- (void)handleAutoUnlockEnabledStateUpdated;
- (void)handleClassALongTermKeyRequest:(id)request;
- (void)handleConfigState;
- (void)handleCreateEscrowSecret:(id)secret;
- (void)handleLongTermKeyRequest:(id)request;
- (void)handlePairedWatchWristStateChanged;
- (void)handleRemoteLockStateChanged:(id)changed;
- (void)handleResetState:(id)state;
- (void)handleSessionKeyExchangeResponse:(id)response;
- (void)handleSetupRequest:(id)request;
- (void)handleStashConfirmation:(id)confirmation;
- (void)handleStashKeyExchangeResponse:(id)response;
- (void)handleSystemUIChanged;
- (void)handleUILockStateChange;
- (void)handleUnlockConfirmation:(id)confirmation;
- (void)handleUnlockStateResponse:(id)response;
- (void)idsController:(id)controller didReceiveProtoData:(id)data forType:(unsigned __int16)type;
- (void)idsControllerNearbyStateChanged:(id)changed;
- (void)initializeMetrics;
- (void)initiateRemoteUnlock;
- (void)invalidateDelayedStartTimer;
- (void)invalidateLongTermKeyTimer;
- (void)invalidateStashTimer;
- (void)invalidateStateTimer;
- (void)keyBagLockStateChange:(id)change;
- (void)newDeviceBecameActive:(id)active;
- (void)notifyStashStateWithError:(id)error;
- (void)notifyUnlockStateWithState:(id)state error:(id)error;
- (void)releaseKeyBagAssertion;
- (void)resetAndClearState;
- (void)resetSetupState;
- (void)resetState;
- (void)restartDelayedStartTimer:(unint64_t)timer withCompletionHandler:(id)handler;
- (void)restartLongTermKeyTimer:(unint64_t)timer;
- (void)restartStashTimer;
- (void)restartStateTimer;
- (void)sendLongTermKeyResponse:(id)response requestID:(id)d;
- (void)sendRelockRequestWithReset:(BOOL)reset;
- (void)sendStartLTKTransfer;
- (void)sendStateRequest;
- (void)setUnlockingState:(int64_t)state;
- (void)startLTKExchange;
- (void)stashTimerFired:(id)fired;
- (void)syncUnlockEnabled:(BOOL)enabled;
- (void)takeMobileKeybagAssertion;
- (void)unlockStateForDevice:(id)device completionHandler:(id)handler;
@end

@implementation SDUnlockKeyManager

- (void)handleSystemUIChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005568;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)beginUnlockIfNotOnLockScreen
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = +[SDStatusMonitor sharedMonitor];
  systemUIFlags = [v3 systemUIFlags];

  v5 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v5 deviceKeyBagUnlocked];

  if ((systemUIFlags & 2) != 0 || ([(SDUnlockKeyManager *)self shouldUseTwoPartPill]& deviceKeyBagUnlocked) != 1 || self->_unlockingForKeybagUnlock)
  {
    v7 = paired_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ((systemUIFlags & 2) != 0)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      shouldUseTwoPartPill = [(SDUnlockKeyManager *)self shouldUseTwoPartPill];
      unlockingForKeybagUnlock = self->_unlockingForKeybagUnlock;
      if (shouldUseTwoPartPill)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v19 = 138413058;
      if (deviceKeyBagUnlocked)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v20 = v8;
      if (unlockingForKeybagUnlock)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v14 = "Ignoring begin attempt. lock screen: %@, should use updated pill: %@, device unlocked: %@, ongoing watch unlock: %@";
      v15 = v7;
      v16 = 42;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v19, v16);
    }
  }

  else
  {
    v17 = paired_unlock_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Starting Paired Unlock if needed", &v19, 2u);
    }

    self->_unlockingForKeybagUnlock = [(SDUnlockKeyManager *)self startUnlockIfNeeded];
    v7 = paired_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_unlockingForKeybagUnlock)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v19 = 138412290;
      v20 = v18;
      v14 = "Paired Unlock started: %@";
      v15 = v7;
      v16 = 12;
      goto LABEL_18;
    }
  }
}

- (BOOL)pairedWatchSupportsRelock
{
  idsController = [(SDUnlockSessionManager *)self idsController];
  activeIDSDevice = [idsController activeIDSDevice];

  if (activeIDSDevice)
  {
    [activeIDSDevice operatingSystemVersion];
    v4 = v8;
    [activeIDSDevice operatingSystemVersion];
  }

  else
  {
    v4 = 0;
    v7 = 0;
  }

  v5 = v4 == qword_1009731B8 && v7 >= qword_1009731C0 || v4 > qword_1009731B8;

  return v5;
}

- (void)handleAutoUnlockEnabledStateUpdated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000240D0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleUILockStateChange
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = +[SDStatusMonitor sharedMonitor];
  deviceUIUnlocked = [v3 deviceUIUnlocked];

  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (deviceUIUnlocked)
    {
      v6 = @"YES";
    }

    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Key manager received UI lock state changed (UI unlocked: %@)", &v11, 0xCu);
  }

  if (deviceUIUnlocked)
  {
    securityManager = [(SDUnlockSessionManager *)self securityManager];
    [securityManager migrateEscrowDataIfNeeded];

    if ([(SDUnlockKeyManager *)self autoUnlockEnabledUpdatedAfterFirstUnlock])
    {
      if (self->_unlockingForKeybagUnlock)
      {
        goto LABEL_8;
      }

      if ([(SDUnlockKeyManager *)self shouldUseTwoPartPill])
      {
        if (!self->_unlockingForKeybagUnlock)
        {
          v8 = paired_unlock_log();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_11;
          }

          LOWORD(v11) = 0;
          v9 = "Ignoring. Needs updated pill.";
          goto LABEL_10;
        }

LABEL_8:
        v8 = paired_unlock_log();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
LABEL_11:

          return;
        }

        LOWORD(v11) = 0;
        v9 = "Already unlocking for keybag";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v11, 2u);
        goto LABEL_11;
      }

      self->_unlockingForKeybagUnlock = [(SDUnlockKeyManager *)self startUnlockIfNeeded];
    }

    else
    {
      v10 = paired_unlock_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not starting Paired Unlock until we can verify whether Auto Unlock is enabled", &v11, 2u);
      }

      [(SDUnlockKeyManager *)self setWaitingForAutoUnlockStateUpdateToStartPairedUnlock:1];
    }
  }
}

- (BOOL)startUnlockIfNeeded
{
  if ([(SDUnlockKeyManager *)self unlockEnabled])
  {
    shouldStartUnlock = [(SDUnlockKeyManager *)self shouldStartUnlock];
    if (shouldStartUnlock)
    {
      [(SDUnlockKeyManager *)self initializeMetrics];
      [(SDUnlockKeyManager *)self initiateRemoteUnlock];
      LOBYTE(shouldStartUnlock) = 1;
    }
  }

  else
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not initiating, not enabled", v6, 2u);
    }

    LOBYTE(shouldStartUnlock) = 0;
  }

  return shouldStartUnlock;
}

- (BOOL)unlockEnabled
{
  v7.receiver = self;
  v7.super_class = SDUnlockKeyManager;
  unlockEnabled = [(SDUnlockSessionManager *)&v7 unlockEnabled];
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  checkForEscrowData = [securityManager checkForEscrowData];

  return unlockEnabled & checkForEscrowData;
}

+ (id)sharedKeyManager
{
  if (qword_10098A418 != -1)
  {
    sub_10023A954();
  }

  v3 = qword_10098A410;

  return v3;
}

- (SDUnlockKeyManager)init
{
  v20.receiver = self;
  v20.super_class = SDUnlockKeyManager;
  v2 = [(SDUnlockSessionManager *)&v20 init];
  v3 = v2;
  if (v2)
  {
    stateTimer = v2->_stateTimer;
    v2->_stateTimer = 0;

    stashHandler = v3->_stashHandler;
    v3->_stashHandler = 0;

    stateHandler = v3->_stateHandler;
    v3->_stateHandler = 0;

    sessionRecord = v3->_sessionRecord;
    v3->_sessionRecord = 0;

    v3->_useEscrowRecord = 1;
    v3->_remoteDeviceLocked = 1;
    v3->_unlockingState = 0;
    v8 = +[SDStatusMonitor sharedMonitor];
    v3->_wasInLockScreen = [v8 deviceKeyBagLocked];

    v9 = objc_alloc_init(SDUnlockKeyMetricDates);
    metricDates = v3->_metricDates;
    v3->_metricDates = v9;

    [(SDUnlockKeyManager *)v3 addObservers];
    [(SDUnlockKeyManager *)v3 checkDevicePairingState];
    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      pairingCompatibilityState = [(SDUnlockSessionManager *)v3 pairingCompatibilityState];
      deviceIsPaired = [(SDUnlockSessionManager *)v3 deviceIsPaired];
      v14 = @"NO";
      if (deviceIsPaired)
      {
        v14 = @"YES";
      }

      *buf = 67109378;
      v22 = pairingCompatibilityState;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Key loading NanoRegitry, (compatibility state = %d, is paired = %@)", buf, 0x12u);
    }

    if ([(SDUnlockSessionManager *)v3 inConfigureState])
    {
      securityManager = [(SDUnlockSessionManager *)v3 securityManager];
      localLongTermKey = [securityManager localLongTermKey];
      if (localLongTermKey)
      {
      }

      else
      {
        deviceIsPaired2 = [(SDUnlockSessionManager *)v3 deviceIsPaired];

        if ((deviceIsPaired2 & 1) == 0)
        {
          v18 = paired_unlock_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "NanoRegistry is already in the configure state", buf, 2u);
          }

          [(SDUnlockKeyManager *)v3 handleConfigState];
        }
      }
    }

    [(SDUnlockKeyManager *)v3 setAutoUnlockEnabledUpdatedAfterFirstUnlock:1];
  }

  return v3;
}

- (void)addObservers
{
  v14.receiver = self;
  v14.super_class = SDUnlockKeyManager;
  [(SDUnlockSessionManager *)&v14 addObservers];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleUILockStateChange" name:@"com.apple.sharingd.UILockStatusChanged" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyBagLockStateChange:" name:@"com.apple.sharingd.KeyBagLockStatusChanged" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handlePairedWatchWristStateChanged" name:@"com.apple.sharingd.PairedWatchWristStateChanged" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"bannerDidDismiss" name:@"SDUnlockBannerCouldNotBeDisplayed" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"bannerLockButtonWasTapped" name:@"SDUnlockBannerButtonTapped" object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"bannerDidDismiss" name:@"SDUnlockBannerDismissed" object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"handleAutoUnlockEnabledStateUpdated" name:@"SDAutoUnlockAKSManagerDynamicStoreUpdatedAfterFirstUnlockNotification" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"devicesDidUnpair:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"newDeviceBecameActive:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"deviceDidEnterConfigurationState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"handleSystemUIChanged" name:@"com.apple.sharingd.SystemUIChanged" object:0];

  [(SDUnlockKeyManager *)self addObserversForTests];
}

- (void)debugInfoRequested:(id)requested
{
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  generateDebugInfo = [(SDUnlockKeyManager *)self generateDebugInfo];
  sub_100086F68(v6, generateDebugInfo);
}

- (id)generateDebugInfo
{
  v3 = objc_opt_new();
  v16.receiver = self;
  v16.super_class = SDUnlockKeyManager;
  generateDebugInfo = [(SDUnlockSessionManager *)&v16 generateDebugInfo];
  [v3 addObjectsFromArray:generateDebugInfo];

  securityManager = [(SDUnlockSessionManager *)self securityManager];
  if ([securityManager checkForEscrowData])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"Escrow Secret Exists:%@", v6];
  [v3 addObject:v7];

  if ([(SDUnlockKeyManager *)self remoteDeviceLocked])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [NSString stringWithFormat:@"Remote Device Locked:%@", v8];
  [v3 addObject:v9];

  v10 = [(SDUnlockKeyManager *)self stringForState:[(SDUnlockKeyManager *)self unlockingState]];
  v11 = [NSString stringWithFormat:@"Unlocking State:%@", v10];
  [v3 addObject:v11];

  securityManager2 = [(SDUnlockSessionManager *)self securityManager];
  allKeychainItems = [securityManager2 allKeychainItems];
  v14 = [NSString stringWithFormat:@"Keychain Items:%@", allKeychainItems];
  [v3 addObject:v14];

  return v3;
}

- (id)getWatchNameForTesting
{
  activeDevice = [(SDUnlockSessionManager *)self activeDevice];

  if (activeDevice)
  {
    activeDevice2 = [(SDUnlockSessionManager *)self activeDevice];
    v5 = [activeDevice2 valueForProperty:NRDevicePropertyName];
  }

  else
  {
    v5 = @"Nobody's Apple Watch";
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 stringForKey:@"PairedUnlockWatchName"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;

    v5 = v9;
  }

  return v5;
}

- (void)addObserversForTests
{
  out_token = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100233478;
  handler[3] = &unk_1008CE690;
  handler[4] = self;
  notify_register_dispatch("PairedUnlock-banner-old", &out_token, &_dispatch_main_q, handler);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002334E8;
  v3[3] = &unk_1008CE690;
  v3[4] = self;
  notify_register_dispatch("PairedUnlock-banner-new", &out_token, &_dispatch_main_q, v3);

  notify_register_dispatch("PairedUnlock-banner-update", &out_token, &_dispatch_main_q, &stru_1008D5200);
  notify_register_dispatch("PairedUnlock-banner-dismiss", &out_token, &_dispatch_main_q, &stru_1008D5220);
}

- (void)deviceDidEnterConfigurationState:(id)state
{
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received config state notification", v6, 2u);
  }

  if ([(SDUnlockSessionManager *)self inConfigureState]&& ![(SDUnlockSessionManager *)self deviceIsPaired])
  {
    [(SDUnlockKeyManager *)self handleConfigState];
  }

  else
  {
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10023A968();
    }
  }
}

- (void)handleConfigState
{
  v3 = +[SDStatusMonitor sharedMonitor];
  if ([v3 deviceKeyBagUnlocked])
  {
  }

  else
  {
    v4 = +[SDStatusMonitor sharedMonitor];
    deviceKeyBagDisabled = [v4 deviceKeyBagDisabled];

    if (!deviceKeyBagDisabled)
    {
      v6 = 1;
      goto LABEL_6;
    }
  }

  [(SDUnlockKeyManager *)self startLTKExchange];
  v6 = 0;
LABEL_6:
  self->_ltkWaitingForUnlock = v6;
}

- (void)startLTKExchange
{
  [(SDUnlockSessionManager *)self updateSecurityManager];
  [(SDUnlockKeyManager *)self takeMobileKeybagAssertion];

  [(SDUnlockKeyManager *)self sendStartLTKTransfer];
}

- (void)keyBagLockStateChange:(id)change
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[SDStatusMonitor sharedMonitor];
    v6 = sub_100012AB0([v5 deviceKeyBagState]);
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Keybag state changed to %@", &v14, 0xCu);
  }

  v7 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v7 deviceKeyBagUnlocked];

  if (!self->_ltkWaitingForUnlock || (deviceKeyBagUnlocked & 1) != 0)
  {
    if (!self->_ltkWaitingForUnlock)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagDisabled = [v9 deviceKeyBagDisabled];

  if (deviceKeyBagDisabled)
  {
LABEL_8:
    [(SDUnlockKeyManager *)self startLTKExchange];
    self->_ltkWaitingForUnlock = 0;
  }

LABEL_9:
  [(SDUnlockKeyManager *)self setAutoUnlockEnabledUpdatedAfterFirstUnlock:1];
  if (deviceKeyBagUnlocked)
  {
    if (!self->_unlockingForKeybagUnlock)
    {
      [(SDUnlockKeyManager *)self beginUnlockIfNotOnLockScreen];
    }
  }

  else
  {
    if (self->_unlockingForKeybagUnlock && [(SDUnlockKeyManager *)self unlockingState]<= 1)
    {
      v11 = paired_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device locked before auth token sent. Cancelling", &v14, 2u);
      }

      metrics = [(SDUnlockSessionManager *)self metrics];

      if (metrics)
      {
        metrics2 = [(SDUnlockSessionManager *)self metrics];
        [metrics2 setFailureReason:14];
      }

      [(SDUnlockKeyManager *)self resetAndClearState];
    }

    [(SDUnlockSessionManager *)self logMetrics];
  }
}

- (void)handlePairedWatchWristStateChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100233A04;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)bannerDidDismiss
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100233B98;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)bannerLockButtonWasTapped
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100233DD4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)devicesDidUnpair:(id)unpair
{
  unpairCopy = unpair;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138477827;
    v15 = unpairCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received devices unpaired notification: %{private}@", &v14, 0xCu);
  }

  userInfo = [unpairCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  v8 = paired_unlock_log();
  uUIDString = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "Device from notification %{private}@", &v14, 0xCu);
    }

    v10 = [v7 valueForProperty:NRDevicePropertyPairingID];
    uUIDString = [v10 UUIDString];

    v11 = [v7 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v12 = [v7 valueForProperty:NRDevicePropertyDeviceNameString];
    if (uUIDString)
    {
      v13 = [[SDUnlockSecurityManager alloc] initWithPairingID:uUIDString pairingStorePath:v11 deviceName:v12];
      [(SDUnlockKeyManager *)self disableUnlockPairingForSecurityManager:v13];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10023AA24();
  }

  self->_outstandingStartLTK = 0;
  [(SDUnlockKeyManager *)self invalidateLongTermKeyTimer];
  [(SDUnlockKeyManager *)self releaseKeyBagAssertion];
}

- (void)devicesDidFailToPair:(id)pair
{
  pairCopy = pair;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138477827;
    v15 = pairCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received devices failed to pair notification: %{private}@", &v14, 0xCu);
  }

  userInfo = [pairCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  v8 = paired_unlock_log();
  uUIDString = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "Device from notification %{private}@", &v14, 0xCu);
    }

    v10 = [v7 valueForProperty:NRDevicePropertyPairingID];
    uUIDString = [v10 UUIDString];

    v11 = [v7 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v12 = [v7 valueForProperty:NRDevicePropertyDeviceNameString];
    if (uUIDString)
    {
      v13 = [[SDUnlockSecurityManager alloc] initWithPairingID:uUIDString pairingStorePath:v11 deviceName:v12];
      [(SDUnlockKeyManager *)self disableUnlockPairingForSecurityManager:v13];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10023AA60();
  }

  self->_outstandingStartLTK = 0;
  [(SDUnlockKeyManager *)self invalidateLongTermKeyTimer];
  [(SDUnlockKeyManager *)self releaseKeyBagAssertion];
}

- (void)newDeviceBecameActive:(id)active
{
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceDescription = [(SDUnlockSessionManager *)self activeDeviceDescription];
    v6 = 138477827;
    v7 = activeDeviceDescription;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device became active %{private}@", &v6, 0xCu);
  }

  [(SDUnlockKeyManager *)self handleActiveDeviceUpdated];
}

- (void)restartDelayedStartTimer:(unint64_t)timer withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = paired_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Restarting delayed start timer", buf, 2u);
  }

  delayedStartTimer = self->_delayedStartTimer;
  if (!delayedStartTimer)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002345A4;
    v11[3] = &unk_1008CF578;
    v11[4] = self;
    v12 = handlerCopy;
    v9 = sub_1001F0548(0, &_dispatch_main_q, v11);
    v10 = self->_delayedStartTimer;
    self->_delayedStartTimer = v9;

    dispatch_resume(self->_delayedStartTimer);
    delayedStartTimer = self->_delayedStartTimer;
  }

  sub_1001F05F0(delayedStartTimer, timer);
}

- (void)invalidateDelayedStartTimer
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating delayed start timer", v6, 2u);
  }

  delayedStartTimer = self->_delayedStartTimer;
  if (delayedStartTimer)
  {
    dispatch_source_cancel(delayedStartTimer);
    v5 = self->_delayedStartTimer;
    self->_delayedStartTimer = 0;
  }
}

- (void)restartLongTermKeyTimer:(unint64_t)timer
{
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting long-term key timer", buf, 2u);
  }

  longTermKeyTimer = self->_longTermKeyTimer;
  if (!longTermKeyTimer)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002347BC;
    v9[3] = &unk_1008CDEA0;
    v9[4] = self;
    v7 = sub_1001F0548(0, &_dispatch_main_q, v9);
    v8 = self->_longTermKeyTimer;
    self->_longTermKeyTimer = v7;

    dispatch_resume(self->_longTermKeyTimer);
    longTermKeyTimer = self->_longTermKeyTimer;
  }

  sub_1001F05F0(longTermKeyTimer, timer);
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

- (void)takeMobileKeybagAssertion
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Taking keybag assertion", &v7, 2u);
  }

  if (!self->_keybagAssertion)
  {
    v4 = [NSNumber numberWithDouble:75 + 45.0 + 10.0, 0, @"MKBAssertionKey", @"MKBAssertionTimeout", @"RemoteProfile"];
    v9[1] = v4;
    [NSDictionary dictionaryWithObjects:v9 forKeys:&v8 count:2];
    v5 = MKBDeviceLockAssertion();
    keybagAssertion = self->_keybagAssertion;
    self->_keybagAssertion = v5;
  }
}

- (void)releaseKeyBagAssertion
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing keybag assertion", v5, 2u);
  }

  keybagAssertion = self->_keybagAssertion;
  self->_keybagAssertion = 0;
}

- (void)handleActiveDeviceUpdated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100234B14;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)checkDevicePairingState
{
  if ([(SDUnlockSessionManager *)self deviceIsPaired]|| [(SDUnlockSessionManager *)self inConfigureState])
  {
    v3 = paired_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = [(SDUnlockSessionManager *)self pairingCompatibilityState];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Devices paired/pairing (state = %d)", v5, 8u);
    }
  }

  else
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Devices unpaired, disabling Paired Unlock", v5, 2u);
    }

    [(SDUnlockKeyManager *)self disableUnlockPairing];
  }
}

- (void)disableUnlockPairingForSecurityManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (managerCopy)
  {
    [managerCopy deleteEscrowData];
    v8.receiver = self;
    v8.super_class = SDUnlockKeyManager;
    [(SDUnlockSessionManager *)&v8 disableUnlockPairingForSecManager:v5];
  }

  else
  {
    securityManager = [(SDUnlockSessionManager *)self securityManager];
    [securityManager deleteEscrowData];

    v7.receiver = self;
    v7.super_class = SDUnlockKeyManager;
    [(SDUnlockSessionManager *)&v7 disableUnlockPairing];
  }
}

- (void)syncUnlockEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  unlockEnabled = [(SDUnlockKeyManager *)self unlockEnabled];
  if (enabledCopy)
  {
    if ((unlockEnabled & 1) == 0)
    {
      v6 = paired_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Local unlock disabled, remote enabled. Sending disable message", buf, 2u);
      }

      [(SDUnlockSessionManager *)self sendDisableMessage];
    }
  }

  else if (unlockEnabled)
  {
    v7 = paired_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remote unlock disabled, local enabled. Disabling local unlock", v8, 2u);
    }

    [(SDUnlockKeyManager *)self disableUnlockPairing];
  }
}

- (void)unlockStateForDevice:(id)device completionHandler:(id)handler
{
  if (handler)
  {
    v5 = [handler copy];
    stateHandler = self->_stateHandler;
    self->_stateHandler = v5;

    [(SDUnlockKeyManager *)self sendStateRequest];
  }

  else
  {
    v7 = SFUnlockErrorDomian;
    v10 = NSLocalizedDescriptionKey;
    v11 = @"No completion handler";
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [NSError errorWithDomain:v7 code:112 userInfo:v8];
    [(SDUnlockKeyManager *)self notifyUnlockStateWithState:0 error:v9];
  }
}

- (void)notifyUnlockStateWithState:(id)state error:(id)error
{
  stateHandler = self->_stateHandler;
  if (stateHandler)
  {
    stateHandler[2](stateHandler, state, error);
    v6 = self->_stateHandler;
    self->_stateHandler = 0;
  }

  [(SDUnlockKeyManager *)self invalidateStateTimer:state];
}

- (void)restartStateTimer
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting state request key timer", buf, 2u);
  }

  stateTimer = self->_stateTimer;
  if (!stateTimer)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10023516C;
    v8[3] = &unk_1008CDEA0;
    v8[4] = self;
    v5 = sub_1001F0548(0, &_dispatch_main_q, v8);
    v6 = self->_stateTimer;
    self->_stateTimer = v5;

    dispatch_resume(self->_stateTimer);
    stateTimer = self->_stateTimer;
  }

  v7 = sub_1001F0530(10.0 * 2.0 + 5.0);
  sub_1001F05F0(stateTimer, v7);
}

- (void)invalidateStateTimer
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating state timer", v6, 2u);
  }

  stateTimer = self->_stateTimer;
  if (stateTimer)
  {
    dispatch_source_cancel(stateTimer);
    v5 = self->_stateTimer;
    self->_stateTimer = 0;
  }
}

- (void)restartStashTimer
{
  stashTimer = self->_stashTimer;
  if (stashTimer)
  {
    [(NSTimer *)stashTimer invalidate];
  }

  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"stashTimerFired:" selector:0 userInfo:0 repeats:20.0];
  v5 = self->_stashTimer;
  self->_stashTimer = v4;
}

- (void)stashTimerFired:(id)fired
{
  stashTimer = self->_stashTimer;
  self->_stashTimer = 0;

  v5 = SFUnlockErrorDomian;
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Other side never responded";
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [NSError errorWithDomain:v5 code:107 userInfo:v6];
  [(SDUnlockKeyManager *)self notifyStashStateWithError:v7];
}

- (void)invalidateStashTimer
{
  stashTimer = self->_stashTimer;
  if (stashTimer)
  {
    [(NSTimer *)stashTimer invalidate];
    v4 = self->_stashTimer;
    self->_stashTimer = 0;
  }
}

- (void)establishStashBagWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10023556C;
  v4[3] = &unk_1008CF578;
  v4[4] = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)establishStashBagWithManifest:(id)manifest completionHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002357F8;
  block[3] = &unk_1008D0E80;
  manifestCopy = manifest;
  handlerCopy = handler;
  block[4] = self;
  v6 = manifestCopy;
  v7 = handlerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)notifyStashStateWithError:(id)error
{
  errorCopy = error;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling stash handler with error = %@", &v8, 0xCu);
  }

  stashHandler = self->_stashHandler;
  if (stashHandler)
  {
    stashHandler[2](stashHandler, errorCopy == 0, errorCopy);
    v7 = self->_stashHandler;
    self->_stashHandler = 0;
  }

  [(SDUnlockSessionManager *)self resetStashState];
  [(SDUnlockKeyManager *)self invalidateStashTimer];
}

- (void)resetSetupState
{
  self->_useEscrowRecord = 1;
  v2.receiver = self;
  v2.super_class = SDUnlockKeyManager;
  [(SDUnlockSessionManager *)&v2 resetSetupState];
}

- (void)resetAndClearState
{
  self->_useEscrowRecord = 1;
  if ([(SDUnlockKeyManager *)self unlockingState]== 2)
  {
    v3 = paired_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Confirmation failed, relocking watch.", buf, 2u);
    }

    [(SDUnlockKeyManager *)self sendRelockRequestWithReset:0];
    [(SDUnlockKeyManager *)self setUnlockingState:0];
  }

  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting state. Dismissing banner if not dismissed already", buf, 2u);
  }

  v5 = +[SDHUDManager shared];
  [v5 dismissPairedUnlockBanner];

  v6.receiver = self;
  v6.super_class = SDUnlockKeyManager;
  [(SDUnlockSessionManager *)&v6 resetAndClearState];
}

- (void)resetState
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  metrics = [(SDUnlockSessionManager *)self metrics];

  if (metrics)
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      metrics2 = [(SDUnlockSessionManager *)self metrics];
      v6 = sub_100243170([metrics2 failureReason]);
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting key manager. Reason: %@", buf, 0xCu);
    }

    if ([(SDUnlockKeyManager *)self unlockingState]>= 1)
    {
      unlockingState = [(SDUnlockKeyManager *)self unlockingState];
      metrics3 = [(SDUnlockSessionManager *)self metrics];
      [metrics3 setPhoneState:unlockingState];
    }

    metricDates = [(SDUnlockKeyManager *)self metricDates];
    [(SDUnlockKeyManager *)self consolidateLatencies:metricDates];

    v10 = objc_alloc_init(SDUnlockKeyMetricDates);
    [(SDUnlockKeyManager *)self setMetricDates:v10];
  }

  sessionRecord = self->_sessionRecord;
  self->_sessionRecord = 0;

  self->_unlockingForKeybagUnlock = 0;
  [(SDUnlockKeyManager *)self setUnlockingState:0];
  v12.receiver = self;
  v12.super_class = SDUnlockKeyManager;
  [(SDUnlockSessionManager *)&v12 resetState];
}

- (int64_t)unlockingState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  unlockingState = selfCopy->_unlockingState;
  objc_sync_exit(selfCopy);

  return unlockingState;
}

- (void)setUnlockingState:(int64_t)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_unlockingState = state;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SDUnlockKeyManager *)selfCopy stringForState:selfCopy->_unlockingState];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting unlocking state to %@", &v7, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (id)stringForState:(int64_t)state
{
  if (state > 2)
  {
    return @"Unknown State";
  }

  else
  {
    return *(&off_1008D5260 + state);
  }
}

- (void)idsController:(id)controller didReceiveProtoData:(id)data forType:(unsigned __int16)type
{
  typeCopy = type;
  controllerCopy = controller;
  dataCopy = data;
  if (typeCopy > 1003)
  {
    if (typeCopy > 1006)
    {
      switch(typeCopy)
      {
        case 1007:
          [(SDUnlockKeyManager *)self invalidateStashTimer];
          [(SDUnlockKeyManager *)self handleStashConfirmation:dataCopy];
          break;
        case 1008:
          [(SDUnlockKeyManager *)self handleLongTermKeyRequest:dataCopy];
          [(SDUnlockKeyManager *)self invalidateLongTermKeyTimer];
          break;
        case 1009:
          [(SDUnlockKeyManager *)self handleClassALongTermKeyRequest:dataCopy];
          break;
      }
    }

    else if (typeCopy == 1004)
    {
      [(SDUnlockSessionManager *)self invalidateUnlockTimer];
      [(SDUnlockKeyManager *)self handleSessionKeyExchangeResponse:dataCopy];
    }

    else if (typeCopy == 1005)
    {
      [(SDUnlockSessionManager *)self invalidateUnlockTimer];
      [(SDUnlockKeyManager *)self handleUnlockConfirmation:dataCopy];
    }

    else
    {
      [(SDUnlockKeyManager *)self invalidateStashTimer];
      [(SDUnlockKeyManager *)self handleStashKeyExchangeResponse:dataCopy];
    }
  }

  else if (typeCopy > 1000)
  {
    if (typeCopy == 1001)
    {
      [(SDUnlockKeyManager *)self handleRemoteLockStateChanged:dataCopy];
    }

    else if (typeCopy == 1002)
    {
      [(SDUnlockKeyManager *)self handleSetupRequest:dataCopy];
    }

    else
    {
      [(SDUnlockKeyManager *)self handleCreateEscrowSecret:dataCopy];
    }
  }

  else
  {
    switch(typeCopy)
    {
      case 1:
        [(SDUnlockKeyManager *)self handleResetState:dataCopy];
        break;
      case 2:
        v9 = [[SDUnlockDisable alloc] initWithData:dataCopy];
        [(SDUnlockSessionManager *)self logProtoBufReceived:v9];

        [(SDUnlockKeyManager *)self disableUnlockPairing];
        break;
      case 4:
        [(SDUnlockKeyManager *)self invalidateStateTimer];
        [(SDUnlockKeyManager *)self handleUnlockStateResponse:dataCopy];
        break;
    }
  }
}

- (void)idsControllerNearbyStateChanged:(id)changed
{
  idsController = [(SDUnlockSessionManager *)self idsController];
  isDefaultPairedDeviceNearby = [idsController isDefaultPairedDeviceNearby];

  if ((isDefaultPairedDeviceNearby & 1) == 0)
  {

    [(SDUnlockKeyManager *)self setRemoteDeviceLocked:1];
  }
}

- (void)handleRemoteLockStateChanged:(id)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [[SDUnlockLockStateUpdated alloc] initWithData:changedCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if (v5 && [(SDUnlockLockStateUpdated *)v5 hasUnlocked])
  {
    if ([(SDUnlockKeyManager *)self unlockEnabled])
    {
      unlocked = [(SDUnlockLockStateUpdated *)v5 unlocked];
      v7 = paired_unlock_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (unlocked)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Lock device is unlocked", buf, 2u);
        }

        if (self->_delayedStartTimer || [(SDUnlockKeyManager *)self unlockingState]== 1)
        {
          v9 = paired_unlock_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Watch unlocked already. Dismissing banner", v23, 2u);
          }

          v10 = +[SDHUDManager shared];
          [v10 dismissPairedUnlockBanner];

          metrics = [(SDUnlockSessionManager *)self metrics];

          if (metrics)
          {
            metrics2 = [(SDUnlockSessionManager *)self metrics];
            [metrics2 setFailureReason:15];
          }
        }

        [(SDUnlockKeyManager *)self setRemoteDeviceLocked:0];
        [(SDUnlockKeyManager *)self resetState];
      }

      else
      {
        if (v8)
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Lock device is locked", v22, 2u);
        }

        [(SDUnlockKeyManager *)self setRemoteDeviceLocked:1];
      }
    }

    else
    {
      securityManager = [(SDUnlockSessionManager *)self securityManager];
      if (securityManager)
      {
        v14 = securityManager;
        securityManager2 = [(SDUnlockSessionManager *)self securityManager];
        pairingID = [securityManager2 pairingID];
        pairingID2 = [(SDUnlockSessionManager *)self pairingID];
        if ([pairingID isEqualToString:pairingID2])
        {
          securityManager3 = [(SDUnlockSessionManager *)self securityManager];
          pairingStorePath = [securityManager3 pairingStorePath];
          pairingStorePath2 = [(SDUnlockSessionManager *)self pairingStorePath];
          v21 = [pairingStorePath isEqualToString:pairingStorePath2];

          if (v21)
          {
            [(SDUnlockSessionManager *)self sendDisableMessage];
          }
        }

        else
        {
        }
      }
    }
  }
}

- (void)handleLongTermKeyRequest:(id)request
{
  self->_outstandingStartLTK = 0;
  requestCopy = request;
  v5 = [[SDUnlockLongTermKeyRequest alloc] initWithData:requestCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if (![(SDUnlockSessionManager *)self inConfigureState])
  {
    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10023AA9C(self);
    }

    goto LABEL_14;
  }

  [(SDUnlockSessionManager *)self updateSecurityManager];
  if (![(SDUnlockLongTermKeyRequest *)v5 hasLongTermKey]|| ([(SDUnlockLongTermKeyRequest *)v5 longTermKey], v6 = objc_claimAutoreleasedReturnValue(), v7 = [(SDUnlockKeyManager *)self updateLongTermKey:v6], v6, !v7))
  {
    v12 = paired_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10023AB20();
    }

    if ([(SDUnlockLongTermKeyRequest *)v5 hasLongTermKey])
    {
      v13 = &off_1008D5378;
    }

    else
    {
      v13 = &off_1008D5370;
    }

    [(SDUnlockSessionManager *)self abortDevicePairingWithReason:*v13];
LABEL_14:
    [(SDUnlockKeyManager *)self releaseKeyBagAssertion];
    requestID = [(SDUnlockLongTermKeyRequest *)v5 requestID];
    [(SDUnlockKeyManager *)self sendLongTermKeyResponse:0 requestID:requestID];

    goto LABEL_15;
  }

  securityManager = [(SDUnlockSessionManager *)self securityManager];
  localLongTermKey = [securityManager localLongTermKey];
  requestID2 = [(SDUnlockLongTermKeyRequest *)v5 requestID];
  [(SDUnlockKeyManager *)self sendLongTermKeyResponse:localLongTermKey requestID:requestID2];

  [(SDUnlockKeyManager *)self releaseKeyBagAssertion];
LABEL_15:
}

- (void)handleClassALongTermKeyRequest:(id)request
{
  requestCopy = request;
  v5 = [[SDUnlockClassALongTermKeyRequest alloc] initWithData:requestCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v6 deviceKeyBagUnlocked];

  if (deviceKeyBagUnlocked)
  {
    if ([(SDUnlockClassALongTermKeyRequest *)v5 hasLongTermKey])
    {
      [(SDUnlockSessionManager *)self updateSecurityManager];
      longTermKey = [(SDUnlockClassALongTermKeyRequest *)v5 longTermKey];
      v9 = [(SDUnlockKeyManager *)self updateLongTermKey:longTermKey];

      if (v9)
      {
        securityManager = [(SDUnlockSessionManager *)self securityManager];
        localLongTermKey = [securityManager localLongTermKey];
        [(SDUnlockKeyManager *)self sendClassALongTermKeyResponse:localLongTermKey sessionID:[(SDUnlockClassALongTermKeyRequest *)v5 sessionID] errorCode:0];

        goto LABEL_13;
      }

      v14 = 101;
    }

    else
    {
      v14 = 103;
    }
  }

  else
  {
    v12 = +[SDStatusMonitor sharedMonitor];
    deviceKeyBagDisabled = [v12 deviceKeyBagDisabled];

    if (deviceKeyBagDisabled)
    {
      v14 = 108;
    }

    else
    {
      v14 = 102;
    }
  }

  v15 = paired_unlock_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10023ABE4();
  }

  [(SDUnlockKeyManager *)self sendClassALongTermKeyResponse:0 sessionID:[(SDUnlockClassALongTermKeyRequest *)v5 sessionID] errorCode:v14];
  [(SDUnlockKeyManager *)self disableUnlockPairing];
LABEL_13:
}

- (BOOL)updateLongTermKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    securityManager = [(SDUnlockSessionManager *)self securityManager];
    v6 = [securityManager generateLocalLongTermKey:1];

    if (v6)
    {
      securityManager2 = [(SDUnlockSessionManager *)self securityManager];
      v8 = [securityManager2 signRemoteKey:keyCopy withLocalKey:v6 localKeyClass:1 remoteKeyClass:3];

      v9 = v8 != 0;
      if (v8)
      {
        securityManager3 = [(SDUnlockSessionManager *)self securityManager];
        [securityManager3 updateLocalLongTermKey:v6 remoteLongTermKey:v8];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)handleSetupRequest:(id)request
{
  requestCopy = request;
  v5 = [[SDUnlockSetupRequest alloc] initWithData:requestCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v6 deviceKeyBagUnlocked];

  if (deviceKeyBagUnlocked)
  {
    if (v5)
    {
      if (![(SDUnlockSetupRequest *)v5 hasLongTermKey])
      {
        sessionID = [(SDUnlockSetupRequest *)v5 sessionID];
        selfCopy2 = self;
        v12 = 0;
        goto LABEL_11;
      }

      longTermKey = [(SDUnlockSetupRequest *)v5 longTermKey];
      v9 = [(SDUnlockKeyManager *)self updateLongTermKey:longTermKey];

      if (v9)
      {
        sessionID = [(SDUnlockSetupRequest *)v5 sessionID];
        selfCopy2 = self;
        v12 = 1;
LABEL_11:
        [(SDUnlockKeyManager *)selfCopy2 handleEscrowSessionRequest:sessionID withUpdatedLongTermKey:v12];
        goto LABEL_16;
      }

      v15 = 101;
    }

    else
    {
      v15 = 103;
    }
  }

  else
  {
    v13 = +[SDStatusMonitor sharedMonitor];
    deviceKeyBagDisabled = [v13 deviceKeyBagDisabled];

    if (deviceKeyBagDisabled)
    {
      v15 = 108;
    }

    else
    {
      v15 = 102;
    }
  }

  v16 = paired_unlock_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10023AC54();
  }

  [(SDUnlockKeyManager *)self sendSetupSessionCreatedWithLocalKey:0 stepData:0 sessionID:[(SDUnlockSetupRequest *)v5 sessionID] errorCode:v15];
  [(SDUnlockKeyManager *)self disableUnlockPairing];
  [(SDUnlockKeyManager *)self resetSetupState];
LABEL_16:
}

- (void)handleCreateEscrowSecret:(id)secret
{
  secretCopy = secret;
  v5 = [[SDUnlockSetupCreateSecret alloc] initWithData:secretCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagUnlocked = [v6 deviceKeyBagUnlocked];

  if (deviceKeyBagUnlocked)
  {
    if (v5 && [(SDUnlockSetupCreateSecret *)v5 hasToken])
    {
      v25 = 0;
      securityManager = [(SDUnlockSessionManager *)self securityManager];
      setupAuthSession = [(SDUnlockSessionManager *)self setupAuthSession];
      token = [(SDUnlockSetupCreateSecret *)v5 token];
      v11 = [securityManager stepWithAuthSession:setupAuthSession data:token authStep:0 errorCode:&v25];

      if (!v11)
      {
        if (v25 == -536363002)
        {
          v19 = paired_unlock_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Bad signature, deleting bad LTKs", buf, 2u);
          }

          securityManager2 = [(SDUnlockSessionManager *)self securityManager];
          [securityManager2 deleteLongTermKeys];

          v17 = 188;
        }

        else
        {
          v17 = 101;
        }

        v16 = @"Could not complete step";
        goto LABEL_11;
      }

      securityManager3 = [(SDUnlockSessionManager *)self securityManager];
      v13 = [securityManager3 escrowSecretWithAuthSession:{-[SDUnlockSessionManager setupAuthSession](self, "setupAuthSession")}];

      if (v13)
      {
        securityManager4 = [(SDUnlockSessionManager *)self securityManager];
        v15 = [securityManager4 storeEscrowData:v13];

        if (v15)
        {
          [(SDUnlockKeyManager *)self sendSetupCreateEscrowRecordWithSessionID:[(SDUnlockSetupCreateSecret *)v5 sessionID] stepData:v11 errorCode:0];
          [(SDUnlockSessionManager *)self enableUnlockPairing];
          [(SDUnlockKeyManager *)self resetSetupState];

          goto LABEL_14;
        }

        v21 = +[SDStatusMonitor sharedMonitor];
        deviceKeyBagLocked = [v21 deviceKeyBagLocked];
        v23 = @"NO";
        if (deviceKeyBagLocked)
        {
          v23 = @"YES";
        }

        v16 = [NSString stringWithFormat:@"Failed to store escrow secret (locked = %@)", v23];
      }

      else
      {
        v16 = @"Failed to create escrow secret";
      }
    }

    else
    {
      v16 = @"No remote step data in message";
    }

    v17 = 101;
  }

  else
  {
    v16 = @"Device locked";
    v17 = 102;
  }

LABEL_11:
  v18 = paired_unlock_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10023ACC4();
  }

  [(SDUnlockKeyManager *)self sendSetupCreateEscrowRecordWithSessionID:[(SDUnlockSetupCreateSecret *)v5 sessionID] stepData:0 errorCode:v17];
  [(SDUnlockKeyManager *)self disableUnlockPairing];
  [(SDUnlockKeyManager *)self resetSetupState];

LABEL_14:
}

- (void)handleSessionKeyExchangeResponse:(id)response
{
  responseCopy = response;
  v5 = [[SDUnlockSessionKeyExchangeResponse alloc] initWithData:responseCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[NSDate date];
  metricDates = [(SDUnlockKeyManager *)self metricDates];
  [metricDates setKeyExchangeResponseReceived:v6];

  if ([(SDUnlockKeyManager *)self unlockingState]== 1 && [(SDUnlockSessionKeyExchangeResponse *)v5 hasKey])
  {
    if ([(SDUnlockSessionKeyExchangeResponse *)v5 hasSessionID]&& (v8 = [(SDUnlockSessionKeyExchangeResponse *)v5 sessionID], [(SDUnlockSessionRecord *)self->_sessionRecord unlockSessionID]== v8))
    {
      v45 = 0;
      securityManager = [(SDUnlockSessionManager *)self securityManager];
      unlockAuthSession = [(SDUnlockSessionManager *)self unlockAuthSession];
      v11 = [(SDUnlockSessionKeyExchangeResponse *)v5 key];
      v12 = [securityManager stepWithAuthSession:unlockAuthSession data:v11 authStep:0 errorCode:&v45];

      if (v12)
      {
        if ([(SDUnlockKeyManager *)self shouldUseTwoPartPill])
        {
          if (SBUIIsSystemApertureEnabled())
          {
            v13 = 5.0999999;
          }

          else
          {
            v13 = 3.5999999;
          }

          activeDevice = [(SDUnlockSessionManager *)self activeDevice];
          v15 = [activeDevice valueForProperty:NRDevicePropertyName];

          if ((+[SFAutoUnlockManager autoUnlockEnabled]& 1) != 0)
          {
            v16 = +[SDHUDManager shared];
            [v16 postPairedUnlockBannerFor:v15 needsLockButton:1 needsUpdate:1];

            v17 = paired_unlock_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v47 = v13;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Auto Unlock enabled. Waiting %f sec for user to respond to pill...", buf, 0xCu);
            }

            v18 = sub_1001F0530(v13);
            v42[0] = _NSConcreteStackBlock;
            v42[1] = 3221225472;
            v42[2] = sub_10023766C;
            v42[3] = &unk_1008CE900;
            v42[4] = self;
            v43 = v12;
            v44 = v5;
            [(SDUnlockKeyManager *)self restartDelayedStartTimer:v18 withCompletionHandler:v42];
          }

          else
          {
            metricDates2 = [(SDUnlockKeyManager *)self metricDates];
            keyExchangeResponseReceived = [metricDates2 keyExchangeResponseReceived];
            metricDates3 = [(SDUnlockKeyManager *)self metricDates];
            [metricDates3 setPillUpdated:keyExchangeResponseReceived];

            [(SDUnlockKeyManager *)self sendSessionAuthenticationToken:v12 sessionID:[(SDUnlockSessionKeyExchangeResponse *)v5 sessionID]];
            v41 = +[SDHUDManager shared];
            [v41 postPairedUnlockBannerFor:v15 needsLockButton:1 needsUpdate:0];
          }
        }

        else
        {
          metricDates4 = [(SDUnlockKeyManager *)self metricDates];
          keyExchangeResponseReceived2 = [metricDates4 keyExchangeResponseReceived];
          metricDates5 = [(SDUnlockKeyManager *)self metricDates];
          [metricDates5 setPillUpdated:keyExchangeResponseReceived2];

          [(SDUnlockKeyManager *)self sendSessionAuthenticationToken:v12 sessionID:[(SDUnlockSessionKeyExchangeResponse *)v5 sessionID]];
        }
      }

      else
      {
        v28 = paired_unlock_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10023AE30();
        }

        if (v45 == -536363002)
        {
          v29 = paired_unlock_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10023AE6C();
          }

          [(SDUnlockKeyManager *)self disableUnlockPairing];
          [(SDUnlockSessionManager *)self sendDisableMessage];
          securityManager2 = [(SDUnlockSessionManager *)self securityManager];
          [securityManager2 deleteLongTermKeys];

          metrics = [(SDUnlockSessionManager *)self metrics];

          if (metrics)
          {
            metrics2 = [(SDUnlockSessionManager *)self metrics];
            [metrics2 setFailureReason:22];
          }
        }

        else
        {
          metrics3 = [(SDUnlockSessionManager *)self metrics];

          if (metrics3)
          {
            metrics4 = [(SDUnlockSessionManager *)self metrics];
            [metrics4 setFailureReason:3];
          }

          [(SDUnlockSessionManager *)self sendResetMessage:[(SDUnlockSessionKeyExchangeResponse *)v5 sessionID] reason:3];
        }
      }
    }

    else
    {
      v26 = paired_unlock_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        unlockSessionID = [(SDUnlockSessionRecord *)self->_sessionRecord unlockSessionID];
        *buf = 134218240;
        v47 = *&unlockSessionID;
        v48 = 2048;
        sessionID = [(SDUnlockSessionKeyExchangeResponse *)v5 sessionID];
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Incorrect session ID (key ID: %ld, lock ID: %ld)", buf, 0x16u);
      }

      [(SDUnlockSessionManager *)self restartUnlockTimer:sub_1001F0530(45)];
    }
  }

  else if ([(SDUnlockSessionKeyExchangeResponse *)v5 hasKeyFailed]&& [(SDUnlockSessionKeyExchangeResponse *)v5 keyFailed])
  {
    [(SDUnlockKeyManager *)self resetState];
    if (!self->_useEscrowRecord)
    {
      self->_useEscrowRecord = 1;
      v19 = paired_unlock_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10023ADF4();
      }

      self->_unlockingForKeybagUnlock = 1;
      metrics5 = [(SDUnlockSessionManager *)self metrics];

      if (metrics5)
      {
        metrics6 = [(SDUnlockSessionManager *)self metrics];
        [metrics6 setRetriedWithEscrowRecord:1];
      }

      [(SDUnlockKeyManager *)self initiateRemoteUnlock];
    }
  }

  else
  {
    v22 = paired_unlock_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10023AD34(self, v5);
    }

    if ([(SDUnlockKeyManager *)self unlockingState]== 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = 9;
    }

    metrics7 = [(SDUnlockSessionManager *)self metrics];

    if (metrics7)
    {
      metrics8 = [(SDUnlockSessionManager *)self metrics];
      [metrics8 setFailureReason:v23];
    }

    [(SDUnlockSessionManager *)self sendResetMessage:[(SDUnlockSessionKeyExchangeResponse *)v5 sessionID] reason:v23];
  }
}

- (void)handleUnlockConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  v5 = [[SDUnlockSessionConfirmation alloc] initWithData:confirmationCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[NSDate date];
  metricDates = [(SDUnlockKeyManager *)self metricDates];
  [metricDates setConfirmationReceived:v6];

  if (-[SDUnlockKeyManager unlockingState](self, "unlockingState") == 2 && -[SDUnlockSessionConfirmation hasSuccess](v5, "hasSuccess") && -[SDUnlockSessionConfirmation success](v5, "success") && (-[SDUnlockSessionManager securityManager](self, "securityManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 confirmUnlockWithAuthSession:{-[SDUnlockSessionManager unlockAuthSession](self, "unlockAuthSession")}], v8, v9))
  {
    self->_useEscrowRecord = 0;
    metrics = [(SDUnlockSessionManager *)self metrics];

    if (metrics)
    {
      metrics2 = [(SDUnlockSessionManager *)self metrics];
      [metrics2 setSucceeded:1];
    }

    [(SDUnlockKeyManager *)self resetState];
    v12 = paired_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "UNLOCK CONFIRMED!", &v26, 2u);
    }

    if (+[SFAutoUnlockManager autoUnlockEnabled]&& ![(SDUnlockKeyManager *)self pairedWatchSupportsRelock])
    {
      activeDevice = [(SDUnlockSessionManager *)self activeDevice];
      v14 = [activeDevice valueForProperty:NRDevicePropertyName];

      v15 = +[SDHUDManager shared];
      [v15 postPairedUnlockBannerFor:v14 needsLockButton:0 needsUpdate:0];
    }
  }

  else
  {
    useEscrowRecord = self->_useEscrowRecord;
    v17 = paired_unlock_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (useEscrowRecord)
    {
      if (v18)
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Confirmation failed, resetting state", &v26, 2u);
      }

      metrics3 = [(SDUnlockSessionManager *)self metrics];

      if (metrics3)
      {
        metrics4 = [(SDUnlockSessionManager *)self metrics];
        [metrics4 setFailureReason:25];
      }

      [(SDUnlockKeyManager *)self resetAndClearState];
    }

    else
    {
      if (v18)
      {
        unlockingState = [(SDUnlockKeyManager *)self unlockingState];
        if ([(SDUnlockSessionConfirmation *)v5 hasSuccess])
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        LODWORD(v26) = 67109634;
        if ([(SDUnlockSessionConfirmation *)v5 success])
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        HIDWORD(v26) = unlockingState;
        v27 = 2112;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Token unlock failed, retrying (state = %d, confirmation has success = %@, confirmation success = %@)", &v26, 0x1Cu);
      }

      [(SDUnlockKeyManager *)self resetAndClearState];
      self->_unlockingForKeybagUnlock = 1;
      metrics5 = [(SDUnlockSessionManager *)self metrics];

      if (metrics5)
      {
        metrics6 = [(SDUnlockSessionManager *)self metrics];
        [metrics6 setRetriedWithEscrowRecord:1];
      }

      [(SDUnlockKeyManager *)self initiateRemoteUnlock];
    }
  }
}

- (void)handleResetState:(id)state
{
  stateCopy = state;
  v10 = [[SDUnlockReset alloc] initWithData:stateCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v10];
  if ([(SDUnlockReset *)v10 hasResetReason])
  {
    metrics = [(SDUnlockSessionManager *)self metrics];

    if (metrics)
    {
      resetReason = [(SDUnlockReset *)v10 resetReason];
      metrics2 = [(SDUnlockSessionManager *)self metrics];
      [metrics2 setFailureReason:resetReason];
    }
  }

  sessionRecord = self->_sessionRecord;
  if (!sessionRecord || (v9 = [(SDUnlockSessionRecord *)sessionRecord unlockSessionID], [(SDUnlockReset *)v10 sessionID]== v9))
  {
    [(SDUnlockKeyManager *)self resetAndClearState];
  }
}

- (void)handleStashKeyExchangeResponse:(id)response
{
  responseCopy = response;
  v5 = [[SDUnlockStashKeyExchangeResponse alloc] initWithData:responseCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if ([(SDUnlockStashKeyExchangeResponse *)v5 hasKey])
  {
    securityManager = [(SDUnlockSessionManager *)self securityManager];
    stashBagSession = [(SDUnlockSessionManager *)self stashBagSession];
    v8 = [(SDUnlockStashKeyExchangeResponse *)v5 key];
    v9 = [securityManager stepWithAuthSession:stashBagSession data:v8];

    if (v9)
    {
      [(SDUnlockKeyManager *)self sendStashToken:v9 sessionID:[(SDUnlockStashKeyExchangeResponse *)v5 sessionID]];
    }

    else
    {
      v15 = paired_unlock_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10023AF1C();
      }

      v16 = SFUnlockErrorDomian;
      v21 = NSLocalizedDescriptionKey;
      v22 = @"Error creating stash token";
      v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v18 = [NSError errorWithDomain:v16 code:101 userInfo:v17];
      [(SDUnlockKeyManager *)self notifyStashStateWithError:v18];
    }
  }

  else
  {
    if ([(SDUnlockStashKeyExchangeResponse *)v5 hasErrorCode])
    {
      errorCode = [(SDUnlockStashKeyExchangeResponse *)v5 errorCode];
    }

    else
    {
      errorCode = 103;
    }

    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10023AEA8();
    }

    v12 = SFUnlockErrorDomian;
    v13 = errorCode;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"Error getting repsonse key";
    v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [NSError errorWithDomain:v12 code:v13 userInfo:v9];
    [(SDUnlockKeyManager *)self notifyStashStateWithError:v14];
  }
}

- (void)handleStashConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  v5 = [[SDUnlockStashConfirmation alloc] initWithData:confirmationCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if ([(SDUnlockStashConfirmation *)v5 hasSuccess]&& [(SDUnlockStashConfirmation *)v5 success])
  {
    [(SDUnlockKeyManager *)self notifyStashStateWithError:0];
  }

  else
  {
    v6 = SFUnlockErrorDomian;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Other device failed to confirm stash setup";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v6 code:101 userInfo:v7];
    [(SDUnlockKeyManager *)self notifyStashStateWithError:v8];
  }
}

- (void)handleUnlockStateResponse:(id)response
{
  responseCopy = response;
  v5 = [[SDUnlockStateResponse alloc] initWithData:responseCopy];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if ([(SDUnlockStateResponse *)v5 hasUnlockEnabled]&& [(SDUnlockStateResponse *)v5 hasPasscodeEnabled])
  {
    [(SDUnlockKeyManager *)self syncUnlockEnabled:[(SDUnlockStateResponse *)v5 unlockEnabled]];
    v6 = [SFUnlockState alloc];
    v7 = [NSNumber numberWithBool:[(SDUnlockKeyManager *)self unlockEnabled]];
    v8 = [NSNumber numberWithBool:[(SDUnlockStateResponse *)v5 passcodeEnabled]];
    v9 = [v6 initWithUnlockEnabled:v7 remotePasscodeEnabled:v8];

    [(SDUnlockKeyManager *)self notifyUnlockStateWithState:v9 error:0];
  }

  else
  {
    v10 = paired_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10023AF58();
    }

    v11 = SFUnlockErrorDomian;
    v14 = NSLocalizedDescriptionKey;
    v15 = @"Response is missing information";
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:v11 code:103 userInfo:v12];
    [(SDUnlockKeyManager *)self notifyUnlockStateWithState:0 error:v13];
  }
}

- (void)sendStartLTKTransfer
{
  v3 = objc_alloc_init(SDUnlockStartLTKTransfer);
  [(SDUnlockStartLTKTransfer *)v3 setVersion:1];
  [(SDUnlockSessionManager *)self logProtoBufSend:v3];
  self->_outstandingStartLTK = 1;
  idsController = [(SDUnlockSessionManager *)self idsController];
  data = [(SDUnlockStartLTKTransfer *)v3 data];
  v6 = [NSNumber numberWithInteger:75];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002383A4;
  v7[3] = &unk_1008CDF90;
  v7[4] = self;
  [idsController sendProtocolBufferData:data withType:108 timeout:v6 option:0 errorHandler:v7];

  [(SDUnlockKeyManager *)self restartLongTermKeyTimer:sub_1001F0530(75 + 45.0 + 10.0)];
}

- (void)sendLongTermKeyResponse:(id)response requestID:(id)d
{
  responseCopy = response;
  dCopy = d;
  v8 = objc_alloc_init(SDUnlockLongTermKeyResponse);
  [(SDUnlockLongTermKeyResponse *)v8 setVersion:1];
  [(SDUnlockLongTermKeyResponse *)v8 setRequestID:dCopy];

  if (responseCopy)
  {
    [(SDUnlockLongTermKeyResponse *)v8 setLongTermKey:responseCopy];
  }

  else
  {
    [(SDUnlockLongTermKeyResponse *)v8 setKeyFailed:1];
  }

  [(SDUnlockSessionManager *)self logProtoBufSend:v8];
  idsController = [(SDUnlockSessionManager *)self idsController];
  data = [(SDUnlockLongTermKeyResponse *)v8 data];
  v11 = [NSNumber numberWithDouble:45.0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100238584;
  v12[3] = &unk_1008CDF90;
  v12[4] = self;
  [idsController sendProtocolBufferData:data withType:107 timeout:v11 option:0 errorHandler:v12];
}

- (void)sendStateRequest
{
  v3 = objc_alloc_init(SDUnlockStateRequest);
  [(SDUnlockStateRequest *)v3 setVersion:1];
  [(SDUnlockSessionManager *)self logProtoBufSend:v3];
  idsController = [(SDUnlockSessionManager *)self idsController];
  data = [(SDUnlockStateRequest *)v3 data];
  v6 = [NSNumber numberWithDouble:10.0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100239398;
  v7[3] = &unk_1008CDF90;
  v7[4] = self;
  [idsController sendProtocolBufferData:data withType:3 timeout:v6 option:1 errorHandler:v7];

  [(SDUnlockKeyManager *)self restartStateTimer];
}

- (void)sendRelockRequestWithReset:(BOOL)reset
{
  resetCopy = reset;
  v5 = objc_alloc_init(SDUnlockRelockRequest);
  [(SDUnlockRelockRequest *)v5 setVersion:1];
  v6 = paired_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending relock request", buf, 2u);
  }

  idsController = [(SDUnlockSessionManager *)self idsController];
  data = [(SDUnlockRelockRequest *)v5 data];
  [idsController sendProtocolBufferData:data withType:111 timeout:0 option:1 errorHandler:&stru_1008D5240];

  if (resetCopy)
  {
    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cancelling session", v10, 2u);
    }

    [(SDUnlockKeyManager *)self resetAndClearState];
  }
}

- (BOOL)shouldStartUnlock
{
  if ([(SDUnlockKeyManager *)self remoteDeviceLocked])
  {
    if (self->_unlockingForKeybagUnlock)
    {
      v3 = paired_unlock_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 0;
        v4 = "Ongoing unlock. Not starting";
        v5 = &v8;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }
    }

    else
    {
      if (![(SDUnlockKeyManager *)self pairedWatchSupportsRelock]|| ![(SDUnlockKeyManager *)self needsOffWristBeforePairedUnlock])
      {
        return 1;
      }

      v3 = paired_unlock_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 0;
        v4 = "Due to previous relock request, Paired Unlock disabled until watch goes off wrist";
        v5 = &v7;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = paired_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Not initiating, remote unlocked";
      v5 = buf;
      goto LABEL_7;
    }
  }

  return 0;
}

- (void)initiateRemoteUnlock
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initiating unlock", v44, 2u);
  }

  if ([(SDUnlockKeyManager *)self unlockingState])
  {
    if ([(SDUnlockKeyManager *)self unlockingState]== 1 && self->_sessionRecord)
    {
      v4 = paired_unlock_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        sessionRecord = self->_sessionRecord;
        *v44 = 138412290;
        *&v44[4] = sessionRecord;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unlock already in progress with record = %@", v44, 0xCu);
      }

      [(SDUnlockSessionRecord *)self->_sessionRecord setExpireTime:dispatch_time([(SDUnlockSessionRecord *)self->_sessionRecord expireTime], 45000000000)];
      [(SDUnlockSessionManager *)self restartUnlockTimer:[(SDUnlockSessionRecord *)self->_sessionRecord expireTime]];
      keyData = [(SDUnlockSessionRecord *)self->_sessionRecord keyData];
      useEscrowRecord = self->_useEscrowRecord;
      v8 = self->_sessionRecord;
      goto LABEL_48;
    }

    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10023B1B0();
    }

    metrics = [(SDUnlockSessionManager *)self metrics];

    if (metrics)
    {
      metrics2 = [(SDUnlockSessionManager *)self metrics];
      [metrics2 setFailureReason:20];
    }

    [(SDUnlockKeyManager *)self resetAndClearState];
    return;
  }

  [(SDUnlockSessionManager *)self updateSecurityManager];
  if (![(SDUnlockSessionManager *)self activeDevicesMatch])
  {
    v20 = +[NSDate date];
    v21 = [v20 dateByAddingTimeInterval:qword_1009731C8];

    v22 = paired_unlock_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10023B248();
    }

    metrics3 = [(SDUnlockSessionManager *)self metrics];

    if (metrics3)
    {
      metrics4 = [(SDUnlockSessionManager *)self metrics];
      [metrics4 setFailureReason:18];
    }

    [(SDUnlockKeyManager *)self resetState];
    deviceSwitchUnlockRetryDate = self->_deviceSwitchUnlockRetryDate;
    self->_deviceSwitchUnlockRetryDate = v21;

    return;
  }

  v12 = paired_unlock_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Active devices match", v44, 2u);
  }

  v13 = paired_unlock_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_useEscrowRecord)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    *v44 = 138412290;
    *&v44[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Using escrow record = %@", v44, 0xCu);
  }

  metrics5 = [(SDUnlockSessionManager *)self metrics];

  if (metrics5)
  {
    v16 = self->_useEscrowRecord;
    metrics6 = [(SDUnlockSessionManager *)self metrics];
    [metrics6 setUsingEscrowRecord:v16];
  }

  if (self->_useEscrowRecord)
  {
    goto LABEL_36;
  }

  securityManager = [(SDUnlockSessionManager *)self securityManager];
  -[SDUnlockSessionManager setUnlockAuthSession:](self, "setUnlockAuthSession:", [securityManager unlockSessionAsOriginator:1 usingEscrow:0 escrowSecret:0]);

  if ([(SDUnlockSessionManager *)self unlockAuthSession]< 0)
  {
    v26 = paired_unlock_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Falling back to escrow record", v44, 2u);
    }

    self->_useEscrowRecord = 1;
LABEL_36:
    *v44 = 0;
    goto LABEL_37;
  }

  v19 = self->_useEscrowRecord;
  *v44 = 0;
  if (!v19)
  {
    goto LABEL_45;
  }

LABEL_37:
  securityManager2 = [(SDUnlockSessionManager *)self securityManager];
  escrowData = [securityManager2 escrowData];

  if (escrowData)
  {
    securityManager3 = [(SDUnlockSessionManager *)self securityManager];
    -[SDUnlockSessionManager setUnlockAuthSession:](self, "setUnlockAuthSession:", [securityManager3 unlockSessionAsOriginator:1 usingEscrow:1 escrowSecret:escrowData errorCode:v44]);
  }

  else
  {
    v30 = paired_unlock_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10023B2B8();
    }

    metrics7 = [(SDUnlockSessionManager *)self metrics];

    if (!metrics7)
    {
      goto LABEL_44;
    }

    securityManager3 = [(SDUnlockSessionManager *)self metrics];
    [securityManager3 setFailureReason:23];
  }

LABEL_44:
LABEL_45:
  if (([(SDUnlockSessionManager *)self unlockAuthSession]& 0x8000000000000000) == 0)
  {
    securityManager4 = [(SDUnlockSessionManager *)self securityManager];
    keyData = [securityManager4 stepWithAuthSession:-[SDUnlockSessionManager unlockAuthSession](self data:{"unlockAuthSession"), 0}];

    if (!keyData)
    {
      v41 = paired_unlock_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10023B3AC();
      }

      metrics8 = [(SDUnlockSessionManager *)self metrics];

      if (metrics8)
      {
        metrics9 = [(SDUnlockSessionManager *)self metrics];
        [metrics9 setFailureReason:21];
      }

      [(SDUnlockKeyManager *)self resetState];
      goto LABEL_49;
    }

    v33 = objc_alloc_init(SDUnlockSessionRecord);
    v34 = self->_sessionRecord;
    self->_sessionRecord = v33;

    [(SDUnlockSessionRecord *)self->_sessionRecord setKeyData:keyData];
    [(SDUnlockSessionRecord *)self->_sessionRecord setUnlockSessionID:[(SDUnlockSessionManager *)self generateSessionID]];
    [(SDUnlockSessionRecord *)self->_sessionRecord setExpireTime:sub_1001F0530(65)];
    [(SDUnlockSessionManager *)self restartUnlockTimer:[(SDUnlockSessionRecord *)self->_sessionRecord expireTime]];
    useEscrowRecord = self->_useEscrowRecord;
    v8 = self->_sessionRecord;
LABEL_48:
    [(SDUnlockKeyManager *)self sendSessionKeyExchangeRequest:keyData usedEscrow:useEscrowRecord sessionID:[(SDUnlockSessionRecord *)v8 unlockSessionID]];
LABEL_49:

    return;
  }

  v35 = paired_unlock_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_10023B2F4(v44);
  }

  metrics10 = [(SDUnlockSessionManager *)self metrics];

  if (metrics10)
  {
    metrics11 = [(SDUnlockSessionManager *)self metrics];
    [metrics11 setFailureReason:21];
  }

  [(SDUnlockKeyManager *)self resetAndClearState];
  if (*v44 == -536870174 || *v44 == -536362984 || *v44 == -536362989)
  {
    v38 = auto_unlock_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      sub_10023B36C();
    }

    metrics12 = [(SDUnlockSessionManager *)self metrics];

    if (metrics12)
    {
      metrics13 = [(SDUnlockSessionManager *)self metrics];
      [metrics13 setFailureReason:22];
    }

    [(SDUnlockKeyManager *)self disableUnlockPairing];
    [(SDUnlockSessionManager *)self sendDisableMessage];
    keyData = [(SDUnlockSessionManager *)self securityManager];
    [keyData deleteLongTermKeys];
    goto LABEL_49;
  }
}

- (BOOL)initiateStashBagCreationWithManifest:(id)manifest
{
  manifestCopy = manifest;
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  escrowData = [securityManager escrowData];

  if (!escrowData)
  {
    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10023B424();
    }

    goto LABEL_10;
  }

  securityManager2 = [(SDUnlockSessionManager *)self securityManager];
  -[SDUnlockSessionManager setStashBagSession:](self, "setStashBagSession:", [securityManager2 stashBagSessionAsOriginator:1 escrowSecret:escrowData manifest:manifestCopy]);

  if ([(SDUnlockSessionManager *)self stashBagSession]< 0)
  {
    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10023B3E8();
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  securityManager3 = [(SDUnlockSessionManager *)self securityManager];
  v9 = [securityManager3 stepWithAuthSession:-[SDUnlockSessionManager stashBagSession](self data:{"stashBagSession"), 0}];

  v10 = v9 != 0;
  if (v9)
  {
    [(SDUnlockKeyManager *)self sendStashKeyRequest:v9 sessionID:[(SDUnlockSessionManager *)self generateSessionID]];
  }

LABEL_11:
  return v10;
}

- (void)initializeMetrics
{
  v3 = objc_alloc_init(SFPairedUnlockEvent);
  [(SDUnlockSessionManager *)self setMetrics:v3];

  v4 = +[SFAutoUnlockManager autoUnlockEnabled];
  metrics = [(SDUnlockSessionManager *)self metrics];
  [metrics setPhoneAutoUnlockEnabled:v4];

  shouldUseTwoPartPill = [(SDUnlockKeyManager *)self shouldUseTwoPartPill];
  metrics2 = [(SDUnlockSessionManager *)self metrics];
  [metrics2 setCanRelock:shouldUseTwoPartPill];

  v23 = +[NSDate date];
  v8 = +[NSCalendar currentCalendar];
  v9 = [v8 components:32 fromDate:v23];
  hour = [v9 hour];
  v11 = [v8 maximumRangeOfUnit:32];
  v13 = ((hour - v11) / v12 * 24.0);
  metrics3 = [(SDUnlockSessionManager *)self metrics];
  [metrics3 setAttemptHourLocal:v13];

  idsController = [(SDUnlockSessionManager *)self idsController];
  activeIDSDevice = [idsController activeIDSDevice];

  productBuildVersion = [activeIDSDevice productBuildVersion];
  metrics4 = [(SDUnlockSessionManager *)self metrics];
  [metrics4 setWatchSoftwareVersion:productBuildVersion];

  modelIdentifier = [activeIDSDevice modelIdentifier];
  metrics5 = [(SDUnlockSessionManager *)self metrics];
  [metrics5 setWatchHardwareModel:modelIdentifier];

  v21 = +[NSDate date];
  metricDates = [(SDUnlockKeyManager *)self metricDates];
  [metricDates setStarted:v21];
}

- (void)consolidateLatencies:(id)latencies
{
  latenciesCopy = latencies;
  v4 = +[NSDate date];
  if (latenciesCopy)
  {
    started = [latenciesCopy started];
    if (started)
    {
      v6 = started;
      metrics = [(SDUnlockSessionManager *)self metrics];

      if (metrics)
      {
        dispatch_assert_queue_V2(&_dispatch_main_q);
        keyExchangeResponseReceived = [latenciesCopy keyExchangeResponseReceived];

        if (keyExchangeResponseReceived)
        {
          keyExchangeResponseReceived2 = [latenciesCopy keyExchangeResponseReceived];
          started2 = [latenciesCopy started];
          [keyExchangeResponseReceived2 timeIntervalSinceDate:started2];
          v12 = v11;

          metrics2 = [(SDUnlockSessionManager *)self metrics];
          [metrics2 setKeyExchangeDuration:(v12 * 1000.0)];
        }

        else
        {
          metrics2 = [latenciesCopy started];
          [v4 timeIntervalSinceDate:metrics2];
          v15 = (v14 * 1000.0);
          metrics3 = [(SDUnlockSessionManager *)self metrics];
          [metrics3 setKeyExchangeDuration:v15];
        }

        keyExchangeResponseReceived3 = [latenciesCopy keyExchangeResponseReceived];
        if (keyExchangeResponseReceived3 && (v18 = keyExchangeResponseReceived3, [latenciesCopy pillUpdated], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
        {
          pillUpdated = [latenciesCopy pillUpdated];
          keyExchangeResponseReceived4 = [latenciesCopy keyExchangeResponseReceived];
          [pillUpdated timeIntervalSinceDate:keyExchangeResponseReceived4];
          v23 = (v22 * 1000.0);
          metrics4 = [(SDUnlockSessionManager *)self metrics];
          [metrics4 setPillDelay:v23];
        }

        else
        {
          keyExchangeResponseReceived5 = [latenciesCopy keyExchangeResponseReceived];

          if (!keyExchangeResponseReceived5)
          {
LABEL_13:
            pillUpdated2 = [latenciesCopy pillUpdated];
            if (pillUpdated2 && (v29 = pillUpdated2, [latenciesCopy confirmationReceived], v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
            {
              confirmationReceived = [latenciesCopy confirmationReceived];
              pillUpdated3 = [latenciesCopy pillUpdated];
              [confirmationReceived timeIntervalSinceDate:pillUpdated3];
              v34 = v33;

              metrics5 = [(SDUnlockSessionManager *)self metrics];
              [metrics5 setConfirmationDuration:(v34 * 1000.0)];
            }

            else
            {
              pillUpdated4 = [latenciesCopy pillUpdated];

              if (!pillUpdated4)
              {
LABEL_19:
                started3 = [latenciesCopy started];
                [v4 timeIntervalSinceDate:started3];
                v42 = (v41 * 1000.0);
                metrics6 = [(SDUnlockSessionManager *)self metrics];
                [metrics6 setTotalUnlockDuration:v42];

                metrics7 = [(SDUnlockSessionManager *)self metrics];
                LODWORD(v42) = [metrics7 keyExchangeDuration];
                metrics8 = [(SDUnlockSessionManager *)self metrics];
                confirmationDuration = [metrics8 confirmationDuration];
                metrics9 = [(SDUnlockSessionManager *)self metrics];
                [metrics9 setTotalUnlockProcessDuration:confirmationDuration + v42];

                goto LABEL_20;
              }

              metrics5 = [latenciesCopy pillUpdated];
              [v4 timeIntervalSinceDate:metrics5];
              v38 = (v37 * 1000.0);
              metrics10 = [(SDUnlockSessionManager *)self metrics];
              [metrics10 setConfirmationDuration:v38];
            }

            goto LABEL_19;
          }

          pillUpdated = [latenciesCopy keyExchangeResponseReceived];
          [v4 timeIntervalSinceDate:pillUpdated];
          v27 = (v26 * 1000.0);
          keyExchangeResponseReceived4 = [(SDUnlockSessionManager *)self metrics];
          [keyExchangeResponseReceived4 setPillDelay:v27];
        }

        goto LABEL_13;
      }
    }
  }

LABEL_20:
}

@end