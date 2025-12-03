@interface SDAutoUnlockSuggestionManager
- (BOOL)canSuggestForDeviceID:(id)d;
- (BOOL)featureSuggestedForDeviceID:(id)d;
- (BOOL)retriedSetup;
- (BOOL)shouldSendRequestsForDeviceID:(id)d;
- (SDAutoUnlockSuggestionManager)init;
- (id)testDeviceID;
- (void)_systemHasPoweredOn;
- (void)_systemWillSleep;
- (void)addObservers;
- (void)handleFoundPeer:(id)peer;
- (void)handleTestSuggestion;
- (void)invalidateScanTimer;
- (void)invalidateScanner;
- (void)invalidateServiceTimer;
- (void)invalidateSetupRetryDeviceTimer;
- (void)invalidateSuggestedDeviceTimer;
- (void)invalidateSuggestionService;
- (void)loadSuggestedPeers;
- (void)postNotificationIfNeeded;
- (void)postSuggestionNotification;
- (void)restartScanTimer:(unint64_t)timer;
- (void)restartServiceTimer:(unint64_t)timer;
- (void)restartSetupRetryDeviceTimer:(int64_t)timer;
- (void)restartSuggestedDeviceTimer:(int64_t)timer;
- (void)screenLockUnlocked:(id)unlocked;
- (void)sendStartAdvertisingToDeviceID:(id)d;
- (void)setFeatureSuggestedForDeviceID:(id)d;
- (void)setRetriedSetup;
- (void)setSetupRetryDeviceID:(id)d;
- (void)setSuggestedDeviceID:(id)d;
- (void)setupRetryIfNeeded;
- (void)setupRetryNotificationDismissed;
- (void)startScanningForIDSDeviceIDs:(id)ds;
- (void)transport:(id)transport didReceivePayload:(id)payload type:(unsigned __int16)type deviceID:(id)d;
- (void)updateDefaultsForDeviceID:(id)d;
- (void)updateSuggestionService;
@end

@implementation SDAutoUnlockSuggestionManager

- (void)_systemHasPoweredOn
{
  suggestionManagerQueue = self->_suggestionManagerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FBE0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(suggestionManagerQueue, block);
}

- (SDAutoUnlockSuggestionManager)init
{
  v11.receiver = self;
  v11.super_class = SDAutoUnlockSuggestionManager;
  v2 = [(SDAutoUnlockSuggestionManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.sharingd.auto-unlock.suggestion-manager-queue", 0);
    suggestionManagerQueue = v2->_suggestionManagerQueue;
    v2->_suggestionManagerQueue = v3;

    v5 = [[NSUUID alloc] initWithUUIDString:@"C42094B4-B936-4673-8034-4EEFD437BEB0"];
    suggestionManagerSessionID = v2->_suggestionManagerSessionID;
    v2->_suggestionManagerSessionID = v5;

    v7 = objc_opt_new();
    foundPeers = v2->_foundPeers;
    v2->_foundPeers = v7;

    [(SDAutoUnlockSuggestionManager *)v2 loadSuggestedPeers];
    v9 = +[SDAutoUnlockTransport sharedTransport];
    [v9 addClient:v2 forIdentifer:@"C42094B4-B936-4673-8034-4EEFD437BEB0"];

    [(SDAutoUnlockSuggestionManager *)v2 addObservers];
  }

  return v2;
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_systemWillSleep" name:@"com.apple.sharingd.SystemWillSleep" object:0];
  [v3 addObserver:self selector:"_systemHasPoweredOn" name:@"com.apple.sharingd.SystemHasPoweredOn" object:0];
}

- (void)handleTestSuggestion
{
  if (IsAppleInternalBuild())
  {
    v3 = +[SDAutoUnlockTransport sharedTransport];
    testDeviceID = [(SDAutoUnlockSuggestionManager *)self testDeviceID];
    v6 = [v3 autoUnlockDeviceForDeviceID:testDeviceID];

    if (v6)
    {
      foundPeers = [(SDAutoUnlockSuggestionManager *)self foundPeers];
      [foundPeers setObject:v6 atIndexedSubscript:0];

      [(SDAutoUnlockSuggestionManager *)self postSuggestionNotification];
    }
  }
}

- (void)screenLockUnlocked:(id)unlocked
{
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received screen lock unlocked notification", v6, 2u);
  }

  [(SDAutoUnlockSuggestionManager *)self triggerDevicesIfNeeded];
  v5 = +[SDAutoUnlockAKSManager sharedManager];
  [v5 updateDynamicStoreEnabled];

  [(SDAutoUnlockSuggestionManager *)self setupRetryIfNeeded];
}

- (void)setupRetryIfNeeded
{
  if (IsAppleInternalBuild())
  {
    retriedSetup = [(SDAutoUnlockSuggestionManager *)self retriedSetup];
    alwaysShowSetupRetry = [(SDAutoUnlockSuggestionManager *)self alwaysShowSetupRetry];
    v5 = alwaysShowSetupRetry;
    if ((!retriedSetup || alwaysShowSetupRetry) && ([(SDAutoUnlockSuggestionManager *)self lastSuccessfulDevice], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      lastSuccessfulDevice = [(SDAutoUnlockSuggestionManager *)self lastSuccessfulDevice];
      [(SDAutoUnlockSuggestionManager *)self setSetupRetryDevice:lastSuccessfulDevice];

      [(SDAutoUnlockSuggestionManager *)self setLastSuccessfulDevice:0];
      v13 = +[SDAutoUnlockNotificationsManager sharedManager];
      setupRetryDevice = [(SDAutoUnlockSuggestionManager *)self setupRetryDevice];
      [v13 showSetupRetryNotificationWithDevice:setupRetryDevice];
    }

    else
    {
      v9 = auto_unlock_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (retriedSetup)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        if (v5)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        lastSuccessfulDevice2 = [(SDAutoUnlockSuggestionManager *)self lastSuccessfulDevice];
        *buf = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = lastSuccessfulDevice2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not initiating setup retry (already retried: %@, always show: %@, lastSuccessfulDevice: %@)", buf, 0x20u);
      }
    }
  }
}

- (void)setupRetryNotificationDismissed
{
  [(SDAutoUnlockSuggestionManager *)self setRetriedSetup];

  [(SDAutoUnlockSuggestionManager *)self setSetupRetryDevice:0];
}

- (void)setSetupRetryDeviceID:(id)d
{
  objc_storeStrong(&self->_setupRetryDeviceID, d);
  if (!self->_setupRetryDeviceID)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retry setup device ID cleared", v5, 2u);
    }

    [(SDAutoUnlockSuggestionManager *)self invalidateSuggestedDeviceTimer];
  }
}

- (void)restartSetupRetryDeviceTimer:(int64_t)timer
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting retry setup device timer", buf, 2u);
  }

  setupRetryDeviceTimer = [(SDAutoUnlockSuggestionManager *)self setupRetryDeviceTimer];

  if (!setupRetryDeviceTimer)
  {
    suggestionManagerQueue = [(SDAutoUnlockSuggestionManager *)self suggestionManagerQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10021FF84;
    v12[3] = &unk_1008CDEA0;
    v12[4] = self;
    v8 = sub_1001F0548(0, suggestionManagerQueue, v12);
    [(SDAutoUnlockSuggestionManager *)self setSetupRetryDeviceTimer:v8];

    setupRetryDeviceTimer2 = [(SDAutoUnlockSuggestionManager *)self setupRetryDeviceTimer];
    dispatch_resume(setupRetryDeviceTimer2);
  }

  setupRetryDeviceTimer3 = [(SDAutoUnlockSuggestionManager *)self setupRetryDeviceTimer];
  v11 = sub_1001F0530(timer);
  sub_1001F05F0(setupRetryDeviceTimer3, v11);
}

- (void)invalidateSetupRetryDeviceTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invaliding setup device device timer", v6, 2u);
  }

  setupRetryDeviceTimer = [(SDAutoUnlockSuggestionManager *)self setupRetryDeviceTimer];

  if (setupRetryDeviceTimer)
  {
    setupRetryDeviceTimer2 = [(SDAutoUnlockSuggestionManager *)self setupRetryDeviceTimer];
    dispatch_source_cancel(setupRetryDeviceTimer2);

    [(SDAutoUnlockSuggestionManager *)self setSetupRetryDeviceTimer:0];
  }
}

- (void)postNotificationIfNeeded
{
  foundPeers = [(SDAutoUnlockSuggestionManager *)self foundPeers];
  v4 = [foundPeers count];

  if (v4)
  {
    foundPeers2 = [(SDAutoUnlockSuggestionManager *)self foundPeers];
    [foundPeers2 sortUsingComparator:&stru_1008D4AE0];

    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      foundPeers3 = [(SDAutoUnlockSuggestionManager *)self foundPeers];
      v8 = 138412290;
      v9 = foundPeers3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Suggestion Found Peers %@", &v8, 0xCu);
    }

    [(SDAutoUnlockSuggestionManager *)self postSuggestionNotification];
  }
}

- (void)postSuggestionNotification
{
  foundPeers = [(SDAutoUnlockSuggestionManager *)self foundPeers];
  v4 = [foundPeers objectAtIndexedSubscript:0];
  [(SDAutoUnlockSuggestionManager *)self setSuggestedPeer:v4];

  v6 = +[SDAutoUnlockNotificationsManager sharedManager];
  suggestedPeer = [(SDAutoUnlockSuggestionManager *)self suggestedPeer];
  [v6 showSuggestionNotificationWithDevice:suggestedPeer];
}

- (void)setSuggestedDeviceID:(id)d
{
  objc_storeStrong(&self->_suggestedDeviceID, d);
  if (!self->_suggestedDeviceID)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Suggested device ID cleared", v5, 2u);
    }

    [(SDAutoUnlockSuggestionManager *)self invalidateSuggestedDeviceTimer];
  }
}

- (void)restartSuggestedDeviceTimer:(int64_t)timer
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting suggested device timer", buf, 2u);
  }

  deviceTimer = [(SDAutoUnlockSuggestionManager *)self deviceTimer];

  if (!deviceTimer)
  {
    suggestionManagerQueue = [(SDAutoUnlockSuggestionManager *)self suggestionManagerQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002204BC;
    v12[3] = &unk_1008CDEA0;
    v12[4] = self;
    v8 = sub_1001F0548(0, suggestionManagerQueue, v12);
    [(SDAutoUnlockSuggestionManager *)self setDeviceTimer:v8];

    deviceTimer2 = [(SDAutoUnlockSuggestionManager *)self deviceTimer];
    dispatch_resume(deviceTimer2);
  }

  deviceTimer3 = [(SDAutoUnlockSuggestionManager *)self deviceTimer];
  v11 = sub_1001F0530(timer);
  sub_1001F05F0(deviceTimer3, v11);
}

- (void)invalidateSuggestedDeviceTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invaliding suggested device timer", v6, 2u);
  }

  deviceTimer = [(SDAutoUnlockSuggestionManager *)self deviceTimer];

  if (deviceTimer)
  {
    deviceTimer2 = [(SDAutoUnlockSuggestionManager *)self deviceTimer];
    dispatch_source_cancel(deviceTimer2);

    [(SDAutoUnlockSuggestionManager *)self setDeviceTimer:0];
  }
}

- (void)updateSuggestionService
{
  v3 = +[SDAutoUnlockSessionManager sharedManager];
  [v3 addServiceClientForIdentifier:@"com.apple.sharing.auto-unlock-suggestion-manager"];

  v4 = sub_1001F0530(30.0);

  [(SDAutoUnlockSuggestionManager *)self restartServiceTimer:v4];
}

- (void)invalidateSuggestionService
{
  v3 = +[SDAutoUnlockSessionManager sharedManager];
  [v3 removeServiceClientForIdentifier:@"com.apple.sharing.auto-unlock-suggestion-manager"];

  [(SDAutoUnlockSuggestionManager *)self invalidateServiceTimer];
}

- (void)restartServiceTimer:(unint64_t)timer
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting suggestion service timer", buf, 2u);
  }

  serviceTimer = [(SDAutoUnlockSuggestionManager *)self serviceTimer];

  if (!serviceTimer)
  {
    suggestionManagerQueue = [(SDAutoUnlockSuggestionManager *)self suggestionManagerQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002207EC;
    v11[3] = &unk_1008CDEA0;
    v11[4] = self;
    v8 = sub_1001F0548(0, suggestionManagerQueue, v11);
    [(SDAutoUnlockSuggestionManager *)self setServiceTimer:v8];

    serviceTimer2 = [(SDAutoUnlockSuggestionManager *)self serviceTimer];
    dispatch_resume(serviceTimer2);
  }

  serviceTimer3 = [(SDAutoUnlockSuggestionManager *)self serviceTimer];
  sub_1001F05F0(serviceTimer3, timer);
}

- (void)invalidateServiceTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invaliding suggestion service timer", v6, 2u);
  }

  serviceTimer = [(SDAutoUnlockSuggestionManager *)self serviceTimer];

  if (serviceTimer)
  {
    serviceTimer2 = [(SDAutoUnlockSuggestionManager *)self serviceTimer];
    dispatch_source_cancel(serviceTimer2);

    [(SDAutoUnlockSuggestionManager *)self setServiceTimer:0];
  }
}

- (void)startScanningForIDSDeviceIDs:(id)ds
{
  dsCopy = ds;
  scanner = [(SDAutoUnlockSuggestionManager *)self scanner];

  if (scanner)
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Already scanning for suggestions", buf, 2u);
    }

LABEL_19:

    [(SDAutoUnlockSuggestionManager *)self restartScanTimer:sub_1001F0530(30.0)];
    goto LABEL_20;
  }

  v7 = +[SDAutoUnlockTransport sharedTransport];
  autoUnlockEligibleWatches = [v7 autoUnlockEligibleWatches];
  allObjects = [autoUnlockEligibleWatches allObjects];

  v10 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = allObjects;
  v11 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        uniqueID = [v14 uniqueID];
        v16 = [dsCopy containsObject:uniqueID];

        if (v16)
        {
          bluetoothID = [v14 bluetoothID];
          [v10 addObject:bluetoothID];
        }
      }

      v11 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v11);
  }

  if ([v10 count])
  {
    objc_initWeak(&location, self);
    scanner2 = [(SDAutoUnlockSuggestionManager *)self scanner];

    if (scanner2)
    {
      scanner3 = [(SDAutoUnlockSuggestionManager *)self scanner];
      [scanner3 invalidate];
    }

    v20 = [[SFBLEScanner alloc] initWithType:16];
    [(SDAutoUnlockSuggestionManager *)self setScanner:v20];

    suggestionManagerQueue = [(SDAutoUnlockSuggestionManager *)self suggestionManagerQueue];
    scanner4 = [(SDAutoUnlockSuggestionManager *)self scanner];
    [scanner4 setDispatchQueue:suggestionManagerQueue];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100220DEC;
    v32[3] = &unk_1008D1090;
    objc_copyWeak(&v33, &location);
    scanner5 = [(SDAutoUnlockSuggestionManager *)self scanner];
    [scanner5 setDeviceFoundHandler:v32];

    scanner6 = [(SDAutoUnlockSuggestionManager *)self scanner];
    [scanner6 setInvalidationHandler:&stru_1008D4B00];

    v25 = auto_unlock_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v10;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Suggestion scanning for bluetooth IDs %@", buf, 0xCu);
    }

    allObjects2 = [v10 allObjects];
    scanner7 = [(SDAutoUnlockSuggestionManager *)self scanner];
    [scanner7 setDeviceFilter:allObjects2];

    allObjects3 = [v10 allObjects];
    [(SDAutoUnlockSuggestionManager *)self setCurrentBluetoothIDs:allObjects3];

    scanner8 = [(SDAutoUnlockSuggestionManager *)self scanner];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100220EC4;
    v31[3] = &unk_1008CDF90;
    v31[4] = self;
    [scanner8 activateWithCompletion:v31];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);

    goto LABEL_19;
  }

  v30 = auto_unlock_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "No devices to scan for, not starting suggetion scanner", buf, 2u);
  }

LABEL_20:
}

- (void)handleFoundPeer:(id)peer
{
  peerCopy = peer;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 138412290;
    *&v24[4] = peerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Suggestion manager found peer: %@", v24, 0xCu);
  }

  identifier = [peerCopy identifier];
  if (!identifier)
  {
    goto LABEL_7;
  }

  v7 = identifier;
  currentBluetoothIDs = [(SDAutoUnlockSuggestionManager *)self currentBluetoothIDs];
  identifier2 = [peerCopy identifier];
  v10 = [currentBluetoothIDs containsObject:identifier2];

  if (v10)
  {
    v11 = sub_1001116AC(peerCopy);
    v12 = +[SDAutoUnlockTransport sharedTransport];
    identifier3 = [peerCopy identifier];
    v14 = [v12 autoUnlockDeviceForBluetoothID:identifier3];

    if (v14)
    {
      v15 = [v14 supportsAdvertisingUnlocked]^ 1 | v11;
    }

    else
    {
      v15 = 0;
    }

    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if ([v14 supportsAdvertisingUnlocked])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      *v24 = 138412802;
      *&v24[4] = v19;
      if (v11)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      *&v24[12] = 2112;
      *&v24[14] = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Suggestion manager peer (device: %@, supports advertising unlocked: %@, unlocked on wrist: %@)", v24, 0x20u);
    }

    if (v15)
    {
      foundPeers = [(SDAutoUnlockSuggestionManager *)self foundPeers];
      if ([foundPeers containsObject:peerCopy])
      {
LABEL_27:

        goto LABEL_28;
      }

      unlockEnabled = [v14 unlockEnabled];

      if ((unlockEnabled & 1) == 0)
      {
        if (![(SDAutoUnlockSuggestionManager *)self foundFirstPeer])
        {
          [(SDAutoUnlockSuggestionManager *)self setFoundFirstPeer:1];
          [(SDAutoUnlockSuggestionManager *)self restartScanTimer:sub_1001F0530(3.0)];
        }

        foundPeers = [(SDAutoUnlockSuggestionManager *)self foundPeers];
        [foundPeers addObject:v14];
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_7:
    v14 = auto_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifier4 = [peerCopy identifier];
      uUIDString = [identifier4 UUIDString];
      *v24 = 138412290;
      *&v24[4] = uUIDString;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not looking for peer, ignoring: %@", v24, 0xCu);
    }
  }

LABEL_28:
}

- (void)invalidateScanner
{
  scanner = [(SDAutoUnlockSuggestionManager *)self scanner];

  if (scanner)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invalidating suggestion scanner", v7, 2u);
    }

    scanner2 = [(SDAutoUnlockSuggestionManager *)self scanner];
    [scanner2 invalidate];

    [(SDAutoUnlockSuggestionManager *)self setScanner:0];
    [(SDAutoUnlockSuggestionManager *)self setCurrentBluetoothIDs:0];
    [(SDAutoUnlockSuggestionManager *)self setFoundFirstPeer:0];
    foundPeers = [(SDAutoUnlockSuggestionManager *)self foundPeers];
    [foundPeers removeAllObjects];

    [(SDAutoUnlockSuggestionManager *)self invalidateScanTimer];
  }
}

- (void)restartScanTimer:(unint64_t)timer
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restarting suggestion scan timer", buf, 2u);
  }

  scanTimer = [(SDAutoUnlockSuggestionManager *)self scanTimer];

  if (!scanTimer)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10022149C;
    v10[3] = &unk_1008CDEA0;
    v10[4] = self;
    v7 = sub_1001F0548(0, &_dispatch_main_q, v10);
    [(SDAutoUnlockSuggestionManager *)self setScanTimer:v7];

    scanTimer2 = [(SDAutoUnlockSuggestionManager *)self scanTimer];
    dispatch_resume(scanTimer2);
  }

  scanTimer3 = [(SDAutoUnlockSuggestionManager *)self scanTimer];
  sub_1001F05F0(scanTimer3, timer);
}

- (void)invalidateScanTimer
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invaliding suggestion scan timer", v6, 2u);
  }

  scanTimer = [(SDAutoUnlockSuggestionManager *)self scanTimer];

  if (scanTimer)
  {
    scanTimer2 = [(SDAutoUnlockSuggestionManager *)self scanTimer];
    dispatch_source_cancel(scanTimer2);

    [(SDAutoUnlockSuggestionManager *)self setScanTimer:0];
  }
}

- (void)sendStartAdvertisingToDeviceID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  [v5 setVersion:2];
  v6 = +[SDAutoUnlockTransport sharedTransport];
  data = [v5 data];
  suggestionManagerSessionID = [(SDAutoUnlockSuggestionManager *)self suggestionManagerSessionID];
  v9 = [NSNumber numberWithInteger:15];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002216FC;
  v11[3] = &unk_1008CDF90;
  v12 = dCopy;
  v10 = dCopy;
  [v6 sendPayload:data toDevice:v10 type:401 sessionID:suggestionManagerSessionID timeout:v9 errorHandler:v11];
}

- (void)transport:(id)transport didReceivePayload:(id)payload type:(unsigned __int16)type deviceID:(id)d
{
  payloadCopy = payload;
  dCopy = d;
  suggestionManagerQueue = [(SDAutoUnlockSuggestionManager *)self suggestionManagerQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100221830;
  v14[3] = &unk_1008CDDC0;
  typeCopy = type;
  v15 = dCopy;
  v16 = payloadCopy;
  selfCopy = self;
  v12 = payloadCopy;
  v13 = dCopy;
  dispatch_async(suggestionManagerQueue, v14);
}

- (BOOL)shouldSendRequestsForDeviceID:(id)d
{
  dCopy = d;
  v5 = +[SDAutoUnlockAKSManager sharedManager];
  v6 = [v5 deviceEnabledAsKey:dCopy];

  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v6)
    {
      v8 = @"YES";
    }

    v11 = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Should send request (device: %@ enabled: %@)", &v11, 0x16u);
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(SDAutoUnlockSuggestionManager *)self canSuggestForDeviceID:dCopy];
  }

  return v9;
}

- (BOOL)canSuggestForDeviceID:(id)d
{
  dCopy = d;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"AutoUnlockPeerRetries"];
  v6 = [v5 objectForKeyedSubscript:dCopy];
  v7 = [v6 objectForKeyedSubscript:@"AutoUnlockRetryDate"];
  v8 = [v6 objectForKeyedSubscript:@"AutoUnlockRetryMultiplier"];
  if ([v8 integerValue] > 2048)
  {
    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = dCopy;
      v18 = 2048;
      integerValue = [v8 integerValue];
      v13 = "Reached limit of suggestions (device %@, multiplier: %ld)";
      goto LABEL_8;
    }
  }

  else
  {
    if (!v7 || (v9 = objc_opt_new(), [v9 timeIntervalSinceDate:v7], v11 = v10, v9, v11 >= 0.0))
    {
      v14 = 1;
      goto LABEL_11;
    }

    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = dCopy;
      v18 = 2112;
      integerValue = v7;
      v13 = "Suggestions still backing off (device %@, retry date %@)";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v16, 0x16u);
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)updateDefaultsForDeviceID:(id)d
{
  dCopy = d;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"AutoUnlockPeerRetries"];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:dCopy];
  v8 = [v7 mutableCopy];

  v9 = [v8 objectForKeyedSubscript:@"AutoUnlockRetryMultiplier"];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &off_10090BFB8;
  }

  if ([v10 integerValue] > 128)
  {
    v12 = 604800.0;
  }

  else
  {
    integerValue = [v10 integerValue];
    if (integerValue >= 24)
    {
      v12 = (3600 * integerValue);
    }

    else
    {
      v12 = 86400.0;
    }
  }

  v13 = objc_opt_new();
  v14 = [v13 dateByAddingTimeInterval:v12];

  v15 = auto_unlock_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138413058;
    v19 = dCopy;
    v20 = 2048;
    integerValue2 = [v10 integerValue];
    v22 = 2048;
    v23 = v12;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Next suggestion (device: %@, multiplier: %ld, seconds: %ld, retry date %@)", &v18, 0x2Au);
  }

  v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 2 * [v10 integerValue]);

  if (!v8)
  {
    v8 = objc_opt_new();
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_15:
    v6 = objc_opt_new();
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_13:
  [v8 setObject:v14 forKeyedSubscript:@"AutoUnlockRetryDate"];
  [v8 setObject:v16 forKeyedSubscript:@"AutoUnlockRetryMultiplier"];
  v17 = [v8 copy];
  [v6 setObject:v17 forKeyedSubscript:dCopy];

  [v4 setObject:v6 forKey:@"AutoUnlockPeerRetries"];
  [v4 synchronize];
}

- (BOOL)featureSuggestedForDeviceID:(id)d
{
  dCopy = d;
  suggestedPeers = [(SDAutoUnlockSuggestionManager *)self suggestedPeers];
  v6 = [suggestedPeers containsObject:dCopy];

  return v6;
}

- (void)setFeatureSuggestedForDeviceID:(id)d
{
  dCopy = d;
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting feature suggested for device: %@", &v11, 0xCu);
  }

  if (dCopy)
  {
    suggestedPeers = [(SDAutoUnlockSuggestionManager *)self suggestedPeers];
    v7 = [suggestedPeers containsObject:dCopy];

    if ((v7 & 1) == 0)
    {
      suggestedPeers2 = [(SDAutoUnlockSuggestionManager *)self suggestedPeers];
      [suggestedPeers2 addObject:dCopy];

      v9 = +[NSUserDefaults standardUserDefaults];
      suggestedPeers3 = [(SDAutoUnlockSuggestionManager *)self suggestedPeers];
      [v9 setObject:suggestedPeers3 forKey:@"AutoUnlockSuggestedPeers"];

      [v9 synchronize];
    }
  }
}

- (void)loadSuggestedPeers
{
  v6 = +[NSUserDefaults standardUserDefaults];
  v3 = [v6 objectForKey:@"AutoUnlockSuggestedPeers"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  [(SDAutoUnlockSuggestionManager *)self setSuggestedPeers:v4];
}

- (BOOL)retriedSetup
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"AutoUnlockSetupRetryVersion"];
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retry version: %ld", &v6, 0xCu);
  }

  return v3 > 0;
}

- (void)setRetriedSetup
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setInteger:1 forKey:@"AutoUnlockSetupRetryVersion"];
}

- (id)testDeviceID
{
  v2 = sub_10000C2C4(@"AUSuggestionsTestDeviceID");

  return v2;
}

- (void)_systemWillSleep
{
  suggestionManagerQueue = self->_suggestionManagerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002224C4;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(suggestionManagerQueue, block);
}

@end