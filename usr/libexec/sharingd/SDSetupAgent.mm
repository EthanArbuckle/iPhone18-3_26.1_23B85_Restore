@interface SDSetupAgent
+ (SDSetupAgent)sharedSetupAgent;
- (BOOL)_deviceHandlesDovePeaceSetup;
- (BOOL)_screenLocked;
- (BOOL)_shouldOfferPassword:(id)password;
- (BOOL)_useSymptomsReport;
- (BOOL)reenableProxCardType:(unsigned __int8)type;
- (SDSetupAgent)init;
- (id)_watchMigrating:(id)migrating;
- (id)descriptionWithLevel:(int)level;
- (int64_t)extractParameter:(id)parameter inString:(id)string;
- (void)_activate;
- (void)_appleAccountSignIn:(id)in;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_ensureClientStarted;
- (void)_ensureClientStopped;
- (void)_ensureServerStarted;
- (void)_ensureServerStopped;
- (void)_fetchSymptomsReport;
- (void)_iTunesAccountsChanged;
- (void)_invalidate;
- (void)_launchAppWithMachServiceName:(id)name;
- (void)_openSetupURL:(id)l;
- (void)_pinPairHandleRequest:(id)request;
- (void)_postDeviceSetupNotificationForDevice:(id)device present:(BOOL)present;
- (void)_primaryAccountChanged;
- (void)_pwsHandleProgressEvent:(unsigned int)event info:(id)info;
- (void)_pwsHandleUserResponse:(int)response device:(id)device info:(id)info;
- (void)_renewAccountIfNecessaryForCFUItems:(id)items completion:(id)completion;
- (void)_repairEnsuredStarted;
- (void)_repairEnsuredStopped;
- (void)_repairHandleCFUItems:(id)items;
- (void)_repairHandleCFUItemsChanged;
- (void)_repairHandleCNSStateChanged;
- (void)_repairHandleCompletion;
- (void)_repairHandleManateeChanged;
- (void)_repairProblemCheck;
- (void)_repairProblemFlagsChanged;
- (void)_repairSilentProgress:(unsigned int)progress info:(id)info;
- (void)_repairSilentStart:(id)start;
- (void)_repairUpdateIDSCache;
- (void)_repairVPNError:(id)error;
- (void)_resetTriggers;
- (void)_scanTimerFired;
- (void)_screenStateChanged;
- (void)_uiLockStatusChanged;
- (void)_uiStartAppleTVSetup:(id)setup extraInfo:(id)info;
- (void)_uiStartAuthenticateAccounts:(id)accounts;
- (void)_uiStartForMacWithDevice:(id)device label:(id)label extraInfo:(id)info;
- (void)_uiStartHomeKitDeviceDetectedWithURL:(id)l;
- (void)_uiStartSetupB238:(id)b238 extraInfo:(id)info;
- (void)_uiStartSetupWatch:(id)watch;
- (void)_uiStartTVLatencyBanner:(id)banner forActionType:(unsigned __int8)type;
- (void)_uiStartTVLatencySetup:(id)setup extraInfo:(id)info forActionType:(unsigned __int8)type;
- (void)_uiStartWiFiPasswordSharing:(id)sharing;
- (void)_uiStartWithDevice:(id)device viewControllerName:(id)name xpcEndpoint:(id)endpoint label:(id)label extraInfo:(id)info;
- (void)_uiStartWithDevice:(id)device viewControllerName:(id)name xpcEndpoint:(id)endpoint label:(id)label unlessApps:(id)apps extraInfo:(id)info;
- (void)_uiStopIfNeededWithDevice:(id)device;
- (void)_update;
- (void)_watchFastScanStartIfAllowed:(id)allowed;
- (void)_watchFastScanStop;
- (void)_watchFound:(id)found;
- (void)_watchStartMigration:(id)migration;
- (void)_wifiStateChanged;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)nfcTagReaderUIActivateWithEndpoint:(id)endpoint params:(id)params completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openSetupURL:(id)l;
- (void)prefsChanged;
- (void)proximityDeviceDidTrigger:(id)trigger;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)repairDevice:(id)device flags:(unsigned int)flags completion:(id)completion;
- (void)retriggerProximitySetup:(id)setup;
- (void)setPreventRepair:(BOOL)repair;
- (void)setupDevice:(id)device homeIdentifier:(id)identifier completion:(id)completion;
- (void)showDevicePickerWithInfo:(id)info completion:(id)completion;
- (void)testHomeKitDeviceDetected:(id)detected;
- (void)testNFCUI:(id)i;
- (void)testPairUI:(id)i;
- (void)testProxCardKit:(id)kit;
- (void)testRepairUI:(id)i;
- (void)testSetupUIB238:(id)b238;
- (void)testSetupUIPasswordSharing:(id)sharing;
- (void)testSetupUIWHA:(id)a;
- (void)testSetupUIWatch:(id)watch;
- (void)testSetupUIiOS:(id)s;
- (void)testUIAppleTVSetup:(id)setup;
- (void)testUIShareAudio:(id)audio;
- (void)testUITVLatencyColorimeterSetup:(id)setup;
- (void)testUITVLatencySetup:(id)setup;
- (void)triggerHomeKitDeviceDetectedWithURL:(id)l completion:(id)completion;
@end

@implementation SDSetupAgent

+ (SDSetupAgent)sharedSetupAgent
{
  if (qword_100989AB8 != -1)
  {
    sub_1000A47D8();
  }

  v3 = gSDSetupAgent;

  return v3;
}

- (SDSetupAgent)init
{
  v6.receiver = self;
  v6.super_class = SDSetupAgent;
  v2 = [(SDSetupAgent *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    v4 = *(v2 + 46);
    *(v2 + 46) = v3;

    *(v2 + 252) = -1;
    *(v2 + 18) = -1;
    *(v2 + 69) = -1;
    *(v2 + 85) = -1;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_deviceDiscovery)
  {
    sub_1000A47EC();
    goto LABEL_6;
  }

  if (self->_scanTimer)
  {
LABEL_6:
    sub_1000A4804();
    goto LABEL_7;
  }

  if (!self->_pinPairService)
  {
    v5.receiver = self;
    v5.super_class = SDSetupAgent;
    [(SDSetupAgent *)&v5 dealloc];
    return;
  }

LABEL_7:
  v2 = sub_1000A481C();
  [(SDSetupAgent *)v2 setPreventRepair:v3, v4];
}

- (void)setPreventRepair:(BOOL)repair
{
  repairCopy = repair;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_preventRepair != repairCopy)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4834();
    }

    self->_preventRepair = repairCopy;

    [(SDSetupAgent *)self _update];
  }
}

- (id)descriptionWithLevel:(int)level
{
  v146 = 0;
  NSAppendPrintF();
  v4 = 0;
  v145 = v4;
  if (self->_deviceDiscovery)
  {
    deviceDiscovery = self->_deviceDiscovery;
  }

  else
  {
    deviceDiscovery = @"off";
  }

  v94 = [(NSMutableDictionary *)self->_devices count];
  v96 = [(NSMutableDictionary *)self->_triggeredDevices count];
  v87 = deviceDiscovery;
  NSAppendPrintF();
  v6 = v145;

  p_triggeredDevices = &self->_triggeredDevices;
  scanSeconds = self->_scanSeconds;
  if (scanSeconds >= 1)
  {
    v144 = v6;
    if (self->_scanTimer)
    {
      v9 = "on";
    }

    else
    {
      v9 = "off";
    }

    v87 = v9;
    v94 = scanSeconds;
    NSAppendPrintF();
    v10 = v144;

    v6 = v10;
  }

  if (self->_remoteAlertHandle)
  {
    v143 = v6;
    v87 = "yes";
    NSAppendPrintF();
    v11 = v6;

    v6 = v11;
  }

  selfCopy = self;
  if ([(NSMutableDictionary *)self->_devices count:v87])
  {
    p_devices = &self->_devices;
  }

  else
  {
    p_devices = &self->_triggeredDevices;
  }

  v13 = *p_devices;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = v13;
  v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v139 objects:v152 count:16];
  if (v14)
  {
    pinPairUUID2 = v14;
    v16 = *v140;
    do
    {
      v17 = 0;
      v18 = v6;
      do
      {
        if (*v140 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v139 + 1) + 8 * v17);
        v138 = v18;
        pinPairUUID = [(NSMutableDictionary *)*p_triggeredDevices objectForKeyedSubscript:v19, problemFlags, pinPairUUID];
        if (pinPairUUID)
        {
          v21 = "TRIG";
        }

        else
        {
          v21 = "----";
        }

        v22 = [(NSMutableDictionary *)obj objectForKeyedSubscript:v19];
        [v22 description];
        pinPairUUID = problemFlags = v21;
        NSAppendPrintF();
        v6 = v138;

        v17 = v17 + 1;
        v18 = v6;
      }

      while (pinPairUUID2 != v17);
      pinPairUUID2 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v139 objects:v152 count:16, v21, pinPairUUID];
    }

    while (pinPairUUID2);
  }

  pinPairService = selfCopy->_pinPairService;
  if (pinPairService)
  {
    v137 = v6;
    problemFlags = pinPairService;
    NSAppendPrintF();
    v24 = v6;

    v6 = v24;
  }

  pinPairSession = selfCopy->_pinPairSession;
  if (pinPairSession)
  {
    v136 = v6;
    problemFlags = pinPairSession;
    pinPairUUID = selfCopy->_pinPairUUID;
    NSAppendPrintF();
    v26 = v6;

    v6 = v26;
  }

  if (selfCopy->_repairEnabled)
  {
    v135 = v6;
    problemFlags = selfCopy->_problemFlags;
    pinPairUUID = &unk_1007F4888;
    NSAppendPrintF();
    v27 = v6;

    if (selfCopy->_repairService)
    {
      v134 = v27;
      NSAppendPrintF();
      v28 = v27;

      v27 = v28;
    }

    wifiHealthMonitor = selfCopy->_wifiHealthMonitor;
    if (wifiHealthMonitor)
    {
      v133 = v27;
      problemFlags = wifiHealthMonitor;
      NSAppendPrintF();
      v30 = v27;

      v27 = v30;
    }

    v132 = v27;
    NSAppendPrintF();
    v6 = v27;
  }

  repairSession = selfCopy->_repairSession;
  if (repairSession)
  {
    v131 = v6;
    peerDevice = [(SFDeviceRepairSession *)repairSession peerDevice];
    problemFlags = [peerDevice identifier];
    NSAppendPrintF();
    v33 = v6;

    v6 = v33;
  }

  watchSetupScanner = selfCopy->_watchSetupScanner;
  if (watchSetupScanner)
  {
    v130 = v6;
    problemFlags = watchSetupScanner;
    NSAppendPrintF();
    v35 = v6;

    v6 = v35;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v36 = selfCopy->_watchSetupDevices;
  v37 = [(NSMutableDictionary *)v36 countByEnumeratingWithState:&v126 objects:v151 count:16];
  if (v37)
  {
    problemFlags = v37;
    v39 = *v127;
    do
    {
      v40 = 0;
      v41 = v6;
      do
      {
        if (*v127 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v126 + 1) + 8 * v40);
        v125 = v41;
        problemFlags = [(NSMutableDictionary *)selfCopy->_watchSetupDevices objectForKeyedSubscript:v42, problemFlags, pinPairUUID];
        NSAppendPrintF();
        v6 = v41;

        v40 = v40 + 1;
        v41 = v6;
      }

      while (problemFlags != v40);
      problemFlags = [(NSMutableDictionary *)v36 countByEnumeratingWithState:&v126 objects:v151 count:16, problemFlags];
    }

    while (problemFlags);
  }

  v43 = +[SDStatusMonitor sharedMonitor];
  wifiPasswordSharingAvailability = [v43 wifiPasswordSharingAvailability];

  v124 = v6;
  if (selfCopy->_pwsGrantingEnabled)
  {
    v45 = "enabled";
  }

  else
  {
    v45 = "disabled";
  }

  v89 = v45;
  NSAppendPrintF();
  v46 = v124;

  if (level <= 10)
  {
    v47 = [SDAppleIDAgent sharedAgent:v89];
    myAccount = [v47 myAccount];
    validationRecord = [myAccount validationRecord];

    myAppleIDPhoneHash = [(SDStatusMonitor *)selfCopy->_statusMonitor myAppleIDPhoneHash];
    v50 = [myAppleIDPhoneHash componentsSeparatedByString:{@", "}];

    if ([v50 count])
    {
      v123 = v46;
      NSAppendPrintF();
      v51 = v46;

      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v52 = v50;
      v53 = [v52 countByEnumeratingWithState:&v119 objects:v150 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v120;
        do
        {
          v56 = 0;
          v57 = v51;
          do
          {
            if (*v120 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v58 = *(*(&v119 + 1) + 8 * v56);
            v118 = v57;
            v90 = SFHexStringForBase64EncodedString();
            NSAppendPrintF();
            v51 = v57;

            v56 = v56 + 1;
            v57 = v51;
          }

          while (v54 != v56);
          v54 = [v52 countByEnumeratingWithState:&v119 objects:v150 count:{16, v90}];
        }

        while (v54);
      }

      v46 = v51;
    }

    validatedPhoneHashes = [validationRecord validatedPhoneHashes];

    if ([validatedPhoneHashes count])
    {
      v117 = v46;
      NSAppendPrintF();
      v60 = v46;

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v61 = validatedPhoneHashes;
      v62 = [v61 countByEnumeratingWithState:&v113 objects:v149 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v114;
        do
        {
          v65 = 0;
          v66 = v60;
          do
          {
            if (*v114 != v64)
            {
              objc_enumerationMutation(v61);
            }

            v67 = *(*(&v113 + 1) + 8 * v65);
            v112 = v66;
            v91 = v67;
            NSAppendPrintF();
            v60 = v66;

            v65 = v65 + 1;
            v66 = v60;
          }

          while (v63 != v65);
          v63 = [v61 countByEnumeratingWithState:&v113 objects:v149 count:{16, v91}];
        }

        while (v63);
      }

      v46 = v60;
    }

    myAppleIDEmailHash = [(SDStatusMonitor *)selfCopy->_statusMonitor myAppleIDEmailHash];
    v69 = [myAppleIDEmailHash componentsSeparatedByString:{@", "}];

    if ([v69 count])
    {
      v111 = v46;
      NSAppendPrintF();
      v70 = v46;

      v110 = 0u;
      v108 = 0u;
      v109 = 0u;
      v107 = 0u;
      v71 = v69;
      v72 = [v71 countByEnumeratingWithState:&v107 objects:v148 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v108;
        do
        {
          v75 = 0;
          v76 = v70;
          do
          {
            if (*v108 != v74)
            {
              objc_enumerationMutation(v71);
            }

            v77 = *(*(&v107 + 1) + 8 * v75);
            v106 = v76;
            v92 = SFHexStringForBase64EncodedString();
            NSAppendPrintF();
            v70 = v76;

            v75 = v75 + 1;
            v76 = v70;
          }

          while (v73 != v75);
          v73 = [v71 countByEnumeratingWithState:&v107 objects:v148 count:{16, v92}];
        }

        while (v73);
      }

      v46 = v70;
    }

    validatedEmailHashes = [validationRecord validatedEmailHashes];

    if ([validatedEmailHashes count])
    {
      v105 = v46;
      NSAppendPrintF();
      v79 = v46;

      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v80 = validatedEmailHashes;
      v81 = [v80 countByEnumeratingWithState:&v101 objects:v147 count:16];
      if (v81)
      {
        v82 = v81;
        v83 = *v102;
        do
        {
          v84 = 0;
          v85 = v79;
          do
          {
            if (*v102 != v83)
            {
              objc_enumerationMutation(v80);
            }

            v93 = *(*(&v101 + 1) + 8 * v84);
            NSAppendPrintF();
            v79 = v85;

            v84 = v84 + 1;
            v85 = v79;
          }

          while (v82 != v84);
          v82 = [v80 countByEnumeratingWithState:&v101 objects:v147 count:{16, v93}];
        }

        while (v82);
      }

      v46 = v79;
    }
  }

  return v46;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096818;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A488C();
  }

  if (self->_profilesNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000968F8;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &self->_profilesNotifyToken, dispatchQueue, handler);
  }

  [(SDSetupAgent *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000969E8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A48C4();
  }

  profilesNotifyToken = self->_profilesNotifyToken;
  if (profilesNotifyToken != -1)
  {
    notify_cancel(profilesNotifyToken);
    self->_profilesNotifyToken = -1;
  }

  [(SDSetupAgent *)self _ensureClientStopped];

  [(SDSetupAgent *)self _ensureServerStopped];
}

- (void)nfcTagReaderUIActivateWithEndpoint:(id)endpoint params:(id)params completion:(id)completion
{
  endpointCopy = endpoint;
  paramsCopy = params;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100096B70;
  v15[3] = &unk_1008CE6B8;
  v15[4] = self;
  v16 = endpointCopy;
  v17 = paramsCopy;
  v18 = completionCopy;
  v12 = paramsCopy;
  v13 = endpointCopy;
  v14 = completionCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)openSetupURL:(id)l
{
  lCopy = l;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_remoteAlertHandle)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4918();
    }

    objc_storeStrong(&self->_setupURL, l);
  }

  else
  {
    [(SDSetupAgent *)self _openSetupURL:lCopy];
  }
}

- (void)_openSetupURL:(id)l
{
  lCopy = l;
  v9[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v9[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v10[0] = &__kCFBooleanTrue;
  v10[1] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = 0;
  v6 = [v5 openSensitiveURL:lCopy withOptions:v4 error:&v8];
  v7 = v8;

  if (v6)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4958();
    }
  }

  else if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)prefsChanged
{
  v27 = 0;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  CFPrefs_GetData();
  v3 = [[NSData alloc] initWithBytes:&v27 length:0];
  bleAuthTagFilter = self->_bleAuthTagFilter;
  v5 = v3;
  v6 = bleAuthTagFilter;
  v7 = v6;
  if (v5 == v6)
  {

    v9 = v5;
LABEL_12:

    goto LABEL_13;
  }

  if ((v5 != 0) == (v6 == 0))
  {

LABEL_7:
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      v25 = self->_bleAuthTagFilter;
      v26 = v5;
      LogPrintF();
    }

    v10 = v5;
    v9 = self->_bleAuthTagFilter;
    self->_bleAuthTagFilter = v10;
    goto LABEL_12;
  }

  v8 = [(NSData *)v5 isEqual:v6];

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  v11 = CFPrefs_GetInt64() != 0;
  if (self->_cdpEnabled != v11)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4998();
    }

    self->_cdpEnabled = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_clientEnabled != v12)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A49F0();
    }

    self->_clientEnabled = v12;
  }

  v13 = CFPrefs_GetInt64() != 0;
  if (!IsAppleInternalBuild())
  {
    v13 = 0;
  }

  if (self->_pwsAutoGrantingEnabled != v13)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4A48();
    }

    self->_pwsAutoGrantingEnabled = v13;
  }

  v14 = CFPrefs_GetInt64() != 0;
  if (self->_pwsGrantingEnabled != v14)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4AA0();
    }

    self->_pwsGrantingEnabled = v14;
  }

  v15 = CFPrefs_GetInt64() != 0;
  if (self->_repairEnabled != v15)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4AF8();
    }

    self->_repairEnabled = v15;
  }

  *&self->_prefRepairAccounts = 0;
  v16 = SFIsDeviceAudioAccessory();
  self->_prefRepairVPN = v16;
  self->_prefRepairWiFi = v16;
  v17 = CFPrefs_GetInt64() != 0;
  if (self->_repairSilent != v17)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4B50();
    }

    self->_repairSilent = v17;
  }

  Int64 = CFPrefs_GetInt64();
  if (Int64 < 0)
  {
    v19 = -1;
  }

  else
  {
    v19 = Int64;
  }

  if (v19 >= 100000)
  {
    v19 = 100000;
  }

  v20 = v19;
  scanSeconds = self->_scanSeconds;
  if (v19 != scanSeconds)
  {
    if (dword_10096FEF8 <= 40)
    {
      if (dword_10096FEF8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_55;
        }

        scanSeconds = self->_scanSeconds;
      }

      v25 = scanSeconds;
      v26 = v20;
      LogPrintF();
    }

LABEL_55:
    self->_scanSeconds = v20;
  }

  v22 = CFPrefs_GetInt64() != 0;
  if (self->_serverEnabled != v22)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4BA8();
    }

    self->_serverEnabled = v22;
  }

  v23 = CFPrefs_GetInt64() != 0;
  if (self->_watchMigrationEnabled != v23)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4C00();
    }

    self->_watchMigrationEnabled = v23;
  }

  v24 = CFPrefs_GetInt64() != 0;
  if (self->_watchSetupEnabled != v24)
  {
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4C58();
    }

    self->_watchSetupEnabled = v24;
  }

  [(SDSetupAgent *)self _update:v25];
}

- (BOOL)reenableProxCardType:(unsigned __int8)type
{
  result = 0;
  if (type <= 24)
  {
    if (type <= 8)
    {
      switch(type)
      {
        case 1u:
          v6 = 153;
          break;
        case 5u:
          v6 = 168;
          break;
        case 6u:
          v6 = 152;
          break;
        default:
          return result;
      }

      goto LABEL_36;
    }

    if (type <= 10)
    {
      if (type == 9)
      {
        v6 = 156;
      }

      else
      {
        v6 = 157;
      }

      goto LABEL_36;
    }

    if (type != 11)
    {
      if (type != 13)
      {
        return result;
      }

      v6 = 169;
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  if (type <= 35)
  {
    if (type <= 31)
    {
      if (type != 25 && type != 30)
      {
        return result;
      }

      v6 = 158;
      goto LABEL_36;
    }

    if (type != 32)
    {
      if (type != 33)
      {
        return result;
      }

LABEL_24:
      v6 = 155;
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  if (type <= 89)
  {
    if (type != 36)
    {
      if (type != 43)
      {
        return result;
      }

LABEL_31:
      v6 = 171;
      goto LABEL_36;
    }

LABEL_32:
    v6 = 170;
LABEL_36:
    *(&self->super.isa + v6) = 0;
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4CCC(type);
    }

    return 1;
  }

  if (type == 90)
  {
    goto LABEL_32;
  }

  if (type == 100)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A4CB0();
    }

    result = 1;
    self->_renableB238SetupAfterWiFi = 1;
  }

  return result;
}

- (void)repairDevice:(id)device flags:(unsigned int)flags completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009782C;
  v13[3] = &unk_1008CE6E0;
  v13[4] = self;
  v14 = deviceCopy;
  flagsCopy = flags;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = deviceCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)retriggerProximitySetup:(id)setup
{
  setupCopy = setup;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100097914;
  v7[3] = &unk_1008CE708;
  v7[4] = self;
  v8 = setupCopy;
  v6 = setupCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)setupDevice:(id)device homeIdentifier:(id)identifier completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097D20;
  block[3] = &unk_1008CE730;
  block[4] = self;
  v13 = deviceCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)showDevicePickerWithInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097E38;
  block[3] = &unk_1008CE758;
  v12 = infoCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = infoCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)triggerHomeKitDeviceDetectedWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098058;
  block[3] = &unk_1008CE758;
  v12 = lCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = lCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clientEnabled)
  {
    [(SDSetupAgent *)self _ensureClientStarted];
  }

  else
  {
    [(SDSetupAgent *)self _ensureClientStopped];
  }

  if (self->_serverEnabled)
  {
    [(SDSetupAgent *)self _ensureServerStarted];
  }

  else
  {
    [(SDSetupAgent *)self _ensureServerStopped];
  }

  if (self->_repairEnabled && !self->_preventRepair)
  {

    [(SDSetupAgent *)self _repairEnsuredStarted];
  }

  else
  {

    [(SDSetupAgent *)self _repairEnsuredStopped];
  }
}

- (void)_ensureClientStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_iTunesNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100098BDC;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.itunesstored.accountschanged", &self->_iTunesNotifyToken, dispatchQueue, handler);
  }

  if (!self->_statusMonitor)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_appleAccountSignIn:" name:@"com.apple.sharingd.AppleAccountSignIn" object:0];
    [v4 addObserver:self selector:"_screenStateChanged" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    v5 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = v5;
  }

  if (!self->_systemMonitor)
  {
    v7 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v7;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100098C58;
    v54[3] = &unk_1008CDEA0;
    v54[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryAppleIDChangedHandler:v54];
    [(CUSystemMonitor *)self->_systemMonitor setCallChangedHandler:&stru_1008CE778];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100098C60;
    v53[3] = &unk_1008CDEA0;
    v53[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenLockedChangedHandler:v53];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100098C68;
    v52[3] = &unk_1008CDEA0;
    v52[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setWifiStateChangedHandler:v52];
    v9 = self->_systemMonitor;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100098C70;
    v51[3] = &unk_1008CDEA0;
    v51[4] = self;
    [(CUSystemMonitor *)v9 activateWithCompletion:v51];
  }

  scanEligible = self->_scanEligible;
  screenOn = [(SDStatusMonitor *)self->_statusMonitor screenOn];
  self->_scanEligible = screenOn;
  v12 = scanEligible;
  if (scanEligible == screenOn)
  {
    goto LABEL_19;
  }

  if (dword_10096FEF8 > 30)
  {
    v12 = screenOn;
    goto LABEL_19;
  }

  if (dword_10096FEF8 == -1)
  {
    v15 = _LogCategory_Initialize();
    LOBYTE(screenOn) = self->_scanEligible;
    v12 = screenOn;
    if (!v15)
    {
LABEL_19:
      if (v12)
      {
        goto LABEL_20;
      }

LABEL_16:
      self->_shouldScan = 0;
      goto LABEL_29;
    }
  }

  v13 = "no";
  if (scanEligible)
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  if (screenOn)
  {
    v13 = "yes";
  }

  v43 = v14;
  v44 = v13;
  LogPrintF();
  if (!self->_scanEligible)
  {
    goto LABEL_16;
  }

LABEL_20:
  if ((scanEligible & 1) == 0)
  {
    self->_shouldScan = 1;
    scanTimer = self->_scanTimer;
    if (scanTimer)
    {
      v17 = scanTimer;
      dispatch_source_cancel(v17);
      v18 = self->_scanTimer;
      self->_scanTimer = 0;
    }

    scanSeconds = self->_scanSeconds;
    if (scanSeconds >= 1)
    {
      if (dword_10096FEF8 <= 30)
      {
        if (dword_10096FEF8 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_28;
          }

          scanSeconds = self->_scanSeconds;
        }

        v43 = scanSeconds;
        LogPrintF();
      }

LABEL_28:
      v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      v21 = self->_scanTimer;
      self->_scanTimer = v20;

      v22 = self->_scanTimer;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100098CAC;
      v50[3] = &unk_1008CDEA0;
      v50[4] = self;
      dispatch_source_set_event_handler(v22, v50);
      v23 = 1000000000 * self->_scanSeconds;
      v24 = self->_scanTimer;
      v25 = dispatch_time(0, v23);
      dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, v23 / 0xA);
      dispatch_resume(self->_scanTimer);
    }
  }

LABEL_29:
  if (self->_shouldScan)
  {
    if (!self->_deviceDiscovery)
    {
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A4F08();
      }

      v26 = objc_alloc_init(SFDeviceDiscovery);
      deviceDiscovery = self->_deviceDiscovery;
      self->_deviceDiscovery = v26;

      [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:5];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:235011968];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setFastScanMode:2];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setPurpose:@"SetupAgent"];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:20];
      [(SFDeviceDiscovery *)self->_deviceDiscovery setRssiThreshold:-70];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100098CB4;
      v49[3] = &unk_1008CE7A0;
      v49[4] = self;
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v49];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100098CC0;
      v48[3] = &unk_1008CE7A0;
      v48[4] = self;
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v48];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10002FBEC;
      v47[3] = &unk_1008CE7C8;
      v47[4] = self;
      [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v47];
      [(SFDeviceDiscovery *)self->_deviceDiscovery activateWithCompletion:&stru_1008CE7E8];
    }

    if (self->_watchSetupEnabled && !self->_watchSetupScanner)
    {
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A4F3C();
      }

      v28 = [[SFBLEScanner alloc] initWithType:17];
      watchSetupScanner = self->_watchSetupScanner;
      self->_watchSetupScanner = v28;

      [(SFBLEScanner *)self->_watchSetupScanner setDispatchQueue:self->_dispatchQueue];
      [(SFBLEScanner *)self->_watchSetupScanner setChangeFlags:13];
      [(SFBLEScanner *)self->_watchSetupScanner setRssiThreshold:-60];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100098D7C;
      v46[3] = &unk_1008CE810;
      v46[4] = self;
      [(SFBLEScanner *)self->_watchSetupScanner setDeviceFoundHandler:v46];
      [(SFBLEScanner *)self->_watchSetupScanner setDeviceLostHandler:&stru_1008CE850];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100098E84;
      v45[3] = &unk_1008CE878;
      v45[4] = self;
      [(SFBLEScanner *)self->_watchSetupScanner setDeviceChangedHandler:v45];
      [(SFBLEScanner *)self->_watchSetupScanner activateWithCompletion:&stru_1008CE898];
      if (!self->_proximityController)
      {
        v30 = +[SDProximityController sharedController];
        proximityController = self->_proximityController;
        self->_proximityController = v30;
      }
    }
  }

  else
  {
    v32 = self->_scanTimer;
    if (v32)
    {
      v33 = v32;
      dispatch_source_cancel(v33);
      v34 = self->_scanTimer;
      self->_scanTimer = 0;
    }

    if (self->_deviceDiscovery)
    {
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A4EA0();
      }

      [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate:v43];
      v35 = self->_deviceDiscovery;
      self->_deviceDiscovery = 0;

      [(NSMutableDictionary *)self->_devices removeAllObjects];
      devices = self->_devices;
      self->_devices = 0;

      [(SDSetupAgent *)self _resetTriggers];
    }

    [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
    unoteTVLatencySetup = self->_unoteTVLatencySetup;
    self->_unoteTVLatencySetup = 0;

    watchFastScanTimer = self->_watchFastScanTimer;
    if (watchFastScanTimer)
    {
      v39 = watchFastScanTimer;
      dispatch_source_cancel(v39);
      v40 = self->_watchFastScanTimer;
      self->_watchFastScanTimer = 0;
    }

    if (self->_watchSetupScanner)
    {
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A4ED4();
      }

      [(SFBLEScanner *)self->_watchSetupScanner invalidate];
      v41 = self->_watchSetupScanner;
      self->_watchSetupScanner = 0;

      [(NSMutableDictionary *)self->_watchSetupDevices removeAllObjects];
      watchSetupDevices = self->_watchSetupDevices;
      self->_watchSetupDevices = 0;

      self->_triggeredUIWatchSetup = 0;
    }
  }
}

- (void)_ensureClientStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  iTunesNotifyToken = self->_iTunesNotifyToken;
  if (iTunesNotifyToken != -1)
  {
    notify_cancel(iTunesNotifyToken);
    self->_iTunesNotifyToken = -1;
  }

  if (self->_statusMonitor)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"com.apple.sharingd.AppleAccountSignIn" object:0];
    [v4 removeObserver:self name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    statusMonitor = self->_statusMonitor;
    self->_statusMonitor = 0;
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  if (self->_deviceDiscovery)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A50E8();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;

  self->_scanEligible = 0;
  scanTimer = self->_scanTimer;
  if (scanTimer)
  {
    v10 = scanTimer;
    dispatch_source_cancel(v10);
    v11 = self->_scanTimer;
    self->_scanTimer = 0;
  }

  self->_shouldScan = 0;
  [(SDSetupAgent *)self _resetTriggers];
  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    [(SBSRemoteAlertHandle *)remoteAlertHandle removeObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v13 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;
  }

  [(SFDeviceRepairSession *)self->_repairSession invalidate];
  repairSession = self->_repairSession;
  self->_repairSession = 0;

  setupURL = self->_setupURL;
  self->_setupURL = 0;

  [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
  unoteTVLatencySetup = self->_unoteTVLatencySetup;
  self->_unoteTVLatencySetup = 0;

  watchFastScanTimer = self->_watchFastScanTimer;
  if (watchFastScanTimer)
  {
    v18 = watchFastScanTimer;
    dispatch_source_cancel(v18);
    v19 = self->_watchFastScanTimer;
    self->_watchFastScanTimer = 0;
  }

  if (self->_watchSetupScanner)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5104();
    }

    [(SFBLEScanner *)self->_watchSetupScanner invalidate];
    watchSetupScanner = self->_watchSetupScanner;
    self->_watchSetupScanner = 0;
  }

  [(NSMutableDictionary *)self->_watchSetupDevices removeAllObjects];
  watchSetupDevices = self->_watchSetupDevices;
  self->_watchSetupDevices = 0;

  self->_triggeredUIWatchSetup = 0;
}

- (void)_launchAppWithMachServiceName:(id)name
{
  nameCopy = name;
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5120();
  }

  uTF8String = [nameCopy UTF8String];
  if (uTF8String)
  {
    mach_service = xpc_connection_create_mach_service(uTF8String, self->_dispatchQueue, 0);
    xpc_connection_set_event_handler(mach_service, &stru_1008CE8D8);
    xpc_connection_activate(mach_service);
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v7, "SharingXPCLaunch", 1);
    xpc_connection_send_message(mach_service, v7);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009939C;
    v9[3] = &unk_1008CE028;
    v10 = mach_service;
    v11 = nameCopy;
    v8 = mach_service;
    xpc_connection_send_barrier(v8, v9);
  }
}

- (void)_postDeviceSetupNotificationForDevice:(id)device present:(BOOL)present
{
  presentCopy = present;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v11[0] = @"deviceID";
    v11[1] = @"needsSetup";
    v12[0] = uUIDString;
    v8 = &__kCFBooleanFalse;
    if (presentCopy && [deviceCopy needsSetup])
    {
      v8 = &__kCFBooleanTrue;
    }

    v12[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v10 = +[NSDistributedNotificationCenter defaultCenter];
    [v10 postNotificationName:@"com.apple.sharing.DeviceSetup" object:@"com.apple.sharingd" userInfo:v9 deliverImmediately:1];
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A51E4();
    }
  }
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000995F0;
  v7[3] = &unk_1008CE028;
  v8 = activateCopy;
  selfCopy = self;
  v6 = activateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009970C;
  v7[3] = &unk_1008CE028;
  v8 = deactivateCopy;
  selfCopy = self;
  v6 = deactivateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099854;
  block[3] = &unk_1008CE900;
  v12 = handleCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_appleAccountSignIn:(id)in
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000999A8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_primaryAccountChanged
{
  systemMonitor = self->_systemMonitor;
  if (systemMonitor)
  {
    manateeAvailable = [(CUSystemMonitor *)systemMonitor manateeAvailable];
    if (self->_d2dEncryptionAvailable != manateeAvailable)
    {
      self->_d2dEncryptionAvailable = manateeAvailable;
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A5340();
      }

      [(SDSetupAgent *)self _resetTriggers];
    }
  }
}

- (void)_iTunesAccountsChanged
{
  if (self->_triggeredUIB238Setup || self->_triggeredUIRepair)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5380();
    }

    [(SDSetupAgent *)self _resetTriggers];
  }
}

- (void)_resetTriggers
{
  [(NSMutableDictionary *)self->_triggeredDevices removeAllObjects];
  triggeredDevices = self->_triggeredDevices;
  self->_triggeredDevices = 0;

  *&self->_triggeredUIWHASetup = 0;
  self->_triggeredUIAuthenticateAccounts = 0;
  *&self->_triggeredUIAppleTVPair = 0;
  *&self->_triggeredUIB238Setup = 0;
}

- (void)_scanTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A539C();
  }

  scanTimer = self->_scanTimer;
  if (scanTimer)
  {
    v4 = scanTimer;
    dispatch_source_cancel(v4);
    v5 = self->_scanTimer;
    self->_scanTimer = 0;
  }

  self->_shouldScan = 0;

  [(SDSetupAgent *)self _update];
}

- (BOOL)_screenLocked
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v2 = +[SDStatusMonitor sharedMonitor];
  deviceKeyBagLocked = [v2 deviceKeyBagLocked];

  return deviceKeyBagLocked;
}

- (void)_screenStateChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099CD8;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_shouldOfferPassword:(id)password
{
  passwordCopy = password;
  v14 = 0;
  requestSSID = [passwordCopy requestSSID];
  contactIdentifier = [passwordCopy contactIdentifier];

  if (!contactIdentifier)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A54F4();
    }

    goto LABEL_23;
  }

  v6 = +[SDStatusMonitor sharedMonitor];
  contactIdentifier2 = [passwordCopy contactIdentifier];
  v8 = [v6 contactIdentifierIsBlocked:contactIdentifier2];

  if (v8)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A54D8();
    }

    goto LABEL_23;
  }

  if (!requestSSID)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A54BC();
    }

LABEL_23:
    v9 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  v15 = @"ssid";
  v16 = requestSSID;
  [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v9 = WiFiCopyNetworkInfo();
  v13 = 0;
  if (CFDictionaryGetInt64Ranged() == 3)
  {
    v10 = SFShareablePasswordForSSID();
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5440();
  }

LABEL_11:

  return v11;
}

- (void)_uiLockStatusChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009A218;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_uiStartAppleTVSetup:(id)setup extraInfo:(id)info
{
  if (info)
  {
    setupCopy = setup;
    v8 = [info mutableCopy];
  }

  else
  {
    setupCopy2 = setup;
    v8 = +[NSMutableDictionary dictionary];
  }

  v12 = v8;
  v10 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [setup deviceModelCode]);
  [v12 setObject:v10 forKeyedSubscript:@"deviceModelCode"];

  v11 = [v12 copy];
  [(SDSetupAgent *)self _uiStartWithDevice:setup viewControllerName:@"TVSetupUIService.TVSetupAlertViewController" label:@"AppleTVSetupUI" unlessApps:0 extraInfo:v11];
}

- (void)_uiStartHomeKitDeviceDetectedWithURL:(id)l
{
  absoluteString = [l absoluteString];
  if (absoluteString)
  {
    v5 = objc_alloc_init(SFDevice);
    v6 = +[NSUUID UUID];
    [v5 setIdentifier:v6];

    v8 = @"urlStr";
    v9 = absoluteString;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [(SDSetupAgent *)self _uiStartWithDevice:v5 viewControllerName:@"HomeKitDeviceDetectedMainController" label:@"HomeKitDeviceDetected" unlessApps:0 extraInfo:v7];
  }
}

- (void)_uiStartSetupB238:(id)b238 extraInfo:(id)info
{
  if (info)
  {
    b238Copy = b238;
    v8 = [info mutableCopy];
  }

  else
  {
    b238Copy2 = b238;
    v8 = objc_opt_new();
  }

  v12 = v8;
  v10 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [b238 deviceModelCode]);
  [v12 setValue:v10 forKey:@"deviceModelCode"];

  [b238 setDeviceActionType:33];
  v11 = [v12 copy];
  [(SDSetupAgent *)self _uiStartWithDevice:b238 viewControllerName:@"HDSViewService.HomePodSetupFlowViewController" label:@"B238SetupUI" unlessApps:0 extraInfo:v11];
}

- (BOOL)_deviceHandlesDovePeaceSetup
{
  if (SFDeviceClassCodeGet() == 3)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = SFDeviceClassCodeGet();
    if (v2 != 1)
    {
      LOBYTE(v2) = SFDeviceClassCodeGet() == 2;
    }
  }

  return v2;
}

- (void)_uiStartSetupWatch:(id)watch
{
  watchCopy = watch;
  v4 = +[NSMutableDictionary dictionary];
  if (!_os_feature_enabled_impl())
  {
    name = [watchCopy name];
    if (name)
    {
      [v4 setObject:name forKeyedSubscript:@"advertisingName"];
    }

    bleDevice = [watchCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    v10 = [advertisementFields objectForKeyedSubscript:@"wpv"];

    if (v10)
    {
      [v4 setObject:v10 forKeyedSubscript:@"pairingVersion"];
    }

    goto LABEL_9;
  }

  bleDevice2 = [watchCopy bleDevice];
  advertisementFields2 = [bleDevice2 advertisementFields];
  name = [advertisementFields2 objectForKeyedSubscript:@"wd"];

  if (name)
  {
    [v4 setObject:name forKeyedSubscript:@"watchData"];
LABEL_9:

    [(SDSetupAgent *)self _uiStartWithDevice:watchCopy viewControllerName:@"WatchSetupViewControllerProxy" label:@"WatchSetupUI" unlessApps:&off_10090FF50 extraInfo:v4];
    goto LABEL_10;
  }

  if (dword_10096FEF8 <= 90 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5510();
  }

LABEL_10:
}

- (void)_uiStartAuthenticateAccounts:(id)accounts
{
  accountsCopy = accounts;
  v4 = @"SharingViewService.AuthenticateAccountsFlowViewController";
  if (_os_feature_enabled_impl() && [accountsCopy osVersion] > 0xC)
  {
    v4 = @"AppleIDSetupUIService.SetupAlertViewController";
  }

  [(SDSetupAgent *)self _uiStartWithDevice:accountsCopy viewControllerName:v4 label:@"AuthenticateAccountsUI" unlessApps:0 extraInfo:0];
}

- (void)_uiStartTVLatencyBanner:(id)banner forActionType:(unsigned __int8)type
{
  typeCopy = type;
  bannerCopy = banner;
  unoteTVLatencySetup = self->_unoteTVLatencySetup;
  if (!unoteTVLatencySetup)
  {
    goto LABEL_20;
  }

  identifier = [(CUUserNotificationSession *)unoteTVLatencySetup identifier];
  identifier2 = [bannerCopy identifier];
  uUIDString = [identifier2 UUIDString];
  v11 = [identifier isEqual:uUIDString];

  if ((v11 & 1) == 0)
  {
LABEL_20:
    if (GestaltGetDeviceClass() == 1 && MGIsQuestionValid())
    {
      v12 = MGGetBoolAnswer() ^ 1;
    }

    else
    {
      v12 = 1;
    }

    if (typeCopy == 30 && v12)
    {
      if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A562C();
      }
    }

    else
    {
      [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
      v13 = objc_alloc_init(CUUserNotificationSession);
      v14 = self->_unoteTVLatencySetup;
      self->_unoteTVLatencySetup = v13;

      [(CUUserNotificationSession *)v13 setBundleID:@"com.apple.SFUserNotificationTVLatency"];
      [(CUUserNotificationSession *)v13 setCategoryID:@"SFUserNotificationTVLatency"];
      [(CUUserNotificationSession *)v13 setDispatchQueue:self->_dispatchQueue];
      v15 = SFLocalizedStringForKey();
      [(CUUserNotificationSession *)v13 setHeader:v15];

      [(CUUserNotificationSession *)v13 setFlags:1];
      identifier3 = [bannerCopy identifier];
      uUIDString2 = [identifier3 UUIDString];
      [(CUUserNotificationSession *)v13 setIdentifier:uUIDString2];

      if (typeCopy == 25)
      {
        [(CUUserNotificationSession *)v13 setTitleKey:@"TV_LATENCY_TITLE"];
        v18 = SFAddSuffixForCurrentDeviceClass();
        [(CUUserNotificationSession *)v13 setBodyKey:v18];
      }

      else
      {
        v19 = SFLocalizedStringForKeyInStringsFileNamed();
        [(CUUserNotificationSession *)v13 setTitleKey:v19];

        v18 = SFAddSuffixForCurrentDeviceClass();
        v20 = SFLocalizedStringForKeyInStringsFileNamed();
        [(CUUserNotificationSession *)v13 setBodyKey:v20];
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10009B1E0;
      v21[3] = &unk_1008CE928;
      v21[4] = self;
      v22 = bannerCopy;
      v23 = typeCopy;
      [(CUUserNotificationSession *)v13 setActionHandler:v21];
      [(CUUserNotificationSession *)v13 activate];
    }
  }
}

- (void)_uiStartTVLatencySetup:(id)setup extraInfo:(id)info forActionType:(unsigned __int8)type
{
  if (type == 25)
  {
    v6 = @"TVLatencySetupMainController";
  }

  else
  {
    v6 = @"TVLatencyColorimeterSetupMainController";
  }

  [(SDSetupAgent *)self _uiStartWithDevice:setup viewControllerName:v6 label:@"TVLatencySetupUI" unlessApps:0 extraInfo:info];
}

- (void)_uiStartWiFiPasswordSharing:(id)sharing
{
  sharingCopy = sharing;
  v5 = +[SDHotspotAgent sharedAgent];
  contactIdentifier = [sharingCopy contactIdentifier];
  requestSSID = [sharingCopy requestSSID];
  v8 = requestSSID;
  if (!contactIdentifier)
  {
    sub_1000A5878();
    goto LABEL_19;
  }

  if (!requestSSID)
  {
    sub_1000A5818();
    goto LABEL_19;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  computerName = [(SDStatusMonitor *)self->_statusMonitor computerName];
  myAppleIDEmailHash = [(SDStatusMonitor *)self->_statusMonitor myAppleIDEmailHash];
  myAppleIDPhoneHash = [(SDStatusMonitor *)self->_statusMonitor myAppleIDPhoneHash];
  if (!(myAppleIDEmailHash | myAppleIDPhoneHash) && dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A56A8();
  }

  [v9 setObject:contactIdentifier forKeyedSubscript:@"cid"];
  if (computerName)
  {
    [v9 setObject:computerName forKeyedSubscript:@"dn"];
  }

  if (myAppleIDEmailHash)
  {
    [v9 setObject:myAppleIDEmailHash forKeyedSubscript:@"eh"];
  }

  if (myAppleIDPhoneHash)
  {
    [v9 setObject:myAppleIDPhoneHash forKeyedSubscript:@"ph"];
  }

  [v9 setObject:v8 forKeyedSubscript:@"nw"];
  if ([v5 isTetheringInUse])
  {
    [v5 hotspotName];
    v13 = v20 = v5;
    v14 = [v8 isEqualToString:v13];

    v5 = v20;
    if (v14)
    {
      v19 = contactIdentifier;
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      hotspotName = [v20 hotspotName];
      hotspotPassword = [v20 hotspotPassword];
      v17 = WPAHashPSK();

      if (v17)
      {
        sub_1000A56C4(v17, &v22, &v23, &v21);
        v18 = v21;
      }

      else
      {
        v18 = [NSString stringWithUTF8String:v24];
        if ([v18 length] == 64)
        {
          [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"hs"];
          [v9 setObject:v18 forKeyedSubscript:@"psk"];

          contactIdentifier = v19;
          v5 = v20;
          goto LABEL_18;
        }
      }

      contactIdentifier = v19;

      v5 = v20;
      goto LABEL_19;
    }
  }

LABEL_18:
  [(SDSetupAgent *)self _uiStartWithDevice:sharingCopy viewControllerName:@"SharingViewService.PasswordSharingFlowViewController" xpcEndpoint:0 label:@"WiFiPasswordSharing" extraInfo:v9];

LABEL_19:
}

- (void)_uiStartWithDevice:(id)device viewControllerName:(id)name xpcEndpoint:(id)endpoint label:(id)label unlessApps:(id)apps extraInfo:(id)info
{
  deviceCopy = device;
  nameCopy = name;
  endpointCopy = endpoint;
  labelCopy = label;
  appsCopy = apps;
  infoCopy = info;
  v34 = deviceCopy;
  v35 = endpointCopy;
  v33 = appsCopy;
  if (appsCopy)
  {
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2020000000;
    v55 = 0;
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v22 = dispatch_group_create();
    v23 = [BKSApplicationStateMonitor alloc];
    v24 = [v23 initWithBundleIDs:appsCopy states:BKSApplicationStateAll];
    selfCopy = self;
    v32 = infoCopy;
    v21 = labelCopy;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = appsCopy;
    v25 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v25)
    {
      v26 = *v51;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v51 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v50 + 1) + 8 * i);
          dispatch_group_enter(v22);
          if (dword_10096FEF8 <= 20 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_10009BA38;
          v45[3] = &unk_1008CE950;
          v46 = v21;
          v47 = v28;
          v49 = v54;
          v48 = v22;
          [v24 applicationInfoForApplication:v28 completion:v45];
        }

        v25 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v25);
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009BAE4;
    block[3] = &unk_1008CE978;
    v44 = v54;
    block[4] = selfCopy;
    v38 = v34;
    v39 = nameCopy;
    v40 = v35;
    v41 = v21;
    v42 = v32;
    v43 = v24;
    v30 = v24;
    dispatch_group_notify(v22, dispatchQueue, block);

    _Block_object_dispose(v54, 8);
    infoCopy = v32;
  }

  else
  {
    selfCopy2 = self;
    v21 = labelCopy;
    [(SDSetupAgent *)selfCopy2 _uiStartWithDevice:deviceCopy viewControllerName:nameCopy xpcEndpoint:endpointCopy label:labelCopy extraInfo:infoCopy];
  }
}

- (void)_uiStartWithDevice:(id)device viewControllerName:(id)name xpcEndpoint:(id)endpoint label:(id)label extraInfo:(id)info
{
  deviceCopy = device;
  nameCopy = name;
  endpointCopy = endpoint;
  labelCopy = label;
  infoCopy = info;
  bleDevice = [deviceCopy bleDevice];
  smoothedRSSI = [bleDevice smoothedRSSI];
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  v51 = uUIDString;
  v48 = bleDevice;
  v49 = deviceCopy;
  if (uUIDString)
  {
    v46 = nameCopy;
    v47 = labelCopy;
    advertisementFields = [bleDevice advertisementFields];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    v22 = +[NSUUID UUID];
    uUIDString2 = [v22 UUIDString];

    v23 = infoCopy;
    v24 = endpointCopy;
    if ([bleDevice foundTicks])
    {
      mach_absolute_time();
      [bleDevice foundTicks];
      UpTicksToSecondsF();
      v26 = v25;
    }

    else
    {
      v26 = 0.0;
    }

    v53[0] = @"colorCode";
    v27 = [NSNumber numberWithUnsignedChar:Int64Ranged];
    v54[0] = v27;
    v53[1] = @"deviceActionType";
    v28 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [deviceCopy deviceActionType]);
    v54[1] = v28;
    v54[2] = v51;
    v53[2] = @"deviceIdentifier";
    v53[3] = @"name";
    name = [deviceCopy name];
    v30 = name;
    v31 = &stru_1008EFBD0;
    if (name)
    {
      v31 = name;
    }

    v54[3] = v31;
    v53[4] = @"osVersion";
    v32 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [deviceCopy osVersion]);
    v54[4] = v32;
    v53[5] = @"rssi";
    v33 = [NSNumber numberWithInteger:smoothedRSSI];
    v54[5] = v33;
    v54[6] = uUIDString2;
    v53[6] = @"sessionUUID";
    v53[7] = @"triggerSecs";
    v34 = [NSNumber numberWithDouble:v26];
    v54[7] = v34;
    v35 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:8];

    infoCopy = v23;
    v36 = v23;
    if (v36)
    {
      v37 = [v35 mutableCopy];
      [v37 addEntriesFromDictionary:v36];

      v35 = v37;
    }

    nameCopy = v46;
    if ([v46 isEqualToString:@"HDSViewService.HomePodSetupFlowViewController"])
    {
      v38 = @"com.apple.HDSViewService";
    }

    else
    {
      v38 = @"com.apple.SharingViewService";
    }

    endpointCopy = v24;
    if ([v46 isEqualToString:@"BYDovePeaceRemoteViewController"])
    {
      labelCopy = v47;
      if ([(SDSetupAgent *)self _deviceHandlesDovePeaceSetup])
      {
        if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
        {
          sub_1000A597C();
        }

        v38 = @"com.apple.TDGSharingViewService";
      }
    }

    else
    {
      labelCopy = v47;
    }

    if ([v46 isEqualToString:@"TVSetupUIService.TVSetupAlertViewController"])
    {
      v38 = @"com.apple.TVSetupUIService";
    }

    if ([v46 isEqualToString:@"AppleIDSetupUIService.SetupAlertViewController"])
    {
      v38 = @"com.apple.AppleIDSetupUIService";
    }

    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A59C4();
    }

    v39 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:v38 viewControllerClassName:v46];
    v40 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    if (endpointCopy)
    {
      _endpoint = [endpointCopy _endpoint];
      [v40 setXpcEndpoint:_endpoint];
    }

    [v40 setUserInfo:v35];
    remoteAlertHandle = self->_remoteAlertHandle;
    if (remoteAlertHandle)
    {
      [(SBSRemoteAlertHandle *)remoteAlertHandle removeObserver:self];
      [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    }

    v43 = [SBSRemoteAlertHandle newHandleWithDefinition:v39 configurationContext:v40];
    v44 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = v43;

    v45 = self->_remoteAlertHandle;
    if (v45)
    {
      [(SBSRemoteAlertHandle *)v45 addObserver:self];
      [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:0];
      if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_35;
      }

LABEL_33:
      LogPrintF();
      goto LABEL_35;
    }

    if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5A04();
    }
  }

  else
  {
    if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v35 = 0;
    v36 = 0;
    v39 = 0;
    v40 = 0;
    uUIDString2 = 0;
  }

  if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_33;
  }

LABEL_35:
}

- (void)_uiStartForMacWithDevice:(id)device label:(id)label extraInfo:(id)info
{
  deviceCopy = device;
  labelCopy = label;
  infoCopy = info;
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5A44();
  }
}

- (void)_uiStopIfNeededWithDevice:(id)device
{
  deviceCopy = device;
  v4 = deviceCopy;
  if (dword_10096FEF8 <= 30)
  {
    v6 = deviceCopy;
    if (dword_10096FEF8 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1000A5A84();
      v4 = v6;
    }
  }
}

- (void)_watchFastScanStartIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  mach_absolute_time();
  watchFastScanLastEndTicks = self->_watchFastScanLastEndTicks;
  if (UpTicksToSeconds() >= 0x64 && [(SFBLEScanner *)self->_watchSetupScanner scanRate]!= 50)
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5AA0();
    }

    [(SFBLEScanner *)self->_watchSetupScanner setScanRate:50];
    if (!self->_watchFastScanTimer)
    {
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      watchFastScanTimer = self->_watchFastScanTimer;
      self->_watchFastScanTimer = v6;

      v8 = self->_watchFastScanTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10009C414;
      handler[3] = &unk_1008CDEA0;
      handler[4] = self;
      dispatch_source_set_event_handler(v8, handler);
      v9 = self->_watchFastScanTimer;
      SFDispatchTimerSet();
      dispatch_resume(self->_watchFastScanTimer);
    }
  }
}

- (void)_watchFastScanStop
{
  if ([(SFBLEScanner *)self->_watchSetupScanner scanRate]!= 20)
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5AE0();
    }

    [(SFBLEScanner *)self->_watchSetupScanner setScanRate:20];
    self->_watchFastScanLastEndTicks = mach_absolute_time();
    watchFastScanTimer = self->_watchFastScanTimer;
    if (watchFastScanTimer)
    {
      v5 = watchFastScanTimer;
      dispatch_source_cancel(v5);
      v4 = self->_watchFastScanTimer;
      self->_watchFastScanTimer = 0;
    }
  }
}

- (id)_watchMigrating:(id)migrating
{
  migratingCopy = migrating;
  if (self->_watchMigrationEnabled)
  {
    sharedInstance = [(objc_class *)off_10096FF68() sharedInstance];
    v6 = [sharedInstance getDevicesMatching:&stru_1008CE9B8];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = off_10096FF80();
          v13 = [v11 valueForProperty:{v12, v15}];

          if ([v13 isEqual:migratingCopy])
          {
            v8 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_watchStartMigration:(id)migration
{
  migrationCopy = migration;
  sharedMigrator = [(objc_class *)off_10096FF88() sharedMigrator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009C7FC;
  v6[3] = &unk_1008CDF90;
  v7 = migrationCopy;
  v5 = migrationCopy;
  [sharedMigrator beginMigrationWithDevice:v5 withCompletion:v6];
}

- (void)_wifiStateChanged
{
  if ([(CUSystemMonitor *)self->_systemMonitor wifiState]== 40 && (self->_renableB238SetupAfterWiFi || self->_triggeredUIRepair))
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5B40();
    }

    [(SDSetupAgent *)self _resetTriggers];
  }
}

- (void)_ensureServerStarted
{
  if (!self->_pinPairService)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[9] = v2;
    v12[10] = v3;
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5B5C();
    }

    v7 = objc_alloc_init(SFService);
    pinPairService = self->_pinPairService;
    self->_pinPairService = v7;

    [(SFService *)self->_pinPairService setIdentifier:SFServiceIdentifierPINPair];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009CB08;
    v12[3] = &unk_1008CDF90;
    v12[4] = self;
    [(SFService *)self->_pinPairService setErrorHandler:v12];
    [(SFService *)self->_pinPairService setInvalidationHandler:&stru_1008CE9D8];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009CBF8;
    v11[3] = &unk_1008CEA00;
    v11[4] = self;
    [(SFService *)self->_pinPairService setRequestMessageHandler:v11];
    v9 = self->_pinPairService;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009CC88;
    v10[3] = &unk_1008CDF90;
    v10[4] = self;
    [(SFService *)v9 activateWithCompletion:v10];
  }
}

- (void)_ensureServerStopped
{
  if (self->_pinPairService)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5C70();
    }

    [(SFService *)self->_pinPairService invalidate];
    pinPairService = self->_pinPairService;
    self->_pinPairService = 0;
  }

  if (self->_pinPairSession)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5C8C();
    }

    [(SFPINPairSession *)self->_pinPairSession invalidate];
    pinPairSession = self->_pinPairSession;
    self->_pinPairSession = 0;
  }

  pinPairUUID = self->_pinPairUUID;
  self->_pinPairUUID = 0;
}

- (void)_pinPairHandleRequest:(id)request
{
  requestCopy = request;
  v18[0] = 0;
  v18[1] = 0;
  headerFields = [requestCopy headerFields];
  UUIDEx = CFDictionaryGetUUIDEx();

  if (UUIDEx)
  {
    sub_1000A5CA8();
  }

  else
  {
    v7 = [[NSUUID alloc] initWithUUIDBytes:v18];
    if (v7)
    {
      v8 = v7;
      if (([(NSUUID *)self->_pinPairUUID isEqual:v7]& 1) == 0 && self->_pinPairSession)
      {
        if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
        {
          pinPairUUID = self->_pinPairUUID;
          v14 = v8;
          LogPrintF();
        }

        [(SFPINPairSession *)self->_pinPairSession invalidate:pinPairUUID];
        pinPairSession = self->_pinPairSession;
        self->_pinPairSession = 0;
      }

      v10 = self->_pinPairSession;
      if (!v10)
      {
        if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
        {
          sub_1000A5D28();
        }

        objc_storeStrong(&self->_pinPairUUID, v8);
        v11 = objc_alloc_init(SFPINPairSession);
        v12 = self->_pinPairSession;
        self->_pinPairSession = v11;

        [(SFPINPairSession *)self->_pinPairSession setDispatchQueue:self->_dispatchQueue];
        [(SFPINPairSession *)self->_pinPairSession setSfService:self->_pinPairService];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10009D108;
        v17[3] = &unk_1008CDF90;
        v17[4] = self;
        [(SFPINPairSession *)self->_pinPairSession setCompletionHandler:v17];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10009D1A4;
        v16[3] = &unk_1008CEA28;
        v16[4] = self;
        [(SFPINPairSession *)self->_pinPairSession setShowPINHandler:v16];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10009D1AC;
        v15[3] = &unk_1008CDEA0;
        v15[4] = self;
        [(SFPINPairSession *)self->_pinPairSession setHidePINHandler:v15];
        [(SFPINPairSession *)self->_pinPairSession activate];
        v10 = self->_pinPairSession;
      }

      [(SFPINPairSession *)v10 handleServerRequest:requestCopy];
    }

    else
    {
      sub_1000A5D68();
    }
  }
}

- (void)_pwsHandleUserResponse:(int)response device:(id)device info:(id)info
{
  deviceCopy = device;
  infoCopy = info;
  if (dword_10096FEF8 <= 60 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A5E18();
  }
}

- (void)_pwsHandleProgressEvent:(unsigned int)event info:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (dword_10096FEF8 <= 30)
  {
    v8 = infoCopy;
    if (dword_10096FEF8 != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
    {
      sub_1000A5E34(event);
      v6 = v8;
    }
  }
}

- (void)_repairEnsuredStarted
{
  if (self->_problemNotifyToken == -1)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A5FE4();
    }

    notify_register_check("com.apple.sharing.problems", &self->_problemNotifyToken);
  }

  if (self->_cfuNotifyToken == -1 && (self->_prefRepairAccounts || self->_prefRepairHomeKit))
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10009D84C;
    handler[3] = &unk_1008CE690;
    handler[4] = self;
    notify_register_dispatch("com.apple.corefollowup.items_changed", &self->_cfuNotifyToken, dispatchQueue, handler);
    [(SDSetupAgent *)self _repairHandleCFUItemsChanged];
  }

  if (!self->_manateeMonitor && self->_cdpEnabled)
  {
    v4 = objc_alloc_init(CUSystemMonitor);
    manateeMonitor = self->_manateeMonitor;
    self->_manateeMonitor = v4;

    [(CUSystemMonitor *)self->_manateeMonitor setDispatchQueue:self->_dispatchQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10009D8C8;
    v27[3] = &unk_1008CDEA0;
    v27[4] = self;
    [(CUSystemMonitor *)self->_manateeMonitor setManateeChangedHandler:v27];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10009D8D0;
    v26[3] = &unk_1008CDEA0;
    v26[4] = self;
    [(CUSystemMonitor *)self->_manateeMonitor setPrimaryAppleIDChangedHandler:v26];
    v6 = self->_manateeMonitor;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009D8D8;
    v25[3] = &unk_1008CDEA0;
    v25[4] = self;
    [(CUSystemMonitor *)v6 activateWithCompletion:v25];
  }

  if (!self->_vpnCnx && self->_prefRepairVPN)
  {
    createConnectionForEnabledEnterpriseConfiguration = [(objc_class *)off_10096FF90() createConnectionForEnabledEnterpriseConfiguration];
    vpnCnx = self->_vpnCnx;
    self->_vpnCnx = createConnectionForEnabledEnterpriseConfiguration;

    [(NEVPNConnection *)self->_vpnCnx addObserver:self forKeyPath:@"lastDisconnectError" options:0 context:0];
    lastDisconnectError = [(NEVPNConnection *)self->_vpnCnx lastDisconnectError];
    if (dword_10096FEF8 <= 40 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6000();
    }

    [(SDSetupAgent *)self _repairVPNError:lastDisconnectError];
  }

  if (!self->_wifiHealthMonitor && self->_prefRepairWiFi)
  {
    v10 = objc_alloc_init(SFWiFiHealthMonitor);
    wifiHealthMonitor = self->_wifiHealthMonitor;
    self->_wifiHealthMonitor = v10;

    [(SFWiFiHealthMonitor *)self->_wifiHealthMonitor setDispatchQueue:self->_dispatchQueue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10009D8E0;
    v24[3] = &unk_1008CEA50;
    v24[4] = self;
    [(SFWiFiHealthMonitor *)self->_wifiHealthMonitor setStatusHandler:v24];
    [(SFWiFiHealthMonitor *)self->_wifiHealthMonitor activate];
  }

  if (SFDeviceClassCodeGet() == 4 && self->_cnsNotifyToken == -1)
  {
    v12 = self->_dispatchQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009D9D4;
    v23[3] = &unk_1008CE690;
    v23[4] = self;
    notify_register_dispatch(kCNUserInteractionRequirementNotifyKey, &self->_cnsNotifyToken, v12, v23);
    [(SDSetupAgent *)self _repairHandleCNSStateChanged];
  }

  if (!self->_repairService)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6040();
    }

    v13 = objc_alloc_init(SFDeviceRepairService);
    repairService = self->_repairService;
    self->_repairService = v13;

    [(SFDeviceRepairService *)self->_repairService setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceRepairService *)self->_repairService setProblemFlags:0];
    v15 = +[SDStatusMonitor sharedMonitor];
    myAltDSID = [v15 myAltDSID];
    [(SFDeviceRepairService *)self->_repairService setAltDSID:myAltDSID];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10009DA50;
    v22[3] = &unk_1008CEA78;
    v22[4] = self;
    [(SFDeviceRepairService *)self->_repairService setProgressHandler:v22];
    [(SFDeviceRepairService *)self->_repairService activate];
  }

  if (!self->_repairTimer)
  {
    v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    repairTimer = self->_repairTimer;
    self->_repairTimer = v17;

    v19 = self->_repairTimer;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009E34C;
    v21[3] = &unk_1008CDEA0;
    v21[4] = self;
    dispatch_source_set_event_handler(v19, v21);
    v20 = self->_repairTimer;
    SFDispatchTimerSet();
    dispatch_activate(self->_repairTimer);
  }

  [(SDSetupAgent *)self _repairProblemFlagsChanged];
}

- (void)_repairEnsuredStopped
{
  cfuNotifyToken = self->_cfuNotifyToken;
  if (cfuNotifyToken != -1)
  {
    notify_cancel(cfuNotifyToken);
    self->_cfuNotifyToken = -1;
  }

  [(CUSystemMonitor *)self->_manateeMonitor invalidate];
  manateeMonitor = self->_manateeMonitor;
  self->_manateeMonitor = 0;

  self->_manateeProblem = 0;
  repairTimer = self->_repairTimer;
  if (repairTimer)
  {
    v6 = repairTimer;
    dispatch_source_cancel(v6);
    v7 = self->_repairTimer;
    self->_repairTimer = 0;
  }

  vpnCnx = self->_vpnCnx;
  if (vpnCnx)
  {
    [(NEVPNConnection *)vpnCnx removeObserver:self forKeyPath:@"lastDisconnectError"];
    v9 = self->_vpnCnx;
    self->_vpnCnx = 0;
  }

  [(SFWiFiHealthMonitor *)self->_wifiHealthMonitor invalidate];
  wifiHealthMonitor = self->_wifiHealthMonitor;
  self->_wifiHealthMonitor = 0;

  *&self->_wifiBad = 0;
  cnsNotifyToken = self->_cnsNotifyToken;
  if (cnsNotifyToken != -1)
  {
    notify_cancel(cnsNotifyToken);
    self->_cnsNotifyToken = -1;
  }

  self->_cnsNeedsUI = 0;
  self->_problemFlags = 0;
  [(SDSetupAgent *)self _repairProblemFlagsChanged];
  if (self->_repairService)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A616C();
    }

    [(SFDeviceRepairService *)self->_repairService invalidateWithFlags:1];
    repairService = self->_repairService;
    self->_repairService = 0;
  }

  problemNotifyToken = self->_problemNotifyToken;
  if (problemNotifyToken != -1)
  {
    notify_cancel(problemNotifyToken);
    self->_problemNotifyToken = -1;
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6188();
    }
  }
}

- (void)_renewAccountIfNecessaryForCFUItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_prefRepairAccounts)
  {
    v9 = [itemsCopy indexesOfObjectsPassingTest:&stru_1008CEAB8];
    if ([v9 count])
    {
      if (!self->_lastRenewalAttempt)
      {
        goto LABEL_6;
      }

      v10 = +[NSDate now];
      [v10 timeIntervalSinceDate:self->_lastRenewalAttempt];
      v12 = v11;
      v13 = +[NSDate now];
      [v13 timeIntervalSinceDate:self->_lastRenewalAttempt];
      v15 = v14;

      if (v12 >= 0.0)
      {
        if (v15 >= 86400.0)
        {
LABEL_6:
          v16 = +[ACAccountStore defaultStore];
          v17 = sub_10001F47C(v16);
          v18 = v17;
          if (v17)
          {
            if (![v17 isWarmingUp])
            {
              if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                sub_1000A61C0();
              }

              v19 = +[NSDate now];
              lastRenewalAttempt = self->_lastRenewalAttempt;
              self->_lastRenewalAttempt = v19;

              v21[0] = _NSConcreteStackBlock;
              v21[1] = 3221225472;
              v21[2] = sub_10009E930;
              v21[3] = &unk_1008CEAE0;
              v24 = v8;
              v22 = itemsCopy;
              v23 = v9;
              [v16 renewCredentialsForAccount:v18 completion:v21];

              goto LABEL_26;
            }

            if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
            {
              sub_1000A61DC();
            }
          }

          else if (dword_10096FEF8 <= 90 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
          {
            sub_1000A61F8();
          }

          (v8)[2](v8, itemsCopy);
LABEL_26:

          goto LABEL_27;
        }
      }

      else if (v15 <= -86400.0)
      {
        goto LABEL_6;
      }

      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A61A4();
      }
    }

    (v8)[2](v8, itemsCopy);
LABEL_27:

    goto LABEL_28;
  }

  (*(completionCopy + 2))(completionCopy, itemsCopy);
LABEL_28:
}

- (void)_repairHandleCFUItemsChanged
{
  v3 = [objc_alloc(off_10096FF98()) initWithClientIdentifier:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009EADC;
  v4[3] = &unk_1008CEB08;
  v4[4] = self;
  [v3 pendingFollowUpItemsWithCompletion:v4];
}

- (void)_repairHandleCFUItems:(id)items
{
  itemsCopy = items;
  problemFlags = self->_problemFlags;
  if ([(SDSetupAgent *)self _useSymptomsReport])
  {
    v6 = problemFlags & 0xFFBAFFA7;
  }

  else
  {
    v6 = problemFlags & 0xFFB8FFA1;
    if (self->_manateeProblem)
    {
      v6 = problemFlags & 0xFFB8FFA1 | 0x20000;
    }
  }

  if (self->_wifiBad || self->_cnsNeedsUI)
  {
    v6 |= 0x10uLL;
  }

  if (self->_wifiBad8021x)
  {
    v7 = v6 | 0x10000;
  }

  else
  {
    v7 = v6;
  }

  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v25 = v27;
    p_cache = _TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet.cache;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        uniqueIdentifier = [v14 uniqueIdentifier];
        v16 = *(p_cache + 958);
        if (uniqueIdentifier)
        {
          if (v16 <= 50 && (v16 != -1 || _LogCategory_Initialize()))
          {
            sub_1000A62DC();
          }

          if (self->_prefRepairHomeKit)
          {
            v17 = off_10096FFA0();
            v18 = [uniqueIdentifier isEqual:v17];

            p_cache = (_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet + 16);
            if (v18)
            {
LABEL_22:
              v7 |= 8uLL;
              goto LABEL_56;
            }
          }

          if ([uniqueIdentifier isEqual:@"com.apple.homekit.PrimaryResident"])
          {
            v7 |= 0x400000uLL;
            goto LABEL_56;
          }

          if (self->_prefRepairAccounts && sub_10009E7B0(v14) && ![(SDSetupAgent *)self _useSymptomsReport])
          {
            [(CUSystemMonitor *)self->_manateeMonitor forceManateeStateRefresh];
            [(SDSetupAgent *)self _fetchSymptomsReport];
            if (SFIsDeviceAppleTV())
            {
              v20 = 2;
            }

            else
            {
              defaultStore = [(objc_class *)off_10096FFA8() defaultStore];
              activeAccount = [defaultStore activeAccount];

              v23 = activeAccount == 0;
              p_cache = (_TtC16DaemoniOSLibrary28SDAirDropMoveToAppShareSheet + 16);
              v20 = 2;
              if (!v23)
              {
                v20 = 6;
              }
            }

            v7 |= v20;
          }

          else
          {
            if (self->_prefRepairAccounts && [uniqueIdentifier isEqual:@"com.apple.SSFollowUpIdentifier.RenewCredentials"] && !-[SDSetupAgent _useSymptomsReport](self, "_useSymptomsReport"))
            {
              goto LABEL_55;
            }

            if ([uniqueIdentifier isEqual:@"RepairCDPState"])
            {
              dispatchQueue = self->_dispatchQueue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              v27[0] = sub_10009F2BC;
              v27[1] = &unk_1008CDEA0;
              v27[2] = self;
              dispatch_async(dispatchQueue, block);
              goto LABEL_56;
            }

            if ([uniqueIdentifier isEqual:@"x-bt"])
            {
              v7 |= 0x200uLL;
              goto LABEL_56;
            }

            if ([uniqueIdentifier isEqual:@"x-cdp"])
            {
              v7 |= 0x20000uLL;
              goto LABEL_56;
            }

            if ([uniqueIdentifier isEqual:@"x-homekit"])
            {
              goto LABEL_22;
            }

            if ([uniqueIdentifier isEqual:@"x-hw"])
            {
              v7 |= 0x100uLL;
              goto LABEL_56;
            }

            if ([uniqueIdentifier isEqual:@"x-icloud"])
            {
              v7 |= 2uLL;
              goto LABEL_56;
            }

            if ([uniqueIdentifier isEqual:@"x-inet"])
            {
              v7 |= 0x80uLL;
              goto LABEL_56;
            }

            if ([uniqueIdentifier isEqual:@"x-itunes"])
            {
LABEL_55:
              v7 |= 4uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-profile"])
            {
              v7 |= 0x40000uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-recovery"])
            {
              v7 |= 0x800uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-StereoError"])
            {
              v7 |= 0x4000uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-StereoNotFound"])
            {
              v7 |= 0x1000uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-StereoVersion"])
            {
              v7 |= 0x2000uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-thermal"])
            {
              v7 |= 0x400uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-wifi"])
            {
              v7 |= 0x10uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-wifi8021x"])
            {
              v7 |= 0x10000uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-wifiperf"])
            {
              v7 |= 0x40uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-vpn"])
            {
              v7 |= 0x8000uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-netnoshare"])
            {
              v7 |= 0x80000uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-netneedprofile"])
            {
              v7 |= 0x100000uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-captivenetwork"])
            {
              v7 |= 0x200000uLL;
            }

            else if ([uniqueIdentifier isEqual:@"x-hkprimary"])
            {
              v7 |= 0x400000uLL;
            }
          }
        }

        else if (v16 <= 60 && (v16 != -1 || _LogCategory_Initialize()))
        {
          sub_1000A631C();
        }

LABEL_56:

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v24 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v10 = v24;
    }

    while (v24);
  }

  if (v7 != self->_problemFlags)
  {
    self->_problemFlags = v7;
    [(SDSetupAgent *)self _repairProblemFlagsChanged];
  }
}

- (BOOL)_useSymptomsReport
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    LOBYTE(v2) = SFDeviceClassCodeGet() == 6;
  }

  return v2;
}

- (void)_fetchSymptomsReport
{
  v3 = +[SDStatusMonitor sharedMonitor];
  myAltDSID = [v3 myAltDSID];

  if (myAltDSID)
  {
    if (!self->_repairController)
    {
      v5 = objc_alloc_init(off_10096FFB0());
      repairController = self->_repairController;
      self->_repairController = v5;
    }

    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A635C();
    }

    v7 = [objc_alloc(off_10096FFB8()) initWithAltDSID:myAltDSID];
    v8 = [NSSet setWithObjects:AIDAServiceTypeCloud, AIDAServiceTypeStore, 0];
    [v7 setRequiredServiceTypes:v8];

    v9 = self->_repairController;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009F4A0;
    v10[3] = &unk_1008CEB30;
    v10[4] = self;
    [(AISRepairController *)v9 generateSymptomReportWithContext:v7 completionHandler:v10];
  }

  else if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6378();
  }
}

- (void)_repairHandleCompletion
{
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A63E4();
  }

  if (self->_repairTimer)
  {
    SFDispatchTimerSet();
  }

  self->_problemFlags = 0;
  [(SDSetupAgent *)self _repairProblemFlagsChanged];
  wifiHealthMonitor = self->_wifiHealthMonitor;

  [(SFWiFiHealthMonitor *)wifiHealthMonitor reset];
}

- (void)_repairHandleManateeChanged
{
  manateeMonitor = self->_manateeMonitor;
  if (manateeMonitor && [(CUSystemMonitor *)manateeMonitor primaryAppleIDIsHSA2])
  {
    if ([(SDSetupAgent *)self _useSymptomsReport])
    {

      [(SDSetupAgent *)self _fetchSymptomsReport];
    }

    else
    {
      manateeState = [(CUSystemMonitor *)self->_manateeMonitor manateeState];
      self->_manateeProblem = manateeState == 1;
      problemFlags = self->_problemFlags;
      v6 = problemFlags | 0x20000;
      if (manateeState != 1)
      {
        v6 = self->_problemFlags & 0xFFFDFFFF;
      }

      if (v6 != problemFlags)
      {
        self->_problemFlags = v6;

        [(SDSetupAgent *)self _repairProblemFlagsChanged];
      }
    }
  }
}

- (void)_repairHandleCNSStateChanged
{
  problemFlags = self->_problemFlags;
  IsRequired = CNUserInteractionIsRequired();
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6400(self);
    if (IsRequired)
    {
LABEL_5:
      self->_cnsNeedsUI = 1;
      if (_os_feature_enabled_impl())
      {
        problemFlags |= 0x200010uLL;
      }

      else
      {
        problemFlags |= 0x10uLL;
      }

      goto LABEL_13;
    }
  }

  else if (IsRequired)
  {
    goto LABEL_5;
  }

  if (self->_cnsNeedsUI)
  {
    self->_cnsNeedsUI = 0;
    if (self->_wifiBad)
    {
      problemFlags |= 0x10uLL;
    }

    else
    {
      problemFlags = problemFlags & 0xFFFFFFEF;
    }
  }

LABEL_13:
  if (problemFlags != self->_problemFlags)
  {
    self->_problemFlags = problemFlags;

    [(SDSetupAgent *)self _repairProblemFlagsChanged];
  }
}

- (void)_repairProblemCheck
{
  [(CUSystemMonitor *)self->_manateeMonitor forceManateeStateRefresh];
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6448(&self->_manateeMonitor);
  }

  [(SDSetupAgent *)self _repairHandleManateeChanged];
}

- (void)_repairProblemFlagsChanged
{
  IsRequired = CNUserInteractionIsRequired();
  if (dword_10096FEF8 > 30 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
  {
    if (IsRequired)
    {
      goto LABEL_5;
    }

LABEL_10:
    problemFlags = self->_problemFlags;
    goto LABEL_11;
  }

  sub_1000A64B0();
  if (!IsRequired)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6508();
  }

  problemFlags = self->_problemFlags | 0x200010;
  self->_problemFlags = problemFlags;
LABEL_11:
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6524();
  }

  if (problemFlags)
  {
    v5 = problemFlags | 1;
  }

  else
  {
    v5 = 0;
  }

  [(SFDeviceRepairService *)self->_repairService setProblemFlags:v5];
  problemNotifyToken = self->_problemNotifyToken;
  if (problemNotifyToken != -1)
  {
    notify_set_state(problemNotifyToken, v5);

    notify_post("com.apple.sharing.problems");
  }
}

- (void)_repairSilentStart:(id)start
{
  startCopy = start;
  if (([startCopy problemFlags] & 0x10000) != 0)
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A656C();
    }
  }

  else
  {
    if (([startCopy problemFlags] & 0x10) != 0)
    {
      model = [startCopy model];
      v6 = [model hasPrefix:@"AudioAccessory"];

      if (v6)
      {
        v7 = WiFiCopyCurrentNetworkInfo();
        if (CFDictionaryGetInt64() || ([startCopy problemFlags] & 0x200000) != 0)
        {
          if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
          {
            sub_1000A6588();
          }

          goto LABEL_27;
        }
      }
    }

    if (([startCopy problemFlags] & 0x22001E) != 0)
    {
      [(SFDeviceRepairSession *)self->_repairSession invalidate];
      v8 = objc_alloc_init(SFDeviceRepairSession);
      repairSession = self->_repairSession;
      self->_repairSession = v8;

      [(SFDeviceRepairSession *)self->_repairSession setPeerDevice:startCopy];
      v10 = +[SDStatusMonitor sharedMonitor];
      myAltDSID = [v10 myAltDSID];
      [(SFDeviceRepairSession *)self->_repairSession setAltDSID:myAltDSID];

      [(SFDeviceRepairSession *)self->_repairSession setOperationType:3];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10009FD48;
      v16[3] = &unk_1008CEA78;
      v16[4] = self;
      [(SFDeviceRepairSession *)self->_repairSession setProgressHandler:v16];
      bleDevice = [startCopy bleDevice];
      foundTicks = [bleDevice foundTicks];

      if (foundTicks)
      {
        mach_absolute_time();
        v14 = UpTicksToMilliseconds();
      }

      else
      {
        v14 = 0;
      }

      [(SFDeviceRepairSession *)self->_repairSession setTriggerMs:v14];
      v15 = +[IDSServerBag sharedInstance];
      v7 = [v15 objectForKey:@"SDDisableRepairSilentAuth"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 BOOLValue])
      {
        [(SFDeviceRepairSession *)self->_repairSession setDisableSilentAuth:1];
      }

      [(SFDeviceRepairSession *)self->_repairSession activate];
LABEL_27:

      goto LABEL_28;
    }

    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A65A4(startCopy);
    }
  }

LABEL_28:
}

- (void)_repairSilentProgress:(unsigned int)progress info:(id)info
{
  infoCopy = info;
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A65F0(progress);
  }

  if (progress == 20)
  {
    if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      sub_1000A6650();
    }

    self->_triggeredUIRepair = 0;
  }

  else
  {
    if (progress == 96)
    {
      peerDevice = [(SFDeviceRepairSession *)self->_repairSession peerDevice];
      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A666C();
      }

      [(SFDeviceRepairSession *)self->_repairSession invalidate];
      repairSession = self->_repairSession;
      self->_repairSession = 0;

      self->_triggeredUIRepair = 0;
    }

    else
    {
      if (progress != 30)
      {
        goto LABEL_20;
      }

      CFErrorGetTypeID();
      peerDevice = CFDictionaryGetTypedValue();
      [(SDSetupAgent *)self _repairUpdateIDSCache];
      [(SFDeviceRepairSession *)self->_repairSession invalidate];
      v7 = self->_repairSession;
      self->_repairSession = 0;

      if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
      {
        sub_1000A66AC();
      }
    }
  }

LABEL_20:
}

- (void)_repairUpdateIDSCache
{
  idsIdentifier = [(SFDeviceRepairSession *)self->_repairSession idsIdentifier];
  if (idsIdentifier)
  {
    v6 = idsIdentifier;
    peerDevice = [(SFDeviceRepairSession *)self->_repairSession peerDevice];
    if (peerDevice)
    {
      v5 = +[SDNearbyAgent sharedNearbyAgent];
      [v5 idsAddCachedIDSIdentifier:v6 device:peerDevice];
    }

    idsIdentifier = v6;
  }
}

- (void)_repairVPNError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqual:@"NEVPNConnectionErrorDomainIPSec"];

  if (v5)
  {
    code = [errorCopy code];
    problemFlags = self->_problemFlags;
    v8 = problemFlags | 0x8000;
    if (code != 21)
    {
      v8 = self->_problemFlags & 0xFFFF7FFF;
    }
  }

  else
  {
    problemFlags = self->_problemFlags;
    v8 = problemFlags & 0xFFFF7FFF;
  }

  if (v8 != problemFlags)
  {
    self->_problemFlags = v8;
    [(SDSetupAgent *)self _repairProblemFlagsChanged];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"lastDisconnectError", object, change, context}])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A00D8;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)proximityDeviceDidTrigger:(id)trigger
{
  triggerCopy = trigger;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A0220;
  v7[3] = &unk_1008CE028;
  v7[4] = self;
  v8 = triggerCopy;
  v6 = triggerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)testHomeKitDeviceDetected:(id)detected
{
  detectedCopy = detected;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6868();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A04B0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)testNFCUI:(id)i
{
  iCopy = i;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A68A8();
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A05DC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)testPairUI:(id)i
{
  iCopy = i;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A68E8();
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  v7 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v7];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A07CC;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v5;
  v13 = iCopy;
  v9 = iCopy;
  v10 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)testRepairUI:(id)i
{
  iCopy = i;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6928();
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [NSUUID alloc];
  if ([iCopy isEqual:@"-fail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else if ([iCopy isEqual:@"-nowifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000003";
  }

  else if ([iCopy isEqual:@"-badwifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000004";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v8 = [v6 initWithUUIDString:v7];
  [v5 setIdentifier:v8];

  [v5 setName:@"Living Room"];
  v9 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v9];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A0A40;
  v12[3] = &unk_1008CE028;
  v12[4] = self;
  v13 = v5;
  v11 = v5;
  dispatch_async(dispatchQueue, v12);
}

- (void)testSetupUIB238:(id)b238
{
  b238Copy = b238;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6968();
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [NSUUID alloc];
  if ([b238Copy isEqual:@"-fail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else if ([b238Copy isEqual:@"-code"])
  {
    v7 = @"00000000-0000-0000-0000-000000000003";
  }

  else if ([b238Copy isEqual:@"-nowifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000004";
  }

  else if ([b238Copy isEqual:@"-badwifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000005";
  }

  else if ([b238Copy isEqual:@"-noicloud"])
  {
    v7 = @"00000000-0000-0000-0000-000000000006";
  }

  else if ([b238Copy isEqual:@"-nohsa2"])
  {
    v7 = @"00000000-0000-0000-0000-000000000007";
  }

  else if ([b238Copy isEqual:@"-noitunes"])
  {
    v7 = @"00000000-0000-0000-0000-000000000008";
  }

  else if ([b238Copy isEqual:@"-nohome"])
  {
    v7 = @"00000000-0000-0000-0000-000000000009";
  }

  else if ([b238Copy isEqual:@"-nokeychain"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000A";
  }

  else if ([b238Copy isEqual:@"-sharesplit"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000B";
  }

  else if ([b238Copy isEqual:@"-audio"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000C";
  }

  else if ([b238Copy isEqual:@"-siri"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000D";
  }

  else if ([b238Copy isEqual:@"-AppleMusic"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000E";
  }

  else if ([b238Copy isEqual:@"-WiFiBadEnterprise"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000F";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v8 = [v6 initWithUUIDString:v7];
  [v5 setIdentifier:v8];

  [v5 setOsVersion:13];
  v9 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v9];
  [v5 setDeviceClassCode:4];
  [v5 setDeviceModelCode:{-[SDSetupAgent extractParameter:inString:](self, "extractParameter:inString:", @"device", b238Copy)}];
  v10 = [(SDSetupAgent *)self extractParameter:@"color" inString:b238Copy];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 2;
  }

  [v5 setDeviceActionType:33];
  v20 = @"cc";
  v12 = [NSNumber numberWithInteger:v11];
  v21 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v9 setAdvertisementFields:v13];

  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A69A8(v5);
  }

  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A0EAC;
  v17[3] = &unk_1008CE900;
  v17[4] = self;
  v18 = v5;
  v19 = b238Copy;
  v15 = b238Copy;
  v16 = v5;
  dispatch_async(dispatchQueue, v17);
}

- (int64_t)extractParameter:(id)parameter inString:(id)string
{
  parameterCopy = parameter;
  [string componentsSeparatedByString:{@", "}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  intValue = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (intValue)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != intValue; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasPrefix:{parameterCopy, v14}])
        {
          v11 = [v10 componentsSeparatedByString:@"="];
          lastObject = [v11 lastObject];
          intValue = [lastObject intValue];

          goto LABEL_11;
        }
      }

      intValue = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (intValue)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return intValue;
}

- (void)testSetupUIiOS:(id)s
{
  sCopy = s;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6A04();
  }

  v5 = objc_alloc_init(SFDevice);
  if ([sCopy hasSuffix:@"-ipad"])
  {
    v6 = 3;
LABEL_8:
    v7 = [sCopy substringToIndex:{objc_msgSend(sCopy, "length") - 5}];

    sCopy = v7;
    goto LABEL_10;
  }

  if ([sCopy hasSuffix:@"-ipod"])
  {
    v6 = 2;
    goto LABEL_8;
  }

  v6 = 1;
LABEL_10:
  [v5 setDeviceClassCode:v6];
  v8 = [NSUUID alloc];
  if ([sCopy isEqual:@"-fail"])
  {
    v9 = @"00000000-0000-0000-0000-000000000002";
  }

  else
  {
    v9 = @"00000000-0000-0000-0000-000000000001";
  }

  v10 = [v8 initWithUUIDString:v9];
  [v5 setIdentifier:v10];

  v11 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v11];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A1294;
  v14[3] = &unk_1008CE028;
  v14[4] = self;
  v15 = v5;
  v13 = v5;
  dispatch_async(dispatchQueue, v14);
}

- (void)testSetupUIPasswordSharing:(id)sharing
{
  sharingCopy = sharing;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6A44();
  }

  v5 = objc_alloc_init(SFDevice);
  [v5 setContactIdentifier:@"00000000-0000-0000-0000-000000000000"];
  [v5 setRequestSSID:@"WiFiNetwork"];
  v6 = [NSUUID alloc];
  if ([sharingCopy isEqual:@"-rich"])
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else if ([sharingCopy isEqual:@"-fail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000003";
  }

  else if ([sharingCopy isEqual:@"-hs"])
  {
    v7 = @"00000000-0000-0000-0000-000000000004";
  }

  else if ([sharingCopy isEqual:@"-hsfail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000005";
  }

  else if ([sharingCopy isEqual:@"-device"])
  {
    v7 = @"00000000-0000-0000-0000-000000000006";
  }

  else if ([sharingCopy isEqual:@"-long"])
  {
    v7 = @"00000000-0000-0000-0000-000000000007";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v8 = [v6 initWithUUIDString:v7];
  [v5 setIdentifier:v8];

  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A14A4;
  v11[3] = &unk_1008CE028;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_async(dispatchQueue, v11);
}

- (void)testSetupUIWatch:(id)watch
{
  watchCopy = watch;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6A84();
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  [v5 setName:@"05938CDC"];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A15DC;
  v9[3] = &unk_1008CE028;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(dispatchQueue, v9);
}

- (void)testSetupUIWHA:(id)a
{
  aCopy = a;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6AC4();
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [NSUUID alloc];
  if ([aCopy isEqual:@"-fail"])
  {
    v7 = @"00000000-0000-0000-0000-000000000002";
  }

  else if ([aCopy isEqual:@"-code"])
  {
    v7 = @"00000000-0000-0000-0000-000000000003";
  }

  else if ([aCopy isEqual:@"-nowifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000004";
  }

  else if ([aCopy isEqual:@"-badwifi"])
  {
    v7 = @"00000000-0000-0000-0000-000000000005";
  }

  else if ([aCopy isEqual:@"-noicloud"])
  {
    v7 = @"00000000-0000-0000-0000-000000000006";
  }

  else if ([aCopy isEqual:@"-nohsa2"])
  {
    v7 = @"00000000-0000-0000-0000-000000000007";
  }

  else if ([aCopy isEqual:@"-noitunes"])
  {
    v7 = @"00000000-0000-0000-0000-000000000008";
  }

  else if ([aCopy isEqual:@"-nohome"])
  {
    v7 = @"00000000-0000-0000-0000-000000000009";
  }

  else if ([aCopy isEqual:@"-mismatch"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000A";
  }

  else if ([aCopy isEqual:@"-keychain"])
  {
    v7 = @"00000000-0000-0000-0000-00000000000B";
  }

  else
  {
    v7 = @"00000000-0000-0000-0000-000000000001";
  }

  v8 = [v6 initWithUUIDString:v7];
  [v5 setIdentifier:v8];

  v9 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v9];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A1874;
  v12[3] = &unk_1008CE028;
  v12[4] = self;
  v13 = v5;
  v11 = v5;
  dispatch_async(dispatchQueue, v12);
}

- (void)testUIAppleTVSetup:(id)setup
{
  setupCopy = setup;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6B04();
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  v7 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v7];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A19D8;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v5;
  v13 = setupCopy;
  v9 = setupCopy;
  v10 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)testUIShareAudio:(id)audio
{
  audioCopy = audio;
  if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6B44();
  }

  v4 = objc_alloc_init(SFProxCardSessionClient);
  [v4 setViewControllerClassName:@"ShareAudioAcceptMainController"];
  v5 = audioCopy;
  v6 = v5;
  if (v5)
  {
    v9 = @"_proxTestParams";
    v10 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v4 setUserInfo:v7];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A1C04;
  v8[3] = &unk_1008CDF90;
  v8[4] = v4;
  [v4 setErrorHandler:v8];
  [v4 setInvalidationHandler:&stru_1008CEB50];
  [v4 activateWithCompletion:&stru_1008CEB70];
}

- (void)testUITVLatencySetup:(id)setup
{
  setupCopy = setup;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6C20();
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  v7 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v7];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1EA4;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v5;
  v13 = setupCopy;
  v9 = setupCopy;
  v10 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)testUITVLatencyColorimeterSetup:(id)setup
{
  setupCopy = setup;
  if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    sub_1000A6C60();
  }

  v5 = objc_alloc_init(SFDevice);
  v6 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v5 setIdentifier:v6];

  v7 = objc_alloc_init(SFBLEDevice);
  [v5 setBleDevice:v7];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A20B0;
  block[3] = &unk_1008CE900;
  block[4] = self;
  v12 = v5;
  v13 = setupCopy;
  v9 = setupCopy;
  v10 = v5;
  dispatch_async(dispatchQueue, block);
}

- (void)testProxCardKit:(id)kit
{
  v4 = objc_alloc_init(SFDevice);
  v5 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  [v4 setIdentifier:v5];

  v6 = objc_alloc_init(SFBLEDevice);
  [v4 setBleDevice:v6];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000A225C;
  v9[3] = &unk_1008CE028;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(dispatchQueue, v9);
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  deviceActionType = [foundCopy deviceActionType];
  bleDevice = [foundCopy bleDevice];
  identifier = [foundCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = 0;
  if (!self->_deviceDiscovery || !identifier)
  {
    goto LABEL_196;
  }

  v8 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
  if (![foundCopy needsSetup])
  {
    if (v8)
    {
      [sub_100021E5C() _postDeviceSetupNotificationForDevice:? present:?];
    }

    [(NSMutableDictionary *)self->_devices removeObjectForKey:identifier];
    if ([v8 deviceActionType] == 12 || objc_msgSend(v8, "deviceActionType") == 17)
    {
      [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:identifier];
    }

    else if ([v8 deviceActionType] == 27)
    {
      v23 = +[SDNearbyAgent sharedNearbyAgent];
      [v23 setBoostNearbyInfo:0];
    }

    else if ([v8 deviceActionType] == 8)
    {
      [(SDSetupAgent *)self _uiStopIfNeededWithDevice:identifier];
    }

    unoteTVLatencySetup = self->_unoteTVLatencySetup;
    if (unoteTVLatencySetup)
    {
      identifier2 = [(CUUserNotificationSession *)unoteTVLatencySetup identifier];
      uUIDString = [identifier UUIDString];
      v16 = [identifier2 isEqual:uUIDString];

      if (v16)
      {
        [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
        v17 = self->_unoteTVLatencySetup;
        self->_unoteTVLatencySetup = 0;
      }
    }

    goto LABEL_196;
  }

  devices = self->_devices;
  if (!devices)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = self->_devices;
    self->_devices = v10;

    devices = self->_devices;
  }

  [(NSMutableDictionary *)devices setObject:foundCopy forKeyedSubscript:identifier];
  if ((gSDProxCardsSuppressed & 1) == 0 && ![(SDSetupAgent *)self _uiShowing])
  {
    systemUIFlags = [(SDStatusMonitor *)self->_statusMonitor systemUIFlags];
    if (deviceActionType == 30 || deviceActionType == 25)
    {
      if ((systemUIFlags & 0x7C808) != 0)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if ((systemUIFlags & 0x7C809) != 0)
      {
        goto LABEL_196;
      }

      if (deviceActionType <= 0x1B && ((1 << deviceActionType) & 0x8021100) != 0)
      {
        v18 = [(NSMutableDictionary *)self->_triggeredDevices objectForKeyedSubscript:identifier];

        if (v18)
        {
          goto LABEL_196;
        }
      }
    }

    [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:foundCopy];
    if ([bleDevice triggered])
    {
      sub_1000A2A90();
      if (v20 ^ v21 | v24 && (v19 != -1 || _LogCategory_Initialize()))
      {
        deviceActionType2 = [foundCopy deviceActionType];
        [foundCopy description];
        v72 = v70 = deviceActionType2;
        LogPrintF();
      }

      v24 = deviceActionType == 33 || deviceActionType == 11;
      if (!v24 || ![(CUSystemMonitor *)self->_systemMonitor activeCallCount])
      {
        v25 = [(SDSetupAgent *)self _screenLocked:v70];
        if (deviceActionType <= 0x24 && ((1 << deviceActionType) & 0x1042000200) != 0 || deviceActionType == 90)
        {
          if (v25)
          {
            v26 = CACurrentMediaTime();
            BKSHIDServicesLastUserEventTime();
            if (v26 - v27 > 30.0)
            {
              if (dword_10096FEF8 <= 30 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
LABEL_45:
                LogPrintF();
                goto LABEL_196;
              }

              goto LABEL_196;
            }
          }
        }

        else if (v25)
        {
          goto LABEL_196;
        }

        if (self->_bleAuthTagFilter)
        {
          advertisementFields = [bleDevice advertisementFields];
          CFDataGetTypeID();
          v29 = CFDictionaryGetTypedValue();

          bleAuthTagFilter = self->_bleAuthTagFilter;
          v31 = v29;
          v32 = bleAuthTagFilter;
          v33 = v32;
          if (v31 == v32)
          {
          }

          else
          {
            if ((v31 != 0) == (v32 == 0))
            {

              goto LABEL_196;
            }

            v34 = [(NSData *)v31 isEqual:v32];

            if (!v34)
            {
              goto LABEL_196;
            }
          }
        }

        if (SFStoreDemoMode() & 1) != 0 || (SFLostMode())
        {
          goto LABEL_196;
        }

        triggeredDevices = self->_triggeredDevices;
        if (!triggeredDevices)
        {
          v36 = objc_alloc_init(NSMutableDictionary);
          v37 = self->_triggeredDevices;
          self->_triggeredDevices = v36;

          triggeredDevices = self->_triggeredDevices;
        }

        [(NSMutableDictionary *)triggeredDevices setObject:foundCopy forKeyedSubscript:identifier];
        [sub_100021E5C() _postDeviceSetupNotificationForDevice:? present:?];
        [(SFDeviceDiscovery *)self->_deviceDiscovery fastScanCancel:@"Triggered"];
        switch(deviceActionType)
        {
          case 1:
            if ([foundCopy osVersion] >= 0xE)
            {
              if (dword_10096FEF8 <= 10 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            else if (self->_triggeredUIAppleTVSetup)
            {
              if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            else
            {
              v48 = +[MCProfileConnection sharedConnection];
              isProximitySetupToNewDeviceAllowed = [v48 isProximitySetupToNewDeviceAllowed];

              if (isProximitySetupToNewDeviceAllowed)
              {
                self->_triggeredUIAppleTVSetup = 1;
                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                [sub_100021E5C() _uiStartAppleTVSetup:? extraInfo:?];
                goto LABEL_194;
              }

              if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            break;
          case 2:
          case 3:
          case 4:
          case 5:
          case 7:
          case 14:
          case 15:
          case 16:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 26:
          case 28:
          case 29:
          case 31:
          case 34:
          case 35:
            break;
          case 6:
            if (self->_triggeredUIAppleTVPair)
            {
              if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            else
            {
              v50 = +[MCProfileConnection sharedConnection];
              isProximitySetupToNewDeviceAllowed2 = [v50 isProximitySetupToNewDeviceAllowed];

              if (isProximitySetupToNewDeviceAllowed2)
              {
                self->_triggeredUIAppleTVPair = 1;
                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                [sub_100021E5C() _uiStartPair:? extraInfo:?];
                goto LABEL_194;
              }

              if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            break;
          case 8:
            v52 = +[MCProfileConnection sharedConnection];
            isWiFiPasswordSharingAllowed = [v52 isWiFiPasswordSharingAllowed];

            if (isWiFiPasswordSharingAllowed)
            {
              if (self->_pwsGrantingEnabled && [sub_100021E5C() _shouldOfferPassword:?])
              {
                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                [sub_100021E5C() _uiStartWiFiPasswordSharing:?];
                goto LABEL_194;
              }

              if (dword_10096FEF8 > 30 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
              {
                goto LABEL_194;
              }

              goto LABEL_139;
            }

            if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
            {
              goto LABEL_45;
            }

            break;
          case 9:
            if (self->_triggeredUIiOSSetup)
            {
              if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            else
            {
              v54 = +[MCProfileConnection sharedConnection];
              isProximitySetupToNewDeviceAllowed3 = [v54 isProximitySetupToNewDeviceAllowed];

              if (isProximitySetupToNewDeviceAllowed3)
              {
                if (([foundCopy deviceFlags] & 0x100) == 0)
                {
                  if (![(SDStatusMonitor *)self->_statusMonitor eduModeEnabled])
                  {
                    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    self->_triggeredUIiOSSetup = 1;
                    [sub_100021E5C() _uiStartSetupiOS:? autoStart:?];
                    goto LABEL_194;
                  }

                  if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                  {
                    goto LABEL_194;
                  }

                  goto LABEL_139;
                }

                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  goto LABEL_45;
                }
              }

              else if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            break;
          case 10:
            if (self->_triggeredUIRepair)
            {
              if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            else
            {
              v46 = +[MCProfileConnection sharedConnection];
              isProximitySetupToNewDeviceAllowed4 = [v46 isProximitySetupToNewDeviceAllowed];

              if (isProximitySetupToNewDeviceAllowed4)
              {
                if (([foundCopy paired] & 1) != 0 || objc_msgSend(foundCopy, "systemPairState") > 0x13)
                {
                  if (self->_repairSilent)
                  {
                    self->_triggeredUIRepair = 1;
                    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    [sub_100021E5C() _repairSilentStart:?];
                  }

                  goto LABEL_194;
                }

                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  goto LABEL_45;
                }
              }

              else if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            break;
          case 11:
          case 33:
            if (self->_triggeredUIB238Setup)
            {
              if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            else
            {
              v38 = +[MCProfileConnection sharedConnection];
              isProximitySetupToNewDeviceAllowed5 = [v38 isProximitySetupToNewDeviceAllowed];

              if (isProximitySetupToNewDeviceAllowed5)
              {
                self->_triggeredUIB238Setup = 1;
                sub_1000A2A84();
                if (v20 ^ v21 | v24)
                {
                  if (v40 != -1 || _LogCategory_Initialize())
                  {
                    LogPrintF();
                  }

                  sub_1000A2A84();
                  if (v20 ^ v21 | v24 && (v59 != -1 || _LogCategory_Initialize()))
                  {
                    sub_10009773C(deviceActionType);
                    LogPrintF();
                  }
                }

                [sub_100021E5C() _uiStartSetupB238:? extraInfo:?];
                goto LABEL_194;
              }

              if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_45;
              }
            }

            break;
          case 12:
            if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            notify_post("com.apple.applepay.proximity");
            goto LABEL_194;
          case 13:
            if (self->_triggeredUIWHASetup)
            {
              if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
              {
                break;
              }
            }

            else
            {
              v56 = +[MCProfileConnection sharedConnection];
              isProximitySetupToNewDeviceAllowed6 = [v56 isProximitySetupToNewDeviceAllowed];

              if (isProximitySetupToNewDeviceAllowed6)
              {
                self->_triggeredUIWHASetup = 1;
                if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                [sub_100021E5C() _uiStartSetupWHA:?];
                goto LABEL_194;
              }

              if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
              {
                break;
              }
            }

            goto LABEL_45;
          case 17:
            if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
            {
              v71 = bleDevice;
              LogPrintF();
            }

            [(SDSetupAgent *)self _launchAppWithMachServiceName:@"com.apple.diagnosticextensionsd.sharing-wakeup", v71];
            goto LABEL_194;
          case 25:
            if (!self->_triggeredUITVLatencySetup)
            {
              goto LABEL_91;
            }

            if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
            {
              goto LABEL_45;
            }

            break;
          case 27:
            if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
            {
              v71 = bleDevice;
              LogPrintF();
            }

            v60 = +[SDNearbyAgent sharedNearbyAgent];
            [v60 setBoostNearbyInfo:1];

            goto LABEL_194;
          case 30:
            if (!self->_triggeredUITVLatencySetup)
            {
LABEL_91:
              [sub_100021E5C() _uiStartTVLatencySetup:? forActionType:? withBLEDevice:?];
              goto LABEL_194;
            }

            if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
            {
              goto LABEL_45;
            }

            break;
          case 32:
            goto LABEL_78;
          case 36:
            goto LABEL_69;
          default:
            if (deviceActionType == 43)
            {
LABEL_78:
              if (self->_triggeredUIAuthenticateAccounts)
              {
                if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                {
                  break;
                }

                goto LABEL_45;
              }

              v44 = +[MCProfileConnection sharedConnection];
              isProximitySetupToNewDeviceAllowed7 = [v44 isProximitySetupToNewDeviceAllowed];

              if ((isProximitySetupToNewDeviceAllowed7 & 1) == 0)
              {
                if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                {
                  break;
                }

                goto LABEL_45;
              }

              self->_triggeredUIAuthenticateAccounts = 1;
              if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              [sub_100021E5C() _uiStartAuthenticateAccounts:?];
            }

            else
            {
              if (deviceActionType != 90)
              {
                break;
              }

LABEL_69:
              if ([(SDSetupAgent *)self _deviceHandlesDovePeaceSetup])
              {
                if (self->_triggeredUIDovePeace)
                {
                  if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                  {
                    break;
                  }

                  goto LABEL_45;
                }

                v41 = +[MCProfileConnection sharedConnection];
                isProximitySetupToNewDeviceAllowed8 = [v41 isProximitySetupToNewDeviceAllowed];

                if ((isProximitySetupToNewDeviceAllowed8 & 1) == 0)
                {
                  if (dword_10096FEF8 > 50 || dword_10096FEF8 == -1 && !_LogCategory_Initialize())
                  {
                    break;
                  }

                  goto LABEL_45;
                }

                if (([foundCopy deviceFlags] & 0x100) != 0)
                {
                  sub_1000A2A84();
                  if (!(v20 ^ v21 | v24) || v69 == -1 && !_LogCategory_Initialize())
                  {
                    break;
                  }

                  goto LABEL_45;
                }

                if (![(SDStatusMonitor *)self->_statusMonitor eduModeEnabled])
                {
                  if (_os_feature_enabled_impl())
                  {
                    sub_1000A2A84();
                    if (v20 ^ v21 | v24 && (v58 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    self->_triggeredUIDovePeace = 1;
                    if (deviceActionType == 90)
                    {
                      advertisementFields2 = [bleDevice advertisementFields];
                      v62 = [advertisementFields2 objectForKeyedSubscript:@"dpp"];
                    }

                    else
                    {
                      v62 = 0;
                    }

                    [sub_100021E5C() _uiStartSetupDovePeace:? actionType:? payload:? autoStart:?];
                  }

                  goto LABEL_194;
                }

                sub_1000A2A84();
                if (v20 ^ v21 | v24 && (v43 != -1 || _LogCategory_Initialize()))
                {
                  goto LABEL_139;
                }
              }

              else if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
              {
LABEL_139:
                LogPrintF();
              }
            }

LABEL_194:
            if (!arc4random_uniform(0xAu))
            {
              v75[0] = @"_cat";
              v75[1] = @"_op";
              v76[0] = @"Setup";
              v76[1] = @"Triggered";
              v75[2] = @"action";
              v63 = [NSNumber numberWithUnsignedChar:deviceActionType];
              v76[2] = v63;
              v75[3] = @"rssi";
              v64 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [bleDevice rssiEstimate]);
              v76[3] = v64;
              v65 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:4];
              SFDashboardLogJSON();

              v73[0] = @"action";
              v66 = [NSNumber numberWithUnsignedChar:deviceActionType];
              v73[1] = @"rssi";
              v74[0] = v66;
              v67 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [bleDevice rssiEstimate]);
              v74[1] = v67;
              v68 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
              SFMetricsLog();
            }

            break;
        }
      }
    }
  }

LABEL_196:
}

- (void)_deviceLost:(id)lost
{
  identifier = [lost identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (identifier)
  {
    v4 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
    if (v4)
    {
      v5 = v4;
      [(NSMutableDictionary *)self->_devices removeObjectForKey:identifier];
      if ([v5 deviceActionType] == 17)
      {
        [(NSMutableDictionary *)self->_triggeredDevices removeObjectForKey:identifier];
      }

      if ([v5 deviceActionType] == 27)
      {
        v6 = +[SDNearbyAgent sharedNearbyAgent];
        [v6 setBoostNearbyInfo:0];
      }

      unoteTVLatencySetup = self->_unoteTVLatencySetup;
      if (unoteTVLatencySetup)
      {
        identifier2 = [(CUUserNotificationSession *)unoteTVLatencySetup identifier];
        uUIDString = [identifier UUIDString];
        v10 = [identifier2 isEqual:uUIDString];

        if (v10)
        {
          [(CUUserNotificationSession *)self->_unoteTVLatencySetup invalidate];
          v11 = self->_unoteTVLatencySetup;
          self->_unoteTVLatencySetup = 0;
        }
      }

      [(SDSetupAgent *)self _postDeviceSetupNotificationForDevice:v5 present:0];
    }
  }

  _objc_release_x2();
}

- (void)_watchFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_watchSetupScanner || (gSDProxCardsSuppressed & 1) != 0 || [(SDSetupAgent *)self _uiShowing]|| ([(SDStatusMonitor *)self->_statusMonitor systemUIFlags]& 0x7C809) != 0)
  {
    goto LABEL_47;
  }

  v6 = 0;
  setupProximityEstimator = 0;
  v8 = 0;
  if ([(SDSetupAgent *)self _screenLocked]|| !identifier)
  {
    goto LABEL_46;
  }

  v9 = [(NSMutableDictionary *)self->_watchSetupDevices objectForKeyedSubscript:identifier];

  if (v9)
  {
LABEL_47:
    v6 = 0;
    setupProximityEstimator = 0;
    v8 = 0;
    goto LABEL_46;
  }

  [(SDSetupAgent *)self _watchFastScanStartIfAllowed:foundCopy];
  v8 = objc_alloc_init(SFDevice);
  [v8 updateWithBLEDevice:foundCopy];
  [v8 setDeviceActionType:5];
  setupProximityEstimator = [foundCopy setupProximityEstimator];
  if (!setupProximityEstimator)
  {
    v10 = +[SDNearbyAgent sharedNearbyAgent];
    setupProximityEstimator = [v10 bleProximityEstimatorForActionType:5 device:v8];

    [foundCopy setSetupProximityEstimator:setupProximityEstimator];
  }

  v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

  if (!v11)
  {
    [(NSMutableDictionary *)self->_devices setObject:v8 forKeyedSubscript:identifier];
  }

  [(SDProximityController *)self->_proximityController sender:self notifyBluetoothSample:v8];
  v12 = [(SDProximityController *)self->_proximityController checkDeviceRegion:v8];
  if (v12 == 2)
  {
    sub_1000A2A90();
    if (v15 ^ v16 | v14)
    {
      if (v13 != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    [foundCopy setTriggered:v12 == 2];
  }

  else
  {
    [setupProximityEstimator updateWithSFBLEDevice:foundCopy];
  }

  if (![foundCopy triggered] || (SFStoreDemoMode() & 1) != 0 || (SFLostMode() & 1) != 0)
  {
LABEL_41:
    v6 = 0;
    goto LABEL_46;
  }

  watchSetupDevices = self->_watchSetupDevices;
  if (!watchSetupDevices)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = self->_watchSetupDevices;
    self->_watchSetupDevices = v18;

    watchSetupDevices = self->_watchSetupDevices;
  }

  [(NSMutableDictionary *)watchSetupDevices setObject:foundCopy forKeyedSubscript:identifier];
  if (self->_triggeredUIWatchSetup)
  {
    sub_1000A2A90();
    if (v15 ^ v16 | v14 && (v26 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_41;
  }

  self->_triggeredUIWatchSetup = 1;
  v20 = [(SDSetupAgent *)self _watchMigrating:identifier];
  if (!v20)
  {
    sub_1000A2A90();
    if (v15 ^ v16 | v14 && (v23 != -1 || _LogCategory_Initialize()))
    {
      v27 = foundCopy;
      LogPrintF();
    }

    [(SDSetupAgent *)self _watchFastScanStop];
    [(SDSetupAgent *)self _uiStartSetupWatch:v8];
    v28[0] = @"_cat";
    v28[1] = @"_op";
    v29[0] = @"WatchSetup";
    v29[1] = @"Triggered";
    v28[2] = @"rssi";
    v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [setupProximityEstimator estimatedRSSI]);
    v29[2] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
    SFDashboardLogJSON();

    goto LABEL_41;
  }

  v6 = v20;
  v21 = mach_absolute_time();
  v22 = v21 - self->_watchMigrationLastTicks;
  if (v22 >= SecondsToUpTicks())
  {
    if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
    {
      v27 = foundCopy;
      LogPrintF();
    }

    [(SDSetupAgent *)self _watchFastScanStop];
    self->_watchMigrationLastTicks = v21;
    [(SDSetupAgent *)self _watchStartMigration:v6];
  }

  else if (dword_10096FEF8 <= 50 && (dword_10096FEF8 != -1 || _LogCategory_Initialize()))
  {
    UpTicksToSeconds();
    LogPrintF();
  }

LABEL_46:
}

@end