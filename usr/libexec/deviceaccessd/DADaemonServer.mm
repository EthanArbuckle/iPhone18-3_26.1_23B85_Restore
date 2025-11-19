@interface DADaemonServer
- (BOOL)_checkAppAccessInfoExpired;
- (BOOL)_checkDevicesForAppDataURL:(id)a3;
- (BOOL)_necpSignAddressEndpoint:(id)a3 uuidBytes:(unsigned __int8)a4[16] error:(id *)a5;
- (BOOL)_necpSignHostnameEndpoint:(id)a3 uuidBytes:(unsigned __int8)a4[16] error:(id *)a5;
- (BOOL)_saveAccessoryDevice:(id)a3 oldDeviceReference:(id)a4 bundleID:(id)a5 existingOptions:(unint64_t)a6 removalType:(int64_t)a7 error:(id *)a8;
- (BOOL)alwaysConfirmBeforeAccessoryRemoval;
- (BOOL)checkAppHasMediaDeviceDiscoveryExtension:(id)a3;
- (BOOL)deviceRequiresMultiTechDiscovery:(id)a3;
- (BOOL)devicesPresentWithAppID:(id)a3;
- (BOOL)modifyAccessoryDevice:(id)a3 session:(id)a4 settings:(id)a5 error:(id *)a6;
- (BOOL)modifyDeviceIdentifier:(id)a3 session:(id)a4 settings:(id)a5 error:(id *)a6;
- (BOOL)revokeBluetoothGlobalTCCIfNeededForDeviceAppAccessInfo:(id)a3 device:(id)a4;
- (BOOL)saveDevice:(id)a3 session:(id)a4 allowCreate:(BOOL)a5 error:(id *)a6;
- (BOOL)saveDeviceAccessoryServiceInfo:(id)a3 device:(id)a4 error:(id *)a5;
- (BOOL)setPartialIPsForAppBundleID:(id)a3 partialIPs:(id)a4 error:(id *)a5;
- (BOOL)updateAppAccessInfo:(id)a3 accessoryDevice:(id)a4 removalType:(int64_t)a5 error:(id *)a6;
- (DADaemonServer)init;
- (id)_deauthorizeWiFiAwareDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4;
- (id)_findDADeviceWithBTIdentifier:(id)a3;
- (id)_findDADeviceWithBTPeripheral:(id)a3;
- (id)_findDADeviceWithMigrationConfig:(id)a3;
- (id)_findExistingDeviceWithSSID:(id)a3 bundleID:(id)a4;
- (id)_getAdvName:(id)a3;
- (id)_necpUUIDForAppID:(id)a3 deviceID:(id)a4 uuidBytes:(unsigned __int8)a5[16];
- (id)_parseDADiscoveryConfiguration:(id)a3;
- (id)_reauthorizeWiFiAwareDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4;
- (id)_saveDeviceAppAccessInfo:(id)a3 device:(id)a4 error:(id *)a5;
- (id)_statefulDevicesForAppID:(id)a3;
- (id)_uninstallWiFiAwareDeviceFor:(id)a3 appPairingID:(unint64_t)a4;
- (id)_updateStateForDiscoveryDeviceID:(id)a3 state:(int64_t)a4 appID:(id)a5 referenceDevice:(id)a6;
- (id)_updateWiFiAwareDeviceNameFor:(id)a3 appPairingID:(unint64_t)a4 newName:(id)a5;
- (id)addDiscovery:(id)a3;
- (id)appAccessInfoForDeviceID:(id)a3 appID:(id)a4;
- (id)appBundleInfoAccessoryDiscoveryOptions:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)findAlreadyDiscoveredDeviceForMultiTech:(id)a3 appID:(id)a4 bluetoothIdentifier:(id)a5 wifiAwareOTAName:(id)a6;
- (id)findExistingDeviceForUpgrade:(id)a3 appID:(id)a4;
- (id)generateImageURLForDevice:(id)a3;
- (id)getAuthorizedDevices:(id)a3;
- (id)getDevicesWithFlags:(unint64_t)a3 appID:(id)a4;
- (id)getPartialIPsWithAppBundleID:(id)a3 error:(id *)a4;
- (id)xpcListenerEndpoint;
- (int64_t)_applicationHasBluetoothGlobalTCC:(id)a3;
- (int64_t)_updateDeviceStateForBluetooth:(id)a3 device:(id)a4;
- (int64_t)_updateDeviceStateForWiFiAware:(id)a3 device:(id)a4 oldState:(int64_t)a5;
- (int64_t)_updateDeviceStateForWifi:(id)a3 currentState:(int64_t)a4;
- (int64_t)applicationHasBluetoothGlobalTCC:(id)a3;
- (unint64_t)_authorizeWiFiAwareDeviceFor:(id)a3 pairingKeyStoreID:(id)a4 device:(id)a5 error:(id *)a6;
- (unint64_t)appBundleInfoAccessoryOptions:(id)a3;
- (unint64_t)currentDeviceCapabilities;
- (unsigned)_getAppearance:(id)a3;
- (void)_activate;
- (void)_addSSDPDatatoNWEndpoint:(id)a3 appID:(id)a4;
- (void)_addTXTRecordToNWEndpoint:(id)a3 appID:(id)a4;
- (void)_applicationsDidInstall:(id)a3;
- (void)_applicationsDidUninstall:(id)a3;
- (void)_armBTScanTimer;
- (void)_authorizeWiFiAwareDeviceFor:(id)a3 pairingKeyStoreID:(id)a4 device:(id)a5 completionHandler:(id)a6;
- (void)_checkAndReportLostBTDevices;
- (void)_checkAppAccessInfo;
- (void)_checkDevices;
- (void)_checkDevicesForAllApps;
- (void)_cleanupBTDiscoveryIfPossible:(id)a3;
- (void)_cleanupWiFiDiscoveryIfPossible:(id)a3;
- (void)_deauthorizeWiFiAwareDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5;
- (void)_discoveryEvent:(id)a3 appID:(id)a4;
- (void)_forgetBluetoothDevice:(id)a3;
- (void)_forgetWiFiAwareDevice:(id)a3;
- (void)_forgetWiFiDevice:(id)a3;
- (void)_invalidate;
- (void)_keychainMarkDeviceForRestoreOnSameDevice;
- (void)_keychainVerificationDevicesRestoredOnSameDevice;
- (void)_necpCleanupIfNeeded;
- (void)_necpRemoveUUIDsForAppID:(id)a3 deviceID:(id)a4;
- (void)_necpSignEndpointForDevice:(id)a3 appID:(id)a4;
- (void)_necpUpdateUUIDForAppID:(id)a3 device:(id)a4;
- (void)_necpUpdateUUIDsWithBlock:(id)a3;
- (void)_necpUpdateValueStrings:(id)a3;
- (void)_persistWiFiAwareDevice:(id)a3 device:(id)a4 pairingID:(unint64_t)a5 bundleID:(id)a6;
- (void)_prefsChanged;
- (void)_reauthorizeWiFiAwareDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5;
- (void)_refreshRegistrationForBTConnectionEvents;
- (void)_removeAllDevicesAndAppAccess;
- (void)_removeAllWiFiAwareDevicesFor:(id)a3 completionHandler:(id)a4;
- (void)_reportDeviceAccessoryServicesChanged:(id)a3;
- (void)_reportDeviceConnectionStatusChanged:(id)a3;
- (void)_reportDevicesMigratedEvent:(id)a3 appID:(id)a4;
- (void)_reportDiscoveredBTDevice:(id)a3 advertisementData:(id)a4 RSSI:(id)a5 AppID:(id)a6 DADaemonDiscovery:(id)a7 DADiscovery:(id)a8 config:(id)a9;
- (void)_reportDiscoveryEvent:(id)a3 appID:(id)a4;
- (void)_saveAppDataDict:(id)a3 fileURL:(id)a4;
- (void)_scheduleCheckAppAccessInfo;
- (void)_scheduleCheckDevices;
- (void)_setupBTPairingManager;
- (void)_setupWiFiScanner;
- (void)_startBTScan;
- (void)_stopBTScan;
- (void)_uninstallWiFiAwareDeviceFor:(id)a3 appPairingID:(unint64_t)a4 completionHandler:(id)a5;
- (void)_updateAppInfo:(id)a3 existingInfoPlistOptions:(unint64_t)a4;
- (void)_updateBluetoothScannerIfNeeded;
- (void)_updateDeviceStateTimer;
- (void)_updateLocalDeviceCapabilties;
- (void)_updateLocalNetworkScannerIfNeeded;
- (void)_updateWiFiAwareDeviceNameFor:(id)a3 appPairingID:(unint64_t)a4 newName:(id)a5 completionHandler:(id)a6;
- (void)_updateWiFiDevice:(id)a3 bundleID:(id)a4;
- (void)_updateWiFiManagerIfNeeded;
- (void)_xpcConnectionAccept:(id)a3;
- (void)_xpcListenerEvent:(id)a3;
- (void)activate;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connectToPairedWiFiAwarePublisherIfNeeded:(id)a3 bundleID:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)removeAppsAccess:(id)a3;
- (void)removeDiscovery:(id)a3;
- (void)reportAuthorizedDevices:(id)a3;
- (void)resetWiFiIdentifier:(id)a3;
- (void)respondToBluetoothPairingRequest:(id)a3 accept:(BOOL)a4 pairingType:(int64_t)a5 passkey:(id)a6;
- (void)respondToWiFiAwarePairingRequest:(unint64_t)a3 accept:(BOOL)a4 pairingType:(int64_t)a5 passkey:(id)a6;
- (void)runMigrationWithDiscovery:(id)a3 fromPostOnboarding:(BOOL)a4;
- (void)runSystemDiscovery;
- (void)runUpgradeWithDiscovery:(id)a3;
- (void)updateAppInfo:(id)a3;
- (void)updateDADevicesWithInstalledApps;
@end

@implementation DADaemonServer

- (DADaemonServer)init
{
  v12.receiver = self;
  v12.super_class = DADaemonServer;
  v2 = [(DADaemonServer *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("DADaemon", v3);
    v5 = *(v2 + 11);
    *(v2 + 11) = v4;

    *(v2 + 24) = -1;
    *(v2 + 180) = -1;
    *(v2 + 47) = -1;
    objc_storeStrong(&gDADaemonServer, v2);
    [v2 _updateLocalDeviceCapabilties];
    v2[296] = 0;
    v6 = *(v2 + 33);
    *(v2 + 33) = 0;

    v7 = *(v2 + 35);
    *(v2 + 35) = 0;

    v8 = *(v2 + 38);
    *(v2 + 38) = 0;

    v9 = *(v2 + 32);
    *(v2 + 32) = 0;

    v10 = v2;
  }

  return v2;
}

- (void)dealloc
{
  necpFD = self->_necpFD;
  if ((necpFD & 0x80000000) == 0)
  {
    if (close(necpFD) && *__error())
    {
      __error();
    }

    self->_necpFD = -1;
  }

  expiredDeviceChecktransaction = self->_expiredDeviceChecktransaction;
  self->_expiredDeviceChecktransaction = 0;

  v5.receiver = self;
  v5.super_class = DADaemonServer;
  [(DADaemonServer *)&v5 dealloc];
}

- (id)descriptionWithLevel:(int)a3
{
  v55 = a3;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = sub_100002EE4;
  v93 = sub_100002EF4;
  v94 = 0;
  obj = 0;
  mach_continuous_time();
  startTicksFull = self->_startTicksFull;
  UpTicksToSeconds();
  v6 = CUPrintDuration64();
  mach_absolute_time();
  startTicksAwake = self->_startTicksAwake;
  UpTicksToSeconds();
  CUPrintDuration64();
  v51 = v49 = v6;
  NSAppendPrintF();
  objc_storeStrong(&v94, 0);

  if (self->_deviceStateTimer)
  {
    v8 = (v90 + 5);
    v87 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v8, v87);
  }

  v9 = (v90 + 5);
  v86 = v90[5];
  NSAppendPrintF();
  objc_storeStrong(v9, v86);
  v54 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0, v49, v51];
  v10 = [v54 count];
  v11 = [v54 count];
  v12 = v11 != 0;
  if (v11)
  {
    v13 = (v90 + 5);
    v85 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v13, v85);
    v14 = (v90 + 5);
    v84 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v14, v84);
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_100002EFC;
    v82[3] = &unk_100058B08;
    v82[4] = &v89;
    v83 = a3;
    [v54 enumerateObjectsUsingBlock:{v82, v10}];
    v15 = (v90 + 5);
    v81 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v15, v81);
  }

  v53 = [(DADaemonServer *)self getDevicesWithFlags:1024 appID:0];
  v16 = [v53 count];
  if (v16)
  {
    if (!v11)
    {
      v17 = (v90 + 5);
      v80 = v90[5];
      NSAppendPrintF();
      objc_storeStrong(v17, v80);
    }

    v18 = (v90 + 5);
    v79 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v18, v79);
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100002F6C;
    v77[3] = &unk_100058B08;
    v77[4] = &v89;
    v78 = a3;
    [v53 enumerateObjectsUsingBlock:{v77, v16}];
    v19 = (v90 + 5);
    v76 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v19, v76);
    v12 = 1;
  }

  v20 = [(NSMutableDictionary *)self->_discoveryMap count];
  if (v20)
  {
    if (!v12)
    {
      v21 = (v90 + 5);
      v75 = v90[5];
      NSAppendPrintF();
      objc_storeStrong(v21, v75);
    }

    v22 = (v90 + 5);
    v74 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v22, v74);
    discoveryMap = self->_discoveryMap;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_100002FDC;
    v73[3] = &unk_100058B30;
    v73[4] = &v89;
    [(NSMutableDictionary *)discoveryMap enumerateKeysAndObjectsUsingBlock:v73, v20];
    v24 = (v90 + 5);
    v72 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v24, v72);
    v12 = 1;
  }

  v25 = [(NSMutableSet *)self->_xpcConnections count];
  if (v25)
  {
    if (!v12)
    {
      v26 = (v90 + 5);
      v71 = v90[5];
      NSAppendPrintF();
      objc_storeStrong(v26, v71);
    }

    v27 = (v90 + 5);
    v70 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v27, v70);
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v66 = 0u;
    v28 = self->_xpcConnections;
    v29 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v66 objects:v96 count:16, v25];
    if (v29)
    {
      v30 = *v67;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v67 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v66 + 1) + 8 * i);
          v33 = (v90 + 5);
          v65 = v90[5];
          v50 = CUDescriptionWithLevel();
          NSAppendPrintF();
          objc_storeStrong(v33, v65);

          if (v55 >= 0xB)
          {
            v34 = (v90 + 5);
            v64 = v90[5];
            NSAppendPrintF();
            objc_storeStrong(v34, v64);
          }
        }

        v29 = [(NSMutableSet *)v28 countByEnumeratingWithState:&v66 objects:v96 count:16, v50];
      }

      while (v29);
    }

    v35 = (v90 + 5);
    v63 = v90[5];
    NSAppendPrintF();
    objc_storeStrong(v35, v63);
    v12 = 1;
  }

  if (v55 <= 0x14)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v36 = CFPrefs_CopyKeys();
    v37 = [v36 countByEnumeratingWithState:&v59 objects:v95 count:16];
    if (!v37)
    {
LABEL_40:

      goto LABEL_41;
    }

    v38 = 0;
    v39 = *v60;
    do
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v59 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v12)
          {
            v42 = (v90 + 5);
            v58 = v90[5];
            NSAppendPrintF();
            objc_storeStrong(v42, v58);
          }

          v43 = CFPrefs_CopyTypedValue();
          v44 = (v90 + 5);
          v57 = v90[5];
          v52 = CUPrintNSObjectOneLine();
          NSAppendPrintF();
          objc_storeStrong(v44, v57);

          ++v38;
          v12 = 1;
        }
      }

      v37 = [v36 countByEnumeratingWithState:&v59 objects:v95 count:16];
    }

    while (v37);

    if (v38 >= 1)
    {
      v45 = v90;
      v56 = v90[5];
      NSAppendPrintF();
      v46 = v56;
      v36 = v45[5];
      v45[5] = v46;
      goto LABEL_40;
    }
  }

LABEL_41:
  v47 = v90[5];

  _Block_object_dispose(&v89, 8);

  return v47;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003104;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  self->_startTicksAwake = mach_absolute_time();
  self->_startTicksFull = mach_continuous_time();
  LogSetAppID();
  LogControl();
  if (!self->_xpcListener)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.DeviceAccess.xpc", self->_dispatchQueue, 1uLL);
    xpcListener = self->_xpcListener;
    self->_xpcListener = mach_service;

    v5 = self->_xpcListener;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001230;
    handler[3] = &unk_100058B80;
    handler[4] = self;
    xpc_connection_set_event_handler(v5, handler);
    xpc_connection_activate(self->_xpcListener);
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100003594;
    v20[3] = &unk_100058BA8;
    v20[4] = self;
    notify_register_dispatch("com.apple.DeviceAccess.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, v20);
  }

  if (self->_resetPrivacySettingsToken == -1)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100030DD8();
    }

    v7 = self->_dispatchQueue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000035FC;
    v19[3] = &unk_100058BA8;
    v19[4] = self;
    notify_register_dispatch("com.apple.Preferences.ResetPrivacyWarningsNotification", &self->_resetPrivacySettingsToken, v7, v19);
  }

  if (self->_resetNetworkSettingsToken == -1)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100030E0C();
    }

    v8 = self->_dispatchQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100003664;
    v18[3] = &unk_100058BA8;
    v18[4] = self;
    notify_register_dispatch("com.apple.Preferences.ResetNetworkSettingsNotification", &self->_resetNetworkSettingsToken, v8, v18);
  }

  if (!self->_stateHandler)
  {
    v9 = self->_dispatchQueue;
    v17[5] = _NSConcreteStackBlock;
    v17[6] = 3221225472;
    v17[7] = sub_1000036D8;
    v17[8] = &unk_100058C10;
    v17[9] = self;
    self->_stateHandler = os_state_add_handler();
  }

  if (!self->_systemMonitor)
  {
    v10 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v10;

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000036F4;
    v17[3] = &unk_100058B58;
    v17[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setFirstUnlockHandler:v17];
    v12 = self->_systemMonitor;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100003730;
    v16[3] = &unk_100058B58;
    v16[4] = self;
    [(CUSystemMonitor *)v12 activateWithCompletion:v16];
  }

  [(DADaemonServer *)self _prefsChanged];
  v13 = +[LSApplicationWorkspace defaultWorkspace];
  [v13 addObserver:self];

  [(DADaemonServer *)self updateDADevicesWithInstalledApps];
  if (!self->_cbCentralManager)
  {
    v14 = [[CBCentralManager alloc] initWithDelegate:self queue:self->_dispatchQueue options:0];
    cbCentralManager = self->_cbCentralManager;
    self->_cbCentralManager = v14;
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", self->_dispatchQueue, &stru_100058C50);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003818;
  block[3] = &unk_100058B58;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v3 = self->_xpcConnections;
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v22 + 1) + 8 * i) invalidate];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)v5 removeAllObjects];
  [(NSMutableDictionary *)self->_discoveryMap enumerateKeysAndObjectsUsingBlock:&stru_100058C90];
  [(NSMutableDictionary *)self->_discoveryMap removeAllObjects];
  [(DADaemonServer *)self _necpCleanupIfNeeded];
  [(CBCentralManager *)self->_cbCentralManager stopScan];
  [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:0];
  v10 = +[LSApplicationWorkspace defaultWorkspace];
  [v10 removeObserver:self];

  checkDevicesTimer = self->_checkDevicesTimer;
  if (checkDevicesTimer)
  {
    v12 = checkDevicesTimer;
    dispatch_source_cancel(v12);
    v13 = self->_checkDevicesTimer;
    self->_checkDevicesTimer = 0;
  }

  deviceStateTimer = self->_deviceStateTimer;
  if (deviceStateTimer)
  {
    v15 = deviceStateTimer;
    dispatch_source_cancel(v15);
    v16 = self->_deviceStateTimer;
    self->_deviceStateTimer = 0;
  }

  prefsChangedNotifyToken = self->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    self->_prefsChangedNotifyToken = -1;
  }

  resetPrivacySettingsToken = self->_resetPrivacySettingsToken;
  if (resetPrivacySettingsToken != -1)
  {
    notify_cancel(resetPrivacySettingsToken);
    self->_resetPrivacySettingsToken = -1;
  }

  if (self->_stateHandler)
  {
    os_state_remove_handler();
    self->_stateHandler = 0;
  }

  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    v20 = xpcListener;
    xpc_connection_cancel(v20);
    v21 = self->_xpcListener;
    self->_xpcListener = 0;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100030EF0();
  }
}

- (unint64_t)currentDeviceCapabilities
{
  v2 = self;
  objc_sync_enter(v2);
  localDeviceCapabilities = v2->_localDeviceCapabilities;
  objc_sync_exit(v2);

  return localDeviceCapabilities;
}

- (void)_updateLocalDeviceCapabilties
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_localDeviceCapabilities = 0;
  objc_sync_exit(v2);

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("DADaemon.DeviceCapabilities", v3);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C44;
  block[3] = &unk_100058B58;
  block[4] = v2;
  dispatch_async(v4, block);
}

- (void)_prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefAllowAppleToAppleWiFiAware != v3)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100030F64();
    }

    self->_prefAllowAppleToAppleWiFiAware = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefAlwaysRequireAccessoryRemovalUserConfirmation != v4)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100030FBC();
    }

    self->_prefAlwaysRequireAccessoryRemovalUserConfirmation = v4;
  }

  CFPrefs_GetDouble();
  if (v5 > 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 60.0;
  }

  prefCheckAppAccessInfoSeconds = self->_prefCheckAppAccessInfoSeconds;
  if (v6 != prefCheckAppAccessInfoSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        prefCheckAppAccessInfoSeconds = self->_prefCheckAppAccessInfoSeconds;
      }

      v38 = prefCheckAppAccessInfoSeconds;
      v39 = v6;
      LogPrintF();
    }

LABEL_19:
    self->_prefCheckAppAccessInfoSeconds = v6;
    [(DADaemonServer *)self _scheduleCheckAppAccessInfo:*&v38];
  }

  CFPrefs_GetDouble();
  if (v8 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 604800.0;
  }

  prefCheckAppSessionAccessSeconds = self->_prefCheckAppSessionAccessSeconds;
  if (v9 != prefCheckAppSessionAccessSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }

        prefCheckAppSessionAccessSeconds = self->_prefCheckAppSessionAccessSeconds;
      }

      v38 = prefCheckAppSessionAccessSeconds;
      v39 = v9;
      LogPrintF();
    }

LABEL_28:
    self->_prefCheckAppSessionAccessSeconds = v9;
    [(DADaemonServer *)self _scheduleCheckAppAccessInfo:*&v38];
  }

  v11 = CFPrefs_GetInt64() != 0;
  if (self->_prefBTBlockIncomingClassicCnx != v11)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031014();
    }

    self->_prefBTBlockIncomingClassicCnx = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_prefBTPairingWithMITM != v12)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003106C();
    }

    self->_prefBTPairingWithMITM = v12;
  }

  Int64 = CFPrefs_GetInt64();
  if (Int64 >= 1)
  {
    v14 = Int64;
  }

  else
  {
    *&v14 = NAN;
  }

  *&v15 = self->_prefsBTRSSIThreshold;
  if (v14 != *&v15)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_47;
        }

        *&v15 = self->_prefsBTRSSIThreshold;
      }

      v38 = v15;
      v39 = *&v14;
      LogPrintF();
    }

LABEL_47:
    self->_prefsBTRSSIThreshold = v14;
  }

  CFPrefs_GetDouble();
  if (v16 > 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 10.0;
  }

  prefBTScanRefreshSeconds = self->_prefBTScanRefreshSeconds;
  if (v17 != prefBTScanRefreshSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_56;
        }

        prefBTScanRefreshSeconds = self->_prefBTScanRefreshSeconds;
      }

      v38 = prefBTScanRefreshSeconds;
      v39 = v17;
      LogPrintF();
    }

LABEL_56:
    self->_prefBTScanRefreshSeconds = v17;
  }

  CFPrefs_GetDouble();
  if (v19 > 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 30.0;
  }

  prefsBTTaskTimeoutSeconds = self->_prefsBTTaskTimeoutSeconds;
  if (v20 != prefsBTTaskTimeoutSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_65;
        }

        prefsBTTaskTimeoutSeconds = self->_prefsBTTaskTimeoutSeconds;
      }

      v38 = prefsBTTaskTimeoutSeconds;
      v39 = v20;
      LogPrintF();
    }

LABEL_65:
    self->_prefsBTTaskTimeoutSeconds = v20;
  }

  CFPrefs_GetDouble();
  if (v22 > 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1800.0;
  }

  prefCheckDevicesSeconds = self->_prefCheckDevicesSeconds;
  if (v23 != prefCheckDevicesSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_74;
        }

        prefCheckDevicesSeconds = self->_prefCheckDevicesSeconds;
      }

      v38 = prefCheckDevicesSeconds;
      v39 = v23;
      LogPrintF();
    }

LABEL_74:
    self->_prefCheckDevicesSeconds = v23;
    [(DADaemonServer *)self _scheduleCheckDevices:*&v38];
  }

  CFPrefs_GetDouble();
  v26 = 86400.0;
  if (v25 > 0.0)
  {
    v27 = v25;
  }

  else
  {
    v27 = 86400.0;
  }

  prefDeviceApprovedSeconds = self->_prefDeviceApprovedSeconds;
  if (v27 != prefDeviceApprovedSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_83;
        }

        prefDeviceApprovedSeconds = self->_prefDeviceApprovedSeconds;
      }

      v38 = prefDeviceApprovedSeconds;
      v39 = v27;
      LogPrintF();
    }

LABEL_83:
    self->_prefDeviceApprovedSeconds = v27;
    [(DADaemonServer *)self _scheduleCheckDevices:*&v38];
  }

  CFPrefs_GetDouble();
  if (v29 > 0.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 30.0;
  }

  prefDeviceStateTimeoutSeconds = self->_prefDeviceStateTimeoutSeconds;
  if (v30 != prefDeviceStateTimeoutSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_92;
        }

        prefDeviceStateTimeoutSeconds = self->_prefDeviceStateTimeoutSeconds;
      }

      v38 = prefDeviceStateTimeoutSeconds;
      v39 = v30;
      LogPrintF();
    }

LABEL_92:
    self->_prefDeviceStateTimeoutSeconds = v30;
    [(DADaemonServer *)self _scheduleCheckDevices:*&v38];
  }

  v32 = CFPrefs_GetInt64() != 0;
  if (self->_prefEnforceApprovedExtensions != v32)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000310C4();
    }

    self->_prefEnforceApprovedExtensions = v32;
  }

  CFPrefs_GetDouble();
  if (v33 > 0.0)
  {
    v26 = v33;
  }

  if (v26 != self->_prefAppPartialIPUpdateMinCadenceSeconds)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_105;
        }

        prefAppPartialIPUpdateMinCadenceSeconds = self->_prefAppPartialIPUpdateMinCadenceSeconds;
      }

      LogPrintF();
    }

LABEL_105:
    self->_prefAppPartialIPUpdateMinCadenceSeconds = v26;
  }

  v34 = CFPrefs_GetInt64() != 0;
  if (self->_prefEnabled != v34)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003111C();
    }

    self->_prefEnabled = v34;
  }

  if (CFPrefs_GetInt64())
  {
    v35 = IsAppleInternalBuild() != 0;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;
  if (self->_prefKeychainDisabled != v35)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031174();
    }

    self->_prefKeychainDisabled = v36;
  }
}

- (BOOL)alwaysConfirmBeforeAccessoryRemoval
{
  v2 = self;
  objc_sync_enter(v2);
  prefAlwaysRequireAccessoryRemovalUserConfirmation = v2->_prefAlwaysRequireAccessoryRemovalUserConfirmation;
  objc_sync_exit(v2);

  return prefAlwaysRequireAccessoryRemovalUserConfirmation;
}

- (unint64_t)appBundleInfoAccessoryOptions:(id)a3
{
  v3 = a3;
  v4 = [LSBundleRecord bundleRecordWithBundleIdentifier:v3 allowPlaceholder:1 error:0];
  v5 = [v4 infoDictionary];
  v6 = [v5 objectForKey:@"NSAccessorySetupKitSupports" ofClass:objc_opt_class()];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v10 |= [v13 isEqualToString:{@"Bluetooth", v15}];
        if ([v13 isEqualToString:@"WiFi"])
        {
          v10 |= 2uLL;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000311CC();
  }

  return v10;
}

- (id)appBundleInfoAccessoryDiscoveryOptions:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  if ([(DADaemonServer *)self appBundleInfoAccessoryOptions:v4])
  {
    v6 = [LSBundleRecord bundleRecordWithBundleIdentifier:v4 allowPlaceholder:1 error:0];
    v7 = [v5 copy];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000049C8;
  v7[3] = &unk_100058CB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_applicationsDidInstall:(id)a3
{
  v4 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031224();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004A94;
  v5[3] = &unk_100058CE0;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004BFC;
  v7[3] = &unk_100058CB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_applicationsDidUninstall:(id)a3
{
  v4 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000312A4();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004CFC;
  v6[3] = &unk_100058D08;
  v7 = objc_opt_new();
  v5 = v7;
  [v4 enumerateObjectsUsingBlock:v6];
  [(DADaemonServer *)self removeAppsAccess:v5];
}

- (void)_keychainMarkDeviceForRestoreOnSameDevice
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100002EE4;
  v14 = sub_100002EF4;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005010;
  v9[3] = &unk_100058D30;
  v9[4] = &v10;
  v3 = objc_retainBlock(v9);
  if (self->_prefKeychainDisabled)
  {
    if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v4 = objc_alloc_init(CUKeychainItem);
    [v4 setAccessGroup:@"com.apple.DeviceAccess"];
    [v4 setAccessibleType:6];
    v5 = [NSString stringWithFormat:@"%@-%@", @"com.apple.DeviceAccess", @"DADaemon-SameDevice"];
    [v4 setIdentifier:v5];

    [v4 setInvisible:1];
    [v4 setSyncType:1];
    [v4 setType:@"DADaemon-SameDevice"];
    if (dword_1000603A0 <= 40 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = objc_alloc_init(CUKeychainManager);
    v7 = (v11 + 5);
    obj = v11[5];
    [v6 addOrUpdateOrReAddItem:v4 flags:1 logCategory:&dword_1000603A0 logLabel:@"DAKeychain" error:&obj];
    objc_storeStrong(v7, obj);
    notify_post("com.apple.DeviceAccess.authorizationUpdated");
  }

  (v3[2])(v3);

  _Block_object_dispose(&v10, 8);
}

- (void)_keychainVerificationDevicesRestoredOnSameDevice
{
  if (self->_prefKeychainDisabled)
  {
    sub_100031424();
  }

  else if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    v2 = objc_alloc_init(CUKeychainItem);
    [v2 setAccessGroup:@"com.apple.DeviceAccess"];
    v3 = [NSString stringWithFormat:@"%@-%@", @"com.apple.DeviceAccess", @"DADaemon-SameDevice"];
    [v2 setIdentifier:v3];

    [v2 setSyncType:1];
    [v2 setType:@"DADaemon-SameDevice"];
    v4 = objc_alloc_init(CUKeychainManager);
    v18[0] = 0;
    v5 = [v4 copyItemsMatchingItem:v2 flags:1 error:v18];
    v6 = v18[0];
    v7 = v6;
    if (v5 || [v6 code] != -25300)
    {
      sub_100031344();
      v11 = v18[1];
    }

    else
    {
      v8 = +[NSFileManager defaultManager];
      v9 = +[NSFileManager defaultManager];
      v17 = v7;
      v10 = [v9 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v17];
      v11 = v17;

      v12 = [v10 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
      v13 = [v12 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
      v16 = 0;
      v14 = [v8 removeItemAtURL:v13 error:&v16];
      v15 = v16;
      if ((v14 & 1) == 0 && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000313D0();
      }
    }
  }

  else
  {
    sub_1000312E4();
  }
}

- (void)updateDADevicesWithInstalledApps
{
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031484();
  }

  if (off_100060398())
  {
    sub_100031584();
  }

  else
  {
    v3 = [(DADaemonServer *)self getDevicesWithFlags:1032 appID:0];
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100005774;
    v42[3] = &unk_100058D80;
    v8 = v5;
    v43 = v8;
    v9 = v4;
    v44 = v9;
    v29 = v3;
    [v3 enumerateObjectsUsingBlock:v42];
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000314F0(v9);
    }

    v10 = [LSApplicationRecord enumeratorWithOptions:192];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v38 + 1) + 8 * i) bundleIdentifier];
          if (v15)
          {
            [v6 addObject:v15];
            if ([v9 containsObject:v15])
            {
              [(DADaemonServer *)self updateAppInfo:v15];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v12);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v34 + 1) + 8 * j);
          if (([v6 containsObject:v21] & 1) == 0)
          {
            [v7 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v18);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v8;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v30 + 1) + 8 * k);
          if (([v6 containsObject:v27] & 1) == 0)
          {
            [v7 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v45 count:16];
      }

      while (v24);
    }

    if ([v7 count])
    {
      if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100031534(v7);
      }

      v28 = [v7 allObjects];
      [(DADaemonServer *)self removeAppsAccess:v28];
    }
  }
}

- (void)_removeAllDevicesAndAppAccess
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000315E4();
  }

  v3 = [(DADaemonServer *)self getDevicesWithFlags:1032 appID:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005A6C;
  v10[3] = &unk_100058DD0;
  v10[4] = self;
  [v3 enumerateObjectsUsingBlock:v10];
  v9[1] = 1;
  v4 = container_system_group_path_for_identifier();
  if (v4)
  {
    v5 = v4;
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031600();
    }

    v6 = [NSURL fileURLWithFileSystemRepresentation:v5 isDirectory:1 relativeToURL:0];
    free(v5);
    if (v6)
    {
      v7 = [v6 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
      v8 = +[NSFileManager defaultManager];
      v9[0] = 0;
      [v8 removeItemAtURL:v7 error:v9];
    }

    else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003163C();
    }
  }
}

- (void)removeAppsAccess:(id)a3
{
  v4 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000316B0();
  }

  v5 = [(DADaemonServer *)self getDevicesWithFlags:1032 appID:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005D20;
  v6[3] = &unk_100058E20;
  v6[4] = v5;
  v6[5] = self;
  [v4 enumerateObjectsUsingBlock:v6];
}

- (void)updateAppInfo:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000060F4;
  v7[3] = &unk_100058CB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_updateAppInfo:(id)a3 existingInfoPlistOptions:(unint64_t)a4
{
  v6 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031730();
  }

  v7 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:v6];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002EAD8;
  v9[3] = &unk_100058E48;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v9];
}

- (BOOL)updateAppAccessInfo:(id)a3 accessoryDevice:(id)a4 removalType:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100002EE4;
  v54 = sub_100002EF4;
  v55 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000068E4;
  v47[3] = &unk_100058AE0;
  v49 = &v50;
  v10 = a4;
  v48 = v10;
  v11 = objc_retainBlock(v47);
  v35 = [v10 copy];
  v12 = v10;
  v37 = [v12 copy];
  v13 = [v9 bundleIdentifier];
  if ([v13 length])
  {
    v14 = [v9 deviceIdentifier];
    if (![v14 length])
    {
      if (a6)
      {
        DAErrorF();
        *a6 = v32 = 0;
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_33;
    }

    v15 = [v12 appAccessInfoDeviceMap];

    if (!v15)
    {
      v16 = +[NSMutableDictionary dictionary];
      [v12 setAppAccessInfoDeviceMap:v16];
    }

    v17 = v51;
    obj = v51[5];
    v18 = [(DADaemonServer *)self _saveDeviceAppAccessInfo:v9 device:v12 error:&obj];
    objc_storeStrong(v17 + 5, obj);
    v19 = v51[5];
    if (v19)
    {
      if (a6)
      {
        v32 = 0;
        *a6 = v19;
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }
    }

    else
    {
      v20 = [v12 appAccessInfoDeviceMap];
      [v20 setObject:v18 forKeyedSubscript:v13];

      v21 = [(DADaemonServer *)self generateImageURLForDevice:v12];
      [v12 setDisplayImageFileURL:v21];

      if (-[DADaemonServer _saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:](self, "_saveAccessoryDevice:oldDeviceReference:bundleID:existingOptions:removalType:error:", v12, v37, v13, [v9 accessoryOptions], a5, a6))
      {
        v22 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:v13];
        v23 = [v22 discoveryObj];
        v24 = [v23 flags];

        if ((v24 & 8) != 0)
        {
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v34 = v12;
            LogPrintF();
          }

          [(DADaemonServer *)self _reportDeviceChanged:v12 appID:v13 discovery:1, v34];
          goto LABEL_29;
        }

        v25 = [v18 state];
        v26 = [(DADaemonServer *)self _updateStateForDiscoveryDeviceID:v14 state:v25 appID:v13 referenceDevice:v12];
        if (v25 < 2)
        {
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v34 = v35;
            LogPrintF();
          }

          [(DADaemonServer *)self _reportRemovedDevice:v35 appID:v13 discovery:v26 != 0, v34];
          goto LABEL_28;
        }

        if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v34 = v12;
          LogPrintF();
        }

        [(DADaemonServer *)self _reportDeviceChanged:v12 appID:v13 discovery:v26 != 0, v34];
        if ([v12 upgradeFinished])
        {
          v27 = [[DADeviceEvent alloc] initWithEventType:16 device:v12];
          [(DADaemonServer *)self _discoveryEvent:v27 appID:v13];
        }

        else
        {
          if (![v12 upgradeFailed])
          {
LABEL_28:
            [(DADaemonServer *)self _scheduleCheckAppAccessInfo];

LABEL_29:
            v28 = [v12 SSID];

            if (v28)
            {
              [(DADaemonServer *)self _updateWiFiDevice:v12 bundleID:v13];
            }

            v29 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
            dispatchQueue = self->_dispatchQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000069B0;
            block[3] = &unk_100058E70;
            v39 = v13;
            v40 = v12;
            v45 = a5;
            v41 = v18;
            v42 = v40;
            v43 = self;
            v31 = v29;
            v44 = v31;
            dispatch_async(dispatchQueue, block);
            [(DADaemonServer *)self _keychainMarkDeviceForRestoreOnSameDevice];

            v32 = 1;
            goto LABEL_32;
          }

          v27 = [[DADeviceEvent alloc] initWithEventType:17 device:v12];
          [(DADaemonServer *)self _discoveryEvent:v27 appID:v13];
        }

        goto LABEL_28;
      }
    }

    v32 = 0;
    goto LABEL_32;
  }

  if (a6)
  {
    DAErrorF();
    *a6 = v32 = 0;
  }

  else
  {
    v32 = 0;
  }

LABEL_34:

  (v11[2])(v11);
  _Block_object_dispose(&v50, 8);

  return v32;
}

- (void)_checkAppAccessInfo
{
  if ([(DADaemonServer *)self _checkAppAccessInfoExpired])
  {
    if (self->_prefCheckAppAccessInfoSeconds >= 10.0)
    {
      prefCheckAppAccessInfoSeconds = self->_prefCheckAppAccessInfoSeconds;
    }

    v4 = self->_checkAppAccessInfoTimer;
    if (v4)
    {
      v5 = v4;
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000317B4();
      }

      CUDispatchTimerSet();
    }

    else
    {
      v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      checkAppAccessInfoTimer = self->_checkAppAccessInfoTimer;
      self->_checkAppAccessInfoTimer = v8;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100006D10;
      handler[3] = &unk_100058CB8;
      v5 = v8;
      v13 = v5;
      v14 = self;
      dispatch_source_set_event_handler(v5, handler);
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100031810();
      }

      CUDispatchTimerSet();
      dispatch_activate(v5);
    }

    return;
  }

  v6 = self->_checkAppAccessInfoTimer;
  if (!v6)
  {
    return;
  }

  if (dword_1000603A0 >= 31)
  {
    v7 = v6;
LABEL_22:
    v11 = v7;
    dispatch_source_cancel(v7);
    v10 = self->_checkAppAccessInfoTimer;
    self->_checkAppAccessInfoTimer = 0;

    return;
  }

  if (dword_1000603A0 != -1 || _LogCategory_Initialize())
  {
    sub_100031798();
  }

  v7 = self->_checkAppAccessInfoTimer;
  if (v7)
  {
    goto LABEL_22;
  }
}

- (BOOL)_checkAppAccessInfoExpired
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  [(DADaemonServer *)self getDevicesWithFlags:1032 appID:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 appAccessInfoMap];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100006F58;
        v15[3] = &unk_100058E98;
        *&v15[7] = Current;
        v15[4] = self;
        v15[5] = v7;
        v15[6] = &v20;
        [v8 enumerateKeysAndObjectsUsingBlock:v15];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  expiredDeviceChecktransaction = self->_expiredDeviceChecktransaction;
  if (*(v21 + 24) == 1 && expiredDeviceChecktransaction == 0)
  {
    v11 = os_transaction_create();
    expiredDeviceChecktransaction = self->_expiredDeviceChecktransaction;
  }

  else
  {
    v11 = 0;
  }

  self->_expiredDeviceChecktransaction = v11;

  v12 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v12 & 1;
}

- (void)_checkDevices
{
  self->_deviceStateHasTransient = 0;
  deviceNECPValueStrings = self->_deviceNECPValueStrings;
  self->_deviceNECPValueStrings = 0;

  [(DADaemonServer *)self _checkDevicesForAllApps];
  [(DADaemonServer *)self _updateDeviceStateTimer];
  [(DADaemonServer *)self _necpUpdateValueStrings:self->_deviceNECPValueStrings];
  v4 = self->_deviceNECPValueStrings;
  self->_deviceNECPValueStrings = 0;
}

- (void)_checkDevicesForAllApps
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100002EE4;
  v41 = sub_100002EF4;
  v42 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000076A8;
  v36[3] = &unk_100058D30;
  v36[4] = &v37;
  v2 = objc_retainBlock(v36);
  v3 = +[NSFileManager defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [NSURL fileURLWithPath:v4];
  v6 = (v38 + 5);
  obj = v38[5];
  v26 = [v3 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:&obj];
  v25 = v3;
  objc_storeStrong(v6, obj);

  if (v26)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = v26;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v32;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          v12 = v2;
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [v13 pathExtension];
          v15 = [v14 caseInsensitiveCompare:@"daappdata"] == 0;

          v2 = v12;
          if (v15)
          {
            v9 |= ![(DADaemonServer *)self _checkDevicesForAppDataURL:v13];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v8);

      if (v9)
      {
        if (self->_prefCheckDevicesSeconds >= 10.0)
        {
          prefCheckDevicesSeconds = self->_prefCheckDevicesSeconds;
        }

        v17 = self->_checkDevicesTimer;
        if (v17)
        {
          v18 = v17;
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v23 = CUPrintDurationDouble();
            LogPrintF();
          }

          CUDispatchTimerSet();
          goto LABEL_35;
        }

        v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        checkDevicesTimer = self->_checkDevicesTimer;
        self->_checkDevicesTimer = v20;

        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10000776C;
        handler[3] = &unk_100058CB8;
        v18 = v20;
        v29 = v18;
        v30 = self;
        dispatch_source_set_event_handler(v18, handler);
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v24 = CUPrintDurationDouble();
          LogPrintF();
        }

        CUDispatchTimerSet();
        dispatch_activate(v18);
        v22 = v29;
LABEL_34:

LABEL_35:
        goto LABEL_36;
      }
    }

    else
    {
    }

    v19 = self->_checkDevicesTimer;
    if (v19)
    {
      if (dword_1000603A0 >= 31)
      {
        v18 = v19;
LABEL_29:
        dispatch_source_cancel(v18);
        v22 = self->_checkDevicesTimer;
        self->_checkDevicesTimer = 0;
        goto LABEL_34;
      }

      if (dword_1000603A0 != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      v18 = self->_checkDevicesTimer;
      if (v18)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_36:

  (v2[2])(v2);
  _Block_object_dispose(&v37, 8);
}

- (BOOL)_checkDevicesForAppDataURL:(id)a3
{
  v4 = a3;
  v75 = 0;
  v5 = [[NSDictionary alloc] initWithContentsOfURL:v4 error:&v75];
  v6 = v75;
  v7 = v6;
  if (v5)
  {
    v58 = v4;
    v59 = v6;
    v8 = [v4 lastPathComponent];
    v9 = [v8 stringByDeletingPathExtension];

    Current = CFAbsoluteTimeGetCurrent();
    CFDictionaryGetTypeID();
    v64 = v5;
    CFDictionaryGetTypedValue();
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v69 = v74 = 0u;
    obj = [v69 allKeys];
    v68 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    v11 = 0;
    v12 = 0;
    if (!v68)
    {
      v13 = DAWiFiScanDescriptor;
      goto LABEL_74;
    }

    v66 = *v72;
    v13 = DAWiFiScanDescriptor;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v72 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v71 + 1) + 8 * v14);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v17 = [v69 objectForKeyedSubscript:v15];
        if ((isKindOfClass & 1) == 0)
        {
          v27 = @"bad deviceID class";
          goto LABEL_38;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = @"bad device info class";
          goto LABEL_38;
        }

        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (!(Int64Ranged << 32))
        {
          v27 = @"state unapproved";
          goto LABEL_38;
        }

        v19 = Int64Ranged;
        if (Int64Ranged != 10 && Int64Ranged != 30)
        {
          CFDictionaryGetDouble();
          if (self->_prefDeviceApprovedSeconds - (Current - v36) <= 0.0)
          {
            v62 = [(DADaemonServer *)self _statefulDevicesForAppID:v9];
            v37 = [v62 objectForKeyedSubscript:v15];
            v38 = v37;
            if (v37)
            {
              [v37 setState:30];
            }

            v63 = [(DADaemonServer *)self _updateStateForDiscoveryDeviceID:v15 state:30 appID:v9 referenceDevice:v38, v54];
            if (!v38)
            {
              v38 = objc_alloc_init(DADevice);
              [v38 setIdentifier:v15];
            }

            superclass = v13[23].superclass;
            if (superclass <= 30 && (superclass != -1 || _LogCategory_Initialize()))
            {
              v55 = v9;
              v56 = v38;
              LogPrintF();
            }

            v61 = v38;
            [(DADaemonServer *)self _reportDeviceChanged:v38 appID:v9 discovery:v63 != 0];
            v60 = [v69 objectForKeyedSubscript:v15];
            v40 = [v60 mutableCopy];
            [v40 setObject:&off_10005ABA8 forKeyedSubscript:@"deviceState"];
            if (!v11)
            {
              v11 = [v69 mutableCopy];
            }

            v41 = [v40 copy];
            [v11 setObject:v41 forKeyedSubscript:v15];

            if (!v12)
            {
              v12 = [v64 mutableCopy];
            }

            [v12 setObject:v11 forKeyedSubscript:@"devices"];
            self->_deviceStateHasTransient = 1;

            v13 = DAWiFiScanDescriptor;
          }
        }

        if (v19 == 30 || v19 == 10)
        {
          CFDictionaryGetDouble();
          if (self->_prefDeviceApprovedSeconds - (Current - v22) <= 0.0)
          {
            v27 = @"expired";
LABEL_38:
            v33 = v13[23].superclass;
            if (v33 <= 30 && (v33 != -1 || _LogCategory_Initialize()))
            {
              v56 = v15;
              v57 = v27;
              v54 = v9;
              LogPrintF();
            }

            if (!v11)
            {
              v11 = [v69 mutableCopy];
            }

            [v11 setObject:0 forKeyedSubscript:{v15, v54, v56, v57}];
            if (!v12)
            {
              v12 = [v64 mutableCopy];
            }

            [v12 setObject:v11 forKeyedSubscript:@"devices"];
            [(DADaemonServer *)self _necpRemoveUUIDsForAppID:v9 deviceID:v15];
            v34 = [(DADaemonServer *)self _updateStateForDiscoveryDeviceID:v15 state:0 appID:v9 referenceDevice:0];
            v35 = v34;
            if (!v34)
            {
              v35 = objc_alloc_init(DADevice);
              [v35 setIdentifier:v15];
            }

            [(DADaemonServer *)self _reportRemovedDevice:v35 appID:v9 discovery:v34 != 0];

            v13 = DAWiFiScanDescriptor;
            goto LABEL_49;
          }
        }

        if (v19 == 30 || v19 == 10)
        {
          CFDictionaryGetDouble();
          if (Current - v24 >= self->_prefDeviceStateTimeoutSeconds + -1.0)
          {
            v25 = [NSString alloc];
            v26 = DADeviceStateToString();
            v27 = [v25 initWithFormat:@"state timeout: %@", v26];

            v13 = DAWiFiScanDescriptor;
            if (v27)
            {
              goto LABEL_38;
            }
          }

          self->_deviceStateHasTransient = 1;
        }

        deviceNECPValueStrings = self->_deviceNECPValueStrings;
        if (!deviceNECPValueStrings)
        {
          v29 = objc_alloc_init(NSMutableSet);
          v30 = self->_deviceNECPValueStrings;
          self->_deviceNECPValueStrings = v29;

          deviceNECPValueStrings = self->_deviceNECPValueStrings;
        }

        v31 = [[NSString alloc] initWithFormat:@"%@:%@", v9, v15];
        [(NSMutableSet *)deviceNECPValueStrings addObject:v31];

        v32 = v13[23].superclass;
        if (v32 <= 30 && (v32 != -1 || _LogCategory_Initialize()))
        {
          v27 = CUPrintDurationDouble();
          v56 = v15;
          v57 = v27;
          v54 = v9;
          LogPrintF();
LABEL_49:
        }

        v14 = v14 + 1;
      }

      while (v68 != v14);
      v42 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
      v68 = v42;
      if (!v42)
      {
LABEL_74:

        v5 = v64;
        CFDictionaryGetTypeID();
        v44 = CFDictionaryGetTypedValue();
        v45 = [v44 count];
        v43 = v45 == 0;
        if (v45)
        {
          v46 = v13[23].superclass;
          v4 = v58;
          if (v46 <= 30 && (v46 != -1 || _LogCategory_Initialize()))
          {
            sub_1000318A4(v44);
          }

          v47 = v12;
          v48 = v47;
          if (v12 && ([v47 isEqual:v64] & 1) == 0)
          {
            [(DADaemonServer *)self _saveAppDataDict:v48 fileURL:v58];
          }

LABEL_92:
          v7 = v59;
LABEL_93:

          goto LABEL_96;
        }

        v49 = +[NSFileManager defaultManager];
        v70 = v59;
        v50 = v13;
        v4 = v58;
        v51 = [v49 removeItemAtURL:v58 error:&v70];
        v67 = v70;

        v52 = v50[23].superclass;
        if (v51)
        {
          if (v52 <= 30)
          {
            v43 = 1;
            if (v52 != -1 || _LogCategory_Initialize())
            {
              sub_10003194C();
            }

            goto LABEL_90;
          }
        }

        else if (v52 <= 90)
        {
          v43 = 1;
          if (v52 != -1 || _LogCategory_Initialize())
          {
            sub_1000318F4();
            v59 = v67;
            goto LABEL_92;
          }

LABEL_90:
          v59 = v67;
          goto LABEL_92;
        }

        v59 = v67;
        v43 = 1;
        goto LABEL_92;
      }
    }
  }

  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v12 = CUPrintNSError();
    LogPrintF();
    v43 = 1;
    goto LABEL_93;
  }

  v43 = 1;
LABEL_96:

  return v43;
}

- (BOOL)devicesPresentWithAppID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:a3];
  v4 = [v3 deviceMap];
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)modifyDeviceIdentifier:(id)a3 session:(id)a4 settings:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v30 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v25 = a6;
    v26 = v11;
    v16 = *v28;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = [v18 identifier];
        v20 = [v19 isEqualToString:v10];

        if (v20)
        {
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v23 = v12;
            v24 = v18;
            LogPrintF();
          }

          v11 = v26;
          v21 = [(DADaemonServer *)self modifyAccessoryDevice:v18 session:v26 settings:v12 error:v25, v23, v24];
          goto LABEL_16;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v21 = 1;
    v11 = v26;
  }

  else
  {
    v21 = 1;
  }

LABEL_16:

  return v21;
}

- (id)generateImageURLForDevice:(id)a3
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100002EE4;
  v35 = sub_100002EF4;
  v36 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100008758;
  v28[3] = &unk_100058AE0;
  v30 = &v31;
  v3 = a3;
  v29 = v3;
  v4 = objc_retainBlock(v28);
  v5 = [v3 identifier];
  if (![v5 length])
  {
    v20 = DAErrorF();
    v21 = v32[5];
    v32[5] = v20;

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  obj[1] = 1;
  v6 = container_system_group_path_for_identifier();
  if (!v6)
  {
    goto LABEL_15;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v24 = v6;
    LogPrintF();
  }

  v7 = [NSURL fileURLWithFileSystemRepresentation:v6 isDirectory:1 relativeToURL:0, v24];
  free(v6);
  if (!v7)
  {
    goto LABEL_15;
  }

  v26 = v4;
  v8 = [v7 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  v9 = [v8 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
  v10 = [v9 path];
  v11 = v10;
  if (v9 && v10)
  {
    v25 = v8;
    v12 = [v9 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
    v13 = +[NSFileManager defaultManager];
    v14 = v32 + 5;
    obj[0] = v32[5];
    v15 = [v13 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:obj];
    objc_storeStrong(v14, obj[0]);

    if (v15)
    {
      v16 = [v12 path];
      v17 = [[NSString alloc] initWithFormat:@"%@-Image.%@", v5, @"dadeviceimagedata"];
      v18 = [NSURL fileURLWithPath:v16];
      v19 = [v18 URLByAppendingPathComponent:v17 isDirectory:0];
    }

    else
    {
      v19 = 0;
    }

    v8 = v25;
    v4 = v26;
  }

  else
  {
    v23 = DAErrorF();
    v19 = 0;
    v12 = v32[5];
    v32[5] = v23;
  }

LABEL_16:
  (v4[2])(v4);

  _Block_object_dispose(&v31, 8);

  return v19;
}

- (id)getDevicesWithFlags:(unint64_t)a3 appID:(id)a4
{
  v81 = a4;
  v128 = 0;
  v129 = &v128;
  v130 = 0x3032000000;
  v131 = sub_100002EE4;
  v132 = sub_100002EF4;
  v133 = 0;
  v127[0] = _NSConcreteStackBlock;
  v127[1] = 3221225472;
  v127[2] = sub_100009670;
  v127[3] = &unk_100058D30;
  v127[4] = &v128;
  v80 = objc_retainBlock(v127);
  obj[1] = 1;
  v4 = container_system_group_path_for_identifier();
  if (!v4)
  {
    goto LABEL_12;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v69 = v4;
    LogPrintF();
  }

  v5 = [NSURL fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0, v69];
  free(v4);
  if (!v5)
  {
LABEL_12:
    v15 = v129[5];
    v16 = DANestedErrorF();
    v83 = 0;
    v17 = v129[5];
    v129[5] = v16;
    goto LABEL_61;
  }

  v76 = v5;
  v75 = [v5 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  v82 = [v75 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
  v95 = +[NSMutableDictionary dictionary];
  v74 = [v82 URLByAppendingPathComponent:@"AppAccessInfos" isDirectory:1];
  v77 = [v74 path];
  if (!v81)
  {
    v92 = +[NSFileManager defaultManager];
    v18 = [NSURL fileURLWithPath:v77];
    v19 = v129 + 5;
    v122 = v129[5];
    v20 = [v92 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:0 options:4 error:&v122];
    objc_storeStrong(v19, v122);

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v118 objects:v136 count:16];
    if (v22)
    {
      v23 = *v119;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v119 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = [[NSDictionary alloc] initWithContentsOfURL:*(*(&v118 + 1) + 8 * i)];
          if (v25)
          {
            CFStringGetTypeID();
            v26 = CFDictionaryGetTypedValue();
            if (v26)
            {
              CFDictionaryGetTypeID();
              v27 = CFDictionaryGetTypedValue();
              v114[0] = _NSConcreteStackBlock;
              v114[1] = 3221225472;
              v114[2] = sub_10000984C;
              v114[3] = &unk_100058F10;
              v115 = v95;
              v117 = &v128;
              v28 = v26;
              v116 = v28;
              [v27 enumerateKeysAndObjectsUsingBlock:v114];
            }
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v118 objects:v136 count:16];
      }

      while (v22);
    }

    goto LABEL_24;
  }

  v6 = v81;
  v7 = CBGenerateObfuscatedSHA256HashedString();
  v8 = [[NSString alloc] initWithFormat:@"%@.%@", v7, @"daappInfodata"];
  v9 = [NSURL fileURLWithPath:v77];
  v10 = [v9 URLByAppendingPathComponent:v8 isDirectory:0];

  v11 = [NSDictionary alloc];
  v12 = v129 + 5;
  obj[0] = v129[5];
  v13 = [v11 initWithContentsOfURL:v10 error:obj];
  objc_storeStrong(v12, obj[0]);
  if (v13)
  {
    CFDictionaryGetTypeID();
    v14 = CFDictionaryGetTypedValue();
    v123[0] = _NSConcreteStackBlock;
    v123[1] = 3221225472;
    v123[2] = sub_100009734;
    v123[3] = &unk_100058EE8;
    v124 = v95;
    v125 = &v128;
    [v14 enumerateKeysAndObjectsUsingBlock:v123];
  }

  else
  {
    v67 = v129[5];
    v68 = DANestedErrorF();
    v14 = v129[5];
    v129[5] = v68;
  }

  if (v13)
  {
LABEL_24:
    v79 = +[NSFileManager defaultManager];
    v73 = [v82 URLByAppendingPathComponent:@"AccessoryServiceInfos" isDirectory:1];
    v72 = [v73 path];
    v29 = [NSURL fileURLWithPath:?];
    v30 = v129 + 5;
    v113 = v129[5];
    v31 = [v79 contentsOfDirectoryAtURL:v29 includingPropertiesForKeys:0 options:4 error:&v113];
    objc_storeStrong(v30, v113);

    v85 = +[NSMutableDictionary dictionary];
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v87 = v31;
    v32 = [v87 countByEnumeratingWithState:&v109 objects:v135 count:16];
    if (v32)
    {
      v90 = *v110;
      do
      {
        v33 = 0;
        v93 = v32;
        do
        {
          if (*v110 != v90)
          {
            objc_enumerationMutation(v87);
          }

          v34 = *(*(&v109 + 1) + 8 * v33);
          v35 = objc_autoreleasePoolPush();
          v108 = 0;
          [v34 getResourceValue:&v108 forKey:NSURLNameKey error:0];
          v36 = v108;
          v107 = 0;
          [v34 getResourceValue:&v107 forKey:NSURLIsDirectoryKey error:0];
          v37 = v107;
          if (([v37 BOOLValue] & 1) == 0)
          {
            v38 = [v34 lastPathComponent];
            v39 = [v38 stringByDeletingPathExtension];

            v40 = [v95 objectForKeyedSubscript:v39];
            LOBYTE(v38) = v40 == 0;

            if ((v38 & 1) == 0)
            {
              v41 = [v34 path];
              v42 = [NSURL fileURLWithPath:v41];
              v43 = [NSDictionary dictionaryWithContentsOfURL:v42];
              if (v43)
              {
                CFStringGetTypeID();
                v88 = CFDictionaryGetTypedValue();
                CFDictionaryGetTypeID();
                v44 = CFDictionaryGetTypedValue();
                if (v44)
                {
                  v45 = +[NSMutableDictionary dictionary];
                  v104[0] = _NSConcreteStackBlock;
                  v104[1] = 3221225472;
                  v104[2] = sub_10000994C;
                  v104[3] = &unk_100058F38;
                  v105 = v88;
                  v46 = v45;
                  v106 = v46;
                  [v44 enumerateKeysAndObjectsUsingBlock:v104];
                  [v85 setObject:v46 forKeyedSubscript:v39];
                }
              }
            }
          }

          objc_autoreleasePoolPop(v35);
          v33 = v33 + 1;
        }

        while (v93 != v33);
        v32 = [v87 countByEnumeratingWithState:&v109 objects:v135 count:16];
      }

      while (v32);
    }

    v71 = [v82 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
    v70 = [v71 path];
    v47 = [NSURL fileURLWithPath:?];
    v48 = v129 + 5;
    v103 = v129[5];
    v78 = [v79 contentsOfDirectoryAtURL:v47 includingPropertiesForKeys:0 options:4 error:&v103];
    objc_storeStrong(v48, v103);

    if (v78)
    {
      v83 = +[NSMutableArray array];
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v86 = v78;
      v49 = [v86 countByEnumeratingWithState:&v99 objects:v134 count:16];
      if (v49)
      {
        v91 = *v100;
        do
        {
          v50 = 0;
          v94 = v49;
          do
          {
            if (*v100 != v91)
            {
              objc_enumerationMutation(v86);
            }

            v51 = *(*(&v99 + 1) + 8 * v50);
            v52 = objc_autoreleasePoolPush();
            v98 = 0;
            [v51 getResourceValue:&v98 forKey:NSURLNameKey error:0];
            v53 = v98;
            v97 = 0;
            [v51 getResourceValue:&v97 forKey:NSURLIsDirectoryKey error:0];
            v54 = v97;
            if (([v54 BOOLValue] & 1) == 0)
            {
              v55 = [v51 lastPathComponent];
              v56 = [v55 stringByDeletingPathExtension];

              v57 = [v95 objectForKeyedSubscript:v56];
              v58 = v57 == 0;

              if (!v58)
              {
                v59 = [v51 path];
                v60 = [NSURL fileURLWithPath:v59];
                v61 = [NSDictionary dictionaryWithContentsOfURL:v60];
                v62 = [DADevice alloc];
                v96 = 0;
                v63 = [v62 initWithPersistentDictionaryRepresentation:v61 error:&v96];
                v89 = v96;
                if (v63 && ([v63 flags] & a3) != 0)
                {
                  v64 = [v95 objectForKeyedSubscript:v56];
                  [v63 setAppAccessInfoDeviceMap:v64];

                  v65 = [v85 objectForKeyedSubscript:v56];
                  [v63 setAccessoryServicesInternalMap:v65];

                  [v83 addObject:v63];
                }

                else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }
              }
            }

            objc_autoreleasePoolPop(v52);
            v50 = v50 + 1;
          }

          while (v94 != v50);
          v49 = [v86 countByEnumeratingWithState:&v99 objects:v134 count:16];
        }

        while (v49);
      }
    }

    else
    {
      v83 = 0;
    }

    goto LABEL_60;
  }

  v83 = 0;
LABEL_60:

  v17 = v76;
LABEL_61:

  (v80[2])(v80);
  _Block_object_dispose(&v128, 8);

  return v83;
}

- (void)reportAuthorizedDevices:(id)a3
{
  v4 = a3;
  v5 = [(DADaemonServer *)self getAuthorizedDevices:v4];
  v6 = v5;
  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 identifier];
          if (v12)
          {
            v13 = [(DADaemonServer *)self _updateStateForDiscoveryDeviceID:v12 state:25 appID:v4 referenceDevice:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v20 + 1) + 8 * j);
          [v19 setState:{25, v20}];
          [(DADaemonServer *)self _reportDeviceChanged:v19 appID:v4 discovery:0];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }
  }

  else
  {
    sub_1000319CC();
  }
}

- (void)_reportDeviceConnectionStatusChanged:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9) reportDeviceConnectionStatusChanged:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [v4 identifier];
}

- (void)_reportDeviceAccessoryServicesChanged:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9) reportAccessoryServicesChanged:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)revokeBluetoothGlobalTCCIfNeededForDeviceAppAccessInfo:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_discoveryMap;
  v9 = [v6 bundleIdentifier];
  v10 = [(NSMutableDictionary *)v8 objectForKey:v9];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100031A44();
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100002EE4;
  v32 = sub_100002EF4;
  v33 = 0;
  if (v10)
  {
    v11 = [v10 discoverySet];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000A734;
    v24[3] = &unk_100058F88;
    v12 = v6;
    v25 = v12;
    v26 = v7;
    v27 = &v28;
    [v11 enumerateObjectsUsingBlock:v24];

    v13 = v29[5];
    if (v13)
    {
      v14 = [v13 bluetoothIdentifier];
      v15 = v14 == 0;

      if (!v15 || [v12 state] == 25 || objc_msgSend(v12, "state") == 10)
      {
        v16 = [v12 bundleIdentifier];
        v17 = [(DADaemonServer *)self _applicationHasBluetoothGlobalTCC:v16]== 1;

        if (!v17)
        {
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v22 = [v12 bundleIdentifier];
            LogPrintF();
          }

          v20 = [v12 bundleIdentifier];
          v34[0] = kTCCSetNoKill;
          v34[1] = kTCCResetSyncAuth;
          v35[0] = &__kCFBooleanTrue;
          v35[1] = &__kCFBooleanTrue;
          [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
          v21 = TCCAccessResetForBundleIdWithOptions();

          if (v21)
          {
            v18 = 1;
            goto LABEL_12;
          }

          if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v23 = [v29[5] bundleID];
            LogPrintF();
          }
        }
      }
    }
  }

  v18 = 0;
LABEL_12:
  _Block_object_dispose(&v28, 8);

  return v18;
}

- (void)_scheduleCheckAppAccessInfo
{
  if (!self->_checkAppAccessInfoScheduled)
  {
    self->_checkAppAccessInfoScheduled = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AA78;
    block[3] = &unk_100058B58;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_scheduleCheckDevices
{
  if (!self->_checkDevicesScheduled)
  {
    self->_checkDevicesScheduled = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AB10;
    block[3] = &unk_100058B58;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_saveAppDataDict:(id)a3 fileURL:(id)a4
{
  v5 = a4;
  v13[0] = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:a3 format:200 options:0 error:v13];
  v7 = v13[0];
  v8 = [v5 lastPathComponent];
  v9 = [v8 stringByDeletingPathExtension];

  if (v6)
  {
    v12 = v7;
    v10 = [v6 writeToURL:v5 options:1073741825 error:&v12];
    v11 = v12;

    if (v10)
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100031AC4();
      }
    }

    else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100031A84();
    }
  }

  else
  {
    sub_100031B04();
    v11 = v13[1];
  }
}

- (BOOL)saveDevice:(id)a3 session:(id)a4 allowCreate:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v86 = a3;
  v78 = a4;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_10000BB84;
  v97[3] = &unk_100058FD8;
  v97[5] = &v102;
  v97[6] = &v98;
  v77 = self;
  v97[4] = self;
  v74 = objc_retainBlock(v97);
  v82 = [v78 bundleID];
  if ([v82 length])
  {
    v89 = [v86 identifier];
    if (![v89 length])
    {
      if (a6)
      {
        DAErrorF();
        *a6 = v51 = 0;
      }

      else
      {
        v51 = 0;
      }

      goto LABEL_104;
    }

    v9 = [[NSString alloc] initWithFormat:@"%@.%@", v82, @"daappdata"];
    v10 = NSTemporaryDirectory();
    v11 = [NSURL fileURLWithPath:v10];
    v80 = [v11 URLByAppendingPathComponent:v9 isDirectory:0];
    v73 = v9;

    v96 = 0;
    v12 = [[NSDictionary alloc] initWithContentsOfURL:v80 error:&v96];
    v75 = v96;
    v81 = v12;
    if (!v12 && !v6)
    {
      if (a6)
      {
        DANestedErrorF();
        *a6 = v51 = 0;
      }

      else
      {
        v51 = 0;
      }

      goto LABEL_103;
    }

    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v84 = v13;
    }

    else
    {
      v84 = objc_alloc_init(NSMutableDictionary);
    }

    CFDictionaryGetTypeID();
    v76 = CFDictionaryGetTypedValue();
    if (!v76 && !v6)
    {
      if (a6)
      {
        DAErrorF();
        *a6 = v51 = 0;
      }

      else
      {
        v51 = 0;
      }

      goto LABEL_102;
    }

    v15 = [v76 mutableCopy];
    v16 = v15;
    if (v15)
    {
      v88 = v15;
    }

    else
    {
      v88 = objc_alloc_init(NSMutableDictionary);
    }

    v83 = [v88 objectForKeyedSubscript:v89];
    if (!v83 && !v6)
    {
      if (a6)
      {
        DAErrorF();
        *a6 = v51 = 0;
      }

      else
      {
        v51 = 0;
      }

      goto LABEL_101;
    }

    v17 = [v83 mutableCopy];
    v18 = v17;
    if (v17)
    {
      v85 = v17;
    }

    else
    {
      v85 = objc_alloc_init(NSMutableDictionary);
    }

    v19 = NSDictionaryGetNSNumber();
    v72 = [v19 integerValue];

    v79 = [v86 state];
    Current = CFAbsoluteTimeGetCurrent();
    v21 = Current;
    if (v6)
    {
      if (v79)
      {
        [v86 setApproveTime:Current];
        v22 = [v86 networkEndpoint];
        if (v22 && dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          has_signature = nw_endpoint_has_signature();
          v24 = "no";
          if (has_signature)
          {
            v24 = "yes";
          }

          v68 = v86;
          v69 = v82;
          v65 = v24;
          LogPrintF();
        }

        v27 = [v86 persistentDictionaryRepresentation];
        v28 = [v27 mutableCopy];

        v85 = v28;
        goto LABEL_35;
      }

LABEL_32:
      v71 = 1;
      v26 = v85;
      v85 = 0;
LABEL_46:

      [v88 setObject:v85 forKeyedSubscript:v89];
      goto LABEL_47;
    }

    CFDictionaryGetDouble();
    if (v77->_prefDeviceApprovedSeconds <= v21 - v25 && v79)
    {
      if (a6)
      {
        DAErrorF();
        *a6 = v51 = 0;
        goto LABEL_100;
      }

      goto LABEL_136;
    }

    if (v72)
    {
      if (!v79)
      {
        goto LABEL_32;
      }

      if (v79 != 10)
      {
        v22 = [NSNumber numberWithInteger:?];
        [v85 setObject:v22 forKeyedSubscript:@"deviceState"];
LABEL_35:

        if (!v85)
        {
          v85 = 0;
          v71 = 1;
          [v88 setObject:0 forKeyedSubscript:v89];
LABEL_47:
          if ([v86 state] == 20 && objc_msgSend(v86, "supportsGrouping"))
          {
            ++*(v103 + 6);
            ++*(v99 + 6);
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v32 = [v88 allKeys];
            v33 = [v32 countByEnumeratingWithState:&v92 objects:v106 count:16];
            if (v33)
            {
              v34 = *v93;
              obj = v32;
              do
              {
                for (i = 0; i != v33; i = i + 1)
                {
                  if (*v93 != v34)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v36 = *(*(&v92 + 1) + 8 * i);
                  if (([v36 isEqualToString:v89] & 1) == 0)
                  {
                    v37 = [v88 objectForKeyedSubscript:v36];
                    CFStringGetTypeID();
                    v38 = CFDictionaryGetTypedValue();
                    Int64 = CFDictionaryGetInt64();
                    Int64Ranged = CFDictionaryGetInt64Ranged();
                    if (Int64)
                    {
                      v41 = Int64Ranged;
                      v42 = [v86 protocolType];
                      v43 = [v42 identifier];
                      v44 = [v38 isEqualToString:v43];

                      if (v44)
                      {
                        ++*(v103 + 6);
                        if (v41 == 20)
                        {
                          v45 = [v37 mutableCopy];
                          v46 = [NSNumber numberWithDouble:v21];
                          [v45 setObject:v46 forKeyedSubscript:@"approveTime"];

                          [v88 setObject:v45 forKeyedSubscript:v36];
                          ++*(v99 + 6);
                        }
                      }
                    }
                  }
                }

                v32 = obj;
                v33 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
              }

              while (v33);
            }
          }

          [v84 setObject:v88 forKeyedSubscript:@"devices"];
          if ([v84 isEqual:v81])
          {
            if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v51 = 1;
            goto LABEL_100;
          }

          v91 = 0;
          v47 = [NSPropertyListSerialization dataWithPropertyList:v84 format:200 options:0 error:&v91];
          v48 = v91;

          if (!v47)
          {
            if (a6)
            {
              DANestedErrorF();
              *a6 = v51 = 0;
            }

            else
            {
              v51 = 0;
            }

            goto LABEL_99;
          }

          v90 = v48;
          v49 = [v47 writeToURL:v80 options:1073741825 error:&v90];
          v50 = v90;

          if ((v49 & 1) == 0)
          {
            if (a6)
            {
              DANestedErrorF();
              *a6 = v51 = 0;
            }

            else
            {
              v51 = 0;
            }

LABEL_98:
            v48 = v50;
LABEL_99:

            v75 = v48;
LABEL_100:

LABEL_101:
LABEL_102:

LABEL_103:
LABEL_104:

            goto LABEL_105;
          }

          if (v71)
          {
            if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
LABEL_75:
              v65 = v78;
              v68 = v86;
              LogPrintF();
            }
          }

          else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            goto LABEL_75;
          }

          [(DADaemonServer *)v77 _necpUpdateUUIDForAppID:v82 device:v86, v65, v68];
          [(DADaemonServer *)v77 _scheduleCheckDevices];
          v52 = [(DADaemonServer *)v77 _updateStateForDiscoveryDeviceID:v89 state:v79 appID:v82 referenceDevice:v86];
          v53 = v52;
          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v86;
          }

          [(DADaemonServer *)v77 _reportDeviceChanged:v54 appID:v82 discovery:v52 != 0];
          v55 = [(NSMutableDictionary *)v77->_discoveryMap objectForKeyedSubscript:v82];
          v56 = [v55 deviceMap];
          v57 = v56;
          if (v56)
          {
            v58 = [v56 count];
            v59 = [v57 objectForKeyedSubscript:v89];
            if (v72 == 20 && v79 != 20)
            {
              v60 = [v57 objectForKeyedSubscript:v89];
              v61 = [v60 pendingRemoval];

              if (v61)
              {
                if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                {
                  v66 = v59;
                  LogPrintF();
                }

                v62 = [[DADeviceEvent alloc] initWithEventType:41 device:v59];
                [(DADaemonServer *)v77 _reportDiscoveryEvent:v62 appID:v82];
                [v57 setObject:0 forKeyedSubscript:v89];
              }
            }

            v63 = [v57 count];
            if (v58 && !v63)
            {
              [(DADaemonServer *)v77 _reportDevicesPresentChanged:0 appID:v82];
            }
          }

          v51 = 1;
          goto LABEL_98;
        }

        if (v79 == 30 || v79 == 10)
        {
          CFDictionaryGetDouble();
          if (v29 == 0.0)
          {
            CFDictionarySetDouble();
          }
        }

        else
        {
          [v85 setObject:0 forKeyedSubscript:@"deviceStateStartTime"];
        }

        CFStringGetTypeID();
        v26 = CFDictionaryGetTypedValue();
        CFStringGetTypeID();
        v30 = CFDictionaryGetTypedValue();
        v31 = v30;
        if (!v26 || !v30 || ([v26 isEqualToString:v30] & 1) != 0)
        {

          v71 = 0;
          goto LABEL_46;
        }

        if (a6)
        {
          *a6 = DANestedErrorF();
        }

LABEL_136:
        v51 = 0;
        goto LABEL_100;
      }

      if (!a6)
      {
        goto LABEL_136;
      }
    }

    else if (!a6)
    {
      goto LABEL_136;
    }

    v67 = DADeviceStateToString();
    *a6 = DAErrorF();

    goto LABEL_136;
  }

  if (a6)
  {
    DAErrorF();
    *a6 = v51 = 0;
  }

  else
  {
    v51 = 0;
  }

LABEL_105:

  (v74[2])(v74);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);

  return v51;
}

- (BOOL)saveDeviceAccessoryServiceInfo:(id)a3 device:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 associatedBundleID];
  if ([v10 length])
  {
    v11 = [v9 identifier];
    if ([v11 length])
    {
      v72[1] = 1;
      v12 = container_system_group_path_for_identifier();
      if (v12)
      {
        v13 = v12;
        v67 = a5;
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100031C34();
        }

        v56 = self;
        v14 = [NSURL fileURLWithFileSystemRepresentation:v13 isDirectory:1 relativeToURL:0];
        free(v13);
        if (v14)
        {
          v15 = [v14 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
          [v15 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
          v16 = [v15 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
          v17 = [v16 path];
          v18 = v17;
          if (!v16 || !v17)
          {
            sub_100031CEC();
            v48 = 0;
            goto LABEL_46;
          }

          v64 = v17;
          v65 = v14;
          v66 = v15;
          [v16 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
          v63 = v16;
          v19 = [v16 URLByAppendingPathComponent:@"AccessoryServiceInfos" isDirectory:1];
          v20 = +[NSFileManager defaultManager];
          v21 = [v20 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v67];

          v62 = v19;
          if (!v21)
          {
            v48 = 0;
            v15 = v66;
            goto LABEL_45;
          }

          [v19 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
          v22 = [v19 path];
          v23 = [[NSString alloc] initWithFormat:@"%@.%@", v11, @"daserviceInfodata"];
          v60 = v22;
          v24 = [NSURL fileURLWithPath:v22];
          v59 = v23;
          v25 = [v24 URLByAppendingPathComponent:v23 isDirectory:0];

          v26 = [v25 path];
          v27 = +[NSFileManager defaultManager];
          v58 = v26;
          v28 = [v27 fileExistsAtPath:v26];
          v29 = 0;
          if (v28)
          {
            v29 = [[NSDictionary alloc] initWithContentsOfURL:v25 error:0];
          }

          v30 = [v29 mutableCopy];
          v31 = v30;
          v68 = v9;
          v61 = v10;
          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = objc_alloc_init(NSMutableDictionary);
          }

          v33 = v32;
          v69 = v25;

          v34 = [v8 authorizationLevel];
          v35 = [v8 name];
          CFDictionaryGetTypeID();
          v36 = CFDictionaryGetTypedValue();
          v37 = [v36 mutableCopy];
          v38 = v37;
          v70 = v11;
          if (v37)
          {
            v39 = v37;
          }

          else
          {
            v39 = objc_alloc_init(NSMutableDictionary);
          }

          v40 = v39;

          v41 = [v36 objectForKeyedSubscript:v35];
          v42 = [v41 mutableCopy];
          v43 = v42;
          if (v42)
          {
            v44 = v42;
          }

          else
          {
            v44 = objc_alloc_init(NSMutableDictionary);
          }

          v45 = v44;

          if (v34 == 1)
          {
            v46 = 0;
          }

          else
          {
            v47 = [v8 persistentDictionaryRepresentation];
            v46 = [v47 mutableCopy];

            v45 = v47;
          }

          [v40 setObject:v46 forKeyedSubscript:v35];
          [v33 setObject:v70 forKeyedSubscript:@"identifier"];
          [v33 setObject:v40 forKeyedSubscript:@"services"];
          if ([v33 isEqual:v29])
          {
            if (dword_1000603A0 > 30)
            {
              v48 = 1;
              v15 = v66;
            }

            else
            {
              v15 = v66;
              if (dword_1000603A0 != -1 || _LogCategory_Initialize())
              {
                sub_100031CAC();
              }

              v48 = 1;
            }

            goto LABEL_44;
          }

          v57 = v8;
          v72[0] = 0;
          v49 = [NSPropertyListSerialization dataWithPropertyList:v33 format:200 options:0 error:v72];
          v50 = v72[0];
          v51 = v50;
          if (!v49)
          {
            if (v67)
            {
              DANestedErrorF();
              *v67 = v48 = 0;
            }

            else
            {
              v48 = 0;
            }

            v55 = v51;
            goto LABEL_42;
          }

          v71 = v50;
          v52 = [v49 writeToURL:v69 options:1073741825 error:&v71];
          v55 = v71;

          if ((v52 & 1) == 0)
          {
            v15 = v66;
            if (v67)
            {
              DANestedErrorF();
              *v67 = v48 = 0;
            }

            else
            {
              v48 = 0;
            }

            goto LABEL_43;
          }

          if (v46)
          {
            if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_41;
            }
          }

          else if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_41;
          }

          sub_100031C70();
LABEL_41:
          v53 = [v68 accessoryServicesInternalMap];
          [v53 setObject:v57 forKeyedSubscript:v35];

          [(DADaemonServer *)v56 _reportDeviceAccessoryServicesChanged:v68];
          v48 = 1;
LABEL_42:
          v15 = v66;
LABEL_43:

          v8 = v57;
LABEL_44:

          v9 = v68;
          v10 = v61;
          v11 = v70;
LABEL_45:

          v18 = v64;
          v14 = v65;
          v16 = v63;
LABEL_46:

LABEL_55:
          goto LABEL_56;
        }
      }
    }

    else if (a5)
    {
      DAErrorF();
      *a5 = v48 = 0;
      goto LABEL_55;
    }

    v48 = 0;
    goto LABEL_55;
  }

  if (a5)
  {
    DAErrorF();
    *a5 = v48 = 0;
  }

  else
  {
    v48 = 0;
  }

LABEL_56:

  return v48;
}

- (id)_saveDeviceAppAccessInfo:(id)a3 device:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 bundleIdentifier];
  if ([v10 length])
  {
    v11 = [v8 deviceIdentifier];
    if ([v11 length])
    {
      v102 = [(DADaemonServer *)self appBundleInfoAccessoryOptions:v10];
      error[1] = 1;
      v12 = container_system_group_path_for_identifier();
      if (v12)
      {
        v13 = v12;
        v89 = self;
        v103 = a5;
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100031D1C();
        }

        v14 = [NSURL fileURLWithFileSystemRepresentation:v13 isDirectory:1 relativeToURL:0];
        free(v13);
        if (v14)
        {
          v105 = v9;
          v15 = [v14 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100031D58();
          }

          error[0] = 0;
          if (!CFURLSetResourcePropertyForKey(v15, _kCFURLIsExcludedFromUnencryptedBackupKey, kCFBooleanTrue, error) && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100031D98(error);
          }

          v113 = 0;
          [(__CFURL *)v15 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:&v113];
          v16 = v113;
          v17 = [(__CFURL *)v15 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
          v107 = [v17 URLByAppendingPathComponent:@"AppAccessInfos" isDirectory:1];
          v112 = v16;
          [v17 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:&v112];
          v18 = v112;

          v110 = 0;
          v111 = 0;
          v97 = v17;
          [v17 getResourceValue:&v111 forKey:NSURLIsExcludedFromBackupKey error:&v110];
          v99 = v111;
          v19 = v110;

          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v84 = v99;
            v86 = v19;
            LogPrintF();
          }

          v96 = v19;
          v20 = v107;
          [v107 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:{0, v84, v86}];
          v21 = +[NSFileManager defaultManager];
          v22 = [v21 createDirectoryAtURL:v107 withIntermediateDirectories:1 attributes:0 error:v103];

          v98 = v15;
          if (!v22)
          {
            v51 = 0;
            goto LABEL_122;
          }

          v94 = v14;
          v23 = [v107 path];
          v92 = CBGenerateObfuscatedSHA256HashedString();
          v24 = [[NSString alloc] initWithFormat:@"%@.%@", v92, @"daappInfodata"];
          v93 = v23;
          v25 = [NSURL fileURLWithPath:v23];
          v91 = v24;
          v26 = [v25 URLByAppendingPathComponent:v24 isDirectory:0];

          v100 = v26;
          v27 = [[NSDictionary alloc] initWithContentsOfURL:v26 error:0];
          v28 = [v27 mutableCopy];
          v29 = v28;
          if (v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = objc_alloc_init(NSMutableDictionary);
          }

          v31 = v30;

          CFDictionaryGetTypeID();
          v90 = CFDictionaryGetTypedValue();
          v32 = [v90 mutableCopy];
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = objc_alloc_init(NSMutableDictionary);
          }

          v35 = v34;

          v104 = v35;
          v36 = [v35 objectForKeyedSubscript:v11];
          v37 = NSDictionaryGetNSNumber();
          v38 = [v37 unsignedIntegerValue];

          v106 = v36;
          v39 = [v36 mutableCopy];
          v40 = v39;
          v95 = v11;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = objc_alloc_init(NSMutableDictionary);
          }

          v42 = v41;
          v101 = v27;

          Current = CFAbsoluteTimeGetCurrent();
          v44 = [v8 state];
          v45 = NSDictionaryGetNSNumber();
          v46 = [v45 integerValue];

          v47 = [v8 appDiscoveryConfiguration];
          if (([v47 flags] & 0x40) != 0)
          {
            v49 = [v105 flags];
            v50 = v49;
            v48 = (v49 >> 10) & 1;

            if ((v50 & 0x400) != 0 && v38)
            {
              v20 = v107;
              if ((v38 & 0x40000000) == 0)
              {
                if (v103)
                {
                  DAErrorF();
                  *v103 = v51 = 0;
                }

                else
                {
                  v51 = 0;
                }

                v9 = v105;
                v11 = v95;
                goto LABEL_120;
              }
            }

            else
            {
              v20 = v107;
            }
          }

          else
          {

            LODWORD(v48) = 0;
          }

          if (!v44)
          {
            v54 = 0;
            v9 = v105;
            v11 = v95;
LABEL_93:
            v55 = v101;

            v42 = v54;
LABEL_94:
            [v104 setObject:v42 forKeyedSubscript:v11];
            [v31 setObject:v104 forKeyedSubscript:@"devices"];
            [v31 setObject:v10 forKeyedSubscript:@"bundleID"];
            if ([v31 isEqual:v55])
            {
              if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_100031F34();
              }

              v51 = v8;
              goto LABEL_121;
            }

            v69 = v11;
            if (v42)
            {
              v70 = [v9 discoveryConfiguration];
              v71 = [v70 bluetoothIdentifier];

              if (v71)
              {
                v72 = [v9 discoveryConfiguration];
                v73 = [v72 bluetoothIdentifier];

                cbCentralManager = v89->_cbCentralManager;
                v115 = v73;
                v75 = [NSArray arrayWithObjects:&v115 count:1];
                v76 = [(CBCentralManager *)cbCentralManager retrievePeripheralsWithIdentifiers:v75];

                if (v76 && [v76 count])
                {
                  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100031E74();
                  }

                  v77 = [v76 firstObject];
                  [v77 tag:@"DA_ASK_RETAIN_DEVICE"];
                }
              }
            }

            v109 = 0;
            v78 = [NSPropertyListSerialization dataWithPropertyList:v31 format:200 options:0 error:&v109];
            v79 = v109;
            v80 = v79;
            if (v78)
            {
              v108 = v79;
              v81 = [v78 writeToURL:v100 options:1073741825 error:&v108];
              v82 = v108;

              if (v81)
              {
                v9 = v105;
                if (v42)
                {
                  v20 = v107;
                  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100031EB4();
                  }

                  v51 = [[DADeviceAppAccessInfo alloc] initWithPersistentDictionaryRepresentation:v42 error:v103];
                }

                else
                {
                  v20 = v107;
                  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100031EF4();
                  }

                  v51 = 0;
                }

                goto LABEL_119;
              }

              if (v103)
              {
                DANestedErrorF();
                *v103 = v51 = 0;
              }

              else
              {
                v51 = 0;
              }
            }

            else
            {
              if (v103)
              {
                DANestedErrorF();
                *v103 = v51 = 0;
              }

              else
              {
                v51 = 0;
              }

              v82 = v80;
            }

            v9 = v105;
            v20 = v107;
LABEL_119:

            v11 = v69;
LABEL_120:
            v55 = v101;
LABEL_121:

            v14 = v94;
LABEL_122:

LABEL_135:
            goto LABEL_136;
          }

          v9 = v105;
          if (!((v102 != 0) | v48 & 1))
          {
            v11 = v95;
            v55 = v101;
            goto LABEL_94;
          }

          [v8 setApproveTime:Current];
          if ([(DADaemonServer *)v89 deviceRequiresMultiTechDiscovery:v105])
          {
            v52 = DAWiFiScanDescriptor;
            v53 = (![v105 bluetoothSetupFinished] || (objc_msgSend(v105, "wifiAwareSetupFinished") & 1) == 0) && v44 == 10;
            v57 = v53 | [v105 upgradeInProgress];
          }

          else
          {
            v57 = v44 == 10 && v46 != 10;
            v52 = DAWiFiScanDescriptor;
          }

          if ([v105 requiresWiFiAwareSetup] && v44 != v46)
          {
            v57 = 1;
          }

          if ((([v105 flags] & 8) == 0) | v48 & 1)
          {
            if (v48)
            {
              [v8 setAccessoryOptions:{objc_msgSend(v8, "accessoryOptions") | 0x40000000}];
            }

            if (!v57)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (!v57)
            {
              [v8 setAccessoryOptions:{objc_msgSend(v8, "accessoryOptions") | 0xFFFFFFFFBFFFFFFFLL}];
              v65 = [v8 accessoryOptions];
              if ((v65 & 1) != 0 && (v102 & 1) == 0 && ([v8 setAccessoryOptions:{objc_msgSend(v8, "accessoryOptions") & 0xFFFFFFFFFFFFFFFELL}], superclass = v52[23].superclass, superclass <= 50) && (superclass != -1 || _LogCategory_Initialize()))
              {
                sub_100031DF4();
                if ((v65 & 2) == 0)
                {
                  goto LABEL_67;
                }
              }

              else if ((v65 & 2) == 0)
              {
                goto LABEL_67;
              }

              if ((v102 & 2) == 0)
              {
                [v8 setAccessoryOptions:{objc_msgSend(v8, "accessoryOptions") & 0xFFFFFFFFFFFFFFFDLL}];
                v67 = v52[23].superclass;
                if (v67 <= 50 && (v67 != -1 || _LogCategory_Initialize()))
                {
                  sub_100031E34();
                }
              }

              goto LABEL_67;
            }

            [v8 setAccessoryOptions:v102];
          }

          v58 = [(DADaemonServer *)v89 _updateDeviceStateForBluetooth:v8 device:v105];
          [v8 setState:v58];
          [v8 setState:{-[DADaemonServer _updateDeviceStateForWifi:currentState:](v89, "_updateDeviceStateForWifi:currentState:", v105, v58)}];
          v44 = [(DADaemonServer *)v89 _updateDeviceStateForWiFiAware:v8 device:v105 oldState:v46];
          [v8 setState:v44];
LABEL_67:
          [v8 setState:v44];
          v59 = [v105 discoveryConfiguration];
          if (v59)
          {
            [v8 setAppDiscoveryConfiguration:v59];
          }

          v11 = v95;
          if (v48)
          {
            [v8 endTime];
            if (v60 == 0.0)
            {
              [v8 setEndTime:Current + v89->_prefCheckAppSessionAccessSeconds];
            }
          }

          if (v102)
          {
            v61 = [(DADaemonServer *)v89 revokeBluetoothGlobalTCCIfNeededForDeviceAppAccessInfo:v8 device:v105];
            v62 = v52[23].superclass;
            if (v62 <= 50)
            {
              v63 = v61;
              if (v62 != -1 || _LogCategory_Initialize())
              {
                v64 = "no";
                if (v63)
                {
                  v64 = "yes";
                }

                v85 = v8;
                v87 = v105;
                v88 = v64;
                LogPrintF();
              }
            }
          }

          v68 = [v8 persistentDictionaryRepresentation];
          v54 = [v68 mutableCopy];

          v42 = v68;
          v20 = v107;
          goto LABEL_93;
        }
      }
    }

    else if (a5)
    {
      DAErrorF();
      *a5 = v51 = 0;
      goto LABEL_135;
    }

    v51 = 0;
    goto LABEL_135;
  }

  if (a5)
  {
    DAErrorF();
    *a5 = v51 = 0;
  }

  else
  {
    v51 = 0;
  }

LABEL_136:

  return v51;
}

- (BOOL)modifyAccessoryDevice:(id)a3 session:(id)a4 settings:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 bundleID];
  v13 = [v9 identifier];
  if ([v13 length])
  {
    v115[1] = 1;
    v14 = container_system_group_path_for_identifier();
    if (v14)
    {
      v105 = v10;
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100031F74();
      }

      v103 = a6;
      v15 = [NSURL fileURLWithFileSystemRepresentation:v14 isDirectory:1 relativeToURL:0];
      free(v14);
      if (!v15)
      {
        LOBYTE(v14) = 0;
        goto LABEL_115;
      }

      v16 = [v15 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
      v17 = [v16 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
      v18 = [v17 path];
      v113 = v17;
      v102 = v16;
      if (!v17 || !v18)
      {
        if (v103)
        {
          v83 = v18;
          DAErrorF();
          *v103 = LOBYTE(v14) = 0;
          v18 = v83;
        }

        else
        {
          LOBYTE(v14) = 0;
        }

        goto LABEL_114;
      }

      v101 = v18;
      v19 = [v17 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
      v20 = +[NSFileManager defaultManager];
      v21 = [v20 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v103];

      if (!v21)
      {
        LOBYTE(v14) = 0;
        goto LABEL_113;
      }

      v100 = v15;
      v112 = v19;
      v22 = [v19 path];
      v23 = [[NSString alloc] initWithFormat:@"%@.%@", v13, @"dadevicedata"];
      v99 = v22;
      v24 = [NSURL fileURLWithPath:v22];
      v98 = v23;
      v25 = [v24 URLByAppendingPathComponent:v23 isDirectory:0];

      v26 = [v25 path];
      v27 = [v9 appAccessInfoMap];
      v28 = [v27 objectForKeyedSubscript:v12];

      v114 = v28;
      v111 = [v28 appDiscoveryConfiguration];
      v29 = +[NSFileManager defaultManager];
      v96 = v26;
      LODWORD(v28) = [v29 fileExistsAtPath:v26];

      v30 = 0;
      if (v28)
      {
        v31 = [[NSDictionary alloc] initWithContentsOfURL:v25 error:0];

        v30 = v31 != 0;
      }

      v97 = v25;
      v14 = [v9 appAccessInfoMap];
      v32 = [v14 objectForKeyedSubscript:v12];
      v33 = [v32 state];

      LOBYTE(v14) = 1;
      if (!v30)
      {
        v19 = v112;
        goto LABEL_112;
      }

      v19 = v112;
      if (v33 < 2)
      {
LABEL_112:

        v15 = v100;
LABEL_113:

        v18 = v101;
LABEL_114:

LABEL_115:
        v10 = v105;
        goto LABEL_116;
      }

      if (v33 == 10)
      {
        if (v103)
        {
          DAErrorF();
          *v103 = LOBYTE(v14) = 0;
        }

        else
        {
          LOBYTE(v14) = 0;
        }

        goto LABEL_112;
      }

      v94 = v13;
      v106 = [v9 bluetoothClassicAddress];
      v34 = [v9 name];
      v35 = [v9 SSID];
      v36 = [v11 displayName];
      v37 = [v11 SSID];
      v104 = [v9 wifiAwareDevicePairingID];
      v108 = [v11 bridgingIdentifier];
      v107 = [v11 iconType];
      v38 = [v11 userInitiated];
      v39 = [v9 discoveryConfiguration];
      v90 = [v39 flags];

      v40 = [v9 flags];
      v89 = [v111 flags];
      v109 = v37;
      v95 = v12;
      v92 = v35;
      v93 = v34;
      v91 = v36;
      if (v38)
      {
        if (v37 && ([v35 isEqualToString:v37] & 1) == 0)
        {
          [v9 setSSID:v37];
          v41 = 1;
        }

        else
        {
          v41 = 0;
        }

        v88 = v11;
        if (v36 && ([v34 isEqualToString:v36] & 1) == 0)
        {
          [v9 setName:v36];
          if (v104)
          {
            v45 = [v9 name];
            if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_100031FB0(v9);
            }

            v46 = -[DADaemonServer _updateWiFiAwareDeviceNameFor:appPairingID:newName:](self, "_updateWiFiAwareDeviceNameFor:appPairingID:newName:", v12, [v114 wifiAwarePairingID], v45);
            v41 = v46 == 0;
          }

          else
          {
            v41 = 1;
          }
        }

        v47 = [v107 identifier];
        v48 = [v9 protocolType];
        v49 = [v48 identifier];
        v50 = [v47 isEqualToString:v49];

        if (v50)
        {
          [v9 setProtocolType:v107];
          v41 = 1;
        }

        v51 = [v9 bluetoothIdentifier];

        v42 = 0;
        v11 = v88;
        v43 = DAWiFiScanDescriptor;
        if (v51 && (v40 & 0x40) == 0)
        {
          v44 = v108;
          if ((v90 & 2) != 0)
          {
            if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_10003201C();
            }

            v42 = 1;
          }

LABEL_39:
          if (v33 != 20)
          {
            if (v33 == 25)
            {
              v53 = v38;
            }

            else
            {
              v53 = 1;
            }

            if ((v53 & 1) == 0)
            {
              superclass = v43[23].superclass;
              v12 = v95;
              if (superclass <= 90 && (superclass != -1 || _LogCategory_Initialize()))
              {
                v85 = v9;
                LogPrintF();
                v52 = 0;
                if (v41)
                {
                  v54 = 0;
                  goto LABEL_95;
                }
              }

              else
              {
                v54 = 0;
                v52 = 0;
                if (v41)
                {
                  goto LABEL_95;
                }
              }

LABEL_100:
              v81 = v43[23].superclass;
              if (v81 > 30)
              {
                LOBYTE(v14) = 1;
                v13 = v94;
                v19 = v112;
                v80 = v92;
              }

              else
              {
                v13 = v94;
                v19 = v112;
                v80 = v92;
                if (v81 != -1 || _LogCategory_Initialize())
                {
                  sub_100032090();
                }

                LOBYTE(v14) = 1;
              }

              goto LABEL_111;
            }

            v54 = 0;
            v52 = 0;
LABEL_94:
            v12 = v95;
            if (v41)
            {
              goto LABEL_95;
            }

            goto LABEL_100;
          }

          [v114 setState:25];
          [v9 setState:25];
          v52 = 0;
          if (v44 && !v106)
          {
            if ([0 isEqualToData:v44])
            {
              v52 = 0;
            }

            else
            {
              v56 = [v44 bytes];
              v52 = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *v56, v56[1], v56[2], v56[3], v56[4], v56[5]];
              if (v52)
              {
                [v9 setBluetoothClassicAddress:v44];
              }
            }
          }

          v57 = [v9 bluetoothClassicAddress];

          if (!v57)
          {
            v41 |= (v89 >> 4) & 1;
            goto LABEL_73;
          }

          [v9 setBluetoothClassicAddress:v44];
          v58 = [v9 bluetoothIdentifier];
          cbCentralManager = self->_cbCentralManager;
          v116 = v58;
          v60 = [NSArray arrayWithObjects:&v116 count:1];
          v61 = [(CBCentralManager *)cbCentralManager retrievePeripheralsWithIdentifiers:v60];

          if (![v61 count])
          {
LABEL_72:

            LOBYTE(v41) = 1;
            v44 = v108;
LABEL_73:
            if (v109)
            {
              v65 = [v9 discoveryConfiguration];
              v66 = [v65 hotspotSSIDPrefixes];
              v67 = [v66 firstObject];

              if (v67 && ([v109 hasPrefix:v67] & 1) == 0)
              {
                v68 = v43[23].superclass;
                if (v68 <= 90 && (v68 != -1 || _LogCategory_Initialize()))
                {
                  v86 = v67;
                  v87 = v9;
                  v85 = v109;
                  LogPrintF();
                }

                [v114 setState:{0, v85, v86, v87}];
                [v9 setState:0];
                v54 = 1;
              }

              else
              {
                [v9 setSSID:v109];
                v54 = 0;
              }

              v44 = v108;

              LOBYTE(v41) = 1;
            }

            else
            {
              v54 = 0;
            }

            v69 = [v9 bluetoothIdentifier];

            v70 = v42 ^ 1;
            if (!v69)
            {
              v70 = 1;
            }

            if ((v70 & 1) == 0)
            {
              v71 = v43[23].superclass;
              v12 = v95;
              if (v71 <= 90 && (v71 != -1 || _LogCategory_Initialize()))
              {
                sub_10003201C();
              }

              [v114 setState:0];
              [v9 setState:0];
              btPairingManager = self->_btPairingManager;
              if (btPairingManager)
              {
                v73 = [(DABluetoothPairingManager *)btPairingManager getCurrentTaskBluetoothIdentifier];
                v74 = [v9 bluetoothIdentifier];
                v75 = [v73 isEqual:v74];

                if (v75)
                {
                  [(DABluetoothPairingManager *)self->_btPairingManager cancelCurrentTask];
                }

                v44 = v108;
              }

LABEL_95:
              v115[0] = 0;
              v76 = [(DADaemonServer *)self updateAppAccessInfo:v114 accessoryDevice:v9 removalType:0 error:v115, v85];
              v77 = v115[0];
              v78 = v77;
              if (v76)
              {
                if (v54)
                {
                  v19 = v112;
                  if (v103)
                  {
                    DAErrorF();
                    *v103 = LOBYTE(v14) = 0;
                  }

                  else
                  {
                    LOBYTE(v14) = 0;
                  }
                }

                else
                {
                  v79 = v43[23].superclass;
                  v19 = v112;
                  if (v79 <= 30)
                  {
                    v13 = v94;
                    v80 = v92;
                    if (v79 != -1 || _LogCategory_Initialize())
                    {
                      LogPrintF();
                    }

                    LOBYTE(v14) = 1;
                    goto LABEL_110;
                  }

                  LOBYTE(v14) = 1;
                }

                v13 = v94;
              }

              else
              {
                v13 = v94;
                if (v103)
                {
                  v84 = v77;
                  LOBYTE(v14) = 0;
                  *v103 = v78;
                }

                else
                {
                  LOBYTE(v14) = 0;
                }

                v19 = v112;
              }

              v80 = v92;
LABEL_110:

LABEL_111:
              goto LABEL_112;
            }

            goto LABEL_94;
          }

          v62 = [v61 objectAtIndexedSubscript:0];
          v63 = v43[23].superclass;
          if (v63 <= 40 && (v63 != -1 || _LogCategory_Initialize()))
          {
            sub_100032050();
            if (v62)
            {
              goto LABEL_61;
            }
          }

          else if (v62)
          {
LABEL_61:
            v64 = v43[23].superclass;
            if (v64 <= 40 && (v64 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
              [v62 setCustomProperty:@"ASK_RELATED_RADIO_ADDRESS" value:{v52, v61, v52}];
            }

            else
            {
              [v62 setCustomProperty:@"ASK_RELATED_RADIO_ADDRESS" value:{v52, v85, v86}];
            }
          }

          goto LABEL_72;
        }
      }

      else
      {
        v42 = 0;
        v41 = 0;
        v43 = DAWiFiScanDescriptor;
      }

      v44 = v108;
      goto LABEL_39;
    }
  }

  else if (a6)
  {
    DAErrorF();
    *a6 = LOBYTE(v14) = 0;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

LABEL_116:

  return v14;
}

- (BOOL)_saveAccessoryDevice:(id)a3 oldDeviceReference:(id)a4 bundleID:(id)a5 existingOptions:(unint64_t)a6 removalType:(int64_t)a7 error:(id *)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v12 identifier];
  if (![v15 length])
  {
    if (a8)
    {
      DAErrorF();
      *a8 = v58 = 0;
      goto LABEL_108;
    }

LABEL_107:
    v58 = 0;
    goto LABEL_108;
  }

  error[1] = 1;
  v16 = container_system_group_path_for_identifier();
  if (!v16)
  {
    goto LABEL_107;
  }

  v17 = v16;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000320D0();
  }

  v78 = a8;
  v18 = [NSURL fileURLWithFileSystemRepresentation:v17 isDirectory:1 relativeToURL:0];
  free(v17);
  if (!v18)
  {
    goto LABEL_107;
  }

  v19 = [v18 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  error[0] = 0;
  if (!CFURLSetResourcePropertyForKey(v19, _kCFURLIsExcludedFromUnencryptedBackupKey, kCFBooleanTrue, error) && dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003210C(error);
  }

  [(__CFURL *)v19 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
  v77 = v19;
  v20 = [(__CFURL *)v19 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
  v21 = [v20 path];
  v76 = v21;
  if (!v20 || !v21)
  {
    sub_100031CEC();
    v58 = 0;
    goto LABEL_104;
  }

  v75 = v18;
  v85 = v14;
  v80 = v13;
  [v20 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
  v22 = [v20 URLByAppendingPathComponent:@"DADevices" isDirectory:1];
  v23 = +[NSFileManager defaultManager];
  v24 = [v23 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v78];

  if (!v24)
  {
    v58 = 0;
    goto LABEL_103;
  }

  [v22 setResourceValue:&__kCFBooleanFalse forKey:NSURLIsExcludedFromBackupKey error:0];
  v25 = [v22 path];
  v26 = [[NSString alloc] initWithFormat:@"%@.%@", v15, @"dadevicedata"];
  v74 = v25;
  v27 = [NSURL fileURLWithPath:v25];
  v73 = v26;
  v28 = [v27 URLByAppendingPathComponent:v26 isDirectory:0];

  v29 = [v28 path];
  v30 = +[NSFileManager defaultManager];
  v79 = v29;
  v31 = [v30 fileExistsAtPath:v29];
  v32 = 0;
  if (v31)
  {
    v32 = [[NSDictionary alloc] initWithContentsOfURL:v28 error:0];
  }

  v84 = v28;

  v33 = [v32 mutableCopy];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = objc_alloc_init(NSMutableDictionary);
  }

  v36 = v35;

  CFStringGetTypeID();
  v83 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v82 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v37 = CFDictionaryGetTypedValue();
  v72 = v37;
  if (v37)
  {
    v81 = [[NSUUID alloc] initWithUUIDString:v37];
  }

  else
  {
    v81 = 0;
  }

  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v38 = [v12 appAccessInfoMap];
  v96[0] = _NSConcreteStackBlock;
  v96[1] = 3221225472;
  v96[2] = sub_10000ECB8;
  v96[3] = &unk_100059000;
  v96[4] = &v97;
  [v38 enumerateKeysAndObjectsUsingBlock:v96];

  if (a7 != 2 && a7 != 6 && v98[3] || [v12 state] == 1)
  {
    v39 = [v12 persistentDictionaryRepresentation];
    v87 = [v39 mutableCopy];

    v36 = v39;
  }

  else
  {
    v87 = 0;
  }

  [(DADaemonServer *)self _refreshRegistrationForBTConnectionEvents];
  v40 = [v87 isEqual:v32];
  v41 = [v12 state];
  v42 = v40 ^ 1;
  if (v41 == 1)
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v58 = 1;
    goto LABEL_102;
  }

  if (v87)
  {
    v95 = 0;
    v43 = [NSPropertyListSerialization dataWithPropertyList:v87 format:200 options:0 error:&v95];
    v44 = v95;
    v45 = v44;
    if (v43)
    {
      v94 = v44;
      v46 = [v43 writeToURL:v84 options:1073741825 error:&v94];
      v47 = v94;

      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        v67 = v12;
        v68 = v47;
        LogPrintF();
      }

      if (v46)
      {

        if (a7 != 5)
        {
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v67 = v85;
            v68 = v12;
            LogPrintF();
          }

          v58 = 1;
          if (a7 != 1 || !v81)
          {
            goto LABEL_101;
          }

          v61 = [v80 appAccessInfoMap];
          v62 = [v61 objectForKeyedSubscript:v85];
          v63 = [v62 wifiAwarePairingID];

          if (v63)
          {
            if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              v64 = [v12 name];
              v69 = [v12 identifier];
              LogPrintF();
            }

            v88[0] = _NSConcreteStackBlock;
            v88[1] = 3221225472;
            v88[2] = sub_10000ED4C;
            v88[3] = &unk_100059028;
            v47 = v47;
            v89 = v47;
            v90 = v12;
            v91 = v85;
            [(DADaemonServer *)self _uninstallWiFiAwareDeviceFor:v91 appPairingID:v63 completionHandler:v88];
          }

          goto LABEL_100;
        }

        goto LABEL_59;
      }

      if (!v78)
      {
        goto LABEL_117;
      }

      v66 = DANestedErrorF();
    }

    else
    {
      if (!v78)
      {
        v47 = v44;
        goto LABEL_117;
      }

      v66 = DANestedErrorF();
      v47 = v45;
    }

    *v78 = v66;
LABEL_117:

LABEL_118:
    v58 = 0;
    goto LABEL_101;
  }

  v48 = +[NSFileManager defaultManager];
  v49 = [v48 fileExistsAtPath:v79];

  if (v49)
  {
    v50 = +[NSFileManager defaultManager];
    v93 = 0;
    v51 = [v50 removeItemAtURL:v84 error:&v93];
    v52 = v93;

    if ((v51 & 1) == 0)
    {
      if (v78)
      {
        DANestedErrorF();
        *v78 = v58 = 0;
      }

      else
      {
        v58 = 0;
      }

      v47 = v52;
      goto LABEL_101;
    }

    v71 = v52;
    v70 = [v12 displayImageFileURL];
    v53 = [v70 path];
    if (v53 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v54 fileExistsAtPath:v53], v54, v55))
    {
      v56 = +[NSFileManager defaultManager];
      v92 = v71;
      v57 = [v56 removeItemAtURL:v70 error:&v92];
      v47 = v92;

      if ((v57 & 1) == 0)
      {
        if (v78)
        {
          *v78 = DANestedErrorF();
        }

        goto LABEL_118;
      }
    }

    else
    {
      v47 = v71;
    }

    if (!a7)
    {
LABEL_53:
      if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_100;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v47 = 0;
    if (!a7)
    {
      goto LABEL_53;
    }
  }

LABEL_59:
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    if ((a7 - 1) <= 4)
    {
      v59 = off_1000597D8[a7 - 1];
    }

    LogPrintF();
  }

  if (a7 <= 6 && ((1 << a7) & 0x64) != 0 || !v98[3] && a7 <= 4 && ((1 << a7) & 0x1A) != 0)
  {
    if (v83)
    {
      v60 = [[NSUUID alloc] initWithUUIDString:v83];
      [(DADaemonServer *)self _forgetBluetoothDevice:v60];
    }

    if (v82)
    {
      [(DADaemonServer *)self _forgetWiFiDevice:v82];
    }

    v58 = 1;
    if (a7 != 6 && v81)
    {
      [(DADaemonServer *)self _forgetWiFiAwareDevice:v80];
    }

    goto LABEL_101;
  }

  if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_100;
  }

LABEL_55:
  LogPrintF();
LABEL_100:
  v58 = 1;
LABEL_101:

LABEL_102:
  _Block_object_dispose(&v97, 8);

LABEL_103:
  v13 = v80;
  v14 = v85;
  v18 = v75;
LABEL_104:

LABEL_108:
  return v58;
}

- (void)_updateDeviceStateTimer
{
  deviceStateTimer = self->_deviceStateTimer;
  if (self->_deviceStateHasTransient)
  {
    if (!deviceStateTimer)
    {
      v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v5 = self->_deviceStateTimer;
      self->_deviceStateTimer = v4;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000F024;
      handler[3] = &unk_100058CB8;
      handler[4] = v4;
      handler[5] = self;
      dispatch_source_set_event_handler(v4, handler);
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032230(self);
      }

      prefDeviceStateTimeoutSeconds = self->_prefDeviceStateTimeoutSeconds;
      CUDispatchTimerSet();
      dispatch_activate(v4);
    }

    return;
  }

  if (!deviceStateTimer)
  {
    return;
  }

  if (dword_1000603A0 >= 31)
  {
    v7 = deviceStateTimer;
LABEL_14:
    v9 = v7;
    dispatch_source_cancel(v7);
    v8 = self->_deviceStateTimer;
    self->_deviceStateTimer = 0;

    return;
  }

  if (dword_1000603A0 != -1 || _LogCategory_Initialize())
  {
    sub_100032214();
  }

  v7 = self->_deviceStateTimer;
  if (v7)
  {
    goto LABEL_14;
  }
}

- (id)addDiscovery:(id)a3
{
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v5 bundleID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 bundleID];
  }

  v9 = v8;

  v10 = [v4 configuration];
  v11 = [v4 configurations];
  v12 = [v4 flags];
  if (self->_cbCentralManager)
  {
    if (v9)
    {
LABEL_6:
      v13 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:v9];
      if (!v13)
      {
        v13 = objc_alloc_init(DADaemonDiscovery);
        discoveryMap = self->_discoveryMap;
        if (!discoveryMap)
        {
          v15 = objc_alloc_init(NSMutableDictionary);
          v16 = self->_discoveryMap;
          self->_discoveryMap = v15;

          discoveryMap = self->_discoveryMap;
        }

        [(NSMutableDictionary *)discoveryMap setObject:v13 forKeyedSubscript:v9];
        v17 = [(DADaemonServer *)self _statefulDevicesForAppID:v9];
        [(DADaemonDiscovery *)v13 setStatefulDeviceMap:v17];
      }

      v18 = [(DADaemonDiscovery *)v13 discoverySet];
      if (!v18)
      {
        v18 = objc_alloc_init(NSMutableSet);
        [(DADaemonDiscovery *)v13 setDiscoverySet:v18];
      }

      [v18 addObject:v4];
      v19 = [(DADaemonDiscovery *)v13 discoveryObj];
      if (v19)
      {
        v20 = v19;
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000322A4(v18);
        }
      }

      else
      {
        v24 = objc_alloc_init(DADiscovery);
        [(DADaemonDiscovery *)v13 setDiscoveryObj:v24];
        [v24 setBundleID:v9];
        [v24 setConfiguration:v10];
        [v24 setConfigurations:v11];
        [v24 setFlags:{objc_msgSend(v24, "flags") | v12}];
        [v24 setDirect:1];
        [v24 setDispatchQueue:self->_dispatchQueue];
        v30 = _NSConcreteStackBlock;
        v31 = 3221225472;
        v32 = sub_10000F474;
        v33 = &unk_100059050;
        v20 = v24;
        v34 = v20;
        v35 = v13;
        v36 = self;
        v37 = v9;
        [v20 setEventHandler:&v30];
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1000322F4();
        }

        [v20 activate];
      }

      v25 = [(DADaemonDiscovery *)v13 deviceMap];
      v26 = [v25 allValues];
      v27 = v26;
      v28 = &__NSArray0__struct;
      if (v26)
      {
        v28 = v26;
      }

      v23 = v28;

      goto LABEL_29;
    }
  }

  else
  {
    v21 = [[CBCentralManager alloc] initWithDelegate:self queue:self->_dispatchQueue options:0];
    cbCentralManager = self->_cbCentralManager;
    self->_cbCentralManager = v21;

    if (v9)
    {
      goto LABEL_6;
    }
  }

  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032334();
  }

  v23 = 0;
LABEL_29:

  return v23;
}

- (void)removeDiscovery:(id)a3
{
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v5 bundleID];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [v4 bundleID];

    if (!v7)
    {
      sub_100032404();
      goto LABEL_16;
    }
  }

  v8 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:v7];
  v9 = [v8 discoveryObj];
  v10 = [v8 discoverySet];
  [v10 removeObject:v4];
  if ([v10 count])
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032374(v10);
    }
  }

  else
  {
    v11 = [v8 deviceMap];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F73C;
    v14[3] = &unk_100059078;
    v14[4] = self;
    [v11 enumerateKeysAndObjectsUsingBlock:v14];
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000323C4();
    }

    v12 = [v8 deviceMap];
    v13 = [v12 count];

    [v8 setDeviceMap:0];
    [v8 setDiscoveryObj:0];
    [v8 setDiscoverySet:0];
    [(NSMutableDictionary *)self->_discoveryMap setObject:0 forKeyedSubscript:v7];
    [v9 invalidate];
    if (v13)
    {
      [(DADaemonServer *)self _reportDevicesPresentChanged:0 appID:v7];
    }

    [(DADaemonServer *)self _necpCleanupIfNeeded];
    [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:0];
    [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:0];
  }

LABEL_16:
}

- (void)_reportDevicesMigratedEvent:(id)a3 appID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) reportDevicesMigrated:v6 appID:{v7, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_reportDiscoveryEvent:(id)a3 appID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_xpcConnections;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) reportDiscoveryEvent:v6 appID:{v7, v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)runMigrationWithDiscovery:(id)a3 fromPostOnboarding:(BOOL)a4
{
  v93 = a3;
  v6 = [v93 bundleID];
  if (!v6)
  {
    sub_1000326B8();
    goto LABEL_116;
  }

  if (!self->_cbCentralManager)
  {
    v7 = [[CBCentralManager alloc] initWithDelegate:self queue:self->_dispatchQueue options:0];
    cbCentralManager = self->_cbCentralManager;
    self->_cbCentralManager = v7;
  }

  v9 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:v6];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003247C(v9);
  }

  v87 = v9;
  v10 = self->_cbCentralManager;
  v109 = _NSConcreteStackBlock;
  v110 = 3221225472;
  v111 = sub_10001098C;
  v112 = &unk_1000590F0;
  v113 = v6;
  v94 = v113;
  [CBCentralManager retrieveBundle:v10 sessionCountWithCompletion:"retrieveBundle:sessionCountWithCompletion:"];
  v11 = +[NSMutableArray array];
  v12 = [v93 configuration];
  v95 = self;
  v88 = v6;
  v86 = v12;
  if (v12)
  {
    v13 = v12;
    v14 = [v12 bluetoothIdentifier];
    if (v14 || ([v13 networkHotspotSSID], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      goto LABEL_11;
    }

    if ([v13 wifiAwarePairingID])
    {
      v34 = [v13 wifiAwareServiceName];

      if (v34)
      {
LABEL_11:
        if (a4 || ([(DADaemonServer *)self _findDADeviceWithMigrationConfig:v13], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v16 = [v13 bluetoothIdentifier];

          if (v16)
          {
            v17 = [v13 bluetoothIdentifier];
            v15 = objc_alloc_init(DADevice);
            v18 = +[NSUUID UUID];
            v19 = [v18 UUIDString];
            [v15 setIdentifier:v19];

            v20 = [v13 bluetoothIdentifier];
            [v15 setBluetoothIdentifier:v20];

            if ([(CBCentralManager *)self->_cbCentralManager state]== 5)
            {
              v21 = self->_cbCentralManager;
              v118 = v17;
              v22 = [NSArray arrayWithObjects:&v118 count:1];
              v23 = [(CBCentralManager *)v21 retrievePeripheralsWithIdentifiers:v22];

              if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_100032508();
              }

              if ([v23 count])
              {
                v24 = v15;
                v25 = v11;
                v26 = [v23 objectAtIndex:0];
                v27 = [v26 name];

                if (v27)
                {
                  v28 = [v26 name];
                  [v24 setBluetoothOTAName:v28];
                }

                v11 = v25;
                v15 = v24;
              }
            }

            else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000324C0(&self->_cbCentralManager);
            }

            [v15 setDiscoveryConfiguration:v13];
            [v15 setFlags:8];
            v31 = [v13 displayName];
            [v15 setName:v31];

            v32 = [v13 networkHotspotSSID];

            if (v32)
            {
              v33 = [v13 networkHotspotSSID];
              [v15 setSSID:v33];
            }

            if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_100032548();
            }

LABEL_36:

            [v11 addObject:v15];
LABEL_78:

            goto LABEL_79;
          }

          v15 = 0;
        }

        if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100032588();
        }

        v17 = [v93 configuration];
        v29 = [v17 associationIdentifier];
        v30 = [v15 discoveryConfiguration];
        [v30 setAssociationIdentifier:v29];

        goto LABEL_36;
      }
    }
  }

  v89 = a4;
  v35 = [v93 configurations];
  v36 = [v35 count];

  if (v36)
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v15 = [v93 configurations];
    v37 = [v15 countByEnumeratingWithState:&v105 objects:v117 count:16];
    if (v37)
    {
      v38 = *v106;
      v39 = v89;
      v40 = v37;
      do
      {
        v41 = 0;
        v91 = v40;
        do
        {
          if (*v106 != v38)
          {
            objc_enumerationMutation(v15);
          }

          v42 = *(*(&v105 + 1) + 8 * v41);
          if ((v39 || (-[DADaemonServer _findDADeviceWithMigrationConfig:](v95, "_findDADeviceWithMigrationConfig:", *(*(&v105 + 1) + 8 * v41)), (v43 = objc_claimAutoreleasedReturnValue()) == 0)) && ([v42 bluetoothIdentifier], v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
          {
            v44 = v15;
            v45 = v11;
            v46 = [v42 bluetoothIdentifier];
            v43 = objc_alloc_init(DADevice);
            v47 = +[NSUUID UUID];
            v48 = [v47 UUIDString];
            [v43 setIdentifier:v48];

            v49 = [v42 bluetoothIdentifier];
            [v43 setBluetoothIdentifier:v49];

            if ([(CBCentralManager *)v95->_cbCentralManager state]== 5)
            {
              v50 = v95->_cbCentralManager;
              v116 = v46;
              v51 = [NSArray arrayWithObjects:&v116 count:1];
              v52 = [(CBCentralManager *)v50 retrievePeripheralsWithIdentifiers:v51];

              if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_100032508();
              }

              if ([v52 count])
              {
                v53 = [v52 objectAtIndex:0];
                v54 = [v53 name];

                if (v54)
                {
                  v55 = [v53 name];
                  [v43 setBluetoothOTAName:v55];
                }
              }
            }

            else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_1000325C8(&v95->_cbCentralManager);
            }

            [v43 setDiscoveryConfiguration:v42];
            [v43 setFlags:8];
            v57 = [v42 displayName];
            [v43 setName:v57];

            v58 = [v42 networkHotspotSSID];

            v11 = v45;
            v39 = v89;
            if (v58)
            {
              v59 = [v42 networkHotspotSSID];
              [v43 setSSID:v59];
            }

            v15 = v44;
            if (dword_1000603A0 > 50)
            {
              v40 = v91;
            }

            else
            {
              v40 = v91;
              if (dword_1000603A0 != -1 || _LogCategory_Initialize())
              {
                sub_100032548();
              }
            }
          }

          else
          {
            if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              sub_100032588();
            }

            v46 = [v42 associationIdentifier];
            v56 = [v43 discoveryConfiguration];
            [v56 setAssociationIdentifier:v46];
          }

          [v11 addObject:v43];
          v41 = v41 + 1;
        }

        while (v40 != v41);
        v60 = [v15 countByEnumeratingWithState:&v105 objects:v117 count:16];
        v40 = v60;
      }

      while (v60);
      self = v95;
    }

    goto LABEL_78;
  }

LABEL_79:
  v90 = +[NSMutableArray array];
  v92 = +[NSMutableArray array];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v61 = v11;
  v62 = [v61 countByEnumeratingWithState:&v101 objects:v115 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v102;
    do
    {
      for (i = 0; i != v63; i = i + 1)
      {
        if (*v102 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = *(*(&v101 + 1) + 8 * i);
        v67 = [v66 identifier];
        if (v67)
        {
          v68 = [v93 bundleID];
          if (v68)
          {
            v69 = [(DADaemonServer *)self appBundleInfoAccessoryOptions:v68]& 3;
            if (v69)
            {
              v70 = [v66 appAccessInfoMap];
              v71 = [v70 count];

              if (v71)
              {
                [v92 addObject:v66];
              }

              else
              {
                v72 = [[DADeviceAppAccessInfo alloc] initWithBundleIdentifier:v94 deviceIdentifier:v67 state:25];
                [v72 setAccessoryOptions:v69];
                v73 = [v66 appAccessInfoDeviceMap];
                v74 = [v73 objectForKeyedSubscript:v68];

                if (!v74)
                {
                  v75 = +[NSMutableDictionary dictionary];
                  [v66 setAppAccessInfoDeviceMap:v75];
                }

                v76 = [v66 appAccessInfoDeviceMap];
                [v76 setObject:v72 forKeyedSubscript:v68];

                [v66 setFlags:{objc_msgSend(v66, "flags") | 0x100}];
                v100 = 0;
                [(DADaemonServer *)v95 updateAppAccessInfo:v72 accessoryDevice:v66 removalType:0 error:&v100];
                v77 = v100;
                if (v77)
                {
                  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_10003261C();
                  }
                }

                else
                {
                  [v90 addObject:v66];
                }
              }

              self = v95;
            }

            else
            {
              self = v95;
              if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
              {
                sub_100032678();
              }
            }
          }
        }
      }

      v63 = [v61 countByEnumeratingWithState:&v101 objects:v115 count:16];
    }

    while (v63);
  }

  if ([v92 count])
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v78 = v92;
    v79 = [v78 countByEnumeratingWithState:&v96 objects:v114 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v97;
      do
      {
        for (j = 0; j != v80; j = j + 1)
        {
          if (*v97 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v83 = [[DADeviceEvent alloc] initWithEventType:40 device:*(*(&v96 + 1) + 8 * j)];
          [(DADaemonServer *)self _discoveryEvent:v83 appID:v94];
        }

        v80 = [v78 countByEnumeratingWithState:&v96 objects:v114 count:16];
      }

      while (v80);
    }
  }

  v84 = [[DAEventDevicesPresent alloc] initWithMigration:1];
  v85 = [v90 arrayByAddingObjectsFromArray:v92];
  [v84 setDevices:v85];

  [(DADaemonServer *)self _reportDevicesMigratedEvent:v84 appID:v94];
  v6 = v88;
LABEL_116:
}

- (void)runUpgradeWithDiscovery:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleID];
  if (!v5)
  {
    sub_100032934();
    goto LABEL_47;
  }

  v6 = [v4 configurations];
  v7 = [v6 firstObject];

  if (!v7)
  {
    sub_1000328D4();
    goto LABEL_46;
  }

  v36 = self;
  v39 = v5;
  v8 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:v5];
  v9 = [v7 existingDeviceIdentifier];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v11)
  {
LABEL_11:

LABEL_12:
    sub_100032860(&v44);
    v18 = v44;
    v5 = v39;
    goto LABEL_45;
  }

  v12 = v11;
  v13 = *v41;
LABEL_5:
  v14 = 0;
  while (1)
  {
    if (*v41 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v40 + 1) + 8 * v14);
    v16 = [v15 identifier];
    v17 = [v16 isEqualToString:v9];

    if (v17)
    {
      break;
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v19 = v15;

  if (!v19)
  {
    goto LABEL_12;
  }

  v38 = v4;
  v20 = [v19 bluetoothIdentifier];

  v21 = [v19 wifiAwareDevicePairingID];

  v37 = v19;
  v22 = [v19 SSID];

  v23 = [v7 bluetoothServices];
  if (v23)
  {
    v24 = v7;
    v25 = 1;
  }

  else
  {
    v26 = [v7 bluetoothCompanyIdentifiers];
    v24 = v7;
    v25 = v26 != 0;
  }

  v27 = [v24 wifiAwareServiceName];

  v28 = [v24 hotspotSSIDs];
  v29 = v24;
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v31 = [v24 hotspotSSIDPrefixes];
    v30 = v31 == 0;
  }

  if (v20 && v21)
  {
    if (dword_1000603A0 <= 90)
    {
      v4 = v38;
      v5 = v39;
      v7 = v29;
      v18 = v37;
      if (dword_1000603A0 != -1 || _LogCategory_Initialize())
      {
        sub_100032760();
      }

      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v22 != 0 && !v25 && !v27)
  {
    if (dword_1000603A0 <= 90)
    {
      v4 = v38;
      v5 = v39;
      v7 = v29;
      v18 = v37;
      if (dword_1000603A0 != -1 || _LogCategory_Initialize())
      {
        sub_100032794();
      }

      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v21 != 0 && !v30)
  {
    if (dword_1000603A0 <= 90)
    {
      v4 = v38;
      v5 = v39;
      v7 = v29;
      v18 = v37;
      if (dword_1000603A0 != -1 || _LogCategory_Initialize())
      {
        sub_1000327C8();
      }

      goto LABEL_45;
    }

LABEL_43:
    v4 = v38;
    v5 = v39;
    v7 = v29;
LABEL_44:
    v18 = v37;
    goto LABEL_45;
  }

  if (v20 && v27)
  {
    v4 = v38;
    v5 = v39;
    v32 = v36;
    v18 = v37;
    v7 = v29;
    if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_61;
    }

    goto LABEL_38;
  }

  v33 = !v25;
  if (v21 && v25)
  {
    v34 = dword_1000603A0;
    v35 = dword_1000603A0 <= 30;
    v4 = v38;
    v5 = v39;
    v7 = v29;
    goto LABEL_51;
  }

  v7 = v29;
  if (!v22 || !v27)
  {
    v4 = v38;
    if (v22 == 0 || v33)
    {
      v5 = v39;
      goto LABEL_44;
    }

    v34 = dword_1000603A0;
    v35 = dword_1000603A0 <= 30;
    v5 = v39;
LABEL_51:
    v18 = v37;
    if (v35 && (v34 != -1 || _LogCategory_Initialize()))
    {
      sub_10003282C();
    }

    [(DADaemonServer *)v36 _updateBluetoothScannerIfNeeded];
    goto LABEL_45;
  }

  v4 = v38;
  v5 = v39;
  v32 = v36;
  v18 = v37;
  if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_61;
  }

LABEL_38:
  sub_1000327FC();
LABEL_61:
  [(DADaemonServer *)v32 _updateWiFiManagerIfNeeded];
LABEL_45:

LABEL_46:
LABEL_47:
}

- (void)runSystemDiscovery
{
  [(DADaemonServer *)self _updateBluetoothScannerIfNeeded];

  [(DADaemonServer *)self _updateWiFiManagerIfNeeded];
}

- (id)findExistingDeviceForUpgrade:(id)a3 appID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:v7];
  if (v8)
  {
    [(DADaemonServer *)self getDevicesWithFlags:8 appID:v7];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 identifier];
          v15 = [v14 isEqualToString:v6];

          if (v15)
          {
            v10 = v13;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v16 = [v10 appAccessInfoMap];
    v17 = [v16 objectForKeyedSubscript:v7];
    v18 = [v17 state];

    if (v18 == 25)
    {
      v19 = v10;
    }

    else
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032994();
      }

      v19 = 0;
    }
  }

  else
  {
    sub_1000329D4(v7, &v25);
    v19 = v25;
  }

  return v19;
}

- (id)findAlreadyDiscoveredDeviceForMultiTech:(id)a3 appID:(id)a4 bluetoothIdentifier:(id)a5 wifiAwareOTAName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v37 = a5;
  v36 = a6;
  v12 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 deviceMap];
    v15 = v14;
    if (v14)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = [v14 allValues];
      v17 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v33 = v15;
        v34 = v13;
        v35 = v11;
        v19 = *v39;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            v22 = [v21 discoveryConfiguration];
            v23 = [v22 associationIdentifier];
            v24 = [v23 isEqualToString:v10];

            if (v24 && [(DADaemonServer *)self deviceRequiresMultiTechDiscovery:v21])
            {
              v25 = [v21 bluetoothIdentifier];
              v26 = [v25 isEqual:v37];

              if (v26)
              {
                goto LABEL_19;
              }

              v27 = [v21 bluetoothIdentifier];

              if (v37)
              {
                if (!v27)
                {
                  goto LABEL_19;
                }
              }

              v28 = [v21 wifiAwareOTAName];
              v29 = [v28 isEqual:v36];

              if ((v29 & 1) != 0 || ([v21 wifiAwareOTAName], v30 = objc_claimAutoreleasedReturnValue(), v30, v36) && !v30)
              {
LABEL_19:
                v31 = v21;
                goto LABEL_20;
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v31 = 0;
LABEL_20:
        v13 = v34;
        v11 = v35;
        v15 = v33;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    sub_100032A58(v11, &v42);
    v31 = v42;
  }

  return v31;
}

- (BOOL)deviceRequiresMultiTechDiscovery:(id)a3
{
  v3 = a3;
  if ([v3 requiresBluetoothSetup])
  {
    v4 = [v3 requiresWiFiAwareSetup];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)applicationHasBluetoothGlobalTCC:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DADaemonServer *)v5 _applicationHasBluetoothGlobalTCC:v4];
  objc_sync_exit(v5);

  return v6;
}

- (int64_t)_updateDeviceStateForBluetooth:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100002EE4;
  v33 = sub_100002EF4;
  v34 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100011868;
  v28[3] = &unk_100058D30;
  v28[4] = &v29;
  v8 = objc_retainBlock(v28);
  v9 = [v6 state];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v10 = DADeviceStateToString();
    v11 = [v7 discoveryConfiguration];
    v25 = [v11 associationIdentifier];
    v27 = v6;
    v23 = v7;
    v24 = v10;
    LogPrintF();
  }

  v12 = [v7 bluetoothIdentifier];

  if (!v12)
  {
    v21 = v30[5];
    v22 = DANestedErrorF();
    v19 = v30[5];
    v30[5] = v22;
    goto LABEL_22;
  }

  if ([v6 state] != 10 && objc_msgSend(v6, "state") != 20 && !objc_msgSend(v7, "upgradeInProgress"))
  {
LABEL_19:
    if (dword_1000603A0 > 50 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_24;
    }

    [v6 state];
    v19 = DADeviceStateToString();
    v26 = DADeviceStateToString();
    LogPrintF();

LABEL_22:
    goto LABEL_24;
  }

  if ([v7 bluetoothSetupFinished])
  {
    goto LABEL_24;
  }

  if (!-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", v7) || ![v7 wifiAwareSetupInProgress])
  {
    v13 = [v7 discoveryConfiguration];
    v14 = [v13 allowsBluetoothPairing];

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v16 = [v7 discoveryConfiguration];
      v15 = ([v16 flags] >> 1) & 1;
    }

    v17 = [v7 discoveryConfiguration];
    v18 = [v17 flags];

    [v7 setBluetoothOnboardingFinished:0];
    [(DADaemonServer *)self _persistBluetoothDevice:v6 device:v7 requirePairing:v15 pairWithCTKD:(v18 >> 2) & 1];
    goto LABEL_19;
  }

  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_24:
  (v8[2])(v8);

  _Block_object_dispose(&v29, 8);
  return v9;
}

- (void)_cleanupBTDiscoveryIfPossible:(id)a3
{
  v15 = a3;
  if (!v15 || !-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", v15) || (v4 = [v15 bluetoothSetupFinished], v5 = v15, v4))
  {
    btScanRefreshTimer = self->_btScanRefreshTimer;
    if (btScanRefreshTimer)
    {
      v7 = btScanRefreshTimer;
      dispatch_source_cancel(v7);
      v8 = self->_btScanRefreshTimer;
      self->_btScanRefreshTimer = 0;
    }

    cbCentralManager = self->_cbCentralManager;
    if (cbCentralManager)
    {
      [(CBCentralManager *)cbCentralManager stopScan];
    }

    cbScanClient = self->_cbScanClient;
    self->_cbScanClient = 0;

    [(NSMutableDictionary *)self->_cbDADeviceMap enumerateKeysAndObjectsUsingBlock:&stru_100059130];
    v11 = objc_opt_new();
    cbDADeviceMap = self->_cbDADeviceMap;
    self->_cbDADeviceMap = v11;

    v13 = objc_opt_new();
    cbScanFilterArray = self->_cbScanFilterArray;
    self->_cbScanFilterArray = v13;

    v5 = v15;
  }

  _objc_release_x1(v4, v5);
}

- (void)_setupBTPairingManager
{
  if (!self->_btPairingManager)
  {
    v4 = objc_alloc_init(DABluetoothPairingManager);
    btPairingManager = self->_btPairingManager;
    self->_btPairingManager = v4;

    [(DABluetoothPairingManager *)self->_btPairingManager setBlockIncomingClassicCnx:self->_prefBTBlockIncomingClassicCnx];
    [(DABluetoothPairingManager *)self->_btPairingManager setMitmPairing:self->_prefBTPairingWithMITM];
    [(DABluetoothPairingManager *)self->_btPairingManager setTaskTimeoutSeconds:self->_prefBTScanRefreshSeconds];
    dispatchQueue = self->_dispatchQueue;
    v7 = self->_btPairingManager;

    [(DABluetoothPairingManager *)v7 setDispatchQueue:dispatchQueue];
  }
}

- (void)_forgetBluetoothDevice:(id)a3
{
  v4 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032AF8();
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    v5 = [v4 copy];
    [(DADaemonServer *)self _setupBTPairingManager];
    btPairingManager = self->_btPairingManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000124DC;
    v7[3] = &unk_100059180;
    v8 = v4;
    v9 = self;
    [(DABluetoothPairingManager *)btPairingManager forgetBluetoothDevice:v5 completion:v7];
  }

LABEL_6:
}

- (void)_updateBluetoothScannerIfNeeded
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032BA8();
  }

  [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:0];
  v3 = self->_discoveryMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000126A8;
  v7[3] = &unk_1000591F8;
  v7[4] = self;
  [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:v7];
  if ([(NSMutableArray *)self->_cbScanFilterArray count])
  {
    v4 = [[CBCentralManager alloc] initWithDelegate:self queue:self->_dispatchQueue options:0];
    cbCentralManager = self->_cbCentralManager;
    self->_cbCentralManager = v4;
  }

  else
  {
    btPairingManager = self->_btPairingManager;
    if (btPairingManager)
    {
      [(DABluetoothPairingManager *)btPairingManager cancelAll];
    }
  }
}

- (void)_startBTScan
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032BC4();
  }

  v3 = objc_opt_new();
  [v3 setValue:self->_cbScanFilterArray forKey:CBCentralManagerScanOptionMatchingRuleKey];
  cbScanClient = self->_cbScanClient;
  v4 = [NSArray arrayWithObjects:&cbScanClient count:1];
  [v3 setValue:v4 forKey:CBManagerListOfClients];

  cbScanFilterArray = self->_cbScanFilterArray;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012BDC;
  v6[3] = &unk_100059248;
  v6[4] = self;
  [(NSMutableArray *)cbScanFilterArray enumerateObjectsUsingBlock:v6];
  [(CBCentralManager *)self->_cbCentralManager scanForPeripheralsWithServices:0 options:v3 completion:&stru_100059288];
}

- (void)_stopBTScan
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032C4C();
  }

  cbCentralManager = self->_cbCentralManager;

  [(CBCentralManager *)cbCentralManager stopScan];
}

- (void)_checkAndReportLostBTDevices
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032C68();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = objc_opt_new();
  cbDADeviceMap = self->_cbDADeviceMap;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013028;
  v8[3] = &unk_1000592B0;
  v10 = Current;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(NSMutableDictionary *)cbDADeviceMap enumerateKeysAndObjectsUsingBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013180;
  v7[3] = &unk_1000592D8;
  v7[4] = self;
  *&v7[5] = Current;
  [v6 enumerateObjectsUsingBlock:v7];
}

- (void)_armBTScanTimer
{
  if (!self->_btScanRefreshTimer)
  {
    v8[8] = v2;
    v8[9] = v3;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    btScanRefreshTimer = self->_btScanRefreshTimer;
    self->_btScanRefreshTimer = v5;

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000133F0;
    v8[3] = &unk_100058CB8;
    v8[4] = v5;
    v8[5] = self;
    dispatch_source_set_event_handler(v5, v8);
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032CC4(self);
    }

    prefBTScanRefreshSeconds = self->_prefBTScanRefreshSeconds;
    CUDispatchTimerSet();
    dispatch_activate(v5);
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = self->_cbCentralManager;
  BTPoweredOn = [(CBCentralManager *)v4 state]== 5;
  self->_BTPoweredOn = BTPoweredOn;
  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 != -1 || (v6 = _LogCategory_Initialize(), BTPoweredOn = self->_BTPoweredOn, v6))
    {
      LogPrintF();
      BTPoweredOn = self->_BTPoweredOn;
    }
  }

  if (BTPoweredOn)
  {
    [(DADaemonServer *)self _checkAppAccessInfo];
    [(DADaemonServer *)self _refreshRegistrationForBTConnectionEvents];
    if ([(NSMutableArray *)self->_cbScanFilterArray count])
    {
      [(DADaemonServer *)self _startBTScan];
      [(DADaemonServer *)self _armBTScanTimer];
      if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032D38(&self->_BTPoweredOn);
      }
    }

    else if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032D7C();
    }
  }

  else
  {
    cbDADeviceMap = self->_cbDADeviceMap;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100013654;
    v8[3] = &unk_100059300;
    v8[4] = self;
    [(NSMutableDictionary *)cbDADeviceMap enumerateKeysAndObjectsUsingBlock:v8];
    if ([(CBCentralManager *)v4 state]!= 1)
    {
      [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:0];
    }
  }
}

- (void)_refreshRegistrationForBTConnectionEvents
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032D98();
  }

  v3 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001386C;
  v6[3] = &unk_100058DD0;
  v4 = objc_opt_new();
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:v4 forKeyedSubscript:CBConnectionEventMatchingOptionPeripheralUUIDs];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032DB4();
  }

  [(CBCentralManager *)self->_cbCentralManager registerForConnectionEventsWithOptions:v5];
}

- (id)_findDADeviceWithBTPeripheral:(id)a3
{
  v4 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032E34();
  }

  cbDADeviceMap = self->_cbDADeviceMap;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)cbDADeviceMap objectForKey:v6];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100002EE4;
  v20 = sub_100002EF4;
  v21 = [v7 objectForKeyedSubscript:@"DADevice"];
  if (v17[5])
  {
    if (dword_1000603A0 > 50)
    {
      goto LABEL_14;
    }

    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v11 = v17[5];
    }

    LogPrintF();
  }

  else
  {
    v8 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100013BDC;
    v13[3] = &unk_100059328;
    v14 = v4;
    v15 = &v16;
    [v8 enumerateObjectsUsingBlock:v13];
  }

LABEL_10:
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v12 = v17[5];
    LogPrintF();
  }

LABEL_14:
  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)_findDADeviceWithBTIdentifier:(id)a3
{
  v4 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100032EB4();
  }

  v5 = [(NSMutableDictionary *)self->_cbDADeviceMap objectForKey:v4];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100002EE4;
  v18 = sub_100002EF4;
  v19 = [v5 objectForKeyedSubscript:@"DADevice"];
  if (v15[5])
  {
    if (dword_1000603A0 > 50)
    {
      goto LABEL_14;
    }

    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v9 = v15[5];
    }

    LogPrintF();
  }

  else
  {
    v6 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100013F48;
    v11[3] = &unk_100059328;
    v12 = v4;
    v13 = &v14;
    [v6 enumerateObjectsUsingBlock:v11];
  }

LABEL_10:
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v10 = v15[5];
    LogPrintF();
  }

LABEL_14:
  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (id)_findExistingDeviceWithSSID:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v13 = v6;
    v14 = v7;
    LogPrintF();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100002EE4;
  v23 = sub_100002EF4;
  v24 = 0;
  v8 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0, v13, v14];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000141E0;
  v15[3] = &unk_100059350;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  v17 = v10;
  v18 = &v19;
  [v8 enumerateObjectsUsingBlock:v15];
  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

- (void)_reportDiscoveredBTDevice:(id)a3 advertisementData:(id)a4 RSSI:(id)a5 AppID:(id)a6 DADaemonDiscovery:(id)a7 DADiscovery:(id)a8 config:(id)a9
{
  v76 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v75 = a8;
  v19 = a9;
  v20 = [v19 bundleID];
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v70 = v75;
    v71 = v19;
    v68 = v15;
    v69 = v18;
    v65 = v17;
    v67 = v16;
    v63 = v20;
    LogPrintF();
  }

  v21 = [v19 bundleID];
  v22 = [v19 existingDeviceIdentifier];

  v74 = v21;
  if (v22)
  {
    v23 = [v19 existingDeviceIdentifier];
    v24 = [(DADaemonServer *)self findExistingDeviceForUpgrade:v23 appID:v21];
    if (!v24)
    {
LABEL_11:

      goto LABEL_59;
    }

    v25 = [(DADaemonServer *)self _findDADeviceWithBTPeripheral:v76];

    if (v25)
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032F84();
      }

      goto LABEL_11;
    }

    v72 = v18;
    v73 = v17;
    v29 = [v15 copy];
    [v24 setBluetoothAdvertisementData:v29];

    v30 = [v16 copy];
    [v24 setBluetoothRSSI:v30];

    v31 = [v76 identifier];
    [v24 setBluetoothIdentifier:v31];

    v32 = [(DADaemonServer *)self _getAdvName:v15];
    [v24 setBluetoothOTAName:v32];

    [v24 setBluetoothAppearance:{-[DADaemonServer _getAppearance:](self, "_getAppearance:", v15)}];
    [v24 setDiscoveryConfiguration:v19];
    [v24 setBluetoothOnboardingFinished:0];
    [v24 setWiFiAwareOnboardingFinished:1];
    [v24 setDeviceUpgradeFinished:0 inProgress:1 failed:0];
    goto LABEL_35;
  }

  v26 = [(DADaemonServer *)self _findDADeviceWithBTPeripheral:v76];
  v24 = v26;
  v72 = v18;
  v73 = v17;
  if (v26 && [v26 state] != 1)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100032FA0();
    }

    [v24 setDiscoveryConfiguration:v19];
    goto LABEL_36;
  }

  if ([v19 bluetoothRange] != 10 || objc_msgSend(v16, "intValue") >= self->_prefsBTRSSIThreshold)
  {
    v23 = [v19 associationIdentifier];
    v27 = [v76 identifier];
    v28 = [(DADaemonServer *)self findAlreadyDiscoveredDeviceForMultiTech:v23 appID:v74 bluetoothIdentifier:v27 wifiAwareOTAName:0];

    if (v28)
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100032FE0();
      }

      v24 = v28;
    }

    else
    {
      v24 = objc_alloc_init(DADevice);
      v33 = +[NSUUID UUID];
      v34 = [v33 UUIDString];
      [v24 setIdentifier:v34];
    }

    v35 = [v15 copy];
    [v24 setBluetoothAdvertisementData:v35];

    v36 = [v16 copy];
    [v24 setBluetoothRSSI:v36];

    v37 = [v76 identifier];
    [v24 setBluetoothIdentifier:v37];

    v38 = [(DADaemonServer *)self _getAdvName:v15];
    [v24 setBluetoothOTAName:v38];

    [v24 setBluetoothAppearance:{-[DADaemonServer _getAppearance:](self, "_getAppearance:", v15)}];
    [v24 setDiscoveryConfiguration:v19];
    if (([v75 flags] & 0x20) != 0)
    {
      v39 = 1024;
    }

    else
    {
      v39 = 8;
    }

    [v24 setFlags:v39];
    v40 = [v19 displayName];
    [v24 setName:v40];

    v41 = [v19 hotspotSSIDs];
    v42 = [v41 count];

    if (v42)
    {
      v43 = [v19 hotspotSSIDs];
      v44 = [v43 firstObject];
      [v24 setSSID:v44];
    }

    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033020();
    }

LABEL_35:

LABEL_36:
    v45 = [v24 appAccessInfoMap];
    v46 = [v45 objectForKeyedSubscript:v20];
    v47 = [v46 accessoryOptions];

    v48 = [(DADaemonServer *)self appBundleInfoAccessoryOptions:v20];
    v49 = [v24 appAccessInfoMap];
    v50 = [v49 objectForKeyedSubscript:v20];
    if ([v50 state] && ((v48 & 1) == 0 || (v47 & 1) != 0))
    {
      v51 = [v24 upgradeInProgress] ^ 1;
    }

    else
    {
      v51 = 0;
    }

    v52 = [v76 name];
    if (v52 && (v53 = v52, [v76 name], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "length"), v54, v53, v55))
    {
      if ((v51 & 1) == 0)
      {
        v56 = [[DADeviceEvent alloc] initWithEventType:40 device:v24];
        [(DADaemonServer *)self _discoveryEvent:v56 appID:v73];
      }
    }

    else if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v64 = v24;
      v66 = v76;
      LogPrintF();
    }

    v57 = objc_opt_new();
    [v57 setObject:v24 forKey:@"DADevice"];
    [v57 setObject:v76 forKey:@"CBPeripheral"];
    [v57 setObject:v15 forKey:@"ADVData"];
    [v57 setObject:v16 forKey:@"RSSI"];
    [v57 setObject:v75 forKey:@"DiscoveryObj"];
    cbDADeviceMap = self->_cbDADeviceMap;
    v59 = [v76 identifier];
    [(NSMutableDictionary *)cbDADeviceMap setObject:v57 forKeyedSubscript:v59];

    v18 = v72;
    if (-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", v24) && (![v24 bluetoothSetupFinished] || !objc_msgSend(v24, "wifiAwareSetupFinished") || objc_msgSend(v24, "upgradeInProgress")))
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_100033060();
      }

      v60 = [v24 appAccessInfoMap];
      v61 = [v60 objectForKeyedSubscript:v20];

      [(DADaemonServer *)self updateAppAccessInfo:v61 accessoryDevice:v24 removalType:0 error:0];
    }

    goto LABEL_58;
  }

  if (dword_1000603A0 <= 50)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_58;
      }

      prefsBTRSSIThreshold = self->_prefsBTRSSIThreshold;
    }

    LogPrintF();
  }

LABEL_58:
  v17 = v73;
LABEL_59:
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    [v13 intValue];
    LogPrintF();
  }

  discoveryMap = self->_discoveryMap;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100014CF4;
  v19[3] = &unk_1000593C8;
  v20 = v12;
  v21 = self;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  v18 = discoveryMap;
  [(NSMutableDictionary *)v18 enumerateKeysAndObjectsUsingBlock:v19];
}

- (id)_getAdvName:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:CBAdvertisementDataLocalNameKey];
  v4 = v3;
  v5 = &stru_10005A2C8;
  if (v3 && [(__CFString *)v3 length])
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

- (unsigned)_getAppearance:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"kCBAdvDataAppearance"];
  v4 = [v3 unsignedShortValue];

  return v4;
}

- (void)_updateLocalNetworkScannerIfNeeded
{
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000330EC();
  }

  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_100002EE4;
  v7[4] = sub_100002EF4;
  v8 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000154A8;
  v6[3] = &unk_100058D30;
  v6[4] = v7;
  v3 = objc_retainBlock(v6);
  v4 = self->_discoveryMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001556C;
  v5[3] = &unk_1000591F8;
  v5[4] = self;
  [(NSMutableDictionary *)v4 enumerateKeysAndObjectsUsingBlock:v5];

  (v3[2])(v3);
  _Block_object_dispose(v7, 8);
}

- (int64_t)_updateDeviceStateForWifi:(id)a3 currentState:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 discoveryConfiguration];
  v8 = [v7 flags];
  v9 = [v6 SSID];
  v10 = [v7 hotspotSSIDs];
  if ([v10 count])
  {
    v11 = 1;
  }

  else
  {
    v12 = [v7 hotspotSSIDPrefixes];
    v11 = [v12 count] != 0;
  }

  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033264();
  }

  v13 = [v6 bluetoothIdentifier];
  if (v13 != 0 || !v11)
  {
    v21 = v13;
LABEL_29:

    goto LABEL_32;
  }

  if (a4 == 20 || a4 == 10)
  {
    v14 = [v7 bluetoothCompanyIdentifiers];
    if (![v14 count])
    {
      v15 = [v7 bluetoothCompanyPayload];
      if (![v15 length])
      {
        v16 = [v7 bluetoothCompanyPayloadMask];
        if ([v16 length])
        {
        }

        else
        {
          v28 = v16;
          v17 = [v7 bluetoothNameSubstring];
          if ([v17 length])
          {
          }

          else
          {
            v27 = v17;
            v18 = [v7 bluetoothServicePayload];
            if ([v18 length])
            {
            }

            else
            {
              v26 = v18;
              v19 = [v7 bluetoothServicePayloadMask];
              if (![v19 length])
              {
                v24 = [v7 bluetoothServices];
                v25 = [v24 count];

                [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:v6];
                [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:v6];
                if (!v25)
                {
                  v20 = a4;
                  if (v9)
                  {
                    if ((v8 & 0x10) != 0)
                    {
                      v20 = 20;
                    }

                    else
                    {
                      v20 = 25;
                    }
                  }

                  goto LABEL_26;
                }

LABEL_25:
                v20 = 20;
LABEL_26:
                if (dword_1000603A0 > 50 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
                {
                  a4 = v20;
                  goto LABEL_32;
                }

                v21 = DADeviceStateToString();
                v23 = DADeviceStateToString();
                LogPrintF();

                a4 = v20;
                goto LABEL_29;
              }
            }
          }
        }
      }
    }

    [(DADaemonServer *)self _cleanupBTDiscoveryIfPossible:v6];
    [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:v6];
    goto LABEL_25;
  }

LABEL_32:

  return a4;
}

- (int64_t)_updateDeviceStateForWiFiAware:(id)a3 device:(id)a4 oldState:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 state];
  v11 = [v9 wifiAwareOTAName];

  if (v11)
  {
    v12 = [v8 bundleIdentifier];
    v13 = [v8 wifiAwarePairingID];
    v14 = [v9 wifiAwareDevicePairingID];
    if (v14)
    {
      v15 = v14;
      v16 = [v9 appAccessInfoDeviceMap];
      v13 |= [v16 count];
    }

    if (!v13)
    {
      if ((v10 == 10 || [v9 upgradeInProgress]) && (objc_msgSend(v9, "wifiAwareSetupFinished") & 1) == 0)
      {
        if (-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", v9) && [v9 bluetoothSetupInProgress])
        {
          if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_100033504();
          }
        }

        else
        {
          [v9 setWiFiAwareOnboardingFinished:0];
          -[DADaemonServer _persistWiFiAwareDevice:device:pairingID:bundleID:](self, "_persistWiFiAwareDevice:device:pairingID:bundleID:", v8, v9, [v8 wifiAwarePairingID], v12);
        }
      }

      goto LABEL_58;
    }

    if (v10 == a5)
    {
      v10 = a5;
LABEL_58:

      goto LABEL_59;
    }

    v17 = [v9 wifiAwareDevicePairingID];
    if (v10 == 28)
    {
      if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000332CC();
      }

      v23 = -[DADaemonServer _deauthorizeWiFiAwareDeviceFor:withAppPairingID:](self, "_deauthorizeWiFiAwareDeviceFor:withAppPairingID:", v12, [v8 wifiAwarePairingID]);
      if (v23)
      {
        if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100033364();
        }

        [v8 setState:a5];
      }

      else
      {
        a5 = 28;
      }

      v10 = a5;
      goto LABEL_57;
    }

    if (v10 != 25)
    {
      if (v10 != 10)
      {
LABEL_57:

        goto LABEL_58;
      }

      [(DADaemonServer *)self connectToPairedWiFiAwarePublisherIfNeeded:v9 bundleID:v12];
      if (a5 == 25)
      {
        goto LABEL_29;
      }

      a5 = 10;
    }

    v18 = [v9 appAccessInfoMap];
    v19 = [v18 objectForKeyedSubscript:v12];

    v20 = [v9 appAccessInfoMap];
    v21 = [v20 count];

    v22 = v21 > 1;
    if (!v19)
    {
      v22 = v21 != 0;
    }

    if (a5 == 10 && !v22)
    {
      goto LABEL_29;
    }

    if (a5 == 10 && v22)
    {
      v27 = 0;
      v24 = [(DADaemonServer *)self _authorizeWiFiAwareDeviceFor:v12 pairingKeyStoreID:v17 device:v9 error:&v27];
      v25 = v27;
      if (v25)
      {
        if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100033408();
        }

        [v8 setState:0];
        v10 = 0;
        goto LABEL_56;
      }

      [v8 setWifiAwarePairingID:v24];
LABEL_55:
      v10 = 25;
LABEL_56:

      goto LABEL_57;
    }

    if (a5 == 28)
    {
      v25 = -[DADaemonServer _reauthorizeWiFiAwareDeviceFor:withAppPairingID:](self, "_reauthorizeWiFiAwareDeviceFor:withAppPairingID:", v12, [v8 wifiAwarePairingID]);
      if (v25)
      {
        if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          sub_100033480();
        }

        v10 = 28;
        [v8 setState:28];
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_29:
    v10 = 25;
    goto LABEL_57;
  }

  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033544();
  }

LABEL_59:

  return v10;
}

- (void)_updateWiFiManagerIfNeeded
{
  v3 = [(DAWiFiScanner *)self->_wifiScanner storedPin];

  if (v3)
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033560();
    }
  }

  else
  {
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10003357C();
    }

    [(DADaemonServer *)self _cleanupWiFiDiscoveryIfPossible:0];
    if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      sub_100033598();
    }

    v4 = +[NSMutableArray array];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100002EE4;
    v18 = sub_100002EF4;
    v19 = 0;
    v5 = self->_discoveryMap;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100016BC4;
    v11[3] = &unk_100059440;
    v6 = v4;
    v12 = v6;
    v13 = &v14;
    [(NSMutableDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v11];
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v7 = v6;
      LogPrintF();
    }

    if ([v6 count])
    {
      objc_initWeak(&location, self);
      [(DADaemonServer *)self _setupWiFiScanner];
      [(DAWiFiScanner *)self->_wifiScanner setDeviceOTANameToBroadcast:v15[5]];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000175F4;
      v8[3] = &unk_100059490;
      objc_copyWeak(&v9, &location);
      v8[4] = self;
      [(DAWiFiScanner *)self->_wifiScanner setResultsHandler:v8];
      [(DAWiFiScanner *)self->_wifiScanner startScanningWithDescriptors:v6];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }

    else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _Block_object_dispose(&v14, 8);
  }
}

- (void)_cleanupWiFiDiscoveryIfPossible:(id)a3
{
  v6 = a3;
  if (!v6 || !-[DADaemonServer deviceRequiresMultiTechDiscovery:](self, "deviceRequiresMultiTechDiscovery:", v6) || ([v6 wifiAwareSetupInProgress] & 1) == 0 && objc_msgSend(v6, "wifiAwareSetupFinished"))
  {
    wifiScanner = self->_wifiScanner;
    if (wifiScanner)
    {
      [(DAWiFiScanner *)wifiScanner stopScanning];
      v5 = self->_wifiScanner;
      self->_wifiScanner = 0;
    }
  }
}

- (void)_forgetWiFiDevice:(id)a3
{
  v3 = a3;
  v4 = [[CWFInterface alloc] initWithServiceType:2];
  [v4 activate];
  v5 = [v4 knownNetworkProfilesWithProperties:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001847C;
  v8[3] = &unk_1000594B8;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v8];
}

- (void)_forgetWiFiAwareDevice:(id)a3
{
  v13 = a3;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033B68();
  }

  v4 = [v13 appAccessInfoMap];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 allKeys];
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
        v11 = [v4 objectForKeyedSubscript:v10];
        if ([v11 wifiAwarePairingID])
        {
          v12 = [v11 wifiAwarePairingID];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000187C0;
          v14[3] = &unk_1000594E0;
          v15 = v13;
          v16 = v10;
          [(DADaemonServer *)self _uninstallWiFiAwareDeviceFor:v10 appPairingID:v12 completionHandler:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (unint64_t)_authorizeWiFiAwareDeviceFor:(id)a3 pairingKeyStoreID:(id)a4 device:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v16 = v10;
    v17 = v11;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v16];
  if (([v12 flags] & 0x400) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v12 flags];
  v14 = [(DAWiFiScanner *)self->_wifiScanner authorizeNewPairedDeviceFor:v10 pairingKeyStoreID:v11 storageClass:1 lifetime:v13 client:a6 error:0.0];

  return v14;
}

- (void)_authorizeWiFiAwareDeviceFor:(id)a3 pairingKeyStoreID:(id)a4 device:(id)a5 completionHandler:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v14 = v16;
    v15 = v10;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v14];
  if (([v11 flags] & 0x400) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v11 flags];
  [(DAWiFiScanner *)self->_wifiScanner authorizePairedDeviceFor:v16 pairingKeyStoreID:v10 storageClass:1 lifetime:v13 client:v12 completionHandler:0.0];
}

- (void)_reauthorizeWiFiAwareDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v9 = v11;
    v10 = a4;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v9];
  [(DAWiFiScanner *)self->_wifiScanner reauthorizePairedDeviceFor:v11 withAppPairingID:a4 completionHandler:v8];
}

- (id)_reauthorizeWiFiAwareDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4
{
  v6 = a3;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v9 = v6;
    v10 = a4;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v9];
  v7 = [(DAWiFiScanner *)self->_wifiScanner reauthorizePairedDeviceFor:v6 withAppPairingID:a4];

  return v7;
}

- (void)_deauthorizeWiFiAwareDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v9 = v11;
    v10 = a4;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v9];
  [(DAWiFiScanner *)self->_wifiScanner deauthorizePairedDeviceFor:v11 withAppPairingID:a4 completionHandler:v8];
}

- (id)_deauthorizeWiFiAwareDeviceFor:(id)a3 withAppPairingID:(unint64_t)a4
{
  v6 = a3;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v9 = v6;
    v10 = a4;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v9];
  v7 = [(DAWiFiScanner *)self->_wifiScanner deauthorizePairedDeviceFor:v6 withAppPairingID:a4];

  return v7;
}

- (void)_removeAllWiFiAwareDevicesFor:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033C5C();
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  [(DAWiFiScanner *)self->_wifiScanner removeAllPairedDevicesFor:v7 completionHandler:v6];
}

- (void)_uninstallWiFiAwareDeviceFor:(id)a3 appPairingID:(unint64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v9 = v11;
    v10 = a4;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v9];
  [(DAWiFiScanner *)self->_wifiScanner uninstallPairedDeviceFor:v11 withAppPairingID:a4 completionHandler:v8];
}

- (id)_uninstallWiFiAwareDeviceFor:(id)a3 appPairingID:(unint64_t)a4
{
  v6 = a3;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v9 = v6;
    v10 = a4;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v9];
  v7 = [(DAWiFiScanner *)self->_wifiScanner uninstallPairedDeviceFor:v6 withAppPairingID:a4];

  return v7;
}

- (void)resetWiFiIdentifier:(id)a3
{
  v4 = a3;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100033C9C();
  }

  [(DADaemonServer *)self _setupWiFiScanner];
  wifiScanner = self->_wifiScanner;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019100;
  v7[3] = &unk_100059530;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(DAWiFiScanner *)wifiScanner removeAllPairedDevices:v7];
}

- (void)_updateWiFiAwareDeviceNameFor:(id)a3 appPairingID:(unint64_t)a4 newName:(id)a5 completionHandler:(id)a6
{
  v15 = a3;
  v10 = a5;
  v11 = a6;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v13 = v10;
    v14 = a4;
    v12 = v15;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v12];
  [(DAWiFiScanner *)self->_wifiScanner updatePairedDeviceNameFor:v15 withAppPairingID:a4 newName:v10 completionHandler:v11];
}

- (id)_updateWiFiAwareDeviceNameFor:(id)a3 appPairingID:(unint64_t)a4 newName:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v13 = v9;
    v14 = a4;
    v12 = v8;
    LogPrintF();
  }

  [(DADaemonServer *)self _setupWiFiScanner:v12];
  v10 = [(DAWiFiScanner *)self->_wifiScanner updatePairedDeviceNameFor:v8 withAppPairingID:a4 toNewName:v9];

  return v10;
}

- (void)_setupWiFiScanner
{
  if (!self->_wifiScanner)
  {
    v4 = objc_alloc_init(DAWiFiScanner);
    wifiScanner = self->_wifiScanner;
    self->_wifiScanner = v4;

    prefAllowAppleToAppleWiFiAware = self->_prefAllowAppleToAppleWiFiAware;
    v7 = self->_wifiScanner;

    [(DAWiFiScanner *)v7 setAllowAppleToAppleWiFiAware:prefAllowAppleToAppleWiFiAware];
  }
}

- (void)_persistWiFiAwareDevice:(id)a3 device:(id)a4 pairingID:(unint64_t)a5 bundleID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100034004();
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100019D20;
  v26[3] = &unk_100059580;
  v26[4] = self;
  v13 = v11;
  v27 = v13;
  v14 = v10;
  v28 = v14;
  [(DAWiFiScanner *)self->_wifiScanner setWifiAwareDevicePairedHandler:v26];
  objc_initWeak(&location, self);
  v15 = [v13 discoveryConfiguration];
  v16 = [v15 wifiAwareServiceType];

  if (v16 == 10)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v17 = v13;
      LogPrintF();
    }

    [(DAWiFiScanner *)self->_wifiScanner selectWiFiAwareDevice:v13 withBundleID:v12, v17];
    [(DAWiFiScanner *)self->_wifiScanner pairSelectedWiFiAwareDevice:v13 withBundleID:v12];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001A164;
    v22[3] = &unk_1000595A8;
    v24[1] = a5;
    v24[2] = 30;
    objc_copyWeak(v24, &location);
    v23 = v12;
    [(DAWiFiScanner *)self->_wifiScanner setShowPinInputHandler:v22];

    objc_destroyWeak(v24);
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001A1FC;
    v18[3] = &unk_1000595D0;
    v20 = a5;
    v21 = 20;
    v18[4] = self;
    v19 = v12;
    [(DAWiFiScanner *)self->_wifiScanner setPinCreatedOnPublisher:v18];
    [(DAWiFiScanner *)self->_wifiScanner pairingPINAccepted:v13];
  }

  objc_destroyWeak(&location);
}

- (void)connectToPairedWiFiAwarePublisherIfNeeded:(id)a3 bundleID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 discoveryConfiguration];
  v8 = [v7 wifiAwareServiceType];

  if (v8 == 10)
  {
    [(DADaemonServer *)self _setupWiFiScanner];
    [(DAWiFiScanner *)self->_wifiScanner selectWiFiAwareDevice:v9 withBundleID:v6];
    [(DAWiFiScanner *)self->_wifiScanner pairSelectedWiFiAwareDevice:v9 withBundleID:v6];
  }
}

- (void)_addTXTRecordToNWEndpoint:(id)a3 appID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100002EE4;
  v34[4] = sub_100002EF4;
  v35 = 0;
  v7 = [v5 networkEndpoint];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001A7A4;
  v30[3] = &unk_1000595F8;
  v33 = v34;
  v8 = v5;
  v31 = v8;
  v9 = v6;
  v32 = v9;
  v10 = objc_retainBlock(v30);
  if (!v7)
  {
    v17 = NSErrorF_safe();
    goto LABEL_22;
  }

  if (nw_endpoint_get_type(v7) == nw_endpoint_type_bonjour_service)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v20 = [v8 identifier];
      v21 = v9;
      v18 = v7;
      LogPrintF();
    }

    v12 = [v8 txtRecordData];
    v11 = v12;
    if (v12)
    {
      v13 = nw_txt_record_create_with_bytes([v12 bytes], objc_msgSend(v12, "length"));
      if (v13)
      {
        out_signature_length = 0;
        signature = nw_endpoint_get_signature(v7, &out_signature_length);
        v28 = 0;
        v15 = (off_100060380[0])(signature, out_signature_length, &v28);
        v16 = v15;
        if (v15)
        {
          access_bytes[0] = _NSConcreteStackBlock;
          access_bytes[1] = 3221225472;
          access_bytes[2] = sub_10001A814;
          access_bytes[3] = &unk_100059620;
          v27 = v15;
          v23 = v9;
          v24 = v8;
          v25 = v7;
          v26 = v13;
          nw_txt_record_access_bytes(v13, access_bytes);

          (off_100060390[0])(v16);
        }

        else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v19 = CUPrintErrorCode();
          LogPrintF();
        }
      }
    }

    goto LABEL_21;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v11 = [v8 identifier];
    LogPrintF();
LABEL_21:
  }

LABEL_22:
  (v10[2])(v10);

  _Block_object_dispose(v34, 8);
}

- (void)_addSSDPDatatoNWEndpoint:(id)a3 appID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = sub_100002EE4;
  v56[4] = sub_100002EF4;
  v57 = 0;
  v7 = [v5 networkEndpoint];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10001B2B8;
  v52[3] = &unk_1000595F8;
  v55 = v56;
  v8 = v5;
  v53 = v8;
  v9 = v6;
  v54 = v9;
  v10 = objc_retainBlock(v52);
  if (!v7)
  {
    v31 = NSErrorF_safe();
    goto LABEL_50;
  }

  type = nw_endpoint_get_type(v7);
  if (type && type != nw_endpoint_type_bonjour_service)
  {
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v34 = [v8 identifier];
      v35 = v9;
      v33 = v7;
      LogPrintF();
    }

    dictionary = nw_txt_record_create_dictionary();
    v13 = [v8 url];
    if (v13)
    {
      if ([DADevice deviceMetadataURLValid:v13])
      {
        if (dword_1000603A0 <= 30)
        {
          if (dword_1000603A0 != -1 || _LogCategory_Initialize())
          {
            v34 = [v8 identifier];
            v35 = v13;
            v33 = v9;
            LogPrintF();
          }

          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v34 = [v8 identifier];
            v35 = v13;
            v33 = v9;
            LogPrintF();
          }
        }

        v15 = [v13 host:v33];
        v16 = v15;
        v17 = [v15 UTF8String];

        if (!v17 || (-[NSObject port](v13, "port"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 utf8ValueSafe], v18, !v19))
        {
          v32 = NSErrorF_safe();

          goto LABEL_49;
        }

        parameters = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
        v20 = v13;
        host = nw_endpoint_create_host(v17, v19);
        v21 = nw_connection_create(host, parameters);
        v36 = dispatch_semaphore_create(0);
        v48 = 0;
        v49 = &v48;
        v50 = 0x2020000000;
        v51 = 0;
        v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        queue = dispatch_queue_create("DAConnectionQueue", v22);

        v13 = v20;
        nw_connection_set_queue(v21, queue);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10001B328;
        handler[3] = &unk_100059648;
        v46 = v17;
        v47 = v19;
        v14 = v21;
        v41 = v14;
        v42 = v9;
        v43 = v8;
        v45 = &v48;
        v23 = v36;
        v44 = v23;
        nw_connection_set_state_changed_handler(v14, handler);
        nw_connection_start(v14);
        v24 = dispatch_time(0, 3000000000);
        if (dispatch_semaphore_wait(v23, v24) && dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (*(v49 + 24) == 1)
        {
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v25 = [v20 absoluteString];
          v26 = v25;
          v27 = [v25 UTF8String];

          v28 = strlen(v27);
          nw_txt_record_set_key(dictionary, "DDDeviceURL", v27, v28);
        }

        else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        nw_connection_cancel(v14);

        _Block_object_dispose(&v48, 8);
      }

      else
      {
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v34 = [v8 identifier];
          v35 = v13;
          v33 = v9;
          LogPrintF();
        }

        v58[0] = @"BundleID";
        v58[1] = @"SupportsSSDP";
        v59[0] = v9;
        v59[1] = &off_10005ABD8;
        v58[2] = @"SSDPProtocol";
        parameters = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 protocol]);
        v59[2] = parameters;
        host = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];
        v14 = [v8 identifier];
        [DADeviceAccessAnalytics sendAnalyticsInfo:host forEvent:@"com.apple.DeviceAccess.SSDPMetadataInvalidURL" withDeviceIdentifier:v14];
      }
    }

    if ([v8 protocol] == 1)
    {
      v29 = [DADeviceProtocolDIAL UTF8String];
      v30 = strlen(v29);
      nw_txt_record_set_key(dictionary, "DDDeviceProtocolType", v29, v30);
    }

    nw_endpoint_set_txt_record();
    goto LABEL_49;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    dictionary = [v8 identifier];
    LogPrintF();
LABEL_49:
  }

LABEL_50:
  (v10[2])(v10);

  _Block_object_dispose(v56, 8);
}

- (void)_necpCleanupIfNeeded
{
  if ([(NSMutableDictionary *)self->_discoveryMap count])
  {
    return;
  }

  necpFD = self->_necpFD;
  if (necpFD < 0)
  {
    return;
  }

  if (dword_1000603A0 <= 30)
  {
    if (dword_1000603A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_7:
        necpFD = self->_necpFD;
        if (necpFD < 0)
        {
          return;
        }

        goto LABEL_8;
      }

      v4 = self->_necpFD;
    }

    LogPrintF();
    goto LABEL_7;
  }

LABEL_8:
  if (close(necpFD))
  {
    if (*__error())
    {
      __error();
    }
  }

  self->_necpFD = -1;
}

- (void)_necpSignEndpointForDevice:(id)a3 appID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100002EE4;
  v34 = sub_100002EF4;
  v35 = 0;
  [v6 networkEndpoint];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001BA84;
  v25[3] = &unk_100059670;
  v8 = v29 = &v30;
  v26 = v8;
  v9 = v6;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  v11 = objc_retainBlock(v25);
  if (!v8)
  {
    v18 = NSErrorF_safe();
    goto LABEL_24;
  }

  if (!nw_endpoint_has_signature())
  {
    v12 = [v9 identifier];
    if (v12)
    {
      type = nw_endpoint_get_type(v8);
      if (type == nw_endpoint_type_host)
      {
        v36 = 0;
        v37 = 0;
        v16 = [(DADaemonServer *)self _necpUUIDForAppID:v10 deviceID:v12 uuidBytes:&v36];
        v17 = (v31 + 5);
        v23 = v31[5];
        [(DADaemonServer *)self _necpSignHostnameEndpoint:v8 uuidBytes:&v36 error:&v23];
        objc_storeStrong(v17, v23);
        if (!v31[5] && dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v21 = [v9 identifier];
          LogPrintF();
        }
      }

      else if (type == nw_endpoint_type_address)
      {
        v36 = 0;
        v37 = 0;
        v14 = [(DADaemonServer *)self _necpUUIDForAppID:v10 deviceID:v12 uuidBytes:&v36];
        v15 = (v31 + 5);
        obj = v31[5];
        [(DADaemonServer *)self _necpSignAddressEndpoint:v8 uuidBytes:&v36 error:&obj];
        objc_storeStrong(v15, obj);
        if (!v31[5] && dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v20 = [v9 identifier];
          LogPrintF();
        }
      }

      else if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        v22 = [v9 identifier];
        LogPrintF();
      }
    }

    else
    {
      v19 = NSErrorF_safe();
    }

    goto LABEL_23;
  }

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v12 = [v9 identifier];
    LogPrintF();
LABEL_23:
  }

LABEL_24:
  (v11[2])(v11);

  _Block_object_dispose(&v30, 8);
}

- (BOOL)_necpSignAddressEndpoint:(id)a3 uuidBytes:(unsigned __int8)a4[16] error:(id *)a5
{
  v8 = a3;
  if (!nw_endpoint_get_address(v8))
  {
    sub_100034498(a5);
    goto LABEL_25;
  }

  v9 = malloc_type_calloc(1uLL, 0x58uLL, 0x100004077774924uLL);
  if (!v9)
  {
    sub_100034448(a5);
    goto LABEL_25;
  }

  v10 = v9;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001BDDC;
  v17[3] = &unk_100059690;
  v17[4] = v9;
  v11 = objc_retainBlock(v17);
  v10[2] = *a4;
  *(v10 + 6) = 4;
  SockAddrCopy();
  *(v10 + 21) = 0;
  if (self->_necpFD < 0)
  {
    v12 = necp_open();
    self->_necpFD = v12;
    if (v12 < 0 && (!*__error() || *__error()))
    {
      if (!a5)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      necpFD = self->_necpFD;
      LogPrintF();
    }
  }

  v13 = self->_necpFD;
  if (necp_client_action() && (!*__error() || *__error()))
  {
    if (!a5)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a5 = NSErrorF_safe();
    goto LABEL_24;
  }

  v14 = self->_necpFD;
  if (necp_client_action() && (!*__error() || *__error()))
  {
    if (!a5)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  nw_endpoint_set_signature();
LABEL_24:
  (v11[2])(v11);

LABEL_25:
  return 0;
}

- (BOOL)_necpSignHostnameEndpoint:(id)a3 uuidBytes:(unsigned __int8)a4[16] error:(id *)a5
{
  v8 = a3;
  hostname = nw_endpoint_get_hostname(v8);
  if (!hostname)
  {
    sub_100034538(a5);
    goto LABEL_26;
  }

  v10 = hostname;
  v11 = strlen(hostname);
  if (v11 >= 0x10000)
  {
    sub_1000344E8(a5);
    goto LABEL_26;
  }

  v12 = v11;
  port = nw_endpoint_get_port(v8);
  v14 = malloc_type_calloc(1uLL, v12 + 62, 0x100004077774924uLL);
  if (!v14)
  {
    sub_100034448(a5);
    goto LABEL_26;
  }

  v15 = v14;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001C108;
  v22[3] = &unk_100059690;
  v22[4] = v14;
  v16 = objc_retainBlock(v22);
  v15[2] = *a4;
  *(v15 + 6) = 6;
  *(v15 + 28) = 0;
  *(v15 + 29) = port;
  *(v15 + 30) = v12;
  memcpy(v15 + 62, v10, v12);
  if (self->_necpFD < 0)
  {
    v17 = necp_open();
    self->_necpFD = v17;
    if (v17 < 0 && (!*__error() || *__error()))
    {
      if (!a5)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      necpFD = self->_necpFD;
      LogPrintF();
    }
  }

  v18 = self->_necpFD;
  if (necp_client_action() && (!*__error() || *__error()))
  {
    if (!a5)
    {
      goto LABEL_25;
    }

LABEL_24:
    *a5 = NSErrorF_safe();
    goto LABEL_25;
  }

  v19 = self->_necpFD;
  if (necp_client_action() && (!*__error() || *__error()))
  {
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  nw_endpoint_set_signature();
LABEL_25:
  (v16[2])(v16);

LABEL_26:
  return 0;
}

- (void)_necpRemoveUUIDsForAppID:(id)a3 deviceID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NSString alloc] initWithFormat:@"%@:%@", v7, v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001C1D8;
  v9[3] = &unk_1000596E0;
  v9[4] = v8;
  [(DADaemonServer *)self _necpUpdateUUIDsWithBlock:v9];
}

- (void)_necpUpdateValueStrings:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C4E0;
  v5[3] = &unk_1000596E0;
  v6 = a3;
  v4 = v6;
  [(DADaemonServer *)self _necpUpdateUUIDsWithBlock:v5];
}

- (void)_necpUpdateUUIDForAppID:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  if (v8)
  {
    v9 = [v7 networkEndpoint];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:v6];
      v12 = [v11 deviceMap];
      v13 = [v12 objectForKeyedSubscript:v8];
      v10 = [v13 networkEndpoint];

      if (!v10)
      {
        sub_1000346A8();
        goto LABEL_13;
      }
    }

    out_signature_length = 0;
    signature = nw_endpoint_get_signature(v10, &out_signature_length);
    if (signature)
    {
      if (out_signature_length <= 0x2F)
      {
        sub_100034588(&out_signature_length);
      }

      else
      {
        v15 = [[NSUUID alloc] initWithUUIDBytes:signature + 32];
        v16 = [v15 UUIDString];

        v17 = [[NSString alloc] initWithFormat:@"%@:%@", v6, v8];
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v19 = v8;
          v20 = v16;
          v18 = v6;
          LogPrintF();
        }

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10001C99C;
        v21[3] = &unk_100059708;
        v21[4] = v16;
        v21[5] = v17;
        [(DADaemonServer *)self _necpUpdateUUIDsWithBlock:v21, v18, v19, v20];
      }
    }

    else
    {
      sub_100034628();
    }
  }

  else
  {
    sub_100034724();
  }

LABEL_13:
}

- (void)_necpUpdateUUIDsWithBlock:(id)a3
{
  v4 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100002EE4;
  v41 = sub_100002EF4;
  v42 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10001CF00;
  v36[3] = &unk_100058D30;
  v36[4] = &v37;
  v5 = objc_retainBlock(v36);
  v6 = +[NSFileManager defaultManager];
  v7 = v38 + 5;
  obj = v38[5];
  v8 = [v6 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&obj];
  objc_storeStrong(v7, obj);

  if (!v8)
  {
    v27 = v38[5];
    v28 = DANestedErrorF();
    v9 = v38[5];
    v38[5] = v28;
    goto LABEL_21;
  }

  v9 = [v8 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
  v10 = +[NSFileManager defaultManager];
  v11 = v38 + 5;
  v34 = v38[5];
  v12 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v34];
  objc_storeStrong(v11, v34);

  if (v12)
  {
    v13 = [v9 URLByAppendingPathComponent:@"DANetworkUUIDs.plist" isDirectory:0];
    v14 = [[NSDictionary alloc] initWithContentsOfURL:v13 error:0];
    v15 = [v14 mutableCopy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(NSMutableDictionary);
    }

    v21 = v17;

    v4[2](v4, v21);
    if ([v21 isEqual:v14])
    {
      if (dword_1000603A0 <= 20 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
      {
        [v14 count];
        LogPrintF();
      }

      goto LABEL_20;
    }

    v22 = v38;
    v33 = 0;
    v23 = [NSPropertyListSerialization dataWithPropertyList:v21 format:200 options:0 error:&v33];
    objc_storeStrong(v22 + 5, v33);
    v25 = v38 + 5;
    v24 = v38[5];
    if (v23)
    {
      v32 = v38[5];
      v26 = [v23 writeToURL:v13 options:1073741825 error:&v32];
      objc_storeStrong(v25, v32);
      if (v26)
      {
        if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          [v21 count];
          LogPrintF();
        }

        goto LABEL_19;
      }

      v30 = v38[5];
      v29 = DANestedErrorF();
    }

    else
    {
      v29 = DANestedErrorF();
    }

    v31 = v38[5];
    v38[5] = v29;

LABEL_19:
    goto LABEL_20;
  }

  v18 = v38[5];
  v19 = DANestedErrorF();
  v20 = v38[5];
  v38[5] = v19;

  v43[0] = @"Method";
  v13 = NSStringFromSelector(a2);
  v44[0] = v13;
  v43[1] = @"Error";
  v14 = [NSNumber numberWithInteger:350006];
  v44[1] = v14;
  v21 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  [DADeviceAccessAnalytics sendAnalytics:v21 forEvent:@"com.apple.DeviceAccess.Error"];
LABEL_20:

LABEL_21:
  (v5[2])(v5);

  _Block_object_dispose(&v37, 8);
}

- (id)_necpUUIDForAppID:(id)a3 deviceID:(id)a4 uuidBytes:(unsigned __int8)a5[16]
{
  memset(&v17, 0, sizeof(v17));
  v7 = a4;
  v8 = a3;
  CC_SHA256_Init(&v17);
  v9 = v8;
  v10 = [v9 UTF8String];

  v11 = strlen(v10);
  CC_SHA256_Update(&v17, v10, v11);
  v12 = [v7 UTF8String];

  v13 = strlen(v12);
  CC_SHA256_Update(&v17, v12, v13);
  CC_SHA256_Final(md, &v17);
  memset(out, 0, 37);
  uuid_unparse_upper(md, out);
  uuid_parse(out, a5);
  v14 = [[NSUUID alloc] initWithUUIDBytes:a5];
  v15 = [v14 UUIDString];

  return v15;
}

- (BOOL)checkAppHasMediaDeviceDiscoveryExtension:(id)a3
{
  v3 = a3;
  v4 = [_EXQuery alloc];
  v5 = [v4 initWithExtensionPointIdentifier:DAExtensionPointIdentifier];
  [_EXQueryController executeQuery:v5];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = v5;
    v9 = *v23;
    v10 = DAExtensionEntitlement;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 bundleIdentifier];
        v14 = [v13 stringByDeletingPathExtension];

        if (v3 && ([v14 isEqual:v3] & 1) == 0)
        {
          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v19 = v3;
            v20 = v14;
            LogPrintF();
          }
        }

        else
        {
          v15 = [v12 entitlementNamed:v10 ofClass:objc_opt_class()];
          v16 = [v15 BOOLValue];

          if (v16)
          {

            v17 = 1;
            goto LABEL_21;
          }

          if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10003479C(v12);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v17 = 0;
LABEL_21:
    v5 = v21;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)setPartialIPsForAppBundleID:(id)a3 partialIPs:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[NSString alloc] initWithFormat:@"%@.%@", v8, @"daappdata"];
  v11 = NSTemporaryDirectory();
  v12 = [NSURL fileURLWithPath:v11];
  v13 = [v12 URLByAppendingPathComponent:v10 isDirectory:0];

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000347F0();
  }

  v14 = [[NSDictionary alloc] initWithContentsOfURL:v13 error:0];
  Current = CFAbsoluteTimeGetCurrent();
  v16 = [v14 objectForKeyedSubscript:@"ipfragtime"];

  if (!v16 || (CFDictionaryGetDouble(), Current - v17 >= self->_prefAppPartialIPUpdateMinCadenceSeconds))
  {
    v18 = [v14 mutableCopy];
    v19 = v18;
    v46 = v8;
    v43 = v13;
    v44 = v10;
    v41 = a5;
    v42 = v14;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_alloc_init(NSMutableDictionary);
    }

    v47 = v20;

    v48 = +[NSMutableArray array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v45 = v9;
    v21 = v9;
    v22 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v51 + 1) + 8 * i);
          v27 = +[NSMutableDictionary dictionary];
          v28 = [v26 address];
          [v27 setObject:v28 forKeyedSubscript:@"ipfragaddr"];

          v29 = [v26 mask];
          [v27 setObject:v29 forKeyedSubscript:@"ipfragmask"];

          [v48 addObject:v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v23);
    }

    v30 = v47;
    [v47 setObject:v48 forKeyedSubscript:@"ipfrag"];
    v31 = [NSNumber numberWithDouble:Current];
    [v47 setObject:v31 forKeyedSubscript:@"ipfragtime"];

    v50 = 0;
    v32 = [NSPropertyListSerialization dataWithPropertyList:v47 format:200 options:0 error:&v50];
    v33 = v50;
    v34 = v33;
    if (v32)
    {
      v49 = v33;
      v13 = v43;
      v35 = [v32 writeToURL:v43 options:1073741825 error:&v49];
      v36 = v49;

      v10 = v44;
      v9 = v45;
      if (v35)
      {
        v37 = 1;
LABEL_19:
        v34 = v36;
        v8 = v46;
LABEL_20:

        v14 = v42;
        goto LABEL_21;
      }

      if (!v41)
      {
        v37 = 0;
        goto LABEL_19;
      }

      v40 = DANestedErrorF();
      v34 = v36;
      v8 = v46;
      v39 = v41;
    }

    else
    {
      v10 = v44;
      v9 = v45;
      v13 = v43;
      v39 = a5;
      if (!a5)
      {
        v37 = 0;
        v8 = v46;
        goto LABEL_31;
      }

      v40 = DANestedErrorF();
      v8 = v46;
    }

    v37 = 0;
    *v39 = v40;
LABEL_31:
    v30 = v47;
    goto LABEL_20;
  }

  if (a5)
  {
    DAErrorF();
    *a5 = v37 = 0;
  }

  else
  {
    v37 = 0;
  }

LABEL_21:

  return v37;
}

- (id)getPartialIPsWithAppBundleID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NSString alloc] initWithFormat:@"%@.%@", v5, @"daappdata"];
  v7 = NSTemporaryDirectory();
  v8 = [NSURL fileURLWithPath:v7];
  v9 = [v8 URLByAppendingPathComponent:v6 isDirectory:0];

  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100034830();
  }

  v32 = 0;
  v10 = [[NSDictionary alloc] initWithContentsOfURL:v9 error:&v32];
  v11 = v32;
  v12 = v11;
  if (!v11)
  {
    v25 = v6;
    v26 = v5;
    v27 = +[NSMutableArray array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = v10;
    v13 = [v10 objectForKeyedSubscript:@"ipfrag"];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = v14;
    v16 = *v29;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        v19 = [v18 objectForKeyedSubscript:@"ipfragaddr"];
        v20 = [v18 objectForKeyedSubscript:@"ipfragmask"];
        v21 = [[DAPartialIP alloc] initWithAddress:v19 mask:v20];
        if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
        {
          if (!v21)
          {
            goto LABEL_15;
          }

LABEL_14:
          [v27 addObject:v21];
          goto LABEL_15;
        }

        sub_1000348B0(v21);
        if (v21)
        {
          goto LABEL_14;
        }

LABEL_15:

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v22 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v15 = v22;
      if (!v22)
      {
LABEL_20:

        v6 = v25;
        v5 = v26;
        v10 = v24;
        v12 = 0;
        goto LABEL_21;
      }
    }
  }

  sub_100034870(v11, a4);
  v27 = &__NSArray0__struct;
LABEL_21:

  return v27;
}

- (void)respondToBluetoothPairingRequest:(id)a3 accept:(BOOL)a4 pairingType:(int64_t)a5 passkey:(id)a6
{
  v10 = a3;
  v11 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DC04;
  block[3] = &unk_100059730;
  block[4] = self;
  v16 = v10;
  v19 = a4;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(dispatchQueue, block);
}

- (void)respondToWiFiAwarePairingRequest:(unint64_t)a3 accept:(BOOL)a4 pairingType:(int64_t)a5 passkey:(id)a6
{
  v10 = a6;
  if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100034904();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DD10;
  block[3] = &unk_100059758;
  v17 = a4;
  v15 = a3;
  v16 = a5;
  block[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(dispatchQueue, block);
}

- (id)xpcListenerEndpoint
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_xpcListenerEndpoint;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = v2->_xpcListener;
    v6 = v5;
    if (v5)
    {
      v7 = xpc_endpoint_create(v5);
      objc_storeStrong(&v2->_xpcListenerEndpoint, v7);
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)_xpcListenerEvent:(id)a3
{
  v6 = a3;
  type = xpc_get_type(v6);
  if (type == &_xpc_type_connection)
  {
    type = [(DADaemonServer *)self _xpcConnectionAccept:v6];
    goto LABEL_8;
  }

  v5 = v6;
  if (v6 == &_xpc_error_connection_invalid)
  {
    if (dword_1000603A0 <= 30)
    {
      if (dword_1000603A0 != -1 || (type = _LogCategory_Initialize(), v5 = v6, type))
      {
        type = sub_10003497C();
        goto LABEL_8;
      }
    }
  }

  else if (dword_1000603A0 <= 90)
  {
    if (dword_1000603A0 != -1 || (type = _LogCategory_Initialize(), v5 = v6, type))
    {
      sub_100034920();
LABEL_8:
      v5 = v6;
    }
  }

  _objc_release_x1(type, v5);
}

- (void)_xpcConnectionAccept:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DADaemonXPCConnection);
  [(DADaemonXPCConnection *)v5 setDaemon:self];
  [(DADaemonXPCConnection *)v5 setDispatchQueue:self->_dispatchQueue];
  [(DADaemonXPCConnection *)v5 setPid:xpc_connection_get_pid(v4)];
  [(DADaemonXPCConnection *)v5 setXpcCnx:v4];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001DFF4;
  handler[3] = &unk_100058B80;
  handler[4] = v5;
  xpc_connection_set_event_handler(v4, handler);
  xpc_connection_set_target_queue(v4, self->_dispatchQueue);
  xpc_connection_activate(v4);

  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v7 = objc_alloc_init(NSMutableSet);
    v8 = self->_xpcConnections;
    self->_xpcConnections = v7;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v5];
  [(DADaemonXPCConnection *)v5 activate];
}

- (id)getAuthorizedDevices:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:@"%@.%@", v3, @"daappdata"];
  v5 = NSTemporaryDirectory();
  v6 = [NSURL fileURLWithPath:v5];
  v7 = [v6 URLByAppendingPathComponent:v4 isDirectory:0];

  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = [[NSDictionary alloc] initWithContentsOfURL:v7 error:0];
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v8)
  {
    CFDictionaryGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      v10 = objc_alloc_init(NSMutableArray);
      sub_10001E380();
      v17 = 3221225472;
      v18 = sub_1000080C0;
      v19 = &unk_100058EC0;
      v20 = v11;
      v12 = v11;
      [v9 enumerateKeysAndObjectsUsingBlock:v16];
      v13 = &__NSArray0__struct;
      if (v12)
      {
        v13 = v12;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)appAccessInfoForDeviceID:(id)a3 appID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v40[1] = 1;
  v7 = container_system_group_path_for_identifier();
  if (v7)
  {
    v8 = v7;
    if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
    {
      v31 = v8;
      LogPrintF();
    }

    v9 = [NSURL fileURLWithFileSystemRepresentation:v8 isDirectory:1 relativeToURL:0, v31];
    free(v8);
    if (v9)
    {
      v10 = [v9 URLByAppendingPathComponent:@"com.apple.DeviceAccess" isDirectory:1];
      v11 = [v10 URLByAppendingPathComponent:@"AccessorySetup" isDirectory:1];
      v12 = [v11 URLByAppendingPathComponent:@"AppAccessInfos" isDirectory:1];
      v13 = [v12 path];
      v38 = CBGenerateObfuscatedSHA256HashedString();
      v14 = [[NSString alloc] initWithFormat:@"%@.%@", v38, @"daappInfodata"];
      v15 = [NSURL fileURLWithPath:v13];
      v16 = [v15 URLByAppendingPathComponent:v14 isDirectory:0];

      v40[0] = 0;
      v36 = v16;
      v17 = [[NSDictionary alloc] initWithContentsOfURL:v16 error:v40];
      v18 = v40[0];
      v34 = v13;
      v35 = v17;
      v37 = v14;
      if (v17)
      {
        CFDictionaryGetTypeID();
        v19 = CFDictionaryGetTypedValue();
        v20 = v19;
        if (v19)
        {
          v33 = v12;
          v21 = v11;
          v22 = v9;
          v23 = v10;
          v24 = v6;
          v25 = v5;
          v17 = [v19 objectForKeyedSubscript:v5];
          v39 = v18;
          v26 = [[DADeviceAppAccessInfo alloc] initWithPersistentDictionaryRepresentation:v17 error:&v39];
          v27 = v39;

          if (v26)
          {
            v28 = v26;
          }

          else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
          {
            v32 = CUPrintNSError();
            LogPrintF();
          }

          v18 = v27;
          v5 = v25;
          v6 = v24;
          v10 = v23;
          v9 = v22;
          v11 = v21;
          v12 = v33;
          goto LABEL_12;
        }

        if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          CUPrintNSError();
          objc_claimAutoreleasedReturnValue();
          sub_10001E3E0();
          LogPrintF();
          v26 = 0;
LABEL_12:

LABEL_13:
          v29 = v38;

          v13 = v34;
LABEL_14:

          goto LABEL_16;
        }

LABEL_33:
        v26 = 0;
        goto LABEL_13;
      }

      if (dword_1000603A0 > 90)
      {
        v26 = 0;
      }

      else
      {
        if (dword_1000603A0 != -1 || _LogCategory_Initialize())
        {
          v20 = CUPrintNSError();
          LogPrintF();
          goto LABEL_33;
        }

        v26 = 0;
      }

      v29 = v38;
      goto LABEL_14;
    }
  }

  v26 = 0;
LABEL_16:

  return v26;
}

- (id)_statefulDevicesForAppID:(id)a3
{
  v5 = a3;
  v6 = [objc_alloc(sub_10001E3C8()) initWithFormat:@"%@.%@", v3, @"daappdata"];

  NSTemporaryDirectory();
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_10001E3EC() fileURLWithPath:v4];
  v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:0];

  v9 = [[NSDictionary alloc] initWithContentsOfURL:v8 error:0];
  if (v9)
  {
    CFDictionaryGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      sub_10001E380();
      v15 = 3221225472;
      v16 = sub_10000EDDC;
      v17 = &unk_100058EC0;
      v18 = v12;
      [v10 enumerateKeysAndObjectsUsingBlock:v14];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_discoveryEvent:(id)a3 appID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = [v6 eventType];
    if ((v9 & 0xFFFFFFFFFFFFFFFDLL) != 0x28)
    {
      if (v9 != 16 && v9 != 17)
      {
        if (v9 != 56 && v9 != 55)
        {
          if (v9 == 41)
          {
            objc_opt_class();
            if (sub_10001E4A8() & 1) != 0 || (objc_opt_class(), (sub_10001E4A8()))
            {
              v19 = v6;
              v20 = [v19 device];
              v21 = [v20 identifier];

              if (v21)
              {
                v22 = [v19 device];
                if (v22)
                {
                  v23 = [v8 statefulDeviceMap];
                  v24 = [v23 objectForKeyedSubscript:v21];

                  if (v24)
                  {
                    [v22 setState:{objc_msgSend(v24, "state")}];
                  }

                  v25 = [v8 deviceMap];
                  v26 = [v25 count];
                  if ([v22 state] == 20)
                  {
                    [v25 objectForKeyedSubscript:v21];
                    v40 = v26;
                    v28 = v27 = v19;
                    [v28 setPendingRemoval:1];

                    v19 = v27;
                    v26 = v40;
                  }

                  else
                  {
                    [sub_10001E41C() _reportDiscoveryEvent:? appID:?];
                    [v25 setObject:0 forKeyedSubscript:v21];
                  }

                  v36 = [v25 count];
                  if (v26 && !v36)
                  {
                    [(DADaemonServer *)self _reportDevicesPresentChanged:0 appID:v7];
                  }
                }
              }
            }
          }

          goto LABEL_40;
        }

        objc_opt_class();
        if ((sub_10001E4A8() & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      [(DADaemonServer *)self _reportDiscoveryEvent:v6 appID:v7];
      goto LABEL_40;
    }

    objc_opt_class();
    if (sub_10001E4A8() & 1) != 0 || (objc_opt_class(), (sub_10001E4A8()))
    {
      v39 = v6;
      v10 = [v39 device];
      if (!v10)
      {
LABEL_39:

        goto LABEL_40;
      }

      v11 = v10;
      v12 = [v10 identifier];
      if (!v12)
      {
LABEL_38:

        goto LABEL_39;
      }

      v13 = [v11 bluetoothIdentifier];
      v38 = v13;
      if ([v11 discoveredInExtension] && v13)
      {
        cbCentralManager = self->_cbCentralManager;
        v46 = v13;
        v15 = [NSArray arrayWithObjects:&v46 count:1];
        v16 = [(CBCentralManager *)cbCentralManager retrievePeripheralsWithIdentifiers:v15];
        v17 = [v16 firstObject];

        v18 = [v17 name];
        [v11 setBluetoothOTAName:v18];

        if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
        {
          v37 = v17;
          LogPrintF();
        }
      }

      v29 = [v8 statefulDeviceMap];
      v30 = [v29 objectForKeyedSubscript:v12];

      [v11 setState:{objc_msgSend(v30, "state")}];
      [sub_10001E428() _addTXTRecordToNWEndpoint:? appID:?];
      [sub_10001E428() _addSSDPDatatoNWEndpoint:? appID:?];
      v31 = [v11 url];
      if (v31 && ([DADevice deviceMetadataURLValid:v31]& 1) == 0)
      {
        if (dword_1000603A0 > 30 || dword_1000603A0 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_37;
        }

        v35 = [v11 identifier];
        LogPrintF();
      }

      else
      {

        v31 = [v8 deviceMap];
        v32 = [v31 count];
        if (!v31)
        {
          v31 = objc_alloc_init(NSMutableDictionary);
          [v8 setDeviceMap:v31];
        }

        [v31 setObject:v11 forKeyedSubscript:v12];
        [sub_10001E428() _necpSignEndpointForDevice:? appID:?];
        [(DADaemonServer *)self _reportDiscoveryEvent:v39 appID:v7];
        if (!v32)
        {
          [(DADaemonServer *)self _reportDevicesPresentChanged:1 appID:v7];
        }

        v33 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
        dispatchQueue = self->_dispatchQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000F8F0;
        block[3] = &unk_1000590A0;
        v42 = v7;
        v43 = v11;
        v44 = v8;
        v45 = v33;
        v35 = v33;
        dispatch_async(dispatchQueue, block);
      }

LABEL_37:
      goto LABEL_38;
    }
  }

  else if (dword_1000603A0 <= 90 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_40:
}

- (id)_updateStateForDiscoveryDeviceID:(id)a3 state:(int64_t)a4 appID:(id)a5 referenceDevice:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(NSMutableDictionary *)self->_discoveryMap objectForKeyedSubscript:v11];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 deviceMap];
    v16 = [v15 objectForKeyedSubscript:v10];

    if (v16)
    {
      if (([v16 flags] & 0x408) != 0)
      {
        v17 = [v16 appAccessInfoDeviceMap];
        v18 = [v17 objectForKeyedSubscript:v11];
        [v18 setState:a4];

        [v16 setBluetoothOnboardingFinished:{objc_msgSend(v12, "bluetoothSetupFinished")}];
        [v16 setWiFiAwareOnboardingFinished:{objc_msgSend(v12, "wifiAwareSetupFinished")}];
        [v16 setDeviceUpgradeFinished:objc_msgSend(v12 inProgress:"upgradeFinished") failed:{objc_msgSend(v12, "upgradeInProgress"), objc_msgSend(v12, "upgradeFailed")}];
      }

      [v16 setState:a4];
      v19 = [v14 statefulDeviceMap];
      if (!v19)
      {
        v19 = objc_alloc_init(NSMutableDictionary);
        [v14 setStatefulDeviceMap:v19];
      }

      [v19 setObject:v16 forKeyedSubscript:v10];
      v20 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
      dispatchQueue = self->_dispatchQueue;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000FC0C;
      v26[3] = &unk_1000590C8;
      v27 = v11;
      v32 = a4;
      v28 = v10;
      v22 = v16;
      v29 = v22;
      v30 = v14;
      v31 = v20;
      v23 = v20;
      dispatch_async(dispatchQueue, v26);
      v24 = v22;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int64_t)_applicationHasBluetoothGlobalTCC:(id)a3
{
  v3 = a3;
  if (v3 && (v4 = TCCAccessCopyInformationForBundleId()) != 0)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
      goto LABEL_13;
    }

    v7 = Count;
    v8 = 0;
    v9 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      Value = CFDictionaryGetValue(ValueAtIndex, kTCCInfoService);
      if (CFEqual(Value, kTCCServiceBluetoothAlways))
      {
        break;
      }

      ++v8;
    }

    while (v7 != v8);
    v12 = CFDictionaryGetValue(ValueAtIndex, kTCCInfoGranted);
    if (v12)
    {
      if (CFBooleanGetValue(v12))
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
LABEL_13:
      v9 = 1;
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_parseDADiscoveryConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 bluetoothIdentifier];

  if (v4)
  {
    v33 = 0;
  }

  else
  {
    objc_opt_new();
    v5 = [sub_10001E3C8() associationIdentifier];
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = [v3 bluetoothServices];
    v7 = [v6 count];

    if (v7)
    {
      objc_opt_new();
      v8 = [sub_10001E4F8() bluetoothServices];
      v9 = [v8 objectAtIndex:0];

      if (v9)
      {
        [sub_10001E41C() setObject:? forKey:?];
        [v6 setObject:v5 forKey:CBCentralManagerScanOptionFilterIdentifierString];
        v10 = [v3 bluetoothServicePayload];
        v11 = [v10 length];

        if (v11)
        {
          v12 = [v3 bluetoothServicePayload];
          [sub_10001E428() setObject:? forKey:?];
        }

        v13 = [v3 bluetoothServicePayloadMask];
        v14 = [v13 length];

        if (v14)
        {
          v15 = [v3 bluetoothServicePayloadMask];
          [sub_10001E428() setObject:? forKey:?];
        }

        [0 addObject:v6];
      }
    }

    v16 = [v3 bluetoothCompanyIdentifiers];
    v17 = [v16 count];

    if (v17)
    {
      objc_opt_new();
      v18 = [sub_10001E4F8() bluetoothCompanyIdentifiers];
      v19 = [v18 objectAtIndex:0];
      v20 = [v19 unsignedIntValue];

      v21 = [NSNumber numberWithUnsignedInt:v20];
      [sub_10001E41C() setObject:? forKey:?];

      [v16 setObject:v5 forKey:CBCentralManagerScanOptionFilterIdentifierString];
      v22 = [v3 bluetoothCompanyPayload];
      v23 = [v22 length];

      if (v23)
      {
        v24 = [v3 bluetoothCompanyPayload];
        [sub_10001E41C() setObject:? forKey:?];
      }

      v25 = [v3 bluetoothCompanyPayloadMask];
      v26 = [v25 length];

      if (v26)
      {
        v27 = [v3 bluetoothCompanyPayloadMask];
        [sub_10001E41C() setObject:? forKey:?];
      }

      [0 addObject:v16];
    }

    [v3 bluetoothNameSubstring];
    if (objc_claimAutoreleasedReturnValue())
    {
      v28 = [sub_10001E4F8() bluetoothNameSubstring];
      v29 = [v28 length];

      if (v29)
      {
        v30 = [v3 bluetoothNameSubstringCompareOptions];
        objc_opt_new();
        v31 = [sub_10001E4F8() bluetoothNameSubstring];
        [sub_10001E41C() setObject:? forKey:?];
        [v16 setObject:v5 forKey:CBCentralManagerScanOptionFilterIdentifierString];
        if (v30)
        {
          v32 = [NSNumber numberWithUnsignedInteger:v30];
          [sub_10001E428() setObject:? forKey:?];
        }

        else
        {
          [v16 setObject:CBCentralManagerScanOptionMatchingRuleNameMatchOptionContains forKey:CBCentralManagerScanOptionMatchingRuleNameMatchOption];
        }

        [0 addObject:v16];
      }
    }

    if ([0 count])
    {
      v33 = 0;
    }

    else
    {
LABEL_25:
      v33 = 0;
    }
  }

  return v33;
}

- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v10 = a4;
    if (a4 == 1)
    {
      v11 = "Connected";
    }

    else
    {
      v11 = "Disconnected";
    }

    v32 = v11;
    v34 = [v9 connectedTransport];
    a4 = v10;
    v30 = v9;
    LogPrintF();
  }

  v12 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0, v30, v32, v34];
  v13 = v12;
  if (v12)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v35 = a4;
      v36 = self;
      v37 = v8;
      v17 = *v39;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v20 = [v19 bluetoothIdentifier];
          v21 = [v9 identifier];
          v22 = v20;
          v23 = v21;
          v24 = v23;
          if (v22 == v23)
          {

LABEL_23:
            v27 = DAWiFiScanDescriptor;
            a4 = v35;
            if (dword_1000603A0 <= 50 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
            {
              v28 = @"disconnected";
              if (v35 == 1)
              {
                v28 = @"connected";
              }

              v31 = v28;
              v33 = v19;
              LogPrintF();
            }

            v26 = v19;
            self = v36;
            v8 = v37;
            goto LABEL_31;
          }

          if ((v22 != 0) == (v23 == 0))
          {
          }

          else
          {
            v25 = [v22 isEqual:v23];

            if (v25)
            {
              goto LABEL_23;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v26 = 0;
      self = v36;
      v8 = v37;
      v27 = DAWiFiScanDescriptor;
      a4 = v35;
    }

    else
    {
      v26 = 0;
      v27 = DAWiFiScanDescriptor;
    }

LABEL_31:

    [(__CFString *)v26 setConnectionStatus:[(__CFString *)v26 connectionStatus]& 0xFFFFFFFFFFFFFBFFLL | ((a4 == 1) << 10)];
    superclass = v27[23].superclass;
    if (superclass <= 50 && (superclass != -1 || _LogCategory_Initialize()))
    {
      v31 = v26;
      LogPrintF();
    }

    [(DADaemonServer *)self _reportDeviceConnectionStatusChanged:v26, v31, v33];
  }
}

- (id)_findDADeviceWithMigrationConfig:(id)a3
{
  v5 = a3;
  v6 = [v5 bluetoothIdentifier];

  v7 = [v5 networkHotspotSSID];

  if ([v5 wifiAwarePairingID])
  {
    v8 = [v5 wifiAwareServiceName];
    v9 = v8 != 0;

    if (v7 && v8)
    {
      v10 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [(DADaemonServer *)self getDevicesWithFlags:8 appID:0];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v83 = [v11 countByEnumeratingWithState:&v97 objects:v102 count:16];
  HIDWORD(v81) = v9;
  if (v83)
  {
    HIDWORD(v74) = v6 != 0;
    v86 = 0;
    v75 = 0;
    v76 = v11;
    v77 = 0;
    v3 = 0;
    v9 = 0;
    v12 = 0;
    v82 = *v98;
    v80 = v7;
    do
    {
      for (i = 0; i != v83; ++i)
      {
        if (*v98 != v82)
        {
          objc_enumerationMutation(v11);
        }

        v87 = *(*(&v97 + 1) + 8 * i);
        if ([v87 state] != 1)
        {
          v84 = i;
          if (v6)
          {
            v14 = [v87 bluetoothIdentifier];

            if (v14 && !v12)
            {
              v15 = [v5 bluetoothIdentifier];
              v16 = [v87 bluetoothIdentifier];
              v17 = [v15 isEqual:v16];

              if (v17)
              {
                v12 = v87;
                v18 = [v12 identifier];

                v77 = v18;
              }

              else
              {
                v12 = 0;
              }

              v7 = v80;
            }

            i = v84;
          }

          if (v7)
          {
            v19 = [v87 SSID];

            if (v19 && !v9)
            {
              [v87 SSID];
              objc_claimAutoreleasedReturnValue();
              v20 = [sub_10001E3C8() networkHotspotSSID];
              v21 = [v20 isEqualToString:v19];

              if (v21 && (!v6 || ([v5 bluetoothIdentifier], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v87, "bluetoothIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqual:", v23), v23, v22, v24)))
              {
                v9 = v87;
                v25 = [v9 identifier];

                v75 = v25;
              }

              else
              {
                v9 = 0;
              }

              v7 = v80;
            }

            i = v84;
          }

          if (HIDWORD(v81))
          {
            v26 = [v87 wifiAwareDevicePairingID];

            if (v26 && !v3)
            {
              v27 = [v87 discoveryConfiguration];
              v28 = [v27 wifiAwareServiceName];

              v29 = [v87 appAccessInfoMap];
              v30 = [v29 allValues];

              v39 = sub_10001E504(v31, v32, v33, v34, v35, v36, v37, v38, v74, v75, v76, v77, v9, v12, v80, v81, v82, v83, v84, v85, v86, v87, 0, 0, 0, 0, 0, 0, 0, 0, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1), v101);
              if (v39)
              {
                v40 = v39;
                v3 = 0;
                v41 = *v91;
                v85 = v30;
                do
                {
                  for (j = 0; j != v40; j = j + 1)
                  {
                    if (*v91 != v41)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v43 = *(v90 + 8 * j);
                    v44 = [v5 wifiAwarePairingID];
                    v45 = [v43 wifiAwarePairingID];
                    if (v44 == v45)
                    {
                      v53 = [v5 wifiAwareServiceName];
                      v54 = [v53 isEqualToString:v28];

                      if (v54)
                      {
                        v55 = v28;
                        v56 = v6;
                        if (!v6 || ([v5 bluetoothIdentifier], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v88, "bluetoothIdentifier"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v57, "isEqual:", v58), v58, v57, v59))
                        {
                          v60 = v88;

                          v61 = [v60 identifier];

                          v86 = v61;
                          v3 = v60;
                        }

                        v6 = v56;
                        v28 = v55;
                        v30 = v85;
                      }
                    }
                  }

                  v40 = sub_10001E504(v45, v46, v47, v48, v49, v50, v51, v52, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1), v101);
                }

                while (v40);
              }

              else
              {
                v3 = 0;
              }

              v11 = v76;
              v9 = v78;
              v12 = v79;
              v7 = v80;
            }

            i = v84;
          }
        }
      }

      v83 = [v11 countByEnumeratingWithState:&v97 objects:v102 count:16];
    }

    while (v83);
    v62 = v12 != 0;
    if ((v6 != 0) != v62)
    {
      goto LABEL_96;
    }

    v63 = v3 != 0;
    if ((HIDWORD(v81) ^ v63))
    {
      goto LABEL_96;
    }

    if (v6)
    {
      v64 = v7 == 0;
    }

    else
    {
      v64 = 0;
    }

    v65 = !v64;
    if (((v65 | HIDWORD(v81)) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v12 = 0;
    if (v6)
    {
      v9 = 0;
      v3 = 0;
      v77 = 0;
      v75 = 0;
      v86 = 0;
      goto LABEL_96;
    }

    if (v9)
    {
      sub_10001E490();
      v10 = 0;
      goto LABEL_78;
    }

    HIDWORD(v74) = 0;
    sub_10001E490();
  }

  if (v6)
  {
    v67 = 1;
  }

  else
  {
    v67 = v7 == 0;
  }

  v68 = v67;
  if (((v68 | HIDWORD(v81)) & 1) == 0)
  {
    v66 = v9;
    v9 = v66;
    goto LABEL_77;
  }

  if (!v6 && !v7 && ((HIDWORD(v81) ^ 1) & 1) == 0)
  {
    v66 = v3;
    v3 = v66;
    goto LABEL_77;
  }

  v70 = HIDWORD(v74);
  if (!v7)
  {
    v70 = 0;
  }

  if (v70 == 1)
  {
    if (v9)
    {
      v71 = v62;
    }

    else
    {
      v71 = 0;
    }

    if (v71)
    {
      if ([v77 isEqualToString:v75])
      {
        goto LABEL_61;
      }
    }

    else if (!v62)
    {
LABEL_96:
      v10 = 0;
      goto LABEL_78;
    }

    v72 = [v12 SSID];

    if (v72)
    {
      goto LABEL_96;
    }

    v73 = [v5 networkHotspotSSID];
    [v12 setSSID:v73];
  }

  else if (((v6 != 0) & BYTE4(v81) & (v63 && v62)) != 1 || ![v77 isEqualToString:v86])
  {
    goto LABEL_96;
  }

LABEL_61:
  v66 = v12;
  v12 = v66;
LABEL_77:
  v10 = v66;
LABEL_78:

LABEL_79:

  return v10;
}

- (void)_updateWiFiDevice:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (dword_1000603A0 <= 30 && (dword_1000603A0 != -1 || _LogCategory_Initialize()))
  {
    v12 = v5;
    v13 = v6;
    LogPrintF();
  }

  v7 = [v5 identifier];
  if (v7)
  {
    v8 = [v5 SSID];
    if (v8)
    {
      v9 = [[CWFInterface alloc] initWithServiceType:2];
      [v9 activate];
      v10 = [v9 knownNetworkProfilesWithProperties:0];
      sub_10001E380();
      v15 = 3221225472;
      v16 = sub_1000195D4;
      v17 = &unk_100059558;
      v18 = v7;
      v19 = v8;
      v20 = v9;
      v21 = v6;
      v22 = v5;
      v11 = v9;
      [v10 enumerateObjectsUsingBlock:v14];
    }
  }
}

@end