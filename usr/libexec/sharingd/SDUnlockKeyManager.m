@interface SDUnlockKeyManager
+ (id)sharedKeyManager;
- (BOOL)initiateStashBagCreationWithManifest:(id)a3;
- (BOOL)pairedWatchSupportsRelock;
- (BOOL)shouldStartUnlock;
- (BOOL)startUnlockIfNeeded;
- (BOOL)unlockEnabled;
- (BOOL)updateLongTermKey:(id)a3;
- (SDUnlockKeyManager)init;
- (id)generateDebugInfo;
- (id)getWatchNameForTesting;
- (id)stringForState:(int64_t)a3;
- (int64_t)unlockingState;
- (void)addObservers;
- (void)addObserversForTests;
- (void)bannerDidDismiss;
- (void)bannerLockButtonWasTapped;
- (void)beginUnlockIfNotOnLockScreen;
- (void)checkDevicePairingState;
- (void)consolidateLatencies:(id)a3;
- (void)debugInfoRequested:(id)a3;
- (void)deviceDidEnterConfigurationState:(id)a3;
- (void)devicesDidFailToPair:(id)a3;
- (void)devicesDidUnpair:(id)a3;
- (void)disableUnlockPairingForSecurityManager:(id)a3;
- (void)establishStashBagWithCompletionHandler:(id)a3;
- (void)establishStashBagWithManifest:(id)a3 completionHandler:(id)a4;
- (void)handleActiveDeviceUpdated;
- (void)handleAutoUnlockEnabledStateUpdated;
- (void)handleClassALongTermKeyRequest:(id)a3;
- (void)handleConfigState;
- (void)handleCreateEscrowSecret:(id)a3;
- (void)handleLongTermKeyRequest:(id)a3;
- (void)handlePairedWatchWristStateChanged;
- (void)handleRemoteLockStateChanged:(id)a3;
- (void)handleResetState:(id)a3;
- (void)handleSessionKeyExchangeResponse:(id)a3;
- (void)handleSetupRequest:(id)a3;
- (void)handleStashConfirmation:(id)a3;
- (void)handleStashKeyExchangeResponse:(id)a3;
- (void)handleSystemUIChanged;
- (void)handleUILockStateChange;
- (void)handleUnlockConfirmation:(id)a3;
- (void)handleUnlockStateResponse:(id)a3;
- (void)idsController:(id)a3 didReceiveProtoData:(id)a4 forType:(unsigned __int16)a5;
- (void)idsControllerNearbyStateChanged:(id)a3;
- (void)initializeMetrics;
- (void)initiateRemoteUnlock;
- (void)invalidateDelayedStartTimer;
- (void)invalidateLongTermKeyTimer;
- (void)invalidateStashTimer;
- (void)invalidateStateTimer;
- (void)keyBagLockStateChange:(id)a3;
- (void)newDeviceBecameActive:(id)a3;
- (void)notifyStashStateWithError:(id)a3;
- (void)notifyUnlockStateWithState:(id)a3 error:(id)a4;
- (void)releaseKeyBagAssertion;
- (void)resetAndClearState;
- (void)resetSetupState;
- (void)resetState;
- (void)restartDelayedStartTimer:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)restartLongTermKeyTimer:(unint64_t)a3;
- (void)restartStashTimer;
- (void)restartStateTimer;
- (void)sendLongTermKeyResponse:(id)a3 requestID:(id)a4;
- (void)sendRelockRequestWithReset:(BOOL)a3;
- (void)sendStartLTKTransfer;
- (void)sendStateRequest;
- (void)setUnlockingState:(int64_t)a3;
- (void)startLTKExchange;
- (void)stashTimerFired:(id)a3;
- (void)syncUnlockEnabled:(BOOL)a3;
- (void)takeMobileKeybagAssertion;
- (void)unlockStateForDevice:(id)a3 completionHandler:(id)a4;
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
  v4 = [v3 systemUIFlags];

  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [v5 deviceKeyBagUnlocked];

  if ((v4 & 2) != 0 || ([(SDUnlockKeyManager *)self shouldUseTwoPartPill]& v6) != 1 || self->_unlockingForKeybagUnlock)
  {
    v7 = paired_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ((v4 & 2) != 0)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = [(SDUnlockKeyManager *)self shouldUseTwoPartPill];
      unlockingForKeybagUnlock = self->_unlockingForKeybagUnlock;
      if (v9)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v19 = 138413058;
      if (v6)
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
  v2 = [(SDUnlockSessionManager *)self idsController];
  v3 = [v2 activeIDSDevice];

  if (v3)
  {
    [v3 operatingSystemVersion];
    v4 = v8;
    [v3 operatingSystemVersion];
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
  v4 = [v3 deviceUIUnlocked];

  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Key manager received UI lock state changed (UI unlocked: %@)", &v11, 0xCu);
  }

  if (v4)
  {
    v7 = [(SDUnlockSessionManager *)self securityManager];
    [v7 migrateEscrowDataIfNeeded];

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
    v3 = [(SDUnlockKeyManager *)self shouldStartUnlock];
    if (v3)
    {
      [(SDUnlockKeyManager *)self initializeMetrics];
      [(SDUnlockKeyManager *)self initiateRemoteUnlock];
      LOBYTE(v3) = 1;
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

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)unlockEnabled
{
  v7.receiver = self;
  v7.super_class = SDUnlockKeyManager;
  v3 = [(SDUnlockSessionManager *)&v7 unlockEnabled];
  v4 = [(SDUnlockSessionManager *)self securityManager];
  v5 = [v4 checkForEscrowData];

  return v3 & v5;
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
      v12 = [(SDUnlockSessionManager *)v3 pairingCompatibilityState];
      v13 = [(SDUnlockSessionManager *)v3 deviceIsPaired];
      v14 = @"NO";
      if (v13)
      {
        v14 = @"YES";
      }

      *buf = 67109378;
      v22 = v12;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Key loading NanoRegitry, (compatibility state = %d, is paired = %@)", buf, 0x12u);
    }

    if ([(SDUnlockSessionManager *)v3 inConfigureState])
    {
      v15 = [(SDUnlockSessionManager *)v3 securityManager];
      v16 = [v15 localLongTermKey];
      if (v16)
      {
      }

      else
      {
        v17 = [(SDUnlockSessionManager *)v3 deviceIsPaired];

        if ((v17 & 1) == 0)
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

- (void)debugInfoRequested:(id)a3
{
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  v5 = [(SDUnlockKeyManager *)self generateDebugInfo];
  sub_100086F68(v6, v5);
}

- (id)generateDebugInfo
{
  v3 = objc_opt_new();
  v16.receiver = self;
  v16.super_class = SDUnlockKeyManager;
  v4 = [(SDUnlockSessionManager *)&v16 generateDebugInfo];
  [v3 addObjectsFromArray:v4];

  v5 = [(SDUnlockSessionManager *)self securityManager];
  if ([v5 checkForEscrowData])
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

  v12 = [(SDUnlockSessionManager *)self securityManager];
  v13 = [v12 allKeychainItems];
  v14 = [NSString stringWithFormat:@"Keychain Items:%@", v13];
  [v3 addObject:v14];

  return v3;
}

- (id)getWatchNameForTesting
{
  v3 = [(SDUnlockSessionManager *)self activeDevice];

  if (v3)
  {
    v4 = [(SDUnlockSessionManager *)self activeDevice];
    v5 = [v4 valueForProperty:NRDevicePropertyName];
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

- (void)deviceDidEnterConfigurationState:(id)a3
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
    v5 = [v4 deviceKeyBagDisabled];

    if (!v5)
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

- (void)keyBagLockStateChange:(id)a3
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
  v8 = [v7 deviceKeyBagUnlocked];

  if (!self->_ltkWaitingForUnlock || (v8 & 1) != 0)
  {
    if (!self->_ltkWaitingForUnlock)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = +[SDStatusMonitor sharedMonitor];
  v10 = [v9 deviceKeyBagDisabled];

  if (v10)
  {
LABEL_8:
    [(SDUnlockKeyManager *)self startLTKExchange];
    self->_ltkWaitingForUnlock = 0;
  }

LABEL_9:
  [(SDUnlockKeyManager *)self setAutoUnlockEnabledUpdatedAfterFirstUnlock:1];
  if (v8)
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

      v12 = [(SDUnlockSessionManager *)self metrics];

      if (v12)
      {
        v13 = [(SDUnlockSessionManager *)self metrics];
        [v13 setFailureReason:14];
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

- (void)devicesDidUnpair:(id)a3
{
  v4 = a3;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138477827;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received devices unpaired notification: %{private}@", &v14, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  v8 = paired_unlock_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device from notification %{private}@", &v14, 0xCu);
    }

    v10 = [v7 valueForProperty:NRDevicePropertyPairingID];
    v9 = [v10 UUIDString];

    v11 = [v7 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v12 = [v7 valueForProperty:NRDevicePropertyDeviceNameString];
    if (v9)
    {
      v13 = [[SDUnlockSecurityManager alloc] initWithPairingID:v9 pairingStorePath:v11 deviceName:v12];
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

- (void)devicesDidFailToPair:(id)a3
{
  v4 = a3;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138477827;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received devices failed to pair notification: %{private}@", &v14, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  v8 = paired_unlock_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device from notification %{private}@", &v14, 0xCu);
    }

    v10 = [v7 valueForProperty:NRDevicePropertyPairingID];
    v9 = [v10 UUIDString];

    v11 = [v7 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v12 = [v7 valueForProperty:NRDevicePropertyDeviceNameString];
    if (v9)
    {
      v13 = [[SDUnlockSecurityManager alloc] initWithPairingID:v9 pairingStorePath:v11 deviceName:v12];
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

- (void)newDeviceBecameActive:(id)a3
{
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SDUnlockSessionManager *)self activeDeviceDescription];
    v6 = 138477827;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device became active %{private}@", &v6, 0xCu);
  }

  [(SDUnlockKeyManager *)self handleActiveDeviceUpdated];
}

- (void)restartDelayedStartTimer:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
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
    v12 = v6;
    v9 = sub_1001F0548(0, &_dispatch_main_q, v11);
    v10 = self->_delayedStartTimer;
    self->_delayedStartTimer = v9;

    dispatch_resume(self->_delayedStartTimer);
    delayedStartTimer = self->_delayedStartTimer;
  }

  sub_1001F05F0(delayedStartTimer, a3);
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

- (void)restartLongTermKeyTimer:(unint64_t)a3
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

  sub_1001F05F0(longTermKeyTimer, a3);
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

- (void)disableUnlockPairingForSecurityManager:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 deleteEscrowData];
    v8.receiver = self;
    v8.super_class = SDUnlockKeyManager;
    [(SDUnlockSessionManager *)&v8 disableUnlockPairingForSecManager:v5];
  }

  else
  {
    v6 = [(SDUnlockSessionManager *)self securityManager];
    [v6 deleteEscrowData];

    v7.receiver = self;
    v7.super_class = SDUnlockKeyManager;
    [(SDUnlockSessionManager *)&v7 disableUnlockPairing];
  }
}

- (void)syncUnlockEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SDUnlockKeyManager *)self unlockEnabled];
  if (v3)
  {
    if ((v5 & 1) == 0)
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

  else if (v5)
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

- (void)unlockStateForDevice:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v5 = [a4 copy];
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

- (void)notifyUnlockStateWithState:(id)a3 error:(id)a4
{
  stateHandler = self->_stateHandler;
  if (stateHandler)
  {
    stateHandler[2](stateHandler, a3, a4);
    v6 = self->_stateHandler;
    self->_stateHandler = 0;
  }

  [(SDUnlockKeyManager *)self invalidateStateTimer:a3];
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

- (void)stashTimerFired:(id)a3
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

- (void)establishStashBagWithCompletionHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10023556C;
  v4[3] = &unk_1008CF578;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)establishStashBagWithManifest:(id)a3 completionHandler:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002357F8;
  block[3] = &unk_1008D0E80;
  v9 = a3;
  v10 = a4;
  block[4] = self;
  v6 = v9;
  v7 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)notifyStashStateWithError:(id)a3
{
  v4 = a3;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling stash handler with error = %@", &v8, 0xCu);
  }

  stashHandler = self->_stashHandler;
  if (stashHandler)
  {
    stashHandler[2](stashHandler, v4 == 0, v4);
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
  v3 = [(SDUnlockSessionManager *)self metrics];

  if (v3)
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(SDUnlockSessionManager *)self metrics];
      v6 = sub_100243170([v5 failureReason]);
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting key manager. Reason: %@", buf, 0xCu);
    }

    if ([(SDUnlockKeyManager *)self unlockingState]>= 1)
    {
      v7 = [(SDUnlockKeyManager *)self unlockingState];
      v8 = [(SDUnlockSessionManager *)self metrics];
      [v8 setPhoneState:v7];
    }

    v9 = [(SDUnlockKeyManager *)self metricDates];
    [(SDUnlockKeyManager *)self consolidateLatencies:v9];

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
  v2 = self;
  objc_sync_enter(v2);
  unlockingState = v2->_unlockingState;
  objc_sync_exit(v2);

  return unlockingState;
}

- (void)setUnlockingState:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v4->_unlockingState = a3;
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SDUnlockKeyManager *)v4 stringForState:v4->_unlockingState];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting unlocking state to %@", &v7, 0xCu);
  }

  objc_sync_exit(v4);
}

- (id)stringForState:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown State";
  }

  else
  {
    return *(&off_1008D5260 + a3);
  }
}

- (void)idsController:(id)a3 didReceiveProtoData:(id)a4 forType:(unsigned __int16)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  if (v5 > 1003)
  {
    if (v5 > 1006)
    {
      switch(v5)
      {
        case 1007:
          [(SDUnlockKeyManager *)self invalidateStashTimer];
          [(SDUnlockKeyManager *)self handleStashConfirmation:v8];
          break;
        case 1008:
          [(SDUnlockKeyManager *)self handleLongTermKeyRequest:v8];
          [(SDUnlockKeyManager *)self invalidateLongTermKeyTimer];
          break;
        case 1009:
          [(SDUnlockKeyManager *)self handleClassALongTermKeyRequest:v8];
          break;
      }
    }

    else if (v5 == 1004)
    {
      [(SDUnlockSessionManager *)self invalidateUnlockTimer];
      [(SDUnlockKeyManager *)self handleSessionKeyExchangeResponse:v8];
    }

    else if (v5 == 1005)
    {
      [(SDUnlockSessionManager *)self invalidateUnlockTimer];
      [(SDUnlockKeyManager *)self handleUnlockConfirmation:v8];
    }

    else
    {
      [(SDUnlockKeyManager *)self invalidateStashTimer];
      [(SDUnlockKeyManager *)self handleStashKeyExchangeResponse:v8];
    }
  }

  else if (v5 > 1000)
  {
    if (v5 == 1001)
    {
      [(SDUnlockKeyManager *)self handleRemoteLockStateChanged:v8];
    }

    else if (v5 == 1002)
    {
      [(SDUnlockKeyManager *)self handleSetupRequest:v8];
    }

    else
    {
      [(SDUnlockKeyManager *)self handleCreateEscrowSecret:v8];
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        [(SDUnlockKeyManager *)self handleResetState:v8];
        break;
      case 2:
        v9 = [[SDUnlockDisable alloc] initWithData:v8];
        [(SDUnlockSessionManager *)self logProtoBufReceived:v9];

        [(SDUnlockKeyManager *)self disableUnlockPairing];
        break;
      case 4:
        [(SDUnlockKeyManager *)self invalidateStateTimer];
        [(SDUnlockKeyManager *)self handleUnlockStateResponse:v8];
        break;
    }
  }
}

- (void)idsControllerNearbyStateChanged:(id)a3
{
  v4 = [(SDUnlockSessionManager *)self idsController];
  v5 = [v4 isDefaultPairedDeviceNearby];

  if ((v5 & 1) == 0)
  {

    [(SDUnlockKeyManager *)self setRemoteDeviceLocked:1];
  }
}

- (void)handleRemoteLockStateChanged:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [[SDUnlockLockStateUpdated alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if (v5 && [(SDUnlockLockStateUpdated *)v5 hasUnlocked])
  {
    if ([(SDUnlockKeyManager *)self unlockEnabled])
    {
      v6 = [(SDUnlockLockStateUpdated *)v5 unlocked];
      v7 = paired_unlock_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
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

          v11 = [(SDUnlockSessionManager *)self metrics];

          if (v11)
          {
            v12 = [(SDUnlockSessionManager *)self metrics];
            [v12 setFailureReason:15];
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
      v13 = [(SDUnlockSessionManager *)self securityManager];
      if (v13)
      {
        v14 = v13;
        v15 = [(SDUnlockSessionManager *)self securityManager];
        v16 = [v15 pairingID];
        v17 = [(SDUnlockSessionManager *)self pairingID];
        if ([v16 isEqualToString:v17])
        {
          v18 = [(SDUnlockSessionManager *)self securityManager];
          v19 = [v18 pairingStorePath];
          v20 = [(SDUnlockSessionManager *)self pairingStorePath];
          v21 = [v19 isEqualToString:v20];

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

- (void)handleLongTermKeyRequest:(id)a3
{
  self->_outstandingStartLTK = 0;
  v4 = a3;
  v5 = [[SDUnlockLongTermKeyRequest alloc] initWithData:v4];

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
    v14 = [(SDUnlockLongTermKeyRequest *)v5 requestID];
    [(SDUnlockKeyManager *)self sendLongTermKeyResponse:0 requestID:v14];

    goto LABEL_15;
  }

  v8 = [(SDUnlockSessionManager *)self securityManager];
  v9 = [v8 localLongTermKey];
  v10 = [(SDUnlockLongTermKeyRequest *)v5 requestID];
  [(SDUnlockKeyManager *)self sendLongTermKeyResponse:v9 requestID:v10];

  [(SDUnlockKeyManager *)self releaseKeyBagAssertion];
LABEL_15:
}

- (void)handleClassALongTermKeyRequest:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockClassALongTermKeyRequest alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[SDStatusMonitor sharedMonitor];
  v7 = [v6 deviceKeyBagUnlocked];

  if (v7)
  {
    if ([(SDUnlockClassALongTermKeyRequest *)v5 hasLongTermKey])
    {
      [(SDUnlockSessionManager *)self updateSecurityManager];
      v8 = [(SDUnlockClassALongTermKeyRequest *)v5 longTermKey];
      v9 = [(SDUnlockKeyManager *)self updateLongTermKey:v8];

      if (v9)
      {
        v10 = [(SDUnlockSessionManager *)self securityManager];
        v11 = [v10 localLongTermKey];
        [(SDUnlockKeyManager *)self sendClassALongTermKeyResponse:v11 sessionID:[(SDUnlockClassALongTermKeyRequest *)v5 sessionID] errorCode:0];

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
    v13 = [v12 deviceKeyBagDisabled];

    if (v13)
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

- (BOOL)updateLongTermKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SDUnlockSessionManager *)self securityManager];
    v6 = [v5 generateLocalLongTermKey:1];

    if (v6)
    {
      v7 = [(SDUnlockSessionManager *)self securityManager];
      v8 = [v7 signRemoteKey:v4 withLocalKey:v6 localKeyClass:1 remoteKeyClass:3];

      v9 = v8 != 0;
      if (v8)
      {
        v10 = [(SDUnlockSessionManager *)self securityManager];
        [v10 updateLocalLongTermKey:v6 remoteLongTermKey:v8];
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

- (void)handleSetupRequest:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockSetupRequest alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[SDStatusMonitor sharedMonitor];
  v7 = [v6 deviceKeyBagUnlocked];

  if (v7)
  {
    if (v5)
    {
      if (![(SDUnlockSetupRequest *)v5 hasLongTermKey])
      {
        v10 = [(SDUnlockSetupRequest *)v5 sessionID];
        v11 = self;
        v12 = 0;
        goto LABEL_11;
      }

      v8 = [(SDUnlockSetupRequest *)v5 longTermKey];
      v9 = [(SDUnlockKeyManager *)self updateLongTermKey:v8];

      if (v9)
      {
        v10 = [(SDUnlockSetupRequest *)v5 sessionID];
        v11 = self;
        v12 = 1;
LABEL_11:
        [(SDUnlockKeyManager *)v11 handleEscrowSessionRequest:v10 withUpdatedLongTermKey:v12];
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
    v14 = [v13 deviceKeyBagDisabled];

    if (v14)
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

- (void)handleCreateEscrowSecret:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockSetupCreateSecret alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[SDStatusMonitor sharedMonitor];
  v7 = [v6 deviceKeyBagUnlocked];

  if (v7)
  {
    if (v5 && [(SDUnlockSetupCreateSecret *)v5 hasToken])
    {
      v25 = 0;
      v8 = [(SDUnlockSessionManager *)self securityManager];
      v9 = [(SDUnlockSessionManager *)self setupAuthSession];
      v10 = [(SDUnlockSetupCreateSecret *)v5 token];
      v11 = [v8 stepWithAuthSession:v9 data:v10 authStep:0 errorCode:&v25];

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

          v20 = [(SDUnlockSessionManager *)self securityManager];
          [v20 deleteLongTermKeys];

          v17 = 188;
        }

        else
        {
          v17 = 101;
        }

        v16 = @"Could not complete step";
        goto LABEL_11;
      }

      v12 = [(SDUnlockSessionManager *)self securityManager];
      v13 = [v12 escrowSecretWithAuthSession:{-[SDUnlockSessionManager setupAuthSession](self, "setupAuthSession")}];

      if (v13)
      {
        v14 = [(SDUnlockSessionManager *)self securityManager];
        v15 = [v14 storeEscrowData:v13];

        if (v15)
        {
          [(SDUnlockKeyManager *)self sendSetupCreateEscrowRecordWithSessionID:[(SDUnlockSetupCreateSecret *)v5 sessionID] stepData:v11 errorCode:0];
          [(SDUnlockSessionManager *)self enableUnlockPairing];
          [(SDUnlockKeyManager *)self resetSetupState];

          goto LABEL_14;
        }

        v21 = +[SDStatusMonitor sharedMonitor];
        v22 = [v21 deviceKeyBagLocked];
        v23 = @"NO";
        if (v22)
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

- (void)handleSessionKeyExchangeResponse:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockSessionKeyExchangeResponse alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[NSDate date];
  v7 = [(SDUnlockKeyManager *)self metricDates];
  [v7 setKeyExchangeResponseReceived:v6];

  if ([(SDUnlockKeyManager *)self unlockingState]== 1 && [(SDUnlockSessionKeyExchangeResponse *)v5 hasKey])
  {
    if ([(SDUnlockSessionKeyExchangeResponse *)v5 hasSessionID]&& (v8 = [(SDUnlockSessionKeyExchangeResponse *)v5 sessionID], [(SDUnlockSessionRecord *)self->_sessionRecord unlockSessionID]== v8))
    {
      v45 = 0;
      v9 = [(SDUnlockSessionManager *)self securityManager];
      v10 = [(SDUnlockSessionManager *)self unlockAuthSession];
      v11 = [(SDUnlockSessionKeyExchangeResponse *)v5 key];
      v12 = [v9 stepWithAuthSession:v10 data:v11 authStep:0 errorCode:&v45];

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

          v14 = [(SDUnlockSessionManager *)self activeDevice];
          v15 = [v14 valueForProperty:NRDevicePropertyName];

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
            v38 = [(SDUnlockKeyManager *)self metricDates];
            v39 = [v38 keyExchangeResponseReceived];
            v40 = [(SDUnlockKeyManager *)self metricDates];
            [v40 setPillUpdated:v39];

            [(SDUnlockKeyManager *)self sendSessionAuthenticationToken:v12 sessionID:[(SDUnlockSessionKeyExchangeResponse *)v5 sessionID]];
            v41 = +[SDHUDManager shared];
            [v41 postPairedUnlockBannerFor:v15 needsLockButton:1 needsUpdate:0];
          }
        }

        else
        {
          v33 = [(SDUnlockKeyManager *)self metricDates];
          v34 = [v33 keyExchangeResponseReceived];
          v35 = [(SDUnlockKeyManager *)self metricDates];
          [v35 setPillUpdated:v34];

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
          v30 = [(SDUnlockSessionManager *)self securityManager];
          [v30 deleteLongTermKeys];

          v31 = [(SDUnlockSessionManager *)self metrics];

          if (v31)
          {
            v32 = [(SDUnlockSessionManager *)self metrics];
            [v32 setFailureReason:22];
          }
        }

        else
        {
          v36 = [(SDUnlockSessionManager *)self metrics];

          if (v36)
          {
            v37 = [(SDUnlockSessionManager *)self metrics];
            [v37 setFailureReason:3];
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
        v27 = [(SDUnlockSessionRecord *)self->_sessionRecord unlockSessionID];
        *buf = 134218240;
        v47 = *&v27;
        v48 = 2048;
        v49 = [(SDUnlockSessionKeyExchangeResponse *)v5 sessionID];
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
      v20 = [(SDUnlockSessionManager *)self metrics];

      if (v20)
      {
        v21 = [(SDUnlockSessionManager *)self metrics];
        [v21 setRetriedWithEscrowRecord:1];
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

    v24 = [(SDUnlockSessionManager *)self metrics];

    if (v24)
    {
      v25 = [(SDUnlockSessionManager *)self metrics];
      [v25 setFailureReason:v23];
    }

    [(SDUnlockSessionManager *)self sendResetMessage:[(SDUnlockSessionKeyExchangeResponse *)v5 sessionID] reason:v23];
  }
}

- (void)handleUnlockConfirmation:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockSessionConfirmation alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  v6 = +[NSDate date];
  v7 = [(SDUnlockKeyManager *)self metricDates];
  [v7 setConfirmationReceived:v6];

  if (-[SDUnlockKeyManager unlockingState](self, "unlockingState") == 2 && -[SDUnlockSessionConfirmation hasSuccess](v5, "hasSuccess") && -[SDUnlockSessionConfirmation success](v5, "success") && (-[SDUnlockSessionManager securityManager](self, "securityManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 confirmUnlockWithAuthSession:{-[SDUnlockSessionManager unlockAuthSession](self, "unlockAuthSession")}], v8, v9))
  {
    self->_useEscrowRecord = 0;
    v10 = [(SDUnlockSessionManager *)self metrics];

    if (v10)
    {
      v11 = [(SDUnlockSessionManager *)self metrics];
      [v11 setSucceeded:1];
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
      v13 = [(SDUnlockSessionManager *)self activeDevice];
      v14 = [v13 valueForProperty:NRDevicePropertyName];

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

      v19 = [(SDUnlockSessionManager *)self metrics];

      if (v19)
      {
        v20 = [(SDUnlockSessionManager *)self metrics];
        [v20 setFailureReason:25];
      }

      [(SDUnlockKeyManager *)self resetAndClearState];
    }

    else
    {
      if (v18)
      {
        v21 = [(SDUnlockKeyManager *)self unlockingState];
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

        HIDWORD(v26) = v21;
        v27 = 2112;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Token unlock failed, retrying (state = %d, confirmation has success = %@, confirmation success = %@)", &v26, 0x1Cu);
      }

      [(SDUnlockKeyManager *)self resetAndClearState];
      self->_unlockingForKeybagUnlock = 1;
      v24 = [(SDUnlockSessionManager *)self metrics];

      if (v24)
      {
        v25 = [(SDUnlockSessionManager *)self metrics];
        [v25 setRetriedWithEscrowRecord:1];
      }

      [(SDUnlockKeyManager *)self initiateRemoteUnlock];
    }
  }
}

- (void)handleResetState:(id)a3
{
  v4 = a3;
  v10 = [[SDUnlockReset alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v10];
  if ([(SDUnlockReset *)v10 hasResetReason])
  {
    v5 = [(SDUnlockSessionManager *)self metrics];

    if (v5)
    {
      v6 = [(SDUnlockReset *)v10 resetReason];
      v7 = [(SDUnlockSessionManager *)self metrics];
      [v7 setFailureReason:v6];
    }
  }

  sessionRecord = self->_sessionRecord;
  if (!sessionRecord || (v9 = [(SDUnlockSessionRecord *)sessionRecord unlockSessionID], [(SDUnlockReset *)v10 sessionID]== v9))
  {
    [(SDUnlockKeyManager *)self resetAndClearState];
  }
}

- (void)handleStashKeyExchangeResponse:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockStashKeyExchangeResponse alloc] initWithData:v4];

  [(SDUnlockSessionManager *)self logProtoBufReceived:v5];
  if ([(SDUnlockStashKeyExchangeResponse *)v5 hasKey])
  {
    v6 = [(SDUnlockSessionManager *)self securityManager];
    v7 = [(SDUnlockSessionManager *)self stashBagSession];
    v8 = [(SDUnlockStashKeyExchangeResponse *)v5 key];
    v9 = [v6 stepWithAuthSession:v7 data:v8];

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
      v10 = [(SDUnlockStashKeyExchangeResponse *)v5 errorCode];
    }

    else
    {
      v10 = 103;
    }

    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10023AEA8();
    }

    v12 = SFUnlockErrorDomian;
    v13 = v10;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"Error getting repsonse key";
    v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [NSError errorWithDomain:v12 code:v13 userInfo:v9];
    [(SDUnlockKeyManager *)self notifyStashStateWithError:v14];
  }
}

- (void)handleStashConfirmation:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockStashConfirmation alloc] initWithData:v4];

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

- (void)handleUnlockStateResponse:(id)a3
{
  v4 = a3;
  v5 = [[SDUnlockStateResponse alloc] initWithData:v4];

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
  v4 = [(SDUnlockSessionManager *)self idsController];
  v5 = [(SDUnlockStartLTKTransfer *)v3 data];
  v6 = [NSNumber numberWithInteger:75];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002383A4;
  v7[3] = &unk_1008CDF90;
  v7[4] = self;
  [v4 sendProtocolBufferData:v5 withType:108 timeout:v6 option:0 errorHandler:v7];

  [(SDUnlockKeyManager *)self restartLongTermKeyTimer:sub_1001F0530(75 + 45.0 + 10.0)];
}

- (void)sendLongTermKeyResponse:(id)a3 requestID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SDUnlockLongTermKeyResponse);
  [(SDUnlockLongTermKeyResponse *)v8 setVersion:1];
  [(SDUnlockLongTermKeyResponse *)v8 setRequestID:v7];

  if (v6)
  {
    [(SDUnlockLongTermKeyResponse *)v8 setLongTermKey:v6];
  }

  else
  {
    [(SDUnlockLongTermKeyResponse *)v8 setKeyFailed:1];
  }

  [(SDUnlockSessionManager *)self logProtoBufSend:v8];
  v9 = [(SDUnlockSessionManager *)self idsController];
  v10 = [(SDUnlockLongTermKeyResponse *)v8 data];
  v11 = [NSNumber numberWithDouble:45.0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100238584;
  v12[3] = &unk_1008CDF90;
  v12[4] = self;
  [v9 sendProtocolBufferData:v10 withType:107 timeout:v11 option:0 errorHandler:v12];
}

- (void)sendStateRequest
{
  v3 = objc_alloc_init(SDUnlockStateRequest);
  [(SDUnlockStateRequest *)v3 setVersion:1];
  [(SDUnlockSessionManager *)self logProtoBufSend:v3];
  v4 = [(SDUnlockSessionManager *)self idsController];
  v5 = [(SDUnlockStateRequest *)v3 data];
  v6 = [NSNumber numberWithDouble:10.0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100239398;
  v7[3] = &unk_1008CDF90;
  v7[4] = self;
  [v4 sendProtocolBufferData:v5 withType:3 timeout:v6 option:1 errorHandler:v7];

  [(SDUnlockKeyManager *)self restartStateTimer];
}

- (void)sendRelockRequestWithReset:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(SDUnlockRelockRequest);
  [(SDUnlockRelockRequest *)v5 setVersion:1];
  v6 = paired_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending relock request", buf, 2u);
  }

  v7 = [(SDUnlockSessionManager *)self idsController];
  v8 = [(SDUnlockRelockRequest *)v5 data];
  [v7 sendProtocolBufferData:v8 withType:111 timeout:0 option:1 errorHandler:&stru_1008D5240];

  if (v3)
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
      v6 = [(SDUnlockSessionRecord *)self->_sessionRecord keyData];
      useEscrowRecord = self->_useEscrowRecord;
      v8 = self->_sessionRecord;
      goto LABEL_48;
    }

    v9 = paired_unlock_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10023B1B0();
    }

    v10 = [(SDUnlockSessionManager *)self metrics];

    if (v10)
    {
      v11 = [(SDUnlockSessionManager *)self metrics];
      [v11 setFailureReason:20];
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

    v23 = [(SDUnlockSessionManager *)self metrics];

    if (v23)
    {
      v24 = [(SDUnlockSessionManager *)self metrics];
      [v24 setFailureReason:18];
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

  v15 = [(SDUnlockSessionManager *)self metrics];

  if (v15)
  {
    v16 = self->_useEscrowRecord;
    v17 = [(SDUnlockSessionManager *)self metrics];
    [v17 setUsingEscrowRecord:v16];
  }

  if (self->_useEscrowRecord)
  {
    goto LABEL_36;
  }

  v18 = [(SDUnlockSessionManager *)self securityManager];
  -[SDUnlockSessionManager setUnlockAuthSession:](self, "setUnlockAuthSession:", [v18 unlockSessionAsOriginator:1 usingEscrow:0 escrowSecret:0]);

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
  v27 = [(SDUnlockSessionManager *)self securityManager];
  v28 = [v27 escrowData];

  if (v28)
  {
    v29 = [(SDUnlockSessionManager *)self securityManager];
    -[SDUnlockSessionManager setUnlockAuthSession:](self, "setUnlockAuthSession:", [v29 unlockSessionAsOriginator:1 usingEscrow:1 escrowSecret:v28 errorCode:v44]);
  }

  else
  {
    v30 = paired_unlock_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10023B2B8();
    }

    v31 = [(SDUnlockSessionManager *)self metrics];

    if (!v31)
    {
      goto LABEL_44;
    }

    v29 = [(SDUnlockSessionManager *)self metrics];
    [v29 setFailureReason:23];
  }

LABEL_44:
LABEL_45:
  if (([(SDUnlockSessionManager *)self unlockAuthSession]& 0x8000000000000000) == 0)
  {
    v32 = [(SDUnlockSessionManager *)self securityManager];
    v6 = [v32 stepWithAuthSession:-[SDUnlockSessionManager unlockAuthSession](self data:{"unlockAuthSession"), 0}];

    if (!v6)
    {
      v41 = paired_unlock_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10023B3AC();
      }

      v42 = [(SDUnlockSessionManager *)self metrics];

      if (v42)
      {
        v43 = [(SDUnlockSessionManager *)self metrics];
        [v43 setFailureReason:21];
      }

      [(SDUnlockKeyManager *)self resetState];
      goto LABEL_49;
    }

    v33 = objc_alloc_init(SDUnlockSessionRecord);
    v34 = self->_sessionRecord;
    self->_sessionRecord = v33;

    [(SDUnlockSessionRecord *)self->_sessionRecord setKeyData:v6];
    [(SDUnlockSessionRecord *)self->_sessionRecord setUnlockSessionID:[(SDUnlockSessionManager *)self generateSessionID]];
    [(SDUnlockSessionRecord *)self->_sessionRecord setExpireTime:sub_1001F0530(65)];
    [(SDUnlockSessionManager *)self restartUnlockTimer:[(SDUnlockSessionRecord *)self->_sessionRecord expireTime]];
    useEscrowRecord = self->_useEscrowRecord;
    v8 = self->_sessionRecord;
LABEL_48:
    [(SDUnlockKeyManager *)self sendSessionKeyExchangeRequest:v6 usedEscrow:useEscrowRecord sessionID:[(SDUnlockSessionRecord *)v8 unlockSessionID]];
LABEL_49:

    return;
  }

  v35 = paired_unlock_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_10023B2F4(v44);
  }

  v36 = [(SDUnlockSessionManager *)self metrics];

  if (v36)
  {
    v37 = [(SDUnlockSessionManager *)self metrics];
    [v37 setFailureReason:21];
  }

  [(SDUnlockKeyManager *)self resetAndClearState];
  if (*v44 == -536870174 || *v44 == -536362984 || *v44 == -536362989)
  {
    v38 = auto_unlock_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      sub_10023B36C();
    }

    v39 = [(SDUnlockSessionManager *)self metrics];

    if (v39)
    {
      v40 = [(SDUnlockSessionManager *)self metrics];
      [v40 setFailureReason:22];
    }

    [(SDUnlockKeyManager *)self disableUnlockPairing];
    [(SDUnlockSessionManager *)self sendDisableMessage];
    v6 = [(SDUnlockSessionManager *)self securityManager];
    [v6 deleteLongTermKeys];
    goto LABEL_49;
  }
}

- (BOOL)initiateStashBagCreationWithManifest:(id)a3
{
  v4 = a3;
  v5 = [(SDUnlockSessionManager *)self securityManager];
  v6 = [v5 escrowData];

  if (!v6)
  {
    v11 = paired_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10023B424();
    }

    goto LABEL_10;
  }

  v7 = [(SDUnlockSessionManager *)self securityManager];
  -[SDUnlockSessionManager setStashBagSession:](self, "setStashBagSession:", [v7 stashBagSessionAsOriginator:1 escrowSecret:v6 manifest:v4]);

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

  v8 = [(SDUnlockSessionManager *)self securityManager];
  v9 = [v8 stepWithAuthSession:-[SDUnlockSessionManager stashBagSession](self data:{"stashBagSession"), 0}];

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
  v5 = [(SDUnlockSessionManager *)self metrics];
  [v5 setPhoneAutoUnlockEnabled:v4];

  v6 = [(SDUnlockKeyManager *)self shouldUseTwoPartPill];
  v7 = [(SDUnlockSessionManager *)self metrics];
  [v7 setCanRelock:v6];

  v23 = +[NSDate date];
  v8 = +[NSCalendar currentCalendar];
  v9 = [v8 components:32 fromDate:v23];
  v10 = [v9 hour];
  v11 = [v8 maximumRangeOfUnit:32];
  v13 = ((v10 - v11) / v12 * 24.0);
  v14 = [(SDUnlockSessionManager *)self metrics];
  [v14 setAttemptHourLocal:v13];

  v15 = [(SDUnlockSessionManager *)self idsController];
  v16 = [v15 activeIDSDevice];

  v17 = [v16 productBuildVersion];
  v18 = [(SDUnlockSessionManager *)self metrics];
  [v18 setWatchSoftwareVersion:v17];

  v19 = [v16 modelIdentifier];
  v20 = [(SDUnlockSessionManager *)self metrics];
  [v20 setWatchHardwareModel:v19];

  v21 = +[NSDate date];
  v22 = [(SDUnlockKeyManager *)self metricDates];
  [v22 setStarted:v21];
}

- (void)consolidateLatencies:(id)a3
{
  v48 = a3;
  v4 = +[NSDate date];
  if (v48)
  {
    v5 = [v48 started];
    if (v5)
    {
      v6 = v5;
      v7 = [(SDUnlockSessionManager *)self metrics];

      if (v7)
      {
        dispatch_assert_queue_V2(&_dispatch_main_q);
        v8 = [v48 keyExchangeResponseReceived];

        if (v8)
        {
          v9 = [v48 keyExchangeResponseReceived];
          v10 = [v48 started];
          [v9 timeIntervalSinceDate:v10];
          v12 = v11;

          v13 = [(SDUnlockSessionManager *)self metrics];
          [v13 setKeyExchangeDuration:(v12 * 1000.0)];
        }

        else
        {
          v13 = [v48 started];
          [v4 timeIntervalSinceDate:v13];
          v15 = (v14 * 1000.0);
          v16 = [(SDUnlockSessionManager *)self metrics];
          [v16 setKeyExchangeDuration:v15];
        }

        v17 = [v48 keyExchangeResponseReceived];
        if (v17 && (v18 = v17, [v48 pillUpdated], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
        {
          v20 = [v48 pillUpdated];
          v21 = [v48 keyExchangeResponseReceived];
          [v20 timeIntervalSinceDate:v21];
          v23 = (v22 * 1000.0);
          v24 = [(SDUnlockSessionManager *)self metrics];
          [v24 setPillDelay:v23];
        }

        else
        {
          v25 = [v48 keyExchangeResponseReceived];

          if (!v25)
          {
LABEL_13:
            v28 = [v48 pillUpdated];
            if (v28 && (v29 = v28, [v48 confirmationReceived], v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
            {
              v31 = [v48 confirmationReceived];
              v32 = [v48 pillUpdated];
              [v31 timeIntervalSinceDate:v32];
              v34 = v33;

              v35 = [(SDUnlockSessionManager *)self metrics];
              [v35 setConfirmationDuration:(v34 * 1000.0)];
            }

            else
            {
              v36 = [v48 pillUpdated];

              if (!v36)
              {
LABEL_19:
                v40 = [v48 started];
                [v4 timeIntervalSinceDate:v40];
                v42 = (v41 * 1000.0);
                v43 = [(SDUnlockSessionManager *)self metrics];
                [v43 setTotalUnlockDuration:v42];

                v44 = [(SDUnlockSessionManager *)self metrics];
                LODWORD(v42) = [v44 keyExchangeDuration];
                v45 = [(SDUnlockSessionManager *)self metrics];
                v46 = [v45 confirmationDuration];
                v47 = [(SDUnlockSessionManager *)self metrics];
                [v47 setTotalUnlockProcessDuration:v46 + v42];

                goto LABEL_20;
              }

              v35 = [v48 pillUpdated];
              [v4 timeIntervalSinceDate:v35];
              v38 = (v37 * 1000.0);
              v39 = [(SDUnlockSessionManager *)self metrics];
              [v39 setConfirmationDuration:v38];
            }

            goto LABEL_19;
          }

          v20 = [v48 keyExchangeResponseReceived];
          [v4 timeIntervalSinceDate:v20];
          v27 = (v26 * 1000.0);
          v21 = [(SDUnlockSessionManager *)self metrics];
          [v21 setPillDelay:v27];
        }

        goto LABEL_13;
      }
    }
  }

LABEL_20:
}

@end