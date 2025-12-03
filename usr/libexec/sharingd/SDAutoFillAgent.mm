@interface SDAutoFillAgent
- (BOOL)_serviceShouldRequestAutoFill;
- (BOOL)_uiShowing;
- (NSString)description;
- (SDAutoFillAgent)init;
- (id)_rpCompanionLinkDeviceForSFDevice:(id)device;
- (int)helper:(id)helper didPickUsername:(id)username password:(id)password error:(id)error;
- (int)helper:(id)helper tryPIN:(id)n;
- (int)helper:(id)helper userNotificationDidActivate:(id)activate;
- (int)helper:(id)helper userNotificationDidDismiss:(id)dismiss;
- (int)helperStart:(id)start;
- (void)_activate;
- (void)_activateUIDelayTimer;
- (void)_bulletinsEnsureStarted;
- (void)_bulletinsEnsureStopped;
- (void)_clientClinkDeviceChanged:(id)changed;
- (void)_clientClinkDeviceFound:(id)found;
- (void)_clientClinkDeviceLost:(id)lost;
- (void)_commonEnsureStarted;
- (void)_commonEnsureStopped;
- (void)_deactivateUIDelayTimer;
- (void)_deviceChanged:(id)changed;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_deviceStoppedRequesting:(id)requesting;
- (void)_discoveryEnsureStarted;
- (void)_discoveryEnsureStopped;
- (void)_ensureKeychainCleaned:(BOOL)cleaned;
- (void)_invalidate;
- (void)_postSetupNotificationForDevice:(id)device;
- (void)_proximityChanged:(id)changed;
- (void)_proximityEnsureStarted;
- (void)_proximityEnsureStopped;
- (void)_proximityFound:(id)found;
- (void)_proximityLost:(id)lost;
- (void)_rtiEnsureStarted;
- (void)_rtiEnsureStopped;
- (void)_screenStateChanged:(id)changed;
- (void)_serviceEnsureStarted;
- (void)_serviceEnsureStopped;
- (void)_serviceHandleError:(id)error;
- (void)_serviceHandleUsername:(id)username password:(id)password error:(id)error;
- (void)_serviceStartRequestingAutoFillIfReady;
- (void)_serviceStopRequestingAutoFill;
- (void)_serviceTimeoutStart;
- (void)_serviceTimeoutStop;
- (void)_sessionHandlePairingSucceededResponse:(id)response;
- (void)_sessionStart:(id)start;
- (void)_sessionStop:(id)stop;
- (void)_uiLockStatusChanged:(id)changed;
- (void)_uiStart:(id)start extraInfo:(id)info;
- (void)_uiStartIfEnabled:(id)enabled extraInfo:(id)info;
- (void)_uiStartIfNeeded:(id)needed extraInfo:(id)info;
- (void)_uiStop:(id)stop;
- (void)_update;
- (void)activate;
- (void)dealloc;
- (void)handleInputDidBeginWithFlags:(unint64_t)flags sessionInfo:(id)info;
- (void)handleInputDidEndWithFlags:(unint64_t)flags sessionInfo:(id)info;
- (void)helperStop:(id)stop;
- (void)invalidate;
- (void)notificiationDidDismiss:(id)dismiss;
- (void)passwordPickerStart:(id)start bundleID:(id)d localizedAppName:(id)name unlocalizedAppName:(id)appName associatedDomains:(id)domains appIconData:(id)data deviceName:(id)deviceName completion:(id)self0;
- (void)prefsChanged;
- (void)proximityDeviceDidTrigger:(id)trigger;
- (void)setPreventNotifications:(BOOL)notifications;
- (void)testKeychain:(id)keychain;
- (void)testRemote:(id)remote;
- (void)testService:(id)service;
- (void)testUI:(id)i;
- (void)triggerProximityAutoFillDetectedWithURL:(id)l completion:(id)completion;
@end

@implementation SDAutoFillAgent

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"-- SDAutoFillAgent --\n"];
  v4 = "disabled";
  if (self->_prefGrantingEnabled)
  {
    v5 = "enabled";
  }

  else
  {
    v5 = "disabled";
  }

  if (self->_prefRequestingEnabled)
  {
    v6 = "enabled";
  }

  else
  {
    v6 = "disabled";
  }

  if (self->_scanningEnabled)
  {
    v4 = "enabled";
  }

  [v3 appendFormat:@"Granting: %s, Requesting: %s, Scanning: %s\n", v5, v6, v4];
  if (self->_deviceDiscovery)
  {
    deviceDiscovery = self->_deviceDiscovery;
  }

  else
  {
    deviceDiscovery = @"off";
  }

  [v3 appendFormat:@"Device Discovery: %@, %ld devices\n", deviceDiscovery, -[NSMutableDictionary count](self->_devices, "count")];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = self->_devices;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v13];
        [v3 appendFormat:@"    %@", v14];

        v15 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:v13];

        if (v15)
        {
          [v3 appendString:{@", TRIG"}];
        }

        [v3 appendString:@"\n"];
      }

      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = self->_triggeredDevices;
  v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v37 + 1) + 8 * j);
        v22 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v21];

        if (!v22)
        {
          v23 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:v21];
          [v3 appendFormat:@"    Orphaned triggered device: %@", v23];
        }
      }

      v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v18);
  }

  if (self->_proximityDiscovery)
  {
    proximityDiscovery = self->_proximityDiscovery;
  }

  else
  {
    proximityDiscovery = @"off";
  }

  [v3 appendFormat:@"Proximity discovery: %@, %ld devices\n", proximityDiscovery, -[NSMutableDictionary count](self->_proximityDevices, "count")];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = self->_proximityDevices;
  v26 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v34;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v33 + 1) + 8 * k)];
        [v3 appendFormat:@"    %@\n", v30];
      }

      v27 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v27);
  }

  requestingService = self->_requestingService;
  if (!requestingService)
  {
    requestingService = @"off";
  }

  [v3 appendFormat:@"Requesting service: %@\n", requestingService];

  return v3;
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_prefGrantingEnabled || self->_prefRequestingEnabled || self->_scanningEnabled)
  {
    [(SDAutoFillAgent *)self _commonEnsureStarted];
  }

  else
  {
    [(SDAutoFillAgent *)self _commonEnsureStopped];
  }

  v3 = [(SDStatusMonitor *)self->_statusMonitor screenOn]&& [(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked]&& self->_scanningEnabled;
  if ([(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    if (!v3)
    {
      if (self->_scanningEnabled)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if (!v3)
  {
LABEL_15:
    [(SDAutoFillAgent *)self _discoveryEnsureStopped];
    goto LABEL_16;
  }

  [(SDAutoFillAgent *)self _discoveryEnsureStarted];
LABEL_16:
  [(SDAutoFillAgent *)self _rtiEnsureStopped];
  [(SDAutoFillAgent *)self _bulletinsEnsureStarted];
  v4 = [(SDStatusMonitor *)self->_statusMonitor screenOn]&& [(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked]&& self->_proximityEnabled;
  if (![(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    if (!v4)
    {
      goto LABEL_26;
    }

LABEL_25:
    [(SDAutoFillAgent *)self _proximityEnsureStarted];
    goto LABEL_27;
  }

  if (v4)
  {
    goto LABEL_25;
  }

  if (!self->_proximityEnabled)
  {
LABEL_26:
    [(SDAutoFillAgent *)self _proximityEnsureStopped];
  }

LABEL_27:
  if (self->_remoteMonitoringEnabled)
  {
    [(SDAutoFillAgent *)self _siriRemoteMonitorEnsureStarted];
  }

  else
  {
    [(SDAutoFillAgent *)self _siriRemoteMonitorEnsureStopped];
  }

  if ([(SDAutoFillAgent *)self _serviceShouldRequestAutoFill])
  {

    [(SDAutoFillAgent *)self _serviceEnsureStarted];
  }

  else
  {

    [(SDAutoFillAgent *)self _serviceEnsureStopped];
  }
}

- (void)_commonEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_statusMonitor)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_screenStateChanged:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    [v5 addObserver:self selector:"_uiLockStatusChanged:" name:@"com.apple.sharingd.UILockStatusChanged" object:0];
    v3 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = v3;
  }
}

- (void)_discoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_deviceDiscovery)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9D34();
    }

    v3 = objc_alloc_init(SFDeviceDiscovery);
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = v3;

    [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:13];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:8208];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setPurpose:@"AutoFill"];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setRssiThreshold:-60];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:20];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E4F9C;
    v14[3] = &unk_1008CE7A0;
    v14[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E4FA8;
    v13[3] = &unk_1008CE7A0;
    v13[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003010C;
    v12[3] = &unk_1008CE7C8;
    v12[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v12];
    v5 = self->_deviceDiscovery;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E4FB4;
    v11[3] = &unk_1008CDF90;
    v11[4] = self;
    [(SFDeviceDiscovery *)v5 activateWithCompletion:v11];
    if (!self->_clinkClient)
    {
      if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000E9D50();
      }

      v6 = objc_alloc_init(RPCompanionLinkClient);
      clinkClient = self->_clinkClient;
      self->_clinkClient = v6;

      [(RPCompanionLinkClient *)self->_clinkClient setControlFlags:[(RPCompanionLinkClient *)self->_clinkClient controlFlags]| 0x2004];
      [(RPCompanionLinkClient *)self->_clinkClient setDispatchQueue:self->_dispatchQueue];
      [(RPCompanionLinkClient *)self->_clinkClient setInterruptionHandler:&stru_1008CFF00];
      [(RPCompanionLinkClient *)self->_clinkClient setInvalidationHandler:&stru_1008CFF20];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000E5100;
      v10[3] = &unk_1008CE210;
      v10[4] = self;
      [(RPCompanionLinkClient *)self->_clinkClient setDeviceFoundHandler:v10];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000E510C;
      v9[3] = &unk_1008CE210;
      v9[4] = self;
      [(RPCompanionLinkClient *)self->_clinkClient setDeviceLostHandler:v9];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000E5118;
      v8[3] = &unk_1008CE238;
      v8[4] = self;
      [(RPCompanionLinkClient *)self->_clinkClient setDeviceChangedHandler:v8];
      [(RPCompanionLinkClient *)self->_clinkClient activateWithCompletion:&stru_1008CFF40];
    }
  }
}

- (void)_rtiEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_rtiActivated)
  {
    v3 = +[SDSharedRemoteTextInputClient sharedClient];
    [v3 removeDelegate:self];

    self->_rtiActivated = 0;
  }
}

- (BOOL)_uiShowing
{
  activeTVAutoFillPrompts = [(SDNotificationManager *)self->_notificationManager activeTVAutoFillPrompts];
  v3 = activeTVAutoFillPrompts;
  if (activeTVAutoFillPrompts)
  {
    v4 = [activeTVAutoFillPrompts count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_bulletinsEnsureStarted
{
  if (!self->_notificationManager)
  {
    v4 = +[SDNotificationManager sharedManager];
    notificationManager = self->_notificationManager;
    self->_notificationManager = v4;

    v6 = self->_notificationManager;

    [(SDNotificationManager *)v6 activate];
  }
}

- (void)_proximityEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_proximityDiscovery)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA1E4();
    }

    [(SFBLEScanner *)self->_proximityDiscovery invalidate];
    proximityDiscovery = self->_proximityDiscovery;
    self->_proximityDiscovery = 0;
  }

  [(NSMutableDictionary *)self->_proximityDevices removeAllObjects];
  proximityDevices = self->_proximityDevices;
  self->_proximityDevices = 0;
}

- (BOOL)_serviceShouldRequestAutoFill
{
  v3 = +[MCProfileConnection sharedConnection];
  [v3 isPasswordProximityAutoFillRequestingAllowed];

  return self->_testingService;
}

- (void)_serviceEnsureStopped
{
  if (self->_requestingService)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA350();
    }

    [(SDAutoFillAgent *)self _serviceStopRequestingAutoFill];
    [(SFRemoteAutoFillService *)self->_requestingService invalidate];
    requestingService = self->_requestingService;
    self->_requestingService = 0;

    self->_requestingServiceState = 0;
  }
}

- (SDAutoFillAgent)init
{
  v6.receiver = self;
  v6.super_class = SDAutoFillAgent;
  v2 = [(SDAutoFillAgent *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(SDAutoFillAgent *)self _commonEnsureStopped];
  v3.receiver = self;
  v3.super_class = SDAutoFillAgent;
  [(SDAutoFillAgent *)&v3 dealloc];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3FFC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E982C();
  }

  [(SDAutoFillAgent *)self prefsChanged];

  [(SDAutoFillAgent *)self _ensureKeychainCleaned:0];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E40F4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E9848();
  }

  [(SDAutoFillAgent *)self _commonEnsureStopped];
  [(SDAutoFillAgent *)self _discoveryEnsureStopped];
  [(SDAutoFillAgent *)self _proximityEnsureStopped];
  [(SDAutoFillAgent *)self _rtiEnsureStopped];
  [(SDAutoFillAgent *)self _serviceEnsureStopped];
  [(SDAutoFillAgent *)self _siriRemoteMonitorEnsureStopped];

  [(SDAutoFillAgent *)self _deactivateUIDelayTimer];
}

- (void)prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefGrantingEnabled != v3)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9864();
    }

    self->_prefGrantingEnabled = v3;
    if (!v3 && dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E98BC();
    }
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefRateLimitDisabled != v4)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E98F0();
    }

    self->_prefRateLimitDisabled = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefRequestingEnabled != v5)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9948();
    }

    self->_prefRequestingEnabled = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefRequiresProx != v6)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E99A0();
    }

    self->_prefRequiresProx = v6;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_prefPairedTVAllowed != v7)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E99F8();
    }

    self->_prefPairedTVAllowed = v7;
  }

  v8 = CFPrefs_GetInt64() != 0;
  if (self->_proximityEnabled != v8)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9A50();
    }

    self->_proximityEnabled = v8;
  }

  if (self->_remoteMonitoringEnabled)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9AA8();
    }

    self->_remoteMonitoringEnabled = 0;
  }

  prefGrantingEnabled = self->_prefGrantingEnabled;
  if (prefGrantingEnabled != self->_scanningEnabled)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9AF8();
    }

    self->_scanningEnabled = prefGrantingEnabled;
  }

  [(SDAutoFillAgent *)self _update];
}

- (void)setPreventNotifications:(BOOL)notifications
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E45A4;
  v4[3] = &unk_1008CF798;
  v4[4] = self;
  notificationsCopy = notifications;
  dispatch_async(dispatchQueue, v4);
}

- (void)_commonEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_statusMonitor)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    [v3 removeObserver:self name:@"com.apple.sharingd.UILockStatusChanged" object:0];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = 0;
  }

  self->_cleanKeysState = 0;
}

- (void)_postSetupNotificationForDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v10[0] = @"deviceID";
    v10[1] = @"needsSetup";
    v11[0] = uUIDString;
    needsSetup = [deviceCopy needsSetup];
    v7 = &__kCFBooleanFalse;
    if (needsSetup)
    {
      v7 = &__kCFBooleanTrue;
    }

    v11[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    v9 = +[NSDistributedNotificationCenter defaultCenter];
    [v9 postNotificationName:@"com.apple.sharing.ProxAutoFill" object:@"com.apple.sharingd" userInfo:v8 deliverImmediately:1];
    if (dword_1009707D0 <= 50 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9BBC();
    }
  }
}

- (void)triggerProximityAutoFillDetectedWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
  v9 = v8;
  if (v8)
  {
    selfCopy = self;
    v37 = v8;
    v38 = completionCopy;
    v39 = lCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    queryItems = [v8 queryItems];
    v11 = [queryItems countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (!v11)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_27;
    }

    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v41;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(queryItems);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        name = [v17 name];
        if (name == @"bt" || (v19 = name) != 0 && (v20 = [(__CFString *)name isEqual:@"bt"], v19, v19, v20))
        {
          value = [v17 value];
          v22 = v14;
          v14 = value;
LABEL_15:

          continue;
        }

        name2 = [v17 name];
        if (name2 != @"pin")
        {
          v24 = name2;
          if (!name2)
          {
            continue;
          }

          v25 = [(__CFString *)name2 isEqual:@"pin"];

          if (!v25)
          {
            continue;
          }
        }

        value2 = [v17 value];
        v22 = v13;
        v13 = value2;
        goto LABEL_15;
      }

      v12 = [queryItems countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (!v12)
      {
LABEL_27:

        v30 = objc_alloc_init(NSMutableDictionary);
        v31 = v30;
        if (v13)
        {
          [v30 setObject:v13 forKeyedSubscript:@"pin"];
        }

        completionCopy = v38;
        if (v14)
        {
          [v31 setObject:v14 forKeyedSubscript:@"deviceAddress"];
          v32 = [(NSMutableDictionary *)selfCopy->_btDevices objectForKeyedSubscript:v14];
          v29 = v32;
          if (v32)
          {
            identifier = [v32 identifier];

            if (identifier)
            {
              if (dword_1009707D0 <= 10 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
              {
                sub_1000E9C04(v29);
              }

              identifier2 = [v29 identifier];
              uUIDString = [identifier2 UUIDString];
              [v31 setObject:uUIDString forKeyedSubscript:@"deviceIdentifier"];
            }
          }
        }

        else
        {
          v29 = 0;
        }

        lCopy = v39;
        if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000E9C5C();
        }

        [(SDAutoFillAgent *)selfCopy _uiStart:0 extraInfo:v31];
        if (v38)
        {
          v38[2](v38, 0);
        }

        v9 = v37;
        goto LABEL_43;
      }
    }
  }

  if (dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E9C9C();
    if (!completionCopy)
    {
      goto LABEL_44;
    }
  }

  else if (!completionCopy)
  {
    goto LABEL_44;
  }

  v45 = NSLocalizedDescriptionKey;
  v27 = [NSString stringWithUTF8String:DebugGetErrorString()];
  v14 = v27;
  v28 = @"?";
  if (v27)
  {
    v28 = v27;
  }

  v46 = v28;
  v29 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6705 userInfo:v29];
  completionCopy[2](completionCopy, v13);
LABEL_43:

LABEL_44:
}

- (void)_screenStateChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E4CD0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_uiLockStatusChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E4E3C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_bulletinsEnsureStopped
{
  notificationManager = self->_notificationManager;
  self->_notificationManager = 0;
}

- (void)notificiationDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if (dismissCopy)
  {
    grantingSession = self->_grantingSession;
    if (grantingSession)
    {
      v10 = dismissCopy;
      peerDevice = [(SFRemoteAutoFillSession *)grantingSession peerDevice];
      identifier = [peerDevice identifier];
      uUIDString = [identifier UUIDString];
      v9 = [uUIDString isEqual:v10];

      dismissCopy = v10;
      if (v9)
      {
        [(SDAutoFillAgent *)self _sessionStop:0];
        dismissCopy = v10;
      }
    }
  }
}

- (void)_discoveryEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_deviceDiscovery)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000E9E78();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;
  }

  [(NSMutableDictionary *)self->_btDevices removeAllObjects];
  btDevices = self->_btDevices;
  self->_btDevices = 0;

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;

  [(NSMutableDictionary *)self->_grantedDevices removeAllObjects];
  grantedDevices = self->_grantedDevices;
  self->_grantedDevices = 0;

  [(NSMutableSet *)self->_ignoredTVs removeAllObjects];
  ignoredTVs = self->_ignoredTVs;
  self->_ignoredTVs = 0;

  [(NSMutableDictionary *)self->_triggeredDevices removeAllObjects];
  triggeredDevices = self->_triggeredDevices;
  self->_triggeredDevices = 0;

  ascAgentProxy = self->_ascAgentProxy;
  if (ascAgentProxy)
  {
    self->_ascAgentProxy = 0;
  }

  clinkClient = self->_clinkClient;
  if (clinkClient)
  {
    [(RPCompanionLinkClient *)clinkClient invalidate];
    v11 = self->_clinkClient;
    self->_clinkClient = 0;
  }
}

- (void)_deviceStoppedRequesting:(id)requesting
{
  requestingCopy = requesting;
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E9E94();
  }

  [(SDAutoFillAgent *)self _uiStop:requestingCopy];
  identifier = [requestingCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_grantedDevices objectForKeyedSubscript:identifier];

    if (v5)
    {
      if (dword_1009707D0 <= 50 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000E9ED4();
      }

      [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:identifier];
      [(NSMutableDictionary *)self->_grantedDevices removeObjectForKey:identifier];
    }
  }
}

- (void)_clientClinkDeviceFound:(id)found
{
  foundCopy = found;
  v4 = foundCopy;
  if (dword_1009707D0 <= 30)
  {
    v6 = foundCopy;
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1000E9F14();
      v4 = v6;
    }
  }
}

- (void)_clientClinkDeviceLost:(id)lost
{
  lostCopy = lost;
  v4 = lostCopy;
  if (dword_1009707D0 <= 30)
  {
    v6 = lostCopy;
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1000E9F54();
      v4 = v6;
    }
  }
}

- (void)_clientClinkDeviceChanged:(id)changed
{
  changedCopy = changed;
  v4 = changedCopy;
  if (dword_1009707D0 <= 30)
  {
    v6 = changedCopy;
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1000E9F94();
      v4 = v6;
    }
  }
}

- (id)_rpCompanionLinkDeviceForSFDevice:(id)device
{
  deviceCopy = device;
  name = [deviceCopy name];
  model = [deviceCopy model];
  idsIdentifier = [deviceCopy idsIdentifier];
  mediaRouteID = [deviceCopy mediaRouteID];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v22 = deviceCopy;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        idsDeviceIdentifier = [v12 idsDeviceIdentifier];
        v14 = [idsDeviceIdentifier isEqualToString:idsIdentifier];

        if (v14)
        {
          goto LABEL_20;
        }

        mediaRouteIdentifier = [v12 mediaRouteIdentifier];
        v16 = [mediaRouteIdentifier isEqualToString:mediaRouteID];

        if (v16)
        {
          goto LABEL_20;
        }

        name2 = [v12 name];
        if ([name2 isEqualToString:name])
        {
          model2 = [v12 model];
          v19 = [model2 isEqualToString:model];

          if (v19)
          {
            if (dword_1009707D0 <= 90 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

LABEL_20:
            v20 = v12;
            deviceCopy = v22;
            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v20 = 0;
      deviceCopy = v22;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (int)helperStart:(id)start
{
  startCopy = start;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E9FD4();
  }

  [startCopy setDispatchQueue:self->_dispatchQueue];
  [startCopy setAgent:self];
  helpers = self->_helpers;
  if (!helpers)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_helpers;
    self->_helpers = v6;

    helpers = self->_helpers;
  }

  [(NSMutableSet *)helpers addObject:startCopy];
  [startCopy activateWithCompletion:0];
  [(SDAutoFillAgent *)self _update];

  return 0;
}

- (void)helperStop:(id)stop
{
  stopCopy = stop;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000E9FF0();
  }

  [(NSMutableSet *)self->_helpers removeObject:stopCopy];
  [(SDAutoFillAgent *)self _sessionStop:0];
  [(SDAutoFillAgent *)self _update];
}

- (int)helper:(id)helper didPickUsername:(id)username password:(id)password error:(id)error
{
  helperCopy = helper;
  usernameCopy = username;
  passwordCopy = password;
  errorCopy = error;
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA00C();
  }

  if (([(NSMutableSet *)self->_helpers containsObject:helperCopy]& 1) == 0 && dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA028();
  }

  credentialsHandler = self->_credentialsHandler;
  if (credentialsHandler)
  {
    credentialsHandler[2](credentialsHandler, usernameCopy, passwordCopy, errorCopy);
    if (errorCopy)
    {
      goto LABEL_24;
    }
  }

  else if (dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA044();
    if (errorCopy)
    {
      goto LABEL_24;
    }
  }

  else if (errorCopy)
  {
    goto LABEL_24;
  }

  peerDevice = [(SFRemoteAutoFillSession *)self->_grantingSession peerDevice];
  identifier = [peerDevice identifier];
  v17 = identifier;
  if (peerDevice && identifier)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA060();
    }

    grantedDevices = self->_grantedDevices;
    if (!grantedDevices)
    {
      v19 = objc_alloc_init(NSMutableDictionary);
      v20 = self->_grantedDevices;
      self->_grantedDevices = v19;

      grantedDevices = self->_grantedDevices;
    }

    [(NSMutableDictionary *)grantedDevices setObject:peerDevice forKeyedSubscript:v17];
  }

LABEL_24:
  return 0;
}

- (int)helper:(id)helper tryPIN:(id)n
{
  helperCopy = helper;
  nCopy = n;
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA0A0();
  }

  if (([(NSMutableSet *)self->_helpers containsObject:helperCopy]& 1) == 0 && dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA0E0();
  }

  [(SFRemoteAutoFillSession *)self->_grantingSession tryPIN:nCopy];

  return 0;
}

- (int)helper:(id)helper userNotificationDidActivate:(id)activate
{
  helperCopy = helper;
  activateCopy = activate;
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA0FC();
  }

  if (([(NSMutableSet *)self->_helpers containsObject:helperCopy]& 1) == 0 && dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA118();
  }

  [(SDAutoFillAgent *)self _sessionStart:activateCopy];

  return 0;
}

- (int)helper:(id)helper userNotificationDidDismiss:(id)dismiss
{
  helperCopy = helper;
  dismissCopy = dismiss;
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA134();
  }

  if (([(NSMutableSet *)self->_helpers containsObject:helperCopy]& 1) == 0 && dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA150();
  }

  uUIDString = [dismissCopy UUIDString];
  [(SDAutoFillAgent *)self notificiationDidDismiss:uUIDString];

  return 0;
}

- (void)_proximityEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_proximityDiscovery)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA16C();
    }

    v3 = [[SFBLEScanner alloc] initWithType:7];
    proximityDiscovery = self->_proximityDiscovery;
    self->_proximityDiscovery = v3;

    [(SFBLEScanner *)self->_proximityDiscovery setChangeFlags:13];
    [(SFBLEScanner *)self->_proximityDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFBLEScanner *)self->_proximityDiscovery setRssiThreshold:-60];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E61C8;
    v9[3] = &unk_1008CE810;
    v9[4] = self;
    [(SFBLEScanner *)self->_proximityDiscovery setDeviceFoundHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E61D4;
    v8[3] = &unk_1008CE810;
    v8[4] = self;
    [(SFBLEScanner *)self->_proximityDiscovery setDeviceLostHandler:v8];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E61E0;
    v7[3] = &unk_1008CE878;
    v7[4] = self;
    [(SFBLEScanner *)self->_proximityDiscovery setDeviceChangedHandler:v7];
    [(SFBLEScanner *)self->_proximityDiscovery activateWithCompletion:&stru_1008CFF60];
    if (!self->_proximityController)
    {
      v5 = +[SDProximityController sharedController];
      proximityController = self->_proximityController;
      self->_proximityController = v5;
    }
  }
}

- (void)_rtiEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_rtiActivated)
  {
    v3 = +[SDSharedRemoteTextInputClient sharedClient];
    [v3 addDelegate:self];

    self->_rtiActivated = 1;
  }
}

- (void)handleInputDidBeginWithFlags:(unint64_t)flags sessionInfo:(id)info
{
  flagsCopy = flags;
  infoCopy = info;
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA200();
  }

  v6 = flagsCopy & 1;
  if (v6 != self->_autoFillContext)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA240();
    }

    v7 = [infoCopy objectForKeyedSubscript:@"remoteAppIconData"];
    appIconData = self->_appIconData;
    self->_appIconData = v7;

    self->_autoFillContext = v6;
    v9 = [infoCopy objectForKeyedSubscript:@"remoteLocalizedAppName"];
    requestingAppLocalizedName = self->_requestingAppLocalizedName;
    self->_requestingAppLocalizedName = v9;

    v11 = [infoCopy objectForKeyedSubscript:@"remoteUnlocalizedAppName"];
    requestingAppUnlocalizedName = self->_requestingAppUnlocalizedName;
    self->_requestingAppUnlocalizedName = v11;

    v13 = [infoCopy objectForKeyedSubscript:@"remoteAssociatedDomains"];
    requestingAssociatedDomains = self->_requestingAssociatedDomains;
    self->_requestingAssociatedDomains = v13;

    v15 = [infoCopy objectForKeyedSubscript:@"remoteBundleID"];
    requestingBundleID = self->_requestingBundleID;
    self->_requestingBundleID = v15;
  }

  [(SDAutoFillAgent *)self _update];
}

- (void)handleInputDidEndWithFlags:(unint64_t)flags sessionInfo:(id)info
{
  infoCopy = info;
  if (dword_1009707D0 <= 30)
  {
    if (dword_1009707D0 != -1 || _LogCategory_Initialize())
    {
      sub_1000EA298();
    }

    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA2D8(self);
    }
  }

  appIconData = self->_appIconData;
  self->_appIconData = 0;

  self->_autoFillContext = 0;
  requestingBundleID = self->_requestingBundleID;
  self->_requestingBundleID = 0;

  requestingAppLocalizedName = self->_requestingAppLocalizedName;
  self->_requestingAppLocalizedName = 0;

  requestingAppUnlocalizedName = self->_requestingAppUnlocalizedName;
  self->_requestingAppUnlocalizedName = 0;

  requestingAssociatedDomains = self->_requestingAssociatedDomains;
  self->_requestingAssociatedDomains = 0;

  [(SDAutoFillAgent *)self _update];
}

- (void)_serviceEnsureStarted
{
  if (!self->_requestingService)
  {
    if (dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA334();
    }

    self->_requestingServiceState = 2;
  }
}

- (void)_serviceHandleError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (dword_1009707D0 <= 60)
  {
    v6 = errorCopy;
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1000EA36C();
      v4 = v6;
    }
  }
}

- (void)_serviceHandleUsername:(id)username password:(id)password error:(id)error
{
  usernameCopy = username;
  passwordCopy = password;
  errorCopy = error;
  if (errorCopy && dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA3AC();
  }

  if (usernameCopy | passwordCopy)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA3EC();
    }

    v9 = +[SDSharedRemoteTextInputClient sharedClient];
    [v9 handleUsername:usernameCopy password:passwordCopy];
  }

  else
  {
    sub_1000EA448(dword_1009707D0 < 31, dword_1009707D0);
  }
}

- (void)_serviceStartRequestingAutoFillIfReady
{
  if (self->_siriRemoteMonitorState == 4)
  {
    if (self->_requestingServiceState == 4)
    {
      if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000EA550();
      }

      [(SFRemoteAutoFillService *)self->_requestingService startRequestingAutoFill];

      [(SDAutoFillAgent *)self _serviceTimeoutStart];
    }

    else
    {
      sub_1000EA4FC(dword_1009707D0 < 31, dword_1009707D0);
    }
  }

  else
  {
    sub_1000EA49C();
  }
}

- (void)_serviceStopRequestingAutoFill
{
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA56C();
  }

  [(SDAutoFillAgent *)self _serviceTimeoutStop];
  requestingService = self->_requestingService;

  [(SFRemoteAutoFillService *)requestingService stopRequestingAutoFill];
}

- (void)_serviceTimeoutStart
{
  requestingServiceTimer = self->_requestingServiceTimer;
  if (requestingServiceTimer)
  {
    v4 = requestingServiceTimer;
    dispatch_source_cancel(v4);
    v5 = self->_requestingServiceTimer;
    self->_requestingServiceTimer = 0;
  }

  self->_requestingServiceTimedOut = 0;
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA588();
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_requestingServiceTimer;
  self->_requestingServiceTimer = v6;

  v8 = self->_requestingServiceTimer;
  v9 = dispatch_time(0, 3600000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v10 = self->_requestingServiceTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000E69D8;
  handler[3] = &unk_1008CDEA0;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_resume(self->_requestingServiceTimer);
}

- (void)_serviceTimeoutStop
{
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA5C0();
  }

  requestingServiceTimer = self->_requestingServiceTimer;
  if (requestingServiceTimer)
  {
    v4 = requestingServiceTimer;
    dispatch_source_cancel(v4);
    v5 = self->_requestingServiceTimer;
    self->_requestingServiceTimer = 0;
  }

  self->_requestingServiceTimedOut = 0;
}

- (void)_sessionStart:(id)start
{
  startCopy = start;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (startCopy)
  {
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA5DC();
    }

    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:startCopy];
    if (!v5)
    {
      v5 = objc_alloc_init(SFDevice);
      [v5 setIdentifier:startCopy];
    }

    grantingSession = self->_grantingSession;
    if (grantingSession)
    {
      [(SFRemoteAutoFillSession *)grantingSession invalidate];
    }

    v7 = objc_alloc_init(SFRemoteAutoFillSession);
    v8 = self->_grantingSession;
    self->_grantingSession = v7;

    [(SFRemoteAutoFillSession *)self->_grantingSession setDispatchQueue:self->_dispatchQueue];
    [(SFRemoteAutoFillSession *)self->_grantingSession setPeerDevice:v5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E6D80;
    v13[3] = &unk_1008CDF90;
    v13[4] = self;
    [(SFRemoteAutoFillSession *)self->_grantingSession setCompletedHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E6D8C;
    v11[3] = &unk_1008CE028;
    v11[4] = self;
    v12 = startCopy;
    [(SFRemoteAutoFillSession *)self->_grantingSession setPairingFinishedHandler:v11];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E6EB4;
    v10[3] = &unk_1008CFF88;
    v10[4] = self;
    [(SFRemoteAutoFillSession *)self->_grantingSession setPromptForPickerHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E6FD8;
    v9[3] = &unk_1008CFFB0;
    v9[4] = self;
    [(SFRemoteAutoFillSession *)self->_grantingSession setPromptForPINHandler:v9];
    [(SFRemoteAutoFillSession *)self->_grantingSession activate];
  }

  else
  {
    if (sub_1000EA5F8(dword_1009707D0, &v15, &v16, &v14))
    {
      goto LABEL_11;
    }

    v5 = v14;
  }

LABEL_11:
}

- (void)_sessionStop:(id)stop
{
  stopCopy = stop;
  if (stopCopy)
  {
    peerDevice = [(SFRemoteAutoFillSession *)self->_grantingSession peerDevice];
    if (peerDevice && ([stopCopy code] == -6723 || objc_msgSend(stopCopy, "code") == -71160))
    {
      [(SDAutoFillAgent *)self _uiStop:peerDevice];
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = self->_helpers;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v12 + 1) + 8 * i) clientDismissUserNotification];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }

    if (dword_1009707D0 <= 60 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA79C();
    }
  }

  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA7DC();
  }

  [(SFRemoteAutoFillSession *)self->_grantingSession invalidate];
  grantingSession = self->_grantingSession;
  self->_grantingSession = 0;
}

- (void)_sessionHandlePairingSucceededResponse:(id)response
{
  responseCopy = response;
  v4 = responseCopy;
  if (dword_1009707D0 <= 30)
  {
    v6 = responseCopy;
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1000EA810();
      v4 = v6;
    }
  }
}

- (void)proximityDeviceDidTrigger:(id)trigger
{
  triggerCopy = trigger;
  if (dword_1009707D0 <= 50 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA850();
  }

  v5 = [(NSMutableDictionary *)self->_proximityDevices objectForKeyedSubscript:triggerCopy];

  if (v5)
  {
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E7330;
    v7[3] = &unk_1008CE028;
    v7[4] = self;
    v8 = triggerCopy;
    dispatch_async(dispatchQueue, v7);
  }
}

- (void)testKeychain:(id)keychain
{
  keychainCopy = keychain;
  if (dword_1009707D0 <= 50 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA890();
  }

  [(SDAutoFillAgent *)self _ensureKeychainCleaned:1];
}

- (void)testRemote:(id)remote
{
  remoteCopy = remote;
  v4 = remoteCopy;
  if (dword_1009707D0 <= 50)
  {
    v6 = remoteCopy;
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1000EA8D0();
      v4 = v6;
    }
  }
}

- (void)testService:(id)service
{
  serviceCopy = service;
  v7 = serviceCopy;
  if (dword_1009707D0 <= 50)
  {
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), serviceCopy = v7, v5))
    {
      sub_1000EA910();
      serviceCopy = v7;
    }
  }

  if ([serviceCopy isEqualToIgnoringCase:@"-start"])
  {
    v6 = 1;
  }

  else
  {
    if (![v7 isEqualToIgnoringCase:@"-stop"])
    {
      goto LABEL_9;
    }

    v6 = 0;
  }

  self->_testingService = v6;
  [(SDAutoFillAgent *)self _update];
LABEL_9:
}

- (void)testUI:(id)i
{
  iCopy = i;
  if (dword_1009707D0 <= 50 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA950();
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [NSUUID alloc];
  if ([iCopy isEqual:@"-fail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v8 = [v6 initWithUUIDString:v7];
  [v5 setIdentifier:v8];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E76AC;
  block[3] = &unk_1008CE900;
  v13 = iCopy;
  selfCopy = self;
  v15 = v5;
  v10 = v5;
  v11 = iCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateUIDelayTimer
{
  if (!self->_uiDelayTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000EA990();
    }

    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    uiDelayTimer = self->_uiDelayTimer;
    self->_uiDelayTimer = v5;

    v7 = self->_uiDelayTimer;
    v8 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
    v9 = self->_uiDelayTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000E7914;
    handler[3] = &unk_1008CDEA0;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(self->_uiDelayTimer);
  }
}

- (void)_deactivateUIDelayTimer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA9C8();
  }

  uiDelayTimer = self->_uiDelayTimer;
  if (uiDelayTimer)
  {
    v4 = uiDelayTimer;
    dispatch_source_cancel(v4);
    v5 = self->_uiDelayTimer;
    self->_uiDelayTimer = 0;
  }

  self->_uiDelayActive = 0;
  uiDelayDevice = self->_uiDelayDevice;
  self->_uiDelayDevice = 0;
}

- (void)passwordPickerStart:(id)start bundleID:(id)d localizedAppName:(id)name unlocalizedAppName:(id)appName associatedDomains:(id)domains appIconData:(id)data deviceName:(id)deviceName completion:(id)self0
{
  completionCopy = completion;
  deviceNameCopy = deviceName;
  dataCopy = data;
  domainsCopy = domains;
  nameCopy = name;
  dCopy = d;
  v21 = objc_retainBlock(completionCopy);
  credentialsHandler = self->_credentialsHandler;
  self->_credentialsHandler = v21;

  v23 = [[ASCCredentialRequestContext alloc] initWithRequestTypes:1];
  [v23 setProxiedAppName:nameCopy];

  [v23 setProxiedAssociatedDomains:domainsCopy];
  [v23 setProxiedBundleIdentifier:dCopy];

  [v23 setProxiedIconData:dataCopy];
  [v23 setProxiedIconScale:&off_10090BAC0];
  [v23 setProxiedOriginDeviceName:deviceNameCopy];

  v24 = objc_alloc_init(ASCAgentProxy);
  ascAgentProxy = self->_ascAgentProxy;
  self->_ascAgentProxy = v24;

  v26 = self->_ascAgentProxy;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000E7C00;
  v28[3] = &unk_1008D0018;
  v27 = completionCopy;
  v29 = v27;
  [(ASCAgentProxy *)v26 performAuthorizationRequestsForContext:v23 withCompletionHandler:v28];
  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000EA9E4();
  }
}

- (void)_uiStartIfEnabled:(id)enabled extraInfo:(id)info
{
  enabledCopy = enabled;
  infoCopy = info;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000E7E80;
  v19 = sub_1000E7E90;
  v20 = objc_alloc_init(off_100970840());
  v8 = v16[5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E7E98;
  v11[3] = &unk_1008D0040;
  v11[4] = self;
  v9 = enabledCopy;
  v12 = v9;
  v10 = infoCopy;
  v13 = v10;
  v14 = &v15;
  [v8 getRemoteAutoFillAvailabilityWithCompletionHandler:v11];

  _Block_object_dispose(&v15, 8);
}

- (void)_uiStart:(id)start extraInfo:(id)info
{
  startCopy = start;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = startCopy;
  if (startCopy)
  {
    [(SDNotificationManager *)self->_notificationManager tvAutoFillPostIfNeeded:startCopy];
    v5 = startCopy;
  }
}

- (void)_uiStop:(id)stop
{
  stopCopy = stop;
  grantingSession = self->_grantingSession;
  v14 = stopCopy;
  if (!grantingSession)
  {
    goto LABEL_8;
  }

  peerDevice = [(SFRemoteAutoFillSession *)grantingSession peerDevice];
  identifier = [peerDevice identifier];
  identifier2 = [v14 identifier];
  v9 = identifier;
  v10 = identifier2;
  v11 = v10;
  if (v9 == v10)
  {

LABEL_9:
    v13 = v14;
    goto LABEL_10;
  }

  if ((v9 != 0) == (v10 == 0))
  {

    goto LABEL_8;
  }

  v12 = [v9 isEqual:v10];

  v13 = v14;
  if ((v12 & 1) == 0)
  {
LABEL_8:
    [(SDNotificationManager *)self->_notificationManager tvAutoFillRemove:v14];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_ensureKeychainCleaned:(BOOL)cleaned
{
  cleanedCopy = cleaned;
  result = 0;
  v5 = objc_alloc_init(NSMutableArray);
  if (self->_cleanKeysState && !cleanedCopy)
  {

    goto LABEL_47;
  }

  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_cleanKeysState = 1;
  v64[0] = kSecAttrAccessGroup;
  v64[1] = kSecClass;
  v65[0] = @"com.apple.sharing.safaripasswordsharing";
  v65[1] = kSecClassKey;
  v64[2] = kSecMatchLimit;
  v64[3] = kSecReturnAttributes;
  v65[2] = kSecMatchLimitAll;
  v65[3] = &__kCFBooleanTrue;
  v64[4] = kSecReturnPersistentRef;
  v65[4] = &__kCFBooleanTrue;
  v6 = &kSFNodeProtocolWebDAVS_ptr;
  v7 = SecItemCopyMatching([NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:5], &result);
  selfCopy = self;
  if (v7)
  {
    if (dword_1009707D0 > 60 || (v35 = v7, dword_1009707D0 == -1) && !_LogCategory_Initialize())
    {
      obj = 0;
      v34 = 3;
      goto LABEL_44;
    }

    v36 = v35;
    v62 = NSLocalizedDescriptionKey;
    v37 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v21 = v37;
    v38 = @"?";
    if (v37)
    {
      v38 = v37;
    }

    v63 = v38;
    v39 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v41 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v36 userInfo:v39];
    LogPrintF();

    obj = 0;
    v34 = 3;
    goto LABEL_43;
  }

  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = result;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    v11 = kSecAttrEndDate;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v14 objectForKeyedSubscript:v11];
          if (v15)
          {
            v16 = +[NSDate date];
            v17 = [v16 compare:v15];

            v18 = v17 == 1;
            v6 = &kSFNodeProtocolWebDAVS_ptr;
            if (v18)
            {
              v19 = [v14 objectForKeyedSubscript:kSecValuePersistentRef];
              if (v19)
              {
                v20 = v19;
                [v5 addObject:v19];
                if (dword_1009707D0 <= 10 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
                {
                  v40 = v15;
                  v42 = v20;
                  LogPrintF();
                }
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v9);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = v5;
  v22 = [v21 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (!v22)
  {
    v34 = 4;
LABEL_43:

    self = selfCopy;
    goto LABEL_44;
  }

  v23 = v22;
  v43 = v5;
  v24 = *v48;
  p_cb = &OBJC_PROTOCOL___SDProximityControllerDelegate.cb;
  v45 = v21;
  do
  {
    for (j = 0; j != v23; j = j + 1)
    {
      if (*v48 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v47 + 1) + 8 * j);
      v58 = kSecValuePersistentRef;
      v59 = v27;
      v28 = SecItemDelete([v6[214] dictionaryWithObjects:&v59 forKeys:&v58 count:{1, v40, v42}]);
      if (v28)
      {
        v29 = p_cb[500];
        if (v29 <= 60 && (v29 != -1 || _LogCategory_Initialize()))
        {
          v56 = NSLocalizedDescriptionKey;
          v30 = [NSString stringWithUTF8String:DebugGetErrorString()];
          v31 = v30;
          v32 = @"?";
          if (v30)
          {
            v32 = v30;
          }

          v57 = v32;
          v33 = [v6[214] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          [NSError errorWithDomain:NSOSStatusErrorDomain code:v28 userInfo:v33];
          v42 = v40 = v27;
          LogPrintF();

          p_cb = (&OBJC_PROTOCOL___SDProximityControllerDelegate + 64);
          v6 = &kSFNodeProtocolWebDAVS_ptr;

          v21 = v45;
        }
      }
    }

    v23 = [v21 countByEnumeratingWithState:&v47 objects:v60 count:16];
  }

  while (v23);

  self = selfCopy;
  selfCopy->_cleanKeysState = 4;
  if (!v28)
  {
    v5 = v43;
    goto LABEL_46;
  }

  v34 = 3;
  v5 = v43;
LABEL_44:
  self->_cleanKeysState = v34;
LABEL_46:

LABEL_47:
}

- (void)_deviceChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy identifier];
  objc_claimAutoreleasedReturnValue();
  sub_10002FC60();
  if (!v3 || !self->_deviceDiscovery)
  {
LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  deviceActionType = [changedCopy deviceActionType];
  v6 = +[SDNearbyAgent sharedNearbyAgent];
  idsBluetoothDeviceIDsForRIServers = [v6 idsBluetoothDeviceIDsForRIServers];
  v8 = [idsBluetoothDeviceIDsForRIServers containsObject:v3];

  if (deviceActionType == 19 && v8 && !self->_prefPairedTVAllowed)
  {
    if (([(NSMutableSet *)self->_ignoredTVs containsObject:v3]& 1) == 0)
    {
      if (dword_1009707D0 <= 10 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      ignoredTVs = self->_ignoredTVs;
      if (!ignoredTVs)
      {
        v14 = objc_alloc_init(NSMutableSet);
        v15 = self->_ignoredTVs;
        self->_ignoredTVs = v14;

        ignoredTVs = self->_ignoredTVs;
      }

      [(NSMutableSet *)ignoredTVs addObject:v3];
    }

    goto LABEL_28;
  }

  v9 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:v3];
  if (!v9)
  {
    goto LABEL_15;
  }

  if (([changedCopy needsSetup] & 1) == 0)
  {
    [sub_100035D58() _deviceStoppedRequesting:?];
    goto LABEL_29;
  }

  [(NSMutableDictionary *)self->_triggeredDevices setObject:changedCopy forKeyedSubscript:v3];
  if (deviceActionType != 19)
  {
    [sub_100035D58() _deviceStoppedRequesting:?];
  }

  if (self->_prefRateLimitDisabled)
  {
LABEL_15:
    if ((gSDProxCardsSuppressed & 1) == 0 && !-[SDAutoFillAgent _uiShowing](self, "_uiShowing") && (-[SDStatusMonitor systemUIFlags](self->_statusMonitor, "systemUIFlags") & 0x7C809) == 0 && [changedCopy needsSetup] && deviceActionType == 19)
    {
      triggeredDevices = self->_triggeredDevices;
      if (!triggeredDevices)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        v12 = self->_triggeredDevices;
        self->_triggeredDevices = v11;

        triggeredDevices = self->_triggeredDevices;
      }

      [(NSMutableDictionary *)triggeredDevices setObject:changedCopy forKeyedSubscript:v3];
      [sub_100035D58() _uiStartIfEnabled:? extraInfo:?];
    }
  }

LABEL_29:
  [(SDAutoFillAgent *)self _update];
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  [foundCopy identifier];
  objc_claimAutoreleasedReturnValue();
  sub_10002FC60();
  if (self->_deviceDiscovery)
  {
    if (v3)
    {
      deviceActionType = [foundCopy deviceActionType];
      if (deviceActionType == 19)
      {
        if (dword_1009707D0 <= 10)
        {
          if (dword_1009707D0 != -1 || (deviceActionType = _LogCategory_Initialize(), deviceActionType))
          {
            sub_100021E94(deviceActionType, v6, v7, v8, v9, v10, v11, v12, v25, foundCopy);
            LogPrintF();
          }
        }

        devices = self->_devices;
        if (!devices)
        {
          v14 = objc_alloc_init(NSMutableDictionary);
          v15 = self->_devices;
          self->_devices = v14;

          devices = self->_devices;
        }

        [(NSMutableDictionary *)devices setObject:foundCopy forKeyedSubscript:v3];
        bleDevice = [foundCopy bleDevice];
        advertisementFields = [bleDevice advertisementFields];
        v18 = [advertisementFields objectForKeyedSubscript:@"bdAddr"];

        if (v18)
        {
          v19 = SFHexStringForData();
          v20 = +[NSCharacterSet symbolCharacterSet];
          v21 = [v19 stringByTrimmingCharactersInSet:v20];

          btDevices = self->_btDevices;
          if (!btDevices)
          {
            v23 = objc_alloc_init(NSMutableDictionary);
            v24 = self->_btDevices;
            self->_btDevices = v23;

            btDevices = self->_btDevices;
          }

          [(NSMutableDictionary *)btDevices setObject:foundCopy forKeyedSubscript:v21];
        }

        [(SDAutoFillAgent *)self _update];
        [sub_100035D58() _deviceChanged:?];
      }
    }
  }
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  [lostCopy identifier];
  objc_claimAutoreleasedReturnValue();
  sub_10002FC60();
  if (dword_1009707D0 <= 10)
  {
    if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_100021E94(v5, v6, v7, v8, v9, v10, v11, v12, v19, lostCopy);
      LogPrintF();
    }
  }

  if (v3)
  {
    [(NSMutableDictionary *)self->_devices removeObjectForKey:v3];
    [sub_100035D58() _deviceStoppedRequesting:?];
    bleDevice = [lostCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    v15 = [advertisementFields objectForKeyedSubscript:@"bdAddr"];

    if (v15)
    {
      v16 = SFHexStringForData();
      v17 = +[NSCharacterSet symbolCharacterSet];
      v18 = [v16 stringByTrimmingCharactersInSet:v17];

      [(NSMutableDictionary *)self->_btDevices removeObjectForKey:v18];
    }

    [(SDAutoFillAgent *)self _update];
  }
}

- (void)_proximityChanged:(id)changed
{
  changedCopy = changed;
  identifier = [changedCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!identifier || !self->_proximityDiscovery)
  {
    model = 0;
    v13 = 0;
    v5 = 0;
LABEL_36:
    proxPairProximityEstimator = 0;
    goto LABEL_31;
  }

  v5 = objc_alloc_init(SFDevice);
  [v5 updateWithBLEDevice:changedCopy];
  model = [v5 model];
  if (![&off_10090FFC8 containsObject:model])
  {
    v13 = 0;
    goto LABEL_36;
  }

  proxPairProximityEstimator = [changedCopy proxPairProximityEstimator];
  if (!proxPairProximityEstimator)
  {
    v8 = +[SDNearbyAgent sharedNearbyAgent];
    v9 = [v8 bleProximityInfoForType:@"rafp" device:v5];

    proxPairProximityEstimator = [SFProximityEstimator proximityEstimatorWithProximityInfo:v9];
    [changedCopy setProxPairProximityEstimator:proxPairProximityEstimator];
  }

  [proxPairProximityEstimator updateWithSFBLEDevice:changedCopy];
  triggered = [changedCopy triggered];
  [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v5];
  v11 = [(SDProximityController *)self->_proximityController checkDeviceRegion:v5];
  if (v11 == 2 && dword_1009707D0 <= 50 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = v11 == 2;
  if (!_os_feature_enabled_impl())
  {
    v12 = triggered;
  }

  v13 = [(NSMutableDictionary *)self->_proximityDevices objectForKeyedSubscript:identifier];
  if (v13)
  {
    if (v12)
    {
      [(NSMutableDictionary *)self->_proximityDevices setObject:changedCopy forKeyedSubscript:identifier];
      goto LABEL_31;
    }

    if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
    {
      v19 = identifier;
      rssiEstimate = [changedCopy rssiEstimate];
      LogPrintF();
    }

    [(NSMutableDictionary *)self->_proximityDevices removeObjectForKey:identifier, v19, rssiEstimate];
  }

  else
  {
    if (!v12)
    {
      v13 = 0;
      goto LABEL_31;
    }

    v14 = changedCopy;
    if (dword_1009707D0 <= 30)
    {
      if (dword_1009707D0 != -1 || (v15 = _LogCategory_Initialize(), v14 = changedCopy, v15))
      {
        v19 = identifier;
        rssiEstimate = [v14 rssiEstimate];
        LogPrintF();
        v14 = changedCopy;
      }
    }

    proximityDevices = self->_proximityDevices;
    if (!proximityDevices)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      v18 = self->_proximityDevices;
      self->_proximityDevices = v17;

      v14 = changedCopy;
      proximityDevices = self->_proximityDevices;
    }

    [(NSMutableDictionary *)proximityDevices setObject:v14 forKeyedSubscript:identifier, v19, rssiEstimate];
  }

  [(SDAutoFillAgent *)self _update];
LABEL_31:
}

- (void)_proximityFound:(id)found
{
  foundCopy = found;
  [foundCopy identifier];
  objc_claimAutoreleasedReturnValue();
  sub_10002FC60();
  if (self->_proximityDiscovery && v3)
  {
    if (dword_1009707D0 <= 10)
    {
      if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_100021E94(v5, v6, v7, v8, v9, v10, v11, v12, v13, foundCopy);
        LogPrintF();
      }
    }

    [sub_100035D58() _proximityChanged:?];
  }
}

- (void)_proximityLost:(id)lost
{
  lostCopy = lost;
  [lostCopy identifier];
  objc_claimAutoreleasedReturnValue();
  sub_10002FC60();
  if (self->_proximityDiscovery && v3)
  {
    if (dword_1009707D0 <= 10)
    {
      if (dword_1009707D0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_100021E94(v5, v6, v7, v8, v9, v10, v11, v12, v13, lostCopy);
        LogPrintF();
      }
    }

    [(NSMutableDictionary *)self->_proximityDevices removeObjectForKey:v3];
    [(SDAutoFillAgent *)self _update];
  }
}

- (void)_uiStartIfNeeded:(id)needed extraInfo:(id)info
{
  neededCopy = needed;
  infoCopy = info;
  identifier = [neededCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ((gSDProxCardsSuppressed & 1) != 0 || self->_preventNotifications || [(SDAutoFillAgent *)self _uiShowing]|| ([(SDStatusMonitor *)self->_statusMonitor systemUIFlags]& 0x7C809) != 0)
  {
    goto LABEL_37;
  }

  if ([neededCopy deviceClassCode] != 6)
  {
    goto LABEL_16;
  }

  if (self->_prefRequiresProx)
  {
    if (![(NSMutableDictionary *)self->_proximityDevices count])
    {
      if (dword_1009707D0 <= 10 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:identifier, identifier];
      }

      else
      {
        [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:identifier, v31];
      }

      goto LABEL_37;
    }

    goto LABEL_16;
  }

  activeDevices = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
  v10 = SFDeviceToRPCompanionLinkDevice();

  if (!v10)
  {
    v11 = [(SDAutoFillAgent *)self _rpCompanionLinkDeviceForSFDevice:neededCopy];
    if (!v11)
    {
      v28 = +[SDNearbyAgent sharedNearbyAgent];
      idsBluetoothDeviceIDsForSharing = [v28 idsBluetoothDeviceIDsForSharing];
      v30 = [idsBluetoothDeviceIDsForSharing containsObject:identifier];

      if (!v30)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v10 = v11;
  }

  activeUserAltDSID = [v10 activeUserAltDSID];
  v13 = objc_alloc_init(off_100970848());
  aa_primaryAppleAccount = [v13 aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
  if ([aa_altDSID isEqualToString:activeUserAltDSID])
  {

LABEL_16:
    activeTVAutoFillPrompts = [(SDNotificationManager *)self->_notificationManager activeTVAutoFillPrompts];
    v17 = [activeTVAutoFillPrompts containsObject:identifier];

    if ((v17 & 1) == 0)
    {
      if (self->_uiDelayActive)
      {
        if (dword_1009707D0 <= 30)
        {
          if (dword_1009707D0 != -1 || (v18 = _LogCategory_Initialize(), v18))
          {
            sub_100021E94(v18, v19, v20, v21, v22, v23, v24, v25, v31, neededCopy);
            LogPrintF();
          }
        }

        objc_storeStrong(&self->_uiDelayDevice, needed);
      }

      else
      {
        v26 = neededCopy;
        if (dword_1009707D0 <= 50)
        {
          if (dword_1009707D0 != -1 || (v27 = _LogCategory_Initialize(), v26 = neededCopy, v27))
          {
            v31 = v26;
            LogPrintF();
            v26 = neededCopy;
          }
        }

        [(SDAutoFillAgent *)self _uiStart:v26 extraInfo:infoCopy, v31];
      }
    }

    goto LABEL_37;
  }

  if (dword_1009707D0 <= 30 && (dword_1009707D0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_37:
}

@end