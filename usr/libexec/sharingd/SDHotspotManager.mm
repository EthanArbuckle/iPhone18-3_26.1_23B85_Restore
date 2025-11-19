@interface SDHotspotManager
- (BOOL)isNetworkHostAP:(__WiFiNetwork *)a3;
- (BOOL)isP2PAllowed;
- (BOOL)isTethering;
- (BOOL)isTetheringInUse;
- (BOOL)netRBTetheringSupported;
- (BOOL)setHotspotPassword:(id)a3;
- (BOOL)shouldTurnOffTethering;
- (BOOL)takePowerAssertion;
- (NSString)hotspotName;
- (NSString)hotspotPassword;
- (SDHotspotManager)initWithDelegate:(id)a3;
- (SDHotspotManagerDelegate)delegate;
- (id)_createDefaultPassword;
- (id)hotspotChannel;
- (void)addObservers;
- (void)clearQueuedDiscoveryRequest;
- (void)dealloc;
- (void)debugInfoRequest:(id)a3;
- (void)disableMISImmediately;
- (void)firstUnlockStateChanged:(id)a3;
- (void)handleHostAPChanged:(id)a3;
- (void)handleSystemWakeChange;
- (void)handleWiFiRestart;
- (void)invalidateNetworkTimer;
- (void)misStateChanged:(id)a3;
- (void)networkTimerFired:(id)a3;
- (void)notifyHostAPActivated;
- (void)notifyHostAPError:(id)a3;
- (void)onqueue_captureTailspin;
- (void)onqueue_cleanUpFailedNetworkBringUp;
- (void)onqueue_handleHostAPChanged:(id)a3;
- (void)onqueue_handleSwitchConditionsChanged;
- (void)onqueue_updateHostAPNetwork;
- (void)onqueue_updateTetheringSupported;
- (void)personalHotspotAllowedChanged:(id)a3;
- (void)queueDiscoveryRequestWithCompletionHandler:(id)a3 modelID:(id)a4 productVersion:(id)a5 canConnectOn5GHz:(BOOL)a6;
- (void)releasePowerAssertion;
- (void)removeObservers;
- (void)restartNetworkTimer;
- (void)setMaxConnectionsReached:(BOOL)a3;
- (void)simStateChanged:(id)a3;
- (void)startTetheringWithCompletionHandler:(id)a3 modelID:(id)a4 productVersion:(id)a5 canConnectOn5GHz:(BOOL)a6;
- (void)stopTethering;
- (void)turnOffDiscovery;
@end

@implementation SDHotspotManager

- (void)handleSystemWakeChange
{
  if (self->_queuedDiscoveryRequest)
  {
    block[5] = v2;
    block[6] = v3;
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001CB280;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (SDHotspotManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SDHotspotManager;
  v5 = [(SDHotspotManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_startedHostAP = 0;
    networkTimer = v6->_networkTimer;
    v6->_networkTimer = 0;

    hostAPNetwork = v6->_hostAPNetwork;
    v6->_hostAPNetwork = 0;

    v6->_flippedHotspotSwitch = 0;
    v9 = objc_opt_new();
    handlers = v6->_handlers;
    v6->_handlers = v9;

    v6->_queuedDiscoveryRequest = 0;
    v6->_systemState = 1;
    v11 = dispatch_queue_create("com.apple.SDHotspotManager-work", 0);
    workQueue = v6->_workQueue;
    v6->_workQueue = v11;

    v13 = objc_alloc_init(SDMISManager);
    misManager = v6->_misManager;
    v6->_misManager = v13;

    [(SDMISManager *)v6->_misManager setDelegate:v6];
    [(SDHotspotManager *)v6 addObservers];
    v15 = v6->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C7F8C;
    block[3] = &unk_1008CDEA0;
    v18 = v6;
    dispatch_async(v15, block);
  }

  return v6;
}

- (void)dealloc
{
  [(SDHotspotManager *)self removeObservers];
  [(SDHotspotManager *)self releasePowerAssertion];
  [(SDHotspotManager *)self clearQueuedDiscoveryRequest];
  misManager = self->_misManager;
  self->_misManager = 0;

  v4.receiver = self;
  v4.super_class = SDHotspotManager;
  [(SDHotspotManager *)&v4 dealloc];
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"debugInfoRequest:" name:@"com.apple.sharingd.DebugInfoRequested" object:0];
  [v3 addObserver:self selector:"firstUnlockStateChanged:" name:@"com.apple.sharingd.KeyBagFirstUnlock" object:0];
  [v3 addObserver:self selector:"simStateChanged:" name:@"com.apple.sharingd.SIMStateChanged" object:0];
  [v3 addObserver:self selector:"personalHotspotAllowedChanged:" name:@"com.apple.sharingd.PersonalHotspotAllowedChanged" object:0];
  [v3 addObserver:self selector:"handleHostAPChanged:" name:@"com.apple.sharingd.HotspotHostAPStateChanged" object:0];
  [v3 addObserver:self selector:"handleSystemWakeChange" name:@"com.apple.sharingd.SystemHasPoweredOn" object:0];
  [v3 addObserver:self selector:"handleSystemWakeChange" name:@"com.apple.sharingd.SystemWillNotSleep" object:0];
  [v3 addObserver:self selector:"handleWiFiRestart" name:@"com.apple.sharingd.WiFiRestart" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)debugInfoRequest:(id)a3
{
  v23 = objc_opt_new();
  if ([(SDHotspotManager *)self netRBTetheringSupported])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [NSString stringWithFormat:@"NetRB Tethering Supported:%@", v4];
  [v23 addObject:v5];

  v6 = +[SDStatusMonitor sharedMonitor];
  if ([v6 deviceWasUnlockedOnce])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [NSString stringWithFormat:@"First Unlocked:%@", v7];
  [v23 addObject:v8];

  v9 = +[SDStatusMonitor sharedMonitor];
  v10 = [v9 wifiManager];

  if (v10)
  {
    if (WiFiManagerClientIsTetheringSupported())
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [NSString stringWithFormat:@"Wifi Tethering Supported:%@", v11];
    [v23 addObject:v12];

    if (WiFiManagerClientGetMISDiscoveryState())
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = [NSString stringWithFormat:@"Wifi Discovery State:%@", v13];
    [v23 addObject:v14];
  }

  v15 = [(SDHotspotManager *)self hostAPNetwork];
  if (v15)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [NSString stringWithFormat:@"HostAp Network Up:%@", v16];
  [v23 addObject:v17];

  v18 = [NSString stringWithFormat:@"Connected Hosts:%d", [(SDMISManager *)self->_misManager connectedHosts]];
  [v23 addObject:v18];

  if ([(SDHotspotManager *)self flippedHotspotSwitch])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = [NSString stringWithFormat:@"We turned switch on:%@", v19];
  [v23 addObject:v20];

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  sub_100086F68(v22, v23);
}

- (void)firstUnlockStateChanged:(id)a3
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C84F4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)simStateChanged:(id)a3
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C8570;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)personalHotspotAllowedChanged:(id)a3
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C85EC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleWiFiRestart
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C86D4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)netRBTetheringSupported
{
  v5 = 0;
  v4 = 0;
  [(SDMISManager *)self->_misManager getState:&v5 andReason:&v4];
  return (v5 & 0xFFFFFFFE) == 0x3FE && v4 != 4;
}

- (void)onqueue_updateTetheringSupported
{
  v3 = [(SDHotspotManager *)self isTetheringSupported];
  if (self->_cachedWiFiResult)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[SDStatusMonitor sharedMonitor];
    v6 = [v5 wifiManager];

    if (v6)
    {
      v4 = WiFiManagerClientIsTetheringSupported() != 0;
    }

    else
    {
      v4 = 0;
    }

    self->_cachedWiFiResult = v4;
  }

  if (self->_misManager)
  {
    v7 = ![(SDHotspotManager *)self netRBTetheringSupported];
  }

  else
  {
    v7 = 1;
  }

  v8 = +[SDStatusMonitor sharedMonitor];
  v9 = [v8 deviceWasUnlockedOnce];

  v10 = +[SDStatusMonitor sharedMonitor];
  v11 = [v10 simStateReady];

  v12 = +[SDStatusMonitor sharedMonitor];
  v13 = [v12 personalHotspotAllowed];

  v28 = 0;
  v14 = +[SDStatusMonitor sharedMonitor];
  [v14 cellularDataEnabled:&v28 airplaneMode:&v28 + 1];

  v15 = 0;
  if ((v13 & v4) == 1 && (v7 & 1) == 0 && v9 && v11)
  {
    if ((v28 & 0x100) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v28;
    }
  }

  v16 = tethering_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    if (v15)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    if (v4)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    *buf = 138414082;
    v30 = v18;
    if (v7)
    {
      v20 = @"NO";
    }

    else
    {
      v20 = @"YES";
    }

    v31 = 2112;
    v32 = v19;
    if (v9)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v33 = 2112;
    if (v11)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v34 = v20;
    if (v13)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v35 = 2112;
    if (HIBYTE(v28))
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v36 = v21;
    if (v28)
    {
      v17 = @"YES";
    }

    v37 = 2112;
    v38 = v22;
    v39 = 2112;
    v40 = v23;
    v41 = 2112;
    v42 = v24;
    v43 = 2112;
    v44 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updated tethering support result = %@, wifiResult = %@, netRBResult = %@, firstUnlocked = %@, simStateReady = %@, allowed = %@, airplaneMode = %@, cell data enabled = %@", buf, 0x52u);
  }

  [(SDHotspotManager *)self setTetheringSupported:v15 & 1];
  if (v3 != [(SDHotspotManager *)self isTetheringSupported])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = objc_loadWeakRetained(&self->_delegate);
      [v27 hotspotManagerTetheringSupportChanged:self];
    }
  }
}

- (void)onqueue_updateHostAPNetwork
{
  p_hostAPNetwork = &self->_hostAPNetwork;
  hostAPNetwork = self->_hostAPNetwork;
  self->_hostAPNetwork = 0;

  cf = 0;
  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [v5 defaultWiFiDevice];

  if (v6)
  {
    if (WiFiDeviceClientCopyHostedNetworks())
    {
      v7 = tethering_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001CB6D4();
      }
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = cf;
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            if ([(SDHotspotManager *)self isNetworkHostAP:v13])
            {
              objc_storeStrong(p_hostAPNetwork, v13);
              v14 = tethering_log();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *v15 = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Host AP network up", v15, 2u);
              }
            }
          }

          v10 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v10);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v8 = tethering_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001CB748();
    }
  }
}

- (void)onqueue_handleSwitchConditionsChanged
{
  v5 = 0;
  [(SDMISManager *)self->_misManager getState:&v5 + 4 andReason:&v5];
  if (HIDWORD(v5) == 1023)
  {
    if ([(SDHotspotManager *)self shouldTurnOffTethering])
    {
      [(SDMISManager *)self->_misManager setState:1022];
    }
  }

  else
  {
    self->_flippedHotspotSwitch = 0;
    v3 = tethering_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_flippedHotspotSwitch)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Flipped switch on state being reset to %@", buf, 0xCu);
    }
  }
}

- (BOOL)shouldTurnOffTethering
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 wifiManager];

  v5 = tethering_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SDMISManager *)self->_misManager connectedHosts];
    if ([(SDMISManager *)self->_misManager hostIsOnlyUSBEthernet])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (self->_flippedHotspotSwitch)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (WiFiManagerClientGetMISDiscoveryState())
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [(SDHotspotManager *)self hostAPNetwork];
    networkTimer = self->_networkTimer;
    if (v10)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v16[0] = 67110658;
    v16[1] = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = networkTimer;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connected hosts = %d, only usb = %@, flipped switch on = %@, wifiClient = %@, discovery state = %@, hostAPNetwork = %@, network timer = %@", v16, 0x44u);
  }

  if ([(SDMISManager *)self->_misManager connectedHosts]&& ![(SDMISManager *)self->_misManager hostIsOnlyUSBEthernet])
  {
    return 0;
  }

  v13 = 0;
  if (self->_flippedHotspotSwitch && v4)
  {
    if (WiFiManagerClientGetMISDiscoveryState())
    {
      return 0;
    }

    v15 = [(SDHotspotManager *)self hostAPNetwork];
    if (v15)
    {
      v13 = 0;
    }

    else
    {
      v13 = self->_networkTimer == 0;
    }
  }

  return v13;
}

- (BOOL)isTethering
{
  v4 = 1021;
  v3 = 0;
  [(SDMISManager *)self->_misManager getState:&v4 andReason:&v3];
  return v4 == 1023;
}

- (BOOL)isP2PAllowed
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 wifiManager];

  return v3 && WiFiManagerClientIsP2PAllowed() != 0;
}

- (BOOL)isTetheringInUse
{
  cf = 0;
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 defaultWiFiDevice];

  if (v4)
  {
    v5 = WiFiDeviceClientCopyHostedNetworks();
    if (v5 == 5)
    {
      v12 = 0;
    }

    else
    {
      if (v5)
      {
        v6 = tethering_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1001CB6D4();
        }
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v6 = cf;
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v15;
          while (2)
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v15 != v9)
              {
                objc_enumerationMutation(v6);
              }

              if ([(SDHotspotManager *)self isNetworkHostAP:*(*(&v14 + 1) + 8 * i), v14])
              {
                v12 = 1;
                goto LABEL_21;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }
      }

      v12 = 0;
LABEL_21:
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v11 = tethering_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001CB748();
    }

    return 0;
  }

  return v12;
}

- (void)startTetheringWithCompletionHandler:(id)a3 modelID:(id)a4 productVersion:(id)a5 canConnectOn5GHz:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C92A8;
  block[3] = &unk_1008D3488;
  block[4] = self;
  v18 = v11;
  v19 = v12;
  v20 = v10;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(workQueue, block);
}

- (void)stopTethering
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 wifiManager];

  if (v4)
  {
    *keys = *&off_1008D34A8;
    v8[0] = kCFBooleanFalse;
    v8[1] = kCFBooleanTrue;
    v5 = CFDictionaryCreate(kCFAllocatorDefault, keys, v8, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v5)
    {
      v6 = v5;
      WiFiManagerClientSetMISDiscoveryStateExt();
      CFRelease(v6);
    }

    else
    {
      v7 = tethering_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001CB7C0();
      }
    }
  }

  [(SDHotspotManager *)self clearQueuedDiscoveryRequest];
  [(SDHotspotManager *)self releasePowerAssertion];
  [(SDMISManager *)self->_misManager setState:1022];
}

- (void)turnOffDiscovery
{
  v3 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C9AA0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)disableMISImmediately
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 wifiManager];

  if (v4)
  {
    v5 = tethering_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disabling MIS", buf, 2u);
    }

    *buf = *&off_1008D34A8;
    v9[0] = kCFBooleanFalse;
    v9[1] = kCFBooleanTrue;
    v6 = CFDictionaryCreate(kCFAllocatorDefault, buf, v9, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v6)
    {
      v7 = v6;
      WiFiManagerClientSetMISDiscoveryStateExt();
      CFRelease(v7);
    }

    else
    {
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001CB7C0();
      }
    }

    WiFiManagerClientSetMISState();
  }

  [(SDHotspotManager *)self clearQueuedDiscoveryRequest];
  [(SDHotspotManager *)self releasePowerAssertion];
}

- (void)onqueue_cleanUpFailedNetworkBringUp
{
  v12 = NSLocalizedDescriptionKey;
  v13 = @"Could not bring up Personal Hotspot WiFi network";
  v3 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:50 userInfo:v3];
  [(SDHotspotManager *)self notifyHostAPError:v4];

  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [v5 wifiManager];

  if (v6)
  {
    *keys = *&off_1008D34A8;
    v10[0] = kCFBooleanFalse;
    v10[1] = kCFBooleanFalse;
    v7 = CFDictionaryCreate(kCFAllocatorDefault, keys, v10, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v7)
    {
      v8 = v7;
      WiFiManagerClientSetMISDiscoveryStateExt();
      CFRelease(v8);
    }

    else
    {
      v9 = tethering_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001CB7C0();
      }
    }
  }

  [(SDHotspotManager *)self clearQueuedDiscoveryRequest];
  [(SDHotspotManager *)self releasePowerAssertion];
  [(SDHotspotManager *)self onqueue_handleSwitchConditionsChanged];
}

- (void)restartNetworkTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C9FA4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)networkTimerFired:(id)a3
{
  v4 = tethering_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1001CB7FC();
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CA0FC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)invalidateNetworkTimer
{
  if (self->_networkTimer)
  {
    v3 = tethering_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating network timer", v5, 2u);
    }

    [(NSTimer *)self->_networkTimer invalidate];
    networkTimer = self->_networkTimer;
    self->_networkTimer = 0;
  }
}

- (void)onqueue_captureTailspin
{
  if (sub_10000C1F8(@"EnableSoftAPTailspin", 0) && !self->_capturingTailspin)
  {
    self->_capturingTailspin = 1;
    v3 = tethering_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Capturing tailspin", buf, 2u);
    }

    v4 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v5 = +[NSLocale autoupdatingCurrentLocale];
    [v4 setLocale:v5];

    v6 = objc_opt_new();
    v21 = v4;
    v7 = [v4 components:2097404 fromDate:v6];

    v8 = [v7 year];
    v9 = [v7 month];
    v10 = [v7 day];
    v11 = [v7 hour];
    v12 = [v7 minute];
    v13 = [v7 second];
    v14 = [v7 timeZone];
    v15 = [v14 abbreviation];
    v16 = [NSString stringWithFormat:@"%02ld-%02ld-%02ld_%02ld:%02ld:%02ld_%@", v8, v9, v10, v11, v12, v13, v15];

    v17 = [NSString stringWithFormat:@"/var/tmp/InstantHotspot_%@.tailspin", v16];
    v18 = +[NSFileManager defaultManager];
    [v18 createFileAtPath:v17 contents:0 attributes:0];

    v19 = [NSFileHandle fileHandleForUpdatingAtPath:v17];
    if (v19)
    {
      v20 = dispatch_get_global_queue(-32768, 0);
      [v19 fileDescriptor];
      v22 = v19;
      tailspin_dump_output();
    }
  }
}

- (NSString)hotspotName
{
  v3 = [(SDHotspotManager *)self hostAPNetwork];

  if (v3)
  {
    v4 = [(SDHotspotManager *)self hostAPNetwork];
    v5 = WiFiNetworkGetSSID();
  }

  else
  {
    v5 = &stru_1008EFBD0;
  }

  return v5;
}

- (BOOL)setHotspotPassword:(id)a3
{
  v3 = a3;
  v4 = +[SDStatusMonitor sharedMonitor];
  v5 = [v4 wifiManager];

  if (v5)
  {
    v6 = tethering_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting new password", v8, 2u);
    }

    LOBYTE(v5) = WiFiManagerClientSetMisPassword() == 1;
  }

  return v5;
}

- (id)_createDefaultPassword
{
  v3 = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz"];
  v12[0] = v3;
  v4 = [NSCharacterSet characterSetWithCharactersInString:@"1234567890"];
  v12[1] = v4;
  v5 = [NSArray arrayWithObjects:v12 count:2];

  v10[0] = kSecPasswordMinLengthKey;
  v10[1] = kSecPasswordMaxLengthKey;
  v11[0] = &off_10090BEC8;
  v11[1] = &off_10090BEC8;
  v10[2] = kSecPasswordAllowedCharactersKey;
  v10[3] = kSecPasswordRequiredCharactersKey;
  v11[2] = @"abcdefghijklmnopqrstuvwxyz1234567890";
  v11[3] = v5;
  [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  v6 = SecPasswordGenerate();
  if ([v6 length])
  {
    if ([(SDHotspotManager *)self setHotspotPassword:v6])
    {
      v7 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = tethering_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001CB838();
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (NSString)hotspotPassword
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 wifiManager];

  if (v4)
  {
    v4 = WiFiManagerClientCopyMisPassword();
    if (![(__CFString *)v4 length])
    {
      v5 = [(SDHotspotManager *)self _createDefaultPassword];

      v4 = v5;
    }
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1008EFBD0;
  }

  v7 = v6;

  return &v6->isa;
}

- (id)hotspotChannel
{
  v3 = [(SDHotspotManager *)self hostAPNetwork];

  if (v3)
  {
    v4 = [(SDHotspotManager *)self hostAPNetwork];
    v5 = WiFiNetworkGetChannel();
  }

  else
  {
    v5 = &off_10090BEE0;
  }

  return v5;
}

- (void)setMaxConnectionsReached:(BOOL)a3
{
  self->_maxConnectionsReached = a3;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"SDHotspotManagerConnectionStateChanged" object:0];
}

- (void)queueDiscoveryRequestWithCompletionHandler:(id)a3 modelID:(id)a4 productVersion:(id)a5 canConnectOn5GHz:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (self->_queuedDiscoveryRequest)
  {
    v13 = tethering_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(self->_queuedHandler);
      v15 = v14;
      queuedModelID = self->_queuedModelID;
      queuedProductVersion = self->_queuedProductVersion;
      if (self->_queuedCanConnectOn5GHz)
      {
        v18 = "yes";
      }

      else
      {
        v18 = "no";
      }

      v24 = 138413058;
      v25 = v14;
      v26 = 2112;
      v27 = queuedModelID;
      v28 = 2112;
      v29 = queuedProductVersion;
      v30 = 2080;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Overriding existing discovery request with handler: %@, modelID: %@, productVersion: %@, connectOn5GHz: %s", &v24, 0x2Au);
    }
  }

  self->_queuedDiscoveryRequest = 1;
  v19 = objc_retainBlock(v10);
  queuedHandler = self->_queuedHandler;
  self->_queuedHandler = v19;

  v21 = self->_queuedModelID;
  self->_queuedModelID = v11;
  v22 = v11;

  v23 = self->_queuedProductVersion;
  self->_queuedProductVersion = v12;

  self->_queuedCanConnectOn5GHz = a6;
}

- (void)clearQueuedDiscoveryRequest
{
  self->_queuedDiscoveryRequest = 0;
  queuedHandler = self->_queuedHandler;
  self->_queuedHandler = 0;

  queuedModelID = self->_queuedModelID;
  self->_queuedModelID = 0;

  queuedProductVersion = self->_queuedProductVersion;
  self->_queuedProductVersion = 0;

  self->_queuedCanConnectOn5GHz = 0;
}

- (void)notifyHostAPActivated
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_handlers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [(SDHotspotManager *)self hotspotName];
        v10 = [(SDHotspotManager *)self hotspotPassword];
        v11 = [(SDHotspotManager *)self hotspotChannel];
        (*(v8 + 16))(v8, v9, v10, v11, 0);

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_handlers removeAllObjects];
}

- (void)notifyHostAPError:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_handlers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_handlers removeAllObjects];
}

- (void)misStateChanged:(id)a3
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CAEA0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)isNetworkHostAP:(__WiFiNetwork *)a3
{
  v3 = WiFiNetworkGetProperty();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue] == 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleHostAPChanged:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CAFD0;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)onqueue_handleHostAPChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HostAPEventData"];

  v6 = [v5 objectForKeyedSubscript:@"HostApEnabled"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [(SDHotspotManager *)self onqueue_updateHostAPNetwork];
    [(SDHotspotManager *)self invalidateNetworkTimer];
    if ([(SDHotspotManager *)self startedHostAP])
    {
      v8 = tethering_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stopping discovery on Host AP change", &v15, 2u);
      }

      [(SDHotspotManager *)self turnOffDiscovery];
      [(SDHotspotManager *)self setStartedHostAP:0];
    }

    v9 = [v5 objectForKeyedSubscript:@"HostApDisableHotspotAdvertise"];
    v10 = [v9 BOOLValue];

    [(SDHotspotManager *)self setMaxConnectionsReached:v10];
    [(SDHotspotManager *)self notifyHostAPActivated];
    v11 = tethering_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SDHotspotManager *)self isP2PAllowed];
      v13 = @"NO";
      if (v12)
      {
        v13 = @"YES";
      }

      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SoftAP up, P2P enabled %@", &v15, 0xCu);
    }
  }

  else
  {
    v14 = tethering_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Clearing cached wifinetwork", &v15, 2u);
    }

    [(SDHotspotManager *)self setHostAPNetwork:0];
    [(SDHotspotManager *)self setMaxConnectionsReached:0];
    [(SDHotspotManager *)self onqueue_handleSwitchConditionsChanged];
  }

  dispatch_async(&_dispatch_main_q, &stru_1008D34B8);
}

- (BOOL)takePowerAssertion
{
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  p_powerAssertionID = &self->_powerAssertionID;
  if (self->_powerAssertionID)
  {
    systemState = self->_systemState;
    return systemState == 0;
  }

  v8 = tethering_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Grabbing waking power assertion to allow for WiFi MIS discovery", v10, 2u);
  }

  if (!IOPMAssertionDeclareSystemActivity())
  {
    systemState = self->_systemState;
    return systemState == 0;
  }

  v9 = tethering_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1001CB8AC();
  }

  result = 0;
  *p_powerAssertionID = &_mh_execute_header;
  return result;
}

- (void)releasePowerAssertion
{
  if (self->_powerAssertionID)
  {
    v3 = tethering_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing waking power assertion", v5, 2u);
    }

    IOPMAssertionRelease(self->_powerAssertionID);
    *&self->_powerAssertionID = &_mh_execute_header;
  }

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (SDHotspotManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end