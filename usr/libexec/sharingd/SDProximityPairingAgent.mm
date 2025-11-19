@interface SDProximityPairingAgent
+ (SDProximityPairingAgent)sharedProximityPairingAgent;
+ (id)dataFromHexString:(id)a3;
- (BOOL)_shouldShowBatteryCard:(id)a3 inDevice:(id)a4;
- (BOOL)_supportedDevice:(id)a3;
- (BOOL)_systemCanShowUIWithCounterpart:(id)a3;
- (BOOL)isBackgroundCheckReadyForFeature:(id)a3 forDevice:(id)a4;
- (BOOL)launchRemoteAlertWithUserInfo:(id)a3;
- (BOOL)reenableProxCardType:(unsigned __int8)a3;
- (BOOL)shouldNotTriggerBecauseDeviceInformationIsTooOld:(id)a3;
- (BOOL)shouldNotifyForNonGenuineDevice:(id)a3;
- (BOOL)shouldPromptForEndCallProx:(id)a3;
- (BOOL)shouldPromptForSiriNotificationForDevice:(id)a3;
- (BOOL)shouldPromptForSpatialAudioProfileForDevice:(id)a3;
- (NSString)description;
- (SDProximityPairingAgent)init;
- (id)_createNewPowerSourceContainer;
- (id)_testDeviceWithParams:(id)a3;
- (int)_startPairingUI:(id)a3 autoStart:(BOOL)a4 repair:(BOOL)a5;
- (int)_startStatusUI:(id)a3;
- (void)_accountSettingsChanged;
- (void)_activate;
- (void)_bufferedBleDeviceFound:(id)a3;
- (void)_deviceChanged:(id)a3;
- (void)_deviceFound:(id)a3 andIsABufferedDevice:(BOOL)a4;
- (void)_deviceLost:(id)a3;
- (void)_ensureStarted;
- (void)_ensureStopped;
- (void)_fastScanStart:(id)a3;
- (void)_fastScanStop:(const char *)a3 reset:(BOOL)a4;
- (void)_invalidate;
- (void)_powerSourceContainerUpdate:(id)a3 device:(id)a4 batteryInfo:(id)a5;
- (void)_powerSourceEnsureStopped;
- (void)_powerSourcesUpdateForDevice:(id)a3 changes:(unsigned int)a4;
- (void)_removeB389sFromTriggeredDevices;
- (void)_resetTriggers;
- (void)_screenStateChanged;
- (void)_uiLockStatusChanged;
- (void)_update;
- (void)activate;
- (void)bluetoothUserInteractionStart:(id)a3;
- (void)bluetoothUserInteractionStop:(id)a3;
- (void)dealloc;
- (void)ensureTimerStartedForBufferedDevicesPurge;
- (void)invalidate;
- (void)notifyForNonGenuineDevice:(id)a3;
- (void)prefsChanged;
- (void)promptForAdaptiveControlsProxForDevice:(id)a3;
- (void)promptForEndCallProxForDevice:(id)a3;
- (void)promptForHeadphoneProxFeature:(id)a3 forDevice:(id)a4;
- (void)promptForMuteCallProxForDevice:(id)a3;
- (void)promptForSiriNotificationsForDevice:(id)a3;
- (void)promptForSpatialAudioProfileForDevice:(id)a3;
- (void)promptForWhatsNewProxForDevice:(id)a3;
- (void)proximityDeviceDidTrigger:(id)a3;
- (void)readyToShowWithDevice:(id)a3 features:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)removeOldBufferedSamplesFromCache;
- (void)retriggerProximityPairing:(id)a3;
- (void)startSoftwareUpdateRequiredUI;
- (void)testPairingUI:(id)a3;
- (void)testStatusUI:(id)a3;
@end

@implementation SDProximityPairingAgent

- (void)_uiLockStatusChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017880;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_enabled && (!self->_phoneOnly || SFIsDevicePhone()))
  {

    [(SDProximityPairingAgent *)self _ensureStarted];
  }

  else
  {

    [(SDProximityPairingAgent *)self _ensureStopped];
  }
}

- (void)_ensureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_statusMonitor)
  {
    v3 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_screenStateChanged" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
  }

  if (!self->_systemMonitor)
  {
    v6 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v6;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100124358;
    v30[3] = &unk_1008CDEA0;
    v30[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setManateeChangedHandler:v30];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100124360;
    v29[3] = &unk_1008CDEA0;
    v29[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v29];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100015A84;
    v28[3] = &unk_1008CDEA0;
    v28[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setSystemLockStateChangedHandler:v28];
    v8 = self->_systemMonitor;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100124368;
    v27[3] = &unk_1008CDEA0;
    v27[4] = self;
    [(CUSystemMonitor *)v8 activateWithCompletion:v27];
  }

  if (self->_forceFastScan || self->_scanAlways || [(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    if (!self->_proximityController)
    {
      v9 = +[SDProximityController sharedController];
      proximityController = self->_proximityController;
      self->_proximityController = v9;
    }

    if (!self->_deviceDiscovery)
    {
      if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10002AAD8();
      }

      v11 = objc_alloc_init(SFDeviceDiscovery);
      deviceDiscovery = self->_deviceDiscovery;
      self->_deviceDiscovery = v11;

      [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:13];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:2];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setOverrideScreenOff:self->_forceFastScan];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setPurpose:@"PPA"];
      if (self->_forceFastScan)
      {
        v13 = -80;
      }

      else
      {
        v13 = -60;
      }

      [(SFDeviceDiscovery *)self->_deviceDiscovery setRssiThreshold:v13];
      if (self->_fastScanAlways)
      {
        v14 = 50;
      }

      else if (self->_forceFastScan)
      {
        v14 = 50;
      }

      else
      {
        v14 = 20;
      }

      [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:v14];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000338F4;
      v26[3] = &unk_1008CE7A0;
      v26[4] = self;
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v26];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100031364;
      v25[3] = &unk_1008CE7A0;
      v25[4] = self;
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v25];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10002FE34;
      v24[3] = &unk_1008CE7C8;
      v24[4] = self;
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v24];
      [(SFDeviceDiscovery *)self->_deviceDiscovery activateWithCompletion:&stru_1008D10B0];
    }

    proximityPairingBufferedScanner = self->_proximityPairingBufferedScanner;
    if (proximityPairingBufferedScanner)
    {
      [(SDProximityPairingBufferedScanner *)proximityPairingBufferedScanner ensureStarted];
    }

    v16 = 1;
LABEL_26:
    self->_started = v16;
    return;
  }

  v17 = self->_proximityPairingBufferedScanner;
  if (v17)
  {
    [(SDProximityPairingBufferedScanner *)v17 turnOffScreenOffScanningIfNoAirPodsOntheAccount];
    [(NSMutableDictionary *)self->_bufferedDevices removeAllObjects];
    bufferedDevices = self->_bufferedDevices;
    self->_bufferedDevices = 0;
  }

  if (self->_deviceDiscovery)
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DF2C();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
    v19 = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;

    [(NSMutableDictionary *)self->_devices removeAllObjects];
    [(SDProximityPairingAgent *)self _resetTriggers];
    [(SDProximityPairingAgent *)self _powerSourceEnsureStopped];
    [(SDProximityPairingAgent *)self _fastScanStop:"screenOff" reset:0];
    pairingAlertHandle = self->_pairingAlertHandle;
    if (pairingAlertHandle)
    {
      [(SBSRemoteAlertHandle *)pairingAlertHandle removeObserver:self];
      [(SBSRemoteAlertHandle *)self->_pairingAlertHandle invalidate];
      v21 = self->_pairingAlertHandle;
      self->_pairingAlertHandle = 0;
    }

    statusAlertHandle = self->_statusAlertHandle;
    if (statusAlertHandle)
    {
      [(SBSRemoteAlertHandle *)statusAlertHandle removeObserver:self];
      [(SBSRemoteAlertHandle *)self->_statusAlertHandle invalidate];
      v23 = self->_statusAlertHandle;
      self->_statusAlertHandle = 0;
    }

    v16 = 0;
    goto LABEL_26;
  }
}

- (NSString)description
{
  v99 = 0;
  NSAppendPrintF();
  v3 = 0;
  v98 = v3;
  if (self->_enabled)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v5 = "";
  if (self->_scanAlways)
  {
    v5 = " (always)";
  }

  v74 = v5;
  obj = v4;
  if (self->_autoPairEnabled)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if (self->_autoStatusEnabled)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  if (self->_autoStatusUnpaired)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  autoPairRSSI = self->_autoPairRSSI;
  autoStatusRSSI = self->_autoStatusRSSI;
  exitRSSI = self->_exitRSSI;
  v12 = [(SDStatusMonitor *)self->_statusMonitor systemUIFlags];
  v13 = 111;
  if (self->_fastScanStatusOthers)
  {
    v13 = 79;
  }

  v14 = 109;
  if (self->_fastScanStatusMine)
  {
    v14 = 77;
  }

  v70 = v14;
  v71 = v13;
  v15 = 115;
  if (self->_fastScanPair)
  {
    v15 = 80;
  }

  v16 = 97;
  if (self->_fastScanAlways)
  {
    v16 = 65;
  }

  v68 = v16;
  v69 = v15;
  v17 = 89;
  if (!self->_fastScanTimer)
  {
    v17 = 110;
  }

  v66 = v12;
  v67 = v17;
  v56 = obj;
  v61 = v74;
  NSAppendPrintF();
  obja = v98;

  v97 = obja;
  if (self->_pairingAlertHandle)
  {
    v18 = "yes";
  }

  else
  {
    v18 = "no";
  }

  if (self->_statusAlertHandle)
  {
    v19 = "yes";
  }

  else
  {
    v19 = "no";
  }

  v73 = v19;
  v75 = v18;
  v72 = [(NSMutableSet *)self->_bluetoothUserInteractionClients count:v56];
  v20 = +[SDNearbyAgent sharedNearbyAgent];
  v21 = [v20 bleProximityRSSIThreshold:@"ppEn"];
  v22 = +[SDNearbyAgent sharedNearbyAgent];
  v23 = [v22 bleProximityRSSIThreshold:@"ppEx"];
  v24 = +[SDNearbyAgent sharedNearbyAgent];
  v25 = [v24 bleProximityRSSIThreshold:@"ppRp"];
  v26 = +[SDNearbyAgent sharedNearbyAgent];
  v27 = [v26 bleProximityRSSIThreshold:@"psEn"];
  v28 = +[SDNearbyAgent sharedNearbyAgent];
  v64 = v27;
  v65 = [v28 bleProximityRSSIThreshold:@"psEx"];
  NSAppendPrintF();
  v29 = v97;

  v96 = v29;
  if (self->_deviceDiscovery)
  {
    deviceDiscovery = self->_deviceDiscovery;
  }

  else
  {
    deviceDiscovery = @"off";
  }

  v62 = [(NSMutableDictionary *)self->_devices count:v75];
  v63 = [(NSMutableDictionary *)self->_triggeredDevices count];
  NSAppendPrintF();
  v31 = v96;

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  objb = self->_devices;
  v32 = [(NSMutableDictionary *)objb countByEnumeratingWithState:&v92 objects:v102 count:16, deviceDiscovery, v62, v63];
  if (v32)
  {
    v33 = v32;
    v34 = *v93;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v93 != v34)
        {
          objc_enumerationMutation(objb);
        }

        v36 = *(*(&v92 + 1) + 8 * i);
        v91 = v31;
        v58 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v36];
        NSAppendPrintF();
        v37 = v31;

        v38 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:v36, v58];

        if (v38)
        {
          v90 = v37;
          NSAppendPrintF();
          v39 = v37;

          v37 = v39;
        }

        v89 = v37;
        NSAppendPrintF();
        v31 = v37;
      }

      v33 = [(NSMutableDictionary *)objb countByEnumeratingWithState:&v92 objects:v102 count:16];
    }

    while (v33);
  }

  v88 = 0u;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  v40 = self->_triggeredDevices;
  v41 = [(NSMutableDictionary *)v40 countByEnumeratingWithState:&v85 objects:v101 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v86;
    do
    {
      for (j = 0; j != v42; j = j + 1)
      {
        if (*v86 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v85 + 1) + 8 * j);
        v46 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v45, v57];

        if (!v46)
        {
          v84 = v31;
          v57 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:v45];
          NSAppendPrintF();
          v47 = v31;

          v31 = v47;
        }
      }

      v42 = [(NSMutableDictionary *)v40 countByEnumeratingWithState:&v85 objects:v101 count:16];
    }

    while (v42);
  }

  v83 = v31;
  v59 = [(NSMutableSet *)self->_powerSourceContainers count];
  NSAppendPrintF();
  v48 = v31;

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v49 = self->_powerSourceContainers;
  v50 = [(NSMutableSet *)v49 countByEnumeratingWithState:&v79 objects:v100 count:16, v59];
  if (v50)
  {
    v51 = v50;
    v52 = *v80;
    do
    {
      v53 = 0;
      v54 = v48;
      do
      {
        if (*v80 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v60 = *(*(&v79 + 1) + 8 * v53);
        NSAppendPrintF();
        v48 = v54;

        v53 = v53 + 1;
        v54 = v48;
      }

      while (v51 != v53);
      v51 = [(NSMutableSet *)v49 countByEnumeratingWithState:&v79 objects:v100 count:16, v60];
    }

    while (v51);
  }

  return v48;
}

- (void)_screenStateChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A874;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

+ (SDProximityPairingAgent)sharedProximityPairingAgent
{
  if (qword_100989E58 != -1)
  {
    sub_10012DA60();
  }

  v3 = qword_100989E60;

  return v3;
}

- (SDProximityPairingAgent)init
{
  v8.receiver = self;
  v8.super_class = SDProximityPairingAgent;
  v2 = [(SDProximityPairingAgent *)&v8 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    [(SDProximityPairingAgent *)v2 setBufferedDevicesPurgeBlock:0];
    v5 = objc_alloc_init(_TtC16DaemoniOSLibrary26HeadphoneProxFeatureClient);
    headphoneProxFeatureClient = v2->_headphoneProxFeatureClient;
    v2->_headphoneProxFeatureClient = v5;

    [(HeadphoneProxFeatureClient *)v2->_headphoneProxFeatureClient setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  if (self->_deviceDiscovery)
  {
    v5 = sub_1000A47EC();
    [(SDProximityPairingAgent *)v5 activate];
  }

  else
  {
    v3 = [(SDProximityPairingAgent *)self bufferedDevicesPurgeBlock];

    if (v3)
    {
      v4 = [(SDProximityPairingAgent *)self bufferedDevicesPurgeBlock];
      dispatch_block_cancel(v4);

      [(SDProximityPairingAgent *)self setBufferedDevicesPurgeBlock:0];
    }

    v7.receiver = self;
    v7.super_class = SDProximityPairingAgent;
    [(SDProximityPairingAgent *)&v7 dealloc];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100123734;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012DA74();
  }

  [(SDProximityPairingAgent *)self prefsChanged];
  if (self->_enabled && !self->_proximityPairingBufferedScanner)
  {
    v3 = [[SDProximityPairingBufferedScanner alloc] initWithQueue:self->_dispatchQueue];
    proximityPairingBufferedScanner = self->_proximityPairingBufferedScanner;
    self->_proximityPairingBufferedScanner = v3;

    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_10012387C;
    v8 = &unk_1008D1090;
    objc_copyWeak(&v9, &location);
    [(SDProximityPairingBufferedScanner *)self->_proximityPairingBufferedScanner setBufferedDeviceFoundHandler:&v5];
    [(SDProximityPairingBufferedScanner *)self->_proximityPairingBufferedScanner ensureStarted:v5];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012394C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012DA90();
  }

  [(SDProximityPairingAgent *)self _ensureStopped];
  v3 = [(SDProximityPairingAgent *)self bufferedDevicesPurgeBlock];

  if (v3)
  {
    v4 = [(SDProximityPairingAgent *)self bufferedDevicesPurgeBlock];
    dispatch_block_cancel(v4);

    [(SDProximityPairingAgent *)self setBufferedDevicesPurgeBlock:0];
  }
}

- (void)_accountSettingsChanged
{
  if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012DAAC();
  }

  [(SDProximityPairingAgent *)self _resetTriggers];
}

- (void)bluetoothUserInteractionStart:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100123B0C;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)bluetoothUserInteractionStop:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100123C38;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_autoPairEnabled != v3)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DB60();
    }

    self->_autoPairEnabled = v3;
  }

  Int64 = CFPrefs_GetInt64();
  if ((Int64 - 1000) >= 0xFFFFFFFFFFFFF831)
  {
    v5 = Int64;
  }

  else
  {
    v5 = 0;
  }

  autoPairRSSI = self->_autoPairRSSI;
  if (v5 != autoPairRSSI)
  {
    if (dword_100970E30 <= 40)
    {
      if (dword_100970E30 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        autoPairRSSI = self->_autoPairRSSI;
      }

      v22 = autoPairRSSI;
      v23 = v5;
      LogPrintF();
    }

LABEL_14:
    self->_autoPairRSSI = v5;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_autoStatusEnabled != v7)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DBB8();
    }

    self->_autoStatusEnabled = v7;
  }

  v8 = CFPrefs_GetInt64() != 0;
  if (self->_autoStatusUnpaired != v8)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DC10();
    }

    self->_autoStatusUnpaired = v8;
  }

  v9 = CFPrefs_GetInt64();
  if ((v9 - 1000) >= 0xFFFFFFFFFFFFF831)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  autoStatusRSSI = self->_autoStatusRSSI;
  if (v10 != autoStatusRSSI)
  {
    if (dword_100970E30 <= 40)
    {
      if (dword_100970E30 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_33;
        }

        autoStatusRSSI = self->_autoStatusRSSI;
      }

      v22 = autoStatusRSSI;
      v23 = v10;
      LogPrintF();
    }

LABEL_33:
    self->_autoStatusRSSI = v10;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_enabled != v12)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DC68();
    }

    self->_enabled = v12;
  }

  v13 = CFPrefs_GetInt64();
  if ((v13 - 1000) >= 0xFFFFFFFFFFFFF831)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  exitRSSI = self->_exitRSSI;
  if (v14 != exitRSSI)
  {
    if (dword_100970E30 <= 40)
    {
      if (dword_100970E30 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_47;
        }

        exitRSSI = self->_exitRSSI;
      }

      v22 = exitRSSI;
      v23 = v14;
      LogPrintF();
    }

LABEL_47:
    self->_exitRSSI = v14;
  }

  v16 = CFPrefs_GetInt64() != 0;
  if (self->_fastScanAlways != v16)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DCC0();
    }

    self->_fastScanAlways = v16;
  }

  v17 = CFPrefs_GetInt64() != 0;
  if (self->_fastScanPair != v17)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DD18();
    }

    self->_fastScanPair = v17;
  }

  v18 = CFPrefs_GetInt64() != 0;
  if (self->_fastScanStatusMine != v18)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DD70();
    }

    self->_fastScanStatusMine = v18;
  }

  v19 = CFPrefs_GetInt64() != 0;
  if (self->_fastScanStatusOthers != v19)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DDC8();
    }

    self->_fastScanStatusOthers = v19;
  }

  v20 = CFPrefs_GetInt64() != 0;
  if (self->_phoneOnly != v20)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DE20();
    }

    self->_phoneOnly = v20;
  }

  v21 = CFPrefs_GetInt64() != 0;
  if (self->_scanAlways != v21)
  {
    if (dword_100970E30 <= 40 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DE78();
    }

    self->_scanAlways = v21;
  }

  [(SDProximityPairingAgent *)self _update:v22];
}

- (BOOL)reenableProxCardType:(unsigned __int8)a3
{
  if (a3 == 102)
  {
    self->_triggeredB389Setup = 0;
  }

  else
  {
    if (a3 != 101)
    {
      return 0;
    }

    [(SDProximityPairingAgent *)self _removeB389sFromTriggeredDevices];
  }

  if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012DED0();
  }

  return 1;
}

- (void)_ensureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  statusMonitor = self->_statusMonitor;
  self->_statusMonitor = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"com.apple.sharingd.ScreenStateChanged" object:0];

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  if (self->_deviceDiscovery)
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012DFA0();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;

  [(SDProximityPairingAgent *)self _resetTriggers];
  [(SDProximityPairingAgent *)self _powerSourceEnsureStopped];
  pairingAlertHandle = self->_pairingAlertHandle;
  if (pairingAlertHandle)
  {
    [(SBSRemoteAlertHandle *)pairingAlertHandle removeObserver:self];
    [(SBSRemoteAlertHandle *)self->_pairingAlertHandle invalidate];
    v9 = self->_pairingAlertHandle;
    self->_pairingAlertHandle = 0;
  }

  statusAlertHandle = self->_statusAlertHandle;
  if (statusAlertHandle)
  {
    [(SBSRemoteAlertHandle *)statusAlertHandle removeObserver:self];
    [(SBSRemoteAlertHandle *)self->_statusAlertHandle invalidate];
    v11 = self->_statusAlertHandle;
    self->_statusAlertHandle = 0;
  }

  [(SDProximityPairingAgent *)self _fastScanStop:"stop" reset:0];
  [(SDProximityController *)self->_proximityController clearDeviceList];
  proximityPairingBufferedScanner = self->_proximityPairingBufferedScanner;
  if (proximityPairingBufferedScanner)
  {
    [(SDProximityPairingBufferedScanner *)proximityPairingBufferedScanner invalidate];
    v13 = self->_proximityPairingBufferedScanner;
    self->_proximityPairingBufferedScanner = 0;
  }

  self->_started = 0;
}

- (void)_bufferedBleDeviceFound:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(SFDevice);
  [v9 updateWithBLEDevice:v4];
  v5 = [v4 identifier];

  if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012DFBC(v9);
  }

  bufferedDevices = self->_bufferedDevices;
  if (!bufferedDevices)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = self->_bufferedDevices;
    self->_bufferedDevices = v7;

    bufferedDevices = self->_bufferedDevices;
  }

  [(NSMutableDictionary *)bufferedDevices setObject:v9 forKeyedSubscript:v5];
  if (self->_started)
  {
    [(SDProximityPairingAgent *)self _deviceFound:v9 andIsABufferedDevice:1];
    [(SDProximityPairingAgent *)self ensureTimerStartedForBufferedDevicesPurge];
  }
}

- (void)_deviceChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 bleDevice];
  v7 = [v6 counterpartIdentifier];
  v8 = [v6 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!v5 || !self->_deviceDiscovery)
  {
    goto LABEL_152;
  }

  [(NSMutableDictionary *)self->_devices setObject:v4 forKeyedSubscript:v5];
  v10 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:v5];
  if (!v10 && v7)
  {
    v10 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:v7];
  }

  if (v10)
  {
    if (CFDictionaryGetInt64())
    {
      if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10012E018();
      }

      [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:v5];
      if (v7)
      {
        [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:v7];
      }
    }

    else
    {
      v72 = v7;
      v74 = v5;
      v12 = [v10 bleDevice];
      v13 = [v12 advertisementFields];

      LODWORD(v76) = 0;
      v14 = CFDictionaryGetInt64Ranged();
      v15 = CFDictionaryGetInt64Ranged();
      v16 = CFDictionaryGetInt64Ranged();
      v17 = v8;
      v18 = CFDictionaryGetInt64Ranged();
      v19 = v18;
      if (v18 != v16 || v15 != v14)
      {
        if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          v70 = v19;
          v71 = v6;
          v69 = v16;
          LogPrintF();
        }

        [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:v74, v69, v70, v71];
        v7 = v72;
        if (v72)
        {
          [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:v72];
        }
      }

      else
      {
        v27 = v18 == v16;
        v7 = v72;
        if (!v27 || v15 != v14)
        {
          [(NSMutableDictionary *)self->_triggeredDevices setObject:v4 forKeyedSubscript:v74];
        }
      }

      v8 = v17;
      v5 = v74;
    }

    goto LABEL_153;
  }

  if (![(SDProximityPairingAgent *)self _systemCanShowUIWithCounterpart:v7])
  {
    goto LABEL_152;
  }

  v11 = CFDictionaryGetInt64Ranged();
  if (Int64Ranged != 9 && Int64Ranged != 5)
  {
    v20 = v11;
    if (self->_autoPairEnabled && [v4 needsSetup])
    {
      if ((v20 & 0x24) != 0 || CFDictionaryGetInt64())
      {
        goto LABEL_152;
      }

      v21 = v5;
      autoPairRSSI = self->_autoPairRSSI;
      if (!autoPairRSSI)
      {
        v23 = +[SDNearbyAgent sharedNearbyAgent];
        autoPairRSSI = [v23 bleProximityRSSIThresholdForType:1 device:v4];
      }

      v24 = v8;
      if ((autoPairRSSI & 0x8000000000000000) == 0)
      {
LABEL_122:
        v10 = 0;
LABEL_123:
        v8 = v24;
LABEL_124:
        v5 = v21;
LABEL_153:
        [(SDProximityPairingAgent *)self _update];

        goto LABEL_154;
      }

      v25 = [v6 rssiFloor];
      [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v4];
      v26 = [(SDProximityController *)self->_proximityController checkDeviceRegion:v4];
      if (_os_feature_enabled_impl())
      {
        if (v26 == 2)
        {
          if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
          {
LABEL_169:
            sub_10012E058();
          }

LABEL_71:
          v35 = +[SDStatusMonitor sharedMonitor];
          v36 = [v35 deviceKeyBagLocked];

          if (v36)
          {
            v37 = CACurrentMediaTime();
            BKSHIDServicesLastUserEventTime();
            if (v37 - v38 > 30.0)
            {
              if (dword_100970E30 <= 30)
              {
                v8 = v24;
                if (dword_100970E30 != -1 || _LogCategory_Initialize())
                {
                  sub_10012E1C4();
                }

                goto LABEL_142;
              }

              goto LABEL_122;
            }

            if (![(SDProximityPairingAgent *)self _supportedDevice:v4])
            {
              if (dword_100970E30 <= 30)
              {
                v8 = v24;
                if (dword_100970E30 != -1 || _LogCategory_Initialize())
                {
                  sub_10012E1A8();
                }

                goto LABEL_142;
              }

              goto LABEL_122;
            }
          }

          if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
          {
            v70 = v4;
            v71 = v6;
            v69 = autoPairRSSI;
            LogPrintF();
          }

          [(SDProximityPairingAgent *)self _fastScanStop:"trigger pair" reset:1, v69, v70, v71];
          triggeredDevices = self->_triggeredDevices;
          v8 = v24;
          if (!triggeredDevices)
          {
            v54 = objc_alloc_init(NSMutableDictionary);
            v55 = self->_triggeredDevices;
            self->_triggeredDevices = v54;

            triggeredDevices = self->_triggeredDevices;
          }

          v5 = v21;
          [(NSMutableDictionary *)triggeredDevices setObject:v4 forKeyedSubscript:v21];
          v56 = self;
          v57 = v4;
          v58 = 0;
LABEL_151:
          [(SDProximityPairingAgent *)v56 _startPairingUI:v57 autoStart:0 repair:v58];
          goto LABEL_152;
        }
      }

      else if ((v25 & 0x8000000000000000) != 0 && autoPairRSSI <= v25)
      {
        if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_169;
        }

        goto LABEL_71;
      }

LABEL_120:
      if (self->_fastScanPair)
      {
        [(SDProximityPairingAgent *)self _fastScanStart:v4];
      }

      goto LABEL_122;
    }

    if (!self->_autoStatusEnabled || ([v4 needsSetup] & 1) != 0 || !self->_autoStatusUnpaired && !objc_msgSend(v4, "paired"))
    {
      goto LABEL_152;
    }

    v75 = v8;
    if ((v20 & 0x400) == 0)
    {
      v28 = [v4 model];
      v29 = sub_100033900(v28);

      if (!v29)
      {
        goto LABEL_130;
      }
    }

    autoStatusRSSI = self->_autoStatusRSSI;
    if (!autoStatusRSSI)
    {
      v31 = +[SDNearbyAgent sharedNearbyAgent];
      autoStatusRSSI = [v31 bleProximityRSSIThresholdForType:4 device:v4];
    }

    v73 = v7;
    if ((autoStatusRSSI & 0x8000000000000000) != 0)
    {
      v32 = [v6 rssiFloor];
      v33 = [v4 bleDevice];
      v34 = [v33 triggered];

      if ((v34 & 1) == 0)
      {
        if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          sub_10012E114(v4);
        }

        [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v4];
      }

      if (_os_feature_enabled_impl())
      {
        v7 = v73;
        if ([(SDProximityController *)self->_proximityController checkDeviceRegion:v4]!= 2)
        {
          if (self->_fastScanPair)
          {
            [(SDProximityPairingAgent *)self _fastScanStart:v4];
          }

          goto LABEL_130;
        }

        if (dword_100970E30 > 50 || dword_100970E30 == -1 && !_LogCategory_Initialize())
        {
LABEL_90:
          if (Int64Ranged == 4 || (v20 & 0x400) != 0 || ([v4 model], v42 = objc_claimAutoreleasedReturnValue(), v43 = sub_10012545C(v42), v42, (v43 & 1) != 0) || (v20 & 0x212) == 0x12)
          {
            if (!CFDictionaryGetInt64())
            {
              v44 = +[SDStatusMonitor sharedMonitor];
              v45 = [v44 deviceKeyBagLocked];

              if (v45)
              {
                v46 = CACurrentMediaTime();
                BKSHIDServicesLastUserEventTime();
                if (v46 - v47 > 30.0)
                {
                  if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
                  {
                    sub_10012E18C();
                  }

                  goto LABEL_130;
                }
              }

              v48 = CFDictionaryGetInt64Ranged();
              v49 = [(CUSystemMonitor *)self->_systemMonitor screenLocked];
              v50 = v49;
              if (Int64Ranged == 4 && (v49 & 1) == 0)
              {
                if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
                {
                  v70 = v4;
                  v71 = v6;
                  v69 = autoStatusRSSI;
                  LogPrintF();
                }

                [(SDProximityPairingAgent *)self _fastScanStop:"trigger mismatch" reset:1, v69, v70, v71];
                v59 = self->_triggeredDevices;
                v8 = v75;
                if (v59)
                {
                  goto LABEL_164;
                }

                goto LABEL_163;
              }

              if (v48 && ([v4 deviceFlags] & 0x1000) != 0)
              {
                if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
                {
                  v70 = v4;
                  v71 = v6;
                  v69 = autoStatusRSSI;
                  LogPrintF();
                }

                [(SDProximityPairingAgent *)self _fastScanStop:"trigger disconnect" reset:1, v69, v70, v71];
                v66 = self->_triggeredDevices;
                v8 = v75;
                if (v66)
                {
                  goto LABEL_174;
                }
              }

              else
              {
                if (([v4 paired] | v50))
                {
                  v8 = v75;
                  if (![v4 paired] || !-[SDProximityPairingAgent _shouldShowBatteryCard:inDevice:](self, "_shouldShowBatteryCard:inDevice:", v6, v4))
                  {
                    goto LABEL_152;
                  }

                  if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
                  {
                    v70 = v4;
                    v71 = v6;
                    v69 = autoStatusRSSI;
                    LogPrintF();
                  }

                  [(SDProximityPairingAgent *)self _fastScanStop:"trigger status" reset:1, v69, v70, v71];
                  v59 = self->_triggeredDevices;
                  if (v59)
                  {
                    goto LABEL_164;
                  }

LABEL_163:
                  v60 = objc_alloc_init(NSMutableDictionary);
                  v61 = self->_triggeredDevices;
                  self->_triggeredDevices = v60;

                  v59 = self->_triggeredDevices;
LABEL_164:
                  [(NSMutableDictionary *)v59 setObject:v4 forKeyedSubscript:v5];
                  [(SDProximityPairingAgent *)self _startStatusUI:v4];
                  goto LABEL_152;
                }

                v8 = v75;
                if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
                {
                  v70 = v4;
                  v71 = v6;
                  v69 = autoStatusRSSI;
                  LogPrintF();
                }

                [(SDProximityPairingAgent *)self _fastScanStop:"trigger repair" reset:1, v69, v70, v71];
                v66 = self->_triggeredDevices;
                if (v66)
                {
LABEL_174:
                  [(NSMutableDictionary *)v66 setObject:v4 forKeyedSubscript:v5];
                  v56 = self;
                  v57 = v4;
                  v58 = 1;
                  goto LABEL_151;
                }
              }

              v67 = objc_alloc_init(NSMutableDictionary);
              v68 = self->_triggeredDevices;
              self->_triggeredDevices = v67;

              v66 = self->_triggeredDevices;
              goto LABEL_174;
            }
          }

LABEL_130:
          v10 = 0;
          v8 = v75;
          goto LABEL_153;
        }

LABEL_178:
        sub_10012E058();
        goto LABEL_90;
      }

      if ((v32 & 0x8000000000000000) != 0 && autoStatusRSSI <= v32)
      {
        v7 = v73;
        if (dword_100970E30 > 50 || dword_100970E30 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_90;
        }

        goto LABEL_178;
      }

      if (self->_fastScanPair)
      {
        [(SDProximityPairingAgent *)self _fastScanStart:v4];
      }
    }

    v10 = 0;
    v7 = v73;
    v8 = v75;
    goto LABEL_153;
  }

  if (!_os_feature_enabled_impl())
  {
    if (sub_10012E1E0(self, v4, &v76))
    {
      goto LABEL_152;
    }

    v21 = v5;
    v24 = v8;
    v39 = v76;
    v40 = [v6 rssiFloor];
    [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v4 forType:4];
    v41 = [(SDProximityController *)self->_proximityController checkDeviceRegion:v4];
    if (_os_feature_enabled_impl())
    {
      if (v41 == 2)
      {
        if (dword_100970E30 > 50 || dword_100970E30 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_115;
        }

        goto LABEL_180;
      }
    }

    else if ((v40 & 0x8000000000000000) != 0 && v39 <= v40)
    {
      if (dword_100970E30 > 50 || dword_100970E30 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_115;
      }

LABEL_180:
      sub_10012E058();
LABEL_115:
      v51 = +[SDStatusMonitor sharedMonitor];
      v52 = [v51 deviceKeyBagLocked];

      if (v52)
      {
        if (dword_100970E30 <= 30)
        {
          v8 = v24;
          if (dword_100970E30 != -1 || _LogCategory_Initialize())
          {
            sub_10012E0DC();
          }

LABEL_142:
          v10 = 0;
          goto LABEL_124;
        }

        goto LABEL_122;
      }

      if (self->_triggeredB389Setup)
      {
        sub_10012E070(dword_100970E30, &v76);
        v10 = v76;
        goto LABEL_123;
      }

      v8 = v24;
      if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        v69 = v39;
        v70 = v6;
        LogPrintF();
      }

      v62 = self->_triggeredDevices;
      v5 = v21;
      if (!v62)
      {
        v63 = objc_alloc_init(NSMutableDictionary);
        v64 = self->_triggeredDevices;
        self->_triggeredDevices = v63;

        v62 = self->_triggeredDevices;
      }

      [(NSMutableDictionary *)v62 setObject:v4 forKeyedSubscript:v21, v69, v70];
      self->_triggeredB389Setup = 1;
      v65 = +[_TtC16DaemoniOSLibrary16SDB389SetupAgent shared];
      [v65 advertisingB389Found:v4];

LABEL_152:
      v10 = 0;
      goto LABEL_153;
    }

    goto LABEL_120;
  }

  if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012E0F8();
  }

LABEL_154:
}

- (BOOL)_shouldShowBatteryCard:(id)a3 inDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [SFHeadphoneProduct alloc];
  v8 = [v6 model];

  v9 = [v7 initWithBluetoothModel:v8];
  v10 = [v9 ignoresBatteryStatusIfCounterfeit];
  v11 = [v5 bluetoothAddress];
  v12 = CUPrintNSDataAddress();
  v13 = [v12 uppercaseString];

  if (v13)
  {
    v14 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Sharing"];
    v15 = [v14 objectForKey:v13];

    if (!v15)
    {
      v20 = 1;
      goto LABEL_8;
    }

    v16 = [v14 dictionaryForKey:v13];
    v17 = [v16 valueForKey:@"genuineness"];
    v18 = [NSNumber numberWithInt:0];
    v19 = [v17 isEqualToNumber:v18];

    if ((v19 & 1) == 0)
    {
      v22 = [v16 valueForKey:@"genuineness"];
      v23 = [NSNumber numberWithInt:2];
      v24 = [v22 isEqualToNumber:v23];

      if (v24)
      {
        v20 = v10 ^ 1;
        if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_5;
      }

      v25 = [v16 valueForKey:@"needsUpsell"];
      v26 = [NSNumber numberWithInt:0];
      v27 = [v25 isEqualToNumber:v26];

      if (v27)
      {
        if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          sub_10012E288();
        }
      }

      else
      {
        v28 = [v16 valueForKey:@"needsUpsell"];
        v29 = [NSNumber numberWithInt:1];
        if ([v28 isEqualToNumber:v29])
        {
          v30 = [v16 valueForKey:@"genuineness"];
          v31 = [NSNumber numberWithInt:2];
          v32 = [v30 isEqualToNumber:v31];

          if (v32)
          {
            v20 = 0;
            goto LABEL_5;
          }
        }

        else
        {
        }

        if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          sub_10012E248();
        }
      }
    }

    v20 = 1;
LABEL_5:

LABEL_8:
    goto LABEL_9;
  }

  v20 = 1;
LABEL_9:

  return v20;
}

- (void)_fastScanStop:(const char *)a3 reset:(BOOL)a4
{
  if (self->_fastScanTimer)
  {
    v18[0] = @"scanRate";
    v6 = [(SFDeviceDiscovery *)self->_deviceDiscovery scanRate];
    if (v6 > 9)
    {
      if (v6 <= 29)
      {
        if (v6 == 10)
        {
          v7 = "Background";
          goto LABEL_28;
        }

        if (v6 == 20)
        {
          v7 = "Normal";
          goto LABEL_28;
        }
      }

      else
      {
        switch(v6)
        {
          case 30:
            v7 = "HighNormal";
            goto LABEL_28;
          case 40:
            v7 = "High";
            goto LABEL_28;
          case 50:
            v7 = "Aggressive";
            goto LABEL_28;
        }
      }
    }

    else if (v6 <= 1)
    {
      if (!v6)
      {
        v7 = "Invalid";
        goto LABEL_28;
      }

      if (v6 == 1)
      {
        v7 = "BackgroundOld";
        goto LABEL_28;
      }
    }

    else
    {
      switch(v6)
      {
        case 2:
          v7 = "NormalOld";
          goto LABEL_28;
        case 3:
          v7 = "HighOld";
          goto LABEL_28;
        case 4:
          v7 = "AggressiveOld";
          goto LABEL_28;
      }
    }

    v7 = "?";
LABEL_28:
    v8 = [NSString stringWithUTF8String:v7];
    v9 = v8;
    v10 = @"?";
    if (v8)
    {
      v10 = v8;
    }

    v18[1] = @"state";
    v19[0] = v10;
    v19[1] = @"Stop";
    v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    SFPowerLogEvent();

    if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E2C8();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery setOverrideScreenOff:self->_forceFastScan];
    if (self->_forceFastScan)
    {
      v12 = -80;
    }

    else
    {
      v12 = -60;
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery setRssiThreshold:v12];
    if (self->_forceFastScan)
    {
      v13 = 50;
    }

    else
    {
      v13 = 20;
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:v13];
    fastScanTimer = self->_fastScanTimer;
    if (fastScanTimer)
    {
      v15 = fastScanTimer;
      dispatch_source_cancel(v15);
      v16 = self->_fastScanTimer;
      self->_fastScanTimer = 0;
    }

    if (!a4)
    {
      v17 = mach_absolute_time();
      goto LABEL_44;
    }

LABEL_42:
    v17 = 0;
LABEL_44:
    self->_fastScanLastEndTicks = v17;
    return;
  }

  if (a4)
  {
    goto LABEL_42;
  }
}

- (void)_powerSourceEnsureStopped
{
  if ([(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(NSMutableSet *)self->_powerSourceContainers copy];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * i) invalidate];
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMutableSet *)self->_powerSourceContainers removeAllObjects];
    if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E308();
    }
  }
}

- (id)_createNewPowerSourceContainer
{
  v3 = [SDBLEPowerSourceContainer alloc];
  v4 = objc_alloc_init(SFPowerSource);
  v5 = [(SDBLEPowerSourceContainer *)v3 initWithPowerSource:v4];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100125D18;
  v10[3] = &unk_1008CE028;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [(SDBLEPowerSourceContainer *)v6 setInvalidationHandler:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)_powerSourcesUpdateForDevice:(id)a3 changes:(unsigned int)a4
{
  v4 = a4;
  v6 = a3;
  if (![v6 paired])
  {
    goto LABEL_80;
  }

  if (!self->_powerSourceContainers)
  {
    v7 = objc_alloc_init(NSMutableSet);
    powerSourceContainers = self->_powerSourceContainers;
    self->_powerSourceContainers = v7;
  }

  v56 = self;
  v9 = [v6 bleDevice];
  v57 = [v9 advertisementFields];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = [v6 batteryInfo];
  v11 = [v10 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (!v11)
  {
    v61 = 0;
    v62 = 0;
    v60 = 0;
    v13 = 0;
    goto LABEL_24;
  }

  v12 = v11;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v13 = 0;
  v14 = *v68;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v68 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v67 + 1) + 8 * i);
      v17 = [v16 batteryType];
      if (v17 > 2)
      {
        if (v17 == 3)
        {
          v18 = v61;
          v61 = v16;
        }

        else
        {
          if (v17 != 4)
          {
            continue;
          }

          v18 = v62;
          v62 = v16;
        }

        goto LABEL_18;
      }

      if (v17 == 1)
      {
        v18 = v60;
        v60 = v16;
LABEL_18:
        v19 = v13;
LABEL_19:
        v20 = v16;

        v13 = v19;
        continue;
      }

      v18 = v13;
      v19 = v16;
      if (v17 == 2)
      {
        goto LABEL_19;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v67 objects:v72 count:16];
  }

  while (v12);
LABEL_24:

  CFDataGetTypeID();
  v21 = CFDictionaryGetTypedValue();
  v22 = 0;
  if ([v21 length] == 6)
  {
    [v21 bytes];
    v22 = NSPrintF();
  }

  v23 = v56->_powerSourceContainers;
  v24 = [NSPredicate predicateWithFormat:@"powerSource.groupID == %@", v22];
  v25 = [(NSMutableSet *)v23 filteredSetUsingPredicate:v24];

  v26 = v4 & 9;
  v27 = v62;
  v55 = v25;
  if (v62)
  {
    if ([v25 count] >= 2 && dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E33C(v25);
    }

    v28 = [v25 anyObject];
    if (v28)
    {
      v29 = v28;
      if (!v26)
      {
        [v28 trigger];
LABEL_57:
        v45 = v61;
        v46 = v60;
        v27 = v62;
        goto LABEL_79;
      }
    }

    else
    {
      v29 = [(SDProximityPairingAgent *)v56 _createNewPowerSourceContainer];
    }

    v49 = [v29 powerSource];
    [v49 setLowWarnLevel:20.0];

    [(SDProximityPairingAgent *)v56 _powerSourceContainerUpdate:v29 device:v6 batteryInfo:v62];
    goto LABEL_57;
  }

  v51 = v26 != 0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v30 = v25;
  v31 = [v30 countByEnumeratingWithState:&v63 objects:v71 count:16];
  v53 = v6;
  if (!v31)
  {

    if (!v13)
    {
      v46 = v60;
      v45 = v61;
      v44 = v56;
      if (v61)
      {
        v29 = 0;
        v47 = 0;
        goto LABEL_69;
      }

      v47 = 0;
      v33 = 0;
      v29 = 0;
      if (!v60)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }

    v29 = 0;
    v33 = 0;
    v46 = v60;
    v45 = v61;
    v44 = v56;
LABEL_60:
    v47 = [(SDProximityPairingAgent *)v44 _createNewPowerSourceContainer];
    goto LABEL_61;
  }

  v32 = v31;
  v50 = v26;
  v52 = v22;
  v54 = v21;
  v58 = 0;
  v59 = 0;
  v33 = 0;
  v34 = *v64;
  v35 = v30;
  while (2)
  {
    v36 = 0;
    while (2)
    {
      if (*v64 != v34)
      {
        objc_enumerationMutation(v35);
      }

      v37 = *(*(&v63 + 1) + 8 * v36);
      v38 = [v37 powerSource];
      v39 = [v38 partID];

      if ([v39 isEqual:@"Case"])
      {
        v40 = v59;
        v59 = v37;
        goto LABEL_43;
      }

      if ([v39 isEqual:@"Left"])
      {
        v40 = v58;
        v58 = v37;
LABEL_43:
        v41 = v33;
LABEL_44:
        v42 = v37;

        v33 = v41;
      }

      else
      {
        v40 = v33;
        v41 = v37;
        if ([v39 isEqual:@"Right"])
        {
          goto LABEL_44;
        }
      }

      if (v32 != ++v36)
      {
        continue;
      }

      break;
    }

    v43 = [v35 countByEnumeratingWithState:&v63 objects:v71 count:16];
    v32 = v43;
    if (v43)
    {
      continue;
    }

    break;
  }

  v44 = v56;
  v45 = v61;
  if (!v13)
  {
    v29 = v59;
    v46 = v60;
    v27 = 0;
    v21 = v54;
    v22 = v52;
    v47 = v58;
    v48 = v51;
    if (!v61)
    {
      goto LABEL_71;
    }

    goto LABEL_64;
  }

  v29 = v59;
  v46 = v60;
  v27 = 0;
  v21 = v54;
  v22 = v52;
  v47 = v58;
  if (!v58)
  {
    goto LABEL_60;
  }

  if (!v50)
  {
    [v58 trigger];
    v48 = 0;
    if (!v61)
    {
      goto LABEL_71;
    }

LABEL_64:
    if (v33)
    {
      if (!v48)
      {
        [v33 trigger];
        v48 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

LABEL_69:
    v33 = [(SDProximityPairingAgent *)v44 _createNewPowerSourceContainer];
LABEL_70:
    [(SDProximityPairingAgent *)v44 _powerSourceContainerUpdate:v33 device:v53 batteryInfo:v45];
    v48 = 1;
    goto LABEL_71;
  }

LABEL_61:
  [(SDProximityPairingAgent *)v44 _powerSourceContainerUpdate:v47 device:v53 batteryInfo:v13];
  v48 = 1;
  if (v45)
  {
    goto LABEL_64;
  }

LABEL_71:
  if (!v46)
  {
    goto LABEL_78;
  }

  if (!v29)
  {
LABEL_76:
    kdebug_trace();
    v29 = [(SDProximityPairingAgent *)v44 _createNewPowerSourceContainer];
    goto LABEL_77;
  }

  if (!v48)
  {
    [v29 trigger];
    goto LABEL_78;
  }

LABEL_77:
  [(SDProximityPairingAgent *)v44 _powerSourceContainerUpdate:v29 device:v53 batteryInfo:v46];
LABEL_78:

  v6 = v53;
LABEL_79:

LABEL_80:
}

- (void)_powerSourceContainerUpdate:(id)a3 device:(id)a4 batteryInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 bleDevice];
  v12 = [v11 advertisementFields];

  v13 = [v8 powerSource];
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v53 = self;
  [(NSMutableSet *)self->_powerSourceContainers removeObject:v8];
  v14 = [v10 batteryType];
  if (v14 != 1)
  {
    [v13 setAccessoryCategory:@"Headphone"];
    goto LABEL_21;
  }

  [v13 setAccessoryCategory:@"Audio Battery Case"];
  if (CFDictionaryGetInt64Ranged() != 1)
  {
    [v13 setLEDs:&__NSArray0__struct];
    goto LABEL_21;
  }

  [v13 setAdapterSourceID:CFDictionaryGetInt64Ranged()];
  v15 = objc_alloc_init(SFPowerSourceLEDInfo);
  v16 = CFDictionaryGetInt64Ranged();
  if (v16)
  {
    v17 = 2 * (v16 == 1);
  }

  else
  {
    v17 = 1;
  }

  [v15 setLEDState:v17];
  v18 = CFDictionaryGetInt64Ranged();
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = v15;
      v20 = 2;
    }

    else if (v18 == 3)
    {
      v19 = v15;
      v20 = 3;
    }

    else
    {
      v19 = v15;
      if (v18 == 4)
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }
    }

    goto LABEL_19;
  }

  if (v18)
  {
    v19 = v15;
    v20 = 1;
LABEL_19:
    [v19 setLEDColor:v20];
    goto LABEL_20;
  }

  [v15 setLEDState:0];
LABEL_20:
  v57 = v15;
  v21 = [NSArray arrayWithObjects:&v57 count:1];
  [v13 setLEDs:v21];

LABEL_21:
  CFDataGetTypeID();
  v22 = CFDictionaryGetTypedValue();
  v52 = v22;
  if ([v22 length] == 6)
  {
    v50 = [v22 bytes];
    v23 = NSPrintF();
    if (v23)
    {
      [v13 setAccessoryID:{v23, v50}];
      v24 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = 1;
LABEL_26:
  v25 = [v13 accessoryID];
  [v13 setGroupID:v25];

  v26 = [v10 batteryState];
  [v13 setCharging:v26 == 2];
  [v10 batteryLevel];
  [v13 setChargeLevel:?];
  [v13 setMaxCapacity:100.0];
  [v13 setLowWarnLevel:10.0];
  if ((v24 & 1) == 0)
  {
    [v13 setGroupID:v23];
  }

  v51 = v23;
  v54 = v9;
  v55 = v8;
  if (v14 != 1)
  {
    v33 = [v9 name];
LABEL_34:
    v32 = v33;
    if (!v33)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (Int64Ranged != 8203)
  {
    v27 = [[SFHeadphoneProduct alloc] initWithProductID:Int64Ranged];
    v28 = [v27 usesProductCaseName];

    if (!v28)
    {
      goto LABEL_32;
    }
  }

  v29 = [NSBundle bundleForClass:objc_opt_class()];
  v30 = [NSString stringWithFormat:@"Localizable-PID_%d", Int64Ranged];
  v31 = [NSString stringWithFormat:@"PRODUCT_CASE_NAME_PID_%d", Int64Ranged];
  v32 = SFLocalizedStringEx();

  if (!v32)
  {
LABEL_32:
    v33 = SFLocalizedStringForKey();
    goto LABEL_34;
  }

LABEL_35:
  [v13 setName:v32];
LABEL_36:
  v34 = [v13 partID];

  if (v34)
  {
    goto LABEL_46;
  }

  if (v14 == 2)
  {
    v35 = @"Left";
  }

  else if (v14 == 3)
  {
    v35 = @"Right";
  }

  else if (v14 == 1)
  {
    v35 = @"Case";
  }

  else
  {
    if (v14 != 4)
    {
      goto LABEL_46;
    }

    v35 = @"Single";
  }

  [v13 setPartID:v35];
LABEL_46:
  v36 = [v13 partName];

  if (v36)
  {
    goto LABEL_52;
  }

  if (v14 == 2)
  {
    v37 = @" 🅛";
  }

  else
  {
    if (v14 != 3)
    {
      goto LABEL_52;
    }

    v37 = @" 🅡";
  }

  v38 = [v32 stringByAppendingString:v37];
  [v13 setPartName:v38];

LABEL_52:
  [v10 batteryLevel];
  if (fabs(v39 + -1.0) < 0.00000011920929)
  {
    [v13 setPowerState:4];
    [v13 setProductID:Int64Ranged];
    if (v26 != 2)
    {
      goto LABEL_59;
    }

LABEL_57:
    v40 = @"AC Power";
    goto LABEL_60;
  }

  if (v26 == 2)
  {
    [v13 setPowerState:3];
    [v13 setProductID:Int64Ranged];
    goto LABEL_57;
  }

  [v13 setPowerState:2];
  [v13 setProductID:Int64Ranged];
LABEL_59:
  v40 = @"Battery Power";
LABEL_60:
  [v13 setState:v40];
  [v13 setTransportType:@"Bluetooth"];
  [v13 setType:@"Accessory Source"];
  [v13 setVendorID:76];
  v41 = CFDictionaryGetInt64Ranged();
  v42 = ((Int64Ranged - 8213) > 7u) | (0x76u >> (Int64Ranged - 21));
  Int64 = CFDictionaryGetInt64();
  if ((v41 & 0x100) != 0)
  {
    v44 = 2;
  }

  else
  {
    v44 = 16;
  }

  v45 = [[SFHeadphoneProduct alloc] initWithProductID:Int64Ranged];
  if ([v45 hasCaseBT])
  {
    if (Int64)
    {
      LOBYTE(v42) = ((v44 & v41) == 0) & v42;
      LOBYTE(v46) = (v44 & v41 | v41 & 8) != 0;
    }

    else
    {
      v46 = (v41 >> 3) & 1;
    }

    v47 = v55;
    [(NSMutableSet *)v53->_powerSourceContainers addObject:v55];
    if (v14 != 1 && (v46 & 1) == 0)
    {
      LOBYTE(v42) = (v14 != 1) & v42;
LABEL_72:
      v48 = v54;
      v49 = v51;
      if (v42)
      {
        if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          sub_10012E38C(v54);
        }

        [v47 publish];
      }

      goto LABEL_81;
    }
  }

  else
  {
    v47 = v55;
    [(NSMutableSet *)v53->_powerSourceContainers addObject:v55];
    if ((v41 & 8) == 0)
    {
      goto LABEL_72;
    }
  }

  v48 = v54;
  if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012E3E8(v54);
  }

  [v47 invalidate];
  v49 = v51;
LABEL_81:
}

- (void)_removeB389sFromTriggeredDevices
{
  v3 = [(NSMutableDictionary *)self->_triggeredDevices allKeys];
  v4 = [v3 copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:v10, v17];
        v12 = [v11 bleDevice];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 advertisementFields];
          if (v14)
          {
            Int64Ranged = CFDictionaryGetInt64Ranged();
            if (Int64Ranged != 5 && Int64Ranged != 9)
            {
              [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:v10];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  self->_triggeredB389Setup = 0;
}

- (BOOL)shouldPromptForSiriNotificationForDevice:(id)a3
{
  v4 = a3;
  if (([v4 supportsAACPService] & 1) == 0)
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E444();
    }

    goto LABEL_45;
  }

  if (![(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E484();
    }

    goto LABEL_45;
  }

  if (![(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E4C4();
    }

    goto LABEL_45;
  }

  if (![(SDProximityPairingAgent *)self _systemCanShowUIWithCounterpart:0])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E4E0();
    }

    goto LABEL_45;
  }

  if ((+[SFSiriController isHeySiriEnabled]& 1) == 0)
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E4FC();
    }

    goto LABEL_45;
  }

  v5 = [v4 primaryPlacement] == 1 || objc_msgSend(v4, "secondaryPlacement") == 1;
  if ([v4 primaryPlacement] != 4)
  {
    v6 = [v4 secondaryPlacement] == 4 || v5;
    if ((v6 & 1) == 0)
    {
      if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10012E518(v4);
      }

      goto LABEL_45;
    }
  }

  if ((+[SFSiriController shouldPromptForAnnounceMessagesForProductID:isUpsellFlow:](SFSiriController, "shouldPromptForAnnounceMessagesForProductID:isUpsellFlow:", [v4 productIdentifier], 1) & 1) == 0 && (+[SFSiriController shouldPromptForAnnounceCallsForProductID:supportsInEarDetection:isUpsellFlow:](SFSiriController, "shouldPromptForAnnounceCallsForProductID:supportsInEarDetection:isUpsellFlow:", objc_msgSend(v4, "productIdentifier"), 1, 1) & 1) == 0)
  {
    if (SFIsAnnounceCallsEnabled())
    {
      [SFSiriController setHasUserSeenAnnounceCallsOptOutScreen:1];
    }

    else
    {
      [SFSiriController setHasUserSeenAnnounceMessagesOptOutScreen:1];
    }
  }

  v7 = 1;
  if ((+[SFSiriController shouldPromptForAnnounceNotificationsForProductID:isUpsellFlow:](SFSiriController, "shouldPromptForAnnounceNotificationsForProductID:isUpsellFlow:", [v4 productIdentifier], 1) & 1) == 0)
  {
    [SFSiriController setHasUserSeenAnnounceNotificationsOptOutScreen:1];
LABEL_45:
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldPromptForSpatialAudioProfileForDevice:(id)a3
{
  v4 = a3;
  if (![(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E57C();
    }

    goto LABEL_21;
  }

  if (![(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E5BC();
    }

    goto LABEL_21;
  }

  if (![(SDProximityPairingAgent *)self _systemCanShowUIWithCounterpart:0])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E5D8();
    }

    goto LABEL_21;
  }

  v5 = [v4 addressString];

  if (!v5)
  {
    if (dword_100970E30 <= 115 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E5F4();
    }

LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  v6 = sub_100127140();
  v7 = [v4 addressString];
  v8 = [v6 isProxCardEnrollmentSupportedForDevice:v7];

LABEL_22:
  return v8;
}

- (BOOL)shouldPromptForEndCallProx:(id)a3
{
  v4 = a3;
  if (![(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E634();
    }

    goto LABEL_24;
  }

  if (![(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E674();
    }

    goto LABEL_24;
  }

  if (![(SDProximityPairingAgent *)self _systemCanShowUIWithCounterpart:0])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E690();
    }

    goto LABEL_24;
  }

  v5 = [v4 addressString];

  if (!v5)
  {
    if (dword_100970E30 <= 115 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E718();
    }

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  v6 = [SDHeadphoneEndCallManager alloc];
  v7 = [v4 addressString];
  v8 = [(SDHeadphoneEndCallManager *)v6 initWithBluetoothAddress:v7];

  v9 = [(SDHeadphoneEndCallManager *)v8 isStatusUnknown];
  v10 = [[SFHeadphoneProduct alloc] initWithProductID:{objc_msgSend(v4, "productIdentifier")}];
  v11 = [v10 supportsEndCallProx];

  if (dword_100970E30 <= 115 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012E6AC();
  }

  v12 = v11 & v9;

LABEL_25:
  return v12;
}

- (BOOL)isBackgroundCheckReadyForFeature:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E7F4(v7);
    }

    goto LABEL_16;
  }

  if (![(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E850();
    }

    goto LABEL_16;
  }

  if (![(SDProximityPairingAgent *)self _systemCanShowUIWithCounterpart:0])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E86C();
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v8 = 1;
LABEL_17:

  return v8;
}

- (void)readyToShowWithDevice:(id)a3 features:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012E8AC(v6, v7);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([(SDProximityPairingAgent *)self isBackgroundCheckReadyForFeature:v13 forDevice:v6, v14])
        {
          [(SDProximityPairingAgent *)self promptForHeadphoneProxFeature:v13 forDevice:v6];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)shouldNotifyForNonGenuineDevice:(id)a3
{
  v4 = a3;
  if (![(SDStatusMonitor *)self->_statusMonitor screenOn])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E934();
    }

    goto LABEL_64;
  }

  if (![(SDStatusMonitor *)self->_statusMonitor deviceUIUnlocked])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E974();
    }

    goto LABEL_64;
  }

  if (![(SDProximityPairingAgent *)self _systemCanShowUIWithCounterpart:0])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012E990();
    }

LABEL_64:
    v36 = 0;
    goto LABEL_65;
  }

  LOBYTE(v5) = 0;
  v6 = 1;
  v7 = &NSURLAuthenticationMethodServerTrust_ptr;
  do
  {
    v8 = v6;
    if ((v6 & 1) == 0)
    {
      break;
    }

    v9 = [v4 addressString];
    v10 = [v9 uppercaseString];

    v11 = v10 != 0;
    if (v10)
    {
      v12 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Sharing"];
      v13 = [v12 dictionaryForKey:v10];
      if (!v13)
      {
        v11 = 0;
        goto LABEL_22;
      }

      v42 = v8;
      v43 = v13;
      v14 = v13;
      v15 = [v14 valueForKey:@"needsUpsell"];
      [v7[258] numberWithInt:1];
      v17 = v16 = v7;
      if ([v15 isEqualToNumber:v17])
      {
        v40 = v12;
        v18 = [v14 valueForKey:@"genuineness"];
        v19 = [v16[258] numberWithInt:0];
        v20 = [v18 isEqualToNumber:v19];

        if (v20)
        {
          v48 = 0;
          v21 = [CBDiscovery devicesWithDiscoveryFlags:0x200000 error:&v48];
          v22 = v48;
          v23 = v22;
          if (v22 && !v21)
          {
            v7 = &NSURLAuthenticationMethodServerTrust_ptr;
            v12 = v40;
            if (dword_100970E30 <= 90)
            {
              if (dword_100970E30 != -1 || (v24 = v22, v25 = _LogCategory_Initialize(), v23 = v24, v25))
              {
                v35 = v23;
                sub_10012E9AC();
                v23 = v35;
              }
            }

            v43 = v14;
LABEL_21:

            v8 = v42;
            v13 = v43;
LABEL_22:

            goto LABEL_23;
          }

          v41 = v22;
          if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
          {
            sub_10012E9EC(v21);
          }

          v39 = v4;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v17 = v21;
          v26 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v45;
            do
            {
              for (i = 0; i != v27; i = i + 1)
              {
                if (*v45 != v28)
                {
                  objc_enumerationMutation(v17);
                }

                v30 = *(*(&v44 + 1) + 8 * i);
                v31 = [v30 btAddressData];
                v32 = CUPrintNSDataAddress();

                if ([v32 isEqualToString:v10])
                {
                  v33 = [v30 gapaFlags];
                  if ((v33 & 2) != 0)
                  {
                    if (dword_100970E30 > 30 || dword_100970E30 == -1 && !_LogCategory_Initialize())
                    {
                      LOBYTE(v5) = 1;
                      v34 = &off_10090E920;
                      goto LABEL_47;
                    }

                    v34 = &off_10090E920;
                  }

                  else
                  {
                    if (([v30 gapaFlags] & 1) == 0)
                    {
                      goto LABEL_48;
                    }

                    if (dword_100970E30 > 30 || dword_100970E30 == -1 && !_LogCategory_Initialize())
                    {
                      LOBYTE(v5) = 0;
                      v34 = &off_10090E948;
                      goto LABEL_47;
                    }

                    v34 = &off_10090E948;
                  }

                  v5 = (v33 >> 1) & 1;
                  v38 = v10;
                  LogPrintF();
LABEL_47:

                  v14 = v34;
                }

LABEL_48:
              }

              v27 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
            }

            while (v27);
          }

          v4 = v39;
          v12 = v40;
LABEL_18:
        }

        else
        {
          v12 = v40;
        }

        [v12 setObject:v14 forKey:{v10, v38}];
        v11 = 0;
        v7 = &NSURLAuthenticationMethodServerTrust_ptr;
        goto LABEL_21;
      }

      v41 = v15;
      goto LABEL_18;
    }

LABEL_23:

    v6 = 0;
  }

  while (!v11);
  v36 = (v8 ^ 1) & v5;
LABEL_65:

  return v36 & 1;
}

- (BOOL)launchRemoteAlertWithUserInfo:(id)a3
{
  v4 = a3;
  pairingAlertHandle = self->_pairingAlertHandle;
  if (pairingAlertHandle)
  {
    [(SBSRemoteAlertHandle *)pairingAlertHandle unregisterObserver:self];
    [(SBSRemoteAlertHandle *)self->_pairingAlertHandle invalidate];
  }

  v6 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.HeadphoneProxService" viewControllerClassName:@"HeadphoneProxService.HeadphoneFlowViewController"];
  v7 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  [v7 setUserInfo:v4];
  v8 = [SBSRemoteAlertHandle newHandleWithDefinition:v6 configurationContext:v7];
  v9 = self->_pairingAlertHandle;
  self->_pairingAlertHandle = v8;

  v10 = self->_pairingAlertHandle;
  if (v10)
  {
    [(SBSRemoteAlertHandle *)self->_pairingAlertHandle registerObserver:self];
    [(SBSRemoteAlertHandle *)self->_pairingAlertHandle activateWithContext:0];
  }

  return v10 != 0;
}

- (void)promptForSiriNotificationsForDevice:(id)a3
{
  v11 = a3;
  if ([(SDProximityPairingAgent *)self shouldPromptForSiriNotificationForDevice:?])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EA44();
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"siriNote"];
    v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 productIdentifier]);
    [v4 setObject:v5 forKeyedSubscript:@"pid"];

    v6 = [v11 identifier];
    v7 = [v6 UUIDString];
    [v4 setObject:v7 forKeyedSubscript:@"deviceIdentifier"];

    if (v11)
    {
      v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ([v11 deviceFlags] >> 3) & 1);
      [v4 setObject:v8 forKeyedSubscript:@"softwareVolume"];

      if ([v11 primaryPlacement])
      {
        v9 = 1;
      }

      else
      {
        v9 = [v11 secondaryPlacement] != 0;
      }

      v10 = [NSNumber numberWithInt:v9];
      [v4 setObject:v10 forKeyedSubscript:@"inEarDetection"];
    }

    if (![(SDProximityPairingAgent *)self launchRemoteAlertWithUserInfo:v4]&& dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EA84();
    }
  }
}

- (void)promptForSpatialAudioProfileForDevice:(id)a3
{
  v12 = a3;
  if ([(SDProximityPairingAgent *)self shouldPromptForSpatialAudioProfileForDevice:?])
  {
    v4 = v12;
    if (dword_100970E30 <= 30)
    {
      if (dword_100970E30 != -1 || (v5 = _LogCategory_Initialize(), v4 = v12, v5))
      {
        sub_10012EAA0();
        v4 = v12;
      }
    }

    v6 = [v4 addressString];

    if (v6)
    {
      v7 = sub_100127140();
      v8 = [v12 addressString];
      [v7 setProxCardShowed:1 forDevice:v8];
    }

    else if (dword_100970E30 <= 115 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EAE0();
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"spatialAudioProfile"];
    v10 = [v12 identifier];
    v11 = [v10 UUIDString];
    [v9 setObject:v11 forKeyedSubscript:@"deviceIdentifier"];

    if (![(SDProximityPairingAgent *)self launchRemoteAlertWithUserInfo:v9]&& dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EB20();
    }
  }
}

- (void)promptForEndCallProxForDevice:(id)a3
{
  v11 = a3;
  if ([(SDProximityPairingAgent *)self shouldPromptForEndCallProx:?])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EB3C();
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"endCallProx"];
    v5 = [v11 identifier];
    v6 = [v5 UUIDString];
    [v4 setObject:v6 forKeyedSubscript:@"deviceIdentifier"];

    v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 productIdentifier]);
    [v4 setObject:v7 forKeyedSubscript:@"pid"];

    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 colorCode]);
    [v4 setObject:v8 forKeyedSubscript:@"colorCode"];

    v9 = [v11 addressString];

    if (v9)
    {
      v10 = [v11 addressString];
      [v4 setObject:v10 forKeyedSubscript:@"deviceAddress"];
    }

    if (![(SDProximityPairingAgent *)self launchRemoteAlertWithUserInfo:v4]&& dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EB7C();
    }
  }
}

- (void)promptForMuteCallProxForDevice:(id)a3
{
  v11 = a3;
  if ([(SDProximityPairingAgent *)self shouldPromptForMuteCallProx:?])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EB98();
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"muteCallProx"];
    v5 = [v11 identifier];
    v6 = [v5 UUIDString];
    [v4 setObject:v6 forKeyedSubscript:@"deviceIdentifier"];

    v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 productIdentifier]);
    [v4 setObject:v7 forKeyedSubscript:@"pid"];

    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 colorCode]);
    [v4 setObject:v8 forKeyedSubscript:@"colorCode"];

    v9 = [v11 addressString];

    if (v9)
    {
      v10 = [v11 addressString];
      [v4 setObject:v10 forKeyedSubscript:@"deviceAddress"];
    }

    if (![(SDProximityPairingAgent *)self launchRemoteAlertWithUserInfo:v4]&& dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EBD8();
    }
  }
}

- (void)promptForHeadphoneProxFeature:(id)a3 forDevice:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [v6 bluetoothAddress];
  v8 = [v6 coreBluetoothDevice];
  v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 productID]);
  v10 = [v6 coreBluetoothDevice];
  v11 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v10 colorCodeBest]);
  NSLog(@"HeadphoneProxFeatureService: [Sharing] promptForHeadphoneProxFeature: %@, for Device: %@, PID: %@, Color: %@", v19, v7, v9, v11);

  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:v19];
  v13 = [v6 identifier];
  [v12 setObject:v13 forKeyedSubscript:@"deviceIdentifier"];

  v14 = [v6 coreBluetoothDevice];
  v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 productID]);
  [v12 setObject:v15 forKeyedSubscript:@"pid"];

  v16 = [v6 coreBluetoothDevice];
  v17 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v16 colorCodeBest]);
  [v12 setObject:v17 forKeyedSubscript:@"colorCode"];

  v18 = [v6 bluetoothAddress];

  [v12 setObject:v18 forKeyedSubscript:@"deviceAddress"];
  if (![(SDProximityPairingAgent *)self launchRemoteAlertWithUserInfo:v12]&& dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012EBF4();
  }
}

- (void)promptForAdaptiveControlsProxForDevice:(id)a3
{
  v11 = a3;
  if ([(SDProximityPairingAgent *)self shouldPromptForAdaptiveControlsProx:?])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EC34();
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"adaptiveControlsProx"];
    v5 = [v11 identifier];
    v6 = [v5 UUIDString];
    [v4 setObject:v6 forKeyedSubscript:@"deviceIdentifier"];

    v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 productIdentifier]);
    [v4 setObject:v7 forKeyedSubscript:@"pid"];

    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 colorCode]);
    [v4 setObject:v8 forKeyedSubscript:@"colorCode"];

    v9 = [v11 addressString];

    if (v9)
    {
      v10 = [v11 addressString];
      [v4 setObject:v10 forKeyedSubscript:@"deviceAddress"];
    }

    if (![(SDProximityPairingAgent *)self launchRemoteAlertWithUserInfo:v4]&& dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EC74();
    }
  }
}

- (void)promptForWhatsNewProxForDevice:(id)a3
{
  v10 = a3;
  if ([(SDProximityPairingAgent *)self shouldPromptForWhatsNewProx:?])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EC90();
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"whatsNew"];
    v5 = [v10 identifier];
    v6 = [v5 UUIDString];
    [v4 setObject:v6 forKeyedSubscript:@"deviceIdentifier"];

    v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 productIdentifier]);
    [v4 setObject:v7 forKeyedSubscript:@"pid"];

    v8 = [v10 addressString];

    if (v8)
    {
      v9 = [v10 addressString];
      [v4 setObject:v9 forKeyedSubscript:@"deviceAddress"];
    }

    if (![(SDProximityPairingAgent *)self launchRemoteAlertWithUserInfo:v4]&& dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012ECD0();
    }
  }
}

- (void)notifyForNonGenuineDevice:(id)a3
{
  v7 = a3;
  if ([(SDProximityPairingAgent *)self shouldNotifyForNonGenuineDevice:?])
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012ECEC();
    }

    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"nonGenuineDevice"];
    v5 = [v7 identifier];
    v6 = [v5 UUIDString];
    [v4 setObject:v6 forKeyedSubscript:@"deviceIdentifier"];

    if (![(SDProximityPairingAgent *)self launchRemoteAlertWithUserInfo:v4]&& dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012ED2C();
    }
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100128E84;
  v7[3] = &unk_1008CE028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100128FE0;
  v7[3] = &unk_1008CE028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129168;
  block[3] = &unk_1008CE900;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_resetTriggers
{
  [(NSMutableDictionary *)self->_triggeredDevices removeAllObjects];
  triggeredDevices = self->_triggeredDevices;
  self->_triggeredDevices = 0;

  *&self->_triggeredB389Setup = 0;
}

- (void)retriggerProximityPairing:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012934C;
  v7[3] = &unk_1008CE708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (int)_startPairingUI:(id)a3 autoStart:(BOOL)a4 repair:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [v7 bleDevice];
  v9 = [v8 advertisementFields];
  v10 = [v7 identifier];
  v11 = [v10 UUIDString];

  if (!v11)
  {
    if (dword_100970E30 <= 60 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012F070();
    }

    goto LABEL_88;
  }

  if (!v5 || ([v7 deviceFlags] & 0x1000) != 0)
  {
    v13 = [v8 bluetoothAddress];
    if (v13)
    {
      v14 = v13;
      if ([v13 length] != 6)
      {
        if (dword_100970E30 <= 60 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          sub_10012EF88();
        }

        v44 = 0;
        v57 = 0;
        v84 = 0;
        v73 = 0;
        v86 = 0;
        v72 = -6743;
        goto LABEL_98;
      }

      v78 = v14;
      v75 = [v14 bytes];
      v12 = NSPrintF();
      goto LABEL_8;
    }

    if (dword_100970E30 <= 60 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EFC8();
    }

LABEL_88:
    v44 = 0;
    v57 = 0;
    v84 = 0;
    v73 = 0;
    v14 = 0;
    v86 = 0;
    v72 = -6761;
    goto LABEL_98;
  }

  v12 = 0;
  v78 = 0;
LABEL_8:
  v80 = v5;
  v83 = v12;
  v81 = v11;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v15 = [v7 batteryInfo];
  v16 = [v15 countByEnumeratingWithState:&v87 objects:v93 count:16];
  v79 = v6;
  if (v16)
  {
    v17 = v16;
    v18 = *v88;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v88 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v87 + 1) + 8 * i);
        v24 = [v23 batteryState];
        [v23 batteryLevel];
        if (v24 == 2)
        {
          v26 = v25;
        }

        else
        {
          v26 = -v25;
        }

        v27 = [v23 batteryType];
        if (v27 == 4)
        {
          v28 = v26;
        }

        else
        {
          v28 = v19;
        }

        if (v27 == 3)
        {
          v28 = v19;
          v29 = v26;
        }

        else
        {
          v29 = v20;
        }

        if (v27 == 2)
        {
          v30 = v26;
        }

        else
        {
          v30 = v21;
        }

        if (v27 == 1)
        {
          v31 = v26;
        }

        else
        {
          v31 = v19;
        }

        if (v27 == 1)
        {
          v30 = v21;
        }

        if (v27 <= 2)
        {
          v19 = v31;
        }

        else
        {
          v19 = v28;
        }

        if (v27 <= 2)
        {
          v21 = v30;
        }

        else
        {
          v20 = v29;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v87 objects:v93 count:16];
    }

    while (v17);
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
  }

  v82 = v8;

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v33 = CFDictionaryGetInt64Ranged();
  v34 = CFDictionaryGetInt64Ranged();
  v35 = CFDictionaryGetInt64Ranged();
  LODWORD(v15) = [v7 deviceFlags];
  v36 = +[SDNearbyAgent sharedNearbyAgent];
  v37 = [v36 btConnectedDeviceMonitor];
  v38 = v9;
  v39 = [v37 statusFlags];

  v40 = [v7 testMode];
  v77 = v39;
  v41 = v39 & 8;
  v9 = v38;
  if (v40 | (v41 >> 3))
  {
    v15 = v15;
  }

  else
  {
    v15 = v15 & 0xFFFFF7FF;
  }

  CFDataGetTypeID();
  v84 = CFDictionaryGetTypedValue();
  v42 = +[NSUUID UUID];
  v86 = [v42 UUIDString];

  v43 = objc_alloc_init(NSMutableDictionary);
  v44 = v43;
  if (v79)
  {
    [v43 setObject:&__kCFBooleanTrue forKeyedSubscript:@"autoStart"];
  }

  v45 = [NSNumber numberWithDouble:v21];
  [v44 setObject:v45 forKeyedSubscript:@"batteryLevelLeft"];

  v46 = [NSNumber numberWithDouble:v20];
  [v44 setObject:v46 forKeyedSubscript:@"batteryLevelRight"];

  v47 = [NSNumber numberWithDouble:v19];
  [v44 setObject:v47 forKeyedSubscript:@"batteryLevelCase"];

  if ([(SDStatusMonitor *)self->_statusMonitor carplayConnected]|| (v77 & 0x10) != 0)
  {
    [v44 setObject:&__kCFBooleanTrue forKeyedSubscript:@"carplayConnected"];
  }

  v48 = [NSNumber numberWithUnsignedChar:v35];
  [v44 setObject:v48 forKeyedSubscript:@"caseLEDColor"];

  v49 = [NSNumber numberWithUnsignedChar:v34];
  [v44 setObject:v49 forKeyedSubscript:@"caseVers"];

  v50 = [NSNumber numberWithUnsignedChar:v33];
  [v44 setObject:v50 forKeyedSubscript:@"colorCode"];

  if (v83)
  {
    [v44 setObject:v83 forKeyedSubscript:@"deviceAddress"];
  }

  v11 = v81;
  if (v15)
  {
    v51 = [NSNumber numberWithUnsignedInt:v15];
    [v44 setObject:v51 forKeyedSubscript:@"deviceFlags"];
  }

  v52 = [v7 name];
  if (v52)
  {
    [v44 setObject:v52 forKeyedSubscript:@"deviceName"];
  }

  [v44 setObject:v81 forKeyedSubscript:@"deviceIdentifier"];
  v53 = [v7 model];
  v54 = v53;
  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = &stru_1008EFBD0;
  }

  [v44 setObject:v55 forKeyedSubscript:@"model"];

  v56 = [NSNumber numberWithUnsignedInt:Int64Ranged];
  [v44 setObject:v56 forKeyedSubscript:@"pid"];

  [v44 setObject:v86 forKeyedSubscript:@"sessionUUID"];
  v57 = [[SFHeadphoneProduct alloc] initWithProductID:Int64Ranged];
  if (v57)
  {
    v58 = 1;
  }

  else
  {
    v58 = [(SDProximityPairingAgent *)self _supportedDevice:v7];
  }

  v59 = [NSNumber numberWithBool:v58];
  [v44 setObject:v59 forKeyedSubscript:@"supportedDevice"];

  v60 = [v7 bleDevice];
  v61 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v60 proxPairingTicks]);
  [v44 setObject:v61 forKeyedSubscript:@"foundTicks"];

  v62 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  [v44 setObject:v62 forKeyedSubscript:@"triggerTicks"];

  [v44 setObject:v84 forKeyedSubscript:@"engravingData"];
  if (!v80)
  {
    goto LABEL_63;
  }

  if (SFShouldShowRepairProxCard())
  {
    v63 = +[SDNearbyAgent sharedNearbyAgent];
    v64 = [v63 bleProximityRSSIThresholdForType:3 device:v7];

    [v44 setObject:&__kCFBooleanTrue forKeyedSubscript:@"repairMode"];
    v65 = [NSNumber numberWithInteger:v64];
    [v44 setObject:v65 forKeyedSubscript:@"repairRSSI"];

LABEL_63:
    if ([(SDProximityPairingAgent *)self launchRemoteAlertWithUserInfo:v44])
    {
      v92[0] = v86;
      v91[0] = @"sid";
      v91[1] = @"rssi";
      v66 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v82 rssi]);
      v92[1] = v66;
      v91[2] = @"smoothedRSSI";
      v67 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v82 rssiFloor]);
      v92[2] = v67;
      v91[3] = @"pairedModel";
      v68 = [v7 model];
      v69 = v68;
      if (v68)
      {
        v70 = v68;
      }

      else
      {
        v70 = &stru_1008EFBD0;
      }

      v92[3] = v70;
      v71 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:4];
      SFMetricsLog();

      if (dword_100970E30 > 50)
      {
        v72 = 0;
        v11 = v81;
        v8 = v82;
      }

      else
      {
        v11 = v81;
        if (dword_100970E30 != -1 || _LogCategory_Initialize())
        {
          v8 = v82;
          [v82 rssiFloor];
          v76 = [v7 model];
          LogPrintF();

          v72 = 0;
        }

        else
        {
          v72 = 0;
          v8 = v82;
        }
      }

      v14 = v78;
      v73 = v83;
    }

    else
    {
      v14 = v78;
      v73 = v83;
      if (dword_100970E30 > 60)
      {
        v72 = 0;
        v8 = v82;
      }

      else
      {
        v8 = v82;
        if (dword_100970E30 != -1 || _LogCategory_Initialize())
        {
          sub_10012F03C();
        }

        v72 = 0;
      }
    }

    goto LABEL_79;
  }

  if (dword_100970E30 > 60)
  {
    v72 = -6735;
    v8 = v82;
    v73 = v83;
    v14 = v78;
  }

  else
  {
    v8 = v82;
    v73 = v83;
    v14 = v78;
    if (dword_100970E30 != -1 || _LogCategory_Initialize())
    {
      sub_10012F008();
    }

    v72 = -6735;
  }

LABEL_98:
  if (dword_100970E30 <= 60 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012F0B0();
  }

LABEL_79:

  return v72;
}

- (void)startSoftwareUpdateRequiredUI
{
  softwareUpdateAlertHandle = self->_softwareUpdateAlertHandle;
  if (softwareUpdateAlertHandle)
  {
    [(SBSRemoteAlertHandle *)softwareUpdateAlertHandle removeObserver:self];
    [(SBSRemoteAlertHandle *)self->_softwareUpdateAlertHandle invalidate];
  }

  v6 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SharingViewService" viewControllerClassName:@"SharingViewService.SoftwareUpdateRequiredFlow"];
  v4 = [SBSRemoteAlertHandle newHandleWithDefinition:v6 configurationContext:0];
  v5 = self->_softwareUpdateAlertHandle;
  self->_softwareUpdateAlertHandle = v4;

  [(SBSRemoteAlertHandle *)self->_softwareUpdateAlertHandle addObserver:self];
  [(SBSRemoteAlertHandle *)self->_softwareUpdateAlertHandle activateWithContext:0];
}

- (int)_startStatusUI:(id)a3
{
  v4 = a3;
  v5 = [v4 bleDevice];
  v6 = [v4 identifier];
  v7 = [v5 advertisementFields];
  v96 = v6;
  if (v6)
  {
    v84 = self;
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v89 = CFDictionaryGetInt64Ranged();
    v81 = CFDictionaryGetInt64Ranged();
    v85 = CFDictionaryGetInt64Ranged();
    v88 = v5;
    v8 = [v5 bluetoothAddress];
    v99 = &stru_1008EFBD0;
    if ([v8 length] == 6)
    {
      v68 = [v8 bytes];
      v99 = NSPrintF();
    }

    v92 = v8;
    Int64 = CFDictionaryGetInt64();
    v10 = CFDictionaryGetInt64Ranged();
    v11 = CFDictionaryGetInt64Ranged();
    v83 = CFDictionaryGetInt64Ranged();
    v78 = CFDictionaryGetInt64Ranged();
    v80 = CFDictionaryGetInt64Ranged();
    CFDataGetTypeID();
    v94 = CFDictionaryGetTypedValue();
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v12 = [v4 batteryInfo];
    v13 = [v12 countByEnumeratingWithState:&v100 objects:v108 count:16];
    v87 = v7;
    if (v13)
    {
      v14 = v13;
      v15 = *v101;
      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v101 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v100 + 1) + 8 * i);
          v21 = [v20 batteryState];
          [v20 batteryLevel];
          if (v21 == 2)
          {
            v23 = v22;
          }

          else
          {
            v23 = -v22;
          }

          v24 = [v20 batteryType];
          if (v24 == 4)
          {
            v25 = v23;
          }

          else
          {
            v25 = v16;
          }

          if (v24 == 3)
          {
            v25 = v16;
            v26 = v23;
          }

          else
          {
            v26 = v17;
          }

          if (v24 == 2)
          {
            v27 = v23;
          }

          else
          {
            v27 = v18;
          }

          if (v24 == 1)
          {
            v28 = v23;
          }

          else
          {
            v28 = v16;
          }

          if (v24 == 1)
          {
            v27 = v18;
          }

          if (v24 <= 2)
          {
            v16 = v28;
          }

          else
          {
            v16 = v25;
          }

          if (v24 <= 2)
          {
            v18 = v27;
          }

          else
          {
            v17 = v26;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v100 objects:v108 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
    }

    v29 = Int64 != 0;

    v30 = +[NSUUID UUID];
    v31 = [v30 UUIDString];

    v95 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.HeadphoneProxService" viewControllerClassName:@"HeadphoneProxService.HeadphoneFlowViewController"];
    v93 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v32 = [v4 name];
    v106[0] = @"batteryLevelLeft";
    v77 = [NSNumber numberWithDouble:v18];
    v107[0] = v77;
    v106[1] = @"batteryLevelRight";
    v76 = [NSNumber numberWithDouble:v17];
    v107[1] = v76;
    v106[2] = @"batteryLevelCase";
    v75 = [NSNumber numberWithDouble:v16];
    v107[2] = v75;
    v106[3] = @"caseLEDColor";
    v74 = [NSNumber numberWithUnsignedChar:v11];
    v107[3] = v74;
    v106[4] = @"caseVers";
    v73 = [NSNumber numberWithUnsignedChar:v10];
    v107[4] = v73;
    v106[5] = @"colorCode";
    v82 = [NSNumber numberWithUnsignedChar:v81];
    v107[5] = v82;
    v106[6] = @"cnSv";
    v72 = [NSNumber numberWithUnsignedInt:v85];
    v107[6] = v72;
    v107[7] = v99;
    v106[7] = @"deviceAddress";
    v106[8] = @"deviceIdentifier";
    v71 = [v96 UUIDString];
    v107[8] = v71;
    v106[9] = @"headsetStatus";
    v79 = [NSNumber numberWithUnsignedInt:v78];
    v107[9] = v79;
    v106[10] = @"model";
    v33 = [v4 model];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = &stru_1008EFBD0;
    }

    v107[10] = v35;
    v106[11] = @"pid";
    v70 = [NSNumber numberWithUnsignedInt:Int64Ranged, v68];
    v107[11] = v70;
    v106[12] = @"pid2";
    v36 = [NSNumber numberWithUnsignedInt:v89];
    v37 = v36;
    v86 = v32;
    if (v32)
    {
      v38 = v32;
    }

    else
    {
      v38 = &stru_1008EFBD0;
    }

    v107[12] = v36;
    v107[13] = v38;
    v106[13] = @"name";
    v106[14] = @"obcState";
    v39 = [NSNumber numberWithUnsignedChar:v80];
    v107[14] = v39;
    v106[15] = @"paired";
    v40 = [NSNumber numberWithBool:v29];
    v107[15] = v40;
    v98 = v31;
    v107[16] = v31;
    v106[16] = @"sessionUUID";
    v106[17] = @"subType";
    v41 = [NSNumber numberWithUnsignedChar:v83];
    v107[17] = v41;
    v107[18] = &__kCFBooleanTrue;
    v106[18] = @"statusOnly";
    v106[19] = @"foundTicks";
    v90 = v4;
    v42 = [v4 bleDevice];
    v43 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v42 proxPairingTicks]);
    v107[19] = v43;
    v106[20] = @"triggerTicks";
    v44 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    v107[20] = v44;
    v45 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:21];
    v46 = [NSMutableDictionary dictionaryWithDictionary:v45];

    v47 = v94;
    if (v94)
    {
      [v46 setObject:v94 forKeyedSubscript:@"engravingData"];
    }

    CFDataGetTypeID();
    v7 = v87;
    v48 = CFDictionaryGetTypedValue();
    v49 = v48;
    v5 = v88;
    if (v48)
    {
      if ([v48 length] == 6)
      {
        v69 = [v92 bytes];
        v50 = NSPrintF();
      }

      else
      {
        v50 = &stru_1008EFBD0;
      }

      v4 = v90;
      v51 = v93;
      [v46 setObject:v50 forKeyedSubscript:{@"deviceAddress2", v69}];
    }

    else
    {
      v50 = 0;
      v4 = v90;
      v51 = v93;
    }

    v52 = [NSNumber numberWithBool:CFDictionaryGetInt64() != 0];
    [v46 setObject:v52 forKeyedSubscript:@"notMyCase"];

    v91 = v46;
    v53 = [v46 copy];
    [v51 setUserInfo:v53];

    statusAlertHandle = v84->_statusAlertHandle;
    if (statusAlertHandle)
    {
      [(SBSRemoteAlertHandle *)statusAlertHandle removeObserver:v84];
      [(SBSRemoteAlertHandle *)v84->_statusAlertHandle invalidate];
    }

    v55 = [SBSRemoteAlertHandle newHandleWithDefinition:v95 configurationContext:v51];
    v56 = v84->_statusAlertHandle;
    v84->_statusAlertHandle = v55;

    v57 = v84->_statusAlertHandle;
    if (v57)
    {
      [(SBSRemoteAlertHandle *)v57 addObserver:v84];
      [(SBSRemoteAlertHandle *)v84->_statusAlertHandle activateWithContext:0];
      v105[0] = v98;
      v104[0] = @"sid";
      v104[1] = @"rssi";
      v58 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 rssi]);
      v105[1] = v58;
      v104[2] = @"smoothedRSSI";
      v59 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v88 rssiFloor]);
      v105[2] = v59;
      v104[3] = @"pairedModel";
      v60 = [v4 model];
      v61 = v60;
      v62 = &stru_1008EFBD0;
      if (v60)
      {
        v62 = v60;
      }

      v105[3] = v62;
      v63 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:4];
      SFMetricsLog();

      if (dword_100970E30 > 50)
      {
        v66 = 0;
        v64 = v92;
        v51 = v93;
        v47 = v94;
        v65 = v86;
      }

      else
      {
        v64 = v92;
        v47 = v94;
        v65 = v86;
        if (dword_100970E30 != -1 || _LogCategory_Initialize())
        {
          sub_10012F0F0(v88, v4);
        }

        v66 = 0;
        v51 = v93;
      }

      goto LABEL_60;
    }

    v65 = v86;
    if (dword_100970E30 > 60)
    {
      v66 = -6740;
      v64 = v92;
    }

    else
    {
      v64 = v92;
      if (dword_100970E30 != -1 || _LogCategory_Initialize())
      {
        sub_10012F168();
      }

      v66 = -6740;
    }
  }

  else
  {
    if (dword_100970E30 <= 60 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012F19C();
    }

    v91 = 0;
    v50 = 0;
    v49 = 0;
    v47 = 0;
    v98 = 0;
    v99 = 0;
    v64 = 0;
    v51 = 0;
    v95 = 0;
    v65 = 0;
    v66 = -6761;
  }

  if (dword_100970E30 <= 60 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012F1DC();
  }

LABEL_60:

  return v66;
}

- (BOOL)_supportedDevice:(id)a3
{
  v3 = [a3 model];
  if ([v3 isEqual:{@"AirPods1, 1"}] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"BeatsX1,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"AirPods1,3") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"AirPodsPro1,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"PowerBeats3,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"BeatsSolo3,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"Powerbeats4,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"BeatsSoloPro1,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"BeatsStudio3,2") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"PowerbeatsPro1,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"Device1,8202") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"Device1,8208"))
  {
    v4 = 1;
  }

  else
  {
    v6 = [[SFHeadphoneProduct alloc] initWithBluetoothModel:v3];
    v4 = v6 != 0;
  }

  return v4;
}

- (BOOL)_systemCanShowUIWithCounterpart:(id)a3
{
  v4 = a3;
  v7 = (gSDProxCardsSuppressed & 1) == 0 && (!v4 || ([(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:v4], v6 = v5 = v4;

  return v7;
}

- (void)testPairingUI:(id)a3
{
  v4 = a3;
  v14 = [v4 UTF8String];
  strlen(v14);
  if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012F21C();
  }

  v12 = 0;
  v13 = 0;
    ;
  }

  v6 = [(SDProximityPairingAgent *)self _testDeviceWithParams:v4];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012B074;
  v9[3] = &unk_1008CF940;
  v9[4] = self;
  v10 = v6;
  v11 = i & 1;
  v8 = v6;
  dispatch_async(dispatchQueue, v9);
}

- (void)testStatusUI:(id)a3
{
  v4 = a3;
  if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012F25C();
  }

  v5 = [(SDProximityPairingAgent *)self _testDeviceWithParams:v4];
  v6 = [v5 name];

  if (!v6)
  {
    v7 = [v5 bleDevice];
    v8 = [v7 advertisementFields];
    CFDictionaryGetInt64Ranged();

    v9 = SFLocalizedNameForBluetoothProductID();
    v10 = [NSString stringWithFormat:@"John‘s %@", v9];
    [v5 setName:v10];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B21C;
  block[3] = &unk_1008CE028;
  block[4] = self;
  v14 = v5;
  v12 = v5;
  dispatch_async(dispatchQueue, block);
}

- (id)_testDeviceWithParams:(id)a3
{
  v4 = a3;
  v104 = [v4 UTF8String];
  v5 = strlen(v104);
  v102 = 0;
  v103 = 0;
  v101 = 0;
  v100 = 0;
  v97 = objc_alloc_init(SFBLEDevice);
  v93 = objc_alloc_init(NSMutableDictionary);
  v6 = @"00000000-0000-0000-0000-000000000000";
  v92 = v4;
  if (!TextSep())
  {
    v94 = 0;
    v95 = 0;
    v42 = 0;
    v43 = 0;
    v96 = 0;
    v99 = 0;
    v14 = 1.0;
    v11 = 0.88;
    v8 = 1.0;
    v9 = &stru_1008EFBD0;
    goto LABEL_58;
  }

  v7 = 0;
  v98 = 0;
  v99 = 0;
  v95 = 0;
  v96 = 0;
  v91 = 0;
  v94 = 0;
  v8 = 1.0;
  v9 = &stru_1008EFBD0;
  v10 = "model=";
  v11 = 0.88;
  v12 = &NSURLAuthenticationMethodServerTrust_ptr;
  v13 = ",";
  v14 = 1.0;
  do
  {
    v15 = v103;
    if (v102)
    {
      do
      {
        v16 = *v15;
        if (v16 < 0)
        {
          if (!__maskrune(*v15, 0x4000uLL))
          {
            break;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v16] & 0x4000) == 0)
        {
          break;
        }

        ++v15;
        v17 = v102-- == 1;
        v103 = v15;
      }

      while (!v17);
    }

    if (!strnicmp_prefix())
    {
      v20 = objc_alloc(v12[266]);
      v21 = [v20 initWithBytes:v103 + 6 length:v102 - 6 encoding:4];

      v9 = v21;
      continue;
    }

    if (!strnicmp_prefix())
    {
      v22 = objc_alloc(v12[266]);
      v23 = [v22 initWithBytes:v103 + 9 length:v102 - 9 encoding:4];
      [v23 doubleValue];
      v8 = v24;
LABEL_36:

      continue;
    }

    if (!strnicmp_prefix())
    {
      v25 = objc_alloc(v12[266]);
      v23 = [v25 initWithBytes:v103 + 9 length:v102 - 9 encoding:4];
      [v23 doubleValue];
      v14 = v26;
      goto LABEL_36;
    }

    if (!strnicmp_prefix())
    {
      v27 = objc_alloc(v12[266]);
      v23 = [v27 initWithBytes:v103 + 9 length:v102 - 9 encoding:4];
      [v23 doubleValue];
      v11 = v28;
      goto LABEL_36;
    }

    if (!strnicmp_prefix())
    {
      v29 = objc_alloc(v12[266]);
      v30 = [v29 initWithBytes:v103 + 5 length:v102 - 5 encoding:4];

      v99 = v30;
      continue;
    }

    if (!strnicmp_prefix())
    {
      v31 = objc_alloc(v12[266]);
      v32 = [v31 initWithBytes:v103 + 10 length:v102 - 10 encoding:4];
      [objc_opt_class() dataFromHexString:v32];
      v33 = v5;
      v34 = v9;
      v35 = v13;
      v36 = v10;
      v37 = v12;
      v38 = v7;
      v40 = v39 = self;

      v98 = v40;
      self = v39;
      v7 = v38;
      v12 = v37;
      v10 = v36;
      v13 = v35;
      v9 = v34;
      v5 = v33;
      continue;
    }

    if (!strnicmpx())
    {
      v7 = 1;
      continue;
    }

    v90 = &v100;
    if (SNScanF() != 1)
    {
      v90 = &v101;
      if (SNScanF() != 1)
      {
        if (!strnicmpx())
        {
          BYTE4(v96) = 1;
          continue;
        }

        if (!strnicmpx())
        {
          LOBYTE(v96) = 1;
          continue;
        }

        if (!strnicmpx())
        {
          v19 = 1;
LABEL_45:
          HIDWORD(v95) = v19;
          continue;
        }

        if (strnicmpx())
        {
          if (strnicmpx())
          {
            if (strnicmpx())
            {
              if (strnicmpx())
              {
                if (strnicmpx())
                {
                  if (strnicmpx())
                  {
                    if (strnicmpx())
                    {
                      v18 = strnicmpx();
                      v19 = HIDWORD(v95);
                      if (!v18)
                      {
                        v19 = 3;
                      }
                    }

                    else
                    {
                      v19 = 3;
                    }
                  }

                  else
                  {
                    v19 = 2;
                  }

                  goto LABEL_45;
                }

                v41 = v95 | 0x800;
              }

              else
              {
                v41 = v95 | 0x1000;
              }

              LODWORD(v95) = v41;
            }

            else
            {
              LOBYTE(v94) = 1;
            }
          }

          else
          {
            BYTE4(v94) = 1;
          }
        }

        else
        {
          v91 = 1;
        }
      }
    }
  }

  while (TextSep());
  v6 = @"00000000-0000-0000-0000-000000000000";
  if (v7)
  {
    v6 = @"00000000-0000-0000-0000-000000000001";
  }

  v42 = v98;
  v43 = v91;
LABEL_58:
  v44 = v93;
  if (![(__CFString *)v9 length]&& !v100)
  {
    v100 = 8194;
  }

  if ([(__CFString *)v9 caseInsensitiveCompare:@"b188"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b288"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b444"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b298"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b507"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b607"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b688"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b768e"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b768m"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b494"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b498"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b698"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b788"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b463"]&& [(__CFString *)v9 caseInsensitiveCompare:@"b494b"]&& !sub_10012C7E0(v100))
  {
    if (![(__CFString *)v9 caseInsensitiveCompare:@"b282"]|| v100 == 8197)
    {

      v100 = 8197;
      v59 = objc_alloc_init(SFBatteryInfo);
      [v59 setBatteryLevel:0.82];
      [v59 setBatteryState:2];
      [v59 setBatteryType:4];
      v116 = v59;
      v65 = [NSArray arrayWithObjects:&v116 count:1];
      v9 = @"BeatsX1,1";
    }

    else if (![(__CFString *)v9 caseInsensitiveCompare:@"b312"]|| v100 == 8195)
    {

      v100 = 8195;
      v59 = objc_alloc_init(SFBatteryInfo);
      [v59 setBatteryLevel:0.12];
      [v59 setBatteryState:1];
      [v59 setBatteryType:4];
      v115 = v59;
      v65 = [NSArray arrayWithObjects:&v115 count:1];
      v9 = @"PowerBeats3,1";
    }

    else if (![(__CFString *)v9 caseInsensitiveCompare:@"b352"]|| v100 == 8198)
    {

      v100 = 8198;
      v59 = objc_alloc_init(SFBatteryInfo);
      [v59 setBatteryLevel:0.52];
      [v59 setBatteryState:2];
      [v59 setBatteryType:4];
      v114 = v59;
      v65 = [NSArray arrayWithObjects:&v114 count:1];
      v9 = @"BeatsSolo3,1";
    }

    else
    {
      if (![(__CFString *)v9 caseInsensitiveCompare:@"b443"]|| v100 == 8201)
      {

        v100 = 8201;
        v59 = objc_alloc_init(SFBatteryInfo);
        [v59 setBatteryLevel:0.43];
        [v59 setBatteryState:2];
        [v59 setBatteryType:4];
        v113 = v59;
        v65 = [NSArray arrayWithObjects:&v113 count:1];
        v9 = @"BeatsStudio3,2";
      }

      else if (![(__CFString *)v9 caseInsensitiveCompare:@"b453"]|| v100 == 8215)
      {

        v100 = 8215;
        v59 = objc_alloc_init(SFBatteryInfo);
        [v59 setBatteryLevel:0.68];
        [v59 setBatteryState:1];
        [v59 setBatteryType:4];
        v112 = v59;
        v65 = [NSArray arrayWithObjects:&v112 count:1];
        v9 = @"BeatsStudioPro1,1";
      }

      else if (![(__CFString *)v9 caseInsensitiveCompare:@"b465"]|| v100 == 8229)
      {

        v100 = 8229;
        v59 = objc_alloc_init(SFBatteryInfo);
        [v59 setBatteryLevel:0.74];
        [v59 setBatteryState:2];
        [v59 setBatteryType:4];
        v111 = v59;
        v65 = [NSArray arrayWithObjects:&v111 count:1];
        v9 = @"Device1,8229";
      }

      else if (![(__CFString *)v9 caseInsensitiveCompare:@"b487"]|| v100 == 8218)
      {

        v100 = 8218;
        v59 = objc_alloc_init(SFBatteryInfo);
        [v59 setBatteryLevel:0.56];
        [v59 setBatteryState:2];
        [v59 setBatteryType:4];
        v110 = v59;
        v65 = [NSArray arrayWithObjects:&v110 count:1];
        v9 = @"Device1,8218";
      }

      else if (![(__CFString *)v9 caseInsensitiveCompare:@"b419"]|| v100 == 8204)
      {

        v100 = 8204;
        v59 = objc_alloc_init(SFBatteryInfo);
        [v59 setBatteryLevel:0.19];
        [v59 setBatteryState:2];
        [v59 setBatteryType:4];
        v109 = v59;
        v65 = [NSArray arrayWithObjects:&v109 count:1];
        v9 = @"BeatsSoloPro1,1";
      }

      else if (![(__CFString *)v9 caseInsensitiveCompare:@"b364"]|| v100 == 8205)
      {

        v100 = 8205;
        v59 = objc_alloc_init(SFBatteryInfo);
        [v59 setBatteryLevel:0.64];
        [v59 setBatteryState:2];
        [v59 setBatteryType:4];
        v108 = v59;
        v65 = [NSArray arrayWithObjects:&v108 count:1];
        v9 = @"Powerbeats4,1";
      }

      else if (![(__CFString *)v9 caseInsensitiveCompare:@"b515"]|| v100 == 8202)
      {

        v100 = 8202;
        v59 = objc_alloc_init(SFBatteryInfo);
        [v59 setBatteryLevel:0.15];
        [v59 setBatteryState:2];
        [v59 setBatteryType:4];
        v107 = v59;
        v65 = [NSArray arrayWithObjects:&v107 count:1];
        v9 = @"Device1,8202";
      }

      else
      {
        if ([(__CFString *)v9 caseInsensitiveCompare:@"b372"]&& v100 != 8208)
        {
          v59 = objc_alloc_init(SFBatteryInfo);
          [v59 setBatteryLevel:0.75];
          [v59 setBatteryState:1];
          [v59 setBatteryType:4];
          v105 = v59;
          v65 = [NSArray arrayWithObjects:&v105 count:1];
          v44 = v93;
          goto LABEL_118;
        }

        v100 = 8208;
        v59 = objc_alloc_init(SFBatteryInfo);
        [v59 setBatteryLevel:0.15];
        [v59 setBatteryState:2];
        [v59 setBatteryType:4];
        v106 = v59;
        v65 = [NSArray arrayWithObjects:&v106 count:1];
        v9 = @"Device1,8208";
      }

      v44 = v93;
    }
  }

  else
  {
    if (![(__CFString *)v9 caseInsensitiveCompare:@"b188"])
    {
      goto LABEL_92;
    }

    if ([(__CFString *)v9 caseInsensitiveCompare:@"b288"])
    {
      if ([(__CFString *)v9 caseInsensitiveCompare:@"b298"])
      {
        if ([(__CFString *)v9 caseInsensitiveCompare:@"b444"])
        {
          if ([(__CFString *)v9 caseInsensitiveCompare:@"b507"])
          {
            if ([(__CFString *)v9 caseInsensitiveCompare:@"b688"])
            {
              if ([(__CFString *)v9 caseInsensitiveCompare:@"b768e"])
              {
                if ([(__CFString *)v9 caseInsensitiveCompare:@"b768m"])
                {
                  if ([(__CFString *)v9 caseInsensitiveCompare:@"b494"])
                  {
                    if ([(__CFString *)v9 caseInsensitiveCompare:@"b494b"])
                    {
                      if ([(__CFString *)v9 caseInsensitiveCompare:@"b498"])
                      {
                        if ([(__CFString *)v9 caseInsensitiveCompare:@"b698"])
                        {
                          if ([(__CFString *)v9 caseInsensitiveCompare:@"b788"])
                          {
                            if ([(__CFString *)v9 caseInsensitiveCompare:@"b607"])
                            {
                              if ([(__CFString *)v9 caseInsensitiveCompare:@"b463"])
                              {
LABEL_92:

                                v100 = 8194;
                                v9 = @"AirPods1,1";
                                goto LABEL_108;
                              }

                              v57 = +[SFHeadphoneProduct b463];
                              v46 = [v57 bluetoothModel];

                              v47 = +[SFHeadphoneProduct b463];
                            }

                            else
                            {
                              v56 = +[SFHeadphoneProduct b607];
                              v46 = [v56 bluetoothModel];

                              v47 = +[SFHeadphoneProduct b607];
                            }
                          }

                          else
                          {
                            v55 = +[SFHeadphoneProduct b788];
                            v46 = [v55 bluetoothModel];

                            v47 = +[SFHeadphoneProduct b788];
                          }
                        }

                        else
                        {
                          v54 = +[SFHeadphoneProduct b698];
                          v46 = [v54 bluetoothModel];

                          v47 = +[SFHeadphoneProduct b698];
                        }
                      }

                      else
                      {
                        v53 = +[SFHeadphoneProduct b498];
                        v46 = [v53 bluetoothModel];

                        v47 = +[SFHeadphoneProduct b498];
                      }
                    }

                    else
                    {
                      v52 = +[SFHeadphoneProduct b494b];
                      v46 = [v52 bluetoothModel];

                      v47 = +[SFHeadphoneProduct b494b];
                    }
                  }

                  else
                  {
                    v51 = +[SFHeadphoneProduct b494];
                    v46 = [v51 bluetoothModel];

                    v47 = +[SFHeadphoneProduct b494];
                  }
                }

                else
                {
                  v50 = +[SFHeadphoneProduct b768m];
                  v46 = [v50 bluetoothModel];

                  v47 = +[SFHeadphoneProduct b768m];
                }
              }

              else
              {
                v49 = +[SFHeadphoneProduct b768e];
                v46 = [v49 bluetoothModel];

                v47 = +[SFHeadphoneProduct b768e];
              }
            }

            else
            {
              v48 = +[SFHeadphoneProduct b688];
              v46 = [v48 bluetoothModel];

              v47 = +[SFHeadphoneProduct b688];
            }
          }

          else
          {
            v45 = +[SFHeadphoneProduct b507];
            v46 = [v45 bluetoothModel];

            v47 = +[SFHeadphoneProduct b507];
          }

          v58 = v47;
          v100 = [v47 productID];

          v9 = v46;
        }

        else
        {

          v100 = 8203;
          v9 = @"PowerbeatsPro1,1";
        }
      }

      else
      {

        v100 = 8206;
        v9 = @"AirPodsPro1,1";
      }
    }

    else
    {

      v100 = 8207;
      v9 = @"AirPods1,3";
    }

LABEL_108:
    v59 = objc_alloc_init(SFBatteryInfo);
    [v59 setBatteryLevel:fabs(v8)];
    if (v8 < 0.0)
    {
      v60 = 1;
    }

    else
    {
      v60 = 2;
    }

    [v59 setBatteryState:v60];
    [v59 setBatteryType:2];
    v61 = objc_alloc_init(SFBatteryInfo);
    [v61 setBatteryLevel:fabs(v14)];
    if (v14 < 0.0)
    {
      v62 = 1;
    }

    else
    {
      v62 = 2;
    }

    [v61 setBatteryState:v62];
    [v61 setBatteryType:3];
    v63 = objc_alloc_init(SFBatteryInfo);
    [v63 setBatteryLevel:fabs(v11)];
    if (v11 < 0.0)
    {
      v64 = 1;
    }

    else
    {
      v64 = 2;
    }

    [v63 setBatteryState:v64];
    [v63 setBatteryType:1];
    v117[0] = v59;
    v117[1] = v61;
    v117[2] = v63;
    v65 = [NSArray arrayWithObjects:v117 count:3];
  }

LABEL_118:

  v66 = [NSNumber numberWithUnsignedChar:BYTE4(v95)];
  [v44 setObject:v66 forKeyedSubscript:@"csVs"];

  v67 = [NSNumber numberWithUnsignedChar:v101];
  [v44 setObject:v67 forKeyedSubscript:@"cc"];

  v68 = [NSNumber numberWithUnsignedInt:v100];
  [v44 setObject:v68 forKeyedSubscript:@"pid"];

  if ((v96 & 0x100000000) != 0)
  {
    [v44 setObject:&off_10090BCA0 forKeyedSubscript:@"csLC"];
  }

  if (v96)
  {
    [v44 setObject:&off_10090BCA0 forKeyedSubscript:@"csLC"];
  }

  if (v42)
  {
    [v44 setObject:v42 forKeyedSubscript:@"engravingData"];
  }

  if (v43)
  {
    v69 = v6;
    v70 = v42;
    v71 = v100;
    if (v100 == 8207)
    {
      v72 = v97;
      v73 = v97;
      v74 = 8194;
LABEL_129:
      [v73 setProductID2:v74];
    }

    else
    {
      if (v100 == 8194)
      {
        v72 = v97;
        v73 = v97;
        v74 = 8207;
        goto LABEL_129;
      }

      v75 = +[SFHeadphoneProduct airPodsPro];
      v76 = [v75 productID];

      if (v71 == v76)
      {
        v77 = +[SFHeadphoneProduct b698];
        v78 = [v77 productID];
        v72 = v97;
        goto LABEL_135;
      }

      v79 = v100;
      v80 = +[SFHeadphoneProduct b698];
      v81 = [v80 productID];

      v17 = v79 == v81;
      v72 = v97;
      if (v17)
      {
        v77 = +[SFHeadphoneProduct airPodsPro];
        v78 = [v77 productID];
LABEL_135:
        [v72 setProductID2:v78];
      }
    }

    v82 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v72 productID2]);
    [v44 setObject:v82 forKeyedSubscript:@"pid2"];

    [v44 setObject:&off_10090BCB8 forKeyedSubscript:@"subType"];
    v42 = v70;
    v6 = v69;
  }

  v83 = @"00000000-0000-0000-0000-000000000003";
  if ((v94 & 1 & BYTE4(v94)) != 0)
  {
    v83 = @"00000000-0000-0000-0000-000000000004";
  }

  v84 = @"00000000-0000-0000-0000-000000000002";
  if ((v94 & 0x100000000) == 0)
  {
    v84 = v6;
  }

  if (v94)
  {
    v85 = v83;
  }

  else
  {
    v85 = v84;
  }

  [v97 setAdvertisementFields:v44];
  v86 = [NSData dataWithBytes:&unk_1007F5079 length:6];
  [v97 setBluetoothAddress:v86];

  v87 = objc_alloc_init(SFDevice);
  [v87 setBatteryInfo:v65];
  [v87 setBleDevice:v97];
  [v87 setDeviceFlags:v95];
  v88 = [[NSUUID alloc] initWithUUIDString:v85];
  [v87 setIdentifier:v88];

  [v87 setModel:v9];
  [v87 setTestMode:1];
  [v87 setName:v99];

  return v87;
}

+ (id)dataFromHexString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [@"0" stringByAppendingString:v3];

    v3 = v4;
  }

  v5 = [v3 UTF8String];
  v6 = [v3 length];
  v7 = [NSMutableData dataWithCapacity:(v6 + (v6 >> 31)) >> 1];
  v13 = 0;
  v11 = 0;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = v5 + 1;
    do
    {
      *__str = *(v9 - 1);
      v11 = strtoul(__str, 0, 16);
      [v7 appendBytes:&v11 length:1];
      v9 += 2;
      v8 += 2;
    }

    while (v8 < v6);
  }

  return v7;
}

- (BOOL)shouldNotTriggerBecauseDeviceInformationIsTooOld:(id)a3
{
  v3 = a3;
  v4 = [v3 bleDevice];
  v5 = [v4 advertisementFields];
  v6 = [v5 objectForKey:@"sampleTimestamp"];

  if (!v6)
  {
    if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012F29C();
    }

    goto LABEL_14;
  }

  v7 = [v3 bleDevice];
  v8 = [v7 advertisementFields];
  CFDictionaryGetDouble();
  v10 = v9;

  if (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 1000000000.0 - v10 > 5.0)
  {
    if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_14:
    v11 = 1;
    goto LABEL_17;
  }

  if (dword_100970E30 <= 10 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (void)proximityDeviceDidTrigger:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012CBC8;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)ensureTimerStartedForBufferedDevicesPurge
{
  v3 = [(SDProximityPairingAgent *)self bufferedDevicesPurgeBlock];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_10012CEE8;
    v11 = &unk_1008CDD98;
    objc_copyWeak(&v12, &location);
    v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v8);
    [(SDProximityPairingAgent *)self setBufferedDevicesPurgeBlock:v4, v8, v9, v10, v11];

    v5 = dispatch_time(0, 5000000000);
    dispatchQueue = self->_dispatchQueue;
    v7 = [(SDProximityPairingAgent *)self bufferedDevicesPurgeBlock];
    dispatch_after(v5, dispatchQueue, v7);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)removeOldBufferedSamplesFromCache
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(NSMutableDictionary *)self->_bufferedDevices allKeys];
  v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v25)
  {
    v24 = *v27;
    do
    {
      v3 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v26 + 1) + 8 * v3);
        if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
        {
          sub_10012F3FC();
        }

        v5 = [(NSMutableDictionary *)self->_bufferedDevices objectForKeyedSubscript:v4];
        v6 = [v5 bleDevice];
        v7 = [v6 advertisementFields];
        v8 = [v7 objectForKey:@"sampleTimestamp"];

        if (v8)
        {
          v9 = [v5 bleDevice];
          v10 = [v9 advertisementFields];
          CFDictionaryGetDouble();
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v4];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 bleDevice];
          v16 = [v15 advertisementFields];
          v17 = [v16 objectForKey:@"sampleTimestamp"];

          if (v17)
          {
            v18 = [v14 bleDevice];
            v19 = [v18 advertisementFields];
            CFDictionaryGetDouble();
            v21 = v20;

            if (v12 >= v21)
            {
              if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
              {
                sub_10012F43C();
              }

              [(NSMutableDictionary *)self->_devices removeObjectForKey:v4];
            }
          }
        }

        [(NSMutableDictionary *)self->_bufferedDevices removeObjectForKey:v4];

        v3 = v3 + 1;
      }

      while (v25 != v3);
      v22 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v25 = v22;
    }

    while (v22);
  }
}

- (void)_deviceFound:(id)a3 andIsABufferedDevice:(BOOL)a4
{
  v11 = a3;
  v6 = [v11 identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_deviceDiscovery)
  {
    if (dword_100970E30 <= 9 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      v10 = v11;
      LogPrintF();
    }

    if (v6)
    {
      devices = self->_devices;
      if (!devices)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_devices;
        self->_devices = v8;

        devices = self->_devices;
      }

      [(NSMutableDictionary *)devices setObject:v11 forKeyedSubscript:v6, v10];
      [(SDProximityPairingAgent *)self _deviceChanged:v11];
      if (!a4 && (_os_feature_enabled_impl() & 1) == 0)
      {
        [(SDProximityPairingAgent *)self _powerSourcesUpdateForDevice:v11 changes:0xFFFFFFFFLL];
      }
    }
  }
}

- (void)_deviceLost:(id)a3
{
  v10 = a3;
  v4 = [v10 identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100970E30 <= 9 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    v9 = v10;
    LogPrintF();
  }

  if (v4)
  {
    v5 = [v10 model];
    if (v5 == @"Device1,21760" || (v6 = v5) != 0 && (v7 = [(__CFString *)v5 isEqual:@"Device1, 21760"], v6, v6, v7))
    {
      v8 = +[_TtC16DaemoniOSLibrary16SDB389SetupAgent shared];
      [v8 advertisingB389Lost:v4];
    }

    [(NSMutableDictionary *)self->_devices removeObjectForKey:v4, v9];
    [(SDProximityPairingAgent *)self _update];
  }
}

- (void)_fastScanStart:(id)a3
{
  v4 = a3;
  if (!self->_fastScanAlways && !self->_fastScanTimer)
  {
    mach_absolute_time();
    fastScanLastEndTicks = self->_fastScanLastEndTicks;
    if (UpTicksToSeconds() <= 0x63)
    {
      if (dword_100970E30 <= 10 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        v16 = [v4 bleDevice];
        LogPrintF();
      }

      [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:50, v16];
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      fastScanTimer = self->_fastScanTimer;
      self->_fastScanTimer = v6;

      v8 = self->_fastScanTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100125854;
      handler[3] = &unk_1008CDEA0;
      handler[4] = self;
      dispatch_source_set_event_handler(v8, handler);
      v9 = self->_fastScanTimer;
      SFDispatchTimerSet();
      dispatch_resume(self->_fastScanTimer);
      v18[0] = @"scanRate";
      v10 = [(SFDeviceDiscovery *)self->_deviceDiscovery scanRate];
      v11 = "Invalid";
      switch(v10)
      {
        case 0uLL:
          break;
        case 1uLL:
          v11 = "BackgroundOld";
          break;
        case 2uLL:
          v11 = "NormalOld";
          break;
        case 3uLL:
          v11 = "HighOld";
          break;
        case 4uLL:
          v11 = "AggressiveOld";
          break;
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
          goto LABEL_15;
        case 0xAuLL:
          v11 = "Background";
          break;
        default:
          if (v10 == 20)
          {
            v11 = "Normal";
          }

          else if (v10 == 30)
          {
            v11 = "HighNormal";
          }

          else if (v10 == 40)
          {
            v11 = "High";
          }

          else if (v10 == 50)
          {
            v11 = "Aggressive";
          }

          else
          {
LABEL_15:
            v11 = "?";
          }

          break;
      }

      v12 = [NSString stringWithUTF8String:v11];
      v13 = v12;
      v14 = @"?";
      if (v12)
      {
        v14 = v12;
      }

      v18[1] = @"state";
      v19[0] = v14;
      v19[1] = @"Start";
      v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
      SFPowerLogEvent();
    }
  }
}

@end