@interface SDUnlockSessionManager
- (BOOL)activeDevicesMatch;
- (BOOL)deviceIsPaired;
- (BOOL)shouldAbort;
- (BOOL)unlockEnabled;
- (SDUnlockIDSController)idsController;
- (SDUnlockSessionManager)init;
- (id)activeDevice;
- (id)activeDeviceDescription;
- (id)activeDeviceName;
- (id)generateDebugInfo;
- (id)pairingID;
- (id)pairingStorePath;
- (unsigned)pairingCompatibilityState;
- (void)abortDevicePairingWithReason:(id)reason;
- (void)addObservers;
- (void)dealloc;
- (void)deviceDidEnterConfigState:(id)state;
- (void)disableUnlockPairing;
- (void)disableUnlockPairingForSecManager:(id)manager;
- (void)disableUnlockWithDevice:(id)device completionHandler:(id)handler;
- (void)enableUnlockPairing;
- (void)handleDevicesDidFailToPair;
- (void)invalidateUnlockTimer;
- (void)logMetrics;
- (void)logProtoBufReceived:(id)received;
- (void)logProtoBufSend:(id)send;
- (void)pairingDidBegin:(id)begin;
- (void)pairingStatusChanged:(id)changed;
- (void)preventExitForLocaleIfNeeded;
- (void)removeObservers;
- (void)resetAll;
- (void)resetSetupState;
- (void)resetStashState;
- (void)resetState;
- (void)restartUnlockTimer:(unint64_t)timer;
- (void)sendDisableMessage;
- (void)updateSecurityManager;
- (void)updateSecurityManagerIfNeeded;
@end

@implementation SDUnlockSessionManager

- (SDUnlockIDSController)idsController
{
  WeakRetained = objc_loadWeakRetained(&self->_idsController);

  return WeakRetained;
}

- (BOOL)unlockEnabled
{
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  ltksExist = [securityManager ltksExist];

  return ltksExist;
}

- (SDUnlockSessionManager)init
{
  v8.receiver = self;
  v8.super_class = SDUnlockSessionManager;
  v2 = [(SDUnlockSessionManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    unlockTimer = v2->_unlockTimer;
    v2->_unlockTimer = 0;

    v3->_unlockAuthSession = -1;
    v3->_stashBagSession = -1;
    v3->_setupAuthSession = -1;
    v5 = +[SDUnlockIDSController sharedController];
    objc_storeWeak(&v3->_idsController, v5);

    WeakRetained = objc_loadWeakRetained(&v3->_idsController);
    [WeakRetained addDelegate:v3];

    [(SDUnlockSessionManager *)v3 updateSecurityManager];
    [(SDUnlockSessionManager *)v3 preventExitForLocaleIfNeeded];
  }

  return v3;
}

- (void)dealloc
{
  [(SDUnlockSessionManager *)self removeObservers];
  v3.receiver = self;
  v3.super_class = SDUnlockSessionManager;
  [(SDUnlockSessionManager *)&v3 dealloc];
}

- (void)updateSecurityManagerIfNeeded
{
  securityManager = [(SDUnlockSessionManager *)self securityManager];

  if (!securityManager)
  {

    [(SDUnlockSessionManager *)self updateSecurityManager];
  }
}

- (void)updateSecurityManager
{
  pairingID = [(SDUnlockSessionManager *)self pairingID];
  pairingStorePath = [(SDUnlockSessionManager *)self pairingStorePath];
  v5 = pairingStorePath;
  if (!pairingID || !pairingStorePath)
  {
    v9 = paired_unlock_log();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    activeDeviceDescription = [(SDUnlockSessionManager *)self activeDeviceDescription];
    v11 = 138412803;
    v12 = pairingID;
    v13 = 2112;
    v14 = v5;
    v15 = 2113;
    v16 = activeDeviceDescription;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to create security manager (pairing id %@, pairing store path %@, active device %{private}@)", &v11, 0x20u);
    goto LABEL_5;
  }

  v6 = [SDUnlockSecurityManager alloc];
  activeDeviceName = [(SDUnlockSessionManager *)self activeDeviceName];
  v8 = [(SDUnlockSecurityManager *)v6 initWithPairingID:pairingID pairingStorePath:v5 deviceName:activeDeviceName];
  [(SDUnlockSessionManager *)self setSecurityManager:v8];

  v9 = paired_unlock_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    activeDeviceDescription = [(SDUnlockSessionManager *)self activeDeviceName];
    v11 = 138412802;
    v12 = pairingID;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = activeDeviceDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created new security manager (pairing id %@, store path %@, device name %@)", &v11, 0x20u);
LABEL_5:
  }

LABEL_7:
}

- (void)preventExitForLocaleIfNeeded
{
  pairingCompatibilityState = [(SDUnlockSessionManager *)self pairingCompatibilityState];
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = pairingCompatibilityState;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing state on launch %d", v4, 8u);
  }
}

- (void)addObservers
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Session manager adding observers", v9, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"debugInfoRequested:" name:@"com.apple.sharingd.DebugInfoRequested" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"devicesDidFailToPair:" name:NRPairedDeviceRegistryDeviceDidFailToPairNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"pairingStatusChanged:" name:NRPairedDeviceRegistryStatusDidChange object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"pairingDidBegin:" name:NRPairedDeviceRegistryDeviceDidBeginPairingNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"deviceDidEnterConfigState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (id)generateDebugInfo
{
  v3 = objc_opt_new();
  if ([(SDUnlockSessionManager *)self unlockEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [NSString stringWithFormat:@"Unlock Enabled:%@", v4];
  [v3 addObject:v5];

  securityManager = [(SDUnlockSessionManager *)self securityManager];
  localLongTermKey = [securityManager localLongTermKey];
  if (localLongTermKey)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [NSString stringWithFormat:@"Local Long Term Key Exists:%@", v8];
  [v3 addObject:v9];

  securityManager2 = [(SDUnlockSessionManager *)self securityManager];
  remoteLongTermKey = [securityManager2 remoteLongTermKey];
  if (remoteLongTermKey)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [NSString stringWithFormat:@"Remote Long Term Key Exists:%@", v12];
  [v3 addObject:v13];

  v14 = +[SDStatusMonitor sharedMonitor];
  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Device Key Bag State:%ld", [v14 deviceKeyBagState]);
  [v3 addObject:v15];

  securityManager3 = [(SDUnlockSessionManager *)self securityManager];
  v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"AKS Key Bag State:%d", [securityManager3 lockState]);
  [v3 addObject:v17];

  idsController = [(SDUnlockSessionManager *)self idsController];
  if ([idsController isDefaultPairedDeviceNearby])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = [NSString stringWithFormat:@"Device Nearby:%@", v19];
  [v3 addObject:v20];

  v21 = [NSString stringWithFormat:@"Setup AKS Session ID:%ld", [(SDUnlockSessionManager *)self setupAuthSession]];
  [v3 addObject:v21];

  v22 = [NSString stringWithFormat:@"Unlock AKS Session ID:%ld", [(SDUnlockSessionManager *)self unlockAuthSession]];
  [v3 addObject:v22];

  v23 = [NSString stringWithFormat:@"Stash AKS Session ID:%ld", [(SDUnlockSessionManager *)self stashBagSession]];
  [v3 addObject:v23];

  v24 = [NSString stringWithFormat:@"Nano Registry State:%d", [(SDUnlockSessionManager *)self pairingCompatibilityState]];
  [v3 addObject:v24];

  if ([(SDUnlockSessionManager *)self deviceIsPaired])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v26 = [NSString stringWithFormat:@"Device Paired:%@", v25];
  [v3 addObject:v26];

  return v3;
}

- (void)handleDevicesDidFailToPair
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device pairing failed, throwing away anything that was setup", v4, 2u);
  }

  [(SDUnlockSessionManager *)self disableUnlockPairing];
}

- (void)pairingStatusChanged:(id)changed
{
  pairingCompatibilityState = [(SDUnlockSessionManager *)self pairingCompatibilityState];
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = pairingCompatibilityState;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing status changed %d", v6, 8u);
  }

  [(SDUnlockSessionManager *)self updateExitPrevention];
}

- (void)pairingDidBegin:(id)begin
{
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(SDUnlockSessionManager *)self pairingCompatibilityState];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pairing did begin %d", v5, 8u);
  }

  [(SDUnlockSessionManager *)self updateExitPrevention];
}

- (void)deviceDidEnterConfigState:(id)state
{
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(SDUnlockSessionManager *)self pairingCompatibilityState];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device entered config state %d", v5, 8u);
  }

  [(SDUnlockSessionManager *)self updateExitPrevention];
}

- (void)enableUnlockPairing
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, SFPairedUnlockStateChangedNotification, 0, 0, 1u);
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pairing Enabled", v4, 2u);
  }
}

- (void)disableUnlockPairing
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100243E8C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)disableUnlockPairingForSecManager:(id)manager
{
  managerCopy = manager;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    pairingID = [managerCopy pairingID];
    v6 = 138412290;
    v7 = pairingID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pairing Disabled: %@", &v6, 0xCu);
  }
}

- (void)disableUnlockWithDevice:(id)device completionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100244064;
  v5[3] = &unk_1008CE708;
  v5[4] = self;
  handlerCopy = handler;
  v4 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)resetAll
{
  [(SDUnlockSessionManager *)self resetSetupState];
  [(SDUnlockSessionManager *)self resetAndClearState];

  [(SDUnlockSessionManager *)self resetStashState];
}

- (void)resetSetupState
{
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  [securityManager clearStateForSession:{-[SDUnlockSessionManager setupAuthSession](self, "setupAuthSession")}];

  [(SDUnlockSessionManager *)self setSetupAuthSession:-1];
}

- (void)resetState
{
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  [securityManager clearStateForSession:{-[SDUnlockSessionManager unlockAuthSession](self, "unlockAuthSession")}];

  [(SDUnlockSessionManager *)self setUnlockAuthSession:-1];

  [(SDUnlockSessionManager *)self invalidateUnlockTimer];
}

- (void)resetStashState
{
  securityManager = [(SDUnlockSessionManager *)self securityManager];
  [securityManager clearStateForSession:{-[SDUnlockSessionManager stashBagSession](self, "stashBagSession")}];

  [(SDUnlockSessionManager *)self setStashBagSession:-1];
}

- (void)restartUnlockTimer:(unint64_t)timer
{
  v5 = paired_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "restartUnlockTimer", buf, 2u);
  }

  unlockTimer = self->_unlockTimer;
  if (!unlockTimer)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100244324;
    v9[3] = &unk_1008CDEA0;
    v9[4] = self;
    v7 = sub_1001F0548(0, &_dispatch_main_q, v9);
    v8 = self->_unlockTimer;
    self->_unlockTimer = v7;

    dispatch_resume(self->_unlockTimer);
    unlockTimer = self->_unlockTimer;
  }

  sub_1001F05F0(unlockTimer, timer);
}

- (void)invalidateUnlockTimer
{
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidateUnlockTimer", v6, 2u);
  }

  unlockTimer = self->_unlockTimer;
  if (unlockTimer)
  {
    dispatch_source_cancel(unlockTimer);
    v5 = self->_unlockTimer;
    self->_unlockTimer = 0;
  }
}

- (void)sendDisableMessage
{
  v5 = objc_alloc_init(SDUnlockDisable);
  [(SDUnlockDisable *)v5 setVersion:1];
  [(SDUnlockSessionManager *)self logProtoBufSend:v5];
  WeakRetained = objc_loadWeakRetained(&self->_idsController);
  data = [(SDUnlockDisable *)v5 data];
  [WeakRetained sendProtocolBufferData:data withType:2 timeout:0 option:2 errorHandler:&stru_1008D53B8];
}

- (void)abortDevicePairingWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[SDStatusMonitor sharedMonitor];
  if (([v5 bypassLTKeyAbort] & 1) != 0 || !-[SDUnlockSessionManager inConfigureState](self, "inConfigureState"))
  {
  }

  else
  {
    shouldAbort = [(SDUnlockSessionManager *)self shouldAbort];

    if (shouldAbort)
    {
      v7 = paired_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1002450E8();
      }

      securityManager = [(SDUnlockSessionManager *)self securityManager];
      [securityManager deleteLongTermKeys];

      v9 = +[NRPairedDeviceRegistry sharedInstance];
      [v9 abortPairingWithReason:reasonCopy];
    }
  }
}

- (BOOL)shouldAbort
{
  activeDevice = [(SDUnlockSessionManager *)self activeDevice];
  if (activeDevice && NRWatchOSVersionForRemoteDevice() >= 0x40000)
  {
    v3 = paired_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Watch supports new LTK model, not aborting.", v6, 2u);
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unsigned)pairingCompatibilityState
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  compatibilityState = [v2 compatibilityState];

  return compatibilityState;
}

- (BOOL)deviceIsPaired
{
  activeDevice = [(SDUnlockSessionManager *)self activeDevice];
  v3 = [activeDevice valueForProperty:NRDevicePropertyIsPaired];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)pairingID
{
  activeDevice = [(SDUnlockSessionManager *)self activeDevice];
  v3 = [activeDevice valueForProperty:NRDevicePropertyPairingID];
  uUIDString = [v3 UUIDString];

  return uUIDString;
}

- (id)pairingStorePath
{
  activeDevice = [(SDUnlockSessionManager *)self activeDevice];
  v3 = [activeDevice valueForProperty:NRDevicePropertyLocalPairingDataStorePath];

  return v3;
}

- (id)activeDeviceName
{
  activeDevice = [(SDUnlockSessionManager *)self activeDevice];
  v3 = [activeDevice valueForProperty:NRDevicePropertyDeviceNameString];

  return v3;
}

- (id)activeDeviceDescription
{
  activeDevice = [(SDUnlockSessionManager *)self activeDevice];
  v3 = [activeDevice description];

  return v3;
}

- (id)activeDevice
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getAllDevicesWithArchivedDevices = [v2 getAllDevicesWithArchivedDevices];

  v4 = [getAllDevicesWithArchivedDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = NRDevicePropertyIsActive;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(getAllDevicesWithArchivedDevices);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 valueForProperty:v7];
        bOOLValue = [v10 BOOLValue];

        if (bOOLValue)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v5 = [getAllDevicesWithArchivedDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)activeDevicesMatch
{
  activeDevice = [(SDUnlockSessionManager *)self activeDevice];
  if (activeDevice)
  {
    idsController = [(SDUnlockSessionManager *)self idsController];
    activeIDSDevice = [idsController activeIDSDevice];

    if (activeIDSDevice)
    {
      v6 = +[NRPairedDeviceRegistry sharedInstance];
      v7 = [v6 deviceForIDSDevice:activeIDSDevice];

      if (v7)
      {
        pairingID = [activeDevice pairingID];
        pairingID2 = [v7 pairingID];
        v10 = [pairingID isEqual:pairingID2];

        if (v10)
        {
          v11 = 1;
LABEL_17:

          goto LABEL_18;
        }

        v12 = paired_unlock_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10024511C();
        }
      }

      else
      {
        v12 = paired_unlock_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100245150();
        }
      }
    }

    else
    {
      v7 = paired_unlock_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100245184();
      }
    }

    v11 = 0;
    goto LABEL_17;
  }

  activeIDSDevice = paired_unlock_log();
  if (os_log_type_enabled(activeIDSDevice, OS_LOG_TYPE_ERROR))
  {
    sub_1002451B8();
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (void)logProtoBufSend:(id)send
{
  sendCopy = send;
  if (sendCopy)
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending %@", &v8, 0xCu);
    }

    v7 = paired_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = sendCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Message Contents %@", &v8, 0xCu);
    }
  }
}

- (void)logProtoBufReceived:(id)received
{
  receivedCopy = received;
  if (receivedCopy)
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received %@", &v8, 0xCu);
    }

    v7 = paired_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = receivedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Message Contents %@", &v8, 0xCu);
    }
  }
}

- (void)logMetrics
{
  metrics = [(SDUnlockSessionManager *)self metrics];

  if (metrics)
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Submitting metrics", v6, 2u);
    }

    metrics2 = [(SDUnlockSessionManager *)self metrics];
    [metrics2 submitEvent];
  }

  [(SDUnlockSessionManager *)self setMetrics:0];
}

@end